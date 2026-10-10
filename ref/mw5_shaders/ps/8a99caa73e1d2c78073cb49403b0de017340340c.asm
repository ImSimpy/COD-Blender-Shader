;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; COLOR                    0   xyzw        1     NONE   float   xyzw
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
; shader hash: c8501ef1ab42ad1a3d44ac404be284d0
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
;   [128 x i8] (type annotation not present)
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
;                                   sampler      NA          NA      S1             s0     1
;                                   sampler      NA          NA      S2             s1     1
;                                   sampler      NA          NA      S3             s2     1
;                                   sampler      NA          NA      S4             s3     1
;                                   sampler      NA          NA      S5             s4     1
;                                   sampler      NA          NA      S6             s5     1
;                                   texture     f32          2d      T0      t0,space3unbounded
;                                   texture     f32          2d      T1      t0,space4unbounded
;                                   texture     f32          3d      T2      t0,space7unbounded
;                                   texture    byte         r/o      T3     t37,space1     1
;                                   texture     f32          2d      T4     t33,space2     1
;                                   texture    byte         r/o      T5      t3,space1     1
;                                   texture    byte         r/o      T6      t4,space1     1
;                                   texture    byte         r/o      T7      t5,space1     1
;                                   texture    byte         r/o      T8      t6,space1     1
;                                   texture     f32          2d      T9     t69,space2     1
;                                   texture    byte         r/o     T10     t49,space1     1
;                                   texture    byte         r/o     T11     t50,space1     1
;                                   texture    byte         r/o     T12     t51,space1     1
;                                   texture    byte         r/o     T13     t52,space1     1
;                                   texture    byte         r/o     T14     t16,space1     1
;                                   texture    byte         r/o     T15     t17,space1     1
;                                   texture     f32          2d     T16     t37,space2     1
;                                   texture     f32          2d     T17             t0     1
;                                   texture     f32          2d     T18     t58,space2     1
;                                   texture     u32     2darray     T19     t62,space2     1
;                                   texture     f32     2darray     T20     t63,space2     1
;                                   texture     f32          2d     T21     t57,space2     1
;                                   texture    byte         r/o     T22     t69,space1     1
;                                   texture     u32          2d     T23     t56,space2     1
;                                   texture     f32     2darray     T24     t35,space2     1
;                                   texture     f32          2d     T25     t34,space2     1
;                                   texture     f32          3d     T26     t31,space2     1
;                                   texture     f32          2d     T27      t2,space2     1
;                                   texture     f32          2d     T28      t3,space2     1
;                                   texture     f32          2d     T29      t4,space2     1
;                                   textureunorm_f32     2darray     T30     t80,space2     1
;                                   texture    byte         r/o     T31     t67,space1     1
;                                   texture     f32          2d     T32      t7,space2     1
;                                   texture     f32          2d     T33      t6,space2     1
;                                   texture     f32          2d     T34      t5,space2     1
;                                   texture     f32          2d     T35     t38,space2     1
;                                   texture     f32          1d     T36     t30,space2     1
;                                   texture     f32          3d     T37     t44,space2     1
;                                   texture     f32          3d     T38     t45,space2     1
;                                   texture     f32     2darray     T39     t47,space2     1
;                                   textureunorm_f32     2darray     T40     t85,space2     1
;                                   texture     f32          2d     T41     t83,space2     1
;                                   texture     f32          2d     T42     t86,space2     1
;                                   texture     f32          2d     T43     t12,space2     1
;                                   texture     f32          2d     T44     t55,space2     1
;
;
; ViewId state:
;
; Number of inputs: 45, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 43, 44 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 43, 44 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 24, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 43, 44 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 43, 44 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.Dimensions = type { i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.Texture2DArray<vector<unsigned int, 4> >" = type { <4 x i32>, %"class.Texture2DArray<vector<unsigned int, 4> >::mips_type" }
%"class.Texture2DArray<vector<unsigned int, 4> >::mips_type" = type { i32 }
%"class.Texture2DArray<float>" = type { float, %"class.Texture2DArray<float>::mips_type" }
%"class.Texture2DArray<float>::mips_type" = type { i32 }
%"class.Texture2D<unsigned int>" = type { i32, %"class.Texture2D<unsigned int>::mips_type" }
%"class.Texture2D<unsigned int>::mips_type" = type { i32 }
%"class.Texture2DArray<vector<float, 4> >" = type { <4 x float>, %"class.Texture2DArray<vector<float, 4> >::mips_type" }
%"class.Texture2DArray<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 3> >" = type { <3 x float>, %"class.Texture2D<vector<float, 3> >::mips_type" }
%"class.Texture2D<vector<float, 3> >::mips_type" = type { i32 }
%"class.Texture3D<float>" = type { float, %"class.Texture3D<float>::mips_type" }
%"class.Texture3D<float>::mips_type" = type { i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
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
%hostlayout.stable = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }
%struct.SamplerComparisonState = type { i32 }

@PCF_OFFSETS_4.0 = internal unnamed_addr constant [4 x float] [float 0x3FE6A161E0000000, float 0.000000e+00, float 0xBFD6A161E0000000, float 2.500000e-01], align 4
@PCF_OFFSETS_4.1 = internal unnamed_addr constant [4 x float] [float 0xBFE6A161E0000000, float 7.500000e-01, float 0xBFD6A161E0000000, float 0.000000e+00], align 4
@PCF_OFFSETS_8.v.1dim = internal constant [16 x float] [float 0xBFE6A09020000000, float 0x3FE6A09020000000, float 0.000000e+00, float -8.750000e-01, float 0x3FE0F837C0000000, float 0x3FE0F837C0000000, float -6.250000e-01, float 0.000000e+00, float 0x3FD6A161E0000000, float 0xBFD6A161E0000000, float 0.000000e+00, float 3.750000e-01, float 0xBFC6A161E0000000, float 0xBFC6A161E0000000, float 1.250000e-01, float 0.000000e+00], align 4

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 44, i32 55, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 43, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 42, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 41, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 40, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 39, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 38, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 63, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 62, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 51, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 50, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 49, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %49 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %50 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %51 = alloca [4 x float], align 4
  %52 = alloca [4 x i32], align 4
  %53 = alloca [4 x float], align 4
  %54 = alloca [4 x float], align 4
  %55 = alloca [4 x i32], align 4
  %56 = alloca [4 x i32], align 4
  %57 = alloca [4 x float], align 4
  %58 = alloca [4 x float], align 4
  %59 = alloca [4 x i32], align 4
  %60 = call i32 @dx.op.loadInput.i32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = icmp ne i32 %60, 0
  %62 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %87 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %88 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %89 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %90 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %91 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %92 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %93 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %94 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %95 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %96 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %97 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %98 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %99 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %100 = alloca [12 x float], align 4
  %101 = alloca [12 x float], align 4
  %102 = alloca [4 x float], align 4
  %103 = alloca [4 x float], align 4
  %104 = alloca [4 x float], align 4
  %105 = alloca [3 x float], align 4
  %106 = alloca [3 x float], align 4
  %107 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %108 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %110 = extractvalue %dx.types.CBufRet.f32 %109, 0
  %111 = fmul fast float %110, %96
  %112 = fmul fast float %110, %97
  %113 = select i1 %61, float 1.000000e+00, float -1.000000e+00
  %114 = call float @dx.op.dot3.f32(i32 55, float %87, float %88, float %89, float %87, float %88, float %89)  ; Dot3(ax,ay,az,bx,by,bz)
  %115 = bitcast float %114 to i32
  %116 = ashr i32 %115, 1
  %117 = sub nsw i32 1597250115, %116
  %118 = bitcast i32 %117 to float
  %119 = fmul fast float %87, %113
  %120 = fmul fast float %119, %118
  %121 = fmul fast float %88, %113
  %122 = fmul fast float %121, %118
  %123 = fmul fast float %89, %113
  %124 = fmul fast float %123, %118
  %125 = fmul fast float %88, %85
  %126 = fmul fast float %89, %84
  %127 = fsub fast float %125, %126
  %128 = fmul fast float %89, %83
  %129 = fmul fast float %87, %85
  %130 = fsub fast float %128, %129
  %131 = fmul fast float %87, %84
  %132 = fmul fast float %88, %83
  %133 = fsub fast float %131, %132
  %134 = fmul fast float %127, %86
  %135 = fmul fast float %130, %86
  %136 = fmul fast float %133, %86
  %137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %138 = extractvalue %dx.types.CBufRet.f32 %137, 2
  %139 = extractvalue %dx.types.CBufRet.f32 %137, 3
  %140 = fmul fast float %111, 2.000000e+00
  %141 = fmul fast float %140, %138
  %142 = fmul fast float %112, 2.000000e+00
  %143 = fmul fast float %142, %139
  %144 = fsub fast float 1.000000e+00, %141
  %145 = fsub fast float 1.000000e+00, %143
  %146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %147 = extractvalue %dx.types.CBufRet.f32 %146, 0
  %148 = extractvalue %dx.types.CBufRet.f32 %146, 1
  %149 = extractvalue %dx.types.CBufRet.f32 %146, 2
  %150 = fmul fast float %144, %147
  %151 = fmul fast float %144, %148
  %152 = fmul fast float %144, %149
  %153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %154 = extractvalue %dx.types.CBufRet.f32 %153, 0
  %155 = extractvalue %dx.types.CBufRet.f32 %153, 1
  %156 = extractvalue %dx.types.CBufRet.f32 %153, 2
  %157 = fmul fast float %145, %154
  %158 = fmul fast float %145, %155
  %159 = fmul fast float %145, %156
  %160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %161 = extractvalue %dx.types.CBufRet.f32 %160, 0
  %162 = extractvalue %dx.types.CBufRet.f32 %160, 1
  %163 = extractvalue %dx.types.CBufRet.f32 %160, 2
  %164 = fadd fast float %157, %161
  %165 = fadd fast float %164, %150
  %166 = fadd fast float %158, %162
  %167 = fadd fast float %166, %151
  %168 = fadd fast float %159, %163
  %169 = fadd fast float %168, %152
  %170 = fmul fast float %165, %99
  %171 = fmul fast float %167, %99
  %172 = fmul fast float %169, %99
  %173 = fmul fast float %111, 5.000000e-01
  %174 = fmul fast float %112, 5.000000e-01
  %175 = fptosi float %173 to i32
  %176 = fptosi float %174 to i32
  %177 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %22, i32 0, i32 %175, i32 %176, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %178 = extractvalue %dx.types.ResRet.i32 %177, 0
  %179 = lshr i32 %178, 18
  %180 = uitofp i32 %179 to float
  %181 = fmul fast float %180, 0x3F4C00EBA0000000
  %182 = call float @dx.op.unary.f32(i32 21, float %181)  ; Exp(value)
  %183 = fadd fast float %182, -1.000000e+00
  %184 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %22, i32 0)  ; GetDimensions(handle,mipLevel)
  %185 = extractvalue %dx.types.Dimensions %184, 0
  %186 = sitofp i32 %185 to float
  %187 = extractvalue %dx.types.Dimensions %184, 1
  %188 = sitofp i32 %187 to float
  %189 = fcmp fast oge float %173, %186
  %190 = fcmp fast oge float %174, %188
  %191 = or i1 %189, %190
  %192 = select i1 %191, float 0x4197782600000000, float %183
  %193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %194 = extractvalue %dx.types.CBufRet.f32 %193, 2
  %195 = extractvalue %dx.types.CBufRet.f32 %193, 3
  %196 = fmul fast float %194, %111
  %197 = fmul fast float %195, %112
  %198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %199 = extractvalue %dx.types.ResRet.i32 %198, 0
  %200 = and i32 %199, 114688
  %201 = icmp ne i32 %200, 0
  %202 = select i1 %201, float %196, float 0.000000e+00
  %203 = select i1 %201, float %197, float 0.000000e+00
  %204 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %47, float %202, float %203, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %205 = extractvalue %dx.types.ResRet.f32 %204, 0
  %206 = fmul fast float %205, 2.550000e+02
  %207 = fptoui float %206 to i32
  %208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %209 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %210 = extractvalue %dx.types.CBufRet.i32 %209, 3
  %211 = and i32 %210, 3
  %212 = icmp ne i32 %211, 0
  %213 = and i32 %210, 4
  %214 = icmp ne i32 %213, 0
  %215 = and i1 %212, %214
  br i1 %215, label %216, label %227

; <label>:216                                     ; preds = %0
  %217 = extractvalue %dx.types.CBufRet.f32 %208, 3
  %218 = fmul fast float %217, %112
  %219 = extractvalue %dx.types.CBufRet.f32 %208, 2
  %220 = fmul fast float %219, %111
  %221 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %46, float %220, float %218, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %222 = extractvalue %dx.types.ResRet.f32 %221, 0
  %223 = fsub fast float 1.000000e+00, %222
  %224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %225 = extractvalue %dx.types.CBufRet.f32 %224, 0
  %226 = fcmp fast olt float %223, %225
  br label %230

; <label>:227                                     ; preds = %0
  %228 = icmp eq i32 %213, 0
  %229 = and i1 %212, %228
  br label %230

; <label>:230                                     ; preds = %227, %216
  %231 = phi i1 [ %226, %216 ], [ %229, %227 ]
  %232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %233 = extractvalue %dx.types.CBufRet.f32 %232, 2
  %234 = fmul fast float %233, 0x3FE3C6EF40000000
  %235 = frem fast float %111, 2.560000e+02
  %236 = frem fast float %112, 2.560000e+02
  %237 = fptoui float %235 to i32
  %238 = fptoui float %236 to i32
  %239 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %29, i32 0, i32 %237, i32 %238, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %240 = extractvalue %dx.types.ResRet.f32 %239, 0
  %241 = fadd fast float %240, %234
  %242 = call float @dx.op.unary.f32(i32 22, float %241)  ; Frc(value)
  %243 = add i32 %62, 156
  %244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %243, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %255 = add i32 %62, 216
  %256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %255, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %269 = add i32 %62, 36
  %270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %269, i32 undef)  ; BufferLoad(srv,index,wot)
  %271 = extractvalue %dx.types.ResRet.i32 %270, 0
  %272 = and i32 %271, 65535
  %273 = call float @dx.op.legacyF16ToF32(i32 131, i32 %272)  ; LegacyF16ToF32(value)
  %274 = lshr i32 %271, 16
  %275 = call float @dx.op.legacyF16ToF32(i32 131, i32 %274)  ; LegacyF16ToF32(value)
  %276 = add i32 %62, 288
  %277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %276, i32 undef)  ; BufferLoad(srv,index,wot)
  %278 = extractvalue %dx.types.ResRet.i32 %277, 0
  %279 = and i32 %278, 65535
  %280 = call float @dx.op.legacyF16ToF32(i32 131, i32 %279)  ; LegacyF16ToF32(value)
  %281 = lshr i32 %278, 16
  %282 = call float @dx.op.legacyF16ToF32(i32 131, i32 %281)  ; LegacyF16ToF32(value)
  %283 = fmul fast float %280, 0x3F50624DE0000000
  %284 = fmul fast float %282, 0x3F50624DE0000000
  %285 = add i32 %62, 172
  %286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %285, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %297 = add i32 %62, 232
  %298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %297, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %311 = add i32 %62, 52
  %312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %311, i32 undef)  ; BufferLoad(srv,index,wot)
  %313 = extractvalue %dx.types.ResRet.i32 %312, 0
  %314 = and i32 %313, 65535
  %315 = call float @dx.op.legacyF16ToF32(i32 131, i32 %314)  ; LegacyF16ToF32(value)
  %316 = lshr i32 %313, 16
  %317 = call float @dx.op.legacyF16ToF32(i32 131, i32 %316)  ; LegacyF16ToF32(value)
  %318 = add i32 %62, 304
  %319 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %318, i32 undef)  ; BufferLoad(srv,index,wot)
  %320 = extractvalue %dx.types.ResRet.i32 %319, 0
  %321 = and i32 %320, 65535
  %322 = call float @dx.op.legacyF16ToF32(i32 131, i32 %321)  ; LegacyF16ToF32(value)
  %323 = lshr i32 %320, 16
  %324 = call float @dx.op.legacyF16ToF32(i32 131, i32 %323)  ; LegacyF16ToF32(value)
  %325 = fmul fast float %322, 0x3F50624DE0000000
  %326 = fmul fast float %324, 0x3F50624DE0000000
  %327 = add i32 %62, 188
  %328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %327, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %339 = add i32 %62, 248
  %340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %339, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %353 = add i32 %62, 68
  %354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %353, i32 undef)  ; BufferLoad(srv,index,wot)
  %355 = extractvalue %dx.types.ResRet.i32 %354, 0
  %356 = and i32 %355, 65535
  %357 = call float @dx.op.legacyF16ToF32(i32 131, i32 %356)  ; LegacyF16ToF32(value)
  %358 = lshr i32 %355, 16
  %359 = call float @dx.op.legacyF16ToF32(i32 131, i32 %358)  ; LegacyF16ToF32(value)
  %360 = add i32 %62, 320
  %361 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %360, i32 undef)  ; BufferLoad(srv,index,wot)
  %362 = extractvalue %dx.types.ResRet.i32 %361, 0
  %363 = and i32 %362, 65535
  %364 = call float @dx.op.legacyF16ToF32(i32 131, i32 %363)  ; LegacyF16ToF32(value)
  %365 = lshr i32 %362, 16
  %366 = call float @dx.op.legacyF16ToF32(i32 131, i32 %365)  ; LegacyF16ToF32(value)
  %367 = fmul fast float %364, 0x3F50624DE0000000
  %368 = fmul fast float %366, 0x3F50624DE0000000
  %369 = add i32 %62, 204
  %370 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %369, i32 undef)  ; BufferLoad(srv,index,wot)
  %371 = extractvalue %dx.types.ResRet.i32 %370, 0
  %372 = shl i32 %371, 4
  %373 = and i32 %372, 32752
  %374 = call float @dx.op.legacyF16ToF32(i32 131, i32 %373)  ; LegacyF16ToF32(value)
  %375 = lshr i32 %371, 7
  %376 = and i32 %375, 32752
  %377 = call float @dx.op.legacyF16ToF32(i32 131, i32 %376)  ; LegacyF16ToF32(value)
  %378 = lshr i32 %371, 22
  %379 = shl nuw nsw i32 %378, 5
  %380 = call float @dx.op.legacyF16ToF32(i32 131, i32 %379)  ; LegacyF16ToF32(value)
  %381 = add i32 %62, 264
  %382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %381, i32 undef)  ; BufferLoad(srv,index,wot)
  %383 = extractvalue %dx.types.ResRet.i32 %382, 0
  %384 = and i32 %383, 255
  %385 = uitofp i32 %384 to float
  %386 = fmul fast float %385, 0x3F70101020000000
  %387 = lshr i32 %383, 8
  %388 = and i32 %387, 255
  %389 = uitofp i32 %388 to float
  %390 = fmul fast float %389, 0x3F70101020000000
  %391 = lshr i32 %383, 16
  %392 = and i32 %391, 255
  %393 = uitofp i32 %392 to float
  %394 = fmul fast float %393, 0x3F70101020000000
  %395 = add i32 %62, 84
  %396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %395, i32 undef)  ; BufferLoad(srv,index,wot)
  %397 = extractvalue %dx.types.ResRet.i32 %396, 0
  %398 = and i32 %397, 65535
  %399 = call float @dx.op.legacyF16ToF32(i32 131, i32 %398)  ; LegacyF16ToF32(value)
  %400 = lshr i32 %397, 16
  %401 = call float @dx.op.legacyF16ToF32(i32 131, i32 %400)  ; LegacyF16ToF32(value)
  %402 = add i32 %62, 336
  %403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
  %404 = extractvalue %dx.types.ResRet.i32 %403, 0
  %405 = and i32 %404, 65535
  %406 = call float @dx.op.legacyF16ToF32(i32 131, i32 %405)  ; LegacyF16ToF32(value)
  %407 = lshr i32 %404, 16
  %408 = call float @dx.op.legacyF16ToF32(i32 131, i32 %407)  ; LegacyF16ToF32(value)
  %409 = fmul fast float %406, 0x3F50624DE0000000
  %410 = fmul fast float %408, 0x3F50624DE0000000
  %411 = add i32 %62, 348
  %412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %411, i32 undef)  ; BufferLoad(srv,index,wot)
  %413 = extractvalue %dx.types.ResRet.i32 %412, 0
  %414 = and i32 %413, 32
  %415 = icmp eq i32 %414, 0
  %416 = and i32 %413, 64
  %417 = icmp eq i32 %416, 0
  %418 = and i32 %413, 128
  %419 = icmp eq i32 %418, 0
  %420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %411, i32 undef)  ; BufferLoad(srv,index,wot)
  %421 = extractvalue %dx.types.ResRet.i32 %420, 0
  %422 = and i32 %421, 2
  %423 = icmp eq i32 %422, 0
  br i1 %423, label %439, label %424

; <label>:424                                     ; preds = %230
  %425 = add i32 %62, 472
  %426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %425, i32 undef)  ; BufferLoad(srv,index,wot)
  %427 = extractvalue %dx.types.ResRet.i32 %426, 0
  %428 = add i32 %427, 0
  %429 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %428, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %430 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %429, %dx.types.Handle %108, float %90, float %91, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %431 = extractvalue %dx.types.ResRet.f32 %430, 0
  %432 = extractvalue %dx.types.ResRet.f32 %430, 1
  %433 = extractvalue %dx.types.ResRet.f32 %430, 2
  %434 = extractvalue %dx.types.ResRet.f32 %430, 3
  %435 = fmul fast float %434, %92
  %436 = fmul fast float %431, %93
  %437 = fmul fast float %432, %94
  %438 = fmul fast float %433, %95
  br label %439

; <label>:439                                     ; preds = %424, %230
  %440 = phi float [ %95, %230 ], [ %438, %424 ]
  %441 = phi float [ %94, %230 ], [ %437, %424 ]
  %442 = phi float [ %93, %230 ], [ %436, %424 ]
  %443 = phi float [ %92, %230 ], [ %435, %424 ]
  %444 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %411, i32 undef)  ; BufferLoad(srv,index,wot)
  %445 = extractvalue %dx.types.ResRet.i32 %444, 0
  %446 = and i32 %445, 2
  %447 = icmp eq i32 %446, 0
  br i1 %447, label %467, label %448

; <label>:448                                     ; preds = %439
  %449 = add i32 %62, 44
  %450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %449, i32 undef)  ; BufferLoad(srv,index,wot)
  %451 = extractvalue %dx.types.ResRet.i32 %450, 0
  %452 = and i32 %451, 1
  %453 = icmp ne i32 %452, 0
  %454 = select i1 %453, float %442, float 1.000000e+00
  %455 = add i32 %62, 60
  %456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %455, i32 undef)  ; BufferLoad(srv,index,wot)
  %457 = extractvalue %dx.types.ResRet.i32 %456, 0
  %458 = and i32 %457, 1
  %459 = icmp ne i32 %458, 0
  %460 = select i1 %459, float %441, float 1.000000e+00
  %461 = add i32 %62, 76
  %462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %461, i32 undef)  ; BufferLoad(srv,index,wot)
  %463 = extractvalue %dx.types.ResRet.i32 %462, 0
  %464 = and i32 %463, 1
  %465 = icmp ne i32 %464, 0
  %466 = select i1 %465, float %440, float 1.000000e+00
  br label %467

; <label>:467                                     ; preds = %448, %439
  %468 = phi float [ %440, %439 ], [ %466, %448 ]
  %469 = phi float [ %441, %439 ], [ %460, %448 ]
  %470 = phi float [ %442, %439 ], [ %454, %448 ]
  %471 = lshr i32 %445, 20
  %472 = and i32 %471, 3
  %473 = add nuw nsw i32 %472, 1
  %474 = add i32 %62, 24
  %475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %476 = extractvalue %dx.types.ResRet.i32 %475, 0
  %477 = add i32 %62, 28
  %478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %477, i32 undef)  ; BufferLoad(srv,index,wot)
  %479 = extractvalue %dx.types.ResRet.i32 %478, 0
  %480 = or i32 %479, %476
  %481 = icmp eq i32 %480, 0
  br i1 %481, label %1131, label %482

; <label>:482                                     ; preds = %467
  %483 = and i32 %476, 262144
  %484 = icmp ne i32 %483, 0
  %485 = select i1 %484, float %65, float 1.000000e+00
  %486 = select i1 %484, float %66, float 0.000000e+00
  %487 = select i1 %484, float %67, float 0.000000e+00
  %488 = select i1 %484, float %68, float 1.000000e+00
  %489 = select i1 %484, float %69, float %90
  %490 = select i1 %484, float %70, float %91
  %491 = add i32 %62, 284
  %492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %491, i32 undef)  ; BufferLoad(srv,index,wot)
  %493 = extractvalue %dx.types.ResRet.i32 %492, 0
  %494 = lshr i32 %493, 16
  %495 = call float @dx.op.legacyF16ToF32(i32 131, i32 %494)  ; LegacyF16ToF32(value)
  %496 = fmul fast float %495, 0x3F50624DE0000000
  %497 = add i32 %62, 88
  %498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %497, i32 undef)  ; BufferLoad(srv,index,wot)
  %499 = extractvalue %dx.types.ResRet.i32 %498, 0
  %500 = lshr i32 %499, 16
  %501 = and i32 %500, 255
  %502 = lshr i32 %499, 24
  %503 = add i32 %62, 292
  %504 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %503, i32 undef)  ; BufferLoad(srv,index,wot)
  %505 = extractvalue %dx.types.ResRet.i32 %504, 0
  %506 = and i32 %505, 65535
  %507 = call float @dx.op.legacyF16ToF32(i32 131, i32 %506)  ; LegacyF16ToF32(value)
  %508 = lshr i32 %505, 16
  %509 = call float @dx.op.legacyF16ToF32(i32 131, i32 %508)  ; LegacyF16ToF32(value)
  %510 = add i32 %62, 32
  %511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %510, i32 undef)  ; BufferLoad(srv,index,wot)
  %512 = extractvalue %dx.types.ResRet.i32 %511, 0
  %513 = lshr i32 %512, 22
  %514 = shl nuw nsw i32 %513, 5
  %515 = call float @dx.op.legacyF16ToF32(i32 131, i32 %514)  ; LegacyF16ToF32(value)
  %516 = shl i32 %512, 4
  %517 = and i32 %516, 32752
  %518 = call float @dx.op.legacyF16ToF32(i32 131, i32 %517)  ; LegacyF16ToF32(value)
  %519 = lshr i32 %512, 7
  %520 = and i32 %519, 32752
  %521 = call float @dx.op.legacyF16ToF32(i32 131, i32 %520)  ; LegacyF16ToF32(value)
  %522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %523 = extractvalue %dx.types.CBufRet.f32 %522, 3
  %524 = fmul fast float %523, 1.000000e+03
  %525 = fmul fast float %283, %524
  %526 = call float @dx.op.unary.f32(i32 22, float %525)  ; Frc(value)
  %527 = fadd fast float %526, %273
  %528 = fmul fast float %284, %524
  %529 = call float @dx.op.unary.f32(i32 22, float %528)  ; Frc(value)
  %530 = fadd fast float %529, %275
  %531 = fmul fast float %496, %524
  %532 = call float @dx.op.unary.f32(i32 22, float %531)  ; Frc(value)
  %533 = fmul fast float %532, 0x401921FB60000000
  %534 = fadd fast float %533, %515
  %535 = call float @dx.op.unary.f32(i32 13, float %534)  ; Sin(value)
  %536 = call float @dx.op.unary.f32(i32 12, float %534)  ; Cos(value)
  %537 = fsub fast float -0.000000e+00, %535
  %538 = fadd fast float %489, -5.000000e-01
  %539 = fadd fast float %490, -5.000000e-01
  %540 = fmul fast float %507, %538
  %541 = fmul fast float %509, %539
  %542 = fadd fast float %540, 5.000000e-01
  %543 = fadd fast float %541, 5.000000e-01
  %544 = fmul fast float %518, %542
  %545 = fmul fast float %521, %543
  %546 = fmul fast float %536, %544
  %547 = call float @dx.op.tertiary.f32(i32 46, float %537, float %545, float %546)  ; FMad(a,b,c)
  %548 = fmul fast float %535, %544
  %549 = call float @dx.op.tertiary.f32(i32 46, float %536, float %545, float %548)  ; FMad(a,b,c)
  %550 = fadd fast float %527, %547
  %551 = fadd fast float %530, %549
  %552 = icmp ugt i32 %501, 1
  %553 = icmp ugt i32 %499, 33554431
  %554 = or i1 %553, %552
  br i1 %554, label %555, label %580

; <label>:555                                     ; preds = %482
  %556 = add i32 %62, 228
  %557 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %556, i32 undef)  ; BufferLoad(srv,index,wot)
  %558 = extractvalue %dx.types.ResRet.i32 %557, 0
  %559 = lshr i32 %558, 16
  %560 = call float @dx.op.legacyF16ToF32(i32 131, i32 %559)  ; LegacyF16ToF32(value)
  %561 = fmul fast float %523, %560
  %562 = call float @dx.op.unary.f32(i32 22, float %561)  ; Frc(value)
  %563 = mul nuw nsw i32 %501, %502
  %564 = uitofp i32 %563 to float
  %565 = fmul fast float %562, %564
  %566 = call float @dx.op.unary.f32(i32 27, float %565)  ; Round_ni(value)
  %567 = fptoui float %566 to i32
  %568 = urem i32 %567, %501
  %569 = udiv i32 %567, %502
  %570 = call float @dx.op.unary.f32(i32 22, float %550)  ; Frc(value)
  %571 = call float @dx.op.unary.f32(i32 22, float %551)  ; Frc(value)
  %572 = uitofp i32 %568 to float
  %573 = uitofp i32 %569 to float
  %574 = fadd fast float %570, %572
  %575 = fadd fast float %571, %573
  %576 = uitofp i32 %501 to float
  %577 = uitofp i32 %502 to float
  %578 = fdiv fast float %574, %576
  %579 = fdiv fast float %575, %577
  br label %580

; <label>:580                                     ; preds = %555, %482
  %581 = phi float [ %578, %555 ], [ %550, %482 ]
  %582 = phi float [ %579, %555 ], [ %551, %482 ]
  %583 = and i32 %476, 16777216
  %584 = icmp eq i32 %583, 0
  br i1 %584, label %694, label %585

; <label>:585                                     ; preds = %580
  %586 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %587 = extractvalue %dx.types.CBufRet.f32 %586, 0
  %588 = extractvalue %dx.types.CBufRet.f32 %586, 1
  %589 = extractvalue %dx.types.CBufRet.f32 %586, 2
  %590 = fadd fast float %587, %170
  %591 = fadd fast float %588, %171
  %592 = fadd fast float %589, %172
  %593 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %594 = extractvalue %dx.types.CBufRet.f32 %593, 0
  %595 = call float @dx.op.unary.f32(i32 7, float %594)  ; Saturate(value)
  %596 = icmp eq i32 %63, 65535
  br i1 %596, label %691, label %597

; <label>:597                                     ; preds = %585
  %598 = lshr i32 %63, 1
  %599 = shl i32 %598, 2
  %600 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %599, i32 undef)  ; BufferLoad(srv,index,wot)
  %601 = extractvalue %dx.types.ResRet.i32 %600, 0
  %602 = and i32 %63, 1
  %603 = icmp ne i32 %602, 0
  %604 = lshr i32 %601, 16
  %605 = and i32 %601, 65535
  %606 = select i1 %603, i32 %604, i32 %605
  %607 = icmp eq i32 %606, 65535
  br i1 %607, label %687, label %608

; <label>:608                                     ; preds = %597
  %609 = mul nuw nsw i32 %606, 40
  %610 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %609, i32 undef)  ; BufferLoad(srv,index,wot)
  %611 = extractvalue %dx.types.ResRet.f32 %610, 0
  %612 = extractvalue %dx.types.ResRet.f32 %610, 1
  %613 = extractvalue %dx.types.ResRet.f32 %610, 2
  %614 = add nuw nsw i32 %609, 12
  %615 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %614, i32 undef)  ; BufferLoad(srv,index,wot)
  %616 = extractvalue %dx.types.ResRet.f32 %615, 0
  %617 = extractvalue %dx.types.ResRet.f32 %615, 1
  %618 = extractvalue %dx.types.ResRet.f32 %615, 2
  %619 = add nuw nsw i32 %609, 24
  %620 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %619, i32 undef)  ; BufferLoad(srv,index,wot)
  %621 = extractvalue %dx.types.ResRet.f32 %620, 0
  %622 = extractvalue %dx.types.ResRet.f32 %620, 1
  %623 = extractvalue %dx.types.ResRet.f32 %620, 2
  %624 = add nuw nsw i32 %609, 36
  %625 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %624, i32 undef)  ; BufferLoad(srv,index,wot)
  %626 = extractvalue %dx.types.ResRet.f32 %625, 0
  %627 = fsub fast float %590, %611
  %628 = fsub fast float %591, %612
  %629 = fsub fast float %592, %613
  %630 = fmul fast float %626, %627
  %631 = fmul fast float %626, %628
  %632 = fmul fast float %626, %629
  %633 = call float @dx.op.unary.f32(i32 27, float %630)  ; Round_ni(value)
  %634 = call float @dx.op.unary.f32(i32 27, float %631)  ; Round_ni(value)
  %635 = call float @dx.op.unary.f32(i32 27, float %632)  ; Round_ni(value)
  %636 = fadd fast float %633, 5.000000e-01
  %637 = fadd fast float %634, 5.000000e-01
  %638 = fadd fast float %635, 5.000000e-01
  %639 = fmul fast float %636, %616
  %640 = fmul fast float %637, %617
  %641 = fmul fast float %638, %618
  %642 = shl i32 %63, 2
  %643 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %642, i32 undef)  ; BufferLoad(srv,index,wot)
  %644 = extractvalue %dx.types.ResRet.i32 %643, 0
  %645 = add i32 %644, 0
  %646 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %645, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %647 = call float @dx.op.unary.f32(i32 22, float %639)  ; Frc(value)
  %648 = call float @dx.op.unary.f32(i32 22, float %640)  ; Frc(value)
  %649 = call float @dx.op.unary.f32(i32 22, float %641)  ; Frc(value)
  %650 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %646, %dx.types.Handle %47, float %647, float %648, float %649, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %651 = extractvalue %dx.types.ResRet.f32 %650, 0
  %652 = extractvalue %dx.types.ResRet.f32 %650, 1
  %653 = extractvalue %dx.types.ResRet.f32 %650, 2
  %654 = fmul fast float %651, 1.023000e+03
  %655 = fmul fast float %652, 1.023000e+03
  %656 = fmul fast float %653, 1.023000e+03
  %657 = fadd fast float %654, 5.000000e-01
  %658 = fadd fast float %655, 5.000000e-01
  %659 = fadd fast float %656, 5.000000e-01
  %660 = call float @dx.op.unary.f32(i32 27, float %657)  ; Round_ni(value)
  %661 = call float @dx.op.unary.f32(i32 27, float %658)  ; Round_ni(value)
  %662 = call float @dx.op.unary.f32(i32 27, float %659)  ; Round_ni(value)
  %663 = fsub fast float %630, %633
  %664 = fsub fast float %631, %634
  %665 = fsub fast float %632, %635
  %666 = fmul fast float %663, 7.500000e-01
  %667 = fmul fast float %664, 7.500000e-01
  %668 = fmul fast float %665, 7.500000e-01
  %669 = fadd fast float %633, 1.250000e-01
  %670 = fadd fast float %669, %666
  %671 = fadd fast float %670, %660
  %672 = fadd fast float %634, 1.250000e-01
  %673 = fadd fast float %672, %667
  %674 = fadd fast float %673, %661
  %675 = fadd fast float %635, 1.250000e-01
  %676 = fadd fast float %675, %668
  %677 = fadd fast float %676, %662
  %678 = fmul fast float %671, %621
  %679 = fmul fast float %674, %622
  %680 = fmul fast float %677, %623
  %681 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %642, i32 undef)  ; BufferLoad(srv,index,wot)
  %682 = extractvalue %dx.types.ResRet.i32 %681, 0
  %683 = add i32 %682, 0
  %684 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %683, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %685 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %684, %dx.types.Handle %45, float %678, float %679, float %680, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %686 = extractvalue %dx.types.ResRet.f32 %685, 0
  br label %687

; <label>:687                                     ; preds = %608, %597
  %688 = phi float [ %686, %608 ], [ -1.000000e+00, %597 ]
  %689 = fadd fast float %688, %595
  %690 = call float @dx.op.unary.f32(i32 7, float %689)  ; Saturate(value)
  br label %691

; <label>:691                                     ; preds = %687, %585
  %692 = phi float [ %690, %687 ], [ %595, %585 ]
  %693 = fmul fast float %692, %443
  br label %694

; <label>:694                                     ; preds = %691, %580
  %695 = phi float [ %693, %691 ], [ %443, %580 ]
  %696 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %697 = extractvalue %dx.types.ResRet.i32 %696, 0
  %698 = and i32 %697, 256
  %699 = icmp eq i32 %698, 0
  br i1 %699, label %746, label %700

; <label>:700                                     ; preds = %694
  %701 = add i32 %62, 424
  %702 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %701, i32 undef)  ; BufferLoad(srv,index,wot)
  %703 = extractvalue %dx.types.ResRet.i32 %702, 0
  %704 = add i32 %703, 0
  %705 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %704, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %706 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %705, %dx.types.Handle %108, float %581, float %582, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %707 = extractvalue %dx.types.ResRet.f32 %706, 0
  %708 = add i32 %62, 100
  %709 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %708, i32 undef)  ; BufferLoad(srv,index,wot)
  %710 = extractvalue %dx.types.ResRet.i32 %709, 0
  %711 = shl i32 %710, 4
  %712 = and i32 %711, 32752
  %713 = call float @dx.op.legacyF16ToF32(i32 131, i32 %712)  ; LegacyF16ToF32(value)
  %714 = lshr i32 %710, 7
  %715 = and i32 %714, 32752
  %716 = call float @dx.op.legacyF16ToF32(i32 131, i32 %715)  ; LegacyF16ToF32(value)
  %717 = fsub fast float 1.000000e+00, %695
  %718 = call float @dx.op.binary.f32(i32 35, float %717, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %719 = bitcast float %695 to i32
  %720 = sitofp i32 %719 to float
  %721 = fadd fast float %720, 0xC1CFBF8940000000
  %722 = fmul fast float %716, %721
  %723 = fadd fast float %722, 0x41CFBF8940000000
  %724 = fptosi float %723 to i32
  %725 = bitcast i32 %724 to float
  %726 = bitcast float %718 to i32
  %727 = sitofp i32 %726 to float
  %728 = fadd fast float %727, 0xC1CFBF8940000000
  %729 = fmul fast float %728, %716
  %730 = fadd fast float %729, 0x41CFBF8940000000
  %731 = fptosi float %730 to i32
  %732 = bitcast i32 %731 to float
  %733 = fmul fast float %725, %713
  %734 = fmul fast float %732, %713
  %735 = fsub fast float %718, %733
  %736 = fadd fast float %734, %718
  %737 = call float @dx.op.unary.f32(i32 7, float %735)  ; Saturate(value)
  %738 = call float @dx.op.unary.f32(i32 7, float %736)  ; Saturate(value)
  %739 = fsub fast float %707, %737
  %740 = fsub fast float %738, %737
  %741 = bitcast float %740 to i32
  %742 = sub nsw i32 2129859010, %741
  %743 = bitcast i32 %742 to float
  %744 = fmul fast float %743, %739
  %745 = call float @dx.op.unary.f32(i32 7, float %744)  ; Saturate(value)
  br label %746

; <label>:746                                     ; preds = %700, %694
  %747 = phi float [ %745, %700 ], [ %695, %694 ]
  %748 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %749 = extractvalue %dx.types.ResRet.i32 %748, 0
  %750 = and i32 %749, 128
  %751 = icmp eq i32 %750, 0
  br i1 %751, label %768, label %752

; <label>:752                                     ; preds = %746
  %753 = add i32 %62, 408
  %754 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %753, i32 undef)  ; BufferLoad(srv,index,wot)
  %755 = extractvalue %dx.types.ResRet.i32 %754, 0
  %756 = add i32 %755, 0
  %757 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %756, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %758 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %757, %dx.types.Handle %108, float %581, float %582, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %759 = extractvalue %dx.types.ResRet.f32 %758, 0
  %760 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %761 = extractvalue %dx.types.ResRet.i32 %760, 0
  %762 = and i32 %761, 524288
  %763 = icmp ne i32 %762, 0
  %764 = fcmp fast ogt float %759, 0x3FE0101020000000
  %765 = select i1 %764, float 1.000000e+00, float 0.000000e+00
  %766 = select i1 %763, float %765, float %759
  %767 = fmul fast float %766, %747
  br label %768

; <label>:768                                     ; preds = %752, %746
  %769 = phi float [ %767, %752 ], [ %747, %746 ]
  %770 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %771 = extractvalue %dx.types.ResRet.i32 %770, 0
  %772 = and i32 %771, 16
  %773 = icmp eq i32 %772, 0
  br i1 %773, label %972, label %774

; <label>:774                                     ; preds = %768
  %775 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %497, i32 undef)  ; BufferLoad(srv,index,wot)
  %776 = extractvalue %dx.types.ResRet.i32 %775, 0
  %777 = add i32 %62, 360
  %778 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %777, i32 undef)  ; BufferLoad(srv,index,wot)
  %779 = extractvalue %dx.types.ResRet.i32 %778, 0
  %780 = add i32 %779, 0
  %781 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %780, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %782 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %781, %dx.types.Handle %107, float %581, float %582, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %783 = extractvalue %dx.types.ResRet.f32 %782, 0
  %784 = extractvalue %dx.types.ResRet.f32 %782, 1
  %785 = extractvalue %dx.types.ResRet.f32 %782, 2
  %786 = extractvalue %dx.types.ResRet.f32 %782, 3
  %787 = and i32 %776, 255
  %788 = uitofp i32 %787 to float
  %789 = lshr i32 %776, 8
  %790 = and i32 %789, 255
  %791 = uitofp i32 %790 to float
  %792 = fmul fast float %786, %788
  %793 = fadd fast float %792, %791
  %794 = fmul fast float %793, 0x3F70101000000000
  %795 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %796 = extractvalue %dx.types.ResRet.i32 %795, 0
  %797 = and i32 %796, 512
  %798 = icmp eq i32 %797, 0
  br i1 %798, label %807, label %799

; <label>:799                                     ; preds = %774
  %800 = add i32 %62, 440
  %801 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %800, i32 undef)  ; BufferLoad(srv,index,wot)
  %802 = extractvalue %dx.types.ResRet.i32 %801, 0
  %803 = add i32 %802, 0
  %804 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %803, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %805 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %804, %dx.types.Handle %108, float %581, float %582, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %806 = extractvalue %dx.types.ResRet.f32 %805, 0
  br label %807

; <label>:807                                     ; preds = %799, %774
  %808 = phi float [ %806, %799 ], [ 1.000000e+00, %774 ]
  %809 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %810 = extractvalue %dx.types.ResRet.i32 %809, 0
  %811 = and i32 %810, 33554432
  %812 = icmp eq i32 %811, 0
  br i1 %812, label %919, label %813

; <label>:813                                     ; preds = %807
  %814 = add i32 %62, 224
  %815 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %814, i32 undef)  ; BufferLoad(srv,index,wot)
  %816 = extractvalue %dx.types.ResRet.i32 %815, 0
  %817 = and i32 %816, 65535
  %818 = call float @dx.op.legacyF16ToF32(i32 131, i32 %817)  ; LegacyF16ToF32(value)
  %819 = lshr i32 %816, 16
  %820 = call float @dx.op.legacyF16ToF32(i32 131, i32 %819)  ; LegacyF16ToF32(value)
  %821 = add i32 %62, 228
  %822 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %821, i32 undef)  ; BufferLoad(srv,index,wot)
  %823 = extractvalue %dx.types.ResRet.i32 %822, 0
  %824 = and i32 %823, 65535
  %825 = call float @dx.op.legacyF16ToF32(i32 131, i32 %824)  ; LegacyF16ToF32(value)
  %826 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %255, i32 undef)  ; BufferLoad(srv,index,wot)
  %827 = extractvalue %dx.types.ResRet.i32 %826, 0
  %828 = lshr i32 %827, 24
  %829 = uitofp i32 %828 to float
  %830 = fmul fast float %829, 0x3F70101020000000
  %831 = and i32 %827, 255
  %832 = uitofp i32 %831 to float
  %833 = fmul fast float %832, 0x3F70101020000000
  %834 = lshr i32 %827, 8
  %835 = and i32 %834, 255
  %836 = uitofp i32 %835 to float
  %837 = fmul fast float %836, 0x3F70101020000000
  %838 = lshr i32 %827, 16
  %839 = and i32 %838, 255
  %840 = uitofp i32 %839 to float
  %841 = fmul fast float %840, 0x3F70101020000000
  %842 = add i32 %62, 220
  %843 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %842, i32 undef)  ; BufferLoad(srv,index,wot)
  %844 = extractvalue %dx.types.ResRet.i32 %843, 0
  %845 = lshr i32 %844, 24
  %846 = uitofp i32 %845 to float
  %847 = fmul fast float %846, 0x3F70101020000000
  %848 = and i32 %844, 255
  %849 = uitofp i32 %848 to float
  %850 = fmul fast float %849, 0x3F70101020000000
  %851 = lshr i32 %844, 8
  %852 = and i32 %851, 255
  %853 = uitofp i32 %852 to float
  %854 = fmul fast float %853, 0x3F70101020000000
  %855 = lshr i32 %844, 16
  %856 = and i32 %855, 255
  %857 = uitofp i32 %856 to float
  %858 = fmul fast float %857, 0x3F70101020000000
  %859 = bitcast float %783 to i32
  %860 = ashr i32 %859, 1
  %861 = sub nsw i32 1597463174, %860
  %862 = bitcast i32 %861 to float
  %863 = fmul fast float %783, 5.000000e-01
  %864 = fmul fast float %862, %862
  %865 = fmul fast float %864, %863
  %866 = fsub fast float 1.500000e+00, %865
  %867 = fmul fast float %862, %783
  %868 = fmul fast float %867, %866
  %869 = bitcast float %784 to i32
  %870 = ashr i32 %869, 1
  %871 = sub nsw i32 1597463174, %870
  %872 = bitcast i32 %871 to float
  %873 = fmul fast float %784, 5.000000e-01
  %874 = fmul fast float %872, %872
  %875 = fmul fast float %874, %873
  %876 = fsub fast float 1.500000e+00, %875
  %877 = fmul fast float %872, %784
  %878 = fmul fast float %877, %876
  %879 = bitcast float %785 to i32
  %880 = ashr i32 %879, 1
  %881 = sub nsw i32 1597463174, %880
  %882 = bitcast i32 %881 to float
  %883 = fmul fast float %785, 5.000000e-01
  %884 = fmul fast float %882, %882
  %885 = fmul fast float %884, %883
  %886 = fsub fast float 1.500000e+00, %885
  %887 = fmul fast float %882, %785
  %888 = fmul fast float %887, %886
  %889 = fsub fast float %868, %850
  %890 = fsub fast float %878, %854
  %891 = fsub fast float %888, %858
  %892 = fmul fast float %889, %818
  %893 = fmul fast float %890, %820
  %894 = fmul fast float %891, %825
  %895 = fadd fast float %892, %833
  %896 = fadd fast float %893, %837
  %897 = fadd fast float %894, %841
  %898 = call float @dx.op.unary.f32(i32 7, float %895)  ; Saturate(value)
  %899 = call float @dx.op.unary.f32(i32 7, float %896)  ; Saturate(value)
  %900 = call float @dx.op.unary.f32(i32 7, float %897)  ; Saturate(value)
  %901 = fmul fast float %898, %898
  %902 = fmul fast float %899, %899
  %903 = fmul fast float %900, %900
  %904 = fsub fast float %901, %783
  %905 = fsub fast float %902, %784
  %906 = fsub fast float %903, %785
  %907 = fmul fast float %904, %808
  %908 = fmul fast float %905, %808
  %909 = fmul fast float %906, %808
  %910 = fadd fast float %907, %783
  %911 = fadd fast float %908, %784
  %912 = fadd fast float %909, %785
  %913 = fadd fast float %830, %794
  %914 = fsub fast float %913, %847
  %915 = call float @dx.op.unary.f32(i32 7, float %914)  ; Saturate(value)
  %916 = fsub fast float %915, %794
  %917 = fmul fast float %916, %808
  %918 = fadd fast float %917, %794
  br label %972

; <label>:919                                     ; preds = %807
  %920 = and i32 %810, 134217728
  %921 = icmp eq i32 %920, 0
  br i1 %921, label %956, label %922

; <label>:922                                     ; preds = %919
  %923 = call float @dx.op.unary.f32(i32 24, float %260)  ; Sqrt(value)
  %924 = call float @dx.op.unary.f32(i32 24, float %264)  ; Sqrt(value)
  %925 = call float @dx.op.unary.f32(i32 24, float %268)  ; Sqrt(value)
  %926 = fadd fast float %923, -5.000000e-01
  %927 = fadd fast float %924, -5.000000e-01
  %928 = fadd fast float %925, -5.000000e-01
  %929 = fmul fast float %926, %808
  %930 = fmul fast float %927, %808
  %931 = fmul fast float %928, %808
  %932 = fadd fast float %929, 5.000000e-01
  %933 = fadd fast float %930, 5.000000e-01
  %934 = fadd fast float %931, 5.000000e-01
  %935 = call float @dx.op.unary.f32(i32 24, float %783)  ; Sqrt(value)
  %936 = call float @dx.op.unary.f32(i32 24, float %784)  ; Sqrt(value)
  %937 = call float @dx.op.unary.f32(i32 24, float %785)  ; Sqrt(value)
  %938 = fmul fast float %932, 2.000000e+00
  %939 = fsub fast float 1.000000e+00, %938
  %940 = fmul fast float %939, %935
  %941 = fadd fast float %940, %938
  %942 = fmul fast float %941, %935
  %943 = fmul fast float %933, 2.000000e+00
  %944 = fsub fast float 1.000000e+00, %943
  %945 = fmul fast float %944, %936
  %946 = fadd fast float %945, %943
  %947 = fmul fast float %946, %936
  %948 = fmul fast float %934, 2.000000e+00
  %949 = fsub fast float 1.000000e+00, %948
  %950 = fmul fast float %949, %937
  %951 = fadd fast float %950, %948
  %952 = fmul fast float %951, %937
  %953 = fmul fast float %942, %942
  %954 = fmul fast float %947, %947
  %955 = fmul fast float %952, %952
  br label %972

; <label>:956                                     ; preds = %919
  %957 = fmul fast float %260, %260
  %958 = fmul fast float %264, %264
  %959 = fmul fast float %268, %268
  %960 = fadd fast float %957, -1.000000e+00
  %961 = fadd fast float %958, -1.000000e+00
  %962 = fadd fast float %959, -1.000000e+00
  %963 = fmul fast float %808, %960
  %964 = fmul fast float %808, %961
  %965 = fmul fast float %808, %962
  %966 = fadd fast float %963, 1.000000e+00
  %967 = fadd fast float %964, 1.000000e+00
  %968 = fadd fast float %965, 1.000000e+00
  %969 = fmul fast float %966, %783
  %970 = fmul fast float %967, %784
  %971 = fmul fast float %968, %785
  br label %972

; <label>:972                                     ; preds = %956, %922, %813, %768
  %973 = phi float [ %918, %813 ], [ %794, %922 ], [ %794, %956 ], [ 0x3FA23C0BE0000000, %768 ]
  %974 = phi float [ %910, %813 ], [ %953, %922 ], [ %969, %956 ], [ 1.000000e+00, %768 ]
  %975 = phi float [ %911, %813 ], [ %954, %922 ], [ %970, %956 ], [ 1.000000e+00, %768 ]
  %976 = phi float [ %912, %813 ], [ %955, %922 ], [ %971, %956 ], [ 1.000000e+00, %768 ]
  %977 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %978 = extractvalue %dx.types.CBufRet.i32 %977, 1
  %979 = and i32 %978, 1
  %980 = icmp ne i32 %979, 0
  %981 = add i32 %62, 356
  %982 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %981, i32 undef)  ; BufferLoad(srv,index,wot)
  %983 = extractvalue %dx.types.ResRet.i32 %982, 0
  %984 = and i32 %983, 32
  %985 = icmp ne i32 %984, 0
  %986 = and i1 %980, %985
  %987 = select i1 %986, float 1.000000e+00, float %974
  %988 = select i1 %986, float 0x3FD3333340000000, float %975
  %989 = select i1 %986, float 0x3FD3333340000000, float %976
  %990 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %991 = extractvalue %dx.types.ResRet.i32 %990, 0
  %992 = and i32 %991, 32
  %993 = icmp eq i32 %992, 0
  br i1 %993, label %1066, label %994

; <label>:994                                     ; preds = %972
  %995 = add i32 %62, 92
  %996 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %995, i32 undef)  ; BufferLoad(srv,index,wot)
  %997 = extractvalue %dx.types.ResRet.i32 %996, 0
  %998 = add i32 %62, 376
  %999 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %998, i32 undef)  ; BufferLoad(srv,index,wot)
  %1000 = extractvalue %dx.types.ResRet.i32 %999, 0
  %1001 = add i32 %1000, 0
  %1002 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1001, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1003 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1002, %dx.types.Handle %107, float %581, float %582, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1004 = extractvalue %dx.types.ResRet.f32 %1003, 0
  %1005 = extractvalue %dx.types.ResRet.f32 %1003, 1
  %1006 = extractvalue %dx.types.ResRet.f32 %1003, 2
  %1007 = extractvalue %dx.types.ResRet.f32 %1003, 3
  %1008 = and i32 %997, 255
  %1009 = uitofp i32 %1008 to float
  %1010 = lshr i32 %997, 8
  %1011 = and i32 %1010, 255
  %1012 = uitofp i32 %1011 to float
  %1013 = lshr i32 %997, 16
  %1014 = and i32 %1013, 255
  %1015 = uitofp i32 %1014 to float
  %1016 = fmul fast float %1015, 0x3F70101000000000
  %1017 = fmul fast float %1004, %1009
  %1018 = fadd fast float %1017, %1012
  %1019 = fmul fast float %1018, 0x3F70101000000000
  %1020 = fadd fast float %1005, -5.000000e-01
  %1021 = fadd fast float %1007, -5.000000e-01
  %1022 = fmul fast float %1020, %1016
  %1023 = fmul fast float %1021, %1016
  %1024 = fadd fast float %1022, 5.000000e-01
  %1025 = fadd fast float %1023, 5.000000e-01
  %1026 = fmul fast float %1024, 2.000000e+00
  %1027 = fadd fast float %1026, -1.000000e+00
  %1028 = fmul fast float %1025, 2.000000e+00
  %1029 = fadd fast float %1028, -1.000000e+00
  %1030 = fadd fast float %1027, %1029
  %1031 = fmul fast float %1030, 5.000000e-01
  %1032 = fsub fast float %1027, %1029
  %1033 = fmul fast float %1032, 5.000000e-01
  %1034 = call float @dx.op.unary.f32(i32 6, float %1031)  ; FAbs(value)
  %1035 = fsub fast float 1.000000e+00, %1034
  %1036 = call float @dx.op.unary.f32(i32 6, float %1033)  ; FAbs(value)
  %1037 = fsub fast float %1035, %1036
  %1038 = call float @dx.op.dot3.f32(i32 55, float %1031, float %1033, float %1037, float %1031, float %1033, float %1037)  ; Dot3(ax,ay,az,bx,by,bz)
  %1039 = call float @dx.op.unary.f32(i32 25, float %1038)  ; Rsqrt(value)
  %1040 = fmul fast float %1031, %1039
  %1041 = fmul fast float %1033, %1039
  %1042 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %1043 = extractvalue %dx.types.ResRet.i32 %1042, 0
  %1044 = and i32 %1043, 67108864
  %1045 = icmp eq i32 %1044, 0
  br i1 %1045, label %1062, label %1046

; <label>:1046                                    ; preds = %994
  %1047 = add i32 %62, 280
  %1048 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1047, i32 undef)  ; BufferLoad(srv,index,wot)
  %1049 = extractvalue %dx.types.ResRet.i32 %1048, 0
  %1050 = and i32 %1049, 65535
  %1051 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1050)  ; LegacyF16ToF32(value)
  %1052 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %491, i32 undef)  ; BufferLoad(srv,index,wot)
  %1053 = extractvalue %dx.types.ResRet.i32 %1052, 0
  %1054 = and i32 %1053, 65535
  %1055 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1054)  ; LegacyF16ToF32(value)
  %1056 = lshr i32 %1049, 16
  %1057 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1056)  ; LegacyF16ToF32(value)
  %1058 = fsub fast float %1019, %1057
  %1059 = fmul fast float %1058, %1051
  %1060 = fadd fast float %1059, %1055
  %1061 = call float @dx.op.unary.f32(i32 7, float %1060)  ; Saturate(value)
  br label %1062

; <label>:1062                                    ; preds = %1046, %994
  %1063 = phi float [ %1061, %1046 ], [ %1019, %994 ]
  %1064 = call float @dx.op.dot2.f32(i32 54, float %1040, float %1041, float %485, float %486)  ; Dot2(ax,ay,bx,by)
  %1065 = call float @dx.op.dot2.f32(i32 54, float %1040, float %1041, float %487, float %488)  ; Dot2(ax,ay,bx,by)
  br label %1066

; <label>:1066                                    ; preds = %1062, %972
  %1067 = phi float [ %1063, %1062 ], [ 0x3FD6666660000000, %972 ]
  %1068 = phi float [ %1064, %1062 ], [ 0.000000e+00, %972 ]
  %1069 = phi float [ %1065, %1062 ], [ 0.000000e+00, %972 ]
  %1070 = phi float [ %1006, %1062 ], [ 1.000000e+00, %972 ]
  %1071 = add i32 %62, 160
  %1072 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1071, i32 undef)  ; BufferLoad(srv,index,wot)
  %1073 = extractvalue %dx.types.ResRet.i32 %1072, 0
  %1074 = lshr i32 %1073, 22
  %1075 = shl nuw nsw i32 %1074, 5
  %1076 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1075)  ; LegacyF16ToF32(value)
  %1077 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %1078 = extractvalue %dx.types.ResRet.i32 %1077, 0
  %1079 = and i32 %1078, 64
  %1080 = icmp eq i32 %1079, 0
  br i1 %1080, label %1114, label %1081

; <label>:1081                                    ; preds = %1066
  %1082 = add i32 %62, 392
  %1083 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1082, i32 undef)  ; BufferLoad(srv,index,wot)
  %1084 = extractvalue %dx.types.ResRet.i32 %1083, 0
  %1085 = add i32 %1084, 0
  %1086 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1085, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1087 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %1088 = extractvalue %dx.types.ResRet.i32 %1087, 0
  %1089 = and i32 %1088, 131072
  %1090 = icmp eq i32 %1089, 0
  %1091 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1086, %dx.types.Handle %107, float %581, float %582, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1092 = extractvalue %dx.types.ResRet.f32 %1091, 0
  %1093 = extractvalue %dx.types.ResRet.f32 %1091, 1
  %1094 = extractvalue %dx.types.ResRet.f32 %1091, 2
  %1095 = fmul fast float %1092, %248
  %1096 = fmul fast float %1093, %251
  %1097 = fmul fast float %1094, %254
  br i1 %1090, label %1104, label %1098

; <label>:1098                                    ; preds = %1081
  %1099 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1100 = extractvalue %dx.types.CBufRet.f32 %1099, 0
  %1101 = fmul fast float %1100, %1095
  %1102 = fmul fast float %1100, %1096
  %1103 = fmul fast float %1100, %1097
  br label %1104

; <label>:1104                                    ; preds = %1098, %1081
  %1105 = phi float [ %1101, %1098 ], [ %1095, %1081 ]
  %1106 = phi float [ %1102, %1098 ], [ %1096, %1081 ]
  %1107 = phi float [ %1103, %1098 ], [ %1097, %1081 ]
  %1108 = fmul fast float %1105, %1076
  %1109 = select i1 %231, float %1108, float %1105
  %1110 = call float @dx.op.dot3.f32(i32 55, float %1109, float %1106, float %1107, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1111 = select i1 %231, float 0.000000e+00, float %1105
  %1112 = select i1 %231, float %1110, float %1106
  %1113 = select i1 %231, float 0.000000e+00, float %1107
  br label %1114

; <label>:1114                                    ; preds = %1104, %1066
  %1115 = phi float [ %1111, %1104 ], [ 0.000000e+00, %1066 ]
  %1116 = phi float [ %1112, %1104 ], [ 0.000000e+00, %1066 ]
  %1117 = phi float [ %1113, %1104 ], [ 0.000000e+00, %1066 ]
  %1118 = add i32 %62, 96
  %1119 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1118, i32 undef)  ; BufferLoad(srv,index,wot)
  %1120 = extractvalue %dx.types.ResRet.i32 %1119, 0
  %1121 = and i32 %1120, 255
  %1122 = uitofp i32 %1121 to float
  %1123 = lshr i32 %1120, 8
  %1124 = and i32 %1123, 255
  %1125 = uitofp i32 %1124 to float
  %1126 = call float @dx.op.dot3.f32(i32 55, float %987, float %988, float %989, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1127 = fmul fast float %1125, %1126
  %1128 = fadd fast float %1127, %1122
  %1129 = fmul fast float %1128, 0x3F70101020000000
  %1130 = call float @dx.op.unary.f32(i32 7, float %1129)  ; Saturate(value)
  br label %1131

; <label>:1131                                    ; preds = %1114, %467
  %1132 = phi float [ 0.000000e+00, %467 ], [ %1068, %1114 ]
  %1133 = phi float [ 0.000000e+00, %467 ], [ %1069, %1114 ]
  %1134 = phi float [ 0.000000e+00, %467 ], [ %987, %1114 ]
  %1135 = phi float [ 0.000000e+00, %467 ], [ %988, %1114 ]
  %1136 = phi float [ 0.000000e+00, %467 ], [ %989, %1114 ]
  %1137 = phi float [ 0.000000e+00, %467 ], [ %1115, %1114 ]
  %1138 = phi float [ 0.000000e+00, %467 ], [ %1116, %1114 ]
  %1139 = phi float [ 0.000000e+00, %467 ], [ %1117, %1114 ]
  %1140 = phi float [ 0.000000e+00, %467 ], [ %973, %1114 ]
  %1141 = phi float [ 0.000000e+00, %467 ], [ %769, %1114 ]
  %1142 = phi float [ 0.000000e+00, %467 ], [ %1067, %1114 ]
  %1143 = phi float [ 0.000000e+00, %467 ], [ %1070, %1114 ]
  %1144 = phi float [ 0.000000e+00, %467 ], [ %1130, %1114 ]
  br i1 %415, label %1986, label %1145

; <label>:1145                                    ; preds = %1131
  %1146 = icmp ult i32 %473, 2
  %1147 = add i32 %62, 40
  %1148 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1147, i32 undef)  ; BufferLoad(srv,index,wot)
  %1149 = extractvalue %dx.types.ResRet.i32 %1148, 0
  %1150 = add i32 %62, 44
  %1151 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1150, i32 undef)  ; BufferLoad(srv,index,wot)
  %1152 = extractvalue %dx.types.ResRet.i32 %1151, 0
  %1153 = or i32 %1152, %1149
  %1154 = icmp eq i32 %1153, 0
  br i1 %1154, label %1986, label %1155

; <label>:1155                                    ; preds = %1145
  %1156 = and i32 %1149, 262144
  %1157 = icmp ne i32 %1156, 0
  %1158 = select i1 %1157, float %65, float 1.000000e+00
  %1159 = select i1 %1157, float %66, float 0.000000e+00
  %1160 = select i1 %1157, float %67, float 0.000000e+00
  %1161 = select i1 %1157, float %68, float 1.000000e+00
  %1162 = select i1 %1157, float %69, float %90
  %1163 = select i1 %1157, float %70, float %91
  %1164 = add i32 %62, 300
  %1165 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1164, i32 undef)  ; BufferLoad(srv,index,wot)
  %1166 = extractvalue %dx.types.ResRet.i32 %1165, 0
  %1167 = lshr i32 %1166, 16
  %1168 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1167)  ; LegacyF16ToF32(value)
  %1169 = fmul fast float %1168, 0x3F50624DE0000000
  %1170 = add i32 %62, 104
  %1171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1170, i32 undef)  ; BufferLoad(srv,index,wot)
  %1172 = extractvalue %dx.types.ResRet.i32 %1171, 0
  %1173 = lshr i32 %1172, 16
  %1174 = and i32 %1173, 255
  %1175 = lshr i32 %1172, 24
  %1176 = add i32 %62, 308
  %1177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1176, i32 undef)  ; BufferLoad(srv,index,wot)
  %1178 = extractvalue %dx.types.ResRet.i32 %1177, 0
  %1179 = and i32 %1178, 65535
  %1180 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1179)  ; LegacyF16ToF32(value)
  %1181 = lshr i32 %1178, 16
  %1182 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1181)  ; LegacyF16ToF32(value)
  %1183 = add i32 %62, 48
  %1184 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1183, i32 undef)  ; BufferLoad(srv,index,wot)
  %1185 = extractvalue %dx.types.ResRet.i32 %1184, 0
  %1186 = lshr i32 %1185, 22
  %1187 = shl nuw nsw i32 %1186, 5
  %1188 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1187)  ; LegacyF16ToF32(value)
  %1189 = shl i32 %1185, 4
  %1190 = and i32 %1189, 32752
  %1191 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1190)  ; LegacyF16ToF32(value)
  %1192 = lshr i32 %1185, 7
  %1193 = and i32 %1192, 32752
  %1194 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1193)  ; LegacyF16ToF32(value)
  %1195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1196 = extractvalue %dx.types.CBufRet.f32 %1195, 3
  %1197 = fmul fast float %1196, 1.000000e+03
  %1198 = fmul fast float %325, %1197
  %1199 = call float @dx.op.unary.f32(i32 22, float %1198)  ; Frc(value)
  %1200 = fadd fast float %1199, %315
  %1201 = fmul fast float %326, %1197
  %1202 = call float @dx.op.unary.f32(i32 22, float %1201)  ; Frc(value)
  %1203 = fadd fast float %1202, %317
  %1204 = fmul fast float %1169, %1197
  %1205 = call float @dx.op.unary.f32(i32 22, float %1204)  ; Frc(value)
  %1206 = fmul fast float %1205, 0x401921FB60000000
  %1207 = fadd fast float %1206, %1188
  %1208 = call float @dx.op.unary.f32(i32 13, float %1207)  ; Sin(value)
  %1209 = call float @dx.op.unary.f32(i32 12, float %1207)  ; Cos(value)
  %1210 = fsub fast float -0.000000e+00, %1208
  %1211 = fadd fast float %1162, -5.000000e-01
  %1212 = fadd fast float %1163, -5.000000e-01
  %1213 = fmul fast float %1180, %1211
  %1214 = fmul fast float %1182, %1212
  %1215 = fadd fast float %1213, 5.000000e-01
  %1216 = fadd fast float %1214, 5.000000e-01
  %1217 = fmul fast float %1191, %1215
  %1218 = fmul fast float %1194, %1216
  %1219 = fmul fast float %1209, %1217
  %1220 = call float @dx.op.tertiary.f32(i32 46, float %1210, float %1218, float %1219)  ; FMad(a,b,c)
  %1221 = fmul fast float %1208, %1217
  %1222 = call float @dx.op.tertiary.f32(i32 46, float %1209, float %1218, float %1221)  ; FMad(a,b,c)
  %1223 = fadd fast float %1200, %1220
  %1224 = fadd fast float %1203, %1222
  %1225 = icmp ugt i32 %1174, 1
  %1226 = icmp ugt i32 %1172, 33554431
  %1227 = or i1 %1226, %1225
  br i1 %1227, label %1228, label %1253

; <label>:1228                                    ; preds = %1155
  %1229 = add i32 %62, 244
  %1230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1229, i32 undef)  ; BufferLoad(srv,index,wot)
  %1231 = extractvalue %dx.types.ResRet.i32 %1230, 0
  %1232 = lshr i32 %1231, 16
  %1233 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1232)  ; LegacyF16ToF32(value)
  %1234 = fmul fast float %1196, %1233
  %1235 = call float @dx.op.unary.f32(i32 22, float %1234)  ; Frc(value)
  %1236 = mul nuw nsw i32 %1174, %1175
  %1237 = uitofp i32 %1236 to float
  %1238 = fmul fast float %1235, %1237
  %1239 = call float @dx.op.unary.f32(i32 27, float %1238)  ; Round_ni(value)
  %1240 = fptoui float %1239 to i32
  %1241 = urem i32 %1240, %1174
  %1242 = udiv i32 %1240, %1175
  %1243 = call float @dx.op.unary.f32(i32 22, float %1223)  ; Frc(value)
  %1244 = call float @dx.op.unary.f32(i32 22, float %1224)  ; Frc(value)
  %1245 = uitofp i32 %1241 to float
  %1246 = uitofp i32 %1242 to float
  %1247 = fadd fast float %1243, %1245
  %1248 = fadd fast float %1244, %1246
  %1249 = uitofp i32 %1174 to float
  %1250 = uitofp i32 %1175 to float
  %1251 = fdiv fast float %1247, %1249
  %1252 = fdiv fast float %1248, %1250
  br label %1253

; <label>:1253                                    ; preds = %1228, %1155
  %1254 = phi float [ %1251, %1228 ], [ %1223, %1155 ]
  %1255 = phi float [ %1252, %1228 ], [ %1224, %1155 ]
  %1256 = and i32 %1149, 16777216
  %1257 = icmp eq i32 %1256, 0
  br i1 %1257, label %1367, label %1258

; <label>:1258                                    ; preds = %1253
  %1259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1260 = extractvalue %dx.types.CBufRet.f32 %1259, 0
  %1261 = extractvalue %dx.types.CBufRet.f32 %1259, 1
  %1262 = extractvalue %dx.types.CBufRet.f32 %1259, 2
  %1263 = fadd fast float %1260, %170
  %1264 = fadd fast float %1261, %171
  %1265 = fadd fast float %1262, %172
  %1266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1267 = extractvalue %dx.types.CBufRet.f32 %1266, 0
  %1268 = call float @dx.op.unary.f32(i32 7, float %1267)  ; Saturate(value)
  %1269 = icmp eq i32 %63, 65535
  br i1 %1269, label %1364, label %1270

; <label>:1270                                    ; preds = %1258
  %1271 = lshr i32 %63, 1
  %1272 = shl i32 %1271, 2
  %1273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1272, i32 undef)  ; BufferLoad(srv,index,wot)
  %1274 = extractvalue %dx.types.ResRet.i32 %1273, 0
  %1275 = and i32 %63, 1
  %1276 = icmp ne i32 %1275, 0
  %1277 = lshr i32 %1274, 16
  %1278 = and i32 %1274, 65535
  %1279 = select i1 %1276, i32 %1277, i32 %1278
  %1280 = icmp eq i32 %1279, 65535
  br i1 %1280, label %1360, label %1281

; <label>:1281                                    ; preds = %1270
  %1282 = mul nuw nsw i32 %1279, 40
  %1283 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %1282, i32 undef)  ; BufferLoad(srv,index,wot)
  %1284 = extractvalue %dx.types.ResRet.f32 %1283, 0
  %1285 = extractvalue %dx.types.ResRet.f32 %1283, 1
  %1286 = extractvalue %dx.types.ResRet.f32 %1283, 2
  %1287 = add nuw nsw i32 %1282, 12
  %1288 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %1287, i32 undef)  ; BufferLoad(srv,index,wot)
  %1289 = extractvalue %dx.types.ResRet.f32 %1288, 0
  %1290 = extractvalue %dx.types.ResRet.f32 %1288, 1
  %1291 = extractvalue %dx.types.ResRet.f32 %1288, 2
  %1292 = add nuw nsw i32 %1282, 24
  %1293 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %1292, i32 undef)  ; BufferLoad(srv,index,wot)
  %1294 = extractvalue %dx.types.ResRet.f32 %1293, 0
  %1295 = extractvalue %dx.types.ResRet.f32 %1293, 1
  %1296 = extractvalue %dx.types.ResRet.f32 %1293, 2
  %1297 = add nuw nsw i32 %1282, 36
  %1298 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %1297, i32 undef)  ; BufferLoad(srv,index,wot)
  %1299 = extractvalue %dx.types.ResRet.f32 %1298, 0
  %1300 = fsub fast float %1263, %1284
  %1301 = fsub fast float %1264, %1285
  %1302 = fsub fast float %1265, %1286
  %1303 = fmul fast float %1299, %1300
  %1304 = fmul fast float %1299, %1301
  %1305 = fmul fast float %1299, %1302
  %1306 = call float @dx.op.unary.f32(i32 27, float %1303)  ; Round_ni(value)
  %1307 = call float @dx.op.unary.f32(i32 27, float %1304)  ; Round_ni(value)
  %1308 = call float @dx.op.unary.f32(i32 27, float %1305)  ; Round_ni(value)
  %1309 = fadd fast float %1306, 5.000000e-01
  %1310 = fadd fast float %1307, 5.000000e-01
  %1311 = fadd fast float %1308, 5.000000e-01
  %1312 = fmul fast float %1309, %1289
  %1313 = fmul fast float %1310, %1290
  %1314 = fmul fast float %1311, %1291
  %1315 = shl i32 %63, 2
  %1316 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1315, i32 undef)  ; BufferLoad(srv,index,wot)
  %1317 = extractvalue %dx.types.ResRet.i32 %1316, 0
  %1318 = add i32 %1317, 0
  %1319 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1318, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1320 = call float @dx.op.unary.f32(i32 22, float %1312)  ; Frc(value)
  %1321 = call float @dx.op.unary.f32(i32 22, float %1313)  ; Frc(value)
  %1322 = call float @dx.op.unary.f32(i32 22, float %1314)  ; Frc(value)
  %1323 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1319, %dx.types.Handle %47, float %1320, float %1321, float %1322, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1324 = extractvalue %dx.types.ResRet.f32 %1323, 0
  %1325 = extractvalue %dx.types.ResRet.f32 %1323, 1
  %1326 = extractvalue %dx.types.ResRet.f32 %1323, 2
  %1327 = fmul fast float %1324, 1.023000e+03
  %1328 = fmul fast float %1325, 1.023000e+03
  %1329 = fmul fast float %1326, 1.023000e+03
  %1330 = fadd fast float %1327, 5.000000e-01
  %1331 = fadd fast float %1328, 5.000000e-01
  %1332 = fadd fast float %1329, 5.000000e-01
  %1333 = call float @dx.op.unary.f32(i32 27, float %1330)  ; Round_ni(value)
  %1334 = call float @dx.op.unary.f32(i32 27, float %1331)  ; Round_ni(value)
  %1335 = call float @dx.op.unary.f32(i32 27, float %1332)  ; Round_ni(value)
  %1336 = fsub fast float %1303, %1306
  %1337 = fsub fast float %1304, %1307
  %1338 = fsub fast float %1305, %1308
  %1339 = fmul fast float %1336, 7.500000e-01
  %1340 = fmul fast float %1337, 7.500000e-01
  %1341 = fmul fast float %1338, 7.500000e-01
  %1342 = fadd fast float %1306, 1.250000e-01
  %1343 = fadd fast float %1342, %1339
  %1344 = fadd fast float %1343, %1333
  %1345 = fadd fast float %1307, 1.250000e-01
  %1346 = fadd fast float %1345, %1340
  %1347 = fadd fast float %1346, %1334
  %1348 = fadd fast float %1308, 1.250000e-01
  %1349 = fadd fast float %1348, %1341
  %1350 = fadd fast float %1349, %1335
  %1351 = fmul fast float %1344, %1294
  %1352 = fmul fast float %1347, %1295
  %1353 = fmul fast float %1350, %1296
  %1354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1315, i32 undef)  ; BufferLoad(srv,index,wot)
  %1355 = extractvalue %dx.types.ResRet.i32 %1354, 0
  %1356 = add i32 %1355, 0
  %1357 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1356, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1358 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1357, %dx.types.Handle %45, float %1351, float %1352, float %1353, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1359 = extractvalue %dx.types.ResRet.f32 %1358, 0
  br label %1360

; <label>:1360                                    ; preds = %1281, %1270
  %1361 = phi float [ %1359, %1281 ], [ -1.000000e+00, %1270 ]
  %1362 = fadd fast float %1361, %1268
  %1363 = call float @dx.op.unary.f32(i32 7, float %1362)  ; Saturate(value)
  br label %1364

; <label>:1364                                    ; preds = %1360, %1258
  %1365 = phi float [ %1363, %1360 ], [ %1268, %1258 ]
  %1366 = fmul fast float %1365, %470
  br label %1367

; <label>:1367                                    ; preds = %1364, %1253
  %1368 = phi float [ %1366, %1364 ], [ %470, %1253 ]
  %1369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1147, i32 undef)  ; BufferLoad(srv,index,wot)
  %1370 = extractvalue %dx.types.ResRet.i32 %1369, 0
  %1371 = and i32 %1370, 256
  %1372 = icmp eq i32 %1371, 0
  br i1 %1372, label %1419, label %1373

; <label>:1373                                    ; preds = %1367
  %1374 = add i32 %62, 428
  %1375 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1374, i32 undef)  ; BufferLoad(srv,index,wot)
  %1376 = extractvalue %dx.types.ResRet.i32 %1375, 0
  %1377 = add i32 %1376, 0
  %1378 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1377, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1379 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1378, %dx.types.Handle %108, float %1254, float %1255, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1380 = extractvalue %dx.types.ResRet.f32 %1379, 0
  %1381 = add i32 %62, 116
  %1382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1381, i32 undef)  ; BufferLoad(srv,index,wot)
  %1383 = extractvalue %dx.types.ResRet.i32 %1382, 0
  %1384 = shl i32 %1383, 4
  %1385 = and i32 %1384, 32752
  %1386 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1385)  ; LegacyF16ToF32(value)
  %1387 = lshr i32 %1383, 7
  %1388 = and i32 %1387, 32752
  %1389 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1388)  ; LegacyF16ToF32(value)
  %1390 = fsub fast float 1.000000e+00, %1368
  %1391 = call float @dx.op.binary.f32(i32 35, float %1390, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1392 = bitcast float %1368 to i32
  %1393 = sitofp i32 %1392 to float
  %1394 = fadd fast float %1393, 0xC1CFBF8940000000
  %1395 = fmul fast float %1389, %1394
  %1396 = fadd fast float %1395, 0x41CFBF8940000000
  %1397 = fptosi float %1396 to i32
  %1398 = bitcast i32 %1397 to float
  %1399 = bitcast float %1391 to i32
  %1400 = sitofp i32 %1399 to float
  %1401 = fadd fast float %1400, 0xC1CFBF8940000000
  %1402 = fmul fast float %1401, %1389
  %1403 = fadd fast float %1402, 0x41CFBF8940000000
  %1404 = fptosi float %1403 to i32
  %1405 = bitcast i32 %1404 to float
  %1406 = fmul fast float %1398, %1386
  %1407 = fmul fast float %1405, %1386
  %1408 = fsub fast float %1391, %1406
  %1409 = fadd fast float %1407, %1391
  %1410 = call float @dx.op.unary.f32(i32 7, float %1408)  ; Saturate(value)
  %1411 = call float @dx.op.unary.f32(i32 7, float %1409)  ; Saturate(value)
  %1412 = fsub fast float %1380, %1410
  %1413 = fsub fast float %1411, %1410
  %1414 = bitcast float %1413 to i32
  %1415 = sub nsw i32 2129859010, %1414
  %1416 = bitcast i32 %1415 to float
  %1417 = fmul fast float %1416, %1412
  %1418 = call float @dx.op.unary.f32(i32 7, float %1417)  ; Saturate(value)
  br label %1419

; <label>:1419                                    ; preds = %1373, %1367
  %1420 = phi float [ %1418, %1373 ], [ %1368, %1367 ]
  %1421 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1147, i32 undef)  ; BufferLoad(srv,index,wot)
  %1422 = extractvalue %dx.types.ResRet.i32 %1421, 0
  %1423 = and i32 %1422, 128
  %1424 = icmp eq i32 %1423, 0
  br i1 %1424, label %1441, label %1425

; <label>:1425                                    ; preds = %1419
  %1426 = add i32 %62, 412
  %1427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1426, i32 undef)  ; BufferLoad(srv,index,wot)
  %1428 = extractvalue %dx.types.ResRet.i32 %1427, 0
  %1429 = add i32 %1428, 0
  %1430 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1429, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1431 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1430, %dx.types.Handle %108, float %1254, float %1255, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1432 = extractvalue %dx.types.ResRet.f32 %1431, 0
  %1433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1147, i32 undef)  ; BufferLoad(srv,index,wot)
  %1434 = extractvalue %dx.types.ResRet.i32 %1433, 0
  %1435 = and i32 %1434, 524288
  %1436 = icmp ne i32 %1435, 0
  %1437 = fcmp fast ogt float %1432, 0x3FE0101020000000
  %1438 = select i1 %1437, float 1.000000e+00, float 0.000000e+00
  %1439 = select i1 %1436, float %1438, float %1432
  %1440 = fmul fast float %1439, %1420
  br label %1441

; <label>:1441                                    ; preds = %1425, %1419
  %1442 = phi float [ %1440, %1425 ], [ %1420, %1419 ]
  %1443 = fcmp fast ult float %1442, 0x3F70101020000000
  br i1 %1443, label %1986, label %1444

; <label>:1444                                    ; preds = %1441
  %1445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1147, i32 undef)  ; BufferLoad(srv,index,wot)
  %1446 = extractvalue %dx.types.ResRet.i32 %1445, 0
  %1447 = and i32 %1446, 16
  %1448 = icmp eq i32 %1447, 0
  br i1 %1448, label %1647, label %1449

; <label>:1449                                    ; preds = %1444
  %1450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1170, i32 undef)  ; BufferLoad(srv,index,wot)
  %1451 = extractvalue %dx.types.ResRet.i32 %1450, 0
  %1452 = add i32 %62, 364
  %1453 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1452, i32 undef)  ; BufferLoad(srv,index,wot)
  %1454 = extractvalue %dx.types.ResRet.i32 %1453, 0
  %1455 = add i32 %1454, 0
  %1456 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1455, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1457 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1456, %dx.types.Handle %107, float %1254, float %1255, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1458 = extractvalue %dx.types.ResRet.f32 %1457, 0
  %1459 = extractvalue %dx.types.ResRet.f32 %1457, 1
  %1460 = extractvalue %dx.types.ResRet.f32 %1457, 2
  %1461 = extractvalue %dx.types.ResRet.f32 %1457, 3
  %1462 = and i32 %1451, 255
  %1463 = uitofp i32 %1462 to float
  %1464 = lshr i32 %1451, 8
  %1465 = and i32 %1464, 255
  %1466 = uitofp i32 %1465 to float
  %1467 = fmul fast float %1461, %1463
  %1468 = fadd fast float %1467, %1466
  %1469 = fmul fast float %1468, 0x3F70101000000000
  %1470 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1147, i32 undef)  ; BufferLoad(srv,index,wot)
  %1471 = extractvalue %dx.types.ResRet.i32 %1470, 0
  %1472 = and i32 %1471, 512
  %1473 = icmp eq i32 %1472, 0
  br i1 %1473, label %1482, label %1474

; <label>:1474                                    ; preds = %1449
  %1475 = add i32 %62, 444
  %1476 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1475, i32 undef)  ; BufferLoad(srv,index,wot)
  %1477 = extractvalue %dx.types.ResRet.i32 %1476, 0
  %1478 = add i32 %1477, 0
  %1479 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1478, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1480 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1479, %dx.types.Handle %108, float %1254, float %1255, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1481 = extractvalue %dx.types.ResRet.f32 %1480, 0
  br label %1482

; <label>:1482                                    ; preds = %1474, %1449
  %1483 = phi float [ %1481, %1474 ], [ 1.000000e+00, %1449 ]
  %1484 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1147, i32 undef)  ; BufferLoad(srv,index,wot)
  %1485 = extractvalue %dx.types.ResRet.i32 %1484, 0
  %1486 = and i32 %1485, 33554432
  %1487 = icmp eq i32 %1486, 0
  br i1 %1487, label %1594, label %1488

; <label>:1488                                    ; preds = %1482
  %1489 = add i32 %62, 240
  %1490 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1489, i32 undef)  ; BufferLoad(srv,index,wot)
  %1491 = extractvalue %dx.types.ResRet.i32 %1490, 0
  %1492 = and i32 %1491, 65535
  %1493 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1492)  ; LegacyF16ToF32(value)
  %1494 = lshr i32 %1491, 16
  %1495 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1494)  ; LegacyF16ToF32(value)
  %1496 = add i32 %62, 244
  %1497 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1496, i32 undef)  ; BufferLoad(srv,index,wot)
  %1498 = extractvalue %dx.types.ResRet.i32 %1497, 0
  %1499 = and i32 %1498, 65535
  %1500 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1499)  ; LegacyF16ToF32(value)
  %1501 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %297, i32 undef)  ; BufferLoad(srv,index,wot)
  %1502 = extractvalue %dx.types.ResRet.i32 %1501, 0
  %1503 = lshr i32 %1502, 24
  %1504 = uitofp i32 %1503 to float
  %1505 = fmul fast float %1504, 0x3F70101020000000
  %1506 = and i32 %1502, 255
  %1507 = uitofp i32 %1506 to float
  %1508 = fmul fast float %1507, 0x3F70101020000000
  %1509 = lshr i32 %1502, 8
  %1510 = and i32 %1509, 255
  %1511 = uitofp i32 %1510 to float
  %1512 = fmul fast float %1511, 0x3F70101020000000
  %1513 = lshr i32 %1502, 16
  %1514 = and i32 %1513, 255
  %1515 = uitofp i32 %1514 to float
  %1516 = fmul fast float %1515, 0x3F70101020000000
  %1517 = add i32 %62, 236
  %1518 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1517, i32 undef)  ; BufferLoad(srv,index,wot)
  %1519 = extractvalue %dx.types.ResRet.i32 %1518, 0
  %1520 = lshr i32 %1519, 24
  %1521 = uitofp i32 %1520 to float
  %1522 = fmul fast float %1521, 0x3F70101020000000
  %1523 = and i32 %1519, 255
  %1524 = uitofp i32 %1523 to float
  %1525 = fmul fast float %1524, 0x3F70101020000000
  %1526 = lshr i32 %1519, 8
  %1527 = and i32 %1526, 255
  %1528 = uitofp i32 %1527 to float
  %1529 = fmul fast float %1528, 0x3F70101020000000
  %1530 = lshr i32 %1519, 16
  %1531 = and i32 %1530, 255
  %1532 = uitofp i32 %1531 to float
  %1533 = fmul fast float %1532, 0x3F70101020000000
  %1534 = bitcast float %1458 to i32
  %1535 = ashr i32 %1534, 1
  %1536 = sub nsw i32 1597463174, %1535
  %1537 = bitcast i32 %1536 to float
  %1538 = fmul fast float %1458, 5.000000e-01
  %1539 = fmul fast float %1537, %1537
  %1540 = fmul fast float %1539, %1538
  %1541 = fsub fast float 1.500000e+00, %1540
  %1542 = fmul fast float %1537, %1458
  %1543 = fmul fast float %1542, %1541
  %1544 = bitcast float %1459 to i32
  %1545 = ashr i32 %1544, 1
  %1546 = sub nsw i32 1597463174, %1545
  %1547 = bitcast i32 %1546 to float
  %1548 = fmul fast float %1459, 5.000000e-01
  %1549 = fmul fast float %1547, %1547
  %1550 = fmul fast float %1549, %1548
  %1551 = fsub fast float 1.500000e+00, %1550
  %1552 = fmul fast float %1547, %1459
  %1553 = fmul fast float %1552, %1551
  %1554 = bitcast float %1460 to i32
  %1555 = ashr i32 %1554, 1
  %1556 = sub nsw i32 1597463174, %1555
  %1557 = bitcast i32 %1556 to float
  %1558 = fmul fast float %1460, 5.000000e-01
  %1559 = fmul fast float %1557, %1557
  %1560 = fmul fast float %1559, %1558
  %1561 = fsub fast float 1.500000e+00, %1560
  %1562 = fmul fast float %1557, %1460
  %1563 = fmul fast float %1562, %1561
  %1564 = fsub fast float %1543, %1525
  %1565 = fsub fast float %1553, %1529
  %1566 = fsub fast float %1563, %1533
  %1567 = fmul fast float %1564, %1493
  %1568 = fmul fast float %1565, %1495
  %1569 = fmul fast float %1566, %1500
  %1570 = fadd fast float %1567, %1508
  %1571 = fadd fast float %1568, %1512
  %1572 = fadd fast float %1569, %1516
  %1573 = call float @dx.op.unary.f32(i32 7, float %1570)  ; Saturate(value)
  %1574 = call float @dx.op.unary.f32(i32 7, float %1571)  ; Saturate(value)
  %1575 = call float @dx.op.unary.f32(i32 7, float %1572)  ; Saturate(value)
  %1576 = fmul fast float %1573, %1573
  %1577 = fmul fast float %1574, %1574
  %1578 = fmul fast float %1575, %1575
  %1579 = fsub fast float %1576, %1458
  %1580 = fsub fast float %1577, %1459
  %1581 = fsub fast float %1578, %1460
  %1582 = fmul fast float %1579, %1483
  %1583 = fmul fast float %1580, %1483
  %1584 = fmul fast float %1581, %1483
  %1585 = fadd fast float %1582, %1458
  %1586 = fadd fast float %1583, %1459
  %1587 = fadd fast float %1584, %1460
  %1588 = fadd fast float %1505, %1469
  %1589 = fsub fast float %1588, %1522
  %1590 = call float @dx.op.unary.f32(i32 7, float %1589)  ; Saturate(value)
  %1591 = fsub fast float %1590, %1469
  %1592 = fmul fast float %1591, %1483
  %1593 = fadd fast float %1592, %1469
  br label %1647

; <label>:1594                                    ; preds = %1482
  %1595 = and i32 %1485, 134217728
  %1596 = icmp eq i32 %1595, 0
  br i1 %1596, label %1631, label %1597

; <label>:1597                                    ; preds = %1594
  %1598 = call float @dx.op.unary.f32(i32 24, float %302)  ; Sqrt(value)
  %1599 = call float @dx.op.unary.f32(i32 24, float %306)  ; Sqrt(value)
  %1600 = call float @dx.op.unary.f32(i32 24, float %310)  ; Sqrt(value)
  %1601 = fadd fast float %1598, -5.000000e-01
  %1602 = fadd fast float %1599, -5.000000e-01
  %1603 = fadd fast float %1600, -5.000000e-01
  %1604 = fmul fast float %1601, %1483
  %1605 = fmul fast float %1602, %1483
  %1606 = fmul fast float %1603, %1483
  %1607 = fadd fast float %1604, 5.000000e-01
  %1608 = fadd fast float %1605, 5.000000e-01
  %1609 = fadd fast float %1606, 5.000000e-01
  %1610 = call float @dx.op.unary.f32(i32 24, float %1458)  ; Sqrt(value)
  %1611 = call float @dx.op.unary.f32(i32 24, float %1459)  ; Sqrt(value)
  %1612 = call float @dx.op.unary.f32(i32 24, float %1460)  ; Sqrt(value)
  %1613 = fmul fast float %1607, 2.000000e+00
  %1614 = fsub fast float 1.000000e+00, %1613
  %1615 = fmul fast float %1614, %1610
  %1616 = fadd fast float %1615, %1613
  %1617 = fmul fast float %1616, %1610
  %1618 = fmul fast float %1608, 2.000000e+00
  %1619 = fsub fast float 1.000000e+00, %1618
  %1620 = fmul fast float %1619, %1611
  %1621 = fadd fast float %1620, %1618
  %1622 = fmul fast float %1621, %1611
  %1623 = fmul fast float %1609, 2.000000e+00
  %1624 = fsub fast float 1.000000e+00, %1623
  %1625 = fmul fast float %1624, %1612
  %1626 = fadd fast float %1625, %1623
  %1627 = fmul fast float %1626, %1612
  %1628 = fmul fast float %1617, %1617
  %1629 = fmul fast float %1622, %1622
  %1630 = fmul fast float %1627, %1627
  br label %1647

; <label>:1631                                    ; preds = %1594
  %1632 = fmul fast float %302, %302
  %1633 = fmul fast float %306, %306
  %1634 = fmul fast float %310, %310
  %1635 = fadd fast float %1632, -1.000000e+00
  %1636 = fadd fast float %1633, -1.000000e+00
  %1637 = fadd fast float %1634, -1.000000e+00
  %1638 = fmul fast float %1483, %1635
  %1639 = fmul fast float %1483, %1636
  %1640 = fmul fast float %1483, %1637
  %1641 = fadd fast float %1638, 1.000000e+00
  %1642 = fadd fast float %1639, 1.000000e+00
  %1643 = fadd fast float %1640, 1.000000e+00
  %1644 = fmul fast float %1641, %1458
  %1645 = fmul fast float %1642, %1459
  %1646 = fmul fast float %1643, %1460
  br label %1647

; <label>:1647                                    ; preds = %1631, %1597, %1488, %1444
  %1648 = phi float [ %1593, %1488 ], [ %1469, %1597 ], [ %1469, %1631 ], [ 0x3FA23C0BE0000000, %1444 ]
  %1649 = phi float [ %1585, %1488 ], [ %1628, %1597 ], [ %1644, %1631 ], [ 1.000000e+00, %1444 ]
  %1650 = phi float [ %1586, %1488 ], [ %1629, %1597 ], [ %1645, %1631 ], [ 1.000000e+00, %1444 ]
  %1651 = phi float [ %1587, %1488 ], [ %1630, %1597 ], [ %1646, %1631 ], [ 1.000000e+00, %1444 ]
  %1652 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1653 = extractvalue %dx.types.CBufRet.i32 %1652, 1
  %1654 = and i32 %1653, 1
  %1655 = icmp ne i32 %1654, 0
  %1656 = add i32 %62, 356
  %1657 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1656, i32 undef)  ; BufferLoad(srv,index,wot)
  %1658 = extractvalue %dx.types.ResRet.i32 %1657, 0
  %1659 = and i32 %1658, 32
  %1660 = icmp ne i32 %1659, 0
  %1661 = and i1 %1655, %1660
  %1662 = select i1 %1661, float 1.000000e+00, float %1649
  %1663 = select i1 %1661, float 0x3FD3333340000000, float %1650
  %1664 = select i1 %1661, float 0x3FD3333340000000, float %1651
  %1665 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1147, i32 undef)  ; BufferLoad(srv,index,wot)
  %1666 = extractvalue %dx.types.ResRet.i32 %1665, 0
  %1667 = and i32 %1666, 32
  %1668 = icmp eq i32 %1667, 0
  br i1 %1668, label %1741, label %1669

; <label>:1669                                    ; preds = %1647
  %1670 = add i32 %62, 108
  %1671 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1670, i32 undef)  ; BufferLoad(srv,index,wot)
  %1672 = extractvalue %dx.types.ResRet.i32 %1671, 0
  %1673 = add i32 %62, 380
  %1674 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1673, i32 undef)  ; BufferLoad(srv,index,wot)
  %1675 = extractvalue %dx.types.ResRet.i32 %1674, 0
  %1676 = add i32 %1675, 0
  %1677 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1676, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1678 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1677, %dx.types.Handle %107, float %1254, float %1255, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1679 = extractvalue %dx.types.ResRet.f32 %1678, 0
  %1680 = extractvalue %dx.types.ResRet.f32 %1678, 1
  %1681 = extractvalue %dx.types.ResRet.f32 %1678, 2
  %1682 = extractvalue %dx.types.ResRet.f32 %1678, 3
  %1683 = and i32 %1672, 255
  %1684 = uitofp i32 %1683 to float
  %1685 = lshr i32 %1672, 8
  %1686 = and i32 %1685, 255
  %1687 = uitofp i32 %1686 to float
  %1688 = lshr i32 %1672, 16
  %1689 = and i32 %1688, 255
  %1690 = uitofp i32 %1689 to float
  %1691 = fmul fast float %1690, 0x3F70101000000000
  %1692 = fmul fast float %1679, %1684
  %1693 = fadd fast float %1692, %1687
  %1694 = fmul fast float %1693, 0x3F70101000000000
  %1695 = fadd fast float %1680, -5.000000e-01
  %1696 = fadd fast float %1682, -5.000000e-01
  %1697 = fmul fast float %1695, %1691
  %1698 = fmul fast float %1696, %1691
  %1699 = fadd fast float %1697, 5.000000e-01
  %1700 = fadd fast float %1698, 5.000000e-01
  %1701 = fmul fast float %1699, 2.000000e+00
  %1702 = fadd fast float %1701, -1.000000e+00
  %1703 = fmul fast float %1700, 2.000000e+00
  %1704 = fadd fast float %1703, -1.000000e+00
  %1705 = fadd fast float %1702, %1704
  %1706 = fmul fast float %1705, 5.000000e-01
  %1707 = fsub fast float %1702, %1704
  %1708 = fmul fast float %1707, 5.000000e-01
  %1709 = call float @dx.op.unary.f32(i32 6, float %1706)  ; FAbs(value)
  %1710 = fsub fast float 1.000000e+00, %1709
  %1711 = call float @dx.op.unary.f32(i32 6, float %1708)  ; FAbs(value)
  %1712 = fsub fast float %1710, %1711
  %1713 = call float @dx.op.dot3.f32(i32 55, float %1706, float %1708, float %1712, float %1706, float %1708, float %1712)  ; Dot3(ax,ay,az,bx,by,bz)
  %1714 = call float @dx.op.unary.f32(i32 25, float %1713)  ; Rsqrt(value)
  %1715 = fmul fast float %1706, %1714
  %1716 = fmul fast float %1708, %1714
  %1717 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1147, i32 undef)  ; BufferLoad(srv,index,wot)
  %1718 = extractvalue %dx.types.ResRet.i32 %1717, 0
  %1719 = and i32 %1718, 67108864
  %1720 = icmp eq i32 %1719, 0
  br i1 %1720, label %1737, label %1721

; <label>:1721                                    ; preds = %1669
  %1722 = add i32 %62, 296
  %1723 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1722, i32 undef)  ; BufferLoad(srv,index,wot)
  %1724 = extractvalue %dx.types.ResRet.i32 %1723, 0
  %1725 = and i32 %1724, 65535
  %1726 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1725)  ; LegacyF16ToF32(value)
  %1727 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1164, i32 undef)  ; BufferLoad(srv,index,wot)
  %1728 = extractvalue %dx.types.ResRet.i32 %1727, 0
  %1729 = and i32 %1728, 65535
  %1730 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1729)  ; LegacyF16ToF32(value)
  %1731 = lshr i32 %1724, 16
  %1732 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1731)  ; LegacyF16ToF32(value)
  %1733 = fsub fast float %1694, %1732
  %1734 = fmul fast float %1733, %1726
  %1735 = fadd fast float %1734, %1730
  %1736 = call float @dx.op.unary.f32(i32 7, float %1735)  ; Saturate(value)
  br label %1737

; <label>:1737                                    ; preds = %1721, %1669
  %1738 = phi float [ %1736, %1721 ], [ %1694, %1669 ]
  %1739 = call float @dx.op.dot2.f32(i32 54, float %1715, float %1716, float %1158, float %1159)  ; Dot2(ax,ay,bx,by)
  %1740 = call float @dx.op.dot2.f32(i32 54, float %1715, float %1716, float %1160, float %1161)  ; Dot2(ax,ay,bx,by)
  br label %1741

; <label>:1741                                    ; preds = %1737, %1647
  %1742 = phi float [ %1738, %1737 ], [ 0x3FD6666660000000, %1647 ]
  %1743 = phi float [ %1739, %1737 ], [ 0.000000e+00, %1647 ]
  %1744 = phi float [ %1740, %1737 ], [ 0.000000e+00, %1647 ]
  %1745 = phi float [ %1681, %1737 ], [ 1.000000e+00, %1647 ]
  %1746 = add i32 %62, 176
  %1747 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1746, i32 undef)  ; BufferLoad(srv,index,wot)
  %1748 = extractvalue %dx.types.ResRet.i32 %1747, 0
  %1749 = lshr i32 %1748, 22
  %1750 = shl nuw nsw i32 %1749, 5
  %1751 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1750)  ; LegacyF16ToF32(value)
  %1752 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1147, i32 undef)  ; BufferLoad(srv,index,wot)
  %1753 = extractvalue %dx.types.ResRet.i32 %1752, 0
  %1754 = and i32 %1753, 64
  %1755 = icmp eq i32 %1754, 0
  br i1 %1755, label %1789, label %1756

; <label>:1756                                    ; preds = %1741
  %1757 = add i32 %62, 396
  %1758 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1757, i32 undef)  ; BufferLoad(srv,index,wot)
  %1759 = extractvalue %dx.types.ResRet.i32 %1758, 0
  %1760 = add i32 %1759, 0
  %1761 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1760, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1762 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1147, i32 undef)  ; BufferLoad(srv,index,wot)
  %1763 = extractvalue %dx.types.ResRet.i32 %1762, 0
  %1764 = and i32 %1763, 131072
  %1765 = icmp eq i32 %1764, 0
  %1766 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1761, %dx.types.Handle %107, float %1254, float %1255, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1767 = extractvalue %dx.types.ResRet.f32 %1766, 0
  %1768 = extractvalue %dx.types.ResRet.f32 %1766, 1
  %1769 = extractvalue %dx.types.ResRet.f32 %1766, 2
  %1770 = fmul fast float %1767, %290
  %1771 = fmul fast float %1768, %293
  %1772 = fmul fast float %1769, %296
  br i1 %1765, label %1779, label %1773

; <label>:1773                                    ; preds = %1756
  %1774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1775 = extractvalue %dx.types.CBufRet.f32 %1774, 0
  %1776 = fmul fast float %1775, %1770
  %1777 = fmul fast float %1775, %1771
  %1778 = fmul fast float %1775, %1772
  br label %1779

; <label>:1779                                    ; preds = %1773, %1756
  %1780 = phi float [ %1776, %1773 ], [ %1770, %1756 ]
  %1781 = phi float [ %1777, %1773 ], [ %1771, %1756 ]
  %1782 = phi float [ %1778, %1773 ], [ %1772, %1756 ]
  %1783 = fmul fast float %1780, %1751
  %1784 = select i1 %231, float %1783, float %1780
  %1785 = call float @dx.op.dot3.f32(i32 55, float %1784, float %1781, float %1782, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1786 = select i1 %231, float 0.000000e+00, float %1780
  %1787 = select i1 %231, float %1785, float %1781
  %1788 = select i1 %231, float 0.000000e+00, float %1782
  br label %1789

; <label>:1789                                    ; preds = %1779, %1741
  %1790 = phi float [ %1786, %1779 ], [ 0.000000e+00, %1741 ]
  %1791 = phi float [ %1787, %1779 ], [ 0.000000e+00, %1741 ]
  %1792 = phi float [ %1788, %1779 ], [ 0.000000e+00, %1741 ]
  %1793 = add i32 %62, 112
  %1794 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1793, i32 undef)  ; BufferLoad(srv,index,wot)
  %1795 = extractvalue %dx.types.ResRet.i32 %1794, 0
  %1796 = and i32 %1795, 255
  %1797 = uitofp i32 %1796 to float
  %1798 = lshr i32 %1795, 8
  %1799 = and i32 %1798, 255
  %1800 = uitofp i32 %1799 to float
  %1801 = call float @dx.op.dot3.f32(i32 55, float %1662, float %1663, float %1664, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1802 = fmul fast float %1800, %1801
  %1803 = fadd fast float %1802, %1797
  %1804 = fmul fast float %1803, 0x3F70101020000000
  %1805 = call float @dx.op.unary.f32(i32 7, float %1804)  ; Saturate(value)
  br i1 %1146, label %1806, label %1814

; <label>:1806                                    ; preds = %1789
  %1807 = fsub fast float 1.000000e+00, %1442
  %1808 = fmul fast float %1807, %1134
  %1809 = fmul fast float %1807, %1135
  %1810 = fmul fast float %1807, %1136
  %1811 = fmul fast float %1807, %1137
  %1812 = fmul fast float %1807, %1138
  %1813 = fmul fast float %1807, %1139
  br label %1814

; <label>:1814                                    ; preds = %1806, %1789
  %1815 = phi float [ %1808, %1806 ], [ %1134, %1789 ]
  %1816 = phi float [ %1809, %1806 ], [ %1135, %1789 ]
  %1817 = phi float [ %1810, %1806 ], [ %1136, %1789 ]
  %1818 = phi float [ %1811, %1806 ], [ %1137, %1789 ]
  %1819 = phi float [ %1812, %1806 ], [ %1138, %1789 ]
  %1820 = phi float [ %1813, %1806 ], [ %1139, %1789 ]
  %1821 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1147, i32 undef)  ; BufferLoad(srv,index,wot)
  %1822 = extractvalue %dx.types.ResRet.i32 %1821, 0
  %1823 = and i32 %1822, 3
  %1824 = icmp eq i32 %1823, 3
  br i1 %1824, label %1903, label %1825

; <label>:1825                                    ; preds = %1814
  %1826 = and i32 %1822, 16
  %1827 = icmp ne i32 %1826, 0
  %1828 = select i1 %1827, float %1442, float 0.000000e+00
  %1829 = icmp eq i32 %1823, 0
  br i1 %1829, label %1830, label %1858

; <label>:1830                                    ; preds = %1825
  %1831 = and i32 %1822, 64
  %1832 = icmp ne i32 %1831, 0
  %1833 = select i1 %1832, float %1442, float 0.000000e+00
  %1834 = fsub fast float %1662, %1815
  %1835 = fsub fast float %1663, %1816
  %1836 = fsub fast float %1664, %1817
  %1837 = fmul fast float %1828, %1834
  %1838 = fmul fast float %1828, %1835
  %1839 = fmul fast float %1828, %1836
  %1840 = fadd fast float %1837, %1815
  %1841 = fadd fast float %1838, %1816
  %1842 = fadd fast float %1839, %1817
  %1843 = fsub fast float %1648, %1140
  %1844 = fmul fast float %1828, %1843
  %1845 = fadd fast float %1844, %1140
  %1846 = fsub fast float %1790, %1818
  %1847 = fsub fast float %1791, %1819
  %1848 = fsub fast float %1792, %1820
  %1849 = fmul fast float %1833, %1846
  %1850 = fmul fast float %1833, %1847
  %1851 = fmul fast float %1833, %1848
  %1852 = fadd fast float %1849, %1818
  %1853 = fadd fast float %1850, %1819
  %1854 = fadd fast float %1851, %1820
  %1855 = fsub fast float %1805, %1144
  %1856 = fmul fast float %1828, %1855
  %1857 = fadd fast float %1856, %1144
  br label %1903

; <label>:1858                                    ; preds = %1825
  %1859 = icmp eq i32 %1823, 1
  br i1 %1859, label %1860, label %1873

; <label>:1860                                    ; preds = %1858
  %1861 = fadd fast float %1662, -1.000000e+00
  %1862 = fadd fast float %1663, -1.000000e+00
  %1863 = fadd fast float %1664, -1.000000e+00
  %1864 = fmul fast float %1828, %1861
  %1865 = fmul fast float %1828, %1862
  %1866 = fmul fast float %1828, %1863
  %1867 = fadd fast float %1864, 1.000000e+00
  %1868 = fadd fast float %1865, 1.000000e+00
  %1869 = fadd fast float %1866, 1.000000e+00
  %1870 = fmul fast float %1867, %1815
  %1871 = fmul fast float %1868, %1816
  %1872 = fmul fast float %1869, %1817
  br label %1903

; <label>:1873                                    ; preds = %1858
  %1874 = icmp eq i32 %1823, 2
  br i1 %1874, label %1875, label %1903

; <label>:1875                                    ; preds = %1873
  %1876 = call float @dx.op.unary.f32(i32 24, float %1662)  ; Sqrt(value)
  %1877 = call float @dx.op.unary.f32(i32 24, float %1663)  ; Sqrt(value)
  %1878 = call float @dx.op.unary.f32(i32 24, float %1664)  ; Sqrt(value)
  %1879 = fadd fast float %1876, -5.000000e-01
  %1880 = fadd fast float %1877, -5.000000e-01
  %1881 = fadd fast float %1878, -5.000000e-01
  %1882 = fmul fast float %1879, %1828
  %1883 = fmul fast float %1880, %1828
  %1884 = fmul fast float %1881, %1828
  %1885 = fadd fast float %1882, 5.000000e-01
  %1886 = fadd fast float %1883, 5.000000e-01
  %1887 = fadd fast float %1884, 5.000000e-01
  %1888 = fmul fast float %1885, 2.000000e+00
  %1889 = fsub fast float 1.000000e+00, %1888
  %1890 = fmul fast float %1889, %1815
  %1891 = fadd fast float %1890, %1888
  %1892 = fmul fast float %1891, %1815
  %1893 = fmul fast float %1886, 2.000000e+00
  %1894 = fsub fast float 1.000000e+00, %1893
  %1895 = fmul fast float %1894, %1816
  %1896 = fadd fast float %1895, %1893
  %1897 = fmul fast float %1896, %1816
  %1898 = fmul fast float %1887, 2.000000e+00
  %1899 = fsub fast float 1.000000e+00, %1898
  %1900 = fmul fast float %1899, %1817
  %1901 = fadd fast float %1900, %1898
  %1902 = fmul fast float %1901, %1817
  br label %1903

; <label>:1903                                    ; preds = %1875, %1873, %1860, %1830, %1814
  %1904 = phi float [ %1815, %1814 ], [ %1892, %1875 ], [ %1815, %1873 ], [ %1870, %1860 ], [ %1840, %1830 ]
  %1905 = phi float [ %1816, %1814 ], [ %1897, %1875 ], [ %1816, %1873 ], [ %1871, %1860 ], [ %1841, %1830 ]
  %1906 = phi float [ %1817, %1814 ], [ %1902, %1875 ], [ %1817, %1873 ], [ %1872, %1860 ], [ %1842, %1830 ]
  %1907 = phi float [ %1818, %1814 ], [ %1818, %1875 ], [ %1818, %1873 ], [ %1818, %1860 ], [ %1852, %1830 ]
  %1908 = phi float [ %1819, %1814 ], [ %1819, %1875 ], [ %1819, %1873 ], [ %1819, %1860 ], [ %1853, %1830 ]
  %1909 = phi float [ %1820, %1814 ], [ %1820, %1875 ], [ %1820, %1873 ], [ %1820, %1860 ], [ %1854, %1830 ]
  %1910 = phi float [ %1140, %1814 ], [ %1140, %1875 ], [ %1140, %1873 ], [ %1140, %1860 ], [ %1845, %1830 ]
  %1911 = phi float [ %1144, %1814 ], [ %1144, %1875 ], [ %1144, %1873 ], [ %1144, %1860 ], [ %1857, %1830 ]
  %1912 = and i32 %1822, 12
  %1913 = icmp eq i32 %1912, 12
  br i1 %1913, label %1986, label %1914

; <label>:1914                                    ; preds = %1903
  %1915 = and i32 %1822, 2097184
  %1916 = icmp eq i32 %1915, 2097184
  %1917 = select i1 %1916, float %1442, float 0.000000e+00
  %1918 = and i32 %1822, 4194336
  %1919 = icmp eq i32 %1918, 4194336
  %1920 = select i1 %1919, float %1442, float 0.000000e+00
  %1921 = and i32 %1822, 8388640
  %1922 = icmp eq i32 %1921, 8388640
  %1923 = select i1 %1922, float %1442, float 0.000000e+00
  %1924 = icmp eq i32 %1912, 0
  br i1 %1924, label %1925, label %1938

; <label>:1925                                    ; preds = %1914
  %1926 = fsub fast float %1743, %1132
  %1927 = fsub fast float %1744, %1133
  %1928 = fmul fast float %1917, %1926
  %1929 = fmul fast float %1917, %1927
  %1930 = fadd fast float %1928, %1132
  %1931 = fadd fast float %1929, %1133
  %1932 = fsub fast float %1745, %1143
  %1933 = fmul fast float %1920, %1932
  %1934 = fadd fast float %1933, %1143
  %1935 = fsub fast float %1742, %1142
  %1936 = fmul fast float %1923, %1935
  %1937 = fadd fast float %1936, %1142
  br label %1986

; <label>:1938                                    ; preds = %1914
  %1939 = icmp eq i32 %1912, 4
  br i1 %1939, label %1940, label %1972

; <label>:1940                                    ; preds = %1938
  %1941 = fmul fast float %1917, %1743
  %1942 = fmul fast float %1917, %1744
  %1943 = fadd fast float %1941, %1132
  %1944 = fadd fast float %1942, %1133
  %1945 = call float @dx.op.binary.f32(i32 36, float %1143, float %1745)  ; FMin(a,b)
  %1946 = fsub fast float %1945, %1143
  %1947 = fmul fast float %1946, %1920
  %1948 = fadd fast float %1947, %1143
  %1949 = fadd fast float %1742, %1142
  %1950 = fmul fast float %1949, 0x3FF337FAE0000000
  %1951 = fmul fast float %1142, %1142
  %1952 = fmul fast float %1742, %1742
  %1953 = fadd fast float %1952, %1951
  %1954 = fmul fast float %1953, 0x3FE5152B00000000
  %1955 = fmul fast float %1142, 0xBFCC1F85E0000000
  %1956 = fmul fast float %1955, %1742
  %1957 = fadd fast float %1956, 0xBFE1363700000000
  %1958 = fadd fast float %1957, %1950
  %1959 = fsub fast float %1958, %1954
  %1960 = fmul fast float %1949, 0x3FBA6F0D00000000
  %1961 = fmul fast float %1953, 0x3FD0432880000000
  %1962 = fmul fast float %1142, 0xBFEF110800000000
  %1963 = fmul fast float %1962, %1742
  %1964 = fadd fast float %1963, 1.000000e+00
  %1965 = fsub fast float %1964, %1960
  %1966 = fadd fast float %1965, %1961
  %1967 = fdiv fast float %1959, %1966
  %1968 = call float @dx.op.unary.f32(i32 7, float %1967)  ; Saturate(value)
  %1969 = fsub fast float %1968, %1142
  %1970 = fmul fast float %1969, %1923
  %1971 = fadd fast float %1970, %1142
  br label %1986

; <label>:1972                                    ; preds = %1938
  %1973 = icmp eq i32 %1912, 8
  br i1 %1973, label %1974, label %1986

; <label>:1974                                    ; preds = %1972
  %1975 = fmul fast float %1917, %1743
  %1976 = fmul fast float %1917, %1744
  %1977 = fadd fast float %1975, %1132
  %1978 = fadd fast float %1976, %1133
  %1979 = call float @dx.op.binary.f32(i32 36, float %1143, float %1745)  ; FMin(a,b)
  %1980 = fsub fast float %1979, %1143
  %1981 = fmul fast float %1980, %1920
  %1982 = fadd fast float %1981, %1143
  %1983 = fsub fast float %1742, %1142
  %1984 = fmul fast float %1923, %1983
  %1985 = fadd fast float %1984, %1142
  br label %1986

; <label>:1986                                    ; preds = %1974, %1972, %1940, %1925, %1903, %1441, %1145, %1131
  %1987 = phi float [ %1132, %1903 ], [ %1132, %1441 ], [ %1132, %1131 ], [ %1977, %1974 ], [ %1132, %1972 ], [ %1943, %1940 ], [ %1930, %1925 ], [ %1132, %1145 ]
  %1988 = phi float [ %1133, %1903 ], [ %1133, %1441 ], [ %1133, %1131 ], [ %1978, %1974 ], [ %1133, %1972 ], [ %1944, %1940 ], [ %1931, %1925 ], [ %1133, %1145 ]
  %1989 = phi float [ %1904, %1903 ], [ %1134, %1441 ], [ %1134, %1131 ], [ %1904, %1974 ], [ %1904, %1972 ], [ %1904, %1940 ], [ %1904, %1925 ], [ %1134, %1145 ]
  %1990 = phi float [ %1905, %1903 ], [ %1135, %1441 ], [ %1135, %1131 ], [ %1905, %1974 ], [ %1905, %1972 ], [ %1905, %1940 ], [ %1905, %1925 ], [ %1135, %1145 ]
  %1991 = phi float [ %1906, %1903 ], [ %1136, %1441 ], [ %1136, %1131 ], [ %1906, %1974 ], [ %1906, %1972 ], [ %1906, %1940 ], [ %1906, %1925 ], [ %1136, %1145 ]
  %1992 = phi float [ %1907, %1903 ], [ %1137, %1441 ], [ %1137, %1131 ], [ %1907, %1974 ], [ %1907, %1972 ], [ %1907, %1940 ], [ %1907, %1925 ], [ %1137, %1145 ]
  %1993 = phi float [ %1908, %1903 ], [ %1138, %1441 ], [ %1138, %1131 ], [ %1908, %1974 ], [ %1908, %1972 ], [ %1908, %1940 ], [ %1908, %1925 ], [ %1138, %1145 ]
  %1994 = phi float [ %1909, %1903 ], [ %1139, %1441 ], [ %1139, %1131 ], [ %1909, %1974 ], [ %1909, %1972 ], [ %1909, %1940 ], [ %1909, %1925 ], [ %1139, %1145 ]
  %1995 = phi float [ %1910, %1903 ], [ %1140, %1441 ], [ %1140, %1131 ], [ %1910, %1974 ], [ %1910, %1972 ], [ %1910, %1940 ], [ %1910, %1925 ], [ %1140, %1145 ]
  %1996 = phi float [ %1142, %1903 ], [ %1142, %1441 ], [ %1142, %1131 ], [ %1985, %1974 ], [ %1142, %1972 ], [ %1971, %1940 ], [ %1937, %1925 ], [ %1142, %1145 ]
  %1997 = phi float [ %1143, %1903 ], [ %1143, %1441 ], [ %1143, %1131 ], [ %1982, %1974 ], [ %1143, %1972 ], [ %1948, %1940 ], [ %1934, %1925 ], [ %1143, %1145 ]
  %1998 = phi float [ %1911, %1903 ], [ %1144, %1441 ], [ %1144, %1131 ], [ %1911, %1974 ], [ %1911, %1972 ], [ %1911, %1940 ], [ %1911, %1925 ], [ %1144, %1145 ]
  br i1 %417, label %2840, label %1999

; <label>:1999                                    ; preds = %1986
  %2000 = icmp ult i32 %473, 3
  %2001 = add i32 %62, 56
  %2002 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2001, i32 undef)  ; BufferLoad(srv,index,wot)
  %2003 = extractvalue %dx.types.ResRet.i32 %2002, 0
  %2004 = add i32 %62, 60
  %2005 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2004, i32 undef)  ; BufferLoad(srv,index,wot)
  %2006 = extractvalue %dx.types.ResRet.i32 %2005, 0
  %2007 = or i32 %2006, %2003
  %2008 = icmp eq i32 %2007, 0
  br i1 %2008, label %2840, label %2009

; <label>:2009                                    ; preds = %1999
  %2010 = and i32 %2003, 262144
  %2011 = icmp ne i32 %2010, 0
  %2012 = select i1 %2011, float %65, float 1.000000e+00
  %2013 = select i1 %2011, float %66, float 0.000000e+00
  %2014 = select i1 %2011, float %67, float 0.000000e+00
  %2015 = select i1 %2011, float %68, float 1.000000e+00
  %2016 = select i1 %2011, float %69, float %90
  %2017 = select i1 %2011, float %70, float %91
  %2018 = add i32 %62, 316
  %2019 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2018, i32 undef)  ; BufferLoad(srv,index,wot)
  %2020 = extractvalue %dx.types.ResRet.i32 %2019, 0
  %2021 = lshr i32 %2020, 16
  %2022 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2021)  ; LegacyF16ToF32(value)
  %2023 = fmul fast float %2022, 0x3F50624DE0000000
  %2024 = add i32 %62, 120
  %2025 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2024, i32 undef)  ; BufferLoad(srv,index,wot)
  %2026 = extractvalue %dx.types.ResRet.i32 %2025, 0
  %2027 = lshr i32 %2026, 16
  %2028 = and i32 %2027, 255
  %2029 = lshr i32 %2026, 24
  %2030 = add i32 %62, 324
  %2031 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2030, i32 undef)  ; BufferLoad(srv,index,wot)
  %2032 = extractvalue %dx.types.ResRet.i32 %2031, 0
  %2033 = and i32 %2032, 65535
  %2034 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2033)  ; LegacyF16ToF32(value)
  %2035 = lshr i32 %2032, 16
  %2036 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2035)  ; LegacyF16ToF32(value)
  %2037 = add i32 %62, 64
  %2038 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2037, i32 undef)  ; BufferLoad(srv,index,wot)
  %2039 = extractvalue %dx.types.ResRet.i32 %2038, 0
  %2040 = lshr i32 %2039, 22
  %2041 = shl nuw nsw i32 %2040, 5
  %2042 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2041)  ; LegacyF16ToF32(value)
  %2043 = shl i32 %2039, 4
  %2044 = and i32 %2043, 32752
  %2045 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2044)  ; LegacyF16ToF32(value)
  %2046 = lshr i32 %2039, 7
  %2047 = and i32 %2046, 32752
  %2048 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2047)  ; LegacyF16ToF32(value)
  %2049 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2050 = extractvalue %dx.types.CBufRet.f32 %2049, 3
  %2051 = fmul fast float %2050, 1.000000e+03
  %2052 = fmul fast float %367, %2051
  %2053 = call float @dx.op.unary.f32(i32 22, float %2052)  ; Frc(value)
  %2054 = fadd fast float %2053, %357
  %2055 = fmul fast float %368, %2051
  %2056 = call float @dx.op.unary.f32(i32 22, float %2055)  ; Frc(value)
  %2057 = fadd fast float %2056, %359
  %2058 = fmul fast float %2023, %2051
  %2059 = call float @dx.op.unary.f32(i32 22, float %2058)  ; Frc(value)
  %2060 = fmul fast float %2059, 0x401921FB60000000
  %2061 = fadd fast float %2060, %2042
  %2062 = call float @dx.op.unary.f32(i32 13, float %2061)  ; Sin(value)
  %2063 = call float @dx.op.unary.f32(i32 12, float %2061)  ; Cos(value)
  %2064 = fsub fast float -0.000000e+00, %2062
  %2065 = fadd fast float %2016, -5.000000e-01
  %2066 = fadd fast float %2017, -5.000000e-01
  %2067 = fmul fast float %2034, %2065
  %2068 = fmul fast float %2036, %2066
  %2069 = fadd fast float %2067, 5.000000e-01
  %2070 = fadd fast float %2068, 5.000000e-01
  %2071 = fmul fast float %2045, %2069
  %2072 = fmul fast float %2048, %2070
  %2073 = fmul fast float %2063, %2071
  %2074 = call float @dx.op.tertiary.f32(i32 46, float %2064, float %2072, float %2073)  ; FMad(a,b,c)
  %2075 = fmul fast float %2062, %2071
  %2076 = call float @dx.op.tertiary.f32(i32 46, float %2063, float %2072, float %2075)  ; FMad(a,b,c)
  %2077 = fadd fast float %2054, %2074
  %2078 = fadd fast float %2057, %2076
  %2079 = icmp ugt i32 %2028, 1
  %2080 = icmp ugt i32 %2026, 33554431
  %2081 = or i1 %2080, %2079
  br i1 %2081, label %2082, label %2107

; <label>:2082                                    ; preds = %2009
  %2083 = add i32 %62, 260
  %2084 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2083, i32 undef)  ; BufferLoad(srv,index,wot)
  %2085 = extractvalue %dx.types.ResRet.i32 %2084, 0
  %2086 = lshr i32 %2085, 16
  %2087 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2086)  ; LegacyF16ToF32(value)
  %2088 = fmul fast float %2050, %2087
  %2089 = call float @dx.op.unary.f32(i32 22, float %2088)  ; Frc(value)
  %2090 = mul nuw nsw i32 %2028, %2029
  %2091 = uitofp i32 %2090 to float
  %2092 = fmul fast float %2089, %2091
  %2093 = call float @dx.op.unary.f32(i32 27, float %2092)  ; Round_ni(value)
  %2094 = fptoui float %2093 to i32
  %2095 = urem i32 %2094, %2028
  %2096 = udiv i32 %2094, %2029
  %2097 = call float @dx.op.unary.f32(i32 22, float %2077)  ; Frc(value)
  %2098 = call float @dx.op.unary.f32(i32 22, float %2078)  ; Frc(value)
  %2099 = uitofp i32 %2095 to float
  %2100 = uitofp i32 %2096 to float
  %2101 = fadd fast float %2097, %2099
  %2102 = fadd fast float %2098, %2100
  %2103 = uitofp i32 %2028 to float
  %2104 = uitofp i32 %2029 to float
  %2105 = fdiv fast float %2101, %2103
  %2106 = fdiv fast float %2102, %2104
  br label %2107

; <label>:2107                                    ; preds = %2082, %2009
  %2108 = phi float [ %2105, %2082 ], [ %2077, %2009 ]
  %2109 = phi float [ %2106, %2082 ], [ %2078, %2009 ]
  %2110 = and i32 %2003, 16777216
  %2111 = icmp eq i32 %2110, 0
  br i1 %2111, label %2221, label %2112

; <label>:2112                                    ; preds = %2107
  %2113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2114 = extractvalue %dx.types.CBufRet.f32 %2113, 0
  %2115 = extractvalue %dx.types.CBufRet.f32 %2113, 1
  %2116 = extractvalue %dx.types.CBufRet.f32 %2113, 2
  %2117 = fadd fast float %2114, %170
  %2118 = fadd fast float %2115, %171
  %2119 = fadd fast float %2116, %172
  %2120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2121 = extractvalue %dx.types.CBufRet.f32 %2120, 0
  %2122 = call float @dx.op.unary.f32(i32 7, float %2121)  ; Saturate(value)
  %2123 = icmp eq i32 %63, 65535
  br i1 %2123, label %2218, label %2124

; <label>:2124                                    ; preds = %2112
  %2125 = lshr i32 %63, 1
  %2126 = shl i32 %2125, 2
  %2127 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2126, i32 undef)  ; BufferLoad(srv,index,wot)
  %2128 = extractvalue %dx.types.ResRet.i32 %2127, 0
  %2129 = and i32 %63, 1
  %2130 = icmp ne i32 %2129, 0
  %2131 = lshr i32 %2128, 16
  %2132 = and i32 %2128, 65535
  %2133 = select i1 %2130, i32 %2131, i32 %2132
  %2134 = icmp eq i32 %2133, 65535
  br i1 %2134, label %2214, label %2135

; <label>:2135                                    ; preds = %2124
  %2136 = mul nuw nsw i32 %2133, 40
  %2137 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %2136, i32 undef)  ; BufferLoad(srv,index,wot)
  %2138 = extractvalue %dx.types.ResRet.f32 %2137, 0
  %2139 = extractvalue %dx.types.ResRet.f32 %2137, 1
  %2140 = extractvalue %dx.types.ResRet.f32 %2137, 2
  %2141 = add nuw nsw i32 %2136, 12
  %2142 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %2141, i32 undef)  ; BufferLoad(srv,index,wot)
  %2143 = extractvalue %dx.types.ResRet.f32 %2142, 0
  %2144 = extractvalue %dx.types.ResRet.f32 %2142, 1
  %2145 = extractvalue %dx.types.ResRet.f32 %2142, 2
  %2146 = add nuw nsw i32 %2136, 24
  %2147 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %2146, i32 undef)  ; BufferLoad(srv,index,wot)
  %2148 = extractvalue %dx.types.ResRet.f32 %2147, 0
  %2149 = extractvalue %dx.types.ResRet.f32 %2147, 1
  %2150 = extractvalue %dx.types.ResRet.f32 %2147, 2
  %2151 = add nuw nsw i32 %2136, 36
  %2152 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %2151, i32 undef)  ; BufferLoad(srv,index,wot)
  %2153 = extractvalue %dx.types.ResRet.f32 %2152, 0
  %2154 = fsub fast float %2117, %2138
  %2155 = fsub fast float %2118, %2139
  %2156 = fsub fast float %2119, %2140
  %2157 = fmul fast float %2153, %2154
  %2158 = fmul fast float %2153, %2155
  %2159 = fmul fast float %2153, %2156
  %2160 = call float @dx.op.unary.f32(i32 27, float %2157)  ; Round_ni(value)
  %2161 = call float @dx.op.unary.f32(i32 27, float %2158)  ; Round_ni(value)
  %2162 = call float @dx.op.unary.f32(i32 27, float %2159)  ; Round_ni(value)
  %2163 = fadd fast float %2160, 5.000000e-01
  %2164 = fadd fast float %2161, 5.000000e-01
  %2165 = fadd fast float %2162, 5.000000e-01
  %2166 = fmul fast float %2163, %2143
  %2167 = fmul fast float %2164, %2144
  %2168 = fmul fast float %2165, %2145
  %2169 = shl i32 %63, 2
  %2170 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2169, i32 undef)  ; BufferLoad(srv,index,wot)
  %2171 = extractvalue %dx.types.ResRet.i32 %2170, 0
  %2172 = add i32 %2171, 0
  %2173 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2172, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2174 = call float @dx.op.unary.f32(i32 22, float %2166)  ; Frc(value)
  %2175 = call float @dx.op.unary.f32(i32 22, float %2167)  ; Frc(value)
  %2176 = call float @dx.op.unary.f32(i32 22, float %2168)  ; Frc(value)
  %2177 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2173, %dx.types.Handle %47, float %2174, float %2175, float %2176, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2178 = extractvalue %dx.types.ResRet.f32 %2177, 0
  %2179 = extractvalue %dx.types.ResRet.f32 %2177, 1
  %2180 = extractvalue %dx.types.ResRet.f32 %2177, 2
  %2181 = fmul fast float %2178, 1.023000e+03
  %2182 = fmul fast float %2179, 1.023000e+03
  %2183 = fmul fast float %2180, 1.023000e+03
  %2184 = fadd fast float %2181, 5.000000e-01
  %2185 = fadd fast float %2182, 5.000000e-01
  %2186 = fadd fast float %2183, 5.000000e-01
  %2187 = call float @dx.op.unary.f32(i32 27, float %2184)  ; Round_ni(value)
  %2188 = call float @dx.op.unary.f32(i32 27, float %2185)  ; Round_ni(value)
  %2189 = call float @dx.op.unary.f32(i32 27, float %2186)  ; Round_ni(value)
  %2190 = fsub fast float %2157, %2160
  %2191 = fsub fast float %2158, %2161
  %2192 = fsub fast float %2159, %2162
  %2193 = fmul fast float %2190, 7.500000e-01
  %2194 = fmul fast float %2191, 7.500000e-01
  %2195 = fmul fast float %2192, 7.500000e-01
  %2196 = fadd fast float %2160, 1.250000e-01
  %2197 = fadd fast float %2196, %2193
  %2198 = fadd fast float %2197, %2187
  %2199 = fadd fast float %2161, 1.250000e-01
  %2200 = fadd fast float %2199, %2194
  %2201 = fadd fast float %2200, %2188
  %2202 = fadd fast float %2162, 1.250000e-01
  %2203 = fadd fast float %2202, %2195
  %2204 = fadd fast float %2203, %2189
  %2205 = fmul fast float %2198, %2148
  %2206 = fmul fast float %2201, %2149
  %2207 = fmul fast float %2204, %2150
  %2208 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2169, i32 undef)  ; BufferLoad(srv,index,wot)
  %2209 = extractvalue %dx.types.ResRet.i32 %2208, 0
  %2210 = add i32 %2209, 0
  %2211 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2210, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2212 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2211, %dx.types.Handle %45, float %2205, float %2206, float %2207, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2213 = extractvalue %dx.types.ResRet.f32 %2212, 0
  br label %2214

; <label>:2214                                    ; preds = %2135, %2124
  %2215 = phi float [ %2213, %2135 ], [ -1.000000e+00, %2124 ]
  %2216 = fadd fast float %2215, %2122
  %2217 = call float @dx.op.unary.f32(i32 7, float %2216)  ; Saturate(value)
  br label %2218

; <label>:2218                                    ; preds = %2214, %2112
  %2219 = phi float [ %2217, %2214 ], [ %2122, %2112 ]
  %2220 = fmul fast float %2219, %469
  br label %2221

; <label>:2221                                    ; preds = %2218, %2107
  %2222 = phi float [ %2220, %2218 ], [ %469, %2107 ]
  %2223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2001, i32 undef)  ; BufferLoad(srv,index,wot)
  %2224 = extractvalue %dx.types.ResRet.i32 %2223, 0
  %2225 = and i32 %2224, 256
  %2226 = icmp eq i32 %2225, 0
  br i1 %2226, label %2273, label %2227

; <label>:2227                                    ; preds = %2221
  %2228 = add i32 %62, 432
  %2229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2228, i32 undef)  ; BufferLoad(srv,index,wot)
  %2230 = extractvalue %dx.types.ResRet.i32 %2229, 0
  %2231 = add i32 %2230, 0
  %2232 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2231, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2233 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2232, %dx.types.Handle %108, float %2108, float %2109, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2234 = extractvalue %dx.types.ResRet.f32 %2233, 0
  %2235 = add i32 %62, 132
  %2236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2235, i32 undef)  ; BufferLoad(srv,index,wot)
  %2237 = extractvalue %dx.types.ResRet.i32 %2236, 0
  %2238 = shl i32 %2237, 4
  %2239 = and i32 %2238, 32752
  %2240 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2239)  ; LegacyF16ToF32(value)
  %2241 = lshr i32 %2237, 7
  %2242 = and i32 %2241, 32752
  %2243 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2242)  ; LegacyF16ToF32(value)
  %2244 = fsub fast float 1.000000e+00, %2222
  %2245 = call float @dx.op.binary.f32(i32 35, float %2244, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2246 = bitcast float %2222 to i32
  %2247 = sitofp i32 %2246 to float
  %2248 = fadd fast float %2247, 0xC1CFBF8940000000
  %2249 = fmul fast float %2243, %2248
  %2250 = fadd fast float %2249, 0x41CFBF8940000000
  %2251 = fptosi float %2250 to i32
  %2252 = bitcast i32 %2251 to float
  %2253 = bitcast float %2245 to i32
  %2254 = sitofp i32 %2253 to float
  %2255 = fadd fast float %2254, 0xC1CFBF8940000000
  %2256 = fmul fast float %2255, %2243
  %2257 = fadd fast float %2256, 0x41CFBF8940000000
  %2258 = fptosi float %2257 to i32
  %2259 = bitcast i32 %2258 to float
  %2260 = fmul fast float %2252, %2240
  %2261 = fmul fast float %2259, %2240
  %2262 = fsub fast float %2245, %2260
  %2263 = fadd fast float %2261, %2245
  %2264 = call float @dx.op.unary.f32(i32 7, float %2262)  ; Saturate(value)
  %2265 = call float @dx.op.unary.f32(i32 7, float %2263)  ; Saturate(value)
  %2266 = fsub fast float %2234, %2264
  %2267 = fsub fast float %2265, %2264
  %2268 = bitcast float %2267 to i32
  %2269 = sub nsw i32 2129859010, %2268
  %2270 = bitcast i32 %2269 to float
  %2271 = fmul fast float %2270, %2266
  %2272 = call float @dx.op.unary.f32(i32 7, float %2271)  ; Saturate(value)
  br label %2273

; <label>:2273                                    ; preds = %2227, %2221
  %2274 = phi float [ %2272, %2227 ], [ %2222, %2221 ]
  %2275 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2001, i32 undef)  ; BufferLoad(srv,index,wot)
  %2276 = extractvalue %dx.types.ResRet.i32 %2275, 0
  %2277 = and i32 %2276, 128
  %2278 = icmp eq i32 %2277, 0
  br i1 %2278, label %2295, label %2279

; <label>:2279                                    ; preds = %2273
  %2280 = add i32 %62, 416
  %2281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2280, i32 undef)  ; BufferLoad(srv,index,wot)
  %2282 = extractvalue %dx.types.ResRet.i32 %2281, 0
  %2283 = add i32 %2282, 0
  %2284 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2283, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2285 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2284, %dx.types.Handle %108, float %2108, float %2109, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2286 = extractvalue %dx.types.ResRet.f32 %2285, 0
  %2287 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2001, i32 undef)  ; BufferLoad(srv,index,wot)
  %2288 = extractvalue %dx.types.ResRet.i32 %2287, 0
  %2289 = and i32 %2288, 524288
  %2290 = icmp ne i32 %2289, 0
  %2291 = fcmp fast ogt float %2286, 0x3FE0101020000000
  %2292 = select i1 %2291, float 1.000000e+00, float 0.000000e+00
  %2293 = select i1 %2290, float %2292, float %2286
  %2294 = fmul fast float %2293, %2274
  br label %2295

; <label>:2295                                    ; preds = %2279, %2273
  %2296 = phi float [ %2294, %2279 ], [ %2274, %2273 ]
  %2297 = fcmp fast ult float %2296, 0x3F70101020000000
  br i1 %2297, label %2840, label %2298

; <label>:2298                                    ; preds = %2295
  %2299 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2001, i32 undef)  ; BufferLoad(srv,index,wot)
  %2300 = extractvalue %dx.types.ResRet.i32 %2299, 0
  %2301 = and i32 %2300, 16
  %2302 = icmp eq i32 %2301, 0
  br i1 %2302, label %2501, label %2303

; <label>:2303                                    ; preds = %2298
  %2304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2024, i32 undef)  ; BufferLoad(srv,index,wot)
  %2305 = extractvalue %dx.types.ResRet.i32 %2304, 0
  %2306 = add i32 %62, 368
  %2307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2306, i32 undef)  ; BufferLoad(srv,index,wot)
  %2308 = extractvalue %dx.types.ResRet.i32 %2307, 0
  %2309 = add i32 %2308, 0
  %2310 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2309, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2311 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2310, %dx.types.Handle %107, float %2108, float %2109, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2312 = extractvalue %dx.types.ResRet.f32 %2311, 0
  %2313 = extractvalue %dx.types.ResRet.f32 %2311, 1
  %2314 = extractvalue %dx.types.ResRet.f32 %2311, 2
  %2315 = extractvalue %dx.types.ResRet.f32 %2311, 3
  %2316 = and i32 %2305, 255
  %2317 = uitofp i32 %2316 to float
  %2318 = lshr i32 %2305, 8
  %2319 = and i32 %2318, 255
  %2320 = uitofp i32 %2319 to float
  %2321 = fmul fast float %2315, %2317
  %2322 = fadd fast float %2321, %2320
  %2323 = fmul fast float %2322, 0x3F70101000000000
  %2324 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2001, i32 undef)  ; BufferLoad(srv,index,wot)
  %2325 = extractvalue %dx.types.ResRet.i32 %2324, 0
  %2326 = and i32 %2325, 512
  %2327 = icmp eq i32 %2326, 0
  br i1 %2327, label %2336, label %2328

; <label>:2328                                    ; preds = %2303
  %2329 = add i32 %62, 448
  %2330 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2329, i32 undef)  ; BufferLoad(srv,index,wot)
  %2331 = extractvalue %dx.types.ResRet.i32 %2330, 0
  %2332 = add i32 %2331, 0
  %2333 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2332, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2334 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2333, %dx.types.Handle %108, float %2108, float %2109, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2335 = extractvalue %dx.types.ResRet.f32 %2334, 0
  br label %2336

; <label>:2336                                    ; preds = %2328, %2303
  %2337 = phi float [ %2335, %2328 ], [ 1.000000e+00, %2303 ]
  %2338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2001, i32 undef)  ; BufferLoad(srv,index,wot)
  %2339 = extractvalue %dx.types.ResRet.i32 %2338, 0
  %2340 = and i32 %2339, 33554432
  %2341 = icmp eq i32 %2340, 0
  br i1 %2341, label %2448, label %2342

; <label>:2342                                    ; preds = %2336
  %2343 = add i32 %62, 256
  %2344 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2343, i32 undef)  ; BufferLoad(srv,index,wot)
  %2345 = extractvalue %dx.types.ResRet.i32 %2344, 0
  %2346 = and i32 %2345, 65535
  %2347 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2346)  ; LegacyF16ToF32(value)
  %2348 = lshr i32 %2345, 16
  %2349 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2348)  ; LegacyF16ToF32(value)
  %2350 = add i32 %62, 260
  %2351 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2350, i32 undef)  ; BufferLoad(srv,index,wot)
  %2352 = extractvalue %dx.types.ResRet.i32 %2351, 0
  %2353 = and i32 %2352, 65535
  %2354 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2353)  ; LegacyF16ToF32(value)
  %2355 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %339, i32 undef)  ; BufferLoad(srv,index,wot)
  %2356 = extractvalue %dx.types.ResRet.i32 %2355, 0
  %2357 = lshr i32 %2356, 24
  %2358 = uitofp i32 %2357 to float
  %2359 = fmul fast float %2358, 0x3F70101020000000
  %2360 = and i32 %2356, 255
  %2361 = uitofp i32 %2360 to float
  %2362 = fmul fast float %2361, 0x3F70101020000000
  %2363 = lshr i32 %2356, 8
  %2364 = and i32 %2363, 255
  %2365 = uitofp i32 %2364 to float
  %2366 = fmul fast float %2365, 0x3F70101020000000
  %2367 = lshr i32 %2356, 16
  %2368 = and i32 %2367, 255
  %2369 = uitofp i32 %2368 to float
  %2370 = fmul fast float %2369, 0x3F70101020000000
  %2371 = add i32 %62, 252
  %2372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2371, i32 undef)  ; BufferLoad(srv,index,wot)
  %2373 = extractvalue %dx.types.ResRet.i32 %2372, 0
  %2374 = lshr i32 %2373, 24
  %2375 = uitofp i32 %2374 to float
  %2376 = fmul fast float %2375, 0x3F70101020000000
  %2377 = and i32 %2373, 255
  %2378 = uitofp i32 %2377 to float
  %2379 = fmul fast float %2378, 0x3F70101020000000
  %2380 = lshr i32 %2373, 8
  %2381 = and i32 %2380, 255
  %2382 = uitofp i32 %2381 to float
  %2383 = fmul fast float %2382, 0x3F70101020000000
  %2384 = lshr i32 %2373, 16
  %2385 = and i32 %2384, 255
  %2386 = uitofp i32 %2385 to float
  %2387 = fmul fast float %2386, 0x3F70101020000000
  %2388 = bitcast float %2312 to i32
  %2389 = ashr i32 %2388, 1
  %2390 = sub nsw i32 1597463174, %2389
  %2391 = bitcast i32 %2390 to float
  %2392 = fmul fast float %2312, 5.000000e-01
  %2393 = fmul fast float %2391, %2391
  %2394 = fmul fast float %2393, %2392
  %2395 = fsub fast float 1.500000e+00, %2394
  %2396 = fmul fast float %2391, %2312
  %2397 = fmul fast float %2396, %2395
  %2398 = bitcast float %2313 to i32
  %2399 = ashr i32 %2398, 1
  %2400 = sub nsw i32 1597463174, %2399
  %2401 = bitcast i32 %2400 to float
  %2402 = fmul fast float %2313, 5.000000e-01
  %2403 = fmul fast float %2401, %2401
  %2404 = fmul fast float %2403, %2402
  %2405 = fsub fast float 1.500000e+00, %2404
  %2406 = fmul fast float %2401, %2313
  %2407 = fmul fast float %2406, %2405
  %2408 = bitcast float %2314 to i32
  %2409 = ashr i32 %2408, 1
  %2410 = sub nsw i32 1597463174, %2409
  %2411 = bitcast i32 %2410 to float
  %2412 = fmul fast float %2314, 5.000000e-01
  %2413 = fmul fast float %2411, %2411
  %2414 = fmul fast float %2413, %2412
  %2415 = fsub fast float 1.500000e+00, %2414
  %2416 = fmul fast float %2411, %2314
  %2417 = fmul fast float %2416, %2415
  %2418 = fsub fast float %2397, %2379
  %2419 = fsub fast float %2407, %2383
  %2420 = fsub fast float %2417, %2387
  %2421 = fmul fast float %2418, %2347
  %2422 = fmul fast float %2419, %2349
  %2423 = fmul fast float %2420, %2354
  %2424 = fadd fast float %2421, %2362
  %2425 = fadd fast float %2422, %2366
  %2426 = fadd fast float %2423, %2370
  %2427 = call float @dx.op.unary.f32(i32 7, float %2424)  ; Saturate(value)
  %2428 = call float @dx.op.unary.f32(i32 7, float %2425)  ; Saturate(value)
  %2429 = call float @dx.op.unary.f32(i32 7, float %2426)  ; Saturate(value)
  %2430 = fmul fast float %2427, %2427
  %2431 = fmul fast float %2428, %2428
  %2432 = fmul fast float %2429, %2429
  %2433 = fsub fast float %2430, %2312
  %2434 = fsub fast float %2431, %2313
  %2435 = fsub fast float %2432, %2314
  %2436 = fmul fast float %2433, %2337
  %2437 = fmul fast float %2434, %2337
  %2438 = fmul fast float %2435, %2337
  %2439 = fadd fast float %2436, %2312
  %2440 = fadd fast float %2437, %2313
  %2441 = fadd fast float %2438, %2314
  %2442 = fadd fast float %2359, %2323
  %2443 = fsub fast float %2442, %2376
  %2444 = call float @dx.op.unary.f32(i32 7, float %2443)  ; Saturate(value)
  %2445 = fsub fast float %2444, %2323
  %2446 = fmul fast float %2445, %2337
  %2447 = fadd fast float %2446, %2323
  br label %2501

; <label>:2448                                    ; preds = %2336
  %2449 = and i32 %2339, 134217728
  %2450 = icmp eq i32 %2449, 0
  br i1 %2450, label %2485, label %2451

; <label>:2451                                    ; preds = %2448
  %2452 = call float @dx.op.unary.f32(i32 24, float %344)  ; Sqrt(value)
  %2453 = call float @dx.op.unary.f32(i32 24, float %348)  ; Sqrt(value)
  %2454 = call float @dx.op.unary.f32(i32 24, float %352)  ; Sqrt(value)
  %2455 = fadd fast float %2452, -5.000000e-01
  %2456 = fadd fast float %2453, -5.000000e-01
  %2457 = fadd fast float %2454, -5.000000e-01
  %2458 = fmul fast float %2455, %2337
  %2459 = fmul fast float %2456, %2337
  %2460 = fmul fast float %2457, %2337
  %2461 = fadd fast float %2458, 5.000000e-01
  %2462 = fadd fast float %2459, 5.000000e-01
  %2463 = fadd fast float %2460, 5.000000e-01
  %2464 = call float @dx.op.unary.f32(i32 24, float %2312)  ; Sqrt(value)
  %2465 = call float @dx.op.unary.f32(i32 24, float %2313)  ; Sqrt(value)
  %2466 = call float @dx.op.unary.f32(i32 24, float %2314)  ; Sqrt(value)
  %2467 = fmul fast float %2461, 2.000000e+00
  %2468 = fsub fast float 1.000000e+00, %2467
  %2469 = fmul fast float %2468, %2464
  %2470 = fadd fast float %2469, %2467
  %2471 = fmul fast float %2470, %2464
  %2472 = fmul fast float %2462, 2.000000e+00
  %2473 = fsub fast float 1.000000e+00, %2472
  %2474 = fmul fast float %2473, %2465
  %2475 = fadd fast float %2474, %2472
  %2476 = fmul fast float %2475, %2465
  %2477 = fmul fast float %2463, 2.000000e+00
  %2478 = fsub fast float 1.000000e+00, %2477
  %2479 = fmul fast float %2478, %2466
  %2480 = fadd fast float %2479, %2477
  %2481 = fmul fast float %2480, %2466
  %2482 = fmul fast float %2471, %2471
  %2483 = fmul fast float %2476, %2476
  %2484 = fmul fast float %2481, %2481
  br label %2501

; <label>:2485                                    ; preds = %2448
  %2486 = fmul fast float %344, %344
  %2487 = fmul fast float %348, %348
  %2488 = fmul fast float %352, %352
  %2489 = fadd fast float %2486, -1.000000e+00
  %2490 = fadd fast float %2487, -1.000000e+00
  %2491 = fadd fast float %2488, -1.000000e+00
  %2492 = fmul fast float %2337, %2489
  %2493 = fmul fast float %2337, %2490
  %2494 = fmul fast float %2337, %2491
  %2495 = fadd fast float %2492, 1.000000e+00
  %2496 = fadd fast float %2493, 1.000000e+00
  %2497 = fadd fast float %2494, 1.000000e+00
  %2498 = fmul fast float %2495, %2312
  %2499 = fmul fast float %2496, %2313
  %2500 = fmul fast float %2497, %2314
  br label %2501

; <label>:2501                                    ; preds = %2485, %2451, %2342, %2298
  %2502 = phi float [ %2447, %2342 ], [ %2323, %2451 ], [ %2323, %2485 ], [ 0x3FA23C0BE0000000, %2298 ]
  %2503 = phi float [ %2439, %2342 ], [ %2482, %2451 ], [ %2498, %2485 ], [ 1.000000e+00, %2298 ]
  %2504 = phi float [ %2440, %2342 ], [ %2483, %2451 ], [ %2499, %2485 ], [ 1.000000e+00, %2298 ]
  %2505 = phi float [ %2441, %2342 ], [ %2484, %2451 ], [ %2500, %2485 ], [ 1.000000e+00, %2298 ]
  %2506 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2507 = extractvalue %dx.types.CBufRet.i32 %2506, 1
  %2508 = and i32 %2507, 1
  %2509 = icmp ne i32 %2508, 0
  %2510 = add i32 %62, 356
  %2511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2510, i32 undef)  ; BufferLoad(srv,index,wot)
  %2512 = extractvalue %dx.types.ResRet.i32 %2511, 0
  %2513 = and i32 %2512, 32
  %2514 = icmp ne i32 %2513, 0
  %2515 = and i1 %2509, %2514
  %2516 = select i1 %2515, float 1.000000e+00, float %2503
  %2517 = select i1 %2515, float 0x3FD3333340000000, float %2504
  %2518 = select i1 %2515, float 0x3FD3333340000000, float %2505
  %2519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2001, i32 undef)  ; BufferLoad(srv,index,wot)
  %2520 = extractvalue %dx.types.ResRet.i32 %2519, 0
  %2521 = and i32 %2520, 32
  %2522 = icmp eq i32 %2521, 0
  br i1 %2522, label %2595, label %2523

; <label>:2523                                    ; preds = %2501
  %2524 = add i32 %62, 124
  %2525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2524, i32 undef)  ; BufferLoad(srv,index,wot)
  %2526 = extractvalue %dx.types.ResRet.i32 %2525, 0
  %2527 = add i32 %62, 384
  %2528 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2527, i32 undef)  ; BufferLoad(srv,index,wot)
  %2529 = extractvalue %dx.types.ResRet.i32 %2528, 0
  %2530 = add i32 %2529, 0
  %2531 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2530, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2532 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2531, %dx.types.Handle %107, float %2108, float %2109, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2533 = extractvalue %dx.types.ResRet.f32 %2532, 0
  %2534 = extractvalue %dx.types.ResRet.f32 %2532, 1
  %2535 = extractvalue %dx.types.ResRet.f32 %2532, 2
  %2536 = extractvalue %dx.types.ResRet.f32 %2532, 3
  %2537 = and i32 %2526, 255
  %2538 = uitofp i32 %2537 to float
  %2539 = lshr i32 %2526, 8
  %2540 = and i32 %2539, 255
  %2541 = uitofp i32 %2540 to float
  %2542 = lshr i32 %2526, 16
  %2543 = and i32 %2542, 255
  %2544 = uitofp i32 %2543 to float
  %2545 = fmul fast float %2544, 0x3F70101000000000
  %2546 = fmul fast float %2533, %2538
  %2547 = fadd fast float %2546, %2541
  %2548 = fmul fast float %2547, 0x3F70101000000000
  %2549 = fadd fast float %2534, -5.000000e-01
  %2550 = fadd fast float %2536, -5.000000e-01
  %2551 = fmul fast float %2549, %2545
  %2552 = fmul fast float %2550, %2545
  %2553 = fadd fast float %2551, 5.000000e-01
  %2554 = fadd fast float %2552, 5.000000e-01
  %2555 = fmul fast float %2553, 2.000000e+00
  %2556 = fadd fast float %2555, -1.000000e+00
  %2557 = fmul fast float %2554, 2.000000e+00
  %2558 = fadd fast float %2557, -1.000000e+00
  %2559 = fadd fast float %2556, %2558
  %2560 = fmul fast float %2559, 5.000000e-01
  %2561 = fsub fast float %2556, %2558
  %2562 = fmul fast float %2561, 5.000000e-01
  %2563 = call float @dx.op.unary.f32(i32 6, float %2560)  ; FAbs(value)
  %2564 = fsub fast float 1.000000e+00, %2563
  %2565 = call float @dx.op.unary.f32(i32 6, float %2562)  ; FAbs(value)
  %2566 = fsub fast float %2564, %2565
  %2567 = call float @dx.op.dot3.f32(i32 55, float %2560, float %2562, float %2566, float %2560, float %2562, float %2566)  ; Dot3(ax,ay,az,bx,by,bz)
  %2568 = call float @dx.op.unary.f32(i32 25, float %2567)  ; Rsqrt(value)
  %2569 = fmul fast float %2560, %2568
  %2570 = fmul fast float %2562, %2568
  %2571 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2001, i32 undef)  ; BufferLoad(srv,index,wot)
  %2572 = extractvalue %dx.types.ResRet.i32 %2571, 0
  %2573 = and i32 %2572, 67108864
  %2574 = icmp eq i32 %2573, 0
  br i1 %2574, label %2591, label %2575

; <label>:2575                                    ; preds = %2523
  %2576 = add i32 %62, 312
  %2577 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2576, i32 undef)  ; BufferLoad(srv,index,wot)
  %2578 = extractvalue %dx.types.ResRet.i32 %2577, 0
  %2579 = and i32 %2578, 65535
  %2580 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2579)  ; LegacyF16ToF32(value)
  %2581 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2018, i32 undef)  ; BufferLoad(srv,index,wot)
  %2582 = extractvalue %dx.types.ResRet.i32 %2581, 0
  %2583 = and i32 %2582, 65535
  %2584 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2583)  ; LegacyF16ToF32(value)
  %2585 = lshr i32 %2578, 16
  %2586 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2585)  ; LegacyF16ToF32(value)
  %2587 = fsub fast float %2548, %2586
  %2588 = fmul fast float %2587, %2580
  %2589 = fadd fast float %2588, %2584
  %2590 = call float @dx.op.unary.f32(i32 7, float %2589)  ; Saturate(value)
  br label %2591

; <label>:2591                                    ; preds = %2575, %2523
  %2592 = phi float [ %2590, %2575 ], [ %2548, %2523 ]
  %2593 = call float @dx.op.dot2.f32(i32 54, float %2569, float %2570, float %2012, float %2013)  ; Dot2(ax,ay,bx,by)
  %2594 = call float @dx.op.dot2.f32(i32 54, float %2569, float %2570, float %2014, float %2015)  ; Dot2(ax,ay,bx,by)
  br label %2595

; <label>:2595                                    ; preds = %2591, %2501
  %2596 = phi float [ %2592, %2591 ], [ 0x3FD6666660000000, %2501 ]
  %2597 = phi float [ %2593, %2591 ], [ 0.000000e+00, %2501 ]
  %2598 = phi float [ %2594, %2591 ], [ 0.000000e+00, %2501 ]
  %2599 = phi float [ %2535, %2591 ], [ 1.000000e+00, %2501 ]
  %2600 = add i32 %62, 192
  %2601 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2600, i32 undef)  ; BufferLoad(srv,index,wot)
  %2602 = extractvalue %dx.types.ResRet.i32 %2601, 0
  %2603 = lshr i32 %2602, 22
  %2604 = shl nuw nsw i32 %2603, 5
  %2605 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2604)  ; LegacyF16ToF32(value)
  %2606 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2001, i32 undef)  ; BufferLoad(srv,index,wot)
  %2607 = extractvalue %dx.types.ResRet.i32 %2606, 0
  %2608 = and i32 %2607, 64
  %2609 = icmp eq i32 %2608, 0
  br i1 %2609, label %2643, label %2610

; <label>:2610                                    ; preds = %2595
  %2611 = add i32 %62, 400
  %2612 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2611, i32 undef)  ; BufferLoad(srv,index,wot)
  %2613 = extractvalue %dx.types.ResRet.i32 %2612, 0
  %2614 = add i32 %2613, 0
  %2615 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2614, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2616 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2001, i32 undef)  ; BufferLoad(srv,index,wot)
  %2617 = extractvalue %dx.types.ResRet.i32 %2616, 0
  %2618 = and i32 %2617, 131072
  %2619 = icmp eq i32 %2618, 0
  %2620 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2615, %dx.types.Handle %107, float %2108, float %2109, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2621 = extractvalue %dx.types.ResRet.f32 %2620, 0
  %2622 = extractvalue %dx.types.ResRet.f32 %2620, 1
  %2623 = extractvalue %dx.types.ResRet.f32 %2620, 2
  %2624 = fmul fast float %2621, %332
  %2625 = fmul fast float %2622, %335
  %2626 = fmul fast float %2623, %338
  br i1 %2619, label %2633, label %2627

; <label>:2627                                    ; preds = %2610
  %2628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2629 = extractvalue %dx.types.CBufRet.f32 %2628, 0
  %2630 = fmul fast float %2629, %2624
  %2631 = fmul fast float %2629, %2625
  %2632 = fmul fast float %2629, %2626
  br label %2633

; <label>:2633                                    ; preds = %2627, %2610
  %2634 = phi float [ %2630, %2627 ], [ %2624, %2610 ]
  %2635 = phi float [ %2631, %2627 ], [ %2625, %2610 ]
  %2636 = phi float [ %2632, %2627 ], [ %2626, %2610 ]
  %2637 = fmul fast float %2634, %2605
  %2638 = select i1 %231, float %2637, float %2634
  %2639 = call float @dx.op.dot3.f32(i32 55, float %2638, float %2635, float %2636, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2640 = select i1 %231, float 0.000000e+00, float %2634
  %2641 = select i1 %231, float %2639, float %2635
  %2642 = select i1 %231, float 0.000000e+00, float %2636
  br label %2643

; <label>:2643                                    ; preds = %2633, %2595
  %2644 = phi float [ %2640, %2633 ], [ 0.000000e+00, %2595 ]
  %2645 = phi float [ %2641, %2633 ], [ 0.000000e+00, %2595 ]
  %2646 = phi float [ %2642, %2633 ], [ 0.000000e+00, %2595 ]
  %2647 = add i32 %62, 128
  %2648 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2647, i32 undef)  ; BufferLoad(srv,index,wot)
  %2649 = extractvalue %dx.types.ResRet.i32 %2648, 0
  %2650 = and i32 %2649, 255
  %2651 = uitofp i32 %2650 to float
  %2652 = lshr i32 %2649, 8
  %2653 = and i32 %2652, 255
  %2654 = uitofp i32 %2653 to float
  %2655 = call float @dx.op.dot3.f32(i32 55, float %2516, float %2517, float %2518, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2656 = fmul fast float %2654, %2655
  %2657 = fadd fast float %2656, %2651
  %2658 = fmul fast float %2657, 0x3F70101020000000
  %2659 = call float @dx.op.unary.f32(i32 7, float %2658)  ; Saturate(value)
  br i1 %2000, label %2660, label %2668

; <label>:2660                                    ; preds = %2643
  %2661 = fsub fast float 1.000000e+00, %2296
  %2662 = fmul fast float %2661, %1989
  %2663 = fmul fast float %2661, %1990
  %2664 = fmul fast float %2661, %1991
  %2665 = fmul fast float %2661, %1992
  %2666 = fmul fast float %2661, %1993
  %2667 = fmul fast float %2661, %1994
  br label %2668

; <label>:2668                                    ; preds = %2660, %2643
  %2669 = phi float [ %2662, %2660 ], [ %1989, %2643 ]
  %2670 = phi float [ %2663, %2660 ], [ %1990, %2643 ]
  %2671 = phi float [ %2664, %2660 ], [ %1991, %2643 ]
  %2672 = phi float [ %2665, %2660 ], [ %1992, %2643 ]
  %2673 = phi float [ %2666, %2660 ], [ %1993, %2643 ]
  %2674 = phi float [ %2667, %2660 ], [ %1994, %2643 ]
  %2675 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2001, i32 undef)  ; BufferLoad(srv,index,wot)
  %2676 = extractvalue %dx.types.ResRet.i32 %2675, 0
  %2677 = and i32 %2676, 3
  %2678 = icmp eq i32 %2677, 3
  br i1 %2678, label %2757, label %2679

; <label>:2679                                    ; preds = %2668
  %2680 = and i32 %2676, 16
  %2681 = icmp ne i32 %2680, 0
  %2682 = select i1 %2681, float %2296, float 0.000000e+00
  %2683 = icmp eq i32 %2677, 0
  br i1 %2683, label %2684, label %2712

; <label>:2684                                    ; preds = %2679
  %2685 = and i32 %2676, 64
  %2686 = icmp ne i32 %2685, 0
  %2687 = select i1 %2686, float %2296, float 0.000000e+00
  %2688 = fsub fast float %2516, %2669
  %2689 = fsub fast float %2517, %2670
  %2690 = fsub fast float %2518, %2671
  %2691 = fmul fast float %2682, %2688
  %2692 = fmul fast float %2682, %2689
  %2693 = fmul fast float %2682, %2690
  %2694 = fadd fast float %2691, %2669
  %2695 = fadd fast float %2692, %2670
  %2696 = fadd fast float %2693, %2671
  %2697 = fsub fast float %2502, %1995
  %2698 = fmul fast float %2682, %2697
  %2699 = fadd fast float %2698, %1995
  %2700 = fsub fast float %2644, %2672
  %2701 = fsub fast float %2645, %2673
  %2702 = fsub fast float %2646, %2674
  %2703 = fmul fast float %2687, %2700
  %2704 = fmul fast float %2687, %2701
  %2705 = fmul fast float %2687, %2702
  %2706 = fadd fast float %2703, %2672
  %2707 = fadd fast float %2704, %2673
  %2708 = fadd fast float %2705, %2674
  %2709 = fsub fast float %2659, %1998
  %2710 = fmul fast float %2682, %2709
  %2711 = fadd fast float %2710, %1998
  br label %2757

; <label>:2712                                    ; preds = %2679
  %2713 = icmp eq i32 %2677, 1
  br i1 %2713, label %2714, label %2727

; <label>:2714                                    ; preds = %2712
  %2715 = fadd fast float %2516, -1.000000e+00
  %2716 = fadd fast float %2517, -1.000000e+00
  %2717 = fadd fast float %2518, -1.000000e+00
  %2718 = fmul fast float %2682, %2715
  %2719 = fmul fast float %2682, %2716
  %2720 = fmul fast float %2682, %2717
  %2721 = fadd fast float %2718, 1.000000e+00
  %2722 = fadd fast float %2719, 1.000000e+00
  %2723 = fadd fast float %2720, 1.000000e+00
  %2724 = fmul fast float %2721, %2669
  %2725 = fmul fast float %2722, %2670
  %2726 = fmul fast float %2723, %2671
  br label %2757

; <label>:2727                                    ; preds = %2712
  %2728 = icmp eq i32 %2677, 2
  br i1 %2728, label %2729, label %2757

; <label>:2729                                    ; preds = %2727
  %2730 = call float @dx.op.unary.f32(i32 24, float %2516)  ; Sqrt(value)
  %2731 = call float @dx.op.unary.f32(i32 24, float %2517)  ; Sqrt(value)
  %2732 = call float @dx.op.unary.f32(i32 24, float %2518)  ; Sqrt(value)
  %2733 = fadd fast float %2730, -5.000000e-01
  %2734 = fadd fast float %2731, -5.000000e-01
  %2735 = fadd fast float %2732, -5.000000e-01
  %2736 = fmul fast float %2733, %2682
  %2737 = fmul fast float %2734, %2682
  %2738 = fmul fast float %2735, %2682
  %2739 = fadd fast float %2736, 5.000000e-01
  %2740 = fadd fast float %2737, 5.000000e-01
  %2741 = fadd fast float %2738, 5.000000e-01
  %2742 = fmul fast float %2739, 2.000000e+00
  %2743 = fsub fast float 1.000000e+00, %2742
  %2744 = fmul fast float %2743, %2669
  %2745 = fadd fast float %2744, %2742
  %2746 = fmul fast float %2745, %2669
  %2747 = fmul fast float %2740, 2.000000e+00
  %2748 = fsub fast float 1.000000e+00, %2747
  %2749 = fmul fast float %2748, %2670
  %2750 = fadd fast float %2749, %2747
  %2751 = fmul fast float %2750, %2670
  %2752 = fmul fast float %2741, 2.000000e+00
  %2753 = fsub fast float 1.000000e+00, %2752
  %2754 = fmul fast float %2753, %2671
  %2755 = fadd fast float %2754, %2752
  %2756 = fmul fast float %2755, %2671
  br label %2757

; <label>:2757                                    ; preds = %2729, %2727, %2714, %2684, %2668
  %2758 = phi float [ %2669, %2668 ], [ %2746, %2729 ], [ %2669, %2727 ], [ %2724, %2714 ], [ %2694, %2684 ]
  %2759 = phi float [ %2670, %2668 ], [ %2751, %2729 ], [ %2670, %2727 ], [ %2725, %2714 ], [ %2695, %2684 ]
  %2760 = phi float [ %2671, %2668 ], [ %2756, %2729 ], [ %2671, %2727 ], [ %2726, %2714 ], [ %2696, %2684 ]
  %2761 = phi float [ %2672, %2668 ], [ %2672, %2729 ], [ %2672, %2727 ], [ %2672, %2714 ], [ %2706, %2684 ]
  %2762 = phi float [ %2673, %2668 ], [ %2673, %2729 ], [ %2673, %2727 ], [ %2673, %2714 ], [ %2707, %2684 ]
  %2763 = phi float [ %2674, %2668 ], [ %2674, %2729 ], [ %2674, %2727 ], [ %2674, %2714 ], [ %2708, %2684 ]
  %2764 = phi float [ %1995, %2668 ], [ %1995, %2729 ], [ %1995, %2727 ], [ %1995, %2714 ], [ %2699, %2684 ]
  %2765 = phi float [ %1998, %2668 ], [ %1998, %2729 ], [ %1998, %2727 ], [ %1998, %2714 ], [ %2711, %2684 ]
  %2766 = and i32 %2676, 12
  %2767 = icmp eq i32 %2766, 12
  br i1 %2767, label %2840, label %2768

; <label>:2768                                    ; preds = %2757
  %2769 = and i32 %2676, 2097184
  %2770 = icmp eq i32 %2769, 2097184
  %2771 = select i1 %2770, float %2296, float 0.000000e+00
  %2772 = and i32 %2676, 4194336
  %2773 = icmp eq i32 %2772, 4194336
  %2774 = select i1 %2773, float %2296, float 0.000000e+00
  %2775 = and i32 %2676, 8388640
  %2776 = icmp eq i32 %2775, 8388640
  %2777 = select i1 %2776, float %2296, float 0.000000e+00
  %2778 = icmp eq i32 %2766, 0
  br i1 %2778, label %2779, label %2792

; <label>:2779                                    ; preds = %2768
  %2780 = fsub fast float %2597, %1987
  %2781 = fsub fast float %2598, %1988
  %2782 = fmul fast float %2771, %2780
  %2783 = fmul fast float %2771, %2781
  %2784 = fadd fast float %2782, %1987
  %2785 = fadd fast float %2783, %1988
  %2786 = fsub fast float %2599, %1997
  %2787 = fmul fast float %2774, %2786
  %2788 = fadd fast float %2787, %1997
  %2789 = fsub fast float %2596, %1996
  %2790 = fmul fast float %2777, %2789
  %2791 = fadd fast float %2790, %1996
  br label %2840

; <label>:2792                                    ; preds = %2768
  %2793 = icmp eq i32 %2766, 4
  br i1 %2793, label %2794, label %2826

; <label>:2794                                    ; preds = %2792
  %2795 = fmul fast float %2771, %2597
  %2796 = fmul fast float %2771, %2598
  %2797 = fadd fast float %2795, %1987
  %2798 = fadd fast float %2796, %1988
  %2799 = call float @dx.op.binary.f32(i32 36, float %1997, float %2599)  ; FMin(a,b)
  %2800 = fsub fast float %2799, %1997
  %2801 = fmul fast float %2800, %2774
  %2802 = fadd fast float %2801, %1997
  %2803 = fadd fast float %2596, %1996
  %2804 = fmul fast float %2803, 0x3FF337FAE0000000
  %2805 = fmul fast float %1996, %1996
  %2806 = fmul fast float %2596, %2596
  %2807 = fadd fast float %2806, %2805
  %2808 = fmul fast float %2807, 0x3FE5152B00000000
  %2809 = fmul fast float %1996, 0xBFCC1F85E0000000
  %2810 = fmul fast float %2809, %2596
  %2811 = fadd fast float %2810, 0xBFE1363700000000
  %2812 = fadd fast float %2811, %2804
  %2813 = fsub fast float %2812, %2808
  %2814 = fmul fast float %2803, 0x3FBA6F0D00000000
  %2815 = fmul fast float %2807, 0x3FD0432880000000
  %2816 = fmul fast float %1996, 0xBFEF110800000000
  %2817 = fmul fast float %2816, %2596
  %2818 = fadd fast float %2817, 1.000000e+00
  %2819 = fsub fast float %2818, %2814
  %2820 = fadd fast float %2819, %2815
  %2821 = fdiv fast float %2813, %2820
  %2822 = call float @dx.op.unary.f32(i32 7, float %2821)  ; Saturate(value)
  %2823 = fsub fast float %2822, %1996
  %2824 = fmul fast float %2823, %2777
  %2825 = fadd fast float %2824, %1996
  br label %2840

; <label>:2826                                    ; preds = %2792
  %2827 = icmp eq i32 %2766, 8
  br i1 %2827, label %2828, label %2840

; <label>:2828                                    ; preds = %2826
  %2829 = fmul fast float %2771, %2597
  %2830 = fmul fast float %2771, %2598
  %2831 = fadd fast float %2829, %1987
  %2832 = fadd fast float %2830, %1988
  %2833 = call float @dx.op.binary.f32(i32 36, float %1997, float %2599)  ; FMin(a,b)
  %2834 = fsub fast float %2833, %1997
  %2835 = fmul fast float %2834, %2774
  %2836 = fadd fast float %2835, %1997
  %2837 = fsub fast float %2596, %1996
  %2838 = fmul fast float %2777, %2837
  %2839 = fadd fast float %2838, %1996
  br label %2840

; <label>:2840                                    ; preds = %2828, %2826, %2794, %2779, %2757, %2295, %1999, %1986
  %2841 = phi float [ %1987, %2757 ], [ %1987, %2295 ], [ %1987, %1986 ], [ %2831, %2828 ], [ %1987, %2826 ], [ %2797, %2794 ], [ %2784, %2779 ], [ %1987, %1999 ]
  %2842 = phi float [ %1988, %2757 ], [ %1988, %2295 ], [ %1988, %1986 ], [ %2832, %2828 ], [ %1988, %2826 ], [ %2798, %2794 ], [ %2785, %2779 ], [ %1988, %1999 ]
  %2843 = phi float [ %2758, %2757 ], [ %1989, %2295 ], [ %1989, %1986 ], [ %2758, %2828 ], [ %2758, %2826 ], [ %2758, %2794 ], [ %2758, %2779 ], [ %1989, %1999 ]
  %2844 = phi float [ %2759, %2757 ], [ %1990, %2295 ], [ %1990, %1986 ], [ %2759, %2828 ], [ %2759, %2826 ], [ %2759, %2794 ], [ %2759, %2779 ], [ %1990, %1999 ]
  %2845 = phi float [ %2760, %2757 ], [ %1991, %2295 ], [ %1991, %1986 ], [ %2760, %2828 ], [ %2760, %2826 ], [ %2760, %2794 ], [ %2760, %2779 ], [ %1991, %1999 ]
  %2846 = phi float [ %2761, %2757 ], [ %1992, %2295 ], [ %1992, %1986 ], [ %2761, %2828 ], [ %2761, %2826 ], [ %2761, %2794 ], [ %2761, %2779 ], [ %1992, %1999 ]
  %2847 = phi float [ %2762, %2757 ], [ %1993, %2295 ], [ %1993, %1986 ], [ %2762, %2828 ], [ %2762, %2826 ], [ %2762, %2794 ], [ %2762, %2779 ], [ %1993, %1999 ]
  %2848 = phi float [ %2763, %2757 ], [ %1994, %2295 ], [ %1994, %1986 ], [ %2763, %2828 ], [ %2763, %2826 ], [ %2763, %2794 ], [ %2763, %2779 ], [ %1994, %1999 ]
  %2849 = phi float [ %2764, %2757 ], [ %1995, %2295 ], [ %1995, %1986 ], [ %2764, %2828 ], [ %2764, %2826 ], [ %2764, %2794 ], [ %2764, %2779 ], [ %1995, %1999 ]
  %2850 = phi float [ %1996, %2757 ], [ %1996, %2295 ], [ %1996, %1986 ], [ %2839, %2828 ], [ %1996, %2826 ], [ %2825, %2794 ], [ %2791, %2779 ], [ %1996, %1999 ]
  %2851 = phi float [ %1997, %2757 ], [ %1997, %2295 ], [ %1997, %1986 ], [ %2836, %2828 ], [ %1997, %2826 ], [ %2802, %2794 ], [ %2788, %2779 ], [ %1997, %1999 ]
  %2852 = phi float [ %2765, %2757 ], [ %1998, %2295 ], [ %1998, %1986 ], [ %2765, %2828 ], [ %2765, %2826 ], [ %2765, %2794 ], [ %2765, %2779 ], [ %1998, %1999 ]
  br i1 %419, label %3694, label %2853

; <label>:2853                                    ; preds = %2840
  %2854 = icmp ult i32 %473, 4
  %2855 = add i32 %62, 72
  %2856 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2855, i32 undef)  ; BufferLoad(srv,index,wot)
  %2857 = extractvalue %dx.types.ResRet.i32 %2856, 0
  %2858 = add i32 %62, 76
  %2859 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2858, i32 undef)  ; BufferLoad(srv,index,wot)
  %2860 = extractvalue %dx.types.ResRet.i32 %2859, 0
  %2861 = or i32 %2860, %2857
  %2862 = icmp eq i32 %2861, 0
  br i1 %2862, label %3694, label %2863

; <label>:2863                                    ; preds = %2853
  %2864 = and i32 %2857, 262144
  %2865 = icmp ne i32 %2864, 0
  %2866 = select i1 %2865, float %65, float 1.000000e+00
  %2867 = select i1 %2865, float %66, float 0.000000e+00
  %2868 = select i1 %2865, float %67, float 0.000000e+00
  %2869 = select i1 %2865, float %68, float 1.000000e+00
  %2870 = select i1 %2865, float %69, float %90
  %2871 = select i1 %2865, float %70, float %91
  %2872 = add i32 %62, 332
  %2873 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2872, i32 undef)  ; BufferLoad(srv,index,wot)
  %2874 = extractvalue %dx.types.ResRet.i32 %2873, 0
  %2875 = lshr i32 %2874, 16
  %2876 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2875)  ; LegacyF16ToF32(value)
  %2877 = fmul fast float %2876, 0x3F50624DE0000000
  %2878 = add i32 %62, 136
  %2879 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2878, i32 undef)  ; BufferLoad(srv,index,wot)
  %2880 = extractvalue %dx.types.ResRet.i32 %2879, 0
  %2881 = lshr i32 %2880, 16
  %2882 = and i32 %2881, 255
  %2883 = lshr i32 %2880, 24
  %2884 = add i32 %62, 340
  %2885 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2884, i32 undef)  ; BufferLoad(srv,index,wot)
  %2886 = extractvalue %dx.types.ResRet.i32 %2885, 0
  %2887 = and i32 %2886, 65535
  %2888 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2887)  ; LegacyF16ToF32(value)
  %2889 = lshr i32 %2886, 16
  %2890 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2889)  ; LegacyF16ToF32(value)
  %2891 = add i32 %62, 80
  %2892 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2891, i32 undef)  ; BufferLoad(srv,index,wot)
  %2893 = extractvalue %dx.types.ResRet.i32 %2892, 0
  %2894 = lshr i32 %2893, 22
  %2895 = shl nuw nsw i32 %2894, 5
  %2896 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2895)  ; LegacyF16ToF32(value)
  %2897 = shl i32 %2893, 4
  %2898 = and i32 %2897, 32752
  %2899 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2898)  ; LegacyF16ToF32(value)
  %2900 = lshr i32 %2893, 7
  %2901 = and i32 %2900, 32752
  %2902 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2901)  ; LegacyF16ToF32(value)
  %2903 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2904 = extractvalue %dx.types.CBufRet.f32 %2903, 3
  %2905 = fmul fast float %2904, 1.000000e+03
  %2906 = fmul fast float %409, %2905
  %2907 = call float @dx.op.unary.f32(i32 22, float %2906)  ; Frc(value)
  %2908 = fadd fast float %2907, %399
  %2909 = fmul fast float %410, %2905
  %2910 = call float @dx.op.unary.f32(i32 22, float %2909)  ; Frc(value)
  %2911 = fadd fast float %2910, %401
  %2912 = fmul fast float %2877, %2905
  %2913 = call float @dx.op.unary.f32(i32 22, float %2912)  ; Frc(value)
  %2914 = fmul fast float %2913, 0x401921FB60000000
  %2915 = fadd fast float %2914, %2896
  %2916 = call float @dx.op.unary.f32(i32 13, float %2915)  ; Sin(value)
  %2917 = call float @dx.op.unary.f32(i32 12, float %2915)  ; Cos(value)
  %2918 = fsub fast float -0.000000e+00, %2916
  %2919 = fadd fast float %2870, -5.000000e-01
  %2920 = fadd fast float %2871, -5.000000e-01
  %2921 = fmul fast float %2888, %2919
  %2922 = fmul fast float %2890, %2920
  %2923 = fadd fast float %2921, 5.000000e-01
  %2924 = fadd fast float %2922, 5.000000e-01
  %2925 = fmul fast float %2899, %2923
  %2926 = fmul fast float %2902, %2924
  %2927 = fmul fast float %2917, %2925
  %2928 = call float @dx.op.tertiary.f32(i32 46, float %2918, float %2926, float %2927)  ; FMad(a,b,c)
  %2929 = fmul fast float %2916, %2925
  %2930 = call float @dx.op.tertiary.f32(i32 46, float %2917, float %2926, float %2929)  ; FMad(a,b,c)
  %2931 = fadd fast float %2908, %2928
  %2932 = fadd fast float %2911, %2930
  %2933 = icmp ugt i32 %2882, 1
  %2934 = icmp ugt i32 %2880, 33554431
  %2935 = or i1 %2934, %2933
  br i1 %2935, label %2936, label %2961

; <label>:2936                                    ; preds = %2863
  %2937 = add i32 %62, 276
  %2938 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2937, i32 undef)  ; BufferLoad(srv,index,wot)
  %2939 = extractvalue %dx.types.ResRet.i32 %2938, 0
  %2940 = lshr i32 %2939, 16
  %2941 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2940)  ; LegacyF16ToF32(value)
  %2942 = fmul fast float %2904, %2941
  %2943 = call float @dx.op.unary.f32(i32 22, float %2942)  ; Frc(value)
  %2944 = mul nuw nsw i32 %2882, %2883
  %2945 = uitofp i32 %2944 to float
  %2946 = fmul fast float %2943, %2945
  %2947 = call float @dx.op.unary.f32(i32 27, float %2946)  ; Round_ni(value)
  %2948 = fptoui float %2947 to i32
  %2949 = urem i32 %2948, %2882
  %2950 = udiv i32 %2948, %2883
  %2951 = call float @dx.op.unary.f32(i32 22, float %2931)  ; Frc(value)
  %2952 = call float @dx.op.unary.f32(i32 22, float %2932)  ; Frc(value)
  %2953 = uitofp i32 %2949 to float
  %2954 = uitofp i32 %2950 to float
  %2955 = fadd fast float %2951, %2953
  %2956 = fadd fast float %2952, %2954
  %2957 = uitofp i32 %2882 to float
  %2958 = uitofp i32 %2883 to float
  %2959 = fdiv fast float %2955, %2957
  %2960 = fdiv fast float %2956, %2958
  br label %2961

; <label>:2961                                    ; preds = %2936, %2863
  %2962 = phi float [ %2959, %2936 ], [ %2931, %2863 ]
  %2963 = phi float [ %2960, %2936 ], [ %2932, %2863 ]
  %2964 = and i32 %2857, 16777216
  %2965 = icmp eq i32 %2964, 0
  br i1 %2965, label %3075, label %2966

; <label>:2966                                    ; preds = %2961
  %2967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2968 = extractvalue %dx.types.CBufRet.f32 %2967, 0
  %2969 = extractvalue %dx.types.CBufRet.f32 %2967, 1
  %2970 = extractvalue %dx.types.CBufRet.f32 %2967, 2
  %2971 = fadd fast float %2968, %170
  %2972 = fadd fast float %2969, %171
  %2973 = fadd fast float %2970, %172
  %2974 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2975 = extractvalue %dx.types.CBufRet.f32 %2974, 0
  %2976 = call float @dx.op.unary.f32(i32 7, float %2975)  ; Saturate(value)
  %2977 = icmp eq i32 %63, 65535
  br i1 %2977, label %3072, label %2978

; <label>:2978                                    ; preds = %2966
  %2979 = lshr i32 %63, 1
  %2980 = shl i32 %2979, 2
  %2981 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2980, i32 undef)  ; BufferLoad(srv,index,wot)
  %2982 = extractvalue %dx.types.ResRet.i32 %2981, 0
  %2983 = and i32 %63, 1
  %2984 = icmp ne i32 %2983, 0
  %2985 = lshr i32 %2982, 16
  %2986 = and i32 %2982, 65535
  %2987 = select i1 %2984, i32 %2985, i32 %2986
  %2988 = icmp eq i32 %2987, 65535
  br i1 %2988, label %3068, label %2989

; <label>:2989                                    ; preds = %2978
  %2990 = mul nuw nsw i32 %2987, 40
  %2991 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %2990, i32 undef)  ; BufferLoad(srv,index,wot)
  %2992 = extractvalue %dx.types.ResRet.f32 %2991, 0
  %2993 = extractvalue %dx.types.ResRet.f32 %2991, 1
  %2994 = extractvalue %dx.types.ResRet.f32 %2991, 2
  %2995 = add nuw nsw i32 %2990, 12
  %2996 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %2995, i32 undef)  ; BufferLoad(srv,index,wot)
  %2997 = extractvalue %dx.types.ResRet.f32 %2996, 0
  %2998 = extractvalue %dx.types.ResRet.f32 %2996, 1
  %2999 = extractvalue %dx.types.ResRet.f32 %2996, 2
  %3000 = add nuw nsw i32 %2990, 24
  %3001 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %3000, i32 undef)  ; BufferLoad(srv,index,wot)
  %3002 = extractvalue %dx.types.ResRet.f32 %3001, 0
  %3003 = extractvalue %dx.types.ResRet.f32 %3001, 1
  %3004 = extractvalue %dx.types.ResRet.f32 %3001, 2
  %3005 = add nuw nsw i32 %2990, 36
  %3006 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %3005, i32 undef)  ; BufferLoad(srv,index,wot)
  %3007 = extractvalue %dx.types.ResRet.f32 %3006, 0
  %3008 = fsub fast float %2971, %2992
  %3009 = fsub fast float %2972, %2993
  %3010 = fsub fast float %2973, %2994
  %3011 = fmul fast float %3007, %3008
  %3012 = fmul fast float %3007, %3009
  %3013 = fmul fast float %3007, %3010
  %3014 = call float @dx.op.unary.f32(i32 27, float %3011)  ; Round_ni(value)
  %3015 = call float @dx.op.unary.f32(i32 27, float %3012)  ; Round_ni(value)
  %3016 = call float @dx.op.unary.f32(i32 27, float %3013)  ; Round_ni(value)
  %3017 = fadd fast float %3014, 5.000000e-01
  %3018 = fadd fast float %3015, 5.000000e-01
  %3019 = fadd fast float %3016, 5.000000e-01
  %3020 = fmul fast float %3017, %2997
  %3021 = fmul fast float %3018, %2998
  %3022 = fmul fast float %3019, %2999
  %3023 = shl i32 %63, 2
  %3024 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3023, i32 undef)  ; BufferLoad(srv,index,wot)
  %3025 = extractvalue %dx.types.ResRet.i32 %3024, 0
  %3026 = add i32 %3025, 0
  %3027 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3026, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3028 = call float @dx.op.unary.f32(i32 22, float %3020)  ; Frc(value)
  %3029 = call float @dx.op.unary.f32(i32 22, float %3021)  ; Frc(value)
  %3030 = call float @dx.op.unary.f32(i32 22, float %3022)  ; Frc(value)
  %3031 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3027, %dx.types.Handle %47, float %3028, float %3029, float %3030, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3032 = extractvalue %dx.types.ResRet.f32 %3031, 0
  %3033 = extractvalue %dx.types.ResRet.f32 %3031, 1
  %3034 = extractvalue %dx.types.ResRet.f32 %3031, 2
  %3035 = fmul fast float %3032, 1.023000e+03
  %3036 = fmul fast float %3033, 1.023000e+03
  %3037 = fmul fast float %3034, 1.023000e+03
  %3038 = fadd fast float %3035, 5.000000e-01
  %3039 = fadd fast float %3036, 5.000000e-01
  %3040 = fadd fast float %3037, 5.000000e-01
  %3041 = call float @dx.op.unary.f32(i32 27, float %3038)  ; Round_ni(value)
  %3042 = call float @dx.op.unary.f32(i32 27, float %3039)  ; Round_ni(value)
  %3043 = call float @dx.op.unary.f32(i32 27, float %3040)  ; Round_ni(value)
  %3044 = fsub fast float %3011, %3014
  %3045 = fsub fast float %3012, %3015
  %3046 = fsub fast float %3013, %3016
  %3047 = fmul fast float %3044, 7.500000e-01
  %3048 = fmul fast float %3045, 7.500000e-01
  %3049 = fmul fast float %3046, 7.500000e-01
  %3050 = fadd fast float %3014, 1.250000e-01
  %3051 = fadd fast float %3050, %3047
  %3052 = fadd fast float %3051, %3041
  %3053 = fadd fast float %3015, 1.250000e-01
  %3054 = fadd fast float %3053, %3048
  %3055 = fadd fast float %3054, %3042
  %3056 = fadd fast float %3016, 1.250000e-01
  %3057 = fadd fast float %3056, %3049
  %3058 = fadd fast float %3057, %3043
  %3059 = fmul fast float %3052, %3002
  %3060 = fmul fast float %3055, %3003
  %3061 = fmul fast float %3058, %3004
  %3062 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3023, i32 undef)  ; BufferLoad(srv,index,wot)
  %3063 = extractvalue %dx.types.ResRet.i32 %3062, 0
  %3064 = add i32 %3063, 0
  %3065 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3064, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3066 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3065, %dx.types.Handle %45, float %3059, float %3060, float %3061, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3067 = extractvalue %dx.types.ResRet.f32 %3066, 0
  br label %3068

; <label>:3068                                    ; preds = %2989, %2978
  %3069 = phi float [ %3067, %2989 ], [ -1.000000e+00, %2978 ]
  %3070 = fadd fast float %3069, %2976
  %3071 = call float @dx.op.unary.f32(i32 7, float %3070)  ; Saturate(value)
  br label %3072

; <label>:3072                                    ; preds = %3068, %2966
  %3073 = phi float [ %3071, %3068 ], [ %2976, %2966 ]
  %3074 = fmul fast float %3073, %468
  br label %3075

; <label>:3075                                    ; preds = %3072, %2961
  %3076 = phi float [ %3074, %3072 ], [ %468, %2961 ]
  %3077 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2855, i32 undef)  ; BufferLoad(srv,index,wot)
  %3078 = extractvalue %dx.types.ResRet.i32 %3077, 0
  %3079 = and i32 %3078, 256
  %3080 = icmp eq i32 %3079, 0
  br i1 %3080, label %3127, label %3081

; <label>:3081                                    ; preds = %3075
  %3082 = add i32 %62, 436
  %3083 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %3082, i32 undef)  ; BufferLoad(srv,index,wot)
  %3084 = extractvalue %dx.types.ResRet.i32 %3083, 0
  %3085 = add i32 %3084, 0
  %3086 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3085, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3087 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3086, %dx.types.Handle %108, float %2962, float %2963, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3088 = extractvalue %dx.types.ResRet.f32 %3087, 0
  %3089 = add i32 %62, 148
  %3090 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %3089, i32 undef)  ; BufferLoad(srv,index,wot)
  %3091 = extractvalue %dx.types.ResRet.i32 %3090, 0
  %3092 = shl i32 %3091, 4
  %3093 = and i32 %3092, 32752
  %3094 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3093)  ; LegacyF16ToF32(value)
  %3095 = lshr i32 %3091, 7
  %3096 = and i32 %3095, 32752
  %3097 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3096)  ; LegacyF16ToF32(value)
  %3098 = fsub fast float 1.000000e+00, %3076
  %3099 = call float @dx.op.binary.f32(i32 35, float %3098, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3100 = bitcast float %3076 to i32
  %3101 = sitofp i32 %3100 to float
  %3102 = fadd fast float %3101, 0xC1CFBF8940000000
  %3103 = fmul fast float %3097, %3102
  %3104 = fadd fast float %3103, 0x41CFBF8940000000
  %3105 = fptosi float %3104 to i32
  %3106 = bitcast i32 %3105 to float
  %3107 = bitcast float %3099 to i32
  %3108 = sitofp i32 %3107 to float
  %3109 = fadd fast float %3108, 0xC1CFBF8940000000
  %3110 = fmul fast float %3109, %3097
  %3111 = fadd fast float %3110, 0x41CFBF8940000000
  %3112 = fptosi float %3111 to i32
  %3113 = bitcast i32 %3112 to float
  %3114 = fmul fast float %3106, %3094
  %3115 = fmul fast float %3113, %3094
  %3116 = fsub fast float %3099, %3114
  %3117 = fadd fast float %3115, %3099
  %3118 = call float @dx.op.unary.f32(i32 7, float %3116)  ; Saturate(value)
  %3119 = call float @dx.op.unary.f32(i32 7, float %3117)  ; Saturate(value)
  %3120 = fsub fast float %3088, %3118
  %3121 = fsub fast float %3119, %3118
  %3122 = bitcast float %3121 to i32
  %3123 = sub nsw i32 2129859010, %3122
  %3124 = bitcast i32 %3123 to float
  %3125 = fmul fast float %3124, %3120
  %3126 = call float @dx.op.unary.f32(i32 7, float %3125)  ; Saturate(value)
  br label %3127

; <label>:3127                                    ; preds = %3081, %3075
  %3128 = phi float [ %3126, %3081 ], [ %3076, %3075 ]
  %3129 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2855, i32 undef)  ; BufferLoad(srv,index,wot)
  %3130 = extractvalue %dx.types.ResRet.i32 %3129, 0
  %3131 = and i32 %3130, 128
  %3132 = icmp eq i32 %3131, 0
  br i1 %3132, label %3149, label %3133

; <label>:3133                                    ; preds = %3127
  %3134 = add i32 %62, 420
  %3135 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %3134, i32 undef)  ; BufferLoad(srv,index,wot)
  %3136 = extractvalue %dx.types.ResRet.i32 %3135, 0
  %3137 = add i32 %3136, 0
  %3138 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3137, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3139 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3138, %dx.types.Handle %108, float %2962, float %2963, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3140 = extractvalue %dx.types.ResRet.f32 %3139, 0
  %3141 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2855, i32 undef)  ; BufferLoad(srv,index,wot)
  %3142 = extractvalue %dx.types.ResRet.i32 %3141, 0
  %3143 = and i32 %3142, 524288
  %3144 = icmp ne i32 %3143, 0
  %3145 = fcmp fast ogt float %3140, 0x3FE0101020000000
  %3146 = select i1 %3145, float 1.000000e+00, float 0.000000e+00
  %3147 = select i1 %3144, float %3146, float %3140
  %3148 = fmul fast float %3147, %3128
  br label %3149

; <label>:3149                                    ; preds = %3133, %3127
  %3150 = phi float [ %3148, %3133 ], [ %3128, %3127 ]
  %3151 = fcmp fast ult float %3150, 0x3F70101020000000
  br i1 %3151, label %3694, label %3152

; <label>:3152                                    ; preds = %3149
  %3153 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2855, i32 undef)  ; BufferLoad(srv,index,wot)
  %3154 = extractvalue %dx.types.ResRet.i32 %3153, 0
  %3155 = and i32 %3154, 16
  %3156 = icmp eq i32 %3155, 0
  br i1 %3156, label %3355, label %3157

; <label>:3157                                    ; preds = %3152
  %3158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2878, i32 undef)  ; BufferLoad(srv,index,wot)
  %3159 = extractvalue %dx.types.ResRet.i32 %3158, 0
  %3160 = add i32 %62, 372
  %3161 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %3160, i32 undef)  ; BufferLoad(srv,index,wot)
  %3162 = extractvalue %dx.types.ResRet.i32 %3161, 0
  %3163 = add i32 %3162, 0
  %3164 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3163, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3165 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3164, %dx.types.Handle %107, float %2962, float %2963, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3166 = extractvalue %dx.types.ResRet.f32 %3165, 0
  %3167 = extractvalue %dx.types.ResRet.f32 %3165, 1
  %3168 = extractvalue %dx.types.ResRet.f32 %3165, 2
  %3169 = extractvalue %dx.types.ResRet.f32 %3165, 3
  %3170 = and i32 %3159, 255
  %3171 = uitofp i32 %3170 to float
  %3172 = lshr i32 %3159, 8
  %3173 = and i32 %3172, 255
  %3174 = uitofp i32 %3173 to float
  %3175 = fmul fast float %3169, %3171
  %3176 = fadd fast float %3175, %3174
  %3177 = fmul fast float %3176, 0x3F70101000000000
  %3178 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2855, i32 undef)  ; BufferLoad(srv,index,wot)
  %3179 = extractvalue %dx.types.ResRet.i32 %3178, 0
  %3180 = and i32 %3179, 512
  %3181 = icmp eq i32 %3180, 0
  br i1 %3181, label %3190, label %3182

; <label>:3182                                    ; preds = %3157
  %3183 = add i32 %62, 452
  %3184 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %3183, i32 undef)  ; BufferLoad(srv,index,wot)
  %3185 = extractvalue %dx.types.ResRet.i32 %3184, 0
  %3186 = add i32 %3185, 0
  %3187 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3186, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3188 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3187, %dx.types.Handle %108, float %2962, float %2963, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3189 = extractvalue %dx.types.ResRet.f32 %3188, 0
  br label %3190

; <label>:3190                                    ; preds = %3182, %3157
  %3191 = phi float [ %3189, %3182 ], [ 1.000000e+00, %3157 ]
  %3192 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2855, i32 undef)  ; BufferLoad(srv,index,wot)
  %3193 = extractvalue %dx.types.ResRet.i32 %3192, 0
  %3194 = and i32 %3193, 33554432
  %3195 = icmp eq i32 %3194, 0
  br i1 %3195, label %3302, label %3196

; <label>:3196                                    ; preds = %3190
  %3197 = add i32 %62, 272
  %3198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %3197, i32 undef)  ; BufferLoad(srv,index,wot)
  %3199 = extractvalue %dx.types.ResRet.i32 %3198, 0
  %3200 = and i32 %3199, 65535
  %3201 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3200)  ; LegacyF16ToF32(value)
  %3202 = lshr i32 %3199, 16
  %3203 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3202)  ; LegacyF16ToF32(value)
  %3204 = add i32 %62, 276
  %3205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %3204, i32 undef)  ; BufferLoad(srv,index,wot)
  %3206 = extractvalue %dx.types.ResRet.i32 %3205, 0
  %3207 = and i32 %3206, 65535
  %3208 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3207)  ; LegacyF16ToF32(value)
  %3209 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %381, i32 undef)  ; BufferLoad(srv,index,wot)
  %3210 = extractvalue %dx.types.ResRet.i32 %3209, 0
  %3211 = lshr i32 %3210, 24
  %3212 = uitofp i32 %3211 to float
  %3213 = fmul fast float %3212, 0x3F70101020000000
  %3214 = and i32 %3210, 255
  %3215 = uitofp i32 %3214 to float
  %3216 = fmul fast float %3215, 0x3F70101020000000
  %3217 = lshr i32 %3210, 8
  %3218 = and i32 %3217, 255
  %3219 = uitofp i32 %3218 to float
  %3220 = fmul fast float %3219, 0x3F70101020000000
  %3221 = lshr i32 %3210, 16
  %3222 = and i32 %3221, 255
  %3223 = uitofp i32 %3222 to float
  %3224 = fmul fast float %3223, 0x3F70101020000000
  %3225 = add i32 %62, 268
  %3226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %3225, i32 undef)  ; BufferLoad(srv,index,wot)
  %3227 = extractvalue %dx.types.ResRet.i32 %3226, 0
  %3228 = lshr i32 %3227, 24
  %3229 = uitofp i32 %3228 to float
  %3230 = fmul fast float %3229, 0x3F70101020000000
  %3231 = and i32 %3227, 255
  %3232 = uitofp i32 %3231 to float
  %3233 = fmul fast float %3232, 0x3F70101020000000
  %3234 = lshr i32 %3227, 8
  %3235 = and i32 %3234, 255
  %3236 = uitofp i32 %3235 to float
  %3237 = fmul fast float %3236, 0x3F70101020000000
  %3238 = lshr i32 %3227, 16
  %3239 = and i32 %3238, 255
  %3240 = uitofp i32 %3239 to float
  %3241 = fmul fast float %3240, 0x3F70101020000000
  %3242 = bitcast float %3166 to i32
  %3243 = ashr i32 %3242, 1
  %3244 = sub nsw i32 1597463174, %3243
  %3245 = bitcast i32 %3244 to float
  %3246 = fmul fast float %3166, 5.000000e-01
  %3247 = fmul fast float %3245, %3245
  %3248 = fmul fast float %3247, %3246
  %3249 = fsub fast float 1.500000e+00, %3248
  %3250 = fmul fast float %3245, %3166
  %3251 = fmul fast float %3250, %3249
  %3252 = bitcast float %3167 to i32
  %3253 = ashr i32 %3252, 1
  %3254 = sub nsw i32 1597463174, %3253
  %3255 = bitcast i32 %3254 to float
  %3256 = fmul fast float %3167, 5.000000e-01
  %3257 = fmul fast float %3255, %3255
  %3258 = fmul fast float %3257, %3256
  %3259 = fsub fast float 1.500000e+00, %3258
  %3260 = fmul fast float %3255, %3167
  %3261 = fmul fast float %3260, %3259
  %3262 = bitcast float %3168 to i32
  %3263 = ashr i32 %3262, 1
  %3264 = sub nsw i32 1597463174, %3263
  %3265 = bitcast i32 %3264 to float
  %3266 = fmul fast float %3168, 5.000000e-01
  %3267 = fmul fast float %3265, %3265
  %3268 = fmul fast float %3267, %3266
  %3269 = fsub fast float 1.500000e+00, %3268
  %3270 = fmul fast float %3265, %3168
  %3271 = fmul fast float %3270, %3269
  %3272 = fsub fast float %3251, %3233
  %3273 = fsub fast float %3261, %3237
  %3274 = fsub fast float %3271, %3241
  %3275 = fmul fast float %3272, %3201
  %3276 = fmul fast float %3273, %3203
  %3277 = fmul fast float %3274, %3208
  %3278 = fadd fast float %3275, %3216
  %3279 = fadd fast float %3276, %3220
  %3280 = fadd fast float %3277, %3224
  %3281 = call float @dx.op.unary.f32(i32 7, float %3278)  ; Saturate(value)
  %3282 = call float @dx.op.unary.f32(i32 7, float %3279)  ; Saturate(value)
  %3283 = call float @dx.op.unary.f32(i32 7, float %3280)  ; Saturate(value)
  %3284 = fmul fast float %3281, %3281
  %3285 = fmul fast float %3282, %3282
  %3286 = fmul fast float %3283, %3283
  %3287 = fsub fast float %3284, %3166
  %3288 = fsub fast float %3285, %3167
  %3289 = fsub fast float %3286, %3168
  %3290 = fmul fast float %3287, %3191
  %3291 = fmul fast float %3288, %3191
  %3292 = fmul fast float %3289, %3191
  %3293 = fadd fast float %3290, %3166
  %3294 = fadd fast float %3291, %3167
  %3295 = fadd fast float %3292, %3168
  %3296 = fadd fast float %3213, %3177
  %3297 = fsub fast float %3296, %3230
  %3298 = call float @dx.op.unary.f32(i32 7, float %3297)  ; Saturate(value)
  %3299 = fsub fast float %3298, %3177
  %3300 = fmul fast float %3299, %3191
  %3301 = fadd fast float %3300, %3177
  br label %3355

; <label>:3302                                    ; preds = %3190
  %3303 = and i32 %3193, 134217728
  %3304 = icmp eq i32 %3303, 0
  br i1 %3304, label %3339, label %3305

; <label>:3305                                    ; preds = %3302
  %3306 = call float @dx.op.unary.f32(i32 24, float %386)  ; Sqrt(value)
  %3307 = call float @dx.op.unary.f32(i32 24, float %390)  ; Sqrt(value)
  %3308 = call float @dx.op.unary.f32(i32 24, float %394)  ; Sqrt(value)
  %3309 = fadd fast float %3306, -5.000000e-01
  %3310 = fadd fast float %3307, -5.000000e-01
  %3311 = fadd fast float %3308, -5.000000e-01
  %3312 = fmul fast float %3309, %3191
  %3313 = fmul fast float %3310, %3191
  %3314 = fmul fast float %3311, %3191
  %3315 = fadd fast float %3312, 5.000000e-01
  %3316 = fadd fast float %3313, 5.000000e-01
  %3317 = fadd fast float %3314, 5.000000e-01
  %3318 = call float @dx.op.unary.f32(i32 24, float %3166)  ; Sqrt(value)
  %3319 = call float @dx.op.unary.f32(i32 24, float %3167)  ; Sqrt(value)
  %3320 = call float @dx.op.unary.f32(i32 24, float %3168)  ; Sqrt(value)
  %3321 = fmul fast float %3315, 2.000000e+00
  %3322 = fsub fast float 1.000000e+00, %3321
  %3323 = fmul fast float %3322, %3318
  %3324 = fadd fast float %3323, %3321
  %3325 = fmul fast float %3324, %3318
  %3326 = fmul fast float %3316, 2.000000e+00
  %3327 = fsub fast float 1.000000e+00, %3326
  %3328 = fmul fast float %3327, %3319
  %3329 = fadd fast float %3328, %3326
  %3330 = fmul fast float %3329, %3319
  %3331 = fmul fast float %3317, 2.000000e+00
  %3332 = fsub fast float 1.000000e+00, %3331
  %3333 = fmul fast float %3332, %3320
  %3334 = fadd fast float %3333, %3331
  %3335 = fmul fast float %3334, %3320
  %3336 = fmul fast float %3325, %3325
  %3337 = fmul fast float %3330, %3330
  %3338 = fmul fast float %3335, %3335
  br label %3355

; <label>:3339                                    ; preds = %3302
  %3340 = fmul fast float %386, %386
  %3341 = fmul fast float %390, %390
  %3342 = fmul fast float %394, %394
  %3343 = fadd fast float %3340, -1.000000e+00
  %3344 = fadd fast float %3341, -1.000000e+00
  %3345 = fadd fast float %3342, -1.000000e+00
  %3346 = fmul fast float %3191, %3343
  %3347 = fmul fast float %3191, %3344
  %3348 = fmul fast float %3191, %3345
  %3349 = fadd fast float %3346, 1.000000e+00
  %3350 = fadd fast float %3347, 1.000000e+00
  %3351 = fadd fast float %3348, 1.000000e+00
  %3352 = fmul fast float %3349, %3166
  %3353 = fmul fast float %3350, %3167
  %3354 = fmul fast float %3351, %3168
  br label %3355

; <label>:3355                                    ; preds = %3339, %3305, %3196, %3152
  %3356 = phi float [ %3301, %3196 ], [ %3177, %3305 ], [ %3177, %3339 ], [ 0x3FA23C0BE0000000, %3152 ]
  %3357 = phi float [ %3293, %3196 ], [ %3336, %3305 ], [ %3352, %3339 ], [ 1.000000e+00, %3152 ]
  %3358 = phi float [ %3294, %3196 ], [ %3337, %3305 ], [ %3353, %3339 ], [ 1.000000e+00, %3152 ]
  %3359 = phi float [ %3295, %3196 ], [ %3338, %3305 ], [ %3354, %3339 ], [ 1.000000e+00, %3152 ]
  %3360 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3361 = extractvalue %dx.types.CBufRet.i32 %3360, 1
  %3362 = and i32 %3361, 1
  %3363 = icmp ne i32 %3362, 0
  %3364 = add i32 %62, 356
  %3365 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %3364, i32 undef)  ; BufferLoad(srv,index,wot)
  %3366 = extractvalue %dx.types.ResRet.i32 %3365, 0
  %3367 = and i32 %3366, 32
  %3368 = icmp ne i32 %3367, 0
  %3369 = and i1 %3363, %3368
  %3370 = select i1 %3369, float 1.000000e+00, float %3357
  %3371 = select i1 %3369, float 0x3FD3333340000000, float %3358
  %3372 = select i1 %3369, float 0x3FD3333340000000, float %3359
  %3373 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2855, i32 undef)  ; BufferLoad(srv,index,wot)
  %3374 = extractvalue %dx.types.ResRet.i32 %3373, 0
  %3375 = and i32 %3374, 32
  %3376 = icmp eq i32 %3375, 0
  br i1 %3376, label %3449, label %3377

; <label>:3377                                    ; preds = %3355
  %3378 = add i32 %62, 140
  %3379 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %3378, i32 undef)  ; BufferLoad(srv,index,wot)
  %3380 = extractvalue %dx.types.ResRet.i32 %3379, 0
  %3381 = add i32 %62, 388
  %3382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %3381, i32 undef)  ; BufferLoad(srv,index,wot)
  %3383 = extractvalue %dx.types.ResRet.i32 %3382, 0
  %3384 = add i32 %3383, 0
  %3385 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3384, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3386 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3385, %dx.types.Handle %107, float %2962, float %2963, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3387 = extractvalue %dx.types.ResRet.f32 %3386, 0
  %3388 = extractvalue %dx.types.ResRet.f32 %3386, 1
  %3389 = extractvalue %dx.types.ResRet.f32 %3386, 2
  %3390 = extractvalue %dx.types.ResRet.f32 %3386, 3
  %3391 = and i32 %3380, 255
  %3392 = uitofp i32 %3391 to float
  %3393 = lshr i32 %3380, 8
  %3394 = and i32 %3393, 255
  %3395 = uitofp i32 %3394 to float
  %3396 = lshr i32 %3380, 16
  %3397 = and i32 %3396, 255
  %3398 = uitofp i32 %3397 to float
  %3399 = fmul fast float %3398, 0x3F70101000000000
  %3400 = fmul fast float %3387, %3392
  %3401 = fadd fast float %3400, %3395
  %3402 = fmul fast float %3401, 0x3F70101000000000
  %3403 = fadd fast float %3388, -5.000000e-01
  %3404 = fadd fast float %3390, -5.000000e-01
  %3405 = fmul fast float %3403, %3399
  %3406 = fmul fast float %3404, %3399
  %3407 = fadd fast float %3405, 5.000000e-01
  %3408 = fadd fast float %3406, 5.000000e-01
  %3409 = fmul fast float %3407, 2.000000e+00
  %3410 = fadd fast float %3409, -1.000000e+00
  %3411 = fmul fast float %3408, 2.000000e+00
  %3412 = fadd fast float %3411, -1.000000e+00
  %3413 = fadd fast float %3410, %3412
  %3414 = fmul fast float %3413, 5.000000e-01
  %3415 = fsub fast float %3410, %3412
  %3416 = fmul fast float %3415, 5.000000e-01
  %3417 = call float @dx.op.unary.f32(i32 6, float %3414)  ; FAbs(value)
  %3418 = fsub fast float 1.000000e+00, %3417
  %3419 = call float @dx.op.unary.f32(i32 6, float %3416)  ; FAbs(value)
  %3420 = fsub fast float %3418, %3419
  %3421 = call float @dx.op.dot3.f32(i32 55, float %3414, float %3416, float %3420, float %3414, float %3416, float %3420)  ; Dot3(ax,ay,az,bx,by,bz)
  %3422 = call float @dx.op.unary.f32(i32 25, float %3421)  ; Rsqrt(value)
  %3423 = fmul fast float %3414, %3422
  %3424 = fmul fast float %3416, %3422
  %3425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2855, i32 undef)  ; BufferLoad(srv,index,wot)
  %3426 = extractvalue %dx.types.ResRet.i32 %3425, 0
  %3427 = and i32 %3426, 67108864
  %3428 = icmp eq i32 %3427, 0
  br i1 %3428, label %3445, label %3429

; <label>:3429                                    ; preds = %3377
  %3430 = add i32 %62, 328
  %3431 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %3430, i32 undef)  ; BufferLoad(srv,index,wot)
  %3432 = extractvalue %dx.types.ResRet.i32 %3431, 0
  %3433 = and i32 %3432, 65535
  %3434 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3433)  ; LegacyF16ToF32(value)
  %3435 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2872, i32 undef)  ; BufferLoad(srv,index,wot)
  %3436 = extractvalue %dx.types.ResRet.i32 %3435, 0
  %3437 = and i32 %3436, 65535
  %3438 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3437)  ; LegacyF16ToF32(value)
  %3439 = lshr i32 %3432, 16
  %3440 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3439)  ; LegacyF16ToF32(value)
  %3441 = fsub fast float %3402, %3440
  %3442 = fmul fast float %3441, %3434
  %3443 = fadd fast float %3442, %3438
  %3444 = call float @dx.op.unary.f32(i32 7, float %3443)  ; Saturate(value)
  br label %3445

; <label>:3445                                    ; preds = %3429, %3377
  %3446 = phi float [ %3444, %3429 ], [ %3402, %3377 ]
  %3447 = call float @dx.op.dot2.f32(i32 54, float %3423, float %3424, float %2866, float %2867)  ; Dot2(ax,ay,bx,by)
  %3448 = call float @dx.op.dot2.f32(i32 54, float %3423, float %3424, float %2868, float %2869)  ; Dot2(ax,ay,bx,by)
  br label %3449

; <label>:3449                                    ; preds = %3445, %3355
  %3450 = phi float [ %3446, %3445 ], [ 0x3FD6666660000000, %3355 ]
  %3451 = phi float [ %3447, %3445 ], [ 0.000000e+00, %3355 ]
  %3452 = phi float [ %3448, %3445 ], [ 0.000000e+00, %3355 ]
  %3453 = phi float [ %3389, %3445 ], [ 1.000000e+00, %3355 ]
  %3454 = add i32 %62, 208
  %3455 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %3454, i32 undef)  ; BufferLoad(srv,index,wot)
  %3456 = extractvalue %dx.types.ResRet.i32 %3455, 0
  %3457 = lshr i32 %3456, 22
  %3458 = shl nuw nsw i32 %3457, 5
  %3459 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3458)  ; LegacyF16ToF32(value)
  %3460 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2855, i32 undef)  ; BufferLoad(srv,index,wot)
  %3461 = extractvalue %dx.types.ResRet.i32 %3460, 0
  %3462 = and i32 %3461, 64
  %3463 = icmp eq i32 %3462, 0
  br i1 %3463, label %3497, label %3464

; <label>:3464                                    ; preds = %3449
  %3465 = add i32 %62, 404
  %3466 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %3465, i32 undef)  ; BufferLoad(srv,index,wot)
  %3467 = extractvalue %dx.types.ResRet.i32 %3466, 0
  %3468 = add i32 %3467, 0
  %3469 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3468, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3470 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2855, i32 undef)  ; BufferLoad(srv,index,wot)
  %3471 = extractvalue %dx.types.ResRet.i32 %3470, 0
  %3472 = and i32 %3471, 131072
  %3473 = icmp eq i32 %3472, 0
  %3474 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3469, %dx.types.Handle %107, float %2962, float %2963, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3475 = extractvalue %dx.types.ResRet.f32 %3474, 0
  %3476 = extractvalue %dx.types.ResRet.f32 %3474, 1
  %3477 = extractvalue %dx.types.ResRet.f32 %3474, 2
  %3478 = fmul fast float %3475, %374
  %3479 = fmul fast float %3476, %377
  %3480 = fmul fast float %3477, %380
  br i1 %3473, label %3487, label %3481

; <label>:3481                                    ; preds = %3464
  %3482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3483 = extractvalue %dx.types.CBufRet.f32 %3482, 0
  %3484 = fmul fast float %3483, %3478
  %3485 = fmul fast float %3483, %3479
  %3486 = fmul fast float %3483, %3480
  br label %3487

; <label>:3487                                    ; preds = %3481, %3464
  %3488 = phi float [ %3484, %3481 ], [ %3478, %3464 ]
  %3489 = phi float [ %3485, %3481 ], [ %3479, %3464 ]
  %3490 = phi float [ %3486, %3481 ], [ %3480, %3464 ]
  %3491 = fmul fast float %3488, %3459
  %3492 = select i1 %231, float %3491, float %3488
  %3493 = call float @dx.op.dot3.f32(i32 55, float %3492, float %3489, float %3490, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3494 = select i1 %231, float 0.000000e+00, float %3488
  %3495 = select i1 %231, float %3493, float %3489
  %3496 = select i1 %231, float 0.000000e+00, float %3490
  br label %3497

; <label>:3497                                    ; preds = %3487, %3449
  %3498 = phi float [ %3494, %3487 ], [ 0.000000e+00, %3449 ]
  %3499 = phi float [ %3495, %3487 ], [ 0.000000e+00, %3449 ]
  %3500 = phi float [ %3496, %3487 ], [ 0.000000e+00, %3449 ]
  %3501 = add i32 %62, 144
  %3502 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %3501, i32 undef)  ; BufferLoad(srv,index,wot)
  %3503 = extractvalue %dx.types.ResRet.i32 %3502, 0
  %3504 = and i32 %3503, 255
  %3505 = uitofp i32 %3504 to float
  %3506 = lshr i32 %3503, 8
  %3507 = and i32 %3506, 255
  %3508 = uitofp i32 %3507 to float
  %3509 = call float @dx.op.dot3.f32(i32 55, float %3370, float %3371, float %3372, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3510 = fmul fast float %3508, %3509
  %3511 = fadd fast float %3510, %3505
  %3512 = fmul fast float %3511, 0x3F70101020000000
  %3513 = call float @dx.op.unary.f32(i32 7, float %3512)  ; Saturate(value)
  br i1 %2854, label %3514, label %3522

; <label>:3514                                    ; preds = %3497
  %3515 = fsub fast float 1.000000e+00, %3150
  %3516 = fmul fast float %3515, %2843
  %3517 = fmul fast float %3515, %2844
  %3518 = fmul fast float %3515, %2845
  %3519 = fmul fast float %3515, %2846
  %3520 = fmul fast float %3515, %2847
  %3521 = fmul fast float %3515, %2848
  br label %3522

; <label>:3522                                    ; preds = %3514, %3497
  %3523 = phi float [ %3516, %3514 ], [ %2843, %3497 ]
  %3524 = phi float [ %3517, %3514 ], [ %2844, %3497 ]
  %3525 = phi float [ %3518, %3514 ], [ %2845, %3497 ]
  %3526 = phi float [ %3519, %3514 ], [ %2846, %3497 ]
  %3527 = phi float [ %3520, %3514 ], [ %2847, %3497 ]
  %3528 = phi float [ %3521, %3514 ], [ %2848, %3497 ]
  %3529 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2855, i32 undef)  ; BufferLoad(srv,index,wot)
  %3530 = extractvalue %dx.types.ResRet.i32 %3529, 0
  %3531 = and i32 %3530, 3
  %3532 = icmp eq i32 %3531, 3
  br i1 %3532, label %3611, label %3533

; <label>:3533                                    ; preds = %3522
  %3534 = and i32 %3530, 16
  %3535 = icmp ne i32 %3534, 0
  %3536 = select i1 %3535, float %3150, float 0.000000e+00
  %3537 = icmp eq i32 %3531, 0
  br i1 %3537, label %3538, label %3566

; <label>:3538                                    ; preds = %3533
  %3539 = and i32 %3530, 64
  %3540 = icmp ne i32 %3539, 0
  %3541 = select i1 %3540, float %3150, float 0.000000e+00
  %3542 = fsub fast float %3370, %3523
  %3543 = fsub fast float %3371, %3524
  %3544 = fsub fast float %3372, %3525
  %3545 = fmul fast float %3536, %3542
  %3546 = fmul fast float %3536, %3543
  %3547 = fmul fast float %3536, %3544
  %3548 = fadd fast float %3545, %3523
  %3549 = fadd fast float %3546, %3524
  %3550 = fadd fast float %3547, %3525
  %3551 = fsub fast float %3356, %2849
  %3552 = fmul fast float %3536, %3551
  %3553 = fadd fast float %3552, %2849
  %3554 = fsub fast float %3498, %3526
  %3555 = fsub fast float %3499, %3527
  %3556 = fsub fast float %3500, %3528
  %3557 = fmul fast float %3541, %3554
  %3558 = fmul fast float %3541, %3555
  %3559 = fmul fast float %3541, %3556
  %3560 = fadd fast float %3557, %3526
  %3561 = fadd fast float %3558, %3527
  %3562 = fadd fast float %3559, %3528
  %3563 = fsub fast float %3513, %2852
  %3564 = fmul fast float %3536, %3563
  %3565 = fadd fast float %3564, %2852
  br label %3611

; <label>:3566                                    ; preds = %3533
  %3567 = icmp eq i32 %3531, 1
  br i1 %3567, label %3568, label %3581

; <label>:3568                                    ; preds = %3566
  %3569 = fadd fast float %3370, -1.000000e+00
  %3570 = fadd fast float %3371, -1.000000e+00
  %3571 = fadd fast float %3372, -1.000000e+00
  %3572 = fmul fast float %3536, %3569
  %3573 = fmul fast float %3536, %3570
  %3574 = fmul fast float %3536, %3571
  %3575 = fadd fast float %3572, 1.000000e+00
  %3576 = fadd fast float %3573, 1.000000e+00
  %3577 = fadd fast float %3574, 1.000000e+00
  %3578 = fmul fast float %3575, %3523
  %3579 = fmul fast float %3576, %3524
  %3580 = fmul fast float %3577, %3525
  br label %3611

; <label>:3581                                    ; preds = %3566
  %3582 = icmp eq i32 %3531, 2
  br i1 %3582, label %3583, label %3611

; <label>:3583                                    ; preds = %3581
  %3584 = call float @dx.op.unary.f32(i32 24, float %3370)  ; Sqrt(value)
  %3585 = call float @dx.op.unary.f32(i32 24, float %3371)  ; Sqrt(value)
  %3586 = call float @dx.op.unary.f32(i32 24, float %3372)  ; Sqrt(value)
  %3587 = fadd fast float %3584, -5.000000e-01
  %3588 = fadd fast float %3585, -5.000000e-01
  %3589 = fadd fast float %3586, -5.000000e-01
  %3590 = fmul fast float %3587, %3536
  %3591 = fmul fast float %3588, %3536
  %3592 = fmul fast float %3589, %3536
  %3593 = fadd fast float %3590, 5.000000e-01
  %3594 = fadd fast float %3591, 5.000000e-01
  %3595 = fadd fast float %3592, 5.000000e-01
  %3596 = fmul fast float %3593, 2.000000e+00
  %3597 = fsub fast float 1.000000e+00, %3596
  %3598 = fmul fast float %3597, %3523
  %3599 = fadd fast float %3598, %3596
  %3600 = fmul fast float %3599, %3523
  %3601 = fmul fast float %3594, 2.000000e+00
  %3602 = fsub fast float 1.000000e+00, %3601
  %3603 = fmul fast float %3602, %3524
  %3604 = fadd fast float %3603, %3601
  %3605 = fmul fast float %3604, %3524
  %3606 = fmul fast float %3595, 2.000000e+00
  %3607 = fsub fast float 1.000000e+00, %3606
  %3608 = fmul fast float %3607, %3525
  %3609 = fadd fast float %3608, %3606
  %3610 = fmul fast float %3609, %3525
  br label %3611

; <label>:3611                                    ; preds = %3583, %3581, %3568, %3538, %3522
  %3612 = phi float [ %3523, %3522 ], [ %3600, %3583 ], [ %3523, %3581 ], [ %3578, %3568 ], [ %3548, %3538 ]
  %3613 = phi float [ %3524, %3522 ], [ %3605, %3583 ], [ %3524, %3581 ], [ %3579, %3568 ], [ %3549, %3538 ]
  %3614 = phi float [ %3525, %3522 ], [ %3610, %3583 ], [ %3525, %3581 ], [ %3580, %3568 ], [ %3550, %3538 ]
  %3615 = phi float [ %3526, %3522 ], [ %3526, %3583 ], [ %3526, %3581 ], [ %3526, %3568 ], [ %3560, %3538 ]
  %3616 = phi float [ %3527, %3522 ], [ %3527, %3583 ], [ %3527, %3581 ], [ %3527, %3568 ], [ %3561, %3538 ]
  %3617 = phi float [ %3528, %3522 ], [ %3528, %3583 ], [ %3528, %3581 ], [ %3528, %3568 ], [ %3562, %3538 ]
  %3618 = phi float [ %2849, %3522 ], [ %2849, %3583 ], [ %2849, %3581 ], [ %2849, %3568 ], [ %3553, %3538 ]
  %3619 = phi float [ %2852, %3522 ], [ %2852, %3583 ], [ %2852, %3581 ], [ %2852, %3568 ], [ %3565, %3538 ]
  %3620 = and i32 %3530, 12
  %3621 = icmp eq i32 %3620, 12
  br i1 %3621, label %3694, label %3622

; <label>:3622                                    ; preds = %3611
  %3623 = and i32 %3530, 2097184
  %3624 = icmp eq i32 %3623, 2097184
  %3625 = select i1 %3624, float %3150, float 0.000000e+00
  %3626 = and i32 %3530, 4194336
  %3627 = icmp eq i32 %3626, 4194336
  %3628 = select i1 %3627, float %3150, float 0.000000e+00
  %3629 = and i32 %3530, 8388640
  %3630 = icmp eq i32 %3629, 8388640
  %3631 = select i1 %3630, float %3150, float 0.000000e+00
  %3632 = icmp eq i32 %3620, 0
  br i1 %3632, label %3633, label %3646

; <label>:3633                                    ; preds = %3622
  %3634 = fsub fast float %3451, %2841
  %3635 = fsub fast float %3452, %2842
  %3636 = fmul fast float %3625, %3634
  %3637 = fmul fast float %3625, %3635
  %3638 = fadd fast float %3636, %2841
  %3639 = fadd fast float %3637, %2842
  %3640 = fsub fast float %3453, %2851
  %3641 = fmul fast float %3628, %3640
  %3642 = fadd fast float %3641, %2851
  %3643 = fsub fast float %3450, %2850
  %3644 = fmul fast float %3631, %3643
  %3645 = fadd fast float %3644, %2850
  br label %3694

; <label>:3646                                    ; preds = %3622
  %3647 = icmp eq i32 %3620, 4
  br i1 %3647, label %3648, label %3680

; <label>:3648                                    ; preds = %3646
  %3649 = fmul fast float %3625, %3451
  %3650 = fmul fast float %3625, %3452
  %3651 = fadd fast float %3649, %2841
  %3652 = fadd fast float %3650, %2842
  %3653 = call float @dx.op.binary.f32(i32 36, float %2851, float %3453)  ; FMin(a,b)
  %3654 = fsub fast float %3653, %2851
  %3655 = fmul fast float %3654, %3628
  %3656 = fadd fast float %3655, %2851
  %3657 = fadd fast float %3450, %2850
  %3658 = fmul fast float %3657, 0x3FF337FAE0000000
  %3659 = fmul fast float %2850, %2850
  %3660 = fmul fast float %3450, %3450
  %3661 = fadd fast float %3660, %3659
  %3662 = fmul fast float %3661, 0x3FE5152B00000000
  %3663 = fmul fast float %2850, 0xBFCC1F85E0000000
  %3664 = fmul fast float %3663, %3450
  %3665 = fadd fast float %3664, 0xBFE1363700000000
  %3666 = fadd fast float %3665, %3658
  %3667 = fsub fast float %3666, %3662
  %3668 = fmul fast float %3657, 0x3FBA6F0D00000000
  %3669 = fmul fast float %3661, 0x3FD0432880000000
  %3670 = fmul fast float %2850, 0xBFEF110800000000
  %3671 = fmul fast float %3670, %3450
  %3672 = fadd fast float %3671, 1.000000e+00
  %3673 = fsub fast float %3672, %3668
  %3674 = fadd fast float %3673, %3669
  %3675 = fdiv fast float %3667, %3674
  %3676 = call float @dx.op.unary.f32(i32 7, float %3675)  ; Saturate(value)
  %3677 = fsub fast float %3676, %2850
  %3678 = fmul fast float %3677, %3631
  %3679 = fadd fast float %3678, %2850
  br label %3694

; <label>:3680                                    ; preds = %3646
  %3681 = icmp eq i32 %3620, 8
  br i1 %3681, label %3682, label %3694

; <label>:3682                                    ; preds = %3680
  %3683 = fmul fast float %3625, %3451
  %3684 = fmul fast float %3625, %3452
  %3685 = fadd fast float %3683, %2841
  %3686 = fadd fast float %3684, %2842
  %3687 = call float @dx.op.binary.f32(i32 36, float %2851, float %3453)  ; FMin(a,b)
  %3688 = fsub fast float %3687, %2851
  %3689 = fmul fast float %3688, %3628
  %3690 = fadd fast float %3689, %2851
  %3691 = fsub fast float %3450, %2850
  %3692 = fmul fast float %3631, %3691
  %3693 = fadd fast float %3692, %2850
  br label %3694

; <label>:3694                                    ; preds = %3682, %3680, %3648, %3633, %3611, %3149, %2853, %2840
  %3695 = phi float [ %2841, %3611 ], [ %2841, %3149 ], [ %2841, %2840 ], [ %2841, %2853 ], [ %3638, %3633 ], [ %3651, %3648 ], [ %2841, %3680 ], [ %3685, %3682 ]
  %3696 = phi float [ %2842, %3611 ], [ %2842, %3149 ], [ %2842, %2840 ], [ %2842, %2853 ], [ %3639, %3633 ], [ %3652, %3648 ], [ %2842, %3680 ], [ %3686, %3682 ]
  %3697 = phi float [ %3612, %3611 ], [ %2843, %3149 ], [ %2843, %2840 ], [ %2843, %2853 ], [ %3612, %3633 ], [ %3612, %3648 ], [ %3612, %3680 ], [ %3612, %3682 ]
  %3698 = phi float [ %3613, %3611 ], [ %2844, %3149 ], [ %2844, %2840 ], [ %2844, %2853 ], [ %3613, %3633 ], [ %3613, %3648 ], [ %3613, %3680 ], [ %3613, %3682 ]
  %3699 = phi float [ %3614, %3611 ], [ %2845, %3149 ], [ %2845, %2840 ], [ %2845, %2853 ], [ %3614, %3633 ], [ %3614, %3648 ], [ %3614, %3680 ], [ %3614, %3682 ]
  %3700 = phi float [ %3615, %3611 ], [ %2846, %3149 ], [ %2846, %2840 ], [ %2846, %2853 ], [ %3615, %3633 ], [ %3615, %3648 ], [ %3615, %3680 ], [ %3615, %3682 ]
  %3701 = phi float [ %3616, %3611 ], [ %2847, %3149 ], [ %2847, %2840 ], [ %2847, %2853 ], [ %3616, %3633 ], [ %3616, %3648 ], [ %3616, %3680 ], [ %3616, %3682 ]
  %3702 = phi float [ %3617, %3611 ], [ %2848, %3149 ], [ %2848, %2840 ], [ %2848, %2853 ], [ %3617, %3633 ], [ %3617, %3648 ], [ %3617, %3680 ], [ %3617, %3682 ]
  %3703 = phi float [ %3618, %3611 ], [ %2849, %3149 ], [ %2849, %2840 ], [ %2849, %2853 ], [ %3618, %3633 ], [ %3618, %3648 ], [ %3618, %3680 ], [ %3618, %3682 ]
  %3704 = phi float [ %2850, %3611 ], [ %2850, %3149 ], [ %2850, %2840 ], [ %2850, %2853 ], [ %3645, %3633 ], [ %3679, %3648 ], [ %2850, %3680 ], [ %3693, %3682 ]
  %3705 = phi float [ %2851, %3611 ], [ %2851, %3149 ], [ %2851, %2840 ], [ %2851, %2853 ], [ %3642, %3633 ], [ %3656, %3648 ], [ %2851, %3680 ], [ %3690, %3682 ]
  %3706 = phi float [ %3619, %3611 ], [ %2852, %3149 ], [ %2852, %2840 ], [ %2852, %2853 ], [ %3619, %3633 ], [ %3619, %3648 ], [ %3619, %3680 ], [ %3619, %3682 ]
  %3707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3708 = extractvalue %dx.types.CBufRet.f32 %3707, 0
  %3709 = call float @dx.op.dot2.f32(i32 54, float %3695, float %3696, float %3695, float %3696)  ; Dot2(ax,ay,bx,by)
  %3710 = fmul fast float %3709, 0x3FE3333340000000
  %3711 = fsub fast float 1.000000e+00, %3710
  %3712 = call float @dx.op.dot3.f32(i32 55, float %3695, float %3696, float %3711, float %3695, float %3696, float %3711)  ; Dot3(ax,ay,az,bx,by,bz)
  %3713 = call float @dx.op.unary.f32(i32 25, float %3712)  ; Rsqrt(value)
  %3714 = fmul fast float %3713, %3695
  %3715 = fmul fast float %3713, %3696
  %3716 = fmul fast float %3711, %3713
  %3717 = fmul fast float %3716, %120
  %3718 = fmul fast float %3716, %122
  %3719 = fmul fast float %3716, %124
  %3720 = fmul fast float %3714, %83
  %3721 = fmul fast float %3714, %84
  %3722 = fmul fast float %3714, %85
  %3723 = fadd fast float %3717, %3720
  %3724 = fadd fast float %3718, %3721
  %3725 = fadd fast float %3719, %3722
  %3726 = fmul fast float %134, %3715
  %3727 = fmul fast float %135, %3715
  %3728 = fmul fast float %136, %3715
  %3729 = fadd fast float %3723, %3726
  %3730 = fadd fast float %3724, %3727
  %3731 = fadd fast float %3725, %3728
  %3732 = call float @dx.op.dot3.f32(i32 55, float %3729, float %3730, float %3731, float %3729, float %3730, float %3731)  ; Dot3(ax,ay,az,bx,by,bz)
  %3733 = call float @dx.op.unary.f32(i32 25, float %3732)  ; Rsqrt(value)
  %3734 = fmul fast float %3729, %3733
  %3735 = fmul fast float %3730, %3733
  %3736 = fmul fast float %3731, %3733
  %3737 = and i32 %64, 1
  %3738 = icmp eq i32 %3737, 0
  br i1 %3738, label %3739, label %4247

; <label>:3739                                    ; preds = %3694
  %3740 = call float @dx.op.unary.f32(i32 83, float %170)  ; DerivCoarseX(value)
  %3741 = call float @dx.op.unary.f32(i32 83, float %171)  ; DerivCoarseX(value)
  %3742 = call float @dx.op.unary.f32(i32 83, float %172)  ; DerivCoarseX(value)
  %3743 = call float @dx.op.unary.f32(i32 84, float %170)  ; DerivCoarseY(value)
  %3744 = call float @dx.op.unary.f32(i32 84, float %171)  ; DerivCoarseY(value)
  %3745 = call float @dx.op.unary.f32(i32 84, float %172)  ; DerivCoarseY(value)
  %3746 = fadd fast float %3740, %170
  %3747 = fadd fast float %3741, %171
  %3748 = fadd fast float %3742, %172
  %3749 = fadd fast float %3743, %170
  %3750 = fadd fast float %3744, %171
  %3751 = fadd fast float %3745, %172
  %3752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3753 = extractvalue %dx.types.CBufRet.f32 %3752, 0
  %3754 = extractvalue %dx.types.CBufRet.f32 %3752, 1
  %3755 = extractvalue %dx.types.CBufRet.f32 %3752, 2
  %3756 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %3757 = extractvalue %dx.types.CBufRet.f32 %3756, 2
  %3758 = extractvalue %dx.types.CBufRet.f32 %3756, 3
  %3759 = fmul fast float %3753, %111
  %3760 = fmul fast float %3759, %3757
  %3761 = fmul fast float %3754, %112
  %3762 = fmul fast float %3761, %3758
  %3763 = fptoui float %3760 to i32
  %3764 = fptoui float %3762 to i32
  %3765 = fadd fast float %3753, -1.000000e+00
  %3766 = fadd fast float %3754, -1.000000e+00
  %3767 = fptoui float %3765 to i32
  %3768 = fptoui float %3766 to i32
  %3769 = call i32 @dx.op.binary.i32(i32 40, i32 %3763, i32 %3767)  ; UMin(a,b)
  %3770 = call i32 @dx.op.binary.i32(i32 40, i32 %3764, i32 %3768)  ; UMin(a,b)
  %3771 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3772 = extractvalue %dx.types.CBufRet.f32 %3771, 2
  %3773 = extractvalue %dx.types.CBufRet.f32 %3771, 3
  %3774 = fmul fast float %3772, %99
  %3775 = fsub fast float %3774, %3773
  %3776 = fadd fast float %3755, -1.000000e+00
  %3777 = call float @dx.op.binary.f32(i32 36, float %3775, float %3776)  ; FMin(a,b)
  %3778 = fptoui float %3777 to i32
  %3779 = fptoui float %3753 to i32
  %3780 = fptoui float %3754 to i32
  %3781 = mul i32 %3778, %3780
  %3782 = add i32 %3781, %3770
  %3783 = mul i32 %3782, %3779
  %3784 = add i32 %3783, %3769
  %3785 = shl i32 %3784, 2
  %3786 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %3785, i32 undef)  ; BufferLoad(srv,index,wot)
  %3787 = extractvalue %dx.types.ResRet.i32 %3786, 0
  %3788 = and i32 %3787, 1023
  %3789 = lshr i32 %3787, 10
  %3790 = icmp eq i32 %3788, 0
  br i1 %3790, label %4216, label %3791

; <label>:3791                                    ; preds = %3739
  %3792 = and i32 %3787, 1023
  br label %3793

; <label>:3793                                    ; preds = %3919, %3791
  %3794 = phi i32 [ %3869, %3919 ], [ 0, %3791 ]
  %3795 = phi float [ %3920, %3919 ], [ 0.000000e+00, %3791 ]
  %3796 = phi float [ %3921, %3919 ], [ %3708, %3791 ]
  %3797 = phi float [ %3922, %3919 ], [ %3706, %3791 ]
  %3798 = phi float [ %3923, %3919 ], [ 0.000000e+00, %3791 ]
  %3799 = phi float [ %3924, %3919 ], [ 0.000000e+00, %3791 ]
  %3800 = phi float [ %3925, %3919 ], [ %3700, %3791 ]
  %3801 = phi float [ %3926, %3919 ], [ %3701, %3791 ]
  %3802 = phi float [ %3927, %3919 ], [ %3702, %3791 ]
  %3803 = phi float [ %3928, %3919 ], [ %3734, %3791 ]
  %3804 = phi float [ %3929, %3919 ], [ %3735, %3791 ]
  %3805 = phi float [ %3930, %3919 ], [ %3736, %3791 ]
  %3806 = phi float [ %3931, %3919 ], [ %3705, %3791 ]
  %3807 = phi float [ %3932, %3919 ], [ %3704, %3791 ]
  %3808 = phi float [ %3933, %3919 ], [ 0.000000e+00, %3791 ]
  %3809 = phi float [ %3934, %3919 ], [ %3703, %3791 ]
  %3810 = phi float [ %3935, %3919 ], [ %3697, %3791 ]
  %3811 = phi float [ %3936, %3919 ], [ %3698, %3791 ]
  %3812 = phi float [ %3937, %3919 ], [ %3699, %3791 ]
  %3813 = add nuw nsw i32 %3794, %3789
  %3814 = shl i32 %3813, 2
  %3815 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %3814, i32 undef)  ; BufferLoad(srv,index,wot)
  %3816 = extractvalue %dx.types.ResRet.i32 %3815, 0
  %3817 = shl i32 %3816, 8
  %3818 = or i32 %3817, 48
  %3819 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3818, i32 undef)  ; BufferLoad(srv,index,wot)
  %3820 = extractvalue %dx.types.ResRet.f32 %3819, 0
  %3821 = extractvalue %dx.types.ResRet.f32 %3819, 1
  %3822 = extractvalue %dx.types.ResRet.f32 %3819, 2
  %3823 = extractvalue %dx.types.ResRet.f32 %3819, 3
  %3824 = or i32 %3817, 64
  %3825 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3824, i32 undef)  ; BufferLoad(srv,index,wot)
  %3826 = extractvalue %dx.types.ResRet.i32 %3825, 0
  %3827 = extractvalue %dx.types.ResRet.i32 %3825, 1
  %3828 = or i32 %3817, 80
  %3829 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3828, i32 undef)  ; BufferLoad(srv,index,wot)
  %3830 = extractvalue %dx.types.ResRet.f32 %3829, 2
  %3831 = extractvalue %dx.types.ResRet.f32 %3829, 3
  %3832 = or i32 %3817, 96
  %3833 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3832, i32 undef)  ; BufferLoad(srv,index,wot)
  %3834 = extractvalue %dx.types.ResRet.f32 %3833, 0
  %3835 = extractvalue %dx.types.ResRet.f32 %3833, 1
  %3836 = extractvalue %dx.types.ResRet.f32 %3833, 2
  %3837 = extractvalue %dx.types.ResRet.f32 %3833, 3
  %3838 = or i32 %3817, 112
  %3839 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3838, i32 undef)  ; BufferLoad(srv,index,wot)
  %3840 = extractvalue %dx.types.ResRet.f32 %3839, 2
  %3841 = or i32 %3817, 128
  %3842 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3841, i32 undef)  ; BufferLoad(srv,index,wot)
  %3843 = extractvalue %dx.types.ResRet.f32 %3842, 0
  %3844 = extractvalue %dx.types.ResRet.f32 %3842, 1
  %3845 = extractvalue %dx.types.ResRet.f32 %3842, 2
  %3846 = extractvalue %dx.types.ResRet.f32 %3842, 3
  %3847 = or i32 %3817, 144
  %3848 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3847, i32 undef)  ; BufferLoad(srv,index,wot)
  %3849 = extractvalue %dx.types.ResRet.f32 %3848, 0
  %3850 = extractvalue %dx.types.ResRet.f32 %3848, 1
  %3851 = extractvalue %dx.types.ResRet.f32 %3848, 2
  %3852 = extractvalue %dx.types.ResRet.f32 %3848, 3
  %3853 = or i32 %3817, 160
  %3854 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3853, i32 undef)  ; BufferLoad(srv,index,wot)
  %3855 = extractvalue %dx.types.ResRet.f32 %3854, 0
  %3856 = extractvalue %dx.types.ResRet.f32 %3854, 1
  %3857 = extractvalue %dx.types.ResRet.f32 %3854, 2
  %3858 = extractvalue %dx.types.ResRet.f32 %3854, 3
  %3859 = or i32 %3817, 192
  %3860 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3859, i32 undef)  ; BufferLoad(srv,index,wot)
  %3861 = extractvalue %dx.types.ResRet.i32 %3860, 0
  %3862 = or i32 %3817, 208
  %3863 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3862, i32 undef)  ; BufferLoad(srv,index,wot)
  %3864 = extractvalue %dx.types.ResRet.f32 %3863, 0
  %3865 = or i32 %3817, 248
  %3866 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3865, i32 undef)  ; BufferLoad(srv,index,wot)
  %3867 = extractvalue %dx.types.ResRet.f32 %3866, 0
  %3868 = extractvalue %dx.types.ResRet.f32 %3866, 1
  %3869 = add nuw nsw i32 %3794, 1
  %3870 = bitcast float %3823 to i32
  %3871 = and i32 %3870, 512
  %3872 = icmp eq i32 %3871, 0
  %3873 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3817, i32 undef)  ; BufferLoad(srv,index,wot)
  %3874 = extractvalue %dx.types.ResRet.f32 %3873, 0
  %3875 = extractvalue %dx.types.ResRet.f32 %3873, 1
  %3876 = extractvalue %dx.types.ResRet.f32 %3873, 2
  %3877 = extractvalue %dx.types.ResRet.f32 %3873, 3
  %3878 = call float @dx.op.dot4.f32(i32 56, float %3874, float %3875, float %3876, float %3877, float %170, float %171, float %172, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3879 = or i32 %3817, 16
  %3880 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3879, i32 undef)  ; BufferLoad(srv,index,wot)
  %3881 = extractvalue %dx.types.ResRet.f32 %3880, 0
  %3882 = extractvalue %dx.types.ResRet.f32 %3880, 1
  %3883 = extractvalue %dx.types.ResRet.f32 %3880, 2
  %3884 = extractvalue %dx.types.ResRet.f32 %3880, 3
  %3885 = call float @dx.op.dot4.f32(i32 56, float %3881, float %3882, float %3883, float %3884, float %170, float %171, float %172, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3886 = or i32 %3817, 32
  %3887 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3886, i32 undef)  ; BufferLoad(srv,index,wot)
  %3888 = extractvalue %dx.types.ResRet.f32 %3887, 0
  %3889 = extractvalue %dx.types.ResRet.f32 %3887, 1
  %3890 = extractvalue %dx.types.ResRet.f32 %3887, 2
  %3891 = extractvalue %dx.types.ResRet.f32 %3887, 3
  %3892 = call float @dx.op.dot4.f32(i32 56, float %3888, float %3889, float %3890, float %3891, float %170, float %171, float %172, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3893 = call float @dx.op.unary.f32(i32 27, float %3878)  ; Round_ni(value)
  %3894 = call float @dx.op.unary.f32(i32 6, float %3893)  ; FAbs(value)
  %3895 = call float @dx.op.unary.f32(i32 27, float %3885)  ; Round_ni(value)
  %3896 = call float @dx.op.unary.f32(i32 6, float %3895)  ; FAbs(value)
  %3897 = call float @dx.op.unary.f32(i32 6, float %3892)  ; FAbs(value)
  %3898 = call float @dx.op.unary.f32(i32 27, float %3897)  ; Round_ni(value)
  %3899 = fadd fast float %3896, %3894
  %3900 = fadd fast float %3899, %3898
  %3901 = fcmp fast oeq float %3900, 0.000000e+00
  %3902 = call float @dx.op.dot4.f32(i32 56, float %3874, float %3875, float %3876, float %3877, float %3746, float %3747, float %3748, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3903 = call float @dx.op.dot4.f32(i32 56, float %3881, float %3882, float %3883, float %3884, float %3746, float %3747, float %3748, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3904 = call float @dx.op.dot4.f32(i32 56, float %3874, float %3875, float %3876, float %3877, float %3749, float %3750, float %3751, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3905 = call float @dx.op.dot4.f32(i32 56, float %3881, float %3882, float %3883, float %3884, float %3749, float %3750, float %3751, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3906 = fsub fast float %3902, %3878
  %3907 = fsub fast float %3904, %3878
  %3908 = fsub fast float %3903, %3885
  %3909 = fsub fast float %3905, %3885
  %3910 = call float @dx.op.dot3.f32(i32 55, float %3820, float %3821, float %3822, float %120, float %122, float %124)  ; Dot3(ax,ay,az,bx,by,bz)
  %3911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3912 = extractvalue %dx.types.CBufRet.f32 %3911, 2
  %3913 = fadd fast float %3912, %3910
  %3914 = call float @dx.op.unary.f32(i32 7, float %3913)  ; Saturate(value)
  %3915 = extractvalue %dx.types.CBufRet.f32 %3911, 0
  %3916 = fcmp fast ogt float %3914, %3915
  %3917 = and i1 %3901, %3916
  %3918 = and i1 %3872, %3917
  br i1 %3918, label %3939, label %3919

; <label>:3919                                    ; preds = %4202, %4020, %3939, %3793
  %3920 = phi float [ %3795, %3939 ], [ %4023, %4020 ], [ %4023, %4202 ], [ %3795, %3793 ]
  %3921 = phi float [ %3796, %3939 ], [ %3796, %4020 ], [ %4177, %4202 ], [ %3796, %3793 ]
  %3922 = phi float [ %3797, %3939 ], [ %3797, %4020 ], [ %4175, %4202 ], [ %3797, %3793 ]
  %3923 = phi float [ %3798, %3939 ], [ %3798, %4020 ], [ %4147, %4202 ], [ %3798, %3793 ]
  %3924 = phi float [ %3799, %3939 ], [ %3799, %4020 ], [ %4145, %4202 ], [ %3799, %3793 ]
  %3925 = phi float [ %3800, %3939 ], [ %3800, %4020 ], [ %4212, %4202 ], [ %3800, %3793 ]
  %3926 = phi float [ %3801, %3939 ], [ %3801, %4020 ], [ %4213, %4202 ], [ %3801, %3793 ]
  %3927 = phi float [ %3802, %3939 ], [ %3802, %4020 ], [ %4214, %4202 ], [ %3802, %3793 ]
  %3928 = phi float [ %3803, %3939 ], [ %3803, %4020 ], [ %4126, %4202 ], [ %3803, %3793 ]
  %3929 = phi float [ %3804, %3939 ], [ %3804, %4020 ], [ %4127, %4202 ], [ %3804, %3793 ]
  %3930 = phi float [ %3805, %3939 ], [ %3805, %4020 ], [ %4128, %4202 ], [ %3805, %3793 ]
  %3931 = phi float [ %3806, %3939 ], [ %3806, %4020 ], [ %4155, %4202 ], [ %3806, %3793 ]
  %3932 = phi float [ %3807, %3939 ], [ %3807, %4020 ], [ %4152, %4202 ], [ %3807, %3793 ]
  %3933 = phi float [ %3808, %3939 ], [ %3808, %4020 ], [ %4149, %4202 ], [ %3808, %3793 ]
  %3934 = phi float [ %3809, %3939 ], [ %3809, %4020 ], [ %4143, %4202 ], [ %3809, %3793 ]
  %3935 = phi float [ %3810, %3939 ], [ %3810, %4020 ], [ %4138, %4202 ], [ %3810, %3793 ]
  %3936 = phi float [ %3811, %3939 ], [ %3811, %4020 ], [ %4139, %4202 ], [ %3811, %3793 ]
  %3937 = phi float [ %3812, %3939 ], [ %3812, %4020 ], [ %4140, %4202 ], [ %3812, %3793 ]
  %3938 = icmp eq i32 %3869, %3792
  br i1 %3938, label %4215, label %3793

; <label>:3939                                    ; preds = %3793
  %3940 = extractvalue %dx.types.ResRet.f32 %3839, 3
  %3941 = extractvalue %dx.types.ResRet.f32 %3839, 1
  %3942 = extractvalue %dx.types.ResRet.f32 %3839, 0
  %3943 = extractvalue %dx.types.ResRet.f32 %3829, 1
  %3944 = extractvalue %dx.types.ResRet.f32 %3829, 0
  %3945 = extractvalue %dx.types.ResRet.i32 %3825, 3
  %3946 = extractvalue %dx.types.ResRet.i32 %3825, 2
  %3947 = add i32 %3945, 0
  %3948 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3947, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3949 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3950 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3948, %dx.types.Handle %3949, float %3878, float %3885, float undef, float undef, i32 0, i32 0, i32 undef, float %3906, float %3908, float undef, float %3907, float %3909, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3951 = extractvalue %dx.types.ResRet.f32 %3950, 0
  %3952 = fmul fast float %3951, %3944
  %3953 = fadd fast float %3952, %3943
  %3954 = call float @dx.op.unary.f32(i32 7, float %3953)  ; Saturate(value)
  %3955 = fmul fast float %3878, %3834
  %3956 = call float @dx.op.tertiary.f32(i32 46, float %3835, float %3885, float %3955)  ; FMad(a,b,c)
  %3957 = fadd fast float %3956, %3942
  %3958 = fmul fast float %3878, %3836
  %3959 = call float @dx.op.tertiary.f32(i32 46, float %3837, float %3885, float %3958)  ; FMad(a,b,c)
  %3960 = fadd fast float %3959, %3941
  %3961 = fmul fast float %3906, %3834
  %3962 = call float @dx.op.tertiary.f32(i32 46, float %3835, float %3908, float %3961)  ; FMad(a,b,c)
  %3963 = fmul fast float %3906, %3836
  %3964 = call float @dx.op.tertiary.f32(i32 46, float %3837, float %3908, float %3963)  ; FMad(a,b,c)
  %3965 = fmul fast float %3907, %3834
  %3966 = call float @dx.op.tertiary.f32(i32 46, float %3835, float %3909, float %3965)  ; FMad(a,b,c)
  %3967 = fmul fast float %3907, %3836
  %3968 = call float @dx.op.tertiary.f32(i32 46, float %3837, float %3909, float %3967)  ; FMad(a,b,c)
  %3969 = add i32 %3946, 0
  %3970 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3969, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3971 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3970, %dx.types.Handle %3949, float %3957, float %3960, float undef, float undef, i32 0, i32 0, i32 undef, float %3962, float %3964, float undef, float %3966, float %3968, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3972 = extractvalue %dx.types.ResRet.f32 %3971, 0
  %3973 = and i32 %3870, 1024
  %3974 = icmp ne i32 %3973, 0
  %3975 = fcmp fast ogt float %3972, 0x3FE0101020000000
  %3976 = uitofp i1 %3975 to float
  %3977 = select i1 %3974, float %3976, float %3972
  %3978 = and i32 %3870, 8192
  %3979 = icmp ne i32 %3978, 0
  %3980 = select i1 %3979, float %3940, float 1.000000e+00
  %3981 = fmul fast float %3878, 2.000000e+00
  %3982 = fadd fast float %3981, -1.000000e+00
  %3983 = call float @dx.op.unary.f32(i32 6, float %3982)  ; FAbs(value)
  %3984 = fmul fast float %3983, %3867
  %3985 = fsub fast float %3984, %3867
  %3986 = call float @dx.op.unary.f32(i32 7, float %3985)  ; Saturate(value)
  %3987 = fmul fast float %3885, 2.000000e+00
  %3988 = fadd fast float %3987, -1.000000e+00
  %3989 = call float @dx.op.unary.f32(i32 6, float %3988)  ; FAbs(value)
  %3990 = fmul fast float %3989, %3868
  %3991 = fsub fast float %3990, %3868
  %3992 = call float @dx.op.unary.f32(i32 7, float %3991)  ; Saturate(value)
  %3993 = fmul fast float %3897, %3830
  %3994 = fsub fast float %3993, %3830
  %3995 = call float @dx.op.unary.f32(i32 7, float %3994)  ; Saturate(value)
  %3996 = fmul fast float %3954, %3980
  %3997 = fmul fast float %3996, %3951
  %3998 = fmul fast float %3997, %3986
  %3999 = fmul fast float %3998, %3977
  %4000 = fmul fast float %3999, %3992
  %4001 = fmul fast float %4000, %3995
  %4002 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4003 = extractvalue %dx.types.CBufRet.f32 %4002, 1
  %4004 = extractvalue %dx.types.CBufRet.f32 %4002, 0
  %4005 = fsub fast float %3914, %4004
  %4006 = fmul fast float %4005, %4003
  %4007 = call float @dx.op.unary.f32(i32 7, float %4006)  ; Saturate(value)
  %4008 = fmul fast float %4001, %3831
  %4009 = fadd fast float %4001, %3831
  %4010 = fmul fast float %4009, %3840
  %4011 = fsub fast float %4010, %3840
  %4012 = call float @dx.op.unary.f32(i32 7, float %4011)  ; Saturate(value)
  %4013 = and i32 %3870, 128
  %4014 = icmp ne i32 %4013, 0
  %4015 = select i1 %4014, float %4012, float %4008
  %4016 = fmul fast float %4015, %4007
  %4017 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4018 = extractvalue %dx.types.CBufRet.f32 %4017, 0
  %4019 = fcmp fast ugt float %4016, %4018
  br i1 %4019, label %4020, label %3919

; <label>:4020                                    ; preds = %3939
  %4021 = select i1 %3979, float %4016, float 0.000000e+00
  %4022 = fadd fast float %4021, %3795
  %4023 = call float @dx.op.unary.f32(i32 7, float %4022)  ; Saturate(value)
  br i1 %3979, label %3919, label %4024

; <label>:4024                                    ; preds = %4020
  %4025 = and i32 %3870, 4
  %4026 = and i32 %3870, 8
  %4027 = add i32 %3826, 0
  %4028 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4027, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4029 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4030 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4028, %dx.types.Handle %4029, float %3957, float %3960, float undef, float undef, i32 0, i32 0, i32 undef, float %3962, float %3964, float undef, float %3966, float %3968, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4031 = extractvalue %dx.types.ResRet.f32 %4030, 0
  %4032 = extractvalue %dx.types.ResRet.f32 %4030, 1
  %4033 = extractvalue %dx.types.ResRet.f32 %4030, 2
  %4034 = extractvalue %dx.types.ResRet.f32 %4030, 3
  %4035 = bitcast float %3852 to i32
  %4036 = and i32 %4035, 255
  %4037 = uitofp i32 %4036 to float
  %4038 = lshr i32 %4035, 8
  %4039 = and i32 %4038, 255
  %4040 = uitofp i32 %4039 to float
  %4041 = fmul fast float %4034, %4037
  %4042 = fadd fast float %4041, %4040
  %4043 = fmul fast float %4042, 0x3F70101000000000
  %4044 = add i32 %3827, 0
  %4045 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4044, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4046 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4045, %dx.types.Handle %4029, float %3957, float %3960, float undef, float undef, i32 0, i32 0, i32 undef, float %3962, float %3964, float undef, float %3966, float %3968, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4047 = extractvalue %dx.types.ResRet.f32 %4046, 0
  %4048 = extractvalue %dx.types.ResRet.f32 %4046, 1
  %4049 = extractvalue %dx.types.ResRet.f32 %4046, 2
  %4050 = extractvalue %dx.types.ResRet.f32 %4046, 3
  %4051 = bitcast float %3846 to i32
  %4052 = and i32 %4051, 255
  %4053 = uitofp i32 %4052 to float
  %4054 = lshr i32 %4051, 8
  %4055 = and i32 %4054, 255
  %4056 = uitofp i32 %4055 to float
  %4057 = lshr i32 %4051, 16
  %4058 = and i32 %4057, 255
  %4059 = uitofp i32 %4058 to float
  %4060 = fmul fast float %4059, 0x3F70101000000000
  %4061 = fmul fast float %4047, %4053
  %4062 = fadd fast float %4061, %4056
  %4063 = fmul fast float %4062, 0x3F70101000000000
  %4064 = fadd fast float %4048, -5.000000e-01
  %4065 = fadd fast float %4050, -5.000000e-01
  %4066 = fmul fast float %4064, %4060
  %4067 = fmul fast float %4065, %4060
  %4068 = fadd fast float %4066, 5.000000e-01
  %4069 = fadd fast float %4067, 5.000000e-01
  %4070 = fmul fast float %4031, %3855
  %4071 = fmul fast float %4032, %3856
  %4072 = fmul fast float %4033, %3857
  %4073 = fmul fast float %4068, 2.000000e+00
  %4074 = fadd fast float %4073, -1.000000e+00
  %4075 = fmul fast float %4069, 2.000000e+00
  %4076 = fadd fast float %4075, -1.000000e+00
  %4077 = fadd fast float %4074, %4076
  %4078 = fmul fast float %4077, 5.000000e-01
  %4079 = fsub fast float %4074, %4076
  %4080 = fmul fast float %4079, 5.000000e-01
  %4081 = call float @dx.op.unary.f32(i32 6, float %4078)  ; FAbs(value)
  %4082 = fsub fast float 1.000000e+00, %4081
  %4083 = call float @dx.op.unary.f32(i32 6, float %4080)  ; FAbs(value)
  %4084 = fsub fast float %4082, %4083
  %4085 = call float @dx.op.dot3.f32(i32 55, float %4078, float %4080, float %4084, float %4078, float %4080, float %4084)  ; Dot3(ax,ay,az,bx,by,bz)
  %4086 = call float @dx.op.unary.f32(i32 25, float %4085)  ; Rsqrt(value)
  %4087 = fmul fast float %4078, %4086
  %4088 = fmul fast float %4080, %4086
  %4089 = fmul fast float %4086, %4084
  %4090 = fmul fast float %4089, %3820
  %4091 = fmul fast float %4089, %3821
  %4092 = fmul fast float %4089, %3822
  %4093 = fmul fast float %4087, %3843
  %4094 = fmul fast float %4087, %3844
  %4095 = fmul fast float %4087, %3845
  %4096 = fadd fast float %4093, %4090
  %4097 = fadd fast float %4094, %4091
  %4098 = fadd fast float %4095, %4092
  %4099 = fmul fast float %4088, %3849
  %4100 = fmul fast float %4088, %3850
  %4101 = fmul fast float %4088, %3851
  %4102 = fadd fast float %4096, %4099
  %4103 = fadd fast float %4097, %4100
  %4104 = fadd fast float %4098, %4101
  %4105 = call float @dx.op.dot3.f32(i32 55, float %4102, float %4103, float %4104, float %4102, float %4103, float %4104)  ; Dot3(ax,ay,az,bx,by,bz)
  %4106 = call float @dx.op.unary.f32(i32 25, float %4105)  ; Rsqrt(value)
  %4107 = fmul fast float %4102, %4106
  %4108 = fmul fast float %4103, %4106
  %4109 = fmul fast float %4104, %4106
  %4110 = icmp ne i32 %4026, 0
  %4111 = select i1 %4110, float 1.000000e+00, float 0.000000e+00
  %4112 = fmul fast float %4016, %4111
  %4113 = and i32 %3870, 1
  %4114 = icmp eq i32 %4113, 0
  br i1 %4114, label %4115, label %4119

; <label>:4115                                    ; preds = %4024
  %4116 = fsub fast float %4107, %3803
  %4117 = fsub fast float %4108, %3804
  %4118 = fsub fast float %4109, %3805
  br label %4119

; <label>:4119                                    ; preds = %4115, %4024
  %4120 = phi float [ %4116, %4115 ], [ %4107, %4024 ]
  %4121 = phi float [ %4117, %4115 ], [ %4108, %4024 ]
  %4122 = phi float [ %4118, %4115 ], [ %4109, %4024 ]
  %4123 = fmul float %4122, %4112
  %4124 = fmul float %4121, %4112
  %4125 = fmul float %4120, %4112
  %4126 = fadd fast float %4125, %3803
  %4127 = fadd fast float %4124, %3804
  %4128 = fadd fast float %4123, %3805
  %4129 = icmp ne i32 %4025, 0
  %4130 = select i1 %4129, float 1.000000e+00, float 0.000000e+00
  %4131 = fmul fast float %4016, %4130
  %4132 = fsub fast float %4070, %3810
  %4133 = fsub fast float %4071, %3811
  %4134 = fsub fast float %4072, %3812
  %4135 = fmul fast float %4132, %4131
  %4136 = fmul fast float %4133, %4131
  %4137 = fmul fast float %4134, %4131
  %4138 = fadd fast float %4135, %3810
  %4139 = fadd fast float %4136, %3811
  %4140 = fadd fast float %4137, %3812
  %4141 = fsub fast float %4043, %3809
  %4142 = fmul fast float %4141, %4131
  %4143 = fadd fast float %4142, %3809
  %4144 = fmul fast float %4131, %3799
  %4145 = fsub fast float %3799, %4144
  %4146 = fmul fast float %4131, %3798
  %4147 = fsub fast float %3798, %4146
  %4148 = fadd fast float %4016, %3808
  %4149 = call float @dx.op.unary.f32(i32 7, float %4148)  ; Saturate(value)
  %4150 = fsub fast float %4063, %3807
  %4151 = fmul fast float %4150, %4112
  %4152 = fadd fast float %4151, %3807
  %4153 = fsub fast float %4049, %3806
  %4154 = fmul fast float %4153, %4112
  %4155 = fadd fast float %4154, %3806
  %4156 = call float @dx.op.dot3.f32(i32 55, float %4070, float %4071, float %4072, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4158 = extractvalue %dx.types.CBufRet.f32 %4157, 0
  %4159 = extractvalue %dx.types.CBufRet.f32 %4157, 1
  %4160 = fmul fast float %4159, %4156
  %4161 = fadd fast float %4160, %4158
  %4162 = call float @dx.op.unary.f32(i32 7, float %4161)  ; Saturate(value)
  %4163 = bitcast float %3858 to i32
  %4164 = and i32 %4163, 65535
  %4165 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4164)  ; LegacyF16ToF32(value)
  %4166 = lshr i32 %4163, 16
  %4167 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4166)  ; LegacyF16ToF32(value)
  %4168 = fcmp fast oge float %4165, 0.000000e+00
  %4169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4170 = extractvalue %dx.types.CBufRet.f32 %4169, 0
  %4171 = select i1 %4168, float %4165, float %4170
  %4172 = fadd fast float %4171, %4167
  %4173 = fsub fast float %4162, %3797
  %4174 = fmul fast float %4173, %4016
  %4175 = fadd fast float %4174, %3797
  %4176 = fmul fast float %4172, %4016
  %4177 = call float @dx.op.binary.f32(i32 35, float %3796, float %4176)  ; FMax(a,b)
  %4178 = and i32 %3870, 16
  %4179 = icmp eq i32 %4178, 0
  br i1 %4179, label %4202, label %4180

; <label>:4180                                    ; preds = %4119
  %4181 = bitcast float %3864 to i32
  %4182 = add i32 %3861, 0
  %4183 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4182, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4184 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4183, %dx.types.Handle %4029, float %3957, float %3960, float undef, float undef, i32 0, i32 0, i32 undef, float %3962, float %3964, float undef, float %3966, float %3968, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4185 = extractvalue %dx.types.ResRet.f32 %4184, 0
  %4186 = extractvalue %dx.types.ResRet.f32 %4184, 1
  %4187 = extractvalue %dx.types.ResRet.f32 %4184, 2
  %4188 = and i32 %4181, 65535
  %4189 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4188)  ; LegacyF16ToF32(value)
  %4190 = fmul fast float %4185, %3855
  %4191 = fmul fast float %4186, %3856
  %4192 = fmul fast float %4187, %3857
  %4193 = and i32 %3870, 16384
  %4194 = icmp ne i32 %4193, 0
  %4195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4196 = extractvalue %dx.types.CBufRet.f32 %4195, 0
  %4197 = select i1 %4194, float %4196, float 1.000000e+00
  %4198 = fmul fast float %4197, %4189
  %4199 = fmul fast float %4190, %4198
  %4200 = fmul fast float %4191, %4198
  %4201 = fmul fast float %4192, %4198
  br label %4202

; <label>:4202                                    ; preds = %4180, %4119
  %4203 = phi float [ %4199, %4180 ], [ 0.000000e+00, %4119 ]
  %4204 = phi float [ %4200, %4180 ], [ 0.000000e+00, %4119 ]
  %4205 = phi float [ %4201, %4180 ], [ 0.000000e+00, %4119 ]
  %4206 = fsub fast float %4203, %3800
  %4207 = fsub fast float %4204, %3801
  %4208 = fsub fast float %4205, %3802
  %4209 = fmul fast float %4206, %4016
  %4210 = fmul fast float %4207, %4016
  %4211 = fmul fast float %4208, %4016
  %4212 = fadd fast float %4209, %3800
  %4213 = fadd fast float %4210, %3801
  %4214 = fadd fast float %4211, %3802
  br label %3919

; <label>:4215                                    ; preds = %3919
  br label %4216

; <label>:4216                                    ; preds = %4215, %3739
  %4217 = phi float [ 0.000000e+00, %3739 ], [ %3920, %4215 ]
  %4218 = phi float [ %3708, %3739 ], [ %3921, %4215 ]
  %4219 = phi float [ %3706, %3739 ], [ %3922, %4215 ]
  %4220 = phi float [ 0.000000e+00, %3739 ], [ %3923, %4215 ]
  %4221 = phi float [ 0.000000e+00, %3739 ], [ %3924, %4215 ]
  %4222 = phi float [ %3700, %3739 ], [ %3925, %4215 ]
  %4223 = phi float [ %3701, %3739 ], [ %3926, %4215 ]
  %4224 = phi float [ %3702, %3739 ], [ %3927, %4215 ]
  %4225 = phi float [ %3734, %3739 ], [ %3928, %4215 ]
  %4226 = phi float [ %3735, %3739 ], [ %3929, %4215 ]
  %4227 = phi float [ %3736, %3739 ], [ %3930, %4215 ]
  %4228 = phi float [ %3705, %3739 ], [ %3931, %4215 ]
  %4229 = phi float [ %3704, %3739 ], [ %3932, %4215 ]
  %4230 = phi float [ 0.000000e+00, %3739 ], [ %3933, %4215 ]
  %4231 = phi float [ %3703, %3739 ], [ %3934, %4215 ]
  %4232 = phi float [ %3697, %3739 ], [ %3935, %4215 ]
  %4233 = phi float [ %3698, %3739 ], [ %3936, %4215 ]
  %4234 = phi float [ %3699, %3739 ], [ %3937, %4215 ]
  %4235 = call float @dx.op.dot3.f32(i32 55, float %4225, float %4226, float %4227, float %4225, float %4226, float %4227)  ; Dot3(ax,ay,az,bx,by,bz)
  %4236 = call float @dx.op.unary.f32(i32 25, float %4235)  ; Rsqrt(value)
  %4237 = fmul fast float %4236, %4225
  %4238 = fmul fast float %4236, %4226
  %4239 = fmul fast float %4236, %4227
  %4240 = fadd fast float %4230, %1141
  %4241 = call float @dx.op.unary.f32(i32 7, float %4240)  ; Saturate(value)
  %4242 = call float @dx.op.dot3.f32(i32 55, float %4237, float %4238, float %4239, float %4237, float %4238, float %4239)  ; Dot3(ax,ay,az,bx,by,bz)
  %4243 = call float @dx.op.unary.f32(i32 25, float %4242)  ; Rsqrt(value)
  %4244 = fmul fast float %4243, %4237
  %4245 = fmul fast float %4243, %4238
  %4246 = fmul fast float %4243, %4239
  br label %4247

; <label>:4247                                    ; preds = %4216, %3694
  %4248 = phi float [ %4244, %4216 ], [ %3734, %3694 ]
  %4249 = phi float [ %4245, %4216 ], [ %3735, %3694 ]
  %4250 = phi float [ %4246, %4216 ], [ %3736, %3694 ]
  %4251 = phi float [ %4232, %4216 ], [ %3697, %3694 ]
  %4252 = phi float [ %4233, %4216 ], [ %3698, %3694 ]
  %4253 = phi float [ %4234, %4216 ], [ %3699, %3694 ]
  %4254 = phi float [ %4222, %4216 ], [ %3700, %3694 ]
  %4255 = phi float [ %4223, %4216 ], [ %3701, %3694 ]
  %4256 = phi float [ %4224, %4216 ], [ %3702, %3694 ]
  %4257 = phi float [ %4231, %4216 ], [ %3703, %3694 ]
  %4258 = phi float [ %4241, %4216 ], [ %1141, %3694 ]
  %4259 = phi float [ %4229, %4216 ], [ %3704, %3694 ]
  %4260 = phi float [ %4228, %4216 ], [ %3705, %3694 ]
  %4261 = phi float [ %4221, %4216 ], [ 0.000000e+00, %3694 ]
  %4262 = phi float [ %4220, %4216 ], [ 0.000000e+00, %3694 ]
  %4263 = phi float [ %4217, %4216 ], [ 0.000000e+00, %3694 ]
  %4264 = phi float [ %4218, %4216 ], [ %3708, %3694 ]
  %4265 = phi float [ %4219, %4216 ], [ %3706, %3694 ]
  %4266 = fadd fast float %4257, 0xBFB99999A0000000
  %4267 = call float @dx.op.unary.f32(i32 7, float %4266)  ; Saturate(value)
  %4268 = fmul fast float %4267, 0x3FF1C71C80000000
  %4269 = call float @dx.op.binary.f32(i32 36, float %4257, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4270 = fsub fast float 1.000000e+00, %4268
  %4271 = call float @dx.op.unary.f32(i32 7, float %4270)  ; Saturate(value)
  %4272 = fmul fast float %4271, %4251
  %4273 = fmul fast float %4271, %4252
  %4274 = fmul fast float %4271, %4253
  %4275 = call float @dx.op.unary.f32(i32 7, float %4272)  ; Saturate(value)
  %4276 = call float @dx.op.unary.f32(i32 7, float %4273)  ; Saturate(value)
  %4277 = call float @dx.op.unary.f32(i32 7, float %4274)  ; Saturate(value)
  %4278 = fmul fast float %4268, %4251
  %4279 = fmul fast float %4268, %4252
  %4280 = fmul fast float %4268, %4253
  %4281 = fadd fast float %4278, %4269
  %4282 = fadd fast float %4279, %4269
  %4283 = fadd fast float %4280, %4269
  %4284 = call float @dx.op.unary.f32(i32 7, float %4281)  ; Saturate(value)
  %4285 = call float @dx.op.unary.f32(i32 7, float %4282)  ; Saturate(value)
  %4286 = call float @dx.op.unary.f32(i32 7, float %4283)  ; Saturate(value)
  %4287 = call float @dx.op.unary.f32(i32 7, float %4259)  ; Saturate(value)
  %4288 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4289 = extractvalue %dx.types.CBufRet.i32 %4288, 3
  %4290 = and i32 %4289, 8
  %4291 = icmp ne i32 %4290, 0
  %4292 = call float @dx.op.binary.f32(i32 35, float %4275, float %4251)  ; FMax(a,b)
  %4293 = call float @dx.op.binary.f32(i32 35, float %4276, float %4251)  ; FMax(a,b)
  %4294 = call float @dx.op.binary.f32(i32 35, float %4277, float %4251)  ; FMax(a,b)
  %4295 = call float @dx.op.dot3.f32(i32 55, float %4275, float %4276, float %4277, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4296 = select i1 %231, float %4251, float %4275
  %4297 = select i1 %231, float %4295, float %4276
  %4298 = select i1 %231, float 1.000000e+00, float %4277
  %4299 = select i1 %4291, float %4292, float %4296
  %4300 = select i1 %4291, float %4293, float %4297
  %4301 = select i1 %4291, float %4294, float %4298
  %4302 = and i32 %207, 3
  %4303 = select i1 %201, i32 %4302, i32 0
  %4304 = icmp eq i32 %4303, 1
  br i1 %4304, label %4305, label %4381

; <label>:4305                                    ; preds = %4247
  %4306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4307 = extractvalue %dx.types.CBufRet.f32 %4306, 0
  %4308 = extractvalue %dx.types.CBufRet.f32 %4306, 1
  %4309 = fadd fast float %4307, %170
  %4310 = fadd fast float %4308, %171
  %4311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4312 = extractvalue %dx.types.CBufRet.f32 %4311, 0
  %4313 = extractvalue %dx.types.CBufRet.f32 %4311, 1
  %4314 = fsub fast float %4309, %4312
  %4315 = fsub fast float %4310, %4313
  %4316 = fmul fast float %4314, %4314
  %4317 = fmul fast float %4315, %4315
  %4318 = fadd fast float %4316, %4317
  %4319 = call float @dx.op.unary.f32(i32 24, float %4318)  ; Sqrt(value)
  %4320 = extractvalue %dx.types.CBufRet.f32 %4311, 2
  %4321 = fcmp fast olt float %4319, %4320
  br i1 %4321, label %4322, label %4375

; <label>:4322                                    ; preds = %4305
  %4323 = extractvalue %dx.types.CBufRet.f32 %4306, 2
  %4324 = fadd fast float %4323, %172
  %4325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4326 = extractvalue %dx.types.CBufRet.f32 %4325, 0
  %4327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4328 = extractvalue %dx.types.CBufRet.f32 %4327, 0
  %4329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4330 = extractvalue %dx.types.CBufRet.f32 %4329, 0
  %4331 = extractvalue %dx.types.CBufRet.f32 %4325, 1
  %4332 = extractvalue %dx.types.CBufRet.f32 %4327, 1
  %4333 = extractvalue %dx.types.CBufRet.f32 %4329, 1
  %4334 = extractvalue %dx.types.CBufRet.f32 %4325, 3
  %4335 = extractvalue %dx.types.CBufRet.f32 %4327, 3
  %4336 = extractvalue %dx.types.CBufRet.f32 %4329, 3
  %4337 = fadd fast float %4334, %4309
  %4338 = fadd fast float %4335, %4310
  %4339 = fadd fast float %4324, %4336
  %4340 = fmul fast float %4337, %4326
  %4341 = call float @dx.op.tertiary.f32(i32 46, float %4338, float %4328, float %4340)  ; FMad(a,b,c)
  %4342 = call float @dx.op.tertiary.f32(i32 46, float %4339, float %4330, float %4341)  ; FMad(a,b,c)
  %4343 = fmul fast float %4337, %4331
  %4344 = call float @dx.op.tertiary.f32(i32 46, float %4338, float %4332, float %4343)  ; FMad(a,b,c)
  %4345 = call float @dx.op.tertiary.f32(i32 46, float %4339, float %4333, float %4344)  ; FMad(a,b,c)
  %4346 = fsub fast float %4342, %4334
  %4347 = fsub fast float %4345, %4335
  %4348 = fsub fast float %4346, %4312
  %4349 = fadd fast float %4348, %4320
  %4350 = fsub fast float %4347, %4313
  %4351 = fadd fast float %4350, %4320
  %4352 = extractvalue %dx.types.CBufRet.f32 %4311, 3
  %4353 = fmul fast float %4349, %4352
  %4354 = fmul fast float %4351, %4352
  %4355 = call float @dx.op.unary.f32(i32 7, float %4353)  ; Saturate(value)
  %4356 = call float @dx.op.unary.f32(i32 7, float %4354)  ; Saturate(value)
  %4357 = fsub fast float 1.000000e+00, %4355
  %4358 = fsub fast float 1.000000e+00, %4356
  %4359 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %46, float %4357, float %4358, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4360 = extractvalue %dx.types.ResRet.f32 %4359, 0
  %4361 = fcmp fast ugt float %4360, 0.000000e+00
  br i1 %4361, label %4362, label %4375

; <label>:4362                                    ; preds = %4322
  %4363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4364 = extractvalue %dx.types.CBufRet.f32 %4363, 2
  %4365 = fmul fast float %4364, %4360
  %4366 = extractvalue %dx.types.CBufRet.f32 %4363, 3
  %4367 = fadd fast float %4366, %4365
  %4368 = extractvalue %dx.types.CBufRet.f32 %4329, 2
  %4369 = fadd fast float %4367, %4336
  %4370 = fmul fast float %4342, %4330
  %4371 = call float @dx.op.tertiary.f32(i32 46, float %4345, float %4333, float %4370)  ; FMad(a,b,c)
  %4372 = call float @dx.op.tertiary.f32(i32 46, float %4369, float %4368, float %4371)  ; FMad(a,b,c)
  %4373 = fsub fast float %4372, %4336
  %4374 = fsub fast float %4373, %4323
  br label %4375

; <label>:4375                                    ; preds = %4362, %4322, %4305
  %4376 = phi i1 [ true, %4362 ], [ false, %4322 ], [ false, %4305 ]
  %4377 = phi float [ %4374, %4362 ], [ -1.310720e+05, %4322 ], [ -1.310720e+05, %4305 ]
  %4378 = fsub fast float %4377, %172
  %4379 = call float @dx.op.unary.f32(i32 7, float %4378)  ; Saturate(value)
  %4380 = select i1 %4376, float %4379, float 1.000000e+00
  br label %4381

; <label>:4381                                    ; preds = %4375, %4247
  %4382 = phi float [ %4380, %4375 ], [ 0.000000e+00, %4247 ]
  %4383 = icmp eq i32 %4303, 3
  %4384 = select i1 %4383, float 1.000000e+00, float %4382
  %4385 = call float @dx.op.binary.f32(i32 35, float %4263, float %4384)  ; FMax(a,b)
  %4386 = fcmp fast olt float %4384, 1.000000e+00
  br i1 %4386, label %4387, label %5511

; <label>:4387                                    ; preds = %4381
  %4388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4389 = extractvalue %dx.types.CBufRet.f32 %4388, 0
  %4390 = extractvalue %dx.types.CBufRet.f32 %4388, 1
  %4391 = extractvalue %dx.types.CBufRet.f32 %4388, 2
  %4392 = fadd fast float %4389, %170
  %4393 = fadd fast float %4390, %171
  %4394 = fadd fast float %4391, %172
  %4395 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 335)  ; CBufferLoadLegacy(handle,regIndex)
  %4396 = extractvalue %dx.types.CBufRet.i32 %4395, 2
  %4397 = icmp ult i32 %4396, 4
  br i1 %4397, label %4398, label %4449

; <label>:4398                                    ; preds = %4387
  br label %4399

; <label>:4399                                    ; preds = %4444, %4398
  %4400 = phi i32 [ %4445, %4444 ], [ %4396, %4398 ]
  %4401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 342)  ; CBufferLoadLegacy(handle,regIndex)
  %4402 = extractvalue %dx.types.CBufRet.f32 %4401, 0
  %4403 = extractvalue %dx.types.CBufRet.f32 %4401, 1
  %4404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 339)  ; CBufferLoadLegacy(handle,regIndex)
  %4405 = extractvalue %dx.types.CBufRet.f32 %4404, 0
  %4406 = fmul fast float %4405, 5.000000e-01
  %4407 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 340)  ; CBufferLoadLegacy(handle,regIndex)
  %4408 = extractvalue %dx.types.CBufRet.f32 %4407, 0
  %4409 = extractvalue %dx.types.CBufRet.f32 %4407, 1
  %4410 = extractvalue %dx.types.CBufRet.f32 %4407, 2
  %4411 = extractvalue %dx.types.CBufRet.f32 %4407, 3
  %4412 = getelementptr inbounds [4 x float], [4 x float]* %58, i32 0, i32 0
  store float %4408, float* %4412, align 4
  %4413 = getelementptr inbounds [4 x float], [4 x float]* %58, i32 0, i32 1
  store float %4409, float* %4413, align 4
  %4414 = getelementptr inbounds [4 x float], [4 x float]* %58, i32 0, i32 2
  store float %4410, float* %4414, align 4
  %4415 = getelementptr inbounds [4 x float], [4 x float]* %58, i32 0, i32 3
  store float %4411, float* %4415, align 4
  %4416 = getelementptr inbounds [4 x float], [4 x float]* %58, i32 0, i32 %4400
  %4417 = load float, float* %4416, align 4, !tbaa !91
  %4418 = fmul fast float %4406, %4417
  %4419 = fsub fast float %4392, %4402
  %4420 = fadd fast float %4419, %4418
  %4421 = fsub fast float %4393, %4403
  %4422 = fadd fast float %4421, %4418
  %4423 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 341)  ; CBufferLoadLegacy(handle,regIndex)
  %4424 = extractvalue %dx.types.CBufRet.f32 %4423, 0
  %4425 = extractvalue %dx.types.CBufRet.f32 %4423, 1
  %4426 = extractvalue %dx.types.CBufRet.f32 %4423, 2
  %4427 = extractvalue %dx.types.CBufRet.f32 %4423, 3
  %4428 = getelementptr inbounds [4 x float], [4 x float]* %57, i32 0, i32 0
  store float %4424, float* %4428, align 4
  %4429 = getelementptr inbounds [4 x float], [4 x float]* %57, i32 0, i32 1
  store float %4425, float* %4429, align 4
  %4430 = getelementptr inbounds [4 x float], [4 x float]* %57, i32 0, i32 2
  store float %4426, float* %4430, align 4
  %4431 = getelementptr inbounds [4 x float], [4 x float]* %57, i32 0, i32 3
  store float %4427, float* %4431, align 4
  %4432 = getelementptr inbounds [4 x float], [4 x float]* %57, i32 0, i32 %4400
  %4433 = load float, float* %4432, align 4, !tbaa !91
  %4434 = fmul fast float %4420, %4433
  %4435 = fmul fast float %4422, %4433
  %4436 = extractvalue %dx.types.CBufRet.f32 %4404, 1
  %4437 = fmul fast float %4434, %4436
  %4438 = fmul fast float %4435, %4436
  %4439 = call float @dx.op.unary.f32(i32 7, float %4437)  ; Saturate(value)
  %4440 = call float @dx.op.unary.f32(i32 7, float %4438)  ; Saturate(value)
  %4441 = fcmp fast oeq float %4439, %4437
  %4442 = fcmp fast oeq float %4440, %4438
  %4443 = and i1 %4441, %4442
  br i1 %4443, label %4447, label %4444

; <label>:4444                                    ; preds = %4399
  %4445 = add nuw nsw i32 %4400, 1
  %4446 = icmp ult i32 %4445, 4
  br i1 %4446, label %4399, label %4447

; <label>:4447                                    ; preds = %4444, %4399
  %4448 = phi i32 [ %4445, %4444 ], [ %4400, %4399 ]
  br label %4449

; <label>:4449                                    ; preds = %4447, %4387
  %4450 = phi float [ 0.000000e+00, %4387 ], [ %4437, %4447 ]
  %4451 = phi float [ 0.000000e+00, %4387 ], [ %4438, %4447 ]
  %4452 = phi i32 [ %4396, %4387 ], [ %4448, %4447 ]
  %4453 = extractvalue %dx.types.CBufRet.i32 %4395, 1
  %4454 = uitofp i32 %4452 to float
  %4455 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %25, %dx.types.Handle %46, float %4450, float %4451, float %4454, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4456 = extractvalue %dx.types.ResRet.f32 %4455, 0
  %4457 = extractvalue %dx.types.ResRet.f32 %4455, 1
  %4458 = extractvalue %dx.types.ResRet.f32 %4455, 2
  %4459 = extractvalue %dx.types.ResRet.f32 %4455, 3
  %4460 = call float @dx.op.binary.f32(i32 35, float %4457, float %4458)  ; FMax(a,b)
  %4461 = call float @dx.op.binary.f32(i32 35, float %4456, float %4460)  ; FMax(a,b)
  %4462 = call float @dx.op.binary.f32(i32 35, float %4461, float %4459)  ; FMax(a,b)
  %4463 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 335)  ; CBufferLoadLegacy(handle,regIndex)
  %4464 = extractvalue %dx.types.CBufRet.f32 %4463, 0
  %4465 = fadd fast float %4464, %4462
  %4466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 339)  ; CBufferLoadLegacy(handle,regIndex)
  %4467 = extractvalue %dx.types.CBufRet.f32 %4466, 3
  %4468 = fadd fast float %4465, %4467
  %4469 = fcmp fast ogt float %4394, %4468
  %4470 = icmp uge i32 %4452, %4453
  %4471 = or i1 %4470, %4469
  %4472 = zext i1 %4471 to i32
  %4473 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4474 = extractvalue %dx.types.CBufRet.i32 %4473, 0
  %4475 = lshr i32 %4474, 21
  %4476 = and i32 %4475, 1
  %4477 = xor i32 %4476, 1
  %4478 = or i32 %4472, %4477
  %4479 = and i32 %4474, 1
  %4480 = xor i32 %4479, 1
  %4481 = or i32 %4478, %4480
  %4482 = icmp eq i32 %4481, 0
  br i1 %4482, label %4483, label %5327, !dx.controlflow.hints !95

; <label>:4483                                    ; preds = %4449
  %4484 = fmul fast float %4450, 2.000000e+00
  %4485 = fmul fast float %4451, 2.000000e+00
  %4486 = fadd fast float %4484, -1.000000e+00
  %4487 = fadd fast float %4485, -1.000000e+00
  %4488 = call float @dx.op.unary.f32(i32 6, float %4486)  ; FAbs(value)
  %4489 = call float @dx.op.unary.f32(i32 6, float %4487)  ; FAbs(value)
  %4490 = extractvalue %dx.types.CBufRet.f32 %4466, 1
  %4491 = fmul fast float %4490, 2.000000e+00
  %4492 = fsub fast float 1.000000e+00, %4491
  %4493 = fcmp fast oge float %4488, %4492
  %4494 = fcmp fast oge float %4489, %4492
  %4495 = or i1 %4493, %4494
  %4496 = add i32 %4452, 1
  %4497 = icmp ult i32 %4496, %4453
  %4498 = and i1 %4497, %4495
  %4499 = extractvalue %dx.types.CBufRet.f32 %4466, 0
  %4500 = fptosi float %4499 to i32
  %4501 = sitofp i32 %4500 to float
  %4502 = fmul fast float %4501, %4450
  %4503 = fmul fast float %4501, %4451
  %4504 = fadd fast float %4502, -5.000000e-01
  %4505 = fadd fast float %4503, -5.000000e-01
  %4506 = fptosi float %4504 to i32
  %4507 = fptosi float %4505 to i32
  %4508 = fadd fast float %4502, 5.000000e-01
  %4509 = fadd fast float %4503, 5.000000e-01
  %4510 = call float @dx.op.unary.f32(i32 22, float %4508)  ; Frc(value)
  %4511 = call float @dx.op.unary.f32(i32 22, float %4509)  ; Frc(value)
  %4512 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 340)  ; CBufferLoadLegacy(handle,regIndex)
  %4513 = extractvalue %dx.types.CBufRet.f32 %4512, 0
  %4514 = extractvalue %dx.types.CBufRet.f32 %4512, 1
  %4515 = extractvalue %dx.types.CBufRet.f32 %4512, 2
  %4516 = extractvalue %dx.types.CBufRet.f32 %4512, 3
  %4517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 336)  ; CBufferLoadLegacy(handle,regIndex)
  %4518 = extractvalue %dx.types.CBufRet.f32 %4517, 2
  %4519 = fadd fast float %4510, -5.000000e-01
  %4520 = fadd fast float %4511, -5.000000e-01
  %4521 = add i32 %4500, -1
  %4522 = call i32 @dx.op.binary.i32(i32 37, i32 %4506, i32 0)  ; IMax(a,b)
  %4523 = call i32 @dx.op.binary.i32(i32 37, i32 %4507, i32 0)  ; IMax(a,b)
  %4524 = call i32 @dx.op.binary.i32(i32 38, i32 %4522, i32 %4521)  ; IMin(a,b)
  %4525 = call i32 @dx.op.binary.i32(i32 38, i32 %4523, i32 %4521)  ; IMin(a,b)
  %4526 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 337)  ; CBufferLoadLegacy(handle,regIndex)
  %4527 = extractvalue %dx.types.CBufRet.i32 %4526, 0
  %4528 = extractvalue %dx.types.CBufRet.i32 %4526, 1
  %4529 = sub nsw i32 3, %4452
  %4530 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 338)  ; CBufferLoadLegacy(handle,regIndex)
  %4531 = extractvalue %dx.types.CBufRet.i32 %4530, 0
  %4532 = extractvalue %dx.types.CBufRet.i32 %4530, 1
  %4533 = extractvalue %dx.types.CBufRet.i32 %4530, 2
  %4534 = extractvalue %dx.types.CBufRet.i32 %4530, 3
  %4535 = add i32 %4524, 536870912
  %4536 = add i32 %4525, 536870912
  %4537 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 336)  ; CBufferLoadLegacy(handle,regIndex)
  %4538 = extractvalue %dx.types.CBufRet.i32 %4537, 3
  %4539 = add i32 %4506, 1
  %4540 = call i32 @dx.op.binary.i32(i32 37, i32 %4539, i32 0)  ; IMax(a,b)
  %4541 = call i32 @dx.op.binary.i32(i32 38, i32 %4540, i32 %4521)  ; IMin(a,b)
  %4542 = add i32 %4541, 536870912
  %4543 = add i32 %4507, 1
  %4544 = call i32 @dx.op.binary.i32(i32 37, i32 %4543, i32 0)  ; IMax(a,b)
  %4545 = call i32 @dx.op.binary.i32(i32 38, i32 %4544, i32 %4521)  ; IMin(a,b)
  %4546 = add i32 %4545, 536870912
  br i1 %4498, label %4791, label %4547, !dx.controlflow.hints !96

; <label>:4547                                    ; preds = %4483
  %4548 = getelementptr inbounds [4 x float], [4 x float]* %51, i32 0, i32 0
  store float %4513, float* %4548, align 4
  %4549 = getelementptr inbounds [4 x float], [4 x float]* %51, i32 0, i32 1
  store float %4514, float* %4549, align 4
  %4550 = getelementptr inbounds [4 x float], [4 x float]* %51, i32 0, i32 2
  store float %4515, float* %4550, align 4
  %4551 = getelementptr inbounds [4 x float], [4 x float]* %51, i32 0, i32 3
  store float %4516, float* %4551, align 4
  %4552 = getelementptr inbounds [4 x float], [4 x float]* %51, i32 0, i32 %4452
  %4553 = load float, float* %4552, align 4, !tbaa !91
  %4554 = fmul fast float %4518, %4553
  %4555 = call float @dx.op.binary.f32(i32 35, float 1.000000e+00, float %4554)  ; FMax(a,b)
  %4556 = fmul fast float %4555, %4519
  %4557 = fmul fast float %4555, %4520
  %4558 = call float @dx.op.binary.f32(i32 35, float %4556, float -5.000000e-01)  ; FMax(a,b)
  %4559 = call float @dx.op.binary.f32(i32 35, float %4557, float -5.000000e-01)  ; FMax(a,b)
  %4560 = call float @dx.op.binary.f32(i32 36, float %4558, float 5.000000e-01)  ; FMin(a,b)
  %4561 = call float @dx.op.binary.f32(i32 36, float %4559, float 5.000000e-01)  ; FMin(a,b)
  %4562 = fadd fast float %4560, 5.000000e-01
  %4563 = fadd fast float %4561, 5.000000e-01
  %4564 = getelementptr inbounds [4 x i32], [4 x i32]* %52, i32 0, i32 0
  store i32 %4531, i32* %4564, align 4
  %4565 = getelementptr inbounds [4 x i32], [4 x i32]* %52, i32 0, i32 1
  store i32 %4532, i32* %4565, align 4
  %4566 = getelementptr inbounds [4 x i32], [4 x i32]* %52, i32 0, i32 2
  store i32 %4533, i32* %4566, align 4
  %4567 = getelementptr inbounds [4 x i32], [4 x i32]* %52, i32 0, i32 3
  store i32 %4534, i32* %4567, align 4
  %4568 = getelementptr inbounds [4 x i32], [4 x i32]* %52, i32 0, i32 %4529
  %4569 = load i32, i32* %4568, align 4, !tbaa !97
  %4570 = mul i32 %4569, %4527
  %4571 = mul i32 %4569, %4528
  %4572 = add i32 %4535, %4570
  %4573 = add i32 %4536, %4571
  %4574 = and i32 %4572, %4538
  %4575 = and i32 %4573, %4538
  %4576 = fsub fast float %4394, %4464
  %4577 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %4574, i32 %4575, i32 %4452, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4578 = extractvalue %dx.types.ResRet.i32 %4577, 0
  %4579 = extractvalue %dx.types.ResRet.i32 %4577, 1
  %4580 = extractvalue %dx.types.ResRet.i32 %4577, 2
  %4581 = extractvalue %dx.types.ResRet.i32 %4577, 3
  %4582 = and i32 %4578, 65535
  %4583 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4582)  ; LegacyF16ToF32(value)
  %4584 = lshr i32 %4578, 16
  %4585 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4584)  ; LegacyF16ToF32(value)
  %4586 = and i32 %4579, 65535
  %4587 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4586)  ; LegacyF16ToF32(value)
  %4588 = lshr i32 %4579, 16
  %4589 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4588)  ; LegacyF16ToF32(value)
  %4590 = and i32 %4580, 65535
  %4591 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4590)  ; LegacyF16ToF32(value)
  %4592 = lshr i32 %4580, 16
  %4593 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4592)  ; LegacyF16ToF32(value)
  %4594 = and i32 %4581, 65535
  %4595 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4594)  ; LegacyF16ToF32(value)
  %4596 = lshr i32 %4581, 16
  %4597 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4596)  ; LegacyF16ToF32(value)
  %4598 = fsub fast float %4576, %4585
  %4599 = call float @dx.op.binary.f32(i32 35, float %4598, float 0.000000e+00)  ; FMax(a,b)
  %4600 = extractvalue %dx.types.CBufRet.f32 %4466, 2
  %4601 = fmul fast float %4600, %4599
  %4602 = fsub fast float %4583, %4601
  %4603 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4602)  ; FMax(a,b)
  %4604 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4603)  ; FMax(a,b)
  %4605 = fsub fast float %4576, %4589
  %4606 = call float @dx.op.binary.f32(i32 35, float %4605, float 0.000000e+00)  ; FMax(a,b)
  %4607 = fmul fast float %4600, %4606
  %4608 = fsub fast float %4587, %4607
  %4609 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4608)  ; FMax(a,b)
  %4610 = call float @dx.op.binary.f32(i32 35, float %4604, float %4609)  ; FMax(a,b)
  %4611 = fsub fast float %4576, %4593
  %4612 = call float @dx.op.binary.f32(i32 35, float %4611, float 0.000000e+00)  ; FMax(a,b)
  %4613 = fmul fast float %4600, %4612
  %4614 = fsub fast float %4591, %4613
  %4615 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4614)  ; FMax(a,b)
  %4616 = call float @dx.op.binary.f32(i32 35, float %4610, float %4615)  ; FMax(a,b)
  %4617 = fsub fast float %4576, %4597
  %4618 = call float @dx.op.binary.f32(i32 35, float %4617, float 0.000000e+00)  ; FMax(a,b)
  %4619 = fmul fast float %4600, %4618
  %4620 = fsub fast float %4595, %4619
  %4621 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4620)  ; FMax(a,b)
  %4622 = call float @dx.op.binary.f32(i32 35, float %4616, float %4621)  ; FMax(a,b)
  %4623 = fsub fast float 5.000000e-01, %4560
  %4624 = fsub fast float 5.000000e-01, %4561
  %4625 = fmul fast float %4624, %4623
  %4626 = fmul fast float %4625, %4622
  store i32 %4531, i32* %4564, align 4
  store i32 %4532, i32* %4565, align 4
  store i32 %4533, i32* %4566, align 4
  store i32 %4534, i32* %4567, align 4
  %4627 = load i32, i32* %4568, align 4, !tbaa !97
  %4628 = mul i32 %4627, %4527
  %4629 = mul i32 %4627, %4528
  %4630 = add i32 %4542, %4628
  %4631 = add i32 %4536, %4629
  %4632 = and i32 %4630, %4538
  %4633 = and i32 %4631, %4538
  %4634 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %4632, i32 %4633, i32 %4452, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4635 = extractvalue %dx.types.ResRet.i32 %4634, 0
  %4636 = extractvalue %dx.types.ResRet.i32 %4634, 1
  %4637 = extractvalue %dx.types.ResRet.i32 %4634, 2
  %4638 = extractvalue %dx.types.ResRet.i32 %4634, 3
  %4639 = and i32 %4635, 65535
  %4640 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4639)  ; LegacyF16ToF32(value)
  %4641 = lshr i32 %4635, 16
  %4642 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4641)  ; LegacyF16ToF32(value)
  %4643 = and i32 %4636, 65535
  %4644 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4643)  ; LegacyF16ToF32(value)
  %4645 = lshr i32 %4636, 16
  %4646 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4645)  ; LegacyF16ToF32(value)
  %4647 = and i32 %4637, 65535
  %4648 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4647)  ; LegacyF16ToF32(value)
  %4649 = lshr i32 %4637, 16
  %4650 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4649)  ; LegacyF16ToF32(value)
  %4651 = and i32 %4638, 65535
  %4652 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4651)  ; LegacyF16ToF32(value)
  %4653 = lshr i32 %4638, 16
  %4654 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4653)  ; LegacyF16ToF32(value)
  %4655 = fsub fast float %4576, %4642
  %4656 = call float @dx.op.binary.f32(i32 35, float %4655, float 0.000000e+00)  ; FMax(a,b)
  %4657 = fmul fast float %4600, %4656
  %4658 = fsub fast float %4640, %4657
  %4659 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4658)  ; FMax(a,b)
  %4660 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4659)  ; FMax(a,b)
  %4661 = fsub fast float %4576, %4646
  %4662 = call float @dx.op.binary.f32(i32 35, float %4661, float 0.000000e+00)  ; FMax(a,b)
  %4663 = fmul fast float %4600, %4662
  %4664 = fsub fast float %4644, %4663
  %4665 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4664)  ; FMax(a,b)
  %4666 = call float @dx.op.binary.f32(i32 35, float %4660, float %4665)  ; FMax(a,b)
  %4667 = fsub fast float %4576, %4650
  %4668 = call float @dx.op.binary.f32(i32 35, float %4667, float 0.000000e+00)  ; FMax(a,b)
  %4669 = fmul fast float %4600, %4668
  %4670 = fsub fast float %4648, %4669
  %4671 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4670)  ; FMax(a,b)
  %4672 = call float @dx.op.binary.f32(i32 35, float %4666, float %4671)  ; FMax(a,b)
  %4673 = fsub fast float %4576, %4654
  %4674 = call float @dx.op.binary.f32(i32 35, float %4673, float 0.000000e+00)  ; FMax(a,b)
  %4675 = fmul fast float %4600, %4674
  %4676 = fsub fast float %4652, %4675
  %4677 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4676)  ; FMax(a,b)
  %4678 = call float @dx.op.binary.f32(i32 35, float %4672, float %4677)  ; FMax(a,b)
  %4679 = fmul fast float %4624, %4562
  %4680 = fmul fast float %4679, %4678
  store i32 %4531, i32* %4564, align 4
  store i32 %4532, i32* %4565, align 4
  store i32 %4533, i32* %4566, align 4
  store i32 %4534, i32* %4567, align 4
  %4681 = load i32, i32* %4568, align 4, !tbaa !97
  %4682 = mul i32 %4681, %4527
  %4683 = mul i32 %4681, %4528
  %4684 = add i32 %4535, %4682
  %4685 = add i32 %4546, %4683
  %4686 = and i32 %4684, %4538
  %4687 = and i32 %4685, %4538
  %4688 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %4686, i32 %4687, i32 %4452, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4689 = extractvalue %dx.types.ResRet.i32 %4688, 0
  %4690 = extractvalue %dx.types.ResRet.i32 %4688, 1
  %4691 = extractvalue %dx.types.ResRet.i32 %4688, 2
  %4692 = extractvalue %dx.types.ResRet.i32 %4688, 3
  %4693 = and i32 %4689, 65535
  %4694 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4693)  ; LegacyF16ToF32(value)
  %4695 = lshr i32 %4689, 16
  %4696 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4695)  ; LegacyF16ToF32(value)
  %4697 = and i32 %4690, 65535
  %4698 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4697)  ; LegacyF16ToF32(value)
  %4699 = lshr i32 %4690, 16
  %4700 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4699)  ; LegacyF16ToF32(value)
  %4701 = and i32 %4691, 65535
  %4702 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4701)  ; LegacyF16ToF32(value)
  %4703 = lshr i32 %4691, 16
  %4704 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4703)  ; LegacyF16ToF32(value)
  %4705 = and i32 %4692, 65535
  %4706 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4705)  ; LegacyF16ToF32(value)
  %4707 = lshr i32 %4692, 16
  %4708 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4707)  ; LegacyF16ToF32(value)
  %4709 = fsub fast float %4576, %4696
  %4710 = call float @dx.op.binary.f32(i32 35, float %4709, float 0.000000e+00)  ; FMax(a,b)
  %4711 = fmul fast float %4600, %4710
  %4712 = fsub fast float %4694, %4711
  %4713 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4712)  ; FMax(a,b)
  %4714 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4713)  ; FMax(a,b)
  %4715 = fsub fast float %4576, %4700
  %4716 = call float @dx.op.binary.f32(i32 35, float %4715, float 0.000000e+00)  ; FMax(a,b)
  %4717 = fmul fast float %4600, %4716
  %4718 = fsub fast float %4698, %4717
  %4719 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4718)  ; FMax(a,b)
  %4720 = call float @dx.op.binary.f32(i32 35, float %4714, float %4719)  ; FMax(a,b)
  %4721 = fsub fast float %4576, %4704
  %4722 = call float @dx.op.binary.f32(i32 35, float %4721, float 0.000000e+00)  ; FMax(a,b)
  %4723 = fmul fast float %4600, %4722
  %4724 = fsub fast float %4702, %4723
  %4725 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4724)  ; FMax(a,b)
  %4726 = call float @dx.op.binary.f32(i32 35, float %4720, float %4725)  ; FMax(a,b)
  %4727 = fsub fast float %4576, %4708
  %4728 = call float @dx.op.binary.f32(i32 35, float %4727, float 0.000000e+00)  ; FMax(a,b)
  %4729 = fmul fast float %4600, %4728
  %4730 = fsub fast float %4706, %4729
  %4731 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4730)  ; FMax(a,b)
  %4732 = call float @dx.op.binary.f32(i32 35, float %4726, float %4731)  ; FMax(a,b)
  %4733 = fmul fast float %4732, %4623
  store i32 %4531, i32* %4564, align 4
  store i32 %4532, i32* %4565, align 4
  store i32 %4533, i32* %4566, align 4
  store i32 %4534, i32* %4567, align 4
  %4734 = load i32, i32* %4568, align 4, !tbaa !97
  %4735 = mul i32 %4734, %4527
  %4736 = mul i32 %4734, %4528
  %4737 = add i32 %4542, %4735
  %4738 = add i32 %4546, %4736
  %4739 = and i32 %4737, %4538
  %4740 = and i32 %4738, %4538
  %4741 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %4739, i32 %4740, i32 %4452, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4742 = extractvalue %dx.types.ResRet.i32 %4741, 0
  %4743 = extractvalue %dx.types.ResRet.i32 %4741, 1
  %4744 = extractvalue %dx.types.ResRet.i32 %4741, 2
  %4745 = extractvalue %dx.types.ResRet.i32 %4741, 3
  %4746 = and i32 %4742, 65535
  %4747 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4746)  ; LegacyF16ToF32(value)
  %4748 = lshr i32 %4742, 16
  %4749 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4748)  ; LegacyF16ToF32(value)
  %4750 = and i32 %4743, 65535
  %4751 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4750)  ; LegacyF16ToF32(value)
  %4752 = lshr i32 %4743, 16
  %4753 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4752)  ; LegacyF16ToF32(value)
  %4754 = and i32 %4744, 65535
  %4755 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4754)  ; LegacyF16ToF32(value)
  %4756 = lshr i32 %4744, 16
  %4757 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4756)  ; LegacyF16ToF32(value)
  %4758 = and i32 %4745, 65535
  %4759 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4758)  ; LegacyF16ToF32(value)
  %4760 = lshr i32 %4745, 16
  %4761 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4760)  ; LegacyF16ToF32(value)
  %4762 = fsub fast float %4576, %4749
  %4763 = call float @dx.op.binary.f32(i32 35, float %4762, float 0.000000e+00)  ; FMax(a,b)
  %4764 = fmul fast float %4600, %4763
  %4765 = fsub fast float %4747, %4764
  %4766 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4765)  ; FMax(a,b)
  %4767 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4766)  ; FMax(a,b)
  %4768 = fsub fast float %4576, %4753
  %4769 = call float @dx.op.binary.f32(i32 35, float %4768, float 0.000000e+00)  ; FMax(a,b)
  %4770 = fmul fast float %4600, %4769
  %4771 = fsub fast float %4751, %4770
  %4772 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4771)  ; FMax(a,b)
  %4773 = call float @dx.op.binary.f32(i32 35, float %4767, float %4772)  ; FMax(a,b)
  %4774 = fsub fast float %4576, %4757
  %4775 = call float @dx.op.binary.f32(i32 35, float %4774, float 0.000000e+00)  ; FMax(a,b)
  %4776 = fmul fast float %4600, %4775
  %4777 = fsub fast float %4755, %4776
  %4778 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4777)  ; FMax(a,b)
  %4779 = call float @dx.op.binary.f32(i32 35, float %4773, float %4778)  ; FMax(a,b)
  %4780 = fsub fast float %4576, %4761
  %4781 = call float @dx.op.binary.f32(i32 35, float %4780, float 0.000000e+00)  ; FMax(a,b)
  %4782 = fmul fast float %4600, %4781
  %4783 = fsub fast float %4759, %4782
  %4784 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4783)  ; FMax(a,b)
  %4785 = call float @dx.op.binary.f32(i32 35, float %4779, float %4784)  ; FMax(a,b)
  %4786 = fmul fast float %4785, %4562
  %4787 = fadd fast float %4786, %4733
  %4788 = fmul fast float %4787, %4563
  %4789 = fadd fast float %4680, %4626
  %4790 = fadd fast float %4789, %4788
  br label %5327

; <label>:4791                                    ; preds = %4483
  %4792 = getelementptr inbounds [4 x float], [4 x float]* %53, i32 0, i32 0
  store float %4513, float* %4792, align 4
  %4793 = getelementptr inbounds [4 x float], [4 x float]* %53, i32 0, i32 1
  store float %4514, float* %4793, align 4
  %4794 = getelementptr inbounds [4 x float], [4 x float]* %53, i32 0, i32 2
  store float %4515, float* %4794, align 4
  %4795 = getelementptr inbounds [4 x float], [4 x float]* %53, i32 0, i32 3
  store float %4516, float* %4795, align 4
  %4796 = getelementptr inbounds [4 x float], [4 x float]* %53, i32 0, i32 %4452
  %4797 = load float, float* %4796, align 4, !tbaa !91
  %4798 = fmul fast float %4518, %4797
  %4799 = call float @dx.op.binary.f32(i32 35, float 1.000000e+00, float %4798)  ; FMax(a,b)
  %4800 = fmul fast float %4799, %4519
  %4801 = fmul fast float %4799, %4520
  %4802 = call float @dx.op.binary.f32(i32 35, float %4800, float -5.000000e-01)  ; FMax(a,b)
  %4803 = call float @dx.op.binary.f32(i32 35, float %4801, float -5.000000e-01)  ; FMax(a,b)
  %4804 = call float @dx.op.binary.f32(i32 36, float %4802, float 5.000000e-01)  ; FMin(a,b)
  %4805 = call float @dx.op.binary.f32(i32 36, float %4803, float 5.000000e-01)  ; FMin(a,b)
  %4806 = fadd fast float %4804, 5.000000e-01
  %4807 = fadd fast float %4805, 5.000000e-01
  %4808 = getelementptr inbounds [4 x i32], [4 x i32]* %56, i32 0, i32 0
  store i32 %4531, i32* %4808, align 4
  %4809 = getelementptr inbounds [4 x i32], [4 x i32]* %56, i32 0, i32 1
  store i32 %4532, i32* %4809, align 4
  %4810 = getelementptr inbounds [4 x i32], [4 x i32]* %56, i32 0, i32 2
  store i32 %4533, i32* %4810, align 4
  %4811 = getelementptr inbounds [4 x i32], [4 x i32]* %56, i32 0, i32 3
  store i32 %4534, i32* %4811, align 4
  %4812 = getelementptr inbounds [4 x i32], [4 x i32]* %56, i32 0, i32 %4529
  %4813 = load i32, i32* %4812, align 4, !tbaa !97
  %4814 = mul i32 %4813, %4527
  %4815 = mul i32 %4813, %4528
  %4816 = add i32 %4535, %4814
  %4817 = add i32 %4536, %4815
  %4818 = and i32 %4816, %4538
  %4819 = and i32 %4817, %4538
  %4820 = fsub fast float %4394, %4464
  %4821 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %4818, i32 %4819, i32 %4452, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4822 = extractvalue %dx.types.ResRet.i32 %4821, 0
  %4823 = extractvalue %dx.types.ResRet.i32 %4821, 1
  %4824 = extractvalue %dx.types.ResRet.i32 %4821, 2
  %4825 = extractvalue %dx.types.ResRet.i32 %4821, 3
  %4826 = and i32 %4822, 65535
  %4827 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4826)  ; LegacyF16ToF32(value)
  %4828 = lshr i32 %4822, 16
  %4829 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4828)  ; LegacyF16ToF32(value)
  %4830 = and i32 %4823, 65535
  %4831 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4830)  ; LegacyF16ToF32(value)
  %4832 = lshr i32 %4823, 16
  %4833 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4832)  ; LegacyF16ToF32(value)
  %4834 = and i32 %4824, 65535
  %4835 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4834)  ; LegacyF16ToF32(value)
  %4836 = lshr i32 %4824, 16
  %4837 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4836)  ; LegacyF16ToF32(value)
  %4838 = and i32 %4825, 65535
  %4839 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4838)  ; LegacyF16ToF32(value)
  %4840 = lshr i32 %4825, 16
  %4841 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4840)  ; LegacyF16ToF32(value)
  %4842 = fsub fast float %4820, %4829
  %4843 = call float @dx.op.binary.f32(i32 35, float %4842, float 0.000000e+00)  ; FMax(a,b)
  %4844 = extractvalue %dx.types.CBufRet.f32 %4466, 2
  %4845 = fmul fast float %4844, %4843
  %4846 = fsub fast float %4827, %4845
  %4847 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4846)  ; FMax(a,b)
  %4848 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4847)  ; FMax(a,b)
  %4849 = fsub fast float %4820, %4833
  %4850 = call float @dx.op.binary.f32(i32 35, float %4849, float 0.000000e+00)  ; FMax(a,b)
  %4851 = fmul fast float %4844, %4850
  %4852 = fsub fast float %4831, %4851
  %4853 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4852)  ; FMax(a,b)
  %4854 = call float @dx.op.binary.f32(i32 35, float %4848, float %4853)  ; FMax(a,b)
  %4855 = fsub fast float %4820, %4837
  %4856 = call float @dx.op.binary.f32(i32 35, float %4855, float 0.000000e+00)  ; FMax(a,b)
  %4857 = fmul fast float %4844, %4856
  %4858 = fsub fast float %4835, %4857
  %4859 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4858)  ; FMax(a,b)
  %4860 = call float @dx.op.binary.f32(i32 35, float %4854, float %4859)  ; FMax(a,b)
  %4861 = fsub fast float %4820, %4841
  %4862 = call float @dx.op.binary.f32(i32 35, float %4861, float 0.000000e+00)  ; FMax(a,b)
  %4863 = fmul fast float %4844, %4862
  %4864 = fsub fast float %4839, %4863
  %4865 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4864)  ; FMax(a,b)
  %4866 = call float @dx.op.binary.f32(i32 35, float %4860, float %4865)  ; FMax(a,b)
  %4867 = fsub fast float 5.000000e-01, %4804
  %4868 = fsub fast float 5.000000e-01, %4805
  %4869 = fmul fast float %4868, %4867
  %4870 = fmul fast float %4869, %4866
  store i32 %4531, i32* %4808, align 4
  store i32 %4532, i32* %4809, align 4
  store i32 %4533, i32* %4810, align 4
  store i32 %4534, i32* %4811, align 4
  %4871 = load i32, i32* %4812, align 4, !tbaa !97
  %4872 = mul i32 %4871, %4527
  %4873 = mul i32 %4871, %4528
  %4874 = add i32 %4542, %4872
  %4875 = add i32 %4536, %4873
  %4876 = and i32 %4874, %4538
  %4877 = and i32 %4875, %4538
  %4878 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %4876, i32 %4877, i32 %4452, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4879 = extractvalue %dx.types.ResRet.i32 %4878, 0
  %4880 = extractvalue %dx.types.ResRet.i32 %4878, 1
  %4881 = extractvalue %dx.types.ResRet.i32 %4878, 2
  %4882 = extractvalue %dx.types.ResRet.i32 %4878, 3
  %4883 = and i32 %4879, 65535
  %4884 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4883)  ; LegacyF16ToF32(value)
  %4885 = lshr i32 %4879, 16
  %4886 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4885)  ; LegacyF16ToF32(value)
  %4887 = and i32 %4880, 65535
  %4888 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4887)  ; LegacyF16ToF32(value)
  %4889 = lshr i32 %4880, 16
  %4890 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4889)  ; LegacyF16ToF32(value)
  %4891 = and i32 %4881, 65535
  %4892 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4891)  ; LegacyF16ToF32(value)
  %4893 = lshr i32 %4881, 16
  %4894 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4893)  ; LegacyF16ToF32(value)
  %4895 = and i32 %4882, 65535
  %4896 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4895)  ; LegacyF16ToF32(value)
  %4897 = lshr i32 %4882, 16
  %4898 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4897)  ; LegacyF16ToF32(value)
  %4899 = fsub fast float %4820, %4886
  %4900 = call float @dx.op.binary.f32(i32 35, float %4899, float 0.000000e+00)  ; FMax(a,b)
  %4901 = fmul fast float %4844, %4900
  %4902 = fsub fast float %4884, %4901
  %4903 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4902)  ; FMax(a,b)
  %4904 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4903)  ; FMax(a,b)
  %4905 = fsub fast float %4820, %4890
  %4906 = call float @dx.op.binary.f32(i32 35, float %4905, float 0.000000e+00)  ; FMax(a,b)
  %4907 = fmul fast float %4844, %4906
  %4908 = fsub fast float %4888, %4907
  %4909 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4908)  ; FMax(a,b)
  %4910 = call float @dx.op.binary.f32(i32 35, float %4904, float %4909)  ; FMax(a,b)
  %4911 = fsub fast float %4820, %4894
  %4912 = call float @dx.op.binary.f32(i32 35, float %4911, float 0.000000e+00)  ; FMax(a,b)
  %4913 = fmul fast float %4844, %4912
  %4914 = fsub fast float %4892, %4913
  %4915 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4914)  ; FMax(a,b)
  %4916 = call float @dx.op.binary.f32(i32 35, float %4910, float %4915)  ; FMax(a,b)
  %4917 = fsub fast float %4820, %4898
  %4918 = call float @dx.op.binary.f32(i32 35, float %4917, float 0.000000e+00)  ; FMax(a,b)
  %4919 = fmul fast float %4844, %4918
  %4920 = fsub fast float %4896, %4919
  %4921 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4920)  ; FMax(a,b)
  %4922 = call float @dx.op.binary.f32(i32 35, float %4916, float %4921)  ; FMax(a,b)
  %4923 = fmul fast float %4868, %4806
  %4924 = fmul fast float %4923, %4922
  store i32 %4531, i32* %4808, align 4
  store i32 %4532, i32* %4809, align 4
  store i32 %4533, i32* %4810, align 4
  store i32 %4534, i32* %4811, align 4
  %4925 = load i32, i32* %4812, align 4, !tbaa !97
  %4926 = mul i32 %4925, %4527
  %4927 = mul i32 %4925, %4528
  %4928 = add i32 %4535, %4926
  %4929 = add i32 %4546, %4927
  %4930 = and i32 %4928, %4538
  %4931 = and i32 %4929, %4538
  %4932 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %4930, i32 %4931, i32 %4452, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4933 = extractvalue %dx.types.ResRet.i32 %4932, 0
  %4934 = extractvalue %dx.types.ResRet.i32 %4932, 1
  %4935 = extractvalue %dx.types.ResRet.i32 %4932, 2
  %4936 = extractvalue %dx.types.ResRet.i32 %4932, 3
  %4937 = and i32 %4933, 65535
  %4938 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4937)  ; LegacyF16ToF32(value)
  %4939 = lshr i32 %4933, 16
  %4940 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4939)  ; LegacyF16ToF32(value)
  %4941 = and i32 %4934, 65535
  %4942 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4941)  ; LegacyF16ToF32(value)
  %4943 = lshr i32 %4934, 16
  %4944 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4943)  ; LegacyF16ToF32(value)
  %4945 = and i32 %4935, 65535
  %4946 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4945)  ; LegacyF16ToF32(value)
  %4947 = lshr i32 %4935, 16
  %4948 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4947)  ; LegacyF16ToF32(value)
  %4949 = and i32 %4936, 65535
  %4950 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4949)  ; LegacyF16ToF32(value)
  %4951 = lshr i32 %4936, 16
  %4952 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4951)  ; LegacyF16ToF32(value)
  %4953 = fsub fast float %4820, %4940
  %4954 = call float @dx.op.binary.f32(i32 35, float %4953, float 0.000000e+00)  ; FMax(a,b)
  %4955 = fmul fast float %4844, %4954
  %4956 = fsub fast float %4938, %4955
  %4957 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4956)  ; FMax(a,b)
  %4958 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4957)  ; FMax(a,b)
  %4959 = fsub fast float %4820, %4944
  %4960 = call float @dx.op.binary.f32(i32 35, float %4959, float 0.000000e+00)  ; FMax(a,b)
  %4961 = fmul fast float %4844, %4960
  %4962 = fsub fast float %4942, %4961
  %4963 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4962)  ; FMax(a,b)
  %4964 = call float @dx.op.binary.f32(i32 35, float %4958, float %4963)  ; FMax(a,b)
  %4965 = fsub fast float %4820, %4948
  %4966 = call float @dx.op.binary.f32(i32 35, float %4965, float 0.000000e+00)  ; FMax(a,b)
  %4967 = fmul fast float %4844, %4966
  %4968 = fsub fast float %4946, %4967
  %4969 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4968)  ; FMax(a,b)
  %4970 = call float @dx.op.binary.f32(i32 35, float %4964, float %4969)  ; FMax(a,b)
  %4971 = fsub fast float %4820, %4952
  %4972 = call float @dx.op.binary.f32(i32 35, float %4971, float 0.000000e+00)  ; FMax(a,b)
  %4973 = fmul fast float %4844, %4972
  %4974 = fsub fast float %4950, %4973
  %4975 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4974)  ; FMax(a,b)
  %4976 = call float @dx.op.binary.f32(i32 35, float %4970, float %4975)  ; FMax(a,b)
  %4977 = fmul fast float %4976, %4867
  store i32 %4531, i32* %4808, align 4
  store i32 %4532, i32* %4809, align 4
  store i32 %4533, i32* %4810, align 4
  store i32 %4534, i32* %4811, align 4
  %4978 = load i32, i32* %4812, align 4, !tbaa !97
  %4979 = mul i32 %4978, %4527
  %4980 = mul i32 %4978, %4528
  %4981 = add i32 %4542, %4979
  %4982 = add i32 %4546, %4980
  %4983 = and i32 %4981, %4538
  %4984 = and i32 %4982, %4538
  %4985 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %4983, i32 %4984, i32 %4452, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4986 = extractvalue %dx.types.ResRet.i32 %4985, 0
  %4987 = extractvalue %dx.types.ResRet.i32 %4985, 1
  %4988 = extractvalue %dx.types.ResRet.i32 %4985, 2
  %4989 = extractvalue %dx.types.ResRet.i32 %4985, 3
  %4990 = and i32 %4986, 65535
  %4991 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4990)  ; LegacyF16ToF32(value)
  %4992 = lshr i32 %4986, 16
  %4993 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4992)  ; LegacyF16ToF32(value)
  %4994 = and i32 %4987, 65535
  %4995 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4994)  ; LegacyF16ToF32(value)
  %4996 = lshr i32 %4987, 16
  %4997 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4996)  ; LegacyF16ToF32(value)
  %4998 = and i32 %4988, 65535
  %4999 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4998)  ; LegacyF16ToF32(value)
  %5000 = lshr i32 %4988, 16
  %5001 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5000)  ; LegacyF16ToF32(value)
  %5002 = and i32 %4989, 65535
  %5003 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5002)  ; LegacyF16ToF32(value)
  %5004 = lshr i32 %4989, 16
  %5005 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5004)  ; LegacyF16ToF32(value)
  %5006 = fsub fast float %4820, %4993
  %5007 = call float @dx.op.binary.f32(i32 35, float %5006, float 0.000000e+00)  ; FMax(a,b)
  %5008 = fmul fast float %4844, %5007
  %5009 = fsub fast float %4991, %5008
  %5010 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5009)  ; FMax(a,b)
  %5011 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5010)  ; FMax(a,b)
  %5012 = fsub fast float %4820, %4997
  %5013 = call float @dx.op.binary.f32(i32 35, float %5012, float 0.000000e+00)  ; FMax(a,b)
  %5014 = fmul fast float %4844, %5013
  %5015 = fsub fast float %4995, %5014
  %5016 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5015)  ; FMax(a,b)
  %5017 = call float @dx.op.binary.f32(i32 35, float %5011, float %5016)  ; FMax(a,b)
  %5018 = fsub fast float %4820, %5001
  %5019 = call float @dx.op.binary.f32(i32 35, float %5018, float 0.000000e+00)  ; FMax(a,b)
  %5020 = fmul fast float %4844, %5019
  %5021 = fsub fast float %4999, %5020
  %5022 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5021)  ; FMax(a,b)
  %5023 = call float @dx.op.binary.f32(i32 35, float %5017, float %5022)  ; FMax(a,b)
  %5024 = fsub fast float %4820, %5005
  %5025 = call float @dx.op.binary.f32(i32 35, float %5024, float 0.000000e+00)  ; FMax(a,b)
  %5026 = fmul fast float %4844, %5025
  %5027 = fsub fast float %5003, %5026
  %5028 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5027)  ; FMax(a,b)
  %5029 = call float @dx.op.binary.f32(i32 35, float %5023, float %5028)  ; FMax(a,b)
  %5030 = fmul fast float %5029, %4806
  %5031 = fadd fast float %5030, %4977
  %5032 = fmul fast float %5031, %4807
  %5033 = fadd fast float %4924, %4870
  %5034 = fadd fast float %5033, %5032
  %5035 = fmul fast float %4450, 5.000000e-01
  %5036 = fmul fast float %4451, 5.000000e-01
  %5037 = fadd fast float %5035, 2.500000e-01
  %5038 = fadd fast float %5036, 2.500000e-01
  %5039 = fmul fast float %4501, %5037
  %5040 = fmul fast float %4501, %5038
  %5041 = fadd fast float %5039, -5.000000e-01
  %5042 = fadd fast float %5040, -5.000000e-01
  %5043 = fptosi float %5041 to i32
  %5044 = fptosi float %5042 to i32
  %5045 = fadd fast float %5039, 5.000000e-01
  %5046 = fadd fast float %5040, 5.000000e-01
  %5047 = call float @dx.op.unary.f32(i32 22, float %5045)  ; Frc(value)
  %5048 = call float @dx.op.unary.f32(i32 22, float %5046)  ; Frc(value)
  %5049 = getelementptr inbounds [4 x float], [4 x float]* %54, i32 0, i32 0
  store float %4513, float* %5049, align 4
  %5050 = getelementptr inbounds [4 x float], [4 x float]* %54, i32 0, i32 1
  store float %4514, float* %5050, align 4
  %5051 = getelementptr inbounds [4 x float], [4 x float]* %54, i32 0, i32 2
  store float %4515, float* %5051, align 4
  %5052 = getelementptr inbounds [4 x float], [4 x float]* %54, i32 0, i32 3
  store float %4516, float* %5052, align 4
  %5053 = getelementptr inbounds [4 x float], [4 x float]* %54, i32 0, i32 %4496
  %5054 = load float, float* %5053, align 4, !tbaa !91
  %5055 = fmul fast float %4518, %5054
  %5056 = call float @dx.op.binary.f32(i32 35, float 1.000000e+00, float %5055)  ; FMax(a,b)
  %5057 = fadd fast float %5047, -5.000000e-01
  %5058 = fadd fast float %5048, -5.000000e-01
  %5059 = fmul fast float %5056, %5057
  %5060 = fmul fast float %5056, %5058
  %5061 = call float @dx.op.binary.f32(i32 35, float %5059, float -5.000000e-01)  ; FMax(a,b)
  %5062 = call float @dx.op.binary.f32(i32 35, float %5060, float -5.000000e-01)  ; FMax(a,b)
  %5063 = call float @dx.op.binary.f32(i32 36, float %5061, float 5.000000e-01)  ; FMin(a,b)
  %5064 = call float @dx.op.binary.f32(i32 36, float %5062, float 5.000000e-01)  ; FMin(a,b)
  %5065 = fadd fast float %5063, 5.000000e-01
  %5066 = fadd fast float %5064, 5.000000e-01
  %5067 = call i32 @dx.op.binary.i32(i32 37, i32 %5043, i32 0)  ; IMax(a,b)
  %5068 = call i32 @dx.op.binary.i32(i32 37, i32 %5044, i32 0)  ; IMax(a,b)
  %5069 = call i32 @dx.op.binary.i32(i32 38, i32 %5067, i32 %4521)  ; IMin(a,b)
  %5070 = call i32 @dx.op.binary.i32(i32 38, i32 %5068, i32 %4521)  ; IMin(a,b)
  %5071 = sub i32 2, %4452
  %5072 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 0
  store i32 %4531, i32* %5072, align 4
  %5073 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 1
  store i32 %4532, i32* %5073, align 4
  %5074 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 2
  store i32 %4533, i32* %5074, align 4
  %5075 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 3
  store i32 %4534, i32* %5075, align 4
  %5076 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 %5071
  %5077 = load i32, i32* %5076, align 4, !tbaa !97
  %5078 = mul i32 %5077, %4527
  %5079 = mul i32 %5077, %4528
  %5080 = add i32 %5069, 536870912
  %5081 = add i32 %5080, %5078
  %5082 = add i32 %5070, 536870912
  %5083 = add i32 %5082, %5079
  %5084 = and i32 %5081, %4538
  %5085 = and i32 %5083, %4538
  %5086 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %5084, i32 %5085, i32 %4496, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5087 = extractvalue %dx.types.ResRet.i32 %5086, 0
  %5088 = extractvalue %dx.types.ResRet.i32 %5086, 1
  %5089 = extractvalue %dx.types.ResRet.i32 %5086, 2
  %5090 = extractvalue %dx.types.ResRet.i32 %5086, 3
  %5091 = and i32 %5087, 65535
  %5092 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5091)  ; LegacyF16ToF32(value)
  %5093 = lshr i32 %5087, 16
  %5094 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5093)  ; LegacyF16ToF32(value)
  %5095 = and i32 %5088, 65535
  %5096 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5095)  ; LegacyF16ToF32(value)
  %5097 = lshr i32 %5088, 16
  %5098 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5097)  ; LegacyF16ToF32(value)
  %5099 = and i32 %5089, 65535
  %5100 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5099)  ; LegacyF16ToF32(value)
  %5101 = lshr i32 %5089, 16
  %5102 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5101)  ; LegacyF16ToF32(value)
  %5103 = and i32 %5090, 65535
  %5104 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5103)  ; LegacyF16ToF32(value)
  %5105 = lshr i32 %5090, 16
  %5106 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5105)  ; LegacyF16ToF32(value)
  %5107 = fsub fast float %4820, %5094
  %5108 = call float @dx.op.binary.f32(i32 35, float %5107, float 0.000000e+00)  ; FMax(a,b)
  %5109 = fmul fast float %4844, %5108
  %5110 = fsub fast float %5092, %5109
  %5111 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5110)  ; FMax(a,b)
  %5112 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5111)  ; FMax(a,b)
  %5113 = fsub fast float %4820, %5098
  %5114 = call float @dx.op.binary.f32(i32 35, float %5113, float 0.000000e+00)  ; FMax(a,b)
  %5115 = fmul fast float %4844, %5114
  %5116 = fsub fast float %5096, %5115
  %5117 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5116)  ; FMax(a,b)
  %5118 = call float @dx.op.binary.f32(i32 35, float %5112, float %5117)  ; FMax(a,b)
  %5119 = fsub fast float %4820, %5102
  %5120 = call float @dx.op.binary.f32(i32 35, float %5119, float 0.000000e+00)  ; FMax(a,b)
  %5121 = fmul fast float %4844, %5120
  %5122 = fsub fast float %5100, %5121
  %5123 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5122)  ; FMax(a,b)
  %5124 = call float @dx.op.binary.f32(i32 35, float %5118, float %5123)  ; FMax(a,b)
  %5125 = fsub fast float %4820, %5106
  %5126 = call float @dx.op.binary.f32(i32 35, float %5125, float 0.000000e+00)  ; FMax(a,b)
  %5127 = fmul fast float %4844, %5126
  %5128 = fsub fast float %5104, %5127
  %5129 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5128)  ; FMax(a,b)
  %5130 = call float @dx.op.binary.f32(i32 35, float %5124, float %5129)  ; FMax(a,b)
  %5131 = fsub fast float 5.000000e-01, %5063
  %5132 = fsub fast float 5.000000e-01, %5064
  %5133 = fmul fast float %5132, %5131
  %5134 = fmul fast float %5133, %5130
  %5135 = add i32 %5043, 1
  %5136 = call i32 @dx.op.binary.i32(i32 37, i32 %5135, i32 0)  ; IMax(a,b)
  %5137 = call i32 @dx.op.binary.i32(i32 38, i32 %5136, i32 %4521)  ; IMin(a,b)
  store i32 %4531, i32* %5072, align 4
  store i32 %4532, i32* %5073, align 4
  store i32 %4533, i32* %5074, align 4
  store i32 %4534, i32* %5075, align 4
  %5138 = load i32, i32* %5076, align 4, !tbaa !97
  %5139 = mul i32 %5138, %4527
  %5140 = mul i32 %5138, %4528
  %5141 = add i32 %5137, 536870912
  %5142 = add i32 %5141, %5139
  %5143 = add i32 %5082, %5140
  %5144 = and i32 %5142, %4538
  %5145 = and i32 %5143, %4538
  %5146 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %5144, i32 %5145, i32 %4496, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5147 = extractvalue %dx.types.ResRet.i32 %5146, 0
  %5148 = extractvalue %dx.types.ResRet.i32 %5146, 1
  %5149 = extractvalue %dx.types.ResRet.i32 %5146, 2
  %5150 = extractvalue %dx.types.ResRet.i32 %5146, 3
  %5151 = and i32 %5147, 65535
  %5152 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5151)  ; LegacyF16ToF32(value)
  %5153 = lshr i32 %5147, 16
  %5154 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5153)  ; LegacyF16ToF32(value)
  %5155 = and i32 %5148, 65535
  %5156 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5155)  ; LegacyF16ToF32(value)
  %5157 = lshr i32 %5148, 16
  %5158 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5157)  ; LegacyF16ToF32(value)
  %5159 = and i32 %5149, 65535
  %5160 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5159)  ; LegacyF16ToF32(value)
  %5161 = lshr i32 %5149, 16
  %5162 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5161)  ; LegacyF16ToF32(value)
  %5163 = and i32 %5150, 65535
  %5164 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5163)  ; LegacyF16ToF32(value)
  %5165 = lshr i32 %5150, 16
  %5166 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5165)  ; LegacyF16ToF32(value)
  %5167 = fsub fast float %4820, %5154
  %5168 = call float @dx.op.binary.f32(i32 35, float %5167, float 0.000000e+00)  ; FMax(a,b)
  %5169 = fmul fast float %4844, %5168
  %5170 = fsub fast float %5152, %5169
  %5171 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5170)  ; FMax(a,b)
  %5172 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5171)  ; FMax(a,b)
  %5173 = fsub fast float %4820, %5158
  %5174 = call float @dx.op.binary.f32(i32 35, float %5173, float 0.000000e+00)  ; FMax(a,b)
  %5175 = fmul fast float %4844, %5174
  %5176 = fsub fast float %5156, %5175
  %5177 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5176)  ; FMax(a,b)
  %5178 = call float @dx.op.binary.f32(i32 35, float %5172, float %5177)  ; FMax(a,b)
  %5179 = fsub fast float %4820, %5162
  %5180 = call float @dx.op.binary.f32(i32 35, float %5179, float 0.000000e+00)  ; FMax(a,b)
  %5181 = fmul fast float %4844, %5180
  %5182 = fsub fast float %5160, %5181
  %5183 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5182)  ; FMax(a,b)
  %5184 = call float @dx.op.binary.f32(i32 35, float %5178, float %5183)  ; FMax(a,b)
  %5185 = fsub fast float %4820, %5166
  %5186 = call float @dx.op.binary.f32(i32 35, float %5185, float 0.000000e+00)  ; FMax(a,b)
  %5187 = fmul fast float %4844, %5186
  %5188 = fsub fast float %5164, %5187
  %5189 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5188)  ; FMax(a,b)
  %5190 = call float @dx.op.binary.f32(i32 35, float %5184, float %5189)  ; FMax(a,b)
  %5191 = fmul fast float %5132, %5065
  %5192 = fmul fast float %5191, %5190
  %5193 = add i32 %5044, 1
  %5194 = call i32 @dx.op.binary.i32(i32 37, i32 %5193, i32 0)  ; IMax(a,b)
  %5195 = call i32 @dx.op.binary.i32(i32 38, i32 %5194, i32 %4521)  ; IMin(a,b)
  store i32 %4531, i32* %5072, align 4
  store i32 %4532, i32* %5073, align 4
  store i32 %4533, i32* %5074, align 4
  store i32 %4534, i32* %5075, align 4
  %5196 = load i32, i32* %5076, align 4, !tbaa !97
  %5197 = mul i32 %5196, %4527
  %5198 = mul i32 %5196, %4528
  %5199 = add i32 %5080, %5197
  %5200 = add i32 %5195, 536870912
  %5201 = add i32 %5200, %5198
  %5202 = and i32 %5199, %4538
  %5203 = and i32 %5201, %4538
  %5204 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %5202, i32 %5203, i32 %4496, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5205 = extractvalue %dx.types.ResRet.i32 %5204, 0
  %5206 = extractvalue %dx.types.ResRet.i32 %5204, 1
  %5207 = extractvalue %dx.types.ResRet.i32 %5204, 2
  %5208 = extractvalue %dx.types.ResRet.i32 %5204, 3
  %5209 = and i32 %5205, 65535
  %5210 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5209)  ; LegacyF16ToF32(value)
  %5211 = lshr i32 %5205, 16
  %5212 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5211)  ; LegacyF16ToF32(value)
  %5213 = and i32 %5206, 65535
  %5214 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5213)  ; LegacyF16ToF32(value)
  %5215 = lshr i32 %5206, 16
  %5216 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5215)  ; LegacyF16ToF32(value)
  %5217 = and i32 %5207, 65535
  %5218 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5217)  ; LegacyF16ToF32(value)
  %5219 = lshr i32 %5207, 16
  %5220 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5219)  ; LegacyF16ToF32(value)
  %5221 = and i32 %5208, 65535
  %5222 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5221)  ; LegacyF16ToF32(value)
  %5223 = lshr i32 %5208, 16
  %5224 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5223)  ; LegacyF16ToF32(value)
  %5225 = fsub fast float %4820, %5212
  %5226 = call float @dx.op.binary.f32(i32 35, float %5225, float 0.000000e+00)  ; FMax(a,b)
  %5227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 339)  ; CBufferLoadLegacy(handle,regIndex)
  %5228 = extractvalue %dx.types.CBufRet.f32 %5227, 2
  %5229 = fmul fast float %5228, %5226
  %5230 = fsub fast float %5210, %5229
  %5231 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5230)  ; FMax(a,b)
  %5232 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5231)  ; FMax(a,b)
  %5233 = fsub fast float %4820, %5216
  %5234 = call float @dx.op.binary.f32(i32 35, float %5233, float 0.000000e+00)  ; FMax(a,b)
  %5235 = fmul fast float %5228, %5234
  %5236 = fsub fast float %5214, %5235
  %5237 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5236)  ; FMax(a,b)
  %5238 = call float @dx.op.binary.f32(i32 35, float %5232, float %5237)  ; FMax(a,b)
  %5239 = fsub fast float %4820, %5220
  %5240 = call float @dx.op.binary.f32(i32 35, float %5239, float 0.000000e+00)  ; FMax(a,b)
  %5241 = fmul fast float %5228, %5240
  %5242 = fsub fast float %5218, %5241
  %5243 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5242)  ; FMax(a,b)
  %5244 = call float @dx.op.binary.f32(i32 35, float %5238, float %5243)  ; FMax(a,b)
  %5245 = fsub fast float %4820, %5224
  %5246 = call float @dx.op.binary.f32(i32 35, float %5245, float 0.000000e+00)  ; FMax(a,b)
  %5247 = fmul fast float %5228, %5246
  %5248 = fsub fast float %5222, %5247
  %5249 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5248)  ; FMax(a,b)
  %5250 = call float @dx.op.binary.f32(i32 35, float %5244, float %5249)  ; FMax(a,b)
  %5251 = fmul fast float %5250, %5131
  store i32 %4531, i32* %5072, align 4
  store i32 %4532, i32* %5073, align 4
  store i32 %4533, i32* %5074, align 4
  store i32 %4534, i32* %5075, align 4
  %5252 = load i32, i32* %5076, align 4, !tbaa !97
  %5253 = mul i32 %5252, %4527
  %5254 = mul i32 %5252, %4528
  %5255 = add i32 %5141, %5253
  %5256 = add i32 %5200, %5254
  %5257 = and i32 %5255, %4538
  %5258 = and i32 %5256, %4538
  %5259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 335)  ; CBufferLoadLegacy(handle,regIndex)
  %5260 = extractvalue %dx.types.CBufRet.f32 %5259, 0
  %5261 = fsub fast float %4394, %5260
  %5262 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %5257, i32 %5258, i32 %4496, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5263 = extractvalue %dx.types.ResRet.i32 %5262, 0
  %5264 = extractvalue %dx.types.ResRet.i32 %5262, 1
  %5265 = extractvalue %dx.types.ResRet.i32 %5262, 2
  %5266 = extractvalue %dx.types.ResRet.i32 %5262, 3
  %5267 = and i32 %5263, 65535
  %5268 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5267)  ; LegacyF16ToF32(value)
  %5269 = lshr i32 %5263, 16
  %5270 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5269)  ; LegacyF16ToF32(value)
  %5271 = and i32 %5264, 65535
  %5272 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5271)  ; LegacyF16ToF32(value)
  %5273 = lshr i32 %5264, 16
  %5274 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5273)  ; LegacyF16ToF32(value)
  %5275 = and i32 %5265, 65535
  %5276 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5275)  ; LegacyF16ToF32(value)
  %5277 = lshr i32 %5265, 16
  %5278 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5277)  ; LegacyF16ToF32(value)
  %5279 = and i32 %5266, 65535
  %5280 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5279)  ; LegacyF16ToF32(value)
  %5281 = lshr i32 %5266, 16
  %5282 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5281)  ; LegacyF16ToF32(value)
  %5283 = fsub fast float %5261, %5270
  %5284 = call float @dx.op.binary.f32(i32 35, float %5283, float 0.000000e+00)  ; FMax(a,b)
  %5285 = fmul fast float %5228, %5284
  %5286 = fsub fast float %5268, %5285
  %5287 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5286)  ; FMax(a,b)
  %5288 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5287)  ; FMax(a,b)
  %5289 = fsub fast float %5261, %5274
  %5290 = call float @dx.op.binary.f32(i32 35, float %5289, float 0.000000e+00)  ; FMax(a,b)
  %5291 = fmul fast float %5228, %5290
  %5292 = fsub fast float %5272, %5291
  %5293 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5292)  ; FMax(a,b)
  %5294 = call float @dx.op.binary.f32(i32 35, float %5288, float %5293)  ; FMax(a,b)
  %5295 = fsub fast float %5261, %5278
  %5296 = call float @dx.op.binary.f32(i32 35, float %5295, float 0.000000e+00)  ; FMax(a,b)
  %5297 = fmul fast float %5228, %5296
  %5298 = fsub fast float %5276, %5297
  %5299 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5298)  ; FMax(a,b)
  %5300 = call float @dx.op.binary.f32(i32 35, float %5294, float %5299)  ; FMax(a,b)
  %5301 = fsub fast float %5261, %5282
  %5302 = call float @dx.op.binary.f32(i32 35, float %5301, float 0.000000e+00)  ; FMax(a,b)
  %5303 = fmul fast float %5228, %5302
  %5304 = fsub fast float %5280, %5303
  %5305 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5304)  ; FMax(a,b)
  %5306 = call float @dx.op.binary.f32(i32 35, float %5300, float %5305)  ; FMax(a,b)
  %5307 = fmul fast float %5306, %5065
  %5308 = fadd fast float %5307, %5251
  %5309 = fmul fast float %5308, %5066
  %5310 = fadd fast float %5192, %5134
  %5311 = fadd fast float %5310, %5309
  %5312 = call float @dx.op.binary.f32(i32 35, float %4488, float %4489)  ; FMax(a,b)
  %5313 = extractvalue %dx.types.CBufRet.f32 %5227, 1
  %5314 = fmul fast float %5313, 2.000000e+00
  %5315 = fadd fast float %5312, -1.000000e+00
  %5316 = fadd fast float %5315, %5314
  %5317 = fdiv fast float %5316, %5314
  %5318 = call float @dx.op.unary.f32(i32 7, float %5317)  ; Saturate(value)
  %5319 = fmul fast float %5318, 2.000000e+00
  %5320 = fsub fast float 3.000000e+00, %5319
  %5321 = fmul fast float %5318, %5318
  %5322 = fmul fast float %5321, %5320
  %5323 = fmul fast float %5322, %5311
  %5324 = fsub fast float 1.000000e+00, %5322
  %5325 = fmul fast float %5324, %5034
  %5326 = fadd fast float %5325, %5323
  br label %5327

; <label>:5327                                    ; preds = %4791, %4547, %4449
  %5328 = phi float [ 0.000000e+00, %4449 ], [ %5326, %4791 ], [ %4790, %4547 ]
  %5329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5330 = extractvalue %dx.types.CBufRet.f32 %5329, 0
  %5331 = extractvalue %dx.types.CBufRet.f32 %5329, 1
  %5332 = fsub fast float %4392, %5330
  %5333 = fsub fast float %4393, %5331
  %5334 = fmul fast float %5332, %5332
  %5335 = fmul fast float %5333, %5333
  %5336 = fadd fast float %5334, %5335
  %5337 = call float @dx.op.unary.f32(i32 24, float %5336)  ; Sqrt(value)
  %5338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 336)  ; CBufferLoadLegacy(handle,regIndex)
  %5339 = extractvalue %dx.types.CBufRet.f32 %5338, 0
  %5340 = extractvalue %dx.types.CBufRet.f32 %5338, 1
  %5341 = fsub fast float %5340, %5339
  %5342 = fsub fast float %5337, %5339
  %5343 = fdiv fast float %5342, %5341
  %5344 = call float @dx.op.unary.f32(i32 7, float %5343)  ; Saturate(value)
  %5345 = fmul fast float %5344, 2.000000e+00
  %5346 = fsub fast float 3.000000e+00, %5345
  %5347 = fmul fast float %5344, %5344
  %5348 = fmul fast float %5347, %5346
  %5349 = fsub fast float 1.000000e+00, %5348
  %5350 = fmul fast float %5349, %5328
  %5351 = fadd fast float %5350, %4385
  %5352 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 369)  ; CBufferLoadLegacy(handle,regIndex)
  %5353 = extractvalue %dx.types.CBufRet.i32 %5352, 0
  %5354 = and i32 %5353, 7
  %5355 = icmp eq i32 %5354, 0
  br i1 %5355, label %5427, label %5356

; <label>:5356                                    ; preds = %5327
  %5357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5358 = extractvalue %dx.types.CBufRet.f32 %5357, 0
  %5359 = extractvalue %dx.types.CBufRet.f32 %5357, 1
  %5360 = extractvalue %dx.types.CBufRet.f32 %5357, 2
  %5361 = fadd fast float %5358, %170
  %5362 = fadd fast float %5359, %171
  %5363 = fadd fast float %5360, %172
  %5364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 151)  ; CBufferLoadLegacy(handle,regIndex)
  %5365 = extractvalue %dx.types.CBufRet.f32 %5364, 0
  %5366 = extractvalue %dx.types.CBufRet.f32 %5364, 1
  %5367 = extractvalue %dx.types.CBufRet.f32 %5364, 2
  %5368 = extractvalue %dx.types.CBufRet.f32 %5364, 3
  %5369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 152)  ; CBufferLoadLegacy(handle,regIndex)
  %5370 = extractvalue %dx.types.CBufRet.f32 %5369, 0
  %5371 = extractvalue %dx.types.CBufRet.f32 %5369, 1
  %5372 = extractvalue %dx.types.CBufRet.f32 %5369, 2
  %5373 = extractvalue %dx.types.CBufRet.f32 %5369, 3
  %5374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 153)  ; CBufferLoadLegacy(handle,regIndex)
  %5375 = extractvalue %dx.types.CBufRet.f32 %5374, 0
  %5376 = extractvalue %dx.types.CBufRet.f32 %5374, 1
  %5377 = extractvalue %dx.types.CBufRet.f32 %5374, 2
  %5378 = extractvalue %dx.types.CBufRet.f32 %5374, 3
  %5379 = fmul fast float %5361, %5365
  %5380 = call float @dx.op.tertiary.f32(i32 46, float %5362, float %5366, float %5379)  ; FMad(a,b,c)
  %5381 = call float @dx.op.tertiary.f32(i32 46, float %5363, float %5367, float %5380)  ; FMad(a,b,c)
  %5382 = fadd fast float %5381, %5368
  %5383 = fmul fast float %5370, %5361
  %5384 = call float @dx.op.tertiary.f32(i32 46, float %5362, float %5371, float %5383)  ; FMad(a,b,c)
  %5385 = call float @dx.op.tertiary.f32(i32 46, float %5363, float %5372, float %5384)  ; FMad(a,b,c)
  %5386 = fadd fast float %5385, %5373
  %5387 = fmul fast float %5375, %5361
  %5388 = call float @dx.op.tertiary.f32(i32 46, float %5362, float %5376, float %5387)  ; FMad(a,b,c)
  %5389 = call float @dx.op.tertiary.f32(i32 46, float %5363, float %5377, float %5388)  ; FMad(a,b,c)
  %5390 = fadd fast float %5389, %5378
  %5391 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 155)  ; CBufferLoadLegacy(handle,regIndex)
  %5392 = extractvalue %dx.types.CBufRet.f32 %5391, 1
  %5393 = extractvalue %dx.types.CBufRet.f32 %5391, 0
  %5394 = fmul fast float %5393, %242
  %5395 = fadd fast float %5390, %5394
  %5396 = fmul fast float %242, 0x401921FB60000000
  %5397 = call float @dx.op.unary.f32(i32 13, float %5396)  ; Sin(value)
  %5398 = call float @dx.op.unary.f32(i32 12, float %5396)  ; Cos(value)
  %5399 = fmul fast float %5398, %5392
  %5400 = call float @dx.op.tertiary.f32(i32 46, float %5397, float %5392, float 0.000000e+00)  ; FMad(a,b,c)
  %5401 = fmul fast float %5392, %5397
  %5402 = fsub fast float -0.000000e+00, %5401
  %5403 = call float @dx.op.tertiary.f32(i32 46, float %5398, float %5392, float 0.000000e+00)  ; FMad(a,b,c)
  br label %5404

; <label>:5404                                    ; preds = %5404, %5356
  %5405 = phi float [ 0.000000e+00, %5356 ], [ %5419, %5404 ]
  %5406 = phi i32 [ 0, %5356 ], [ %5420, %5404 ]
  %5407 = getelementptr [4 x float], [4 x float]* @PCF_OFFSETS_4.0, i32 0, i32 %5406
  %5408 = getelementptr [4 x float], [4 x float]* @PCF_OFFSETS_4.1, i32 0, i32 %5406
  %5409 = load float, float* %5407, align 4
  %5410 = load float, float* %5408, align 4
  %5411 = fmul fast float %5399, %5409
  %5412 = call float @dx.op.tertiary.f32(i32 46, float %5410, float %5402, float %5411)  ; FMad(a,b,c)
  %5413 = fmul fast float %5409, %5400
  %5414 = call float @dx.op.tertiary.f32(i32 46, float %5410, float %5403, float %5413)  ; FMad(a,b,c)
  %5415 = fadd fast float %5382, %5412
  %5416 = fadd fast float %5386, %5414
  %5417 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %2, %dx.types.Handle %48, float %5415, float %5416, float undef, float undef, i32 0, i32 0, i32 undef, float %5395)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5418 = extractvalue %dx.types.ResRet.f32 %5417, 0
  %5419 = fadd fast float %5418, %5405
  %5420 = add nuw nsw i32 %5406, 1
  %5421 = icmp eq i32 %5420, 4
  br i1 %5421, label %5422, label %5404

; <label>:5422                                    ; preds = %5404
  %5423 = fmul fast float %5419, 2.500000e-01
  %5424 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 370)  ; CBufferLoadLegacy(handle,regIndex)
  %5425 = extractvalue %dx.types.CBufRet.f32 %5424, 1
  %5426 = fmul fast float %5425, %5423
  br label %5427

; <label>:5427                                    ; preds = %5422, %5327
  %5428 = phi float [ %5423, %5422 ], [ 0.000000e+00, %5327 ]
  %5429 = phi float [ %5426, %5422 ], [ 0.000000e+00, %5327 ]
  %5430 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 369)  ; CBufferLoadLegacy(handle,regIndex)
  %5431 = extractvalue %dx.types.CBufRet.i32 %5430, 0
  %5432 = and i32 %5431, 7
  %5433 = icmp eq i32 %5432, 0
  br i1 %5433, label %5511, label %5434

; <label>:5434                                    ; preds = %5427
  %5435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 370)  ; CBufferLoadLegacy(handle,regIndex)
  %5436 = extractvalue %dx.types.CBufRet.f32 %5435, 0
  %5437 = fmul fast float %5436, %5428
  %5438 = fadd fast float %5437, %5351
  %5439 = extractvalue %dx.types.CBufRet.f32 %5435, 2
  %5440 = fmul fast float %5439, %5428
  %5441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 371)  ; CBufferLoadLegacy(handle,regIndex)
  %5442 = extractvalue %dx.types.CBufRet.f32 %5441, 0
  %5443 = fmul fast float %5442, %5428
  %5444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5445 = and i32 %5431, 8
  %5446 = icmp eq i32 %5445, 0
  br i1 %5446, label %5511, label %5447

; <label>:5447                                    ; preds = %5434
  %5448 = extractvalue %dx.types.CBufRet.f32 %5444, 2
  %5449 = fadd fast float %5448, %172
  %5450 = extractvalue %dx.types.CBufRet.f32 %5444, 1
  %5451 = fadd fast float %5450, %171
  %5452 = extractvalue %dx.types.CBufRet.f32 %5444, 0
  %5453 = fadd fast float %5452, %170
  %5454 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 377)  ; CBufferLoadLegacy(handle,regIndex)
  %5455 = extractvalue %dx.types.CBufRet.f32 %5454, 0
  %5456 = extractvalue %dx.types.CBufRet.f32 %5454, 1
  %5457 = extractvalue %dx.types.CBufRet.f32 %5454, 2
  %5458 = fsub fast float %5453, %5455
  %5459 = fsub fast float %5451, %5456
  %5460 = fsub fast float %5449, %5457
  %5461 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 378)  ; CBufferLoadLegacy(handle,regIndex)
  %5462 = extractvalue %dx.types.CBufRet.f32 %5461, 0
  %5463 = extractvalue %dx.types.CBufRet.f32 %5461, 1
  %5464 = extractvalue %dx.types.CBufRet.f32 %5461, 2
  %5465 = fmul fast float %5458, %5462
  %5466 = fmul fast float %5459, %5463
  %5467 = fmul fast float %5460, %5464
  %5468 = fcmp fast oge float %5465, 0.000000e+00
  %5469 = fcmp fast oge float %5466, 0.000000e+00
  %5470 = fcmp fast oge float %5467, 0.000000e+00
  %5471 = and i1 %5468, %5469
  %5472 = and i1 %5470, %5471
  %5473 = fcmp fast ole float %5465, 1.000000e+00
  %5474 = fcmp fast ole float %5466, 1.000000e+00
  %5475 = fcmp fast ole float %5467, 1.000000e+00
  %5476 = and i1 %5473, %5474
  %5477 = and i1 %5475, %5476
  %5478 = and i1 %5472, %5477
  br i1 %5478, label %5479, label %5511

; <label>:5479                                    ; preds = %5447
  %5480 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 379)  ; CBufferLoadLegacy(handle,regIndex)
  %5481 = extractvalue %dx.types.CBufRet.i32 %5480, 0
  %5482 = icmp eq i32 %5481, 0
  br i1 %5482, label %5489, label %5483

; <label>:5483                                    ; preds = %5479
  %5484 = add i32 %5481, 0
  %5485 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5484, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5486 = fsub fast float -0.000000e+00, %5466
  %5487 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %5485, %dx.types.Handle %108, float %5465, float %5486, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %5488 = extractvalue %dx.types.ResRet.f32 %5487, 0
  br label %5489

; <label>:5489                                    ; preds = %5483, %5479
  %5490 = phi float [ %5488, %5483 ], [ 1.000000e+00, %5479 ]
  %5491 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 369)  ; CBufferLoadLegacy(handle,regIndex)
  %5492 = extractvalue %dx.types.CBufRet.i32 %5491, 0
  %5493 = and i32 %5492, 32
  %5494 = icmp ne i32 %5493, 0
  %5495 = fmul fast float %5490, %5428
  %5496 = select i1 %5494, float %5490, float %5495
  %5497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 379)  ; CBufferLoadLegacy(handle,regIndex)
  %5498 = extractvalue %dx.types.CBufRet.f32 %5497, 1
  %5499 = fmul fast float %5496, %5498
  %5500 = fadd fast float %5499, %5438
  %5501 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 380)  ; CBufferLoadLegacy(handle,regIndex)
  %5502 = extractvalue %dx.types.CBufRet.f32 %5501, 0
  %5503 = fmul fast float %5496, %5502
  %5504 = fadd fast float %5503, %5429
  %5505 = extractvalue %dx.types.CBufRet.f32 %5501, 1
  %5506 = fmul fast float %5496, %5505
  %5507 = fadd fast float %5506, %5440
  %5508 = extractvalue %dx.types.CBufRet.f32 %5501, 2
  %5509 = fmul fast float %5508, %5496
  %5510 = fadd fast float %5509, %5443
  br label %5511

; <label>:5511                                    ; preds = %5489, %5447, %5434, %5427, %4381
  %5512 = phi float [ %5351, %5427 ], [ %4385, %4381 ], [ %5500, %5489 ], [ %5438, %5447 ], [ %5438, %5434 ]
  %5513 = phi float [ %5429, %5427 ], [ 0.000000e+00, %4381 ], [ %5504, %5489 ], [ %5429, %5447 ], [ %5429, %5434 ]
  %5514 = phi float [ 0.000000e+00, %5427 ], [ 0.000000e+00, %4381 ], [ %5507, %5489 ], [ %5440, %5447 ], [ %5440, %5434 ]
  %5515 = phi float [ 0.000000e+00, %5427 ], [ 0.000000e+00, %4381 ], [ %5510, %5489 ], [ %5443, %5447 ], [ %5443, %5434 ]
  %5516 = call float @dx.op.unary.f32(i32 7, float %5512)  ; Saturate(value)
  %5517 = call float @dx.op.unary.f32(i32 7, float %5513)  ; Saturate(value)
  %5518 = call float @dx.op.unary.f32(i32 7, float %5514)  ; Saturate(value)
  %5519 = call float @dx.op.unary.f32(i32 7, float %5515)  ; Saturate(value)
  %5520 = fcmp fast une float %5518, 0.000000e+00
  %5521 = fcmp fast une float %5519, 0.000000e+00
  %5522 = or i1 %5520, %5521
  br i1 %5522, label %5523, label %6089

; <label>:5523                                    ; preds = %5511
  %5524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5525 = extractvalue %dx.types.CBufRet.f32 %5524, 0
  %5526 = extractvalue %dx.types.CBufRet.f32 %5524, 1
  %5527 = extractvalue %dx.types.CBufRet.f32 %5524, 2
  %5528 = fadd fast float %5525, %170
  %5529 = fadd fast float %5526, %171
  %5530 = fadd fast float %5527, %172
  br i1 %5520, label %5531, label %5804

; <label>:5531                                    ; preds = %5523
  %5532 = call float @dx.op.unary.f32(i32 23, float %4260)  ; Log(value)
  %5533 = fmul fast float %5532, 4.000000e+00
  %5534 = call float @dx.op.unary.f32(i32 21, float %5533)  ; Exp(value)
  %5535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %5536 = extractvalue %dx.types.CBufRet.f32 %5535, 0
  %5537 = fmul fast float %5536, %5528
  %5538 = fmul fast float %5536, %5529
  %5539 = fmul fast float %5536, %5530
  %5540 = call float @dx.op.unary.f32(i32 6, float %120)  ; FAbs(value)
  %5541 = call float @dx.op.unary.f32(i32 6, float %122)  ; FAbs(value)
  %5542 = call float @dx.op.unary.f32(i32 6, float %124)  ; FAbs(value)
  %5543 = call float @dx.op.unary.f32(i32 23, float %5540)  ; Log(value)
  %5544 = call float @dx.op.unary.f32(i32 23, float %5541)  ; Log(value)
  %5545 = call float @dx.op.unary.f32(i32 23, float %5542)  ; Log(value)
  %5546 = fmul fast float %5543, 4.000000e+00
  %5547 = fmul fast float %5544, 4.000000e+00
  %5548 = fmul fast float %5545, 4.000000e+00
  %5549 = call float @dx.op.unary.f32(i32 21, float %5546)  ; Exp(value)
  %5550 = call float @dx.op.unary.f32(i32 21, float %5547)  ; Exp(value)
  %5551 = call float @dx.op.unary.f32(i32 21, float %5548)  ; Exp(value)
  %5552 = fadd fast float %5550, %5549
  %5553 = fadd fast float %5552, %5551
  %5554 = fdiv fast float 1.000000e+00, %5553
  %5555 = fmul fast float %5554, %5549
  %5556 = fcmp fast ogt float %120, 0.000000e+00
  %5557 = fcmp fast ogt float %122, 0.000000e+00
  %5558 = fcmp fast ogt float %124, 0.000000e+00
  %5559 = fcmp fast olt float %120, 0.000000e+00
  %5560 = fcmp fast olt float %122, 0.000000e+00
  %5561 = fcmp fast olt float %124, 0.000000e+00
  %5562 = zext i1 %5556 to i32
  %5563 = zext i1 %5557 to i32
  %5564 = zext i1 %5558 to i32
  %5565 = zext i1 %5559 to i32
  %5566 = zext i1 %5560 to i32
  %5567 = zext i1 %5561 to i32
  %5568 = sub nsw i32 %5562, %5565
  %5569 = sub nsw i32 %5563, %5566
  %5570 = sub nsw i32 %5564, %5567
  %5571 = call float @dx.op.unary.f32(i32 83, float %5537)  ; DerivCoarseX(value)
  %5572 = call float @dx.op.unary.f32(i32 83, float %5538)  ; DerivCoarseX(value)
  %5573 = call float @dx.op.unary.f32(i32 83, float %5539)  ; DerivCoarseX(value)
  %5574 = call float @dx.op.unary.f32(i32 84, float %5537)  ; DerivCoarseY(value)
  %5575 = call float @dx.op.unary.f32(i32 84, float %5538)  ; DerivCoarseY(value)
  %5576 = call float @dx.op.unary.f32(i32 84, float %5539)  ; DerivCoarseY(value)
  %5577 = fcmp fast ole float %242, %5555
  %5578 = fmul fast float %5554, %5552
  %5579 = fcmp fast ole float %242, %5578
  %5580 = select i1 %5579, float %5539, float %5537
  %5581 = select i1 %5579, float %5537, float %5538
  %5582 = select i1 %5577, float %5538, float %5580
  %5583 = select i1 %5577, float %5539, float %5581
  %5584 = select i1 %5579, float %5573, float %5571
  %5585 = select i1 %5579, float %5571, float %5572
  %5586 = select i1 %5577, float %5572, float %5584
  %5587 = select i1 %5577, float %5573, float %5585
  %5588 = select i1 %5579, float %5576, float %5574
  %5589 = select i1 %5579, float %5574, float %5575
  %5590 = select i1 %5577, float %5575, float %5588
  %5591 = select i1 %5577, float %5576, float %5589
  %5592 = call float @dx.op.unary.f32(i32 27, float %5582)  ; Round_ni(value)
  %5593 = call float @dx.op.unary.f32(i32 27, float %5583)  ; Round_ni(value)
  %5594 = fptosi float %5592 to i32
  %5595 = fptosi float %5593 to i32
  %5596 = xor i32 %5595, %5594
  %5597 = sitofp i32 %5596 to float
  %5598 = fptosi float %5597 to i32
  %5599 = sitofp i32 %5598 to float
  %5600 = fmul fast float %5599, 0x3FE3C6EF40000000
  %5601 = frem fast float %5592, 2.560000e+02
  %5602 = frem fast float %5593, 2.560000e+02
  %5603 = fptoui float %5601 to i32
  %5604 = fptoui float %5602 to i32
  %5605 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %29, i32 0, i32 %5603, i32 %5604, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5606 = extractvalue %dx.types.ResRet.f32 %5605, 0
  %5607 = extractvalue %dx.types.ResRet.f32 %5605, 1
  %5608 = extractvalue %dx.types.ResRet.f32 %5605, 2
  %5609 = fadd fast float %5606, %5600
  %5610 = fadd fast float %5607, %5600
  %5611 = fadd fast float %5608, %5600
  %5612 = call float @dx.op.unary.f32(i32 22, float %5609)  ; Frc(value)
  %5613 = call float @dx.op.unary.f32(i32 22, float %5610)  ; Frc(value)
  %5614 = call float @dx.op.unary.f32(i32 22, float %5611)  ; Frc(value)
  %5615 = fmul fast float %5614, 0x401921FB60000000
  %5616 = call float @dx.op.unary.f32(i32 13, float %5615)  ; Sin(value)
  %5617 = call float @dx.op.unary.f32(i32 12, float %5615)  ; Cos(value)
  %5618 = fsub fast float -0.000000e+00, %5617
  %5619 = fmul fast float %5617, %5582
  %5620 = call float @dx.op.tertiary.f32(i32 46, float %5616, float %5583, float %5619)  ; FMad(a,b,c)
  %5621 = fmul fast float %5616, %5582
  %5622 = call float @dx.op.tertiary.f32(i32 46, float %5618, float %5583, float %5621)  ; FMad(a,b,c)
  %5623 = fadd fast float %5620, %5612
  %5624 = fadd fast float %5622, %5613
  %5625 = extractvalue %dx.types.CBufRet.f32 %5535, 3
  %5626 = bitcast float %5625 to i32
  %5627 = icmp eq i32 %5626, 0
  br i1 %5627, label %5666, label %5628

; <label>:5628                                    ; preds = %5531
  %5629 = add i32 %5626, 0
  %5630 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5629, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5631 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5630, %dx.types.Handle %108, float %5623, float %5624, float undef, float undef, i32 0, i32 0, i32 undef, float %5586, float %5587, float undef, float %5590, float %5591, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5632 = extractvalue %dx.types.ResRet.f32 %5631, 0
  %5633 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %5634 = extractvalue %dx.types.CBufRet.f32 %5633, 1
  %5635 = extractvalue %dx.types.CBufRet.f32 %5633, 2
  %5636 = fsub fast float 1.000000e+00, %5518
  %5637 = call float @dx.op.binary.f32(i32 35, float %5636, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5638 = bitcast float %5518 to i32
  %5639 = sitofp i32 %5638 to float
  %5640 = fadd fast float %5639, 0xC1CFBF8940000000
  %5641 = fmul fast float %5635, %5640
  %5642 = fadd fast float %5641, 0x41CFBF8940000000
  %5643 = fptosi float %5642 to i32
  %5644 = bitcast i32 %5643 to float
  %5645 = bitcast float %5637 to i32
  %5646 = sitofp i32 %5645 to float
  %5647 = fadd fast float %5646, 0xC1CFBF8940000000
  %5648 = fmul fast float %5647, %5635
  %5649 = fadd fast float %5648, 0x41CFBF8940000000
  %5650 = fptosi float %5649 to i32
  %5651 = bitcast i32 %5650 to float
  %5652 = fmul fast float %5644, %5634
  %5653 = fmul fast float %5651, %5634
  %5654 = fsub fast float %5637, %5652
  %5655 = fadd fast float %5653, %5637
  %5656 = call float @dx.op.unary.f32(i32 7, float %5654)  ; Saturate(value)
  %5657 = call float @dx.op.unary.f32(i32 7, float %5655)  ; Saturate(value)
  %5658 = fsub fast float %5632, %5656
  %5659 = fsub fast float %5657, %5656
  %5660 = bitcast float %5659 to i32
  %5661 = sub nsw i32 2129859010, %5660
  %5662 = bitcast i32 %5661 to float
  %5663 = fmul fast float %5662, %5658
  %5664 = call float @dx.op.unary.f32(i32 7, float %5663)  ; Saturate(value)
  %5665 = fcmp fast olt float %5664, 0x3F70101020000000
  br i1 %5665, label %5804, label %5666

; <label>:5666                                    ; preds = %5628, %5531
  %5667 = phi float [ %5664, %5628 ], [ %5518, %5531 ]
  %5668 = fmul fast float %5667, %5534
  %5669 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %5670 = extractvalue %dx.types.CBufRet.i32 %5669, 1
  %5671 = extractvalue %dx.types.CBufRet.i32 %5669, 0
  %5672 = add i32 %5671, 0
  %5673 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5672, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5674 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5673, %dx.types.Handle %107, float %5623, float %5624, float undef, float undef, i32 0, i32 0, i32 undef, float %5586, float %5587, float undef, float %5590, float %5591, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5675 = extractvalue %dx.types.ResRet.f32 %5674, 0
  %5676 = extractvalue %dx.types.ResRet.f32 %5674, 1
  %5677 = extractvalue %dx.types.ResRet.f32 %5674, 2
  %5678 = extractvalue %dx.types.ResRet.f32 %5674, 3
  %5679 = and i32 %5670, 255
  %5680 = uitofp i32 %5679 to float
  %5681 = lshr i32 %5670, 8
  %5682 = and i32 %5681, 255
  %5683 = uitofp i32 %5682 to float
  %5684 = fmul fast float %5678, %5680
  %5685 = fadd fast float %5684, %5683
  %5686 = fmul fast float %5685, 0x3F70101000000000
  %5687 = fadd fast float %5686, 0xBFB99999A0000000
  %5688 = call float @dx.op.unary.f32(i32 7, float %5687)  ; Saturate(value)
  %5689 = fmul fast float %5688, 0x3FF1C71C80000000
  %5690 = call float @dx.op.binary.f32(i32 36, float %5686, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5691 = fsub fast float 1.000000e+00, %5689
  %5692 = call float @dx.op.unary.f32(i32 7, float %5691)  ; Saturate(value)
  %5693 = fmul fast float %5692, %5675
  %5694 = fmul fast float %5692, %5676
  %5695 = fmul fast float %5692, %5677
  %5696 = call float @dx.op.unary.f32(i32 7, float %5693)  ; Saturate(value)
  %5697 = call float @dx.op.unary.f32(i32 7, float %5694)  ; Saturate(value)
  %5698 = call float @dx.op.unary.f32(i32 7, float %5695)  ; Saturate(value)
  %5699 = fmul fast float %5689, %5675
  %5700 = fmul fast float %5689, %5676
  %5701 = fmul fast float %5689, %5677
  %5702 = fadd fast float %5699, %5690
  %5703 = fadd fast float %5700, %5690
  %5704 = fadd fast float %5701, %5690
  %5705 = call float @dx.op.unary.f32(i32 7, float %5702)  ; Saturate(value)
  %5706 = call float @dx.op.unary.f32(i32 7, float %5703)  ; Saturate(value)
  %5707 = call float @dx.op.unary.f32(i32 7, float %5704)  ; Saturate(value)
  %5708 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %5709 = extractvalue %dx.types.CBufRet.i32 %5708, 3
  %5710 = extractvalue %dx.types.CBufRet.i32 %5708, 2
  %5711 = add i32 %5710, 0
  %5712 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5711, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5713 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5712, %dx.types.Handle %107, float %5623, float %5624, float undef, float undef, i32 0, i32 0, i32 undef, float %5586, float %5587, float undef, float %5590, float %5591, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5714 = extractvalue %dx.types.ResRet.f32 %5713, 0
  %5715 = extractvalue %dx.types.ResRet.f32 %5713, 1
  %5716 = extractvalue %dx.types.ResRet.f32 %5713, 2
  %5717 = extractvalue %dx.types.ResRet.f32 %5713, 3
  %5718 = and i32 %5709, 255
  %5719 = uitofp i32 %5718 to float
  %5720 = lshr i32 %5709, 8
  %5721 = and i32 %5720, 255
  %5722 = uitofp i32 %5721 to float
  %5723 = lshr i32 %5709, 16
  %5724 = and i32 %5723, 255
  %5725 = uitofp i32 %5724 to float
  %5726 = fmul fast float %5725, 0x3F70101000000000
  %5727 = fmul fast float %5714, %5719
  %5728 = fadd fast float %5727, %5722
  %5729 = fmul fast float %5728, 0x3F70101000000000
  %5730 = fadd fast float %5715, -5.000000e-01
  %5731 = fadd fast float %5717, -5.000000e-01
  %5732 = fmul fast float %5730, %5726
  %5733 = fmul fast float %5731, %5726
  %5734 = fadd fast float %5732, 5.000000e-01
  %5735 = fadd fast float %5733, 5.000000e-01
  %5736 = fmul fast float %5734, 2.000000e+00
  %5737 = fadd fast float %5736, -1.000000e+00
  %5738 = fmul fast float %5735, 2.000000e+00
  %5739 = fadd fast float %5738, -1.000000e+00
  %5740 = fadd fast float %5737, %5739
  %5741 = fmul fast float %5740, 5.000000e-01
  %5742 = fsub fast float %5737, %5739
  %5743 = fmul fast float %5742, 5.000000e-01
  %5744 = call float @dx.op.unary.f32(i32 6, float %5741)  ; FAbs(value)
  %5745 = fsub fast float 1.000000e+00, %5744
  %5746 = call float @dx.op.unary.f32(i32 6, float %5743)  ; FAbs(value)
  %5747 = fsub fast float %5745, %5746
  %5748 = call float @dx.op.dot3.f32(i32 55, float %5741, float %5743, float %5747, float %5741, float %5743, float %5747)  ; Dot3(ax,ay,az,bx,by,bz)
  %5749 = call float @dx.op.unary.f32(i32 25, float %5748)  ; Rsqrt(value)
  %5750 = fmul fast float %5741, %5749
  %5751 = fmul fast float %5743, %5749
  %5752 = select i1 %5579, i32 %5569, i32 %5570
  %5753 = select i1 %5577, i32 %5568, i32 %5752
  %5754 = sitofp i32 %5753 to float
  %5755 = fmul fast float %5747, %5754
  %5756 = fmul fast float %5755, %5749
  %5757 = select i1 %5579, float %5756, float %5751
  %5758 = select i1 %5579, float %5751, float %5756
  %5759 = select i1 %5577, float %5756, float %5750
  %5760 = select i1 %5577, float %5751, float %5757
  %5761 = select i1 %5577, float %5750, float %5758
  %5762 = fsub fast float %5696, %4299
  %5763 = fsub fast float %5697, %4300
  %5764 = fsub fast float %5698, %4301
  %5765 = fmul fast float %5762, %5668
  %5766 = fmul fast float %5763, %5668
  %5767 = fmul fast float %5764, %5668
  %5768 = fadd fast float %5765, %4299
  %5769 = fadd fast float %5766, %4300
  %5770 = fadd fast float %5767, %4301
  %5771 = fsub fast float %5705, %4284
  %5772 = fsub fast float %5706, %4285
  %5773 = fsub fast float %5707, %4286
  %5774 = fmul fast float %5771, %5668
  %5775 = fmul fast float %5772, %5668
  %5776 = fmul fast float %5773, %5668
  %5777 = fadd fast float %5774, %4284
  %5778 = fadd fast float %5775, %4285
  %5779 = fadd fast float %5776, %4286
  %5780 = fadd fast float %5759, %4248
  %5781 = fadd fast float %5760, %4249
  %5782 = fadd fast float %5761, %4250
  %5783 = call float @dx.op.dot3.f32(i32 55, float %5780, float %5781, float %5782, float %5780, float %5781, float %5782)  ; Dot3(ax,ay,az,bx,by,bz)
  %5784 = call float @dx.op.unary.f32(i32 25, float %5783)  ; Rsqrt(value)
  %5785 = fmul fast float %5780, %5784
  %5786 = fmul fast float %5781, %5784
  %5787 = fmul fast float %5782, %5784
  %5788 = fsub fast float %5785, %4248
  %5789 = fsub fast float %5786, %4249
  %5790 = fsub fast float %5787, %4250
  %5791 = fmul fast float %5788, %5668
  %5792 = fmul fast float %5789, %5668
  %5793 = fmul fast float %5790, %5668
  %5794 = fadd fast float %5791, %4248
  %5795 = fadd fast float %5792, %4249
  %5796 = fadd fast float %5793, %4250
  %5797 = call float @dx.op.binary.f32(i32 36, float %4260, float %5716)  ; FMin(a,b)
  %5798 = fsub fast float %5797, %4260
  %5799 = fmul fast float %5798, %5668
  %5800 = fadd fast float %5799, %4260
  %5801 = fsub fast float %5729, %4287
  %5802 = fmul fast float %5801, %5668
  %5803 = fadd fast float %5802, %4287
  br label %5804

; <label>:5804                                    ; preds = %5666, %5628, %5523
  %5805 = phi float [ %5777, %5666 ], [ %4284, %5628 ], [ %4284, %5523 ]
  %5806 = phi float [ %5778, %5666 ], [ %4285, %5628 ], [ %4285, %5523 ]
  %5807 = phi float [ %5779, %5666 ], [ %4286, %5628 ], [ %4286, %5523 ]
  %5808 = phi float [ %5768, %5666 ], [ %4299, %5628 ], [ %4299, %5523 ]
  %5809 = phi float [ %5769, %5666 ], [ %4300, %5628 ], [ %4300, %5523 ]
  %5810 = phi float [ %5770, %5666 ], [ %4301, %5628 ], [ %4301, %5523 ]
  %5811 = phi float [ %5794, %5666 ], [ %4248, %5628 ], [ %4248, %5523 ]
  %5812 = phi float [ %5795, %5666 ], [ %4249, %5628 ], [ %4249, %5523 ]
  %5813 = phi float [ %5796, %5666 ], [ %4250, %5628 ], [ %4250, %5523 ]
  %5814 = phi float [ %5803, %5666 ], [ %4287, %5628 ], [ %4287, %5523 ]
  %5815 = phi float [ %5800, %5666 ], [ %4260, %5628 ], [ %4260, %5523 ]
  br i1 %5521, label %5816, label %6089

; <label>:5816                                    ; preds = %5804
  %5817 = call float @dx.op.unary.f32(i32 23, float %5815)  ; Log(value)
  %5818 = fmul fast float %5817, 4.000000e+00
  %5819 = call float @dx.op.unary.f32(i32 21, float %5818)  ; Exp(value)
  %5820 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5821 = extractvalue %dx.types.CBufRet.f32 %5820, 0
  %5822 = fmul fast float %5821, %5528
  %5823 = fmul fast float %5821, %5529
  %5824 = fmul fast float %5821, %5530
  %5825 = call float @dx.op.unary.f32(i32 6, float %120)  ; FAbs(value)
  %5826 = call float @dx.op.unary.f32(i32 6, float %122)  ; FAbs(value)
  %5827 = call float @dx.op.unary.f32(i32 6, float %124)  ; FAbs(value)
  %5828 = call float @dx.op.unary.f32(i32 23, float %5825)  ; Log(value)
  %5829 = call float @dx.op.unary.f32(i32 23, float %5826)  ; Log(value)
  %5830 = call float @dx.op.unary.f32(i32 23, float %5827)  ; Log(value)
  %5831 = fmul fast float %5828, 4.000000e+00
  %5832 = fmul fast float %5829, 4.000000e+00
  %5833 = fmul fast float %5830, 4.000000e+00
  %5834 = call float @dx.op.unary.f32(i32 21, float %5831)  ; Exp(value)
  %5835 = call float @dx.op.unary.f32(i32 21, float %5832)  ; Exp(value)
  %5836 = call float @dx.op.unary.f32(i32 21, float %5833)  ; Exp(value)
  %5837 = fadd fast float %5835, %5834
  %5838 = fadd fast float %5837, %5836
  %5839 = fdiv fast float 1.000000e+00, %5838
  %5840 = fmul fast float %5839, %5834
  %5841 = fcmp fast ogt float %120, 0.000000e+00
  %5842 = fcmp fast ogt float %122, 0.000000e+00
  %5843 = fcmp fast ogt float %124, 0.000000e+00
  %5844 = fcmp fast olt float %120, 0.000000e+00
  %5845 = fcmp fast olt float %122, 0.000000e+00
  %5846 = fcmp fast olt float %124, 0.000000e+00
  %5847 = zext i1 %5841 to i32
  %5848 = zext i1 %5842 to i32
  %5849 = zext i1 %5843 to i32
  %5850 = zext i1 %5844 to i32
  %5851 = zext i1 %5845 to i32
  %5852 = zext i1 %5846 to i32
  %5853 = sub nsw i32 %5847, %5850
  %5854 = sub nsw i32 %5848, %5851
  %5855 = sub nsw i32 %5849, %5852
  %5856 = call float @dx.op.unary.f32(i32 83, float %5822)  ; DerivCoarseX(value)
  %5857 = call float @dx.op.unary.f32(i32 83, float %5823)  ; DerivCoarseX(value)
  %5858 = call float @dx.op.unary.f32(i32 83, float %5824)  ; DerivCoarseX(value)
  %5859 = call float @dx.op.unary.f32(i32 84, float %5822)  ; DerivCoarseY(value)
  %5860 = call float @dx.op.unary.f32(i32 84, float %5823)  ; DerivCoarseY(value)
  %5861 = call float @dx.op.unary.f32(i32 84, float %5824)  ; DerivCoarseY(value)
  %5862 = fcmp fast ole float %242, %5840
  %5863 = fmul fast float %5839, %5837
  %5864 = fcmp fast ole float %242, %5863
  %5865 = select i1 %5864, float %5824, float %5822
  %5866 = select i1 %5864, float %5822, float %5823
  %5867 = select i1 %5862, float %5823, float %5865
  %5868 = select i1 %5862, float %5824, float %5866
  %5869 = select i1 %5864, float %5858, float %5856
  %5870 = select i1 %5864, float %5856, float %5857
  %5871 = select i1 %5862, float %5857, float %5869
  %5872 = select i1 %5862, float %5858, float %5870
  %5873 = select i1 %5864, float %5861, float %5859
  %5874 = select i1 %5864, float %5859, float %5860
  %5875 = select i1 %5862, float %5860, float %5873
  %5876 = select i1 %5862, float %5861, float %5874
  %5877 = call float @dx.op.unary.f32(i32 27, float %5867)  ; Round_ni(value)
  %5878 = call float @dx.op.unary.f32(i32 27, float %5868)  ; Round_ni(value)
  %5879 = fptosi float %5877 to i32
  %5880 = fptosi float %5878 to i32
  %5881 = xor i32 %5880, %5879
  %5882 = sitofp i32 %5881 to float
  %5883 = fptosi float %5882 to i32
  %5884 = sitofp i32 %5883 to float
  %5885 = fmul fast float %5884, 0x3FE3C6EF40000000
  %5886 = frem fast float %5877, 2.560000e+02
  %5887 = frem fast float %5878, 2.560000e+02
  %5888 = fptoui float %5886 to i32
  %5889 = fptoui float %5887 to i32
  %5890 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %29, i32 0, i32 %5888, i32 %5889, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5891 = extractvalue %dx.types.ResRet.f32 %5890, 0
  %5892 = extractvalue %dx.types.ResRet.f32 %5890, 1
  %5893 = extractvalue %dx.types.ResRet.f32 %5890, 2
  %5894 = fadd fast float %5891, %5885
  %5895 = fadd fast float %5892, %5885
  %5896 = fadd fast float %5893, %5885
  %5897 = call float @dx.op.unary.f32(i32 22, float %5894)  ; Frc(value)
  %5898 = call float @dx.op.unary.f32(i32 22, float %5895)  ; Frc(value)
  %5899 = call float @dx.op.unary.f32(i32 22, float %5896)  ; Frc(value)
  %5900 = fmul fast float %5899, 0x401921FB60000000
  %5901 = call float @dx.op.unary.f32(i32 13, float %5900)  ; Sin(value)
  %5902 = call float @dx.op.unary.f32(i32 12, float %5900)  ; Cos(value)
  %5903 = fsub fast float -0.000000e+00, %5902
  %5904 = fmul fast float %5902, %5867
  %5905 = call float @dx.op.tertiary.f32(i32 46, float %5901, float %5868, float %5904)  ; FMad(a,b,c)
  %5906 = fmul fast float %5901, %5867
  %5907 = call float @dx.op.tertiary.f32(i32 46, float %5903, float %5868, float %5906)  ; FMad(a,b,c)
  %5908 = fadd fast float %5905, %5897
  %5909 = fadd fast float %5907, %5898
  %5910 = extractvalue %dx.types.CBufRet.f32 %5820, 3
  %5911 = bitcast float %5910 to i32
  %5912 = icmp eq i32 %5911, 0
  br i1 %5912, label %5951, label %5913

; <label>:5913                                    ; preds = %5816
  %5914 = add i32 %5911, 0
  %5915 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5914, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5916 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5915, %dx.types.Handle %108, float %5908, float %5909, float undef, float undef, i32 0, i32 0, i32 undef, float %5871, float %5872, float undef, float %5875, float %5876, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5917 = extractvalue %dx.types.ResRet.f32 %5916, 0
  %5918 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5919 = extractvalue %dx.types.CBufRet.f32 %5918, 1
  %5920 = extractvalue %dx.types.CBufRet.f32 %5918, 2
  %5921 = fsub fast float 1.000000e+00, %5519
  %5922 = call float @dx.op.binary.f32(i32 35, float %5921, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5923 = bitcast float %5519 to i32
  %5924 = sitofp i32 %5923 to float
  %5925 = fadd fast float %5924, 0xC1CFBF8940000000
  %5926 = fmul fast float %5920, %5925
  %5927 = fadd fast float %5926, 0x41CFBF8940000000
  %5928 = fptosi float %5927 to i32
  %5929 = bitcast i32 %5928 to float
  %5930 = bitcast float %5922 to i32
  %5931 = sitofp i32 %5930 to float
  %5932 = fadd fast float %5931, 0xC1CFBF8940000000
  %5933 = fmul fast float %5932, %5920
  %5934 = fadd fast float %5933, 0x41CFBF8940000000
  %5935 = fptosi float %5934 to i32
  %5936 = bitcast i32 %5935 to float
  %5937 = fmul fast float %5929, %5919
  %5938 = fmul fast float %5936, %5919
  %5939 = fsub fast float %5922, %5937
  %5940 = fadd fast float %5938, %5922
  %5941 = call float @dx.op.unary.f32(i32 7, float %5939)  ; Saturate(value)
  %5942 = call float @dx.op.unary.f32(i32 7, float %5940)  ; Saturate(value)
  %5943 = fsub fast float %5917, %5941
  %5944 = fsub fast float %5942, %5941
  %5945 = bitcast float %5944 to i32
  %5946 = sub nsw i32 2129859010, %5945
  %5947 = bitcast i32 %5946 to float
  %5948 = fmul fast float %5947, %5943
  %5949 = call float @dx.op.unary.f32(i32 7, float %5948)  ; Saturate(value)
  %5950 = fcmp fast olt float %5949, 0x3F70101020000000
  br i1 %5950, label %6089, label %5951

; <label>:5951                                    ; preds = %5913, %5816
  %5952 = phi float [ %5949, %5913 ], [ %5519, %5816 ]
  %5953 = fmul fast float %5952, %5819
  %5954 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5955 = extractvalue %dx.types.CBufRet.i32 %5954, 1
  %5956 = extractvalue %dx.types.CBufRet.i32 %5954, 0
  %5957 = add i32 %5956, 0
  %5958 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5957, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5959 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5958, %dx.types.Handle %107, float %5908, float %5909, float undef, float undef, i32 0, i32 0, i32 undef, float %5871, float %5872, float undef, float %5875, float %5876, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5960 = extractvalue %dx.types.ResRet.f32 %5959, 0
  %5961 = extractvalue %dx.types.ResRet.f32 %5959, 1
  %5962 = extractvalue %dx.types.ResRet.f32 %5959, 2
  %5963 = extractvalue %dx.types.ResRet.f32 %5959, 3
  %5964 = and i32 %5955, 255
  %5965 = uitofp i32 %5964 to float
  %5966 = lshr i32 %5955, 8
  %5967 = and i32 %5966, 255
  %5968 = uitofp i32 %5967 to float
  %5969 = fmul fast float %5963, %5965
  %5970 = fadd fast float %5969, %5968
  %5971 = fmul fast float %5970, 0x3F70101000000000
  %5972 = fadd fast float %5971, 0xBFB99999A0000000
  %5973 = call float @dx.op.unary.f32(i32 7, float %5972)  ; Saturate(value)
  %5974 = fmul fast float %5973, 0x3FF1C71C80000000
  %5975 = call float @dx.op.binary.f32(i32 36, float %5971, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5976 = fsub fast float 1.000000e+00, %5974
  %5977 = call float @dx.op.unary.f32(i32 7, float %5976)  ; Saturate(value)
  %5978 = fmul fast float %5977, %5960
  %5979 = fmul fast float %5977, %5961
  %5980 = fmul fast float %5977, %5962
  %5981 = call float @dx.op.unary.f32(i32 7, float %5978)  ; Saturate(value)
  %5982 = call float @dx.op.unary.f32(i32 7, float %5979)  ; Saturate(value)
  %5983 = call float @dx.op.unary.f32(i32 7, float %5980)  ; Saturate(value)
  %5984 = fmul fast float %5974, %5960
  %5985 = fmul fast float %5974, %5961
  %5986 = fmul fast float %5974, %5962
  %5987 = fadd fast float %5984, %5975
  %5988 = fadd fast float %5985, %5975
  %5989 = fadd fast float %5986, %5975
  %5990 = call float @dx.op.unary.f32(i32 7, float %5987)  ; Saturate(value)
  %5991 = call float @dx.op.unary.f32(i32 7, float %5988)  ; Saturate(value)
  %5992 = call float @dx.op.unary.f32(i32 7, float %5989)  ; Saturate(value)
  %5993 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5994 = extractvalue %dx.types.CBufRet.i32 %5993, 3
  %5995 = extractvalue %dx.types.CBufRet.i32 %5993, 2
  %5996 = add i32 %5995, 0
  %5997 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5996, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5998 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5997, %dx.types.Handle %107, float %5908, float %5909, float undef, float undef, i32 0, i32 0, i32 undef, float %5871, float %5872, float undef, float %5875, float %5876, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5999 = extractvalue %dx.types.ResRet.f32 %5998, 0
  %6000 = extractvalue %dx.types.ResRet.f32 %5998, 1
  %6001 = extractvalue %dx.types.ResRet.f32 %5998, 2
  %6002 = extractvalue %dx.types.ResRet.f32 %5998, 3
  %6003 = and i32 %5994, 255
  %6004 = uitofp i32 %6003 to float
  %6005 = lshr i32 %5994, 8
  %6006 = and i32 %6005, 255
  %6007 = uitofp i32 %6006 to float
  %6008 = lshr i32 %5994, 16
  %6009 = and i32 %6008, 255
  %6010 = uitofp i32 %6009 to float
  %6011 = fmul fast float %6010, 0x3F70101000000000
  %6012 = fmul fast float %5999, %6004
  %6013 = fadd fast float %6012, %6007
  %6014 = fmul fast float %6013, 0x3F70101000000000
  %6015 = fadd fast float %6000, -5.000000e-01
  %6016 = fadd fast float %6002, -5.000000e-01
  %6017 = fmul fast float %6015, %6011
  %6018 = fmul fast float %6016, %6011
  %6019 = fadd fast float %6017, 5.000000e-01
  %6020 = fadd fast float %6018, 5.000000e-01
  %6021 = fmul fast float %6019, 2.000000e+00
  %6022 = fadd fast float %6021, -1.000000e+00
  %6023 = fmul fast float %6020, 2.000000e+00
  %6024 = fadd fast float %6023, -1.000000e+00
  %6025 = fadd fast float %6022, %6024
  %6026 = fmul fast float %6025, 5.000000e-01
  %6027 = fsub fast float %6022, %6024
  %6028 = fmul fast float %6027, 5.000000e-01
  %6029 = call float @dx.op.unary.f32(i32 6, float %6026)  ; FAbs(value)
  %6030 = fsub fast float 1.000000e+00, %6029
  %6031 = call float @dx.op.unary.f32(i32 6, float %6028)  ; FAbs(value)
  %6032 = fsub fast float %6030, %6031
  %6033 = call float @dx.op.dot3.f32(i32 55, float %6026, float %6028, float %6032, float %6026, float %6028, float %6032)  ; Dot3(ax,ay,az,bx,by,bz)
  %6034 = call float @dx.op.unary.f32(i32 25, float %6033)  ; Rsqrt(value)
  %6035 = fmul fast float %6026, %6034
  %6036 = fmul fast float %6028, %6034
  %6037 = select i1 %5864, i32 %5854, i32 %5855
  %6038 = select i1 %5862, i32 %5853, i32 %6037
  %6039 = sitofp i32 %6038 to float
  %6040 = fmul fast float %6032, %6039
  %6041 = fmul fast float %6040, %6034
  %6042 = select i1 %5864, float %6041, float %6036
  %6043 = select i1 %5864, float %6036, float %6041
  %6044 = select i1 %5862, float %6041, float %6035
  %6045 = select i1 %5862, float %6036, float %6042
  %6046 = select i1 %5862, float %6035, float %6043
  %6047 = fsub fast float %5981, %5808
  %6048 = fsub fast float %5982, %5809
  %6049 = fsub fast float %5983, %5810
  %6050 = fmul fast float %6047, %5953
  %6051 = fmul fast float %6048, %5953
  %6052 = fmul fast float %6049, %5953
  %6053 = fadd fast float %6050, %5808
  %6054 = fadd fast float %6051, %5809
  %6055 = fadd fast float %6052, %5810
  %6056 = fsub fast float %5990, %5805
  %6057 = fsub fast float %5991, %5806
  %6058 = fsub fast float %5992, %5807
  %6059 = fmul fast float %6056, %5953
  %6060 = fmul fast float %6057, %5953
  %6061 = fmul fast float %6058, %5953
  %6062 = fadd fast float %6059, %5805
  %6063 = fadd fast float %6060, %5806
  %6064 = fadd fast float %6061, %5807
  %6065 = fadd fast float %6044, %5811
  %6066 = fadd fast float %6045, %5812
  %6067 = fadd fast float %6046, %5813
  %6068 = call float @dx.op.dot3.f32(i32 55, float %6065, float %6066, float %6067, float %6065, float %6066, float %6067)  ; Dot3(ax,ay,az,bx,by,bz)
  %6069 = call float @dx.op.unary.f32(i32 25, float %6068)  ; Rsqrt(value)
  %6070 = fmul fast float %6065, %6069
  %6071 = fmul fast float %6066, %6069
  %6072 = fmul fast float %6067, %6069
  %6073 = fsub fast float %6070, %5811
  %6074 = fsub fast float %6071, %5812
  %6075 = fsub fast float %6072, %5813
  %6076 = fmul fast float %6073, %5953
  %6077 = fmul fast float %6074, %5953
  %6078 = fmul fast float %6075, %5953
  %6079 = fadd fast float %6076, %5811
  %6080 = fadd fast float %6077, %5812
  %6081 = fadd fast float %6078, %5813
  %6082 = call float @dx.op.binary.f32(i32 36, float %5815, float %6001)  ; FMin(a,b)
  %6083 = fsub fast float %6082, %5815
  %6084 = fmul fast float %6083, %5953
  %6085 = fadd fast float %6084, %5815
  %6086 = fsub fast float %6014, %5814
  %6087 = fmul fast float %6086, %5953
  %6088 = fadd fast float %6087, %5814
  br label %6089

; <label>:6089                                    ; preds = %5951, %5913, %5804, %5511
  %6090 = phi float [ %6062, %5951 ], [ %5805, %5913 ], [ %5805, %5804 ], [ %4284, %5511 ]
  %6091 = phi float [ %6063, %5951 ], [ %5806, %5913 ], [ %5806, %5804 ], [ %4285, %5511 ]
  %6092 = phi float [ %6064, %5951 ], [ %5807, %5913 ], [ %5807, %5804 ], [ %4286, %5511 ]
  %6093 = phi float [ %6053, %5951 ], [ %5808, %5913 ], [ %5808, %5804 ], [ %4299, %5511 ]
  %6094 = phi float [ %6054, %5951 ], [ %5809, %5913 ], [ %5809, %5804 ], [ %4300, %5511 ]
  %6095 = phi float [ %6055, %5951 ], [ %5810, %5913 ], [ %5810, %5804 ], [ %4301, %5511 ]
  %6096 = phi float [ %6079, %5951 ], [ %5811, %5913 ], [ %5811, %5804 ], [ %4248, %5511 ]
  %6097 = phi float [ %6080, %5951 ], [ %5812, %5913 ], [ %5812, %5804 ], [ %4249, %5511 ]
  %6098 = phi float [ %6081, %5951 ], [ %5813, %5913 ], [ %5813, %5804 ], [ %4250, %5511 ]
  %6099 = phi float [ %6088, %5951 ], [ %5814, %5913 ], [ %5814, %5804 ], [ %4287, %5511 ]
  %6100 = phi float [ %6085, %5951 ], [ %5815, %5913 ], [ %5815, %5804 ], [ %4260, %5511 ]
  %6101 = fcmp fast une float %5516, 0.000000e+00
  %6102 = call float @dx.op.dot3.f32(i32 55, float %170, float %171, float %172, float %170, float %171, float %172)  ; Dot3(ax,ay,az,bx,by,bz)
  %6103 = call float @dx.op.unary.f32(i32 25, float %6102)  ; Rsqrt(value)
  br i1 %6101, label %6111, label %6104

; <label>:6104                                    ; preds = %6089
  %6105 = fmul fast float %6103, %170
  %6106 = fmul fast float %6103, %171
  %6107 = fmul fast float %6103, %172
  %6108 = fsub fast float -0.000000e+00, %6105
  %6109 = fsub fast float -0.000000e+00, %6106
  %6110 = fsub fast float -0.000000e+00, %6107
  br label %6472

; <label>:6111                                    ; preds = %6089
  %6112 = fmul fast float %170, %6103
  %6113 = fsub fast float -0.000000e+00, %6112
  %6114 = fmul fast float %171, %6103
  %6115 = fsub fast float -0.000000e+00, %6114
  %6116 = fmul fast float %172, %6103
  %6117 = fsub fast float -0.000000e+00, %6116
  %6118 = call float @dx.op.dot3.f32(i32 55, float %6113, float %6115, float %6117, float %120, float %122, float %124)  ; Dot3(ax,ay,az,bx,by,bz)
  %6119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6120 = fmul fast float %5516, 2.500000e+00
  %6121 = call float @dx.op.unary.f32(i32 7, float %6120)  ; Saturate(value)
  %6122 = fmul fast float %5516, 0x4013FFFFE0000000
  %6123 = fadd fast float %6122, 0xBFFFFFFFE0000000
  %6124 = call float @dx.op.unary.f32(i32 7, float %6123)  ; Saturate(value)
  %6125 = fmul fast float %5516, 0x4004000020000000
  %6126 = fadd fast float %6125, 0xBFF8000040000000
  %6127 = call float @dx.op.unary.f32(i32 7, float %6126)  ; Saturate(value)
  %6128 = call float @dx.op.unary.f32(i32 7, float %6121)  ; Saturate(value)
  %6129 = fmul fast float %4266, 1.000000e+01
  %6130 = call float @dx.op.unary.f32(i32 7, float %6129)  ; Saturate(value)
  %6131 = fmul fast float %6130, 2.000000e+00
  %6132 = fsub fast float 3.000000e+00, %6131
  %6133 = fmul fast float %6130, %6130
  %6134 = fmul fast float %6133, %6132
  %6135 = fsub fast float 1.000000e+00, %6134
  %6136 = fsub fast float 0x3FE3333340000000, %6099
  %6137 = fmul fast float %6136, 0x400AAAAAA0000000
  %6138 = call float @dx.op.unary.f32(i32 7, float %6137)  ; Saturate(value)
  %6139 = fmul fast float %6135, %6138
  %6140 = fmul fast float %6093, 0x3FEA2B8620000000
  %6141 = fmul fast float %6094, 0x3FEA2B8620000000
  %6142 = fmul fast float %6095, 0x3FEA2B8620000000
  %6143 = fadd fast float %6140, 0x3FC81DFBA0000000
  %6144 = fmul fast float %6143, %6093
  %6145 = fadd fast float %6144, 0x3F910E6020000000
  %6146 = fadd fast float %6141, 0x3FC81DFBA0000000
  %6147 = fmul fast float %6146, %6094
  %6148 = fadd fast float %6147, 0x3F910E6020000000
  %6149 = fadd fast float %6142, 0x3FC81DFBA0000000
  %6150 = fmul fast float %6149, %6095
  %6151 = fadd fast float %6150, 0x3F910E6020000000
  %6152 = call float @dx.op.unary.f32(i32 7, float %6145)  ; Saturate(value)
  %6153 = call float @dx.op.unary.f32(i32 7, float %6148)  ; Saturate(value)
  %6154 = call float @dx.op.unary.f32(i32 7, float %6151)  ; Saturate(value)
  %6155 = fsub fast float %6152, %6093
  %6156 = fsub fast float %6153, %6094
  %6157 = fsub fast float %6154, %6095
  %6158 = fmul fast float %6155, %6128
  %6159 = fmul fast float %6158, %6139
  %6160 = fmul fast float %6156, %6128
  %6161 = fmul fast float %6160, %6139
  %6162 = fmul fast float %6157, %6128
  %6163 = fmul fast float %6162, %6139
  %6164 = fadd fast float %6159, %6093
  %6165 = fadd fast float %6161, %6094
  %6166 = fadd fast float %6163, %6095
  %6167 = fmul fast float %6100, %6100
  %6168 = fmul fast float %6167, %6167
  %6169 = fadd fast float %6124, 1.000000e+00
  %6170 = fsub fast float %6169, %6139
  %6171 = call float @dx.op.unary.f32(i32 7, float %6170)  ; Saturate(value)
  %6172 = call float @dx.op.dot3.f32(i32 55, float %120, float %122, float %124, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6173 = call float @dx.op.unary.f32(i32 7, float %6172)  ; Saturate(value)
  %6174 = fsub fast float 1.000000e+00, %6168
  %6175 = call float @dx.op.binary.f32(i32 36, float %6171, float %6174)  ; FMin(a,b)
  %6176 = call float @dx.op.unary.f32(i32 7, float %6127)  ; Saturate(value)
  %6177 = call float @dx.op.binary.f32(i32 35, float %6175, float %6176)  ; FMax(a,b)
  %6178 = fadd fast float %6173, 0xBFE4CCCCC0000000
  %6179 = fmul fast float %6178, 0x4006DB6DA0000000
  %6180 = call float @dx.op.unary.f32(i32 7, float %6179)  ; Saturate(value)
  %6181 = fmul fast float %6180, 2.000000e+00
  %6182 = fsub fast float 3.000000e+00, %6181
  %6183 = bitcast float %6090 to i32
  %6184 = ashr i32 %6183, 1
  %6185 = add nsw i32 %6184, 532487669
  %6186 = bitcast i32 %6185 to float
  %6187 = fsub fast float 1.000000e+00, %6186
  %6188 = bitcast float %6187 to i32
  %6189 = sub nsw i32 2129859010, %6188
  %6190 = bitcast i32 %6189 to float
  %6191 = fmul fast float %6190, 2.000000e+00
  %6192 = bitcast float %6091 to i32
  %6193 = ashr i32 %6192, 1
  %6194 = add nsw i32 %6193, 532487669
  %6195 = bitcast i32 %6194 to float
  %6196 = fsub fast float 1.000000e+00, %6195
  %6197 = bitcast float %6196 to i32
  %6198 = sub nsw i32 2129859010, %6197
  %6199 = bitcast i32 %6198 to float
  %6200 = fmul fast float %6199, 2.000000e+00
  %6201 = bitcast float %6092 to i32
  %6202 = ashr i32 %6201, 1
  %6203 = add nsw i32 %6202, 532487669
  %6204 = bitcast i32 %6203 to float
  %6205 = fsub fast float 1.000000e+00, %6204
  %6206 = bitcast float %6205 to i32
  %6207 = sub nsw i32 2129859010, %6206
  %6208 = bitcast i32 %6207 to float
  %6209 = fmul fast float %6208, 2.000000e+00
  %6210 = fsub fast float 0x4002A9FBE0000000, %6191
  %6211 = fadd fast float %6191, 0x3FD54FDF00000000
  %6212 = bitcast float %6211 to i32
  %6213 = sub nsw i32 2129859010, %6212
  %6214 = bitcast i32 %6213 to float
  %6215 = fmul fast float %6214, %6210
  %6216 = fmul fast float %6215, %6215
  %6217 = fsub fast float 0x4002A9FBE0000000, %6200
  %6218 = fadd fast float %6200, 0x3FD54FDF00000000
  %6219 = bitcast float %6218 to i32
  %6220 = sub nsw i32 2129859010, %6219
  %6221 = bitcast i32 %6220 to float
  %6222 = fmul fast float %6221, %6217
  %6223 = fmul fast float %6222, %6222
  %6224 = fsub fast float 0x4002A9FBE0000000, %6209
  %6225 = fadd fast float %6209, 0x3FD54FDF00000000
  %6226 = bitcast float %6225 to i32
  %6227 = sub nsw i32 2129859010, %6226
  %6228 = bitcast i32 %6227 to float
  %6229 = fmul fast float %6228, %6224
  %6230 = fmul fast float %6229, %6229
  %6231 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %6216)  ; FMax(a,b)
  %6232 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %6223)  ; FMax(a,b)
  %6233 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %6230)  ; FMax(a,b)
  %6234 = fsub fast float 1.000000e+00, %6118
  %6235 = fadd fast float %6234, %6135
  %6236 = call float @dx.op.unary.f32(i32 7, float %6235)  ; Saturate(value)
  %6237 = fsub fast float 1.000000e+00, %4384
  %6238 = fmul fast float %6177, %6237
  %6239 = fmul fast float %6180, %6180
  %6240 = fmul fast float %6239, %6238
  %6241 = fmul fast float %6240, %6182
  %6242 = fmul fast float %6237, 0xBFE99999A0000000
  %6243 = fmul fast float %6242, %6128
  %6244 = fmul fast float %6243, %6139
  %6245 = fadd fast float %6244, 1.000000e+00
  %6246 = fadd fast float %6099, -1.000000e+00
  %6247 = fmul fast float %6245, %6246
  %6248 = fadd fast float %6247, 1.000000e+00
  %6249 = fsub fast float %6231, %6090
  %6250 = fsub fast float %6232, %6091
  %6251 = fsub fast float %6233, %6092
  %6252 = fmul fast float %6241, %6249
  %6253 = fmul fast float %6241, %6250
  %6254 = fmul fast float %6241, %6251
  %6255 = fadd fast float %6252, %6090
  %6256 = fadd fast float %6253, %6091
  %6257 = fadd fast float %6254, %6092
  %6258 = fsub fast float %120, %6096
  %6259 = fsub fast float %122, %6097
  %6260 = fsub fast float %124, %6098
  %6261 = fmul fast float %6241, %6258
  %6262 = fmul fast float %6241, %6259
  %6263 = fmul fast float %6241, %6260
  %6264 = fadd fast float %6261, %6096
  %6265 = fadd fast float %6262, %6097
  %6266 = fadd fast float %6263, %6098
  %6267 = fmul fast float %6241, %6236
  %6268 = call float @dx.op.unary.f32(i32 7, float %6248)  ; Saturate(value)
  %6269 = fsub fast float 1.000000e+00, %6268
  %6270 = fmul fast float %6267, %6269
  %6271 = fadd fast float %6270, %6268
  %6272 = fsub fast float 1.000000e+00, %6100
  %6273 = fmul fast float %6241, %6272
  %6274 = fadd fast float %6273, %6100
  %6275 = fcmp fast une float %5517, 0.000000e+00
  %6276 = fcmp fast ogt float %6173, 0x3FE4CCCCC0000000
  %6277 = and i1 %6275, %6276
  br i1 %6277, label %6278, label %6464

; <label>:6278                                    ; preds = %6111
  %6279 = extractvalue %dx.types.CBufRet.f32 %6119, 1
  %6280 = fadd fast float %6279, %171
  %6281 = extractvalue %dx.types.CBufRet.f32 %6119, 0
  %6282 = fadd fast float %6281, %170
  %6283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %6284 = extractvalue %dx.types.CBufRet.f32 %6283, 3
  %6285 = fadd fast float %6284, 0x3FC0A3D700000000
  %6286 = fmul fast float %6285, 0x3FF6666660000000
  %6287 = fmul fast float %6284, 0x3FF2978D40000000
  %6288 = fmul fast float %6284, 0x3FF5BA5E40000000
  %6289 = fmul fast float %6284, 0x3FF94FDF40000000
  %6290 = call float @dx.op.unary.f32(i32 6, float %6282)  ; FAbs(value)
  %6291 = call float @dx.op.unary.f32(i32 6, float %6280)  ; FAbs(value)
  %6292 = fmul fast float %6290, 0x3F8EB851E0000000
  %6293 = fmul fast float %6291, 0x3F8EB851E0000000
  %6294 = fmul fast float %5517, 4.000000e+00
  %6295 = call float @dx.op.unary.f32(i32 7, float %6294)  ; Saturate(value)
  %6296 = fadd fast float %6292, 2.500000e-01
  %6297 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %45, float %6296, float %6293, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6298 = extractvalue %dx.types.ResRet.f32 %6297, 0
  %6299 = extractvalue %dx.types.ResRet.f32 %6297, 1
  %6300 = extractvalue %dx.types.ResRet.f32 %6297, 2
  %6301 = extractvalue %dx.types.ResRet.f32 %6297, 3
  %6302 = fmul fast float %6299, 2.000000e+00
  %6303 = fmul fast float %6300, 2.000000e+00
  %6304 = fadd fast float %6302, -1.000000e+00
  %6305 = fadd fast float %6303, -1.000000e+00
  %6306 = fsub fast float 1.000000e+00, %6295
  %6307 = fmul fast float %6306, 8.000000e+00
  %6308 = call float @dx.op.unary.f32(i32 21, float %6307)  ; Exp(value)
  %6309 = fmul fast float %6301, %6308
  %6310 = fadd fast float %6286, -1.000000e+00
  %6311 = fadd fast float %6310, %6301
  %6312 = fadd fast float %6311, %6309
  %6313 = frem fast float %6312, %6308
  %6314 = fcmp fast ole float %6313, 1.000000e+00
  %6315 = call float @dx.op.unary.f32(i32 22, float %6313)  ; Frc(value)
  %6316 = select i1 %6314, float %6315, float 0.000000e+00
  %6317 = fadd fast float %6298, -1.000000e+00
  %6318 = fadd fast float %6317, %6316
  %6319 = fsub fast float 1.000000e+00, %6316
  %6320 = call float @dx.op.unary.f32(i32 7, float %6319)  ; Saturate(value)
  %6321 = fmul fast float %6320, %6298
  %6322 = fmul fast float %6318, 8.000000e+00
  %6323 = call float @dx.op.binary.f32(i32 35, float %6322, float 0.000000e+00)  ; FMax(a,b)
  %6324 = call float @dx.op.binary.f32(i32 36, float %6323, float 4.000000e+00)  ; FMin(a,b)
  %6325 = fmul fast float %6324, 0x400921FB60000000
  %6326 = call float @dx.op.unary.f32(i32 13, float %6325)  ; Sin(value)
  %6327 = fadd fast float %6316, -1.000000e+00
  %6328 = fmul fast float %6321, %6327
  %6329 = fmul fast float %6328, %6326
  %6330 = fmul fast float %6329, %6304
  %6331 = fmul fast float %6329, %6305
  %6332 = fadd fast float %6294, -1.000000e+00
  %6333 = call float @dx.op.unary.f32(i32 7, float %6332)  ; Saturate(value)
  %6334 = fadd fast float %6292, 0xBFE19999A0000000
  %6335 = fadd fast float %6293, 0x3FD3D70A40000000
  %6336 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %45, float %6334, float %6335, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6337 = extractvalue %dx.types.ResRet.f32 %6336, 0
  %6338 = extractvalue %dx.types.ResRet.f32 %6336, 1
  %6339 = extractvalue %dx.types.ResRet.f32 %6336, 2
  %6340 = extractvalue %dx.types.ResRet.f32 %6336, 3
  %6341 = fmul fast float %6338, 2.000000e+00
  %6342 = fmul fast float %6339, 2.000000e+00
  %6343 = fadd fast float %6341, -1.000000e+00
  %6344 = fadd fast float %6342, -1.000000e+00
  %6345 = fsub fast float 1.000000e+00, %6333
  %6346 = fmul fast float %6345, 8.000000e+00
  %6347 = call float @dx.op.unary.f32(i32 21, float %6346)  ; Exp(value)
  %6348 = fmul fast float %6340, %6347
  %6349 = fadd fast float %6287, 0xBFE5B22D00000000
  %6350 = fadd fast float %6349, %6340
  %6351 = fadd fast float %6350, %6348
  %6352 = frem fast float %6351, %6347
  %6353 = fcmp fast ole float %6352, 1.000000e+00
  %6354 = call float @dx.op.unary.f32(i32 22, float %6352)  ; Frc(value)
  %6355 = select i1 %6353, float %6354, float 0.000000e+00
  %6356 = fadd fast float %6337, -1.000000e+00
  %6357 = fadd fast float %6356, %6355
  %6358 = fsub fast float 1.000000e+00, %6355
  %6359 = call float @dx.op.unary.f32(i32 7, float %6358)  ; Saturate(value)
  %6360 = fmul fast float %6359, %6337
  %6361 = fmul fast float %6357, 8.000000e+00
  %6362 = call float @dx.op.binary.f32(i32 35, float %6361, float 0.000000e+00)  ; FMax(a,b)
  %6363 = call float @dx.op.binary.f32(i32 36, float %6362, float 4.000000e+00)  ; FMin(a,b)
  %6364 = fmul fast float %6363, 0x400921FB60000000
  %6365 = call float @dx.op.unary.f32(i32 13, float %6364)  ; Sin(value)
  %6366 = fadd fast float %6355, -1.000000e+00
  %6367 = fmul fast float %6360, %6366
  %6368 = fmul fast float %6367, %6365
  %6369 = fmul fast float %6368, %6343
  %6370 = fmul fast float %6368, %6344
  %6371 = fadd fast float %6294, -2.000000e+00
  %6372 = call float @dx.op.unary.f32(i32 7, float %6371)  ; Saturate(value)
  %6373 = fadd fast float %6292, 0x3FE3333340000000
  %6374 = fadd fast float %6293, 0x3FEB333340000000
  %6375 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %45, float %6373, float %6374, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6376 = extractvalue %dx.types.ResRet.f32 %6375, 0
  %6377 = extractvalue %dx.types.ResRet.f32 %6375, 1
  %6378 = extractvalue %dx.types.ResRet.f32 %6375, 2
  %6379 = extractvalue %dx.types.ResRet.f32 %6375, 3
  %6380 = fmul fast float %6377, 2.000000e+00
  %6381 = fmul fast float %6378, 2.000000e+00
  %6382 = fadd fast float %6380, -1.000000e+00
  %6383 = fadd fast float %6381, -1.000000e+00
  %6384 = fsub fast float 1.000000e+00, %6372
  %6385 = fmul fast float %6384, 8.000000e+00
  %6386 = call float @dx.op.unary.f32(i32 21, float %6385)  ; Exp(value)
  %6387 = fmul fast float %6379, %6386
  %6388 = fadd fast float %6288, 0xBFD5E35400000000
  %6389 = fadd fast float %6388, %6379
  %6390 = fadd fast float %6389, %6387
  %6391 = frem fast float %6390, %6386
  %6392 = fcmp fast ole float %6391, 1.000000e+00
  %6393 = call float @dx.op.unary.f32(i32 22, float %6391)  ; Frc(value)
  %6394 = select i1 %6392, float %6393, float 0.000000e+00
  %6395 = fadd fast float %6376, -1.000000e+00
  %6396 = fadd fast float %6395, %6394
  %6397 = fsub fast float 1.000000e+00, %6394
  %6398 = call float @dx.op.unary.f32(i32 7, float %6397)  ; Saturate(value)
  %6399 = fmul fast float %6398, %6376
  %6400 = fmul fast float %6396, 8.000000e+00
  %6401 = call float @dx.op.binary.f32(i32 35, float %6400, float 0.000000e+00)  ; FMax(a,b)
  %6402 = call float @dx.op.binary.f32(i32 36, float %6401, float 4.000000e+00)  ; FMin(a,b)
  %6403 = fmul fast float %6402, 0x400921FB60000000
  %6404 = call float @dx.op.unary.f32(i32 13, float %6403)  ; Sin(value)
  %6405 = fadd fast float %6394, -1.000000e+00
  %6406 = fmul fast float %6399, %6405
  %6407 = fmul fast float %6406, %6404
  %6408 = fmul fast float %6407, %6382
  %6409 = fmul fast float %6407, %6383
  %6410 = fadd fast float %6294, -3.000000e+00
  %6411 = call float @dx.op.unary.f32(i32 7, float %6410)  ; Saturate(value)
  %6412 = fadd fast float %6292, 5.000000e-01
  %6413 = fadd fast float %6293, -7.500000e-01
  %6414 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %45, float %6412, float %6413, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6415 = extractvalue %dx.types.ResRet.f32 %6414, 0
  %6416 = extractvalue %dx.types.ResRet.f32 %6414, 1
  %6417 = extractvalue %dx.types.ResRet.f32 %6414, 2
  %6418 = extractvalue %dx.types.ResRet.f32 %6414, 3
  %6419 = fmul fast float %6416, 2.000000e+00
  %6420 = fmul fast float %6417, 2.000000e+00
  %6421 = fadd fast float %6419, -1.000000e+00
  %6422 = fadd fast float %6420, -1.000000e+00
  %6423 = fsub fast float 1.000000e+00, %6411
  %6424 = fmul fast float %6423, 8.000000e+00
  %6425 = call float @dx.op.unary.f32(i32 21, float %6424)  ; Exp(value)
  %6426 = fmul fast float %6418, %6425
  %6427 = fadd fast float %6289, 0xBF78938000000000
  %6428 = fadd fast float %6427, %6418
  %6429 = fadd fast float %6428, %6426
  %6430 = frem fast float %6429, %6425
  %6431 = fcmp fast ole float %6430, 1.000000e+00
  %6432 = call float @dx.op.unary.f32(i32 22, float %6430)  ; Frc(value)
  %6433 = select i1 %6431, float %6432, float 0.000000e+00
  %6434 = fadd fast float %6415, -1.000000e+00
  %6435 = fadd fast float %6434, %6433
  %6436 = fsub fast float 1.000000e+00, %6433
  %6437 = call float @dx.op.unary.f32(i32 7, float %6436)  ; Saturate(value)
  %6438 = fmul fast float %6437, %6415
  %6439 = fmul fast float %6435, 8.000000e+00
  %6440 = call float @dx.op.binary.f32(i32 35, float %6439, float 0.000000e+00)  ; FMax(a,b)
  %6441 = call float @dx.op.binary.f32(i32 36, float %6440, float 4.000000e+00)  ; FMin(a,b)
  %6442 = fmul fast float %6441, 0x400921FB60000000
  %6443 = call float @dx.op.unary.f32(i32 13, float %6442)  ; Sin(value)
  %6444 = fadd fast float %6433, -1.000000e+00
  %6445 = fmul fast float %6438, %6444
  %6446 = fmul fast float %6445, %6443
  %6447 = fmul fast float %6446, %6421
  %6448 = fmul fast float %6446, %6422
  %6449 = fadd fast float %6369, %6330
  %6450 = fadd fast float %6370, %6331
  %6451 = fadd fast float %6449, %6408
  %6452 = fadd fast float %6450, %6409
  %6453 = fadd fast float %6451, %6447
  %6454 = fadd fast float %6452, %6448
  %6455 = fmul fast float %6173, 0x4006DB6DA0000000
  %6456 = fadd fast float %6455, 0xBFFDB6DB40000000
  %6457 = call float @dx.op.unary.f32(i32 7, float %6456)  ; Saturate(value)
  %6458 = fmul fast float %6457, %6128
  %6459 = fmul fast float %6458, %6237
  %6460 = fmul fast float %6459, %6453
  %6461 = fmul fast float %6459, %6454
  %6462 = fadd fast float %6460, %6264
  %6463 = fadd fast float %6461, %6265
  br label %6464

; <label>:6464                                    ; preds = %6278, %6111
  %6465 = phi float [ %6264, %6111 ], [ %6462, %6278 ]
  %6466 = phi float [ %6265, %6111 ], [ %6463, %6278 ]
  %6467 = call float @dx.op.dot3.f32(i32 55, float %6465, float %6466, float %6266, float %6465, float %6466, float %6266)  ; Dot3(ax,ay,az,bx,by,bz)
  %6468 = call float @dx.op.unary.f32(i32 25, float %6467)  ; Rsqrt(value)
  %6469 = fmul fast float %6468, %6465
  %6470 = fmul fast float %6468, %6466
  %6471 = fmul fast float %6468, %6266
  br label %6472

; <label>:6472                                    ; preds = %6464, %6104
  %6473 = phi float [ %6110, %6104 ], [ %6117, %6464 ]
  %6474 = phi float [ %6109, %6104 ], [ %6115, %6464 ]
  %6475 = phi float [ %6108, %6104 ], [ %6113, %6464 ]
  %6476 = phi float [ %6107, %6104 ], [ %6116, %6464 ]
  %6477 = phi float [ %6106, %6104 ], [ %6114, %6464 ]
  %6478 = phi float [ %6105, %6104 ], [ %6112, %6464 ]
  %6479 = phi float [ %6090, %6104 ], [ %6255, %6464 ]
  %6480 = phi float [ %6091, %6104 ], [ %6256, %6464 ]
  %6481 = phi float [ %6092, %6104 ], [ %6257, %6464 ]
  %6482 = phi float [ %6093, %6104 ], [ %6164, %6464 ]
  %6483 = phi float [ %6094, %6104 ], [ %6165, %6464 ]
  %6484 = phi float [ %6095, %6104 ], [ %6166, %6464 ]
  %6485 = phi float [ %6096, %6104 ], [ %6469, %6464 ]
  %6486 = phi float [ %6097, %6104 ], [ %6470, %6464 ]
  %6487 = phi float [ %6098, %6104 ], [ %6471, %6464 ]
  %6488 = phi float [ %6099, %6104 ], [ %6271, %6464 ]
  %6489 = phi float [ %6100, %6104 ], [ %6274, %6464 ]
  %6490 = select i1 %231, float 0.000000e+00, float %6481
  %6491 = call float @dx.op.dot3.f32(i32 55, float %6485, float %6486, float %6487, float %6475, float %6474, float %6473)  ; Dot3(ax,ay,az,bx,by,bz)
  %6492 = call float @dx.op.unary.f32(i32 7, float %6491)  ; Saturate(value)
  %6493 = call float @dx.op.dot3.f32(i32 55, float %6478, float %6477, float %6476, float %6485, float %6486, float %6487)  ; Dot3(ax,ay,az,bx,by,bz)
  %6494 = fmul fast float %6493, 2.000000e+00
  %6495 = fmul fast float %6494, %6485
  %6496 = fmul fast float %6494, %6486
  %6497 = fmul fast float %6494, %6487
  %6498 = fsub fast float %6478, %6495
  %6499 = fsub fast float %6477, %6496
  %6500 = fsub fast float %6476, %6497
  %6501 = call float @dx.op.binary.f32(i32 36, float %6489, float 1.000000e+00)  ; FMin(a,b)
  %6502 = fsub fast float 1.000000e+00, %6501
  %6503 = bitcast float %6502 to i32
  %6504 = ashr i32 %6503, 1
  %6505 = add nsw i32 %6504, 532487669
  %6506 = bitcast i32 %6505 to float
  %6507 = fsub fast float 1.000000e+00, %6488
  %6508 = call float @dx.op.binary.f32(i32 35, float %6507, float 0x3F847AE140000000)  ; FMax(a,b)
  %6509 = fmul fast float %6508, %6508
  %6510 = fmul fast float %6509, %6509
  %6511 = call float @dx.op.unary.f32(i32 7, float %6492)  ; Saturate(value)
  %6512 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %46, float %6506, float %6510, float %6511, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6513 = extractvalue %dx.types.ResRet.f32 %6512, 0
  %6514 = fsub fast float 1.000000e+00, %6489
  %6515 = bitcast float %6514 to i32
  %6516 = sub nsw i32 2129859010, %6515
  %6517 = bitcast i32 %6516 to float
  %6518 = call float @dx.op.dot3.f32(i32 55, float %79, float %75, float %71, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6519 = fmul fast float %6518, 0x3FD20DD760000000
  %6520 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %79)  ; FMax(a,b)
  %6521 = call float @dx.op.dot3.f32(i32 55, float %80, float %81, float %82, float %80, float %81, float %82)  ; Dot3(ax,ay,az,bx,by,bz)
  %6522 = fcmp fast oeq float %6521, 0.000000e+00
  %6523 = fcmp fast oeq float %6520, 0.000000e+00
  %6524 = or i1 %6523, %6522
  br i1 %6524, label %6554, label %6525

; <label>:6525                                    ; preds = %6472
  %6526 = fsub fast float -0.000000e+00, %82
  %6527 = fsub fast float -0.000000e+00, %80
  %6528 = call float @dx.op.unary.f32(i32 24, float %6521)  ; Sqrt(value)
  %6529 = fdiv fast float %6528, %6520
  %6530 = fcmp fast ogt float %6529, 0x3FFB6F8900000000
  %6531 = select i1 %6530, float 0x3FFB6F8900000000, float %6529
  %6532 = fmul fast float %6531, 0x3FE8A23460000000
  %6533 = call float @dx.op.unary.f32(i32 7, float %6532)  ; Saturate(value)
  %6534 = call float @dx.op.binary.f32(i32 35, float %6531, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %6535 = fmul fast float %6533, %6520
  %6536 = fmul fast float %6534, 0x3FF279A740000000
  %6537 = fadd fast float %6536, -1.000000e+00
  %6538 = call float @dx.op.dot3.f32(i32 55, float %6526, float %6527, float %81, float %6526, float %6527, float %81)  ; Dot3(ax,ay,az,bx,by,bz)
  %6539 = call float @dx.op.unary.f32(i32 25, float %6538)  ; Rsqrt(value)
  %6540 = fmul fast float %6539, %6526
  %6541 = fmul fast float %6539, %6527
  %6542 = fmul fast float %6539, %81
  %6543 = fmul fast float %6537, %6537
  %6544 = fsub fast float 1.000000e+00, %6543
  %6545 = fmul fast float %6534, 0x40005F8BE0000000
  %6546 = fsub fast float 0x400C5BF8A0000000, %6545
  %6547 = fdiv fast float %6535, %6546
  %6548 = fmul fast float %6547, 0x3FEE31C3C0000000
  %6549 = fmul fast float %6548, %6544
  %6550 = fmul fast float %6534, 0x3FDACB7480000000
  %6551 = fadd fast float %6550, 0xBFD7347680000000
  %6552 = fmul fast float %6551, %6547
  %6553 = fmul fast float %6552, %6544
  br label %6554

; <label>:6554                                    ; preds = %6525, %6472
  %6555 = phi float [ %6540, %6525 ], [ 0.000000e+00, %6472 ]
  %6556 = phi float [ %6541, %6525 ], [ 0.000000e+00, %6472 ]
  %6557 = phi float [ %6542, %6525 ], [ 0.000000e+00, %6472 ]
  %6558 = phi float [ %6549, %6525 ], [ 0.000000e+00, %6472 ]
  %6559 = phi float [ %6553, %6525 ], [ 0.000000e+00, %6472 ]
  %6560 = call float @dx.op.dot3.f32(i32 55, float %6555, float %6556, float %6557, float %6485, float %6486, float %6487)  ; Dot3(ax,ay,az,bx,by,bz)
  %6561 = fmul fast float %6560, %6560
  %6562 = fmul fast float %6561, 0x3FEE471020000000
  %6563 = fadd fast float %6562, 0xBFD42F6020000000
  %6564 = fmul fast float %6520, 0x3FD20DD760000000
  %6565 = fmul fast float %6563, %6559
  %6566 = fmul fast float %6558, 0x3FDF454380000000
  %6567 = fmul fast float %6566, %6560
  %6568 = fadd fast float %6567, %6564
  %6569 = fadd fast float %6568, %6565
  %6570 = call float @dx.op.dot3.f32(i32 55, float %6555, float %6556, float %6557, float %6498, float %6499, float %6500)  ; Dot3(ax,ay,az,bx,by,bz)
  %6571 = fmul fast float %6570, 0x3FDF454380000000
  %6572 = fmul fast float %6570, %6570
  %6573 = fmul fast float %6572, 0x3FEE471020000000
  %6574 = fadd fast float %6573, 0xBFD42F6020000000
  %6575 = call float @dx.op.dot3.f32(i32 55, float %6520, float %6558, float %6559, float 0x3FD20DD760000000, float %6571, float %6574)  ; Dot3(ax,ay,az,bx,by,bz)
  %6576 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %75)  ; FMax(a,b)
  %6577 = call float @dx.op.dot3.f32(i32 55, float %76, float %77, float %78, float %76, float %77, float %78)  ; Dot3(ax,ay,az,bx,by,bz)
  %6578 = fcmp fast oeq float %6577, 0.000000e+00
  %6579 = fcmp fast oeq float %6576, 0.000000e+00
  %6580 = or i1 %6579, %6578
  br i1 %6580, label %6610, label %6581

; <label>:6581                                    ; preds = %6554
  %6582 = fsub fast float -0.000000e+00, %78
  %6583 = fsub fast float -0.000000e+00, %76
  %6584 = call float @dx.op.unary.f32(i32 24, float %6577)  ; Sqrt(value)
  %6585 = fdiv fast float %6584, %6576
  %6586 = fcmp fast ogt float %6585, 0x3FFB6F8900000000
  %6587 = select i1 %6586, float 0x3FFB6F8900000000, float %6585
  %6588 = fmul fast float %6587, 0x3FE8A23460000000
  %6589 = call float @dx.op.unary.f32(i32 7, float %6588)  ; Saturate(value)
  %6590 = call float @dx.op.binary.f32(i32 35, float %6587, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %6591 = fmul fast float %6589, %6576
  %6592 = fmul fast float %6590, 0x3FF279A740000000
  %6593 = fadd fast float %6592, -1.000000e+00
  %6594 = call float @dx.op.dot3.f32(i32 55, float %6582, float %6583, float %77, float %6582, float %6583, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %6595 = call float @dx.op.unary.f32(i32 25, float %6594)  ; Rsqrt(value)
  %6596 = fmul fast float %6595, %6582
  %6597 = fmul fast float %6595, %6583
  %6598 = fmul fast float %6595, %77
  %6599 = fmul fast float %6593, %6593
  %6600 = fsub fast float 1.000000e+00, %6599
  %6601 = fmul fast float %6590, 0x40005F8BE0000000
  %6602 = fsub fast float 0x400C5BF8A0000000, %6601
  %6603 = fdiv fast float %6591, %6602
  %6604 = fmul fast float %6603, 0x3FEE31C3C0000000
  %6605 = fmul fast float %6604, %6600
  %6606 = fmul fast float %6590, 0x3FDACB7480000000
  %6607 = fadd fast float %6606, 0xBFD7347680000000
  %6608 = fmul fast float %6607, %6603
  %6609 = fmul fast float %6608, %6600
  br label %6610

; <label>:6610                                    ; preds = %6581, %6554
  %6611 = phi float [ %6596, %6581 ], [ 0.000000e+00, %6554 ]
  %6612 = phi float [ %6597, %6581 ], [ 0.000000e+00, %6554 ]
  %6613 = phi float [ %6598, %6581 ], [ 0.000000e+00, %6554 ]
  %6614 = phi float [ %6605, %6581 ], [ 0.000000e+00, %6554 ]
  %6615 = phi float [ %6609, %6581 ], [ 0.000000e+00, %6554 ]
  %6616 = call float @dx.op.dot3.f32(i32 55, float %6611, float %6612, float %6613, float %6485, float %6486, float %6487)  ; Dot3(ax,ay,az,bx,by,bz)
  %6617 = fmul fast float %6616, %6616
  %6618 = fmul fast float %6617, 0x3FEE471020000000
  %6619 = fadd fast float %6618, 0xBFD42F6020000000
  %6620 = fmul fast float %6576, 0x3FD20DD760000000
  %6621 = fmul fast float %6619, %6615
  %6622 = fmul fast float %6614, 0x3FDF454380000000
  %6623 = fmul fast float %6622, %6616
  %6624 = fadd fast float %6623, %6620
  %6625 = fadd fast float %6624, %6621
  %6626 = call float @dx.op.dot3.f32(i32 55, float %6611, float %6612, float %6613, float %6498, float %6499, float %6500)  ; Dot3(ax,ay,az,bx,by,bz)
  %6627 = fmul fast float %6626, 0x3FDF454380000000
  %6628 = fmul fast float %6626, %6626
  %6629 = fmul fast float %6628, 0x3FEE471020000000
  %6630 = fadd fast float %6629, 0xBFD42F6020000000
  %6631 = call float @dx.op.dot3.f32(i32 55, float %6576, float %6614, float %6615, float 0x3FD20DD760000000, float %6627, float %6630)  ; Dot3(ax,ay,az,bx,by,bz)
  %6632 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %71)  ; FMax(a,b)
  %6633 = call float @dx.op.dot3.f32(i32 55, float %72, float %73, float %74, float %72, float %73, float %74)  ; Dot3(ax,ay,az,bx,by,bz)
  %6634 = fcmp fast oeq float %6633, 0.000000e+00
  %6635 = fcmp fast oeq float %6632, 0.000000e+00
  %6636 = or i1 %6635, %6634
  br i1 %6636, label %6666, label %6637

; <label>:6637                                    ; preds = %6610
  %6638 = fsub fast float -0.000000e+00, %74
  %6639 = fsub fast float -0.000000e+00, %72
  %6640 = call float @dx.op.unary.f32(i32 24, float %6633)  ; Sqrt(value)
  %6641 = fdiv fast float %6640, %6632
  %6642 = fcmp fast ogt float %6641, 0x3FFB6F8900000000
  %6643 = select i1 %6642, float 0x3FFB6F8900000000, float %6641
  %6644 = fmul fast float %6643, 0x3FE8A23460000000
  %6645 = call float @dx.op.unary.f32(i32 7, float %6644)  ; Saturate(value)
  %6646 = call float @dx.op.binary.f32(i32 35, float %6643, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %6647 = fmul fast float %6645, %6632
  %6648 = fmul fast float %6646, 0x3FF279A740000000
  %6649 = fadd fast float %6648, -1.000000e+00
  %6650 = call float @dx.op.dot3.f32(i32 55, float %6638, float %6639, float %73, float %6638, float %6639, float %73)  ; Dot3(ax,ay,az,bx,by,bz)
  %6651 = call float @dx.op.unary.f32(i32 25, float %6650)  ; Rsqrt(value)
  %6652 = fmul fast float %6651, %6638
  %6653 = fmul fast float %6651, %6639
  %6654 = fmul fast float %6651, %73
  %6655 = fmul fast float %6649, %6649
  %6656 = fsub fast float 1.000000e+00, %6655
  %6657 = fmul fast float %6646, 0x40005F8BE0000000
  %6658 = fsub fast float 0x400C5BF8A0000000, %6657
  %6659 = fdiv fast float %6647, %6658
  %6660 = fmul fast float %6659, 0x3FEE31C3C0000000
  %6661 = fmul fast float %6660, %6656
  %6662 = fmul fast float %6646, 0x3FDACB7480000000
  %6663 = fadd fast float %6662, 0xBFD7347680000000
  %6664 = fmul fast float %6663, %6659
  %6665 = fmul fast float %6664, %6656
  br label %6666

; <label>:6666                                    ; preds = %6637, %6610
  %6667 = phi float [ %6652, %6637 ], [ 0.000000e+00, %6610 ]
  %6668 = phi float [ %6653, %6637 ], [ 0.000000e+00, %6610 ]
  %6669 = phi float [ %6654, %6637 ], [ 0.000000e+00, %6610 ]
  %6670 = phi float [ %6661, %6637 ], [ 0.000000e+00, %6610 ]
  %6671 = phi float [ %6665, %6637 ], [ 0.000000e+00, %6610 ]
  %6672 = call float @dx.op.dot3.f32(i32 55, float %6667, float %6668, float %6669, float %6485, float %6486, float %6487)  ; Dot3(ax,ay,az,bx,by,bz)
  %6673 = fmul fast float %6672, %6672
  %6674 = fmul fast float %6673, 0x3FEE471020000000
  %6675 = fadd fast float %6674, 0xBFD42F6020000000
  %6676 = fmul fast float %6632, 0x3FD20DD760000000
  %6677 = fmul fast float %6675, %6671
  %6678 = fmul fast float %6670, 0x3FDF454380000000
  %6679 = fmul fast float %6678, %6672
  %6680 = fadd fast float %6679, %6676
  %6681 = fadd fast float %6680, %6677
  %6682 = call float @dx.op.dot3.f32(i32 55, float %6667, float %6668, float %6669, float %6498, float %6499, float %6500)  ; Dot3(ax,ay,az,bx,by,bz)
  %6683 = fmul fast float %6682, 0x3FDF454380000000
  %6684 = fmul fast float %6682, %6682
  %6685 = fmul fast float %6684, 0x3FEE471020000000
  %6686 = fadd fast float %6685, 0xBFD42F6020000000
  %6687 = call float @dx.op.dot3.f32(i32 55, float %6632, float %6670, float %6671, float 0x3FD20DD760000000, float %6683, float %6686)  ; Dot3(ax,ay,az,bx,by,bz)
  %6688 = call float @dx.op.binary.f32(i32 35, float %6569, float 0.000000e+00)  ; FMax(a,b)
  %6689 = call float @dx.op.binary.f32(i32 35, float %6625, float 0.000000e+00)  ; FMax(a,b)
  %6690 = call float @dx.op.binary.f32(i32 35, float %6681, float 0.000000e+00)  ; FMax(a,b)
  %6691 = call float @dx.op.binary.f32(i32 35, float %6575, float 0.000000e+00)  ; FMax(a,b)
  %6692 = call float @dx.op.binary.f32(i32 35, float %6631, float 0.000000e+00)  ; FMax(a,b)
  %6693 = call float @dx.op.binary.f32(i32 35, float %6687, float 0.000000e+00)  ; FMax(a,b)
  %6694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %6695 = extractvalue %dx.types.CBufRet.f32 %6694, 0
  %6696 = call float @dx.op.binary.f32(i32 36, float %6482, float %6695)  ; FMin(a,b)
  %6697 = fmul fast float %6696, %6502
  %6698 = fsub fast float 1.000000e+00, %6697
  %6699 = bitcast float %6698 to i32
  %6700 = sub nsw i32 2129859010, %6699
  %6701 = bitcast i32 %6700 to float
  %6702 = call float @dx.op.binary.f32(i32 36, float %6483, float %6695)  ; FMin(a,b)
  %6703 = fmul fast float %6702, %6502
  %6704 = fsub fast float 1.000000e+00, %6703
  %6705 = bitcast float %6704 to i32
  %6706 = sub nsw i32 2129859010, %6705
  %6707 = bitcast i32 %6706 to float
  %6708 = call float @dx.op.binary.f32(i32 36, float %6484, float %6695)  ; FMin(a,b)
  %6709 = fmul fast float %6708, %6502
  %6710 = fsub fast float 1.000000e+00, %6709
  %6711 = bitcast float %6710 to i32
  %6712 = sub nsw i32 2129859010, %6711
  %6713 = bitcast i32 %6712 to float
  %6714 = fmul fast float %6688, %6501
  %6715 = fmul fast float %6714, %6701
  %6716 = fmul fast float %6689, %6501
  %6717 = fmul fast float %6716, %6707
  %6718 = fmul fast float %6690, %6501
  %6719 = fmul fast float %6718, %6713
  %6720 = call float @dx.op.binary.f32(i32 36, float %6479, float %6695)  ; FMin(a,b)
  %6721 = fmul fast float %6720, %6502
  %6722 = fsub fast float 1.000000e+00, %6721
  %6723 = bitcast float %6722 to i32
  %6724 = sub nsw i32 2129859010, %6723
  %6725 = bitcast i32 %6724 to float
  %6726 = call float @dx.op.binary.f32(i32 36, float %6480, float %6695)  ; FMin(a,b)
  %6727 = fmul fast float %6726, %6502
  %6728 = fsub fast float 1.000000e+00, %6727
  %6729 = bitcast float %6728 to i32
  %6730 = sub nsw i32 2129859010, %6729
  %6731 = bitcast i32 %6730 to float
  %6732 = call float @dx.op.binary.f32(i32 36, float %6490, float %6695)  ; FMin(a,b)
  %6733 = fmul fast float %6732, %6502
  %6734 = fsub fast float 1.000000e+00, %6733
  %6735 = bitcast float %6734 to i32
  %6736 = sub nsw i32 2129859010, %6735
  %6737 = bitcast i32 %6736 to float
  %6738 = fmul fast float %6691, %6501
  %6739 = fmul fast float %6738, %6725
  %6740 = fmul fast float %6692, %6501
  %6741 = fmul fast float %6740, %6731
  %6742 = fmul fast float %6693, %6501
  %6743 = fmul fast float %6742, %6737
  %6744 = call float @dx.op.dot3.f32(i32 55, float %6715, float %6717, float %6719, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6745 = select i1 %231, float 0.000000e+00, float %6715
  %6746 = select i1 %231, float %6744, float %6717
  %6747 = select i1 %231, float 0.000000e+00, float %6719
  %6748 = call float @dx.op.dot3.f32(i32 55, float %6739, float %6741, float %6743, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6749 = select i1 %231, float 0.000000e+00, float %6739
  %6750 = select i1 %231, float %6748, float %6741
  %6751 = select i1 %231, float 0.000000e+00, float %6743
  %6752 = fmul fast float %6492, 9.843750e-01
  %6753 = fmul fast float %6488, 9.843750e-01
  %6754 = fadd fast float %6752, 7.812500e-03
  %6755 = fadd fast float %6753, 7.812500e-03
  %6756 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %41, %dx.types.Handle %46, float %6754, float %6755, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6757 = extractvalue %dx.types.ResRet.f32 %6756, 2
  %6758 = extractvalue %dx.types.ResRet.f32 %6756, 3
  %6759 = fmul fast float %6757, %6479
  %6760 = fmul fast float %6757, %6480
  %6761 = fmul fast float %6757, %6490
  %6762 = fadd fast float %6759, %6758
  %6763 = fadd fast float %6760, %6758
  %6764 = fadd fast float %6761, %6758
  %6765 = fcmp fast ogt float %4261, 0.000000e+00
  br i1 %6765, label %6766, label %6792

; <label>:6766                                    ; preds = %6666
  %6767 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %46, float %4261, float %6492, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6768 = extractvalue %dx.types.ResRet.f32 %6767, 0
  %6769 = extractvalue %dx.types.ResRet.f32 %6767, 1
  %6770 = extractvalue %dx.types.ResRet.f32 %6767, 2
  %6771 = fadd fast float %6768, -5.000000e-01
  %6772 = fadd fast float %6769, -5.000000e-01
  %6773 = fadd fast float %6770, -5.000000e-01
  %6774 = fsub fast float 1.000000e+00, %6479
  %6775 = fsub fast float 1.000000e+00, %6480
  %6776 = fsub fast float 1.000000e+00, %6490
  %6777 = fmul fast float %6479, 4.000000e+00
  %6778 = fmul fast float %6777, %6774
  %6779 = fmul fast float %6778, %6771
  %6780 = fmul fast float %6480, 4.000000e+00
  %6781 = fmul fast float %6780, %6775
  %6782 = fmul fast float %6781, %6772
  %6783 = fmul fast float %6490, 4.000000e+00
  %6784 = fmul fast float %6783, %6776
  %6785 = fmul fast float %6784, %6773
  %6786 = fadd fast float %6779, %6762
  %6787 = fadd fast float %6782, %6763
  %6788 = fadd fast float %6785, %6764
  %6789 = call float @dx.op.unary.f32(i32 7, float %6786)  ; Saturate(value)
  %6790 = call float @dx.op.unary.f32(i32 7, float %6787)  ; Saturate(value)
  %6791 = call float @dx.op.unary.f32(i32 7, float %6788)  ; Saturate(value)
  br label %6792

; <label>:6792                                    ; preds = %6766, %6666
  %6793 = phi float [ %6789, %6766 ], [ %6762, %6666 ]
  %6794 = phi float [ %6790, %6766 ], [ %6763, %6666 ]
  %6795 = phi float [ %6791, %6766 ], [ %6764, %6666 ]
  %6796 = call float @dx.op.binary.f32(i32 35, float %6794, float %6795)  ; FMax(a,b)
  %6797 = call float @dx.op.binary.f32(i32 35, float %6793, float %6796)  ; FMax(a,b)
  %6798 = fsub fast float 1.000000e+00, %6797
  %6799 = fmul fast float %6797, %6488
  %6800 = fadd fast float %6799, %6488
  %6801 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %6802 = extractvalue %dx.types.CBufRet.f32 %6801, 2
  %6803 = extractvalue %dx.types.CBufRet.f32 %6801, 3
  %6804 = fmul fast float %6800, %6802
  %6805 = fadd fast float %6804, %6803
  %6806 = call float @dx.op.unary.f32(i32 7, float %6805)  ; Saturate(value)
  %6807 = fsub fast float 1.000000e+00, %6513
  %6808 = fadd fast float %6807, %6806
  %6809 = call float @dx.op.unary.f32(i32 7, float %6808)  ; Saturate(value)
  %6810 = fcmp fast olt float %6809, 1.000000e+00
  br i1 %6810, label %6811, label %7259

; <label>:6811                                    ; preds = %6792
  %6812 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %6813 = extractvalue %dx.types.CBufRet.f32 %6812, 2
  %6814 = extractvalue %dx.types.CBufRet.f32 %6812, 3
  %6815 = fmul fast float %6813, %111
  %6816 = fmul fast float %6814, %112
  %6817 = fptoui float %6815 to i32
  %6818 = fptoui float %6816 to i32
  %6819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6820 = extractvalue %dx.types.CBufRet.f32 %6819, 0
  %6821 = extractvalue %dx.types.CBufRet.f32 %6819, 2
  %6822 = extractvalue %dx.types.CBufRet.f32 %6819, 3
  %6823 = fadd fast float %99, -4.000000e+00
  %6824 = call float @dx.op.binary.f32(i32 35, float %6823, float 0.000000e+00)  ; FMax(a,b)
  %6825 = fadd fast float %6824, %6820
  %6826 = fmul fast float %6825, %6821
  %6827 = call float @dx.op.unary.f32(i32 23, float %6826)  ; Log(value)
  %6828 = fmul fast float %6827, %6822
  %6829 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6830 = extractvalue %dx.types.CBufRet.f32 %6829, 2
  %6831 = fmul fast float %6828, %6830
  %6832 = call float @dx.op.unary.f32(i32 7, float %6831)  ; Saturate(value)
  %6833 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6834 = extractvalue %dx.types.CBufRet.i32 %6833, 1
  %6835 = add i32 %6834, -1
  %6836 = uitofp i32 %6834 to float
  %6837 = fmul fast float %6836, %6832
  %6838 = fptoui float %6837 to i32
  %6839 = call i32 @dx.op.binary.i32(i32 40, i32 %6838, i32 %6835)  ; UMin(a,b)
  %6840 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6841 = extractvalue %dx.types.CBufRet.i32 %6840, 2
  %6842 = extractvalue %dx.types.CBufRet.i32 %6840, 3
  %6843 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6818, i32 %6841, i32 %6817)  ; UMad(a,b,c)
  %6844 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6839, i32 %6842, i32 %6843)  ; UMad(a,b,c)
  %6845 = call float @dx.op.binary.f32(i32 35, float %99, float 0.000000e+00)  ; FMax(a,b)
  %6846 = fptoui float %6845 to i32
  %6847 = lshr i32 %6846, 5
  %6848 = call i32 @dx.op.binary.i32(i32 40, i32 %6847, i32 8191)  ; UMin(a,b)
  br i1 false, label %6849, label %6856

; <label>:6849                                    ; preds = %6811
  %6850 = fadd fast float 0.000000e+00, %6500
  %6851 = call float @dx.op.dot3.f32(i32 55, float %6498, float %6499, float %6850, float %6498, float %6499, float %6850)  ; Dot3(ax,ay,az,bx,by,bz)
  %6852 = call float @dx.op.unary.f32(i32 25, float %6851)  ; Rsqrt(value)
  %6853 = fmul fast float %6852, %6498
  %6854 = fmul fast float %6852, %6499
  %6855 = fmul fast float %6850, %6852
  br label %6856

; <label>:6856                                    ; preds = %6849, %6811
  %6857 = phi float [ %6853, %6849 ], [ %6498, %6811 ]
  %6858 = phi float [ %6854, %6849 ], [ %6499, %6811 ]
  %6859 = phi float [ %6855, %6849 ], [ %6500, %6811 ]
  %6860 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6861 = extractvalue %dx.types.CBufRet.i32 %6860, 2
  %6862 = add nsw i32 %6861, -1
  %6863 = call i32 @dx.op.binary.i32(i32 37, i32 %6862, i32 0)  ; IMax(a,b)
  %6864 = shl i32 %6848, 2
  %6865 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %6864, i32 undef)  ; BufferLoad(srv,index,wot)
  %6866 = extractvalue %dx.types.ResRet.i32 %6865, 0
  %6867 = lshr i32 %6866, 16
  %6868 = and i32 %6866, 65535
  %6869 = lshr i32 %6866, 21
  %6870 = lshr i32 %6868, 5
  %6871 = call i32 @dx.op.binary.i32(i32 40, i32 %6870, i32 %6863)  ; UMin(a,b)
  %6872 = icmp ugt i32 %6869, %6871
  br i1 %6872, label %7235, label %6873

; <label>:6873                                    ; preds = %6856
  br label %6874

; <label>:6874                                    ; preds = %7227, %6873
  %6875 = phi float [ %7228, %7227 ], [ 0.000000e+00, %6873 ]
  %6876 = phi float [ %7229, %7227 ], [ 0.000000e+00, %6873 ]
  %6877 = phi float [ %7230, %7227 ], [ 0.000000e+00, %6873 ]
  %6878 = phi float [ %7231, %7227 ], [ 1.000000e+00, %6873 ]
  %6879 = phi i32 [ %7232, %7227 ], [ %6869, %6873 ]
  %6880 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6881 = extractvalue %dx.types.CBufRet.i32 %6880, 2
  %6882 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6844, i32 %6881, i32 %6879)  ; UMad(a,b,c)
  %6883 = shl i32 %6882, 2
  %6884 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %6883, i32 undef)  ; BufferLoad(srv,index,wot)
  %6885 = extractvalue %dx.types.ResRet.i32 %6884, 0
  %6886 = shl i32 %6879, 5
  %6887 = sub nsw i32 %6867, %6886
  %6888 = call i32 @dx.op.binary.i32(i32 37, i32 %6887, i32 0)  ; IMax(a,b)
  %6889 = call i32 @dx.op.binary.i32(i32 38, i32 %6888, i32 31)  ; IMin(a,b)
  %6890 = sub nsw i32 1, %6867
  %6891 = add nsw i32 %6890, %6868
  %6892 = call i32 @dx.op.binary.i32(i32 37, i32 %6891, i32 0)  ; IMax(a,b)
  %6893 = call i32 @dx.op.binary.i32(i32 38, i32 %6892, i32 32)  ; IMin(a,b)
  %6894 = and i32 %6893, 31
  %6895 = shl i32 -1, %6894
  %6896 = xor i32 %6895, -1
  %6897 = and i32 %6889, 31
  %6898 = shl i32 %6896, %6897
  %6899 = icmp eq i32 %6893, 32
  %6900 = select i1 %6899, i32 -1, i32 %6898
  %6901 = and i32 %6900, %6885
  %6902 = icmp eq i32 %6901, 0
  br i1 %6902, label %7227, label %6903

; <label>:6903                                    ; preds = %6874
  br label %6904

; <label>:6904                                    ; preds = %7010, %6903
  %6905 = phi float [ %7011, %7010 ], [ %6875, %6903 ]
  %6906 = phi float [ %7012, %7010 ], [ %6876, %6903 ]
  %6907 = phi float [ %7013, %7010 ], [ %6877, %6903 ]
  %6908 = phi float [ %7014, %7010 ], [ %6878, %6903 ]
  %6909 = phi i32 [ %6914, %7010 ], [ %6901, %6903 ]
  %6910 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6909)  ; FirstbitLo(value)
  %6911 = add i32 %6910, %6886
  %6912 = and i32 %6910, 31
  %6913 = shl i32 1, %6912
  %6914 = xor i32 %6913, %6909
  %6915 = mul i32 %6911, 72
  %6916 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %6915, i32 undef)  ; BufferLoad(srv,index,wot)
  %6917 = extractvalue %dx.types.ResRet.f32 %6916, 0
  %6918 = extractvalue %dx.types.ResRet.f32 %6916, 1
  %6919 = extractvalue %dx.types.ResRet.f32 %6916, 2
  %6920 = add i32 %6915, 12
  %6921 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %6920, i32 undef)  ; BufferLoad(srv,index,wot)
  %6922 = extractvalue %dx.types.ResRet.i32 %6921, 0
  %6923 = add i32 %6915, 16
  %6924 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %6923, i32 undef)  ; BufferLoad(srv,index,wot)
  %6925 = extractvalue %dx.types.ResRet.f32 %6924, 0
  %6926 = extractvalue %dx.types.ResRet.f32 %6924, 1
  %6927 = extractvalue %dx.types.ResRet.f32 %6924, 2
  %6928 = add i32 %6915, 28
  %6929 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %6928, i32 undef)  ; BufferLoad(srv,index,wot)
  %6930 = extractvalue %dx.types.ResRet.f32 %6929, 0
  %6931 = add i32 %6915, 32
  %6932 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %6931, i32 undef)  ; BufferLoad(srv,index,wot)
  %6933 = extractvalue %dx.types.ResRet.f32 %6932, 0
  %6934 = extractvalue %dx.types.ResRet.f32 %6932, 1
  %6935 = extractvalue %dx.types.ResRet.f32 %6932, 2
  %6936 = extractvalue %dx.types.ResRet.f32 %6932, 3
  %6937 = add i32 %6915, 48
  %6938 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %6937, i32 undef)  ; BufferLoad(srv,index,wot)
  %6939 = extractvalue %dx.types.ResRet.f32 %6938, 0
  %6940 = extractvalue %dx.types.ResRet.f32 %6938, 1
  %6941 = add i32 %6915, 56
  %6942 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %6941, i32 undef)  ; BufferLoad(srv,index,wot)
  %6943 = extractvalue %dx.types.ResRet.f32 %6942, 0
  %6944 = extractvalue %dx.types.ResRet.f32 %6942, 1
  %6945 = add i32 %6915, 64
  %6946 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %6945, i32 undef)  ; BufferLoad(srv,index,wot)
  %6947 = extractvalue %dx.types.ResRet.f32 %6946, 0
  %6948 = extractvalue %dx.types.ResRet.f32 %6946, 1
  %6949 = mul i32 %6911, 60
  %6950 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %6949, i32 undef)  ; BufferLoad(srv,index,wot)
  %6951 = extractvalue %dx.types.ResRet.f32 %6950, 0
  %6952 = extractvalue %dx.types.ResRet.f32 %6950, 1
  %6953 = extractvalue %dx.types.ResRet.f32 %6950, 2
  %6954 = add i32 %6949, 12
  %6955 = add i32 %6949, 48
  %6956 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %6955, i32 undef)  ; BufferLoad(srv,index,wot)
  %6957 = extractvalue %dx.types.ResRet.f32 %6956, 0
  %6958 = extractvalue %dx.types.ResRet.f32 %6956, 1
  %6959 = extractvalue %dx.types.ResRet.f32 %6956, 2
  %6960 = and i32 %6922, 32767
  %6961 = bitcast float %6917 to i32
  %6962 = icmp eq i32 %6961, -1
  %6963 = bitcast float %6918 to i32
  %6964 = and i32 %6922, 32768
  %6965 = icmp ne i32 %6964, 0
  %6966 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6967 = extractvalue %dx.types.CBufRet.f32 %6966, 0
  %6968 = extractvalue %dx.types.CBufRet.f32 %6966, 1
  %6969 = extractvalue %dx.types.CBufRet.f32 %6966, 2
  %6970 = fsub fast float %6951, %6967
  %6971 = fsub fast float %6952, %6968
  %6972 = fsub fast float %6953, %6969
  %6973 = fsub fast float %170, %6970
  %6974 = fsub fast float %171, %6971
  %6975 = fsub fast float %172, %6972
  %6976 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %6954, i32 undef)  ; BufferLoad(srv,index,wot)
  %6977 = extractvalue %dx.types.ResRet.f32 %6976, 0
  %6978 = extractvalue %dx.types.ResRet.f32 %6976, 1
  %6979 = extractvalue %dx.types.ResRet.f32 %6976, 2
  %6980 = call float @dx.op.dot3.f32(i32 55, float %6973, float %6974, float %6975, float %6977, float %6978, float %6979)  ; Dot3(ax,ay,az,bx,by,bz)
  %6981 = add i32 %6949, 24
  %6982 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %6981, i32 undef)  ; BufferLoad(srv,index,wot)
  %6983 = extractvalue %dx.types.ResRet.f32 %6982, 0
  %6984 = extractvalue %dx.types.ResRet.f32 %6982, 1
  %6985 = extractvalue %dx.types.ResRet.f32 %6982, 2
  %6986 = call float @dx.op.dot3.f32(i32 55, float %6973, float %6974, float %6975, float %6983, float %6984, float %6985)  ; Dot3(ax,ay,az,bx,by,bz)
  %6987 = add i32 %6949, 36
  %6988 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %6987, i32 undef)  ; BufferLoad(srv,index,wot)
  %6989 = extractvalue %dx.types.ResRet.f32 %6988, 0
  %6990 = extractvalue %dx.types.ResRet.f32 %6988, 1
  %6991 = extractvalue %dx.types.ResRet.f32 %6988, 2
  %6992 = call float @dx.op.dot3.f32(i32 55, float %6973, float %6974, float %6975, float %6989, float %6990, float %6991)  ; Dot3(ax,ay,az,bx,by,bz)
  %6993 = call float @dx.op.unary.f32(i32 6, float %6980)  ; FAbs(value)
  %6994 = call float @dx.op.unary.f32(i32 6, float %6986)  ; FAbs(value)
  %6995 = call float @dx.op.unary.f32(i32 6, float %6992)  ; FAbs(value)
  %6996 = fsub fast float %6957, %6993
  %6997 = fsub fast float %6958, %6994
  %6998 = fsub fast float %6959, %6995
  %6999 = fmul fast float %6996, %6925
  %7000 = fmul fast float %6997, %6926
  %7001 = fmul fast float %6998, %6927
  %7002 = call float @dx.op.binary.f32(i32 36, float %7000, float %7001)  ; FMin(a,b)
  %7003 = call float @dx.op.binary.f32(i32 36, float %6999, float %7002)  ; FMin(a,b)
  %7004 = call float @dx.op.unary.f32(i32 7, float %7003)  ; Saturate(value)
  %7005 = call float @dx.op.binary.f32(i32 36, float %6908, float %7004)  ; FMin(a,b)
  %7006 = uitofp i1 %6965 to float
  %7007 = fsub fast float 1.000000e+00, %7006
  %7008 = fmul fast float %7005, %7007
  %7009 = fcmp fast ogt float %7008, 0.000000e+00
  br i1 %7009, label %7016, label %7010

; <label>:7010                                    ; preds = %7158, %6904
  %7011 = phi float [ %7222, %7158 ], [ %6905, %6904 ]
  %7012 = phi float [ %7223, %7158 ], [ %6906, %6904 ]
  %7013 = phi float [ %7224, %7158 ], [ %6907, %6904 ]
  %7014 = phi float [ %7225, %7158 ], [ %6908, %6904 ]
  %7015 = icmp eq i32 %6909, %6913
  br i1 %7015, label %7226, label %6904

; <label>:7016                                    ; preds = %6904
  br i1 %6962, label %7074, label %7017

; <label>:7017                                    ; preds = %7016
  %7018 = fsub fast float -0.000000e+00, %6977
  %7019 = fsub fast float -0.000000e+00, %6978
  %7020 = fsub fast float -0.000000e+00, %6979
  %7021 = call float @dx.op.dot3.f32(i32 55, float %6857, float %6858, float %6859, float %7018, float %7019, float %7020)  ; Dot3(ax,ay,az,bx,by,bz)
  %7022 = fsub fast float -0.000000e+00, %7021
  %7023 = call float @dx.op.dot3.f32(i32 55, float %6973, float %6974, float %6975, float %7018, float %7019, float %7020)  ; Dot3(ax,ay,az,bx,by,bz)
  %7024 = fadd fast float %7023, %6940
  %7025 = fadd fast float %6939, %7023
  %7026 = fsub fast float -0.000000e+00, %7025
  %7027 = fcmp ogt float %7021, -0.000000e+00
  %7028 = select i1 %7027, float %7026, float %7024
  %7029 = call float @dx.op.unary.f32(i32 6, float %7022)  ; FAbs(value)
  %7030 = fdiv fast float 1.000000e+00, %7029
  %7031 = fmul fast float %7028, %7030
  %7032 = call float @dx.op.binary.f32(i32 35, float %7031, float 0.000000e+00)  ; FMax(a,b)
  %7033 = fsub fast float -0.000000e+00, %6983
  %7034 = fsub fast float -0.000000e+00, %6984
  %7035 = fsub fast float -0.000000e+00, %6985
  %7036 = call float @dx.op.dot3.f32(i32 55, float %6857, float %6858, float %6859, float %7033, float %7034, float %7035)  ; Dot3(ax,ay,az,bx,by,bz)
  %7037 = fsub fast float -0.000000e+00, %7036
  %7038 = call float @dx.op.dot3.f32(i32 55, float %6973, float %6974, float %6975, float %7033, float %7034, float %7035)  ; Dot3(ax,ay,az,bx,by,bz)
  %7039 = fadd fast float %7038, %6944
  %7040 = fadd fast float %6943, %7038
  %7041 = fsub fast float -0.000000e+00, %7040
  %7042 = fcmp ogt float %7036, -0.000000e+00
  %7043 = select i1 %7042, float %7041, float %7039
  %7044 = call float @dx.op.unary.f32(i32 6, float %7037)  ; FAbs(value)
  %7045 = fdiv fast float 1.000000e+00, %7044
  %7046 = fmul fast float %7043, %7045
  %7047 = call float @dx.op.binary.f32(i32 35, float %7046, float 0.000000e+00)  ; FMax(a,b)
  %7048 = fsub fast float -0.000000e+00, %6989
  %7049 = fsub fast float -0.000000e+00, %6990
  %7050 = fsub fast float -0.000000e+00, %6991
  %7051 = call float @dx.op.dot3.f32(i32 55, float %6857, float %6858, float %6859, float %7048, float %7049, float %7050)  ; Dot3(ax,ay,az,bx,by,bz)
  %7052 = fsub fast float -0.000000e+00, %7051
  %7053 = call float @dx.op.dot3.f32(i32 55, float %6973, float %6974, float %6975, float %7048, float %7049, float %7050)  ; Dot3(ax,ay,az,bx,by,bz)
  %7054 = fadd fast float %7053, %6948
  %7055 = fadd fast float %6947, %7053
  %7056 = fsub fast float -0.000000e+00, %7055
  %7057 = fcmp ogt float %7051, -0.000000e+00
  %7058 = select i1 %7057, float %7056, float %7054
  %7059 = call float @dx.op.unary.f32(i32 6, float %7052)  ; FAbs(value)
  %7060 = fdiv fast float 1.000000e+00, %7059
  %7061 = fmul fast float %7058, %7060
  %7062 = call float @dx.op.binary.f32(i32 35, float %7061, float 0.000000e+00)  ; FMax(a,b)
  %7063 = call float @dx.op.binary.f32(i32 36, float %7047, float %7062)  ; FMin(a,b)
  %7064 = call float @dx.op.binary.f32(i32 36, float %7032, float %7063)  ; FMin(a,b)
  %7065 = fmul fast float %7064, %6857
  %7066 = fmul fast float %7064, %6858
  %7067 = fmul fast float %7064, %6859
  %7068 = fadd fast float %7065, %170
  %7069 = fadd fast float %7066, %171
  %7070 = fadd fast float %7067, %172
  %7071 = fsub fast float %7068, %6917
  %7072 = fsub fast float %7069, %6918
  %7073 = fsub fast float %7070, %6919
  br label %7081

; <label>:7074                                    ; preds = %7016
  %7075 = fmul fast float %6857, 8.096000e+03
  %7076 = fmul fast float %6858, 8.096000e+03
  %7077 = fmul fast float %6859, 8.096000e+03
  %7078 = fadd fast float %7075, %170
  %7079 = fadd fast float %7076, %171
  %7080 = fadd fast float %7077, %172
  br label %7081

; <label>:7081                                    ; preds = %7074, %7017
  %7082 = phi float [ %6857, %7074 ], [ %7071, %7017 ]
  %7083 = phi float [ %6858, %7074 ], [ %7072, %7017 ]
  %7084 = phi float [ %6859, %7074 ], [ %7073, %7017 ]
  %7085 = phi float [ %7078, %7074 ], [ %7068, %7017 ]
  %7086 = phi float [ %7079, %7074 ], [ %7069, %7017 ]
  %7087 = phi float [ %7080, %7074 ], [ %7070, %7017 ]
  %7088 = fcmp fast olt float %6936, 1.000000e+00
  br i1 %7088, label %7089, label %7120, !dx.controlflow.hints !99

; <label>:7089                                    ; preds = %7081
  %7090 = fmul fast float %7084, %6934
  %7091 = fmul fast float %7083, %6935
  %7092 = fsub fast float %7090, %7091
  %7093 = fmul fast float %7082, %6935
  %7094 = fmul fast float %7084, %6933
  %7095 = fsub fast float %7093, %7094
  %7096 = fmul fast float %7083, %6933
  %7097 = fmul fast float %7082, %6934
  %7098 = fsub fast float %7096, %7097
  %7099 = fmul fast float %7092, 2.000000e+00
  %7100 = fmul fast float %7095, 2.000000e+00
  %7101 = fmul fast float %7098, 2.000000e+00
  %7102 = fmul fast float %7099, %6936
  %7103 = fmul fast float %7100, %6936
  %7104 = fmul fast float %7101, %6936
  %7105 = fmul fast float %7101, %6934
  %7106 = fmul fast float %7100, %6935
  %7107 = fmul fast float %7099, %6935
  %7108 = fmul fast float %7101, %6933
  %7109 = fmul fast float %7100, %6933
  %7110 = fmul fast float %7099, %6934
  %7111 = fadd fast float %7105, %7082
  %7112 = fadd fast float %7111, %7102
  %7113 = fsub fast float %7112, %7106
  %7114 = fsub fast float %7083, %7108
  %7115 = fadd fast float %7114, %7103
  %7116 = fadd fast float %7115, %7107
  %7117 = fadd fast float %7104, %7084
  %7118 = fsub fast float %7117, %7110
  %7119 = fadd fast float %7118, %7109
  br label %7120

; <label>:7120                                    ; preds = %7089, %7081
  %7121 = phi float [ %7113, %7089 ], [ %7082, %7081 ]
  %7122 = phi float [ %7116, %7089 ], [ %7083, %7081 ]
  %7123 = phi float [ %7119, %7089 ], [ %7084, %7081 ]
  br i1 %6962, label %7155, label %7124

; <label>:7124                                    ; preds = %7120
  %7125 = fmul fast float %6488, 0x400187C840000000
  %7126 = fadd fast float %7125, 0xC00EFC2120000000
  %7127 = fmul fast float %7126, %6488
  %7128 = fadd fast float %7127, 0x3FE5D16340000000
  %7129 = fmul fast float %7128, %6488
  %7130 = fadd fast float %7129, 1.000000e+00
  %7131 = call float @dx.op.unary.f32(i32 7, float %7130)  ; Saturate(value)
  %7132 = fsub fast float %7085, %170
  %7133 = fsub fast float %7086, %171
  %7134 = fsub fast float %7087, %172
  %7135 = fsub fast float %7085, %6917
  %7136 = fsub fast float %7086, %6918
  %7137 = fsub fast float %7087, %6919
  %7138 = call float @dx.op.dot3.f32(i32 55, float %7132, float %7133, float %7134, float %7132, float %7133, float %7134)  ; Dot3(ax,ay,az,bx,by,bz)
  %7139 = call float @dx.op.dot3.f32(i32 55, float %7135, float %7136, float %7137, float %7135, float %7136, float %7137)  ; Dot3(ax,ay,az,bx,by,bz)
  %7140 = fadd fast float %7139, 0x3EE4F8B580000000
  %7141 = fdiv fast float %7138, %7140
  %7142 = bitcast float %7141 to i32
  %7143 = ashr i32 %7142, 1
  %7144 = add nsw i32 %7143, 532487669
  %7145 = bitcast i32 %7144 to float
  %7146 = fmul fast float %7145, %7131
  %7147 = call float @dx.op.unary.f32(i32 7, float %7146)  ; Saturate(value)
  %7148 = fmul fast float %7147, 0x4009981AE0000000
  %7149 = fsub fast float 0x40111BBD80000000, %7148
  %7150 = fmul fast float %7149, %7147
  %7151 = fadd fast float %7150, 0xC0009F6020000000
  %7152 = fmul fast float %7151, %7147
  %7153 = fadd fast float %7152, 1.000000e+00
  %7154 = call float @dx.op.unary.f32(i32 7, float %7153)  ; Saturate(value)
  br label %7158

; <label>:7155                                    ; preds = %7120
  %7156 = icmp ne i32 %6963, -1
  %7157 = zext i1 %7156 to i32
  br label %7158

; <label>:7158                                    ; preds = %7155, %7124
  %7159 = phi float [ %6488, %7155 ], [ %7154, %7124 ]
  %7160 = phi i32 [ %7157, %7155 ], [ 0, %7124 ]
  %7161 = fmul float %7159, 5.000000e+00
  %7162 = fsub float 5.000000e+00, %7161
  %7163 = icmp ne i32 %7160, 0
  %7164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %7165 = extractvalue %dx.types.CBufRet.f32 %7164, 3
  %7166 = fadd fast float %7165, %7162
  %7167 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7166)  ; FMax(a,b)
  %7168 = call float @dx.op.unary.f32(i32 6, float %7121)  ; FAbs(value)
  %7169 = call float @dx.op.unary.f32(i32 6, float %7122)  ; FAbs(value)
  %7170 = fadd fast float %7169, %7168
  %7171 = call float @dx.op.unary.f32(i32 6, float %7123)  ; FAbs(value)
  %7172 = fadd fast float %7170, %7171
  %7173 = fcmp fast oeq float %7172, 0.000000e+00
  %7174 = fdiv fast float 1.000000e+00, %7172
  %7175 = select i1 %7173, float 1.000000e+00, float %7174
  %7176 = fmul fast float %7175, %7121
  %7177 = fmul fast float %7175, %7122
  %7178 = call float @dx.op.unary.f32(i32 6, float %7177)  ; FAbs(value)
  %7179 = call float @dx.op.unary.f32(i32 6, float %7176)  ; FAbs(value)
  %7180 = fsub fast float 1.000000e+00, %7178
  %7181 = fsub fast float 1.000000e+00, %7179
  %7182 = fcmp fast oge float %7176, 0.000000e+00
  %7183 = fcmp fast oge float %7177, 0.000000e+00
  %7184 = select i1 %7182, float 1.000000e+00, float -1.000000e+00
  %7185 = select i1 %7183, float 1.000000e+00, float -1.000000e+00
  %7186 = fcmp fast ole float %7123, 0.000000e+00
  %7187 = fmul fast float %7184, %7180
  %7188 = fmul fast float %7185, %7181
  %7189 = select i1 %7186, float %7187, float %7176
  %7190 = select i1 %7186, float %7188, float %7177
  %7191 = fmul fast float %7189, 5.000000e-01
  %7192 = fmul fast float %7190, 5.000000e-01
  %7193 = fadd fast float %7191, 5.000000e-01
  %7194 = fadd fast float %7192, 5.000000e-01
  %7195 = uitofp i32 %6960 to float
  %7196 = call float @dx.op.binary.f32(i32 36, float %7167, float 3.000000e+00)  ; FMin(a,b)
  %7197 = fadd fast float %7196, 2.000000e+00
  %7198 = call float @dx.op.unary.f32(i32 21, float %7197)  ; Exp(value)
  %7199 = extractvalue %dx.types.CBufRet.f32 %7164, 1
  %7200 = fmul fast float %7199, %7198
  %7201 = fmul fast float %7200, 2.000000e+00
  %7202 = fsub fast float 1.000000e+00, %7201
  %7203 = fmul fast float %7193, %7202
  %7204 = fmul fast float %7194, %7202
  %7205 = fadd fast float %7203, %7200
  %7206 = fadd fast float %7204, %7200
  %7207 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %44, float %7205, float %7206, float %7195, float undef, i32 0, i32 0, i32 undef, float %7167)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7208 = extractvalue %dx.types.ResRet.f32 %7207, 0
  %7209 = extractvalue %dx.types.ResRet.f32 %7207, 1
  %7210 = extractvalue %dx.types.ResRet.f32 %7207, 2
  %7211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7212 = extractvalue %dx.types.CBufRet.f32 %7211, 3
  %7213 = fmul fast float %7212, %6930
  %7214 = call float @dx.op.binary.f32(i32 36, float %6519, float %7213)  ; FMin(a,b)
  %7215 = select i1 %7163, float %7214, float %7213
  %7216 = fmul fast float %7208, %7008
  %7217 = fmul fast float %7216, %7215
  %7218 = fmul fast float %7209, %7008
  %7219 = fmul fast float %7218, %7215
  %7220 = fmul fast float %7210, %7008
  %7221 = fmul fast float %7220, %7215
  %7222 = fadd fast float %7217, %6905
  %7223 = fadd fast float %7219, %6906
  %7224 = fadd fast float %7221, %6907
  %7225 = fsub fast float %6908, %7008
  br label %7010

; <label>:7226                                    ; preds = %7010
  br label %7227

; <label>:7227                                    ; preds = %7226, %6874
  %7228 = phi float [ %6875, %6874 ], [ %7011, %7226 ]
  %7229 = phi float [ %6876, %6874 ], [ %7012, %7226 ]
  %7230 = phi float [ %6877, %6874 ], [ %7013, %7226 ]
  %7231 = phi float [ %6878, %6874 ], [ %7014, %7226 ]
  %7232 = add i32 %6879, 1
  %7233 = icmp ugt i32 %7232, %6871
  br i1 %7233, label %7234, label %6874, !llvm.loop !100

; <label>:7234                                    ; preds = %7227
  br label %7235

; <label>:7235                                    ; preds = %7234, %6856
  %7236 = phi float [ 0.000000e+00, %6856 ], [ %7228, %7234 ]
  %7237 = phi float [ 0.000000e+00, %6856 ], [ %7229, %7234 ]
  %7238 = phi float [ 0.000000e+00, %6856 ], [ %7230, %7234 ]
  %7239 = call float @dx.op.dot3.f32(i32 55, float %7236, float %7237, float %7238, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7240 = select i1 %231, float 0.000000e+00, float %7236
  %7241 = select i1 %231, float %7239, float %7237
  %7242 = select i1 %231, float 0.000000e+00, float %7238
  %7243 = fcmp fast olt float %6809, 0.000000e+00
  %7244 = call float @dx.op.unary.f32(i32 6, float %6809)  ; FAbs(value)
  %7245 = fmul fast float %7244, %6749
  %7246 = fmul fast float %7244, %6750
  %7247 = fmul fast float %7244, %6751
  %7248 = select i1 %7243, float %6749, float %7245
  %7249 = select i1 %7243, float %6750, float %7246
  %7250 = select i1 %7243, float %6751, float %7247
  %7251 = fsub fast float 1.000000e+00, %7244
  %7252 = call float @dx.op.unary.f32(i32 7, float %7251)  ; Saturate(value)
  %7253 = fmul fast float %7252, %7240
  %7254 = fmul fast float %7252, %7241
  %7255 = fmul fast float %7252, %7242
  %7256 = fadd fast float %7248, %7253
  %7257 = fadd fast float %7249, %7254
  %7258 = fadd fast float %7250, %7255
  br label %7259

; <label>:7259                                    ; preds = %7235, %6792
  %7260 = phi float [ %6749, %6792 ], [ %7256, %7235 ]
  %7261 = phi float [ %6750, %6792 ], [ %7257, %7235 ]
  %7262 = phi float [ %6751, %6792 ], [ %7258, %7235 ]
  %7263 = fmul fast float %6798, %6745
  %7264 = fmul fast float %6798, %6746
  %7265 = fmul fast float %6798, %6747
  %7266 = call float @dx.op.dot3.f32(i32 55, float %6482, float %6483, float %6484, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7267 = fcmp fast ogt float %7266, 0x3E7FF19E20000000
  %7268 = fdiv fast float 1.000000e+00, %7266
  %7269 = select i1 %7267, float %7268, float 0.000000e+00
  %7270 = fmul fast float %7269, %6482
  %7271 = fmul fast float %7269, %6483
  %7272 = fmul fast float %7269, %6484
  %7273 = fadd fast float %7270, -1.000000e+00
  %7274 = fadd fast float %7271, -1.000000e+00
  %7275 = fadd fast float %7272, -1.000000e+00
  %7276 = fmul fast float %7273, 5.000000e-01
  %7277 = fmul fast float %7274, 5.000000e-01
  %7278 = fmul fast float %7275, 5.000000e-01
  %7279 = fadd fast float %7276, 1.000000e+00
  %7280 = fadd fast float %7277, 1.000000e+00
  %7281 = fadd fast float %7278, 1.000000e+00
  %7282 = fmul fast float %7260, %6793
  %7283 = fmul fast float %7261, %6794
  %7284 = fmul fast float %7262, %6795
  %7285 = fsub fast float 1.000000e+00, %6492
  %7286 = bitcast float %7285 to i32
  %7287 = sitofp i32 %7286 to float
  %7288 = fmul fast float %7287, 5.000000e+00
  %7289 = fadd fast float %7288, 0xC1EFBF8940000000
  %7290 = fptosi float %7289 to i32
  %7291 = bitcast i32 %7290 to float
  %7292 = fmul fast float %7291, %4262
  %7293 = fmul fast float %6745, %7292
  %7294 = fmul fast float %7293, %6798
  %7295 = fmul fast float %7294, %7279
  %7296 = fmul fast float %6746, %7292
  %7297 = fmul fast float %7296, %6798
  %7298 = fmul fast float %7297, %7280
  %7299 = fmul fast float %6747, %7292
  %7300 = fmul fast float %7299, %6798
  %7301 = fmul fast float %7300, %7281
  %7302 = fmul fast float %7263, %4258
  %7303 = fmul fast float %7264, %4258
  %7304 = fmul fast float %7265, %4258
  %7305 = fadd fast float %7282, %4254
  %7306 = fadd fast float %7305, %7295
  %7307 = fmul fast float %7306, %4258
  %7308 = fadd fast float %7283, %4255
  %7309 = fadd fast float %7308, %7298
  %7310 = fmul fast float %7309, %4258
  %7311 = fadd fast float %7284, %4256
  %7312 = fadd fast float %7311, %7301
  %7313 = fmul fast float %7312, %4258
  %7314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %7315 = extractvalue %dx.types.CBufRet.f32 %7314, 3
  %7316 = fcmp fast oeq float %7315, 0.000000e+00
  br i1 %7316, label %8783, label %7317

; <label>:7317                                    ; preds = %7259
  %7318 = extractvalue %dx.types.CBufRet.f32 %7314, 0
  %7319 = extractvalue %dx.types.CBufRet.f32 %7314, 1
  %7320 = extractvalue %dx.types.CBufRet.f32 %7314, 2
  %7321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %7322 = extractvalue %dx.types.CBufRet.f32 %7321, 0
  %7323 = extractvalue %dx.types.CBufRet.f32 %7321, 1
  %7324 = extractvalue %dx.types.CBufRet.f32 %7321, 2
  %7325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %7326 = extractvalue %dx.types.CBufRet.f32 %7325, 0
  %7327 = extractvalue %dx.types.CBufRet.f32 %7325, 1
  %7328 = call float @dx.op.dot3.f32(i32 55, float %7322, float %7323, float %7324, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7329 = select i1 %231, float %7326, float %7322
  %7330 = select i1 %231, float %7328, float %7323
  %7331 = select i1 %231, float %7327, float %7324
  %7332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %7333 = extractvalue %dx.types.CBufRet.f32 %7332, 2
  %7334 = fmul fast float %7333, %120
  %7335 = fmul fast float %7333, %122
  %7336 = fmul fast float %7333, %124
  %7337 = fadd fast float %7334, %170
  %7338 = fadd fast float %7335, %171
  %7339 = fadd fast float %7336, %172
  %7340 = fcmp fast olt float %7315, 0.000000e+00
  br i1 %7340, label %8436, label %7341

; <label>:7341                                    ; preds = %7317
  %7342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7343 = extractvalue %dx.types.CBufRet.f32 %7342, 0
  %7344 = extractvalue %dx.types.CBufRet.f32 %7342, 1
  %7345 = extractvalue %dx.types.CBufRet.f32 %7342, 2
  %7346 = extractvalue %dx.types.CBufRet.f32 %7342, 3
  %7347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7348 = extractvalue %dx.types.CBufRet.f32 %7347, 0
  %7349 = extractvalue %dx.types.CBufRet.f32 %7347, 1
  %7350 = extractvalue %dx.types.CBufRet.f32 %7347, 2
  %7351 = extractvalue %dx.types.CBufRet.f32 %7347, 3
  %7352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7353 = extractvalue %dx.types.CBufRet.f32 %7352, 0
  %7354 = extractvalue %dx.types.CBufRet.f32 %7352, 1
  %7355 = extractvalue %dx.types.CBufRet.f32 %7352, 2
  %7356 = extractvalue %dx.types.CBufRet.f32 %7352, 3
  %7357 = fmul fast float %7343, %7337
  %7358 = call float @dx.op.tertiary.f32(i32 46, float %7338, float %7344, float %7357)  ; FMad(a,b,c)
  %7359 = call float @dx.op.tertiary.f32(i32 46, float %7339, float %7345, float %7358)  ; FMad(a,b,c)
  %7360 = fadd fast float %7359, %7346
  %7361 = fmul fast float %7348, %7337
  %7362 = call float @dx.op.tertiary.f32(i32 46, float %7338, float %7349, float %7361)  ; FMad(a,b,c)
  %7363 = call float @dx.op.tertiary.f32(i32 46, float %7339, float %7350, float %7362)  ; FMad(a,b,c)
  %7364 = fadd fast float %7363, %7351
  %7365 = fmul fast float %7353, %7337
  %7366 = call float @dx.op.tertiary.f32(i32 46, float %7338, float %7354, float %7365)  ; FMad(a,b,c)
  %7367 = call float @dx.op.tertiary.f32(i32 46, float %7339, float %7355, float %7366)  ; FMad(a,b,c)
  %7368 = fadd fast float %7367, %7356
  %7369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %7370 = extractvalue %dx.types.CBufRet.f32 %7369, 0
  %7371 = extractvalue %dx.types.CBufRet.f32 %7369, 1
  %7372 = extractvalue %dx.types.CBufRet.f32 %7369, 3
  %7373 = fmul fast float %7372, %7360
  %7374 = fmul fast float %7372, %7364
  %7375 = fadd fast float %7373, %7370
  %7376 = fadd fast float %7374, %7371
  %7377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %7378 = extractvalue %dx.types.CBufRet.f32 %7377, 0
  %7379 = extractvalue %dx.types.CBufRet.f32 %7377, 1
  %7380 = extractvalue %dx.types.CBufRet.f32 %7377, 3
  %7381 = fmul fast float %7380, %7360
  %7382 = fmul fast float %7380, %7364
  %7383 = fadd fast float %7381, %7378
  %7384 = fadd fast float %7382, %7379
  %7385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %7386 = extractvalue %dx.types.CBufRet.f32 %7385, 1
  %7387 = fsub fast float %7386, %7368
  %7388 = extractvalue %dx.types.CBufRet.f32 %7385, 2
  %7389 = fmul fast float %7387, %7388
  %7390 = fsub fast float 1.000000e+00, %7389
  %7391 = call float @dx.op.unary.f32(i32 7, float %7390)  ; Saturate(value)
  %7392 = extractvalue %dx.types.CBufRet.f32 %7377, 2
  %7393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7394 = extractvalue %dx.types.CBufRet.f32 %7393, 2
  %7395 = fadd fast float %7394, %7392
  %7396 = fcmp fast ogt float %7395, 0.000000e+00
  br i1 %7396, label %7397, label %7421

; <label>:7397                                    ; preds = %7341
  %7398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %7399 = extractvalue %dx.types.CBufRet.f32 %7398, 0
  %7400 = extractvalue %dx.types.CBufRet.f32 %7398, 1
  %7401 = fsub fast float %7383, %7399
  %7402 = fsub fast float %7384, %7400
  %7403 = fcmp fast olt float %7401, 0.000000e+00
  %7404 = fcmp fast olt float %7402, 0.000000e+00
  %7405 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %7406 = extractvalue %dx.types.CBufRet.f32 %7405, 0
  %7407 = extractvalue %dx.types.CBufRet.f32 %7405, 1
  %7408 = extractvalue %dx.types.CBufRet.f32 %7405, 2
  %7409 = extractvalue %dx.types.CBufRet.f32 %7405, 3
  %7410 = select i1 %7403, float %7406, float %7408
  %7411 = select i1 %7404, float %7407, float %7409
  %7412 = fmul fast float %7410, %7401
  %7413 = fmul fast float %7411, %7402
  %7414 = call float @dx.op.unary.f32(i32 6, float %7412)  ; FAbs(value)
  %7415 = call float @dx.op.unary.f32(i32 6, float %7413)  ; FAbs(value)
  %7416 = extractvalue %dx.types.CBufRet.f32 %7332, 0
  %7417 = call float @dx.op.binary.f32(i32 35, float %7414, float %7415)  ; FMax(a,b)
  %7418 = fsub fast float %7416, %7417
  %7419 = call float @dx.op.unary.f32(i32 7, float %7418)  ; Saturate(value)
  %7420 = fmul fast float %7419, %7391
  br label %7421

; <label>:7421                                    ; preds = %7397, %7341
  %7422 = phi float [ %7420, %7397 ], [ 0.000000e+00, %7341 ]
  %7423 = extractvalue %dx.types.CBufRet.f32 %7369, 2
  %7424 = extractvalue %dx.types.CBufRet.f32 %7393, 1
  %7425 = fadd fast float %7424, %7423
  %7426 = fcmp fast ogt float %7425, 0.000000e+00
  %7427 = extractvalue %dx.types.CBufRet.f32 %7332, 0
  br i1 %7426, label %7428, label %7451

; <label>:7428                                    ; preds = %7421
  %7429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %7430 = extractvalue %dx.types.CBufRet.f32 %7429, 0
  %7431 = extractvalue %dx.types.CBufRet.f32 %7429, 1
  %7432 = fsub fast float %7375, %7430
  %7433 = fsub fast float %7376, %7431
  %7434 = fcmp fast olt float %7432, 0.000000e+00
  %7435 = fcmp fast olt float %7433, 0.000000e+00
  %7436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %7437 = extractvalue %dx.types.CBufRet.f32 %7436, 0
  %7438 = extractvalue %dx.types.CBufRet.f32 %7436, 1
  %7439 = extractvalue %dx.types.CBufRet.f32 %7436, 2
  %7440 = extractvalue %dx.types.CBufRet.f32 %7436, 3
  %7441 = select i1 %7434, float %7437, float %7439
  %7442 = select i1 %7435, float %7438, float %7440
  %7443 = fmul fast float %7441, %7432
  %7444 = fmul fast float %7442, %7433
  %7445 = call float @dx.op.unary.f32(i32 6, float %7443)  ; FAbs(value)
  %7446 = call float @dx.op.unary.f32(i32 6, float %7444)  ; FAbs(value)
  %7447 = call float @dx.op.binary.f32(i32 35, float %7445, float %7446)  ; FMax(a,b)
  %7448 = fsub fast float %7427, %7447
  %7449 = call float @dx.op.unary.f32(i32 7, float %7448)  ; Saturate(value)
  %7450 = fmul fast float %7449, %7391
  br label %7451

; <label>:7451                                    ; preds = %7428, %7421
  %7452 = phi float [ %7450, %7428 ], [ 0.000000e+00, %7421 ]
  %7453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %7454 = extractvalue %dx.types.CBufRet.f32 %7453, 1
  %7455 = call float @dx.op.unary.f32(i32 7, float %7454)  ; Saturate(value)
  %7456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %7457 = extractvalue %dx.types.CBufRet.f32 %7456, 0
  %7458 = extractvalue %dx.types.CBufRet.f32 %7456, 1
  %7459 = fsub fast float %7360, %7457
  %7460 = fsub fast float %7364, %7458
  %7461 = fcmp fast olt float %7459, 0.000000e+00
  %7462 = fcmp fast olt float %7460, 0.000000e+00
  %7463 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %7464 = extractvalue %dx.types.CBufRet.f32 %7463, 0
  %7465 = extractvalue %dx.types.CBufRet.f32 %7463, 1
  %7466 = extractvalue %dx.types.CBufRet.f32 %7463, 2
  %7467 = extractvalue %dx.types.CBufRet.f32 %7463, 3
  %7468 = select i1 %7461, float %7464, float %7466
  %7469 = select i1 %7462, float %7465, float %7467
  %7470 = fmul fast float %7468, %7459
  %7471 = fmul fast float %7469, %7460
  %7472 = call float @dx.op.unary.f32(i32 6, float %7470)  ; FAbs(value)
  %7473 = call float @dx.op.unary.f32(i32 6, float %7471)  ; FAbs(value)
  %7474 = call float @dx.op.binary.f32(i32 35, float %7472, float %7473)  ; FMax(a,b)
  %7475 = fsub fast float %7427, %7474
  %7476 = call float @dx.op.unary.f32(i32 7, float %7475)  ; Saturate(value)
  %7477 = call float @dx.op.binary.f32(i32 36, float %7476, float %7455)  ; FMin(a,b)
  %7478 = fmul fast float %7477, %7391
  %7479 = fsub fast float %7452, %7478
  %7480 = fsub fast float %7422, %7452
  %7481 = fsub fast float %7480, %7478
  %7482 = call float @dx.op.binary.f32(i32 35, float %7452, float %7422)  ; FMax(a,b)
  %7483 = call float @dx.op.binary.f32(i32 35, float %7478, float %7482)  ; FMax(a,b)
  %7484 = fcmp fast olt float %7483, 1.000000e+00
  br i1 %7484, label %7485, label %7883, !dx.controlflow.hints !102

; <label>:7485                                    ; preds = %7451
  %7486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %7487 = extractvalue %dx.types.CBufRet.f32 %7486, 0
  %7488 = fcmp fast une float %7487, 0.000000e+00
  br i1 %7488, label %7489, label %7883, !dx.controlflow.hints !103

; <label>:7489                                    ; preds = %7485
  %7490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %7491 = extractvalue %dx.types.CBufRet.f32 %7490, 0
  %7492 = extractvalue %dx.types.CBufRet.f32 %7490, 1
  %7493 = extractvalue %dx.types.CBufRet.f32 %7490, 2
  %7494 = extractvalue %dx.types.CBufRet.f32 %7490, 3
  %7495 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %7496 = extractvalue %dx.types.CBufRet.f32 %7495, 0
  %7497 = extractvalue %dx.types.CBufRet.f32 %7495, 1
  %7498 = extractvalue %dx.types.CBufRet.f32 %7495, 2
  %7499 = extractvalue %dx.types.CBufRet.f32 %7495, 3
  %7500 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %7501 = extractvalue %dx.types.CBufRet.f32 %7500, 0
  %7502 = extractvalue %dx.types.CBufRet.f32 %7500, 1
  %7503 = extractvalue %dx.types.CBufRet.f32 %7500, 2
  %7504 = extractvalue %dx.types.CBufRet.f32 %7500, 3
  %7505 = fmul fast float %7491, %7337
  %7506 = call float @dx.op.tertiary.f32(i32 46, float %7338, float %7492, float %7505)  ; FMad(a,b,c)
  %7507 = call float @dx.op.tertiary.f32(i32 46, float %7339, float %7493, float %7506)  ; FMad(a,b,c)
  %7508 = fadd fast float %7507, %7494
  %7509 = fmul fast float %7496, %7337
  %7510 = call float @dx.op.tertiary.f32(i32 46, float %7338, float %7497, float %7509)  ; FMad(a,b,c)
  %7511 = call float @dx.op.tertiary.f32(i32 46, float %7339, float %7498, float %7510)  ; FMad(a,b,c)
  %7512 = fadd fast float %7511, %7499
  %7513 = fmul fast float %7501, %7337
  %7514 = call float @dx.op.tertiary.f32(i32 46, float %7338, float %7502, float %7513)  ; FMad(a,b,c)
  %7515 = call float @dx.op.tertiary.f32(i32 46, float %7339, float %7503, float %7514)  ; FMad(a,b,c)
  %7516 = fadd fast float %7515, %7504
  %7517 = fcmp fast oge float %7508, 1.000000e+00
  %7518 = fcmp fast oge float %7512, 1.000000e+00
  %7519 = or i1 %7517, %7518
  %7520 = fcmp fast olt float %7508, 0.000000e+00
  %7521 = fcmp fast olt float %7512, 0.000000e+00
  %7522 = or i1 %7520, %7521
  %7523 = or i1 %7519, %7522
  br i1 %7523, label %7883, label %7524, !dx.controlflow.hints !104

; <label>:7524                                    ; preds = %7489
  %7525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %7526 = extractvalue %dx.types.CBufRet.f32 %7525, 0
  %7527 = extractvalue %dx.types.CBufRet.f32 %7525, 1
  %7528 = extractvalue %dx.types.CBufRet.f32 %7525, 2
  %7529 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %7530 = extractvalue %dx.types.CBufRet.i32 %7529, 2
  %7531 = uitofp i32 %7530 to float
  %7532 = extractvalue %dx.types.CBufRet.i32 %7529, 3
  %7533 = uitofp i32 %7532 to float
  %7534 = extractvalue %dx.types.CBufRet.f32 %7525, 3
  %7535 = fmul fast float %7534, 2.000000e+00
  %7536 = fsub fast float %7508, %7526
  %7537 = fsub fast float %7512, %7527
  %7538 = fmul fast float %7535, %7536
  %7539 = fmul fast float %7535, %7537
  %7540 = fdiv fast float 1.000000e+00, %7320
  %7541 = fmul fast float %7539, %7540
  %7542 = call float @dx.op.unary.f32(i32 6, float %7541)  ; FAbs(value)
  %7543 = fmul fast float %7528, %7339
  %7544 = fmul fast float %7543, %7535
  %7545 = call float @dx.op.unary.f32(i32 6, float %7544)  ; FAbs(value)
  %7546 = call float @dx.op.unary.f32(i32 6, float %7538)  ; FAbs(value)
  %7547 = call float @dx.op.binary.f32(i32 35, float %7545, float %7542)  ; FMax(a,b)
  %7548 = call float @dx.op.binary.f32(i32 35, float %7546, float %7547)  ; FMax(a,b)
  %7549 = fmul fast float %7548, 2.000000e+00
  %7550 = call float @dx.op.unary.f32(i32 23, float %7549)  ; Log(value)
  %7551 = call float @dx.op.binary.f32(i32 35, float %7550, float %7531)  ; FMax(a,b)
  %7552 = call float @dx.op.unary.f32(i32 22, float %7551)  ; Frc(value)
  %7553 = fadd fast float %7552, 0xBFEA666660000000
  %7554 = fmul fast float %7553, 8.000000e+00
  %7555 = call float @dx.op.unary.f32(i32 7, float %7554)  ; Saturate(value)
  %7556 = call float @dx.op.unary.f32(i32 27, float %7551)  ; Round_ni(value)
  %7557 = fadd fast float %7556, %7555
  %7558 = call float @dx.op.binary.f32(i32 36, float %7557, float %7533)  ; FMin(a,b)
  %7559 = call float @dx.op.unary.f32(i32 27, float %7558)  ; Round_ni(value)
  %7560 = fsub fast float -0.000000e+00, %7559
  %7561 = call float @dx.op.unary.f32(i32 21, float %7560)  ; Exp(value)
  %7562 = fmul fast float %7561, %7535
  %7563 = fmul fast float %7562, %7508
  %7564 = fmul fast float %7562, %7512
  %7565 = fmul fast float %7563, 2.500000e-01
  %7566 = fmul fast float %7564, 2.500000e-01
  %7567 = fadd fast float %7565, 5.000000e-01
  %7568 = fadd fast float %7566, 5.000000e-01
  %7569 = fsub fast float %7533, %7531
  %7570 = fptoui float %7569 to i32
  %7571 = add i32 %7570, 320
  %7572 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 %7571)  ; CBufferLoadLegacy(handle,regIndex)
  %7573 = extractvalue %dx.types.CBufRet.f32 %7572, 0
  %7574 = extractvalue %dx.types.CBufRet.f32 %7572, 1
  %7575 = fcmp fast une float %7558, %7533
  %7576 = fsub fast float %7508, %7573
  %7577 = fsub fast float %7512, %7574
  %7578 = call float @dx.op.unary.f32(i32 6, float %7576)  ; FAbs(value)
  %7579 = call float @dx.op.unary.f32(i32 6, float %7577)  ; FAbs(value)
  %7580 = fmul fast float %7578, %7562
  %7581 = fmul fast float %7579, %7562
  %7582 = fcmp fast olt float %7580, 1.000000e+00
  %7583 = fcmp fast olt float %7581, 1.000000e+00
  %7584 = and i1 %7582, %7583
  %7585 = or i1 %7575, %7584
  br i1 %7585, label %7586, label %7883, !dx.controlflow.hints !105

; <label>:7586                                    ; preds = %7524
  %7587 = fmul fast float %7564, 5.000000e-01
  %7588 = fmul fast float %7563, 5.000000e-01
  %7589 = fadd fast float %7587, 5.000000e-01
  %7590 = fadd fast float %7588, 5.000000e-01
  %7591 = sitofp i32 %7530 to float
  %7592 = fsub fast float %7558, %7591
  %7593 = call float @dx.op.unary.f32(i32 27, float %7592)  ; Round_ni(value)
  %7594 = call float @dx.op.unary.f32(i32 22, float %7558)  ; Frc(value)
  %7595 = call float @dx.op.unary.f32(i32 22, float %7590)  ; Frc(value)
  %7596 = call float @dx.op.unary.f32(i32 22, float %7589)  ; Frc(value)
  %7597 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %45, float %7595, float %7596, float %7593, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7598 = extractvalue %dx.types.ResRet.f32 %7597, 0
  %7599 = extractvalue %dx.types.ResRet.f32 %7597, 1
  %7600 = extractvalue %dx.types.ResRet.f32 %7597, 2
  %7601 = extractvalue %dx.types.ResRet.f32 %7597, 3
  %7602 = fcmp fast ogt float %7594, 0.000000e+00
  br i1 %7602, label %7603, label %7624, !dx.controlflow.hints !106

; <label>:7603                                    ; preds = %7586
  %7604 = fadd fast float %7593, 1.000000e+00
  %7605 = call float @dx.op.unary.f32(i32 22, float %7567)  ; Frc(value)
  %7606 = call float @dx.op.unary.f32(i32 22, float %7568)  ; Frc(value)
  %7607 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %45, float %7605, float %7606, float %7604, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7608 = extractvalue %dx.types.ResRet.f32 %7607, 0
  %7609 = extractvalue %dx.types.ResRet.f32 %7607, 1
  %7610 = extractvalue %dx.types.ResRet.f32 %7607, 2
  %7611 = extractvalue %dx.types.ResRet.f32 %7607, 3
  %7612 = fsub fast float %7608, %7598
  %7613 = fsub fast float %7609, %7599
  %7614 = fsub fast float %7610, %7600
  %7615 = fsub fast float %7611, %7601
  %7616 = fmul fast float %7612, %7594
  %7617 = fmul fast float %7613, %7594
  %7618 = fmul fast float %7614, %7594
  %7619 = fmul fast float %7615, %7594
  %7620 = fadd fast float %7616, %7598
  %7621 = fadd fast float %7617, %7599
  %7622 = fadd fast float %7618, %7600
  %7623 = fadd fast float %7619, %7601
  br label %7624

; <label>:7624                                    ; preds = %7603, %7586
  %7625 = phi float [ %7620, %7603 ], [ %7598, %7586 ]
  %7626 = phi float [ %7621, %7603 ], [ %7599, %7586 ]
  %7627 = phi float [ %7622, %7603 ], [ %7600, %7586 ]
  %7628 = phi float [ %7623, %7603 ], [ %7601, %7586 ]
  %7629 = fadd fast float %7625, -5.000000e-01
  %7630 = fadd fast float %7627, -5.000000e-01
  %7631 = fmul fast float %7629, 0xBFD5555560000000
  %7632 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %7630, float %7631)  ; FMad(a,b,c)
  %7633 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %7626, float 0.000000e+00)  ; FMad(a,b,c)
  %7634 = fadd fast float %7633, %7628
  %7635 = fmul fast float %7629, -7.500000e-01
  %7636 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %7630, float %7635)  ; FMad(a,b,c)
  %7637 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %7626, float 0.000000e+00)  ; FMad(a,b,c)
  %7638 = fadd fast float %7637, %7628
  %7639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %7640 = extractvalue %dx.types.CBufRet.f32 %7639, 0
  %7641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %7642 = extractvalue %dx.types.CBufRet.f32 %7641, 0
  %7643 = extractvalue %dx.types.CBufRet.f32 %7641, 1
  %7644 = extractvalue %dx.types.CBufRet.f32 %7641, 2
  %7645 = extractvalue %dx.types.CBufRet.f32 %7641, 3
  %7646 = fsub fast float %7642, %7632
  %7647 = fsub fast float %7643, %7634
  %7648 = fsub fast float %7644, %7636
  %7649 = fsub fast float %7645, %7638
  %7650 = fmul fast float %7646, %7640
  %7651 = fmul fast float %7647, %7640
  %7652 = fmul fast float %7648, %7640
  %7653 = fmul fast float %7649, %7640
  %7654 = fadd fast float %7650, %7632
  %7655 = fadd fast float %7651, %7634
  %7656 = fadd fast float %7652, %7636
  %7657 = fadd fast float %7653, %7638
  %7658 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %7659 = extractvalue %dx.types.ResRet.i32 %7658, 0
  %7660 = and i32 %7659, 536870911
  %7661 = uitofp i32 %7660 to float
  %7662 = fmul fast float %7661, %7508
  %7663 = fmul fast float %7661, %7512
  %7664 = fptoui float %7662 to i32
  %7665 = fptoui float %7663 to i32
  %7666 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %7667 = extractvalue %dx.types.ResRet.i32 %7666, 0
  %7668 = and i32 %7667, 31
  %7669 = lshr i32 %7664, %7668
  %7670 = lshr i32 %7665, %7668
  %7671 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %7672 = extractvalue %dx.types.ResRet.i32 %7671, 0
  %7673 = and i32 %7672, 31
  %7674 = shl i32 1, %7673
  %7675 = call i32 @dx.op.binary.i32(i32 40, i32 %7674, i32 4)  ; UMin(a,b)
  %7676 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %7677 = extractvalue %dx.types.ResRet.i32 %7676, 0
  %7678 = extractvalue %dx.types.ResRet.i32 %7676, 1
  %7679 = icmp eq i32 %7675, 0
  br i1 %7679, label %7721, label %7680

; <label>:7680                                    ; preds = %7624
  br label %7681

; <label>:7681                                    ; preds = %7709, %7680
  %7682 = phi i32 [ %7712, %7709 ], [ 0, %7680 ]
  %7683 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %7684 = extractvalue %dx.types.ResRet.i32 %7683, 0
  %7685 = lshr i32 %7684, 16
  %7686 = and i32 %7685, 31
  %7687 = shl i32 %7670, %7686
  %7688 = add i32 %7687, %7669
  %7689 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %7690 = extractvalue %dx.types.ResRet.i32 %7689, 0
  %7691 = and i32 %7690, 31
  %7692 = shl i32 %7688, %7691
  %7693 = add i32 %7692, %7682
  %7694 = shl i32 %7693, 2
  %7695 = add i32 %7694, 32
  %7696 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7695, i32 undef)  ; BufferLoad(srv,index,wot)
  %7697 = extractvalue %dx.types.ResRet.i32 %7696, 0
  %7698 = icmp slt i32 %7697, 0
  %7699 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 %7682
  %7700 = getelementptr [12 x float], [12 x float]* %101, i32 0, i32 %7682
  %7701 = bitcast float* %7699 to i32*
  %7702 = bitcast float* %7700 to i32*
  br i1 %7698, label %7703, label %7709

; <label>:7703                                    ; preds = %7681
  %7704 = and i32 %7697, 1073741823
  %7705 = add nuw nsw i32 %7704, 20
  %7706 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7705, i32 undef)  ; BufferLoad(srv,index,wot)
  %7707 = extractvalue %dx.types.ResRet.i32 %7706, 0
  %7708 = extractvalue %dx.types.ResRet.i32 %7706, 1
  br label %7709

; <label>:7709                                    ; preds = %7703, %7681
  %7710 = phi i32 [ %7707, %7703 ], [ %7677, %7681 ]
  %7711 = phi i32 [ %7708, %7703 ], [ %7678, %7681 ]
  store i32 %7710, i32* %7701, align 4
  store i32 %7711, i32* %7702, align 4
  %7712 = add nuw i32 %7682, 1
  %7713 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %7714 = extractvalue %dx.types.CBufRet.i32 %7713, 2
  %7715 = icmp eq i32 %7714, 0
  %7716 = icmp ugt i32 %7697, -1073741825
  %7717 = and i1 %7716, %7715
  %7718 = icmp ult i32 %7712, %7675
  %7719 = and i1 %7717, %7718
  br i1 %7719, label %7681, label %7720

; <label>:7720                                    ; preds = %7709
  br label %7721

; <label>:7721                                    ; preds = %7720, %7624
  %7722 = phi i32 [ 0, %7624 ], [ %7712, %7720 ]
  %7723 = extractvalue %dx.types.CBufRet.f32 %7486, 2
  %7724 = fptoui float %7723 to i32
  %7725 = icmp eq i32 %7724, 0
  br i1 %7725, label %7777, label %7726

; <label>:7726                                    ; preds = %7721
  br label %7727

; <label>:7727                                    ; preds = %7772, %7726
  %7728 = phi i32 [ %7773, %7772 ], [ %7722, %7726 ]
  %7729 = phi i32 [ %7774, %7772 ], [ 0, %7726 ]
  %7730 = lshr i32 %7729, 2
  %7731 = and i32 %7729, 3
  %7732 = add nuw nsw i32 %7730, 83
  %7733 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 %7732)  ; CBufferLoadLegacy(handle,regIndex)
  %7734 = extractvalue %dx.types.CBufRet.i32 %7733, 0
  %7735 = extractvalue %dx.types.CBufRet.i32 %7733, 1
  %7736 = extractvalue %dx.types.CBufRet.i32 %7733, 2
  %7737 = extractvalue %dx.types.CBufRet.i32 %7733, 3
  %7738 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 0
  store i32 %7734, i32* %7738, align 4
  %7739 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 1
  store i32 %7735, i32* %7739, align 4
  %7740 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 2
  store i32 %7736, i32* %7740, align 4
  %7741 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 3
  store i32 %7737, i32* %7741, align 4
  %7742 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 %7731
  %7743 = load i32, i32* %7742, align 4, !tbaa !97, !noalias !107
  %7744 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %7745 = extractvalue %dx.types.ResRet.i32 %7744, 0
  %7746 = lshr i32 %7745, 16
  %7747 = and i32 %7746, 31
  %7748 = shl i32 %7670, %7747
  %7749 = add i32 %7748, %7669
  %7750 = shl i32 %7749, 2
  %7751 = add i32 %7750, %7743
  %7752 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7751, i32 undef)  ; BufferLoad(srv,index,wot)
  %7753 = extractvalue %dx.types.ResRet.i32 %7752, 0
  %7754 = icmp eq i32 %7753, 0
  br i1 %7754, label %7772, label %7755

; <label>:7755                                    ; preds = %7727
  %7756 = icmp slt i32 %7753, 0
  %7757 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 %7728
  %7758 = getelementptr [12 x float], [12 x float]* %101, i32 0, i32 %7728
  %7759 = bitcast float* %7757 to i32*
  %7760 = bitcast float* %7758 to i32*
  br i1 %7756, label %7761, label %7768

; <label>:7761                                    ; preds = %7755
  %7762 = and i32 %7753, 1073741823
  %7763 = add i32 %7743, 20
  %7764 = add i32 %7763, %7762
  %7765 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7764, i32 undef)  ; BufferLoad(srv,index,wot)
  %7766 = extractvalue %dx.types.ResRet.i32 %7765, 0
  %7767 = extractvalue %dx.types.ResRet.i32 %7765, 1
  br label %7768

; <label>:7768                                    ; preds = %7761, %7755
  %7769 = phi i32 [ %7766, %7761 ], [ %7677, %7755 ]
  %7770 = phi i32 [ %7767, %7761 ], [ %7678, %7755 ]
  store i32 %7769, i32* %7759, align 4
  store i32 %7770, i32* %7760, align 4
  %7771 = add i32 %7728, 1
  br label %7772

; <label>:7772                                    ; preds = %7768, %7727
  %7773 = phi i32 [ %7728, %7727 ], [ %7771, %7768 ]
  %7774 = add nuw i32 %7729, 1
  %7775 = icmp eq i32 %7774, %7724
  br i1 %7775, label %7776, label %7727

; <label>:7776                                    ; preds = %7772
  br label %7777

; <label>:7777                                    ; preds = %7776, %7721
  %7778 = phi i32 [ %7722, %7721 ], [ %7773, %7776 ]
  %7779 = icmp eq i32 %7778, 1
  %7780 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 0
  %7781 = getelementptr [12 x float], [12 x float]* %101, i32 0, i32 0
  br i1 %7779, label %7782, label %7785

; <label>:7782                                    ; preds = %7777
  %7783 = load float, float* %7780, align 4
  %7784 = load float, float* %7781, align 4
  br label %7812

; <label>:7785                                    ; preds = %7777
  %7786 = load float, float* %7780, align 4
  %7787 = load float, float* %7781, align 4
  %7788 = fdiv fast float 1.000000e+00, %7787
  %7789 = fsub fast float %7786, %7788
  %7790 = icmp ugt i32 %7778, 1
  br i1 %7790, label %7791, label %7807

; <label>:7791                                    ; preds = %7785
  br label %7792

; <label>:7792                                    ; preds = %7792, %7791
  %7793 = phi float [ %7802, %7792 ], [ %7789, %7791 ]
  %7794 = phi float [ %7803, %7792 ], [ %7786, %7791 ]
  %7795 = phi i32 [ %7804, %7792 ], [ 1, %7791 ]
  %7796 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 %7795
  %7797 = load float, float* %7796, align 4
  %7798 = getelementptr [12 x float], [12 x float]* %101, i32 0, i32 %7795
  %7799 = load float, float* %7798, align 4
  %7800 = fdiv fast float 1.000000e+00, %7799
  %7801 = fsub fast float %7797, %7800
  %7802 = call float @dx.op.binary.f32(i32 36, float %7793, float %7801)  ; FMin(a,b)
  %7803 = call float @dx.op.binary.f32(i32 35, float %7794, float %7797)  ; FMax(a,b)
  %7804 = add nuw i32 %7795, 1
  %7805 = icmp eq i32 %7804, %7778
  br i1 %7805, label %7806, label %7792

; <label>:7806                                    ; preds = %7792
  br label %7807

; <label>:7807                                    ; preds = %7806, %7785
  %7808 = phi float [ %7789, %7785 ], [ %7802, %7806 ]
  %7809 = phi float [ %7786, %7785 ], [ %7803, %7806 ]
  %7810 = fsub fast float %7809, %7808
  %7811 = fdiv fast float 1.000000e+00, %7810
  br label %7812

; <label>:7812                                    ; preds = %7807, %7782
  %7813 = phi float [ %7783, %7782 ], [ %7809, %7807 ]
  %7814 = phi float [ %7784, %7782 ], [ %7811, %7807 ]
  %7815 = fadd fast float %7516, %7813
  %7816 = fmul fast float %7815, %7814
  %7817 = call float @dx.op.unary.f32(i32 7, float %7816)  ; Saturate(value)
  %7818 = fmul fast float %7817, 2.000000e+00
  %7819 = fsub fast float 1.000000e+00, %7818
  %7820 = fmul fast float %7654, %7654
  %7821 = fsub fast float %7655, %7820
  %7822 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %7821)  ; FMax(a,b)
  %7823 = fdiv fast float 1.000000e+00, %7822
  %7824 = fmul fast float %7655, %7654
  %7825 = fsub fast float %7656, %7824
  %7826 = fsub fast float %7819, %7654
  %7827 = fmul fast float %7819, %7819
  %7828 = fsub fast float %7827, %7655
  %7829 = fmul fast float %7823, %7825
  %7830 = fmul fast float %7829, %7826
  %7831 = fsub fast float %7828, %7830
  %7832 = fmul fast float %7655, %7655
  %7833 = fsub fast float %7657, %7832
  %7834 = fmul fast float %7825, %7825
  %7835 = fmul fast float %7834, %7823
  %7836 = fsub fast float %7833, %7835
  %7837 = fdiv fast float %7831, %7836
  %7838 = fmul fast float %7837, %7825
  %7839 = fsub fast float %7826, %7838
  %7840 = fmul fast float %7839, %7823
  %7841 = fmul fast float %7840, %7654
  %7842 = fsub fast float 1.000000e+00, %7841
  %7843 = fmul fast float %7837, %7655
  %7844 = fsub fast float %7842, %7843
  %7845 = fmul fast float %7840, %7840
  %7846 = fmul fast float %7837, 4.000000e+00
  %7847 = fmul fast float %7846, %7844
  %7848 = fsub fast float %7845, %7847
  %7849 = call float @dx.op.unary.f32(i32 24, float %7848)  ; Sqrt(value)
  %7850 = fcmp fast oge float %7840, 0.000000e+00
  %7851 = fsub fast float -0.000000e+00, %7849
  %7852 = select i1 %7850, float %7851, float %7849
  %7853 = fsub fast float %7852, %7840
  %7854 = fdiv fast float %7853, %7837
  %7855 = fdiv fast float %7844, %7853
  %7856 = fmul fast float %7854, 5.000000e-01
  %7857 = fmul fast float %7855, 2.000000e+00
  %7858 = select i1 %7850, float %7856, float %7857
  %7859 = select i1 %7850, float %7857, float %7856
  %7860 = call float @dx.op.binary.f32(i32 35, float %7858, float %7859)  ; FMax(a,b)
  %7861 = call float @dx.op.binary.f32(i32 36, float %7858, float %7859)  ; FMin(a,b)
  %7862 = fcmp fast ogt float %7819, %7860
  %7863 = fsub fast float %7819, %7861
  %7864 = fsub fast float %7819, %7860
  %7865 = fsub fast float %7860, %7861
  %7866 = select i1 %7862, float %7864, float %7865
  %7867 = fmul float %7863, %7866
  %7868 = select i1 %7862, float %7861, float %7819
  %7869 = fcmp fast ogt float %7819, %7861
  %7870 = fmul fast float %7868, %7860
  %7871 = fadd fast float %7868, %7860
  %7872 = fmul fast float %7871, %7654
  %7873 = fadd fast float %7870, %7655
  %7874 = fsub fast float %7873, %7872
  %7875 = fdiv fast float %7874, %7867
  %7876 = select i1 %7869, float %7875, float 0.000000e+00
  %7877 = fsub fast float 1.000000e+00, %7876
  %7878 = select i1 %7862, float %7877, float %7876
  %7879 = call float @dx.op.unary.f32(i32 7, float %7878)  ; Saturate(value)
  %7880 = extractvalue %dx.types.CBufRet.f32 %7639, 3
  %7881 = fmul fast float %7880, %7879
  %7882 = fsub fast float 1.000000e+00, %7881
  br label %7883

; <label>:7883                                    ; preds = %7812, %7524, %7489, %7485, %7451
  %7884 = phi float [ 1.000000e+00, %7451 ], [ %7882, %7812 ], [ 1.000000e+00, %7489 ], [ 1.000000e+00, %7524 ], [ 1.000000e+00, %7485 ]
  %7885 = fcmp fast ogt float %7481, 0.000000e+00
  br i1 %7885, label %7886, label %8048, !dx.controlflow.hints !116

; <label>:7886                                    ; preds = %7883
  %7887 = fadd fast float %7394, %7368
  %7888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7889 = extractvalue %dx.types.CBufRet.f32 %7888, 2
  %7890 = extractvalue %dx.types.CBufRet.f32 %7888, 3
  %7891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7892 = extractvalue %dx.types.CBufRet.f32 %7891, 2
  %7893 = call float @dx.op.binary.f32(i32 35, float %7887, float 0.000000e+00)  ; FMax(a,b)
  %7894 = fadd fast float %7893, 0x3F10000000000000
  %7895 = fcmp fast oeq float %7892, 0.000000e+00
  br i1 %7895, label %7896, label %7963

; <label>:7896                                    ; preds = %7886
  %7897 = extractvalue %dx.types.CBufRet.f32 %7888, 1
  %7898 = extractvalue %dx.types.CBufRet.f32 %7888, 0
  %7899 = fmul fast float %7898, %7383
  %7900 = fmul fast float %7897, %7384
  %7901 = fadd fast float %7899, 5.000000e-01
  %7902 = call float @dx.op.unary.f32(i32 27, float %7901)  ; Round_ni(value)
  %7903 = fadd fast float %7900, 5.000000e-01
  %7904 = call float @dx.op.unary.f32(i32 27, float %7903)  ; Round_ni(value)
  %7905 = fsub fast float %7901, %7902
  %7906 = fsub fast float %7903, %7904
  %7907 = fadd fast float %7902, -5.000000e-01
  %7908 = fadd fast float %7904, -5.000000e-01
  %7909 = fmul fast float %7905, 2.000000e+00
  %7910 = fsub fast float 3.000000e+00, %7909
  %7911 = fadd fast float %7909, 1.000000e+00
  %7912 = fsub fast float 2.000000e+00, %7905
  %7913 = bitcast float %7910 to i32
  %7914 = sub nsw i32 2129859010, %7913
  %7915 = bitcast i32 %7914 to float
  %7916 = fmul fast float %7915, %7912
  %7917 = fadd fast float %7916, -1.000000e+00
  %7918 = bitcast float %7911 to i32
  %7919 = sub nsw i32 2129859010, %7918
  %7920 = bitcast i32 %7919 to float
  %7921 = fmul fast float %7920, %7905
  %7922 = fadd fast float %7921, 1.000000e+00
  %7923 = fmul fast float %7906, 2.000000e+00
  %7924 = fsub fast float 3.000000e+00, %7923
  %7925 = fadd fast float %7923, 1.000000e+00
  %7926 = fsub fast float 2.000000e+00, %7906
  %7927 = bitcast float %7924 to i32
  %7928 = sub nsw i32 2129859010, %7927
  %7929 = bitcast i32 %7928 to float
  %7930 = fmul fast float %7929, %7926
  %7931 = fadd fast float %7930, -1.000000e+00
  %7932 = bitcast float %7925 to i32
  %7933 = sub nsw i32 2129859010, %7932
  %7934 = bitcast i32 %7933 to float
  %7935 = fmul fast float %7934, %7906
  %7936 = fadd fast float %7935, 1.000000e+00
  %7937 = fadd fast float %7917, %7907
  %7938 = fmul fast float %7937, %7889
  %7939 = fadd fast float %7931, %7908
  %7940 = fmul fast float %7939, %7890
  %7941 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %48, float %7938, float %7940, float undef, float undef, i32 0, i32 0, i32 undef, float %7894)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7942 = extractvalue %dx.types.ResRet.f32 %7941, 0
  %7943 = fmul fast float %7942, %7910
  %7944 = fadd fast float %7922, %7907
  %7945 = fmul fast float %7944, %7889
  %7946 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %48, float %7945, float %7940, float undef, float undef, i32 0, i32 0, i32 undef, float %7894)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7947 = extractvalue %dx.types.ResRet.f32 %7946, 0
  %7948 = fmul fast float %7947, %7911
  %7949 = fadd fast float %7936, %7908
  %7950 = fmul fast float %7949, %7890
  %7951 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %48, float %7938, float %7950, float undef, float undef, i32 0, i32 0, i32 undef, float %7894)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7952 = extractvalue %dx.types.ResRet.f32 %7951, 0
  %7953 = fmul fast float %7952, %7910
  %7954 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %48, float %7945, float %7950, float undef, float undef, i32 0, i32 0, i32 undef, float %7894)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7955 = extractvalue %dx.types.ResRet.f32 %7954, 0
  %7956 = fmul fast float %7955, %7911
  %7957 = fadd fast float %7956, %7953
  %7958 = fmul fast float %7957, %7925
  %7959 = fadd fast float %7948, %7943
  %7960 = fmul fast float %7959, %7924
  %7961 = fadd fast float %7960, %7958
  %7962 = fmul fast float %7961, 6.250000e-02
  br label %8048

; <label>:7963                                    ; preds = %7886
  %7964 = fmul fast float %242, 0x401921FB60000000
  %7965 = call float @dx.op.unary.f32(i32 13, float %7964)  ; Sin(value)
  %7966 = call float @dx.op.unary.f32(i32 12, float %7964)  ; Cos(value)
  %7967 = fsub fast float -0.000000e+00, %7965
  br label %7968

; <label>:7968                                    ; preds = %8017, %7963
  %7969 = phi float [ 0.000000e+00, %7963 ], [ %8012, %8017 ]
  %7970 = phi float [ 0.000000e+00, %7963 ], [ %8014, %8017 ]
  %7971 = phi i32 [ 0, %7963 ], [ %8018, %8017 ]
  %7972 = mul i32 %7971, 2
  %7973 = add i32 0, %7972
  %7974 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7973
  %7975 = load float, float* %7974, align 4
  %7976 = mul i32 %7971, 2
  %7977 = add i32 1, %7976
  %7978 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7977
  %7979 = load float, float* %7978, align 4
  %7980 = fmul fast float %7975, %7966
  %7981 = call float @dx.op.tertiary.f32(i32 46, float %7979, float %7967, float %7980)  ; FMad(a,b,c)
  %7982 = fmul fast float %7975, %7965
  %7983 = call float @dx.op.tertiary.f32(i32 46, float %7979, float %7966, float %7982)  ; FMad(a,b,c)
  %7984 = fmul fast float %7981, %7892
  %7985 = fmul fast float %7983, %7892
  %7986 = fadd fast float %7984, %7383
  %7987 = fadd fast float %7985, %7384
  %7988 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %47, float %7986, float %7987, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7989 = extractvalue %dx.types.ResRet.f32 %7988, 0
  %7990 = extractvalue %dx.types.ResRet.f32 %7988, 1
  %7991 = extractvalue %dx.types.ResRet.f32 %7988, 2
  %7992 = extractvalue %dx.types.ResRet.f32 %7988, 3
  %7993 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 0
  store float %7989, float* %7993, align 4
  %7994 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 1
  store float %7990, float* %7994, align 4
  %7995 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 2
  store float %7991, float* %7995, align 4
  %7996 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 3
  store float %7992, float* %7996, align 4
  %7997 = fsub fast float %7989, %7894
  %7998 = fcmp fast olt float %7997, 0.000000e+00
  %7999 = select i1 %7998, float 0.000000e+00, float 1.000000e+00
  %8000 = fadd fast float %7999, %7969
  %8001 = fmul fast float %7999, %7997
  %8002 = fadd fast float %8001, %7970
  br label %8003

; <label>:8003                                    ; preds = %8003, %7968
  %8004 = phi i32 [ 1, %7968 ], [ %8015, %8003 ]
  %8005 = phi float [ %8002, %7968 ], [ %8014, %8003 ]
  %8006 = phi float [ %8000, %7968 ], [ %8012, %8003 ]
  %8007 = getelementptr [4 x float], [4 x float]* %104, i32 0, i32 %8004
  %8008 = load float, float* %8007, align 4, !tbaa !91, !noalias !107
  %8009 = fsub fast float %8008, %7894
  %8010 = fcmp fast olt float %8009, 0.000000e+00
  %8011 = select i1 %8010, float 0.000000e+00, float 1.000000e+00
  %8012 = fadd fast float %8011, %8006
  %8013 = fmul fast float %8011, %8009
  %8014 = fadd fast float %8013, %8005
  %8015 = add nuw nsw i32 %8004, 1
  %8016 = icmp eq i32 %8015, 4
  br i1 %8016, label %8017, label %8003, !llvm.loop !117

; <label>:8017                                    ; preds = %8003
  %8018 = add nuw nsw i32 %7971, 1
  %8019 = icmp eq i32 %8018, 8
  br i1 %8019, label %8020, label %7968, !llvm.loop !118

; <label>:8020                                    ; preds = %8017
  %8021 = fdiv fast float 1.000000e+00, %8012
  %8022 = fmul fast float %8021, %8014
  %8023 = fdiv fast float 1.000000e+00, %7894
  %8024 = fmul fast float %8022, %8023
  %8025 = call float @dx.op.unary.f32(i32 7, float %8024)  ; Saturate(value)
  %8026 = call float @dx.op.binary.f32(i32 35, float %8025, float 0.000000e+00)  ; FMax(a,b)
  %8027 = fmul fast float %8012, 3.125000e-02
  %8028 = call float @dx.op.unary.f32(i32 7, float %8027)  ; Saturate(value)
  %8029 = fmul fast float %8028, 2.000000e+00
  %8030 = fadd fast float %8029, -1.000000e+00
  %8031 = fcmp fast ogt float %8030, 0.000000e+00
  %8032 = fcmp fast olt float %8030, 0.000000e+00
  %8033 = zext i1 %8031 to i32
  %8034 = zext i1 %8032 to i32
  %8035 = sub nsw i32 %8033, %8034
  %8036 = sitofp i32 %8035 to float
  %8037 = fmul fast float %8036, %8030
  %8038 = fsub fast float 1.000000e+00, %8037
  %8039 = fmul fast float %8038, %8038
  %8040 = fmul fast float %8039, %8038
  %8041 = fsub fast float %8038, %8040
  %8042 = fmul fast float %8041, %8026
  %8043 = fsub fast float 1.000000e+00, %8040
  %8044 = fsub fast float %8043, %8042
  %8045 = fmul fast float %8036, 5.000000e-01
  %8046 = fmul fast float %8045, %8044
  %8047 = fsub fast float 5.000000e-01, %8046
  br label %8048

; <label>:8048                                    ; preds = %8020, %7896, %7883
  %8049 = phi float [ 1.000000e+00, %7883 ], [ %7962, %7896 ], [ %8047, %8020 ]
  %8050 = fcmp fast ogt float %7479, 0.000000e+00
  br i1 %8050, label %8051, label %8215, !dx.controlflow.hints !119

; <label>:8051                                    ; preds = %8048
  %8052 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %8053 = extractvalue %dx.types.CBufRet.f32 %8052, 1
  %8054 = fadd fast float %8053, %7368
  %8055 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %8056 = extractvalue %dx.types.CBufRet.f32 %8055, 2
  %8057 = extractvalue %dx.types.CBufRet.f32 %8055, 3
  %8058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %8059 = extractvalue %dx.types.CBufRet.f32 %8058, 1
  %8060 = call float @dx.op.binary.f32(i32 35, float %8054, float 0.000000e+00)  ; FMax(a,b)
  %8061 = fadd fast float %8060, 0x3F10000000000000
  %8062 = fcmp fast oeq float %8059, 0.000000e+00
  br i1 %8062, label %8063, label %8130

; <label>:8063                                    ; preds = %8051
  %8064 = extractvalue %dx.types.CBufRet.f32 %8055, 1
  %8065 = extractvalue %dx.types.CBufRet.f32 %8055, 0
  %8066 = fmul fast float %8065, %7375
  %8067 = fmul fast float %8064, %7376
  %8068 = fadd fast float %8066, 5.000000e-01
  %8069 = call float @dx.op.unary.f32(i32 27, float %8068)  ; Round_ni(value)
  %8070 = fadd fast float %8067, 5.000000e-01
  %8071 = call float @dx.op.unary.f32(i32 27, float %8070)  ; Round_ni(value)
  %8072 = fsub fast float %8068, %8069
  %8073 = fsub fast float %8070, %8071
  %8074 = fadd fast float %8069, -5.000000e-01
  %8075 = fadd fast float %8071, -5.000000e-01
  %8076 = fmul fast float %8072, 2.000000e+00
  %8077 = fsub fast float 3.000000e+00, %8076
  %8078 = fadd fast float %8076, 1.000000e+00
  %8079 = fsub fast float 2.000000e+00, %8072
  %8080 = bitcast float %8077 to i32
  %8081 = sub nsw i32 2129859010, %8080
  %8082 = bitcast i32 %8081 to float
  %8083 = fmul fast float %8082, %8079
  %8084 = fadd fast float %8083, -1.000000e+00
  %8085 = bitcast float %8078 to i32
  %8086 = sub nsw i32 2129859010, %8085
  %8087 = bitcast i32 %8086 to float
  %8088 = fmul fast float %8087, %8072
  %8089 = fadd fast float %8088, 1.000000e+00
  %8090 = fmul fast float %8073, 2.000000e+00
  %8091 = fsub fast float 3.000000e+00, %8090
  %8092 = fadd fast float %8090, 1.000000e+00
  %8093 = fsub fast float 2.000000e+00, %8073
  %8094 = bitcast float %8091 to i32
  %8095 = sub nsw i32 2129859010, %8094
  %8096 = bitcast i32 %8095 to float
  %8097 = fmul fast float %8096, %8093
  %8098 = fadd fast float %8097, -1.000000e+00
  %8099 = bitcast float %8092 to i32
  %8100 = sub nsw i32 2129859010, %8099
  %8101 = bitcast i32 %8100 to float
  %8102 = fmul fast float %8101, %8073
  %8103 = fadd fast float %8102, 1.000000e+00
  %8104 = fadd fast float %8084, %8074
  %8105 = fmul fast float %8104, %8056
  %8106 = fadd fast float %8098, %8075
  %8107 = fmul fast float %8106, %8057
  %8108 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %48, float %8105, float %8107, float undef, float undef, i32 0, i32 0, i32 undef, float %8061)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %8109 = extractvalue %dx.types.ResRet.f32 %8108, 0
  %8110 = fmul fast float %8109, %8077
  %8111 = fadd fast float %8089, %8074
  %8112 = fmul fast float %8111, %8056
  %8113 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %48, float %8112, float %8107, float undef, float undef, i32 0, i32 0, i32 undef, float %8061)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %8114 = extractvalue %dx.types.ResRet.f32 %8113, 0
  %8115 = fmul fast float %8114, %8078
  %8116 = fadd fast float %8103, %8075
  %8117 = fmul fast float %8116, %8057
  %8118 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %48, float %8105, float %8117, float undef, float undef, i32 0, i32 0, i32 undef, float %8061)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %8119 = extractvalue %dx.types.ResRet.f32 %8118, 0
  %8120 = fmul fast float %8119, %8077
  %8121 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %48, float %8112, float %8117, float undef, float undef, i32 0, i32 0, i32 undef, float %8061)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %8122 = extractvalue %dx.types.ResRet.f32 %8121, 0
  %8123 = fmul fast float %8122, %8078
  %8124 = fadd fast float %8123, %8120
  %8125 = fmul fast float %8124, %8092
  %8126 = fadd fast float %8115, %8110
  %8127 = fmul fast float %8126, %8091
  %8128 = fadd fast float %8127, %8125
  %8129 = fmul fast float %8128, 6.250000e-02
  br label %8215

; <label>:8130                                    ; preds = %8051
  %8131 = fmul fast float %242, 0x401921FB60000000
  %8132 = call float @dx.op.unary.f32(i32 13, float %8131)  ; Sin(value)
  %8133 = call float @dx.op.unary.f32(i32 12, float %8131)  ; Cos(value)
  %8134 = fsub fast float -0.000000e+00, %8132
  br label %8135

; <label>:8135                                    ; preds = %8184, %8130
  %8136 = phi float [ 0.000000e+00, %8130 ], [ %8179, %8184 ]
  %8137 = phi float [ 0.000000e+00, %8130 ], [ %8181, %8184 ]
  %8138 = phi i32 [ 0, %8130 ], [ %8185, %8184 ]
  %8139 = mul i32 %8138, 2
  %8140 = add i32 0, %8139
  %8141 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8140
  %8142 = load float, float* %8141, align 4
  %8143 = mul i32 %8138, 2
  %8144 = add i32 1, %8143
  %8145 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8144
  %8146 = load float, float* %8145, align 4
  %8147 = fmul fast float %8142, %8133
  %8148 = call float @dx.op.tertiary.f32(i32 46, float %8146, float %8134, float %8147)  ; FMad(a,b,c)
  %8149 = fmul fast float %8142, %8132
  %8150 = call float @dx.op.tertiary.f32(i32 46, float %8146, float %8133, float %8149)  ; FMad(a,b,c)
  %8151 = fmul fast float %8148, %8059
  %8152 = fmul fast float %8150, %8059
  %8153 = fadd fast float %8151, %7375
  %8154 = fadd fast float %8152, %7376
  %8155 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %47, float %8153, float %8154, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8156 = extractvalue %dx.types.ResRet.f32 %8155, 0
  %8157 = extractvalue %dx.types.ResRet.f32 %8155, 1
  %8158 = extractvalue %dx.types.ResRet.f32 %8155, 2
  %8159 = extractvalue %dx.types.ResRet.f32 %8155, 3
  %8160 = getelementptr inbounds [4 x float], [4 x float]* %103, i32 0, i32 0
  store float %8156, float* %8160, align 4
  %8161 = getelementptr inbounds [4 x float], [4 x float]* %103, i32 0, i32 1
  store float %8157, float* %8161, align 4
  %8162 = getelementptr inbounds [4 x float], [4 x float]* %103, i32 0, i32 2
  store float %8158, float* %8162, align 4
  %8163 = getelementptr inbounds [4 x float], [4 x float]* %103, i32 0, i32 3
  store float %8159, float* %8163, align 4
  %8164 = fsub fast float %8156, %8061
  %8165 = fcmp fast olt float %8164, 0.000000e+00
  %8166 = select i1 %8165, float 0.000000e+00, float 1.000000e+00
  %8167 = fadd fast float %8166, %8136
  %8168 = fmul fast float %8166, %8164
  %8169 = fadd fast float %8168, %8137
  br label %8170

; <label>:8170                                    ; preds = %8170, %8135
  %8171 = phi i32 [ 1, %8135 ], [ %8182, %8170 ]
  %8172 = phi float [ %8169, %8135 ], [ %8181, %8170 ]
  %8173 = phi float [ %8167, %8135 ], [ %8179, %8170 ]
  %8174 = getelementptr [4 x float], [4 x float]* %103, i32 0, i32 %8171
  %8175 = load float, float* %8174, align 4, !tbaa !91, !noalias !107
  %8176 = fsub fast float %8175, %8061
  %8177 = fcmp fast olt float %8176, 0.000000e+00
  %8178 = select i1 %8177, float 0.000000e+00, float 1.000000e+00
  %8179 = fadd fast float %8178, %8173
  %8180 = fmul fast float %8178, %8176
  %8181 = fadd fast float %8180, %8172
  %8182 = add nuw nsw i32 %8171, 1
  %8183 = icmp eq i32 %8182, 4
  br i1 %8183, label %8184, label %8170, !llvm.loop !117

; <label>:8184                                    ; preds = %8170
  %8185 = add nuw nsw i32 %8138, 1
  %8186 = icmp eq i32 %8185, 8
  br i1 %8186, label %8187, label %8135, !llvm.loop !118

; <label>:8187                                    ; preds = %8184
  %8188 = fdiv fast float 1.000000e+00, %8179
  %8189 = fmul fast float %8188, %8181
  %8190 = fdiv fast float 1.000000e+00, %8061
  %8191 = fmul fast float %8189, %8190
  %8192 = call float @dx.op.unary.f32(i32 7, float %8191)  ; Saturate(value)
  %8193 = call float @dx.op.binary.f32(i32 35, float %8192, float 0.000000e+00)  ; FMax(a,b)
  %8194 = fmul fast float %8179, 3.125000e-02
  %8195 = call float @dx.op.unary.f32(i32 7, float %8194)  ; Saturate(value)
  %8196 = fmul fast float %8195, 2.000000e+00
  %8197 = fadd fast float %8196, -1.000000e+00
  %8198 = fcmp fast ogt float %8197, 0.000000e+00
  %8199 = fcmp fast olt float %8197, 0.000000e+00
  %8200 = zext i1 %8198 to i32
  %8201 = zext i1 %8199 to i32
  %8202 = sub nsw i32 %8200, %8201
  %8203 = sitofp i32 %8202 to float
  %8204 = fmul fast float %8203, %8197
  %8205 = fsub fast float 1.000000e+00, %8204
  %8206 = fmul fast float %8205, %8205
  %8207 = fmul fast float %8206, %8205
  %8208 = fsub fast float %8205, %8207
  %8209 = fmul fast float %8208, %8193
  %8210 = fsub fast float 1.000000e+00, %8207
  %8211 = fsub fast float %8210, %8209
  %8212 = fmul fast float %8203, 5.000000e-01
  %8213 = fmul fast float %8212, %8211
  %8214 = fsub fast float 5.000000e-01, %8213
  br label %8215

; <label>:8215                                    ; preds = %8187, %8063, %8048
  %8216 = phi float [ 1.000000e+00, %8048 ], [ %8129, %8063 ], [ %8214, %8187 ]
  %8217 = fcmp fast ogt float %7478, 0.000000e+00
  br i1 %8217, label %8218, label %8382, !dx.controlflow.hints !120

; <label>:8218                                    ; preds = %8215
  %8219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %8220 = extractvalue %dx.types.CBufRet.f32 %8219, 0
  %8221 = fadd fast float %8220, %7368
  %8222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %8223 = extractvalue %dx.types.CBufRet.f32 %8222, 2
  %8224 = extractvalue %dx.types.CBufRet.f32 %8222, 3
  %8225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %8226 = extractvalue %dx.types.CBufRet.f32 %8225, 0
  %8227 = call float @dx.op.binary.f32(i32 35, float %8221, float 0.000000e+00)  ; FMax(a,b)
  %8228 = fadd fast float %8227, 0x3F10000000000000
  %8229 = fcmp fast oeq float %8226, 0.000000e+00
  br i1 %8229, label %8230, label %8297

; <label>:8230                                    ; preds = %8218
  %8231 = extractvalue %dx.types.CBufRet.f32 %8222, 1
  %8232 = extractvalue %dx.types.CBufRet.f32 %8222, 0
  %8233 = fmul fast float %8232, %7360
  %8234 = fmul fast float %8231, %7364
  %8235 = fadd fast float %8233, 5.000000e-01
  %8236 = call float @dx.op.unary.f32(i32 27, float %8235)  ; Round_ni(value)
  %8237 = fadd fast float %8234, 5.000000e-01
  %8238 = call float @dx.op.unary.f32(i32 27, float %8237)  ; Round_ni(value)
  %8239 = fsub fast float %8235, %8236
  %8240 = fsub fast float %8237, %8238
  %8241 = fadd fast float %8236, -5.000000e-01
  %8242 = fadd fast float %8238, -5.000000e-01
  %8243 = fmul fast float %8239, 2.000000e+00
  %8244 = fsub fast float 3.000000e+00, %8243
  %8245 = fadd fast float %8243, 1.000000e+00
  %8246 = fsub fast float 2.000000e+00, %8239
  %8247 = bitcast float %8244 to i32
  %8248 = sub nsw i32 2129859010, %8247
  %8249 = bitcast i32 %8248 to float
  %8250 = fmul fast float %8249, %8246
  %8251 = fadd fast float %8250, -1.000000e+00
  %8252 = bitcast float %8245 to i32
  %8253 = sub nsw i32 2129859010, %8252
  %8254 = bitcast i32 %8253 to float
  %8255 = fmul fast float %8254, %8239
  %8256 = fadd fast float %8255, 1.000000e+00
  %8257 = fmul fast float %8240, 2.000000e+00
  %8258 = fsub fast float 3.000000e+00, %8257
  %8259 = fadd fast float %8257, 1.000000e+00
  %8260 = fsub fast float 2.000000e+00, %8240
  %8261 = bitcast float %8258 to i32
  %8262 = sub nsw i32 2129859010, %8261
  %8263 = bitcast i32 %8262 to float
  %8264 = fmul fast float %8263, %8260
  %8265 = fadd fast float %8264, -1.000000e+00
  %8266 = bitcast float %8259 to i32
  %8267 = sub nsw i32 2129859010, %8266
  %8268 = bitcast i32 %8267 to float
  %8269 = fmul fast float %8268, %8240
  %8270 = fadd fast float %8269, 1.000000e+00
  %8271 = fadd fast float %8251, %8241
  %8272 = fmul fast float %8271, %8223
  %8273 = fadd fast float %8265, %8242
  %8274 = fmul fast float %8273, %8224
  %8275 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %48, float %8272, float %8274, float undef, float undef, i32 0, i32 0, i32 undef, float %8228)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %8276 = extractvalue %dx.types.ResRet.f32 %8275, 0
  %8277 = fmul fast float %8276, %8244
  %8278 = fadd fast float %8256, %8241
  %8279 = fmul fast float %8278, %8223
  %8280 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %48, float %8279, float %8274, float undef, float undef, i32 0, i32 0, i32 undef, float %8228)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %8281 = extractvalue %dx.types.ResRet.f32 %8280, 0
  %8282 = fmul fast float %8281, %8245
  %8283 = fadd fast float %8270, %8242
  %8284 = fmul fast float %8283, %8224
  %8285 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %48, float %8272, float %8284, float undef, float undef, i32 0, i32 0, i32 undef, float %8228)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %8286 = extractvalue %dx.types.ResRet.f32 %8285, 0
  %8287 = fmul fast float %8286, %8244
  %8288 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %48, float %8279, float %8284, float undef, float undef, i32 0, i32 0, i32 undef, float %8228)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %8289 = extractvalue %dx.types.ResRet.f32 %8288, 0
  %8290 = fmul fast float %8289, %8245
  %8291 = fadd fast float %8290, %8287
  %8292 = fmul fast float %8291, %8259
  %8293 = fadd fast float %8282, %8277
  %8294 = fmul fast float %8293, %8258
  %8295 = fadd fast float %8294, %8292
  %8296 = fmul fast float %8295, 6.250000e-02
  br label %8382

; <label>:8297                                    ; preds = %8218
  %8298 = fmul fast float %242, 0x401921FB60000000
  %8299 = call float @dx.op.unary.f32(i32 13, float %8298)  ; Sin(value)
  %8300 = call float @dx.op.unary.f32(i32 12, float %8298)  ; Cos(value)
  %8301 = fsub fast float -0.000000e+00, %8299
  br label %8302

; <label>:8302                                    ; preds = %8351, %8297
  %8303 = phi float [ 0.000000e+00, %8297 ], [ %8346, %8351 ]
  %8304 = phi float [ 0.000000e+00, %8297 ], [ %8348, %8351 ]
  %8305 = phi i32 [ 0, %8297 ], [ %8352, %8351 ]
  %8306 = mul i32 %8305, 2
  %8307 = add i32 0, %8306
  %8308 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8307
  %8309 = load float, float* %8308, align 4
  %8310 = mul i32 %8305, 2
  %8311 = add i32 1, %8310
  %8312 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8311
  %8313 = load float, float* %8312, align 4
  %8314 = fmul fast float %8309, %8300
  %8315 = call float @dx.op.tertiary.f32(i32 46, float %8313, float %8301, float %8314)  ; FMad(a,b,c)
  %8316 = fmul fast float %8309, %8299
  %8317 = call float @dx.op.tertiary.f32(i32 46, float %8313, float %8300, float %8316)  ; FMad(a,b,c)
  %8318 = fmul fast float %8315, %8226
  %8319 = fmul fast float %8317, %8226
  %8320 = fadd fast float %8318, %7360
  %8321 = fadd fast float %8319, %7364
  %8322 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %47, float %8320, float %8321, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8323 = extractvalue %dx.types.ResRet.f32 %8322, 0
  %8324 = extractvalue %dx.types.ResRet.f32 %8322, 1
  %8325 = extractvalue %dx.types.ResRet.f32 %8322, 2
  %8326 = extractvalue %dx.types.ResRet.f32 %8322, 3
  %8327 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 0
  store float %8323, float* %8327, align 4
  %8328 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 1
  store float %8324, float* %8328, align 4
  %8329 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 2
  store float %8325, float* %8329, align 4
  %8330 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 3
  store float %8326, float* %8330, align 4
  %8331 = fsub fast float %8323, %8228
  %8332 = fcmp fast olt float %8331, 0.000000e+00
  %8333 = select i1 %8332, float 0.000000e+00, float 1.000000e+00
  %8334 = fadd fast float %8333, %8303
  %8335 = fmul fast float %8333, %8331
  %8336 = fadd fast float %8335, %8304
  br label %8337

; <label>:8337                                    ; preds = %8337, %8302
  %8338 = phi i32 [ 1, %8302 ], [ %8349, %8337 ]
  %8339 = phi float [ %8336, %8302 ], [ %8348, %8337 ]
  %8340 = phi float [ %8334, %8302 ], [ %8346, %8337 ]
  %8341 = getelementptr [4 x float], [4 x float]* %102, i32 0, i32 %8338
  %8342 = load float, float* %8341, align 4, !tbaa !91, !noalias !107
  %8343 = fsub fast float %8342, %8228
  %8344 = fcmp fast olt float %8343, 0.000000e+00
  %8345 = select i1 %8344, float 0.000000e+00, float 1.000000e+00
  %8346 = fadd fast float %8345, %8340
  %8347 = fmul fast float %8345, %8343
  %8348 = fadd fast float %8347, %8339
  %8349 = add nuw nsw i32 %8338, 1
  %8350 = icmp eq i32 %8349, 4
  br i1 %8350, label %8351, label %8337, !llvm.loop !117

; <label>:8351                                    ; preds = %8337
  %8352 = add nuw nsw i32 %8305, 1
  %8353 = icmp eq i32 %8352, 8
  br i1 %8353, label %8354, label %8302, !llvm.loop !118

; <label>:8354                                    ; preds = %8351
  %8355 = fdiv fast float 1.000000e+00, %8346
  %8356 = fmul fast float %8355, %8348
  %8357 = fdiv fast float 1.000000e+00, %8228
  %8358 = fmul fast float %8356, %8357
  %8359 = call float @dx.op.unary.f32(i32 7, float %8358)  ; Saturate(value)
  %8360 = call float @dx.op.binary.f32(i32 35, float %8359, float 0.000000e+00)  ; FMax(a,b)
  %8361 = fmul fast float %8346, 3.125000e-02
  %8362 = call float @dx.op.unary.f32(i32 7, float %8361)  ; Saturate(value)
  %8363 = fmul fast float %8362, 2.000000e+00
  %8364 = fadd fast float %8363, -1.000000e+00
  %8365 = fcmp fast ogt float %8364, 0.000000e+00
  %8366 = fcmp fast olt float %8364, 0.000000e+00
  %8367 = zext i1 %8365 to i32
  %8368 = zext i1 %8366 to i32
  %8369 = sub nsw i32 %8367, %8368
  %8370 = sitofp i32 %8369 to float
  %8371 = fmul fast float %8370, %8364
  %8372 = fsub fast float 1.000000e+00, %8371
  %8373 = fmul fast float %8372, %8372
  %8374 = fmul fast float %8373, %8372
  %8375 = fsub fast float %8372, %8374
  %8376 = fmul fast float %8375, %8360
  %8377 = fsub fast float 1.000000e+00, %8374
  %8378 = fsub fast float %8377, %8376
  %8379 = fmul fast float %8370, 5.000000e-01
  %8380 = fmul fast float %8379, %8378
  %8381 = fsub fast float 5.000000e-01, %8380
  br label %8382

; <label>:8382                                    ; preds = %8354, %8230, %8215
  %8383 = phi float [ 1.000000e+00, %8215 ], [ %8296, %8230 ], [ %8381, %8354 ]
  %8384 = fsub fast float %8049, %7884
  %8385 = fmul fast float %8384, %7422
  %8386 = fadd fast float %8385, %7884
  %8387 = fsub fast float %8216, %8386
  %8388 = fmul fast float %8387, %7452
  %8389 = fadd fast float %8388, %8386
  %8390 = fsub fast float %8383, %8389
  %8391 = fmul fast float %8390, %7478
  %8392 = fadd fast float %8391, %8389
  %8393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %8394 = extractvalue %dx.types.CBufRet.f32 %8393, 2
  %8395 = fcmp fast ogt float %8394, 0.000000e+00
  br i1 %8395, label %8396, label %8436, !dx.controlflow.hints !121

; <label>:8396                                    ; preds = %8382
  %8397 = fcmp fast ugt float %8394, 0.000000e+00
  br i1 %8397, label %8398, label %8433

; <label>:8398                                    ; preds = %8396
  %8399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %8400 = extractvalue %dx.types.CBufRet.f32 %8399, 0
  %8401 = extractvalue %dx.types.CBufRet.f32 %8399, 1
  %8402 = extractvalue %dx.types.CBufRet.f32 %8399, 2
  %8403 = extractvalue %dx.types.CBufRet.f32 %8399, 3
  %8404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %8405 = extractvalue %dx.types.CBufRet.f32 %8404, 0
  %8406 = extractvalue %dx.types.CBufRet.f32 %8404, 1
  %8407 = extractvalue %dx.types.CBufRet.f32 %8404, 2
  %8408 = extractvalue %dx.types.CBufRet.f32 %8404, 3
  %8409 = extractvalue %dx.types.CBufRet.f32 %8393, 0
  %8410 = extractvalue %dx.types.CBufRet.f32 %8393, 1
  %8411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %8412 = extractvalue %dx.types.CBufRet.f32 %8411, 0
  %8413 = extractvalue %dx.types.CBufRet.f32 %8411, 1
  %8414 = extractvalue %dx.types.CBufRet.f32 %8411, 2
  %8415 = fadd fast float %8412, %7337
  %8416 = fadd fast float %8413, %7338
  %8417 = fadd fast float %8414, %7339
  %8418 = fmul fast float %8415, %8400
  %8419 = call float @dx.op.tertiary.f32(i32 46, float %8401, float %8416, float %8418)  ; FMad(a,b,c)
  %8420 = call float @dx.op.tertiary.f32(i32 46, float %8402, float %8417, float %8419)  ; FMad(a,b,c)
  %8421 = fadd fast float %8420, %8403
  %8422 = fmul fast float %8415, %8405
  %8423 = call float @dx.op.tertiary.f32(i32 46, float %8406, float %8416, float %8422)  ; FMad(a,b,c)
  %8424 = call float @dx.op.tertiary.f32(i32 46, float %8407, float %8417, float %8423)  ; FMad(a,b,c)
  %8425 = fadd fast float %8424, %8408
  %8426 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %43, float %8421, float %8425, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %8427 = extractvalue %dx.types.ResRet.f32 %8426, 0
  %8428 = fmul fast float %8427, %8410
  %8429 = fadd fast float %8428, %8409
  %8430 = call float @dx.op.unary.f32(i32 7, float %8429)  ; Saturate(value)
  %8431 = fmul fast float %8430, %8394
  %8432 = fsub fast float 1.000000e+00, %8431
  br label %8433

; <label>:8433                                    ; preds = %8398, %8396
  %8434 = phi float [ %8432, %8398 ], [ 1.000000e+00, %8396 ]
  %8435 = fmul fast float %8434, %8392
  br label %8436

; <label>:8436                                    ; preds = %8433, %8382, %7317
  %8437 = phi float [ 1.000000e+00, %7317 ], [ %8435, %8433 ], [ %8392, %8382 ]
  %8438 = call float @dx.op.binary.f32(i32 36, float %8437, float %8437)  ; FMin(a,b)
  %8439 = call float @dx.op.binary.f32(i32 36, float %8437, float %8438)  ; FMin(a,b)
  %8440 = fcmp fast ogt float %8439, 0.000000e+00
  br i1 %8440, label %8441, label %8607, !dx.controlflow.hints !122

; <label>:8441                                    ; preds = %8436
  %8442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %8443 = extractvalue %dx.types.CBufRet.f32 %8442, 0
  %8444 = extractvalue %dx.types.CBufRet.f32 %8442, 1
  %8445 = extractvalue %dx.types.CBufRet.f32 %8442, 2
  %8446 = extractvalue %dx.types.CBufRet.f32 %8442, 3
  %8447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %8448 = extractvalue %dx.types.CBufRet.f32 %8447, 0
  %8449 = extractvalue %dx.types.CBufRet.f32 %8447, 1
  %8450 = extractvalue %dx.types.CBufRet.f32 %8447, 2
  %8451 = extractvalue %dx.types.CBufRet.f32 %8447, 3
  %8452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %8453 = extractvalue %dx.types.CBufRet.f32 %8452, 0
  %8454 = extractvalue %dx.types.CBufRet.f32 %8452, 1
  %8455 = extractvalue %dx.types.CBufRet.f32 %8452, 2
  %8456 = extractvalue %dx.types.CBufRet.f32 %8452, 3
  %8457 = fmul fast float %8443, %7337
  %8458 = call float @dx.op.tertiary.f32(i32 46, float %7338, float %8444, float %8457)  ; FMad(a,b,c)
  %8459 = call float @dx.op.tertiary.f32(i32 46, float %7339, float %8445, float %8458)  ; FMad(a,b,c)
  %8460 = fadd fast float %8459, %8446
  %8461 = fmul fast float %8448, %7337
  %8462 = call float @dx.op.tertiary.f32(i32 46, float %7338, float %8449, float %8461)  ; FMad(a,b,c)
  %8463 = call float @dx.op.tertiary.f32(i32 46, float %7339, float %8450, float %8462)  ; FMad(a,b,c)
  %8464 = fadd fast float %8463, %8451
  %8465 = fmul fast float %8453, %7337
  %8466 = call float @dx.op.tertiary.f32(i32 46, float %7338, float %8454, float %8465)  ; FMad(a,b,c)
  %8467 = call float @dx.op.tertiary.f32(i32 46, float %7339, float %8455, float %8466)  ; FMad(a,b,c)
  %8468 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %8469 = extractvalue %dx.types.CBufRet.f32 %8468, 0
  %8470 = extractvalue %dx.types.CBufRet.f32 %8468, 1
  %8471 = extractvalue %dx.types.CBufRet.f32 %8468, 3
  %8472 = fmul fast float %8471, %8460
  %8473 = fmul fast float %8471, %8464
  %8474 = fadd fast float %8472, %8469
  %8475 = fadd fast float %8473, %8470
  %8476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %8477 = extractvalue %dx.types.CBufRet.f32 %8476, 0
  %8478 = extractvalue %dx.types.CBufRet.f32 %8476, 1
  %8479 = fsub fast float %8474, %8477
  %8480 = fsub fast float %8475, %8478
  %8481 = fcmp fast olt float %8479, 0.000000e+00
  %8482 = fcmp fast olt float %8480, 0.000000e+00
  %8483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %8484 = extractvalue %dx.types.CBufRet.f32 %8483, 0
  %8485 = extractvalue %dx.types.CBufRet.f32 %8483, 1
  %8486 = extractvalue %dx.types.CBufRet.f32 %8483, 2
  %8487 = extractvalue %dx.types.CBufRet.f32 %8483, 3
  %8488 = select i1 %8481, float %8484, float %8486
  %8489 = select i1 %8482, float %8485, float %8487
  %8490 = fmul fast float %8488, %8479
  %8491 = fmul fast float %8489, %8480
  %8492 = call float @dx.op.unary.f32(i32 6, float %8490)  ; FAbs(value)
  %8493 = call float @dx.op.unary.f32(i32 6, float %8491)  ; FAbs(value)
  %8494 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %8495 = extractvalue %dx.types.CBufRet.f32 %8494, 0
  %8496 = call float @dx.op.binary.f32(i32 35, float %8492, float %8493)  ; FMax(a,b)
  %8497 = fsub fast float %8495, %8496
  %8498 = call float @dx.op.unary.f32(i32 7, float %8497)  ; Saturate(value)
  %8499 = fcmp fast ogt float %8498, 0.000000e+00
  br i1 %8499, label %8500, label %8541, !dx.controlflow.hints !123

; <label>:8500                                    ; preds = %8441
  %8501 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %46, float %8474, float %8475, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8502 = extractvalue %dx.types.ResRet.f32 %8501, 1
  %8503 = fcmp fast ogt float %8502, 0.000000e+00
  br i1 %8503, label %8504, label %8536

; <label>:8504                                    ; preds = %8500
  %8505 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %46, float %8474, float %8475, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8506 = extractvalue %dx.types.ResRet.f32 %8505, 0
  %8507 = extractvalue %dx.types.ResRet.f32 %8505, 1
  %8508 = extractvalue %dx.types.ResRet.f32 %8505, 2
  %8509 = extractvalue %dx.types.ResRet.f32 %8505, 3
  %8510 = fsub fast float 1.000000e+00, %8456
  %8511 = fsub fast float %8510, %8467
  %8512 = fmul fast float %8511, 0x400921FB60000000
  %8513 = fadd fast float %8512, 0x3FF921FB60000000
  %8514 = call float @dx.op.unary.f32(i32 13, float %8513)  ; Sin(value)
  %8515 = fadd fast float %8514, -1.000000e+00
  %8516 = fmul fast float %8515, 0x3FD45F3060000000
  %8517 = fmul fast float %8511, 0x401921FB60000000
  %8518 = fadd fast float %8517, 0x400921FB60000000
  %8519 = call float @dx.op.unary.f32(i32 13, float %8518)  ; Sin(value)
  %8520 = fadd fast float %8519, 0x3E7777A5C0000000
  %8521 = fmul fast float %8520, 0x3FC45F3060000000
  %8522 = fmul fast float %8511, 0x4022D97C80000000
  %8523 = fadd fast float %8522, 0x4012D97C80000000
  %8524 = call float @dx.op.unary.f32(i32 13, float %8523)  ; Sin(value)
  %8525 = fadd fast float %8524, 1.000000e+00
  %8526 = fmul fast float %8525, 0x3FBB2995E0000000
  %8527 = fmul fast float %8511, 0x402921FB60000000
  %8528 = fadd fast float %8527, 0x401921FB60000000
  %8529 = call float @dx.op.unary.f32(i32 13, float %8528)  ; Sin(value)
  %8530 = fadd fast float %8529, 0xBE8777A5C0000000
  %8531 = fmul fast float %8530, 0x3FB45F3060000000
  %8532 = call float @dx.op.dot4.f32(i32 56, float %8506, float %8507, float %8508, float %8509, float %8516, float %8521, float %8526, float %8531)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %8533 = fmul fast float %8532, 0xBFF7154760000000
  %8534 = call float @dx.op.unary.f32(i32 21, float %8533)  ; Exp(value)
  %8535 = call float @dx.op.unary.f32(i32 7, float %8534)  ; Saturate(value)
  br label %8536

; <label>:8536                                    ; preds = %8504, %8500
  %8537 = phi float [ %8535, %8504 ], [ 1.000000e+00, %8500 ]
  %8538 = fadd fast float %8537, -1.000000e+00
  %8539 = fmul fast float %8538, %8498
  %8540 = fadd fast float %8539, 1.000000e+00
  br label %8541

; <label>:8541                                    ; preds = %8536, %8441
  %8542 = phi float [ %8540, %8536 ], [ 1.000000e+00, %8441 ]
  %8543 = fmul fast float %8542, %8437
  %8544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %8545 = extractvalue %dx.types.CBufRet.f32 %8544, 0
  %8546 = extractvalue %dx.types.CBufRet.f32 %8544, 1
  %8547 = extractvalue %dx.types.CBufRet.f32 %8544, 2
  %8548 = fadd fast float %8545, %170
  %8549 = fadd fast float %8546, %171
  %8550 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %8551 = extractvalue %dx.types.CBufRet.f32 %8550, 1
  %8552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %8553 = extractvalue %dx.types.CBufRet.f32 %8552, 0
  %8554 = extractvalue %dx.types.CBufRet.f32 %8552, 1
  %8555 = extractvalue %dx.types.CBufRet.f32 %8552, 2
  %8556 = fsub fast float -0.000000e+00, %8548
  %8557 = fsub fast float -0.000000e+00, %8549
  %8558 = fsub fast float -0.000000e+00, %172
  %8559 = fsub fast float %8558, %8547
  %8560 = fadd fast float %8559, %8551
  %8561 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8556, float %8557, float %8560)  ; Dot3(ax,ay,az,bx,by,bz)
  %8562 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8553, float %8554, float %8555)  ; Dot3(ax,ay,az,bx,by,bz)
  %8563 = fdiv fast float 1.000000e+00, %8562
  %8564 = fmul fast float %8563, %8561
  %8565 = fmul fast float %8553, %8564
  %8566 = fmul fast float %8554, %8564
  %8567 = fadd fast float %8565, %8548
  %8568 = fadd fast float %8566, %8549
  %8569 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %8570 = extractvalue %dx.types.CBufRet.f32 %8569, 0
  %8571 = extractvalue %dx.types.CBufRet.f32 %8569, 1
  %8572 = fsub fast float %8567, %8570
  %8573 = fsub fast float %8568, %8571
  %8574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %8575 = extractvalue %dx.types.CBufRet.f32 %8574, 2
  %8576 = extractvalue %dx.types.CBufRet.f32 %8574, 3
  %8577 = fmul fast float %8572, %8575
  %8578 = fmul fast float %8573, %8576
  %8579 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %8580 = extractvalue %dx.types.CBufRet.i32 %8579, 3
  %8581 = icmp eq i32 %8580, 0
  br i1 %8581, label %8587, label %8582

; <label>:8582                                    ; preds = %8541
  %8583 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %45, float %8577, float %8578, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8584 = extractvalue %dx.types.ResRet.f32 %8583, 0
  %8585 = extractvalue %dx.types.ResRet.f32 %8583, 1
  %8586 = extractvalue %dx.types.ResRet.f32 %8583, 2
  br label %8592

; <label>:8587                                    ; preds = %8541
  %8588 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %46, float %8577, float %8578, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8589 = extractvalue %dx.types.ResRet.f32 %8588, 0
  %8590 = extractvalue %dx.types.ResRet.f32 %8588, 1
  %8591 = extractvalue %dx.types.ResRet.f32 %8588, 2
  br label %8592

; <label>:8592                                    ; preds = %8587, %8582
  %8593 = phi float [ %8584, %8582 ], [ %8589, %8587 ]
  %8594 = phi float [ %8585, %8582 ], [ %8590, %8587 ]
  %8595 = phi float [ %8586, %8582 ], [ %8591, %8587 ]
  %8596 = extractvalue %dx.types.CBufRet.f32 %8550, 2
  %8597 = fmul fast float %8596, %8593
  %8598 = extractvalue %dx.types.CBufRet.f32 %8550, 0
  %8599 = fsub fast float %8564, %8598
  %8600 = fsub fast float %8599, %8597
  %8601 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8600)  ; FMax(a,b)
  %8602 = fmul fast float %8601, %8594
  %8603 = call float @dx.op.binary.f32(i32 36, float %8595, float %8602)  ; FMin(a,b)
  %8604 = fmul fast float %8603, 0xBFF7154760000000
  %8605 = call float @dx.op.unary.f32(i32 21, float %8604)  ; Exp(value)
  %8606 = fmul fast float %8543, %8605
  br label %8607

; <label>:8607                                    ; preds = %8592, %8436
  %8608 = phi float [ %8606, %8592 ], [ %8437, %8436 ]
  %8609 = call float @dx.op.binary.f32(i32 36, float %8608, float %8608)  ; FMin(a,b)
  %8610 = call float @dx.op.binary.f32(i32 36, float %8608, float %8609)  ; FMin(a,b)
  %8611 = fcmp fast ogt float %8610, 0.000000e+00
  br i1 %8611, label %8612, label %8783, !dx.controlflow.hints !124

; <label>:8612                                    ; preds = %8607
  %8613 = fmul fast float %8608, %7329
  %8614 = fmul fast float %8608, %7330
  %8615 = fmul fast float %8608, %7331
  %8616 = fsub fast float %7318, %6478
  %8617 = fsub fast float %7319, %6477
  %8618 = fsub fast float %7320, %6476
  %8619 = call float @dx.op.dot3.f32(i32 55, float %8616, float %8617, float %8618, float %8616, float %8617, float %8618)  ; Dot3(ax,ay,az,bx,by,bz)
  %8620 = call float @dx.op.unary.f32(i32 25, float %8619)  ; Rsqrt(value)
  %8621 = fmul fast float %8620, %8616
  %8622 = fmul fast float %8620, %8617
  %8623 = fmul fast float %8620, %8618
  %8624 = call float @dx.op.dot3.f32(i32 55, float %7318, float %7319, float %7320, float %6485, float %6486, float %6487)  ; Dot3(ax,ay,az,bx,by,bz)
  %8625 = call float @dx.op.dot3.f32(i32 55, float %6475, float %6474, float %6473, float %8621, float %8622, float %8623)  ; Dot3(ax,ay,az,bx,by,bz)
  %8626 = call float @dx.op.unary.f32(i32 7, float %8624)  ; Saturate(value)
  %8627 = fmul fast float %8626, %8626
  %8628 = fmul fast float %8627, %6517
  %8629 = call float @dx.op.unary.f32(i32 7, float %8628)  ; Saturate(value)
  %8630 = fmul fast float %8629, %8626
  %8631 = call float @dx.op.dot3.f32(i32 55, float %6485, float %6486, float %6487, float %8621, float %8622, float %8623)  ; Dot3(ax,ay,az,bx,by,bz)
  %8632 = fmul fast float %8631, %8631
  %8633 = call float @dx.op.unary.f32(i32 6, float %8624)  ; FAbs(value)
  %8634 = fsub fast float 1.000000e+00, %6510
  %8635 = fmul fast float %6492, %6492
  %8636 = fmul fast float %8635, %8634
  %8637 = fadd fast float %8636, %6510
  %8638 = bitcast float %8637 to i32
  %8639 = ashr i32 %8638, 1
  %8640 = add nsw i32 %8639, 532487669
  %8641 = bitcast i32 %8640 to float
  %8642 = fadd fast float %8641, %6492
  %8643 = fmul fast float %6510, %8632
  %8644 = fsub fast float 1.000000e+00, %8632
  %8645 = fadd fast float %8644, %8643
  %8646 = fmul fast float %8633, %8633
  %8647 = fmul fast float %8646, %8634
  %8648 = fadd fast float %8647, %6510
  %8649 = bitcast float %8648 to i32
  %8650 = ashr i32 %8649, 1
  %8651 = add nsw i32 %8650, 532487669
  %8652 = bitcast i32 %8651 to float
  %8653 = fadd fast float %8652, %8633
  %8654 = fmul fast float %8645, %8645
  %8655 = fmul fast float %8654, %8642
  %8656 = fmul fast float %8655, %8653
  %8657 = fdiv fast float 0x3FF0A00000000000, %8656
  %8658 = fmul fast float %8657, %6510
  %8659 = call float @dx.op.unary.f32(i32 6, float %8625)  ; FAbs(value)
  %8660 = fsub fast float 1.000000e+00, %8659
  %8661 = bitcast float %8660 to i32
  %8662 = sitofp i32 %8661 to float
  %8663 = fmul fast float %8662, 5.000000e+00
  %8664 = fadd fast float %8663, 0xC1EFBF8940000000
  %8665 = fptosi float %8664 to i32
  %8666 = bitcast i32 %8665 to float
  %8667 = fsub fast float 1.000000e+00, %6479
  %8668 = fsub fast float 1.000000e+00, %6480
  %8669 = fsub fast float 1.000000e+00, %6490
  %8670 = fmul fast float %8666, %8667
  %8671 = fmul fast float %8666, %8668
  %8672 = fmul fast float %8666, %8669
  %8673 = fadd fast float %8670, %6479
  %8674 = fadd fast float %8671, %6480
  %8675 = fadd fast float %8672, %6490
  br i1 %6765, label %8676, label %8699

; <label>:8676                                    ; preds = %8612
  %8677 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %46, float %4261, float %8659, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8678 = extractvalue %dx.types.ResRet.f32 %8677, 0
  %8679 = extractvalue %dx.types.ResRet.f32 %8677, 1
  %8680 = extractvalue %dx.types.ResRet.f32 %8677, 2
  %8681 = fadd fast float %8678, -5.000000e-01
  %8682 = fadd fast float %8679, -5.000000e-01
  %8683 = fadd fast float %8680, -5.000000e-01
  %8684 = fmul fast float %6479, 4.000000e+00
  %8685 = fmul fast float %8684, %8667
  %8686 = fmul fast float %8685, %8681
  %8687 = fmul fast float %6480, 4.000000e+00
  %8688 = fmul fast float %8687, %8668
  %8689 = fmul fast float %8688, %8682
  %8690 = fmul fast float %6490, 4.000000e+00
  %8691 = fmul fast float %8690, %8669
  %8692 = fmul fast float %8691, %8683
  %8693 = fadd fast float %8686, %8673
  %8694 = fadd fast float %8689, %8674
  %8695 = fadd fast float %8692, %8675
  %8696 = call float @dx.op.unary.f32(i32 7, float %8693)  ; Saturate(value)
  %8697 = call float @dx.op.unary.f32(i32 7, float %8694)  ; Saturate(value)
  %8698 = call float @dx.op.unary.f32(i32 7, float %8695)  ; Saturate(value)
  br label %8699

; <label>:8699                                    ; preds = %8676, %8612
  %8700 = phi float [ %8696, %8676 ], [ %8673, %8612 ]
  %8701 = phi float [ %8697, %8676 ], [ %8674, %8612 ]
  %8702 = phi float [ %8698, %8676 ], [ %8675, %8612 ]
  %8703 = fmul fast float %8624, 9.843750e-01
  %8704 = fadd fast float %8703, 7.812500e-03
  %8705 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %41, %dx.types.Handle %46, float %8704, float %6755, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8706 = extractvalue %dx.types.ResRet.f32 %8705, 2
  %8707 = extractvalue %dx.types.ResRet.f32 %8705, 3
  %8708 = fmul fast float %8706, %6479
  %8709 = fmul fast float %8706, %6480
  %8710 = fmul fast float %8706, %6490
  %8711 = fadd fast float %8708, %8707
  %8712 = fadd fast float %8709, %8707
  %8713 = fadd fast float %8710, %8707
  br i1 %6765, label %8714, label %8737

; <label>:8714                                    ; preds = %8699
  %8715 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %46, float %4261, float %8624, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8716 = extractvalue %dx.types.ResRet.f32 %8715, 0
  %8717 = extractvalue %dx.types.ResRet.f32 %8715, 1
  %8718 = extractvalue %dx.types.ResRet.f32 %8715, 2
  %8719 = fadd fast float %8716, -5.000000e-01
  %8720 = fadd fast float %8717, -5.000000e-01
  %8721 = fadd fast float %8718, -5.000000e-01
  %8722 = fmul fast float %6479, 4.000000e+00
  %8723 = fmul fast float %8722, %8667
  %8724 = fmul fast float %8723, %8719
  %8725 = fmul fast float %6480, 4.000000e+00
  %8726 = fmul fast float %8725, %8668
  %8727 = fmul fast float %8726, %8720
  %8728 = fmul fast float %6490, 4.000000e+00
  %8729 = fmul fast float %8728, %8669
  %8730 = fmul fast float %8729, %8721
  %8731 = fadd fast float %8724, %8711
  %8732 = fadd fast float %8727, %8712
  %8733 = fadd fast float %8730, %8713
  %8734 = call float @dx.op.unary.f32(i32 7, float %8731)  ; Saturate(value)
  %8735 = call float @dx.op.unary.f32(i32 7, float %8732)  ; Saturate(value)
  %8736 = call float @dx.op.unary.f32(i32 7, float %8733)  ; Saturate(value)
  br label %8737

; <label>:8737                                    ; preds = %8714, %8699
  %8738 = phi float [ %8734, %8714 ], [ %8711, %8699 ]
  %8739 = phi float [ %8735, %8714 ], [ %8712, %8699 ]
  %8740 = phi float [ %8736, %8714 ], [ %8713, %8699 ]
  %8741 = call float @dx.op.binary.f32(i32 35, float %8739, float %8740)  ; FMax(a,b)
  %8742 = call float @dx.op.binary.f32(i32 35, float %8738, float %8741)  ; FMax(a,b)
  %8743 = fsub fast float 1.000000e+00, %8742
  %8744 = fmul fast float %8700, %8658
  %8745 = fmul fast float %8701, %8658
  %8746 = fmul fast float %8702, %8658
  %8747 = fsub fast float 1.000000e+00, %8625
  %8748 = bitcast float %8747 to i32
  %8749 = sitofp i32 %8748 to float
  %8750 = fmul fast float %8749, 5.000000e+00
  %8751 = fadd fast float %8750, 0xC1EFBF8940000000
  %8752 = fptosi float %8751 to i32
  %8753 = bitcast i32 %8752 to float
  %8754 = fmul fast float %8753, %4262
  %8755 = fmul fast float %8743, %8754
  %8756 = fmul fast float %8755, %7279
  %8757 = fmul fast float %8755, %7280
  %8758 = fmul fast float %8755, %7281
  %8759 = fadd fast float %8756, %8744
  %8760 = fadd fast float %8757, %8745
  %8761 = fadd fast float %8758, %8746
  %8762 = fmul fast float %8630, %8613
  %8763 = fmul fast float %8762, %8743
  %8764 = fmul fast float %8630, %8614
  %8765 = fmul fast float %8764, %8743
  %8766 = fmul fast float %8630, %8615
  %8767 = fmul fast float %8766, %8743
  %8768 = fmul fast float %8762, %8759
  %8769 = fmul fast float %8764, %8760
  %8770 = fmul fast float %8766, %8761
  %8771 = fadd fast float %8763, %7263
  %8772 = fmul fast float %8771, %4258
  %8773 = fadd fast float %8765, %7264
  %8774 = fmul fast float %8773, %4258
  %8775 = fadd fast float %8767, %7265
  %8776 = fmul fast float %8775, %4258
  %8777 = fadd fast float %8768, %7306
  %8778 = fmul fast float %8777, %4258
  %8779 = fadd fast float %8769, %7309
  %8780 = fmul fast float %8779, %4258
  %8781 = fadd fast float %8770, %7312
  %8782 = fmul fast float %8781, %4258
  br label %8783

; <label>:8783                                    ; preds = %8737, %8607, %7259
  %8784 = phi float [ %7307, %7259 ], [ %7307, %8607 ], [ %8778, %8737 ]
  %8785 = phi float [ %7310, %7259 ], [ %7310, %8607 ], [ %8780, %8737 ]
  %8786 = phi float [ %7313, %7259 ], [ %7313, %8607 ], [ %8782, %8737 ]
  %8787 = phi float [ %7302, %7259 ], [ %7302, %8607 ], [ %8772, %8737 ]
  %8788 = phi float [ %7303, %7259 ], [ %7303, %8607 ], [ %8774, %8737 ]
  %8789 = phi float [ %7304, %7259 ], [ %7304, %8607 ], [ %8776, %8737 ]
  %8790 = fmul fast float %4258, %4258
  %8791 = fsub fast float 1.000000e+00, %8790
  %8792 = call float @dx.op.dot3.f32(i32 55, float %8791, float %8791, float %8791, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8793 = fsub fast float 1.000000e+00, %8792
  %8794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8795 = extractvalue %dx.types.CBufRet.f32 %8794, 0
  %8796 = fmul fast float %8795, %7285
  %8797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8798 = extractvalue %dx.types.CBufRet.f32 %8797, 3
  %8799 = fsub fast float 1.000000e+00, %4265
  %8800 = call float @dx.op.unary.f32(i32 7, float %8799)  ; Saturate(value)
  %8801 = fadd fast float %8789, %4264
  %8802 = fmul fast float %8801, %4265
  %8803 = fmul fast float %8800, %8798
  %8804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %8805 = extractvalue %dx.types.CBufRet.f32 %8804, 3
  %8806 = fmul fast float %8787, %6482
  %8807 = fmul fast float %8788, %6483
  %8808 = fmul fast float %8789, %6484
  %8809 = fcmp fast ogt float %99, %192
  %8810 = and i1 %8809, %4304
  %8811 = or i1 %4383, %8810
  %8812 = icmp eq i32 %4303, 2
  %8813 = fcmp fast ole float %99, %192
  %8814 = and i1 %8813, %8812
  %8815 = or i1 %8814, %8811
  br i1 %8810, label %8816, label %9073

; <label>:8816                                    ; preds = %8783
  %8817 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %8818 = extractvalue %dx.types.CBufRet.f32 %8817, 2
  %8819 = extractvalue %dx.types.CBufRet.f32 %8817, 3
  %8820 = fmul fast float %8818, %111
  %8821 = fmul fast float %8819, %112
  %8822 = call float @dx.op.unary.f32(i32 7, float %8820)  ; Saturate(value)
  %8823 = call float @dx.op.unary.f32(i32 7, float %8821)  ; Saturate(value)
  %8824 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %46, float %8822, float %8823, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8825 = extractvalue %dx.types.ResRet.f32 %8824, 0
  %8826 = extractvalue %dx.types.ResRet.f32 %8824, 1
  %8827 = extractvalue %dx.types.ResRet.f32 %8824, 2
  %8828 = extractvalue %dx.types.ResRet.f32 %8824, 3
  %8829 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %46, float %8822, float %8823, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8830 = extractvalue %dx.types.ResRet.f32 %8829, 0
  %8831 = extractvalue %dx.types.ResRet.f32 %8829, 1
  %8832 = extractvalue %dx.types.ResRet.f32 %8829, 2
  %8833 = extractvalue %dx.types.ResRet.f32 %8829, 3
  %8834 = call float @dx.op.binary.f32(i32 35, float %8826, float %8827)  ; FMax(a,b)
  %8835 = call float @dx.op.binary.f32(i32 35, float %8825, float %8834)  ; FMax(a,b)
  %8836 = call float @dx.op.binary.f32(i32 35, float %8835, float %8828)  ; FMax(a,b)
  %8837 = call float @dx.op.binary.f32(i32 36, float %8831, float %8832)  ; FMin(a,b)
  %8838 = call float @dx.op.binary.f32(i32 36, float %8830, float %8837)  ; FMin(a,b)
  %8839 = call float @dx.op.binary.f32(i32 36, float %8838, float %8833)  ; FMin(a,b)
  %8840 = fmul fast float %8836, 2.550000e+02
  %8841 = fadd fast float %8840, 0x3F70101020000000
  %8842 = fptoui float %8841 to i32
  %8843 = fmul fast float %8839, 2.550000e+02
  %8844 = fadd fast float %8843, 0x3F70101020000000
  %8845 = fptoui float %8844 to i32
  %8846 = icmp ult i32 %8842, %8845
  br i1 %8846, label %8847, label %9015

; <label>:8847                                    ; preds = %8816
  %8848 = fcmp fast ogt float %98, 9.843750e-01
  %8849 = fadd fast float %99, -4.000000e+00
  %8850 = select i1 %8848, float -4.000000e+00, float %8849
  %8851 = call float @dx.op.binary.f32(i32 35, float %8850, float 0.000000e+00)  ; FMax(a,b)
  %8852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8853 = extractvalue %dx.types.CBufRet.f32 %8852, 0
  %8854 = fadd fast float %8853, %8851
  %8855 = extractvalue %dx.types.CBufRet.f32 %8852, 2
  %8856 = fmul fast float %8854, %8855
  %8857 = call float @dx.op.unary.f32(i32 23, float %8856)  ; Log(value)
  %8858 = extractvalue %dx.types.CBufRet.f32 %8852, 3
  %8859 = fmul fast float %8858, %8857
  %8860 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8861 = extractvalue %dx.types.CBufRet.f32 %8860, 2
  %8862 = fmul fast float %8859, %8861
  %8863 = call float @dx.op.unary.f32(i32 7, float %8862)  ; Saturate(value)
  %8864 = uitofp i32 %8842 to float
  %8865 = uitofp i32 %8845 to float
  %8866 = fadd fast float %8864, 5.000000e-01
  %8867 = fadd fast float %8865, 5.000000e-01
  %8868 = fmul fast float %8861, %8866
  %8869 = fmul fast float %8861, %8867
  %8870 = fadd fast float %8868, 0x3F0FFB4800000000
  %8871 = fadd fast float %8869, 0xBF0FFB4800000000
  %8872 = call float @dx.op.binary.f32(i32 35, float %8863, float %8870)  ; FMax(a,b)
  %8873 = call float @dx.op.binary.f32(i32 36, float %8872, float %8871)  ; FMin(a,b)
  %8874 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8875 = extractvalue %dx.types.CBufRet.f32 %8874, 1
  %8876 = extractvalue %dx.types.CBufRet.f32 %8874, 2
  %8877 = extractvalue %dx.types.CBufRet.f32 %8874, 0
  %8878 = fmul fast float %8875, %8873
  %8879 = fadd fast float %8877, %8878
  %8880 = fadd fast float %8877, %8876
  %8881 = fsub fast float %8875, %8876
  %8882 = fadd fast float %8881, %8877
  %8883 = call float @dx.op.binary.f32(i32 35, float %8879, float %8880)  ; FMax(a,b)
  %8884 = call float @dx.op.binary.f32(i32 36, float %8883, float %8882)  ; FMin(a,b)
  %8885 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %44, float %8822, float %8823, float %8884, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8886 = extractvalue %dx.types.ResRet.f32 %8885, 0
  %8887 = extractvalue %dx.types.ResRet.f32 %8885, 1
  %8888 = extractvalue %dx.types.ResRet.f32 %8885, 2
  %8889 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8890 = extractvalue %dx.types.CBufRet.i32 %8889, 0
  %8891 = extractvalue %dx.types.CBufRet.i32 %8889, 1
  %8892 = uitofp i32 %8890 to float
  %8893 = uitofp i32 %8891 to float
  %8894 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8895 = extractvalue %dx.types.CBufRet.f32 %8894, 0
  %8896 = extractvalue %dx.types.CBufRet.f32 %8894, 1
  %8897 = fmul fast float %8892, %8822
  %8898 = fmul fast float %8893, %8823
  %8899 = fadd fast float %8897, -5.000000e-01
  %8900 = fadd fast float %8898, -5.000000e-01
  %8901 = call float @dx.op.unary.f32(i32 22, float %8899)  ; Frc(value)
  %8902 = call float @dx.op.unary.f32(i32 22, float %8900)  ; Frc(value)
  %8903 = fmul fast float %8901, %8901
  %8904 = fmul fast float %8903, %8901
  %8905 = fsub fast float 3.000000e+00, %8901
  %8906 = fmul fast float %8903, %8905
  %8907 = fmul fast float %8901, 3.000000e+00
  %8908 = fmul fast float %8904, 3.000000e+00
  %8909 = fmul fast float %8903, 6.000000e+00
  %8910 = fsub fast float %8908, %8909
  %8911 = fadd fast float %8910, 4.000000e+00
  %8912 = fmul fast float %8911, 0x3FC5555560000000
  %8913 = fmul fast float %8904, -3.000000e+00
  %8914 = fadd fast float %8903, %8901
  %8915 = fmul fast float %8914, 3.000000e+00
  %8916 = fadd fast float %8913, 1.000000e+00
  %8917 = fadd fast float %8916, %8915
  %8918 = fmul fast float %8904, 0x3FC5555560000000
  %8919 = fmul fast float %8902, %8902
  %8920 = fmul fast float %8919, %8902
  %8921 = fsub fast float 3.000000e+00, %8902
  %8922 = fmul fast float %8919, %8921
  %8923 = fmul fast float %8902, 3.000000e+00
  %8924 = fmul fast float %8920, 3.000000e+00
  %8925 = fmul fast float %8919, 6.000000e+00
  %8926 = fsub fast float %8924, %8925
  %8927 = fadd fast float %8926, 4.000000e+00
  %8928 = fmul fast float %8927, 0x3FC5555560000000
  %8929 = fmul fast float %8920, -3.000000e+00
  %8930 = fadd fast float %8919, %8902
  %8931 = fmul fast float %8930, 3.000000e+00
  %8932 = fadd fast float %8929, 1.000000e+00
  %8933 = fadd fast float %8932, %8931
  %8934 = fmul fast float %8920, 0x3FC5555560000000
  %8935 = fadd fast float %8901, 1.000000e+00
  %8936 = fsub fast float 1.000000e+00, %8907
  %8937 = fadd fast float %8936, %8906
  %8938 = fadd fast float %8937, %8911
  %8939 = fmul fast float %8938, 0x3FC5555560000000
  %8940 = fdiv fast float %8912, %8939
  %8941 = fsub fast float %8935, %8940
  %8942 = fsub fast float 1.000000e+00, %8901
  %8943 = fadd fast float %8917, %8904
  %8944 = fmul fast float %8943, 0x3FC5555560000000
  %8945 = fdiv fast float %8918, %8944
  %8946 = fadd fast float %8942, %8945
  %8947 = fadd fast float %8902, 1.000000e+00
  %8948 = fsub fast float 1.000000e+00, %8923
  %8949 = fadd fast float %8948, %8922
  %8950 = fadd fast float %8949, %8927
  %8951 = fmul fast float %8950, 0x3FC5555560000000
  %8952 = fdiv fast float %8928, %8951
  %8953 = fsub fast float %8947, %8952
  %8954 = fsub fast float 1.000000e+00, %8902
  %8955 = fadd fast float %8933, %8920
  %8956 = fmul fast float %8955, 0x3FC5555560000000
  %8957 = fdiv fast float %8934, %8956
  %8958 = fadd fast float %8957, %8954
  %8959 = fmul fast float %8941, %8895
  %8960 = fsub fast float %8822, %8959
  %8961 = fmul fast float %8946, %8895
  %8962 = fadd fast float %8961, %8822
  %8963 = fmul fast float %8958, %8896
  %8964 = fadd fast float %8963, %8823
  %8965 = fmul fast float %8953, %8896
  %8966 = fsub fast float %8823, %8965
  %8967 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %44, float %8960, float %8966, float %8884, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8968 = extractvalue %dx.types.ResRet.f32 %8967, 0
  %8969 = extractvalue %dx.types.ResRet.f32 %8967, 1
  %8970 = extractvalue %dx.types.ResRet.f32 %8967, 2
  %8971 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %44, float %8962, float %8966, float %8884, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8972 = extractvalue %dx.types.ResRet.f32 %8971, 0
  %8973 = extractvalue %dx.types.ResRet.f32 %8971, 1
  %8974 = extractvalue %dx.types.ResRet.f32 %8971, 2
  %8975 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %44, float %8960, float %8964, float %8884, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8976 = extractvalue %dx.types.ResRet.f32 %8975, 0
  %8977 = extractvalue %dx.types.ResRet.f32 %8975, 1
  %8978 = extractvalue %dx.types.ResRet.f32 %8975, 2
  %8979 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %44, float %8962, float %8964, float %8884, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8980 = extractvalue %dx.types.ResRet.f32 %8979, 0
  %8981 = extractvalue %dx.types.ResRet.f32 %8979, 1
  %8982 = extractvalue %dx.types.ResRet.f32 %8979, 2
  %8983 = fsub fast float %8976, %8968
  %8984 = fsub fast float %8977, %8969
  %8985 = fsub fast float %8978, %8970
  %8986 = fmul fast float %8983, %8956
  %8987 = fmul fast float %8984, %8956
  %8988 = fmul fast float %8985, %8956
  %8989 = fadd fast float %8986, %8968
  %8990 = fadd fast float %8987, %8969
  %8991 = fadd fast float %8988, %8970
  %8992 = fsub fast float %8980, %8972
  %8993 = fsub fast float %8981, %8973
  %8994 = fsub fast float %8982, %8974
  %8995 = fmul fast float %8992, %8956
  %8996 = fmul fast float %8993, %8956
  %8997 = fmul fast float %8994, %8956
  %8998 = fsub fast float %8972, %8989
  %8999 = fadd fast float %8998, %8995
  %9000 = fsub fast float %8973, %8990
  %9001 = fadd fast float %9000, %8996
  %9002 = fsub fast float %8974, %8991
  %9003 = fadd fast float %9002, %8997
  %9004 = fmul fast float %8999, %8944
  %9005 = fmul fast float %9001, %8944
  %9006 = fmul fast float %9003, %8944
  %9007 = fadd fast float %9004, %8989
  %9008 = fadd fast float %9005, %8990
  %9009 = fadd fast float %9006, %8991
  %9010 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9011 = extractvalue %dx.types.CBufRet.f32 %9010, 1
  %9012 = fmul fast float %9007, %9011
  %9013 = fmul fast float %9008, %9011
  %9014 = fmul fast float %9009, %9011
  br label %9015

; <label>:9015                                    ; preds = %8847, %8816
  %9016 = phi float [ %8886, %8847 ], [ 1.000000e+00, %8816 ]
  %9017 = phi float [ %8887, %8847 ], [ 1.000000e+00, %8816 ]
  %9018 = phi float [ %8888, %8847 ], [ 1.000000e+00, %8816 ]
  %9019 = phi float [ %9012, %8847 ], [ 0.000000e+00, %8816 ]
  %9020 = phi float [ %9013, %8847 ], [ 0.000000e+00, %8816 ]
  %9021 = phi float [ %9014, %8847 ], [ 0.000000e+00, %8816 ]
  %9022 = fmul fast float %9019, %8793
  %9023 = fmul fast float %9020, %8793
  %9024 = fmul fast float %9021, %8793
  %9025 = call float @dx.op.dot3.f32(i32 55, float %9016, float %9017, float %9018, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9026 = call float @dx.op.dot3.f32(i32 55, float %9022, float %9023, float %9024, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9027 = select i1 %231, float %9025, float %9016
  %9028 = select i1 %231, float %9025, float %9017
  %9029 = select i1 %231, float 1.000000e+00, float %9018
  %9030 = select i1 %231, float %9026, float %9022
  %9031 = select i1 %231, float 0.000000e+00, float %9023
  %9032 = select i1 %231, float 0.000000e+00, float %9024
  %9033 = fmul fast float %9027, %8806
  %9034 = fmul fast float %9028, %8807
  %9035 = fmul fast float %9029, %8808
  %9036 = fadd fast float %9033, %9030
  %9037 = fadd fast float %9034, %9031
  %9038 = fadd fast float %9032, %9035
  %9039 = fmul fast float %9027, %8784
  %9040 = fmul fast float %9028, %8785
  %9041 = fmul fast float %9029, %8786
  %9042 = fmul fast float %140, %8818
  %9043 = fmul fast float %142, %8819
  %9044 = fsub fast float 1.000000e+00, %9042
  %9045 = fsub fast float 1.000000e+00, %9043
  %9046 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9047 = extractvalue %dx.types.CBufRet.f32 %9046, 0
  %9048 = extractvalue %dx.types.CBufRet.f32 %9046, 1
  %9049 = extractvalue %dx.types.CBufRet.f32 %9046, 2
  %9050 = fmul fast float %9044, %9047
  %9051 = fmul fast float %9044, %9048
  %9052 = fmul fast float %9044, %9049
  %9053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9054 = extractvalue %dx.types.CBufRet.f32 %9053, 0
  %9055 = extractvalue %dx.types.CBufRet.f32 %9053, 1
  %9056 = extractvalue %dx.types.CBufRet.f32 %9053, 2
  %9057 = fmul fast float %9045, %9054
  %9058 = fmul fast float %9045, %9055
  %9059 = fmul fast float %9045, %9056
  %9060 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9061 = extractvalue %dx.types.CBufRet.f32 %9060, 0
  %9062 = extractvalue %dx.types.CBufRet.f32 %9060, 1
  %9063 = extractvalue %dx.types.CBufRet.f32 %9060, 2
  %9064 = fadd fast float %9057, %9061
  %9065 = fadd fast float %9064, %9050
  %9066 = fadd fast float %9058, %9062
  %9067 = fadd fast float %9066, %9051
  %9068 = fadd fast float %9059, %9063
  %9069 = fadd fast float %9068, %9052
  %9070 = fmul fast float %9065, %192
  %9071 = fmul fast float %9067, %192
  %9072 = fmul fast float %9069, %192
  br label %9073

; <label>:9073                                    ; preds = %9015, %8783
  %9074 = phi float [ %9070, %9015 ], [ %170, %8783 ]
  %9075 = phi float [ %9071, %9015 ], [ %171, %8783 ]
  %9076 = phi float [ %9072, %9015 ], [ %172, %8783 ]
  %9077 = phi float [ %192, %9015 ], [ %99, %8783 ]
  %9078 = phi float [ %9036, %9015 ], [ %8806, %8783 ]
  %9079 = phi float [ %9037, %9015 ], [ %8807, %8783 ]
  %9080 = phi float [ %9038, %9015 ], [ %8808, %8783 ]
  %9081 = phi float [ %9039, %9015 ], [ %8784, %8783 ]
  %9082 = phi float [ %9040, %9015 ], [ %8785, %8783 ]
  %9083 = phi float [ %9041, %9015 ], [ %8786, %8783 ]
  %9084 = phi float [ %9016, %9015 ], [ 1.000000e+00, %8783 ]
  br i1 %8815, label %10239, label %9085

; <label>:9085                                    ; preds = %9073
  %9086 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %9087 = extractvalue %dx.types.CBufRet.f32 %9086, 0
  %9088 = extractvalue %dx.types.CBufRet.f32 %9086, 1
  %9089 = extractvalue %dx.types.CBufRet.f32 %9086, 2
  %9090 = extractvalue %dx.types.CBufRet.f32 %9086, 3
  %9091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %9092 = extractvalue %dx.types.CBufRet.f32 %9091, 0
  %9093 = extractvalue %dx.types.CBufRet.f32 %9091, 1
  %9094 = extractvalue %dx.types.CBufRet.f32 %9091, 2
  %9095 = extractvalue %dx.types.CBufRet.f32 %9091, 3
  %9096 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %9097 = extractvalue %dx.types.CBufRet.f32 %9096, 0
  %9098 = extractvalue %dx.types.CBufRet.f32 %9096, 1
  %9099 = extractvalue %dx.types.CBufRet.f32 %9096, 2
  %9100 = extractvalue %dx.types.CBufRet.f32 %9096, 3
  %9101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %9102 = extractvalue %dx.types.CBufRet.f32 %9101, 0
  %9103 = extractvalue %dx.types.CBufRet.f32 %9101, 1
  %9104 = extractvalue %dx.types.CBufRet.f32 %9101, 2
  %9105 = extractvalue %dx.types.CBufRet.f32 %9101, 3
  %9106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %9107 = extractvalue %dx.types.CBufRet.f32 %9106, 3
  %9108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %9109 = extractvalue %dx.types.CBufRet.f32 %9108, 3
  %9110 = extractvalue %dx.types.CBufRet.f32 %9108, 0
  %9111 = extractvalue %dx.types.CBufRet.f32 %9108, 1
  %9112 = extractvalue %dx.types.CBufRet.f32 %9108, 2
  %9113 = fcmp fast olt float %9112, -5.000000e-01
  %9114 = call float @dx.op.dot3.f32(i32 55, float %9074, float %9075, float %9076, float %9074, float %9075, float %9076)  ; Dot3(ax,ay,az,bx,by,bz)
  %9115 = call float @dx.op.unary.f32(i32 25, float %9114)  ; Rsqrt(value)
  %9116 = fmul fast float %9115, %9114
  %9117 = fmul fast float %9115, %9074
  %9118 = fmul fast float %9115, %9075
  %9119 = fmul fast float %9115, %9076
  %9120 = fadd fast float %9116, %9090
  %9121 = call float @dx.op.dot3.f32(i32 55, float %9117, float %9118, float %9119, float %9087, float %9088, float %9089)  ; Dot3(ax,ay,az,bx,by,bz)
  %9122 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %9123 = extractvalue %dx.types.CBufRet.i32 %9122, 1
  %9124 = and i32 %9123, 1
  %9125 = icmp ne i32 %9124, 0
  %9126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %9127 = extractvalue %dx.types.CBufRet.f32 %9126, 2
  %9128 = fcmp fast ogt float %9127, 0.000000e+00
  %9129 = and i1 %9125, %9128
  br i1 %9129, label %9130, label %9536, !dx.controlflow.hints !125

; <label>:9130                                    ; preds = %9085
  %9131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %9132 = extractvalue %dx.types.CBufRet.f32 %9131, 3
  %9133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %9134 = extractvalue %dx.types.CBufRet.f32 %9133, 2
  %9135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9136 = extractvalue %dx.types.CBufRet.f32 %9135, 2
  %9137 = fsub fast float %9134, %9136
  %9138 = and i32 %9123, 2
  %9139 = extractvalue %dx.types.CBufRet.i32 %9122, 0
  %9140 = call i32 @dx.op.binary.i32(i32 40, i32 %9139, i32 3)  ; UMin(a,b)
  %9141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %9142 = extractvalue %dx.types.CBufRet.f32 %9141, 0
  %9143 = extractvalue %dx.types.CBufRet.f32 %9141, 1
  %9144 = extractvalue %dx.types.CBufRet.f32 %9135, 0
  %9145 = extractvalue %dx.types.CBufRet.f32 %9135, 1
  %9146 = fsub fast float %9142, %9144
  %9147 = fsub fast float %9143, %9145
  %9148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %9149 = extractvalue %dx.types.CBufRet.f32 %9148, 0
  %9150 = fcmp fast ogt float %9149, 0.000000e+00
  %9151 = fsub fast float -0.000000e+00, %9146
  %9152 = fsub fast float -0.000000e+00, %9147
  %9153 = call float @dx.op.dot2.f32(i32 54, float %9117, float %9118, float %9117, float %9118)  ; Dot2(ax,ay,bx,by)
  %9154 = call float @dx.op.dot2.f32(i32 54, float %9117, float %9118, float %9151, float %9152)  ; Dot2(ax,ay,bx,by)
  %9155 = fmul fast float %9154, 2.000000e+00
  %9156 = call float @dx.op.dot2.f32(i32 54, float %9151, float %9152, float %9151, float %9152)  ; Dot2(ax,ay,bx,by)
  %9157 = fmul fast float %9149, %9149
  %9158 = fsub fast float %9156, %9157
  %9159 = fmul fast float %9155, %9155
  %9160 = fmul fast float %9153, 4.000000e+00
  %9161 = fmul fast float %9160, %9158
  %9162 = fsub fast float %9159, %9161
  %9163 = fcmp fast ogt float %9162, 0.000000e+00
  br i1 %9163, label %9164, label %9179

; <label>:9164                                    ; preds = %9130
  %9165 = fcmp fast ogt float %9155, 0.000000e+00
  %9166 = call float @dx.op.unary.f32(i32 24, float %9162)  ; Sqrt(value)
  %9167 = fsub fast float -0.000000e+00, %9166
  %9168 = select i1 %9165, float %9166, float %9167
  %9169 = fadd fast float %9168, %9155
  %9170 = fmul float %9169, -5.000000e-01
  %9171 = fdiv fast float %9170, %9153
  %9172 = call float @dx.op.binary.f32(i32 35, float %9171, float 0.000000e+00)  ; FMax(a,b)
  %9173 = call float @dx.op.binary.f32(i32 36, float %9116, float %9172)  ; FMin(a,b)
  %9174 = fdiv fast float %9158, %9170
  %9175 = call float @dx.op.binary.f32(i32 35, float %9174, float 0.000000e+00)  ; FMax(a,b)
  %9176 = call float @dx.op.binary.f32(i32 36, float %9116, float %9175)  ; FMin(a,b)
  %9177 = call float @dx.op.binary.f32(i32 36, float %9173, float %9176)  ; FMin(a,b)
  %9178 = call float @dx.op.binary.f32(i32 35, float %9173, float %9176)  ; FMax(a,b)
  br label %9179

; <label>:9179                                    ; preds = %9164, %9130
  %9180 = phi float [ %9178, %9164 ], [ -1.000000e+00, %9130 ]
  %9181 = phi float [ %9177, %9164 ], [ -1.000000e+00, %9130 ]
  %9182 = phi i1 [ true, %9164 ], [ false, %9130 ]
  %9183 = and i1 %9150, %9182
  br i1 %9183, label %9184, label %9186

; <label>:9184                                    ; preds = %9179
  %9185 = fcmp fast oeq float %9181, %9180
  br i1 %9185, label %9489, label %9187

; <label>:9186                                    ; preds = %9179
  br i1 %9150, label %9489, label %9187

; <label>:9187                                    ; preds = %9186, %9184
  %9188 = phi float [ %9116, %9186 ], [ %9180, %9184 ]
  %9189 = phi float [ 0.000000e+00, %9186 ], [ %9181, %9184 ]
  %9190 = icmp ne i32 %9138, 0
  %9191 = fmul fast float %9188, %9119
  %9192 = fadd fast float %9191, %9132
  %9193 = fmul fast float %9192, %9188
  %9194 = select i1 %9190, float 0.000000e+00, float %9193
  %9195 = fcmp fast oeq float %9119, 0.000000e+00
  %9196 = fdiv fast float %9137, %9119
  %9197 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9196)  ; FMax(a,b)
  %9198 = select i1 %9195, float %9188, float %9197
  %9199 = call float @dx.op.binary.f32(i32 36, float %9188, float %9198)  ; FMin(a,b)
  %9200 = fcmp fast ogt float %9119, 0.000000e+00
  %9201 = fcmp fast olt float %9137, 0.000000e+00
  br i1 %9200, label %9202, label %9259

; <label>:9202                                    ; preds = %9187
  %9203 = icmp eq i32 %9138, 0
  br i1 %9201, label %9204, label %9248

; <label>:9204                                    ; preds = %9202
  %9205 = select i1 %9203, float %9188, float 0.000000e+00
  %9206 = fsub fast float -0.000000e+00, %9205
  %9207 = call float @dx.op.unary.f32(i32 6, float %9206)  ; FAbs(value)
  %9208 = fmul fast float %9205, %9119
  %9209 = fadd fast float %9208, %9132
  %9210 = fmul fast float %9207, %9209
  %9211 = fsub fast float %9194, %9210
  %9212 = fsub fast float %9188, %9207
  %9213 = select i1 %9203, float %9212, float 0.000000e+00
  %9214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9215 = extractvalue %dx.types.CBufRet.f32 %9214, 0
  %9216 = extractvalue %dx.types.CBufRet.f32 %9214, 1
  %9217 = extractvalue %dx.types.CBufRet.f32 %9214, 2
  %9218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9219 = extractvalue %dx.types.CBufRet.f32 %9218, 0
  %9220 = extractvalue %dx.types.CBufRet.f32 %9218, 1
  %9221 = extractvalue %dx.types.CBufRet.f32 %9218, 2
  %9222 = extractvalue %dx.types.CBufRet.f32 %9218, 3
  %9223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9224 = extractvalue %dx.types.CBufRet.f32 %9223, 3
  %9225 = call float @dx.op.binary.f32(i32 36, float %9211, float %9224)  ; FMin(a,b)
  %9226 = fmul fast float %9222, %9213
  %9227 = call float @dx.op.unary.f32(i32 7, float %9226)  ; Saturate(value)
  %9228 = fsub fast float %9219, %9215
  %9229 = fsub fast float %9220, %9216
  %9230 = fsub fast float %9221, %9217
  %9231 = fmul fast float %9227, %9228
  %9232 = fmul fast float %9227, %9229
  %9233 = fmul fast float %9227, %9230
  %9234 = fadd fast float %9231, %9215
  %9235 = fadd fast float %9232, %9216
  %9236 = fadd fast float %9233, %9217
  %9237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9238 = extractvalue %dx.types.CBufRet.f32 %9237, 0
  %9239 = extractvalue %dx.types.CBufRet.f32 %9237, 1
  %9240 = fadd fast float %9239, %9238
  %9241 = call float @dx.op.unary.f32(i32 7, float %9240)  ; Saturate(value)
  %9242 = extractvalue %dx.types.CBufRet.f32 %9237, 2
  %9243 = extractvalue %dx.types.CBufRet.f32 %9237, 3
  %9244 = fadd fast float %9243, %9242
  %9245 = call float @dx.op.unary.f32(i32 7, float %9244)  ; Saturate(value)
  %9246 = fmul fast float %9241, %9225
  %9247 = fmul fast float %9246, %9245
  br label %9489

; <label>:9248                                    ; preds = %9202
  br i1 %9203, label %9249, label %9270

; <label>:9249                                    ; preds = %9248
  %9250 = call float @dx.op.binary.f32(i32 36, float %9199, float %9189)  ; FMin(a,b)
  %9251 = fsub fast float %9199, %9250
  %9252 = fsub fast float %9251, %9188
  %9253 = call float @dx.op.unary.f32(i32 6, float %9252)  ; FAbs(value)
  %9254 = fadd fast float %9251, %9188
  %9255 = fmul fast float %9254, %9119
  %9256 = fadd fast float %9255, %9132
  %9257 = fmul fast float %9256, %9253
  %9258 = fsub fast float %9194, %9257
  br label %9270

; <label>:9259                                    ; preds = %9187
  br i1 %9201, label %9260, label %9270

; <label>:9260                                    ; preds = %9259
  %9261 = call float @dx.op.binary.f32(i32 35, float %9189, float %9199)  ; FMax(a,b)
  %9262 = icmp eq i32 %9138, 0
  %9263 = select i1 %9262, float %9199, float 0.000000e+00
  %9264 = fsub fast float -0.000000e+00, %9263
  %9265 = call float @dx.op.unary.f32(i32 6, float %9264)  ; FAbs(value)
  %9266 = fmul fast float %9263, %9119
  %9267 = fadd fast float %9266, %9132
  %9268 = fmul fast float %9265, %9267
  %9269 = fsub fast float %9194, %9268
  br label %9270

; <label>:9270                                    ; preds = %9260, %9259, %9249, %9248
  %9271 = phi float [ %9189, %9248 ], [ %9189, %9249 ], [ %9261, %9260 ], [ %9189, %9259 ]
  %9272 = phi float [ 0.000000e+00, %9248 ], [ %9253, %9249 ], [ %9265, %9260 ], [ 0.000000e+00, %9259 ]
  %9273 = phi float [ %9194, %9248 ], [ %9258, %9249 ], [ %9269, %9260 ], [ %9194, %9259 ]
  %9274 = phi float [ %9199, %9248 ], [ %9199, %9249 ], [ %9188, %9260 ], [ %9188, %9259 ]
  %9275 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 0
  store float -1.000000e+00, float* %9275, align 4, !tbaa !91, !noalias !126
  %9276 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 1
  store float -1.000000e+00, float* %9276, align 4, !tbaa !91, !noalias !126
  %9277 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 2
  store float -1.000000e+00, float* %9277, align 4, !tbaa !91, !noalias !126
  %9278 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 0
  store float -1.000000e+00, float* %9278, align 4, !tbaa !91, !noalias !126
  %9279 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 1
  store float -1.000000e+00, float* %9279, align 4, !tbaa !91, !noalias !126
  %9280 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 2
  store float -1.000000e+00, float* %9280, align 4, !tbaa !91, !noalias !126
  %9281 = icmp sgt i32 %9140, 0
  br i1 %9281, label %9282, label %9343

; <label>:9282                                    ; preds = %9270
  br label %9283

; <label>:9283                                    ; preds = %9332, %9282
  %9284 = phi i32 [ %9333, %9332 ], [ 0, %9282 ]
  %9285 = phi i32 [ %9334, %9332 ], [ 0, %9282 ]
  %9286 = add nuw i32 %9285, 171
  %9287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 %9286)  ; CBufferLoadLegacy(handle,regIndex)
  %9288 = extractvalue %dx.types.CBufRet.f32 %9287, 0
  %9289 = extractvalue %dx.types.CBufRet.f32 %9287, 1
  %9290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9291 = extractvalue %dx.types.CBufRet.f32 %9290, 0
  %9292 = extractvalue %dx.types.CBufRet.f32 %9290, 1
  %9293 = fsub fast float %9288, %9291
  %9294 = fsub fast float %9289, %9292
  %9295 = extractvalue %dx.types.CBufRet.f32 %9287, 2
  %9296 = fsub fast float -0.000000e+00, %9293
  %9297 = fsub fast float -0.000000e+00, %9294
  %9298 = call float @dx.op.dot2.f32(i32 54, float %9117, float %9118, float %9296, float %9297)  ; Dot2(ax,ay,bx,by)
  %9299 = fmul fast float %9298, 2.000000e+00
  %9300 = call float @dx.op.dot2.f32(i32 54, float %9296, float %9297, float %9296, float %9297)  ; Dot2(ax,ay,bx,by)
  %9301 = fmul fast float %9295, %9295
  %9302 = fsub fast float %9300, %9301
  %9303 = fmul fast float %9299, %9299
  %9304 = fmul fast float %9160, %9302
  %9305 = fsub fast float %9303, %9304
  %9306 = fcmp fast ogt float %9305, 0.000000e+00
  br i1 %9306, label %9307, label %9322

; <label>:9307                                    ; preds = %9283
  %9308 = fcmp fast ogt float %9299, 0.000000e+00
  %9309 = call float @dx.op.unary.f32(i32 24, float %9305)  ; Sqrt(value)
  %9310 = fsub fast float -0.000000e+00, %9309
  %9311 = select i1 %9308, float %9309, float %9310
  %9312 = fadd fast float %9311, %9299
  %9313 = fmul float %9312, -5.000000e-01
  %9314 = fdiv fast float %9313, %9153
  %9315 = call float @dx.op.binary.f32(i32 35, float %9314, float 0.000000e+00)  ; FMax(a,b)
  %9316 = call float @dx.op.binary.f32(i32 36, float %9188, float %9315)  ; FMin(a,b)
  %9317 = fdiv fast float %9302, %9313
  %9318 = call float @dx.op.binary.f32(i32 35, float %9317, float 0.000000e+00)  ; FMax(a,b)
  %9319 = call float @dx.op.binary.f32(i32 36, float %9188, float %9318)  ; FMin(a,b)
  %9320 = call float @dx.op.binary.f32(i32 36, float %9316, float %9319)  ; FMin(a,b)
  %9321 = call float @dx.op.binary.f32(i32 35, float %9316, float %9319)  ; FMax(a,b)
  br label %9322

; <label>:9322                                    ; preds = %9307, %9283
  %9323 = phi float [ %9321, %9307 ], [ -1.000000e+00, %9283 ]
  %9324 = phi float [ %9320, %9307 ], [ -1.000000e+00, %9283 ]
  %9325 = phi i1 [ true, %9307 ], [ false, %9283 ]
  br i1 %9325, label %9326, label %9332

; <label>:9326                                    ; preds = %9322
  %9327 = call float @dx.op.binary.f32(i32 35, float %9271, float %9324)  ; FMax(a,b)
  %9328 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 %9285
  store float %9327, float* %9328, align 4, !tbaa !91, !noalias !126
  %9329 = call float @dx.op.binary.f32(i32 35, float %9271, float %9323)  ; FMax(a,b)
  %9330 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 %9285
  store float %9329, float* %9330, align 4, !tbaa !91, !noalias !126
  %9331 = add nsw i32 %9284, 1
  br label %9332

; <label>:9332                                    ; preds = %9326, %9322
  %9333 = phi i32 [ %9331, %9326 ], [ %9284, %9322 ]
  %9334 = add nuw nsw i32 %9285, 1
  %9335 = icmp eq i32 %9334, %9140
  br i1 %9335, label %9336, label %9283

; <label>:9336                                    ; preds = %9332
  %9337 = load float, float* %9277, align 4, !tbaa !91, !alias.scope !142, !noalias !145
  %9338 = load float, float* %9276, align 4, !tbaa !91, !alias.scope !148, !noalias !149
  %9339 = load float, float* %9275, align 4, !tbaa !91, !alias.scope !150, !noalias !151
  %9340 = load float, float* %9280, align 4, !tbaa !91, !alias.scope !152, !noalias !155
  %9341 = load float, float* %9279, align 4, !tbaa !91, !alias.scope !158, !noalias !159
  %9342 = load float, float* %9278, align 4, !tbaa !91, !alias.scope !160, !noalias !161
  br label %9343

; <label>:9343                                    ; preds = %9336, %9270
  %9344 = phi float [ -1.000000e+00, %9270 ], [ %9342, %9336 ]
  %9345 = phi float [ -1.000000e+00, %9270 ], [ %9341, %9336 ]
  %9346 = phi float [ -1.000000e+00, %9270 ], [ %9340, %9336 ]
  %9347 = phi float [ -1.000000e+00, %9270 ], [ %9339, %9336 ]
  %9348 = phi float [ -1.000000e+00, %9270 ], [ %9338, %9336 ]
  %9349 = phi float [ -1.000000e+00, %9270 ], [ %9337, %9336 ]
  %9350 = phi i32 [ 0, %9270 ], [ %9333, %9336 ]
  %9351 = call float @dx.op.binary.f32(i32 36, float %9348, float %9349)  ; FMin(a,b)
  %9352 = call float @dx.op.binary.f32(i32 36, float %9347, float %9351)  ; FMin(a,b)
  %9353 = call float @dx.op.binary.f32(i32 35, float %9347, float %9348)  ; FMax(a,b)
  %9354 = call float @dx.op.binary.f32(i32 36, float %9353, float %9349)  ; FMin(a,b)
  %9355 = call float @dx.op.binary.f32(i32 36, float %9347, float %9348)  ; FMin(a,b)
  %9356 = call float @dx.op.binary.f32(i32 35, float %9355, float %9354)  ; FMax(a,b)
  %9357 = call float @dx.op.binary.f32(i32 35, float %9348, float %9349)  ; FMax(a,b)
  %9358 = call float @dx.op.binary.f32(i32 35, float %9347, float %9357)  ; FMax(a,b)
  store float %9352, float* %9275, align 4, !tbaa !91, !alias.scope !150, !noalias !151
  store float %9356, float* %9276, align 4, !tbaa !91, !alias.scope !148, !noalias !149
  store float %9358, float* %9277, align 4, !tbaa !91, !alias.scope !142, !noalias !145
  %9359 = call float @dx.op.binary.f32(i32 36, float %9345, float %9346)  ; FMin(a,b)
  %9360 = call float @dx.op.binary.f32(i32 36, float %9344, float %9359)  ; FMin(a,b)
  %9361 = call float @dx.op.binary.f32(i32 35, float %9344, float %9345)  ; FMax(a,b)
  %9362 = call float @dx.op.binary.f32(i32 36, float %9361, float %9346)  ; FMin(a,b)
  %9363 = call float @dx.op.binary.f32(i32 36, float %9344, float %9345)  ; FMin(a,b)
  %9364 = call float @dx.op.binary.f32(i32 35, float %9363, float %9362)  ; FMax(a,b)
  %9365 = call float @dx.op.binary.f32(i32 35, float %9345, float %9346)  ; FMax(a,b)
  %9366 = call float @dx.op.binary.f32(i32 35, float %9344, float %9365)  ; FMax(a,b)
  store float %9360, float* %9278, align 4, !tbaa !91, !alias.scope !160, !noalias !161
  store float %9364, float* %9279, align 4, !tbaa !91, !alias.scope !158, !noalias !159
  store float %9366, float* %9280, align 4, !tbaa !91, !alias.scope !152, !noalias !155
  %9367 = sub nsw i32 3, %9350
  %9368 = icmp sgt i32 %9367, 2
  br i1 %9368, label %9369, label %9407

; <label>:9369                                    ; preds = %9343
  %9370 = icmp eq i32 %9138, 0
  %9371 = fsub fast float %9188, %9272
  %9372 = select i1 %9370, float %9371, float %9272
  %9373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9374 = extractvalue %dx.types.CBufRet.f32 %9373, 0
  %9375 = extractvalue %dx.types.CBufRet.f32 %9373, 1
  %9376 = extractvalue %dx.types.CBufRet.f32 %9373, 2
  %9377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9378 = extractvalue %dx.types.CBufRet.f32 %9377, 0
  %9379 = extractvalue %dx.types.CBufRet.f32 %9377, 1
  %9380 = extractvalue %dx.types.CBufRet.f32 %9377, 2
  %9381 = extractvalue %dx.types.CBufRet.f32 %9377, 3
  %9382 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9383 = extractvalue %dx.types.CBufRet.f32 %9382, 3
  %9384 = call float @dx.op.binary.f32(i32 36, float %9273, float %9383)  ; FMin(a,b)
  %9385 = fmul fast float %9381, %9372
  %9386 = call float @dx.op.unary.f32(i32 7, float %9385)  ; Saturate(value)
  %9387 = fsub fast float %9378, %9374
  %9388 = fsub fast float %9379, %9375
  %9389 = fsub fast float %9380, %9376
  %9390 = fmul fast float %9386, %9387
  %9391 = fmul fast float %9386, %9388
  %9392 = fmul fast float %9386, %9389
  %9393 = fadd fast float %9390, %9374
  %9394 = fadd fast float %9391, %9375
  %9395 = fadd fast float %9392, %9376
  %9396 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9397 = extractvalue %dx.types.CBufRet.f32 %9396, 0
  %9398 = extractvalue %dx.types.CBufRet.f32 %9396, 1
  %9399 = fadd fast float %9398, %9397
  %9400 = call float @dx.op.unary.f32(i32 7, float %9399)  ; Saturate(value)
  %9401 = extractvalue %dx.types.CBufRet.f32 %9396, 2
  %9402 = extractvalue %dx.types.CBufRet.f32 %9396, 3
  %9403 = fadd fast float %9402, %9401
  %9404 = call float @dx.op.unary.f32(i32 7, float %9403)  ; Saturate(value)
  %9405 = fmul fast float %9400, %9384
  %9406 = fmul fast float %9405, %9404
  br label %9489

; <label>:9407                                    ; preds = %9343
  %9408 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 %9367
  %9409 = load float, float* %9408, align 4, !tbaa !91, !noalias !126
  %9410 = fcmp fast olt float %9409, %9274
  %9411 = icmp sgt i32 %9350, 0
  %9412 = and i1 %9411, %9410
  br i1 %9412, label %9413, label %9450

; <label>:9413                                    ; preds = %9407
  br label %9414

; <label>:9414                                    ; preds = %9443, %9413
  %9415 = phi float [ %9444, %9443 ], [ %9272, %9413 ]
  %9416 = phi float [ %9445, %9443 ], [ %9273, %9413 ]
  %9417 = phi float [ %9425, %9443 ], [ %9409, %9413 ]
  %9418 = phi i32 [ %9422, %9443 ], [ %9367, %9413 ]
  %9419 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 %9418
  %9420 = load float, float* %9419, align 4, !tbaa !91, !noalias !126
  %9421 = icmp slt i32 %9418, 2
  %9422 = add nsw i32 %9418, 1
  %9423 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 %9422
  %9424 = load float, float* %9423, align 4, !tbaa !91, !noalias !126
  %9425 = select i1 %9421, float %9424, float %9188
  %9426 = call float @dx.op.binary.f32(i32 36, float %9425, float %9420)  ; FMin(a,b)
  %9427 = call float @dx.op.binary.f32(i32 36, float %9274, float %9426)  ; FMin(a,b)
  %9428 = icmp eq i32 %9138, 0
  %9429 = fadd fast float %9427, %9417
  %9430 = fmul fast float %9429, %9119
  %9431 = fadd fast float %9430, %9132
  br i1 %9428, label %9437, label %9432

; <label>:9432                                    ; preds = %9414
  %9433 = fsub fast float %9427, %9417
  %9434 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9433)  ; FMax(a,b)
  %9435 = fmul fast float %9434, %9431
  %9436 = fadd fast float %9435, %9416
  br label %9443

; <label>:9437                                    ; preds = %9414
  %9438 = fsub fast float %9417, %9427
  %9439 = call float @dx.op.unary.f32(i32 6, float %9438)  ; FAbs(value)
  %9440 = fadd fast float %9439, %9415
  %9441 = fmul fast float %9439, %9431
  %9442 = fsub fast float %9416, %9441
  br label %9443

; <label>:9443                                    ; preds = %9437, %9432
  %9444 = phi float [ %9434, %9432 ], [ %9440, %9437 ]
  %9445 = phi float [ %9436, %9432 ], [ %9442, %9437 ]
  %9446 = fcmp fast olt float %9425, %9274
  %9447 = icmp slt i32 %9422, 3
  %9448 = and i1 %9447, %9446
  br i1 %9448, label %9414, label %9449

; <label>:9449                                    ; preds = %9443
  br label %9450

; <label>:9450                                    ; preds = %9449, %9407
  %9451 = phi float [ %9272, %9407 ], [ %9444, %9449 ]
  %9452 = phi float [ %9273, %9407 ], [ %9445, %9449 ]
  %9453 = fsub fast float %9188, %9451
  %9454 = select i1 %9190, float %9451, float %9453
  %9455 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9456 = extractvalue %dx.types.CBufRet.f32 %9455, 0
  %9457 = extractvalue %dx.types.CBufRet.f32 %9455, 1
  %9458 = extractvalue %dx.types.CBufRet.f32 %9455, 2
  %9459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9460 = extractvalue %dx.types.CBufRet.f32 %9459, 0
  %9461 = extractvalue %dx.types.CBufRet.f32 %9459, 1
  %9462 = extractvalue %dx.types.CBufRet.f32 %9459, 2
  %9463 = extractvalue %dx.types.CBufRet.f32 %9459, 3
  %9464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9465 = extractvalue %dx.types.CBufRet.f32 %9464, 3
  %9466 = call float @dx.op.binary.f32(i32 36, float %9452, float %9465)  ; FMin(a,b)
  %9467 = fmul fast float %9463, %9454
  %9468 = call float @dx.op.unary.f32(i32 7, float %9467)  ; Saturate(value)
  %9469 = fsub fast float %9460, %9456
  %9470 = fsub fast float %9461, %9457
  %9471 = fsub fast float %9462, %9458
  %9472 = fmul fast float %9468, %9469
  %9473 = fmul fast float %9468, %9470
  %9474 = fmul fast float %9468, %9471
  %9475 = fadd fast float %9472, %9456
  %9476 = fadd fast float %9473, %9457
  %9477 = fadd fast float %9474, %9458
  %9478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9479 = extractvalue %dx.types.CBufRet.f32 %9478, 0
  %9480 = extractvalue %dx.types.CBufRet.f32 %9478, 1
  %9481 = fadd fast float %9480, %9479
  %9482 = call float @dx.op.unary.f32(i32 7, float %9481)  ; Saturate(value)
  %9483 = extractvalue %dx.types.CBufRet.f32 %9478, 2
  %9484 = extractvalue %dx.types.CBufRet.f32 %9478, 3
  %9485 = fadd fast float %9484, %9483
  %9486 = call float @dx.op.unary.f32(i32 7, float %9485)  ; Saturate(value)
  %9487 = fmul fast float %9482, %9466
  %9488 = fmul fast float %9487, %9486
  br label %9489

; <label>:9489                                    ; preds = %9450, %9369, %9204, %9186, %9184
  %9490 = phi float [ %9213, %9204 ], [ %9372, %9369 ], [ %9454, %9450 ], [ 0.000000e+00, %9184 ], [ 0.000000e+00, %9186 ]
  %9491 = phi float [ %9247, %9204 ], [ %9406, %9369 ], [ %9488, %9450 ], [ 0.000000e+00, %9184 ], [ 0.000000e+00, %9186 ]
  %9492 = phi float [ %9234, %9204 ], [ %9393, %9369 ], [ %9475, %9450 ], [ 0.000000e+00, %9184 ], [ 0.000000e+00, %9186 ]
  %9493 = phi float [ %9235, %9204 ], [ %9394, %9369 ], [ %9476, %9450 ], [ 0.000000e+00, %9184 ], [ 0.000000e+00, %9186 ]
  %9494 = phi float [ %9236, %9204 ], [ %9395, %9369 ], [ %9477, %9450 ], [ 0.000000e+00, %9184 ], [ 0.000000e+00, %9186 ]
  %9495 = fmul fast float %9127, %9491
  %9496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9497 = extractvalue %dx.types.CBufRet.f32 %9496, 2
  %9498 = fsub fast float %9134, %9497
  %9499 = fcmp fast olt float %9495, -2.000000e+01
  %9500 = call float @dx.op.unary.f32(i32 21, float %9495)  ; Exp(value)
  %9501 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9502 = extractvalue %dx.types.CBufRet.f32 %9501, 2
  %9503 = extractvalue %dx.types.CBufRet.f32 %9501, 3
  %9504 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %9505 = extractvalue %dx.types.CBufRet.f32 %9504, 2
  %9506 = fmul fast float %9503, %9498
  %9507 = call float @dx.op.unary.f32(i32 7, float %9506)  ; Saturate(value)
  %9508 = fsub fast float 1.000000e+00, %9507
  %9509 = fmul fast float %9119, 5.000000e-01
  %9510 = fadd fast float %9509, 5.000000e-01
  %9511 = call float @dx.op.unary.f32(i32 7, float %9510)  ; Saturate(value)
  %9512 = fsub fast float 1.000000e+00, %9511
  %9513 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9508)  ; FMax(a,b)
  %9514 = fdiv fast float %9512, %9513
  %9515 = fsub fast float %9498, %9076
  %9516 = call float @dx.op.unary.f32(i32 6, float %9515)  ; FAbs(value)
  %9517 = fmul fast float %9516, %9502
  %9518 = call float @dx.op.unary.f32(i32 7, float %9514)  ; Saturate(value)
  %9519 = fsub fast float 1.000000e+00, %9517
  %9520 = fmul fast float %9519, %9518
  %9521 = fadd fast float %9520, %9517
  %9522 = fmul fast float %9505, %9498
  %9523 = call float @dx.op.unary.f32(i32 7, float %9522)  ; Saturate(value)
  %9524 = fsub fast float 1.000000e+00, %9521
  %9525 = fmul fast float %9524, %9523
  %9526 = fadd fast float %9525, %9521
  %9527 = call float @dx.op.unary.f32(i32 7, float %9526)  ; Saturate(value)
  %9528 = fadd fast float %9500, -1.000000e+00
  %9529 = select i1 %9499, float -1.000000e+00, float %9528
  %9530 = fmul fast float %9527, %9529
  %9531 = fadd fast float %9530, 1.000000e+00
  %9532 = fsub fast float -0.000000e+00, %9530
  %9533 = fmul fast float %9492, %9532
  %9534 = fmul fast float %9493, %9532
  %9535 = fmul fast float %9494, %9532
  br label %9536

; <label>:9536                                    ; preds = %9489, %9085
  %9537 = phi float [ %9490, %9489 ], [ 0.000000e+00, %9085 ]
  %9538 = phi float [ %9531, %9489 ], [ 1.000000e+00, %9085 ]
  %9539 = phi float [ %9533, %9489 ], [ 0.000000e+00, %9085 ]
  %9540 = phi float [ %9534, %9489 ], [ 0.000000e+00, %9085 ]
  %9541 = phi float [ %9535, %9489 ], [ 0.000000e+00, %9085 ]
  %9542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9543 = extractvalue %dx.types.CBufRet.f32 %9542, 1
  %9544 = fsub fast float 1.000000e+00, %9538
  %9545 = fmul fast float %9544, %9120
  %9546 = fmul fast float %9545, %9543
  %9547 = fsub fast float %9120, %9546
  br i1 %9113, label %9548, label %9577, !dx.controlflow.hints !162

; <label>:9548                                    ; preds = %9536
  %9549 = fmul fast float %9121, %9110
  %9550 = fadd fast float %9549, %9111
  %9551 = call float @dx.op.unary.f32(i32 7, float %9550)  ; Saturate(value)
  %9552 = fmul fast float %9092, %9547
  %9553 = fsub fast float -0.000000e+00, %9552
  %9554 = fmul fast float %9093, %9547
  %9555 = fsub fast float -0.000000e+00, %9554
  %9556 = call float @dx.op.unary.f32(i32 21, float %9553)  ; Exp(value)
  %9557 = call float @dx.op.unary.f32(i32 21, float %9555)  ; Exp(value)
  %9558 = call float @dx.op.binary.f32(i32 35, float %9100, float %9556)  ; FMax(a,b)
  %9559 = call float @dx.op.binary.f32(i32 35, float %9100, float %9557)  ; FMax(a,b)
  %9560 = fsub fast float %9559, %9558
  %9561 = fmul fast float %9560, %9551
  %9562 = fadd fast float %9561, %9558
  %9563 = call float @dx.op.unary.f32(i32 7, float %9562)  ; Saturate(value)
  %9564 = fsub fast float %9097, %9102
  %9565 = fsub fast float %9098, %9103
  %9566 = fsub fast float %9099, %9104
  %9567 = fmul fast float %9551, %9564
  %9568 = fmul fast float %9551, %9565
  %9569 = fmul fast float %9551, %9566
  %9570 = fadd fast float %9567, %9102
  %9571 = fadd fast float %9568, %9103
  %9572 = fadd fast float %9569, %9104
  %9573 = fsub fast float 1.000000e+00, %9563
  %9574 = fmul fast float %9573, %9570
  %9575 = fmul fast float %9573, %9571
  %9576 = fmul fast float %9573, %9572
  br label %9636

; <label>:9577                                    ; preds = %9536
  %9578 = fmul fast float %9547, %9109
  %9579 = call float @dx.op.unary.f32(i32 7, float %9578)  ; Saturate(value)
  %9580 = fsub fast float 2.000000e+00, %9579
  %9581 = fmul fast float %9579, 9.921875e-01
  %9582 = fmul fast float %9581, %9580
  %9583 = fadd fast float %9582, 3.906250e-03
  %9584 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %46, float %9583, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9585 = extractvalue %dx.types.ResRet.f32 %9584, 0
  %9586 = fsub fast float %9579, %9585
  %9587 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9586)  ; FMax(a,b)
  %9588 = fmul fast float %9095, %9076
  %9589 = call float @dx.op.unary.f32(i32 6, float %9588)  ; FAbs(value)
  %9590 = fcmp fast ogt float %9589, 0x3EB0C6F7A0000000
  br i1 %9590, label %9591, label %9597, !dx.controlflow.hints !163

; <label>:9591                                    ; preds = %9577
  %9592 = fmul fast float %9588, 0xBFF7154760000000
  %9593 = call float @dx.op.unary.f32(i32 21, float %9592)  ; Exp(value)
  %9594 = fsub fast float 1.000000e+00, %9593
  %9595 = fdiv fast float %9594, %9588
  %9596 = fmul fast float %9595, %9105
  br label %9597

; <label>:9597                                    ; preds = %9591, %9577
  %9598 = phi float [ %9596, %9591 ], [ %9105, %9577 ]
  %9599 = fadd fast float %9598, %9107
  %9600 = fmul fast float %9599, %9587
  %9601 = fmul fast float %9092, %9600
  %9602 = fsub fast float -0.000000e+00, %9601
  %9603 = fmul fast float %9093, %9600
  %9604 = fsub fast float -0.000000e+00, %9603
  %9605 = fmul fast float %9094, %9600
  %9606 = fsub fast float -0.000000e+00, %9605
  %9607 = call float @dx.op.unary.f32(i32 21, float %9602)  ; Exp(value)
  %9608 = call float @dx.op.unary.f32(i32 21, float %9604)  ; Exp(value)
  %9609 = call float @dx.op.unary.f32(i32 21, float %9606)  ; Exp(value)
  %9610 = fmul fast float %9121, %9121
  %9611 = fadd fast float %9610, 1.000000e+00
  %9612 = fmul fast float %9611, 0x3FAE8EC8A0000000
  %9613 = fmul fast float %9612, %9102
  %9614 = fmul fast float %9612, %9103
  %9615 = fmul fast float %9612, %9104
  %9616 = fmul fast float %9121, %9100
  %9617 = fsub fast float 1.000000e+00, %9616
  %9618 = fmul fast float %9100, %9100
  %9619 = fsub fast float 1.000000e+00, %9618
  %9620 = fmul fast float %9619, 0x3FB45F3060000000
  %9621 = fmul fast float %9617, %9617
  %9622 = fdiv fast float 1.000000e+00, %9621
  %9623 = fmul fast float %9620, %9622
  %9624 = fmul fast float %9623, %9097
  %9625 = fmul fast float %9623, %9098
  %9626 = fmul fast float %9623, %9099
  %9627 = fadd fast float %9624, %9613
  %9628 = fadd fast float %9625, %9614
  %9629 = fadd fast float %9626, %9615
  %9630 = fsub fast float 1.000000e+00, %9607
  %9631 = fsub fast float 1.000000e+00, %9608
  %9632 = fsub fast float 1.000000e+00, %9609
  %9633 = fmul fast float %9627, %9630
  %9634 = fmul fast float %9628, %9631
  %9635 = fmul fast float %9629, %9632
  br label %9636

; <label>:9636                                    ; preds = %9597, %9548
  %9637 = phi float [ %9574, %9548 ], [ %9633, %9597 ]
  %9638 = phi float [ %9575, %9548 ], [ %9634, %9597 ]
  %9639 = phi float [ %9576, %9548 ], [ %9635, %9597 ]
  %9640 = phi float [ %9563, %9548 ], [ %9607, %9597 ]
  %9641 = phi float [ %9563, %9548 ], [ %9608, %9597 ]
  %9642 = phi float [ %9563, %9548 ], [ %9609, %9597 ]
  br i1 %9129, label %9643, label %9841, !dx.controlflow.hints !164

; <label>:9643                                    ; preds = %9636
  %9644 = extractvalue %dx.types.CBufRet.f32 %9542, 0
  %9645 = fmul fast float %9644, %9544
  %9646 = fsub fast float %9539, %9637
  %9647 = fsub fast float %9540, %9638
  %9648 = fsub fast float %9541, %9639
  %9649 = fmul fast float %9645, %9646
  %9650 = fmul fast float %9645, %9647
  %9651 = fmul fast float %9645, %9648
  %9652 = fadd fast float %9649, %9637
  %9653 = fadd fast float %9650, %9638
  %9654 = fadd fast float %9651, %9639
  %9655 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9640)  ; FMax(a,b)
  %9656 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9641)  ; FMax(a,b)
  %9657 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9642)  ; FMax(a,b)
  %9658 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9538)  ; FMax(a,b)
  %9659 = call float @dx.op.binary.f32(i32 35, float %9537, float %9547)  ; FMax(a,b)
  %9660 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9659)  ; FMax(a,b)
  %9661 = fdiv fast float %9537, %9660
  %9662 = call float @dx.op.unary.f32(i32 7, float %9661)  ; Saturate(value)
  %9663 = fdiv fast float %9547, %9660
  %9664 = call float @dx.op.unary.f32(i32 7, float %9663)  ; Saturate(value)
  %9665 = fcmp fast une float %9658, 1.000000e+00
  br i1 %9665, label %9666, label %9679, !dx.controlflow.hints !165

; <label>:9666                                    ; preds = %9643
  %9667 = call float @dx.op.unary.f32(i32 23, float %9658)  ; Log(value)
  %9668 = fmul fast float %9667, 0x3FE62E4300000000
  %9669 = fmul fast float %9539, %9668
  %9670 = fsub fast float -0.000000e+00, %9669
  %9671 = fmul fast float %9540, %9668
  %9672 = fsub fast float -0.000000e+00, %9671
  %9673 = fmul fast float %9541, %9668
  %9674 = fsub fast float -0.000000e+00, %9673
  %9675 = fsub fast float 1.000000e+00, %9658
  %9676 = fdiv fast float %9670, %9675
  %9677 = fdiv fast float %9672, %9675
  %9678 = fdiv fast float %9674, %9675
  br label %9679

; <label>:9679                                    ; preds = %9666, %9643
  %9680 = phi float [ %9676, %9666 ], [ %9539, %9643 ]
  %9681 = phi float [ %9677, %9666 ], [ %9540, %9643 ]
  %9682 = phi float [ %9678, %9666 ], [ %9541, %9643 ]
  %9683 = phi float [ %9668, %9666 ], [ 0.000000e+00, %9643 ]
  %9684 = fcmp fast une float %9655, 1.000000e+00
  br i1 %9684, label %9685, label %9692, !dx.controlflow.hints !166

; <label>:9685                                    ; preds = %9679
  %9686 = call float @dx.op.unary.f32(i32 23, float %9655)  ; Log(value)
  %9687 = fmul fast float %9686, 0x3FE62E4300000000
  %9688 = fmul fast float %9652, %9687
  %9689 = fsub fast float -0.000000e+00, %9688
  %9690 = fsub fast float 1.000000e+00, %9655
  %9691 = fdiv fast float %9689, %9690
  br label %9692

; <label>:9692                                    ; preds = %9685, %9679
  %9693 = phi float [ %9691, %9685 ], [ %9652, %9679 ]
  %9694 = phi float [ %9687, %9685 ], [ 0.000000e+00, %9679 ]
  %9695 = fcmp fast une float %9656, 1.000000e+00
  br i1 %9695, label %9696, label %9703, !dx.controlflow.hints !166

; <label>:9696                                    ; preds = %9692
  %9697 = call float @dx.op.unary.f32(i32 23, float %9656)  ; Log(value)
  %9698 = fmul fast float %9697, 0x3FE62E4300000000
  %9699 = fmul fast float %9653, %9698
  %9700 = fsub fast float -0.000000e+00, %9699
  %9701 = fsub fast float 1.000000e+00, %9656
  %9702 = fdiv fast float %9700, %9701
  br label %9703

; <label>:9703                                    ; preds = %9696, %9692
  %9704 = phi float [ %9702, %9696 ], [ %9653, %9692 ]
  %9705 = phi float [ %9698, %9696 ], [ 0.000000e+00, %9692 ]
  %9706 = fcmp fast une float %9657, 1.000000e+00
  br i1 %9706, label %9707, label %9714, !dx.controlflow.hints !166

; <label>:9707                                    ; preds = %9703
  %9708 = call float @dx.op.unary.f32(i32 23, float %9657)  ; Log(value)
  %9709 = fmul fast float %9708, 0x3FE62E4300000000
  %9710 = fmul fast float %9654, %9709
  %9711 = fsub fast float -0.000000e+00, %9710
  %9712 = fsub fast float 1.000000e+00, %9657
  %9713 = fdiv fast float %9711, %9712
  br label %9714

; <label>:9714                                    ; preds = %9707, %9703
  %9715 = phi float [ %9713, %9707 ], [ %9654, %9703 ]
  %9716 = phi float [ %9709, %9707 ], [ 0.000000e+00, %9703 ]
  %9717 = fmul fast float %9680, %9664
  %9718 = fmul fast float %9681, %9664
  %9719 = fmul fast float %9682, %9664
  %9720 = fmul fast float %9683, %9664
  %9721 = fmul fast float %9693, %9662
  %9722 = fmul fast float %9704, %9662
  %9723 = fmul fast float %9715, %9662
  %9724 = fmul fast float %9694, %9662
  %9725 = fmul fast float %9705, %9662
  %9726 = fmul fast float %9716, %9662
  %9727 = fadd fast float %9721, %9717
  %9728 = fadd fast float %9722, %9718
  %9729 = fadd fast float %9723, %9719
  %9730 = fadd fast float %9724, %9720
  %9731 = fadd fast float %9725, %9720
  %9732 = fadd fast float %9726, %9720
  %9733 = fcmp fast une float %9730, 0.000000e+00
  br i1 %9733, label %9734, label %9741, !dx.controlflow.hints !167

; <label>:9734                                    ; preds = %9714
  %9735 = fmul fast float %9730, 0x3FF7154760000000
  %9736 = call float @dx.op.unary.f32(i32 21, float %9735)  ; Exp(value)
  %9737 = fsub fast float 1.000000e+00, %9736
  %9738 = fmul fast float %9727, %9737
  %9739 = fsub fast float -0.000000e+00, %9738
  %9740 = fdiv fast float %9739, %9730
  br label %9741

; <label>:9741                                    ; preds = %9734, %9714
  %9742 = phi float [ %9736, %9734 ], [ 1.000000e+00, %9714 ]
  %9743 = phi float [ %9740, %9734 ], [ %9727, %9714 ]
  %9744 = fcmp fast une float %9731, 0.000000e+00
  br i1 %9744, label %9745, label %9752, !dx.controlflow.hints !167

; <label>:9745                                    ; preds = %9741
  %9746 = fmul fast float %9731, 0x3FF7154760000000
  %9747 = call float @dx.op.unary.f32(i32 21, float %9746)  ; Exp(value)
  %9748 = fsub fast float 1.000000e+00, %9747
  %9749 = fmul fast float %9728, %9748
  %9750 = fsub fast float -0.000000e+00, %9749
  %9751 = fdiv fast float %9750, %9731
  br label %9752

; <label>:9752                                    ; preds = %9745, %9741
  %9753 = phi float [ %9747, %9745 ], [ 1.000000e+00, %9741 ]
  %9754 = phi float [ %9751, %9745 ], [ %9728, %9741 ]
  %9755 = fcmp fast une float %9732, 0.000000e+00
  br i1 %9755, label %9756, label %9763, !dx.controlflow.hints !167

; <label>:9756                                    ; preds = %9752
  %9757 = fmul fast float %9732, 0x3FF7154760000000
  %9758 = call float @dx.op.unary.f32(i32 21, float %9757)  ; Exp(value)
  %9759 = fsub fast float 1.000000e+00, %9758
  %9760 = fmul fast float %9729, %9759
  %9761 = fsub fast float -0.000000e+00, %9760
  %9762 = fdiv fast float %9761, %9732
  br label %9763

; <label>:9763                                    ; preds = %9756, %9752
  %9764 = phi float [ %9758, %9756 ], [ 1.000000e+00, %9752 ]
  %9765 = phi float [ %9762, %9756 ], [ %9729, %9752 ]
  %9766 = fcmp fast ogt float %9662, %9664
  br i1 %9766, label %9767, label %9787

; <label>:9767                                    ; preds = %9763
  %9768 = fsub fast float 1.000000e+00, %9664
  %9769 = fmul fast float %9680, %9768
  %9770 = fmul fast float %9681, %9768
  %9771 = fmul fast float %9682, %9768
  %9772 = fmul fast float %9683, %9768
  %9773 = fcmp fast une float %9772, 0.000000e+00
  br i1 %9773, label %9774, label %9825, !dx.controlflow.hints !168

; <label>:9774                                    ; preds = %9767
  %9775 = fmul fast float %9772, 0x3FF7154760000000
  %9776 = call float @dx.op.unary.f32(i32 21, float %9775)  ; Exp(value)
  %9777 = fsub fast float 1.000000e+00, %9776
  %9778 = fmul fast float %9769, %9777
  %9779 = fsub fast float -0.000000e+00, %9778
  %9780 = fmul fast float %9770, %9777
  %9781 = fsub fast float -0.000000e+00, %9780
  %9782 = fmul fast float %9771, %9777
  %9783 = fsub fast float -0.000000e+00, %9782
  %9784 = fdiv fast float %9779, %9772
  %9785 = fdiv fast float %9781, %9772
  %9786 = fdiv fast float %9783, %9772
  br label %9825

; <label>:9787                                    ; preds = %9763
  %9788 = fsub fast float 1.000000e+00, %9662
  %9789 = fmul fast float %9693, %9788
  %9790 = fmul fast float %9704, %9788
  %9791 = fmul fast float %9715, %9788
  %9792 = fmul fast float %9694, %9788
  %9793 = fmul fast float %9705, %9788
  %9794 = fmul fast float %9716, %9788
  %9795 = fcmp fast une float %9792, 0.000000e+00
  br i1 %9795, label %9796, label %9803, !dx.controlflow.hints !167

; <label>:9796                                    ; preds = %9787
  %9797 = fmul fast float %9792, 0x3FF7154760000000
  %9798 = call float @dx.op.unary.f32(i32 21, float %9797)  ; Exp(value)
  %9799 = fsub fast float 1.000000e+00, %9798
  %9800 = fmul fast float %9789, %9799
  %9801 = fsub fast float -0.000000e+00, %9800
  %9802 = fdiv fast float %9801, %9792
  br label %9803

; <label>:9803                                    ; preds = %9796, %9787
  %9804 = phi float [ %9802, %9796 ], [ %9789, %9787 ]
  %9805 = phi float [ %9798, %9796 ], [ 1.000000e+00, %9787 ]
  %9806 = fcmp fast une float %9793, 0.000000e+00
  br i1 %9806, label %9807, label %9814, !dx.controlflow.hints !167

; <label>:9807                                    ; preds = %9803
  %9808 = fmul fast float %9793, 0x3FF7154760000000
  %9809 = call float @dx.op.unary.f32(i32 21, float %9808)  ; Exp(value)
  %9810 = fsub fast float 1.000000e+00, %9809
  %9811 = fmul fast float %9790, %9810
  %9812 = fsub fast float -0.000000e+00, %9811
  %9813 = fdiv fast float %9812, %9793
  br label %9814

; <label>:9814                                    ; preds = %9807, %9803
  %9815 = phi float [ %9813, %9807 ], [ %9790, %9803 ]
  %9816 = phi float [ %9809, %9807 ], [ 1.000000e+00, %9803 ]
  %9817 = fcmp fast une float %9794, 0.000000e+00
  br i1 %9817, label %9818, label %9825, !dx.controlflow.hints !167

; <label>:9818                                    ; preds = %9814
  %9819 = fmul fast float %9794, 0x3FF7154760000000
  %9820 = call float @dx.op.unary.f32(i32 21, float %9819)  ; Exp(value)
  %9821 = fsub fast float 1.000000e+00, %9820
  %9822 = fmul fast float %9791, %9821
  %9823 = fsub fast float -0.000000e+00, %9822
  %9824 = fdiv fast float %9823, %9794
  br label %9825

; <label>:9825                                    ; preds = %9818, %9814, %9774, %9767
  %9826 = phi float [ %9824, %9818 ], [ %9786, %9774 ], [ %9771, %9767 ], [ %9791, %9814 ]
  %9827 = phi float [ %9815, %9818 ], [ %9785, %9774 ], [ %9770, %9767 ], [ %9815, %9814 ]
  %9828 = phi float [ %9804, %9818 ], [ %9784, %9774 ], [ %9769, %9767 ], [ %9804, %9814 ]
  %9829 = phi float [ %9820, %9818 ], [ %9776, %9774 ], [ 1.000000e+00, %9767 ], [ 1.000000e+00, %9814 ]
  %9830 = phi float [ %9816, %9818 ], [ %9776, %9774 ], [ 1.000000e+00, %9767 ], [ %9816, %9814 ]
  %9831 = phi float [ %9805, %9818 ], [ %9776, %9774 ], [ 1.000000e+00, %9767 ], [ %9805, %9814 ]
  %9832 = fmul fast float %9831, %9743
  %9833 = fmul fast float %9830, %9754
  %9834 = fmul fast float %9829, %9765
  %9835 = fadd fast float %9832, %9828
  %9836 = fadd fast float %9833, %9827
  %9837 = fadd fast float %9834, %9826
  %9838 = fmul fast float %9831, %9742
  %9839 = fmul fast float %9830, %9753
  %9840 = fmul fast float %9829, %9764
  br label %9841

; <label>:9841                                    ; preds = %9825, %9636
  %9842 = phi float [ %9840, %9825 ], [ %9642, %9636 ]
  %9843 = phi float [ %9839, %9825 ], [ %9641, %9636 ]
  %9844 = phi float [ %9838, %9825 ], [ %9640, %9636 ]
  %9845 = phi float [ %9837, %9825 ], [ %9639, %9636 ]
  %9846 = phi float [ %9836, %9825 ], [ %9638, %9636 ]
  %9847 = phi float [ %9835, %9825 ], [ %9637, %9636 ]
  %9848 = fmul fast float %9847, %8793
  %9849 = fmul fast float %9846, %8793
  %9850 = fmul fast float %9845, %8793
  %9851 = fmul fast float %9844, %9084
  %9852 = call float @dx.op.dot3.f32(i32 55, float %9844, float %9843, float %9842, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9853 = call float @dx.op.dot3.f32(i32 55, float %9848, float %9849, float %9850, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9854 = select i1 %231, float %9852, float %9844
  %9855 = select i1 %231, float %9852, float %9843
  %9856 = select i1 %231, float 1.000000e+00, float %9842
  %9857 = select i1 %231, float %9853, float %9848
  %9858 = select i1 %231, float 0.000000e+00, float %9849
  %9859 = select i1 %231, float 0.000000e+00, float %9850
  %9860 = fmul fast float %9854, %9078
  %9861 = fmul fast float %9855, %9079
  %9862 = fmul fast float %9856, %9080
  %9863 = fadd fast float %9860, %9857
  %9864 = fadd fast float %9861, %9858
  %9865 = fadd fast float %9859, %9862
  %9866 = fmul fast float %9854, %9081
  %9867 = fmul fast float %9855, %9082
  %9868 = fmul fast float %9856, %9083
  %9869 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9870 = extractvalue %dx.types.CBufRet.i32 %9869, 0
  %9871 = icmp eq i32 %9870, 0
  br i1 %9871, label %10239, label %9872, !dx.controlflow.hints !169

; <label>:9872                                    ; preds = %9841
  %9873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %9874 = extractvalue %dx.types.CBufRet.f32 %9873, 2
  %9875 = extractvalue %dx.types.CBufRet.f32 %9873, 3
  %9876 = fmul fast float %9874, %111
  %9877 = fmul fast float %9875, %112
  %9878 = fmul fast float %9876, 2.000000e+00
  %9879 = fmul fast float %9877, 2.000000e+00
  %9880 = fsub fast float 1.000000e+00, %9878
  %9881 = fsub fast float 1.000000e+00, %9879
  %9882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9883 = extractvalue %dx.types.CBufRet.f32 %9882, 0
  %9884 = extractvalue %dx.types.CBufRet.f32 %9882, 1
  %9885 = extractvalue %dx.types.CBufRet.f32 %9882, 2
  %9886 = fmul fast float %9880, %9883
  %9887 = fmul fast float %9880, %9884
  %9888 = fmul fast float %9880, %9885
  %9889 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9890 = extractvalue %dx.types.CBufRet.f32 %9889, 0
  %9891 = extractvalue %dx.types.CBufRet.f32 %9889, 1
  %9892 = extractvalue %dx.types.CBufRet.f32 %9889, 2
  %9893 = fmul fast float %9881, %9890
  %9894 = fmul fast float %9881, %9891
  %9895 = fmul fast float %9881, %9892
  %9896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9897 = extractvalue %dx.types.CBufRet.f32 %9896, 0
  %9898 = extractvalue %dx.types.CBufRet.f32 %9896, 1
  %9899 = extractvalue %dx.types.CBufRet.f32 %9896, 2
  %9900 = fadd fast float %9893, %9897
  %9901 = fadd fast float %9900, %9886
  %9902 = fadd fast float %9894, %9898
  %9903 = fadd fast float %9902, %9887
  %9904 = fadd fast float %9895, %9899
  %9905 = fadd fast float %9904, %9888
  %9906 = fmul fast float %9901, %9077
  %9907 = fmul fast float %9903, %9077
  %9908 = fmul fast float %9905, %9077
  %9909 = fmul fast float %9906, %9906
  %9910 = fmul fast float %9907, %9907
  %9911 = fadd fast float %9909, %9910
  %9912 = fmul fast float %9908, %9908
  %9913 = fadd fast float %9911, %9912
  %9914 = call float @dx.op.unary.f32(i32 24, float %9913)  ; Sqrt(value)
  %9915 = extractvalue %dx.types.CBufRet.f32 %8804, 0
  %9916 = fsub fast float %9914, %9915
  %9917 = extractvalue %dx.types.CBufRet.f32 %8804, 2
  %9918 = fmul fast float %9916, %9917
  %9919 = call float @dx.op.unary.f32(i32 7, float %9918)  ; Saturate(value)
  %9920 = fadd fast float %9919, -5.000000e-01
  %9921 = fmul fast float %9920, 2.000000e+00
  %9922 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9923 = extractvalue %dx.types.CBufRet.f32 %9922, 2
  %9924 = call float @dx.op.binary.f32(i32 36, float %9923, float %9921)  ; FMin(a,b)
  %9925 = fsub fast float -0.000000e+00, %9923
  %9926 = fcmp fast ogt float %9924, %9925
  br i1 %9926, label %9927, label %10239, !dx.controlflow.hints !170

; <label>:9927                                    ; preds = %9872
  %9928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9929 = extractvalue %dx.types.CBufRet.f32 %9928, 3
  %9930 = fcmp fast ogt float %9929, 0.000000e+00
  br i1 %9930, label %9931, label %10006, !dx.controlflow.hints !171

; <label>:9931                                    ; preds = %9927
  %9932 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %28, i32 0)  ; GetDimensions(handle,mipLevel)
  %9933 = extractvalue %dx.types.Dimensions %9932, 0
  %9934 = sitofp i32 %9933 to float
  %9935 = extractvalue %dx.types.Dimensions %9932, 1
  %9936 = sitofp i32 %9935 to float
  %9937 = fmul fast float %9876, %9934
  %9938 = fmul fast float %9877, %9936
  %9939 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9940 = extractvalue %dx.types.CBufRet.f32 %9939, 1
  %9941 = fsub fast float -0.000000e+00, %9940
  %9942 = fptoui float %9941 to i32
  %9943 = fptoui float %9937 to i32
  %9944 = fptoui float %9938 to i32
  %9945 = and i32 %9942, 31
  %9946 = lshr i32 %9943, %9945
  %9947 = lshr i32 %9944, %9945
  %9948 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %28, i32 %9942, i32 %9946, i32 %9947, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9949 = extractvalue %dx.types.ResRet.f32 %9948, 0
  %9950 = fcmp fast olt float %9949, -1.000000e+00
  %9951 = fcmp fast ogt float %9949, -1.000000e+00
  %9952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9953 = extractvalue %dx.types.CBufRet.f32 %9952, 1
  %9954 = select i1 %9951, float %9953, float 1.000000e+00
  %9955 = fadd fast float %9949, 1.000000e+00
  %9956 = fmul fast float %9954, %9955
  %9957 = call float @dx.op.unary.f32(i32 6, float %9956)  ; FAbs(value)
  %9958 = extractvalue %dx.types.CBufRet.f32 %9952, 3
  %9959 = fcmp fast oge float %9957, %9958
  %9960 = select i1 %9959, float 0x4197782600000000, float %9957
  %9961 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9962 = extractvalue %dx.types.CBufRet.f32 %9961, 0
  %9963 = extractvalue %dx.types.CBufRet.f32 %9961, 1
  %9964 = extractvalue %dx.types.CBufRet.f32 %9961, 2
  %9965 = select i1 %9950, float %9962, float %9883
  %9966 = select i1 %9950, float %9963, float %9884
  %9967 = select i1 %9950, float %9964, float %9885
  %9968 = fmul fast float %9965, %9880
  %9969 = fmul fast float %9966, %9880
  %9970 = fmul fast float %9967, %9880
  %9971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9972 = extractvalue %dx.types.CBufRet.f32 %9971, 0
  %9973 = extractvalue %dx.types.CBufRet.f32 %9971, 1
  %9974 = extractvalue %dx.types.CBufRet.f32 %9971, 2
  %9975 = select i1 %9950, float %9972, float %9890
  %9976 = select i1 %9950, float %9973, float %9891
  %9977 = select i1 %9950, float %9974, float %9892
  %9978 = fmul fast float %9975, %9881
  %9979 = fmul fast float %9976, %9881
  %9980 = fmul fast float %9977, %9881
  %9981 = fadd fast float %9978, %9968
  %9982 = fadd fast float %9979, %9969
  %9983 = fadd fast float %9980, %9970
  %9984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9985 = extractvalue %dx.types.CBufRet.f32 %9984, 0
  %9986 = extractvalue %dx.types.CBufRet.f32 %9984, 1
  %9987 = extractvalue %dx.types.CBufRet.f32 %9984, 2
  %9988 = select i1 %9950, float %9985, float %9897
  %9989 = select i1 %9950, float %9986, float %9898
  %9990 = select i1 %9950, float %9987, float %9899
  %9991 = fadd fast float %9981, %9988
  %9992 = fadd fast float %9982, %9989
  %9993 = fadd fast float %9983, %9990
  %9994 = fmul fast float %9991, %9960
  %9995 = fmul fast float %9992, %9960
  %9996 = fmul fast float %9993, %9960
  %9997 = fmul fast float %9994, %9994
  %9998 = fmul fast float %9995, %9995
  %9999 = fadd fast float %9997, %9998
  %10000 = fmul fast float %9996, %9996
  %10001 = fadd fast float %9999, %10000
  %10002 = call float @dx.op.unary.f32(i32 24, float %10001)  ; Sqrt(value)
  %10003 = fsub fast float %10002, %9915
  %10004 = fmul fast float %10003, %9917
  %10005 = call float @dx.op.unary.f32(i32 7, float %10004)  ; Saturate(value)
  br label %10006

; <label>:10006                                   ; preds = %9931, %9927
  %10007 = phi float [ %10005, %9931 ], [ 1.000000e+00, %9927 ]
  %10008 = fmul fast float %9924, 5.000000e-01
  %10009 = fadd fast float %10008, 5.000000e-01
  %10010 = call float @dx.op.unary.f32(i32 22, float %10009)  ; Frc(value)
  %10011 = call float @dx.op.unary.f32(i32 27, float %10010)  ; Round_ni(value)
  %10012 = call float @dx.op.unary.f32(i32 22, float %10010)  ; Frc(value)
  %10013 = fmul fast float %10012, 2.000000e+00
  %10014 = fadd fast float %10013, -1.000000e+00
  %10015 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %46, float %9876, float %9877, float %10011, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10016 = extractvalue %dx.types.ResRet.f32 %10015, 0
  %10017 = extractvalue %dx.types.ResRet.f32 %10015, 1
  %10018 = extractvalue %dx.types.ResRet.f32 %10015, 2
  %10019 = extractvalue %dx.types.ResRet.f32 %10015, 3
  %10020 = fadd fast float %10016, -5.000000e-01
  %10021 = fadd fast float %10018, -5.000000e-01
  %10022 = fmul fast float %10020, 0xBFD5555560000000
  %10023 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %10021, float %10022)  ; FMad(a,b,c)
  %10024 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %10017, float 0.000000e+00)  ; FMad(a,b,c)
  %10025 = fadd fast float %10024, %10019
  %10026 = fmul fast float %10020, -7.500000e-01
  %10027 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %10021, float %10026)  ; FMad(a,b,c)
  %10028 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %10017, float 0.000000e+00)  ; FMad(a,b,c)
  %10029 = fadd fast float %10028, %10019
  %10030 = call float @dx.op.binary.f32(i32 35, float %10023, float -1.000000e+00)  ; FMax(a,b)
  %10031 = call float @dx.op.binary.f32(i32 35, float %10025, float -1.000000e+00)  ; FMax(a,b)
  %10032 = call float @dx.op.binary.f32(i32 35, float %10027, float -1.000000e+00)  ; FMax(a,b)
  %10033 = call float @dx.op.binary.f32(i32 35, float %10029, float -1.000000e+00)  ; FMax(a,b)
  %10034 = call float @dx.op.binary.f32(i32 36, float %10030, float 1.000000e+00)  ; FMin(a,b)
  %10035 = call float @dx.op.binary.f32(i32 36, float %10031, float 1.000000e+00)  ; FMin(a,b)
  %10036 = call float @dx.op.binary.f32(i32 36, float %10032, float 1.000000e+00)  ; FMin(a,b)
  %10037 = call float @dx.op.binary.f32(i32 36, float %10033, float 1.000000e+00)  ; FMin(a,b)
  %10038 = fcmp fast olt float %10034, 0x3FEFFF8020000000
  br i1 %10038, label %10039, label %10154, !dx.controlflow.hints !172

; <label>:10039                                   ; preds = %10006
  %10040 = extractvalue %dx.types.CBufRet.f32 %9922, 3
  %10041 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %10042 = extractvalue %dx.types.CBufRet.f32 %10041, 0
  %10043 = extractvalue %dx.types.CBufRet.f32 %10041, 1
  %10044 = extractvalue %dx.types.CBufRet.f32 %10041, 2
  %10045 = extractvalue %dx.types.CBufRet.f32 %10041, 3
  %10046 = fsub fast float %10042, %10034
  %10047 = fsub fast float %10043, %10035
  %10048 = fsub fast float %10044, %10036
  %10049 = fsub fast float %10045, %10037
  %10050 = fmul fast float %10046, %10040
  %10051 = fmul fast float %10047, %10040
  %10052 = fmul fast float %10048, %10040
  %10053 = fmul fast float %10049, %10040
  %10054 = fadd fast float %10050, %10034
  %10055 = fadd fast float %10051, %10035
  %10056 = fsub fast float -0.000000e+00, %10055
  %10057 = fadd fast float %10052, %10036
  %10058 = fadd fast float %10053, %10037
  %10059 = fmul fast float %10054, %10054
  %10060 = fsub fast float %10055, %10059
  %10061 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %10060)  ; FMax(a,b)
  %10062 = fdiv fast float 1.000000e+00, %10061
  %10063 = fmul fast float %10055, %10054
  %10064 = fsub fast float %10057, %10063
  %10065 = fsub fast float %10014, %10054
  %10066 = fmul fast float %10014, %10014
  %10067 = fsub fast float %10066, %10055
  %10068 = fmul fast float %10065, %10062
  %10069 = fmul fast float %10068, %10064
  %10070 = fsub fast float %10067, %10069
  %10071 = fmul fast float %10055, %10055
  %10072 = fsub fast float %10058, %10071
  %10073 = fmul fast float %10064, %10064
  %10074 = fmul fast float %10073, %10062
  %10075 = fsub fast float %10072, %10074
  %10076 = fdiv fast float %10070, %10075
  %10077 = fmul fast float %10064, %10076
  %10078 = fsub fast float %10065, %10077
  %10079 = fmul fast float %10078, %10062
  %10080 = fmul fast float %10079, %10054
  %10081 = fsub fast float 1.000000e+00, %10080
  %10082 = fmul fast float %10055, %10076
  %10083 = fsub fast float %10081, %10082
  %10084 = fmul fast float %10079, %10079
  %10085 = fmul fast float %10076, 4.000000e+00
  %10086 = fmul fast float %10085, %10083
  %10087 = fsub fast float %10084, %10086
  %10088 = call float @dx.op.unary.f32(i32 24, float %10087)  ; Sqrt(value)
  %10089 = fcmp fast oge float %10079, 0.000000e+00
  %10090 = fsub fast float -0.000000e+00, %10088
  %10091 = select i1 %10089, float %10090, float %10088
  %10092 = fsub fast float %10091, %10079
  %10093 = fdiv fast float %10092, %10076
  %10094 = fdiv fast float %10083, %10092
  %10095 = fmul fast float %10093, 5.000000e-01
  %10096 = fmul fast float %10094, 2.000000e+00
  %10097 = select i1 %10089, float %10095, float %10096
  %10098 = select i1 %10089, float %10096, float %10095
  %10099 = call float @dx.op.binary.f32(i32 35, float %10097, float %10098)  ; FMax(a,b)
  %10100 = call float @dx.op.binary.f32(i32 36, float %10097, float %10098)  ; FMin(a,b)
  %10101 = fcmp fast ogt float %10014, %10100
  br i1 %10101, label %10102, label %10112

; <label>:10102                                   ; preds = %10039
  %10103 = fsub fast float %10014, %10100
  %10104 = fsub fast float %10099, %10100
  %10105 = fmul fast float %10103, %10104
  %10106 = fmul fast float %10099, %10014
  %10107 = fadd fast float %10099, %10014
  %10108 = fmul fast float %10107, %10054
  %10109 = fadd fast float %10106, %10055
  %10110 = fsub fast float %10109, %10108
  %10111 = fdiv fast float %10110, %10105
  br label %10112

; <label>:10112                                   ; preds = %10102, %10039
  %10113 = phi float [ %10111, %10102 ], [ 0.000000e+00, %10039 ]
  %10114 = fcmp fast ogt float %10014, %10099
  %10115 = fsub fast float %10014, %10099
  br i1 %10114, label %10116, label %10126

; <label>:10116                                   ; preds = %10112
  %10117 = fsub fast float %10099, %10100
  %10118 = fmul fast float %10117, %10115
  %10119 = fmul fast float %10100, %10014
  %10120 = fadd fast float %10100, %10014
  %10121 = fmul fast float %10120, %10054
  %10122 = fsub fast float %10056, %10119
  %10123 = fadd fast float %10122, %10121
  %10124 = fdiv fast float %10123, %10118
  %10125 = fadd fast float %10124, %10113
  br label %10126

; <label>:10126                                   ; preds = %10116, %10112
  %10127 = phi float [ %10125, %10116 ], [ %10113, %10112 ]
  %10128 = fsub fast float %10014, %10100
  %10129 = fmul fast float %10128, %10115
  %10130 = fmul fast float %10100, %10099
  %10131 = fadd fast float %10100, %10099
  %10132 = fmul fast float %10131, %10054
  %10133 = fadd fast float %10130, %10055
  %10134 = fsub fast float %10133, %10132
  %10135 = fdiv fast float %10134, %10129
  %10136 = call float @dx.op.unary.f32(i32 7, float %10127)  ; Saturate(value)
  %10137 = fcmp fast oeq float %8805, 0.000000e+00
  %10138 = extractvalue %dx.types.CBufRet.f32 %9922, 0
  %10139 = fcmp fast oeq float %10138, 0.000000e+00
  %10140 = or i1 %10137, %10139
  %10141 = fmul fast float %10138, 2.000000e+00
  %10142 = fadd fast float %9923, %9924
  %10143 = fdiv fast float %10142, %10141
  %10144 = call float @dx.op.unary.f32(i32 7, float %10143)  ; Saturate(value)
  %10145 = fmul fast float %10144, 2.000000e+00
  %10146 = fsub fast float 3.000000e+00, %10145
  %10147 = fmul fast float %10144, %10144
  %10148 = fmul fast float %10147, %10146
  %10149 = select i1 %10140, float 1.000000e+00, float %10148
  %10150 = fmul fast float %10135, %8805
  %10151 = fadd fast float %10136, %10150
  %10152 = call float @dx.op.unary.f32(i32 7, float %10151)  ; Saturate(value)
  %10153 = fmul fast float %10149, %10152
  br label %10154

; <label>:10154                                   ; preds = %10126, %10006
  %10155 = phi float [ %10153, %10126 ], [ 0.000000e+00, %10006 ]
  %10156 = fsub fast float 1.000000e+00, %10155
  %10157 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %46, float %9876, float %9877, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10158 = extractvalue %dx.types.ResRet.f32 %10157, 0
  %10159 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %10160 = extractvalue %dx.types.CBufRet.i32 %10159, 2
  %10161 = icmp eq i32 %10160, 0
  br i1 %10161, label %10167, label %10162

; <label>:10162                                   ; preds = %10154
  %10163 = call float @dx.op.unary.f32(i32 7, float %10155)  ; Saturate(value)
  %10164 = fadd fast float %10158, -1.000000e+00
  %10165 = fmul fast float %10163, %10164
  %10166 = fadd fast float %10165, 1.000000e+00
  br label %10167

; <label>:10167                                   ; preds = %10162, %10154
  %10168 = phi float [ %10166, %10162 ], [ %10156, %10154 ]
  br i1 %9930, label %10169, label %10187

; <label>:10169                                   ; preds = %10167
  %10170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %10171 = extractvalue %dx.types.CBufRet.f32 %10170, 1
  %10172 = fsub fast float %10007, %10171
  %10173 = call float @dx.op.unary.f32(i32 7, float %10172)  ; Saturate(value)
  %10174 = fsub fast float %10007, %9929
  %10175 = call float @dx.op.unary.f32(i32 7, float %10174)  ; Saturate(value)
  %10176 = fsub fast float %10173, %10175
  %10177 = fsub fast float %10009, %10175
  %10178 = fdiv fast float %10177, %10176
  %10179 = call float @dx.op.unary.f32(i32 7, float %10178)  ; Saturate(value)
  %10180 = fmul fast float %10179, 2.000000e+00
  %10181 = fsub fast float 3.000000e+00, %10180
  %10182 = fsub fast float %10158, %10168
  %10183 = fmul fast float %10179, %10179
  %10184 = fmul fast float %10183, %10182
  %10185 = fmul fast float %10184, %10181
  %10186 = fadd fast float %10185, %10168
  br label %10187

; <label>:10187                                   ; preds = %10169, %10167
  %10188 = phi float [ %10186, %10169 ], [ %10168, %10167 ]
  %10189 = call float @dx.op.binary.f32(i32 35, float %10158, float %10188)  ; FMax(a,b)
  %10190 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %10191 = extractvalue %dx.types.CBufRet.i32 %10190, 2
  %10192 = and i32 %10191, 1
  %10193 = icmp eq i32 %10192, 0
  %10194 = fcmp fast une float %10189, 1.000000e+00
  %10195 = and i1 %10194, %10193
  br i1 %10195, label %10196, label %10215

; <label>:10196                                   ; preds = %10187
  %10197 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %46, float %9876, float %9877, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10198 = extractvalue %dx.types.ResRet.f32 %10197, 0
  %10199 = extractvalue %dx.types.ResRet.f32 %10197, 1
  %10200 = extractvalue %dx.types.ResRet.f32 %10197, 2
  %10201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10202 = extractvalue %dx.types.CBufRet.f32 %10201, 1
  %10203 = fmul fast float %10202, %10198
  %10204 = fmul fast float %10202, %10199
  %10205 = fmul fast float %10202, %10200
  %10206 = fcmp fast ogt float %10158, 0x3FEFFF2E40000000
  %10207 = fsub fast float 1.000000e+00, %10189
  %10208 = fsub fast float 1.000000e+00, %10158
  %10209 = fdiv fast float %10207, %10208
  %10210 = call float @dx.op.unary.f32(i32 7, float %10209)  ; Saturate(value)
  %10211 = select i1 %10206, float 0.000000e+00, float %10210
  %10212 = fmul fast float %10203, %10211
  %10213 = fmul fast float %10204, %10211
  %10214 = fmul fast float %10205, %10211
  br label %10215

; <label>:10215                                   ; preds = %10196, %10187
  %10216 = phi float [ 0.000000e+00, %10187 ], [ %10212, %10196 ]
  %10217 = phi float [ 0.000000e+00, %10187 ], [ %10213, %10196 ]
  %10218 = phi float [ 0.000000e+00, %10187 ], [ %10214, %10196 ]
  %10219 = fmul fast float %10216, %8793
  %10220 = fmul fast float %10217, %8793
  %10221 = fmul fast float %10218, %8793
  %10222 = fmul fast float %10189, %9851
  %10223 = call float @dx.op.dot3.f32(i32 55, float %10189, float %10189, float %10189, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10224 = call float @dx.op.dot3.f32(i32 55, float %10219, float %10220, float %10221, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10225 = select i1 %231, float %10223, float %10189
  %10226 = select i1 %231, float 1.000000e+00, float %10189
  %10227 = select i1 %231, float %10224, float %10219
  %10228 = select i1 %231, float 0.000000e+00, float %10220
  %10229 = select i1 %231, float 0.000000e+00, float %10221
  %10230 = fmul fast float %10225, %9863
  %10231 = fmul fast float %10225, %9864
  %10232 = fmul fast float %10226, %9865
  %10233 = fadd fast float %10230, %10227
  %10234 = fadd fast float %10231, %10228
  %10235 = fadd fast float %10229, %10232
  %10236 = fmul fast float %10225, %9866
  %10237 = fmul fast float %10225, %9867
  %10238 = fmul fast float %10226, %9868
  br label %10239

; <label>:10239                                   ; preds = %10215, %9872, %9841, %9073
  %10240 = phi float [ %9078, %9073 ], [ %9863, %9841 ], [ %10233, %10215 ], [ %9863, %9872 ]
  %10241 = phi float [ %9079, %9073 ], [ %9864, %9841 ], [ %10234, %10215 ], [ %9864, %9872 ]
  %10242 = phi float [ %9080, %9073 ], [ %9865, %9841 ], [ %10235, %10215 ], [ %9865, %9872 ]
  %10243 = phi float [ %9081, %9073 ], [ %9866, %9841 ], [ %10236, %10215 ], [ %9866, %9872 ]
  %10244 = phi float [ %9082, %9073 ], [ %9867, %9841 ], [ %10237, %10215 ], [ %9867, %9872 ]
  %10245 = phi float [ %9083, %9073 ], [ %9868, %9841 ], [ %10238, %10215 ], [ %9868, %9872 ]
  %10246 = phi float [ %9084, %9073 ], [ %9851, %9841 ], [ %10222, %10215 ], [ %9851, %9872 ]
  %10247 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %10248 = extractvalue %dx.types.CBufRet.f32 %10247, 2
  %10249 = extractvalue %dx.types.CBufRet.f32 %10247, 3
  %10250 = fmul fast float %10248, %111
  %10251 = fmul fast float %10249, %112
  %10252 = call float @dx.op.unary.f32(i32 7, float %10250)  ; Saturate(value)
  %10253 = call float @dx.op.unary.f32(i32 7, float %10251)  ; Saturate(value)
  %10254 = select i1 %8815, i32 2, i32 0
  %10255 = or i32 %10254, 1
  %10256 = uitofp i32 %10255 to float
  %10257 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %46, float %10252, float %10253, float %10256, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10258 = extractvalue %dx.types.ResRet.f32 %10257, 0
  %10259 = extractvalue %dx.types.ResRet.f32 %10257, 1
  %10260 = extractvalue %dx.types.ResRet.f32 %10257, 2
  %10261 = extractvalue %dx.types.ResRet.f32 %10257, 3
  %10262 = add nuw nsw i32 %10254, 2
  %10263 = uitofp i32 %10262 to float
  %10264 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %46, float %10252, float %10253, float %10263, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10265 = extractvalue %dx.types.ResRet.f32 %10264, 0
  %10266 = extractvalue %dx.types.ResRet.f32 %10264, 1
  %10267 = extractvalue %dx.types.ResRet.f32 %10264, 2
  %10268 = extractvalue %dx.types.ResRet.f32 %10264, 3
  %10269 = call float @dx.op.binary.f32(i32 35, float %10259, float %10260)  ; FMax(a,b)
  %10270 = call float @dx.op.binary.f32(i32 35, float %10258, float %10269)  ; FMax(a,b)
  %10271 = call float @dx.op.binary.f32(i32 35, float %10270, float %10261)  ; FMax(a,b)
  %10272 = call float @dx.op.binary.f32(i32 36, float %10266, float %10267)  ; FMin(a,b)
  %10273 = call float @dx.op.binary.f32(i32 36, float %10265, float %10272)  ; FMin(a,b)
  %10274 = call float @dx.op.binary.f32(i32 36, float %10273, float %10268)  ; FMin(a,b)
  %10275 = fmul fast float %10271, 2.550000e+02
  %10276 = fadd fast float %10275, 0x3F70101020000000
  %10277 = fptoui float %10276 to i32
  %10278 = fmul fast float %10274, 2.550000e+02
  %10279 = fadd fast float %10278, 0x3F70101020000000
  %10280 = fptoui float %10279 to i32
  %10281 = icmp ult i32 %10277, %10280
  br i1 %10281, label %10282, label %10451

; <label>:10282                                   ; preds = %10239
  %10283 = fcmp fast ogt float %98, 9.843750e-01
  %10284 = fadd fast float %9077, -4.000000e+00
  %10285 = select i1 %10283, float -4.000000e+00, float %10284
  %10286 = call float @dx.op.binary.f32(i32 35, float %10285, float 0.000000e+00)  ; FMax(a,b)
  %10287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %10288 = extractvalue %dx.types.CBufRet.f32 %10287, 0
  %10289 = fadd fast float %10288, %10286
  %10290 = extractvalue %dx.types.CBufRet.f32 %10287, 2
  %10291 = fmul fast float %10289, %10290
  %10292 = call float @dx.op.unary.f32(i32 23, float %10291)  ; Log(value)
  %10293 = extractvalue %dx.types.CBufRet.f32 %10287, 3
  %10294 = fmul fast float %10293, %10292
  %10295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %10296 = extractvalue %dx.types.CBufRet.f32 %10295, 2
  %10297 = fmul fast float %10294, %10296
  %10298 = call float @dx.op.unary.f32(i32 7, float %10297)  ; Saturate(value)
  %10299 = uitofp i32 %10277 to float
  %10300 = uitofp i32 %10280 to float
  %10301 = fadd fast float %10299, 5.000000e-01
  %10302 = fadd fast float %10300, 5.000000e-01
  %10303 = fmul fast float %10296, %10301
  %10304 = fmul fast float %10296, %10302
  %10305 = fadd fast float %10303, 0x3F0FFB4800000000
  %10306 = fadd fast float %10304, 0xBF0FFB4800000000
  %10307 = call float @dx.op.binary.f32(i32 35, float %10298, float %10305)  ; FMax(a,b)
  %10308 = call float @dx.op.binary.f32(i32 36, float %10307, float %10306)  ; FMin(a,b)
  %10309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %10310 = extractvalue %dx.types.CBufRet.f32 %10309, 1
  %10311 = extractvalue %dx.types.CBufRet.f32 %10309, 2
  %10312 = extractvalue %dx.types.CBufRet.f32 %10309, 0
  %10313 = select i1 %8815, float %10312, float 0.000000e+00
  %10314 = fmul fast float %10310, %10308
  %10315 = fadd fast float %10313, %10314
  %10316 = fadd fast float %10313, %10311
  %10317 = fsub fast float %10310, %10311
  %10318 = fadd fast float %10317, %10313
  %10319 = call float @dx.op.binary.f32(i32 35, float %10315, float %10316)  ; FMax(a,b)
  %10320 = call float @dx.op.binary.f32(i32 36, float %10319, float %10318)  ; FMin(a,b)
  %10321 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %44, float %10252, float %10253, float %10320, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10322 = extractvalue %dx.types.ResRet.f32 %10321, 0
  %10323 = extractvalue %dx.types.ResRet.f32 %10321, 1
  %10324 = extractvalue %dx.types.ResRet.f32 %10321, 2
  %10325 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %10326 = extractvalue %dx.types.CBufRet.i32 %10325, 0
  %10327 = extractvalue %dx.types.CBufRet.i32 %10325, 1
  %10328 = uitofp i32 %10326 to float
  %10329 = uitofp i32 %10327 to float
  %10330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %10331 = extractvalue %dx.types.CBufRet.f32 %10330, 0
  %10332 = extractvalue %dx.types.CBufRet.f32 %10330, 1
  %10333 = fmul fast float %10328, %10252
  %10334 = fmul fast float %10329, %10253
  %10335 = fadd fast float %10333, -5.000000e-01
  %10336 = fadd fast float %10334, -5.000000e-01
  %10337 = call float @dx.op.unary.f32(i32 22, float %10335)  ; Frc(value)
  %10338 = call float @dx.op.unary.f32(i32 22, float %10336)  ; Frc(value)
  %10339 = fmul fast float %10337, %10337
  %10340 = fmul fast float %10339, %10337
  %10341 = fsub fast float 3.000000e+00, %10337
  %10342 = fmul fast float %10339, %10341
  %10343 = fmul fast float %10337, 3.000000e+00
  %10344 = fmul fast float %10340, 3.000000e+00
  %10345 = fmul fast float %10339, 6.000000e+00
  %10346 = fsub fast float %10344, %10345
  %10347 = fadd fast float %10346, 4.000000e+00
  %10348 = fmul fast float %10347, 0x3FC5555560000000
  %10349 = fmul fast float %10340, -3.000000e+00
  %10350 = fadd fast float %10339, %10337
  %10351 = fmul fast float %10350, 3.000000e+00
  %10352 = fadd fast float %10349, 1.000000e+00
  %10353 = fadd fast float %10352, %10351
  %10354 = fmul fast float %10340, 0x3FC5555560000000
  %10355 = fmul fast float %10338, %10338
  %10356 = fmul fast float %10355, %10338
  %10357 = fsub fast float 3.000000e+00, %10338
  %10358 = fmul fast float %10355, %10357
  %10359 = fmul fast float %10338, 3.000000e+00
  %10360 = fmul fast float %10356, 3.000000e+00
  %10361 = fmul fast float %10355, 6.000000e+00
  %10362 = fsub fast float %10360, %10361
  %10363 = fadd fast float %10362, 4.000000e+00
  %10364 = fmul fast float %10363, 0x3FC5555560000000
  %10365 = fmul fast float %10356, -3.000000e+00
  %10366 = fadd fast float %10355, %10338
  %10367 = fmul fast float %10366, 3.000000e+00
  %10368 = fadd fast float %10365, 1.000000e+00
  %10369 = fadd fast float %10368, %10367
  %10370 = fmul fast float %10356, 0x3FC5555560000000
  %10371 = fadd fast float %10337, 1.000000e+00
  %10372 = fsub fast float 1.000000e+00, %10343
  %10373 = fadd fast float %10372, %10342
  %10374 = fadd fast float %10373, %10347
  %10375 = fmul fast float %10374, 0x3FC5555560000000
  %10376 = fdiv fast float %10348, %10375
  %10377 = fsub fast float %10371, %10376
  %10378 = fsub fast float 1.000000e+00, %10337
  %10379 = fadd fast float %10353, %10340
  %10380 = fmul fast float %10379, 0x3FC5555560000000
  %10381 = fdiv fast float %10354, %10380
  %10382 = fadd fast float %10378, %10381
  %10383 = fadd fast float %10338, 1.000000e+00
  %10384 = fsub fast float 1.000000e+00, %10359
  %10385 = fadd fast float %10384, %10358
  %10386 = fadd fast float %10385, %10363
  %10387 = fmul fast float %10386, 0x3FC5555560000000
  %10388 = fdiv fast float %10364, %10387
  %10389 = fsub fast float %10383, %10388
  %10390 = fsub fast float 1.000000e+00, %10338
  %10391 = fadd fast float %10369, %10356
  %10392 = fmul fast float %10391, 0x3FC5555560000000
  %10393 = fdiv fast float %10370, %10392
  %10394 = fadd fast float %10393, %10390
  %10395 = fmul fast float %10377, %10331
  %10396 = fsub fast float %10252, %10395
  %10397 = fmul fast float %10382, %10331
  %10398 = fadd fast float %10397, %10252
  %10399 = fmul fast float %10394, %10332
  %10400 = fadd fast float %10399, %10253
  %10401 = fmul fast float %10389, %10332
  %10402 = fsub fast float %10253, %10401
  %10403 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %44, float %10396, float %10402, float %10320, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10404 = extractvalue %dx.types.ResRet.f32 %10403, 0
  %10405 = extractvalue %dx.types.ResRet.f32 %10403, 1
  %10406 = extractvalue %dx.types.ResRet.f32 %10403, 2
  %10407 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %44, float %10398, float %10402, float %10320, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10408 = extractvalue %dx.types.ResRet.f32 %10407, 0
  %10409 = extractvalue %dx.types.ResRet.f32 %10407, 1
  %10410 = extractvalue %dx.types.ResRet.f32 %10407, 2
  %10411 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %44, float %10396, float %10400, float %10320, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10412 = extractvalue %dx.types.ResRet.f32 %10411, 0
  %10413 = extractvalue %dx.types.ResRet.f32 %10411, 1
  %10414 = extractvalue %dx.types.ResRet.f32 %10411, 2
  %10415 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %44, float %10398, float %10400, float %10320, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10416 = extractvalue %dx.types.ResRet.f32 %10415, 0
  %10417 = extractvalue %dx.types.ResRet.f32 %10415, 1
  %10418 = extractvalue %dx.types.ResRet.f32 %10415, 2
  %10419 = fsub fast float %10412, %10404
  %10420 = fsub fast float %10413, %10405
  %10421 = fsub fast float %10414, %10406
  %10422 = fmul fast float %10419, %10392
  %10423 = fmul fast float %10420, %10392
  %10424 = fmul fast float %10421, %10392
  %10425 = fadd fast float %10422, %10404
  %10426 = fadd fast float %10423, %10405
  %10427 = fadd fast float %10424, %10406
  %10428 = fsub fast float %10416, %10408
  %10429 = fsub fast float %10417, %10409
  %10430 = fsub fast float %10418, %10410
  %10431 = fmul fast float %10428, %10392
  %10432 = fmul fast float %10429, %10392
  %10433 = fmul fast float %10430, %10392
  %10434 = fsub fast float %10408, %10425
  %10435 = fadd fast float %10434, %10431
  %10436 = fsub fast float %10409, %10426
  %10437 = fadd fast float %10436, %10432
  %10438 = fsub fast float %10410, %10427
  %10439 = fadd fast float %10438, %10433
  %10440 = fmul fast float %10435, %10380
  %10441 = fmul fast float %10437, %10380
  %10442 = fmul fast float %10439, %10380
  %10443 = fadd fast float %10440, %10425
  %10444 = fadd fast float %10441, %10426
  %10445 = fadd fast float %10442, %10427
  %10446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10447 = extractvalue %dx.types.CBufRet.f32 %10446, 1
  %10448 = fmul fast float %10443, %10447
  %10449 = fmul fast float %10444, %10447
  %10450 = fmul fast float %10445, %10447
  br label %10451

; <label>:10451                                   ; preds = %10282, %10239
  %10452 = phi float [ %10322, %10282 ], [ 1.000000e+00, %10239 ]
  %10453 = phi float [ %10323, %10282 ], [ 1.000000e+00, %10239 ]
  %10454 = phi float [ %10324, %10282 ], [ 1.000000e+00, %10239 ]
  %10455 = phi float [ %10448, %10282 ], [ 0.000000e+00, %10239 ]
  %10456 = phi float [ %10449, %10282 ], [ 0.000000e+00, %10239 ]
  %10457 = phi float [ %10450, %10282 ], [ 0.000000e+00, %10239 ]
  %10458 = fmul fast float %10455, %8793
  %10459 = fmul fast float %10456, %8793
  %10460 = fmul fast float %10457, %8793
  %10461 = fmul fast float %10452, %10246
  %10462 = call float @dx.op.dot3.f32(i32 55, float %10452, float %10453, float %10454, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10463 = call float @dx.op.dot3.f32(i32 55, float %10458, float %10459, float %10460, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10464 = select i1 %231, float %10462, float %10452
  %10465 = select i1 %231, float %10462, float %10453
  %10466 = select i1 %231, float 1.000000e+00, float %10454
  %10467 = select i1 %231, float %10463, float %10458
  %10468 = select i1 %231, float 0.000000e+00, float %10459
  %10469 = select i1 %231, float 0.000000e+00, float %10460
  %10470 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %10471 = extractvalue %dx.types.CBufRet.i32 %10470, 3
  %10472 = and i32 %10471, 3
  %10473 = icmp ne i32 %10472, 0
  %10474 = and i32 %10471, 4
  %10475 = icmp ne i32 %10474, 0
  %10476 = and i1 %10473, %10475
  %10477 = and i1 %231, %10476
  br i1 %10477, label %10478, label %10484

; <label>:10478                                   ; preds = %10451
  %10479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %10480 = extractvalue %dx.types.CBufRet.f32 %10479, 1
  %10481 = fadd fast float %10461, -1.000000e+00
  %10482 = fmul fast float %10480, %10481
  %10483 = fadd fast float %10482, 1.000000e+00
  br label %10484

; <label>:10484                                   ; preds = %10478, %10451
  %10485 = phi float [ %10483, %10478 ], [ %10461, %10451 ]
  %10486 = fadd fast float %10243, %10240
  %10487 = fmul fast float %10464, %10486
  %10488 = fadd fast float %10487, %10467
  %10489 = fadd fast float %10244, %10241
  %10490 = fmul fast float %10465, %10489
  %10491 = fadd fast float %10490, %10468
  %10492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10493 = extractvalue %dx.types.CBufRet.f32 %10492, 0
  br i1 %231, label %10494, label %10517

; <label>:10494                                   ; preds = %10484
  %10495 = fadd fast float %10488, %10491
  %10496 = fmul fast float %10493, %10495
  %10497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %10498 = extractvalue %dx.types.CBufRet.f32 %10497, 3
  %10499 = extractvalue %dx.types.CBufRet.f32 %8797, 1
  %10500 = fsub fast float %8802, %8796
  %10501 = fadd fast float %10500, %8803
  %10502 = fsub fast float %10501, %10499
  %10503 = extractvalue %dx.types.CBufRet.f32 %8797, 2
  %10504 = fmul fast float %10502, %10503
  %10505 = call float @dx.op.unary.f32(i32 7, float %10504)  ; Saturate(value)
  %10506 = fsub fast float %10505, %10498
  %10507 = fmul fast float %10506, %10485
  %10508 = fadd fast float %10507, %10498
  %10509 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %10510 = extractvalue %dx.types.CBufRet.f32 %10509, 0
  %10511 = fsub fast float %10508, %10510
  %10512 = fmul fast float %10511, 1.000000e+01
  %10513 = call float @dx.op.unary.f32(i32 7, float %10512)  ; Saturate(value)
  %10514 = fmul fast float %10513, %8792
  %10515 = fadd fast float %10514, %8793
  %10516 = fmul fast float %10515, %10508
  br label %10541

; <label>:10517                                   ; preds = %10484
  %10518 = fadd fast float %10245, %10242
  %10519 = fmul fast float %10466, %10518
  %10520 = fadd fast float %10519, %10469
  %10521 = fmul fast float %10493, %10488
  %10522 = fmul fast float %10493, %10491
  %10523 = fmul fast float %10493, %10520
  %10524 = call float @dx.op.binary.f32(i32 35, float %10522, float %10523)  ; FMax(a,b)
  %10525 = call float @dx.op.binary.f32(i32 35, float %10521, float %10524)  ; FMax(a,b)
  %10526 = call float @dx.op.binary.f32(i32 35, float %10525, float %8793)  ; FMax(a,b)
  %10527 = fcmp fast ugt float %10526, 0x3F10000000000000
  br i1 %10527, label %10529, label %10528

; <label>:10528                                   ; preds = %10517
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %10529

; <label>:10529                                   ; preds = %10528, %10517
  %10530 = add i32 %62, 356
  %10531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %10530, i32 undef)  ; BufferLoad(srv,index,wot)
  %10532 = extractvalue %dx.types.ResRet.i32 %10531, 0
  %10533 = and i32 %10532, 32
  %10534 = icmp eq i32 %10533, 0
  br i1 %10534, label %10541, label %10535

; <label>:10535                                   ; preds = %10529
  %10536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %10537 = extractvalue %dx.types.CBufRet.f32 %10536, 0
  %10538 = fmul fast float %10537, 0x3FE99999A0000000
  %10539 = fadd fast float %10537, %10521
  %10540 = fadd fast float %10538, %10523
  br label %10541

; <label>:10541                                   ; preds = %10535, %10529, %10494
  %10542 = phi float [ %10496, %10494 ], [ %10539, %10535 ], [ %10521, %10529 ]
  %10543 = phi float [ %10516, %10494 ], [ %10522, %10535 ], [ %10522, %10529 ]
  %10544 = phi float [ %10515, %10494 ], [ %10540, %10535 ], [ %10523, %10529 ]
  %10545 = phi float [ %10515, %10494 ], [ %8793, %10535 ], [ %8793, %10529 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %10546 = call float @dx.op.binary.f32(i32 36, float %10542, float 3.225500e+04)  ; FMin(a,b)
  %10547 = call float @dx.op.binary.f32(i32 36, float %10543, float 3.225500e+04)  ; FMin(a,b)
  %10548 = call float @dx.op.binary.f32(i32 36, float %10544, float 3.225500e+04)  ; FMin(a,b)
  %10549 = call float @dx.op.binary.f32(i32 36, float %10545, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %10546)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %10547)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %10548)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %10549)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.loadInput.i32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.f32(i32, i32, i32, i8, float) #1

; Function Attrs: nounwind
declare void @dx.op.discard(i32, i1) #1

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
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #2

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
declare %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare i32 @dx.op.tertiary.i32(i32, i32, i32, i32) #0

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
!dx.viewIdState = !{!65}
!dx.entryPoints = !{!66}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !54, !57}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!9 = !{i32 2, [0 x %"class.Texture3D<vector<float, 4> >"]* undef, !"", i32 7, i32 0, i32 -1, i32 4, i32 0, !7}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 3, i32 1, i32 11, i32 0, null}
!13 = !{i32 6, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 4, i32 1, i32 11, i32 0, null}
!14 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 5, i32 1, i32 11, i32 0, null}
!15 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 6, i32 1, i32 11, i32 0, null}
!16 = !{i32 9, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!17 = !{i32 10, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 49, i32 1, i32 11, i32 0, null}
!18 = !{i32 11, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 50, i32 1, i32 11, i32 0, null}
!19 = !{i32 12, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 51, i32 1, i32 11, i32 0, null}
!20 = !{i32 13, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 52, i32 1, i32 11, i32 0, null}
!21 = !{i32 14, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 16, i32 1, i32 11, i32 0, null}
!22 = !{i32 15, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 17, i32 1, i32 11, i32 0, null}
!23 = !{i32 16, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!24 = !{i32 17, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!25 = !{i32 18, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!26 = !{i32 19, %"class.Texture2DArray<vector<unsigned int, 4> >"* undef, !"", i32 2, i32 62, i32 1, i32 7, i32 0, !27}
!27 = !{i32 0, i32 5}
!28 = !{i32 20, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 63, i32 1, i32 7, i32 0, !7}
!29 = !{i32 21, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!30 = !{i32 22, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!31 = !{i32 23, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 56, i32 1, i32 2, i32 0, !27}
!32 = !{i32 24, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 35, i32 1, i32 7, i32 0, !7}
!33 = !{i32 25, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!34 = !{i32 26, %"class.Texture3D<float>"* undef, !"", i32 2, i32 31, i32 1, i32 4, i32 0, !7}
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
!45 = !{i32 36, %"class.Texture1D<float>"* undef, !"", i32 2, i32 30, i32 1, i32 1, i32 0, !7}
!46 = !{i32 37, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 44, i32 1, i32 4, i32 0, !7}
!47 = !{i32 38, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!48 = !{i32 39, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!49 = !{i32 40, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !39}
!50 = !{i32 41, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!51 = !{i32 42, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 86, i32 1, i32 2, i32 0, !7}
!52 = !{i32 43, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 12, i32 1, i32 2, i32 0, !7}
!53 = !{i32 44, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 55, i32 1, i32 2, i32 0, !7}
!54 = !{!55, !56}
!55 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!56 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 128, null}
!57 = !{!58, !59, !60, !61, !62, !63, !64}
!58 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!59 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!60 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!61 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!62 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!63 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!64 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!65 = !{[47 x i32] [i32 45, i32 4, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 7, i32 3, i32 3, i32 3, i32 7, i32 3, i32 3, i32 3, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15]}
!66 = !{void ()* @ps_main, !"ps_main", !67, !4, !90}
!67 = !{!68, !88, null}
!68 = !{!69, !72, !73, !75, !77, !78, !79, !80, !81, !82, !83, !85, !87}
!69 = !{i32 0, !"SV_Position", i8 9, i8 3, !70, i8 4, i32 1, i8 4, i32 0, i8 0, !71}
!70 = !{i32 0}
!71 = !{i32 3, i32 15}
!72 = !{i32 1, !"COLOR", i8 9, i8 0, !70, i8 2, i32 1, i8 4, i32 1, i8 0, !71}
!73 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !70, i8 2, i32 1, i8 4, i32 2, i8 0, !74}
!74 = !{i32 3, i32 3}
!75 = !{i32 3, !"NORMAL", i8 9, i8 0, !70, i8 2, i32 1, i8 3, i32 3, i8 0, !76}
!76 = !{i32 3, i32 7}
!77 = !{i32 4, !"TANGENT", i8 9, i8 0, !70, i8 2, i32 1, i8 4, i32 4, i8 0, !71}
!78 = !{i32 5, !"SH_RED", i8 9, i8 0, !70, i8 2, i32 1, i8 4, i32 5, i8 0, !71}
!79 = !{i32 6, !"SH_GREEN", i8 9, i8 0, !70, i8 2, i32 1, i8 4, i32 6, i8 0, !71}
!80 = !{i32 7, !"SH_BLUE", i8 9, i8 0, !70, i8 2, i32 1, i8 4, i32 7, i8 0, !71}
!81 = !{i32 8, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !70, i8 2, i32 1, i8 2, i32 8, i8 0, !74}
!82 = !{i32 9, !"SCEONDARY_NORMAL", i8 9, i8 0, !70, i8 2, i32 1, i8 4, i32 9, i8 0, !71}
!83 = !{i32 10, !"PACKED_TRI_DATA", i8 5, i8 0, !70, i8 1, i32 1, i8 4, i32 10, i8 0, !84}
!84 = !{i32 3, i32 13}
!85 = !{i32 11, !"SV_IsFrontFace", i8 5, i8 13, !70, i8 1, i32 1, i8 1, i32 11, i8 0, !86}
!86 = !{i32 3, i32 1}
!87 = !{i32 12, !"SV_SampleIndex", i8 5, i8 12, !70, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!88 = !{!89}
!89 = !{i32 0, !"SV_Target", i8 9, i8 16, !70, i8 0, i32 1, i8 4, i32 0, i8 0, !71}
!90 = !{i32 0, i64 16}
!91 = !{!92, !92, i64 0}
!92 = !{!"float", !93, i64 0}
!93 = !{!"omnipotent char", !94, i64 0}
!94 = !{!"Simple C/C++ TBAA"}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 1}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 1}
!97 = !{!98, !98, i64 0}
!98 = !{!"int", !93, i64 0}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 1}
!100 = distinct !{!100, !101}
!101 = !{!"llvm.loop.unroll.disable"}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 1}
!103 = distinct !{!103, !"dx.controlflow.hints", i32 1}
!104 = distinct !{!104, !"dx.controlflow.hints", i32 1}
!105 = distinct !{!105, !"dx.controlflow.hints", i32 1}
!106 = distinct !{!106, !"dx.controlflow.hints", i32 1}
!107 = !{!108, !110, !112, !114}
!108 = distinct !{!108, !109, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!109 = distinct !{!109, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!110 = distinct !{!110, !111, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!111 = distinct !{!111, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!112 = distinct !{!112, !113, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!113 = distinct !{!113, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!114 = distinct !{!114, !115, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!115 = distinct !{!115, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!116 = distinct !{!116, !"dx.controlflow.hints", i32 1}
!117 = distinct !{!117, !101}
!118 = distinct !{!118, !101}
!119 = distinct !{!119, !"dx.controlflow.hints", i32 1}
!120 = distinct !{!120, !"dx.controlflow.hints", i32 1}
!121 = distinct !{!121, !"dx.controlflow.hints", i32 1}
!122 = distinct !{!122, !"dx.controlflow.hints", i32 1}
!123 = distinct !{!123, !"dx.controlflow.hints", i32 1}
!124 = distinct !{!124, !"dx.controlflow.hints", i32 1}
!125 = distinct !{!125, !"dx.controlflow.hints", i32 1}
!126 = !{!127, !129, !131, !132, !134, !135, !136, !138, !139, !140}
!127 = distinct !{!127, !128, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!128 = distinct !{!128, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!129 = distinct !{!129, !130, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!130 = distinct !{!130, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!131 = distinct !{!131, !130, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!132 = distinct !{!132, !133, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!133 = distinct !{!133, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!134 = distinct !{!134, !133, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!135 = distinct !{!135, !133, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!136 = distinct !{!136, !137, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!137 = distinct !{!137, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!138 = distinct !{!138, !137, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!139 = distinct !{!139, !137, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!140 = distinct !{!140, !141, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!141 = distinct !{!141, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!142 = !{!143}
!143 = distinct !{!143, !144, !"\01?sort@@YAXAIAM00@Z: %c"}
!144 = distinct !{!144, !"\01?sort@@YAXAIAM00@Z"}
!145 = !{!146, !147, !127, !129, !131, !132, !134, !135, !136, !138, !139, !140}
!146 = distinct !{!146, !144, !"\01?sort@@YAXAIAM00@Z: %a"}
!147 = distinct !{!147, !144, !"\01?sort@@YAXAIAM00@Z: %b"}
!148 = !{!147}
!149 = !{!146, !143, !127, !129, !131, !132, !134, !135, !136, !138, !139, !140}
!150 = !{!146}
!151 = !{!147, !143, !127, !129, !131, !132, !134, !135, !136, !138, !139, !140}
!152 = !{!153}
!153 = distinct !{!153, !154, !"\01?sort@@YAXAIAM00@Z: %c"}
!154 = distinct !{!154, !"\01?sort@@YAXAIAM00@Z"}
!155 = !{!156, !157, !127, !129, !131, !132, !134, !135, !136, !138, !139, !140}
!156 = distinct !{!156, !154, !"\01?sort@@YAXAIAM00@Z: %a"}
!157 = distinct !{!157, !154, !"\01?sort@@YAXAIAM00@Z: %b"}
!158 = !{!157}
!159 = !{!156, !153, !127, !129, !131, !132, !134, !135, !136, !138, !139, !140}
!160 = !{!156}
!161 = !{!157, !153, !127, !129, !131, !132, !134, !135, !136, !138, !139, !140}
!162 = distinct !{!162, !"dx.controlflow.hints", i32 1}
!163 = distinct !{!163, !"dx.controlflow.hints", i32 2}
!164 = distinct !{!164, !"dx.controlflow.hints", i32 1}
!165 = distinct !{!165, !"dx.controlflow.hints", i32 1}
!166 = distinct !{!166, !"dx.controlflow.hints", i32 1}
!167 = distinct !{!167, !"dx.controlflow.hints", i32 1}
!168 = distinct !{!168, !"dx.controlflow.hints", i32 1}
!169 = distinct !{!169, !"dx.controlflow.hints", i32 1}
!170 = distinct !{!170, !"dx.controlflow.hints", i32 1}
!171 = distinct !{!171, !"dx.controlflow.hints", i32 1}
!172 = distinct !{!172, !"dx.controlflow.hints", i32 1}

