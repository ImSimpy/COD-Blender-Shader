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
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 4ab356eafb236c57fafa3c56278888cc
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
; Number of inputs: 44, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 43 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 43 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 24, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 43 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 43 }
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
  %60 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %87 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %88 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %89 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %90 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %91 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %92 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %93 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %94 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %95 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %96 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %97 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %98 = alloca [12 x float], align 4
  %99 = alloca [12 x float], align 4
  %100 = alloca [4 x float], align 4
  %101 = alloca [4 x float], align 4
  %102 = alloca [4 x float], align 4
  %103 = alloca [3 x float], align 4
  %104 = alloca [3 x float], align 4
  %105 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %106 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %108 = extractvalue %dx.types.CBufRet.f32 %107, 0
  %109 = fmul fast float %108, %94
  %110 = fmul fast float %108, %95
  %111 = call float @dx.op.dot3.f32(i32 55, float %85, float %86, float %87, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %112 = bitcast float %111 to i32
  %113 = ashr i32 %112, 1
  %114 = sub nsw i32 1597250115, %113
  %115 = bitcast i32 %114 to float
  %116 = fmul fast float %115, %85
  %117 = fmul fast float %115, %86
  %118 = fmul fast float %115, %87
  %119 = fmul fast float %86, %83
  %120 = fmul fast float %87, %82
  %121 = fsub fast float %119, %120
  %122 = fmul fast float %87, %81
  %123 = fmul fast float %85, %83
  %124 = fsub fast float %122, %123
  %125 = fmul fast float %85, %82
  %126 = fmul fast float %86, %81
  %127 = fsub fast float %125, %126
  %128 = fmul fast float %121, %84
  %129 = fmul fast float %124, %84
  %130 = fmul fast float %127, %84
  %131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %132 = extractvalue %dx.types.CBufRet.f32 %131, 2
  %133 = extractvalue %dx.types.CBufRet.f32 %131, 3
  %134 = fmul fast float %109, 2.000000e+00
  %135 = fmul fast float %134, %132
  %136 = fmul fast float %110, 2.000000e+00
  %137 = fmul fast float %136, %133
  %138 = fsub fast float 1.000000e+00, %135
  %139 = fsub fast float 1.000000e+00, %137
  %140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %141 = extractvalue %dx.types.CBufRet.f32 %140, 0
  %142 = extractvalue %dx.types.CBufRet.f32 %140, 1
  %143 = extractvalue %dx.types.CBufRet.f32 %140, 2
  %144 = fmul fast float %138, %141
  %145 = fmul fast float %138, %142
  %146 = fmul fast float %138, %143
  %147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %148 = extractvalue %dx.types.CBufRet.f32 %147, 0
  %149 = extractvalue %dx.types.CBufRet.f32 %147, 1
  %150 = extractvalue %dx.types.CBufRet.f32 %147, 2
  %151 = fmul fast float %139, %148
  %152 = fmul fast float %139, %149
  %153 = fmul fast float %139, %150
  %154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %155 = extractvalue %dx.types.CBufRet.f32 %154, 0
  %156 = extractvalue %dx.types.CBufRet.f32 %154, 1
  %157 = extractvalue %dx.types.CBufRet.f32 %154, 2
  %158 = fadd fast float %151, %155
  %159 = fadd fast float %158, %144
  %160 = fadd fast float %152, %156
  %161 = fadd fast float %160, %145
  %162 = fadd fast float %153, %157
  %163 = fadd fast float %162, %146
  %164 = fmul fast float %159, %97
  %165 = fmul fast float %161, %97
  %166 = fmul fast float %163, %97
  %167 = fmul fast float %109, 5.000000e-01
  %168 = fmul fast float %110, 5.000000e-01
  %169 = fptosi float %167 to i32
  %170 = fptosi float %168 to i32
  %171 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %22, i32 0, i32 %169, i32 %170, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %172 = extractvalue %dx.types.ResRet.i32 %171, 0
  %173 = lshr i32 %172, 18
  %174 = uitofp i32 %173 to float
  %175 = fmul fast float %174, 0x3F4C00EBA0000000
  %176 = call float @dx.op.unary.f32(i32 21, float %175)  ; Exp(value)
  %177 = fadd fast float %176, -1.000000e+00
  %178 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %22, i32 0)  ; GetDimensions(handle,mipLevel)
  %179 = extractvalue %dx.types.Dimensions %178, 0
  %180 = sitofp i32 %179 to float
  %181 = extractvalue %dx.types.Dimensions %178, 1
  %182 = sitofp i32 %181 to float
  %183 = fcmp fast oge float %167, %180
  %184 = fcmp fast oge float %168, %182
  %185 = or i1 %183, %184
  %186 = select i1 %185, float 0x4197782600000000, float %177
  %187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %188 = extractvalue %dx.types.CBufRet.f32 %187, 2
  %189 = extractvalue %dx.types.CBufRet.f32 %187, 3
  %190 = fmul fast float %188, %109
  %191 = fmul fast float %189, %110
  %192 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %193 = extractvalue %dx.types.ResRet.i32 %192, 0
  %194 = and i32 %193, 114688
  %195 = icmp ne i32 %194, 0
  %196 = select i1 %195, float %190, float 0.000000e+00
  %197 = select i1 %195, float %191, float 0.000000e+00
  %198 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %47, float %196, float %197, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %199 = extractvalue %dx.types.ResRet.f32 %198, 0
  %200 = fmul fast float %199, 2.550000e+02
  %201 = fptoui float %200 to i32
  %202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %203 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %204 = extractvalue %dx.types.CBufRet.i32 %203, 3
  %205 = and i32 %204, 3
  %206 = icmp ne i32 %205, 0
  %207 = and i32 %204, 4
  %208 = icmp ne i32 %207, 0
  %209 = and i1 %206, %208
  br i1 %209, label %210, label %221

; <label>:210                                     ; preds = %0
  %211 = extractvalue %dx.types.CBufRet.f32 %202, 3
  %212 = fmul fast float %211, %110
  %213 = extractvalue %dx.types.CBufRet.f32 %202, 2
  %214 = fmul fast float %213, %109
  %215 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %46, float %214, float %212, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %216 = extractvalue %dx.types.ResRet.f32 %215, 0
  %217 = fsub fast float 1.000000e+00, %216
  %218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %219 = extractvalue %dx.types.CBufRet.f32 %218, 0
  %220 = fcmp fast olt float %217, %219
  br label %224

; <label>:221                                     ; preds = %0
  %222 = icmp eq i32 %207, 0
  %223 = and i1 %206, %222
  br label %224

; <label>:224                                     ; preds = %221, %210
  %225 = phi i1 [ %220, %210 ], [ %223, %221 ]
  %226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %227 = extractvalue %dx.types.CBufRet.f32 %226, 2
  %228 = fmul fast float %227, 0x3FE3C6EF40000000
  %229 = frem fast float %109, 2.560000e+02
  %230 = frem fast float %110, 2.560000e+02
  %231 = fptoui float %229 to i32
  %232 = fptoui float %230 to i32
  %233 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %29, i32 0, i32 %231, i32 %232, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %234 = extractvalue %dx.types.ResRet.f32 %233, 0
  %235 = fadd fast float %234, %228
  %236 = call float @dx.op.unary.f32(i32 22, float %235)  ; Frc(value)
  %237 = add i32 %60, 156
  %238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %237, i32 undef)  ; BufferLoad(srv,index,wot)
  %239 = extractvalue %dx.types.ResRet.i32 %238, 0
  %240 = shl i32 %239, 4
  %241 = and i32 %240, 32752
  %242 = call float @dx.op.legacyF16ToF32(i32 131, i32 %241)  ; LegacyF16ToF32(value)
  %243 = lshr i32 %239, 7
  %244 = and i32 %243, 32752
  %245 = call float @dx.op.legacyF16ToF32(i32 131, i32 %244)  ; LegacyF16ToF32(value)
  %246 = lshr i32 %239, 22
  %247 = shl nuw nsw i32 %246, 5
  %248 = call float @dx.op.legacyF16ToF32(i32 131, i32 %247)  ; LegacyF16ToF32(value)
  %249 = add i32 %60, 216
  %250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %249, i32 undef)  ; BufferLoad(srv,index,wot)
  %251 = extractvalue %dx.types.ResRet.i32 %250, 0
  %252 = and i32 %251, 255
  %253 = uitofp i32 %252 to float
  %254 = fmul fast float %253, 0x3F70101020000000
  %255 = lshr i32 %251, 8
  %256 = and i32 %255, 255
  %257 = uitofp i32 %256 to float
  %258 = fmul fast float %257, 0x3F70101020000000
  %259 = lshr i32 %251, 16
  %260 = and i32 %259, 255
  %261 = uitofp i32 %260 to float
  %262 = fmul fast float %261, 0x3F70101020000000
  %263 = add i32 %60, 36
  %264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %263, i32 undef)  ; BufferLoad(srv,index,wot)
  %265 = extractvalue %dx.types.ResRet.i32 %264, 0
  %266 = and i32 %265, 65535
  %267 = call float @dx.op.legacyF16ToF32(i32 131, i32 %266)  ; LegacyF16ToF32(value)
  %268 = lshr i32 %265, 16
  %269 = call float @dx.op.legacyF16ToF32(i32 131, i32 %268)  ; LegacyF16ToF32(value)
  %270 = add i32 %60, 288
  %271 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %270, i32 undef)  ; BufferLoad(srv,index,wot)
  %272 = extractvalue %dx.types.ResRet.i32 %271, 0
  %273 = and i32 %272, 65535
  %274 = call float @dx.op.legacyF16ToF32(i32 131, i32 %273)  ; LegacyF16ToF32(value)
  %275 = lshr i32 %272, 16
  %276 = call float @dx.op.legacyF16ToF32(i32 131, i32 %275)  ; LegacyF16ToF32(value)
  %277 = fmul fast float %274, 0x3F50624DE0000000
  %278 = fmul fast float %276, 0x3F50624DE0000000
  %279 = add i32 %60, 172
  %280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %279, i32 undef)  ; BufferLoad(srv,index,wot)
  %281 = extractvalue %dx.types.ResRet.i32 %280, 0
  %282 = shl i32 %281, 4
  %283 = and i32 %282, 32752
  %284 = call float @dx.op.legacyF16ToF32(i32 131, i32 %283)  ; LegacyF16ToF32(value)
  %285 = lshr i32 %281, 7
  %286 = and i32 %285, 32752
  %287 = call float @dx.op.legacyF16ToF32(i32 131, i32 %286)  ; LegacyF16ToF32(value)
  %288 = lshr i32 %281, 22
  %289 = shl nuw nsw i32 %288, 5
  %290 = call float @dx.op.legacyF16ToF32(i32 131, i32 %289)  ; LegacyF16ToF32(value)
  %291 = add i32 %60, 232
  %292 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %291, i32 undef)  ; BufferLoad(srv,index,wot)
  %293 = extractvalue %dx.types.ResRet.i32 %292, 0
  %294 = and i32 %293, 255
  %295 = uitofp i32 %294 to float
  %296 = fmul fast float %295, 0x3F70101020000000
  %297 = lshr i32 %293, 8
  %298 = and i32 %297, 255
  %299 = uitofp i32 %298 to float
  %300 = fmul fast float %299, 0x3F70101020000000
  %301 = lshr i32 %293, 16
  %302 = and i32 %301, 255
  %303 = uitofp i32 %302 to float
  %304 = fmul fast float %303, 0x3F70101020000000
  %305 = add i32 %60, 52
  %306 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %305, i32 undef)  ; BufferLoad(srv,index,wot)
  %307 = extractvalue %dx.types.ResRet.i32 %306, 0
  %308 = and i32 %307, 65535
  %309 = call float @dx.op.legacyF16ToF32(i32 131, i32 %308)  ; LegacyF16ToF32(value)
  %310 = lshr i32 %307, 16
  %311 = call float @dx.op.legacyF16ToF32(i32 131, i32 %310)  ; LegacyF16ToF32(value)
  %312 = add i32 %60, 304
  %313 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %312, i32 undef)  ; BufferLoad(srv,index,wot)
  %314 = extractvalue %dx.types.ResRet.i32 %313, 0
  %315 = and i32 %314, 65535
  %316 = call float @dx.op.legacyF16ToF32(i32 131, i32 %315)  ; LegacyF16ToF32(value)
  %317 = lshr i32 %314, 16
  %318 = call float @dx.op.legacyF16ToF32(i32 131, i32 %317)  ; LegacyF16ToF32(value)
  %319 = fmul fast float %316, 0x3F50624DE0000000
  %320 = fmul fast float %318, 0x3F50624DE0000000
  %321 = add i32 %60, 188
  %322 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %321, i32 undef)  ; BufferLoad(srv,index,wot)
  %323 = extractvalue %dx.types.ResRet.i32 %322, 0
  %324 = shl i32 %323, 4
  %325 = and i32 %324, 32752
  %326 = call float @dx.op.legacyF16ToF32(i32 131, i32 %325)  ; LegacyF16ToF32(value)
  %327 = lshr i32 %323, 7
  %328 = and i32 %327, 32752
  %329 = call float @dx.op.legacyF16ToF32(i32 131, i32 %328)  ; LegacyF16ToF32(value)
  %330 = lshr i32 %323, 22
  %331 = shl nuw nsw i32 %330, 5
  %332 = call float @dx.op.legacyF16ToF32(i32 131, i32 %331)  ; LegacyF16ToF32(value)
  %333 = add i32 %60, 248
  %334 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %333, i32 undef)  ; BufferLoad(srv,index,wot)
  %335 = extractvalue %dx.types.ResRet.i32 %334, 0
  %336 = and i32 %335, 255
  %337 = uitofp i32 %336 to float
  %338 = fmul fast float %337, 0x3F70101020000000
  %339 = lshr i32 %335, 8
  %340 = and i32 %339, 255
  %341 = uitofp i32 %340 to float
  %342 = fmul fast float %341, 0x3F70101020000000
  %343 = lshr i32 %335, 16
  %344 = and i32 %343, 255
  %345 = uitofp i32 %344 to float
  %346 = fmul fast float %345, 0x3F70101020000000
  %347 = add i32 %60, 68
  %348 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %347, i32 undef)  ; BufferLoad(srv,index,wot)
  %349 = extractvalue %dx.types.ResRet.i32 %348, 0
  %350 = and i32 %349, 65535
  %351 = call float @dx.op.legacyF16ToF32(i32 131, i32 %350)  ; LegacyF16ToF32(value)
  %352 = lshr i32 %349, 16
  %353 = call float @dx.op.legacyF16ToF32(i32 131, i32 %352)  ; LegacyF16ToF32(value)
  %354 = add i32 %60, 320
  %355 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %354, i32 undef)  ; BufferLoad(srv,index,wot)
  %356 = extractvalue %dx.types.ResRet.i32 %355, 0
  %357 = and i32 %356, 65535
  %358 = call float @dx.op.legacyF16ToF32(i32 131, i32 %357)  ; LegacyF16ToF32(value)
  %359 = lshr i32 %356, 16
  %360 = call float @dx.op.legacyF16ToF32(i32 131, i32 %359)  ; LegacyF16ToF32(value)
  %361 = fmul fast float %358, 0x3F50624DE0000000
  %362 = fmul fast float %360, 0x3F50624DE0000000
  %363 = add i32 %60, 204
  %364 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %363, i32 undef)  ; BufferLoad(srv,index,wot)
  %365 = extractvalue %dx.types.ResRet.i32 %364, 0
  %366 = shl i32 %365, 4
  %367 = and i32 %366, 32752
  %368 = call float @dx.op.legacyF16ToF32(i32 131, i32 %367)  ; LegacyF16ToF32(value)
  %369 = lshr i32 %365, 7
  %370 = and i32 %369, 32752
  %371 = call float @dx.op.legacyF16ToF32(i32 131, i32 %370)  ; LegacyF16ToF32(value)
  %372 = lshr i32 %365, 22
  %373 = shl nuw nsw i32 %372, 5
  %374 = call float @dx.op.legacyF16ToF32(i32 131, i32 %373)  ; LegacyF16ToF32(value)
  %375 = add i32 %60, 264
  %376 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %375, i32 undef)  ; BufferLoad(srv,index,wot)
  %377 = extractvalue %dx.types.ResRet.i32 %376, 0
  %378 = and i32 %377, 255
  %379 = uitofp i32 %378 to float
  %380 = fmul fast float %379, 0x3F70101020000000
  %381 = lshr i32 %377, 8
  %382 = and i32 %381, 255
  %383 = uitofp i32 %382 to float
  %384 = fmul fast float %383, 0x3F70101020000000
  %385 = lshr i32 %377, 16
  %386 = and i32 %385, 255
  %387 = uitofp i32 %386 to float
  %388 = fmul fast float %387, 0x3F70101020000000
  %389 = add i32 %60, 84
  %390 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %389, i32 undef)  ; BufferLoad(srv,index,wot)
  %391 = extractvalue %dx.types.ResRet.i32 %390, 0
  %392 = and i32 %391, 65535
  %393 = call float @dx.op.legacyF16ToF32(i32 131, i32 %392)  ; LegacyF16ToF32(value)
  %394 = lshr i32 %391, 16
  %395 = call float @dx.op.legacyF16ToF32(i32 131, i32 %394)  ; LegacyF16ToF32(value)
  %396 = add i32 %60, 336
  %397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %396, i32 undef)  ; BufferLoad(srv,index,wot)
  %398 = extractvalue %dx.types.ResRet.i32 %397, 0
  %399 = and i32 %398, 65535
  %400 = call float @dx.op.legacyF16ToF32(i32 131, i32 %399)  ; LegacyF16ToF32(value)
  %401 = lshr i32 %398, 16
  %402 = call float @dx.op.legacyF16ToF32(i32 131, i32 %401)  ; LegacyF16ToF32(value)
  %403 = fmul fast float %400, 0x3F50624DE0000000
  %404 = fmul fast float %402, 0x3F50624DE0000000
  %405 = add i32 %60, 348
  %406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %405, i32 undef)  ; BufferLoad(srv,index,wot)
  %407 = extractvalue %dx.types.ResRet.i32 %406, 0
  %408 = and i32 %407, 32
  %409 = icmp eq i32 %408, 0
  %410 = and i32 %407, 64
  %411 = icmp eq i32 %410, 0
  %412 = and i32 %407, 128
  %413 = icmp eq i32 %412, 0
  %414 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %405, i32 undef)  ; BufferLoad(srv,index,wot)
  %415 = extractvalue %dx.types.ResRet.i32 %414, 0
  %416 = and i32 %415, 2
  %417 = icmp eq i32 %416, 0
  br i1 %417, label %433, label %418

; <label>:418                                     ; preds = %224
  %419 = add i32 %60, 472
  %420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %419, i32 undef)  ; BufferLoad(srv,index,wot)
  %421 = extractvalue %dx.types.ResRet.i32 %420, 0
  %422 = add i32 %421, 0
  %423 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %422, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %424 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %423, %dx.types.Handle %106, float %88, float %89, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %425 = extractvalue %dx.types.ResRet.f32 %424, 0
  %426 = extractvalue %dx.types.ResRet.f32 %424, 1
  %427 = extractvalue %dx.types.ResRet.f32 %424, 2
  %428 = extractvalue %dx.types.ResRet.f32 %424, 3
  %429 = fmul fast float %428, %90
  %430 = fmul fast float %425, %91
  %431 = fmul fast float %426, %92
  %432 = fmul fast float %427, %93
  br label %433

; <label>:433                                     ; preds = %418, %224
  %434 = phi float [ %93, %224 ], [ %432, %418 ]
  %435 = phi float [ %92, %224 ], [ %431, %418 ]
  %436 = phi float [ %91, %224 ], [ %430, %418 ]
  %437 = phi float [ %90, %224 ], [ %429, %418 ]
  %438 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %405, i32 undef)  ; BufferLoad(srv,index,wot)
  %439 = extractvalue %dx.types.ResRet.i32 %438, 0
  %440 = and i32 %439, 2
  %441 = icmp eq i32 %440, 0
  br i1 %441, label %461, label %442

; <label>:442                                     ; preds = %433
  %443 = add i32 %60, 44
  %444 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %443, i32 undef)  ; BufferLoad(srv,index,wot)
  %445 = extractvalue %dx.types.ResRet.i32 %444, 0
  %446 = and i32 %445, 1
  %447 = icmp ne i32 %446, 0
  %448 = select i1 %447, float %436, float 1.000000e+00
  %449 = add i32 %60, 60
  %450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %449, i32 undef)  ; BufferLoad(srv,index,wot)
  %451 = extractvalue %dx.types.ResRet.i32 %450, 0
  %452 = and i32 %451, 1
  %453 = icmp ne i32 %452, 0
  %454 = select i1 %453, float %435, float 1.000000e+00
  %455 = add i32 %60, 76
  %456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %455, i32 undef)  ; BufferLoad(srv,index,wot)
  %457 = extractvalue %dx.types.ResRet.i32 %456, 0
  %458 = and i32 %457, 1
  %459 = icmp ne i32 %458, 0
  %460 = select i1 %459, float %434, float 1.000000e+00
  br label %461

; <label>:461                                     ; preds = %442, %433
  %462 = phi float [ %434, %433 ], [ %460, %442 ]
  %463 = phi float [ %435, %433 ], [ %454, %442 ]
  %464 = phi float [ %436, %433 ], [ %448, %442 ]
  %465 = lshr i32 %439, 20
  %466 = and i32 %465, 3
  %467 = add nuw nsw i32 %466, 1
  %468 = add i32 %60, 24
  %469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %468, i32 undef)  ; BufferLoad(srv,index,wot)
  %470 = extractvalue %dx.types.ResRet.i32 %469, 0
  %471 = add i32 %60, 28
  %472 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %471, i32 undef)  ; BufferLoad(srv,index,wot)
  %473 = extractvalue %dx.types.ResRet.i32 %472, 0
  %474 = or i32 %473, %470
  %475 = icmp eq i32 %474, 0
  br i1 %475, label %1178, label %476

; <label>:476                                     ; preds = %461
  %477 = and i32 %470, 262144
  %478 = icmp ne i32 %477, 0
  %479 = select i1 %478, float %63, float 1.000000e+00
  %480 = select i1 %478, float %64, float 0.000000e+00
  %481 = select i1 %478, float %65, float 0.000000e+00
  %482 = select i1 %478, float %66, float 1.000000e+00
  %483 = select i1 %478, float %67, float %88
  %484 = select i1 %478, float %68, float %89
  %485 = add i32 %60, 284
  %486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %485, i32 undef)  ; BufferLoad(srv,index,wot)
  %487 = extractvalue %dx.types.ResRet.i32 %486, 0
  %488 = lshr i32 %487, 16
  %489 = call float @dx.op.legacyF16ToF32(i32 131, i32 %488)  ; LegacyF16ToF32(value)
  %490 = fmul fast float %489, 0x3F50624DE0000000
  %491 = add i32 %60, 88
  %492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %491, i32 undef)  ; BufferLoad(srv,index,wot)
  %493 = extractvalue %dx.types.ResRet.i32 %492, 0
  %494 = lshr i32 %493, 16
  %495 = and i32 %494, 255
  %496 = lshr i32 %493, 24
  %497 = add i32 %60, 292
  %498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %497, i32 undef)  ; BufferLoad(srv,index,wot)
  %499 = extractvalue %dx.types.ResRet.i32 %498, 0
  %500 = and i32 %499, 65535
  %501 = call float @dx.op.legacyF16ToF32(i32 131, i32 %500)  ; LegacyF16ToF32(value)
  %502 = lshr i32 %499, 16
  %503 = call float @dx.op.legacyF16ToF32(i32 131, i32 %502)  ; LegacyF16ToF32(value)
  %504 = add i32 %60, 32
  %505 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %504, i32 undef)  ; BufferLoad(srv,index,wot)
  %506 = extractvalue %dx.types.ResRet.i32 %505, 0
  %507 = lshr i32 %506, 22
  %508 = shl nuw nsw i32 %507, 5
  %509 = call float @dx.op.legacyF16ToF32(i32 131, i32 %508)  ; LegacyF16ToF32(value)
  %510 = shl i32 %506, 4
  %511 = and i32 %510, 32752
  %512 = call float @dx.op.legacyF16ToF32(i32 131, i32 %511)  ; LegacyF16ToF32(value)
  %513 = lshr i32 %506, 7
  %514 = and i32 %513, 32752
  %515 = call float @dx.op.legacyF16ToF32(i32 131, i32 %514)  ; LegacyF16ToF32(value)
  %516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %517 = extractvalue %dx.types.CBufRet.f32 %516, 3
  %518 = fmul fast float %517, 1.000000e+03
  %519 = fmul fast float %277, %518
  %520 = call float @dx.op.unary.f32(i32 22, float %519)  ; Frc(value)
  %521 = fadd fast float %520, %267
  %522 = fmul fast float %278, %518
  %523 = call float @dx.op.unary.f32(i32 22, float %522)  ; Frc(value)
  %524 = fadd fast float %523, %269
  %525 = fmul fast float %490, %518
  %526 = call float @dx.op.unary.f32(i32 22, float %525)  ; Frc(value)
  %527 = fmul fast float %526, 0x401921FB60000000
  %528 = fadd fast float %527, %509
  %529 = call float @dx.op.unary.f32(i32 13, float %528)  ; Sin(value)
  %530 = call float @dx.op.unary.f32(i32 12, float %528)  ; Cos(value)
  %531 = fsub fast float -0.000000e+00, %529
  %532 = fadd fast float %483, -5.000000e-01
  %533 = fadd fast float %484, -5.000000e-01
  %534 = fmul fast float %501, %532
  %535 = fmul fast float %503, %533
  %536 = fadd fast float %534, 5.000000e-01
  %537 = fadd fast float %535, 5.000000e-01
  %538 = fmul fast float %512, %536
  %539 = fmul fast float %515, %537
  %540 = fmul fast float %530, %538
  %541 = call float @dx.op.tertiary.f32(i32 46, float %531, float %539, float %540)  ; FMad(a,b,c)
  %542 = fmul fast float %529, %538
  %543 = call float @dx.op.tertiary.f32(i32 46, float %530, float %539, float %542)  ; FMad(a,b,c)
  %544 = fadd fast float %521, %541
  %545 = fadd fast float %524, %543
  %546 = icmp ugt i32 %495, 1
  %547 = icmp ugt i32 %493, 33554431
  %548 = or i1 %547, %546
  br i1 %548, label %549, label %574

; <label>:549                                     ; preds = %476
  %550 = add i32 %60, 228
  %551 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %550, i32 undef)  ; BufferLoad(srv,index,wot)
  %552 = extractvalue %dx.types.ResRet.i32 %551, 0
  %553 = lshr i32 %552, 16
  %554 = call float @dx.op.legacyF16ToF32(i32 131, i32 %553)  ; LegacyF16ToF32(value)
  %555 = fmul fast float %517, %554
  %556 = call float @dx.op.unary.f32(i32 22, float %555)  ; Frc(value)
  %557 = mul nuw nsw i32 %495, %496
  %558 = uitofp i32 %557 to float
  %559 = fmul fast float %556, %558
  %560 = call float @dx.op.unary.f32(i32 27, float %559)  ; Round_ni(value)
  %561 = fptoui float %560 to i32
  %562 = urem i32 %561, %495
  %563 = udiv i32 %561, %496
  %564 = call float @dx.op.unary.f32(i32 22, float %544)  ; Frc(value)
  %565 = call float @dx.op.unary.f32(i32 22, float %545)  ; Frc(value)
  %566 = uitofp i32 %562 to float
  %567 = uitofp i32 %563 to float
  %568 = fadd fast float %564, %566
  %569 = fadd fast float %565, %567
  %570 = uitofp i32 %495 to float
  %571 = uitofp i32 %496 to float
  %572 = fdiv fast float %568, %570
  %573 = fdiv fast float %569, %571
  br label %574

; <label>:574                                     ; preds = %549, %476
  %575 = phi float [ %572, %549 ], [ %544, %476 ]
  %576 = phi float [ %573, %549 ], [ %545, %476 ]
  %577 = and i32 %470, 16777216
  %578 = icmp eq i32 %577, 0
  br i1 %578, label %688, label %579

; <label>:579                                     ; preds = %574
  %580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %581 = extractvalue %dx.types.CBufRet.f32 %580, 0
  %582 = extractvalue %dx.types.CBufRet.f32 %580, 1
  %583 = extractvalue %dx.types.CBufRet.f32 %580, 2
  %584 = fadd fast float %581, %164
  %585 = fadd fast float %582, %165
  %586 = fadd fast float %583, %166
  %587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %588 = extractvalue %dx.types.CBufRet.f32 %587, 0
  %589 = call float @dx.op.unary.f32(i32 7, float %588)  ; Saturate(value)
  %590 = icmp eq i32 %61, 65535
  br i1 %590, label %685, label %591

; <label>:591                                     ; preds = %579
  %592 = lshr i32 %61, 1
  %593 = shl i32 %592, 2
  %594 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %593, i32 undef)  ; BufferLoad(srv,index,wot)
  %595 = extractvalue %dx.types.ResRet.i32 %594, 0
  %596 = and i32 %61, 1
  %597 = icmp ne i32 %596, 0
  %598 = lshr i32 %595, 16
  %599 = and i32 %595, 65535
  %600 = select i1 %597, i32 %598, i32 %599
  %601 = icmp eq i32 %600, 65535
  br i1 %601, label %681, label %602

; <label>:602                                     ; preds = %591
  %603 = mul nuw nsw i32 %600, 40
  %604 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %603, i32 undef)  ; BufferLoad(srv,index,wot)
  %605 = extractvalue %dx.types.ResRet.f32 %604, 0
  %606 = extractvalue %dx.types.ResRet.f32 %604, 1
  %607 = extractvalue %dx.types.ResRet.f32 %604, 2
  %608 = add nuw nsw i32 %603, 12
  %609 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %608, i32 undef)  ; BufferLoad(srv,index,wot)
  %610 = extractvalue %dx.types.ResRet.f32 %609, 0
  %611 = extractvalue %dx.types.ResRet.f32 %609, 1
  %612 = extractvalue %dx.types.ResRet.f32 %609, 2
  %613 = add nuw nsw i32 %603, 24
  %614 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %613, i32 undef)  ; BufferLoad(srv,index,wot)
  %615 = extractvalue %dx.types.ResRet.f32 %614, 0
  %616 = extractvalue %dx.types.ResRet.f32 %614, 1
  %617 = extractvalue %dx.types.ResRet.f32 %614, 2
  %618 = add nuw nsw i32 %603, 36
  %619 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %618, i32 undef)  ; BufferLoad(srv,index,wot)
  %620 = extractvalue %dx.types.ResRet.f32 %619, 0
  %621 = fsub fast float %584, %605
  %622 = fsub fast float %585, %606
  %623 = fsub fast float %586, %607
  %624 = fmul fast float %620, %621
  %625 = fmul fast float %620, %622
  %626 = fmul fast float %620, %623
  %627 = call float @dx.op.unary.f32(i32 27, float %624)  ; Round_ni(value)
  %628 = call float @dx.op.unary.f32(i32 27, float %625)  ; Round_ni(value)
  %629 = call float @dx.op.unary.f32(i32 27, float %626)  ; Round_ni(value)
  %630 = fadd fast float %627, 5.000000e-01
  %631 = fadd fast float %628, 5.000000e-01
  %632 = fadd fast float %629, 5.000000e-01
  %633 = fmul fast float %630, %610
  %634 = fmul fast float %631, %611
  %635 = fmul fast float %632, %612
  %636 = shl i32 %61, 2
  %637 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %636, i32 undef)  ; BufferLoad(srv,index,wot)
  %638 = extractvalue %dx.types.ResRet.i32 %637, 0
  %639 = add i32 %638, 0
  %640 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %639, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %641 = call float @dx.op.unary.f32(i32 22, float %633)  ; Frc(value)
  %642 = call float @dx.op.unary.f32(i32 22, float %634)  ; Frc(value)
  %643 = call float @dx.op.unary.f32(i32 22, float %635)  ; Frc(value)
  %644 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %640, %dx.types.Handle %47, float %641, float %642, float %643, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %645 = extractvalue %dx.types.ResRet.f32 %644, 0
  %646 = extractvalue %dx.types.ResRet.f32 %644, 1
  %647 = extractvalue %dx.types.ResRet.f32 %644, 2
  %648 = fmul fast float %645, 1.023000e+03
  %649 = fmul fast float %646, 1.023000e+03
  %650 = fmul fast float %647, 1.023000e+03
  %651 = fadd fast float %648, 5.000000e-01
  %652 = fadd fast float %649, 5.000000e-01
  %653 = fadd fast float %650, 5.000000e-01
  %654 = call float @dx.op.unary.f32(i32 27, float %651)  ; Round_ni(value)
  %655 = call float @dx.op.unary.f32(i32 27, float %652)  ; Round_ni(value)
  %656 = call float @dx.op.unary.f32(i32 27, float %653)  ; Round_ni(value)
  %657 = fsub fast float %624, %627
  %658 = fsub fast float %625, %628
  %659 = fsub fast float %626, %629
  %660 = fmul fast float %657, 7.500000e-01
  %661 = fmul fast float %658, 7.500000e-01
  %662 = fmul fast float %659, 7.500000e-01
  %663 = fadd fast float %627, 1.250000e-01
  %664 = fadd fast float %663, %660
  %665 = fadd fast float %664, %654
  %666 = fadd fast float %628, 1.250000e-01
  %667 = fadd fast float %666, %661
  %668 = fadd fast float %667, %655
  %669 = fadd fast float %629, 1.250000e-01
  %670 = fadd fast float %669, %662
  %671 = fadd fast float %670, %656
  %672 = fmul fast float %665, %615
  %673 = fmul fast float %668, %616
  %674 = fmul fast float %671, %617
  %675 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %636, i32 undef)  ; BufferLoad(srv,index,wot)
  %676 = extractvalue %dx.types.ResRet.i32 %675, 0
  %677 = add i32 %676, 0
  %678 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %677, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %679 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %678, %dx.types.Handle %45, float %672, float %673, float %674, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %680 = extractvalue %dx.types.ResRet.f32 %679, 0
  br label %681

; <label>:681                                     ; preds = %602, %591
  %682 = phi float [ %680, %602 ], [ -1.000000e+00, %591 ]
  %683 = fadd fast float %682, %589
  %684 = call float @dx.op.unary.f32(i32 7, float %683)  ; Saturate(value)
  br label %685

; <label>:685                                     ; preds = %681, %579
  %686 = phi float [ %684, %681 ], [ %589, %579 ]
  %687 = fmul fast float %686, %437
  br label %688

; <label>:688                                     ; preds = %685, %574
  %689 = phi float [ %687, %685 ], [ %437, %574 ]
  %690 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %468, i32 undef)  ; BufferLoad(srv,index,wot)
  %691 = extractvalue %dx.types.ResRet.i32 %690, 0
  %692 = and i32 %691, 256
  %693 = icmp eq i32 %692, 0
  br i1 %693, label %740, label %694

; <label>:694                                     ; preds = %688
  %695 = add i32 %60, 424
  %696 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %695, i32 undef)  ; BufferLoad(srv,index,wot)
  %697 = extractvalue %dx.types.ResRet.i32 %696, 0
  %698 = add i32 %697, 0
  %699 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %698, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %700 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %699, %dx.types.Handle %106, float %575, float %576, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %701 = extractvalue %dx.types.ResRet.f32 %700, 0
  %702 = add i32 %60, 100
  %703 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %702, i32 undef)  ; BufferLoad(srv,index,wot)
  %704 = extractvalue %dx.types.ResRet.i32 %703, 0
  %705 = shl i32 %704, 4
  %706 = and i32 %705, 32752
  %707 = call float @dx.op.legacyF16ToF32(i32 131, i32 %706)  ; LegacyF16ToF32(value)
  %708 = lshr i32 %704, 7
  %709 = and i32 %708, 32752
  %710 = call float @dx.op.legacyF16ToF32(i32 131, i32 %709)  ; LegacyF16ToF32(value)
  %711 = fsub fast float 1.000000e+00, %689
  %712 = call float @dx.op.binary.f32(i32 35, float %711, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %713 = bitcast float %689 to i32
  %714 = sitofp i32 %713 to float
  %715 = fadd fast float %714, 0xC1CFBF8940000000
  %716 = fmul fast float %710, %715
  %717 = fadd fast float %716, 0x41CFBF8940000000
  %718 = fptosi float %717 to i32
  %719 = bitcast i32 %718 to float
  %720 = bitcast float %712 to i32
  %721 = sitofp i32 %720 to float
  %722 = fadd fast float %721, 0xC1CFBF8940000000
  %723 = fmul fast float %722, %710
  %724 = fadd fast float %723, 0x41CFBF8940000000
  %725 = fptosi float %724 to i32
  %726 = bitcast i32 %725 to float
  %727 = fmul fast float %719, %707
  %728 = fmul fast float %726, %707
  %729 = fsub fast float %712, %727
  %730 = fadd fast float %728, %712
  %731 = call float @dx.op.unary.f32(i32 7, float %729)  ; Saturate(value)
  %732 = call float @dx.op.unary.f32(i32 7, float %730)  ; Saturate(value)
  %733 = fsub fast float %701, %731
  %734 = fsub fast float %732, %731
  %735 = bitcast float %734 to i32
  %736 = sub nsw i32 2129859010, %735
  %737 = bitcast i32 %736 to float
  %738 = fmul fast float %737, %733
  %739 = call float @dx.op.unary.f32(i32 7, float %738)  ; Saturate(value)
  br label %740

; <label>:740                                     ; preds = %694, %688
  %741 = phi float [ %739, %694 ], [ %689, %688 ]
  %742 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %468, i32 undef)  ; BufferLoad(srv,index,wot)
  %743 = extractvalue %dx.types.ResRet.i32 %742, 0
  %744 = and i32 %743, 128
  %745 = icmp eq i32 %744, 0
  br i1 %745, label %762, label %746

; <label>:746                                     ; preds = %740
  %747 = add i32 %60, 408
  %748 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %747, i32 undef)  ; BufferLoad(srv,index,wot)
  %749 = extractvalue %dx.types.ResRet.i32 %748, 0
  %750 = add i32 %749, 0
  %751 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %750, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %752 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %751, %dx.types.Handle %106, float %575, float %576, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %753 = extractvalue %dx.types.ResRet.f32 %752, 0
  %754 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %468, i32 undef)  ; BufferLoad(srv,index,wot)
  %755 = extractvalue %dx.types.ResRet.i32 %754, 0
  %756 = and i32 %755, 524288
  %757 = icmp ne i32 %756, 0
  %758 = fcmp fast ogt float %753, 0x3FE0101020000000
  %759 = select i1 %758, float 1.000000e+00, float 0.000000e+00
  %760 = select i1 %757, float %759, float %753
  %761 = fmul fast float %760, %741
  br label %762

; <label>:762                                     ; preds = %746, %740
  %763 = phi float [ %761, %746 ], [ %741, %740 ]
  %764 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %468, i32 undef)  ; BufferLoad(srv,index,wot)
  %765 = extractvalue %dx.types.ResRet.i32 %764, 0
  %766 = and i32 %765, 16
  %767 = icmp eq i32 %766, 0
  br i1 %767, label %966, label %768

; <label>:768                                     ; preds = %762
  %769 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %491, i32 undef)  ; BufferLoad(srv,index,wot)
  %770 = extractvalue %dx.types.ResRet.i32 %769, 0
  %771 = add i32 %60, 360
  %772 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %771, i32 undef)  ; BufferLoad(srv,index,wot)
  %773 = extractvalue %dx.types.ResRet.i32 %772, 0
  %774 = add i32 %773, 0
  %775 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %774, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %776 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %775, %dx.types.Handle %105, float %575, float %576, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %777 = extractvalue %dx.types.ResRet.f32 %776, 0
  %778 = extractvalue %dx.types.ResRet.f32 %776, 1
  %779 = extractvalue %dx.types.ResRet.f32 %776, 2
  %780 = extractvalue %dx.types.ResRet.f32 %776, 3
  %781 = and i32 %770, 255
  %782 = uitofp i32 %781 to float
  %783 = lshr i32 %770, 8
  %784 = and i32 %783, 255
  %785 = uitofp i32 %784 to float
  %786 = fmul fast float %780, %782
  %787 = fadd fast float %786, %785
  %788 = fmul fast float %787, 0x3F70101000000000
  %789 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %468, i32 undef)  ; BufferLoad(srv,index,wot)
  %790 = extractvalue %dx.types.ResRet.i32 %789, 0
  %791 = and i32 %790, 512
  %792 = icmp eq i32 %791, 0
  br i1 %792, label %801, label %793

; <label>:793                                     ; preds = %768
  %794 = add i32 %60, 440
  %795 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %794, i32 undef)  ; BufferLoad(srv,index,wot)
  %796 = extractvalue %dx.types.ResRet.i32 %795, 0
  %797 = add i32 %796, 0
  %798 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %797, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %799 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %798, %dx.types.Handle %106, float %575, float %576, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %800 = extractvalue %dx.types.ResRet.f32 %799, 0
  br label %801

; <label>:801                                     ; preds = %793, %768
  %802 = phi float [ %800, %793 ], [ 1.000000e+00, %768 ]
  %803 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %468, i32 undef)  ; BufferLoad(srv,index,wot)
  %804 = extractvalue %dx.types.ResRet.i32 %803, 0
  %805 = and i32 %804, 33554432
  %806 = icmp eq i32 %805, 0
  br i1 %806, label %913, label %807

; <label>:807                                     ; preds = %801
  %808 = add i32 %60, 224
  %809 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %808, i32 undef)  ; BufferLoad(srv,index,wot)
  %810 = extractvalue %dx.types.ResRet.i32 %809, 0
  %811 = and i32 %810, 65535
  %812 = call float @dx.op.legacyF16ToF32(i32 131, i32 %811)  ; LegacyF16ToF32(value)
  %813 = lshr i32 %810, 16
  %814 = call float @dx.op.legacyF16ToF32(i32 131, i32 %813)  ; LegacyF16ToF32(value)
  %815 = add i32 %60, 228
  %816 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %815, i32 undef)  ; BufferLoad(srv,index,wot)
  %817 = extractvalue %dx.types.ResRet.i32 %816, 0
  %818 = and i32 %817, 65535
  %819 = call float @dx.op.legacyF16ToF32(i32 131, i32 %818)  ; LegacyF16ToF32(value)
  %820 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %249, i32 undef)  ; BufferLoad(srv,index,wot)
  %821 = extractvalue %dx.types.ResRet.i32 %820, 0
  %822 = lshr i32 %821, 24
  %823 = uitofp i32 %822 to float
  %824 = fmul fast float %823, 0x3F70101020000000
  %825 = and i32 %821, 255
  %826 = uitofp i32 %825 to float
  %827 = fmul fast float %826, 0x3F70101020000000
  %828 = lshr i32 %821, 8
  %829 = and i32 %828, 255
  %830 = uitofp i32 %829 to float
  %831 = fmul fast float %830, 0x3F70101020000000
  %832 = lshr i32 %821, 16
  %833 = and i32 %832, 255
  %834 = uitofp i32 %833 to float
  %835 = fmul fast float %834, 0x3F70101020000000
  %836 = add i32 %60, 220
  %837 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %836, i32 undef)  ; BufferLoad(srv,index,wot)
  %838 = extractvalue %dx.types.ResRet.i32 %837, 0
  %839 = lshr i32 %838, 24
  %840 = uitofp i32 %839 to float
  %841 = fmul fast float %840, 0x3F70101020000000
  %842 = and i32 %838, 255
  %843 = uitofp i32 %842 to float
  %844 = fmul fast float %843, 0x3F70101020000000
  %845 = lshr i32 %838, 8
  %846 = and i32 %845, 255
  %847 = uitofp i32 %846 to float
  %848 = fmul fast float %847, 0x3F70101020000000
  %849 = lshr i32 %838, 16
  %850 = and i32 %849, 255
  %851 = uitofp i32 %850 to float
  %852 = fmul fast float %851, 0x3F70101020000000
  %853 = bitcast float %777 to i32
  %854 = ashr i32 %853, 1
  %855 = sub nsw i32 1597463174, %854
  %856 = bitcast i32 %855 to float
  %857 = fmul fast float %777, 5.000000e-01
  %858 = fmul fast float %856, %856
  %859 = fmul fast float %858, %857
  %860 = fsub fast float 1.500000e+00, %859
  %861 = fmul fast float %856, %777
  %862 = fmul fast float %861, %860
  %863 = bitcast float %778 to i32
  %864 = ashr i32 %863, 1
  %865 = sub nsw i32 1597463174, %864
  %866 = bitcast i32 %865 to float
  %867 = fmul fast float %778, 5.000000e-01
  %868 = fmul fast float %866, %866
  %869 = fmul fast float %868, %867
  %870 = fsub fast float 1.500000e+00, %869
  %871 = fmul fast float %866, %778
  %872 = fmul fast float %871, %870
  %873 = bitcast float %779 to i32
  %874 = ashr i32 %873, 1
  %875 = sub nsw i32 1597463174, %874
  %876 = bitcast i32 %875 to float
  %877 = fmul fast float %779, 5.000000e-01
  %878 = fmul fast float %876, %876
  %879 = fmul fast float %878, %877
  %880 = fsub fast float 1.500000e+00, %879
  %881 = fmul fast float %876, %779
  %882 = fmul fast float %881, %880
  %883 = fsub fast float %862, %844
  %884 = fsub fast float %872, %848
  %885 = fsub fast float %882, %852
  %886 = fmul fast float %883, %812
  %887 = fmul fast float %884, %814
  %888 = fmul fast float %885, %819
  %889 = fadd fast float %886, %827
  %890 = fadd fast float %887, %831
  %891 = fadd fast float %888, %835
  %892 = call float @dx.op.unary.f32(i32 7, float %889)  ; Saturate(value)
  %893 = call float @dx.op.unary.f32(i32 7, float %890)  ; Saturate(value)
  %894 = call float @dx.op.unary.f32(i32 7, float %891)  ; Saturate(value)
  %895 = fmul fast float %892, %892
  %896 = fmul fast float %893, %893
  %897 = fmul fast float %894, %894
  %898 = fsub fast float %895, %777
  %899 = fsub fast float %896, %778
  %900 = fsub fast float %897, %779
  %901 = fmul fast float %898, %802
  %902 = fmul fast float %899, %802
  %903 = fmul fast float %900, %802
  %904 = fadd fast float %901, %777
  %905 = fadd fast float %902, %778
  %906 = fadd fast float %903, %779
  %907 = fadd fast float %824, %788
  %908 = fsub fast float %907, %841
  %909 = call float @dx.op.unary.f32(i32 7, float %908)  ; Saturate(value)
  %910 = fsub fast float %909, %788
  %911 = fmul fast float %910, %802
  %912 = fadd fast float %911, %788
  br label %966

; <label>:913                                     ; preds = %801
  %914 = and i32 %804, 134217728
  %915 = icmp eq i32 %914, 0
  br i1 %915, label %950, label %916

; <label>:916                                     ; preds = %913
  %917 = call float @dx.op.unary.f32(i32 24, float %254)  ; Sqrt(value)
  %918 = call float @dx.op.unary.f32(i32 24, float %258)  ; Sqrt(value)
  %919 = call float @dx.op.unary.f32(i32 24, float %262)  ; Sqrt(value)
  %920 = fadd fast float %917, -5.000000e-01
  %921 = fadd fast float %918, -5.000000e-01
  %922 = fadd fast float %919, -5.000000e-01
  %923 = fmul fast float %920, %802
  %924 = fmul fast float %921, %802
  %925 = fmul fast float %922, %802
  %926 = fadd fast float %923, 5.000000e-01
  %927 = fadd fast float %924, 5.000000e-01
  %928 = fadd fast float %925, 5.000000e-01
  %929 = call float @dx.op.unary.f32(i32 24, float %777)  ; Sqrt(value)
  %930 = call float @dx.op.unary.f32(i32 24, float %778)  ; Sqrt(value)
  %931 = call float @dx.op.unary.f32(i32 24, float %779)  ; Sqrt(value)
  %932 = fmul fast float %926, 2.000000e+00
  %933 = fsub fast float 1.000000e+00, %932
  %934 = fmul fast float %933, %929
  %935 = fadd fast float %934, %932
  %936 = fmul fast float %935, %929
  %937 = fmul fast float %927, 2.000000e+00
  %938 = fsub fast float 1.000000e+00, %937
  %939 = fmul fast float %938, %930
  %940 = fadd fast float %939, %937
  %941 = fmul fast float %940, %930
  %942 = fmul fast float %928, 2.000000e+00
  %943 = fsub fast float 1.000000e+00, %942
  %944 = fmul fast float %943, %931
  %945 = fadd fast float %944, %942
  %946 = fmul fast float %945, %931
  %947 = fmul fast float %936, %936
  %948 = fmul fast float %941, %941
  %949 = fmul fast float %946, %946
  br label %966

; <label>:950                                     ; preds = %913
  %951 = fmul fast float %254, %254
  %952 = fmul fast float %258, %258
  %953 = fmul fast float %262, %262
  %954 = fadd fast float %951, -1.000000e+00
  %955 = fadd fast float %952, -1.000000e+00
  %956 = fadd fast float %953, -1.000000e+00
  %957 = fmul fast float %802, %954
  %958 = fmul fast float %802, %955
  %959 = fmul fast float %802, %956
  %960 = fadd fast float %957, 1.000000e+00
  %961 = fadd fast float %958, 1.000000e+00
  %962 = fadd fast float %959, 1.000000e+00
  %963 = fmul fast float %960, %777
  %964 = fmul fast float %961, %778
  %965 = fmul fast float %962, %779
  br label %966

; <label>:966                                     ; preds = %950, %916, %807, %762
  %967 = phi float [ %912, %807 ], [ %788, %916 ], [ %788, %950 ], [ 0x3FA23C0BE0000000, %762 ]
  %968 = phi float [ %904, %807 ], [ %947, %916 ], [ %963, %950 ], [ 1.000000e+00, %762 ]
  %969 = phi float [ %905, %807 ], [ %948, %916 ], [ %964, %950 ], [ 1.000000e+00, %762 ]
  %970 = phi float [ %906, %807 ], [ %949, %916 ], [ %965, %950 ], [ 1.000000e+00, %762 ]
  %971 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %972 = extractvalue %dx.types.CBufRet.i32 %971, 1
  %973 = and i32 %972, 1
  %974 = icmp ne i32 %973, 0
  %975 = add i32 %60, 356
  %976 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %975, i32 undef)  ; BufferLoad(srv,index,wot)
  %977 = extractvalue %dx.types.ResRet.i32 %976, 0
  %978 = and i32 %977, 32
  %979 = icmp ne i32 %978, 0
  %980 = and i1 %974, %979
  %981 = select i1 %980, float 1.000000e+00, float %968
  %982 = select i1 %980, float 0x3FD3333340000000, float %969
  %983 = select i1 %980, float 0x3FD3333340000000, float %970
  %984 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %468, i32 undef)  ; BufferLoad(srv,index,wot)
  %985 = extractvalue %dx.types.ResRet.i32 %984, 0
  %986 = and i32 %985, 32
  %987 = icmp eq i32 %986, 0
  br i1 %987, label %1060, label %988

; <label>:988                                     ; preds = %966
  %989 = add i32 %60, 92
  %990 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %989, i32 undef)  ; BufferLoad(srv,index,wot)
  %991 = extractvalue %dx.types.ResRet.i32 %990, 0
  %992 = add i32 %60, 376
  %993 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %992, i32 undef)  ; BufferLoad(srv,index,wot)
  %994 = extractvalue %dx.types.ResRet.i32 %993, 0
  %995 = add i32 %994, 0
  %996 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %995, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %997 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %996, %dx.types.Handle %105, float %575, float %576, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %998 = extractvalue %dx.types.ResRet.f32 %997, 0
  %999 = extractvalue %dx.types.ResRet.f32 %997, 1
  %1000 = extractvalue %dx.types.ResRet.f32 %997, 2
  %1001 = extractvalue %dx.types.ResRet.f32 %997, 3
  %1002 = and i32 %991, 255
  %1003 = uitofp i32 %1002 to float
  %1004 = lshr i32 %991, 8
  %1005 = and i32 %1004, 255
  %1006 = uitofp i32 %1005 to float
  %1007 = lshr i32 %991, 16
  %1008 = and i32 %1007, 255
  %1009 = uitofp i32 %1008 to float
  %1010 = fmul fast float %1009, 0x3F70101000000000
  %1011 = fmul fast float %998, %1003
  %1012 = fadd fast float %1011, %1006
  %1013 = fmul fast float %1012, 0x3F70101000000000
  %1014 = fadd fast float %999, -5.000000e-01
  %1015 = fadd fast float %1001, -5.000000e-01
  %1016 = fmul fast float %1014, %1010
  %1017 = fmul fast float %1015, %1010
  %1018 = fadd fast float %1016, 5.000000e-01
  %1019 = fadd fast float %1017, 5.000000e-01
  %1020 = fmul fast float %1018, 2.000000e+00
  %1021 = fadd fast float %1020, -1.000000e+00
  %1022 = fmul fast float %1019, 2.000000e+00
  %1023 = fadd fast float %1022, -1.000000e+00
  %1024 = fadd fast float %1021, %1023
  %1025 = fmul fast float %1024, 5.000000e-01
  %1026 = fsub fast float %1021, %1023
  %1027 = fmul fast float %1026, 5.000000e-01
  %1028 = call float @dx.op.unary.f32(i32 6, float %1025)  ; FAbs(value)
  %1029 = fsub fast float 1.000000e+00, %1028
  %1030 = call float @dx.op.unary.f32(i32 6, float %1027)  ; FAbs(value)
  %1031 = fsub fast float %1029, %1030
  %1032 = call float @dx.op.dot3.f32(i32 55, float %1025, float %1027, float %1031, float %1025, float %1027, float %1031)  ; Dot3(ax,ay,az,bx,by,bz)
  %1033 = call float @dx.op.unary.f32(i32 25, float %1032)  ; Rsqrt(value)
  %1034 = fmul fast float %1025, %1033
  %1035 = fmul fast float %1027, %1033
  %1036 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %468, i32 undef)  ; BufferLoad(srv,index,wot)
  %1037 = extractvalue %dx.types.ResRet.i32 %1036, 0
  %1038 = and i32 %1037, 67108864
  %1039 = icmp eq i32 %1038, 0
  br i1 %1039, label %1056, label %1040

; <label>:1040                                    ; preds = %988
  %1041 = add i32 %60, 280
  %1042 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1041, i32 undef)  ; BufferLoad(srv,index,wot)
  %1043 = extractvalue %dx.types.ResRet.i32 %1042, 0
  %1044 = and i32 %1043, 65535
  %1045 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1044)  ; LegacyF16ToF32(value)
  %1046 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %485, i32 undef)  ; BufferLoad(srv,index,wot)
  %1047 = extractvalue %dx.types.ResRet.i32 %1046, 0
  %1048 = and i32 %1047, 65535
  %1049 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1048)  ; LegacyF16ToF32(value)
  %1050 = lshr i32 %1043, 16
  %1051 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1050)  ; LegacyF16ToF32(value)
  %1052 = fsub fast float %1013, %1051
  %1053 = fmul fast float %1052, %1045
  %1054 = fadd fast float %1053, %1049
  %1055 = call float @dx.op.unary.f32(i32 7, float %1054)  ; Saturate(value)
  br label %1056

; <label>:1056                                    ; preds = %1040, %988
  %1057 = phi float [ %1055, %1040 ], [ %1013, %988 ]
  %1058 = call float @dx.op.dot2.f32(i32 54, float %1034, float %1035, float %479, float %480)  ; Dot2(ax,ay,bx,by)
  %1059 = call float @dx.op.dot2.f32(i32 54, float %1034, float %1035, float %481, float %482)  ; Dot2(ax,ay,bx,by)
  br label %1060

; <label>:1060                                    ; preds = %1056, %966
  %1061 = phi float [ %1057, %1056 ], [ 0x3FD6666660000000, %966 ]
  %1062 = phi float [ %1058, %1056 ], [ 0.000000e+00, %966 ]
  %1063 = phi float [ %1059, %1056 ], [ 0.000000e+00, %966 ]
  %1064 = phi float [ %1000, %1056 ], [ 1.000000e+00, %966 ]
  %1065 = add i32 %60, 160
  %1066 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1065, i32 undef)  ; BufferLoad(srv,index,wot)
  %1067 = extractvalue %dx.types.ResRet.i32 %1066, 0
  %1068 = lshr i32 %1067, 22
  %1069 = shl nuw nsw i32 %1068, 5
  %1070 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1069)  ; LegacyF16ToF32(value)
  %1071 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %468, i32 undef)  ; BufferLoad(srv,index,wot)
  %1072 = extractvalue %dx.types.ResRet.i32 %1071, 0
  %1073 = and i32 %1072, 64
  %1074 = icmp eq i32 %1073, 0
  br i1 %1074, label %1108, label %1075

; <label>:1075                                    ; preds = %1060
  %1076 = add i32 %60, 392
  %1077 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1076, i32 undef)  ; BufferLoad(srv,index,wot)
  %1078 = extractvalue %dx.types.ResRet.i32 %1077, 0
  %1079 = add i32 %1078, 0
  %1080 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1079, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1081 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %468, i32 undef)  ; BufferLoad(srv,index,wot)
  %1082 = extractvalue %dx.types.ResRet.i32 %1081, 0
  %1083 = and i32 %1082, 131072
  %1084 = icmp eq i32 %1083, 0
  %1085 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1080, %dx.types.Handle %105, float %575, float %576, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1086 = extractvalue %dx.types.ResRet.f32 %1085, 0
  %1087 = extractvalue %dx.types.ResRet.f32 %1085, 1
  %1088 = extractvalue %dx.types.ResRet.f32 %1085, 2
  %1089 = fmul fast float %1086, %242
  %1090 = fmul fast float %1087, %245
  %1091 = fmul fast float %1088, %248
  br i1 %1084, label %1098, label %1092

; <label>:1092                                    ; preds = %1075
  %1093 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1094 = extractvalue %dx.types.CBufRet.f32 %1093, 0
  %1095 = fmul fast float %1094, %1089
  %1096 = fmul fast float %1094, %1090
  %1097 = fmul fast float %1094, %1091
  br label %1098

; <label>:1098                                    ; preds = %1092, %1075
  %1099 = phi float [ %1095, %1092 ], [ %1089, %1075 ]
  %1100 = phi float [ %1096, %1092 ], [ %1090, %1075 ]
  %1101 = phi float [ %1097, %1092 ], [ %1091, %1075 ]
  %1102 = fmul fast float %1099, %1070
  %1103 = select i1 %225, float %1102, float %1099
  %1104 = call float @dx.op.dot3.f32(i32 55, float %1103, float %1100, float %1101, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1105 = select i1 %225, float 0.000000e+00, float %1099
  %1106 = select i1 %225, float %1104, float %1100
  %1107 = select i1 %225, float 0.000000e+00, float %1101
  br label %1108

; <label>:1108                                    ; preds = %1098, %1060
  %1109 = phi float [ %1105, %1098 ], [ 0.000000e+00, %1060 ]
  %1110 = phi float [ %1106, %1098 ], [ 0.000000e+00, %1060 ]
  %1111 = phi float [ %1107, %1098 ], [ 0.000000e+00, %1060 ]
  %1112 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %468, i32 undef)  ; BufferLoad(srv,index,wot)
  %1113 = extractvalue %dx.types.ResRet.i32 %1112, 0
  %1114 = and i32 %1113, 10240
  %1115 = icmp eq i32 %1114, 0
  br i1 %1115, label %1160, label %1116

; <label>:1116                                    ; preds = %1108
  %1117 = add i32 %60, 456
  %1118 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1117, i32 undef)  ; BufferLoad(srv,index,wot)
  %1119 = extractvalue %dx.types.ResRet.i32 %1118, 0
  %1120 = add i32 %1119, 0
  %1121 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1120, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1122 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1121, %dx.types.Handle %106, float %575, float %576, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1123 = extractvalue %dx.types.ResRet.f32 %1122, 1
  %1124 = extractvalue %dx.types.ResRet.f32 %1122, 3
  %1125 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %468, i32 undef)  ; BufferLoad(srv,index,wot)
  %1126 = extractvalue %dx.types.ResRet.i32 %1125, 0
  %1127 = and i32 %1126, 1048576
  %1128 = icmp ne i32 %1127, 0
  %1129 = and i32 %1126, 8192
  %1130 = icmp eq i32 %1129, 0
  br i1 %1130, label %1146, label %1131

; <label>:1131                                    ; preds = %1116
  %1132 = extractvalue %dx.types.ResRet.f32 %1122, 2
  %1133 = select i1 %1128, float %1132, float %1123
  %1134 = extractvalue %dx.types.ResRet.f32 %1122, 0
  %1135 = select i1 %1128, float %1134, float %1123
  %1136 = add i32 %60, 96
  %1137 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1136, i32 undef)  ; BufferLoad(srv,index,wot)
  %1138 = extractvalue %dx.types.ResRet.i32 %1137, 0
  %1139 = lshr i32 %1138, 16
  %1140 = and i32 %1139, 255
  %1141 = uitofp i32 %1140 to float
  %1142 = fmul fast float %1141, 0x3F80101020000000
  %1143 = fmul fast float %1142, %1135
  %1144 = fmul fast float %1142, %1123
  %1145 = fmul fast float %1142, %1133
  br label %1146

; <label>:1146                                    ; preds = %1131, %1116
  %1147 = phi float [ %1143, %1131 ], [ 0.000000e+00, %1116 ]
  %1148 = phi float [ %1144, %1131 ], [ 0.000000e+00, %1116 ]
  %1149 = phi float [ %1145, %1131 ], [ 0.000000e+00, %1116 ]
  %1150 = and i32 %1126, 2048
  %1151 = icmp eq i32 %1150, 0
  br i1 %1151, label %1160, label %1152

; <label>:1152                                    ; preds = %1146
  %1153 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1065, i32 undef)  ; BufferLoad(srv,index,wot)
  %1154 = extractvalue %dx.types.ResRet.i32 %1153, 0
  %1155 = shl i32 %1154, 4
  %1156 = and i32 %1155, 32752
  %1157 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1156)  ; LegacyF16ToF32(value)
  %1158 = fmul fast float %1157, %1124
  %1159 = call float @dx.op.binary.f32(i32 35, float %1158, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1160

; <label>:1160                                    ; preds = %1152, %1146, %1108
  %1161 = phi float [ %1147, %1152 ], [ %1147, %1146 ], [ 0.000000e+00, %1108 ]
  %1162 = phi float [ %1148, %1152 ], [ %1148, %1146 ], [ 0.000000e+00, %1108 ]
  %1163 = phi float [ %1149, %1152 ], [ %1149, %1146 ], [ 0.000000e+00, %1108 ]
  %1164 = phi float [ %1159, %1152 ], [ 0x3F70101020000000, %1146 ], [ 0x3F70101020000000, %1108 ]
  %1165 = add i32 %60, 96
  %1166 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1165, i32 undef)  ; BufferLoad(srv,index,wot)
  %1167 = extractvalue %dx.types.ResRet.i32 %1166, 0
  %1168 = and i32 %1167, 255
  %1169 = uitofp i32 %1168 to float
  %1170 = lshr i32 %1167, 8
  %1171 = and i32 %1170, 255
  %1172 = uitofp i32 %1171 to float
  %1173 = call float @dx.op.dot3.f32(i32 55, float %981, float %982, float %983, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1174 = fmul fast float %1172, %1173
  %1175 = fadd fast float %1174, %1169
  %1176 = fmul fast float %1175, 0x3F70101020000000
  %1177 = call float @dx.op.unary.f32(i32 7, float %1176)  ; Saturate(value)
  br label %1178

; <label>:1178                                    ; preds = %1160, %461
  %1179 = phi float [ 0.000000e+00, %461 ], [ %1062, %1160 ]
  %1180 = phi float [ 0.000000e+00, %461 ], [ %1063, %1160 ]
  %1181 = phi float [ 0.000000e+00, %461 ], [ %981, %1160 ]
  %1182 = phi float [ 0.000000e+00, %461 ], [ %982, %1160 ]
  %1183 = phi float [ 0.000000e+00, %461 ], [ %983, %1160 ]
  %1184 = phi float [ 0.000000e+00, %461 ], [ %1161, %1160 ]
  %1185 = phi float [ 0.000000e+00, %461 ], [ %1162, %1160 ]
  %1186 = phi float [ 0.000000e+00, %461 ], [ %1163, %1160 ]
  %1187 = phi float [ 0.000000e+00, %461 ], [ %1109, %1160 ]
  %1188 = phi float [ 0.000000e+00, %461 ], [ %1110, %1160 ]
  %1189 = phi float [ 0.000000e+00, %461 ], [ %1111, %1160 ]
  %1190 = phi float [ 0.000000e+00, %461 ], [ %967, %1160 ]
  %1191 = phi float [ 0.000000e+00, %461 ], [ %763, %1160 ]
  %1192 = phi float [ 0.000000e+00, %461 ], [ %1061, %1160 ]
  %1193 = phi float [ 0.000000e+00, %461 ], [ %1064, %1160 ]
  %1194 = phi float [ 0.000000e+00, %461 ], [ %1164, %1160 ]
  %1195 = phi float [ 0.000000e+00, %461 ], [ %1177, %1160 ]
  br i1 %409, label %2124, label %1196

; <label>:1196                                    ; preds = %1178
  %1197 = icmp ult i32 %467, 2
  %1198 = add i32 %60, 40
  %1199 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1198, i32 undef)  ; BufferLoad(srv,index,wot)
  %1200 = extractvalue %dx.types.ResRet.i32 %1199, 0
  %1201 = add i32 %60, 44
  %1202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1201, i32 undef)  ; BufferLoad(srv,index,wot)
  %1203 = extractvalue %dx.types.ResRet.i32 %1202, 0
  %1204 = or i32 %1203, %1200
  %1205 = icmp eq i32 %1204, 0
  br i1 %1205, label %2124, label %1206

; <label>:1206                                    ; preds = %1196
  %1207 = and i32 %1200, 262144
  %1208 = icmp ne i32 %1207, 0
  %1209 = select i1 %1208, float %63, float 1.000000e+00
  %1210 = select i1 %1208, float %64, float 0.000000e+00
  %1211 = select i1 %1208, float %65, float 0.000000e+00
  %1212 = select i1 %1208, float %66, float 1.000000e+00
  %1213 = select i1 %1208, float %67, float %88
  %1214 = select i1 %1208, float %68, float %89
  %1215 = add i32 %60, 300
  %1216 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1215, i32 undef)  ; BufferLoad(srv,index,wot)
  %1217 = extractvalue %dx.types.ResRet.i32 %1216, 0
  %1218 = lshr i32 %1217, 16
  %1219 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1218)  ; LegacyF16ToF32(value)
  %1220 = fmul fast float %1219, 0x3F50624DE0000000
  %1221 = add i32 %60, 104
  %1222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1221, i32 undef)  ; BufferLoad(srv,index,wot)
  %1223 = extractvalue %dx.types.ResRet.i32 %1222, 0
  %1224 = lshr i32 %1223, 16
  %1225 = and i32 %1224, 255
  %1226 = lshr i32 %1223, 24
  %1227 = add i32 %60, 308
  %1228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1227, i32 undef)  ; BufferLoad(srv,index,wot)
  %1229 = extractvalue %dx.types.ResRet.i32 %1228, 0
  %1230 = and i32 %1229, 65535
  %1231 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1230)  ; LegacyF16ToF32(value)
  %1232 = lshr i32 %1229, 16
  %1233 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1232)  ; LegacyF16ToF32(value)
  %1234 = add i32 %60, 48
  %1235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1234, i32 undef)  ; BufferLoad(srv,index,wot)
  %1236 = extractvalue %dx.types.ResRet.i32 %1235, 0
  %1237 = lshr i32 %1236, 22
  %1238 = shl nuw nsw i32 %1237, 5
  %1239 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1238)  ; LegacyF16ToF32(value)
  %1240 = shl i32 %1236, 4
  %1241 = and i32 %1240, 32752
  %1242 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1241)  ; LegacyF16ToF32(value)
  %1243 = lshr i32 %1236, 7
  %1244 = and i32 %1243, 32752
  %1245 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1244)  ; LegacyF16ToF32(value)
  %1246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1247 = extractvalue %dx.types.CBufRet.f32 %1246, 3
  %1248 = fmul fast float %1247, 1.000000e+03
  %1249 = fmul fast float %319, %1248
  %1250 = call float @dx.op.unary.f32(i32 22, float %1249)  ; Frc(value)
  %1251 = fadd fast float %1250, %309
  %1252 = fmul fast float %320, %1248
  %1253 = call float @dx.op.unary.f32(i32 22, float %1252)  ; Frc(value)
  %1254 = fadd fast float %1253, %311
  %1255 = fmul fast float %1220, %1248
  %1256 = call float @dx.op.unary.f32(i32 22, float %1255)  ; Frc(value)
  %1257 = fmul fast float %1256, 0x401921FB60000000
  %1258 = fadd fast float %1257, %1239
  %1259 = call float @dx.op.unary.f32(i32 13, float %1258)  ; Sin(value)
  %1260 = call float @dx.op.unary.f32(i32 12, float %1258)  ; Cos(value)
  %1261 = fsub fast float -0.000000e+00, %1259
  %1262 = fadd fast float %1213, -5.000000e-01
  %1263 = fadd fast float %1214, -5.000000e-01
  %1264 = fmul fast float %1231, %1262
  %1265 = fmul fast float %1233, %1263
  %1266 = fadd fast float %1264, 5.000000e-01
  %1267 = fadd fast float %1265, 5.000000e-01
  %1268 = fmul fast float %1242, %1266
  %1269 = fmul fast float %1245, %1267
  %1270 = fmul fast float %1260, %1268
  %1271 = call float @dx.op.tertiary.f32(i32 46, float %1261, float %1269, float %1270)  ; FMad(a,b,c)
  %1272 = fmul fast float %1259, %1268
  %1273 = call float @dx.op.tertiary.f32(i32 46, float %1260, float %1269, float %1272)  ; FMad(a,b,c)
  %1274 = fadd fast float %1251, %1271
  %1275 = fadd fast float %1254, %1273
  %1276 = icmp ugt i32 %1225, 1
  %1277 = icmp ugt i32 %1223, 33554431
  %1278 = or i1 %1277, %1276
  br i1 %1278, label %1279, label %1304

; <label>:1279                                    ; preds = %1206
  %1280 = add i32 %60, 244
  %1281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1280, i32 undef)  ; BufferLoad(srv,index,wot)
  %1282 = extractvalue %dx.types.ResRet.i32 %1281, 0
  %1283 = lshr i32 %1282, 16
  %1284 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1283)  ; LegacyF16ToF32(value)
  %1285 = fmul fast float %1247, %1284
  %1286 = call float @dx.op.unary.f32(i32 22, float %1285)  ; Frc(value)
  %1287 = mul nuw nsw i32 %1225, %1226
  %1288 = uitofp i32 %1287 to float
  %1289 = fmul fast float %1286, %1288
  %1290 = call float @dx.op.unary.f32(i32 27, float %1289)  ; Round_ni(value)
  %1291 = fptoui float %1290 to i32
  %1292 = urem i32 %1291, %1225
  %1293 = udiv i32 %1291, %1226
  %1294 = call float @dx.op.unary.f32(i32 22, float %1274)  ; Frc(value)
  %1295 = call float @dx.op.unary.f32(i32 22, float %1275)  ; Frc(value)
  %1296 = uitofp i32 %1292 to float
  %1297 = uitofp i32 %1293 to float
  %1298 = fadd fast float %1294, %1296
  %1299 = fadd fast float %1295, %1297
  %1300 = uitofp i32 %1225 to float
  %1301 = uitofp i32 %1226 to float
  %1302 = fdiv fast float %1298, %1300
  %1303 = fdiv fast float %1299, %1301
  br label %1304

; <label>:1304                                    ; preds = %1279, %1206
  %1305 = phi float [ %1302, %1279 ], [ %1274, %1206 ]
  %1306 = phi float [ %1303, %1279 ], [ %1275, %1206 ]
  %1307 = and i32 %1200, 16777216
  %1308 = icmp eq i32 %1307, 0
  br i1 %1308, label %1418, label %1309

; <label>:1309                                    ; preds = %1304
  %1310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1311 = extractvalue %dx.types.CBufRet.f32 %1310, 0
  %1312 = extractvalue %dx.types.CBufRet.f32 %1310, 1
  %1313 = extractvalue %dx.types.CBufRet.f32 %1310, 2
  %1314 = fadd fast float %1311, %164
  %1315 = fadd fast float %1312, %165
  %1316 = fadd fast float %1313, %166
  %1317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1318 = extractvalue %dx.types.CBufRet.f32 %1317, 0
  %1319 = call float @dx.op.unary.f32(i32 7, float %1318)  ; Saturate(value)
  %1320 = icmp eq i32 %61, 65535
  br i1 %1320, label %1415, label %1321

; <label>:1321                                    ; preds = %1309
  %1322 = lshr i32 %61, 1
  %1323 = shl i32 %1322, 2
  %1324 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1323, i32 undef)  ; BufferLoad(srv,index,wot)
  %1325 = extractvalue %dx.types.ResRet.i32 %1324, 0
  %1326 = and i32 %61, 1
  %1327 = icmp ne i32 %1326, 0
  %1328 = lshr i32 %1325, 16
  %1329 = and i32 %1325, 65535
  %1330 = select i1 %1327, i32 %1328, i32 %1329
  %1331 = icmp eq i32 %1330, 65535
  br i1 %1331, label %1411, label %1332

; <label>:1332                                    ; preds = %1321
  %1333 = mul nuw nsw i32 %1330, 40
  %1334 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %1333, i32 undef)  ; BufferLoad(srv,index,wot)
  %1335 = extractvalue %dx.types.ResRet.f32 %1334, 0
  %1336 = extractvalue %dx.types.ResRet.f32 %1334, 1
  %1337 = extractvalue %dx.types.ResRet.f32 %1334, 2
  %1338 = add nuw nsw i32 %1333, 12
  %1339 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %1338, i32 undef)  ; BufferLoad(srv,index,wot)
  %1340 = extractvalue %dx.types.ResRet.f32 %1339, 0
  %1341 = extractvalue %dx.types.ResRet.f32 %1339, 1
  %1342 = extractvalue %dx.types.ResRet.f32 %1339, 2
  %1343 = add nuw nsw i32 %1333, 24
  %1344 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %1343, i32 undef)  ; BufferLoad(srv,index,wot)
  %1345 = extractvalue %dx.types.ResRet.f32 %1344, 0
  %1346 = extractvalue %dx.types.ResRet.f32 %1344, 1
  %1347 = extractvalue %dx.types.ResRet.f32 %1344, 2
  %1348 = add nuw nsw i32 %1333, 36
  %1349 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %1348, i32 undef)  ; BufferLoad(srv,index,wot)
  %1350 = extractvalue %dx.types.ResRet.f32 %1349, 0
  %1351 = fsub fast float %1314, %1335
  %1352 = fsub fast float %1315, %1336
  %1353 = fsub fast float %1316, %1337
  %1354 = fmul fast float %1350, %1351
  %1355 = fmul fast float %1350, %1352
  %1356 = fmul fast float %1350, %1353
  %1357 = call float @dx.op.unary.f32(i32 27, float %1354)  ; Round_ni(value)
  %1358 = call float @dx.op.unary.f32(i32 27, float %1355)  ; Round_ni(value)
  %1359 = call float @dx.op.unary.f32(i32 27, float %1356)  ; Round_ni(value)
  %1360 = fadd fast float %1357, 5.000000e-01
  %1361 = fadd fast float %1358, 5.000000e-01
  %1362 = fadd fast float %1359, 5.000000e-01
  %1363 = fmul fast float %1360, %1340
  %1364 = fmul fast float %1361, %1341
  %1365 = fmul fast float %1362, %1342
  %1366 = shl i32 %61, 2
  %1367 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1366, i32 undef)  ; BufferLoad(srv,index,wot)
  %1368 = extractvalue %dx.types.ResRet.i32 %1367, 0
  %1369 = add i32 %1368, 0
  %1370 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1369, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1371 = call float @dx.op.unary.f32(i32 22, float %1363)  ; Frc(value)
  %1372 = call float @dx.op.unary.f32(i32 22, float %1364)  ; Frc(value)
  %1373 = call float @dx.op.unary.f32(i32 22, float %1365)  ; Frc(value)
  %1374 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1370, %dx.types.Handle %47, float %1371, float %1372, float %1373, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1375 = extractvalue %dx.types.ResRet.f32 %1374, 0
  %1376 = extractvalue %dx.types.ResRet.f32 %1374, 1
  %1377 = extractvalue %dx.types.ResRet.f32 %1374, 2
  %1378 = fmul fast float %1375, 1.023000e+03
  %1379 = fmul fast float %1376, 1.023000e+03
  %1380 = fmul fast float %1377, 1.023000e+03
  %1381 = fadd fast float %1378, 5.000000e-01
  %1382 = fadd fast float %1379, 5.000000e-01
  %1383 = fadd fast float %1380, 5.000000e-01
  %1384 = call float @dx.op.unary.f32(i32 27, float %1381)  ; Round_ni(value)
  %1385 = call float @dx.op.unary.f32(i32 27, float %1382)  ; Round_ni(value)
  %1386 = call float @dx.op.unary.f32(i32 27, float %1383)  ; Round_ni(value)
  %1387 = fsub fast float %1354, %1357
  %1388 = fsub fast float %1355, %1358
  %1389 = fsub fast float %1356, %1359
  %1390 = fmul fast float %1387, 7.500000e-01
  %1391 = fmul fast float %1388, 7.500000e-01
  %1392 = fmul fast float %1389, 7.500000e-01
  %1393 = fadd fast float %1357, 1.250000e-01
  %1394 = fadd fast float %1393, %1390
  %1395 = fadd fast float %1394, %1384
  %1396 = fadd fast float %1358, 1.250000e-01
  %1397 = fadd fast float %1396, %1391
  %1398 = fadd fast float %1397, %1385
  %1399 = fadd fast float %1359, 1.250000e-01
  %1400 = fadd fast float %1399, %1392
  %1401 = fadd fast float %1400, %1386
  %1402 = fmul fast float %1395, %1345
  %1403 = fmul fast float %1398, %1346
  %1404 = fmul fast float %1401, %1347
  %1405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1366, i32 undef)  ; BufferLoad(srv,index,wot)
  %1406 = extractvalue %dx.types.ResRet.i32 %1405, 0
  %1407 = add i32 %1406, 0
  %1408 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1407, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1409 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1408, %dx.types.Handle %45, float %1402, float %1403, float %1404, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1410 = extractvalue %dx.types.ResRet.f32 %1409, 0
  br label %1411

; <label>:1411                                    ; preds = %1332, %1321
  %1412 = phi float [ %1410, %1332 ], [ -1.000000e+00, %1321 ]
  %1413 = fadd fast float %1412, %1319
  %1414 = call float @dx.op.unary.f32(i32 7, float %1413)  ; Saturate(value)
  br label %1415

; <label>:1415                                    ; preds = %1411, %1309
  %1416 = phi float [ %1414, %1411 ], [ %1319, %1309 ]
  %1417 = fmul fast float %1416, %464
  br label %1418

; <label>:1418                                    ; preds = %1415, %1304
  %1419 = phi float [ %1417, %1415 ], [ %464, %1304 ]
  %1420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1198, i32 undef)  ; BufferLoad(srv,index,wot)
  %1421 = extractvalue %dx.types.ResRet.i32 %1420, 0
  %1422 = and i32 %1421, 256
  %1423 = icmp eq i32 %1422, 0
  br i1 %1423, label %1470, label %1424

; <label>:1424                                    ; preds = %1418
  %1425 = add i32 %60, 428
  %1426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1425, i32 undef)  ; BufferLoad(srv,index,wot)
  %1427 = extractvalue %dx.types.ResRet.i32 %1426, 0
  %1428 = add i32 %1427, 0
  %1429 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1428, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1430 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1429, %dx.types.Handle %106, float %1305, float %1306, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1431 = extractvalue %dx.types.ResRet.f32 %1430, 0
  %1432 = add i32 %60, 116
  %1433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1432, i32 undef)  ; BufferLoad(srv,index,wot)
  %1434 = extractvalue %dx.types.ResRet.i32 %1433, 0
  %1435 = shl i32 %1434, 4
  %1436 = and i32 %1435, 32752
  %1437 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1436)  ; LegacyF16ToF32(value)
  %1438 = lshr i32 %1434, 7
  %1439 = and i32 %1438, 32752
  %1440 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1439)  ; LegacyF16ToF32(value)
  %1441 = fsub fast float 1.000000e+00, %1419
  %1442 = call float @dx.op.binary.f32(i32 35, float %1441, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1443 = bitcast float %1419 to i32
  %1444 = sitofp i32 %1443 to float
  %1445 = fadd fast float %1444, 0xC1CFBF8940000000
  %1446 = fmul fast float %1440, %1445
  %1447 = fadd fast float %1446, 0x41CFBF8940000000
  %1448 = fptosi float %1447 to i32
  %1449 = bitcast i32 %1448 to float
  %1450 = bitcast float %1442 to i32
  %1451 = sitofp i32 %1450 to float
  %1452 = fadd fast float %1451, 0xC1CFBF8940000000
  %1453 = fmul fast float %1452, %1440
  %1454 = fadd fast float %1453, 0x41CFBF8940000000
  %1455 = fptosi float %1454 to i32
  %1456 = bitcast i32 %1455 to float
  %1457 = fmul fast float %1449, %1437
  %1458 = fmul fast float %1456, %1437
  %1459 = fsub fast float %1442, %1457
  %1460 = fadd fast float %1458, %1442
  %1461 = call float @dx.op.unary.f32(i32 7, float %1459)  ; Saturate(value)
  %1462 = call float @dx.op.unary.f32(i32 7, float %1460)  ; Saturate(value)
  %1463 = fsub fast float %1431, %1461
  %1464 = fsub fast float %1462, %1461
  %1465 = bitcast float %1464 to i32
  %1466 = sub nsw i32 2129859010, %1465
  %1467 = bitcast i32 %1466 to float
  %1468 = fmul fast float %1467, %1463
  %1469 = call float @dx.op.unary.f32(i32 7, float %1468)  ; Saturate(value)
  br label %1470

; <label>:1470                                    ; preds = %1424, %1418
  %1471 = phi float [ %1469, %1424 ], [ %1419, %1418 ]
  %1472 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1198, i32 undef)  ; BufferLoad(srv,index,wot)
  %1473 = extractvalue %dx.types.ResRet.i32 %1472, 0
  %1474 = and i32 %1473, 128
  %1475 = icmp eq i32 %1474, 0
  br i1 %1475, label %1492, label %1476

; <label>:1476                                    ; preds = %1470
  %1477 = add i32 %60, 412
  %1478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1477, i32 undef)  ; BufferLoad(srv,index,wot)
  %1479 = extractvalue %dx.types.ResRet.i32 %1478, 0
  %1480 = add i32 %1479, 0
  %1481 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1480, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1482 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1481, %dx.types.Handle %106, float %1305, float %1306, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1483 = extractvalue %dx.types.ResRet.f32 %1482, 0
  %1484 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1198, i32 undef)  ; BufferLoad(srv,index,wot)
  %1485 = extractvalue %dx.types.ResRet.i32 %1484, 0
  %1486 = and i32 %1485, 524288
  %1487 = icmp ne i32 %1486, 0
  %1488 = fcmp fast ogt float %1483, 0x3FE0101020000000
  %1489 = select i1 %1488, float 1.000000e+00, float 0.000000e+00
  %1490 = select i1 %1487, float %1489, float %1483
  %1491 = fmul fast float %1490, %1471
  br label %1492

; <label>:1492                                    ; preds = %1476, %1470
  %1493 = phi float [ %1491, %1476 ], [ %1471, %1470 ]
  %1494 = fcmp fast ult float %1493, 0x3F70101020000000
  br i1 %1494, label %2124, label %1495

; <label>:1495                                    ; preds = %1492
  %1496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1198, i32 undef)  ; BufferLoad(srv,index,wot)
  %1497 = extractvalue %dx.types.ResRet.i32 %1496, 0
  %1498 = and i32 %1497, 16
  %1499 = icmp eq i32 %1498, 0
  br i1 %1499, label %1698, label %1500

; <label>:1500                                    ; preds = %1495
  %1501 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1221, i32 undef)  ; BufferLoad(srv,index,wot)
  %1502 = extractvalue %dx.types.ResRet.i32 %1501, 0
  %1503 = add i32 %60, 364
  %1504 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1503, i32 undef)  ; BufferLoad(srv,index,wot)
  %1505 = extractvalue %dx.types.ResRet.i32 %1504, 0
  %1506 = add i32 %1505, 0
  %1507 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1506, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1508 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1507, %dx.types.Handle %105, float %1305, float %1306, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1509 = extractvalue %dx.types.ResRet.f32 %1508, 0
  %1510 = extractvalue %dx.types.ResRet.f32 %1508, 1
  %1511 = extractvalue %dx.types.ResRet.f32 %1508, 2
  %1512 = extractvalue %dx.types.ResRet.f32 %1508, 3
  %1513 = and i32 %1502, 255
  %1514 = uitofp i32 %1513 to float
  %1515 = lshr i32 %1502, 8
  %1516 = and i32 %1515, 255
  %1517 = uitofp i32 %1516 to float
  %1518 = fmul fast float %1512, %1514
  %1519 = fadd fast float %1518, %1517
  %1520 = fmul fast float %1519, 0x3F70101000000000
  %1521 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1198, i32 undef)  ; BufferLoad(srv,index,wot)
  %1522 = extractvalue %dx.types.ResRet.i32 %1521, 0
  %1523 = and i32 %1522, 512
  %1524 = icmp eq i32 %1523, 0
  br i1 %1524, label %1533, label %1525

; <label>:1525                                    ; preds = %1500
  %1526 = add i32 %60, 444
  %1527 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1526, i32 undef)  ; BufferLoad(srv,index,wot)
  %1528 = extractvalue %dx.types.ResRet.i32 %1527, 0
  %1529 = add i32 %1528, 0
  %1530 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1529, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1531 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1530, %dx.types.Handle %106, float %1305, float %1306, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1532 = extractvalue %dx.types.ResRet.f32 %1531, 0
  br label %1533

; <label>:1533                                    ; preds = %1525, %1500
  %1534 = phi float [ %1532, %1525 ], [ 1.000000e+00, %1500 ]
  %1535 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1198, i32 undef)  ; BufferLoad(srv,index,wot)
  %1536 = extractvalue %dx.types.ResRet.i32 %1535, 0
  %1537 = and i32 %1536, 33554432
  %1538 = icmp eq i32 %1537, 0
  br i1 %1538, label %1645, label %1539

; <label>:1539                                    ; preds = %1533
  %1540 = add i32 %60, 240
  %1541 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1540, i32 undef)  ; BufferLoad(srv,index,wot)
  %1542 = extractvalue %dx.types.ResRet.i32 %1541, 0
  %1543 = and i32 %1542, 65535
  %1544 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1543)  ; LegacyF16ToF32(value)
  %1545 = lshr i32 %1542, 16
  %1546 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1545)  ; LegacyF16ToF32(value)
  %1547 = add i32 %60, 244
  %1548 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1547, i32 undef)  ; BufferLoad(srv,index,wot)
  %1549 = extractvalue %dx.types.ResRet.i32 %1548, 0
  %1550 = and i32 %1549, 65535
  %1551 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1550)  ; LegacyF16ToF32(value)
  %1552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %291, i32 undef)  ; BufferLoad(srv,index,wot)
  %1553 = extractvalue %dx.types.ResRet.i32 %1552, 0
  %1554 = lshr i32 %1553, 24
  %1555 = uitofp i32 %1554 to float
  %1556 = fmul fast float %1555, 0x3F70101020000000
  %1557 = and i32 %1553, 255
  %1558 = uitofp i32 %1557 to float
  %1559 = fmul fast float %1558, 0x3F70101020000000
  %1560 = lshr i32 %1553, 8
  %1561 = and i32 %1560, 255
  %1562 = uitofp i32 %1561 to float
  %1563 = fmul fast float %1562, 0x3F70101020000000
  %1564 = lshr i32 %1553, 16
  %1565 = and i32 %1564, 255
  %1566 = uitofp i32 %1565 to float
  %1567 = fmul fast float %1566, 0x3F70101020000000
  %1568 = add i32 %60, 236
  %1569 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1568, i32 undef)  ; BufferLoad(srv,index,wot)
  %1570 = extractvalue %dx.types.ResRet.i32 %1569, 0
  %1571 = lshr i32 %1570, 24
  %1572 = uitofp i32 %1571 to float
  %1573 = fmul fast float %1572, 0x3F70101020000000
  %1574 = and i32 %1570, 255
  %1575 = uitofp i32 %1574 to float
  %1576 = fmul fast float %1575, 0x3F70101020000000
  %1577 = lshr i32 %1570, 8
  %1578 = and i32 %1577, 255
  %1579 = uitofp i32 %1578 to float
  %1580 = fmul fast float %1579, 0x3F70101020000000
  %1581 = lshr i32 %1570, 16
  %1582 = and i32 %1581, 255
  %1583 = uitofp i32 %1582 to float
  %1584 = fmul fast float %1583, 0x3F70101020000000
  %1585 = bitcast float %1509 to i32
  %1586 = ashr i32 %1585, 1
  %1587 = sub nsw i32 1597463174, %1586
  %1588 = bitcast i32 %1587 to float
  %1589 = fmul fast float %1509, 5.000000e-01
  %1590 = fmul fast float %1588, %1588
  %1591 = fmul fast float %1590, %1589
  %1592 = fsub fast float 1.500000e+00, %1591
  %1593 = fmul fast float %1588, %1509
  %1594 = fmul fast float %1593, %1592
  %1595 = bitcast float %1510 to i32
  %1596 = ashr i32 %1595, 1
  %1597 = sub nsw i32 1597463174, %1596
  %1598 = bitcast i32 %1597 to float
  %1599 = fmul fast float %1510, 5.000000e-01
  %1600 = fmul fast float %1598, %1598
  %1601 = fmul fast float %1600, %1599
  %1602 = fsub fast float 1.500000e+00, %1601
  %1603 = fmul fast float %1598, %1510
  %1604 = fmul fast float %1603, %1602
  %1605 = bitcast float %1511 to i32
  %1606 = ashr i32 %1605, 1
  %1607 = sub nsw i32 1597463174, %1606
  %1608 = bitcast i32 %1607 to float
  %1609 = fmul fast float %1511, 5.000000e-01
  %1610 = fmul fast float %1608, %1608
  %1611 = fmul fast float %1610, %1609
  %1612 = fsub fast float 1.500000e+00, %1611
  %1613 = fmul fast float %1608, %1511
  %1614 = fmul fast float %1613, %1612
  %1615 = fsub fast float %1594, %1576
  %1616 = fsub fast float %1604, %1580
  %1617 = fsub fast float %1614, %1584
  %1618 = fmul fast float %1615, %1544
  %1619 = fmul fast float %1616, %1546
  %1620 = fmul fast float %1617, %1551
  %1621 = fadd fast float %1618, %1559
  %1622 = fadd fast float %1619, %1563
  %1623 = fadd fast float %1620, %1567
  %1624 = call float @dx.op.unary.f32(i32 7, float %1621)  ; Saturate(value)
  %1625 = call float @dx.op.unary.f32(i32 7, float %1622)  ; Saturate(value)
  %1626 = call float @dx.op.unary.f32(i32 7, float %1623)  ; Saturate(value)
  %1627 = fmul fast float %1624, %1624
  %1628 = fmul fast float %1625, %1625
  %1629 = fmul fast float %1626, %1626
  %1630 = fsub fast float %1627, %1509
  %1631 = fsub fast float %1628, %1510
  %1632 = fsub fast float %1629, %1511
  %1633 = fmul fast float %1630, %1534
  %1634 = fmul fast float %1631, %1534
  %1635 = fmul fast float %1632, %1534
  %1636 = fadd fast float %1633, %1509
  %1637 = fadd fast float %1634, %1510
  %1638 = fadd fast float %1635, %1511
  %1639 = fadd fast float %1556, %1520
  %1640 = fsub fast float %1639, %1573
  %1641 = call float @dx.op.unary.f32(i32 7, float %1640)  ; Saturate(value)
  %1642 = fsub fast float %1641, %1520
  %1643 = fmul fast float %1642, %1534
  %1644 = fadd fast float %1643, %1520
  br label %1698

; <label>:1645                                    ; preds = %1533
  %1646 = and i32 %1536, 134217728
  %1647 = icmp eq i32 %1646, 0
  br i1 %1647, label %1682, label %1648

; <label>:1648                                    ; preds = %1645
  %1649 = call float @dx.op.unary.f32(i32 24, float %296)  ; Sqrt(value)
  %1650 = call float @dx.op.unary.f32(i32 24, float %300)  ; Sqrt(value)
  %1651 = call float @dx.op.unary.f32(i32 24, float %304)  ; Sqrt(value)
  %1652 = fadd fast float %1649, -5.000000e-01
  %1653 = fadd fast float %1650, -5.000000e-01
  %1654 = fadd fast float %1651, -5.000000e-01
  %1655 = fmul fast float %1652, %1534
  %1656 = fmul fast float %1653, %1534
  %1657 = fmul fast float %1654, %1534
  %1658 = fadd fast float %1655, 5.000000e-01
  %1659 = fadd fast float %1656, 5.000000e-01
  %1660 = fadd fast float %1657, 5.000000e-01
  %1661 = call float @dx.op.unary.f32(i32 24, float %1509)  ; Sqrt(value)
  %1662 = call float @dx.op.unary.f32(i32 24, float %1510)  ; Sqrt(value)
  %1663 = call float @dx.op.unary.f32(i32 24, float %1511)  ; Sqrt(value)
  %1664 = fmul fast float %1658, 2.000000e+00
  %1665 = fsub fast float 1.000000e+00, %1664
  %1666 = fmul fast float %1665, %1661
  %1667 = fadd fast float %1666, %1664
  %1668 = fmul fast float %1667, %1661
  %1669 = fmul fast float %1659, 2.000000e+00
  %1670 = fsub fast float 1.000000e+00, %1669
  %1671 = fmul fast float %1670, %1662
  %1672 = fadd fast float %1671, %1669
  %1673 = fmul fast float %1672, %1662
  %1674 = fmul fast float %1660, 2.000000e+00
  %1675 = fsub fast float 1.000000e+00, %1674
  %1676 = fmul fast float %1675, %1663
  %1677 = fadd fast float %1676, %1674
  %1678 = fmul fast float %1677, %1663
  %1679 = fmul fast float %1668, %1668
  %1680 = fmul fast float %1673, %1673
  %1681 = fmul fast float %1678, %1678
  br label %1698

; <label>:1682                                    ; preds = %1645
  %1683 = fmul fast float %296, %296
  %1684 = fmul fast float %300, %300
  %1685 = fmul fast float %304, %304
  %1686 = fadd fast float %1683, -1.000000e+00
  %1687 = fadd fast float %1684, -1.000000e+00
  %1688 = fadd fast float %1685, -1.000000e+00
  %1689 = fmul fast float %1534, %1686
  %1690 = fmul fast float %1534, %1687
  %1691 = fmul fast float %1534, %1688
  %1692 = fadd fast float %1689, 1.000000e+00
  %1693 = fadd fast float %1690, 1.000000e+00
  %1694 = fadd fast float %1691, 1.000000e+00
  %1695 = fmul fast float %1692, %1509
  %1696 = fmul fast float %1693, %1510
  %1697 = fmul fast float %1694, %1511
  br label %1698

; <label>:1698                                    ; preds = %1682, %1648, %1539, %1495
  %1699 = phi float [ %1644, %1539 ], [ %1520, %1648 ], [ %1520, %1682 ], [ 0x3FA23C0BE0000000, %1495 ]
  %1700 = phi float [ %1636, %1539 ], [ %1679, %1648 ], [ %1695, %1682 ], [ 1.000000e+00, %1495 ]
  %1701 = phi float [ %1637, %1539 ], [ %1680, %1648 ], [ %1696, %1682 ], [ 1.000000e+00, %1495 ]
  %1702 = phi float [ %1638, %1539 ], [ %1681, %1648 ], [ %1697, %1682 ], [ 1.000000e+00, %1495 ]
  %1703 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1704 = extractvalue %dx.types.CBufRet.i32 %1703, 1
  %1705 = and i32 %1704, 1
  %1706 = icmp ne i32 %1705, 0
  %1707 = add i32 %60, 356
  %1708 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1707, i32 undef)  ; BufferLoad(srv,index,wot)
  %1709 = extractvalue %dx.types.ResRet.i32 %1708, 0
  %1710 = and i32 %1709, 32
  %1711 = icmp ne i32 %1710, 0
  %1712 = and i1 %1706, %1711
  %1713 = select i1 %1712, float 1.000000e+00, float %1700
  %1714 = select i1 %1712, float 0x3FD3333340000000, float %1701
  %1715 = select i1 %1712, float 0x3FD3333340000000, float %1702
  %1716 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1198, i32 undef)  ; BufferLoad(srv,index,wot)
  %1717 = extractvalue %dx.types.ResRet.i32 %1716, 0
  %1718 = and i32 %1717, 32
  %1719 = icmp eq i32 %1718, 0
  br i1 %1719, label %1792, label %1720

; <label>:1720                                    ; preds = %1698
  %1721 = add i32 %60, 108
  %1722 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1721, i32 undef)  ; BufferLoad(srv,index,wot)
  %1723 = extractvalue %dx.types.ResRet.i32 %1722, 0
  %1724 = add i32 %60, 380
  %1725 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1724, i32 undef)  ; BufferLoad(srv,index,wot)
  %1726 = extractvalue %dx.types.ResRet.i32 %1725, 0
  %1727 = add i32 %1726, 0
  %1728 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1727, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1729 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1728, %dx.types.Handle %105, float %1305, float %1306, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1730 = extractvalue %dx.types.ResRet.f32 %1729, 0
  %1731 = extractvalue %dx.types.ResRet.f32 %1729, 1
  %1732 = extractvalue %dx.types.ResRet.f32 %1729, 2
  %1733 = extractvalue %dx.types.ResRet.f32 %1729, 3
  %1734 = and i32 %1723, 255
  %1735 = uitofp i32 %1734 to float
  %1736 = lshr i32 %1723, 8
  %1737 = and i32 %1736, 255
  %1738 = uitofp i32 %1737 to float
  %1739 = lshr i32 %1723, 16
  %1740 = and i32 %1739, 255
  %1741 = uitofp i32 %1740 to float
  %1742 = fmul fast float %1741, 0x3F70101000000000
  %1743 = fmul fast float %1730, %1735
  %1744 = fadd fast float %1743, %1738
  %1745 = fmul fast float %1744, 0x3F70101000000000
  %1746 = fadd fast float %1731, -5.000000e-01
  %1747 = fadd fast float %1733, -5.000000e-01
  %1748 = fmul fast float %1746, %1742
  %1749 = fmul fast float %1747, %1742
  %1750 = fadd fast float %1748, 5.000000e-01
  %1751 = fadd fast float %1749, 5.000000e-01
  %1752 = fmul fast float %1750, 2.000000e+00
  %1753 = fadd fast float %1752, -1.000000e+00
  %1754 = fmul fast float %1751, 2.000000e+00
  %1755 = fadd fast float %1754, -1.000000e+00
  %1756 = fadd fast float %1753, %1755
  %1757 = fmul fast float %1756, 5.000000e-01
  %1758 = fsub fast float %1753, %1755
  %1759 = fmul fast float %1758, 5.000000e-01
  %1760 = call float @dx.op.unary.f32(i32 6, float %1757)  ; FAbs(value)
  %1761 = fsub fast float 1.000000e+00, %1760
  %1762 = call float @dx.op.unary.f32(i32 6, float %1759)  ; FAbs(value)
  %1763 = fsub fast float %1761, %1762
  %1764 = call float @dx.op.dot3.f32(i32 55, float %1757, float %1759, float %1763, float %1757, float %1759, float %1763)  ; Dot3(ax,ay,az,bx,by,bz)
  %1765 = call float @dx.op.unary.f32(i32 25, float %1764)  ; Rsqrt(value)
  %1766 = fmul fast float %1757, %1765
  %1767 = fmul fast float %1759, %1765
  %1768 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1198, i32 undef)  ; BufferLoad(srv,index,wot)
  %1769 = extractvalue %dx.types.ResRet.i32 %1768, 0
  %1770 = and i32 %1769, 67108864
  %1771 = icmp eq i32 %1770, 0
  br i1 %1771, label %1788, label %1772

; <label>:1772                                    ; preds = %1720
  %1773 = add i32 %60, 296
  %1774 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1773, i32 undef)  ; BufferLoad(srv,index,wot)
  %1775 = extractvalue %dx.types.ResRet.i32 %1774, 0
  %1776 = and i32 %1775, 65535
  %1777 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1776)  ; LegacyF16ToF32(value)
  %1778 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1215, i32 undef)  ; BufferLoad(srv,index,wot)
  %1779 = extractvalue %dx.types.ResRet.i32 %1778, 0
  %1780 = and i32 %1779, 65535
  %1781 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1780)  ; LegacyF16ToF32(value)
  %1782 = lshr i32 %1775, 16
  %1783 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1782)  ; LegacyF16ToF32(value)
  %1784 = fsub fast float %1745, %1783
  %1785 = fmul fast float %1784, %1777
  %1786 = fadd fast float %1785, %1781
  %1787 = call float @dx.op.unary.f32(i32 7, float %1786)  ; Saturate(value)
  br label %1788

; <label>:1788                                    ; preds = %1772, %1720
  %1789 = phi float [ %1787, %1772 ], [ %1745, %1720 ]
  %1790 = call float @dx.op.dot2.f32(i32 54, float %1766, float %1767, float %1209, float %1210)  ; Dot2(ax,ay,bx,by)
  %1791 = call float @dx.op.dot2.f32(i32 54, float %1766, float %1767, float %1211, float %1212)  ; Dot2(ax,ay,bx,by)
  br label %1792

; <label>:1792                                    ; preds = %1788, %1698
  %1793 = phi float [ %1789, %1788 ], [ 0x3FD6666660000000, %1698 ]
  %1794 = phi float [ %1790, %1788 ], [ 0.000000e+00, %1698 ]
  %1795 = phi float [ %1791, %1788 ], [ 0.000000e+00, %1698 ]
  %1796 = phi float [ %1732, %1788 ], [ 1.000000e+00, %1698 ]
  %1797 = add i32 %60, 176
  %1798 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1797, i32 undef)  ; BufferLoad(srv,index,wot)
  %1799 = extractvalue %dx.types.ResRet.i32 %1798, 0
  %1800 = lshr i32 %1799, 22
  %1801 = shl nuw nsw i32 %1800, 5
  %1802 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1801)  ; LegacyF16ToF32(value)
  %1803 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1198, i32 undef)  ; BufferLoad(srv,index,wot)
  %1804 = extractvalue %dx.types.ResRet.i32 %1803, 0
  %1805 = and i32 %1804, 64
  %1806 = icmp eq i32 %1805, 0
  br i1 %1806, label %1840, label %1807

; <label>:1807                                    ; preds = %1792
  %1808 = add i32 %60, 396
  %1809 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1808, i32 undef)  ; BufferLoad(srv,index,wot)
  %1810 = extractvalue %dx.types.ResRet.i32 %1809, 0
  %1811 = add i32 %1810, 0
  %1812 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1811, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1813 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1198, i32 undef)  ; BufferLoad(srv,index,wot)
  %1814 = extractvalue %dx.types.ResRet.i32 %1813, 0
  %1815 = and i32 %1814, 131072
  %1816 = icmp eq i32 %1815, 0
  %1817 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1812, %dx.types.Handle %105, float %1305, float %1306, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1818 = extractvalue %dx.types.ResRet.f32 %1817, 0
  %1819 = extractvalue %dx.types.ResRet.f32 %1817, 1
  %1820 = extractvalue %dx.types.ResRet.f32 %1817, 2
  %1821 = fmul fast float %1818, %284
  %1822 = fmul fast float %1819, %287
  %1823 = fmul fast float %1820, %290
  br i1 %1816, label %1830, label %1824

; <label>:1824                                    ; preds = %1807
  %1825 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1826 = extractvalue %dx.types.CBufRet.f32 %1825, 0
  %1827 = fmul fast float %1826, %1821
  %1828 = fmul fast float %1826, %1822
  %1829 = fmul fast float %1826, %1823
  br label %1830

; <label>:1830                                    ; preds = %1824, %1807
  %1831 = phi float [ %1827, %1824 ], [ %1821, %1807 ]
  %1832 = phi float [ %1828, %1824 ], [ %1822, %1807 ]
  %1833 = phi float [ %1829, %1824 ], [ %1823, %1807 ]
  %1834 = fmul fast float %1831, %1802
  %1835 = select i1 %225, float %1834, float %1831
  %1836 = call float @dx.op.dot3.f32(i32 55, float %1835, float %1832, float %1833, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1837 = select i1 %225, float 0.000000e+00, float %1831
  %1838 = select i1 %225, float %1836, float %1832
  %1839 = select i1 %225, float 0.000000e+00, float %1833
  br label %1840

; <label>:1840                                    ; preds = %1830, %1792
  %1841 = phi float [ %1837, %1830 ], [ 0.000000e+00, %1792 ]
  %1842 = phi float [ %1838, %1830 ], [ 0.000000e+00, %1792 ]
  %1843 = phi float [ %1839, %1830 ], [ 0.000000e+00, %1792 ]
  %1844 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1198, i32 undef)  ; BufferLoad(srv,index,wot)
  %1845 = extractvalue %dx.types.ResRet.i32 %1844, 0
  %1846 = and i32 %1845, 10240
  %1847 = icmp eq i32 %1846, 0
  br i1 %1847, label %1892, label %1848

; <label>:1848                                    ; preds = %1840
  %1849 = add i32 %60, 460
  %1850 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1849, i32 undef)  ; BufferLoad(srv,index,wot)
  %1851 = extractvalue %dx.types.ResRet.i32 %1850, 0
  %1852 = add i32 %1851, 0
  %1853 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1852, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1854 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1853, %dx.types.Handle %106, float %1305, float %1306, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1855 = extractvalue %dx.types.ResRet.f32 %1854, 1
  %1856 = extractvalue %dx.types.ResRet.f32 %1854, 3
  %1857 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1198, i32 undef)  ; BufferLoad(srv,index,wot)
  %1858 = extractvalue %dx.types.ResRet.i32 %1857, 0
  %1859 = and i32 %1858, 1048576
  %1860 = icmp ne i32 %1859, 0
  %1861 = and i32 %1858, 8192
  %1862 = icmp eq i32 %1861, 0
  br i1 %1862, label %1878, label %1863

; <label>:1863                                    ; preds = %1848
  %1864 = extractvalue %dx.types.ResRet.f32 %1854, 2
  %1865 = select i1 %1860, float %1864, float %1855
  %1866 = extractvalue %dx.types.ResRet.f32 %1854, 0
  %1867 = select i1 %1860, float %1866, float %1855
  %1868 = add i32 %60, 112
  %1869 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1868, i32 undef)  ; BufferLoad(srv,index,wot)
  %1870 = extractvalue %dx.types.ResRet.i32 %1869, 0
  %1871 = lshr i32 %1870, 16
  %1872 = and i32 %1871, 255
  %1873 = uitofp i32 %1872 to float
  %1874 = fmul fast float %1873, 0x3F80101020000000
  %1875 = fmul fast float %1874, %1867
  %1876 = fmul fast float %1874, %1855
  %1877 = fmul fast float %1874, %1865
  br label %1878

; <label>:1878                                    ; preds = %1863, %1848
  %1879 = phi float [ %1875, %1863 ], [ 0.000000e+00, %1848 ]
  %1880 = phi float [ %1876, %1863 ], [ 0.000000e+00, %1848 ]
  %1881 = phi float [ %1877, %1863 ], [ 0.000000e+00, %1848 ]
  %1882 = and i32 %1858, 2048
  %1883 = icmp eq i32 %1882, 0
  br i1 %1883, label %1892, label %1884

; <label>:1884                                    ; preds = %1878
  %1885 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1797, i32 undef)  ; BufferLoad(srv,index,wot)
  %1886 = extractvalue %dx.types.ResRet.i32 %1885, 0
  %1887 = shl i32 %1886, 4
  %1888 = and i32 %1887, 32752
  %1889 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1888)  ; LegacyF16ToF32(value)
  %1890 = fmul fast float %1889, %1856
  %1891 = call float @dx.op.binary.f32(i32 35, float %1890, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1892

; <label>:1892                                    ; preds = %1884, %1878, %1840
  %1893 = phi float [ %1879, %1884 ], [ %1879, %1878 ], [ 0.000000e+00, %1840 ]
  %1894 = phi float [ %1880, %1884 ], [ %1880, %1878 ], [ 0.000000e+00, %1840 ]
  %1895 = phi float [ %1881, %1884 ], [ %1881, %1878 ], [ 0.000000e+00, %1840 ]
  %1896 = phi float [ %1891, %1884 ], [ 0x3F70101020000000, %1878 ], [ 0x3F70101020000000, %1840 ]
  %1897 = add i32 %60, 112
  %1898 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1897, i32 undef)  ; BufferLoad(srv,index,wot)
  %1899 = extractvalue %dx.types.ResRet.i32 %1898, 0
  %1900 = and i32 %1899, 255
  %1901 = uitofp i32 %1900 to float
  %1902 = lshr i32 %1899, 8
  %1903 = and i32 %1902, 255
  %1904 = uitofp i32 %1903 to float
  %1905 = call float @dx.op.dot3.f32(i32 55, float %1713, float %1714, float %1715, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1906 = fmul fast float %1904, %1905
  %1907 = fadd fast float %1906, %1901
  %1908 = fmul fast float %1907, 0x3F70101020000000
  %1909 = call float @dx.op.unary.f32(i32 7, float %1908)  ; Saturate(value)
  br i1 %1197, label %1910, label %1918

; <label>:1910                                    ; preds = %1892
  %1911 = fsub fast float 1.000000e+00, %1493
  %1912 = fmul fast float %1911, %1181
  %1913 = fmul fast float %1911, %1182
  %1914 = fmul fast float %1911, %1183
  %1915 = fmul fast float %1911, %1187
  %1916 = fmul fast float %1911, %1188
  %1917 = fmul fast float %1911, %1189
  br label %1918

; <label>:1918                                    ; preds = %1910, %1892
  %1919 = phi float [ %1912, %1910 ], [ %1181, %1892 ]
  %1920 = phi float [ %1913, %1910 ], [ %1182, %1892 ]
  %1921 = phi float [ %1914, %1910 ], [ %1183, %1892 ]
  %1922 = phi float [ %1915, %1910 ], [ %1187, %1892 ]
  %1923 = phi float [ %1916, %1910 ], [ %1188, %1892 ]
  %1924 = phi float [ %1917, %1910 ], [ %1189, %1892 ]
  %1925 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1198, i32 undef)  ; BufferLoad(srv,index,wot)
  %1926 = extractvalue %dx.types.ResRet.i32 %1925, 0
  %1927 = and i32 %1926, 3
  %1928 = icmp eq i32 %1927, 3
  br i1 %1928, label %2007, label %1929

; <label>:1929                                    ; preds = %1918
  %1930 = and i32 %1926, 16
  %1931 = icmp ne i32 %1930, 0
  %1932 = select i1 %1931, float %1493, float 0.000000e+00
  %1933 = icmp eq i32 %1927, 0
  br i1 %1933, label %1934, label %1962

; <label>:1934                                    ; preds = %1929
  %1935 = and i32 %1926, 64
  %1936 = icmp ne i32 %1935, 0
  %1937 = select i1 %1936, float %1493, float 0.000000e+00
  %1938 = fsub fast float %1713, %1919
  %1939 = fsub fast float %1714, %1920
  %1940 = fsub fast float %1715, %1921
  %1941 = fmul fast float %1932, %1938
  %1942 = fmul fast float %1932, %1939
  %1943 = fmul fast float %1932, %1940
  %1944 = fadd fast float %1941, %1919
  %1945 = fadd fast float %1942, %1920
  %1946 = fadd fast float %1943, %1921
  %1947 = fsub fast float %1699, %1190
  %1948 = fmul fast float %1932, %1947
  %1949 = fadd fast float %1948, %1190
  %1950 = fsub fast float %1841, %1922
  %1951 = fsub fast float %1842, %1923
  %1952 = fsub fast float %1843, %1924
  %1953 = fmul fast float %1937, %1950
  %1954 = fmul fast float %1937, %1951
  %1955 = fmul fast float %1937, %1952
  %1956 = fadd fast float %1953, %1922
  %1957 = fadd fast float %1954, %1923
  %1958 = fadd fast float %1955, %1924
  %1959 = fsub fast float %1909, %1195
  %1960 = fmul fast float %1932, %1959
  %1961 = fadd fast float %1960, %1195
  br label %2007

; <label>:1962                                    ; preds = %1929
  %1963 = icmp eq i32 %1927, 1
  br i1 %1963, label %1964, label %1977

; <label>:1964                                    ; preds = %1962
  %1965 = fadd fast float %1713, -1.000000e+00
  %1966 = fadd fast float %1714, -1.000000e+00
  %1967 = fadd fast float %1715, -1.000000e+00
  %1968 = fmul fast float %1932, %1965
  %1969 = fmul fast float %1932, %1966
  %1970 = fmul fast float %1932, %1967
  %1971 = fadd fast float %1968, 1.000000e+00
  %1972 = fadd fast float %1969, 1.000000e+00
  %1973 = fadd fast float %1970, 1.000000e+00
  %1974 = fmul fast float %1971, %1919
  %1975 = fmul fast float %1972, %1920
  %1976 = fmul fast float %1973, %1921
  br label %2007

; <label>:1977                                    ; preds = %1962
  %1978 = icmp eq i32 %1927, 2
  br i1 %1978, label %1979, label %2007

; <label>:1979                                    ; preds = %1977
  %1980 = call float @dx.op.unary.f32(i32 24, float %1713)  ; Sqrt(value)
  %1981 = call float @dx.op.unary.f32(i32 24, float %1714)  ; Sqrt(value)
  %1982 = call float @dx.op.unary.f32(i32 24, float %1715)  ; Sqrt(value)
  %1983 = fadd fast float %1980, -5.000000e-01
  %1984 = fadd fast float %1981, -5.000000e-01
  %1985 = fadd fast float %1982, -5.000000e-01
  %1986 = fmul fast float %1983, %1932
  %1987 = fmul fast float %1984, %1932
  %1988 = fmul fast float %1985, %1932
  %1989 = fadd fast float %1986, 5.000000e-01
  %1990 = fadd fast float %1987, 5.000000e-01
  %1991 = fadd fast float %1988, 5.000000e-01
  %1992 = fmul fast float %1989, 2.000000e+00
  %1993 = fsub fast float 1.000000e+00, %1992
  %1994 = fmul fast float %1993, %1919
  %1995 = fadd fast float %1994, %1992
  %1996 = fmul fast float %1995, %1919
  %1997 = fmul fast float %1990, 2.000000e+00
  %1998 = fsub fast float 1.000000e+00, %1997
  %1999 = fmul fast float %1998, %1920
  %2000 = fadd fast float %1999, %1997
  %2001 = fmul fast float %2000, %1920
  %2002 = fmul fast float %1991, 2.000000e+00
  %2003 = fsub fast float 1.000000e+00, %2002
  %2004 = fmul fast float %2003, %1921
  %2005 = fadd fast float %2004, %2002
  %2006 = fmul fast float %2005, %1921
  br label %2007

; <label>:2007                                    ; preds = %1979, %1977, %1964, %1934, %1918
  %2008 = phi float [ %1919, %1918 ], [ %1996, %1979 ], [ %1919, %1977 ], [ %1974, %1964 ], [ %1944, %1934 ]
  %2009 = phi float [ %1920, %1918 ], [ %2001, %1979 ], [ %1920, %1977 ], [ %1975, %1964 ], [ %1945, %1934 ]
  %2010 = phi float [ %1921, %1918 ], [ %2006, %1979 ], [ %1921, %1977 ], [ %1976, %1964 ], [ %1946, %1934 ]
  %2011 = phi float [ %1922, %1918 ], [ %1922, %1979 ], [ %1922, %1977 ], [ %1922, %1964 ], [ %1956, %1934 ]
  %2012 = phi float [ %1923, %1918 ], [ %1923, %1979 ], [ %1923, %1977 ], [ %1923, %1964 ], [ %1957, %1934 ]
  %2013 = phi float [ %1924, %1918 ], [ %1924, %1979 ], [ %1924, %1977 ], [ %1924, %1964 ], [ %1958, %1934 ]
  %2014 = phi float [ %1190, %1918 ], [ %1190, %1979 ], [ %1190, %1977 ], [ %1190, %1964 ], [ %1949, %1934 ]
  %2015 = phi float [ %1195, %1918 ], [ %1195, %1979 ], [ %1195, %1977 ], [ %1195, %1964 ], [ %1961, %1934 ]
  %2016 = and i32 %1926, 12
  %2017 = icmp eq i32 %2016, 12
  br i1 %2017, label %2124, label %2018

; <label>:2018                                    ; preds = %2007
  %2019 = and i32 %1926, 2097184
  %2020 = icmp eq i32 %2019, 2097184
  %2021 = select i1 %2020, float %1493, float 0.000000e+00
  %2022 = and i32 %1926, 4194336
  %2023 = icmp eq i32 %2022, 4194336
  %2024 = select i1 %2023, float %1493, float 0.000000e+00
  %2025 = and i32 %1926, 8388640
  %2026 = icmp eq i32 %2025, 8388640
  %2027 = select i1 %2026, float %1493, float 0.000000e+00
  %2028 = and i32 %1926, 2048
  %2029 = icmp ne i32 %2028, 0
  %2030 = select i1 %2029, float %1493, float 0.000000e+00
  %2031 = and i32 %1926, 8192
  %2032 = icmp ne i32 %2031, 0
  %2033 = select i1 %2032, float %1493, float 0.000000e+00
  %2034 = icmp eq i32 %2016, 0
  br i1 %2034, label %2035, label %2060

; <label>:2035                                    ; preds = %2018
  %2036 = fsub fast float %1794, %1179
  %2037 = fsub fast float %1795, %1180
  %2038 = fmul fast float %2021, %2036
  %2039 = fmul fast float %2021, %2037
  %2040 = fadd fast float %2038, %1179
  %2041 = fadd fast float %2039, %1180
  %2042 = fsub fast float %1796, %1193
  %2043 = fmul fast float %2024, %2042
  %2044 = fadd fast float %2043, %1193
  %2045 = fsub fast float %1793, %1192
  %2046 = fmul fast float %2027, %2045
  %2047 = fadd fast float %2046, %1192
  %2048 = fsub fast float %1896, %1194
  %2049 = fmul fast float %2030, %2048
  %2050 = fadd fast float %2049, %1194
  %2051 = fsub fast float %1893, %1184
  %2052 = fsub fast float %1894, %1185
  %2053 = fsub fast float %1895, %1186
  %2054 = fmul fast float %2033, %2051
  %2055 = fmul fast float %2033, %2052
  %2056 = fmul fast float %2033, %2053
  %2057 = fadd fast float %2054, %1184
  %2058 = fadd fast float %2055, %1185
  %2059 = fadd fast float %2056, %1186
  br label %2124

; <label>:2060                                    ; preds = %2018
  %2061 = icmp eq i32 %2016, 4
  br i1 %2061, label %2062, label %2102

; <label>:2062                                    ; preds = %2060
  %2063 = fmul fast float %2021, %1794
  %2064 = fmul fast float %2021, %1795
  %2065 = fadd fast float %2063, %1179
  %2066 = fadd fast float %2064, %1180
  %2067 = call float @dx.op.binary.f32(i32 36, float %1193, float %1796)  ; FMin(a,b)
  %2068 = fsub fast float %2067, %1193
  %2069 = fmul fast float %2068, %2024
  %2070 = fadd fast float %2069, %1193
  %2071 = fadd fast float %1793, %1192
  %2072 = fmul fast float %2071, 0x3FF337FAE0000000
  %2073 = fmul fast float %1192, %1192
  %2074 = fmul fast float %1793, %1793
  %2075 = fadd fast float %2074, %2073
  %2076 = fmul fast float %2075, 0x3FE5152B00000000
  %2077 = fmul fast float %1192, 0xBFCC1F85E0000000
  %2078 = fmul fast float %2077, %1793
  %2079 = fadd fast float %2078, 0xBFE1363700000000
  %2080 = fadd fast float %2079, %2072
  %2081 = fsub fast float %2080, %2076
  %2082 = fmul fast float %2071, 0x3FBA6F0D00000000
  %2083 = fmul fast float %2075, 0x3FD0432880000000
  %2084 = fmul fast float %1192, 0xBFEF110800000000
  %2085 = fmul fast float %2084, %1793
  %2086 = fadd fast float %2085, 1.000000e+00
  %2087 = fsub fast float %2086, %2082
  %2088 = fadd fast float %2087, %2083
  %2089 = fdiv fast float %2081, %2088
  %2090 = call float @dx.op.unary.f32(i32 7, float %2089)  ; Saturate(value)
  %2091 = fsub fast float %2090, %1192
  %2092 = fmul fast float %2091, %2027
  %2093 = fadd fast float %2092, %1192
  %2094 = fmul fast float %2030, %1896
  %2095 = fadd fast float %2094, %1194
  %2096 = fmul fast float %2033, %1893
  %2097 = fmul fast float %2033, %1894
  %2098 = fmul fast float %2033, %1895
  %2099 = fadd fast float %2096, %1184
  %2100 = fadd fast float %2097, %1185
  %2101 = fadd fast float %2098, %1186
  br label %2124

; <label>:2102                                    ; preds = %2060
  %2103 = icmp eq i32 %2016, 8
  br i1 %2103, label %2104, label %2124

; <label>:2104                                    ; preds = %2102
  %2105 = fmul fast float %2021, %1794
  %2106 = fmul fast float %2021, %1795
  %2107 = fadd fast float %2105, %1179
  %2108 = fadd fast float %2106, %1180
  %2109 = call float @dx.op.binary.f32(i32 36, float %1193, float %1796)  ; FMin(a,b)
  %2110 = fsub fast float %2109, %1193
  %2111 = fmul fast float %2110, %2024
  %2112 = fadd fast float %2111, %1193
  %2113 = fsub fast float %1793, %1192
  %2114 = fmul fast float %2027, %2113
  %2115 = fadd fast float %2114, %1192
  %2116 = fmul fast float %2030, %1896
  %2117 = fadd fast float %2116, %1194
  %2118 = fmul fast float %2033, %1893
  %2119 = fmul fast float %2033, %1894
  %2120 = fmul fast float %2033, %1895
  %2121 = fadd fast float %2118, %1184
  %2122 = fadd fast float %2119, %1185
  %2123 = fadd fast float %2120, %1186
  br label %2124

; <label>:2124                                    ; preds = %2104, %2102, %2062, %2035, %2007, %1492, %1196, %1178
  %2125 = phi float [ %1179, %2007 ], [ %1179, %1492 ], [ %1179, %1178 ], [ %2107, %2104 ], [ %1179, %2102 ], [ %2065, %2062 ], [ %2040, %2035 ], [ %1179, %1196 ]
  %2126 = phi float [ %1180, %2007 ], [ %1180, %1492 ], [ %1180, %1178 ], [ %2108, %2104 ], [ %1180, %2102 ], [ %2066, %2062 ], [ %2041, %2035 ], [ %1180, %1196 ]
  %2127 = phi float [ %2008, %2007 ], [ %1181, %1492 ], [ %1181, %1178 ], [ %2008, %2104 ], [ %2008, %2102 ], [ %2008, %2062 ], [ %2008, %2035 ], [ %1181, %1196 ]
  %2128 = phi float [ %2009, %2007 ], [ %1182, %1492 ], [ %1182, %1178 ], [ %2009, %2104 ], [ %2009, %2102 ], [ %2009, %2062 ], [ %2009, %2035 ], [ %1182, %1196 ]
  %2129 = phi float [ %2010, %2007 ], [ %1183, %1492 ], [ %1183, %1178 ], [ %2010, %2104 ], [ %2010, %2102 ], [ %2010, %2062 ], [ %2010, %2035 ], [ %1183, %1196 ]
  %2130 = phi float [ %1184, %2007 ], [ %1184, %1492 ], [ %1184, %1178 ], [ %2121, %2104 ], [ %1184, %2102 ], [ %2099, %2062 ], [ %2057, %2035 ], [ %1184, %1196 ]
  %2131 = phi float [ %1185, %2007 ], [ %1185, %1492 ], [ %1185, %1178 ], [ %2122, %2104 ], [ %1185, %2102 ], [ %2100, %2062 ], [ %2058, %2035 ], [ %1185, %1196 ]
  %2132 = phi float [ %1186, %2007 ], [ %1186, %1492 ], [ %1186, %1178 ], [ %2123, %2104 ], [ %1186, %2102 ], [ %2101, %2062 ], [ %2059, %2035 ], [ %1186, %1196 ]
  %2133 = phi float [ %2011, %2007 ], [ %1187, %1492 ], [ %1187, %1178 ], [ %2011, %2104 ], [ %2011, %2102 ], [ %2011, %2062 ], [ %2011, %2035 ], [ %1187, %1196 ]
  %2134 = phi float [ %2012, %2007 ], [ %1188, %1492 ], [ %1188, %1178 ], [ %2012, %2104 ], [ %2012, %2102 ], [ %2012, %2062 ], [ %2012, %2035 ], [ %1188, %1196 ]
  %2135 = phi float [ %2013, %2007 ], [ %1189, %1492 ], [ %1189, %1178 ], [ %2013, %2104 ], [ %2013, %2102 ], [ %2013, %2062 ], [ %2013, %2035 ], [ %1189, %1196 ]
  %2136 = phi float [ %2014, %2007 ], [ %1190, %1492 ], [ %1190, %1178 ], [ %2014, %2104 ], [ %2014, %2102 ], [ %2014, %2062 ], [ %2014, %2035 ], [ %1190, %1196 ]
  %2137 = phi float [ %1192, %2007 ], [ %1192, %1492 ], [ %1192, %1178 ], [ %2115, %2104 ], [ %1192, %2102 ], [ %2093, %2062 ], [ %2047, %2035 ], [ %1192, %1196 ]
  %2138 = phi float [ %1193, %2007 ], [ %1193, %1492 ], [ %1193, %1178 ], [ %2112, %2104 ], [ %1193, %2102 ], [ %2070, %2062 ], [ %2044, %2035 ], [ %1193, %1196 ]
  %2139 = phi float [ %1194, %2007 ], [ %1194, %1492 ], [ %1194, %1178 ], [ %2117, %2104 ], [ %1194, %2102 ], [ %2095, %2062 ], [ %2050, %2035 ], [ %1194, %1196 ]
  %2140 = phi float [ %2015, %2007 ], [ %1195, %1492 ], [ %1195, %1178 ], [ %2015, %2104 ], [ %2015, %2102 ], [ %2015, %2062 ], [ %2015, %2035 ], [ %1195, %1196 ]
  br i1 %411, label %3069, label %2141

; <label>:2141                                    ; preds = %2124
  %2142 = icmp ult i32 %467, 3
  %2143 = add i32 %60, 56
  %2144 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2143, i32 undef)  ; BufferLoad(srv,index,wot)
  %2145 = extractvalue %dx.types.ResRet.i32 %2144, 0
  %2146 = add i32 %60, 60
  %2147 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2146, i32 undef)  ; BufferLoad(srv,index,wot)
  %2148 = extractvalue %dx.types.ResRet.i32 %2147, 0
  %2149 = or i32 %2148, %2145
  %2150 = icmp eq i32 %2149, 0
  br i1 %2150, label %3069, label %2151

; <label>:2151                                    ; preds = %2141
  %2152 = and i32 %2145, 262144
  %2153 = icmp ne i32 %2152, 0
  %2154 = select i1 %2153, float %63, float 1.000000e+00
  %2155 = select i1 %2153, float %64, float 0.000000e+00
  %2156 = select i1 %2153, float %65, float 0.000000e+00
  %2157 = select i1 %2153, float %66, float 1.000000e+00
  %2158 = select i1 %2153, float %67, float %88
  %2159 = select i1 %2153, float %68, float %89
  %2160 = add i32 %60, 316
  %2161 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2160, i32 undef)  ; BufferLoad(srv,index,wot)
  %2162 = extractvalue %dx.types.ResRet.i32 %2161, 0
  %2163 = lshr i32 %2162, 16
  %2164 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2163)  ; LegacyF16ToF32(value)
  %2165 = fmul fast float %2164, 0x3F50624DE0000000
  %2166 = add i32 %60, 120
  %2167 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2166, i32 undef)  ; BufferLoad(srv,index,wot)
  %2168 = extractvalue %dx.types.ResRet.i32 %2167, 0
  %2169 = lshr i32 %2168, 16
  %2170 = and i32 %2169, 255
  %2171 = lshr i32 %2168, 24
  %2172 = add i32 %60, 324
  %2173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2172, i32 undef)  ; BufferLoad(srv,index,wot)
  %2174 = extractvalue %dx.types.ResRet.i32 %2173, 0
  %2175 = and i32 %2174, 65535
  %2176 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2175)  ; LegacyF16ToF32(value)
  %2177 = lshr i32 %2174, 16
  %2178 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2177)  ; LegacyF16ToF32(value)
  %2179 = add i32 %60, 64
  %2180 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2179, i32 undef)  ; BufferLoad(srv,index,wot)
  %2181 = extractvalue %dx.types.ResRet.i32 %2180, 0
  %2182 = lshr i32 %2181, 22
  %2183 = shl nuw nsw i32 %2182, 5
  %2184 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2183)  ; LegacyF16ToF32(value)
  %2185 = shl i32 %2181, 4
  %2186 = and i32 %2185, 32752
  %2187 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2186)  ; LegacyF16ToF32(value)
  %2188 = lshr i32 %2181, 7
  %2189 = and i32 %2188, 32752
  %2190 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2189)  ; LegacyF16ToF32(value)
  %2191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2192 = extractvalue %dx.types.CBufRet.f32 %2191, 3
  %2193 = fmul fast float %2192, 1.000000e+03
  %2194 = fmul fast float %361, %2193
  %2195 = call float @dx.op.unary.f32(i32 22, float %2194)  ; Frc(value)
  %2196 = fadd fast float %2195, %351
  %2197 = fmul fast float %362, %2193
  %2198 = call float @dx.op.unary.f32(i32 22, float %2197)  ; Frc(value)
  %2199 = fadd fast float %2198, %353
  %2200 = fmul fast float %2165, %2193
  %2201 = call float @dx.op.unary.f32(i32 22, float %2200)  ; Frc(value)
  %2202 = fmul fast float %2201, 0x401921FB60000000
  %2203 = fadd fast float %2202, %2184
  %2204 = call float @dx.op.unary.f32(i32 13, float %2203)  ; Sin(value)
  %2205 = call float @dx.op.unary.f32(i32 12, float %2203)  ; Cos(value)
  %2206 = fsub fast float -0.000000e+00, %2204
  %2207 = fadd fast float %2158, -5.000000e-01
  %2208 = fadd fast float %2159, -5.000000e-01
  %2209 = fmul fast float %2176, %2207
  %2210 = fmul fast float %2178, %2208
  %2211 = fadd fast float %2209, 5.000000e-01
  %2212 = fadd fast float %2210, 5.000000e-01
  %2213 = fmul fast float %2187, %2211
  %2214 = fmul fast float %2190, %2212
  %2215 = fmul fast float %2205, %2213
  %2216 = call float @dx.op.tertiary.f32(i32 46, float %2206, float %2214, float %2215)  ; FMad(a,b,c)
  %2217 = fmul fast float %2204, %2213
  %2218 = call float @dx.op.tertiary.f32(i32 46, float %2205, float %2214, float %2217)  ; FMad(a,b,c)
  %2219 = fadd fast float %2196, %2216
  %2220 = fadd fast float %2199, %2218
  %2221 = icmp ugt i32 %2170, 1
  %2222 = icmp ugt i32 %2168, 33554431
  %2223 = or i1 %2222, %2221
  br i1 %2223, label %2224, label %2249

; <label>:2224                                    ; preds = %2151
  %2225 = add i32 %60, 260
  %2226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2225, i32 undef)  ; BufferLoad(srv,index,wot)
  %2227 = extractvalue %dx.types.ResRet.i32 %2226, 0
  %2228 = lshr i32 %2227, 16
  %2229 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2228)  ; LegacyF16ToF32(value)
  %2230 = fmul fast float %2192, %2229
  %2231 = call float @dx.op.unary.f32(i32 22, float %2230)  ; Frc(value)
  %2232 = mul nuw nsw i32 %2170, %2171
  %2233 = uitofp i32 %2232 to float
  %2234 = fmul fast float %2231, %2233
  %2235 = call float @dx.op.unary.f32(i32 27, float %2234)  ; Round_ni(value)
  %2236 = fptoui float %2235 to i32
  %2237 = urem i32 %2236, %2170
  %2238 = udiv i32 %2236, %2171
  %2239 = call float @dx.op.unary.f32(i32 22, float %2219)  ; Frc(value)
  %2240 = call float @dx.op.unary.f32(i32 22, float %2220)  ; Frc(value)
  %2241 = uitofp i32 %2237 to float
  %2242 = uitofp i32 %2238 to float
  %2243 = fadd fast float %2239, %2241
  %2244 = fadd fast float %2240, %2242
  %2245 = uitofp i32 %2170 to float
  %2246 = uitofp i32 %2171 to float
  %2247 = fdiv fast float %2243, %2245
  %2248 = fdiv fast float %2244, %2246
  br label %2249

; <label>:2249                                    ; preds = %2224, %2151
  %2250 = phi float [ %2247, %2224 ], [ %2219, %2151 ]
  %2251 = phi float [ %2248, %2224 ], [ %2220, %2151 ]
  %2252 = and i32 %2145, 16777216
  %2253 = icmp eq i32 %2252, 0
  br i1 %2253, label %2363, label %2254

; <label>:2254                                    ; preds = %2249
  %2255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2256 = extractvalue %dx.types.CBufRet.f32 %2255, 0
  %2257 = extractvalue %dx.types.CBufRet.f32 %2255, 1
  %2258 = extractvalue %dx.types.CBufRet.f32 %2255, 2
  %2259 = fadd fast float %2256, %164
  %2260 = fadd fast float %2257, %165
  %2261 = fadd fast float %2258, %166
  %2262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2263 = extractvalue %dx.types.CBufRet.f32 %2262, 0
  %2264 = call float @dx.op.unary.f32(i32 7, float %2263)  ; Saturate(value)
  %2265 = icmp eq i32 %61, 65535
  br i1 %2265, label %2360, label %2266

; <label>:2266                                    ; preds = %2254
  %2267 = lshr i32 %61, 1
  %2268 = shl i32 %2267, 2
  %2269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2268, i32 undef)  ; BufferLoad(srv,index,wot)
  %2270 = extractvalue %dx.types.ResRet.i32 %2269, 0
  %2271 = and i32 %61, 1
  %2272 = icmp ne i32 %2271, 0
  %2273 = lshr i32 %2270, 16
  %2274 = and i32 %2270, 65535
  %2275 = select i1 %2272, i32 %2273, i32 %2274
  %2276 = icmp eq i32 %2275, 65535
  br i1 %2276, label %2356, label %2277

; <label>:2277                                    ; preds = %2266
  %2278 = mul nuw nsw i32 %2275, 40
  %2279 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %2278, i32 undef)  ; BufferLoad(srv,index,wot)
  %2280 = extractvalue %dx.types.ResRet.f32 %2279, 0
  %2281 = extractvalue %dx.types.ResRet.f32 %2279, 1
  %2282 = extractvalue %dx.types.ResRet.f32 %2279, 2
  %2283 = add nuw nsw i32 %2278, 12
  %2284 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %2283, i32 undef)  ; BufferLoad(srv,index,wot)
  %2285 = extractvalue %dx.types.ResRet.f32 %2284, 0
  %2286 = extractvalue %dx.types.ResRet.f32 %2284, 1
  %2287 = extractvalue %dx.types.ResRet.f32 %2284, 2
  %2288 = add nuw nsw i32 %2278, 24
  %2289 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %2288, i32 undef)  ; BufferLoad(srv,index,wot)
  %2290 = extractvalue %dx.types.ResRet.f32 %2289, 0
  %2291 = extractvalue %dx.types.ResRet.f32 %2289, 1
  %2292 = extractvalue %dx.types.ResRet.f32 %2289, 2
  %2293 = add nuw nsw i32 %2278, 36
  %2294 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %2293, i32 undef)  ; BufferLoad(srv,index,wot)
  %2295 = extractvalue %dx.types.ResRet.f32 %2294, 0
  %2296 = fsub fast float %2259, %2280
  %2297 = fsub fast float %2260, %2281
  %2298 = fsub fast float %2261, %2282
  %2299 = fmul fast float %2295, %2296
  %2300 = fmul fast float %2295, %2297
  %2301 = fmul fast float %2295, %2298
  %2302 = call float @dx.op.unary.f32(i32 27, float %2299)  ; Round_ni(value)
  %2303 = call float @dx.op.unary.f32(i32 27, float %2300)  ; Round_ni(value)
  %2304 = call float @dx.op.unary.f32(i32 27, float %2301)  ; Round_ni(value)
  %2305 = fadd fast float %2302, 5.000000e-01
  %2306 = fadd fast float %2303, 5.000000e-01
  %2307 = fadd fast float %2304, 5.000000e-01
  %2308 = fmul fast float %2305, %2285
  %2309 = fmul fast float %2306, %2286
  %2310 = fmul fast float %2307, %2287
  %2311 = shl i32 %61, 2
  %2312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2311, i32 undef)  ; BufferLoad(srv,index,wot)
  %2313 = extractvalue %dx.types.ResRet.i32 %2312, 0
  %2314 = add i32 %2313, 0
  %2315 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2314, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2316 = call float @dx.op.unary.f32(i32 22, float %2308)  ; Frc(value)
  %2317 = call float @dx.op.unary.f32(i32 22, float %2309)  ; Frc(value)
  %2318 = call float @dx.op.unary.f32(i32 22, float %2310)  ; Frc(value)
  %2319 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2315, %dx.types.Handle %47, float %2316, float %2317, float %2318, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2320 = extractvalue %dx.types.ResRet.f32 %2319, 0
  %2321 = extractvalue %dx.types.ResRet.f32 %2319, 1
  %2322 = extractvalue %dx.types.ResRet.f32 %2319, 2
  %2323 = fmul fast float %2320, 1.023000e+03
  %2324 = fmul fast float %2321, 1.023000e+03
  %2325 = fmul fast float %2322, 1.023000e+03
  %2326 = fadd fast float %2323, 5.000000e-01
  %2327 = fadd fast float %2324, 5.000000e-01
  %2328 = fadd fast float %2325, 5.000000e-01
  %2329 = call float @dx.op.unary.f32(i32 27, float %2326)  ; Round_ni(value)
  %2330 = call float @dx.op.unary.f32(i32 27, float %2327)  ; Round_ni(value)
  %2331 = call float @dx.op.unary.f32(i32 27, float %2328)  ; Round_ni(value)
  %2332 = fsub fast float %2299, %2302
  %2333 = fsub fast float %2300, %2303
  %2334 = fsub fast float %2301, %2304
  %2335 = fmul fast float %2332, 7.500000e-01
  %2336 = fmul fast float %2333, 7.500000e-01
  %2337 = fmul fast float %2334, 7.500000e-01
  %2338 = fadd fast float %2302, 1.250000e-01
  %2339 = fadd fast float %2338, %2335
  %2340 = fadd fast float %2339, %2329
  %2341 = fadd fast float %2303, 1.250000e-01
  %2342 = fadd fast float %2341, %2336
  %2343 = fadd fast float %2342, %2330
  %2344 = fadd fast float %2304, 1.250000e-01
  %2345 = fadd fast float %2344, %2337
  %2346 = fadd fast float %2345, %2331
  %2347 = fmul fast float %2340, %2290
  %2348 = fmul fast float %2343, %2291
  %2349 = fmul fast float %2346, %2292
  %2350 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2311, i32 undef)  ; BufferLoad(srv,index,wot)
  %2351 = extractvalue %dx.types.ResRet.i32 %2350, 0
  %2352 = add i32 %2351, 0
  %2353 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2352, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2354 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2353, %dx.types.Handle %45, float %2347, float %2348, float %2349, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2355 = extractvalue %dx.types.ResRet.f32 %2354, 0
  br label %2356

; <label>:2356                                    ; preds = %2277, %2266
  %2357 = phi float [ %2355, %2277 ], [ -1.000000e+00, %2266 ]
  %2358 = fadd fast float %2357, %2264
  %2359 = call float @dx.op.unary.f32(i32 7, float %2358)  ; Saturate(value)
  br label %2360

; <label>:2360                                    ; preds = %2356, %2254
  %2361 = phi float [ %2359, %2356 ], [ %2264, %2254 ]
  %2362 = fmul fast float %2361, %463
  br label %2363

; <label>:2363                                    ; preds = %2360, %2249
  %2364 = phi float [ %2362, %2360 ], [ %463, %2249 ]
  %2365 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2143, i32 undef)  ; BufferLoad(srv,index,wot)
  %2366 = extractvalue %dx.types.ResRet.i32 %2365, 0
  %2367 = and i32 %2366, 256
  %2368 = icmp eq i32 %2367, 0
  br i1 %2368, label %2415, label %2369

; <label>:2369                                    ; preds = %2363
  %2370 = add i32 %60, 432
  %2371 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2370, i32 undef)  ; BufferLoad(srv,index,wot)
  %2372 = extractvalue %dx.types.ResRet.i32 %2371, 0
  %2373 = add i32 %2372, 0
  %2374 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2373, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2375 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2374, %dx.types.Handle %106, float %2250, float %2251, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2376 = extractvalue %dx.types.ResRet.f32 %2375, 0
  %2377 = add i32 %60, 132
  %2378 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2377, i32 undef)  ; BufferLoad(srv,index,wot)
  %2379 = extractvalue %dx.types.ResRet.i32 %2378, 0
  %2380 = shl i32 %2379, 4
  %2381 = and i32 %2380, 32752
  %2382 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2381)  ; LegacyF16ToF32(value)
  %2383 = lshr i32 %2379, 7
  %2384 = and i32 %2383, 32752
  %2385 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2384)  ; LegacyF16ToF32(value)
  %2386 = fsub fast float 1.000000e+00, %2364
  %2387 = call float @dx.op.binary.f32(i32 35, float %2386, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2388 = bitcast float %2364 to i32
  %2389 = sitofp i32 %2388 to float
  %2390 = fadd fast float %2389, 0xC1CFBF8940000000
  %2391 = fmul fast float %2385, %2390
  %2392 = fadd fast float %2391, 0x41CFBF8940000000
  %2393 = fptosi float %2392 to i32
  %2394 = bitcast i32 %2393 to float
  %2395 = bitcast float %2387 to i32
  %2396 = sitofp i32 %2395 to float
  %2397 = fadd fast float %2396, 0xC1CFBF8940000000
  %2398 = fmul fast float %2397, %2385
  %2399 = fadd fast float %2398, 0x41CFBF8940000000
  %2400 = fptosi float %2399 to i32
  %2401 = bitcast i32 %2400 to float
  %2402 = fmul fast float %2394, %2382
  %2403 = fmul fast float %2401, %2382
  %2404 = fsub fast float %2387, %2402
  %2405 = fadd fast float %2403, %2387
  %2406 = call float @dx.op.unary.f32(i32 7, float %2404)  ; Saturate(value)
  %2407 = call float @dx.op.unary.f32(i32 7, float %2405)  ; Saturate(value)
  %2408 = fsub fast float %2376, %2406
  %2409 = fsub fast float %2407, %2406
  %2410 = bitcast float %2409 to i32
  %2411 = sub nsw i32 2129859010, %2410
  %2412 = bitcast i32 %2411 to float
  %2413 = fmul fast float %2412, %2408
  %2414 = call float @dx.op.unary.f32(i32 7, float %2413)  ; Saturate(value)
  br label %2415

; <label>:2415                                    ; preds = %2369, %2363
  %2416 = phi float [ %2414, %2369 ], [ %2364, %2363 ]
  %2417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2143, i32 undef)  ; BufferLoad(srv,index,wot)
  %2418 = extractvalue %dx.types.ResRet.i32 %2417, 0
  %2419 = and i32 %2418, 128
  %2420 = icmp eq i32 %2419, 0
  br i1 %2420, label %2437, label %2421

; <label>:2421                                    ; preds = %2415
  %2422 = add i32 %60, 416
  %2423 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2422, i32 undef)  ; BufferLoad(srv,index,wot)
  %2424 = extractvalue %dx.types.ResRet.i32 %2423, 0
  %2425 = add i32 %2424, 0
  %2426 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2425, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2427 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2426, %dx.types.Handle %106, float %2250, float %2251, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2428 = extractvalue %dx.types.ResRet.f32 %2427, 0
  %2429 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2143, i32 undef)  ; BufferLoad(srv,index,wot)
  %2430 = extractvalue %dx.types.ResRet.i32 %2429, 0
  %2431 = and i32 %2430, 524288
  %2432 = icmp ne i32 %2431, 0
  %2433 = fcmp fast ogt float %2428, 0x3FE0101020000000
  %2434 = select i1 %2433, float 1.000000e+00, float 0.000000e+00
  %2435 = select i1 %2432, float %2434, float %2428
  %2436 = fmul fast float %2435, %2416
  br label %2437

; <label>:2437                                    ; preds = %2421, %2415
  %2438 = phi float [ %2436, %2421 ], [ %2416, %2415 ]
  %2439 = fcmp fast ult float %2438, 0x3F70101020000000
  br i1 %2439, label %3069, label %2440

; <label>:2440                                    ; preds = %2437
  %2441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2143, i32 undef)  ; BufferLoad(srv,index,wot)
  %2442 = extractvalue %dx.types.ResRet.i32 %2441, 0
  %2443 = and i32 %2442, 16
  %2444 = icmp eq i32 %2443, 0
  br i1 %2444, label %2643, label %2445

; <label>:2445                                    ; preds = %2440
  %2446 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2166, i32 undef)  ; BufferLoad(srv,index,wot)
  %2447 = extractvalue %dx.types.ResRet.i32 %2446, 0
  %2448 = add i32 %60, 368
  %2449 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2448, i32 undef)  ; BufferLoad(srv,index,wot)
  %2450 = extractvalue %dx.types.ResRet.i32 %2449, 0
  %2451 = add i32 %2450, 0
  %2452 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2451, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2453 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2452, %dx.types.Handle %105, float %2250, float %2251, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2454 = extractvalue %dx.types.ResRet.f32 %2453, 0
  %2455 = extractvalue %dx.types.ResRet.f32 %2453, 1
  %2456 = extractvalue %dx.types.ResRet.f32 %2453, 2
  %2457 = extractvalue %dx.types.ResRet.f32 %2453, 3
  %2458 = and i32 %2447, 255
  %2459 = uitofp i32 %2458 to float
  %2460 = lshr i32 %2447, 8
  %2461 = and i32 %2460, 255
  %2462 = uitofp i32 %2461 to float
  %2463 = fmul fast float %2457, %2459
  %2464 = fadd fast float %2463, %2462
  %2465 = fmul fast float %2464, 0x3F70101000000000
  %2466 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2143, i32 undef)  ; BufferLoad(srv,index,wot)
  %2467 = extractvalue %dx.types.ResRet.i32 %2466, 0
  %2468 = and i32 %2467, 512
  %2469 = icmp eq i32 %2468, 0
  br i1 %2469, label %2478, label %2470

; <label>:2470                                    ; preds = %2445
  %2471 = add i32 %60, 448
  %2472 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2471, i32 undef)  ; BufferLoad(srv,index,wot)
  %2473 = extractvalue %dx.types.ResRet.i32 %2472, 0
  %2474 = add i32 %2473, 0
  %2475 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2474, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2476 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2475, %dx.types.Handle %106, float %2250, float %2251, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2477 = extractvalue %dx.types.ResRet.f32 %2476, 0
  br label %2478

; <label>:2478                                    ; preds = %2470, %2445
  %2479 = phi float [ %2477, %2470 ], [ 1.000000e+00, %2445 ]
  %2480 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2143, i32 undef)  ; BufferLoad(srv,index,wot)
  %2481 = extractvalue %dx.types.ResRet.i32 %2480, 0
  %2482 = and i32 %2481, 33554432
  %2483 = icmp eq i32 %2482, 0
  br i1 %2483, label %2590, label %2484

; <label>:2484                                    ; preds = %2478
  %2485 = add i32 %60, 256
  %2486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2485, i32 undef)  ; BufferLoad(srv,index,wot)
  %2487 = extractvalue %dx.types.ResRet.i32 %2486, 0
  %2488 = and i32 %2487, 65535
  %2489 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2488)  ; LegacyF16ToF32(value)
  %2490 = lshr i32 %2487, 16
  %2491 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2490)  ; LegacyF16ToF32(value)
  %2492 = add i32 %60, 260
  %2493 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2492, i32 undef)  ; BufferLoad(srv,index,wot)
  %2494 = extractvalue %dx.types.ResRet.i32 %2493, 0
  %2495 = and i32 %2494, 65535
  %2496 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2495)  ; LegacyF16ToF32(value)
  %2497 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %333, i32 undef)  ; BufferLoad(srv,index,wot)
  %2498 = extractvalue %dx.types.ResRet.i32 %2497, 0
  %2499 = lshr i32 %2498, 24
  %2500 = uitofp i32 %2499 to float
  %2501 = fmul fast float %2500, 0x3F70101020000000
  %2502 = and i32 %2498, 255
  %2503 = uitofp i32 %2502 to float
  %2504 = fmul fast float %2503, 0x3F70101020000000
  %2505 = lshr i32 %2498, 8
  %2506 = and i32 %2505, 255
  %2507 = uitofp i32 %2506 to float
  %2508 = fmul fast float %2507, 0x3F70101020000000
  %2509 = lshr i32 %2498, 16
  %2510 = and i32 %2509, 255
  %2511 = uitofp i32 %2510 to float
  %2512 = fmul fast float %2511, 0x3F70101020000000
  %2513 = add i32 %60, 252
  %2514 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2513, i32 undef)  ; BufferLoad(srv,index,wot)
  %2515 = extractvalue %dx.types.ResRet.i32 %2514, 0
  %2516 = lshr i32 %2515, 24
  %2517 = uitofp i32 %2516 to float
  %2518 = fmul fast float %2517, 0x3F70101020000000
  %2519 = and i32 %2515, 255
  %2520 = uitofp i32 %2519 to float
  %2521 = fmul fast float %2520, 0x3F70101020000000
  %2522 = lshr i32 %2515, 8
  %2523 = and i32 %2522, 255
  %2524 = uitofp i32 %2523 to float
  %2525 = fmul fast float %2524, 0x3F70101020000000
  %2526 = lshr i32 %2515, 16
  %2527 = and i32 %2526, 255
  %2528 = uitofp i32 %2527 to float
  %2529 = fmul fast float %2528, 0x3F70101020000000
  %2530 = bitcast float %2454 to i32
  %2531 = ashr i32 %2530, 1
  %2532 = sub nsw i32 1597463174, %2531
  %2533 = bitcast i32 %2532 to float
  %2534 = fmul fast float %2454, 5.000000e-01
  %2535 = fmul fast float %2533, %2533
  %2536 = fmul fast float %2535, %2534
  %2537 = fsub fast float 1.500000e+00, %2536
  %2538 = fmul fast float %2533, %2454
  %2539 = fmul fast float %2538, %2537
  %2540 = bitcast float %2455 to i32
  %2541 = ashr i32 %2540, 1
  %2542 = sub nsw i32 1597463174, %2541
  %2543 = bitcast i32 %2542 to float
  %2544 = fmul fast float %2455, 5.000000e-01
  %2545 = fmul fast float %2543, %2543
  %2546 = fmul fast float %2545, %2544
  %2547 = fsub fast float 1.500000e+00, %2546
  %2548 = fmul fast float %2543, %2455
  %2549 = fmul fast float %2548, %2547
  %2550 = bitcast float %2456 to i32
  %2551 = ashr i32 %2550, 1
  %2552 = sub nsw i32 1597463174, %2551
  %2553 = bitcast i32 %2552 to float
  %2554 = fmul fast float %2456, 5.000000e-01
  %2555 = fmul fast float %2553, %2553
  %2556 = fmul fast float %2555, %2554
  %2557 = fsub fast float 1.500000e+00, %2556
  %2558 = fmul fast float %2553, %2456
  %2559 = fmul fast float %2558, %2557
  %2560 = fsub fast float %2539, %2521
  %2561 = fsub fast float %2549, %2525
  %2562 = fsub fast float %2559, %2529
  %2563 = fmul fast float %2560, %2489
  %2564 = fmul fast float %2561, %2491
  %2565 = fmul fast float %2562, %2496
  %2566 = fadd fast float %2563, %2504
  %2567 = fadd fast float %2564, %2508
  %2568 = fadd fast float %2565, %2512
  %2569 = call float @dx.op.unary.f32(i32 7, float %2566)  ; Saturate(value)
  %2570 = call float @dx.op.unary.f32(i32 7, float %2567)  ; Saturate(value)
  %2571 = call float @dx.op.unary.f32(i32 7, float %2568)  ; Saturate(value)
  %2572 = fmul fast float %2569, %2569
  %2573 = fmul fast float %2570, %2570
  %2574 = fmul fast float %2571, %2571
  %2575 = fsub fast float %2572, %2454
  %2576 = fsub fast float %2573, %2455
  %2577 = fsub fast float %2574, %2456
  %2578 = fmul fast float %2575, %2479
  %2579 = fmul fast float %2576, %2479
  %2580 = fmul fast float %2577, %2479
  %2581 = fadd fast float %2578, %2454
  %2582 = fadd fast float %2579, %2455
  %2583 = fadd fast float %2580, %2456
  %2584 = fadd fast float %2501, %2465
  %2585 = fsub fast float %2584, %2518
  %2586 = call float @dx.op.unary.f32(i32 7, float %2585)  ; Saturate(value)
  %2587 = fsub fast float %2586, %2465
  %2588 = fmul fast float %2587, %2479
  %2589 = fadd fast float %2588, %2465
  br label %2643

; <label>:2590                                    ; preds = %2478
  %2591 = and i32 %2481, 134217728
  %2592 = icmp eq i32 %2591, 0
  br i1 %2592, label %2627, label %2593

; <label>:2593                                    ; preds = %2590
  %2594 = call float @dx.op.unary.f32(i32 24, float %338)  ; Sqrt(value)
  %2595 = call float @dx.op.unary.f32(i32 24, float %342)  ; Sqrt(value)
  %2596 = call float @dx.op.unary.f32(i32 24, float %346)  ; Sqrt(value)
  %2597 = fadd fast float %2594, -5.000000e-01
  %2598 = fadd fast float %2595, -5.000000e-01
  %2599 = fadd fast float %2596, -5.000000e-01
  %2600 = fmul fast float %2597, %2479
  %2601 = fmul fast float %2598, %2479
  %2602 = fmul fast float %2599, %2479
  %2603 = fadd fast float %2600, 5.000000e-01
  %2604 = fadd fast float %2601, 5.000000e-01
  %2605 = fadd fast float %2602, 5.000000e-01
  %2606 = call float @dx.op.unary.f32(i32 24, float %2454)  ; Sqrt(value)
  %2607 = call float @dx.op.unary.f32(i32 24, float %2455)  ; Sqrt(value)
  %2608 = call float @dx.op.unary.f32(i32 24, float %2456)  ; Sqrt(value)
  %2609 = fmul fast float %2603, 2.000000e+00
  %2610 = fsub fast float 1.000000e+00, %2609
  %2611 = fmul fast float %2610, %2606
  %2612 = fadd fast float %2611, %2609
  %2613 = fmul fast float %2612, %2606
  %2614 = fmul fast float %2604, 2.000000e+00
  %2615 = fsub fast float 1.000000e+00, %2614
  %2616 = fmul fast float %2615, %2607
  %2617 = fadd fast float %2616, %2614
  %2618 = fmul fast float %2617, %2607
  %2619 = fmul fast float %2605, 2.000000e+00
  %2620 = fsub fast float 1.000000e+00, %2619
  %2621 = fmul fast float %2620, %2608
  %2622 = fadd fast float %2621, %2619
  %2623 = fmul fast float %2622, %2608
  %2624 = fmul fast float %2613, %2613
  %2625 = fmul fast float %2618, %2618
  %2626 = fmul fast float %2623, %2623
  br label %2643

; <label>:2627                                    ; preds = %2590
  %2628 = fmul fast float %338, %338
  %2629 = fmul fast float %342, %342
  %2630 = fmul fast float %346, %346
  %2631 = fadd fast float %2628, -1.000000e+00
  %2632 = fadd fast float %2629, -1.000000e+00
  %2633 = fadd fast float %2630, -1.000000e+00
  %2634 = fmul fast float %2479, %2631
  %2635 = fmul fast float %2479, %2632
  %2636 = fmul fast float %2479, %2633
  %2637 = fadd fast float %2634, 1.000000e+00
  %2638 = fadd fast float %2635, 1.000000e+00
  %2639 = fadd fast float %2636, 1.000000e+00
  %2640 = fmul fast float %2637, %2454
  %2641 = fmul fast float %2638, %2455
  %2642 = fmul fast float %2639, %2456
  br label %2643

; <label>:2643                                    ; preds = %2627, %2593, %2484, %2440
  %2644 = phi float [ %2589, %2484 ], [ %2465, %2593 ], [ %2465, %2627 ], [ 0x3FA23C0BE0000000, %2440 ]
  %2645 = phi float [ %2581, %2484 ], [ %2624, %2593 ], [ %2640, %2627 ], [ 1.000000e+00, %2440 ]
  %2646 = phi float [ %2582, %2484 ], [ %2625, %2593 ], [ %2641, %2627 ], [ 1.000000e+00, %2440 ]
  %2647 = phi float [ %2583, %2484 ], [ %2626, %2593 ], [ %2642, %2627 ], [ 1.000000e+00, %2440 ]
  %2648 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2649 = extractvalue %dx.types.CBufRet.i32 %2648, 1
  %2650 = and i32 %2649, 1
  %2651 = icmp ne i32 %2650, 0
  %2652 = add i32 %60, 356
  %2653 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2652, i32 undef)  ; BufferLoad(srv,index,wot)
  %2654 = extractvalue %dx.types.ResRet.i32 %2653, 0
  %2655 = and i32 %2654, 32
  %2656 = icmp ne i32 %2655, 0
  %2657 = and i1 %2651, %2656
  %2658 = select i1 %2657, float 1.000000e+00, float %2645
  %2659 = select i1 %2657, float 0x3FD3333340000000, float %2646
  %2660 = select i1 %2657, float 0x3FD3333340000000, float %2647
  %2661 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2143, i32 undef)  ; BufferLoad(srv,index,wot)
  %2662 = extractvalue %dx.types.ResRet.i32 %2661, 0
  %2663 = and i32 %2662, 32
  %2664 = icmp eq i32 %2663, 0
  br i1 %2664, label %2737, label %2665

; <label>:2665                                    ; preds = %2643
  %2666 = add i32 %60, 124
  %2667 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2666, i32 undef)  ; BufferLoad(srv,index,wot)
  %2668 = extractvalue %dx.types.ResRet.i32 %2667, 0
  %2669 = add i32 %60, 384
  %2670 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2669, i32 undef)  ; BufferLoad(srv,index,wot)
  %2671 = extractvalue %dx.types.ResRet.i32 %2670, 0
  %2672 = add i32 %2671, 0
  %2673 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2672, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2674 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2673, %dx.types.Handle %105, float %2250, float %2251, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2675 = extractvalue %dx.types.ResRet.f32 %2674, 0
  %2676 = extractvalue %dx.types.ResRet.f32 %2674, 1
  %2677 = extractvalue %dx.types.ResRet.f32 %2674, 2
  %2678 = extractvalue %dx.types.ResRet.f32 %2674, 3
  %2679 = and i32 %2668, 255
  %2680 = uitofp i32 %2679 to float
  %2681 = lshr i32 %2668, 8
  %2682 = and i32 %2681, 255
  %2683 = uitofp i32 %2682 to float
  %2684 = lshr i32 %2668, 16
  %2685 = and i32 %2684, 255
  %2686 = uitofp i32 %2685 to float
  %2687 = fmul fast float %2686, 0x3F70101000000000
  %2688 = fmul fast float %2675, %2680
  %2689 = fadd fast float %2688, %2683
  %2690 = fmul fast float %2689, 0x3F70101000000000
  %2691 = fadd fast float %2676, -5.000000e-01
  %2692 = fadd fast float %2678, -5.000000e-01
  %2693 = fmul fast float %2691, %2687
  %2694 = fmul fast float %2692, %2687
  %2695 = fadd fast float %2693, 5.000000e-01
  %2696 = fadd fast float %2694, 5.000000e-01
  %2697 = fmul fast float %2695, 2.000000e+00
  %2698 = fadd fast float %2697, -1.000000e+00
  %2699 = fmul fast float %2696, 2.000000e+00
  %2700 = fadd fast float %2699, -1.000000e+00
  %2701 = fadd fast float %2698, %2700
  %2702 = fmul fast float %2701, 5.000000e-01
  %2703 = fsub fast float %2698, %2700
  %2704 = fmul fast float %2703, 5.000000e-01
  %2705 = call float @dx.op.unary.f32(i32 6, float %2702)  ; FAbs(value)
  %2706 = fsub fast float 1.000000e+00, %2705
  %2707 = call float @dx.op.unary.f32(i32 6, float %2704)  ; FAbs(value)
  %2708 = fsub fast float %2706, %2707
  %2709 = call float @dx.op.dot3.f32(i32 55, float %2702, float %2704, float %2708, float %2702, float %2704, float %2708)  ; Dot3(ax,ay,az,bx,by,bz)
  %2710 = call float @dx.op.unary.f32(i32 25, float %2709)  ; Rsqrt(value)
  %2711 = fmul fast float %2702, %2710
  %2712 = fmul fast float %2704, %2710
  %2713 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2143, i32 undef)  ; BufferLoad(srv,index,wot)
  %2714 = extractvalue %dx.types.ResRet.i32 %2713, 0
  %2715 = and i32 %2714, 67108864
  %2716 = icmp eq i32 %2715, 0
  br i1 %2716, label %2733, label %2717

; <label>:2717                                    ; preds = %2665
  %2718 = add i32 %60, 312
  %2719 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2718, i32 undef)  ; BufferLoad(srv,index,wot)
  %2720 = extractvalue %dx.types.ResRet.i32 %2719, 0
  %2721 = and i32 %2720, 65535
  %2722 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2721)  ; LegacyF16ToF32(value)
  %2723 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2160, i32 undef)  ; BufferLoad(srv,index,wot)
  %2724 = extractvalue %dx.types.ResRet.i32 %2723, 0
  %2725 = and i32 %2724, 65535
  %2726 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2725)  ; LegacyF16ToF32(value)
  %2727 = lshr i32 %2720, 16
  %2728 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2727)  ; LegacyF16ToF32(value)
  %2729 = fsub fast float %2690, %2728
  %2730 = fmul fast float %2729, %2722
  %2731 = fadd fast float %2730, %2726
  %2732 = call float @dx.op.unary.f32(i32 7, float %2731)  ; Saturate(value)
  br label %2733

; <label>:2733                                    ; preds = %2717, %2665
  %2734 = phi float [ %2732, %2717 ], [ %2690, %2665 ]
  %2735 = call float @dx.op.dot2.f32(i32 54, float %2711, float %2712, float %2154, float %2155)  ; Dot2(ax,ay,bx,by)
  %2736 = call float @dx.op.dot2.f32(i32 54, float %2711, float %2712, float %2156, float %2157)  ; Dot2(ax,ay,bx,by)
  br label %2737

; <label>:2737                                    ; preds = %2733, %2643
  %2738 = phi float [ %2734, %2733 ], [ 0x3FD6666660000000, %2643 ]
  %2739 = phi float [ %2735, %2733 ], [ 0.000000e+00, %2643 ]
  %2740 = phi float [ %2736, %2733 ], [ 0.000000e+00, %2643 ]
  %2741 = phi float [ %2677, %2733 ], [ 1.000000e+00, %2643 ]
  %2742 = add i32 %60, 192
  %2743 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2742, i32 undef)  ; BufferLoad(srv,index,wot)
  %2744 = extractvalue %dx.types.ResRet.i32 %2743, 0
  %2745 = lshr i32 %2744, 22
  %2746 = shl nuw nsw i32 %2745, 5
  %2747 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2746)  ; LegacyF16ToF32(value)
  %2748 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2143, i32 undef)  ; BufferLoad(srv,index,wot)
  %2749 = extractvalue %dx.types.ResRet.i32 %2748, 0
  %2750 = and i32 %2749, 64
  %2751 = icmp eq i32 %2750, 0
  br i1 %2751, label %2785, label %2752

; <label>:2752                                    ; preds = %2737
  %2753 = add i32 %60, 400
  %2754 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2753, i32 undef)  ; BufferLoad(srv,index,wot)
  %2755 = extractvalue %dx.types.ResRet.i32 %2754, 0
  %2756 = add i32 %2755, 0
  %2757 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2756, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2758 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2143, i32 undef)  ; BufferLoad(srv,index,wot)
  %2759 = extractvalue %dx.types.ResRet.i32 %2758, 0
  %2760 = and i32 %2759, 131072
  %2761 = icmp eq i32 %2760, 0
  %2762 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2757, %dx.types.Handle %105, float %2250, float %2251, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2763 = extractvalue %dx.types.ResRet.f32 %2762, 0
  %2764 = extractvalue %dx.types.ResRet.f32 %2762, 1
  %2765 = extractvalue %dx.types.ResRet.f32 %2762, 2
  %2766 = fmul fast float %2763, %326
  %2767 = fmul fast float %2764, %329
  %2768 = fmul fast float %2765, %332
  br i1 %2761, label %2775, label %2769

; <label>:2769                                    ; preds = %2752
  %2770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2771 = extractvalue %dx.types.CBufRet.f32 %2770, 0
  %2772 = fmul fast float %2771, %2766
  %2773 = fmul fast float %2771, %2767
  %2774 = fmul fast float %2771, %2768
  br label %2775

; <label>:2775                                    ; preds = %2769, %2752
  %2776 = phi float [ %2772, %2769 ], [ %2766, %2752 ]
  %2777 = phi float [ %2773, %2769 ], [ %2767, %2752 ]
  %2778 = phi float [ %2774, %2769 ], [ %2768, %2752 ]
  %2779 = fmul fast float %2776, %2747
  %2780 = select i1 %225, float %2779, float %2776
  %2781 = call float @dx.op.dot3.f32(i32 55, float %2780, float %2777, float %2778, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2782 = select i1 %225, float 0.000000e+00, float %2776
  %2783 = select i1 %225, float %2781, float %2777
  %2784 = select i1 %225, float 0.000000e+00, float %2778
  br label %2785

; <label>:2785                                    ; preds = %2775, %2737
  %2786 = phi float [ %2782, %2775 ], [ 0.000000e+00, %2737 ]
  %2787 = phi float [ %2783, %2775 ], [ 0.000000e+00, %2737 ]
  %2788 = phi float [ %2784, %2775 ], [ 0.000000e+00, %2737 ]
  %2789 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2143, i32 undef)  ; BufferLoad(srv,index,wot)
  %2790 = extractvalue %dx.types.ResRet.i32 %2789, 0
  %2791 = and i32 %2790, 10240
  %2792 = icmp eq i32 %2791, 0
  br i1 %2792, label %2837, label %2793

; <label>:2793                                    ; preds = %2785
  %2794 = add i32 %60, 464
  %2795 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2794, i32 undef)  ; BufferLoad(srv,index,wot)
  %2796 = extractvalue %dx.types.ResRet.i32 %2795, 0
  %2797 = add i32 %2796, 0
  %2798 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2797, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2799 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2798, %dx.types.Handle %106, float %2250, float %2251, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2800 = extractvalue %dx.types.ResRet.f32 %2799, 1
  %2801 = extractvalue %dx.types.ResRet.f32 %2799, 3
  %2802 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2143, i32 undef)  ; BufferLoad(srv,index,wot)
  %2803 = extractvalue %dx.types.ResRet.i32 %2802, 0
  %2804 = and i32 %2803, 1048576
  %2805 = icmp ne i32 %2804, 0
  %2806 = and i32 %2803, 8192
  %2807 = icmp eq i32 %2806, 0
  br i1 %2807, label %2823, label %2808

; <label>:2808                                    ; preds = %2793
  %2809 = extractvalue %dx.types.ResRet.f32 %2799, 2
  %2810 = select i1 %2805, float %2809, float %2800
  %2811 = extractvalue %dx.types.ResRet.f32 %2799, 0
  %2812 = select i1 %2805, float %2811, float %2800
  %2813 = add i32 %60, 128
  %2814 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2813, i32 undef)  ; BufferLoad(srv,index,wot)
  %2815 = extractvalue %dx.types.ResRet.i32 %2814, 0
  %2816 = lshr i32 %2815, 16
  %2817 = and i32 %2816, 255
  %2818 = uitofp i32 %2817 to float
  %2819 = fmul fast float %2818, 0x3F80101020000000
  %2820 = fmul fast float %2819, %2812
  %2821 = fmul fast float %2819, %2800
  %2822 = fmul fast float %2819, %2810
  br label %2823

; <label>:2823                                    ; preds = %2808, %2793
  %2824 = phi float [ %2820, %2808 ], [ 0.000000e+00, %2793 ]
  %2825 = phi float [ %2821, %2808 ], [ 0.000000e+00, %2793 ]
  %2826 = phi float [ %2822, %2808 ], [ 0.000000e+00, %2793 ]
  %2827 = and i32 %2803, 2048
  %2828 = icmp eq i32 %2827, 0
  br i1 %2828, label %2837, label %2829

; <label>:2829                                    ; preds = %2823
  %2830 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2742, i32 undef)  ; BufferLoad(srv,index,wot)
  %2831 = extractvalue %dx.types.ResRet.i32 %2830, 0
  %2832 = shl i32 %2831, 4
  %2833 = and i32 %2832, 32752
  %2834 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2833)  ; LegacyF16ToF32(value)
  %2835 = fmul fast float %2834, %2801
  %2836 = call float @dx.op.binary.f32(i32 35, float %2835, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2837

; <label>:2837                                    ; preds = %2829, %2823, %2785
  %2838 = phi float [ %2824, %2829 ], [ %2824, %2823 ], [ 0.000000e+00, %2785 ]
  %2839 = phi float [ %2825, %2829 ], [ %2825, %2823 ], [ 0.000000e+00, %2785 ]
  %2840 = phi float [ %2826, %2829 ], [ %2826, %2823 ], [ 0.000000e+00, %2785 ]
  %2841 = phi float [ %2836, %2829 ], [ 0x3F70101020000000, %2823 ], [ 0x3F70101020000000, %2785 ]
  %2842 = add i32 %60, 128
  %2843 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2842, i32 undef)  ; BufferLoad(srv,index,wot)
  %2844 = extractvalue %dx.types.ResRet.i32 %2843, 0
  %2845 = and i32 %2844, 255
  %2846 = uitofp i32 %2845 to float
  %2847 = lshr i32 %2844, 8
  %2848 = and i32 %2847, 255
  %2849 = uitofp i32 %2848 to float
  %2850 = call float @dx.op.dot3.f32(i32 55, float %2658, float %2659, float %2660, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2851 = fmul fast float %2849, %2850
  %2852 = fadd fast float %2851, %2846
  %2853 = fmul fast float %2852, 0x3F70101020000000
  %2854 = call float @dx.op.unary.f32(i32 7, float %2853)  ; Saturate(value)
  br i1 %2142, label %2855, label %2863

; <label>:2855                                    ; preds = %2837
  %2856 = fsub fast float 1.000000e+00, %2438
  %2857 = fmul fast float %2856, %2127
  %2858 = fmul fast float %2856, %2128
  %2859 = fmul fast float %2856, %2129
  %2860 = fmul fast float %2856, %2133
  %2861 = fmul fast float %2856, %2134
  %2862 = fmul fast float %2856, %2135
  br label %2863

; <label>:2863                                    ; preds = %2855, %2837
  %2864 = phi float [ %2857, %2855 ], [ %2127, %2837 ]
  %2865 = phi float [ %2858, %2855 ], [ %2128, %2837 ]
  %2866 = phi float [ %2859, %2855 ], [ %2129, %2837 ]
  %2867 = phi float [ %2860, %2855 ], [ %2133, %2837 ]
  %2868 = phi float [ %2861, %2855 ], [ %2134, %2837 ]
  %2869 = phi float [ %2862, %2855 ], [ %2135, %2837 ]
  %2870 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2143, i32 undef)  ; BufferLoad(srv,index,wot)
  %2871 = extractvalue %dx.types.ResRet.i32 %2870, 0
  %2872 = and i32 %2871, 3
  %2873 = icmp eq i32 %2872, 3
  br i1 %2873, label %2952, label %2874

; <label>:2874                                    ; preds = %2863
  %2875 = and i32 %2871, 16
  %2876 = icmp ne i32 %2875, 0
  %2877 = select i1 %2876, float %2438, float 0.000000e+00
  %2878 = icmp eq i32 %2872, 0
  br i1 %2878, label %2879, label %2907

; <label>:2879                                    ; preds = %2874
  %2880 = and i32 %2871, 64
  %2881 = icmp ne i32 %2880, 0
  %2882 = select i1 %2881, float %2438, float 0.000000e+00
  %2883 = fsub fast float %2658, %2864
  %2884 = fsub fast float %2659, %2865
  %2885 = fsub fast float %2660, %2866
  %2886 = fmul fast float %2877, %2883
  %2887 = fmul fast float %2877, %2884
  %2888 = fmul fast float %2877, %2885
  %2889 = fadd fast float %2886, %2864
  %2890 = fadd fast float %2887, %2865
  %2891 = fadd fast float %2888, %2866
  %2892 = fsub fast float %2644, %2136
  %2893 = fmul fast float %2877, %2892
  %2894 = fadd fast float %2893, %2136
  %2895 = fsub fast float %2786, %2867
  %2896 = fsub fast float %2787, %2868
  %2897 = fsub fast float %2788, %2869
  %2898 = fmul fast float %2882, %2895
  %2899 = fmul fast float %2882, %2896
  %2900 = fmul fast float %2882, %2897
  %2901 = fadd fast float %2898, %2867
  %2902 = fadd fast float %2899, %2868
  %2903 = fadd fast float %2900, %2869
  %2904 = fsub fast float %2854, %2140
  %2905 = fmul fast float %2877, %2904
  %2906 = fadd fast float %2905, %2140
  br label %2952

; <label>:2907                                    ; preds = %2874
  %2908 = icmp eq i32 %2872, 1
  br i1 %2908, label %2909, label %2922

; <label>:2909                                    ; preds = %2907
  %2910 = fadd fast float %2658, -1.000000e+00
  %2911 = fadd fast float %2659, -1.000000e+00
  %2912 = fadd fast float %2660, -1.000000e+00
  %2913 = fmul fast float %2877, %2910
  %2914 = fmul fast float %2877, %2911
  %2915 = fmul fast float %2877, %2912
  %2916 = fadd fast float %2913, 1.000000e+00
  %2917 = fadd fast float %2914, 1.000000e+00
  %2918 = fadd fast float %2915, 1.000000e+00
  %2919 = fmul fast float %2916, %2864
  %2920 = fmul fast float %2917, %2865
  %2921 = fmul fast float %2918, %2866
  br label %2952

; <label>:2922                                    ; preds = %2907
  %2923 = icmp eq i32 %2872, 2
  br i1 %2923, label %2924, label %2952

; <label>:2924                                    ; preds = %2922
  %2925 = call float @dx.op.unary.f32(i32 24, float %2658)  ; Sqrt(value)
  %2926 = call float @dx.op.unary.f32(i32 24, float %2659)  ; Sqrt(value)
  %2927 = call float @dx.op.unary.f32(i32 24, float %2660)  ; Sqrt(value)
  %2928 = fadd fast float %2925, -5.000000e-01
  %2929 = fadd fast float %2926, -5.000000e-01
  %2930 = fadd fast float %2927, -5.000000e-01
  %2931 = fmul fast float %2928, %2877
  %2932 = fmul fast float %2929, %2877
  %2933 = fmul fast float %2930, %2877
  %2934 = fadd fast float %2931, 5.000000e-01
  %2935 = fadd fast float %2932, 5.000000e-01
  %2936 = fadd fast float %2933, 5.000000e-01
  %2937 = fmul fast float %2934, 2.000000e+00
  %2938 = fsub fast float 1.000000e+00, %2937
  %2939 = fmul fast float %2938, %2864
  %2940 = fadd fast float %2939, %2937
  %2941 = fmul fast float %2940, %2864
  %2942 = fmul fast float %2935, 2.000000e+00
  %2943 = fsub fast float 1.000000e+00, %2942
  %2944 = fmul fast float %2943, %2865
  %2945 = fadd fast float %2944, %2942
  %2946 = fmul fast float %2945, %2865
  %2947 = fmul fast float %2936, 2.000000e+00
  %2948 = fsub fast float 1.000000e+00, %2947
  %2949 = fmul fast float %2948, %2866
  %2950 = fadd fast float %2949, %2947
  %2951 = fmul fast float %2950, %2866
  br label %2952

; <label>:2952                                    ; preds = %2924, %2922, %2909, %2879, %2863
  %2953 = phi float [ %2864, %2863 ], [ %2941, %2924 ], [ %2864, %2922 ], [ %2919, %2909 ], [ %2889, %2879 ]
  %2954 = phi float [ %2865, %2863 ], [ %2946, %2924 ], [ %2865, %2922 ], [ %2920, %2909 ], [ %2890, %2879 ]
  %2955 = phi float [ %2866, %2863 ], [ %2951, %2924 ], [ %2866, %2922 ], [ %2921, %2909 ], [ %2891, %2879 ]
  %2956 = phi float [ %2867, %2863 ], [ %2867, %2924 ], [ %2867, %2922 ], [ %2867, %2909 ], [ %2901, %2879 ]
  %2957 = phi float [ %2868, %2863 ], [ %2868, %2924 ], [ %2868, %2922 ], [ %2868, %2909 ], [ %2902, %2879 ]
  %2958 = phi float [ %2869, %2863 ], [ %2869, %2924 ], [ %2869, %2922 ], [ %2869, %2909 ], [ %2903, %2879 ]
  %2959 = phi float [ %2136, %2863 ], [ %2136, %2924 ], [ %2136, %2922 ], [ %2136, %2909 ], [ %2894, %2879 ]
  %2960 = phi float [ %2140, %2863 ], [ %2140, %2924 ], [ %2140, %2922 ], [ %2140, %2909 ], [ %2906, %2879 ]
  %2961 = and i32 %2871, 12
  %2962 = icmp eq i32 %2961, 12
  br i1 %2962, label %3069, label %2963

; <label>:2963                                    ; preds = %2952
  %2964 = and i32 %2871, 2097184
  %2965 = icmp eq i32 %2964, 2097184
  %2966 = select i1 %2965, float %2438, float 0.000000e+00
  %2967 = and i32 %2871, 4194336
  %2968 = icmp eq i32 %2967, 4194336
  %2969 = select i1 %2968, float %2438, float 0.000000e+00
  %2970 = and i32 %2871, 8388640
  %2971 = icmp eq i32 %2970, 8388640
  %2972 = select i1 %2971, float %2438, float 0.000000e+00
  %2973 = and i32 %2871, 2048
  %2974 = icmp ne i32 %2973, 0
  %2975 = select i1 %2974, float %2438, float 0.000000e+00
  %2976 = and i32 %2871, 8192
  %2977 = icmp ne i32 %2976, 0
  %2978 = select i1 %2977, float %2438, float 0.000000e+00
  %2979 = icmp eq i32 %2961, 0
  br i1 %2979, label %2980, label %3005

; <label>:2980                                    ; preds = %2963
  %2981 = fsub fast float %2739, %2125
  %2982 = fsub fast float %2740, %2126
  %2983 = fmul fast float %2966, %2981
  %2984 = fmul fast float %2966, %2982
  %2985 = fadd fast float %2983, %2125
  %2986 = fadd fast float %2984, %2126
  %2987 = fsub fast float %2741, %2138
  %2988 = fmul fast float %2969, %2987
  %2989 = fadd fast float %2988, %2138
  %2990 = fsub fast float %2738, %2137
  %2991 = fmul fast float %2972, %2990
  %2992 = fadd fast float %2991, %2137
  %2993 = fsub fast float %2841, %2139
  %2994 = fmul fast float %2975, %2993
  %2995 = fadd fast float %2994, %2139
  %2996 = fsub fast float %2838, %2130
  %2997 = fsub fast float %2839, %2131
  %2998 = fsub fast float %2840, %2132
  %2999 = fmul fast float %2978, %2996
  %3000 = fmul fast float %2978, %2997
  %3001 = fmul fast float %2978, %2998
  %3002 = fadd fast float %2999, %2130
  %3003 = fadd fast float %3000, %2131
  %3004 = fadd fast float %3001, %2132
  br label %3069

; <label>:3005                                    ; preds = %2963
  %3006 = icmp eq i32 %2961, 4
  br i1 %3006, label %3007, label %3047

; <label>:3007                                    ; preds = %3005
  %3008 = fmul fast float %2966, %2739
  %3009 = fmul fast float %2966, %2740
  %3010 = fadd fast float %3008, %2125
  %3011 = fadd fast float %3009, %2126
  %3012 = call float @dx.op.binary.f32(i32 36, float %2138, float %2741)  ; FMin(a,b)
  %3013 = fsub fast float %3012, %2138
  %3014 = fmul fast float %3013, %2969
  %3015 = fadd fast float %3014, %2138
  %3016 = fadd fast float %2738, %2137
  %3017 = fmul fast float %3016, 0x3FF337FAE0000000
  %3018 = fmul fast float %2137, %2137
  %3019 = fmul fast float %2738, %2738
  %3020 = fadd fast float %3019, %3018
  %3021 = fmul fast float %3020, 0x3FE5152B00000000
  %3022 = fmul fast float %2137, 0xBFCC1F85E0000000
  %3023 = fmul fast float %3022, %2738
  %3024 = fadd fast float %3023, 0xBFE1363700000000
  %3025 = fadd fast float %3024, %3017
  %3026 = fsub fast float %3025, %3021
  %3027 = fmul fast float %3016, 0x3FBA6F0D00000000
  %3028 = fmul fast float %3020, 0x3FD0432880000000
  %3029 = fmul fast float %2137, 0xBFEF110800000000
  %3030 = fmul fast float %3029, %2738
  %3031 = fadd fast float %3030, 1.000000e+00
  %3032 = fsub fast float %3031, %3027
  %3033 = fadd fast float %3032, %3028
  %3034 = fdiv fast float %3026, %3033
  %3035 = call float @dx.op.unary.f32(i32 7, float %3034)  ; Saturate(value)
  %3036 = fsub fast float %3035, %2137
  %3037 = fmul fast float %3036, %2972
  %3038 = fadd fast float %3037, %2137
  %3039 = fmul fast float %2975, %2841
  %3040 = fadd fast float %3039, %2139
  %3041 = fmul fast float %2978, %2838
  %3042 = fmul fast float %2978, %2839
  %3043 = fmul fast float %2978, %2840
  %3044 = fadd fast float %3041, %2130
  %3045 = fadd fast float %3042, %2131
  %3046 = fadd fast float %3043, %2132
  br label %3069

; <label>:3047                                    ; preds = %3005
  %3048 = icmp eq i32 %2961, 8
  br i1 %3048, label %3049, label %3069

; <label>:3049                                    ; preds = %3047
  %3050 = fmul fast float %2966, %2739
  %3051 = fmul fast float %2966, %2740
  %3052 = fadd fast float %3050, %2125
  %3053 = fadd fast float %3051, %2126
  %3054 = call float @dx.op.binary.f32(i32 36, float %2138, float %2741)  ; FMin(a,b)
  %3055 = fsub fast float %3054, %2138
  %3056 = fmul fast float %3055, %2969
  %3057 = fadd fast float %3056, %2138
  %3058 = fsub fast float %2738, %2137
  %3059 = fmul fast float %2972, %3058
  %3060 = fadd fast float %3059, %2137
  %3061 = fmul fast float %2975, %2841
  %3062 = fadd fast float %3061, %2139
  %3063 = fmul fast float %2978, %2838
  %3064 = fmul fast float %2978, %2839
  %3065 = fmul fast float %2978, %2840
  %3066 = fadd fast float %3063, %2130
  %3067 = fadd fast float %3064, %2131
  %3068 = fadd fast float %3065, %2132
  br label %3069

; <label>:3069                                    ; preds = %3049, %3047, %3007, %2980, %2952, %2437, %2141, %2124
  %3070 = phi float [ %2125, %2952 ], [ %2125, %2437 ], [ %2125, %2124 ], [ %3052, %3049 ], [ %2125, %3047 ], [ %3010, %3007 ], [ %2985, %2980 ], [ %2125, %2141 ]
  %3071 = phi float [ %2126, %2952 ], [ %2126, %2437 ], [ %2126, %2124 ], [ %3053, %3049 ], [ %2126, %3047 ], [ %3011, %3007 ], [ %2986, %2980 ], [ %2126, %2141 ]
  %3072 = phi float [ %2953, %2952 ], [ %2127, %2437 ], [ %2127, %2124 ], [ %2953, %3049 ], [ %2953, %3047 ], [ %2953, %3007 ], [ %2953, %2980 ], [ %2127, %2141 ]
  %3073 = phi float [ %2954, %2952 ], [ %2128, %2437 ], [ %2128, %2124 ], [ %2954, %3049 ], [ %2954, %3047 ], [ %2954, %3007 ], [ %2954, %2980 ], [ %2128, %2141 ]
  %3074 = phi float [ %2955, %2952 ], [ %2129, %2437 ], [ %2129, %2124 ], [ %2955, %3049 ], [ %2955, %3047 ], [ %2955, %3007 ], [ %2955, %2980 ], [ %2129, %2141 ]
  %3075 = phi float [ %2130, %2952 ], [ %2130, %2437 ], [ %2130, %2124 ], [ %3066, %3049 ], [ %2130, %3047 ], [ %3044, %3007 ], [ %3002, %2980 ], [ %2130, %2141 ]
  %3076 = phi float [ %2131, %2952 ], [ %2131, %2437 ], [ %2131, %2124 ], [ %3067, %3049 ], [ %2131, %3047 ], [ %3045, %3007 ], [ %3003, %2980 ], [ %2131, %2141 ]
  %3077 = phi float [ %2132, %2952 ], [ %2132, %2437 ], [ %2132, %2124 ], [ %3068, %3049 ], [ %2132, %3047 ], [ %3046, %3007 ], [ %3004, %2980 ], [ %2132, %2141 ]
  %3078 = phi float [ %2956, %2952 ], [ %2133, %2437 ], [ %2133, %2124 ], [ %2956, %3049 ], [ %2956, %3047 ], [ %2956, %3007 ], [ %2956, %2980 ], [ %2133, %2141 ]
  %3079 = phi float [ %2957, %2952 ], [ %2134, %2437 ], [ %2134, %2124 ], [ %2957, %3049 ], [ %2957, %3047 ], [ %2957, %3007 ], [ %2957, %2980 ], [ %2134, %2141 ]
  %3080 = phi float [ %2958, %2952 ], [ %2135, %2437 ], [ %2135, %2124 ], [ %2958, %3049 ], [ %2958, %3047 ], [ %2958, %3007 ], [ %2958, %2980 ], [ %2135, %2141 ]
  %3081 = phi float [ %2959, %2952 ], [ %2136, %2437 ], [ %2136, %2124 ], [ %2959, %3049 ], [ %2959, %3047 ], [ %2959, %3007 ], [ %2959, %2980 ], [ %2136, %2141 ]
  %3082 = phi float [ %2137, %2952 ], [ %2137, %2437 ], [ %2137, %2124 ], [ %3060, %3049 ], [ %2137, %3047 ], [ %3038, %3007 ], [ %2992, %2980 ], [ %2137, %2141 ]
  %3083 = phi float [ %2138, %2952 ], [ %2138, %2437 ], [ %2138, %2124 ], [ %3057, %3049 ], [ %2138, %3047 ], [ %3015, %3007 ], [ %2989, %2980 ], [ %2138, %2141 ]
  %3084 = phi float [ %2139, %2952 ], [ %2139, %2437 ], [ %2139, %2124 ], [ %3062, %3049 ], [ %2139, %3047 ], [ %3040, %3007 ], [ %2995, %2980 ], [ %2139, %2141 ]
  %3085 = phi float [ %2960, %2952 ], [ %2140, %2437 ], [ %2140, %2124 ], [ %2960, %3049 ], [ %2960, %3047 ], [ %2960, %3007 ], [ %2960, %2980 ], [ %2140, %2141 ]
  br i1 %413, label %4014, label %3086

; <label>:3086                                    ; preds = %3069
  %3087 = icmp ult i32 %467, 4
  %3088 = add i32 %60, 72
  %3089 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %3088, i32 undef)  ; BufferLoad(srv,index,wot)
  %3090 = extractvalue %dx.types.ResRet.i32 %3089, 0
  %3091 = add i32 %60, 76
  %3092 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %3091, i32 undef)  ; BufferLoad(srv,index,wot)
  %3093 = extractvalue %dx.types.ResRet.i32 %3092, 0
  %3094 = or i32 %3093, %3090
  %3095 = icmp eq i32 %3094, 0
  br i1 %3095, label %4014, label %3096

; <label>:3096                                    ; preds = %3086
  %3097 = and i32 %3090, 262144
  %3098 = icmp ne i32 %3097, 0
  %3099 = select i1 %3098, float %63, float 1.000000e+00
  %3100 = select i1 %3098, float %64, float 0.000000e+00
  %3101 = select i1 %3098, float %65, float 0.000000e+00
  %3102 = select i1 %3098, float %66, float 1.000000e+00
  %3103 = select i1 %3098, float %67, float %88
  %3104 = select i1 %3098, float %68, float %89
  %3105 = add i32 %60, 332
  %3106 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %3105, i32 undef)  ; BufferLoad(srv,index,wot)
  %3107 = extractvalue %dx.types.ResRet.i32 %3106, 0
  %3108 = lshr i32 %3107, 16
  %3109 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3108)  ; LegacyF16ToF32(value)
  %3110 = fmul fast float %3109, 0x3F50624DE0000000
  %3111 = add i32 %60, 136
  %3112 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %3111, i32 undef)  ; BufferLoad(srv,index,wot)
  %3113 = extractvalue %dx.types.ResRet.i32 %3112, 0
  %3114 = lshr i32 %3113, 16
  %3115 = and i32 %3114, 255
  %3116 = lshr i32 %3113, 24
  %3117 = add i32 %60, 340
  %3118 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %3117, i32 undef)  ; BufferLoad(srv,index,wot)
  %3119 = extractvalue %dx.types.ResRet.i32 %3118, 0
  %3120 = and i32 %3119, 65535
  %3121 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3120)  ; LegacyF16ToF32(value)
  %3122 = lshr i32 %3119, 16
  %3123 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3122)  ; LegacyF16ToF32(value)
  %3124 = add i32 %60, 80
  %3125 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %3124, i32 undef)  ; BufferLoad(srv,index,wot)
  %3126 = extractvalue %dx.types.ResRet.i32 %3125, 0
  %3127 = lshr i32 %3126, 22
  %3128 = shl nuw nsw i32 %3127, 5
  %3129 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3128)  ; LegacyF16ToF32(value)
  %3130 = shl i32 %3126, 4
  %3131 = and i32 %3130, 32752
  %3132 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3131)  ; LegacyF16ToF32(value)
  %3133 = lshr i32 %3126, 7
  %3134 = and i32 %3133, 32752
  %3135 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3134)  ; LegacyF16ToF32(value)
  %3136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3137 = extractvalue %dx.types.CBufRet.f32 %3136, 3
  %3138 = fmul fast float %3137, 1.000000e+03
  %3139 = fmul fast float %403, %3138
  %3140 = call float @dx.op.unary.f32(i32 22, float %3139)  ; Frc(value)
  %3141 = fadd fast float %3140, %393
  %3142 = fmul fast float %404, %3138
  %3143 = call float @dx.op.unary.f32(i32 22, float %3142)  ; Frc(value)
  %3144 = fadd fast float %3143, %395
  %3145 = fmul fast float %3110, %3138
  %3146 = call float @dx.op.unary.f32(i32 22, float %3145)  ; Frc(value)
  %3147 = fmul fast float %3146, 0x401921FB60000000
  %3148 = fadd fast float %3147, %3129
  %3149 = call float @dx.op.unary.f32(i32 13, float %3148)  ; Sin(value)
  %3150 = call float @dx.op.unary.f32(i32 12, float %3148)  ; Cos(value)
  %3151 = fsub fast float -0.000000e+00, %3149
  %3152 = fadd fast float %3103, -5.000000e-01
  %3153 = fadd fast float %3104, -5.000000e-01
  %3154 = fmul fast float %3121, %3152
  %3155 = fmul fast float %3123, %3153
  %3156 = fadd fast float %3154, 5.000000e-01
  %3157 = fadd fast float %3155, 5.000000e-01
  %3158 = fmul fast float %3132, %3156
  %3159 = fmul fast float %3135, %3157
  %3160 = fmul fast float %3150, %3158
  %3161 = call float @dx.op.tertiary.f32(i32 46, float %3151, float %3159, float %3160)  ; FMad(a,b,c)
  %3162 = fmul fast float %3149, %3158
  %3163 = call float @dx.op.tertiary.f32(i32 46, float %3150, float %3159, float %3162)  ; FMad(a,b,c)
  %3164 = fadd fast float %3141, %3161
  %3165 = fadd fast float %3144, %3163
  %3166 = icmp ugt i32 %3115, 1
  %3167 = icmp ugt i32 %3113, 33554431
  %3168 = or i1 %3167, %3166
  br i1 %3168, label %3169, label %3194

; <label>:3169                                    ; preds = %3096
  %3170 = add i32 %60, 276
  %3171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %3170, i32 undef)  ; BufferLoad(srv,index,wot)
  %3172 = extractvalue %dx.types.ResRet.i32 %3171, 0
  %3173 = lshr i32 %3172, 16
  %3174 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3173)  ; LegacyF16ToF32(value)
  %3175 = fmul fast float %3137, %3174
  %3176 = call float @dx.op.unary.f32(i32 22, float %3175)  ; Frc(value)
  %3177 = mul nuw nsw i32 %3115, %3116
  %3178 = uitofp i32 %3177 to float
  %3179 = fmul fast float %3176, %3178
  %3180 = call float @dx.op.unary.f32(i32 27, float %3179)  ; Round_ni(value)
  %3181 = fptoui float %3180 to i32
  %3182 = urem i32 %3181, %3115
  %3183 = udiv i32 %3181, %3116
  %3184 = call float @dx.op.unary.f32(i32 22, float %3164)  ; Frc(value)
  %3185 = call float @dx.op.unary.f32(i32 22, float %3165)  ; Frc(value)
  %3186 = uitofp i32 %3182 to float
  %3187 = uitofp i32 %3183 to float
  %3188 = fadd fast float %3184, %3186
  %3189 = fadd fast float %3185, %3187
  %3190 = uitofp i32 %3115 to float
  %3191 = uitofp i32 %3116 to float
  %3192 = fdiv fast float %3188, %3190
  %3193 = fdiv fast float %3189, %3191
  br label %3194

; <label>:3194                                    ; preds = %3169, %3096
  %3195 = phi float [ %3192, %3169 ], [ %3164, %3096 ]
  %3196 = phi float [ %3193, %3169 ], [ %3165, %3096 ]
  %3197 = and i32 %3090, 16777216
  %3198 = icmp eq i32 %3197, 0
  br i1 %3198, label %3308, label %3199

; <label>:3199                                    ; preds = %3194
  %3200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3201 = extractvalue %dx.types.CBufRet.f32 %3200, 0
  %3202 = extractvalue %dx.types.CBufRet.f32 %3200, 1
  %3203 = extractvalue %dx.types.CBufRet.f32 %3200, 2
  %3204 = fadd fast float %3201, %164
  %3205 = fadd fast float %3202, %165
  %3206 = fadd fast float %3203, %166
  %3207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %3208 = extractvalue %dx.types.CBufRet.f32 %3207, 0
  %3209 = call float @dx.op.unary.f32(i32 7, float %3208)  ; Saturate(value)
  %3210 = icmp eq i32 %61, 65535
  br i1 %3210, label %3305, label %3211

; <label>:3211                                    ; preds = %3199
  %3212 = lshr i32 %61, 1
  %3213 = shl i32 %3212, 2
  %3214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %3213, i32 undef)  ; BufferLoad(srv,index,wot)
  %3215 = extractvalue %dx.types.ResRet.i32 %3214, 0
  %3216 = and i32 %61, 1
  %3217 = icmp ne i32 %3216, 0
  %3218 = lshr i32 %3215, 16
  %3219 = and i32 %3215, 65535
  %3220 = select i1 %3217, i32 %3218, i32 %3219
  %3221 = icmp eq i32 %3220, 65535
  br i1 %3221, label %3301, label %3222

; <label>:3222                                    ; preds = %3211
  %3223 = mul nuw nsw i32 %3220, 40
  %3224 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %3223, i32 undef)  ; BufferLoad(srv,index,wot)
  %3225 = extractvalue %dx.types.ResRet.f32 %3224, 0
  %3226 = extractvalue %dx.types.ResRet.f32 %3224, 1
  %3227 = extractvalue %dx.types.ResRet.f32 %3224, 2
  %3228 = add nuw nsw i32 %3223, 12
  %3229 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %3228, i32 undef)  ; BufferLoad(srv,index,wot)
  %3230 = extractvalue %dx.types.ResRet.f32 %3229, 0
  %3231 = extractvalue %dx.types.ResRet.f32 %3229, 1
  %3232 = extractvalue %dx.types.ResRet.f32 %3229, 2
  %3233 = add nuw nsw i32 %3223, 24
  %3234 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %3233, i32 undef)  ; BufferLoad(srv,index,wot)
  %3235 = extractvalue %dx.types.ResRet.f32 %3234, 0
  %3236 = extractvalue %dx.types.ResRet.f32 %3234, 1
  %3237 = extractvalue %dx.types.ResRet.f32 %3234, 2
  %3238 = add nuw nsw i32 %3223, 36
  %3239 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %3238, i32 undef)  ; BufferLoad(srv,index,wot)
  %3240 = extractvalue %dx.types.ResRet.f32 %3239, 0
  %3241 = fsub fast float %3204, %3225
  %3242 = fsub fast float %3205, %3226
  %3243 = fsub fast float %3206, %3227
  %3244 = fmul fast float %3240, %3241
  %3245 = fmul fast float %3240, %3242
  %3246 = fmul fast float %3240, %3243
  %3247 = call float @dx.op.unary.f32(i32 27, float %3244)  ; Round_ni(value)
  %3248 = call float @dx.op.unary.f32(i32 27, float %3245)  ; Round_ni(value)
  %3249 = call float @dx.op.unary.f32(i32 27, float %3246)  ; Round_ni(value)
  %3250 = fadd fast float %3247, 5.000000e-01
  %3251 = fadd fast float %3248, 5.000000e-01
  %3252 = fadd fast float %3249, 5.000000e-01
  %3253 = fmul fast float %3250, %3230
  %3254 = fmul fast float %3251, %3231
  %3255 = fmul fast float %3252, %3232
  %3256 = shl i32 %61, 2
  %3257 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3256, i32 undef)  ; BufferLoad(srv,index,wot)
  %3258 = extractvalue %dx.types.ResRet.i32 %3257, 0
  %3259 = add i32 %3258, 0
  %3260 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3259, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3261 = call float @dx.op.unary.f32(i32 22, float %3253)  ; Frc(value)
  %3262 = call float @dx.op.unary.f32(i32 22, float %3254)  ; Frc(value)
  %3263 = call float @dx.op.unary.f32(i32 22, float %3255)  ; Frc(value)
  %3264 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3260, %dx.types.Handle %47, float %3261, float %3262, float %3263, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3265 = extractvalue %dx.types.ResRet.f32 %3264, 0
  %3266 = extractvalue %dx.types.ResRet.f32 %3264, 1
  %3267 = extractvalue %dx.types.ResRet.f32 %3264, 2
  %3268 = fmul fast float %3265, 1.023000e+03
  %3269 = fmul fast float %3266, 1.023000e+03
  %3270 = fmul fast float %3267, 1.023000e+03
  %3271 = fadd fast float %3268, 5.000000e-01
  %3272 = fadd fast float %3269, 5.000000e-01
  %3273 = fadd fast float %3270, 5.000000e-01
  %3274 = call float @dx.op.unary.f32(i32 27, float %3271)  ; Round_ni(value)
  %3275 = call float @dx.op.unary.f32(i32 27, float %3272)  ; Round_ni(value)
  %3276 = call float @dx.op.unary.f32(i32 27, float %3273)  ; Round_ni(value)
  %3277 = fsub fast float %3244, %3247
  %3278 = fsub fast float %3245, %3248
  %3279 = fsub fast float %3246, %3249
  %3280 = fmul fast float %3277, 7.500000e-01
  %3281 = fmul fast float %3278, 7.500000e-01
  %3282 = fmul fast float %3279, 7.500000e-01
  %3283 = fadd fast float %3247, 1.250000e-01
  %3284 = fadd fast float %3283, %3280
  %3285 = fadd fast float %3284, %3274
  %3286 = fadd fast float %3248, 1.250000e-01
  %3287 = fadd fast float %3286, %3281
  %3288 = fadd fast float %3287, %3275
  %3289 = fadd fast float %3249, 1.250000e-01
  %3290 = fadd fast float %3289, %3282
  %3291 = fadd fast float %3290, %3276
  %3292 = fmul fast float %3285, %3235
  %3293 = fmul fast float %3288, %3236
  %3294 = fmul fast float %3291, %3237
  %3295 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3256, i32 undef)  ; BufferLoad(srv,index,wot)
  %3296 = extractvalue %dx.types.ResRet.i32 %3295, 0
  %3297 = add i32 %3296, 0
  %3298 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3297, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3299 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3298, %dx.types.Handle %45, float %3292, float %3293, float %3294, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3300 = extractvalue %dx.types.ResRet.f32 %3299, 0
  br label %3301

; <label>:3301                                    ; preds = %3222, %3211
  %3302 = phi float [ %3300, %3222 ], [ -1.000000e+00, %3211 ]
  %3303 = fadd fast float %3302, %3209
  %3304 = call float @dx.op.unary.f32(i32 7, float %3303)  ; Saturate(value)
  br label %3305

; <label>:3305                                    ; preds = %3301, %3199
  %3306 = phi float [ %3304, %3301 ], [ %3209, %3199 ]
  %3307 = fmul fast float %3306, %462
  br label %3308

; <label>:3308                                    ; preds = %3305, %3194
  %3309 = phi float [ %3307, %3305 ], [ %462, %3194 ]
  %3310 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %3088, i32 undef)  ; BufferLoad(srv,index,wot)
  %3311 = extractvalue %dx.types.ResRet.i32 %3310, 0
  %3312 = and i32 %3311, 256
  %3313 = icmp eq i32 %3312, 0
  br i1 %3313, label %3360, label %3314

; <label>:3314                                    ; preds = %3308
  %3315 = add i32 %60, 436
  %3316 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %3315, i32 undef)  ; BufferLoad(srv,index,wot)
  %3317 = extractvalue %dx.types.ResRet.i32 %3316, 0
  %3318 = add i32 %3317, 0
  %3319 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3318, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3320 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3319, %dx.types.Handle %106, float %3195, float %3196, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3321 = extractvalue %dx.types.ResRet.f32 %3320, 0
  %3322 = add i32 %60, 148
  %3323 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %3322, i32 undef)  ; BufferLoad(srv,index,wot)
  %3324 = extractvalue %dx.types.ResRet.i32 %3323, 0
  %3325 = shl i32 %3324, 4
  %3326 = and i32 %3325, 32752
  %3327 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3326)  ; LegacyF16ToF32(value)
  %3328 = lshr i32 %3324, 7
  %3329 = and i32 %3328, 32752
  %3330 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3329)  ; LegacyF16ToF32(value)
  %3331 = fsub fast float 1.000000e+00, %3309
  %3332 = call float @dx.op.binary.f32(i32 35, float %3331, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3333 = bitcast float %3309 to i32
  %3334 = sitofp i32 %3333 to float
  %3335 = fadd fast float %3334, 0xC1CFBF8940000000
  %3336 = fmul fast float %3330, %3335
  %3337 = fadd fast float %3336, 0x41CFBF8940000000
  %3338 = fptosi float %3337 to i32
  %3339 = bitcast i32 %3338 to float
  %3340 = bitcast float %3332 to i32
  %3341 = sitofp i32 %3340 to float
  %3342 = fadd fast float %3341, 0xC1CFBF8940000000
  %3343 = fmul fast float %3342, %3330
  %3344 = fadd fast float %3343, 0x41CFBF8940000000
  %3345 = fptosi float %3344 to i32
  %3346 = bitcast i32 %3345 to float
  %3347 = fmul fast float %3339, %3327
  %3348 = fmul fast float %3346, %3327
  %3349 = fsub fast float %3332, %3347
  %3350 = fadd fast float %3348, %3332
  %3351 = call float @dx.op.unary.f32(i32 7, float %3349)  ; Saturate(value)
  %3352 = call float @dx.op.unary.f32(i32 7, float %3350)  ; Saturate(value)
  %3353 = fsub fast float %3321, %3351
  %3354 = fsub fast float %3352, %3351
  %3355 = bitcast float %3354 to i32
  %3356 = sub nsw i32 2129859010, %3355
  %3357 = bitcast i32 %3356 to float
  %3358 = fmul fast float %3357, %3353
  %3359 = call float @dx.op.unary.f32(i32 7, float %3358)  ; Saturate(value)
  br label %3360

; <label>:3360                                    ; preds = %3314, %3308
  %3361 = phi float [ %3359, %3314 ], [ %3309, %3308 ]
  %3362 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %3088, i32 undef)  ; BufferLoad(srv,index,wot)
  %3363 = extractvalue %dx.types.ResRet.i32 %3362, 0
  %3364 = and i32 %3363, 128
  %3365 = icmp eq i32 %3364, 0
  br i1 %3365, label %3382, label %3366

; <label>:3366                                    ; preds = %3360
  %3367 = add i32 %60, 420
  %3368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %3367, i32 undef)  ; BufferLoad(srv,index,wot)
  %3369 = extractvalue %dx.types.ResRet.i32 %3368, 0
  %3370 = add i32 %3369, 0
  %3371 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3370, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3372 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3371, %dx.types.Handle %106, float %3195, float %3196, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3373 = extractvalue %dx.types.ResRet.f32 %3372, 0
  %3374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %3088, i32 undef)  ; BufferLoad(srv,index,wot)
  %3375 = extractvalue %dx.types.ResRet.i32 %3374, 0
  %3376 = and i32 %3375, 524288
  %3377 = icmp ne i32 %3376, 0
  %3378 = fcmp fast ogt float %3373, 0x3FE0101020000000
  %3379 = select i1 %3378, float 1.000000e+00, float 0.000000e+00
  %3380 = select i1 %3377, float %3379, float %3373
  %3381 = fmul fast float %3380, %3361
  br label %3382

; <label>:3382                                    ; preds = %3366, %3360
  %3383 = phi float [ %3381, %3366 ], [ %3361, %3360 ]
  %3384 = fcmp fast ult float %3383, 0x3F70101020000000
  br i1 %3384, label %4014, label %3385

; <label>:3385                                    ; preds = %3382
  %3386 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %3088, i32 undef)  ; BufferLoad(srv,index,wot)
  %3387 = extractvalue %dx.types.ResRet.i32 %3386, 0
  %3388 = and i32 %3387, 16
  %3389 = icmp eq i32 %3388, 0
  br i1 %3389, label %3588, label %3390

; <label>:3390                                    ; preds = %3385
  %3391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %3111, i32 undef)  ; BufferLoad(srv,index,wot)
  %3392 = extractvalue %dx.types.ResRet.i32 %3391, 0
  %3393 = add i32 %60, 372
  %3394 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %3393, i32 undef)  ; BufferLoad(srv,index,wot)
  %3395 = extractvalue %dx.types.ResRet.i32 %3394, 0
  %3396 = add i32 %3395, 0
  %3397 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3396, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3398 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3397, %dx.types.Handle %105, float %3195, float %3196, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3399 = extractvalue %dx.types.ResRet.f32 %3398, 0
  %3400 = extractvalue %dx.types.ResRet.f32 %3398, 1
  %3401 = extractvalue %dx.types.ResRet.f32 %3398, 2
  %3402 = extractvalue %dx.types.ResRet.f32 %3398, 3
  %3403 = and i32 %3392, 255
  %3404 = uitofp i32 %3403 to float
  %3405 = lshr i32 %3392, 8
  %3406 = and i32 %3405, 255
  %3407 = uitofp i32 %3406 to float
  %3408 = fmul fast float %3402, %3404
  %3409 = fadd fast float %3408, %3407
  %3410 = fmul fast float %3409, 0x3F70101000000000
  %3411 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %3088, i32 undef)  ; BufferLoad(srv,index,wot)
  %3412 = extractvalue %dx.types.ResRet.i32 %3411, 0
  %3413 = and i32 %3412, 512
  %3414 = icmp eq i32 %3413, 0
  br i1 %3414, label %3423, label %3415

; <label>:3415                                    ; preds = %3390
  %3416 = add i32 %60, 452
  %3417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %3416, i32 undef)  ; BufferLoad(srv,index,wot)
  %3418 = extractvalue %dx.types.ResRet.i32 %3417, 0
  %3419 = add i32 %3418, 0
  %3420 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3419, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3421 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3420, %dx.types.Handle %106, float %3195, float %3196, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3422 = extractvalue %dx.types.ResRet.f32 %3421, 0
  br label %3423

; <label>:3423                                    ; preds = %3415, %3390
  %3424 = phi float [ %3422, %3415 ], [ 1.000000e+00, %3390 ]
  %3425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %3088, i32 undef)  ; BufferLoad(srv,index,wot)
  %3426 = extractvalue %dx.types.ResRet.i32 %3425, 0
  %3427 = and i32 %3426, 33554432
  %3428 = icmp eq i32 %3427, 0
  br i1 %3428, label %3535, label %3429

; <label>:3429                                    ; preds = %3423
  %3430 = add i32 %60, 272
  %3431 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %3430, i32 undef)  ; BufferLoad(srv,index,wot)
  %3432 = extractvalue %dx.types.ResRet.i32 %3431, 0
  %3433 = and i32 %3432, 65535
  %3434 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3433)  ; LegacyF16ToF32(value)
  %3435 = lshr i32 %3432, 16
  %3436 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3435)  ; LegacyF16ToF32(value)
  %3437 = add i32 %60, 276
  %3438 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %3437, i32 undef)  ; BufferLoad(srv,index,wot)
  %3439 = extractvalue %dx.types.ResRet.i32 %3438, 0
  %3440 = and i32 %3439, 65535
  %3441 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3440)  ; LegacyF16ToF32(value)
  %3442 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %375, i32 undef)  ; BufferLoad(srv,index,wot)
  %3443 = extractvalue %dx.types.ResRet.i32 %3442, 0
  %3444 = lshr i32 %3443, 24
  %3445 = uitofp i32 %3444 to float
  %3446 = fmul fast float %3445, 0x3F70101020000000
  %3447 = and i32 %3443, 255
  %3448 = uitofp i32 %3447 to float
  %3449 = fmul fast float %3448, 0x3F70101020000000
  %3450 = lshr i32 %3443, 8
  %3451 = and i32 %3450, 255
  %3452 = uitofp i32 %3451 to float
  %3453 = fmul fast float %3452, 0x3F70101020000000
  %3454 = lshr i32 %3443, 16
  %3455 = and i32 %3454, 255
  %3456 = uitofp i32 %3455 to float
  %3457 = fmul fast float %3456, 0x3F70101020000000
  %3458 = add i32 %60, 268
  %3459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %3458, i32 undef)  ; BufferLoad(srv,index,wot)
  %3460 = extractvalue %dx.types.ResRet.i32 %3459, 0
  %3461 = lshr i32 %3460, 24
  %3462 = uitofp i32 %3461 to float
  %3463 = fmul fast float %3462, 0x3F70101020000000
  %3464 = and i32 %3460, 255
  %3465 = uitofp i32 %3464 to float
  %3466 = fmul fast float %3465, 0x3F70101020000000
  %3467 = lshr i32 %3460, 8
  %3468 = and i32 %3467, 255
  %3469 = uitofp i32 %3468 to float
  %3470 = fmul fast float %3469, 0x3F70101020000000
  %3471 = lshr i32 %3460, 16
  %3472 = and i32 %3471, 255
  %3473 = uitofp i32 %3472 to float
  %3474 = fmul fast float %3473, 0x3F70101020000000
  %3475 = bitcast float %3399 to i32
  %3476 = ashr i32 %3475, 1
  %3477 = sub nsw i32 1597463174, %3476
  %3478 = bitcast i32 %3477 to float
  %3479 = fmul fast float %3399, 5.000000e-01
  %3480 = fmul fast float %3478, %3478
  %3481 = fmul fast float %3480, %3479
  %3482 = fsub fast float 1.500000e+00, %3481
  %3483 = fmul fast float %3478, %3399
  %3484 = fmul fast float %3483, %3482
  %3485 = bitcast float %3400 to i32
  %3486 = ashr i32 %3485, 1
  %3487 = sub nsw i32 1597463174, %3486
  %3488 = bitcast i32 %3487 to float
  %3489 = fmul fast float %3400, 5.000000e-01
  %3490 = fmul fast float %3488, %3488
  %3491 = fmul fast float %3490, %3489
  %3492 = fsub fast float 1.500000e+00, %3491
  %3493 = fmul fast float %3488, %3400
  %3494 = fmul fast float %3493, %3492
  %3495 = bitcast float %3401 to i32
  %3496 = ashr i32 %3495, 1
  %3497 = sub nsw i32 1597463174, %3496
  %3498 = bitcast i32 %3497 to float
  %3499 = fmul fast float %3401, 5.000000e-01
  %3500 = fmul fast float %3498, %3498
  %3501 = fmul fast float %3500, %3499
  %3502 = fsub fast float 1.500000e+00, %3501
  %3503 = fmul fast float %3498, %3401
  %3504 = fmul fast float %3503, %3502
  %3505 = fsub fast float %3484, %3466
  %3506 = fsub fast float %3494, %3470
  %3507 = fsub fast float %3504, %3474
  %3508 = fmul fast float %3505, %3434
  %3509 = fmul fast float %3506, %3436
  %3510 = fmul fast float %3507, %3441
  %3511 = fadd fast float %3508, %3449
  %3512 = fadd fast float %3509, %3453
  %3513 = fadd fast float %3510, %3457
  %3514 = call float @dx.op.unary.f32(i32 7, float %3511)  ; Saturate(value)
  %3515 = call float @dx.op.unary.f32(i32 7, float %3512)  ; Saturate(value)
  %3516 = call float @dx.op.unary.f32(i32 7, float %3513)  ; Saturate(value)
  %3517 = fmul fast float %3514, %3514
  %3518 = fmul fast float %3515, %3515
  %3519 = fmul fast float %3516, %3516
  %3520 = fsub fast float %3517, %3399
  %3521 = fsub fast float %3518, %3400
  %3522 = fsub fast float %3519, %3401
  %3523 = fmul fast float %3520, %3424
  %3524 = fmul fast float %3521, %3424
  %3525 = fmul fast float %3522, %3424
  %3526 = fadd fast float %3523, %3399
  %3527 = fadd fast float %3524, %3400
  %3528 = fadd fast float %3525, %3401
  %3529 = fadd fast float %3446, %3410
  %3530 = fsub fast float %3529, %3463
  %3531 = call float @dx.op.unary.f32(i32 7, float %3530)  ; Saturate(value)
  %3532 = fsub fast float %3531, %3410
  %3533 = fmul fast float %3532, %3424
  %3534 = fadd fast float %3533, %3410
  br label %3588

; <label>:3535                                    ; preds = %3423
  %3536 = and i32 %3426, 134217728
  %3537 = icmp eq i32 %3536, 0
  br i1 %3537, label %3572, label %3538

; <label>:3538                                    ; preds = %3535
  %3539 = call float @dx.op.unary.f32(i32 24, float %380)  ; Sqrt(value)
  %3540 = call float @dx.op.unary.f32(i32 24, float %384)  ; Sqrt(value)
  %3541 = call float @dx.op.unary.f32(i32 24, float %388)  ; Sqrt(value)
  %3542 = fadd fast float %3539, -5.000000e-01
  %3543 = fadd fast float %3540, -5.000000e-01
  %3544 = fadd fast float %3541, -5.000000e-01
  %3545 = fmul fast float %3542, %3424
  %3546 = fmul fast float %3543, %3424
  %3547 = fmul fast float %3544, %3424
  %3548 = fadd fast float %3545, 5.000000e-01
  %3549 = fadd fast float %3546, 5.000000e-01
  %3550 = fadd fast float %3547, 5.000000e-01
  %3551 = call float @dx.op.unary.f32(i32 24, float %3399)  ; Sqrt(value)
  %3552 = call float @dx.op.unary.f32(i32 24, float %3400)  ; Sqrt(value)
  %3553 = call float @dx.op.unary.f32(i32 24, float %3401)  ; Sqrt(value)
  %3554 = fmul fast float %3548, 2.000000e+00
  %3555 = fsub fast float 1.000000e+00, %3554
  %3556 = fmul fast float %3555, %3551
  %3557 = fadd fast float %3556, %3554
  %3558 = fmul fast float %3557, %3551
  %3559 = fmul fast float %3549, 2.000000e+00
  %3560 = fsub fast float 1.000000e+00, %3559
  %3561 = fmul fast float %3560, %3552
  %3562 = fadd fast float %3561, %3559
  %3563 = fmul fast float %3562, %3552
  %3564 = fmul fast float %3550, 2.000000e+00
  %3565 = fsub fast float 1.000000e+00, %3564
  %3566 = fmul fast float %3565, %3553
  %3567 = fadd fast float %3566, %3564
  %3568 = fmul fast float %3567, %3553
  %3569 = fmul fast float %3558, %3558
  %3570 = fmul fast float %3563, %3563
  %3571 = fmul fast float %3568, %3568
  br label %3588

; <label>:3572                                    ; preds = %3535
  %3573 = fmul fast float %380, %380
  %3574 = fmul fast float %384, %384
  %3575 = fmul fast float %388, %388
  %3576 = fadd fast float %3573, -1.000000e+00
  %3577 = fadd fast float %3574, -1.000000e+00
  %3578 = fadd fast float %3575, -1.000000e+00
  %3579 = fmul fast float %3424, %3576
  %3580 = fmul fast float %3424, %3577
  %3581 = fmul fast float %3424, %3578
  %3582 = fadd fast float %3579, 1.000000e+00
  %3583 = fadd fast float %3580, 1.000000e+00
  %3584 = fadd fast float %3581, 1.000000e+00
  %3585 = fmul fast float %3582, %3399
  %3586 = fmul fast float %3583, %3400
  %3587 = fmul fast float %3584, %3401
  br label %3588

; <label>:3588                                    ; preds = %3572, %3538, %3429, %3385
  %3589 = phi float [ %3534, %3429 ], [ %3410, %3538 ], [ %3410, %3572 ], [ 0x3FA23C0BE0000000, %3385 ]
  %3590 = phi float [ %3526, %3429 ], [ %3569, %3538 ], [ %3585, %3572 ], [ 1.000000e+00, %3385 ]
  %3591 = phi float [ %3527, %3429 ], [ %3570, %3538 ], [ %3586, %3572 ], [ 1.000000e+00, %3385 ]
  %3592 = phi float [ %3528, %3429 ], [ %3571, %3538 ], [ %3587, %3572 ], [ 1.000000e+00, %3385 ]
  %3593 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3594 = extractvalue %dx.types.CBufRet.i32 %3593, 1
  %3595 = and i32 %3594, 1
  %3596 = icmp ne i32 %3595, 0
  %3597 = add i32 %60, 356
  %3598 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %3597, i32 undef)  ; BufferLoad(srv,index,wot)
  %3599 = extractvalue %dx.types.ResRet.i32 %3598, 0
  %3600 = and i32 %3599, 32
  %3601 = icmp ne i32 %3600, 0
  %3602 = and i1 %3596, %3601
  %3603 = select i1 %3602, float 1.000000e+00, float %3590
  %3604 = select i1 %3602, float 0x3FD3333340000000, float %3591
  %3605 = select i1 %3602, float 0x3FD3333340000000, float %3592
  %3606 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %3088, i32 undef)  ; BufferLoad(srv,index,wot)
  %3607 = extractvalue %dx.types.ResRet.i32 %3606, 0
  %3608 = and i32 %3607, 32
  %3609 = icmp eq i32 %3608, 0
  br i1 %3609, label %3682, label %3610

; <label>:3610                                    ; preds = %3588
  %3611 = add i32 %60, 140
  %3612 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %3611, i32 undef)  ; BufferLoad(srv,index,wot)
  %3613 = extractvalue %dx.types.ResRet.i32 %3612, 0
  %3614 = add i32 %60, 388
  %3615 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %3614, i32 undef)  ; BufferLoad(srv,index,wot)
  %3616 = extractvalue %dx.types.ResRet.i32 %3615, 0
  %3617 = add i32 %3616, 0
  %3618 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3617, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3619 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3618, %dx.types.Handle %105, float %3195, float %3196, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3620 = extractvalue %dx.types.ResRet.f32 %3619, 0
  %3621 = extractvalue %dx.types.ResRet.f32 %3619, 1
  %3622 = extractvalue %dx.types.ResRet.f32 %3619, 2
  %3623 = extractvalue %dx.types.ResRet.f32 %3619, 3
  %3624 = and i32 %3613, 255
  %3625 = uitofp i32 %3624 to float
  %3626 = lshr i32 %3613, 8
  %3627 = and i32 %3626, 255
  %3628 = uitofp i32 %3627 to float
  %3629 = lshr i32 %3613, 16
  %3630 = and i32 %3629, 255
  %3631 = uitofp i32 %3630 to float
  %3632 = fmul fast float %3631, 0x3F70101000000000
  %3633 = fmul fast float %3620, %3625
  %3634 = fadd fast float %3633, %3628
  %3635 = fmul fast float %3634, 0x3F70101000000000
  %3636 = fadd fast float %3621, -5.000000e-01
  %3637 = fadd fast float %3623, -5.000000e-01
  %3638 = fmul fast float %3636, %3632
  %3639 = fmul fast float %3637, %3632
  %3640 = fadd fast float %3638, 5.000000e-01
  %3641 = fadd fast float %3639, 5.000000e-01
  %3642 = fmul fast float %3640, 2.000000e+00
  %3643 = fadd fast float %3642, -1.000000e+00
  %3644 = fmul fast float %3641, 2.000000e+00
  %3645 = fadd fast float %3644, -1.000000e+00
  %3646 = fadd fast float %3643, %3645
  %3647 = fmul fast float %3646, 5.000000e-01
  %3648 = fsub fast float %3643, %3645
  %3649 = fmul fast float %3648, 5.000000e-01
  %3650 = call float @dx.op.unary.f32(i32 6, float %3647)  ; FAbs(value)
  %3651 = fsub fast float 1.000000e+00, %3650
  %3652 = call float @dx.op.unary.f32(i32 6, float %3649)  ; FAbs(value)
  %3653 = fsub fast float %3651, %3652
  %3654 = call float @dx.op.dot3.f32(i32 55, float %3647, float %3649, float %3653, float %3647, float %3649, float %3653)  ; Dot3(ax,ay,az,bx,by,bz)
  %3655 = call float @dx.op.unary.f32(i32 25, float %3654)  ; Rsqrt(value)
  %3656 = fmul fast float %3647, %3655
  %3657 = fmul fast float %3649, %3655
  %3658 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %3088, i32 undef)  ; BufferLoad(srv,index,wot)
  %3659 = extractvalue %dx.types.ResRet.i32 %3658, 0
  %3660 = and i32 %3659, 67108864
  %3661 = icmp eq i32 %3660, 0
  br i1 %3661, label %3678, label %3662

; <label>:3662                                    ; preds = %3610
  %3663 = add i32 %60, 328
  %3664 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %3663, i32 undef)  ; BufferLoad(srv,index,wot)
  %3665 = extractvalue %dx.types.ResRet.i32 %3664, 0
  %3666 = and i32 %3665, 65535
  %3667 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3666)  ; LegacyF16ToF32(value)
  %3668 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %3105, i32 undef)  ; BufferLoad(srv,index,wot)
  %3669 = extractvalue %dx.types.ResRet.i32 %3668, 0
  %3670 = and i32 %3669, 65535
  %3671 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3670)  ; LegacyF16ToF32(value)
  %3672 = lshr i32 %3665, 16
  %3673 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3672)  ; LegacyF16ToF32(value)
  %3674 = fsub fast float %3635, %3673
  %3675 = fmul fast float %3674, %3667
  %3676 = fadd fast float %3675, %3671
  %3677 = call float @dx.op.unary.f32(i32 7, float %3676)  ; Saturate(value)
  br label %3678

; <label>:3678                                    ; preds = %3662, %3610
  %3679 = phi float [ %3677, %3662 ], [ %3635, %3610 ]
  %3680 = call float @dx.op.dot2.f32(i32 54, float %3656, float %3657, float %3099, float %3100)  ; Dot2(ax,ay,bx,by)
  %3681 = call float @dx.op.dot2.f32(i32 54, float %3656, float %3657, float %3101, float %3102)  ; Dot2(ax,ay,bx,by)
  br label %3682

; <label>:3682                                    ; preds = %3678, %3588
  %3683 = phi float [ %3679, %3678 ], [ 0x3FD6666660000000, %3588 ]
  %3684 = phi float [ %3680, %3678 ], [ 0.000000e+00, %3588 ]
  %3685 = phi float [ %3681, %3678 ], [ 0.000000e+00, %3588 ]
  %3686 = phi float [ %3622, %3678 ], [ 1.000000e+00, %3588 ]
  %3687 = add i32 %60, 208
  %3688 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %3687, i32 undef)  ; BufferLoad(srv,index,wot)
  %3689 = extractvalue %dx.types.ResRet.i32 %3688, 0
  %3690 = lshr i32 %3689, 22
  %3691 = shl nuw nsw i32 %3690, 5
  %3692 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3691)  ; LegacyF16ToF32(value)
  %3693 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %3088, i32 undef)  ; BufferLoad(srv,index,wot)
  %3694 = extractvalue %dx.types.ResRet.i32 %3693, 0
  %3695 = and i32 %3694, 64
  %3696 = icmp eq i32 %3695, 0
  br i1 %3696, label %3730, label %3697

; <label>:3697                                    ; preds = %3682
  %3698 = add i32 %60, 404
  %3699 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %3698, i32 undef)  ; BufferLoad(srv,index,wot)
  %3700 = extractvalue %dx.types.ResRet.i32 %3699, 0
  %3701 = add i32 %3700, 0
  %3702 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3701, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3703 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %3088, i32 undef)  ; BufferLoad(srv,index,wot)
  %3704 = extractvalue %dx.types.ResRet.i32 %3703, 0
  %3705 = and i32 %3704, 131072
  %3706 = icmp eq i32 %3705, 0
  %3707 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3702, %dx.types.Handle %105, float %3195, float %3196, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3708 = extractvalue %dx.types.ResRet.f32 %3707, 0
  %3709 = extractvalue %dx.types.ResRet.f32 %3707, 1
  %3710 = extractvalue %dx.types.ResRet.f32 %3707, 2
  %3711 = fmul fast float %3708, %368
  %3712 = fmul fast float %3709, %371
  %3713 = fmul fast float %3710, %374
  br i1 %3706, label %3720, label %3714

; <label>:3714                                    ; preds = %3697
  %3715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3716 = extractvalue %dx.types.CBufRet.f32 %3715, 0
  %3717 = fmul fast float %3716, %3711
  %3718 = fmul fast float %3716, %3712
  %3719 = fmul fast float %3716, %3713
  br label %3720

; <label>:3720                                    ; preds = %3714, %3697
  %3721 = phi float [ %3717, %3714 ], [ %3711, %3697 ]
  %3722 = phi float [ %3718, %3714 ], [ %3712, %3697 ]
  %3723 = phi float [ %3719, %3714 ], [ %3713, %3697 ]
  %3724 = fmul fast float %3721, %3692
  %3725 = select i1 %225, float %3724, float %3721
  %3726 = call float @dx.op.dot3.f32(i32 55, float %3725, float %3722, float %3723, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3727 = select i1 %225, float 0.000000e+00, float %3721
  %3728 = select i1 %225, float %3726, float %3722
  %3729 = select i1 %225, float 0.000000e+00, float %3723
  br label %3730

; <label>:3730                                    ; preds = %3720, %3682
  %3731 = phi float [ %3727, %3720 ], [ 0.000000e+00, %3682 ]
  %3732 = phi float [ %3728, %3720 ], [ 0.000000e+00, %3682 ]
  %3733 = phi float [ %3729, %3720 ], [ 0.000000e+00, %3682 ]
  %3734 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %3088, i32 undef)  ; BufferLoad(srv,index,wot)
  %3735 = extractvalue %dx.types.ResRet.i32 %3734, 0
  %3736 = and i32 %3735, 10240
  %3737 = icmp eq i32 %3736, 0
  br i1 %3737, label %3782, label %3738

; <label>:3738                                    ; preds = %3730
  %3739 = add i32 %60, 468
  %3740 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %3739, i32 undef)  ; BufferLoad(srv,index,wot)
  %3741 = extractvalue %dx.types.ResRet.i32 %3740, 0
  %3742 = add i32 %3741, 0
  %3743 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3742, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3744 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3743, %dx.types.Handle %106, float %3195, float %3196, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3745 = extractvalue %dx.types.ResRet.f32 %3744, 1
  %3746 = extractvalue %dx.types.ResRet.f32 %3744, 3
  %3747 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %3088, i32 undef)  ; BufferLoad(srv,index,wot)
  %3748 = extractvalue %dx.types.ResRet.i32 %3747, 0
  %3749 = and i32 %3748, 1048576
  %3750 = icmp ne i32 %3749, 0
  %3751 = and i32 %3748, 8192
  %3752 = icmp eq i32 %3751, 0
  br i1 %3752, label %3768, label %3753

; <label>:3753                                    ; preds = %3738
  %3754 = extractvalue %dx.types.ResRet.f32 %3744, 2
  %3755 = select i1 %3750, float %3754, float %3745
  %3756 = extractvalue %dx.types.ResRet.f32 %3744, 0
  %3757 = select i1 %3750, float %3756, float %3745
  %3758 = add i32 %60, 144
  %3759 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %3758, i32 undef)  ; BufferLoad(srv,index,wot)
  %3760 = extractvalue %dx.types.ResRet.i32 %3759, 0
  %3761 = lshr i32 %3760, 16
  %3762 = and i32 %3761, 255
  %3763 = uitofp i32 %3762 to float
  %3764 = fmul fast float %3763, 0x3F80101020000000
  %3765 = fmul fast float %3764, %3757
  %3766 = fmul fast float %3764, %3745
  %3767 = fmul fast float %3764, %3755
  br label %3768

; <label>:3768                                    ; preds = %3753, %3738
  %3769 = phi float [ %3765, %3753 ], [ 0.000000e+00, %3738 ]
  %3770 = phi float [ %3766, %3753 ], [ 0.000000e+00, %3738 ]
  %3771 = phi float [ %3767, %3753 ], [ 0.000000e+00, %3738 ]
  %3772 = and i32 %3748, 2048
  %3773 = icmp eq i32 %3772, 0
  br i1 %3773, label %3782, label %3774

; <label>:3774                                    ; preds = %3768
  %3775 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %3687, i32 undef)  ; BufferLoad(srv,index,wot)
  %3776 = extractvalue %dx.types.ResRet.i32 %3775, 0
  %3777 = shl i32 %3776, 4
  %3778 = and i32 %3777, 32752
  %3779 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3778)  ; LegacyF16ToF32(value)
  %3780 = fmul fast float %3779, %3746
  %3781 = call float @dx.op.binary.f32(i32 35, float %3780, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3782

; <label>:3782                                    ; preds = %3774, %3768, %3730
  %3783 = phi float [ %3769, %3774 ], [ %3769, %3768 ], [ 0.000000e+00, %3730 ]
  %3784 = phi float [ %3770, %3774 ], [ %3770, %3768 ], [ 0.000000e+00, %3730 ]
  %3785 = phi float [ %3771, %3774 ], [ %3771, %3768 ], [ 0.000000e+00, %3730 ]
  %3786 = phi float [ %3781, %3774 ], [ 0x3F70101020000000, %3768 ], [ 0x3F70101020000000, %3730 ]
  %3787 = add i32 %60, 144
  %3788 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %3787, i32 undef)  ; BufferLoad(srv,index,wot)
  %3789 = extractvalue %dx.types.ResRet.i32 %3788, 0
  %3790 = and i32 %3789, 255
  %3791 = uitofp i32 %3790 to float
  %3792 = lshr i32 %3789, 8
  %3793 = and i32 %3792, 255
  %3794 = uitofp i32 %3793 to float
  %3795 = call float @dx.op.dot3.f32(i32 55, float %3603, float %3604, float %3605, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3796 = fmul fast float %3794, %3795
  %3797 = fadd fast float %3796, %3791
  %3798 = fmul fast float %3797, 0x3F70101020000000
  %3799 = call float @dx.op.unary.f32(i32 7, float %3798)  ; Saturate(value)
  br i1 %3087, label %3800, label %3808

; <label>:3800                                    ; preds = %3782
  %3801 = fsub fast float 1.000000e+00, %3383
  %3802 = fmul fast float %3801, %3072
  %3803 = fmul fast float %3801, %3073
  %3804 = fmul fast float %3801, %3074
  %3805 = fmul fast float %3801, %3078
  %3806 = fmul fast float %3801, %3079
  %3807 = fmul fast float %3801, %3080
  br label %3808

; <label>:3808                                    ; preds = %3800, %3782
  %3809 = phi float [ %3802, %3800 ], [ %3072, %3782 ]
  %3810 = phi float [ %3803, %3800 ], [ %3073, %3782 ]
  %3811 = phi float [ %3804, %3800 ], [ %3074, %3782 ]
  %3812 = phi float [ %3805, %3800 ], [ %3078, %3782 ]
  %3813 = phi float [ %3806, %3800 ], [ %3079, %3782 ]
  %3814 = phi float [ %3807, %3800 ], [ %3080, %3782 ]
  %3815 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %3088, i32 undef)  ; BufferLoad(srv,index,wot)
  %3816 = extractvalue %dx.types.ResRet.i32 %3815, 0
  %3817 = and i32 %3816, 3
  %3818 = icmp eq i32 %3817, 3
  br i1 %3818, label %3897, label %3819

; <label>:3819                                    ; preds = %3808
  %3820 = and i32 %3816, 16
  %3821 = icmp ne i32 %3820, 0
  %3822 = select i1 %3821, float %3383, float 0.000000e+00
  %3823 = icmp eq i32 %3817, 0
  br i1 %3823, label %3824, label %3852

; <label>:3824                                    ; preds = %3819
  %3825 = and i32 %3816, 64
  %3826 = icmp ne i32 %3825, 0
  %3827 = select i1 %3826, float %3383, float 0.000000e+00
  %3828 = fsub fast float %3603, %3809
  %3829 = fsub fast float %3604, %3810
  %3830 = fsub fast float %3605, %3811
  %3831 = fmul fast float %3822, %3828
  %3832 = fmul fast float %3822, %3829
  %3833 = fmul fast float %3822, %3830
  %3834 = fadd fast float %3831, %3809
  %3835 = fadd fast float %3832, %3810
  %3836 = fadd fast float %3833, %3811
  %3837 = fsub fast float %3589, %3081
  %3838 = fmul fast float %3822, %3837
  %3839 = fadd fast float %3838, %3081
  %3840 = fsub fast float %3731, %3812
  %3841 = fsub fast float %3732, %3813
  %3842 = fsub fast float %3733, %3814
  %3843 = fmul fast float %3827, %3840
  %3844 = fmul fast float %3827, %3841
  %3845 = fmul fast float %3827, %3842
  %3846 = fadd fast float %3843, %3812
  %3847 = fadd fast float %3844, %3813
  %3848 = fadd fast float %3845, %3814
  %3849 = fsub fast float %3799, %3085
  %3850 = fmul fast float %3822, %3849
  %3851 = fadd fast float %3850, %3085
  br label %3897

; <label>:3852                                    ; preds = %3819
  %3853 = icmp eq i32 %3817, 1
  br i1 %3853, label %3854, label %3867

; <label>:3854                                    ; preds = %3852
  %3855 = fadd fast float %3603, -1.000000e+00
  %3856 = fadd fast float %3604, -1.000000e+00
  %3857 = fadd fast float %3605, -1.000000e+00
  %3858 = fmul fast float %3822, %3855
  %3859 = fmul fast float %3822, %3856
  %3860 = fmul fast float %3822, %3857
  %3861 = fadd fast float %3858, 1.000000e+00
  %3862 = fadd fast float %3859, 1.000000e+00
  %3863 = fadd fast float %3860, 1.000000e+00
  %3864 = fmul fast float %3861, %3809
  %3865 = fmul fast float %3862, %3810
  %3866 = fmul fast float %3863, %3811
  br label %3897

; <label>:3867                                    ; preds = %3852
  %3868 = icmp eq i32 %3817, 2
  br i1 %3868, label %3869, label %3897

; <label>:3869                                    ; preds = %3867
  %3870 = call float @dx.op.unary.f32(i32 24, float %3603)  ; Sqrt(value)
  %3871 = call float @dx.op.unary.f32(i32 24, float %3604)  ; Sqrt(value)
  %3872 = call float @dx.op.unary.f32(i32 24, float %3605)  ; Sqrt(value)
  %3873 = fadd fast float %3870, -5.000000e-01
  %3874 = fadd fast float %3871, -5.000000e-01
  %3875 = fadd fast float %3872, -5.000000e-01
  %3876 = fmul fast float %3873, %3822
  %3877 = fmul fast float %3874, %3822
  %3878 = fmul fast float %3875, %3822
  %3879 = fadd fast float %3876, 5.000000e-01
  %3880 = fadd fast float %3877, 5.000000e-01
  %3881 = fadd fast float %3878, 5.000000e-01
  %3882 = fmul fast float %3879, 2.000000e+00
  %3883 = fsub fast float 1.000000e+00, %3882
  %3884 = fmul fast float %3883, %3809
  %3885 = fadd fast float %3884, %3882
  %3886 = fmul fast float %3885, %3809
  %3887 = fmul fast float %3880, 2.000000e+00
  %3888 = fsub fast float 1.000000e+00, %3887
  %3889 = fmul fast float %3888, %3810
  %3890 = fadd fast float %3889, %3887
  %3891 = fmul fast float %3890, %3810
  %3892 = fmul fast float %3881, 2.000000e+00
  %3893 = fsub fast float 1.000000e+00, %3892
  %3894 = fmul fast float %3893, %3811
  %3895 = fadd fast float %3894, %3892
  %3896 = fmul fast float %3895, %3811
  br label %3897

; <label>:3897                                    ; preds = %3869, %3867, %3854, %3824, %3808
  %3898 = phi float [ %3809, %3808 ], [ %3886, %3869 ], [ %3809, %3867 ], [ %3864, %3854 ], [ %3834, %3824 ]
  %3899 = phi float [ %3810, %3808 ], [ %3891, %3869 ], [ %3810, %3867 ], [ %3865, %3854 ], [ %3835, %3824 ]
  %3900 = phi float [ %3811, %3808 ], [ %3896, %3869 ], [ %3811, %3867 ], [ %3866, %3854 ], [ %3836, %3824 ]
  %3901 = phi float [ %3812, %3808 ], [ %3812, %3869 ], [ %3812, %3867 ], [ %3812, %3854 ], [ %3846, %3824 ]
  %3902 = phi float [ %3813, %3808 ], [ %3813, %3869 ], [ %3813, %3867 ], [ %3813, %3854 ], [ %3847, %3824 ]
  %3903 = phi float [ %3814, %3808 ], [ %3814, %3869 ], [ %3814, %3867 ], [ %3814, %3854 ], [ %3848, %3824 ]
  %3904 = phi float [ %3081, %3808 ], [ %3081, %3869 ], [ %3081, %3867 ], [ %3081, %3854 ], [ %3839, %3824 ]
  %3905 = phi float [ %3085, %3808 ], [ %3085, %3869 ], [ %3085, %3867 ], [ %3085, %3854 ], [ %3851, %3824 ]
  %3906 = and i32 %3816, 12
  %3907 = icmp eq i32 %3906, 12
  br i1 %3907, label %4014, label %3908

; <label>:3908                                    ; preds = %3897
  %3909 = and i32 %3816, 2097184
  %3910 = icmp eq i32 %3909, 2097184
  %3911 = select i1 %3910, float %3383, float 0.000000e+00
  %3912 = and i32 %3816, 4194336
  %3913 = icmp eq i32 %3912, 4194336
  %3914 = select i1 %3913, float %3383, float 0.000000e+00
  %3915 = and i32 %3816, 8388640
  %3916 = icmp eq i32 %3915, 8388640
  %3917 = select i1 %3916, float %3383, float 0.000000e+00
  %3918 = and i32 %3816, 2048
  %3919 = icmp ne i32 %3918, 0
  %3920 = select i1 %3919, float %3383, float 0.000000e+00
  %3921 = and i32 %3816, 8192
  %3922 = icmp ne i32 %3921, 0
  %3923 = select i1 %3922, float %3383, float 0.000000e+00
  %3924 = icmp eq i32 %3906, 0
  br i1 %3924, label %3925, label %3950

; <label>:3925                                    ; preds = %3908
  %3926 = fsub fast float %3684, %3070
  %3927 = fsub fast float %3685, %3071
  %3928 = fmul fast float %3911, %3926
  %3929 = fmul fast float %3911, %3927
  %3930 = fadd fast float %3928, %3070
  %3931 = fadd fast float %3929, %3071
  %3932 = fsub fast float %3686, %3083
  %3933 = fmul fast float %3914, %3932
  %3934 = fadd fast float %3933, %3083
  %3935 = fsub fast float %3683, %3082
  %3936 = fmul fast float %3917, %3935
  %3937 = fadd fast float %3936, %3082
  %3938 = fsub fast float %3786, %3084
  %3939 = fmul fast float %3920, %3938
  %3940 = fadd fast float %3939, %3084
  %3941 = fsub fast float %3783, %3075
  %3942 = fsub fast float %3784, %3076
  %3943 = fsub fast float %3785, %3077
  %3944 = fmul fast float %3923, %3941
  %3945 = fmul fast float %3923, %3942
  %3946 = fmul fast float %3923, %3943
  %3947 = fadd fast float %3944, %3075
  %3948 = fadd fast float %3945, %3076
  %3949 = fadd fast float %3946, %3077
  br label %4014

; <label>:3950                                    ; preds = %3908
  %3951 = icmp eq i32 %3906, 4
  br i1 %3951, label %3952, label %3992

; <label>:3952                                    ; preds = %3950
  %3953 = fmul fast float %3911, %3684
  %3954 = fmul fast float %3911, %3685
  %3955 = fadd fast float %3953, %3070
  %3956 = fadd fast float %3954, %3071
  %3957 = call float @dx.op.binary.f32(i32 36, float %3083, float %3686)  ; FMin(a,b)
  %3958 = fsub fast float %3957, %3083
  %3959 = fmul fast float %3958, %3914
  %3960 = fadd fast float %3959, %3083
  %3961 = fadd fast float %3683, %3082
  %3962 = fmul fast float %3961, 0x3FF337FAE0000000
  %3963 = fmul fast float %3082, %3082
  %3964 = fmul fast float %3683, %3683
  %3965 = fadd fast float %3964, %3963
  %3966 = fmul fast float %3965, 0x3FE5152B00000000
  %3967 = fmul fast float %3082, 0xBFCC1F85E0000000
  %3968 = fmul fast float %3967, %3683
  %3969 = fadd fast float %3968, 0xBFE1363700000000
  %3970 = fadd fast float %3969, %3962
  %3971 = fsub fast float %3970, %3966
  %3972 = fmul fast float %3961, 0x3FBA6F0D00000000
  %3973 = fmul fast float %3965, 0x3FD0432880000000
  %3974 = fmul fast float %3082, 0xBFEF110800000000
  %3975 = fmul fast float %3974, %3683
  %3976 = fadd fast float %3975, 1.000000e+00
  %3977 = fsub fast float %3976, %3972
  %3978 = fadd fast float %3977, %3973
  %3979 = fdiv fast float %3971, %3978
  %3980 = call float @dx.op.unary.f32(i32 7, float %3979)  ; Saturate(value)
  %3981 = fsub fast float %3980, %3082
  %3982 = fmul fast float %3981, %3917
  %3983 = fadd fast float %3982, %3082
  %3984 = fmul fast float %3920, %3786
  %3985 = fadd fast float %3984, %3084
  %3986 = fmul fast float %3923, %3783
  %3987 = fmul fast float %3923, %3784
  %3988 = fmul fast float %3923, %3785
  %3989 = fadd fast float %3986, %3075
  %3990 = fadd fast float %3987, %3076
  %3991 = fadd fast float %3988, %3077
  br label %4014

; <label>:3992                                    ; preds = %3950
  %3993 = icmp eq i32 %3906, 8
  br i1 %3993, label %3994, label %4014

; <label>:3994                                    ; preds = %3992
  %3995 = fmul fast float %3911, %3684
  %3996 = fmul fast float %3911, %3685
  %3997 = fadd fast float %3995, %3070
  %3998 = fadd fast float %3996, %3071
  %3999 = call float @dx.op.binary.f32(i32 36, float %3083, float %3686)  ; FMin(a,b)
  %4000 = fsub fast float %3999, %3083
  %4001 = fmul fast float %4000, %3914
  %4002 = fadd fast float %4001, %3083
  %4003 = fsub fast float %3683, %3082
  %4004 = fmul fast float %3917, %4003
  %4005 = fadd fast float %4004, %3082
  %4006 = fmul fast float %3920, %3786
  %4007 = fadd fast float %4006, %3084
  %4008 = fmul fast float %3923, %3783
  %4009 = fmul fast float %3923, %3784
  %4010 = fmul fast float %3923, %3785
  %4011 = fadd fast float %4008, %3075
  %4012 = fadd fast float %4009, %3076
  %4013 = fadd fast float %4010, %3077
  br label %4014

; <label>:4014                                    ; preds = %3994, %3992, %3952, %3925, %3897, %3382, %3086, %3069
  %4015 = phi float [ %3070, %3897 ], [ %3070, %3382 ], [ %3070, %3069 ], [ %3070, %3086 ], [ %3930, %3925 ], [ %3955, %3952 ], [ %3070, %3992 ], [ %3997, %3994 ]
  %4016 = phi float [ %3071, %3897 ], [ %3071, %3382 ], [ %3071, %3069 ], [ %3071, %3086 ], [ %3931, %3925 ], [ %3956, %3952 ], [ %3071, %3992 ], [ %3998, %3994 ]
  %4017 = phi float [ %3898, %3897 ], [ %3072, %3382 ], [ %3072, %3069 ], [ %3072, %3086 ], [ %3898, %3925 ], [ %3898, %3952 ], [ %3898, %3992 ], [ %3898, %3994 ]
  %4018 = phi float [ %3899, %3897 ], [ %3073, %3382 ], [ %3073, %3069 ], [ %3073, %3086 ], [ %3899, %3925 ], [ %3899, %3952 ], [ %3899, %3992 ], [ %3899, %3994 ]
  %4019 = phi float [ %3900, %3897 ], [ %3074, %3382 ], [ %3074, %3069 ], [ %3074, %3086 ], [ %3900, %3925 ], [ %3900, %3952 ], [ %3900, %3992 ], [ %3900, %3994 ]
  %4020 = phi float [ %3075, %3897 ], [ %3075, %3382 ], [ %3075, %3069 ], [ %3075, %3086 ], [ %3947, %3925 ], [ %3989, %3952 ], [ %3075, %3992 ], [ %4011, %3994 ]
  %4021 = phi float [ %3076, %3897 ], [ %3076, %3382 ], [ %3076, %3069 ], [ %3076, %3086 ], [ %3948, %3925 ], [ %3990, %3952 ], [ %3076, %3992 ], [ %4012, %3994 ]
  %4022 = phi float [ %3077, %3897 ], [ %3077, %3382 ], [ %3077, %3069 ], [ %3077, %3086 ], [ %3949, %3925 ], [ %3991, %3952 ], [ %3077, %3992 ], [ %4013, %3994 ]
  %4023 = phi float [ %3901, %3897 ], [ %3078, %3382 ], [ %3078, %3069 ], [ %3078, %3086 ], [ %3901, %3925 ], [ %3901, %3952 ], [ %3901, %3992 ], [ %3901, %3994 ]
  %4024 = phi float [ %3902, %3897 ], [ %3079, %3382 ], [ %3079, %3069 ], [ %3079, %3086 ], [ %3902, %3925 ], [ %3902, %3952 ], [ %3902, %3992 ], [ %3902, %3994 ]
  %4025 = phi float [ %3903, %3897 ], [ %3080, %3382 ], [ %3080, %3069 ], [ %3080, %3086 ], [ %3903, %3925 ], [ %3903, %3952 ], [ %3903, %3992 ], [ %3903, %3994 ]
  %4026 = phi float [ %3904, %3897 ], [ %3081, %3382 ], [ %3081, %3069 ], [ %3081, %3086 ], [ %3904, %3925 ], [ %3904, %3952 ], [ %3904, %3992 ], [ %3904, %3994 ]
  %4027 = phi float [ %3082, %3897 ], [ %3082, %3382 ], [ %3082, %3069 ], [ %3082, %3086 ], [ %3937, %3925 ], [ %3983, %3952 ], [ %3082, %3992 ], [ %4005, %3994 ]
  %4028 = phi float [ %3083, %3897 ], [ %3083, %3382 ], [ %3083, %3069 ], [ %3083, %3086 ], [ %3934, %3925 ], [ %3960, %3952 ], [ %3083, %3992 ], [ %4002, %3994 ]
  %4029 = phi float [ %3084, %3897 ], [ %3084, %3382 ], [ %3084, %3069 ], [ %3084, %3086 ], [ %3940, %3925 ], [ %3985, %3952 ], [ %3084, %3992 ], [ %4007, %3994 ]
  %4030 = phi float [ %3905, %3897 ], [ %3085, %3382 ], [ %3085, %3069 ], [ %3085, %3086 ], [ %3905, %3925 ], [ %3905, %3952 ], [ %3905, %3992 ], [ %3905, %3994 ]
  %4031 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4032 = extractvalue %dx.types.CBufRet.f32 %4031, 0
  %4033 = call float @dx.op.dot2.f32(i32 54, float %4015, float %4016, float %4015, float %4016)  ; Dot2(ax,ay,bx,by)
  %4034 = fmul fast float %4033, 0x3FE3333340000000
  %4035 = fsub fast float 1.000000e+00, %4034
  %4036 = call float @dx.op.dot3.f32(i32 55, float %4015, float %4016, float %4035, float %4015, float %4016, float %4035)  ; Dot3(ax,ay,az,bx,by,bz)
  %4037 = call float @dx.op.unary.f32(i32 25, float %4036)  ; Rsqrt(value)
  %4038 = fmul fast float %4037, %4015
  %4039 = fmul fast float %4037, %4016
  %4040 = fmul fast float %4035, %4037
  %4041 = fmul fast float %4040, %116
  %4042 = fmul fast float %4040, %117
  %4043 = fmul fast float %4040, %118
  %4044 = fmul fast float %4038, %81
  %4045 = fmul fast float %4038, %82
  %4046 = fmul fast float %4038, %83
  %4047 = fadd fast float %4041, %4044
  %4048 = fadd fast float %4042, %4045
  %4049 = fadd fast float %4043, %4046
  %4050 = fmul fast float %128, %4039
  %4051 = fmul fast float %129, %4039
  %4052 = fmul fast float %130, %4039
  %4053 = fadd fast float %4047, %4050
  %4054 = fadd fast float %4048, %4051
  %4055 = fadd fast float %4049, %4052
  %4056 = call float @dx.op.dot3.f32(i32 55, float %4053, float %4054, float %4055, float %4053, float %4054, float %4055)  ; Dot3(ax,ay,az,bx,by,bz)
  %4057 = call float @dx.op.unary.f32(i32 25, float %4056)  ; Rsqrt(value)
  %4058 = fmul fast float %4053, %4057
  %4059 = fmul fast float %4054, %4057
  %4060 = fmul fast float %4055, %4057
  %4061 = and i32 %62, 1
  %4062 = icmp eq i32 %4061, 0
  br i1 %4062, label %4063, label %4624

; <label>:4063                                    ; preds = %4014
  %4064 = call float @dx.op.unary.f32(i32 83, float %164)  ; DerivCoarseX(value)
  %4065 = call float @dx.op.unary.f32(i32 83, float %165)  ; DerivCoarseX(value)
  %4066 = call float @dx.op.unary.f32(i32 83, float %166)  ; DerivCoarseX(value)
  %4067 = call float @dx.op.unary.f32(i32 84, float %164)  ; DerivCoarseY(value)
  %4068 = call float @dx.op.unary.f32(i32 84, float %165)  ; DerivCoarseY(value)
  %4069 = call float @dx.op.unary.f32(i32 84, float %166)  ; DerivCoarseY(value)
  %4070 = fadd fast float %4064, %164
  %4071 = fadd fast float %4065, %165
  %4072 = fadd fast float %4066, %166
  %4073 = fadd fast float %4067, %164
  %4074 = fadd fast float %4068, %165
  %4075 = fadd fast float %4069, %166
  %4076 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %4077 = extractvalue %dx.types.CBufRet.f32 %4076, 0
  %4078 = extractvalue %dx.types.CBufRet.f32 %4076, 1
  %4079 = extractvalue %dx.types.CBufRet.f32 %4076, 2
  %4080 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %4081 = extractvalue %dx.types.CBufRet.f32 %4080, 2
  %4082 = extractvalue %dx.types.CBufRet.f32 %4080, 3
  %4083 = fmul fast float %4077, %109
  %4084 = fmul fast float %4083, %4081
  %4085 = fmul fast float %4078, %110
  %4086 = fmul fast float %4085, %4082
  %4087 = fptoui float %4084 to i32
  %4088 = fptoui float %4086 to i32
  %4089 = fadd fast float %4077, -1.000000e+00
  %4090 = fadd fast float %4078, -1.000000e+00
  %4091 = fptoui float %4089 to i32
  %4092 = fptoui float %4090 to i32
  %4093 = call i32 @dx.op.binary.i32(i32 40, i32 %4087, i32 %4091)  ; UMin(a,b)
  %4094 = call i32 @dx.op.binary.i32(i32 40, i32 %4088, i32 %4092)  ; UMin(a,b)
  %4095 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4096 = extractvalue %dx.types.CBufRet.f32 %4095, 2
  %4097 = extractvalue %dx.types.CBufRet.f32 %4095, 3
  %4098 = fmul fast float %4096, %97
  %4099 = fsub fast float %4098, %4097
  %4100 = fadd fast float %4079, -1.000000e+00
  %4101 = call float @dx.op.binary.f32(i32 36, float %4099, float %4100)  ; FMin(a,b)
  %4102 = fptoui float %4101 to i32
  %4103 = fptoui float %4077 to i32
  %4104 = fptoui float %4078 to i32
  %4105 = mul i32 %4102, %4104
  %4106 = add i32 %4105, %4094
  %4107 = mul i32 %4106, %4103
  %4108 = add i32 %4107, %4093
  %4109 = shl i32 %4108, 2
  %4110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4109, i32 undef)  ; BufferLoad(srv,index,wot)
  %4111 = extractvalue %dx.types.ResRet.i32 %4110, 0
  %4112 = and i32 %4111, 1023
  %4113 = lshr i32 %4111, 10
  %4114 = icmp eq i32 %4112, 0
  br i1 %4114, label %4590, label %4115

; <label>:4115                                    ; preds = %4063
  %4116 = and i32 %4111, 1023
  br label %4117

; <label>:4117                                    ; preds = %4246, %4115
  %4118 = phi i32 [ %4196, %4246 ], [ 0, %4115 ]
  %4119 = phi float [ %4247, %4246 ], [ 0.000000e+00, %4115 ]
  %4120 = phi float [ %4248, %4246 ], [ %4032, %4115 ]
  %4121 = phi float [ %4249, %4246 ], [ %4030, %4115 ]
  %4122 = phi float [ %4250, %4246 ], [ 0.000000e+00, %4115 ]
  %4123 = phi float [ %4251, %4246 ], [ 0.000000e+00, %4115 ]
  %4124 = phi float [ %4252, %4246 ], [ %4020, %4115 ]
  %4125 = phi float [ %4253, %4246 ], [ %4021, %4115 ]
  %4126 = phi float [ %4254, %4246 ], [ %4022, %4115 ]
  %4127 = phi float [ %4255, %4246 ], [ %4023, %4115 ]
  %4128 = phi float [ %4256, %4246 ], [ %4024, %4115 ]
  %4129 = phi float [ %4257, %4246 ], [ %4025, %4115 ]
  %4130 = phi float [ %4258, %4246 ], [ %4058, %4115 ]
  %4131 = phi float [ %4259, %4246 ], [ %4059, %4115 ]
  %4132 = phi float [ %4260, %4246 ], [ %4060, %4115 ]
  %4133 = phi float [ %4261, %4246 ], [ %4028, %4115 ]
  %4134 = phi float [ %4262, %4246 ], [ %4027, %4115 ]
  %4135 = phi float [ %4263, %4246 ], [ 0.000000e+00, %4115 ]
  %4136 = phi float [ %4264, %4246 ], [ %4026, %4115 ]
  %4137 = phi float [ %4265, %4246 ], [ %4017, %4115 ]
  %4138 = phi float [ %4266, %4246 ], [ %4018, %4115 ]
  %4139 = phi float [ %4267, %4246 ], [ %4019, %4115 ]
  %4140 = add nuw nsw i32 %4118, %4113
  %4141 = shl i32 %4140, 2
  %4142 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4141, i32 undef)  ; BufferLoad(srv,index,wot)
  %4143 = extractvalue %dx.types.ResRet.i32 %4142, 0
  %4144 = shl i32 %4143, 8
  %4145 = or i32 %4144, 48
  %4146 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4145, i32 undef)  ; BufferLoad(srv,index,wot)
  %4147 = extractvalue %dx.types.ResRet.f32 %4146, 0
  %4148 = extractvalue %dx.types.ResRet.f32 %4146, 1
  %4149 = extractvalue %dx.types.ResRet.f32 %4146, 2
  %4150 = extractvalue %dx.types.ResRet.f32 %4146, 3
  %4151 = or i32 %4144, 64
  %4152 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4151, i32 undef)  ; BufferLoad(srv,index,wot)
  %4153 = extractvalue %dx.types.ResRet.i32 %4152, 0
  %4154 = extractvalue %dx.types.ResRet.i32 %4152, 1
  %4155 = or i32 %4144, 80
  %4156 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4155, i32 undef)  ; BufferLoad(srv,index,wot)
  %4157 = extractvalue %dx.types.ResRet.f32 %4156, 2
  %4158 = extractvalue %dx.types.ResRet.f32 %4156, 3
  %4159 = or i32 %4144, 96
  %4160 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4159, i32 undef)  ; BufferLoad(srv,index,wot)
  %4161 = extractvalue %dx.types.ResRet.f32 %4160, 0
  %4162 = extractvalue %dx.types.ResRet.f32 %4160, 1
  %4163 = extractvalue %dx.types.ResRet.f32 %4160, 2
  %4164 = extractvalue %dx.types.ResRet.f32 %4160, 3
  %4165 = or i32 %4144, 112
  %4166 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4165, i32 undef)  ; BufferLoad(srv,index,wot)
  %4167 = extractvalue %dx.types.ResRet.f32 %4166, 2
  %4168 = or i32 %4144, 128
  %4169 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4168, i32 undef)  ; BufferLoad(srv,index,wot)
  %4170 = extractvalue %dx.types.ResRet.f32 %4169, 0
  %4171 = extractvalue %dx.types.ResRet.f32 %4169, 1
  %4172 = extractvalue %dx.types.ResRet.f32 %4169, 2
  %4173 = extractvalue %dx.types.ResRet.f32 %4169, 3
  %4174 = or i32 %4144, 144
  %4175 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4174, i32 undef)  ; BufferLoad(srv,index,wot)
  %4176 = extractvalue %dx.types.ResRet.f32 %4175, 0
  %4177 = extractvalue %dx.types.ResRet.f32 %4175, 1
  %4178 = extractvalue %dx.types.ResRet.f32 %4175, 2
  %4179 = extractvalue %dx.types.ResRet.f32 %4175, 3
  %4180 = or i32 %4144, 160
  %4181 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4180, i32 undef)  ; BufferLoad(srv,index,wot)
  %4182 = extractvalue %dx.types.ResRet.f32 %4181, 0
  %4183 = extractvalue %dx.types.ResRet.f32 %4181, 1
  %4184 = extractvalue %dx.types.ResRet.f32 %4181, 2
  %4185 = extractvalue %dx.types.ResRet.f32 %4181, 3
  %4186 = or i32 %4144, 192
  %4187 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4186, i32 undef)  ; BufferLoad(srv,index,wot)
  %4188 = extractvalue %dx.types.ResRet.i32 %4187, 0
  %4189 = or i32 %4144, 208
  %4190 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4189, i32 undef)  ; BufferLoad(srv,index,wot)
  %4191 = extractvalue %dx.types.ResRet.f32 %4190, 0
  %4192 = or i32 %4144, 248
  %4193 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4192, i32 undef)  ; BufferLoad(srv,index,wot)
  %4194 = extractvalue %dx.types.ResRet.f32 %4193, 0
  %4195 = extractvalue %dx.types.ResRet.f32 %4193, 1
  %4196 = add nuw nsw i32 %4118, 1
  %4197 = bitcast float %4150 to i32
  %4198 = and i32 %4197, 512
  %4199 = icmp eq i32 %4198, 0
  %4200 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4144, i32 undef)  ; BufferLoad(srv,index,wot)
  %4201 = extractvalue %dx.types.ResRet.f32 %4200, 0
  %4202 = extractvalue %dx.types.ResRet.f32 %4200, 1
  %4203 = extractvalue %dx.types.ResRet.f32 %4200, 2
  %4204 = extractvalue %dx.types.ResRet.f32 %4200, 3
  %4205 = call float @dx.op.dot4.f32(i32 56, float %4201, float %4202, float %4203, float %4204, float %164, float %165, float %166, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4206 = or i32 %4144, 16
  %4207 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4206, i32 undef)  ; BufferLoad(srv,index,wot)
  %4208 = extractvalue %dx.types.ResRet.f32 %4207, 0
  %4209 = extractvalue %dx.types.ResRet.f32 %4207, 1
  %4210 = extractvalue %dx.types.ResRet.f32 %4207, 2
  %4211 = extractvalue %dx.types.ResRet.f32 %4207, 3
  %4212 = call float @dx.op.dot4.f32(i32 56, float %4208, float %4209, float %4210, float %4211, float %164, float %165, float %166, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4213 = or i32 %4144, 32
  %4214 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4213, i32 undef)  ; BufferLoad(srv,index,wot)
  %4215 = extractvalue %dx.types.ResRet.f32 %4214, 0
  %4216 = extractvalue %dx.types.ResRet.f32 %4214, 1
  %4217 = extractvalue %dx.types.ResRet.f32 %4214, 2
  %4218 = extractvalue %dx.types.ResRet.f32 %4214, 3
  %4219 = call float @dx.op.dot4.f32(i32 56, float %4215, float %4216, float %4217, float %4218, float %164, float %165, float %166, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4220 = call float @dx.op.unary.f32(i32 27, float %4205)  ; Round_ni(value)
  %4221 = call float @dx.op.unary.f32(i32 6, float %4220)  ; FAbs(value)
  %4222 = call float @dx.op.unary.f32(i32 27, float %4212)  ; Round_ni(value)
  %4223 = call float @dx.op.unary.f32(i32 6, float %4222)  ; FAbs(value)
  %4224 = call float @dx.op.unary.f32(i32 6, float %4219)  ; FAbs(value)
  %4225 = call float @dx.op.unary.f32(i32 27, float %4224)  ; Round_ni(value)
  %4226 = fadd fast float %4223, %4221
  %4227 = fadd fast float %4226, %4225
  %4228 = fcmp fast oeq float %4227, 0.000000e+00
  %4229 = call float @dx.op.dot4.f32(i32 56, float %4201, float %4202, float %4203, float %4204, float %4070, float %4071, float %4072, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4230 = call float @dx.op.dot4.f32(i32 56, float %4208, float %4209, float %4210, float %4211, float %4070, float %4071, float %4072, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4231 = call float @dx.op.dot4.f32(i32 56, float %4201, float %4202, float %4203, float %4204, float %4073, float %4074, float %4075, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4232 = call float @dx.op.dot4.f32(i32 56, float %4208, float %4209, float %4210, float %4211, float %4073, float %4074, float %4075, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4233 = fsub fast float %4229, %4205
  %4234 = fsub fast float %4231, %4205
  %4235 = fsub fast float %4230, %4212
  %4236 = fsub fast float %4232, %4212
  %4237 = call float @dx.op.dot3.f32(i32 55, float %4147, float %4148, float %4149, float %116, float %117, float %118)  ; Dot3(ax,ay,az,bx,by,bz)
  %4238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4239 = extractvalue %dx.types.CBufRet.f32 %4238, 2
  %4240 = fadd fast float %4239, %4237
  %4241 = call float @dx.op.unary.f32(i32 7, float %4240)  ; Saturate(value)
  %4242 = extractvalue %dx.types.CBufRet.f32 %4238, 0
  %4243 = fcmp fast ogt float %4241, %4242
  %4244 = and i1 %4228, %4243
  %4245 = and i1 %4199, %4244
  br i1 %4245, label %4269, label %4246

; <label>:4246                                    ; preds = %4576, %4350, %4269, %4117
  %4247 = phi float [ %4119, %4269 ], [ %4353, %4350 ], [ %4353, %4576 ], [ %4119, %4117 ]
  %4248 = phi float [ %4120, %4269 ], [ %4120, %4350 ], [ %4552, %4576 ], [ %4120, %4117 ]
  %4249 = phi float [ %4121, %4269 ], [ %4121, %4350 ], [ %4550, %4576 ], [ %4121, %4117 ]
  %4250 = phi float [ %4122, %4269 ], [ %4122, %4350 ], [ %4477, %4576 ], [ %4122, %4117 ]
  %4251 = phi float [ %4123, %4269 ], [ %4123, %4350 ], [ %4475, %4576 ], [ %4123, %4117 ]
  %4252 = phi float [ %4124, %4269 ], [ %4124, %4350 ], [ %4520, %4576 ], [ %4124, %4117 ]
  %4253 = phi float [ %4125, %4269 ], [ %4125, %4350 ], [ %4521, %4576 ], [ %4125, %4117 ]
  %4254 = phi float [ %4126, %4269 ], [ %4126, %4350 ], [ %4522, %4576 ], [ %4126, %4117 ]
  %4255 = phi float [ %4127, %4269 ], [ %4127, %4350 ], [ %4586, %4576 ], [ %4127, %4117 ]
  %4256 = phi float [ %4128, %4269 ], [ %4128, %4350 ], [ %4587, %4576 ], [ %4128, %4117 ]
  %4257 = phi float [ %4129, %4269 ], [ %4129, %4350 ], [ %4588, %4576 ], [ %4129, %4117 ]
  %4258 = phi float [ %4130, %4269 ], [ %4130, %4350 ], [ %4456, %4576 ], [ %4130, %4117 ]
  %4259 = phi float [ %4131, %4269 ], [ %4131, %4350 ], [ %4457, %4576 ], [ %4131, %4117 ]
  %4260 = phi float [ %4132, %4269 ], [ %4132, %4350 ], [ %4458, %4576 ], [ %4132, %4117 ]
  %4261 = phi float [ %4133, %4269 ], [ %4133, %4350 ], [ %4530, %4576 ], [ %4133, %4117 ]
  %4262 = phi float [ %4134, %4269 ], [ %4134, %4350 ], [ %4527, %4576 ], [ %4134, %4117 ]
  %4263 = phi float [ %4135, %4269 ], [ %4135, %4350 ], [ %4524, %4576 ], [ %4135, %4117 ]
  %4264 = phi float [ %4136, %4269 ], [ %4136, %4350 ], [ %4473, %4576 ], [ %4136, %4117 ]
  %4265 = phi float [ %4137, %4269 ], [ %4137, %4350 ], [ %4468, %4576 ], [ %4137, %4117 ]
  %4266 = phi float [ %4138, %4269 ], [ %4138, %4350 ], [ %4469, %4576 ], [ %4138, %4117 ]
  %4267 = phi float [ %4139, %4269 ], [ %4139, %4350 ], [ %4470, %4576 ], [ %4139, %4117 ]
  %4268 = icmp eq i32 %4196, %4116
  br i1 %4268, label %4589, label %4117

; <label>:4269                                    ; preds = %4117
  %4270 = extractvalue %dx.types.ResRet.f32 %4166, 3
  %4271 = extractvalue %dx.types.ResRet.f32 %4166, 1
  %4272 = extractvalue %dx.types.ResRet.f32 %4166, 0
  %4273 = extractvalue %dx.types.ResRet.f32 %4156, 1
  %4274 = extractvalue %dx.types.ResRet.f32 %4156, 0
  %4275 = extractvalue %dx.types.ResRet.i32 %4152, 3
  %4276 = extractvalue %dx.types.ResRet.i32 %4152, 2
  %4277 = add i32 %4275, 0
  %4278 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4277, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4279 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4280 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4278, %dx.types.Handle %4279, float %4205, float %4212, float undef, float undef, i32 0, i32 0, i32 undef, float %4233, float %4235, float undef, float %4234, float %4236, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4281 = extractvalue %dx.types.ResRet.f32 %4280, 0
  %4282 = fmul fast float %4281, %4274
  %4283 = fadd fast float %4282, %4273
  %4284 = call float @dx.op.unary.f32(i32 7, float %4283)  ; Saturate(value)
  %4285 = fmul fast float %4205, %4161
  %4286 = call float @dx.op.tertiary.f32(i32 46, float %4162, float %4212, float %4285)  ; FMad(a,b,c)
  %4287 = fadd fast float %4286, %4272
  %4288 = fmul fast float %4205, %4163
  %4289 = call float @dx.op.tertiary.f32(i32 46, float %4164, float %4212, float %4288)  ; FMad(a,b,c)
  %4290 = fadd fast float %4289, %4271
  %4291 = fmul fast float %4233, %4161
  %4292 = call float @dx.op.tertiary.f32(i32 46, float %4162, float %4235, float %4291)  ; FMad(a,b,c)
  %4293 = fmul fast float %4233, %4163
  %4294 = call float @dx.op.tertiary.f32(i32 46, float %4164, float %4235, float %4293)  ; FMad(a,b,c)
  %4295 = fmul fast float %4234, %4161
  %4296 = call float @dx.op.tertiary.f32(i32 46, float %4162, float %4236, float %4295)  ; FMad(a,b,c)
  %4297 = fmul fast float %4234, %4163
  %4298 = call float @dx.op.tertiary.f32(i32 46, float %4164, float %4236, float %4297)  ; FMad(a,b,c)
  %4299 = add i32 %4276, 0
  %4300 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4299, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4301 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4300, %dx.types.Handle %4279, float %4287, float %4290, float undef, float undef, i32 0, i32 0, i32 undef, float %4292, float %4294, float undef, float %4296, float %4298, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4302 = extractvalue %dx.types.ResRet.f32 %4301, 0
  %4303 = and i32 %4197, 1024
  %4304 = icmp ne i32 %4303, 0
  %4305 = fcmp fast ogt float %4302, 0x3FE0101020000000
  %4306 = uitofp i1 %4305 to float
  %4307 = select i1 %4304, float %4306, float %4302
  %4308 = and i32 %4197, 8192
  %4309 = icmp ne i32 %4308, 0
  %4310 = select i1 %4309, float %4270, float 1.000000e+00
  %4311 = fmul fast float %4205, 2.000000e+00
  %4312 = fadd fast float %4311, -1.000000e+00
  %4313 = call float @dx.op.unary.f32(i32 6, float %4312)  ; FAbs(value)
  %4314 = fmul fast float %4313, %4194
  %4315 = fsub fast float %4314, %4194
  %4316 = call float @dx.op.unary.f32(i32 7, float %4315)  ; Saturate(value)
  %4317 = fmul fast float %4212, 2.000000e+00
  %4318 = fadd fast float %4317, -1.000000e+00
  %4319 = call float @dx.op.unary.f32(i32 6, float %4318)  ; FAbs(value)
  %4320 = fmul fast float %4319, %4195
  %4321 = fsub fast float %4320, %4195
  %4322 = call float @dx.op.unary.f32(i32 7, float %4321)  ; Saturate(value)
  %4323 = fmul fast float %4224, %4157
  %4324 = fsub fast float %4323, %4157
  %4325 = call float @dx.op.unary.f32(i32 7, float %4324)  ; Saturate(value)
  %4326 = fmul fast float %4284, %4310
  %4327 = fmul fast float %4326, %4281
  %4328 = fmul fast float %4327, %4316
  %4329 = fmul fast float %4328, %4307
  %4330 = fmul fast float %4329, %4322
  %4331 = fmul fast float %4330, %4325
  %4332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4333 = extractvalue %dx.types.CBufRet.f32 %4332, 1
  %4334 = extractvalue %dx.types.CBufRet.f32 %4332, 0
  %4335 = fsub fast float %4241, %4334
  %4336 = fmul fast float %4335, %4333
  %4337 = call float @dx.op.unary.f32(i32 7, float %4336)  ; Saturate(value)
  %4338 = fmul fast float %4331, %4158
  %4339 = fadd fast float %4331, %4158
  %4340 = fmul fast float %4339, %4167
  %4341 = fsub fast float %4340, %4167
  %4342 = call float @dx.op.unary.f32(i32 7, float %4341)  ; Saturate(value)
  %4343 = and i32 %4197, 128
  %4344 = icmp ne i32 %4343, 0
  %4345 = select i1 %4344, float %4342, float %4338
  %4346 = fmul fast float %4345, %4337
  %4347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4348 = extractvalue %dx.types.CBufRet.f32 %4347, 0
  %4349 = fcmp fast ugt float %4346, %4348
  br i1 %4349, label %4350, label %4246

; <label>:4350                                    ; preds = %4269
  %4351 = select i1 %4309, float %4346, float 0.000000e+00
  %4352 = fadd fast float %4351, %4119
  %4353 = call float @dx.op.unary.f32(i32 7, float %4352)  ; Saturate(value)
  br i1 %4309, label %4246, label %4354

; <label>:4354                                    ; preds = %4350
  %4355 = and i32 %4197, 4
  %4356 = and i32 %4197, 8
  %4357 = add i32 %4153, 0
  %4358 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4357, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4359 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4360 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4358, %dx.types.Handle %4359, float %4287, float %4290, float undef, float undef, i32 0, i32 0, i32 undef, float %4292, float %4294, float undef, float %4296, float %4298, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4361 = extractvalue %dx.types.ResRet.f32 %4360, 0
  %4362 = extractvalue %dx.types.ResRet.f32 %4360, 1
  %4363 = extractvalue %dx.types.ResRet.f32 %4360, 2
  %4364 = extractvalue %dx.types.ResRet.f32 %4360, 3
  %4365 = bitcast float %4179 to i32
  %4366 = and i32 %4365, 255
  %4367 = uitofp i32 %4366 to float
  %4368 = lshr i32 %4365, 8
  %4369 = and i32 %4368, 255
  %4370 = uitofp i32 %4369 to float
  %4371 = fmul fast float %4364, %4367
  %4372 = fadd fast float %4371, %4370
  %4373 = fmul fast float %4372, 0x3F70101000000000
  %4374 = add i32 %4154, 0
  %4375 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4374, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4376 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4375, %dx.types.Handle %4359, float %4287, float %4290, float undef, float undef, i32 0, i32 0, i32 undef, float %4292, float %4294, float undef, float %4296, float %4298, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4377 = extractvalue %dx.types.ResRet.f32 %4376, 0
  %4378 = extractvalue %dx.types.ResRet.f32 %4376, 1
  %4379 = extractvalue %dx.types.ResRet.f32 %4376, 2
  %4380 = extractvalue %dx.types.ResRet.f32 %4376, 3
  %4381 = bitcast float %4173 to i32
  %4382 = and i32 %4381, 255
  %4383 = uitofp i32 %4382 to float
  %4384 = lshr i32 %4381, 8
  %4385 = and i32 %4384, 255
  %4386 = uitofp i32 %4385 to float
  %4387 = lshr i32 %4381, 16
  %4388 = and i32 %4387, 255
  %4389 = uitofp i32 %4388 to float
  %4390 = fmul fast float %4389, 0x3F70101000000000
  %4391 = fmul fast float %4377, %4383
  %4392 = fadd fast float %4391, %4386
  %4393 = fmul fast float %4392, 0x3F70101000000000
  %4394 = fadd fast float %4378, -5.000000e-01
  %4395 = fadd fast float %4380, -5.000000e-01
  %4396 = fmul fast float %4394, %4390
  %4397 = fmul fast float %4395, %4390
  %4398 = fadd fast float %4396, 5.000000e-01
  %4399 = fadd fast float %4397, 5.000000e-01
  %4400 = fmul fast float %4361, %4182
  %4401 = fmul fast float %4362, %4183
  %4402 = fmul fast float %4363, %4184
  %4403 = fmul fast float %4398, 2.000000e+00
  %4404 = fadd fast float %4403, -1.000000e+00
  %4405 = fmul fast float %4399, 2.000000e+00
  %4406 = fadd fast float %4405, -1.000000e+00
  %4407 = fadd fast float %4404, %4406
  %4408 = fmul fast float %4407, 5.000000e-01
  %4409 = fsub fast float %4404, %4406
  %4410 = fmul fast float %4409, 5.000000e-01
  %4411 = call float @dx.op.unary.f32(i32 6, float %4408)  ; FAbs(value)
  %4412 = fsub fast float 1.000000e+00, %4411
  %4413 = call float @dx.op.unary.f32(i32 6, float %4410)  ; FAbs(value)
  %4414 = fsub fast float %4412, %4413
  %4415 = call float @dx.op.dot3.f32(i32 55, float %4408, float %4410, float %4414, float %4408, float %4410, float %4414)  ; Dot3(ax,ay,az,bx,by,bz)
  %4416 = call float @dx.op.unary.f32(i32 25, float %4415)  ; Rsqrt(value)
  %4417 = fmul fast float %4408, %4416
  %4418 = fmul fast float %4410, %4416
  %4419 = fmul fast float %4416, %4414
  %4420 = fmul fast float %4419, %4147
  %4421 = fmul fast float %4419, %4148
  %4422 = fmul fast float %4419, %4149
  %4423 = fmul fast float %4417, %4170
  %4424 = fmul fast float %4417, %4171
  %4425 = fmul fast float %4417, %4172
  %4426 = fadd fast float %4423, %4420
  %4427 = fadd fast float %4424, %4421
  %4428 = fadd fast float %4425, %4422
  %4429 = fmul fast float %4418, %4176
  %4430 = fmul fast float %4418, %4177
  %4431 = fmul fast float %4418, %4178
  %4432 = fadd fast float %4426, %4429
  %4433 = fadd fast float %4427, %4430
  %4434 = fadd fast float %4428, %4431
  %4435 = call float @dx.op.dot3.f32(i32 55, float %4432, float %4433, float %4434, float %4432, float %4433, float %4434)  ; Dot3(ax,ay,az,bx,by,bz)
  %4436 = call float @dx.op.unary.f32(i32 25, float %4435)  ; Rsqrt(value)
  %4437 = fmul fast float %4432, %4436
  %4438 = fmul fast float %4433, %4436
  %4439 = fmul fast float %4434, %4436
  %4440 = icmp ne i32 %4356, 0
  %4441 = select i1 %4440, float 1.000000e+00, float 0.000000e+00
  %4442 = fmul fast float %4346, %4441
  %4443 = and i32 %4197, 1
  %4444 = icmp eq i32 %4443, 0
  br i1 %4444, label %4445, label %4449

; <label>:4445                                    ; preds = %4354
  %4446 = fsub fast float %4437, %4130
  %4447 = fsub fast float %4438, %4131
  %4448 = fsub fast float %4439, %4132
  br label %4449

; <label>:4449                                    ; preds = %4445, %4354
  %4450 = phi float [ %4446, %4445 ], [ %4437, %4354 ]
  %4451 = phi float [ %4447, %4445 ], [ %4438, %4354 ]
  %4452 = phi float [ %4448, %4445 ], [ %4439, %4354 ]
  %4453 = fmul float %4452, %4442
  %4454 = fmul float %4451, %4442
  %4455 = fmul float %4450, %4442
  %4456 = fadd fast float %4455, %4130
  %4457 = fadd fast float %4454, %4131
  %4458 = fadd fast float %4453, %4132
  %4459 = icmp ne i32 %4355, 0
  %4460 = select i1 %4459, float 1.000000e+00, float 0.000000e+00
  %4461 = fmul fast float %4346, %4460
  %4462 = fsub fast float %4400, %4137
  %4463 = fsub fast float %4401, %4138
  %4464 = fsub fast float %4402, %4139
  %4465 = fmul fast float %4462, %4461
  %4466 = fmul fast float %4463, %4461
  %4467 = fmul fast float %4464, %4461
  %4468 = fadd fast float %4465, %4137
  %4469 = fadd fast float %4466, %4138
  %4470 = fadd fast float %4467, %4139
  %4471 = fsub fast float %4373, %4136
  %4472 = fmul fast float %4471, %4461
  %4473 = fadd fast float %4472, %4136
  %4474 = fmul fast float %4461, %4123
  %4475 = fsub fast float %4123, %4474
  %4476 = fmul fast float %4461, %4122
  %4477 = fsub fast float %4122, %4476
  %4478 = bitcast float %4191 to i32
  %4479 = lshr i32 %4478, 16
  %4480 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4479)  ; LegacyF16ToF32(value)
  %4481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %405, i32 undef)  ; BufferLoad(srv,index,wot)
  %4482 = extractvalue %dx.types.ResRet.i32 %4481, 0
  %4483 = and i32 %4482, 1
  %4484 = icmp eq i32 %4483, 0
  br i1 %4484, label %4485, label %4510

; <label>:4485                                    ; preds = %4449
  %4486 = fadd fast float %4373, 0xBFB99999A0000000
  %4487 = call float @dx.op.unary.f32(i32 7, float %4486)  ; Saturate(value)
  %4488 = fmul fast float %4487, 0x3FF1C71C80000000
  %4489 = fsub fast float 1.000000e+00, %4488
  %4490 = call float @dx.op.unary.f32(i32 7, float %4489)  ; Saturate(value)
  %4491 = fmul fast float %4490, %4400
  %4492 = fmul fast float %4490, %4401
  %4493 = fmul fast float %4490, %4402
  %4494 = call float @dx.op.unary.f32(i32 7, float %4491)  ; Saturate(value)
  %4495 = call float @dx.op.unary.f32(i32 7, float %4492)  ; Saturate(value)
  %4496 = call float @dx.op.unary.f32(i32 7, float %4493)  ; Saturate(value)
  %4497 = call float @dx.op.binary.f32(i32 35, float %4495, float %4496)  ; FMax(a,b)
  %4498 = call float @dx.op.binary.f32(i32 35, float %4494, float %4497)  ; FMax(a,b)
  %4499 = fcmp fast ogt float %4498, 0.000000e+00
  %4500 = bitcast float %4498 to i32
  %4501 = sub nsw i32 2129859010, %4500
  %4502 = bitcast i32 %4501 to float
  %4503 = select i1 %4499, float %4502, float 0.000000e+00
  %4504 = fmul fast float %4494, %4480
  %4505 = fmul fast float %4495, %4480
  %4506 = fmul fast float %4496, %4480
  %4507 = fmul fast float %4504, %4503
  %4508 = fmul fast float %4505, %4503
  %4509 = fmul fast float %4506, %4503
  br label %4510

; <label>:4510                                    ; preds = %4485, %4449
  %4511 = phi float [ %4480, %4449 ], [ %4507, %4485 ]
  %4512 = phi float [ %4480, %4449 ], [ %4508, %4485 ]
  %4513 = phi float [ %4480, %4449 ], [ %4509, %4485 ]
  %4514 = fsub fast float %4511, %4124
  %4515 = fsub fast float %4512, %4125
  %4516 = fsub fast float %4513, %4126
  %4517 = fmul fast float %4514, %4461
  %4518 = fmul fast float %4515, %4461
  %4519 = fmul fast float %4516, %4461
  %4520 = fadd fast float %4517, %4124
  %4521 = fadd fast float %4518, %4125
  %4522 = fadd fast float %4519, %4126
  %4523 = fadd fast float %4346, %4135
  %4524 = call float @dx.op.unary.f32(i32 7, float %4523)  ; Saturate(value)
  %4525 = fsub fast float %4393, %4134
  %4526 = fmul fast float %4525, %4442
  %4527 = fadd fast float %4526, %4134
  %4528 = fsub fast float %4379, %4133
  %4529 = fmul fast float %4528, %4442
  %4530 = fadd fast float %4529, %4133
  %4531 = call float @dx.op.dot3.f32(i32 55, float %4400, float %4401, float %4402, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4532 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4533 = extractvalue %dx.types.CBufRet.f32 %4532, 0
  %4534 = extractvalue %dx.types.CBufRet.f32 %4532, 1
  %4535 = fmul fast float %4534, %4531
  %4536 = fadd fast float %4535, %4533
  %4537 = call float @dx.op.unary.f32(i32 7, float %4536)  ; Saturate(value)
  %4538 = bitcast float %4185 to i32
  %4539 = and i32 %4538, 65535
  %4540 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4539)  ; LegacyF16ToF32(value)
  %4541 = lshr i32 %4538, 16
  %4542 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4541)  ; LegacyF16ToF32(value)
  %4543 = fcmp fast oge float %4540, 0.000000e+00
  %4544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4545 = extractvalue %dx.types.CBufRet.f32 %4544, 0
  %4546 = select i1 %4543, float %4540, float %4545
  %4547 = fadd fast float %4546, %4542
  %4548 = fsub fast float %4537, %4121
  %4549 = fmul fast float %4548, %4346
  %4550 = fadd fast float %4549, %4121
  %4551 = fmul fast float %4547, %4346
  %4552 = call float @dx.op.binary.f32(i32 35, float %4120, float %4551)  ; FMax(a,b)
  %4553 = and i32 %4197, 16
  %4554 = icmp eq i32 %4553, 0
  br i1 %4554, label %4576, label %4555

; <label>:4555                                    ; preds = %4510
  %4556 = add i32 %4188, 0
  %4557 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4556, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4558 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4557, %dx.types.Handle %4359, float %4287, float %4290, float undef, float undef, i32 0, i32 0, i32 undef, float %4292, float %4294, float undef, float %4296, float %4298, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4559 = extractvalue %dx.types.ResRet.f32 %4558, 0
  %4560 = extractvalue %dx.types.ResRet.f32 %4558, 1
  %4561 = extractvalue %dx.types.ResRet.f32 %4558, 2
  %4562 = and i32 %4478, 65535
  %4563 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4562)  ; LegacyF16ToF32(value)
  %4564 = fmul fast float %4559, %4182
  %4565 = fmul fast float %4560, %4183
  %4566 = fmul fast float %4561, %4184
  %4567 = and i32 %4197, 16384
  %4568 = icmp ne i32 %4567, 0
  %4569 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4570 = extractvalue %dx.types.CBufRet.f32 %4569, 0
  %4571 = select i1 %4568, float %4570, float 1.000000e+00
  %4572 = fmul fast float %4571, %4563
  %4573 = fmul fast float %4564, %4572
  %4574 = fmul fast float %4565, %4572
  %4575 = fmul fast float %4566, %4572
  br label %4576

; <label>:4576                                    ; preds = %4555, %4510
  %4577 = phi float [ %4573, %4555 ], [ 0.000000e+00, %4510 ]
  %4578 = phi float [ %4574, %4555 ], [ 0.000000e+00, %4510 ]
  %4579 = phi float [ %4575, %4555 ], [ 0.000000e+00, %4510 ]
  %4580 = fsub fast float %4577, %4127
  %4581 = fsub fast float %4578, %4128
  %4582 = fsub fast float %4579, %4129
  %4583 = fmul fast float %4580, %4346
  %4584 = fmul fast float %4581, %4346
  %4585 = fmul fast float %4582, %4346
  %4586 = fadd fast float %4583, %4127
  %4587 = fadd fast float %4584, %4128
  %4588 = fadd fast float %4585, %4129
  br label %4246

; <label>:4589                                    ; preds = %4246
  br label %4590

; <label>:4590                                    ; preds = %4589, %4063
  %4591 = phi float [ 0.000000e+00, %4063 ], [ %4247, %4589 ]
  %4592 = phi float [ %4032, %4063 ], [ %4248, %4589 ]
  %4593 = phi float [ %4030, %4063 ], [ %4249, %4589 ]
  %4594 = phi float [ 0.000000e+00, %4063 ], [ %4250, %4589 ]
  %4595 = phi float [ 0.000000e+00, %4063 ], [ %4251, %4589 ]
  %4596 = phi float [ %4020, %4063 ], [ %4252, %4589 ]
  %4597 = phi float [ %4021, %4063 ], [ %4253, %4589 ]
  %4598 = phi float [ %4022, %4063 ], [ %4254, %4589 ]
  %4599 = phi float [ %4023, %4063 ], [ %4255, %4589 ]
  %4600 = phi float [ %4024, %4063 ], [ %4256, %4589 ]
  %4601 = phi float [ %4025, %4063 ], [ %4257, %4589 ]
  %4602 = phi float [ %4058, %4063 ], [ %4258, %4589 ]
  %4603 = phi float [ %4059, %4063 ], [ %4259, %4589 ]
  %4604 = phi float [ %4060, %4063 ], [ %4260, %4589 ]
  %4605 = phi float [ %4028, %4063 ], [ %4261, %4589 ]
  %4606 = phi float [ %4027, %4063 ], [ %4262, %4589 ]
  %4607 = phi float [ 0.000000e+00, %4063 ], [ %4263, %4589 ]
  %4608 = phi float [ %4026, %4063 ], [ %4264, %4589 ]
  %4609 = phi float [ %4017, %4063 ], [ %4265, %4589 ]
  %4610 = phi float [ %4018, %4063 ], [ %4266, %4589 ]
  %4611 = phi float [ %4019, %4063 ], [ %4267, %4589 ]
  %4612 = call float @dx.op.dot3.f32(i32 55, float %4602, float %4603, float %4604, float %4602, float %4603, float %4604)  ; Dot3(ax,ay,az,bx,by,bz)
  %4613 = call float @dx.op.unary.f32(i32 25, float %4612)  ; Rsqrt(value)
  %4614 = fmul fast float %4613, %4602
  %4615 = fmul fast float %4613, %4603
  %4616 = fmul fast float %4613, %4604
  %4617 = fadd fast float %4607, %1191
  %4618 = call float @dx.op.unary.f32(i32 7, float %4617)  ; Saturate(value)
  %4619 = call float @dx.op.dot3.f32(i32 55, float %4614, float %4615, float %4616, float %4614, float %4615, float %4616)  ; Dot3(ax,ay,az,bx,by,bz)
  %4620 = call float @dx.op.unary.f32(i32 25, float %4619)  ; Rsqrt(value)
  %4621 = fmul fast float %4620, %4614
  %4622 = fmul fast float %4620, %4615
  %4623 = fmul fast float %4620, %4616
  br label %4624

; <label>:4624                                    ; preds = %4590, %4014
  %4625 = phi float [ %4621, %4590 ], [ %4058, %4014 ]
  %4626 = phi float [ %4622, %4590 ], [ %4059, %4014 ]
  %4627 = phi float [ %4623, %4590 ], [ %4060, %4014 ]
  %4628 = phi float [ %4609, %4590 ], [ %4017, %4014 ]
  %4629 = phi float [ %4610, %4590 ], [ %4018, %4014 ]
  %4630 = phi float [ %4611, %4590 ], [ %4019, %4014 ]
  %4631 = phi float [ %4599, %4590 ], [ %4023, %4014 ]
  %4632 = phi float [ %4600, %4590 ], [ %4024, %4014 ]
  %4633 = phi float [ %4601, %4590 ], [ %4025, %4014 ]
  %4634 = phi float [ %4596, %4590 ], [ %4020, %4014 ]
  %4635 = phi float [ %4597, %4590 ], [ %4021, %4014 ]
  %4636 = phi float [ %4598, %4590 ], [ %4022, %4014 ]
  %4637 = phi float [ %4608, %4590 ], [ %4026, %4014 ]
  %4638 = phi float [ %4618, %4590 ], [ %1191, %4014 ]
  %4639 = phi float [ %4606, %4590 ], [ %4027, %4014 ]
  %4640 = phi float [ %4605, %4590 ], [ %4028, %4014 ]
  %4641 = phi float [ %4595, %4590 ], [ 0.000000e+00, %4014 ]
  %4642 = phi float [ %4594, %4590 ], [ 0.000000e+00, %4014 ]
  %4643 = phi float [ %4591, %4590 ], [ 0.000000e+00, %4014 ]
  %4644 = phi float [ %4592, %4590 ], [ %4032, %4014 ]
  %4645 = phi float [ %4593, %4590 ], [ %4030, %4014 ]
  %4646 = fadd fast float %4637, 0xBFB99999A0000000
  %4647 = call float @dx.op.unary.f32(i32 7, float %4646)  ; Saturate(value)
  %4648 = fmul fast float %4647, 0x3FF1C71C80000000
  %4649 = call float @dx.op.binary.f32(i32 36, float %4637, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4650 = fsub fast float 1.000000e+00, %4648
  %4651 = call float @dx.op.unary.f32(i32 7, float %4650)  ; Saturate(value)
  %4652 = fmul fast float %4651, %4628
  %4653 = fmul fast float %4651, %4629
  %4654 = fmul fast float %4651, %4630
  %4655 = call float @dx.op.unary.f32(i32 7, float %4652)  ; Saturate(value)
  %4656 = call float @dx.op.unary.f32(i32 7, float %4653)  ; Saturate(value)
  %4657 = call float @dx.op.unary.f32(i32 7, float %4654)  ; Saturate(value)
  %4658 = fmul fast float %4648, %4628
  %4659 = fmul fast float %4648, %4629
  %4660 = fmul fast float %4648, %4630
  %4661 = fadd fast float %4658, %4649
  %4662 = fadd fast float %4659, %4649
  %4663 = fadd fast float %4660, %4649
  %4664 = call float @dx.op.unary.f32(i32 7, float %4661)  ; Saturate(value)
  %4665 = call float @dx.op.unary.f32(i32 7, float %4662)  ; Saturate(value)
  %4666 = call float @dx.op.unary.f32(i32 7, float %4663)  ; Saturate(value)
  %4667 = call float @dx.op.unary.f32(i32 7, float %4639)  ; Saturate(value)
  %4668 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %405, i32 undef)  ; BufferLoad(srv,index,wot)
  %4669 = extractvalue %dx.types.ResRet.i32 %4668, 0
  %4670 = and i32 %4669, 1
  %4671 = icmp eq i32 %4670, 0
  br i1 %4671, label %4686, label %4672

; <label>:4672                                    ; preds = %4624
  %4673 = call float @dx.op.binary.f32(i32 35, float %4656, float %4657)  ; FMax(a,b)
  %4674 = call float @dx.op.binary.f32(i32 35, float %4655, float %4673)  ; FMax(a,b)
  %4675 = fcmp fast ogt float %4674, 0.000000e+00
  %4676 = bitcast float %4674 to i32
  %4677 = sub nsw i32 2129859010, %4676
  %4678 = bitcast i32 %4677 to float
  %4679 = select i1 %4675, float %4678, float 0.000000e+00
  %4680 = fmul fast float %4655, %4634
  %4681 = fmul fast float %4656, %4635
  %4682 = fmul fast float %4657, %4636
  %4683 = fmul fast float %4680, %4679
  %4684 = fmul fast float %4681, %4679
  %4685 = fmul fast float %4682, %4679
  br label %4686

; <label>:4686                                    ; preds = %4672, %4624
  %4687 = phi float [ %4683, %4672 ], [ %4634, %4624 ]
  %4688 = phi float [ %4684, %4672 ], [ %4635, %4624 ]
  %4689 = phi float [ %4685, %4672 ], [ %4636, %4624 ]
  %4690 = fadd fast float %4655, 0xBFD51EB860000000
  %4691 = fadd fast float %4656, 0xBFD51EB860000000
  %4692 = fadd fast float %4657, 0xBFD51EB860000000
  %4693 = fmul fast float %4690, %4690
  %4694 = fmul fast float %4691, %4691
  %4695 = fmul fast float %4692, %4692
  %4696 = fmul fast float %4693, %4693
  %4697 = fmul fast float %4696, 1.000000e+02
  %4698 = fmul fast float %4694, %4694
  %4699 = fmul fast float %4698, 1.000000e+02
  %4700 = fmul fast float %4695, %4695
  %4701 = fmul fast float %4700, 1.000000e+02
  %4702 = fadd fast float %4697, 3.500000e+00
  %4703 = fadd fast float %4699, 3.500000e+00
  %4704 = fadd fast float %4701, 3.500000e+00
  %4705 = call float @dx.op.binary.f32(i32 35, float %4687, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4706 = call float @dx.op.binary.f32(i32 35, float %4688, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4707 = call float @dx.op.binary.f32(i32 35, float %4689, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4708 = fdiv fast float %4702, %4705
  %4709 = fdiv fast float %4703, %4706
  %4710 = fdiv fast float %4704, %4707
  %4711 = fmul fast float %4029, 0xBFF7154760000000
  %4712 = fmul fast float %4711, %4708
  %4713 = call float @dx.op.unary.f32(i32 21, float %4712)  ; Exp(value)
  %4714 = fmul fast float %4713, 2.500000e-01
  %4715 = fmul fast float %4029, 0xBFDEC709E0000000
  %4716 = fmul fast float %4715, %4708
  %4717 = call float @dx.op.unary.f32(i32 21, float %4716)  ; Exp(value)
  %4718 = fmul fast float %4717, 7.500000e-01
  %4719 = fmul fast float %4711, %4709
  %4720 = call float @dx.op.unary.f32(i32 21, float %4719)  ; Exp(value)
  %4721 = fmul fast float %4720, 2.500000e-01
  %4722 = fmul fast float %4715, %4709
  %4723 = call float @dx.op.unary.f32(i32 21, float %4722)  ; Exp(value)
  %4724 = fmul fast float %4723, 7.500000e-01
  %4725 = fmul fast float %4711, %4710
  %4726 = call float @dx.op.unary.f32(i32 21, float %4725)  ; Exp(value)
  %4727 = fmul fast float %4726, 2.500000e-01
  %4728 = fmul fast float %4715, %4710
  %4729 = call float @dx.op.unary.f32(i32 21, float %4728)  ; Exp(value)
  %4730 = fmul fast float %4729, 7.500000e-01
  %4731 = fadd fast float %4714, %4718
  %4732 = fadd fast float %4721, %4724
  %4733 = fadd fast float %4727, %4730
  %4734 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4735 = extractvalue %dx.types.CBufRet.i32 %4734, 3
  %4736 = and i32 %4735, 8
  %4737 = icmp ne i32 %4736, 0
  %4738 = call float @dx.op.binary.f32(i32 35, float %4655, float %4628)  ; FMax(a,b)
  %4739 = call float @dx.op.binary.f32(i32 35, float %4656, float %4628)  ; FMax(a,b)
  %4740 = call float @dx.op.binary.f32(i32 35, float %4657, float %4628)  ; FMax(a,b)
  %4741 = call float @dx.op.dot3.f32(i32 55, float %4655, float %4656, float %4657, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4742 = select i1 %225, float %4628, float %4655
  %4743 = select i1 %225, float %4741, float %4656
  %4744 = select i1 %225, float 1.000000e+00, float %4657
  %4745 = select i1 %4737, float %4738, float %4742
  %4746 = select i1 %4737, float %4739, float %4743
  %4747 = select i1 %4737, float %4740, float %4744
  %4748 = and i32 %201, 3
  %4749 = select i1 %195, i32 %4748, i32 0
  %4750 = icmp eq i32 %4749, 1
  br i1 %4750, label %4751, label %4827

; <label>:4751                                    ; preds = %4686
  %4752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4753 = extractvalue %dx.types.CBufRet.f32 %4752, 0
  %4754 = extractvalue %dx.types.CBufRet.f32 %4752, 1
  %4755 = fadd fast float %4753, %164
  %4756 = fadd fast float %4754, %165
  %4757 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4758 = extractvalue %dx.types.CBufRet.f32 %4757, 0
  %4759 = extractvalue %dx.types.CBufRet.f32 %4757, 1
  %4760 = fsub fast float %4755, %4758
  %4761 = fsub fast float %4756, %4759
  %4762 = fmul fast float %4760, %4760
  %4763 = fmul fast float %4761, %4761
  %4764 = fadd fast float %4762, %4763
  %4765 = call float @dx.op.unary.f32(i32 24, float %4764)  ; Sqrt(value)
  %4766 = extractvalue %dx.types.CBufRet.f32 %4757, 2
  %4767 = fcmp fast olt float %4765, %4766
  br i1 %4767, label %4768, label %4821

; <label>:4768                                    ; preds = %4751
  %4769 = extractvalue %dx.types.CBufRet.f32 %4752, 2
  %4770 = fadd fast float %4769, %166
  %4771 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4772 = extractvalue %dx.types.CBufRet.f32 %4771, 0
  %4773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4774 = extractvalue %dx.types.CBufRet.f32 %4773, 0
  %4775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4776 = extractvalue %dx.types.CBufRet.f32 %4775, 0
  %4777 = extractvalue %dx.types.CBufRet.f32 %4771, 1
  %4778 = extractvalue %dx.types.CBufRet.f32 %4773, 1
  %4779 = extractvalue %dx.types.CBufRet.f32 %4775, 1
  %4780 = extractvalue %dx.types.CBufRet.f32 %4771, 3
  %4781 = extractvalue %dx.types.CBufRet.f32 %4773, 3
  %4782 = extractvalue %dx.types.CBufRet.f32 %4775, 3
  %4783 = fadd fast float %4780, %4755
  %4784 = fadd fast float %4781, %4756
  %4785 = fadd fast float %4770, %4782
  %4786 = fmul fast float %4783, %4772
  %4787 = call float @dx.op.tertiary.f32(i32 46, float %4784, float %4774, float %4786)  ; FMad(a,b,c)
  %4788 = call float @dx.op.tertiary.f32(i32 46, float %4785, float %4776, float %4787)  ; FMad(a,b,c)
  %4789 = fmul fast float %4783, %4777
  %4790 = call float @dx.op.tertiary.f32(i32 46, float %4784, float %4778, float %4789)  ; FMad(a,b,c)
  %4791 = call float @dx.op.tertiary.f32(i32 46, float %4785, float %4779, float %4790)  ; FMad(a,b,c)
  %4792 = fsub fast float %4788, %4780
  %4793 = fsub fast float %4791, %4781
  %4794 = fsub fast float %4792, %4758
  %4795 = fadd fast float %4794, %4766
  %4796 = fsub fast float %4793, %4759
  %4797 = fadd fast float %4796, %4766
  %4798 = extractvalue %dx.types.CBufRet.f32 %4757, 3
  %4799 = fmul fast float %4795, %4798
  %4800 = fmul fast float %4797, %4798
  %4801 = call float @dx.op.unary.f32(i32 7, float %4799)  ; Saturate(value)
  %4802 = call float @dx.op.unary.f32(i32 7, float %4800)  ; Saturate(value)
  %4803 = fsub fast float 1.000000e+00, %4801
  %4804 = fsub fast float 1.000000e+00, %4802
  %4805 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %46, float %4803, float %4804, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4806 = extractvalue %dx.types.ResRet.f32 %4805, 0
  %4807 = fcmp fast ugt float %4806, 0.000000e+00
  br i1 %4807, label %4808, label %4821

; <label>:4808                                    ; preds = %4768
  %4809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4810 = extractvalue %dx.types.CBufRet.f32 %4809, 2
  %4811 = fmul fast float %4810, %4806
  %4812 = extractvalue %dx.types.CBufRet.f32 %4809, 3
  %4813 = fadd fast float %4812, %4811
  %4814 = extractvalue %dx.types.CBufRet.f32 %4775, 2
  %4815 = fadd fast float %4813, %4782
  %4816 = fmul fast float %4788, %4776
  %4817 = call float @dx.op.tertiary.f32(i32 46, float %4791, float %4779, float %4816)  ; FMad(a,b,c)
  %4818 = call float @dx.op.tertiary.f32(i32 46, float %4815, float %4814, float %4817)  ; FMad(a,b,c)
  %4819 = fsub fast float %4818, %4782
  %4820 = fsub fast float %4819, %4769
  br label %4821

; <label>:4821                                    ; preds = %4808, %4768, %4751
  %4822 = phi i1 [ true, %4808 ], [ false, %4768 ], [ false, %4751 ]
  %4823 = phi float [ %4820, %4808 ], [ -1.310720e+05, %4768 ], [ -1.310720e+05, %4751 ]
  %4824 = fsub fast float %4823, %166
  %4825 = call float @dx.op.unary.f32(i32 7, float %4824)  ; Saturate(value)
  %4826 = select i1 %4822, float %4825, float 1.000000e+00
  br label %4827

; <label>:4827                                    ; preds = %4821, %4686
  %4828 = phi float [ %4826, %4821 ], [ 0.000000e+00, %4686 ]
  %4829 = icmp eq i32 %4749, 3
  %4830 = select i1 %4829, float 1.000000e+00, float %4828
  %4831 = call float @dx.op.binary.f32(i32 35, float %4643, float %4830)  ; FMax(a,b)
  %4832 = fcmp fast olt float %4830, 1.000000e+00
  br i1 %4832, label %4833, label %5957

; <label>:4833                                    ; preds = %4827
  %4834 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4835 = extractvalue %dx.types.CBufRet.f32 %4834, 0
  %4836 = extractvalue %dx.types.CBufRet.f32 %4834, 1
  %4837 = extractvalue %dx.types.CBufRet.f32 %4834, 2
  %4838 = fadd fast float %4835, %164
  %4839 = fadd fast float %4836, %165
  %4840 = fadd fast float %4837, %166
  %4841 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 335)  ; CBufferLoadLegacy(handle,regIndex)
  %4842 = extractvalue %dx.types.CBufRet.i32 %4841, 2
  %4843 = icmp ult i32 %4842, 4
  br i1 %4843, label %4844, label %4895

; <label>:4844                                    ; preds = %4833
  br label %4845

; <label>:4845                                    ; preds = %4890, %4844
  %4846 = phi i32 [ %4891, %4890 ], [ %4842, %4844 ]
  %4847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 342)  ; CBufferLoadLegacy(handle,regIndex)
  %4848 = extractvalue %dx.types.CBufRet.f32 %4847, 0
  %4849 = extractvalue %dx.types.CBufRet.f32 %4847, 1
  %4850 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 339)  ; CBufferLoadLegacy(handle,regIndex)
  %4851 = extractvalue %dx.types.CBufRet.f32 %4850, 0
  %4852 = fmul fast float %4851, 5.000000e-01
  %4853 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 340)  ; CBufferLoadLegacy(handle,regIndex)
  %4854 = extractvalue %dx.types.CBufRet.f32 %4853, 0
  %4855 = extractvalue %dx.types.CBufRet.f32 %4853, 1
  %4856 = extractvalue %dx.types.CBufRet.f32 %4853, 2
  %4857 = extractvalue %dx.types.CBufRet.f32 %4853, 3
  %4858 = getelementptr inbounds [4 x float], [4 x float]* %58, i32 0, i32 0
  store float %4854, float* %4858, align 4
  %4859 = getelementptr inbounds [4 x float], [4 x float]* %58, i32 0, i32 1
  store float %4855, float* %4859, align 4
  %4860 = getelementptr inbounds [4 x float], [4 x float]* %58, i32 0, i32 2
  store float %4856, float* %4860, align 4
  %4861 = getelementptr inbounds [4 x float], [4 x float]* %58, i32 0, i32 3
  store float %4857, float* %4861, align 4
  %4862 = getelementptr inbounds [4 x float], [4 x float]* %58, i32 0, i32 %4846
  %4863 = load float, float* %4862, align 4, !tbaa !89
  %4864 = fmul fast float %4852, %4863
  %4865 = fsub fast float %4838, %4848
  %4866 = fadd fast float %4865, %4864
  %4867 = fsub fast float %4839, %4849
  %4868 = fadd fast float %4867, %4864
  %4869 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 341)  ; CBufferLoadLegacy(handle,regIndex)
  %4870 = extractvalue %dx.types.CBufRet.f32 %4869, 0
  %4871 = extractvalue %dx.types.CBufRet.f32 %4869, 1
  %4872 = extractvalue %dx.types.CBufRet.f32 %4869, 2
  %4873 = extractvalue %dx.types.CBufRet.f32 %4869, 3
  %4874 = getelementptr inbounds [4 x float], [4 x float]* %57, i32 0, i32 0
  store float %4870, float* %4874, align 4
  %4875 = getelementptr inbounds [4 x float], [4 x float]* %57, i32 0, i32 1
  store float %4871, float* %4875, align 4
  %4876 = getelementptr inbounds [4 x float], [4 x float]* %57, i32 0, i32 2
  store float %4872, float* %4876, align 4
  %4877 = getelementptr inbounds [4 x float], [4 x float]* %57, i32 0, i32 3
  store float %4873, float* %4877, align 4
  %4878 = getelementptr inbounds [4 x float], [4 x float]* %57, i32 0, i32 %4846
  %4879 = load float, float* %4878, align 4, !tbaa !89
  %4880 = fmul fast float %4866, %4879
  %4881 = fmul fast float %4868, %4879
  %4882 = extractvalue %dx.types.CBufRet.f32 %4850, 1
  %4883 = fmul fast float %4880, %4882
  %4884 = fmul fast float %4881, %4882
  %4885 = call float @dx.op.unary.f32(i32 7, float %4883)  ; Saturate(value)
  %4886 = call float @dx.op.unary.f32(i32 7, float %4884)  ; Saturate(value)
  %4887 = fcmp fast oeq float %4885, %4883
  %4888 = fcmp fast oeq float %4886, %4884
  %4889 = and i1 %4887, %4888
  br i1 %4889, label %4893, label %4890

; <label>:4890                                    ; preds = %4845
  %4891 = add nuw nsw i32 %4846, 1
  %4892 = icmp ult i32 %4891, 4
  br i1 %4892, label %4845, label %4893

; <label>:4893                                    ; preds = %4890, %4845
  %4894 = phi i32 [ %4891, %4890 ], [ %4846, %4845 ]
  br label %4895

; <label>:4895                                    ; preds = %4893, %4833
  %4896 = phi float [ 0.000000e+00, %4833 ], [ %4883, %4893 ]
  %4897 = phi float [ 0.000000e+00, %4833 ], [ %4884, %4893 ]
  %4898 = phi i32 [ %4842, %4833 ], [ %4894, %4893 ]
  %4899 = extractvalue %dx.types.CBufRet.i32 %4841, 1
  %4900 = uitofp i32 %4898 to float
  %4901 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %25, %dx.types.Handle %46, float %4896, float %4897, float %4900, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4902 = extractvalue %dx.types.ResRet.f32 %4901, 0
  %4903 = extractvalue %dx.types.ResRet.f32 %4901, 1
  %4904 = extractvalue %dx.types.ResRet.f32 %4901, 2
  %4905 = extractvalue %dx.types.ResRet.f32 %4901, 3
  %4906 = call float @dx.op.binary.f32(i32 35, float %4903, float %4904)  ; FMax(a,b)
  %4907 = call float @dx.op.binary.f32(i32 35, float %4902, float %4906)  ; FMax(a,b)
  %4908 = call float @dx.op.binary.f32(i32 35, float %4907, float %4905)  ; FMax(a,b)
  %4909 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 335)  ; CBufferLoadLegacy(handle,regIndex)
  %4910 = extractvalue %dx.types.CBufRet.f32 %4909, 0
  %4911 = fadd fast float %4910, %4908
  %4912 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 339)  ; CBufferLoadLegacy(handle,regIndex)
  %4913 = extractvalue %dx.types.CBufRet.f32 %4912, 3
  %4914 = fadd fast float %4911, %4913
  %4915 = fcmp fast ogt float %4840, %4914
  %4916 = icmp uge i32 %4898, %4899
  %4917 = or i1 %4916, %4915
  %4918 = zext i1 %4917 to i32
  %4919 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4920 = extractvalue %dx.types.CBufRet.i32 %4919, 0
  %4921 = lshr i32 %4920, 21
  %4922 = and i32 %4921, 1
  %4923 = xor i32 %4922, 1
  %4924 = or i32 %4918, %4923
  %4925 = and i32 %4920, 1
  %4926 = xor i32 %4925, 1
  %4927 = or i32 %4924, %4926
  %4928 = icmp eq i32 %4927, 0
  br i1 %4928, label %4929, label %5773, !dx.controlflow.hints !93

; <label>:4929                                    ; preds = %4895
  %4930 = fmul fast float %4896, 2.000000e+00
  %4931 = fmul fast float %4897, 2.000000e+00
  %4932 = fadd fast float %4930, -1.000000e+00
  %4933 = fadd fast float %4931, -1.000000e+00
  %4934 = call float @dx.op.unary.f32(i32 6, float %4932)  ; FAbs(value)
  %4935 = call float @dx.op.unary.f32(i32 6, float %4933)  ; FAbs(value)
  %4936 = extractvalue %dx.types.CBufRet.f32 %4912, 1
  %4937 = fmul fast float %4936, 2.000000e+00
  %4938 = fsub fast float 1.000000e+00, %4937
  %4939 = fcmp fast oge float %4934, %4938
  %4940 = fcmp fast oge float %4935, %4938
  %4941 = or i1 %4939, %4940
  %4942 = add i32 %4898, 1
  %4943 = icmp ult i32 %4942, %4899
  %4944 = and i1 %4943, %4941
  %4945 = extractvalue %dx.types.CBufRet.f32 %4912, 0
  %4946 = fptosi float %4945 to i32
  %4947 = sitofp i32 %4946 to float
  %4948 = fmul fast float %4947, %4896
  %4949 = fmul fast float %4947, %4897
  %4950 = fadd fast float %4948, -5.000000e-01
  %4951 = fadd fast float %4949, -5.000000e-01
  %4952 = fptosi float %4950 to i32
  %4953 = fptosi float %4951 to i32
  %4954 = fadd fast float %4948, 5.000000e-01
  %4955 = fadd fast float %4949, 5.000000e-01
  %4956 = call float @dx.op.unary.f32(i32 22, float %4954)  ; Frc(value)
  %4957 = call float @dx.op.unary.f32(i32 22, float %4955)  ; Frc(value)
  %4958 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 340)  ; CBufferLoadLegacy(handle,regIndex)
  %4959 = extractvalue %dx.types.CBufRet.f32 %4958, 0
  %4960 = extractvalue %dx.types.CBufRet.f32 %4958, 1
  %4961 = extractvalue %dx.types.CBufRet.f32 %4958, 2
  %4962 = extractvalue %dx.types.CBufRet.f32 %4958, 3
  %4963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 336)  ; CBufferLoadLegacy(handle,regIndex)
  %4964 = extractvalue %dx.types.CBufRet.f32 %4963, 2
  %4965 = fadd fast float %4956, -5.000000e-01
  %4966 = fadd fast float %4957, -5.000000e-01
  %4967 = add i32 %4946, -1
  %4968 = call i32 @dx.op.binary.i32(i32 37, i32 %4952, i32 0)  ; IMax(a,b)
  %4969 = call i32 @dx.op.binary.i32(i32 37, i32 %4953, i32 0)  ; IMax(a,b)
  %4970 = call i32 @dx.op.binary.i32(i32 38, i32 %4968, i32 %4967)  ; IMin(a,b)
  %4971 = call i32 @dx.op.binary.i32(i32 38, i32 %4969, i32 %4967)  ; IMin(a,b)
  %4972 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 337)  ; CBufferLoadLegacy(handle,regIndex)
  %4973 = extractvalue %dx.types.CBufRet.i32 %4972, 0
  %4974 = extractvalue %dx.types.CBufRet.i32 %4972, 1
  %4975 = sub nsw i32 3, %4898
  %4976 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 338)  ; CBufferLoadLegacy(handle,regIndex)
  %4977 = extractvalue %dx.types.CBufRet.i32 %4976, 0
  %4978 = extractvalue %dx.types.CBufRet.i32 %4976, 1
  %4979 = extractvalue %dx.types.CBufRet.i32 %4976, 2
  %4980 = extractvalue %dx.types.CBufRet.i32 %4976, 3
  %4981 = add i32 %4970, 536870912
  %4982 = add i32 %4971, 536870912
  %4983 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 336)  ; CBufferLoadLegacy(handle,regIndex)
  %4984 = extractvalue %dx.types.CBufRet.i32 %4983, 3
  %4985 = add i32 %4952, 1
  %4986 = call i32 @dx.op.binary.i32(i32 37, i32 %4985, i32 0)  ; IMax(a,b)
  %4987 = call i32 @dx.op.binary.i32(i32 38, i32 %4986, i32 %4967)  ; IMin(a,b)
  %4988 = add i32 %4987, 536870912
  %4989 = add i32 %4953, 1
  %4990 = call i32 @dx.op.binary.i32(i32 37, i32 %4989, i32 0)  ; IMax(a,b)
  %4991 = call i32 @dx.op.binary.i32(i32 38, i32 %4990, i32 %4967)  ; IMin(a,b)
  %4992 = add i32 %4991, 536870912
  br i1 %4944, label %5237, label %4993, !dx.controlflow.hints !94

; <label>:4993                                    ; preds = %4929
  %4994 = getelementptr inbounds [4 x float], [4 x float]* %51, i32 0, i32 0
  store float %4959, float* %4994, align 4
  %4995 = getelementptr inbounds [4 x float], [4 x float]* %51, i32 0, i32 1
  store float %4960, float* %4995, align 4
  %4996 = getelementptr inbounds [4 x float], [4 x float]* %51, i32 0, i32 2
  store float %4961, float* %4996, align 4
  %4997 = getelementptr inbounds [4 x float], [4 x float]* %51, i32 0, i32 3
  store float %4962, float* %4997, align 4
  %4998 = getelementptr inbounds [4 x float], [4 x float]* %51, i32 0, i32 %4898
  %4999 = load float, float* %4998, align 4, !tbaa !89
  %5000 = fmul fast float %4964, %4999
  %5001 = call float @dx.op.binary.f32(i32 35, float 1.000000e+00, float %5000)  ; FMax(a,b)
  %5002 = fmul fast float %5001, %4965
  %5003 = fmul fast float %5001, %4966
  %5004 = call float @dx.op.binary.f32(i32 35, float %5002, float -5.000000e-01)  ; FMax(a,b)
  %5005 = call float @dx.op.binary.f32(i32 35, float %5003, float -5.000000e-01)  ; FMax(a,b)
  %5006 = call float @dx.op.binary.f32(i32 36, float %5004, float 5.000000e-01)  ; FMin(a,b)
  %5007 = call float @dx.op.binary.f32(i32 36, float %5005, float 5.000000e-01)  ; FMin(a,b)
  %5008 = fadd fast float %5006, 5.000000e-01
  %5009 = fadd fast float %5007, 5.000000e-01
  %5010 = getelementptr inbounds [4 x i32], [4 x i32]* %52, i32 0, i32 0
  store i32 %4977, i32* %5010, align 4
  %5011 = getelementptr inbounds [4 x i32], [4 x i32]* %52, i32 0, i32 1
  store i32 %4978, i32* %5011, align 4
  %5012 = getelementptr inbounds [4 x i32], [4 x i32]* %52, i32 0, i32 2
  store i32 %4979, i32* %5012, align 4
  %5013 = getelementptr inbounds [4 x i32], [4 x i32]* %52, i32 0, i32 3
  store i32 %4980, i32* %5013, align 4
  %5014 = getelementptr inbounds [4 x i32], [4 x i32]* %52, i32 0, i32 %4975
  %5015 = load i32, i32* %5014, align 4, !tbaa !95
  %5016 = mul i32 %5015, %4973
  %5017 = mul i32 %5015, %4974
  %5018 = add i32 %4981, %5016
  %5019 = add i32 %4982, %5017
  %5020 = and i32 %5018, %4984
  %5021 = and i32 %5019, %4984
  %5022 = fsub fast float %4840, %4910
  %5023 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %5020, i32 %5021, i32 %4898, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5024 = extractvalue %dx.types.ResRet.i32 %5023, 0
  %5025 = extractvalue %dx.types.ResRet.i32 %5023, 1
  %5026 = extractvalue %dx.types.ResRet.i32 %5023, 2
  %5027 = extractvalue %dx.types.ResRet.i32 %5023, 3
  %5028 = and i32 %5024, 65535
  %5029 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5028)  ; LegacyF16ToF32(value)
  %5030 = lshr i32 %5024, 16
  %5031 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5030)  ; LegacyF16ToF32(value)
  %5032 = and i32 %5025, 65535
  %5033 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5032)  ; LegacyF16ToF32(value)
  %5034 = lshr i32 %5025, 16
  %5035 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5034)  ; LegacyF16ToF32(value)
  %5036 = and i32 %5026, 65535
  %5037 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5036)  ; LegacyF16ToF32(value)
  %5038 = lshr i32 %5026, 16
  %5039 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5038)  ; LegacyF16ToF32(value)
  %5040 = and i32 %5027, 65535
  %5041 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5040)  ; LegacyF16ToF32(value)
  %5042 = lshr i32 %5027, 16
  %5043 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5042)  ; LegacyF16ToF32(value)
  %5044 = fsub fast float %5022, %5031
  %5045 = call float @dx.op.binary.f32(i32 35, float %5044, float 0.000000e+00)  ; FMax(a,b)
  %5046 = extractvalue %dx.types.CBufRet.f32 %4912, 2
  %5047 = fmul fast float %5046, %5045
  %5048 = fsub fast float %5029, %5047
  %5049 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5048)  ; FMax(a,b)
  %5050 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5049)  ; FMax(a,b)
  %5051 = fsub fast float %5022, %5035
  %5052 = call float @dx.op.binary.f32(i32 35, float %5051, float 0.000000e+00)  ; FMax(a,b)
  %5053 = fmul fast float %5046, %5052
  %5054 = fsub fast float %5033, %5053
  %5055 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5054)  ; FMax(a,b)
  %5056 = call float @dx.op.binary.f32(i32 35, float %5050, float %5055)  ; FMax(a,b)
  %5057 = fsub fast float %5022, %5039
  %5058 = call float @dx.op.binary.f32(i32 35, float %5057, float 0.000000e+00)  ; FMax(a,b)
  %5059 = fmul fast float %5046, %5058
  %5060 = fsub fast float %5037, %5059
  %5061 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5060)  ; FMax(a,b)
  %5062 = call float @dx.op.binary.f32(i32 35, float %5056, float %5061)  ; FMax(a,b)
  %5063 = fsub fast float %5022, %5043
  %5064 = call float @dx.op.binary.f32(i32 35, float %5063, float 0.000000e+00)  ; FMax(a,b)
  %5065 = fmul fast float %5046, %5064
  %5066 = fsub fast float %5041, %5065
  %5067 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5066)  ; FMax(a,b)
  %5068 = call float @dx.op.binary.f32(i32 35, float %5062, float %5067)  ; FMax(a,b)
  %5069 = fsub fast float 5.000000e-01, %5006
  %5070 = fsub fast float 5.000000e-01, %5007
  %5071 = fmul fast float %5070, %5069
  %5072 = fmul fast float %5071, %5068
  store i32 %4977, i32* %5010, align 4
  store i32 %4978, i32* %5011, align 4
  store i32 %4979, i32* %5012, align 4
  store i32 %4980, i32* %5013, align 4
  %5073 = load i32, i32* %5014, align 4, !tbaa !95
  %5074 = mul i32 %5073, %4973
  %5075 = mul i32 %5073, %4974
  %5076 = add i32 %4988, %5074
  %5077 = add i32 %4982, %5075
  %5078 = and i32 %5076, %4984
  %5079 = and i32 %5077, %4984
  %5080 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %5078, i32 %5079, i32 %4898, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5081 = extractvalue %dx.types.ResRet.i32 %5080, 0
  %5082 = extractvalue %dx.types.ResRet.i32 %5080, 1
  %5083 = extractvalue %dx.types.ResRet.i32 %5080, 2
  %5084 = extractvalue %dx.types.ResRet.i32 %5080, 3
  %5085 = and i32 %5081, 65535
  %5086 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5085)  ; LegacyF16ToF32(value)
  %5087 = lshr i32 %5081, 16
  %5088 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5087)  ; LegacyF16ToF32(value)
  %5089 = and i32 %5082, 65535
  %5090 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5089)  ; LegacyF16ToF32(value)
  %5091 = lshr i32 %5082, 16
  %5092 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5091)  ; LegacyF16ToF32(value)
  %5093 = and i32 %5083, 65535
  %5094 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5093)  ; LegacyF16ToF32(value)
  %5095 = lshr i32 %5083, 16
  %5096 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5095)  ; LegacyF16ToF32(value)
  %5097 = and i32 %5084, 65535
  %5098 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5097)  ; LegacyF16ToF32(value)
  %5099 = lshr i32 %5084, 16
  %5100 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5099)  ; LegacyF16ToF32(value)
  %5101 = fsub fast float %5022, %5088
  %5102 = call float @dx.op.binary.f32(i32 35, float %5101, float 0.000000e+00)  ; FMax(a,b)
  %5103 = fmul fast float %5046, %5102
  %5104 = fsub fast float %5086, %5103
  %5105 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5104)  ; FMax(a,b)
  %5106 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5105)  ; FMax(a,b)
  %5107 = fsub fast float %5022, %5092
  %5108 = call float @dx.op.binary.f32(i32 35, float %5107, float 0.000000e+00)  ; FMax(a,b)
  %5109 = fmul fast float %5046, %5108
  %5110 = fsub fast float %5090, %5109
  %5111 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5110)  ; FMax(a,b)
  %5112 = call float @dx.op.binary.f32(i32 35, float %5106, float %5111)  ; FMax(a,b)
  %5113 = fsub fast float %5022, %5096
  %5114 = call float @dx.op.binary.f32(i32 35, float %5113, float 0.000000e+00)  ; FMax(a,b)
  %5115 = fmul fast float %5046, %5114
  %5116 = fsub fast float %5094, %5115
  %5117 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5116)  ; FMax(a,b)
  %5118 = call float @dx.op.binary.f32(i32 35, float %5112, float %5117)  ; FMax(a,b)
  %5119 = fsub fast float %5022, %5100
  %5120 = call float @dx.op.binary.f32(i32 35, float %5119, float 0.000000e+00)  ; FMax(a,b)
  %5121 = fmul fast float %5046, %5120
  %5122 = fsub fast float %5098, %5121
  %5123 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5122)  ; FMax(a,b)
  %5124 = call float @dx.op.binary.f32(i32 35, float %5118, float %5123)  ; FMax(a,b)
  %5125 = fmul fast float %5070, %5008
  %5126 = fmul fast float %5125, %5124
  store i32 %4977, i32* %5010, align 4
  store i32 %4978, i32* %5011, align 4
  store i32 %4979, i32* %5012, align 4
  store i32 %4980, i32* %5013, align 4
  %5127 = load i32, i32* %5014, align 4, !tbaa !95
  %5128 = mul i32 %5127, %4973
  %5129 = mul i32 %5127, %4974
  %5130 = add i32 %4981, %5128
  %5131 = add i32 %4992, %5129
  %5132 = and i32 %5130, %4984
  %5133 = and i32 %5131, %4984
  %5134 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %5132, i32 %5133, i32 %4898, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5135 = extractvalue %dx.types.ResRet.i32 %5134, 0
  %5136 = extractvalue %dx.types.ResRet.i32 %5134, 1
  %5137 = extractvalue %dx.types.ResRet.i32 %5134, 2
  %5138 = extractvalue %dx.types.ResRet.i32 %5134, 3
  %5139 = and i32 %5135, 65535
  %5140 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5139)  ; LegacyF16ToF32(value)
  %5141 = lshr i32 %5135, 16
  %5142 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5141)  ; LegacyF16ToF32(value)
  %5143 = and i32 %5136, 65535
  %5144 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5143)  ; LegacyF16ToF32(value)
  %5145 = lshr i32 %5136, 16
  %5146 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5145)  ; LegacyF16ToF32(value)
  %5147 = and i32 %5137, 65535
  %5148 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5147)  ; LegacyF16ToF32(value)
  %5149 = lshr i32 %5137, 16
  %5150 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5149)  ; LegacyF16ToF32(value)
  %5151 = and i32 %5138, 65535
  %5152 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5151)  ; LegacyF16ToF32(value)
  %5153 = lshr i32 %5138, 16
  %5154 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5153)  ; LegacyF16ToF32(value)
  %5155 = fsub fast float %5022, %5142
  %5156 = call float @dx.op.binary.f32(i32 35, float %5155, float 0.000000e+00)  ; FMax(a,b)
  %5157 = fmul fast float %5046, %5156
  %5158 = fsub fast float %5140, %5157
  %5159 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5158)  ; FMax(a,b)
  %5160 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5159)  ; FMax(a,b)
  %5161 = fsub fast float %5022, %5146
  %5162 = call float @dx.op.binary.f32(i32 35, float %5161, float 0.000000e+00)  ; FMax(a,b)
  %5163 = fmul fast float %5046, %5162
  %5164 = fsub fast float %5144, %5163
  %5165 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5164)  ; FMax(a,b)
  %5166 = call float @dx.op.binary.f32(i32 35, float %5160, float %5165)  ; FMax(a,b)
  %5167 = fsub fast float %5022, %5150
  %5168 = call float @dx.op.binary.f32(i32 35, float %5167, float 0.000000e+00)  ; FMax(a,b)
  %5169 = fmul fast float %5046, %5168
  %5170 = fsub fast float %5148, %5169
  %5171 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5170)  ; FMax(a,b)
  %5172 = call float @dx.op.binary.f32(i32 35, float %5166, float %5171)  ; FMax(a,b)
  %5173 = fsub fast float %5022, %5154
  %5174 = call float @dx.op.binary.f32(i32 35, float %5173, float 0.000000e+00)  ; FMax(a,b)
  %5175 = fmul fast float %5046, %5174
  %5176 = fsub fast float %5152, %5175
  %5177 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5176)  ; FMax(a,b)
  %5178 = call float @dx.op.binary.f32(i32 35, float %5172, float %5177)  ; FMax(a,b)
  %5179 = fmul fast float %5178, %5069
  store i32 %4977, i32* %5010, align 4
  store i32 %4978, i32* %5011, align 4
  store i32 %4979, i32* %5012, align 4
  store i32 %4980, i32* %5013, align 4
  %5180 = load i32, i32* %5014, align 4, !tbaa !95
  %5181 = mul i32 %5180, %4973
  %5182 = mul i32 %5180, %4974
  %5183 = add i32 %4988, %5181
  %5184 = add i32 %4992, %5182
  %5185 = and i32 %5183, %4984
  %5186 = and i32 %5184, %4984
  %5187 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %5185, i32 %5186, i32 %4898, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5188 = extractvalue %dx.types.ResRet.i32 %5187, 0
  %5189 = extractvalue %dx.types.ResRet.i32 %5187, 1
  %5190 = extractvalue %dx.types.ResRet.i32 %5187, 2
  %5191 = extractvalue %dx.types.ResRet.i32 %5187, 3
  %5192 = and i32 %5188, 65535
  %5193 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5192)  ; LegacyF16ToF32(value)
  %5194 = lshr i32 %5188, 16
  %5195 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5194)  ; LegacyF16ToF32(value)
  %5196 = and i32 %5189, 65535
  %5197 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5196)  ; LegacyF16ToF32(value)
  %5198 = lshr i32 %5189, 16
  %5199 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5198)  ; LegacyF16ToF32(value)
  %5200 = and i32 %5190, 65535
  %5201 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5200)  ; LegacyF16ToF32(value)
  %5202 = lshr i32 %5190, 16
  %5203 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5202)  ; LegacyF16ToF32(value)
  %5204 = and i32 %5191, 65535
  %5205 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5204)  ; LegacyF16ToF32(value)
  %5206 = lshr i32 %5191, 16
  %5207 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5206)  ; LegacyF16ToF32(value)
  %5208 = fsub fast float %5022, %5195
  %5209 = call float @dx.op.binary.f32(i32 35, float %5208, float 0.000000e+00)  ; FMax(a,b)
  %5210 = fmul fast float %5046, %5209
  %5211 = fsub fast float %5193, %5210
  %5212 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5211)  ; FMax(a,b)
  %5213 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5212)  ; FMax(a,b)
  %5214 = fsub fast float %5022, %5199
  %5215 = call float @dx.op.binary.f32(i32 35, float %5214, float 0.000000e+00)  ; FMax(a,b)
  %5216 = fmul fast float %5046, %5215
  %5217 = fsub fast float %5197, %5216
  %5218 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5217)  ; FMax(a,b)
  %5219 = call float @dx.op.binary.f32(i32 35, float %5213, float %5218)  ; FMax(a,b)
  %5220 = fsub fast float %5022, %5203
  %5221 = call float @dx.op.binary.f32(i32 35, float %5220, float 0.000000e+00)  ; FMax(a,b)
  %5222 = fmul fast float %5046, %5221
  %5223 = fsub fast float %5201, %5222
  %5224 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5223)  ; FMax(a,b)
  %5225 = call float @dx.op.binary.f32(i32 35, float %5219, float %5224)  ; FMax(a,b)
  %5226 = fsub fast float %5022, %5207
  %5227 = call float @dx.op.binary.f32(i32 35, float %5226, float 0.000000e+00)  ; FMax(a,b)
  %5228 = fmul fast float %5046, %5227
  %5229 = fsub fast float %5205, %5228
  %5230 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5229)  ; FMax(a,b)
  %5231 = call float @dx.op.binary.f32(i32 35, float %5225, float %5230)  ; FMax(a,b)
  %5232 = fmul fast float %5231, %5008
  %5233 = fadd fast float %5232, %5179
  %5234 = fmul fast float %5233, %5009
  %5235 = fadd fast float %5126, %5072
  %5236 = fadd fast float %5235, %5234
  br label %5773

; <label>:5237                                    ; preds = %4929
  %5238 = getelementptr inbounds [4 x float], [4 x float]* %53, i32 0, i32 0
  store float %4959, float* %5238, align 4
  %5239 = getelementptr inbounds [4 x float], [4 x float]* %53, i32 0, i32 1
  store float %4960, float* %5239, align 4
  %5240 = getelementptr inbounds [4 x float], [4 x float]* %53, i32 0, i32 2
  store float %4961, float* %5240, align 4
  %5241 = getelementptr inbounds [4 x float], [4 x float]* %53, i32 0, i32 3
  store float %4962, float* %5241, align 4
  %5242 = getelementptr inbounds [4 x float], [4 x float]* %53, i32 0, i32 %4898
  %5243 = load float, float* %5242, align 4, !tbaa !89
  %5244 = fmul fast float %4964, %5243
  %5245 = call float @dx.op.binary.f32(i32 35, float 1.000000e+00, float %5244)  ; FMax(a,b)
  %5246 = fmul fast float %5245, %4965
  %5247 = fmul fast float %5245, %4966
  %5248 = call float @dx.op.binary.f32(i32 35, float %5246, float -5.000000e-01)  ; FMax(a,b)
  %5249 = call float @dx.op.binary.f32(i32 35, float %5247, float -5.000000e-01)  ; FMax(a,b)
  %5250 = call float @dx.op.binary.f32(i32 36, float %5248, float 5.000000e-01)  ; FMin(a,b)
  %5251 = call float @dx.op.binary.f32(i32 36, float %5249, float 5.000000e-01)  ; FMin(a,b)
  %5252 = fadd fast float %5250, 5.000000e-01
  %5253 = fadd fast float %5251, 5.000000e-01
  %5254 = getelementptr inbounds [4 x i32], [4 x i32]* %56, i32 0, i32 0
  store i32 %4977, i32* %5254, align 4
  %5255 = getelementptr inbounds [4 x i32], [4 x i32]* %56, i32 0, i32 1
  store i32 %4978, i32* %5255, align 4
  %5256 = getelementptr inbounds [4 x i32], [4 x i32]* %56, i32 0, i32 2
  store i32 %4979, i32* %5256, align 4
  %5257 = getelementptr inbounds [4 x i32], [4 x i32]* %56, i32 0, i32 3
  store i32 %4980, i32* %5257, align 4
  %5258 = getelementptr inbounds [4 x i32], [4 x i32]* %56, i32 0, i32 %4975
  %5259 = load i32, i32* %5258, align 4, !tbaa !95
  %5260 = mul i32 %5259, %4973
  %5261 = mul i32 %5259, %4974
  %5262 = add i32 %4981, %5260
  %5263 = add i32 %4982, %5261
  %5264 = and i32 %5262, %4984
  %5265 = and i32 %5263, %4984
  %5266 = fsub fast float %4840, %4910
  %5267 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %5264, i32 %5265, i32 %4898, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5268 = extractvalue %dx.types.ResRet.i32 %5267, 0
  %5269 = extractvalue %dx.types.ResRet.i32 %5267, 1
  %5270 = extractvalue %dx.types.ResRet.i32 %5267, 2
  %5271 = extractvalue %dx.types.ResRet.i32 %5267, 3
  %5272 = and i32 %5268, 65535
  %5273 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5272)  ; LegacyF16ToF32(value)
  %5274 = lshr i32 %5268, 16
  %5275 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5274)  ; LegacyF16ToF32(value)
  %5276 = and i32 %5269, 65535
  %5277 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5276)  ; LegacyF16ToF32(value)
  %5278 = lshr i32 %5269, 16
  %5279 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5278)  ; LegacyF16ToF32(value)
  %5280 = and i32 %5270, 65535
  %5281 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5280)  ; LegacyF16ToF32(value)
  %5282 = lshr i32 %5270, 16
  %5283 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5282)  ; LegacyF16ToF32(value)
  %5284 = and i32 %5271, 65535
  %5285 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5284)  ; LegacyF16ToF32(value)
  %5286 = lshr i32 %5271, 16
  %5287 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5286)  ; LegacyF16ToF32(value)
  %5288 = fsub fast float %5266, %5275
  %5289 = call float @dx.op.binary.f32(i32 35, float %5288, float 0.000000e+00)  ; FMax(a,b)
  %5290 = extractvalue %dx.types.CBufRet.f32 %4912, 2
  %5291 = fmul fast float %5290, %5289
  %5292 = fsub fast float %5273, %5291
  %5293 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5292)  ; FMax(a,b)
  %5294 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5293)  ; FMax(a,b)
  %5295 = fsub fast float %5266, %5279
  %5296 = call float @dx.op.binary.f32(i32 35, float %5295, float 0.000000e+00)  ; FMax(a,b)
  %5297 = fmul fast float %5290, %5296
  %5298 = fsub fast float %5277, %5297
  %5299 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5298)  ; FMax(a,b)
  %5300 = call float @dx.op.binary.f32(i32 35, float %5294, float %5299)  ; FMax(a,b)
  %5301 = fsub fast float %5266, %5283
  %5302 = call float @dx.op.binary.f32(i32 35, float %5301, float 0.000000e+00)  ; FMax(a,b)
  %5303 = fmul fast float %5290, %5302
  %5304 = fsub fast float %5281, %5303
  %5305 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5304)  ; FMax(a,b)
  %5306 = call float @dx.op.binary.f32(i32 35, float %5300, float %5305)  ; FMax(a,b)
  %5307 = fsub fast float %5266, %5287
  %5308 = call float @dx.op.binary.f32(i32 35, float %5307, float 0.000000e+00)  ; FMax(a,b)
  %5309 = fmul fast float %5290, %5308
  %5310 = fsub fast float %5285, %5309
  %5311 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5310)  ; FMax(a,b)
  %5312 = call float @dx.op.binary.f32(i32 35, float %5306, float %5311)  ; FMax(a,b)
  %5313 = fsub fast float 5.000000e-01, %5250
  %5314 = fsub fast float 5.000000e-01, %5251
  %5315 = fmul fast float %5314, %5313
  %5316 = fmul fast float %5315, %5312
  store i32 %4977, i32* %5254, align 4
  store i32 %4978, i32* %5255, align 4
  store i32 %4979, i32* %5256, align 4
  store i32 %4980, i32* %5257, align 4
  %5317 = load i32, i32* %5258, align 4, !tbaa !95
  %5318 = mul i32 %5317, %4973
  %5319 = mul i32 %5317, %4974
  %5320 = add i32 %4988, %5318
  %5321 = add i32 %4982, %5319
  %5322 = and i32 %5320, %4984
  %5323 = and i32 %5321, %4984
  %5324 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %5322, i32 %5323, i32 %4898, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5325 = extractvalue %dx.types.ResRet.i32 %5324, 0
  %5326 = extractvalue %dx.types.ResRet.i32 %5324, 1
  %5327 = extractvalue %dx.types.ResRet.i32 %5324, 2
  %5328 = extractvalue %dx.types.ResRet.i32 %5324, 3
  %5329 = and i32 %5325, 65535
  %5330 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5329)  ; LegacyF16ToF32(value)
  %5331 = lshr i32 %5325, 16
  %5332 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5331)  ; LegacyF16ToF32(value)
  %5333 = and i32 %5326, 65535
  %5334 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5333)  ; LegacyF16ToF32(value)
  %5335 = lshr i32 %5326, 16
  %5336 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5335)  ; LegacyF16ToF32(value)
  %5337 = and i32 %5327, 65535
  %5338 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5337)  ; LegacyF16ToF32(value)
  %5339 = lshr i32 %5327, 16
  %5340 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5339)  ; LegacyF16ToF32(value)
  %5341 = and i32 %5328, 65535
  %5342 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5341)  ; LegacyF16ToF32(value)
  %5343 = lshr i32 %5328, 16
  %5344 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5343)  ; LegacyF16ToF32(value)
  %5345 = fsub fast float %5266, %5332
  %5346 = call float @dx.op.binary.f32(i32 35, float %5345, float 0.000000e+00)  ; FMax(a,b)
  %5347 = fmul fast float %5290, %5346
  %5348 = fsub fast float %5330, %5347
  %5349 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5348)  ; FMax(a,b)
  %5350 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5349)  ; FMax(a,b)
  %5351 = fsub fast float %5266, %5336
  %5352 = call float @dx.op.binary.f32(i32 35, float %5351, float 0.000000e+00)  ; FMax(a,b)
  %5353 = fmul fast float %5290, %5352
  %5354 = fsub fast float %5334, %5353
  %5355 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5354)  ; FMax(a,b)
  %5356 = call float @dx.op.binary.f32(i32 35, float %5350, float %5355)  ; FMax(a,b)
  %5357 = fsub fast float %5266, %5340
  %5358 = call float @dx.op.binary.f32(i32 35, float %5357, float 0.000000e+00)  ; FMax(a,b)
  %5359 = fmul fast float %5290, %5358
  %5360 = fsub fast float %5338, %5359
  %5361 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5360)  ; FMax(a,b)
  %5362 = call float @dx.op.binary.f32(i32 35, float %5356, float %5361)  ; FMax(a,b)
  %5363 = fsub fast float %5266, %5344
  %5364 = call float @dx.op.binary.f32(i32 35, float %5363, float 0.000000e+00)  ; FMax(a,b)
  %5365 = fmul fast float %5290, %5364
  %5366 = fsub fast float %5342, %5365
  %5367 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5366)  ; FMax(a,b)
  %5368 = call float @dx.op.binary.f32(i32 35, float %5362, float %5367)  ; FMax(a,b)
  %5369 = fmul fast float %5314, %5252
  %5370 = fmul fast float %5369, %5368
  store i32 %4977, i32* %5254, align 4
  store i32 %4978, i32* %5255, align 4
  store i32 %4979, i32* %5256, align 4
  store i32 %4980, i32* %5257, align 4
  %5371 = load i32, i32* %5258, align 4, !tbaa !95
  %5372 = mul i32 %5371, %4973
  %5373 = mul i32 %5371, %4974
  %5374 = add i32 %4981, %5372
  %5375 = add i32 %4992, %5373
  %5376 = and i32 %5374, %4984
  %5377 = and i32 %5375, %4984
  %5378 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %5376, i32 %5377, i32 %4898, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5379 = extractvalue %dx.types.ResRet.i32 %5378, 0
  %5380 = extractvalue %dx.types.ResRet.i32 %5378, 1
  %5381 = extractvalue %dx.types.ResRet.i32 %5378, 2
  %5382 = extractvalue %dx.types.ResRet.i32 %5378, 3
  %5383 = and i32 %5379, 65535
  %5384 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5383)  ; LegacyF16ToF32(value)
  %5385 = lshr i32 %5379, 16
  %5386 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5385)  ; LegacyF16ToF32(value)
  %5387 = and i32 %5380, 65535
  %5388 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5387)  ; LegacyF16ToF32(value)
  %5389 = lshr i32 %5380, 16
  %5390 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5389)  ; LegacyF16ToF32(value)
  %5391 = and i32 %5381, 65535
  %5392 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5391)  ; LegacyF16ToF32(value)
  %5393 = lshr i32 %5381, 16
  %5394 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5393)  ; LegacyF16ToF32(value)
  %5395 = and i32 %5382, 65535
  %5396 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5395)  ; LegacyF16ToF32(value)
  %5397 = lshr i32 %5382, 16
  %5398 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5397)  ; LegacyF16ToF32(value)
  %5399 = fsub fast float %5266, %5386
  %5400 = call float @dx.op.binary.f32(i32 35, float %5399, float 0.000000e+00)  ; FMax(a,b)
  %5401 = fmul fast float %5290, %5400
  %5402 = fsub fast float %5384, %5401
  %5403 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5402)  ; FMax(a,b)
  %5404 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5403)  ; FMax(a,b)
  %5405 = fsub fast float %5266, %5390
  %5406 = call float @dx.op.binary.f32(i32 35, float %5405, float 0.000000e+00)  ; FMax(a,b)
  %5407 = fmul fast float %5290, %5406
  %5408 = fsub fast float %5388, %5407
  %5409 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5408)  ; FMax(a,b)
  %5410 = call float @dx.op.binary.f32(i32 35, float %5404, float %5409)  ; FMax(a,b)
  %5411 = fsub fast float %5266, %5394
  %5412 = call float @dx.op.binary.f32(i32 35, float %5411, float 0.000000e+00)  ; FMax(a,b)
  %5413 = fmul fast float %5290, %5412
  %5414 = fsub fast float %5392, %5413
  %5415 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5414)  ; FMax(a,b)
  %5416 = call float @dx.op.binary.f32(i32 35, float %5410, float %5415)  ; FMax(a,b)
  %5417 = fsub fast float %5266, %5398
  %5418 = call float @dx.op.binary.f32(i32 35, float %5417, float 0.000000e+00)  ; FMax(a,b)
  %5419 = fmul fast float %5290, %5418
  %5420 = fsub fast float %5396, %5419
  %5421 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5420)  ; FMax(a,b)
  %5422 = call float @dx.op.binary.f32(i32 35, float %5416, float %5421)  ; FMax(a,b)
  %5423 = fmul fast float %5422, %5313
  store i32 %4977, i32* %5254, align 4
  store i32 %4978, i32* %5255, align 4
  store i32 %4979, i32* %5256, align 4
  store i32 %4980, i32* %5257, align 4
  %5424 = load i32, i32* %5258, align 4, !tbaa !95
  %5425 = mul i32 %5424, %4973
  %5426 = mul i32 %5424, %4974
  %5427 = add i32 %4988, %5425
  %5428 = add i32 %4992, %5426
  %5429 = and i32 %5427, %4984
  %5430 = and i32 %5428, %4984
  %5431 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %5429, i32 %5430, i32 %4898, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5432 = extractvalue %dx.types.ResRet.i32 %5431, 0
  %5433 = extractvalue %dx.types.ResRet.i32 %5431, 1
  %5434 = extractvalue %dx.types.ResRet.i32 %5431, 2
  %5435 = extractvalue %dx.types.ResRet.i32 %5431, 3
  %5436 = and i32 %5432, 65535
  %5437 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5436)  ; LegacyF16ToF32(value)
  %5438 = lshr i32 %5432, 16
  %5439 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5438)  ; LegacyF16ToF32(value)
  %5440 = and i32 %5433, 65535
  %5441 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5440)  ; LegacyF16ToF32(value)
  %5442 = lshr i32 %5433, 16
  %5443 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5442)  ; LegacyF16ToF32(value)
  %5444 = and i32 %5434, 65535
  %5445 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5444)  ; LegacyF16ToF32(value)
  %5446 = lshr i32 %5434, 16
  %5447 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5446)  ; LegacyF16ToF32(value)
  %5448 = and i32 %5435, 65535
  %5449 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5448)  ; LegacyF16ToF32(value)
  %5450 = lshr i32 %5435, 16
  %5451 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5450)  ; LegacyF16ToF32(value)
  %5452 = fsub fast float %5266, %5439
  %5453 = call float @dx.op.binary.f32(i32 35, float %5452, float 0.000000e+00)  ; FMax(a,b)
  %5454 = fmul fast float %5290, %5453
  %5455 = fsub fast float %5437, %5454
  %5456 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5455)  ; FMax(a,b)
  %5457 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5456)  ; FMax(a,b)
  %5458 = fsub fast float %5266, %5443
  %5459 = call float @dx.op.binary.f32(i32 35, float %5458, float 0.000000e+00)  ; FMax(a,b)
  %5460 = fmul fast float %5290, %5459
  %5461 = fsub fast float %5441, %5460
  %5462 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5461)  ; FMax(a,b)
  %5463 = call float @dx.op.binary.f32(i32 35, float %5457, float %5462)  ; FMax(a,b)
  %5464 = fsub fast float %5266, %5447
  %5465 = call float @dx.op.binary.f32(i32 35, float %5464, float 0.000000e+00)  ; FMax(a,b)
  %5466 = fmul fast float %5290, %5465
  %5467 = fsub fast float %5445, %5466
  %5468 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5467)  ; FMax(a,b)
  %5469 = call float @dx.op.binary.f32(i32 35, float %5463, float %5468)  ; FMax(a,b)
  %5470 = fsub fast float %5266, %5451
  %5471 = call float @dx.op.binary.f32(i32 35, float %5470, float 0.000000e+00)  ; FMax(a,b)
  %5472 = fmul fast float %5290, %5471
  %5473 = fsub fast float %5449, %5472
  %5474 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5473)  ; FMax(a,b)
  %5475 = call float @dx.op.binary.f32(i32 35, float %5469, float %5474)  ; FMax(a,b)
  %5476 = fmul fast float %5475, %5252
  %5477 = fadd fast float %5476, %5423
  %5478 = fmul fast float %5477, %5253
  %5479 = fadd fast float %5370, %5316
  %5480 = fadd fast float %5479, %5478
  %5481 = fmul fast float %4896, 5.000000e-01
  %5482 = fmul fast float %4897, 5.000000e-01
  %5483 = fadd fast float %5481, 2.500000e-01
  %5484 = fadd fast float %5482, 2.500000e-01
  %5485 = fmul fast float %4947, %5483
  %5486 = fmul fast float %4947, %5484
  %5487 = fadd fast float %5485, -5.000000e-01
  %5488 = fadd fast float %5486, -5.000000e-01
  %5489 = fptosi float %5487 to i32
  %5490 = fptosi float %5488 to i32
  %5491 = fadd fast float %5485, 5.000000e-01
  %5492 = fadd fast float %5486, 5.000000e-01
  %5493 = call float @dx.op.unary.f32(i32 22, float %5491)  ; Frc(value)
  %5494 = call float @dx.op.unary.f32(i32 22, float %5492)  ; Frc(value)
  %5495 = getelementptr inbounds [4 x float], [4 x float]* %54, i32 0, i32 0
  store float %4959, float* %5495, align 4
  %5496 = getelementptr inbounds [4 x float], [4 x float]* %54, i32 0, i32 1
  store float %4960, float* %5496, align 4
  %5497 = getelementptr inbounds [4 x float], [4 x float]* %54, i32 0, i32 2
  store float %4961, float* %5497, align 4
  %5498 = getelementptr inbounds [4 x float], [4 x float]* %54, i32 0, i32 3
  store float %4962, float* %5498, align 4
  %5499 = getelementptr inbounds [4 x float], [4 x float]* %54, i32 0, i32 %4942
  %5500 = load float, float* %5499, align 4, !tbaa !89
  %5501 = fmul fast float %4964, %5500
  %5502 = call float @dx.op.binary.f32(i32 35, float 1.000000e+00, float %5501)  ; FMax(a,b)
  %5503 = fadd fast float %5493, -5.000000e-01
  %5504 = fadd fast float %5494, -5.000000e-01
  %5505 = fmul fast float %5502, %5503
  %5506 = fmul fast float %5502, %5504
  %5507 = call float @dx.op.binary.f32(i32 35, float %5505, float -5.000000e-01)  ; FMax(a,b)
  %5508 = call float @dx.op.binary.f32(i32 35, float %5506, float -5.000000e-01)  ; FMax(a,b)
  %5509 = call float @dx.op.binary.f32(i32 36, float %5507, float 5.000000e-01)  ; FMin(a,b)
  %5510 = call float @dx.op.binary.f32(i32 36, float %5508, float 5.000000e-01)  ; FMin(a,b)
  %5511 = fadd fast float %5509, 5.000000e-01
  %5512 = fadd fast float %5510, 5.000000e-01
  %5513 = call i32 @dx.op.binary.i32(i32 37, i32 %5489, i32 0)  ; IMax(a,b)
  %5514 = call i32 @dx.op.binary.i32(i32 37, i32 %5490, i32 0)  ; IMax(a,b)
  %5515 = call i32 @dx.op.binary.i32(i32 38, i32 %5513, i32 %4967)  ; IMin(a,b)
  %5516 = call i32 @dx.op.binary.i32(i32 38, i32 %5514, i32 %4967)  ; IMin(a,b)
  %5517 = sub i32 2, %4898
  %5518 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 0
  store i32 %4977, i32* %5518, align 4
  %5519 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 1
  store i32 %4978, i32* %5519, align 4
  %5520 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 2
  store i32 %4979, i32* %5520, align 4
  %5521 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 3
  store i32 %4980, i32* %5521, align 4
  %5522 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 %5517
  %5523 = load i32, i32* %5522, align 4, !tbaa !95
  %5524 = mul i32 %5523, %4973
  %5525 = mul i32 %5523, %4974
  %5526 = add i32 %5515, 536870912
  %5527 = add i32 %5526, %5524
  %5528 = add i32 %5516, 536870912
  %5529 = add i32 %5528, %5525
  %5530 = and i32 %5527, %4984
  %5531 = and i32 %5529, %4984
  %5532 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %5530, i32 %5531, i32 %4942, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5533 = extractvalue %dx.types.ResRet.i32 %5532, 0
  %5534 = extractvalue %dx.types.ResRet.i32 %5532, 1
  %5535 = extractvalue %dx.types.ResRet.i32 %5532, 2
  %5536 = extractvalue %dx.types.ResRet.i32 %5532, 3
  %5537 = and i32 %5533, 65535
  %5538 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5537)  ; LegacyF16ToF32(value)
  %5539 = lshr i32 %5533, 16
  %5540 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5539)  ; LegacyF16ToF32(value)
  %5541 = and i32 %5534, 65535
  %5542 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5541)  ; LegacyF16ToF32(value)
  %5543 = lshr i32 %5534, 16
  %5544 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5543)  ; LegacyF16ToF32(value)
  %5545 = and i32 %5535, 65535
  %5546 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5545)  ; LegacyF16ToF32(value)
  %5547 = lshr i32 %5535, 16
  %5548 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5547)  ; LegacyF16ToF32(value)
  %5549 = and i32 %5536, 65535
  %5550 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5549)  ; LegacyF16ToF32(value)
  %5551 = lshr i32 %5536, 16
  %5552 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5551)  ; LegacyF16ToF32(value)
  %5553 = fsub fast float %5266, %5540
  %5554 = call float @dx.op.binary.f32(i32 35, float %5553, float 0.000000e+00)  ; FMax(a,b)
  %5555 = fmul fast float %5290, %5554
  %5556 = fsub fast float %5538, %5555
  %5557 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5556)  ; FMax(a,b)
  %5558 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5557)  ; FMax(a,b)
  %5559 = fsub fast float %5266, %5544
  %5560 = call float @dx.op.binary.f32(i32 35, float %5559, float 0.000000e+00)  ; FMax(a,b)
  %5561 = fmul fast float %5290, %5560
  %5562 = fsub fast float %5542, %5561
  %5563 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5562)  ; FMax(a,b)
  %5564 = call float @dx.op.binary.f32(i32 35, float %5558, float %5563)  ; FMax(a,b)
  %5565 = fsub fast float %5266, %5548
  %5566 = call float @dx.op.binary.f32(i32 35, float %5565, float 0.000000e+00)  ; FMax(a,b)
  %5567 = fmul fast float %5290, %5566
  %5568 = fsub fast float %5546, %5567
  %5569 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5568)  ; FMax(a,b)
  %5570 = call float @dx.op.binary.f32(i32 35, float %5564, float %5569)  ; FMax(a,b)
  %5571 = fsub fast float %5266, %5552
  %5572 = call float @dx.op.binary.f32(i32 35, float %5571, float 0.000000e+00)  ; FMax(a,b)
  %5573 = fmul fast float %5290, %5572
  %5574 = fsub fast float %5550, %5573
  %5575 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5574)  ; FMax(a,b)
  %5576 = call float @dx.op.binary.f32(i32 35, float %5570, float %5575)  ; FMax(a,b)
  %5577 = fsub fast float 5.000000e-01, %5509
  %5578 = fsub fast float 5.000000e-01, %5510
  %5579 = fmul fast float %5578, %5577
  %5580 = fmul fast float %5579, %5576
  %5581 = add i32 %5489, 1
  %5582 = call i32 @dx.op.binary.i32(i32 37, i32 %5581, i32 0)  ; IMax(a,b)
  %5583 = call i32 @dx.op.binary.i32(i32 38, i32 %5582, i32 %4967)  ; IMin(a,b)
  store i32 %4977, i32* %5518, align 4
  store i32 %4978, i32* %5519, align 4
  store i32 %4979, i32* %5520, align 4
  store i32 %4980, i32* %5521, align 4
  %5584 = load i32, i32* %5522, align 4, !tbaa !95
  %5585 = mul i32 %5584, %4973
  %5586 = mul i32 %5584, %4974
  %5587 = add i32 %5583, 536870912
  %5588 = add i32 %5587, %5585
  %5589 = add i32 %5528, %5586
  %5590 = and i32 %5588, %4984
  %5591 = and i32 %5589, %4984
  %5592 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %5590, i32 %5591, i32 %4942, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5593 = extractvalue %dx.types.ResRet.i32 %5592, 0
  %5594 = extractvalue %dx.types.ResRet.i32 %5592, 1
  %5595 = extractvalue %dx.types.ResRet.i32 %5592, 2
  %5596 = extractvalue %dx.types.ResRet.i32 %5592, 3
  %5597 = and i32 %5593, 65535
  %5598 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5597)  ; LegacyF16ToF32(value)
  %5599 = lshr i32 %5593, 16
  %5600 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5599)  ; LegacyF16ToF32(value)
  %5601 = and i32 %5594, 65535
  %5602 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5601)  ; LegacyF16ToF32(value)
  %5603 = lshr i32 %5594, 16
  %5604 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5603)  ; LegacyF16ToF32(value)
  %5605 = and i32 %5595, 65535
  %5606 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5605)  ; LegacyF16ToF32(value)
  %5607 = lshr i32 %5595, 16
  %5608 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5607)  ; LegacyF16ToF32(value)
  %5609 = and i32 %5596, 65535
  %5610 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5609)  ; LegacyF16ToF32(value)
  %5611 = lshr i32 %5596, 16
  %5612 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5611)  ; LegacyF16ToF32(value)
  %5613 = fsub fast float %5266, %5600
  %5614 = call float @dx.op.binary.f32(i32 35, float %5613, float 0.000000e+00)  ; FMax(a,b)
  %5615 = fmul fast float %5290, %5614
  %5616 = fsub fast float %5598, %5615
  %5617 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5616)  ; FMax(a,b)
  %5618 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5617)  ; FMax(a,b)
  %5619 = fsub fast float %5266, %5604
  %5620 = call float @dx.op.binary.f32(i32 35, float %5619, float 0.000000e+00)  ; FMax(a,b)
  %5621 = fmul fast float %5290, %5620
  %5622 = fsub fast float %5602, %5621
  %5623 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5622)  ; FMax(a,b)
  %5624 = call float @dx.op.binary.f32(i32 35, float %5618, float %5623)  ; FMax(a,b)
  %5625 = fsub fast float %5266, %5608
  %5626 = call float @dx.op.binary.f32(i32 35, float %5625, float 0.000000e+00)  ; FMax(a,b)
  %5627 = fmul fast float %5290, %5626
  %5628 = fsub fast float %5606, %5627
  %5629 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5628)  ; FMax(a,b)
  %5630 = call float @dx.op.binary.f32(i32 35, float %5624, float %5629)  ; FMax(a,b)
  %5631 = fsub fast float %5266, %5612
  %5632 = call float @dx.op.binary.f32(i32 35, float %5631, float 0.000000e+00)  ; FMax(a,b)
  %5633 = fmul fast float %5290, %5632
  %5634 = fsub fast float %5610, %5633
  %5635 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5634)  ; FMax(a,b)
  %5636 = call float @dx.op.binary.f32(i32 35, float %5630, float %5635)  ; FMax(a,b)
  %5637 = fmul fast float %5578, %5511
  %5638 = fmul fast float %5637, %5636
  %5639 = add i32 %5490, 1
  %5640 = call i32 @dx.op.binary.i32(i32 37, i32 %5639, i32 0)  ; IMax(a,b)
  %5641 = call i32 @dx.op.binary.i32(i32 38, i32 %5640, i32 %4967)  ; IMin(a,b)
  store i32 %4977, i32* %5518, align 4
  store i32 %4978, i32* %5519, align 4
  store i32 %4979, i32* %5520, align 4
  store i32 %4980, i32* %5521, align 4
  %5642 = load i32, i32* %5522, align 4, !tbaa !95
  %5643 = mul i32 %5642, %4973
  %5644 = mul i32 %5642, %4974
  %5645 = add i32 %5526, %5643
  %5646 = add i32 %5641, 536870912
  %5647 = add i32 %5646, %5644
  %5648 = and i32 %5645, %4984
  %5649 = and i32 %5647, %4984
  %5650 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %5648, i32 %5649, i32 %4942, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5651 = extractvalue %dx.types.ResRet.i32 %5650, 0
  %5652 = extractvalue %dx.types.ResRet.i32 %5650, 1
  %5653 = extractvalue %dx.types.ResRet.i32 %5650, 2
  %5654 = extractvalue %dx.types.ResRet.i32 %5650, 3
  %5655 = and i32 %5651, 65535
  %5656 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5655)  ; LegacyF16ToF32(value)
  %5657 = lshr i32 %5651, 16
  %5658 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5657)  ; LegacyF16ToF32(value)
  %5659 = and i32 %5652, 65535
  %5660 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5659)  ; LegacyF16ToF32(value)
  %5661 = lshr i32 %5652, 16
  %5662 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5661)  ; LegacyF16ToF32(value)
  %5663 = and i32 %5653, 65535
  %5664 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5663)  ; LegacyF16ToF32(value)
  %5665 = lshr i32 %5653, 16
  %5666 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5665)  ; LegacyF16ToF32(value)
  %5667 = and i32 %5654, 65535
  %5668 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5667)  ; LegacyF16ToF32(value)
  %5669 = lshr i32 %5654, 16
  %5670 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5669)  ; LegacyF16ToF32(value)
  %5671 = fsub fast float %5266, %5658
  %5672 = call float @dx.op.binary.f32(i32 35, float %5671, float 0.000000e+00)  ; FMax(a,b)
  %5673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 339)  ; CBufferLoadLegacy(handle,regIndex)
  %5674 = extractvalue %dx.types.CBufRet.f32 %5673, 2
  %5675 = fmul fast float %5674, %5672
  %5676 = fsub fast float %5656, %5675
  %5677 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5676)  ; FMax(a,b)
  %5678 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5677)  ; FMax(a,b)
  %5679 = fsub fast float %5266, %5662
  %5680 = call float @dx.op.binary.f32(i32 35, float %5679, float 0.000000e+00)  ; FMax(a,b)
  %5681 = fmul fast float %5674, %5680
  %5682 = fsub fast float %5660, %5681
  %5683 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5682)  ; FMax(a,b)
  %5684 = call float @dx.op.binary.f32(i32 35, float %5678, float %5683)  ; FMax(a,b)
  %5685 = fsub fast float %5266, %5666
  %5686 = call float @dx.op.binary.f32(i32 35, float %5685, float 0.000000e+00)  ; FMax(a,b)
  %5687 = fmul fast float %5674, %5686
  %5688 = fsub fast float %5664, %5687
  %5689 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5688)  ; FMax(a,b)
  %5690 = call float @dx.op.binary.f32(i32 35, float %5684, float %5689)  ; FMax(a,b)
  %5691 = fsub fast float %5266, %5670
  %5692 = call float @dx.op.binary.f32(i32 35, float %5691, float 0.000000e+00)  ; FMax(a,b)
  %5693 = fmul fast float %5674, %5692
  %5694 = fsub fast float %5668, %5693
  %5695 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5694)  ; FMax(a,b)
  %5696 = call float @dx.op.binary.f32(i32 35, float %5690, float %5695)  ; FMax(a,b)
  %5697 = fmul fast float %5696, %5577
  store i32 %4977, i32* %5518, align 4
  store i32 %4978, i32* %5519, align 4
  store i32 %4979, i32* %5520, align 4
  store i32 %4980, i32* %5521, align 4
  %5698 = load i32, i32* %5522, align 4, !tbaa !95
  %5699 = mul i32 %5698, %4973
  %5700 = mul i32 %5698, %4974
  %5701 = add i32 %5587, %5699
  %5702 = add i32 %5646, %5700
  %5703 = and i32 %5701, %4984
  %5704 = and i32 %5702, %4984
  %5705 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 335)  ; CBufferLoadLegacy(handle,regIndex)
  %5706 = extractvalue %dx.types.CBufRet.f32 %5705, 0
  %5707 = fsub fast float %4840, %5706
  %5708 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %5703, i32 %5704, i32 %4942, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5709 = extractvalue %dx.types.ResRet.i32 %5708, 0
  %5710 = extractvalue %dx.types.ResRet.i32 %5708, 1
  %5711 = extractvalue %dx.types.ResRet.i32 %5708, 2
  %5712 = extractvalue %dx.types.ResRet.i32 %5708, 3
  %5713 = and i32 %5709, 65535
  %5714 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5713)  ; LegacyF16ToF32(value)
  %5715 = lshr i32 %5709, 16
  %5716 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5715)  ; LegacyF16ToF32(value)
  %5717 = and i32 %5710, 65535
  %5718 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5717)  ; LegacyF16ToF32(value)
  %5719 = lshr i32 %5710, 16
  %5720 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5719)  ; LegacyF16ToF32(value)
  %5721 = and i32 %5711, 65535
  %5722 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5721)  ; LegacyF16ToF32(value)
  %5723 = lshr i32 %5711, 16
  %5724 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5723)  ; LegacyF16ToF32(value)
  %5725 = and i32 %5712, 65535
  %5726 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5725)  ; LegacyF16ToF32(value)
  %5727 = lshr i32 %5712, 16
  %5728 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5727)  ; LegacyF16ToF32(value)
  %5729 = fsub fast float %5707, %5716
  %5730 = call float @dx.op.binary.f32(i32 35, float %5729, float 0.000000e+00)  ; FMax(a,b)
  %5731 = fmul fast float %5674, %5730
  %5732 = fsub fast float %5714, %5731
  %5733 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5732)  ; FMax(a,b)
  %5734 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5733)  ; FMax(a,b)
  %5735 = fsub fast float %5707, %5720
  %5736 = call float @dx.op.binary.f32(i32 35, float %5735, float 0.000000e+00)  ; FMax(a,b)
  %5737 = fmul fast float %5674, %5736
  %5738 = fsub fast float %5718, %5737
  %5739 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5738)  ; FMax(a,b)
  %5740 = call float @dx.op.binary.f32(i32 35, float %5734, float %5739)  ; FMax(a,b)
  %5741 = fsub fast float %5707, %5724
  %5742 = call float @dx.op.binary.f32(i32 35, float %5741, float 0.000000e+00)  ; FMax(a,b)
  %5743 = fmul fast float %5674, %5742
  %5744 = fsub fast float %5722, %5743
  %5745 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5744)  ; FMax(a,b)
  %5746 = call float @dx.op.binary.f32(i32 35, float %5740, float %5745)  ; FMax(a,b)
  %5747 = fsub fast float %5707, %5728
  %5748 = call float @dx.op.binary.f32(i32 35, float %5747, float 0.000000e+00)  ; FMax(a,b)
  %5749 = fmul fast float %5674, %5748
  %5750 = fsub fast float %5726, %5749
  %5751 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5750)  ; FMax(a,b)
  %5752 = call float @dx.op.binary.f32(i32 35, float %5746, float %5751)  ; FMax(a,b)
  %5753 = fmul fast float %5752, %5511
  %5754 = fadd fast float %5753, %5697
  %5755 = fmul fast float %5754, %5512
  %5756 = fadd fast float %5638, %5580
  %5757 = fadd fast float %5756, %5755
  %5758 = call float @dx.op.binary.f32(i32 35, float %4934, float %4935)  ; FMax(a,b)
  %5759 = extractvalue %dx.types.CBufRet.f32 %5673, 1
  %5760 = fmul fast float %5759, 2.000000e+00
  %5761 = fadd fast float %5758, -1.000000e+00
  %5762 = fadd fast float %5761, %5760
  %5763 = fdiv fast float %5762, %5760
  %5764 = call float @dx.op.unary.f32(i32 7, float %5763)  ; Saturate(value)
  %5765 = fmul fast float %5764, 2.000000e+00
  %5766 = fsub fast float 3.000000e+00, %5765
  %5767 = fmul fast float %5764, %5764
  %5768 = fmul fast float %5767, %5766
  %5769 = fmul fast float %5768, %5757
  %5770 = fsub fast float 1.000000e+00, %5768
  %5771 = fmul fast float %5770, %5480
  %5772 = fadd fast float %5771, %5769
  br label %5773

; <label>:5773                                    ; preds = %5237, %4993, %4895
  %5774 = phi float [ 0.000000e+00, %4895 ], [ %5772, %5237 ], [ %5236, %4993 ]
  %5775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5776 = extractvalue %dx.types.CBufRet.f32 %5775, 0
  %5777 = extractvalue %dx.types.CBufRet.f32 %5775, 1
  %5778 = fsub fast float %4838, %5776
  %5779 = fsub fast float %4839, %5777
  %5780 = fmul fast float %5778, %5778
  %5781 = fmul fast float %5779, %5779
  %5782 = fadd fast float %5780, %5781
  %5783 = call float @dx.op.unary.f32(i32 24, float %5782)  ; Sqrt(value)
  %5784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 336)  ; CBufferLoadLegacy(handle,regIndex)
  %5785 = extractvalue %dx.types.CBufRet.f32 %5784, 0
  %5786 = extractvalue %dx.types.CBufRet.f32 %5784, 1
  %5787 = fsub fast float %5786, %5785
  %5788 = fsub fast float %5783, %5785
  %5789 = fdiv fast float %5788, %5787
  %5790 = call float @dx.op.unary.f32(i32 7, float %5789)  ; Saturate(value)
  %5791 = fmul fast float %5790, 2.000000e+00
  %5792 = fsub fast float 3.000000e+00, %5791
  %5793 = fmul fast float %5790, %5790
  %5794 = fmul fast float %5793, %5792
  %5795 = fsub fast float 1.000000e+00, %5794
  %5796 = fmul fast float %5795, %5774
  %5797 = fadd fast float %5796, %4831
  %5798 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 369)  ; CBufferLoadLegacy(handle,regIndex)
  %5799 = extractvalue %dx.types.CBufRet.i32 %5798, 0
  %5800 = and i32 %5799, 7
  %5801 = icmp eq i32 %5800, 0
  br i1 %5801, label %5873, label %5802

; <label>:5802                                    ; preds = %5773
  %5803 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5804 = extractvalue %dx.types.CBufRet.f32 %5803, 0
  %5805 = extractvalue %dx.types.CBufRet.f32 %5803, 1
  %5806 = extractvalue %dx.types.CBufRet.f32 %5803, 2
  %5807 = fadd fast float %5804, %164
  %5808 = fadd fast float %5805, %165
  %5809 = fadd fast float %5806, %166
  %5810 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 151)  ; CBufferLoadLegacy(handle,regIndex)
  %5811 = extractvalue %dx.types.CBufRet.f32 %5810, 0
  %5812 = extractvalue %dx.types.CBufRet.f32 %5810, 1
  %5813 = extractvalue %dx.types.CBufRet.f32 %5810, 2
  %5814 = extractvalue %dx.types.CBufRet.f32 %5810, 3
  %5815 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 152)  ; CBufferLoadLegacy(handle,regIndex)
  %5816 = extractvalue %dx.types.CBufRet.f32 %5815, 0
  %5817 = extractvalue %dx.types.CBufRet.f32 %5815, 1
  %5818 = extractvalue %dx.types.CBufRet.f32 %5815, 2
  %5819 = extractvalue %dx.types.CBufRet.f32 %5815, 3
  %5820 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 153)  ; CBufferLoadLegacy(handle,regIndex)
  %5821 = extractvalue %dx.types.CBufRet.f32 %5820, 0
  %5822 = extractvalue %dx.types.CBufRet.f32 %5820, 1
  %5823 = extractvalue %dx.types.CBufRet.f32 %5820, 2
  %5824 = extractvalue %dx.types.CBufRet.f32 %5820, 3
  %5825 = fmul fast float %5807, %5811
  %5826 = call float @dx.op.tertiary.f32(i32 46, float %5808, float %5812, float %5825)  ; FMad(a,b,c)
  %5827 = call float @dx.op.tertiary.f32(i32 46, float %5809, float %5813, float %5826)  ; FMad(a,b,c)
  %5828 = fadd fast float %5827, %5814
  %5829 = fmul fast float %5816, %5807
  %5830 = call float @dx.op.tertiary.f32(i32 46, float %5808, float %5817, float %5829)  ; FMad(a,b,c)
  %5831 = call float @dx.op.tertiary.f32(i32 46, float %5809, float %5818, float %5830)  ; FMad(a,b,c)
  %5832 = fadd fast float %5831, %5819
  %5833 = fmul fast float %5821, %5807
  %5834 = call float @dx.op.tertiary.f32(i32 46, float %5808, float %5822, float %5833)  ; FMad(a,b,c)
  %5835 = call float @dx.op.tertiary.f32(i32 46, float %5809, float %5823, float %5834)  ; FMad(a,b,c)
  %5836 = fadd fast float %5835, %5824
  %5837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 155)  ; CBufferLoadLegacy(handle,regIndex)
  %5838 = extractvalue %dx.types.CBufRet.f32 %5837, 1
  %5839 = extractvalue %dx.types.CBufRet.f32 %5837, 0
  %5840 = fmul fast float %5839, %236
  %5841 = fadd fast float %5836, %5840
  %5842 = fmul fast float %236, 0x401921FB60000000
  %5843 = call float @dx.op.unary.f32(i32 13, float %5842)  ; Sin(value)
  %5844 = call float @dx.op.unary.f32(i32 12, float %5842)  ; Cos(value)
  %5845 = fmul fast float %5844, %5838
  %5846 = call float @dx.op.tertiary.f32(i32 46, float %5843, float %5838, float 0.000000e+00)  ; FMad(a,b,c)
  %5847 = fmul fast float %5838, %5843
  %5848 = fsub fast float -0.000000e+00, %5847
  %5849 = call float @dx.op.tertiary.f32(i32 46, float %5844, float %5838, float 0.000000e+00)  ; FMad(a,b,c)
  br label %5850

; <label>:5850                                    ; preds = %5850, %5802
  %5851 = phi float [ 0.000000e+00, %5802 ], [ %5865, %5850 ]
  %5852 = phi i32 [ 0, %5802 ], [ %5866, %5850 ]
  %5853 = getelementptr [4 x float], [4 x float]* @PCF_OFFSETS_4.0, i32 0, i32 %5852
  %5854 = getelementptr [4 x float], [4 x float]* @PCF_OFFSETS_4.1, i32 0, i32 %5852
  %5855 = load float, float* %5853, align 4
  %5856 = load float, float* %5854, align 4
  %5857 = fmul fast float %5845, %5855
  %5858 = call float @dx.op.tertiary.f32(i32 46, float %5856, float %5848, float %5857)  ; FMad(a,b,c)
  %5859 = fmul fast float %5855, %5846
  %5860 = call float @dx.op.tertiary.f32(i32 46, float %5856, float %5849, float %5859)  ; FMad(a,b,c)
  %5861 = fadd fast float %5828, %5858
  %5862 = fadd fast float %5832, %5860
  %5863 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %2, %dx.types.Handle %48, float %5861, float %5862, float undef, float undef, i32 0, i32 0, i32 undef, float %5841)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5864 = extractvalue %dx.types.ResRet.f32 %5863, 0
  %5865 = fadd fast float %5864, %5851
  %5866 = add nuw nsw i32 %5852, 1
  %5867 = icmp eq i32 %5866, 4
  br i1 %5867, label %5868, label %5850

; <label>:5868                                    ; preds = %5850
  %5869 = fmul fast float %5865, 2.500000e-01
  %5870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 370)  ; CBufferLoadLegacy(handle,regIndex)
  %5871 = extractvalue %dx.types.CBufRet.f32 %5870, 1
  %5872 = fmul fast float %5871, %5869
  br label %5873

; <label>:5873                                    ; preds = %5868, %5773
  %5874 = phi float [ %5869, %5868 ], [ 0.000000e+00, %5773 ]
  %5875 = phi float [ %5872, %5868 ], [ 0.000000e+00, %5773 ]
  %5876 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 369)  ; CBufferLoadLegacy(handle,regIndex)
  %5877 = extractvalue %dx.types.CBufRet.i32 %5876, 0
  %5878 = and i32 %5877, 7
  %5879 = icmp eq i32 %5878, 0
  br i1 %5879, label %5957, label %5880

; <label>:5880                                    ; preds = %5873
  %5881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 370)  ; CBufferLoadLegacy(handle,regIndex)
  %5882 = extractvalue %dx.types.CBufRet.f32 %5881, 0
  %5883 = fmul fast float %5882, %5874
  %5884 = fadd fast float %5883, %5797
  %5885 = extractvalue %dx.types.CBufRet.f32 %5881, 2
  %5886 = fmul fast float %5885, %5874
  %5887 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 371)  ; CBufferLoadLegacy(handle,regIndex)
  %5888 = extractvalue %dx.types.CBufRet.f32 %5887, 0
  %5889 = fmul fast float %5888, %5874
  %5890 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5891 = and i32 %5877, 8
  %5892 = icmp eq i32 %5891, 0
  br i1 %5892, label %5957, label %5893

; <label>:5893                                    ; preds = %5880
  %5894 = extractvalue %dx.types.CBufRet.f32 %5890, 2
  %5895 = fadd fast float %5894, %166
  %5896 = extractvalue %dx.types.CBufRet.f32 %5890, 1
  %5897 = fadd fast float %5896, %165
  %5898 = extractvalue %dx.types.CBufRet.f32 %5890, 0
  %5899 = fadd fast float %5898, %164
  %5900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 377)  ; CBufferLoadLegacy(handle,regIndex)
  %5901 = extractvalue %dx.types.CBufRet.f32 %5900, 0
  %5902 = extractvalue %dx.types.CBufRet.f32 %5900, 1
  %5903 = extractvalue %dx.types.CBufRet.f32 %5900, 2
  %5904 = fsub fast float %5899, %5901
  %5905 = fsub fast float %5897, %5902
  %5906 = fsub fast float %5895, %5903
  %5907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 378)  ; CBufferLoadLegacy(handle,regIndex)
  %5908 = extractvalue %dx.types.CBufRet.f32 %5907, 0
  %5909 = extractvalue %dx.types.CBufRet.f32 %5907, 1
  %5910 = extractvalue %dx.types.CBufRet.f32 %5907, 2
  %5911 = fmul fast float %5904, %5908
  %5912 = fmul fast float %5905, %5909
  %5913 = fmul fast float %5906, %5910
  %5914 = fcmp fast oge float %5911, 0.000000e+00
  %5915 = fcmp fast oge float %5912, 0.000000e+00
  %5916 = fcmp fast oge float %5913, 0.000000e+00
  %5917 = and i1 %5914, %5915
  %5918 = and i1 %5916, %5917
  %5919 = fcmp fast ole float %5911, 1.000000e+00
  %5920 = fcmp fast ole float %5912, 1.000000e+00
  %5921 = fcmp fast ole float %5913, 1.000000e+00
  %5922 = and i1 %5919, %5920
  %5923 = and i1 %5921, %5922
  %5924 = and i1 %5918, %5923
  br i1 %5924, label %5925, label %5957

; <label>:5925                                    ; preds = %5893
  %5926 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 379)  ; CBufferLoadLegacy(handle,regIndex)
  %5927 = extractvalue %dx.types.CBufRet.i32 %5926, 0
  %5928 = icmp eq i32 %5927, 0
  br i1 %5928, label %5935, label %5929

; <label>:5929                                    ; preds = %5925
  %5930 = add i32 %5927, 0
  %5931 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5930, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5932 = fsub fast float -0.000000e+00, %5912
  %5933 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %5931, %dx.types.Handle %106, float %5911, float %5932, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %5934 = extractvalue %dx.types.ResRet.f32 %5933, 0
  br label %5935

; <label>:5935                                    ; preds = %5929, %5925
  %5936 = phi float [ %5934, %5929 ], [ 1.000000e+00, %5925 ]
  %5937 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 369)  ; CBufferLoadLegacy(handle,regIndex)
  %5938 = extractvalue %dx.types.CBufRet.i32 %5937, 0
  %5939 = and i32 %5938, 32
  %5940 = icmp ne i32 %5939, 0
  %5941 = fmul fast float %5936, %5874
  %5942 = select i1 %5940, float %5936, float %5941
  %5943 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 379)  ; CBufferLoadLegacy(handle,regIndex)
  %5944 = extractvalue %dx.types.CBufRet.f32 %5943, 1
  %5945 = fmul fast float %5942, %5944
  %5946 = fadd fast float %5945, %5884
  %5947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 380)  ; CBufferLoadLegacy(handle,regIndex)
  %5948 = extractvalue %dx.types.CBufRet.f32 %5947, 0
  %5949 = fmul fast float %5942, %5948
  %5950 = fadd fast float %5949, %5875
  %5951 = extractvalue %dx.types.CBufRet.f32 %5947, 1
  %5952 = fmul fast float %5942, %5951
  %5953 = fadd fast float %5952, %5886
  %5954 = extractvalue %dx.types.CBufRet.f32 %5947, 2
  %5955 = fmul fast float %5954, %5942
  %5956 = fadd fast float %5955, %5889
  br label %5957

; <label>:5957                                    ; preds = %5935, %5893, %5880, %5873, %4827
  %5958 = phi float [ %5797, %5873 ], [ %4831, %4827 ], [ %5946, %5935 ], [ %5884, %5893 ], [ %5884, %5880 ]
  %5959 = phi float [ %5875, %5873 ], [ 0.000000e+00, %4827 ], [ %5950, %5935 ], [ %5875, %5893 ], [ %5875, %5880 ]
  %5960 = phi float [ 0.000000e+00, %5873 ], [ 0.000000e+00, %4827 ], [ %5953, %5935 ], [ %5886, %5893 ], [ %5886, %5880 ]
  %5961 = phi float [ 0.000000e+00, %5873 ], [ 0.000000e+00, %4827 ], [ %5956, %5935 ], [ %5889, %5893 ], [ %5889, %5880 ]
  %5962 = call float @dx.op.unary.f32(i32 7, float %5958)  ; Saturate(value)
  %5963 = call float @dx.op.unary.f32(i32 7, float %5959)  ; Saturate(value)
  %5964 = call float @dx.op.unary.f32(i32 7, float %5960)  ; Saturate(value)
  %5965 = call float @dx.op.unary.f32(i32 7, float %5961)  ; Saturate(value)
  %5966 = fcmp fast une float %5964, 0.000000e+00
  %5967 = fcmp fast une float %5965, 0.000000e+00
  %5968 = or i1 %5966, %5967
  br i1 %5968, label %5969, label %6535

; <label>:5969                                    ; preds = %5957
  %5970 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5971 = extractvalue %dx.types.CBufRet.f32 %5970, 0
  %5972 = extractvalue %dx.types.CBufRet.f32 %5970, 1
  %5973 = extractvalue %dx.types.CBufRet.f32 %5970, 2
  %5974 = fadd fast float %5971, %164
  %5975 = fadd fast float %5972, %165
  %5976 = fadd fast float %5973, %166
  br i1 %5966, label %5977, label %6250

; <label>:5977                                    ; preds = %5969
  %5978 = call float @dx.op.unary.f32(i32 23, float %4640)  ; Log(value)
  %5979 = fmul fast float %5978, 4.000000e+00
  %5980 = call float @dx.op.unary.f32(i32 21, float %5979)  ; Exp(value)
  %5981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %5982 = extractvalue %dx.types.CBufRet.f32 %5981, 0
  %5983 = fmul fast float %5982, %5974
  %5984 = fmul fast float %5982, %5975
  %5985 = fmul fast float %5982, %5976
  %5986 = call float @dx.op.unary.f32(i32 6, float %116)  ; FAbs(value)
  %5987 = call float @dx.op.unary.f32(i32 6, float %117)  ; FAbs(value)
  %5988 = call float @dx.op.unary.f32(i32 6, float %118)  ; FAbs(value)
  %5989 = call float @dx.op.unary.f32(i32 23, float %5986)  ; Log(value)
  %5990 = call float @dx.op.unary.f32(i32 23, float %5987)  ; Log(value)
  %5991 = call float @dx.op.unary.f32(i32 23, float %5988)  ; Log(value)
  %5992 = fmul fast float %5989, 4.000000e+00
  %5993 = fmul fast float %5990, 4.000000e+00
  %5994 = fmul fast float %5991, 4.000000e+00
  %5995 = call float @dx.op.unary.f32(i32 21, float %5992)  ; Exp(value)
  %5996 = call float @dx.op.unary.f32(i32 21, float %5993)  ; Exp(value)
  %5997 = call float @dx.op.unary.f32(i32 21, float %5994)  ; Exp(value)
  %5998 = fadd fast float %5996, %5995
  %5999 = fadd fast float %5998, %5997
  %6000 = fdiv fast float 1.000000e+00, %5999
  %6001 = fmul fast float %6000, %5995
  %6002 = fcmp fast ogt float %116, 0.000000e+00
  %6003 = fcmp fast ogt float %117, 0.000000e+00
  %6004 = fcmp fast ogt float %118, 0.000000e+00
  %6005 = fcmp fast olt float %116, 0.000000e+00
  %6006 = fcmp fast olt float %117, 0.000000e+00
  %6007 = fcmp fast olt float %118, 0.000000e+00
  %6008 = zext i1 %6002 to i32
  %6009 = zext i1 %6003 to i32
  %6010 = zext i1 %6004 to i32
  %6011 = zext i1 %6005 to i32
  %6012 = zext i1 %6006 to i32
  %6013 = zext i1 %6007 to i32
  %6014 = sub nsw i32 %6008, %6011
  %6015 = sub nsw i32 %6009, %6012
  %6016 = sub nsw i32 %6010, %6013
  %6017 = call float @dx.op.unary.f32(i32 83, float %5983)  ; DerivCoarseX(value)
  %6018 = call float @dx.op.unary.f32(i32 83, float %5984)  ; DerivCoarseX(value)
  %6019 = call float @dx.op.unary.f32(i32 83, float %5985)  ; DerivCoarseX(value)
  %6020 = call float @dx.op.unary.f32(i32 84, float %5983)  ; DerivCoarseY(value)
  %6021 = call float @dx.op.unary.f32(i32 84, float %5984)  ; DerivCoarseY(value)
  %6022 = call float @dx.op.unary.f32(i32 84, float %5985)  ; DerivCoarseY(value)
  %6023 = fcmp fast ole float %236, %6001
  %6024 = fmul fast float %6000, %5998
  %6025 = fcmp fast ole float %236, %6024
  %6026 = select i1 %6025, float %5985, float %5983
  %6027 = select i1 %6025, float %5983, float %5984
  %6028 = select i1 %6023, float %5984, float %6026
  %6029 = select i1 %6023, float %5985, float %6027
  %6030 = select i1 %6025, float %6019, float %6017
  %6031 = select i1 %6025, float %6017, float %6018
  %6032 = select i1 %6023, float %6018, float %6030
  %6033 = select i1 %6023, float %6019, float %6031
  %6034 = select i1 %6025, float %6022, float %6020
  %6035 = select i1 %6025, float %6020, float %6021
  %6036 = select i1 %6023, float %6021, float %6034
  %6037 = select i1 %6023, float %6022, float %6035
  %6038 = call float @dx.op.unary.f32(i32 27, float %6028)  ; Round_ni(value)
  %6039 = call float @dx.op.unary.f32(i32 27, float %6029)  ; Round_ni(value)
  %6040 = fptosi float %6038 to i32
  %6041 = fptosi float %6039 to i32
  %6042 = xor i32 %6041, %6040
  %6043 = sitofp i32 %6042 to float
  %6044 = fptosi float %6043 to i32
  %6045 = sitofp i32 %6044 to float
  %6046 = fmul fast float %6045, 0x3FE3C6EF40000000
  %6047 = frem fast float %6038, 2.560000e+02
  %6048 = frem fast float %6039, 2.560000e+02
  %6049 = fptoui float %6047 to i32
  %6050 = fptoui float %6048 to i32
  %6051 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %29, i32 0, i32 %6049, i32 %6050, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6052 = extractvalue %dx.types.ResRet.f32 %6051, 0
  %6053 = extractvalue %dx.types.ResRet.f32 %6051, 1
  %6054 = extractvalue %dx.types.ResRet.f32 %6051, 2
  %6055 = fadd fast float %6052, %6046
  %6056 = fadd fast float %6053, %6046
  %6057 = fadd fast float %6054, %6046
  %6058 = call float @dx.op.unary.f32(i32 22, float %6055)  ; Frc(value)
  %6059 = call float @dx.op.unary.f32(i32 22, float %6056)  ; Frc(value)
  %6060 = call float @dx.op.unary.f32(i32 22, float %6057)  ; Frc(value)
  %6061 = fmul fast float %6060, 0x401921FB60000000
  %6062 = call float @dx.op.unary.f32(i32 13, float %6061)  ; Sin(value)
  %6063 = call float @dx.op.unary.f32(i32 12, float %6061)  ; Cos(value)
  %6064 = fsub fast float -0.000000e+00, %6063
  %6065 = fmul fast float %6063, %6028
  %6066 = call float @dx.op.tertiary.f32(i32 46, float %6062, float %6029, float %6065)  ; FMad(a,b,c)
  %6067 = fmul fast float %6062, %6028
  %6068 = call float @dx.op.tertiary.f32(i32 46, float %6064, float %6029, float %6067)  ; FMad(a,b,c)
  %6069 = fadd fast float %6066, %6058
  %6070 = fadd fast float %6068, %6059
  %6071 = extractvalue %dx.types.CBufRet.f32 %5981, 3
  %6072 = bitcast float %6071 to i32
  %6073 = icmp eq i32 %6072, 0
  br i1 %6073, label %6112, label %6074

; <label>:6074                                    ; preds = %5977
  %6075 = add i32 %6072, 0
  %6076 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %6075, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6077 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %6076, %dx.types.Handle %106, float %6069, float %6070, float undef, float undef, i32 0, i32 0, i32 undef, float %6032, float %6033, float undef, float %6036, float %6037, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %6078 = extractvalue %dx.types.ResRet.f32 %6077, 0
  %6079 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %6080 = extractvalue %dx.types.CBufRet.f32 %6079, 1
  %6081 = extractvalue %dx.types.CBufRet.f32 %6079, 2
  %6082 = fsub fast float 1.000000e+00, %5964
  %6083 = call float @dx.op.binary.f32(i32 35, float %6082, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %6084 = bitcast float %5964 to i32
  %6085 = sitofp i32 %6084 to float
  %6086 = fadd fast float %6085, 0xC1CFBF8940000000
  %6087 = fmul fast float %6081, %6086
  %6088 = fadd fast float %6087, 0x41CFBF8940000000
  %6089 = fptosi float %6088 to i32
  %6090 = bitcast i32 %6089 to float
  %6091 = bitcast float %6083 to i32
  %6092 = sitofp i32 %6091 to float
  %6093 = fadd fast float %6092, 0xC1CFBF8940000000
  %6094 = fmul fast float %6093, %6081
  %6095 = fadd fast float %6094, 0x41CFBF8940000000
  %6096 = fptosi float %6095 to i32
  %6097 = bitcast i32 %6096 to float
  %6098 = fmul fast float %6090, %6080
  %6099 = fmul fast float %6097, %6080
  %6100 = fsub fast float %6083, %6098
  %6101 = fadd fast float %6099, %6083
  %6102 = call float @dx.op.unary.f32(i32 7, float %6100)  ; Saturate(value)
  %6103 = call float @dx.op.unary.f32(i32 7, float %6101)  ; Saturate(value)
  %6104 = fsub fast float %6078, %6102
  %6105 = fsub fast float %6103, %6102
  %6106 = bitcast float %6105 to i32
  %6107 = sub nsw i32 2129859010, %6106
  %6108 = bitcast i32 %6107 to float
  %6109 = fmul fast float %6108, %6104
  %6110 = call float @dx.op.unary.f32(i32 7, float %6109)  ; Saturate(value)
  %6111 = fcmp fast olt float %6110, 0x3F70101020000000
  br i1 %6111, label %6250, label %6112

; <label>:6112                                    ; preds = %6074, %5977
  %6113 = phi float [ %6110, %6074 ], [ %5964, %5977 ]
  %6114 = fmul fast float %6113, %5980
  %6115 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %6116 = extractvalue %dx.types.CBufRet.i32 %6115, 1
  %6117 = extractvalue %dx.types.CBufRet.i32 %6115, 0
  %6118 = add i32 %6117, 0
  %6119 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %6118, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6120 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %6119, %dx.types.Handle %105, float %6069, float %6070, float undef, float undef, i32 0, i32 0, i32 undef, float %6032, float %6033, float undef, float %6036, float %6037, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %6121 = extractvalue %dx.types.ResRet.f32 %6120, 0
  %6122 = extractvalue %dx.types.ResRet.f32 %6120, 1
  %6123 = extractvalue %dx.types.ResRet.f32 %6120, 2
  %6124 = extractvalue %dx.types.ResRet.f32 %6120, 3
  %6125 = and i32 %6116, 255
  %6126 = uitofp i32 %6125 to float
  %6127 = lshr i32 %6116, 8
  %6128 = and i32 %6127, 255
  %6129 = uitofp i32 %6128 to float
  %6130 = fmul fast float %6124, %6126
  %6131 = fadd fast float %6130, %6129
  %6132 = fmul fast float %6131, 0x3F70101000000000
  %6133 = fadd fast float %6132, 0xBFB99999A0000000
  %6134 = call float @dx.op.unary.f32(i32 7, float %6133)  ; Saturate(value)
  %6135 = fmul fast float %6134, 0x3FF1C71C80000000
  %6136 = call float @dx.op.binary.f32(i32 36, float %6132, float 0x3FB99999A0000000)  ; FMin(a,b)
  %6137 = fsub fast float 1.000000e+00, %6135
  %6138 = call float @dx.op.unary.f32(i32 7, float %6137)  ; Saturate(value)
  %6139 = fmul fast float %6138, %6121
  %6140 = fmul fast float %6138, %6122
  %6141 = fmul fast float %6138, %6123
  %6142 = call float @dx.op.unary.f32(i32 7, float %6139)  ; Saturate(value)
  %6143 = call float @dx.op.unary.f32(i32 7, float %6140)  ; Saturate(value)
  %6144 = call float @dx.op.unary.f32(i32 7, float %6141)  ; Saturate(value)
  %6145 = fmul fast float %6135, %6121
  %6146 = fmul fast float %6135, %6122
  %6147 = fmul fast float %6135, %6123
  %6148 = fadd fast float %6145, %6136
  %6149 = fadd fast float %6146, %6136
  %6150 = fadd fast float %6147, %6136
  %6151 = call float @dx.op.unary.f32(i32 7, float %6148)  ; Saturate(value)
  %6152 = call float @dx.op.unary.f32(i32 7, float %6149)  ; Saturate(value)
  %6153 = call float @dx.op.unary.f32(i32 7, float %6150)  ; Saturate(value)
  %6154 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %6155 = extractvalue %dx.types.CBufRet.i32 %6154, 3
  %6156 = extractvalue %dx.types.CBufRet.i32 %6154, 2
  %6157 = add i32 %6156, 0
  %6158 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %6157, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6159 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %6158, %dx.types.Handle %105, float %6069, float %6070, float undef, float undef, i32 0, i32 0, i32 undef, float %6032, float %6033, float undef, float %6036, float %6037, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %6160 = extractvalue %dx.types.ResRet.f32 %6159, 0
  %6161 = extractvalue %dx.types.ResRet.f32 %6159, 1
  %6162 = extractvalue %dx.types.ResRet.f32 %6159, 2
  %6163 = extractvalue %dx.types.ResRet.f32 %6159, 3
  %6164 = and i32 %6155, 255
  %6165 = uitofp i32 %6164 to float
  %6166 = lshr i32 %6155, 8
  %6167 = and i32 %6166, 255
  %6168 = uitofp i32 %6167 to float
  %6169 = lshr i32 %6155, 16
  %6170 = and i32 %6169, 255
  %6171 = uitofp i32 %6170 to float
  %6172 = fmul fast float %6171, 0x3F70101000000000
  %6173 = fmul fast float %6160, %6165
  %6174 = fadd fast float %6173, %6168
  %6175 = fmul fast float %6174, 0x3F70101000000000
  %6176 = fadd fast float %6161, -5.000000e-01
  %6177 = fadd fast float %6163, -5.000000e-01
  %6178 = fmul fast float %6176, %6172
  %6179 = fmul fast float %6177, %6172
  %6180 = fadd fast float %6178, 5.000000e-01
  %6181 = fadd fast float %6179, 5.000000e-01
  %6182 = fmul fast float %6180, 2.000000e+00
  %6183 = fadd fast float %6182, -1.000000e+00
  %6184 = fmul fast float %6181, 2.000000e+00
  %6185 = fadd fast float %6184, -1.000000e+00
  %6186 = fadd fast float %6183, %6185
  %6187 = fmul fast float %6186, 5.000000e-01
  %6188 = fsub fast float %6183, %6185
  %6189 = fmul fast float %6188, 5.000000e-01
  %6190 = call float @dx.op.unary.f32(i32 6, float %6187)  ; FAbs(value)
  %6191 = fsub fast float 1.000000e+00, %6190
  %6192 = call float @dx.op.unary.f32(i32 6, float %6189)  ; FAbs(value)
  %6193 = fsub fast float %6191, %6192
  %6194 = call float @dx.op.dot3.f32(i32 55, float %6187, float %6189, float %6193, float %6187, float %6189, float %6193)  ; Dot3(ax,ay,az,bx,by,bz)
  %6195 = call float @dx.op.unary.f32(i32 25, float %6194)  ; Rsqrt(value)
  %6196 = fmul fast float %6187, %6195
  %6197 = fmul fast float %6189, %6195
  %6198 = select i1 %6025, i32 %6015, i32 %6016
  %6199 = select i1 %6023, i32 %6014, i32 %6198
  %6200 = sitofp i32 %6199 to float
  %6201 = fmul fast float %6193, %6200
  %6202 = fmul fast float %6201, %6195
  %6203 = select i1 %6025, float %6202, float %6197
  %6204 = select i1 %6025, float %6197, float %6202
  %6205 = select i1 %6023, float %6202, float %6196
  %6206 = select i1 %6023, float %6197, float %6203
  %6207 = select i1 %6023, float %6196, float %6204
  %6208 = fsub fast float %6142, %4745
  %6209 = fsub fast float %6143, %4746
  %6210 = fsub fast float %6144, %4747
  %6211 = fmul fast float %6208, %6114
  %6212 = fmul fast float %6209, %6114
  %6213 = fmul fast float %6210, %6114
  %6214 = fadd fast float %6211, %4745
  %6215 = fadd fast float %6212, %4746
  %6216 = fadd fast float %6213, %4747
  %6217 = fsub fast float %6151, %4664
  %6218 = fsub fast float %6152, %4665
  %6219 = fsub fast float %6153, %4666
  %6220 = fmul fast float %6217, %6114
  %6221 = fmul fast float %6218, %6114
  %6222 = fmul fast float %6219, %6114
  %6223 = fadd fast float %6220, %4664
  %6224 = fadd fast float %6221, %4665
  %6225 = fadd fast float %6222, %4666
  %6226 = fadd fast float %6205, %4625
  %6227 = fadd fast float %6206, %4626
  %6228 = fadd fast float %6207, %4627
  %6229 = call float @dx.op.dot3.f32(i32 55, float %6226, float %6227, float %6228, float %6226, float %6227, float %6228)  ; Dot3(ax,ay,az,bx,by,bz)
  %6230 = call float @dx.op.unary.f32(i32 25, float %6229)  ; Rsqrt(value)
  %6231 = fmul fast float %6226, %6230
  %6232 = fmul fast float %6227, %6230
  %6233 = fmul fast float %6228, %6230
  %6234 = fsub fast float %6231, %4625
  %6235 = fsub fast float %6232, %4626
  %6236 = fsub fast float %6233, %4627
  %6237 = fmul fast float %6234, %6114
  %6238 = fmul fast float %6235, %6114
  %6239 = fmul fast float %6236, %6114
  %6240 = fadd fast float %6237, %4625
  %6241 = fadd fast float %6238, %4626
  %6242 = fadd fast float %6239, %4627
  %6243 = call float @dx.op.binary.f32(i32 36, float %4640, float %6162)  ; FMin(a,b)
  %6244 = fsub fast float %6243, %4640
  %6245 = fmul fast float %6244, %6114
  %6246 = fadd fast float %6245, %4640
  %6247 = fsub fast float %6175, %4667
  %6248 = fmul fast float %6247, %6114
  %6249 = fadd fast float %6248, %4667
  br label %6250

; <label>:6250                                    ; preds = %6112, %6074, %5969
  %6251 = phi float [ %6223, %6112 ], [ %4664, %6074 ], [ %4664, %5969 ]
  %6252 = phi float [ %6224, %6112 ], [ %4665, %6074 ], [ %4665, %5969 ]
  %6253 = phi float [ %6225, %6112 ], [ %4666, %6074 ], [ %4666, %5969 ]
  %6254 = phi float [ %6240, %6112 ], [ %4625, %6074 ], [ %4625, %5969 ]
  %6255 = phi float [ %6241, %6112 ], [ %4626, %6074 ], [ %4626, %5969 ]
  %6256 = phi float [ %6242, %6112 ], [ %4627, %6074 ], [ %4627, %5969 ]
  %6257 = phi float [ %6214, %6112 ], [ %4745, %6074 ], [ %4745, %5969 ]
  %6258 = phi float [ %6215, %6112 ], [ %4746, %6074 ], [ %4746, %5969 ]
  %6259 = phi float [ %6216, %6112 ], [ %4747, %6074 ], [ %4747, %5969 ]
  %6260 = phi float [ %6249, %6112 ], [ %4667, %6074 ], [ %4667, %5969 ]
  %6261 = phi float [ %6246, %6112 ], [ %4640, %6074 ], [ %4640, %5969 ]
  br i1 %5967, label %6262, label %6535

; <label>:6262                                    ; preds = %6250
  %6263 = call float @dx.op.unary.f32(i32 23, float %6261)  ; Log(value)
  %6264 = fmul fast float %6263, 4.000000e+00
  %6265 = call float @dx.op.unary.f32(i32 21, float %6264)  ; Exp(value)
  %6266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %6267 = extractvalue %dx.types.CBufRet.f32 %6266, 0
  %6268 = fmul fast float %6267, %5974
  %6269 = fmul fast float %6267, %5975
  %6270 = fmul fast float %6267, %5976
  %6271 = call float @dx.op.unary.f32(i32 6, float %116)  ; FAbs(value)
  %6272 = call float @dx.op.unary.f32(i32 6, float %117)  ; FAbs(value)
  %6273 = call float @dx.op.unary.f32(i32 6, float %118)  ; FAbs(value)
  %6274 = call float @dx.op.unary.f32(i32 23, float %6271)  ; Log(value)
  %6275 = call float @dx.op.unary.f32(i32 23, float %6272)  ; Log(value)
  %6276 = call float @dx.op.unary.f32(i32 23, float %6273)  ; Log(value)
  %6277 = fmul fast float %6274, 4.000000e+00
  %6278 = fmul fast float %6275, 4.000000e+00
  %6279 = fmul fast float %6276, 4.000000e+00
  %6280 = call float @dx.op.unary.f32(i32 21, float %6277)  ; Exp(value)
  %6281 = call float @dx.op.unary.f32(i32 21, float %6278)  ; Exp(value)
  %6282 = call float @dx.op.unary.f32(i32 21, float %6279)  ; Exp(value)
  %6283 = fadd fast float %6281, %6280
  %6284 = fadd fast float %6283, %6282
  %6285 = fdiv fast float 1.000000e+00, %6284
  %6286 = fmul fast float %6285, %6280
  %6287 = fcmp fast ogt float %116, 0.000000e+00
  %6288 = fcmp fast ogt float %117, 0.000000e+00
  %6289 = fcmp fast ogt float %118, 0.000000e+00
  %6290 = fcmp fast olt float %116, 0.000000e+00
  %6291 = fcmp fast olt float %117, 0.000000e+00
  %6292 = fcmp fast olt float %118, 0.000000e+00
  %6293 = zext i1 %6287 to i32
  %6294 = zext i1 %6288 to i32
  %6295 = zext i1 %6289 to i32
  %6296 = zext i1 %6290 to i32
  %6297 = zext i1 %6291 to i32
  %6298 = zext i1 %6292 to i32
  %6299 = sub nsw i32 %6293, %6296
  %6300 = sub nsw i32 %6294, %6297
  %6301 = sub nsw i32 %6295, %6298
  %6302 = call float @dx.op.unary.f32(i32 83, float %6268)  ; DerivCoarseX(value)
  %6303 = call float @dx.op.unary.f32(i32 83, float %6269)  ; DerivCoarseX(value)
  %6304 = call float @dx.op.unary.f32(i32 83, float %6270)  ; DerivCoarseX(value)
  %6305 = call float @dx.op.unary.f32(i32 84, float %6268)  ; DerivCoarseY(value)
  %6306 = call float @dx.op.unary.f32(i32 84, float %6269)  ; DerivCoarseY(value)
  %6307 = call float @dx.op.unary.f32(i32 84, float %6270)  ; DerivCoarseY(value)
  %6308 = fcmp fast ole float %236, %6286
  %6309 = fmul fast float %6285, %6283
  %6310 = fcmp fast ole float %236, %6309
  %6311 = select i1 %6310, float %6270, float %6268
  %6312 = select i1 %6310, float %6268, float %6269
  %6313 = select i1 %6308, float %6269, float %6311
  %6314 = select i1 %6308, float %6270, float %6312
  %6315 = select i1 %6310, float %6304, float %6302
  %6316 = select i1 %6310, float %6302, float %6303
  %6317 = select i1 %6308, float %6303, float %6315
  %6318 = select i1 %6308, float %6304, float %6316
  %6319 = select i1 %6310, float %6307, float %6305
  %6320 = select i1 %6310, float %6305, float %6306
  %6321 = select i1 %6308, float %6306, float %6319
  %6322 = select i1 %6308, float %6307, float %6320
  %6323 = call float @dx.op.unary.f32(i32 27, float %6313)  ; Round_ni(value)
  %6324 = call float @dx.op.unary.f32(i32 27, float %6314)  ; Round_ni(value)
  %6325 = fptosi float %6323 to i32
  %6326 = fptosi float %6324 to i32
  %6327 = xor i32 %6326, %6325
  %6328 = sitofp i32 %6327 to float
  %6329 = fptosi float %6328 to i32
  %6330 = sitofp i32 %6329 to float
  %6331 = fmul fast float %6330, 0x3FE3C6EF40000000
  %6332 = frem fast float %6323, 2.560000e+02
  %6333 = frem fast float %6324, 2.560000e+02
  %6334 = fptoui float %6332 to i32
  %6335 = fptoui float %6333 to i32
  %6336 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %29, i32 0, i32 %6334, i32 %6335, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6337 = extractvalue %dx.types.ResRet.f32 %6336, 0
  %6338 = extractvalue %dx.types.ResRet.f32 %6336, 1
  %6339 = extractvalue %dx.types.ResRet.f32 %6336, 2
  %6340 = fadd fast float %6337, %6331
  %6341 = fadd fast float %6338, %6331
  %6342 = fadd fast float %6339, %6331
  %6343 = call float @dx.op.unary.f32(i32 22, float %6340)  ; Frc(value)
  %6344 = call float @dx.op.unary.f32(i32 22, float %6341)  ; Frc(value)
  %6345 = call float @dx.op.unary.f32(i32 22, float %6342)  ; Frc(value)
  %6346 = fmul fast float %6345, 0x401921FB60000000
  %6347 = call float @dx.op.unary.f32(i32 13, float %6346)  ; Sin(value)
  %6348 = call float @dx.op.unary.f32(i32 12, float %6346)  ; Cos(value)
  %6349 = fsub fast float -0.000000e+00, %6348
  %6350 = fmul fast float %6348, %6313
  %6351 = call float @dx.op.tertiary.f32(i32 46, float %6347, float %6314, float %6350)  ; FMad(a,b,c)
  %6352 = fmul fast float %6347, %6313
  %6353 = call float @dx.op.tertiary.f32(i32 46, float %6349, float %6314, float %6352)  ; FMad(a,b,c)
  %6354 = fadd fast float %6351, %6343
  %6355 = fadd fast float %6353, %6344
  %6356 = extractvalue %dx.types.CBufRet.f32 %6266, 3
  %6357 = bitcast float %6356 to i32
  %6358 = icmp eq i32 %6357, 0
  br i1 %6358, label %6397, label %6359

; <label>:6359                                    ; preds = %6262
  %6360 = add i32 %6357, 0
  %6361 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %6360, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6362 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %6361, %dx.types.Handle %106, float %6354, float %6355, float undef, float undef, i32 0, i32 0, i32 undef, float %6317, float %6318, float undef, float %6321, float %6322, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %6363 = extractvalue %dx.types.ResRet.f32 %6362, 0
  %6364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %6365 = extractvalue %dx.types.CBufRet.f32 %6364, 1
  %6366 = extractvalue %dx.types.CBufRet.f32 %6364, 2
  %6367 = fsub fast float 1.000000e+00, %5965
  %6368 = call float @dx.op.binary.f32(i32 35, float %6367, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %6369 = bitcast float %5965 to i32
  %6370 = sitofp i32 %6369 to float
  %6371 = fadd fast float %6370, 0xC1CFBF8940000000
  %6372 = fmul fast float %6366, %6371
  %6373 = fadd fast float %6372, 0x41CFBF8940000000
  %6374 = fptosi float %6373 to i32
  %6375 = bitcast i32 %6374 to float
  %6376 = bitcast float %6368 to i32
  %6377 = sitofp i32 %6376 to float
  %6378 = fadd fast float %6377, 0xC1CFBF8940000000
  %6379 = fmul fast float %6378, %6366
  %6380 = fadd fast float %6379, 0x41CFBF8940000000
  %6381 = fptosi float %6380 to i32
  %6382 = bitcast i32 %6381 to float
  %6383 = fmul fast float %6375, %6365
  %6384 = fmul fast float %6382, %6365
  %6385 = fsub fast float %6368, %6383
  %6386 = fadd fast float %6384, %6368
  %6387 = call float @dx.op.unary.f32(i32 7, float %6385)  ; Saturate(value)
  %6388 = call float @dx.op.unary.f32(i32 7, float %6386)  ; Saturate(value)
  %6389 = fsub fast float %6363, %6387
  %6390 = fsub fast float %6388, %6387
  %6391 = bitcast float %6390 to i32
  %6392 = sub nsw i32 2129859010, %6391
  %6393 = bitcast i32 %6392 to float
  %6394 = fmul fast float %6393, %6389
  %6395 = call float @dx.op.unary.f32(i32 7, float %6394)  ; Saturate(value)
  %6396 = fcmp fast olt float %6395, 0x3F70101020000000
  br i1 %6396, label %6535, label %6397

; <label>:6397                                    ; preds = %6359, %6262
  %6398 = phi float [ %6395, %6359 ], [ %5965, %6262 ]
  %6399 = fmul fast float %6398, %6265
  %6400 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %6401 = extractvalue %dx.types.CBufRet.i32 %6400, 1
  %6402 = extractvalue %dx.types.CBufRet.i32 %6400, 0
  %6403 = add i32 %6402, 0
  %6404 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %6403, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6405 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %6404, %dx.types.Handle %105, float %6354, float %6355, float undef, float undef, i32 0, i32 0, i32 undef, float %6317, float %6318, float undef, float %6321, float %6322, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %6406 = extractvalue %dx.types.ResRet.f32 %6405, 0
  %6407 = extractvalue %dx.types.ResRet.f32 %6405, 1
  %6408 = extractvalue %dx.types.ResRet.f32 %6405, 2
  %6409 = extractvalue %dx.types.ResRet.f32 %6405, 3
  %6410 = and i32 %6401, 255
  %6411 = uitofp i32 %6410 to float
  %6412 = lshr i32 %6401, 8
  %6413 = and i32 %6412, 255
  %6414 = uitofp i32 %6413 to float
  %6415 = fmul fast float %6409, %6411
  %6416 = fadd fast float %6415, %6414
  %6417 = fmul fast float %6416, 0x3F70101000000000
  %6418 = fadd fast float %6417, 0xBFB99999A0000000
  %6419 = call float @dx.op.unary.f32(i32 7, float %6418)  ; Saturate(value)
  %6420 = fmul fast float %6419, 0x3FF1C71C80000000
  %6421 = call float @dx.op.binary.f32(i32 36, float %6417, float 0x3FB99999A0000000)  ; FMin(a,b)
  %6422 = fsub fast float 1.000000e+00, %6420
  %6423 = call float @dx.op.unary.f32(i32 7, float %6422)  ; Saturate(value)
  %6424 = fmul fast float %6423, %6406
  %6425 = fmul fast float %6423, %6407
  %6426 = fmul fast float %6423, %6408
  %6427 = call float @dx.op.unary.f32(i32 7, float %6424)  ; Saturate(value)
  %6428 = call float @dx.op.unary.f32(i32 7, float %6425)  ; Saturate(value)
  %6429 = call float @dx.op.unary.f32(i32 7, float %6426)  ; Saturate(value)
  %6430 = fmul fast float %6420, %6406
  %6431 = fmul fast float %6420, %6407
  %6432 = fmul fast float %6420, %6408
  %6433 = fadd fast float %6430, %6421
  %6434 = fadd fast float %6431, %6421
  %6435 = fadd fast float %6432, %6421
  %6436 = call float @dx.op.unary.f32(i32 7, float %6433)  ; Saturate(value)
  %6437 = call float @dx.op.unary.f32(i32 7, float %6434)  ; Saturate(value)
  %6438 = call float @dx.op.unary.f32(i32 7, float %6435)  ; Saturate(value)
  %6439 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %6440 = extractvalue %dx.types.CBufRet.i32 %6439, 3
  %6441 = extractvalue %dx.types.CBufRet.i32 %6439, 2
  %6442 = add i32 %6441, 0
  %6443 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %6442, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6444 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %6443, %dx.types.Handle %105, float %6354, float %6355, float undef, float undef, i32 0, i32 0, i32 undef, float %6317, float %6318, float undef, float %6321, float %6322, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %6445 = extractvalue %dx.types.ResRet.f32 %6444, 0
  %6446 = extractvalue %dx.types.ResRet.f32 %6444, 1
  %6447 = extractvalue %dx.types.ResRet.f32 %6444, 2
  %6448 = extractvalue %dx.types.ResRet.f32 %6444, 3
  %6449 = and i32 %6440, 255
  %6450 = uitofp i32 %6449 to float
  %6451 = lshr i32 %6440, 8
  %6452 = and i32 %6451, 255
  %6453 = uitofp i32 %6452 to float
  %6454 = lshr i32 %6440, 16
  %6455 = and i32 %6454, 255
  %6456 = uitofp i32 %6455 to float
  %6457 = fmul fast float %6456, 0x3F70101000000000
  %6458 = fmul fast float %6445, %6450
  %6459 = fadd fast float %6458, %6453
  %6460 = fmul fast float %6459, 0x3F70101000000000
  %6461 = fadd fast float %6446, -5.000000e-01
  %6462 = fadd fast float %6448, -5.000000e-01
  %6463 = fmul fast float %6461, %6457
  %6464 = fmul fast float %6462, %6457
  %6465 = fadd fast float %6463, 5.000000e-01
  %6466 = fadd fast float %6464, 5.000000e-01
  %6467 = fmul fast float %6465, 2.000000e+00
  %6468 = fadd fast float %6467, -1.000000e+00
  %6469 = fmul fast float %6466, 2.000000e+00
  %6470 = fadd fast float %6469, -1.000000e+00
  %6471 = fadd fast float %6468, %6470
  %6472 = fmul fast float %6471, 5.000000e-01
  %6473 = fsub fast float %6468, %6470
  %6474 = fmul fast float %6473, 5.000000e-01
  %6475 = call float @dx.op.unary.f32(i32 6, float %6472)  ; FAbs(value)
  %6476 = fsub fast float 1.000000e+00, %6475
  %6477 = call float @dx.op.unary.f32(i32 6, float %6474)  ; FAbs(value)
  %6478 = fsub fast float %6476, %6477
  %6479 = call float @dx.op.dot3.f32(i32 55, float %6472, float %6474, float %6478, float %6472, float %6474, float %6478)  ; Dot3(ax,ay,az,bx,by,bz)
  %6480 = call float @dx.op.unary.f32(i32 25, float %6479)  ; Rsqrt(value)
  %6481 = fmul fast float %6472, %6480
  %6482 = fmul fast float %6474, %6480
  %6483 = select i1 %6310, i32 %6300, i32 %6301
  %6484 = select i1 %6308, i32 %6299, i32 %6483
  %6485 = sitofp i32 %6484 to float
  %6486 = fmul fast float %6478, %6485
  %6487 = fmul fast float %6486, %6480
  %6488 = select i1 %6310, float %6487, float %6482
  %6489 = select i1 %6310, float %6482, float %6487
  %6490 = select i1 %6308, float %6487, float %6481
  %6491 = select i1 %6308, float %6482, float %6488
  %6492 = select i1 %6308, float %6481, float %6489
  %6493 = fsub fast float %6427, %6257
  %6494 = fsub fast float %6428, %6258
  %6495 = fsub fast float %6429, %6259
  %6496 = fmul fast float %6493, %6399
  %6497 = fmul fast float %6494, %6399
  %6498 = fmul fast float %6495, %6399
  %6499 = fadd fast float %6496, %6257
  %6500 = fadd fast float %6497, %6258
  %6501 = fadd fast float %6498, %6259
  %6502 = fsub fast float %6436, %6251
  %6503 = fsub fast float %6437, %6252
  %6504 = fsub fast float %6438, %6253
  %6505 = fmul fast float %6502, %6399
  %6506 = fmul fast float %6503, %6399
  %6507 = fmul fast float %6504, %6399
  %6508 = fadd fast float %6505, %6251
  %6509 = fadd fast float %6506, %6252
  %6510 = fadd fast float %6507, %6253
  %6511 = fadd fast float %6490, %6254
  %6512 = fadd fast float %6491, %6255
  %6513 = fadd fast float %6492, %6256
  %6514 = call float @dx.op.dot3.f32(i32 55, float %6511, float %6512, float %6513, float %6511, float %6512, float %6513)  ; Dot3(ax,ay,az,bx,by,bz)
  %6515 = call float @dx.op.unary.f32(i32 25, float %6514)  ; Rsqrt(value)
  %6516 = fmul fast float %6511, %6515
  %6517 = fmul fast float %6512, %6515
  %6518 = fmul fast float %6513, %6515
  %6519 = fsub fast float %6516, %6254
  %6520 = fsub fast float %6517, %6255
  %6521 = fsub fast float %6518, %6256
  %6522 = fmul fast float %6519, %6399
  %6523 = fmul fast float %6520, %6399
  %6524 = fmul fast float %6521, %6399
  %6525 = fadd fast float %6522, %6254
  %6526 = fadd fast float %6523, %6255
  %6527 = fadd fast float %6524, %6256
  %6528 = call float @dx.op.binary.f32(i32 36, float %6261, float %6447)  ; FMin(a,b)
  %6529 = fsub fast float %6528, %6261
  %6530 = fmul fast float %6529, %6399
  %6531 = fadd fast float %6530, %6261
  %6532 = fsub fast float %6460, %6260
  %6533 = fmul fast float %6532, %6399
  %6534 = fadd fast float %6533, %6260
  br label %6535

; <label>:6535                                    ; preds = %6397, %6359, %6250, %5957
  %6536 = phi float [ %6508, %6397 ], [ %6251, %6359 ], [ %6251, %6250 ], [ %4664, %5957 ]
  %6537 = phi float [ %6509, %6397 ], [ %6252, %6359 ], [ %6252, %6250 ], [ %4665, %5957 ]
  %6538 = phi float [ %6510, %6397 ], [ %6253, %6359 ], [ %6253, %6250 ], [ %4666, %5957 ]
  %6539 = phi float [ %6525, %6397 ], [ %6254, %6359 ], [ %6254, %6250 ], [ %4625, %5957 ]
  %6540 = phi float [ %6526, %6397 ], [ %6255, %6359 ], [ %6255, %6250 ], [ %4626, %5957 ]
  %6541 = phi float [ %6527, %6397 ], [ %6256, %6359 ], [ %6256, %6250 ], [ %4627, %5957 ]
  %6542 = phi float [ %6499, %6397 ], [ %6257, %6359 ], [ %6257, %6250 ], [ %4745, %5957 ]
  %6543 = phi float [ %6500, %6397 ], [ %6258, %6359 ], [ %6258, %6250 ], [ %4746, %5957 ]
  %6544 = phi float [ %6501, %6397 ], [ %6259, %6359 ], [ %6259, %6250 ], [ %4747, %5957 ]
  %6545 = phi float [ %6534, %6397 ], [ %6260, %6359 ], [ %6260, %6250 ], [ %4667, %5957 ]
  %6546 = phi float [ %6531, %6397 ], [ %6261, %6359 ], [ %6261, %6250 ], [ %4640, %5957 ]
  %6547 = fcmp fast une float %5962, 0.000000e+00
  %6548 = call float @dx.op.dot3.f32(i32 55, float %164, float %165, float %166, float %164, float %165, float %166)  ; Dot3(ax,ay,az,bx,by,bz)
  %6549 = call float @dx.op.unary.f32(i32 25, float %6548)  ; Rsqrt(value)
  br i1 %6547, label %6557, label %6550

; <label>:6550                                    ; preds = %6535
  %6551 = fmul fast float %6549, %164
  %6552 = fmul fast float %6549, %165
  %6553 = fmul fast float %6549, %166
  %6554 = fsub fast float -0.000000e+00, %6551
  %6555 = fsub fast float -0.000000e+00, %6552
  %6556 = fsub fast float -0.000000e+00, %6553
  br label %6918

; <label>:6557                                    ; preds = %6535
  %6558 = fmul fast float %164, %6549
  %6559 = fsub fast float -0.000000e+00, %6558
  %6560 = fmul fast float %165, %6549
  %6561 = fsub fast float -0.000000e+00, %6560
  %6562 = fmul fast float %166, %6549
  %6563 = fsub fast float -0.000000e+00, %6562
  %6564 = call float @dx.op.dot3.f32(i32 55, float %6559, float %6561, float %6563, float %116, float %117, float %118)  ; Dot3(ax,ay,az,bx,by,bz)
  %6565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6566 = fmul fast float %5962, 2.500000e+00
  %6567 = call float @dx.op.unary.f32(i32 7, float %6566)  ; Saturate(value)
  %6568 = fmul fast float %5962, 0x4013FFFFE0000000
  %6569 = fadd fast float %6568, 0xBFFFFFFFE0000000
  %6570 = call float @dx.op.unary.f32(i32 7, float %6569)  ; Saturate(value)
  %6571 = fmul fast float %5962, 0x4004000020000000
  %6572 = fadd fast float %6571, 0xBFF8000040000000
  %6573 = call float @dx.op.unary.f32(i32 7, float %6572)  ; Saturate(value)
  %6574 = call float @dx.op.unary.f32(i32 7, float %6567)  ; Saturate(value)
  %6575 = fmul fast float %4646, 1.000000e+01
  %6576 = call float @dx.op.unary.f32(i32 7, float %6575)  ; Saturate(value)
  %6577 = fmul fast float %6576, 2.000000e+00
  %6578 = fsub fast float 3.000000e+00, %6577
  %6579 = fmul fast float %6576, %6576
  %6580 = fmul fast float %6579, %6578
  %6581 = fsub fast float 1.000000e+00, %6580
  %6582 = fsub fast float 0x3FE3333340000000, %6545
  %6583 = fmul fast float %6582, 0x400AAAAAA0000000
  %6584 = call float @dx.op.unary.f32(i32 7, float %6583)  ; Saturate(value)
  %6585 = fmul fast float %6581, %6584
  %6586 = fmul fast float %6542, 0x3FEA2B8620000000
  %6587 = fmul fast float %6543, 0x3FEA2B8620000000
  %6588 = fmul fast float %6544, 0x3FEA2B8620000000
  %6589 = fadd fast float %6586, 0x3FC81DFBA0000000
  %6590 = fmul fast float %6589, %6542
  %6591 = fadd fast float %6590, 0x3F910E6020000000
  %6592 = fadd fast float %6587, 0x3FC81DFBA0000000
  %6593 = fmul fast float %6592, %6543
  %6594 = fadd fast float %6593, 0x3F910E6020000000
  %6595 = fadd fast float %6588, 0x3FC81DFBA0000000
  %6596 = fmul fast float %6595, %6544
  %6597 = fadd fast float %6596, 0x3F910E6020000000
  %6598 = call float @dx.op.unary.f32(i32 7, float %6591)  ; Saturate(value)
  %6599 = call float @dx.op.unary.f32(i32 7, float %6594)  ; Saturate(value)
  %6600 = call float @dx.op.unary.f32(i32 7, float %6597)  ; Saturate(value)
  %6601 = fsub fast float %6598, %6542
  %6602 = fsub fast float %6599, %6543
  %6603 = fsub fast float %6600, %6544
  %6604 = fmul fast float %6601, %6574
  %6605 = fmul fast float %6604, %6585
  %6606 = fmul fast float %6602, %6574
  %6607 = fmul fast float %6606, %6585
  %6608 = fmul fast float %6603, %6574
  %6609 = fmul fast float %6608, %6585
  %6610 = fadd fast float %6605, %6542
  %6611 = fadd fast float %6607, %6543
  %6612 = fadd fast float %6609, %6544
  %6613 = fmul fast float %6546, %6546
  %6614 = fmul fast float %6613, %6613
  %6615 = fadd fast float %6570, 1.000000e+00
  %6616 = fsub fast float %6615, %6585
  %6617 = call float @dx.op.unary.f32(i32 7, float %6616)  ; Saturate(value)
  %6618 = call float @dx.op.dot3.f32(i32 55, float %116, float %117, float %118, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6619 = call float @dx.op.unary.f32(i32 7, float %6618)  ; Saturate(value)
  %6620 = fsub fast float 1.000000e+00, %6614
  %6621 = call float @dx.op.binary.f32(i32 36, float %6617, float %6620)  ; FMin(a,b)
  %6622 = call float @dx.op.unary.f32(i32 7, float %6573)  ; Saturate(value)
  %6623 = call float @dx.op.binary.f32(i32 35, float %6621, float %6622)  ; FMax(a,b)
  %6624 = fadd fast float %6619, 0xBFE4CCCCC0000000
  %6625 = fmul fast float %6624, 0x4006DB6DA0000000
  %6626 = call float @dx.op.unary.f32(i32 7, float %6625)  ; Saturate(value)
  %6627 = fmul fast float %6626, 2.000000e+00
  %6628 = fsub fast float 3.000000e+00, %6627
  %6629 = bitcast float %6536 to i32
  %6630 = ashr i32 %6629, 1
  %6631 = add nsw i32 %6630, 532487669
  %6632 = bitcast i32 %6631 to float
  %6633 = fsub fast float 1.000000e+00, %6632
  %6634 = bitcast float %6633 to i32
  %6635 = sub nsw i32 2129859010, %6634
  %6636 = bitcast i32 %6635 to float
  %6637 = fmul fast float %6636, 2.000000e+00
  %6638 = bitcast float %6537 to i32
  %6639 = ashr i32 %6638, 1
  %6640 = add nsw i32 %6639, 532487669
  %6641 = bitcast i32 %6640 to float
  %6642 = fsub fast float 1.000000e+00, %6641
  %6643 = bitcast float %6642 to i32
  %6644 = sub nsw i32 2129859010, %6643
  %6645 = bitcast i32 %6644 to float
  %6646 = fmul fast float %6645, 2.000000e+00
  %6647 = bitcast float %6538 to i32
  %6648 = ashr i32 %6647, 1
  %6649 = add nsw i32 %6648, 532487669
  %6650 = bitcast i32 %6649 to float
  %6651 = fsub fast float 1.000000e+00, %6650
  %6652 = bitcast float %6651 to i32
  %6653 = sub nsw i32 2129859010, %6652
  %6654 = bitcast i32 %6653 to float
  %6655 = fmul fast float %6654, 2.000000e+00
  %6656 = fsub fast float 0x4002A9FBE0000000, %6637
  %6657 = fadd fast float %6637, 0x3FD54FDF00000000
  %6658 = bitcast float %6657 to i32
  %6659 = sub nsw i32 2129859010, %6658
  %6660 = bitcast i32 %6659 to float
  %6661 = fmul fast float %6660, %6656
  %6662 = fmul fast float %6661, %6661
  %6663 = fsub fast float 0x4002A9FBE0000000, %6646
  %6664 = fadd fast float %6646, 0x3FD54FDF00000000
  %6665 = bitcast float %6664 to i32
  %6666 = sub nsw i32 2129859010, %6665
  %6667 = bitcast i32 %6666 to float
  %6668 = fmul fast float %6667, %6663
  %6669 = fmul fast float %6668, %6668
  %6670 = fsub fast float 0x4002A9FBE0000000, %6655
  %6671 = fadd fast float %6655, 0x3FD54FDF00000000
  %6672 = bitcast float %6671 to i32
  %6673 = sub nsw i32 2129859010, %6672
  %6674 = bitcast i32 %6673 to float
  %6675 = fmul fast float %6674, %6670
  %6676 = fmul fast float %6675, %6675
  %6677 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %6662)  ; FMax(a,b)
  %6678 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %6669)  ; FMax(a,b)
  %6679 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %6676)  ; FMax(a,b)
  %6680 = fsub fast float 1.000000e+00, %6564
  %6681 = fadd fast float %6680, %6581
  %6682 = call float @dx.op.unary.f32(i32 7, float %6681)  ; Saturate(value)
  %6683 = fsub fast float 1.000000e+00, %4830
  %6684 = fmul fast float %6623, %6683
  %6685 = fmul fast float %6626, %6626
  %6686 = fmul fast float %6685, %6684
  %6687 = fmul fast float %6686, %6628
  %6688 = fmul fast float %6683, 0xBFE99999A0000000
  %6689 = fmul fast float %6688, %6574
  %6690 = fmul fast float %6689, %6585
  %6691 = fadd fast float %6690, 1.000000e+00
  %6692 = fadd fast float %6545, -1.000000e+00
  %6693 = fmul fast float %6691, %6692
  %6694 = fadd fast float %6693, 1.000000e+00
  %6695 = fsub fast float %6677, %6536
  %6696 = fsub fast float %6678, %6537
  %6697 = fsub fast float %6679, %6538
  %6698 = fmul fast float %6687, %6695
  %6699 = fmul fast float %6687, %6696
  %6700 = fmul fast float %6687, %6697
  %6701 = fadd fast float %6698, %6536
  %6702 = fadd fast float %6699, %6537
  %6703 = fadd fast float %6700, %6538
  %6704 = fsub fast float %116, %6539
  %6705 = fsub fast float %117, %6540
  %6706 = fsub fast float %118, %6541
  %6707 = fmul fast float %6687, %6704
  %6708 = fmul fast float %6687, %6705
  %6709 = fmul fast float %6687, %6706
  %6710 = fadd fast float %6707, %6539
  %6711 = fadd fast float %6708, %6540
  %6712 = fadd fast float %6709, %6541
  %6713 = fmul fast float %6687, %6682
  %6714 = call float @dx.op.unary.f32(i32 7, float %6694)  ; Saturate(value)
  %6715 = fsub fast float 1.000000e+00, %6714
  %6716 = fmul fast float %6713, %6715
  %6717 = fadd fast float %6716, %6714
  %6718 = fsub fast float 1.000000e+00, %6546
  %6719 = fmul fast float %6687, %6718
  %6720 = fadd fast float %6719, %6546
  %6721 = fcmp fast une float %5963, 0.000000e+00
  %6722 = fcmp fast ogt float %6619, 0x3FE4CCCCC0000000
  %6723 = and i1 %6721, %6722
  br i1 %6723, label %6724, label %6910

; <label>:6724                                    ; preds = %6557
  %6725 = extractvalue %dx.types.CBufRet.f32 %6565, 1
  %6726 = fadd fast float %6725, %165
  %6727 = extractvalue %dx.types.CBufRet.f32 %6565, 0
  %6728 = fadd fast float %6727, %164
  %6729 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %6730 = extractvalue %dx.types.CBufRet.f32 %6729, 3
  %6731 = fadd fast float %6730, 0x3FC0A3D700000000
  %6732 = fmul fast float %6731, 0x3FF6666660000000
  %6733 = fmul fast float %6730, 0x3FF2978D40000000
  %6734 = fmul fast float %6730, 0x3FF5BA5E40000000
  %6735 = fmul fast float %6730, 0x3FF94FDF40000000
  %6736 = call float @dx.op.unary.f32(i32 6, float %6728)  ; FAbs(value)
  %6737 = call float @dx.op.unary.f32(i32 6, float %6726)  ; FAbs(value)
  %6738 = fmul fast float %6736, 0x3F8EB851E0000000
  %6739 = fmul fast float %6737, 0x3F8EB851E0000000
  %6740 = fmul fast float %5963, 4.000000e+00
  %6741 = call float @dx.op.unary.f32(i32 7, float %6740)  ; Saturate(value)
  %6742 = fadd fast float %6738, 2.500000e-01
  %6743 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %45, float %6742, float %6739, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6744 = extractvalue %dx.types.ResRet.f32 %6743, 0
  %6745 = extractvalue %dx.types.ResRet.f32 %6743, 1
  %6746 = extractvalue %dx.types.ResRet.f32 %6743, 2
  %6747 = extractvalue %dx.types.ResRet.f32 %6743, 3
  %6748 = fmul fast float %6745, 2.000000e+00
  %6749 = fmul fast float %6746, 2.000000e+00
  %6750 = fadd fast float %6748, -1.000000e+00
  %6751 = fadd fast float %6749, -1.000000e+00
  %6752 = fsub fast float 1.000000e+00, %6741
  %6753 = fmul fast float %6752, 8.000000e+00
  %6754 = call float @dx.op.unary.f32(i32 21, float %6753)  ; Exp(value)
  %6755 = fmul fast float %6747, %6754
  %6756 = fadd fast float %6732, -1.000000e+00
  %6757 = fadd fast float %6756, %6747
  %6758 = fadd fast float %6757, %6755
  %6759 = frem fast float %6758, %6754
  %6760 = fcmp fast ole float %6759, 1.000000e+00
  %6761 = call float @dx.op.unary.f32(i32 22, float %6759)  ; Frc(value)
  %6762 = select i1 %6760, float %6761, float 0.000000e+00
  %6763 = fadd fast float %6744, -1.000000e+00
  %6764 = fadd fast float %6763, %6762
  %6765 = fsub fast float 1.000000e+00, %6762
  %6766 = call float @dx.op.unary.f32(i32 7, float %6765)  ; Saturate(value)
  %6767 = fmul fast float %6766, %6744
  %6768 = fmul fast float %6764, 8.000000e+00
  %6769 = call float @dx.op.binary.f32(i32 35, float %6768, float 0.000000e+00)  ; FMax(a,b)
  %6770 = call float @dx.op.binary.f32(i32 36, float %6769, float 4.000000e+00)  ; FMin(a,b)
  %6771 = fmul fast float %6770, 0x400921FB60000000
  %6772 = call float @dx.op.unary.f32(i32 13, float %6771)  ; Sin(value)
  %6773 = fadd fast float %6762, -1.000000e+00
  %6774 = fmul fast float %6767, %6773
  %6775 = fmul fast float %6774, %6772
  %6776 = fmul fast float %6775, %6750
  %6777 = fmul fast float %6775, %6751
  %6778 = fadd fast float %6740, -1.000000e+00
  %6779 = call float @dx.op.unary.f32(i32 7, float %6778)  ; Saturate(value)
  %6780 = fadd fast float %6738, 0xBFE19999A0000000
  %6781 = fadd fast float %6739, 0x3FD3D70A40000000
  %6782 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %45, float %6780, float %6781, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6783 = extractvalue %dx.types.ResRet.f32 %6782, 0
  %6784 = extractvalue %dx.types.ResRet.f32 %6782, 1
  %6785 = extractvalue %dx.types.ResRet.f32 %6782, 2
  %6786 = extractvalue %dx.types.ResRet.f32 %6782, 3
  %6787 = fmul fast float %6784, 2.000000e+00
  %6788 = fmul fast float %6785, 2.000000e+00
  %6789 = fadd fast float %6787, -1.000000e+00
  %6790 = fadd fast float %6788, -1.000000e+00
  %6791 = fsub fast float 1.000000e+00, %6779
  %6792 = fmul fast float %6791, 8.000000e+00
  %6793 = call float @dx.op.unary.f32(i32 21, float %6792)  ; Exp(value)
  %6794 = fmul fast float %6786, %6793
  %6795 = fadd fast float %6733, 0xBFE5B22D00000000
  %6796 = fadd fast float %6795, %6786
  %6797 = fadd fast float %6796, %6794
  %6798 = frem fast float %6797, %6793
  %6799 = fcmp fast ole float %6798, 1.000000e+00
  %6800 = call float @dx.op.unary.f32(i32 22, float %6798)  ; Frc(value)
  %6801 = select i1 %6799, float %6800, float 0.000000e+00
  %6802 = fadd fast float %6783, -1.000000e+00
  %6803 = fadd fast float %6802, %6801
  %6804 = fsub fast float 1.000000e+00, %6801
  %6805 = call float @dx.op.unary.f32(i32 7, float %6804)  ; Saturate(value)
  %6806 = fmul fast float %6805, %6783
  %6807 = fmul fast float %6803, 8.000000e+00
  %6808 = call float @dx.op.binary.f32(i32 35, float %6807, float 0.000000e+00)  ; FMax(a,b)
  %6809 = call float @dx.op.binary.f32(i32 36, float %6808, float 4.000000e+00)  ; FMin(a,b)
  %6810 = fmul fast float %6809, 0x400921FB60000000
  %6811 = call float @dx.op.unary.f32(i32 13, float %6810)  ; Sin(value)
  %6812 = fadd fast float %6801, -1.000000e+00
  %6813 = fmul fast float %6806, %6812
  %6814 = fmul fast float %6813, %6811
  %6815 = fmul fast float %6814, %6789
  %6816 = fmul fast float %6814, %6790
  %6817 = fadd fast float %6740, -2.000000e+00
  %6818 = call float @dx.op.unary.f32(i32 7, float %6817)  ; Saturate(value)
  %6819 = fadd fast float %6738, 0x3FE3333340000000
  %6820 = fadd fast float %6739, 0x3FEB333340000000
  %6821 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %45, float %6819, float %6820, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6822 = extractvalue %dx.types.ResRet.f32 %6821, 0
  %6823 = extractvalue %dx.types.ResRet.f32 %6821, 1
  %6824 = extractvalue %dx.types.ResRet.f32 %6821, 2
  %6825 = extractvalue %dx.types.ResRet.f32 %6821, 3
  %6826 = fmul fast float %6823, 2.000000e+00
  %6827 = fmul fast float %6824, 2.000000e+00
  %6828 = fadd fast float %6826, -1.000000e+00
  %6829 = fadd fast float %6827, -1.000000e+00
  %6830 = fsub fast float 1.000000e+00, %6818
  %6831 = fmul fast float %6830, 8.000000e+00
  %6832 = call float @dx.op.unary.f32(i32 21, float %6831)  ; Exp(value)
  %6833 = fmul fast float %6825, %6832
  %6834 = fadd fast float %6734, 0xBFD5E35400000000
  %6835 = fadd fast float %6834, %6825
  %6836 = fadd fast float %6835, %6833
  %6837 = frem fast float %6836, %6832
  %6838 = fcmp fast ole float %6837, 1.000000e+00
  %6839 = call float @dx.op.unary.f32(i32 22, float %6837)  ; Frc(value)
  %6840 = select i1 %6838, float %6839, float 0.000000e+00
  %6841 = fadd fast float %6822, -1.000000e+00
  %6842 = fadd fast float %6841, %6840
  %6843 = fsub fast float 1.000000e+00, %6840
  %6844 = call float @dx.op.unary.f32(i32 7, float %6843)  ; Saturate(value)
  %6845 = fmul fast float %6844, %6822
  %6846 = fmul fast float %6842, 8.000000e+00
  %6847 = call float @dx.op.binary.f32(i32 35, float %6846, float 0.000000e+00)  ; FMax(a,b)
  %6848 = call float @dx.op.binary.f32(i32 36, float %6847, float 4.000000e+00)  ; FMin(a,b)
  %6849 = fmul fast float %6848, 0x400921FB60000000
  %6850 = call float @dx.op.unary.f32(i32 13, float %6849)  ; Sin(value)
  %6851 = fadd fast float %6840, -1.000000e+00
  %6852 = fmul fast float %6845, %6851
  %6853 = fmul fast float %6852, %6850
  %6854 = fmul fast float %6853, %6828
  %6855 = fmul fast float %6853, %6829
  %6856 = fadd fast float %6740, -3.000000e+00
  %6857 = call float @dx.op.unary.f32(i32 7, float %6856)  ; Saturate(value)
  %6858 = fadd fast float %6738, 5.000000e-01
  %6859 = fadd fast float %6739, -7.500000e-01
  %6860 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %45, float %6858, float %6859, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6861 = extractvalue %dx.types.ResRet.f32 %6860, 0
  %6862 = extractvalue %dx.types.ResRet.f32 %6860, 1
  %6863 = extractvalue %dx.types.ResRet.f32 %6860, 2
  %6864 = extractvalue %dx.types.ResRet.f32 %6860, 3
  %6865 = fmul fast float %6862, 2.000000e+00
  %6866 = fmul fast float %6863, 2.000000e+00
  %6867 = fadd fast float %6865, -1.000000e+00
  %6868 = fadd fast float %6866, -1.000000e+00
  %6869 = fsub fast float 1.000000e+00, %6857
  %6870 = fmul fast float %6869, 8.000000e+00
  %6871 = call float @dx.op.unary.f32(i32 21, float %6870)  ; Exp(value)
  %6872 = fmul fast float %6864, %6871
  %6873 = fadd fast float %6735, 0xBF78938000000000
  %6874 = fadd fast float %6873, %6864
  %6875 = fadd fast float %6874, %6872
  %6876 = frem fast float %6875, %6871
  %6877 = fcmp fast ole float %6876, 1.000000e+00
  %6878 = call float @dx.op.unary.f32(i32 22, float %6876)  ; Frc(value)
  %6879 = select i1 %6877, float %6878, float 0.000000e+00
  %6880 = fadd fast float %6861, -1.000000e+00
  %6881 = fadd fast float %6880, %6879
  %6882 = fsub fast float 1.000000e+00, %6879
  %6883 = call float @dx.op.unary.f32(i32 7, float %6882)  ; Saturate(value)
  %6884 = fmul fast float %6883, %6861
  %6885 = fmul fast float %6881, 8.000000e+00
  %6886 = call float @dx.op.binary.f32(i32 35, float %6885, float 0.000000e+00)  ; FMax(a,b)
  %6887 = call float @dx.op.binary.f32(i32 36, float %6886, float 4.000000e+00)  ; FMin(a,b)
  %6888 = fmul fast float %6887, 0x400921FB60000000
  %6889 = call float @dx.op.unary.f32(i32 13, float %6888)  ; Sin(value)
  %6890 = fadd fast float %6879, -1.000000e+00
  %6891 = fmul fast float %6884, %6890
  %6892 = fmul fast float %6891, %6889
  %6893 = fmul fast float %6892, %6867
  %6894 = fmul fast float %6892, %6868
  %6895 = fadd fast float %6815, %6776
  %6896 = fadd fast float %6816, %6777
  %6897 = fadd fast float %6895, %6854
  %6898 = fadd fast float %6896, %6855
  %6899 = fadd fast float %6897, %6893
  %6900 = fadd fast float %6898, %6894
  %6901 = fmul fast float %6619, 0x4006DB6DA0000000
  %6902 = fadd fast float %6901, 0xBFFDB6DB40000000
  %6903 = call float @dx.op.unary.f32(i32 7, float %6902)  ; Saturate(value)
  %6904 = fmul fast float %6903, %6574
  %6905 = fmul fast float %6904, %6683
  %6906 = fmul fast float %6905, %6899
  %6907 = fmul fast float %6905, %6900
  %6908 = fadd fast float %6906, %6710
  %6909 = fadd fast float %6907, %6711
  br label %6910

; <label>:6910                                    ; preds = %6724, %6557
  %6911 = phi float [ %6710, %6557 ], [ %6908, %6724 ]
  %6912 = phi float [ %6711, %6557 ], [ %6909, %6724 ]
  %6913 = call float @dx.op.dot3.f32(i32 55, float %6911, float %6912, float %6712, float %6911, float %6912, float %6712)  ; Dot3(ax,ay,az,bx,by,bz)
  %6914 = call float @dx.op.unary.f32(i32 25, float %6913)  ; Rsqrt(value)
  %6915 = fmul fast float %6914, %6911
  %6916 = fmul fast float %6914, %6912
  %6917 = fmul fast float %6914, %6712
  br label %6918

; <label>:6918                                    ; preds = %6910, %6550
  %6919 = phi float [ %6556, %6550 ], [ %6563, %6910 ]
  %6920 = phi float [ %6555, %6550 ], [ %6561, %6910 ]
  %6921 = phi float [ %6554, %6550 ], [ %6559, %6910 ]
  %6922 = phi float [ %6553, %6550 ], [ %6562, %6910 ]
  %6923 = phi float [ %6552, %6550 ], [ %6560, %6910 ]
  %6924 = phi float [ %6551, %6550 ], [ %6558, %6910 ]
  %6925 = phi float [ %6536, %6550 ], [ %6701, %6910 ]
  %6926 = phi float [ %6537, %6550 ], [ %6702, %6910 ]
  %6927 = phi float [ %6538, %6550 ], [ %6703, %6910 ]
  %6928 = phi float [ %6539, %6550 ], [ %6915, %6910 ]
  %6929 = phi float [ %6540, %6550 ], [ %6916, %6910 ]
  %6930 = phi float [ %6541, %6550 ], [ %6917, %6910 ]
  %6931 = phi float [ %6542, %6550 ], [ %6610, %6910 ]
  %6932 = phi float [ %6543, %6550 ], [ %6611, %6910 ]
  %6933 = phi float [ %6544, %6550 ], [ %6612, %6910 ]
  %6934 = phi float [ %6545, %6550 ], [ %6717, %6910 ]
  %6935 = phi float [ %6546, %6550 ], [ %6720, %6910 ]
  %6936 = select i1 %225, float 0.000000e+00, float %6927
  %6937 = call float @dx.op.dot3.f32(i32 55, float %6928, float %6929, float %6930, float %6921, float %6920, float %6919)  ; Dot3(ax,ay,az,bx,by,bz)
  %6938 = call float @dx.op.unary.f32(i32 7, float %6937)  ; Saturate(value)
  %6939 = call float @dx.op.dot3.f32(i32 55, float %6924, float %6923, float %6922, float %6928, float %6929, float %6930)  ; Dot3(ax,ay,az,bx,by,bz)
  %6940 = fmul fast float %6939, 2.000000e+00
  %6941 = fmul fast float %6940, %6928
  %6942 = fmul fast float %6940, %6929
  %6943 = fmul fast float %6940, %6930
  %6944 = fsub fast float %6924, %6941
  %6945 = fsub fast float %6923, %6942
  %6946 = fsub fast float %6922, %6943
  %6947 = call float @dx.op.binary.f32(i32 36, float %6935, float 1.000000e+00)  ; FMin(a,b)
  %6948 = fsub fast float 1.000000e+00, %6947
  %6949 = bitcast float %6948 to i32
  %6950 = ashr i32 %6949, 1
  %6951 = add nsw i32 %6950, 532487669
  %6952 = bitcast i32 %6951 to float
  %6953 = fsub fast float 1.000000e+00, %6934
  %6954 = call float @dx.op.binary.f32(i32 35, float %6953, float 0x3F847AE140000000)  ; FMax(a,b)
  %6955 = fmul fast float %6954, %6954
  %6956 = fmul fast float %6955, %6955
  %6957 = call float @dx.op.unary.f32(i32 7, float %6938)  ; Saturate(value)
  %6958 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %46, float %6952, float %6956, float %6957, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6959 = extractvalue %dx.types.ResRet.f32 %6958, 0
  %6960 = fsub fast float 1.000000e+00, %6935
  %6961 = bitcast float %6960 to i32
  %6962 = sub nsw i32 2129859010, %6961
  %6963 = call float @dx.op.dot3.f32(i32 55, float %77, float %73, float %69, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6964 = fmul fast float %6963, 0x3FD20DD760000000
  %6965 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %77)  ; FMax(a,b)
  %6966 = call float @dx.op.dot3.f32(i32 55, float %78, float %79, float %80, float %78, float %79, float %80)  ; Dot3(ax,ay,az,bx,by,bz)
  %6967 = fcmp fast oeq float %6966, 0.000000e+00
  %6968 = fcmp fast oeq float %6965, 0.000000e+00
  %6969 = or i1 %6968, %6967
  br i1 %6969, label %6999, label %6970

; <label>:6970                                    ; preds = %6918
  %6971 = fsub fast float -0.000000e+00, %80
  %6972 = fsub fast float -0.000000e+00, %78
  %6973 = call float @dx.op.unary.f32(i32 24, float %6966)  ; Sqrt(value)
  %6974 = fdiv fast float %6973, %6965
  %6975 = fcmp fast ogt float %6974, 0x3FFB6F8900000000
  %6976 = select i1 %6975, float 0x3FFB6F8900000000, float %6974
  %6977 = fmul fast float %6976, 0x3FE8A23460000000
  %6978 = call float @dx.op.unary.f32(i32 7, float %6977)  ; Saturate(value)
  %6979 = call float @dx.op.binary.f32(i32 35, float %6976, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %6980 = fmul fast float %6978, %6965
  %6981 = fmul fast float %6979, 0x3FF279A740000000
  %6982 = fadd fast float %6981, -1.000000e+00
  %6983 = call float @dx.op.dot3.f32(i32 55, float %6971, float %6972, float %79, float %6971, float %6972, float %79)  ; Dot3(ax,ay,az,bx,by,bz)
  %6984 = call float @dx.op.unary.f32(i32 25, float %6983)  ; Rsqrt(value)
  %6985 = fmul fast float %6984, %6971
  %6986 = fmul fast float %6984, %6972
  %6987 = fmul fast float %6984, %79
  %6988 = fmul fast float %6982, %6982
  %6989 = fsub fast float 1.000000e+00, %6988
  %6990 = fmul fast float %6979, 0x40005F8BE0000000
  %6991 = fsub fast float 0x400C5BF8A0000000, %6990
  %6992 = fdiv fast float %6980, %6991
  %6993 = fmul fast float %6992, 0x3FEE31C3C0000000
  %6994 = fmul fast float %6993, %6989
  %6995 = fmul fast float %6979, 0x3FDACB7480000000
  %6996 = fadd fast float %6995, 0xBFD7347680000000
  %6997 = fmul fast float %6996, %6992
  %6998 = fmul fast float %6997, %6989
  br label %6999

; <label>:6999                                    ; preds = %6970, %6918
  %7000 = phi float [ %6985, %6970 ], [ 0.000000e+00, %6918 ]
  %7001 = phi float [ %6986, %6970 ], [ 0.000000e+00, %6918 ]
  %7002 = phi float [ %6987, %6970 ], [ 0.000000e+00, %6918 ]
  %7003 = phi float [ %6994, %6970 ], [ 0.000000e+00, %6918 ]
  %7004 = phi float [ %6998, %6970 ], [ 0.000000e+00, %6918 ]
  %7005 = call float @dx.op.dot3.f32(i32 55, float %7000, float %7001, float %7002, float %6928, float %6929, float %6930)  ; Dot3(ax,ay,az,bx,by,bz)
  %7006 = fmul fast float %7005, 0x3FDF454380000000
  %7007 = fmul fast float %7005, %7005
  %7008 = fmul fast float %7007, 0x3FEE471020000000
  %7009 = fadd fast float %7008, 0xBFD42F6020000000
  %7010 = fmul fast float %6965, 0x3FD20DD760000000
  %7011 = fmul fast float %7009, %7004
  %7012 = fadd fast float %7011, %7010
  %7013 = fmul fast float %7006, %7003
  %7014 = fadd fast float %7012, %7013
  %7015 = fsub fast float %7012, %7013
  %7016 = call float @dx.op.dot3.f32(i32 55, float %7000, float %7001, float %7002, float %6944, float %6945, float %6946)  ; Dot3(ax,ay,az,bx,by,bz)
  %7017 = fmul fast float %7016, 0x3FDF454380000000
  %7018 = fmul fast float %7016, %7016
  %7019 = fmul fast float %7018, 0x3FEE471020000000
  %7020 = fadd fast float %7019, 0xBFD42F6020000000
  %7021 = call float @dx.op.dot3.f32(i32 55, float %6965, float %7003, float %7004, float 0x3FD20DD760000000, float %7017, float %7020)  ; Dot3(ax,ay,az,bx,by,bz)
  %7022 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %73)  ; FMax(a,b)
  %7023 = call float @dx.op.dot3.f32(i32 55, float %74, float %75, float %76, float %74, float %75, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %7024 = fcmp fast oeq float %7023, 0.000000e+00
  %7025 = fcmp fast oeq float %7022, 0.000000e+00
  %7026 = or i1 %7025, %7024
  br i1 %7026, label %7056, label %7027

; <label>:7027                                    ; preds = %6999
  %7028 = fsub fast float -0.000000e+00, %76
  %7029 = fsub fast float -0.000000e+00, %74
  %7030 = call float @dx.op.unary.f32(i32 24, float %7023)  ; Sqrt(value)
  %7031 = fdiv fast float %7030, %7022
  %7032 = fcmp fast ogt float %7031, 0x3FFB6F8900000000
  %7033 = select i1 %7032, float 0x3FFB6F8900000000, float %7031
  %7034 = fmul fast float %7033, 0x3FE8A23460000000
  %7035 = call float @dx.op.unary.f32(i32 7, float %7034)  ; Saturate(value)
  %7036 = call float @dx.op.binary.f32(i32 35, float %7033, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %7037 = fmul fast float %7035, %7022
  %7038 = fmul fast float %7036, 0x3FF279A740000000
  %7039 = fadd fast float %7038, -1.000000e+00
  %7040 = call float @dx.op.dot3.f32(i32 55, float %7028, float %7029, float %75, float %7028, float %7029, float %75)  ; Dot3(ax,ay,az,bx,by,bz)
  %7041 = call float @dx.op.unary.f32(i32 25, float %7040)  ; Rsqrt(value)
  %7042 = fmul fast float %7041, %7028
  %7043 = fmul fast float %7041, %7029
  %7044 = fmul fast float %7041, %75
  %7045 = fmul fast float %7039, %7039
  %7046 = fsub fast float 1.000000e+00, %7045
  %7047 = fmul fast float %7036, 0x40005F8BE0000000
  %7048 = fsub fast float 0x400C5BF8A0000000, %7047
  %7049 = fdiv fast float %7037, %7048
  %7050 = fmul fast float %7049, 0x3FEE31C3C0000000
  %7051 = fmul fast float %7050, %7046
  %7052 = fmul fast float %7036, 0x3FDACB7480000000
  %7053 = fadd fast float %7052, 0xBFD7347680000000
  %7054 = fmul fast float %7053, %7049
  %7055 = fmul fast float %7054, %7046
  br label %7056

; <label>:7056                                    ; preds = %7027, %6999
  %7057 = phi float [ %7042, %7027 ], [ 0.000000e+00, %6999 ]
  %7058 = phi float [ %7043, %7027 ], [ 0.000000e+00, %6999 ]
  %7059 = phi float [ %7044, %7027 ], [ 0.000000e+00, %6999 ]
  %7060 = phi float [ %7051, %7027 ], [ 0.000000e+00, %6999 ]
  %7061 = phi float [ %7055, %7027 ], [ 0.000000e+00, %6999 ]
  %7062 = call float @dx.op.dot3.f32(i32 55, float %7057, float %7058, float %7059, float %6928, float %6929, float %6930)  ; Dot3(ax,ay,az,bx,by,bz)
  %7063 = fmul fast float %7062, 0x3FDF454380000000
  %7064 = fmul fast float %7062, %7062
  %7065 = fmul fast float %7064, 0x3FEE471020000000
  %7066 = fadd fast float %7065, 0xBFD42F6020000000
  %7067 = fmul fast float %7022, 0x3FD20DD760000000
  %7068 = fmul fast float %7066, %7061
  %7069 = fadd fast float %7068, %7067
  %7070 = fmul fast float %7063, %7060
  %7071 = fadd fast float %7069, %7070
  %7072 = fsub fast float %7069, %7070
  %7073 = call float @dx.op.dot3.f32(i32 55, float %7057, float %7058, float %7059, float %6944, float %6945, float %6946)  ; Dot3(ax,ay,az,bx,by,bz)
  %7074 = fmul fast float %7073, 0x3FDF454380000000
  %7075 = fmul fast float %7073, %7073
  %7076 = fmul fast float %7075, 0x3FEE471020000000
  %7077 = fadd fast float %7076, 0xBFD42F6020000000
  %7078 = call float @dx.op.dot3.f32(i32 55, float %7022, float %7060, float %7061, float 0x3FD20DD760000000, float %7074, float %7077)  ; Dot3(ax,ay,az,bx,by,bz)
  %7079 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %69)  ; FMax(a,b)
  %7080 = call float @dx.op.dot3.f32(i32 55, float %70, float %71, float %72, float %70, float %71, float %72)  ; Dot3(ax,ay,az,bx,by,bz)
  %7081 = fcmp fast oeq float %7080, 0.000000e+00
  %7082 = fcmp fast oeq float %7079, 0.000000e+00
  %7083 = or i1 %7082, %7081
  br i1 %7083, label %7113, label %7084

; <label>:7084                                    ; preds = %7056
  %7085 = fsub fast float -0.000000e+00, %72
  %7086 = fsub fast float -0.000000e+00, %70
  %7087 = call float @dx.op.unary.f32(i32 24, float %7080)  ; Sqrt(value)
  %7088 = fdiv fast float %7087, %7079
  %7089 = fcmp fast ogt float %7088, 0x3FFB6F8900000000
  %7090 = select i1 %7089, float 0x3FFB6F8900000000, float %7088
  %7091 = fmul fast float %7090, 0x3FE8A23460000000
  %7092 = call float @dx.op.unary.f32(i32 7, float %7091)  ; Saturate(value)
  %7093 = call float @dx.op.binary.f32(i32 35, float %7090, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %7094 = fmul fast float %7092, %7079
  %7095 = fmul fast float %7093, 0x3FF279A740000000
  %7096 = fadd fast float %7095, -1.000000e+00
  %7097 = call float @dx.op.dot3.f32(i32 55, float %7085, float %7086, float %71, float %7085, float %7086, float %71)  ; Dot3(ax,ay,az,bx,by,bz)
  %7098 = call float @dx.op.unary.f32(i32 25, float %7097)  ; Rsqrt(value)
  %7099 = fmul fast float %7098, %7085
  %7100 = fmul fast float %7098, %7086
  %7101 = fmul fast float %7098, %71
  %7102 = fmul fast float %7096, %7096
  %7103 = fsub fast float 1.000000e+00, %7102
  %7104 = fmul fast float %7093, 0x40005F8BE0000000
  %7105 = fsub fast float 0x400C5BF8A0000000, %7104
  %7106 = fdiv fast float %7094, %7105
  %7107 = fmul fast float %7106, 0x3FEE31C3C0000000
  %7108 = fmul fast float %7107, %7103
  %7109 = fmul fast float %7093, 0x3FDACB7480000000
  %7110 = fadd fast float %7109, 0xBFD7347680000000
  %7111 = fmul fast float %7110, %7106
  %7112 = fmul fast float %7111, %7103
  br label %7113

; <label>:7113                                    ; preds = %7084, %7056
  %7114 = phi float [ %7099, %7084 ], [ 0.000000e+00, %7056 ]
  %7115 = phi float [ %7100, %7084 ], [ 0.000000e+00, %7056 ]
  %7116 = phi float [ %7101, %7084 ], [ 0.000000e+00, %7056 ]
  %7117 = phi float [ %7108, %7084 ], [ 0.000000e+00, %7056 ]
  %7118 = phi float [ %7112, %7084 ], [ 0.000000e+00, %7056 ]
  %7119 = call float @dx.op.dot3.f32(i32 55, float %7114, float %7115, float %7116, float %6928, float %6929, float %6930)  ; Dot3(ax,ay,az,bx,by,bz)
  %7120 = fmul fast float %7119, 0x3FDF454380000000
  %7121 = fmul fast float %7119, %7119
  %7122 = fmul fast float %7121, 0x3FEE471020000000
  %7123 = fadd fast float %7122, 0xBFD42F6020000000
  %7124 = fmul fast float %7079, 0x3FD20DD760000000
  %7125 = fmul fast float %7123, %7118
  %7126 = fadd fast float %7125, %7124
  %7127 = fmul fast float %7120, %7117
  %7128 = fadd fast float %7126, %7127
  %7129 = fsub fast float %7126, %7127
  %7130 = call float @dx.op.dot3.f32(i32 55, float %7114, float %7115, float %7116, float %6944, float %6945, float %6946)  ; Dot3(ax,ay,az,bx,by,bz)
  %7131 = fmul fast float %7130, 0x3FDF454380000000
  %7132 = fmul fast float %7130, %7130
  %7133 = fmul fast float %7132, 0x3FEE471020000000
  %7134 = fadd fast float %7133, 0xBFD42F6020000000
  %7135 = call float @dx.op.dot3.f32(i32 55, float %7079, float %7117, float %7118, float 0x3FD20DD760000000, float %7131, float %7134)  ; Dot3(ax,ay,az,bx,by,bz)
  %7136 = call float @dx.op.binary.f32(i32 35, float %7014, float 0.000000e+00)  ; FMax(a,b)
  %7137 = call float @dx.op.binary.f32(i32 35, float %7071, float 0.000000e+00)  ; FMax(a,b)
  %7138 = call float @dx.op.binary.f32(i32 35, float %7128, float 0.000000e+00)  ; FMax(a,b)
  %7139 = call float @dx.op.binary.f32(i32 35, float %7015, float 0.000000e+00)  ; FMax(a,b)
  %7140 = call float @dx.op.binary.f32(i32 35, float %7072, float 0.000000e+00)  ; FMax(a,b)
  %7141 = call float @dx.op.binary.f32(i32 35, float %7129, float 0.000000e+00)  ; FMax(a,b)
  %7142 = call float @dx.op.binary.f32(i32 35, float %7021, float 0.000000e+00)  ; FMax(a,b)
  %7143 = call float @dx.op.binary.f32(i32 35, float %7078, float 0.000000e+00)  ; FMax(a,b)
  %7144 = call float @dx.op.binary.f32(i32 35, float %7135, float 0.000000e+00)  ; FMax(a,b)
  %7145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %7146 = extractvalue %dx.types.CBufRet.f32 %7145, 0
  %7147 = call float @dx.op.binary.f32(i32 36, float %6931, float %7146)  ; FMin(a,b)
  %7148 = fmul fast float %7147, %6948
  %7149 = fsub fast float 1.000000e+00, %7148
  %7150 = bitcast float %7149 to i32
  %7151 = sub nsw i32 2129859010, %7150
  %7152 = bitcast i32 %7151 to float
  %7153 = call float @dx.op.binary.f32(i32 36, float %6932, float %7146)  ; FMin(a,b)
  %7154 = fmul fast float %7153, %6948
  %7155 = fsub fast float 1.000000e+00, %7154
  %7156 = bitcast float %7155 to i32
  %7157 = sub nsw i32 2129859010, %7156
  %7158 = bitcast i32 %7157 to float
  %7159 = call float @dx.op.binary.f32(i32 36, float %6933, float %7146)  ; FMin(a,b)
  %7160 = fmul fast float %7159, %6948
  %7161 = fsub fast float 1.000000e+00, %7160
  %7162 = bitcast float %7161 to i32
  %7163 = sub nsw i32 2129859010, %7162
  %7164 = bitcast i32 %7163 to float
  %7165 = fmul fast float %7136, %6947
  %7166 = fmul fast float %7165, %7152
  %7167 = fmul fast float %7137, %6947
  %7168 = fmul fast float %7167, %7158
  %7169 = fmul fast float %7138, %6947
  %7170 = fmul fast float %7169, %7164
  %7171 = call float @dx.op.binary.f32(i32 36, float %6925, float %7146)  ; FMin(a,b)
  %7172 = fmul fast float %7171, %6948
  %7173 = fsub fast float 1.000000e+00, %7172
  %7174 = bitcast float %7173 to i32
  %7175 = sub nsw i32 2129859010, %7174
  %7176 = bitcast i32 %7175 to float
  %7177 = call float @dx.op.binary.f32(i32 36, float %6926, float %7146)  ; FMin(a,b)
  %7178 = fmul fast float %7177, %6948
  %7179 = fsub fast float 1.000000e+00, %7178
  %7180 = bitcast float %7179 to i32
  %7181 = sub nsw i32 2129859010, %7180
  %7182 = bitcast i32 %7181 to float
  %7183 = call float @dx.op.binary.f32(i32 36, float %6936, float %7146)  ; FMin(a,b)
  %7184 = fmul fast float %7183, %6948
  %7185 = fsub fast float 1.000000e+00, %7184
  %7186 = bitcast float %7185 to i32
  %7187 = sub nsw i32 2129859010, %7186
  %7188 = bitcast i32 %7187 to float
  %7189 = fmul fast float %7142, %6947
  %7190 = fmul fast float %7189, %7176
  %7191 = fmul fast float %7143, %6947
  %7192 = fmul fast float %7191, %7182
  %7193 = fmul fast float %7144, %6947
  %7194 = fmul fast float %7193, %7188
  %7195 = call float @dx.op.dot3.f32(i32 55, float %7166, float %7168, float %7170, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7196 = select i1 %225, float 0.000000e+00, float %7166
  %7197 = select i1 %225, float %7195, float %7168
  %7198 = select i1 %225, float 0.000000e+00, float %7170
  %7199 = call float @dx.op.dot3.f32(i32 55, float %7139, float %7140, float %7141, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7200 = select i1 %225, float 0.000000e+00, float %7139
  %7201 = select i1 %225, float %7199, float %7140
  %7202 = select i1 %225, float 0.000000e+00, float %7141
  %7203 = call float @dx.op.dot3.f32(i32 55, float %7190, float %7192, float %7194, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7204 = select i1 %225, float 0.000000e+00, float %7190
  %7205 = select i1 %225, float %7203, float %7192
  %7206 = select i1 %225, float 0.000000e+00, float %7194
  %7207 = fmul fast float %6938, 9.843750e-01
  %7208 = fmul fast float %6934, 9.843750e-01
  %7209 = fadd fast float %7207, 7.812500e-03
  %7210 = fadd fast float %7208, 7.812500e-03
  %7211 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %41, %dx.types.Handle %46, float %7209, float %7210, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7212 = extractvalue %dx.types.ResRet.f32 %7211, 2
  %7213 = extractvalue %dx.types.ResRet.f32 %7211, 3
  %7214 = fmul fast float %7212, %6925
  %7215 = fmul fast float %7212, %6926
  %7216 = fmul fast float %7212, %6936
  %7217 = fadd fast float %7214, %7213
  %7218 = fadd fast float %7215, %7213
  %7219 = fadd fast float %7216, %7213
  %7220 = fcmp fast ogt float %4641, 0.000000e+00
  br i1 %7220, label %7221, label %7247

; <label>:7221                                    ; preds = %7113
  %7222 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %46, float %4641, float %6938, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7223 = extractvalue %dx.types.ResRet.f32 %7222, 0
  %7224 = extractvalue %dx.types.ResRet.f32 %7222, 1
  %7225 = extractvalue %dx.types.ResRet.f32 %7222, 2
  %7226 = fadd fast float %7223, -5.000000e-01
  %7227 = fadd fast float %7224, -5.000000e-01
  %7228 = fadd fast float %7225, -5.000000e-01
  %7229 = fsub fast float 1.000000e+00, %6925
  %7230 = fsub fast float 1.000000e+00, %6926
  %7231 = fsub fast float 1.000000e+00, %6936
  %7232 = fmul fast float %6925, 4.000000e+00
  %7233 = fmul fast float %7232, %7229
  %7234 = fmul fast float %7233, %7226
  %7235 = fmul fast float %6926, 4.000000e+00
  %7236 = fmul fast float %7235, %7230
  %7237 = fmul fast float %7236, %7227
  %7238 = fmul fast float %6936, 4.000000e+00
  %7239 = fmul fast float %7238, %7231
  %7240 = fmul fast float %7239, %7228
  %7241 = fadd fast float %7234, %7217
  %7242 = fadd fast float %7237, %7218
  %7243 = fadd fast float %7240, %7219
  %7244 = call float @dx.op.unary.f32(i32 7, float %7241)  ; Saturate(value)
  %7245 = call float @dx.op.unary.f32(i32 7, float %7242)  ; Saturate(value)
  %7246 = call float @dx.op.unary.f32(i32 7, float %7243)  ; Saturate(value)
  br label %7247

; <label>:7247                                    ; preds = %7221, %7113
  %7248 = phi float [ %7244, %7221 ], [ %7217, %7113 ]
  %7249 = phi float [ %7245, %7221 ], [ %7218, %7113 ]
  %7250 = phi float [ %7246, %7221 ], [ %7219, %7113 ]
  %7251 = call float @dx.op.binary.f32(i32 35, float %7249, float %7250)  ; FMax(a,b)
  %7252 = call float @dx.op.binary.f32(i32 35, float %7248, float %7251)  ; FMax(a,b)
  %7253 = fsub fast float 1.000000e+00, %7252
  %7254 = fmul fast float %7252, %6934
  %7255 = fadd fast float %7254, %6934
  %7256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %7257 = extractvalue %dx.types.CBufRet.f32 %7256, 2
  %7258 = extractvalue %dx.types.CBufRet.f32 %7256, 3
  %7259 = fmul fast float %7255, %7257
  %7260 = fadd fast float %7259, %7258
  %7261 = call float @dx.op.unary.f32(i32 7, float %7260)  ; Saturate(value)
  %7262 = fsub fast float 1.000000e+00, %6959
  %7263 = fadd fast float %7262, %7261
  %7264 = call float @dx.op.unary.f32(i32 7, float %7263)  ; Saturate(value)
  %7265 = fcmp fast olt float %7264, 1.000000e+00
  br i1 %7265, label %7266, label %7714

; <label>:7266                                    ; preds = %7247
  %7267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %7268 = extractvalue %dx.types.CBufRet.f32 %7267, 2
  %7269 = extractvalue %dx.types.CBufRet.f32 %7267, 3
  %7270 = fmul fast float %7268, %109
  %7271 = fmul fast float %7269, %110
  %7272 = fptoui float %7270 to i32
  %7273 = fptoui float %7271 to i32
  %7274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7275 = extractvalue %dx.types.CBufRet.f32 %7274, 0
  %7276 = extractvalue %dx.types.CBufRet.f32 %7274, 2
  %7277 = extractvalue %dx.types.CBufRet.f32 %7274, 3
  %7278 = fadd fast float %97, -4.000000e+00
  %7279 = call float @dx.op.binary.f32(i32 35, float %7278, float 0.000000e+00)  ; FMax(a,b)
  %7280 = fadd fast float %7279, %7275
  %7281 = fmul fast float %7280, %7276
  %7282 = call float @dx.op.unary.f32(i32 23, float %7281)  ; Log(value)
  %7283 = fmul fast float %7282, %7277
  %7284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7285 = extractvalue %dx.types.CBufRet.f32 %7284, 2
  %7286 = fmul fast float %7283, %7285
  %7287 = call float @dx.op.unary.f32(i32 7, float %7286)  ; Saturate(value)
  %7288 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7289 = extractvalue %dx.types.CBufRet.i32 %7288, 1
  %7290 = add i32 %7289, -1
  %7291 = uitofp i32 %7289 to float
  %7292 = fmul fast float %7291, %7287
  %7293 = fptoui float %7292 to i32
  %7294 = call i32 @dx.op.binary.i32(i32 40, i32 %7293, i32 %7290)  ; UMin(a,b)
  %7295 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %7296 = extractvalue %dx.types.CBufRet.i32 %7295, 2
  %7297 = extractvalue %dx.types.CBufRet.i32 %7295, 3
  %7298 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7273, i32 %7296, i32 %7272)  ; UMad(a,b,c)
  %7299 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7294, i32 %7297, i32 %7298)  ; UMad(a,b,c)
  %7300 = call float @dx.op.binary.f32(i32 35, float %97, float 0.000000e+00)  ; FMax(a,b)
  %7301 = fptoui float %7300 to i32
  %7302 = lshr i32 %7301, 5
  %7303 = call i32 @dx.op.binary.i32(i32 40, i32 %7302, i32 8191)  ; UMin(a,b)
  br i1 false, label %7304, label %7311

; <label>:7304                                    ; preds = %7266
  %7305 = fadd fast float 0.000000e+00, %6946
  %7306 = call float @dx.op.dot3.f32(i32 55, float %6944, float %6945, float %7305, float %6944, float %6945, float %7305)  ; Dot3(ax,ay,az,bx,by,bz)
  %7307 = call float @dx.op.unary.f32(i32 25, float %7306)  ; Rsqrt(value)
  %7308 = fmul fast float %7307, %6944
  %7309 = fmul fast float %7307, %6945
  %7310 = fmul fast float %7305, %7307
  br label %7311

; <label>:7311                                    ; preds = %7304, %7266
  %7312 = phi float [ %7308, %7304 ], [ %6944, %7266 ]
  %7313 = phi float [ %7309, %7304 ], [ %6945, %7266 ]
  %7314 = phi float [ %7310, %7304 ], [ %6946, %7266 ]
  %7315 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7316 = extractvalue %dx.types.CBufRet.i32 %7315, 2
  %7317 = add nsw i32 %7316, -1
  %7318 = call i32 @dx.op.binary.i32(i32 37, i32 %7317, i32 0)  ; IMax(a,b)
  %7319 = shl i32 %7303, 2
  %7320 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %7319, i32 undef)  ; BufferLoad(srv,index,wot)
  %7321 = extractvalue %dx.types.ResRet.i32 %7320, 0
  %7322 = lshr i32 %7321, 16
  %7323 = and i32 %7321, 65535
  %7324 = lshr i32 %7321, 21
  %7325 = lshr i32 %7323, 5
  %7326 = call i32 @dx.op.binary.i32(i32 40, i32 %7325, i32 %7318)  ; UMin(a,b)
  %7327 = icmp ugt i32 %7324, %7326
  br i1 %7327, label %7690, label %7328

; <label>:7328                                    ; preds = %7311
  br label %7329

; <label>:7329                                    ; preds = %7682, %7328
  %7330 = phi float [ %7683, %7682 ], [ 0.000000e+00, %7328 ]
  %7331 = phi float [ %7684, %7682 ], [ 0.000000e+00, %7328 ]
  %7332 = phi float [ %7685, %7682 ], [ 0.000000e+00, %7328 ]
  %7333 = phi float [ %7686, %7682 ], [ 1.000000e+00, %7328 ]
  %7334 = phi i32 [ %7687, %7682 ], [ %7324, %7328 ]
  %7335 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7336 = extractvalue %dx.types.CBufRet.i32 %7335, 2
  %7337 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7299, i32 %7336, i32 %7334)  ; UMad(a,b,c)
  %7338 = shl i32 %7337, 2
  %7339 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %7338, i32 undef)  ; BufferLoad(srv,index,wot)
  %7340 = extractvalue %dx.types.ResRet.i32 %7339, 0
  %7341 = shl i32 %7334, 5
  %7342 = sub nsw i32 %7322, %7341
  %7343 = call i32 @dx.op.binary.i32(i32 37, i32 %7342, i32 0)  ; IMax(a,b)
  %7344 = call i32 @dx.op.binary.i32(i32 38, i32 %7343, i32 31)  ; IMin(a,b)
  %7345 = sub nsw i32 1, %7322
  %7346 = add nsw i32 %7345, %7323
  %7347 = call i32 @dx.op.binary.i32(i32 37, i32 %7346, i32 0)  ; IMax(a,b)
  %7348 = call i32 @dx.op.binary.i32(i32 38, i32 %7347, i32 32)  ; IMin(a,b)
  %7349 = and i32 %7348, 31
  %7350 = shl i32 -1, %7349
  %7351 = xor i32 %7350, -1
  %7352 = and i32 %7344, 31
  %7353 = shl i32 %7351, %7352
  %7354 = icmp eq i32 %7348, 32
  %7355 = select i1 %7354, i32 -1, i32 %7353
  %7356 = and i32 %7355, %7340
  %7357 = icmp eq i32 %7356, 0
  br i1 %7357, label %7682, label %7358

; <label>:7358                                    ; preds = %7329
  br label %7359

; <label>:7359                                    ; preds = %7465, %7358
  %7360 = phi float [ %7466, %7465 ], [ %7330, %7358 ]
  %7361 = phi float [ %7467, %7465 ], [ %7331, %7358 ]
  %7362 = phi float [ %7468, %7465 ], [ %7332, %7358 ]
  %7363 = phi float [ %7469, %7465 ], [ %7333, %7358 ]
  %7364 = phi i32 [ %7369, %7465 ], [ %7356, %7358 ]
  %7365 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %7364)  ; FirstbitLo(value)
  %7366 = add i32 %7365, %7341
  %7367 = and i32 %7365, 31
  %7368 = shl i32 1, %7367
  %7369 = xor i32 %7368, %7364
  %7370 = mul i32 %7366, 72
  %7371 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %7370, i32 undef)  ; BufferLoad(srv,index,wot)
  %7372 = extractvalue %dx.types.ResRet.f32 %7371, 0
  %7373 = extractvalue %dx.types.ResRet.f32 %7371, 1
  %7374 = extractvalue %dx.types.ResRet.f32 %7371, 2
  %7375 = add i32 %7370, 12
  %7376 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %7375, i32 undef)  ; BufferLoad(srv,index,wot)
  %7377 = extractvalue %dx.types.ResRet.i32 %7376, 0
  %7378 = add i32 %7370, 16
  %7379 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %7378, i32 undef)  ; BufferLoad(srv,index,wot)
  %7380 = extractvalue %dx.types.ResRet.f32 %7379, 0
  %7381 = extractvalue %dx.types.ResRet.f32 %7379, 1
  %7382 = extractvalue %dx.types.ResRet.f32 %7379, 2
  %7383 = add i32 %7370, 28
  %7384 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %7383, i32 undef)  ; BufferLoad(srv,index,wot)
  %7385 = extractvalue %dx.types.ResRet.f32 %7384, 0
  %7386 = add i32 %7370, 32
  %7387 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %7386, i32 undef)  ; BufferLoad(srv,index,wot)
  %7388 = extractvalue %dx.types.ResRet.f32 %7387, 0
  %7389 = extractvalue %dx.types.ResRet.f32 %7387, 1
  %7390 = extractvalue %dx.types.ResRet.f32 %7387, 2
  %7391 = extractvalue %dx.types.ResRet.f32 %7387, 3
  %7392 = add i32 %7370, 48
  %7393 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %7392, i32 undef)  ; BufferLoad(srv,index,wot)
  %7394 = extractvalue %dx.types.ResRet.f32 %7393, 0
  %7395 = extractvalue %dx.types.ResRet.f32 %7393, 1
  %7396 = add i32 %7370, 56
  %7397 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %7396, i32 undef)  ; BufferLoad(srv,index,wot)
  %7398 = extractvalue %dx.types.ResRet.f32 %7397, 0
  %7399 = extractvalue %dx.types.ResRet.f32 %7397, 1
  %7400 = add i32 %7370, 64
  %7401 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %7400, i32 undef)  ; BufferLoad(srv,index,wot)
  %7402 = extractvalue %dx.types.ResRet.f32 %7401, 0
  %7403 = extractvalue %dx.types.ResRet.f32 %7401, 1
  %7404 = mul i32 %7366, 60
  %7405 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %7404, i32 undef)  ; BufferLoad(srv,index,wot)
  %7406 = extractvalue %dx.types.ResRet.f32 %7405, 0
  %7407 = extractvalue %dx.types.ResRet.f32 %7405, 1
  %7408 = extractvalue %dx.types.ResRet.f32 %7405, 2
  %7409 = add i32 %7404, 12
  %7410 = add i32 %7404, 48
  %7411 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %7410, i32 undef)  ; BufferLoad(srv,index,wot)
  %7412 = extractvalue %dx.types.ResRet.f32 %7411, 0
  %7413 = extractvalue %dx.types.ResRet.f32 %7411, 1
  %7414 = extractvalue %dx.types.ResRet.f32 %7411, 2
  %7415 = and i32 %7377, 32767
  %7416 = bitcast float %7372 to i32
  %7417 = icmp eq i32 %7416, -1
  %7418 = bitcast float %7373 to i32
  %7419 = and i32 %7377, 32768
  %7420 = icmp ne i32 %7419, 0
  %7421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %7422 = extractvalue %dx.types.CBufRet.f32 %7421, 0
  %7423 = extractvalue %dx.types.CBufRet.f32 %7421, 1
  %7424 = extractvalue %dx.types.CBufRet.f32 %7421, 2
  %7425 = fsub fast float %7406, %7422
  %7426 = fsub fast float %7407, %7423
  %7427 = fsub fast float %7408, %7424
  %7428 = fsub fast float %164, %7425
  %7429 = fsub fast float %165, %7426
  %7430 = fsub fast float %166, %7427
  %7431 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %7409, i32 undef)  ; BufferLoad(srv,index,wot)
  %7432 = extractvalue %dx.types.ResRet.f32 %7431, 0
  %7433 = extractvalue %dx.types.ResRet.f32 %7431, 1
  %7434 = extractvalue %dx.types.ResRet.f32 %7431, 2
  %7435 = call float @dx.op.dot3.f32(i32 55, float %7428, float %7429, float %7430, float %7432, float %7433, float %7434)  ; Dot3(ax,ay,az,bx,by,bz)
  %7436 = add i32 %7404, 24
  %7437 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %7436, i32 undef)  ; BufferLoad(srv,index,wot)
  %7438 = extractvalue %dx.types.ResRet.f32 %7437, 0
  %7439 = extractvalue %dx.types.ResRet.f32 %7437, 1
  %7440 = extractvalue %dx.types.ResRet.f32 %7437, 2
  %7441 = call float @dx.op.dot3.f32(i32 55, float %7428, float %7429, float %7430, float %7438, float %7439, float %7440)  ; Dot3(ax,ay,az,bx,by,bz)
  %7442 = add i32 %7404, 36
  %7443 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %7442, i32 undef)  ; BufferLoad(srv,index,wot)
  %7444 = extractvalue %dx.types.ResRet.f32 %7443, 0
  %7445 = extractvalue %dx.types.ResRet.f32 %7443, 1
  %7446 = extractvalue %dx.types.ResRet.f32 %7443, 2
  %7447 = call float @dx.op.dot3.f32(i32 55, float %7428, float %7429, float %7430, float %7444, float %7445, float %7446)  ; Dot3(ax,ay,az,bx,by,bz)
  %7448 = call float @dx.op.unary.f32(i32 6, float %7435)  ; FAbs(value)
  %7449 = call float @dx.op.unary.f32(i32 6, float %7441)  ; FAbs(value)
  %7450 = call float @dx.op.unary.f32(i32 6, float %7447)  ; FAbs(value)
  %7451 = fsub fast float %7412, %7448
  %7452 = fsub fast float %7413, %7449
  %7453 = fsub fast float %7414, %7450
  %7454 = fmul fast float %7451, %7380
  %7455 = fmul fast float %7452, %7381
  %7456 = fmul fast float %7453, %7382
  %7457 = call float @dx.op.binary.f32(i32 36, float %7455, float %7456)  ; FMin(a,b)
  %7458 = call float @dx.op.binary.f32(i32 36, float %7454, float %7457)  ; FMin(a,b)
  %7459 = call float @dx.op.unary.f32(i32 7, float %7458)  ; Saturate(value)
  %7460 = call float @dx.op.binary.f32(i32 36, float %7363, float %7459)  ; FMin(a,b)
  %7461 = uitofp i1 %7420 to float
  %7462 = fsub fast float 1.000000e+00, %7461
  %7463 = fmul fast float %7460, %7462
  %7464 = fcmp fast ogt float %7463, 0.000000e+00
  br i1 %7464, label %7471, label %7465

; <label>:7465                                    ; preds = %7613, %7359
  %7466 = phi float [ %7677, %7613 ], [ %7360, %7359 ]
  %7467 = phi float [ %7678, %7613 ], [ %7361, %7359 ]
  %7468 = phi float [ %7679, %7613 ], [ %7362, %7359 ]
  %7469 = phi float [ %7680, %7613 ], [ %7363, %7359 ]
  %7470 = icmp eq i32 %7364, %7368
  br i1 %7470, label %7681, label %7359

; <label>:7471                                    ; preds = %7359
  br i1 %7417, label %7529, label %7472

; <label>:7472                                    ; preds = %7471
  %7473 = fsub fast float -0.000000e+00, %7432
  %7474 = fsub fast float -0.000000e+00, %7433
  %7475 = fsub fast float -0.000000e+00, %7434
  %7476 = call float @dx.op.dot3.f32(i32 55, float %7312, float %7313, float %7314, float %7473, float %7474, float %7475)  ; Dot3(ax,ay,az,bx,by,bz)
  %7477 = fsub fast float -0.000000e+00, %7476
  %7478 = call float @dx.op.dot3.f32(i32 55, float %7428, float %7429, float %7430, float %7473, float %7474, float %7475)  ; Dot3(ax,ay,az,bx,by,bz)
  %7479 = fadd fast float %7478, %7395
  %7480 = fadd fast float %7394, %7478
  %7481 = fsub fast float -0.000000e+00, %7480
  %7482 = fcmp ogt float %7476, -0.000000e+00
  %7483 = select i1 %7482, float %7481, float %7479
  %7484 = call float @dx.op.unary.f32(i32 6, float %7477)  ; FAbs(value)
  %7485 = fdiv fast float 1.000000e+00, %7484
  %7486 = fmul fast float %7483, %7485
  %7487 = call float @dx.op.binary.f32(i32 35, float %7486, float 0.000000e+00)  ; FMax(a,b)
  %7488 = fsub fast float -0.000000e+00, %7438
  %7489 = fsub fast float -0.000000e+00, %7439
  %7490 = fsub fast float -0.000000e+00, %7440
  %7491 = call float @dx.op.dot3.f32(i32 55, float %7312, float %7313, float %7314, float %7488, float %7489, float %7490)  ; Dot3(ax,ay,az,bx,by,bz)
  %7492 = fsub fast float -0.000000e+00, %7491
  %7493 = call float @dx.op.dot3.f32(i32 55, float %7428, float %7429, float %7430, float %7488, float %7489, float %7490)  ; Dot3(ax,ay,az,bx,by,bz)
  %7494 = fadd fast float %7493, %7399
  %7495 = fadd fast float %7398, %7493
  %7496 = fsub fast float -0.000000e+00, %7495
  %7497 = fcmp ogt float %7491, -0.000000e+00
  %7498 = select i1 %7497, float %7496, float %7494
  %7499 = call float @dx.op.unary.f32(i32 6, float %7492)  ; FAbs(value)
  %7500 = fdiv fast float 1.000000e+00, %7499
  %7501 = fmul fast float %7498, %7500
  %7502 = call float @dx.op.binary.f32(i32 35, float %7501, float 0.000000e+00)  ; FMax(a,b)
  %7503 = fsub fast float -0.000000e+00, %7444
  %7504 = fsub fast float -0.000000e+00, %7445
  %7505 = fsub fast float -0.000000e+00, %7446
  %7506 = call float @dx.op.dot3.f32(i32 55, float %7312, float %7313, float %7314, float %7503, float %7504, float %7505)  ; Dot3(ax,ay,az,bx,by,bz)
  %7507 = fsub fast float -0.000000e+00, %7506
  %7508 = call float @dx.op.dot3.f32(i32 55, float %7428, float %7429, float %7430, float %7503, float %7504, float %7505)  ; Dot3(ax,ay,az,bx,by,bz)
  %7509 = fadd fast float %7508, %7403
  %7510 = fadd fast float %7402, %7508
  %7511 = fsub fast float -0.000000e+00, %7510
  %7512 = fcmp ogt float %7506, -0.000000e+00
  %7513 = select i1 %7512, float %7511, float %7509
  %7514 = call float @dx.op.unary.f32(i32 6, float %7507)  ; FAbs(value)
  %7515 = fdiv fast float 1.000000e+00, %7514
  %7516 = fmul fast float %7513, %7515
  %7517 = call float @dx.op.binary.f32(i32 35, float %7516, float 0.000000e+00)  ; FMax(a,b)
  %7518 = call float @dx.op.binary.f32(i32 36, float %7502, float %7517)  ; FMin(a,b)
  %7519 = call float @dx.op.binary.f32(i32 36, float %7487, float %7518)  ; FMin(a,b)
  %7520 = fmul fast float %7519, %7312
  %7521 = fmul fast float %7519, %7313
  %7522 = fmul fast float %7519, %7314
  %7523 = fadd fast float %7520, %164
  %7524 = fadd fast float %7521, %165
  %7525 = fadd fast float %7522, %166
  %7526 = fsub fast float %7523, %7372
  %7527 = fsub fast float %7524, %7373
  %7528 = fsub fast float %7525, %7374
  br label %7536

; <label>:7529                                    ; preds = %7471
  %7530 = fmul fast float %7312, 8.096000e+03
  %7531 = fmul fast float %7313, 8.096000e+03
  %7532 = fmul fast float %7314, 8.096000e+03
  %7533 = fadd fast float %7530, %164
  %7534 = fadd fast float %7531, %165
  %7535 = fadd fast float %7532, %166
  br label %7536

; <label>:7536                                    ; preds = %7529, %7472
  %7537 = phi float [ %7312, %7529 ], [ %7526, %7472 ]
  %7538 = phi float [ %7313, %7529 ], [ %7527, %7472 ]
  %7539 = phi float [ %7314, %7529 ], [ %7528, %7472 ]
  %7540 = phi float [ %7533, %7529 ], [ %7523, %7472 ]
  %7541 = phi float [ %7534, %7529 ], [ %7524, %7472 ]
  %7542 = phi float [ %7535, %7529 ], [ %7525, %7472 ]
  %7543 = fcmp fast olt float %7391, 1.000000e+00
  br i1 %7543, label %7544, label %7575, !dx.controlflow.hints !97

; <label>:7544                                    ; preds = %7536
  %7545 = fmul fast float %7539, %7389
  %7546 = fmul fast float %7538, %7390
  %7547 = fsub fast float %7545, %7546
  %7548 = fmul fast float %7537, %7390
  %7549 = fmul fast float %7539, %7388
  %7550 = fsub fast float %7548, %7549
  %7551 = fmul fast float %7538, %7388
  %7552 = fmul fast float %7537, %7389
  %7553 = fsub fast float %7551, %7552
  %7554 = fmul fast float %7547, 2.000000e+00
  %7555 = fmul fast float %7550, 2.000000e+00
  %7556 = fmul fast float %7553, 2.000000e+00
  %7557 = fmul fast float %7554, %7391
  %7558 = fmul fast float %7555, %7391
  %7559 = fmul fast float %7556, %7391
  %7560 = fmul fast float %7556, %7389
  %7561 = fmul fast float %7555, %7390
  %7562 = fmul fast float %7554, %7390
  %7563 = fmul fast float %7556, %7388
  %7564 = fmul fast float %7555, %7388
  %7565 = fmul fast float %7554, %7389
  %7566 = fadd fast float %7560, %7537
  %7567 = fadd fast float %7566, %7557
  %7568 = fsub fast float %7567, %7561
  %7569 = fsub fast float %7538, %7563
  %7570 = fadd fast float %7569, %7558
  %7571 = fadd fast float %7570, %7562
  %7572 = fadd fast float %7559, %7539
  %7573 = fsub fast float %7572, %7565
  %7574 = fadd fast float %7573, %7564
  br label %7575

; <label>:7575                                    ; preds = %7544, %7536
  %7576 = phi float [ %7568, %7544 ], [ %7537, %7536 ]
  %7577 = phi float [ %7571, %7544 ], [ %7538, %7536 ]
  %7578 = phi float [ %7574, %7544 ], [ %7539, %7536 ]
  br i1 %7417, label %7610, label %7579

; <label>:7579                                    ; preds = %7575
  %7580 = fmul fast float %6934, 0x400187C840000000
  %7581 = fadd fast float %7580, 0xC00EFC2120000000
  %7582 = fmul fast float %7581, %6934
  %7583 = fadd fast float %7582, 0x3FE5D16340000000
  %7584 = fmul fast float %7583, %6934
  %7585 = fadd fast float %7584, 1.000000e+00
  %7586 = call float @dx.op.unary.f32(i32 7, float %7585)  ; Saturate(value)
  %7587 = fsub fast float %7540, %164
  %7588 = fsub fast float %7541, %165
  %7589 = fsub fast float %7542, %166
  %7590 = fsub fast float %7540, %7372
  %7591 = fsub fast float %7541, %7373
  %7592 = fsub fast float %7542, %7374
  %7593 = call float @dx.op.dot3.f32(i32 55, float %7587, float %7588, float %7589, float %7587, float %7588, float %7589)  ; Dot3(ax,ay,az,bx,by,bz)
  %7594 = call float @dx.op.dot3.f32(i32 55, float %7590, float %7591, float %7592, float %7590, float %7591, float %7592)  ; Dot3(ax,ay,az,bx,by,bz)
  %7595 = fadd fast float %7594, 0x3EE4F8B580000000
  %7596 = fdiv fast float %7593, %7595
  %7597 = bitcast float %7596 to i32
  %7598 = ashr i32 %7597, 1
  %7599 = add nsw i32 %7598, 532487669
  %7600 = bitcast i32 %7599 to float
  %7601 = fmul fast float %7600, %7586
  %7602 = call float @dx.op.unary.f32(i32 7, float %7601)  ; Saturate(value)
  %7603 = fmul fast float %7602, 0x4009981AE0000000
  %7604 = fsub fast float 0x40111BBD80000000, %7603
  %7605 = fmul fast float %7604, %7602
  %7606 = fadd fast float %7605, 0xC0009F6020000000
  %7607 = fmul fast float %7606, %7602
  %7608 = fadd fast float %7607, 1.000000e+00
  %7609 = call float @dx.op.unary.f32(i32 7, float %7608)  ; Saturate(value)
  br label %7613

; <label>:7610                                    ; preds = %7575
  %7611 = icmp ne i32 %7418, -1
  %7612 = zext i1 %7611 to i32
  br label %7613

; <label>:7613                                    ; preds = %7610, %7579
  %7614 = phi float [ %6934, %7610 ], [ %7609, %7579 ]
  %7615 = phi i32 [ %7612, %7610 ], [ 0, %7579 ]
  %7616 = fmul float %7614, 5.000000e+00
  %7617 = fsub float 5.000000e+00, %7616
  %7618 = icmp ne i32 %7615, 0
  %7619 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %7620 = extractvalue %dx.types.CBufRet.f32 %7619, 3
  %7621 = fadd fast float %7620, %7617
  %7622 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7621)  ; FMax(a,b)
  %7623 = call float @dx.op.unary.f32(i32 6, float %7576)  ; FAbs(value)
  %7624 = call float @dx.op.unary.f32(i32 6, float %7577)  ; FAbs(value)
  %7625 = fadd fast float %7624, %7623
  %7626 = call float @dx.op.unary.f32(i32 6, float %7578)  ; FAbs(value)
  %7627 = fadd fast float %7625, %7626
  %7628 = fcmp fast oeq float %7627, 0.000000e+00
  %7629 = fdiv fast float 1.000000e+00, %7627
  %7630 = select i1 %7628, float 1.000000e+00, float %7629
  %7631 = fmul fast float %7630, %7576
  %7632 = fmul fast float %7630, %7577
  %7633 = call float @dx.op.unary.f32(i32 6, float %7632)  ; FAbs(value)
  %7634 = call float @dx.op.unary.f32(i32 6, float %7631)  ; FAbs(value)
  %7635 = fsub fast float 1.000000e+00, %7633
  %7636 = fsub fast float 1.000000e+00, %7634
  %7637 = fcmp fast oge float %7631, 0.000000e+00
  %7638 = fcmp fast oge float %7632, 0.000000e+00
  %7639 = select i1 %7637, float 1.000000e+00, float -1.000000e+00
  %7640 = select i1 %7638, float 1.000000e+00, float -1.000000e+00
  %7641 = fcmp fast ole float %7578, 0.000000e+00
  %7642 = fmul fast float %7639, %7635
  %7643 = fmul fast float %7640, %7636
  %7644 = select i1 %7641, float %7642, float %7631
  %7645 = select i1 %7641, float %7643, float %7632
  %7646 = fmul fast float %7644, 5.000000e-01
  %7647 = fmul fast float %7645, 5.000000e-01
  %7648 = fadd fast float %7646, 5.000000e-01
  %7649 = fadd fast float %7647, 5.000000e-01
  %7650 = uitofp i32 %7415 to float
  %7651 = call float @dx.op.binary.f32(i32 36, float %7622, float 3.000000e+00)  ; FMin(a,b)
  %7652 = fadd fast float %7651, 2.000000e+00
  %7653 = call float @dx.op.unary.f32(i32 21, float %7652)  ; Exp(value)
  %7654 = extractvalue %dx.types.CBufRet.f32 %7619, 1
  %7655 = fmul fast float %7654, %7653
  %7656 = fmul fast float %7655, 2.000000e+00
  %7657 = fsub fast float 1.000000e+00, %7656
  %7658 = fmul fast float %7648, %7657
  %7659 = fmul fast float %7649, %7657
  %7660 = fadd fast float %7658, %7655
  %7661 = fadd fast float %7659, %7655
  %7662 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %44, float %7660, float %7661, float %7650, float undef, i32 0, i32 0, i32 undef, float %7622)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7663 = extractvalue %dx.types.ResRet.f32 %7662, 0
  %7664 = extractvalue %dx.types.ResRet.f32 %7662, 1
  %7665 = extractvalue %dx.types.ResRet.f32 %7662, 2
  %7666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7667 = extractvalue %dx.types.CBufRet.f32 %7666, 3
  %7668 = fmul fast float %7667, %7385
  %7669 = call float @dx.op.binary.f32(i32 36, float %6964, float %7668)  ; FMin(a,b)
  %7670 = select i1 %7618, float %7669, float %7668
  %7671 = fmul fast float %7663, %7463
  %7672 = fmul fast float %7671, %7670
  %7673 = fmul fast float %7664, %7463
  %7674 = fmul fast float %7673, %7670
  %7675 = fmul fast float %7665, %7463
  %7676 = fmul fast float %7675, %7670
  %7677 = fadd fast float %7672, %7360
  %7678 = fadd fast float %7674, %7361
  %7679 = fadd fast float %7676, %7362
  %7680 = fsub fast float %7363, %7463
  br label %7465

; <label>:7681                                    ; preds = %7465
  br label %7682

; <label>:7682                                    ; preds = %7681, %7329
  %7683 = phi float [ %7330, %7329 ], [ %7466, %7681 ]
  %7684 = phi float [ %7331, %7329 ], [ %7467, %7681 ]
  %7685 = phi float [ %7332, %7329 ], [ %7468, %7681 ]
  %7686 = phi float [ %7333, %7329 ], [ %7469, %7681 ]
  %7687 = add i32 %7334, 1
  %7688 = icmp ugt i32 %7687, %7326
  br i1 %7688, label %7689, label %7329, !llvm.loop !98

; <label>:7689                                    ; preds = %7682
  br label %7690

; <label>:7690                                    ; preds = %7689, %7311
  %7691 = phi float [ 0.000000e+00, %7311 ], [ %7683, %7689 ]
  %7692 = phi float [ 0.000000e+00, %7311 ], [ %7684, %7689 ]
  %7693 = phi float [ 0.000000e+00, %7311 ], [ %7685, %7689 ]
  %7694 = call float @dx.op.dot3.f32(i32 55, float %7691, float %7692, float %7693, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7695 = select i1 %225, float 0.000000e+00, float %7691
  %7696 = select i1 %225, float %7694, float %7692
  %7697 = select i1 %225, float 0.000000e+00, float %7693
  %7698 = fcmp fast olt float %7264, 0.000000e+00
  %7699 = call float @dx.op.unary.f32(i32 6, float %7264)  ; FAbs(value)
  %7700 = fmul fast float %7699, %7204
  %7701 = fmul fast float %7699, %7205
  %7702 = fmul fast float %7699, %7206
  %7703 = select i1 %7698, float %7204, float %7700
  %7704 = select i1 %7698, float %7205, float %7701
  %7705 = select i1 %7698, float %7206, float %7702
  %7706 = fsub fast float 1.000000e+00, %7699
  %7707 = call float @dx.op.unary.f32(i32 7, float %7706)  ; Saturate(value)
  %7708 = fmul fast float %7707, %7695
  %7709 = fmul fast float %7707, %7696
  %7710 = fmul fast float %7707, %7697
  %7711 = fadd fast float %7703, %7708
  %7712 = fadd fast float %7704, %7709
  %7713 = fadd fast float %7705, %7710
  br label %7714

; <label>:7714                                    ; preds = %7690, %7247
  %7715 = phi float [ %7204, %7247 ], [ %7711, %7690 ]
  %7716 = phi float [ %7205, %7247 ], [ %7712, %7690 ]
  %7717 = phi float [ %7206, %7247 ], [ %7713, %7690 ]
  %7718 = call float @dx.op.dot3.f32(i32 55, float %6931, float %6932, float %6933, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7719 = fcmp fast ogt float %7718, 0x3E7FF19E20000000
  %7720 = fdiv fast float 1.000000e+00, %7718
  %7721 = select i1 %7719, float %7720, float 0.000000e+00
  %7722 = fmul fast float %7721, %6931
  %7723 = fmul fast float %7721, %6932
  %7724 = fmul fast float %7721, %6933
  %7725 = fadd fast float %7722, -1.000000e+00
  %7726 = fadd fast float %7723, -1.000000e+00
  %7727 = fadd fast float %7724, -1.000000e+00
  %7728 = fmul fast float %7725, 5.000000e-01
  %7729 = fmul fast float %7726, 5.000000e-01
  %7730 = fmul fast float %7727, 5.000000e-01
  %7731 = fadd fast float %7728, 1.000000e+00
  %7732 = fadd fast float %7729, 1.000000e+00
  %7733 = fadd fast float %7730, 1.000000e+00
  %7734 = fmul fast float %7253, %4731
  %7735 = fmul fast float %7253, %4732
  %7736 = fmul fast float %7253, %4733
  %7737 = fadd fast float %7734, -1.000000e+00
  %7738 = fadd fast float %7735, -1.000000e+00
  %7739 = fadd fast float %7736, -1.000000e+00
  %7740 = fmul fast float %7737, %4638
  %7741 = fmul fast float %7738, %4638
  %7742 = fmul fast float %7739, %4638
  %7743 = fmul fast float %7715, %7248
  %7744 = fmul fast float %7716, %7249
  %7745 = fmul fast float %7717, %7250
  %7746 = fsub fast float 1.000000e+00, %6938
  %7747 = bitcast float %7746 to i32
  %7748 = sitofp i32 %7747 to float
  %7749 = fmul fast float %7748, 5.000000e+00
  %7750 = fadd fast float %7749, 0xC1EFBF8940000000
  %7751 = fptosi float %7750 to i32
  %7752 = bitcast i32 %7751 to float
  %7753 = fmul fast float %7752, %4642
  %7754 = fmul fast float %7196, %7753
  %7755 = fmul fast float %7754, %7253
  %7756 = fmul fast float %7755, %7731
  %7757 = fmul fast float %7197, %7753
  %7758 = fmul fast float %7757, %7253
  %7759 = fmul fast float %7758, %7732
  %7760 = fmul fast float %7198, %7753
  %7761 = fmul fast float %7760, %7253
  %7762 = fmul fast float %7761, %7733
  %7763 = fadd fast float %7743, %4631
  %7764 = fadd fast float %7763, %7756
  %7765 = fmul fast float %7764, %4638
  %7766 = fadd fast float %7744, %4632
  %7767 = fadd fast float %7766, %7759
  %7768 = fmul fast float %7767, %4638
  %7769 = fadd fast float %7745, %4633
  %7770 = fadd fast float %7769, %7762
  %7771 = fmul fast float %7770, %4638
  %7772 = fadd fast float %7742, 1.000000e+00
  %7773 = fadd fast float %7741, 1.000000e+00
  %7774 = fadd fast float %7740, 1.000000e+00
  %7775 = fmul fast float %7253, %7198
  %7776 = fmul fast float %7253, %7197
  %7777 = fmul fast float %7253, %7196
  %7778 = fmul fast float %7774, %7200
  %7779 = fmul fast float %7773, %7201
  %7780 = fmul fast float %7772, %7202
  %7781 = fadd fast float %7778, %7777
  %7782 = fmul fast float %7781, %4638
  %7783 = fadd fast float %7779, %7776
  %7784 = fmul fast float %7783, %4638
  %7785 = fadd fast float %7780, %7775
  %7786 = fmul fast float %7785, %4638
  %7787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %7788 = extractvalue %dx.types.CBufRet.f32 %7787, 3
  %7789 = fcmp fast oeq float %7788, 0.000000e+00
  br i1 %7789, label %9311, label %7790

; <label>:7790                                    ; preds = %7714
  %7791 = extractvalue %dx.types.CBufRet.f32 %7787, 0
  %7792 = extractvalue %dx.types.CBufRet.f32 %7787, 1
  %7793 = extractvalue %dx.types.CBufRet.f32 %7787, 2
  %7794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %7795 = extractvalue %dx.types.CBufRet.f32 %7794, 0
  %7796 = extractvalue %dx.types.CBufRet.f32 %7794, 1
  %7797 = extractvalue %dx.types.CBufRet.f32 %7794, 2
  %7798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %7799 = extractvalue %dx.types.CBufRet.f32 %7798, 0
  %7800 = extractvalue %dx.types.CBufRet.f32 %7798, 1
  %7801 = call float @dx.op.dot3.f32(i32 55, float %7795, float %7796, float %7797, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7802 = select i1 %225, float %7799, float %7795
  %7803 = select i1 %225, float %7801, float %7796
  %7804 = select i1 %225, float %7800, float %7797
  %7805 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %7806 = extractvalue %dx.types.CBufRet.f32 %7805, 2
  %7807 = fmul fast float %7806, %116
  %7808 = fmul fast float %7806, %117
  %7809 = fmul fast float %7806, %118
  %7810 = fadd fast float %7807, %164
  %7811 = fadd fast float %7808, %165
  %7812 = fadd fast float %7809, %166
  %7813 = fcmp fast olt float %7788, 0.000000e+00
  br i1 %7813, label %8909, label %7814

; <label>:7814                                    ; preds = %7790
  %7815 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7816 = extractvalue %dx.types.CBufRet.f32 %7815, 0
  %7817 = extractvalue %dx.types.CBufRet.f32 %7815, 1
  %7818 = extractvalue %dx.types.CBufRet.f32 %7815, 2
  %7819 = extractvalue %dx.types.CBufRet.f32 %7815, 3
  %7820 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7821 = extractvalue %dx.types.CBufRet.f32 %7820, 0
  %7822 = extractvalue %dx.types.CBufRet.f32 %7820, 1
  %7823 = extractvalue %dx.types.CBufRet.f32 %7820, 2
  %7824 = extractvalue %dx.types.CBufRet.f32 %7820, 3
  %7825 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7826 = extractvalue %dx.types.CBufRet.f32 %7825, 0
  %7827 = extractvalue %dx.types.CBufRet.f32 %7825, 1
  %7828 = extractvalue %dx.types.CBufRet.f32 %7825, 2
  %7829 = extractvalue %dx.types.CBufRet.f32 %7825, 3
  %7830 = fmul fast float %7816, %7810
  %7831 = call float @dx.op.tertiary.f32(i32 46, float %7811, float %7817, float %7830)  ; FMad(a,b,c)
  %7832 = call float @dx.op.tertiary.f32(i32 46, float %7812, float %7818, float %7831)  ; FMad(a,b,c)
  %7833 = fadd fast float %7832, %7819
  %7834 = fmul fast float %7821, %7810
  %7835 = call float @dx.op.tertiary.f32(i32 46, float %7811, float %7822, float %7834)  ; FMad(a,b,c)
  %7836 = call float @dx.op.tertiary.f32(i32 46, float %7812, float %7823, float %7835)  ; FMad(a,b,c)
  %7837 = fadd fast float %7836, %7824
  %7838 = fmul fast float %7826, %7810
  %7839 = call float @dx.op.tertiary.f32(i32 46, float %7811, float %7827, float %7838)  ; FMad(a,b,c)
  %7840 = call float @dx.op.tertiary.f32(i32 46, float %7812, float %7828, float %7839)  ; FMad(a,b,c)
  %7841 = fadd fast float %7840, %7829
  %7842 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %7843 = extractvalue %dx.types.CBufRet.f32 %7842, 0
  %7844 = extractvalue %dx.types.CBufRet.f32 %7842, 1
  %7845 = extractvalue %dx.types.CBufRet.f32 %7842, 3
  %7846 = fmul fast float %7845, %7833
  %7847 = fmul fast float %7845, %7837
  %7848 = fadd fast float %7846, %7843
  %7849 = fadd fast float %7847, %7844
  %7850 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %7851 = extractvalue %dx.types.CBufRet.f32 %7850, 0
  %7852 = extractvalue %dx.types.CBufRet.f32 %7850, 1
  %7853 = extractvalue %dx.types.CBufRet.f32 %7850, 3
  %7854 = fmul fast float %7853, %7833
  %7855 = fmul fast float %7853, %7837
  %7856 = fadd fast float %7854, %7851
  %7857 = fadd fast float %7855, %7852
  %7858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %7859 = extractvalue %dx.types.CBufRet.f32 %7858, 1
  %7860 = fsub fast float %7859, %7841
  %7861 = extractvalue %dx.types.CBufRet.f32 %7858, 2
  %7862 = fmul fast float %7860, %7861
  %7863 = fsub fast float 1.000000e+00, %7862
  %7864 = call float @dx.op.unary.f32(i32 7, float %7863)  ; Saturate(value)
  %7865 = extractvalue %dx.types.CBufRet.f32 %7850, 2
  %7866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7867 = extractvalue %dx.types.CBufRet.f32 %7866, 2
  %7868 = fadd fast float %7867, %7865
  %7869 = fcmp fast ogt float %7868, 0.000000e+00
  br i1 %7869, label %7870, label %7894

; <label>:7870                                    ; preds = %7814
  %7871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %7872 = extractvalue %dx.types.CBufRet.f32 %7871, 0
  %7873 = extractvalue %dx.types.CBufRet.f32 %7871, 1
  %7874 = fsub fast float %7856, %7872
  %7875 = fsub fast float %7857, %7873
  %7876 = fcmp fast olt float %7874, 0.000000e+00
  %7877 = fcmp fast olt float %7875, 0.000000e+00
  %7878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %7879 = extractvalue %dx.types.CBufRet.f32 %7878, 0
  %7880 = extractvalue %dx.types.CBufRet.f32 %7878, 1
  %7881 = extractvalue %dx.types.CBufRet.f32 %7878, 2
  %7882 = extractvalue %dx.types.CBufRet.f32 %7878, 3
  %7883 = select i1 %7876, float %7879, float %7881
  %7884 = select i1 %7877, float %7880, float %7882
  %7885 = fmul fast float %7883, %7874
  %7886 = fmul fast float %7884, %7875
  %7887 = call float @dx.op.unary.f32(i32 6, float %7885)  ; FAbs(value)
  %7888 = call float @dx.op.unary.f32(i32 6, float %7886)  ; FAbs(value)
  %7889 = extractvalue %dx.types.CBufRet.f32 %7805, 0
  %7890 = call float @dx.op.binary.f32(i32 35, float %7887, float %7888)  ; FMax(a,b)
  %7891 = fsub fast float %7889, %7890
  %7892 = call float @dx.op.unary.f32(i32 7, float %7891)  ; Saturate(value)
  %7893 = fmul fast float %7892, %7864
  br label %7894

; <label>:7894                                    ; preds = %7870, %7814
  %7895 = phi float [ %7893, %7870 ], [ 0.000000e+00, %7814 ]
  %7896 = extractvalue %dx.types.CBufRet.f32 %7842, 2
  %7897 = extractvalue %dx.types.CBufRet.f32 %7866, 1
  %7898 = fadd fast float %7897, %7896
  %7899 = fcmp fast ogt float %7898, 0.000000e+00
  %7900 = extractvalue %dx.types.CBufRet.f32 %7805, 0
  br i1 %7899, label %7901, label %7924

; <label>:7901                                    ; preds = %7894
  %7902 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %7903 = extractvalue %dx.types.CBufRet.f32 %7902, 0
  %7904 = extractvalue %dx.types.CBufRet.f32 %7902, 1
  %7905 = fsub fast float %7848, %7903
  %7906 = fsub fast float %7849, %7904
  %7907 = fcmp fast olt float %7905, 0.000000e+00
  %7908 = fcmp fast olt float %7906, 0.000000e+00
  %7909 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %7910 = extractvalue %dx.types.CBufRet.f32 %7909, 0
  %7911 = extractvalue %dx.types.CBufRet.f32 %7909, 1
  %7912 = extractvalue %dx.types.CBufRet.f32 %7909, 2
  %7913 = extractvalue %dx.types.CBufRet.f32 %7909, 3
  %7914 = select i1 %7907, float %7910, float %7912
  %7915 = select i1 %7908, float %7911, float %7913
  %7916 = fmul fast float %7914, %7905
  %7917 = fmul fast float %7915, %7906
  %7918 = call float @dx.op.unary.f32(i32 6, float %7916)  ; FAbs(value)
  %7919 = call float @dx.op.unary.f32(i32 6, float %7917)  ; FAbs(value)
  %7920 = call float @dx.op.binary.f32(i32 35, float %7918, float %7919)  ; FMax(a,b)
  %7921 = fsub fast float %7900, %7920
  %7922 = call float @dx.op.unary.f32(i32 7, float %7921)  ; Saturate(value)
  %7923 = fmul fast float %7922, %7864
  br label %7924

; <label>:7924                                    ; preds = %7901, %7894
  %7925 = phi float [ %7923, %7901 ], [ 0.000000e+00, %7894 ]
  %7926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %7927 = extractvalue %dx.types.CBufRet.f32 %7926, 1
  %7928 = call float @dx.op.unary.f32(i32 7, float %7927)  ; Saturate(value)
  %7929 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %7930 = extractvalue %dx.types.CBufRet.f32 %7929, 0
  %7931 = extractvalue %dx.types.CBufRet.f32 %7929, 1
  %7932 = fsub fast float %7833, %7930
  %7933 = fsub fast float %7837, %7931
  %7934 = fcmp fast olt float %7932, 0.000000e+00
  %7935 = fcmp fast olt float %7933, 0.000000e+00
  %7936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %7937 = extractvalue %dx.types.CBufRet.f32 %7936, 0
  %7938 = extractvalue %dx.types.CBufRet.f32 %7936, 1
  %7939 = extractvalue %dx.types.CBufRet.f32 %7936, 2
  %7940 = extractvalue %dx.types.CBufRet.f32 %7936, 3
  %7941 = select i1 %7934, float %7937, float %7939
  %7942 = select i1 %7935, float %7938, float %7940
  %7943 = fmul fast float %7941, %7932
  %7944 = fmul fast float %7942, %7933
  %7945 = call float @dx.op.unary.f32(i32 6, float %7943)  ; FAbs(value)
  %7946 = call float @dx.op.unary.f32(i32 6, float %7944)  ; FAbs(value)
  %7947 = call float @dx.op.binary.f32(i32 35, float %7945, float %7946)  ; FMax(a,b)
  %7948 = fsub fast float %7900, %7947
  %7949 = call float @dx.op.unary.f32(i32 7, float %7948)  ; Saturate(value)
  %7950 = call float @dx.op.binary.f32(i32 36, float %7949, float %7928)  ; FMin(a,b)
  %7951 = fmul fast float %7950, %7864
  %7952 = fsub fast float %7925, %7951
  %7953 = fsub fast float %7895, %7925
  %7954 = fsub fast float %7953, %7951
  %7955 = call float @dx.op.binary.f32(i32 35, float %7925, float %7895)  ; FMax(a,b)
  %7956 = call float @dx.op.binary.f32(i32 35, float %7951, float %7955)  ; FMax(a,b)
  %7957 = fcmp fast olt float %7956, 1.000000e+00
  br i1 %7957, label %7958, label %8356, !dx.controlflow.hints !100

; <label>:7958                                    ; preds = %7924
  %7959 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %7960 = extractvalue %dx.types.CBufRet.f32 %7959, 0
  %7961 = fcmp fast une float %7960, 0.000000e+00
  br i1 %7961, label %7962, label %8356, !dx.controlflow.hints !101

; <label>:7962                                    ; preds = %7958
  %7963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %7964 = extractvalue %dx.types.CBufRet.f32 %7963, 0
  %7965 = extractvalue %dx.types.CBufRet.f32 %7963, 1
  %7966 = extractvalue %dx.types.CBufRet.f32 %7963, 2
  %7967 = extractvalue %dx.types.CBufRet.f32 %7963, 3
  %7968 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %7969 = extractvalue %dx.types.CBufRet.f32 %7968, 0
  %7970 = extractvalue %dx.types.CBufRet.f32 %7968, 1
  %7971 = extractvalue %dx.types.CBufRet.f32 %7968, 2
  %7972 = extractvalue %dx.types.CBufRet.f32 %7968, 3
  %7973 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %7974 = extractvalue %dx.types.CBufRet.f32 %7973, 0
  %7975 = extractvalue %dx.types.CBufRet.f32 %7973, 1
  %7976 = extractvalue %dx.types.CBufRet.f32 %7973, 2
  %7977 = extractvalue %dx.types.CBufRet.f32 %7973, 3
  %7978 = fmul fast float %7964, %7810
  %7979 = call float @dx.op.tertiary.f32(i32 46, float %7811, float %7965, float %7978)  ; FMad(a,b,c)
  %7980 = call float @dx.op.tertiary.f32(i32 46, float %7812, float %7966, float %7979)  ; FMad(a,b,c)
  %7981 = fadd fast float %7980, %7967
  %7982 = fmul fast float %7969, %7810
  %7983 = call float @dx.op.tertiary.f32(i32 46, float %7811, float %7970, float %7982)  ; FMad(a,b,c)
  %7984 = call float @dx.op.tertiary.f32(i32 46, float %7812, float %7971, float %7983)  ; FMad(a,b,c)
  %7985 = fadd fast float %7984, %7972
  %7986 = fmul fast float %7974, %7810
  %7987 = call float @dx.op.tertiary.f32(i32 46, float %7811, float %7975, float %7986)  ; FMad(a,b,c)
  %7988 = call float @dx.op.tertiary.f32(i32 46, float %7812, float %7976, float %7987)  ; FMad(a,b,c)
  %7989 = fadd fast float %7988, %7977
  %7990 = fcmp fast oge float %7981, 1.000000e+00
  %7991 = fcmp fast oge float %7985, 1.000000e+00
  %7992 = or i1 %7990, %7991
  %7993 = fcmp fast olt float %7981, 0.000000e+00
  %7994 = fcmp fast olt float %7985, 0.000000e+00
  %7995 = or i1 %7993, %7994
  %7996 = or i1 %7992, %7995
  br i1 %7996, label %8356, label %7997, !dx.controlflow.hints !102

; <label>:7997                                    ; preds = %7962
  %7998 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %7999 = extractvalue %dx.types.CBufRet.f32 %7998, 0
  %8000 = extractvalue %dx.types.CBufRet.f32 %7998, 1
  %8001 = extractvalue %dx.types.CBufRet.f32 %7998, 2
  %8002 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %8003 = extractvalue %dx.types.CBufRet.i32 %8002, 2
  %8004 = uitofp i32 %8003 to float
  %8005 = extractvalue %dx.types.CBufRet.i32 %8002, 3
  %8006 = uitofp i32 %8005 to float
  %8007 = extractvalue %dx.types.CBufRet.f32 %7998, 3
  %8008 = fmul fast float %8007, 2.000000e+00
  %8009 = fsub fast float %7981, %7999
  %8010 = fsub fast float %7985, %8000
  %8011 = fmul fast float %8008, %8009
  %8012 = fmul fast float %8008, %8010
  %8013 = fdiv fast float 1.000000e+00, %7793
  %8014 = fmul fast float %8012, %8013
  %8015 = call float @dx.op.unary.f32(i32 6, float %8014)  ; FAbs(value)
  %8016 = fmul fast float %8001, %7812
  %8017 = fmul fast float %8016, %8008
  %8018 = call float @dx.op.unary.f32(i32 6, float %8017)  ; FAbs(value)
  %8019 = call float @dx.op.unary.f32(i32 6, float %8011)  ; FAbs(value)
  %8020 = call float @dx.op.binary.f32(i32 35, float %8018, float %8015)  ; FMax(a,b)
  %8021 = call float @dx.op.binary.f32(i32 35, float %8019, float %8020)  ; FMax(a,b)
  %8022 = fmul fast float %8021, 2.000000e+00
  %8023 = call float @dx.op.unary.f32(i32 23, float %8022)  ; Log(value)
  %8024 = call float @dx.op.binary.f32(i32 35, float %8023, float %8004)  ; FMax(a,b)
  %8025 = call float @dx.op.unary.f32(i32 22, float %8024)  ; Frc(value)
  %8026 = fadd fast float %8025, 0xBFEA666660000000
  %8027 = fmul fast float %8026, 8.000000e+00
  %8028 = call float @dx.op.unary.f32(i32 7, float %8027)  ; Saturate(value)
  %8029 = call float @dx.op.unary.f32(i32 27, float %8024)  ; Round_ni(value)
  %8030 = fadd fast float %8029, %8028
  %8031 = call float @dx.op.binary.f32(i32 36, float %8030, float %8006)  ; FMin(a,b)
  %8032 = call float @dx.op.unary.f32(i32 27, float %8031)  ; Round_ni(value)
  %8033 = fsub fast float -0.000000e+00, %8032
  %8034 = call float @dx.op.unary.f32(i32 21, float %8033)  ; Exp(value)
  %8035 = fmul fast float %8034, %8008
  %8036 = fmul fast float %8035, %7981
  %8037 = fmul fast float %8035, %7985
  %8038 = fmul fast float %8036, 2.500000e-01
  %8039 = fmul fast float %8037, 2.500000e-01
  %8040 = fadd fast float %8038, 5.000000e-01
  %8041 = fadd fast float %8039, 5.000000e-01
  %8042 = fsub fast float %8006, %8004
  %8043 = fptoui float %8042 to i32
  %8044 = add i32 %8043, 320
  %8045 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 %8044)  ; CBufferLoadLegacy(handle,regIndex)
  %8046 = extractvalue %dx.types.CBufRet.f32 %8045, 0
  %8047 = extractvalue %dx.types.CBufRet.f32 %8045, 1
  %8048 = fcmp fast une float %8031, %8006
  %8049 = fsub fast float %7981, %8046
  %8050 = fsub fast float %7985, %8047
  %8051 = call float @dx.op.unary.f32(i32 6, float %8049)  ; FAbs(value)
  %8052 = call float @dx.op.unary.f32(i32 6, float %8050)  ; FAbs(value)
  %8053 = fmul fast float %8051, %8035
  %8054 = fmul fast float %8052, %8035
  %8055 = fcmp fast olt float %8053, 1.000000e+00
  %8056 = fcmp fast olt float %8054, 1.000000e+00
  %8057 = and i1 %8055, %8056
  %8058 = or i1 %8048, %8057
  br i1 %8058, label %8059, label %8356, !dx.controlflow.hints !103

; <label>:8059                                    ; preds = %7997
  %8060 = fmul fast float %8037, 5.000000e-01
  %8061 = fmul fast float %8036, 5.000000e-01
  %8062 = fadd fast float %8060, 5.000000e-01
  %8063 = fadd fast float %8061, 5.000000e-01
  %8064 = sitofp i32 %8003 to float
  %8065 = fsub fast float %8031, %8064
  %8066 = call float @dx.op.unary.f32(i32 27, float %8065)  ; Round_ni(value)
  %8067 = call float @dx.op.unary.f32(i32 22, float %8031)  ; Frc(value)
  %8068 = call float @dx.op.unary.f32(i32 22, float %8063)  ; Frc(value)
  %8069 = call float @dx.op.unary.f32(i32 22, float %8062)  ; Frc(value)
  %8070 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %45, float %8068, float %8069, float %8066, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8071 = extractvalue %dx.types.ResRet.f32 %8070, 0
  %8072 = extractvalue %dx.types.ResRet.f32 %8070, 1
  %8073 = extractvalue %dx.types.ResRet.f32 %8070, 2
  %8074 = extractvalue %dx.types.ResRet.f32 %8070, 3
  %8075 = fcmp fast ogt float %8067, 0.000000e+00
  br i1 %8075, label %8076, label %8097, !dx.controlflow.hints !104

; <label>:8076                                    ; preds = %8059
  %8077 = fadd fast float %8066, 1.000000e+00
  %8078 = call float @dx.op.unary.f32(i32 22, float %8040)  ; Frc(value)
  %8079 = call float @dx.op.unary.f32(i32 22, float %8041)  ; Frc(value)
  %8080 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %45, float %8078, float %8079, float %8077, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8081 = extractvalue %dx.types.ResRet.f32 %8080, 0
  %8082 = extractvalue %dx.types.ResRet.f32 %8080, 1
  %8083 = extractvalue %dx.types.ResRet.f32 %8080, 2
  %8084 = extractvalue %dx.types.ResRet.f32 %8080, 3
  %8085 = fsub fast float %8081, %8071
  %8086 = fsub fast float %8082, %8072
  %8087 = fsub fast float %8083, %8073
  %8088 = fsub fast float %8084, %8074
  %8089 = fmul fast float %8085, %8067
  %8090 = fmul fast float %8086, %8067
  %8091 = fmul fast float %8087, %8067
  %8092 = fmul fast float %8088, %8067
  %8093 = fadd fast float %8089, %8071
  %8094 = fadd fast float %8090, %8072
  %8095 = fadd fast float %8091, %8073
  %8096 = fadd fast float %8092, %8074
  br label %8097

; <label>:8097                                    ; preds = %8076, %8059
  %8098 = phi float [ %8093, %8076 ], [ %8071, %8059 ]
  %8099 = phi float [ %8094, %8076 ], [ %8072, %8059 ]
  %8100 = phi float [ %8095, %8076 ], [ %8073, %8059 ]
  %8101 = phi float [ %8096, %8076 ], [ %8074, %8059 ]
  %8102 = fadd fast float %8098, -5.000000e-01
  %8103 = fadd fast float %8100, -5.000000e-01
  %8104 = fmul fast float %8102, 0xBFD5555560000000
  %8105 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %8103, float %8104)  ; FMad(a,b,c)
  %8106 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %8099, float 0.000000e+00)  ; FMad(a,b,c)
  %8107 = fadd fast float %8106, %8101
  %8108 = fmul fast float %8102, -7.500000e-01
  %8109 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %8103, float %8108)  ; FMad(a,b,c)
  %8110 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %8099, float 0.000000e+00)  ; FMad(a,b,c)
  %8111 = fadd fast float %8110, %8101
  %8112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %8113 = extractvalue %dx.types.CBufRet.f32 %8112, 0
  %8114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %8115 = extractvalue %dx.types.CBufRet.f32 %8114, 0
  %8116 = extractvalue %dx.types.CBufRet.f32 %8114, 1
  %8117 = extractvalue %dx.types.CBufRet.f32 %8114, 2
  %8118 = extractvalue %dx.types.CBufRet.f32 %8114, 3
  %8119 = fsub fast float %8115, %8105
  %8120 = fsub fast float %8116, %8107
  %8121 = fsub fast float %8117, %8109
  %8122 = fsub fast float %8118, %8111
  %8123 = fmul fast float %8119, %8113
  %8124 = fmul fast float %8120, %8113
  %8125 = fmul fast float %8121, %8113
  %8126 = fmul fast float %8122, %8113
  %8127 = fadd fast float %8123, %8105
  %8128 = fadd fast float %8124, %8107
  %8129 = fadd fast float %8125, %8109
  %8130 = fadd fast float %8126, %8111
  %8131 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %8132 = extractvalue %dx.types.ResRet.i32 %8131, 0
  %8133 = and i32 %8132, 536870911
  %8134 = uitofp i32 %8133 to float
  %8135 = fmul fast float %8134, %7981
  %8136 = fmul fast float %8134, %7985
  %8137 = fptoui float %8135 to i32
  %8138 = fptoui float %8136 to i32
  %8139 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %8140 = extractvalue %dx.types.ResRet.i32 %8139, 0
  %8141 = and i32 %8140, 31
  %8142 = lshr i32 %8137, %8141
  %8143 = lshr i32 %8138, %8141
  %8144 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %8145 = extractvalue %dx.types.ResRet.i32 %8144, 0
  %8146 = and i32 %8145, 31
  %8147 = shl i32 1, %8146
  %8148 = call i32 @dx.op.binary.i32(i32 40, i32 %8147, i32 4)  ; UMin(a,b)
  %8149 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %8150 = extractvalue %dx.types.ResRet.i32 %8149, 0
  %8151 = extractvalue %dx.types.ResRet.i32 %8149, 1
  %8152 = icmp eq i32 %8148, 0
  br i1 %8152, label %8194, label %8153

; <label>:8153                                    ; preds = %8097
  br label %8154

; <label>:8154                                    ; preds = %8182, %8153
  %8155 = phi i32 [ %8185, %8182 ], [ 0, %8153 ]
  %8156 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %8157 = extractvalue %dx.types.ResRet.i32 %8156, 0
  %8158 = lshr i32 %8157, 16
  %8159 = and i32 %8158, 31
  %8160 = shl i32 %8143, %8159
  %8161 = add i32 %8160, %8142
  %8162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %8163 = extractvalue %dx.types.ResRet.i32 %8162, 0
  %8164 = and i32 %8163, 31
  %8165 = shl i32 %8161, %8164
  %8166 = add i32 %8165, %8155
  %8167 = shl i32 %8166, 2
  %8168 = add i32 %8167, 32
  %8169 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %8168, i32 undef)  ; BufferLoad(srv,index,wot)
  %8170 = extractvalue %dx.types.ResRet.i32 %8169, 0
  %8171 = icmp slt i32 %8170, 0
  %8172 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 %8155
  %8173 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 %8155
  %8174 = bitcast float* %8172 to i32*
  %8175 = bitcast float* %8173 to i32*
  br i1 %8171, label %8176, label %8182

; <label>:8176                                    ; preds = %8154
  %8177 = and i32 %8170, 1073741823
  %8178 = add nuw nsw i32 %8177, 20
  %8179 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %8178, i32 undef)  ; BufferLoad(srv,index,wot)
  %8180 = extractvalue %dx.types.ResRet.i32 %8179, 0
  %8181 = extractvalue %dx.types.ResRet.i32 %8179, 1
  br label %8182

; <label>:8182                                    ; preds = %8176, %8154
  %8183 = phi i32 [ %8180, %8176 ], [ %8150, %8154 ]
  %8184 = phi i32 [ %8181, %8176 ], [ %8151, %8154 ]
  store i32 %8183, i32* %8174, align 4
  store i32 %8184, i32* %8175, align 4
  %8185 = add nuw i32 %8155, 1
  %8186 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %8187 = extractvalue %dx.types.CBufRet.i32 %8186, 2
  %8188 = icmp eq i32 %8187, 0
  %8189 = icmp ugt i32 %8170, -1073741825
  %8190 = and i1 %8189, %8188
  %8191 = icmp ult i32 %8185, %8148
  %8192 = and i1 %8190, %8191
  br i1 %8192, label %8154, label %8193

; <label>:8193                                    ; preds = %8182
  br label %8194

; <label>:8194                                    ; preds = %8193, %8097
  %8195 = phi i32 [ 0, %8097 ], [ %8185, %8193 ]
  %8196 = extractvalue %dx.types.CBufRet.f32 %7959, 2
  %8197 = fptoui float %8196 to i32
  %8198 = icmp eq i32 %8197, 0
  br i1 %8198, label %8250, label %8199

; <label>:8199                                    ; preds = %8194
  br label %8200

; <label>:8200                                    ; preds = %8245, %8199
  %8201 = phi i32 [ %8246, %8245 ], [ %8195, %8199 ]
  %8202 = phi i32 [ %8247, %8245 ], [ 0, %8199 ]
  %8203 = lshr i32 %8202, 2
  %8204 = and i32 %8202, 3
  %8205 = add nuw nsw i32 %8203, 83
  %8206 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 %8205)  ; CBufferLoadLegacy(handle,regIndex)
  %8207 = extractvalue %dx.types.CBufRet.i32 %8206, 0
  %8208 = extractvalue %dx.types.CBufRet.i32 %8206, 1
  %8209 = extractvalue %dx.types.CBufRet.i32 %8206, 2
  %8210 = extractvalue %dx.types.CBufRet.i32 %8206, 3
  %8211 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 0
  store i32 %8207, i32* %8211, align 4
  %8212 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 1
  store i32 %8208, i32* %8212, align 4
  %8213 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 2
  store i32 %8209, i32* %8213, align 4
  %8214 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 3
  store i32 %8210, i32* %8214, align 4
  %8215 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 %8204
  %8216 = load i32, i32* %8215, align 4, !tbaa !95, !noalias !105
  %8217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %8218 = extractvalue %dx.types.ResRet.i32 %8217, 0
  %8219 = lshr i32 %8218, 16
  %8220 = and i32 %8219, 31
  %8221 = shl i32 %8143, %8220
  %8222 = add i32 %8221, %8142
  %8223 = shl i32 %8222, 2
  %8224 = add i32 %8223, %8216
  %8225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %8224, i32 undef)  ; BufferLoad(srv,index,wot)
  %8226 = extractvalue %dx.types.ResRet.i32 %8225, 0
  %8227 = icmp eq i32 %8226, 0
  br i1 %8227, label %8245, label %8228

; <label>:8228                                    ; preds = %8200
  %8229 = icmp slt i32 %8226, 0
  %8230 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 %8201
  %8231 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 %8201
  %8232 = bitcast float* %8230 to i32*
  %8233 = bitcast float* %8231 to i32*
  br i1 %8229, label %8234, label %8241

; <label>:8234                                    ; preds = %8228
  %8235 = and i32 %8226, 1073741823
  %8236 = add i32 %8216, 20
  %8237 = add i32 %8236, %8235
  %8238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %8237, i32 undef)  ; BufferLoad(srv,index,wot)
  %8239 = extractvalue %dx.types.ResRet.i32 %8238, 0
  %8240 = extractvalue %dx.types.ResRet.i32 %8238, 1
  br label %8241

; <label>:8241                                    ; preds = %8234, %8228
  %8242 = phi i32 [ %8239, %8234 ], [ %8150, %8228 ]
  %8243 = phi i32 [ %8240, %8234 ], [ %8151, %8228 ]
  store i32 %8242, i32* %8232, align 4
  store i32 %8243, i32* %8233, align 4
  %8244 = add i32 %8201, 1
  br label %8245

; <label>:8245                                    ; preds = %8241, %8200
  %8246 = phi i32 [ %8201, %8200 ], [ %8244, %8241 ]
  %8247 = add nuw i32 %8202, 1
  %8248 = icmp eq i32 %8247, %8197
  br i1 %8248, label %8249, label %8200

; <label>:8249                                    ; preds = %8245
  br label %8250

; <label>:8250                                    ; preds = %8249, %8194
  %8251 = phi i32 [ %8195, %8194 ], [ %8246, %8249 ]
  %8252 = icmp eq i32 %8251, 1
  %8253 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 0
  %8254 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 0
  br i1 %8252, label %8255, label %8258

; <label>:8255                                    ; preds = %8250
  %8256 = load float, float* %8253, align 4
  %8257 = load float, float* %8254, align 4
  br label %8285

; <label>:8258                                    ; preds = %8250
  %8259 = load float, float* %8253, align 4
  %8260 = load float, float* %8254, align 4
  %8261 = fdiv fast float 1.000000e+00, %8260
  %8262 = fsub fast float %8259, %8261
  %8263 = icmp ugt i32 %8251, 1
  br i1 %8263, label %8264, label %8280

; <label>:8264                                    ; preds = %8258
  br label %8265

; <label>:8265                                    ; preds = %8265, %8264
  %8266 = phi float [ %8275, %8265 ], [ %8262, %8264 ]
  %8267 = phi float [ %8276, %8265 ], [ %8259, %8264 ]
  %8268 = phi i32 [ %8277, %8265 ], [ 1, %8264 ]
  %8269 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 %8268
  %8270 = load float, float* %8269, align 4
  %8271 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 %8268
  %8272 = load float, float* %8271, align 4
  %8273 = fdiv fast float 1.000000e+00, %8272
  %8274 = fsub fast float %8270, %8273
  %8275 = call float @dx.op.binary.f32(i32 36, float %8266, float %8274)  ; FMin(a,b)
  %8276 = call float @dx.op.binary.f32(i32 35, float %8267, float %8270)  ; FMax(a,b)
  %8277 = add nuw i32 %8268, 1
  %8278 = icmp eq i32 %8277, %8251
  br i1 %8278, label %8279, label %8265

; <label>:8279                                    ; preds = %8265
  br label %8280

; <label>:8280                                    ; preds = %8279, %8258
  %8281 = phi float [ %8262, %8258 ], [ %8275, %8279 ]
  %8282 = phi float [ %8259, %8258 ], [ %8276, %8279 ]
  %8283 = fsub fast float %8282, %8281
  %8284 = fdiv fast float 1.000000e+00, %8283
  br label %8285

; <label>:8285                                    ; preds = %8280, %8255
  %8286 = phi float [ %8256, %8255 ], [ %8282, %8280 ]
  %8287 = phi float [ %8257, %8255 ], [ %8284, %8280 ]
  %8288 = fadd fast float %7989, %8286
  %8289 = fmul fast float %8288, %8287
  %8290 = call float @dx.op.unary.f32(i32 7, float %8289)  ; Saturate(value)
  %8291 = fmul fast float %8290, 2.000000e+00
  %8292 = fsub fast float 1.000000e+00, %8291
  %8293 = fmul fast float %8127, %8127
  %8294 = fsub fast float %8128, %8293
  %8295 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %8294)  ; FMax(a,b)
  %8296 = fdiv fast float 1.000000e+00, %8295
  %8297 = fmul fast float %8128, %8127
  %8298 = fsub fast float %8129, %8297
  %8299 = fsub fast float %8292, %8127
  %8300 = fmul fast float %8292, %8292
  %8301 = fsub fast float %8300, %8128
  %8302 = fmul fast float %8296, %8298
  %8303 = fmul fast float %8302, %8299
  %8304 = fsub fast float %8301, %8303
  %8305 = fmul fast float %8128, %8128
  %8306 = fsub fast float %8130, %8305
  %8307 = fmul fast float %8298, %8298
  %8308 = fmul fast float %8307, %8296
  %8309 = fsub fast float %8306, %8308
  %8310 = fdiv fast float %8304, %8309
  %8311 = fmul fast float %8310, %8298
  %8312 = fsub fast float %8299, %8311
  %8313 = fmul fast float %8312, %8296
  %8314 = fmul fast float %8313, %8127
  %8315 = fsub fast float 1.000000e+00, %8314
  %8316 = fmul fast float %8310, %8128
  %8317 = fsub fast float %8315, %8316
  %8318 = fmul fast float %8313, %8313
  %8319 = fmul fast float %8310, 4.000000e+00
  %8320 = fmul fast float %8319, %8317
  %8321 = fsub fast float %8318, %8320
  %8322 = call float @dx.op.unary.f32(i32 24, float %8321)  ; Sqrt(value)
  %8323 = fcmp fast oge float %8313, 0.000000e+00
  %8324 = fsub fast float -0.000000e+00, %8322
  %8325 = select i1 %8323, float %8324, float %8322
  %8326 = fsub fast float %8325, %8313
  %8327 = fdiv fast float %8326, %8310
  %8328 = fdiv fast float %8317, %8326
  %8329 = fmul fast float %8327, 5.000000e-01
  %8330 = fmul fast float %8328, 2.000000e+00
  %8331 = select i1 %8323, float %8329, float %8330
  %8332 = select i1 %8323, float %8330, float %8329
  %8333 = call float @dx.op.binary.f32(i32 35, float %8331, float %8332)  ; FMax(a,b)
  %8334 = call float @dx.op.binary.f32(i32 36, float %8331, float %8332)  ; FMin(a,b)
  %8335 = fcmp fast ogt float %8292, %8333
  %8336 = fsub fast float %8292, %8334
  %8337 = fsub fast float %8292, %8333
  %8338 = fsub fast float %8333, %8334
  %8339 = select i1 %8335, float %8337, float %8338
  %8340 = fmul float %8336, %8339
  %8341 = select i1 %8335, float %8334, float %8292
  %8342 = fcmp fast ogt float %8292, %8334
  %8343 = fmul fast float %8341, %8333
  %8344 = fadd fast float %8341, %8333
  %8345 = fmul fast float %8344, %8127
  %8346 = fadd fast float %8343, %8128
  %8347 = fsub fast float %8346, %8345
  %8348 = fdiv fast float %8347, %8340
  %8349 = select i1 %8342, float %8348, float 0.000000e+00
  %8350 = fsub fast float 1.000000e+00, %8349
  %8351 = select i1 %8335, float %8350, float %8349
  %8352 = call float @dx.op.unary.f32(i32 7, float %8351)  ; Saturate(value)
  %8353 = extractvalue %dx.types.CBufRet.f32 %8112, 3
  %8354 = fmul fast float %8353, %8352
  %8355 = fsub fast float 1.000000e+00, %8354
  br label %8356

; <label>:8356                                    ; preds = %8285, %7997, %7962, %7958, %7924
  %8357 = phi float [ 1.000000e+00, %7924 ], [ %8355, %8285 ], [ 1.000000e+00, %7962 ], [ 1.000000e+00, %7997 ], [ 1.000000e+00, %7958 ]
  %8358 = fcmp fast ogt float %7954, 0.000000e+00
  br i1 %8358, label %8359, label %8521, !dx.controlflow.hints !114

; <label>:8359                                    ; preds = %8356
  %8360 = fadd fast float %7867, %7841
  %8361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %8362 = extractvalue %dx.types.CBufRet.f32 %8361, 2
  %8363 = extractvalue %dx.types.CBufRet.f32 %8361, 3
  %8364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %8365 = extractvalue %dx.types.CBufRet.f32 %8364, 2
  %8366 = call float @dx.op.binary.f32(i32 35, float %8360, float 0.000000e+00)  ; FMax(a,b)
  %8367 = fadd fast float %8366, 0x3F10000000000000
  %8368 = fcmp fast oeq float %8365, 0.000000e+00
  br i1 %8368, label %8369, label %8436

; <label>:8369                                    ; preds = %8359
  %8370 = extractvalue %dx.types.CBufRet.f32 %8361, 1
  %8371 = extractvalue %dx.types.CBufRet.f32 %8361, 0
  %8372 = fmul fast float %8371, %7856
  %8373 = fmul fast float %8370, %7857
  %8374 = fadd fast float %8372, 5.000000e-01
  %8375 = call float @dx.op.unary.f32(i32 27, float %8374)  ; Round_ni(value)
  %8376 = fadd fast float %8373, 5.000000e-01
  %8377 = call float @dx.op.unary.f32(i32 27, float %8376)  ; Round_ni(value)
  %8378 = fsub fast float %8374, %8375
  %8379 = fsub fast float %8376, %8377
  %8380 = fadd fast float %8375, -5.000000e-01
  %8381 = fadd fast float %8377, -5.000000e-01
  %8382 = fmul fast float %8378, 2.000000e+00
  %8383 = fsub fast float 3.000000e+00, %8382
  %8384 = fadd fast float %8382, 1.000000e+00
  %8385 = fsub fast float 2.000000e+00, %8378
  %8386 = bitcast float %8383 to i32
  %8387 = sub nsw i32 2129859010, %8386
  %8388 = bitcast i32 %8387 to float
  %8389 = fmul fast float %8388, %8385
  %8390 = fadd fast float %8389, -1.000000e+00
  %8391 = bitcast float %8384 to i32
  %8392 = sub nsw i32 2129859010, %8391
  %8393 = bitcast i32 %8392 to float
  %8394 = fmul fast float %8393, %8378
  %8395 = fadd fast float %8394, 1.000000e+00
  %8396 = fmul fast float %8379, 2.000000e+00
  %8397 = fsub fast float 3.000000e+00, %8396
  %8398 = fadd fast float %8396, 1.000000e+00
  %8399 = fsub fast float 2.000000e+00, %8379
  %8400 = bitcast float %8397 to i32
  %8401 = sub nsw i32 2129859010, %8400
  %8402 = bitcast i32 %8401 to float
  %8403 = fmul fast float %8402, %8399
  %8404 = fadd fast float %8403, -1.000000e+00
  %8405 = bitcast float %8398 to i32
  %8406 = sub nsw i32 2129859010, %8405
  %8407 = bitcast i32 %8406 to float
  %8408 = fmul fast float %8407, %8379
  %8409 = fadd fast float %8408, 1.000000e+00
  %8410 = fadd fast float %8390, %8380
  %8411 = fmul fast float %8410, %8362
  %8412 = fadd fast float %8404, %8381
  %8413 = fmul fast float %8412, %8363
  %8414 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %48, float %8411, float %8413, float undef, float undef, i32 0, i32 0, i32 undef, float %8367)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %8415 = extractvalue %dx.types.ResRet.f32 %8414, 0
  %8416 = fmul fast float %8415, %8383
  %8417 = fadd fast float %8395, %8380
  %8418 = fmul fast float %8417, %8362
  %8419 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %48, float %8418, float %8413, float undef, float undef, i32 0, i32 0, i32 undef, float %8367)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %8420 = extractvalue %dx.types.ResRet.f32 %8419, 0
  %8421 = fmul fast float %8420, %8384
  %8422 = fadd fast float %8409, %8381
  %8423 = fmul fast float %8422, %8363
  %8424 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %48, float %8411, float %8423, float undef, float undef, i32 0, i32 0, i32 undef, float %8367)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %8425 = extractvalue %dx.types.ResRet.f32 %8424, 0
  %8426 = fmul fast float %8425, %8383
  %8427 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %48, float %8418, float %8423, float undef, float undef, i32 0, i32 0, i32 undef, float %8367)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %8428 = extractvalue %dx.types.ResRet.f32 %8427, 0
  %8429 = fmul fast float %8428, %8384
  %8430 = fadd fast float %8429, %8426
  %8431 = fmul fast float %8430, %8398
  %8432 = fadd fast float %8421, %8416
  %8433 = fmul fast float %8432, %8397
  %8434 = fadd fast float %8433, %8431
  %8435 = fmul fast float %8434, 6.250000e-02
  br label %8521

; <label>:8436                                    ; preds = %8359
  %8437 = fmul fast float %236, 0x401921FB60000000
  %8438 = call float @dx.op.unary.f32(i32 13, float %8437)  ; Sin(value)
  %8439 = call float @dx.op.unary.f32(i32 12, float %8437)  ; Cos(value)
  %8440 = fsub fast float -0.000000e+00, %8438
  br label %8441

; <label>:8441                                    ; preds = %8490, %8436
  %8442 = phi float [ 0.000000e+00, %8436 ], [ %8485, %8490 ]
  %8443 = phi float [ 0.000000e+00, %8436 ], [ %8487, %8490 ]
  %8444 = phi i32 [ 0, %8436 ], [ %8491, %8490 ]
  %8445 = mul i32 %8444, 2
  %8446 = add i32 0, %8445
  %8447 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8446
  %8448 = load float, float* %8447, align 4
  %8449 = mul i32 %8444, 2
  %8450 = add i32 1, %8449
  %8451 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8450
  %8452 = load float, float* %8451, align 4
  %8453 = fmul fast float %8448, %8439
  %8454 = call float @dx.op.tertiary.f32(i32 46, float %8452, float %8440, float %8453)  ; FMad(a,b,c)
  %8455 = fmul fast float %8448, %8438
  %8456 = call float @dx.op.tertiary.f32(i32 46, float %8452, float %8439, float %8455)  ; FMad(a,b,c)
  %8457 = fmul fast float %8454, %8365
  %8458 = fmul fast float %8456, %8365
  %8459 = fadd fast float %8457, %7856
  %8460 = fadd fast float %8458, %7857
  %8461 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %47, float %8459, float %8460, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8462 = extractvalue %dx.types.ResRet.f32 %8461, 0
  %8463 = extractvalue %dx.types.ResRet.f32 %8461, 1
  %8464 = extractvalue %dx.types.ResRet.f32 %8461, 2
  %8465 = extractvalue %dx.types.ResRet.f32 %8461, 3
  %8466 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 0
  store float %8462, float* %8466, align 4
  %8467 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 1
  store float %8463, float* %8467, align 4
  %8468 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 2
  store float %8464, float* %8468, align 4
  %8469 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 3
  store float %8465, float* %8469, align 4
  %8470 = fsub fast float %8462, %8367
  %8471 = fcmp fast olt float %8470, 0.000000e+00
  %8472 = select i1 %8471, float 0.000000e+00, float 1.000000e+00
  %8473 = fadd fast float %8472, %8442
  %8474 = fmul fast float %8472, %8470
  %8475 = fadd fast float %8474, %8443
  br label %8476

; <label>:8476                                    ; preds = %8476, %8441
  %8477 = phi i32 [ 1, %8441 ], [ %8488, %8476 ]
  %8478 = phi float [ %8475, %8441 ], [ %8487, %8476 ]
  %8479 = phi float [ %8473, %8441 ], [ %8485, %8476 ]
  %8480 = getelementptr [4 x float], [4 x float]* %102, i32 0, i32 %8477
  %8481 = load float, float* %8480, align 4, !tbaa !89, !noalias !105
  %8482 = fsub fast float %8481, %8367
  %8483 = fcmp fast olt float %8482, 0.000000e+00
  %8484 = select i1 %8483, float 0.000000e+00, float 1.000000e+00
  %8485 = fadd fast float %8484, %8479
  %8486 = fmul fast float %8484, %8482
  %8487 = fadd fast float %8486, %8478
  %8488 = add nuw nsw i32 %8477, 1
  %8489 = icmp eq i32 %8488, 4
  br i1 %8489, label %8490, label %8476, !llvm.loop !115

; <label>:8490                                    ; preds = %8476
  %8491 = add nuw nsw i32 %8444, 1
  %8492 = icmp eq i32 %8491, 8
  br i1 %8492, label %8493, label %8441, !llvm.loop !116

; <label>:8493                                    ; preds = %8490
  %8494 = fdiv fast float 1.000000e+00, %8485
  %8495 = fmul fast float %8494, %8487
  %8496 = fdiv fast float 1.000000e+00, %8367
  %8497 = fmul fast float %8495, %8496
  %8498 = call float @dx.op.unary.f32(i32 7, float %8497)  ; Saturate(value)
  %8499 = call float @dx.op.binary.f32(i32 35, float %8498, float 0.000000e+00)  ; FMax(a,b)
  %8500 = fmul fast float %8485, 3.125000e-02
  %8501 = call float @dx.op.unary.f32(i32 7, float %8500)  ; Saturate(value)
  %8502 = fmul fast float %8501, 2.000000e+00
  %8503 = fadd fast float %8502, -1.000000e+00
  %8504 = fcmp fast ogt float %8503, 0.000000e+00
  %8505 = fcmp fast olt float %8503, 0.000000e+00
  %8506 = zext i1 %8504 to i32
  %8507 = zext i1 %8505 to i32
  %8508 = sub nsw i32 %8506, %8507
  %8509 = sitofp i32 %8508 to float
  %8510 = fmul fast float %8509, %8503
  %8511 = fsub fast float 1.000000e+00, %8510
  %8512 = fmul fast float %8511, %8511
  %8513 = fmul fast float %8512, %8511
  %8514 = fsub fast float %8511, %8513
  %8515 = fmul fast float %8514, %8499
  %8516 = fsub fast float 1.000000e+00, %8513
  %8517 = fsub fast float %8516, %8515
  %8518 = fmul fast float %8509, 5.000000e-01
  %8519 = fmul fast float %8518, %8517
  %8520 = fsub fast float 5.000000e-01, %8519
  br label %8521

; <label>:8521                                    ; preds = %8493, %8369, %8356
  %8522 = phi float [ 1.000000e+00, %8356 ], [ %8435, %8369 ], [ %8520, %8493 ]
  %8523 = fcmp fast ogt float %7952, 0.000000e+00
  br i1 %8523, label %8524, label %8688, !dx.controlflow.hints !117

; <label>:8524                                    ; preds = %8521
  %8525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %8526 = extractvalue %dx.types.CBufRet.f32 %8525, 1
  %8527 = fadd fast float %8526, %7841
  %8528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %8529 = extractvalue %dx.types.CBufRet.f32 %8528, 2
  %8530 = extractvalue %dx.types.CBufRet.f32 %8528, 3
  %8531 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %8532 = extractvalue %dx.types.CBufRet.f32 %8531, 1
  %8533 = call float @dx.op.binary.f32(i32 35, float %8527, float 0.000000e+00)  ; FMax(a,b)
  %8534 = fadd fast float %8533, 0x3F10000000000000
  %8535 = fcmp fast oeq float %8532, 0.000000e+00
  br i1 %8535, label %8536, label %8603

; <label>:8536                                    ; preds = %8524
  %8537 = extractvalue %dx.types.CBufRet.f32 %8528, 1
  %8538 = extractvalue %dx.types.CBufRet.f32 %8528, 0
  %8539 = fmul fast float %8538, %7848
  %8540 = fmul fast float %8537, %7849
  %8541 = fadd fast float %8539, 5.000000e-01
  %8542 = call float @dx.op.unary.f32(i32 27, float %8541)  ; Round_ni(value)
  %8543 = fadd fast float %8540, 5.000000e-01
  %8544 = call float @dx.op.unary.f32(i32 27, float %8543)  ; Round_ni(value)
  %8545 = fsub fast float %8541, %8542
  %8546 = fsub fast float %8543, %8544
  %8547 = fadd fast float %8542, -5.000000e-01
  %8548 = fadd fast float %8544, -5.000000e-01
  %8549 = fmul fast float %8545, 2.000000e+00
  %8550 = fsub fast float 3.000000e+00, %8549
  %8551 = fadd fast float %8549, 1.000000e+00
  %8552 = fsub fast float 2.000000e+00, %8545
  %8553 = bitcast float %8550 to i32
  %8554 = sub nsw i32 2129859010, %8553
  %8555 = bitcast i32 %8554 to float
  %8556 = fmul fast float %8555, %8552
  %8557 = fadd fast float %8556, -1.000000e+00
  %8558 = bitcast float %8551 to i32
  %8559 = sub nsw i32 2129859010, %8558
  %8560 = bitcast i32 %8559 to float
  %8561 = fmul fast float %8560, %8545
  %8562 = fadd fast float %8561, 1.000000e+00
  %8563 = fmul fast float %8546, 2.000000e+00
  %8564 = fsub fast float 3.000000e+00, %8563
  %8565 = fadd fast float %8563, 1.000000e+00
  %8566 = fsub fast float 2.000000e+00, %8546
  %8567 = bitcast float %8564 to i32
  %8568 = sub nsw i32 2129859010, %8567
  %8569 = bitcast i32 %8568 to float
  %8570 = fmul fast float %8569, %8566
  %8571 = fadd fast float %8570, -1.000000e+00
  %8572 = bitcast float %8565 to i32
  %8573 = sub nsw i32 2129859010, %8572
  %8574 = bitcast i32 %8573 to float
  %8575 = fmul fast float %8574, %8546
  %8576 = fadd fast float %8575, 1.000000e+00
  %8577 = fadd fast float %8557, %8547
  %8578 = fmul fast float %8577, %8529
  %8579 = fadd fast float %8571, %8548
  %8580 = fmul fast float %8579, %8530
  %8581 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %48, float %8578, float %8580, float undef, float undef, i32 0, i32 0, i32 undef, float %8534)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %8582 = extractvalue %dx.types.ResRet.f32 %8581, 0
  %8583 = fmul fast float %8582, %8550
  %8584 = fadd fast float %8562, %8547
  %8585 = fmul fast float %8584, %8529
  %8586 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %48, float %8585, float %8580, float undef, float undef, i32 0, i32 0, i32 undef, float %8534)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %8587 = extractvalue %dx.types.ResRet.f32 %8586, 0
  %8588 = fmul fast float %8587, %8551
  %8589 = fadd fast float %8576, %8548
  %8590 = fmul fast float %8589, %8530
  %8591 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %48, float %8578, float %8590, float undef, float undef, i32 0, i32 0, i32 undef, float %8534)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %8592 = extractvalue %dx.types.ResRet.f32 %8591, 0
  %8593 = fmul fast float %8592, %8550
  %8594 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %48, float %8585, float %8590, float undef, float undef, i32 0, i32 0, i32 undef, float %8534)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %8595 = extractvalue %dx.types.ResRet.f32 %8594, 0
  %8596 = fmul fast float %8595, %8551
  %8597 = fadd fast float %8596, %8593
  %8598 = fmul fast float %8597, %8565
  %8599 = fadd fast float %8588, %8583
  %8600 = fmul fast float %8599, %8564
  %8601 = fadd fast float %8600, %8598
  %8602 = fmul fast float %8601, 6.250000e-02
  br label %8688

; <label>:8603                                    ; preds = %8524
  %8604 = fmul fast float %236, 0x401921FB60000000
  %8605 = call float @dx.op.unary.f32(i32 13, float %8604)  ; Sin(value)
  %8606 = call float @dx.op.unary.f32(i32 12, float %8604)  ; Cos(value)
  %8607 = fsub fast float -0.000000e+00, %8605
  br label %8608

; <label>:8608                                    ; preds = %8657, %8603
  %8609 = phi float [ 0.000000e+00, %8603 ], [ %8652, %8657 ]
  %8610 = phi float [ 0.000000e+00, %8603 ], [ %8654, %8657 ]
  %8611 = phi i32 [ 0, %8603 ], [ %8658, %8657 ]
  %8612 = mul i32 %8611, 2
  %8613 = add i32 0, %8612
  %8614 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8613
  %8615 = load float, float* %8614, align 4
  %8616 = mul i32 %8611, 2
  %8617 = add i32 1, %8616
  %8618 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8617
  %8619 = load float, float* %8618, align 4
  %8620 = fmul fast float %8615, %8606
  %8621 = call float @dx.op.tertiary.f32(i32 46, float %8619, float %8607, float %8620)  ; FMad(a,b,c)
  %8622 = fmul fast float %8615, %8605
  %8623 = call float @dx.op.tertiary.f32(i32 46, float %8619, float %8606, float %8622)  ; FMad(a,b,c)
  %8624 = fmul fast float %8621, %8532
  %8625 = fmul fast float %8623, %8532
  %8626 = fadd fast float %8624, %7848
  %8627 = fadd fast float %8625, %7849
  %8628 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %47, float %8626, float %8627, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8629 = extractvalue %dx.types.ResRet.f32 %8628, 0
  %8630 = extractvalue %dx.types.ResRet.f32 %8628, 1
  %8631 = extractvalue %dx.types.ResRet.f32 %8628, 2
  %8632 = extractvalue %dx.types.ResRet.f32 %8628, 3
  %8633 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 0
  store float %8629, float* %8633, align 4
  %8634 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 1
  store float %8630, float* %8634, align 4
  %8635 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 2
  store float %8631, float* %8635, align 4
  %8636 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 3
  store float %8632, float* %8636, align 4
  %8637 = fsub fast float %8629, %8534
  %8638 = fcmp fast olt float %8637, 0.000000e+00
  %8639 = select i1 %8638, float 0.000000e+00, float 1.000000e+00
  %8640 = fadd fast float %8639, %8609
  %8641 = fmul fast float %8639, %8637
  %8642 = fadd fast float %8641, %8610
  br label %8643

; <label>:8643                                    ; preds = %8643, %8608
  %8644 = phi i32 [ 1, %8608 ], [ %8655, %8643 ]
  %8645 = phi float [ %8642, %8608 ], [ %8654, %8643 ]
  %8646 = phi float [ %8640, %8608 ], [ %8652, %8643 ]
  %8647 = getelementptr [4 x float], [4 x float]* %101, i32 0, i32 %8644
  %8648 = load float, float* %8647, align 4, !tbaa !89, !noalias !105
  %8649 = fsub fast float %8648, %8534
  %8650 = fcmp fast olt float %8649, 0.000000e+00
  %8651 = select i1 %8650, float 0.000000e+00, float 1.000000e+00
  %8652 = fadd fast float %8651, %8646
  %8653 = fmul fast float %8651, %8649
  %8654 = fadd fast float %8653, %8645
  %8655 = add nuw nsw i32 %8644, 1
  %8656 = icmp eq i32 %8655, 4
  br i1 %8656, label %8657, label %8643, !llvm.loop !115

; <label>:8657                                    ; preds = %8643
  %8658 = add nuw nsw i32 %8611, 1
  %8659 = icmp eq i32 %8658, 8
  br i1 %8659, label %8660, label %8608, !llvm.loop !116

; <label>:8660                                    ; preds = %8657
  %8661 = fdiv fast float 1.000000e+00, %8652
  %8662 = fmul fast float %8661, %8654
  %8663 = fdiv fast float 1.000000e+00, %8534
  %8664 = fmul fast float %8662, %8663
  %8665 = call float @dx.op.unary.f32(i32 7, float %8664)  ; Saturate(value)
  %8666 = call float @dx.op.binary.f32(i32 35, float %8665, float 0.000000e+00)  ; FMax(a,b)
  %8667 = fmul fast float %8652, 3.125000e-02
  %8668 = call float @dx.op.unary.f32(i32 7, float %8667)  ; Saturate(value)
  %8669 = fmul fast float %8668, 2.000000e+00
  %8670 = fadd fast float %8669, -1.000000e+00
  %8671 = fcmp fast ogt float %8670, 0.000000e+00
  %8672 = fcmp fast olt float %8670, 0.000000e+00
  %8673 = zext i1 %8671 to i32
  %8674 = zext i1 %8672 to i32
  %8675 = sub nsw i32 %8673, %8674
  %8676 = sitofp i32 %8675 to float
  %8677 = fmul fast float %8676, %8670
  %8678 = fsub fast float 1.000000e+00, %8677
  %8679 = fmul fast float %8678, %8678
  %8680 = fmul fast float %8679, %8678
  %8681 = fsub fast float %8678, %8680
  %8682 = fmul fast float %8681, %8666
  %8683 = fsub fast float 1.000000e+00, %8680
  %8684 = fsub fast float %8683, %8682
  %8685 = fmul fast float %8676, 5.000000e-01
  %8686 = fmul fast float %8685, %8684
  %8687 = fsub fast float 5.000000e-01, %8686
  br label %8688

; <label>:8688                                    ; preds = %8660, %8536, %8521
  %8689 = phi float [ 1.000000e+00, %8521 ], [ %8602, %8536 ], [ %8687, %8660 ]
  %8690 = fcmp fast ogt float %7951, 0.000000e+00
  br i1 %8690, label %8691, label %8855, !dx.controlflow.hints !118

; <label>:8691                                    ; preds = %8688
  %8692 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %8693 = extractvalue %dx.types.CBufRet.f32 %8692, 0
  %8694 = fadd fast float %8693, %7841
  %8695 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %8696 = extractvalue %dx.types.CBufRet.f32 %8695, 2
  %8697 = extractvalue %dx.types.CBufRet.f32 %8695, 3
  %8698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %8699 = extractvalue %dx.types.CBufRet.f32 %8698, 0
  %8700 = call float @dx.op.binary.f32(i32 35, float %8694, float 0.000000e+00)  ; FMax(a,b)
  %8701 = fadd fast float %8700, 0x3F10000000000000
  %8702 = fcmp fast oeq float %8699, 0.000000e+00
  br i1 %8702, label %8703, label %8770

; <label>:8703                                    ; preds = %8691
  %8704 = extractvalue %dx.types.CBufRet.f32 %8695, 1
  %8705 = extractvalue %dx.types.CBufRet.f32 %8695, 0
  %8706 = fmul fast float %8705, %7833
  %8707 = fmul fast float %8704, %7837
  %8708 = fadd fast float %8706, 5.000000e-01
  %8709 = call float @dx.op.unary.f32(i32 27, float %8708)  ; Round_ni(value)
  %8710 = fadd fast float %8707, 5.000000e-01
  %8711 = call float @dx.op.unary.f32(i32 27, float %8710)  ; Round_ni(value)
  %8712 = fsub fast float %8708, %8709
  %8713 = fsub fast float %8710, %8711
  %8714 = fadd fast float %8709, -5.000000e-01
  %8715 = fadd fast float %8711, -5.000000e-01
  %8716 = fmul fast float %8712, 2.000000e+00
  %8717 = fsub fast float 3.000000e+00, %8716
  %8718 = fadd fast float %8716, 1.000000e+00
  %8719 = fsub fast float 2.000000e+00, %8712
  %8720 = bitcast float %8717 to i32
  %8721 = sub nsw i32 2129859010, %8720
  %8722 = bitcast i32 %8721 to float
  %8723 = fmul fast float %8722, %8719
  %8724 = fadd fast float %8723, -1.000000e+00
  %8725 = bitcast float %8718 to i32
  %8726 = sub nsw i32 2129859010, %8725
  %8727 = bitcast i32 %8726 to float
  %8728 = fmul fast float %8727, %8712
  %8729 = fadd fast float %8728, 1.000000e+00
  %8730 = fmul fast float %8713, 2.000000e+00
  %8731 = fsub fast float 3.000000e+00, %8730
  %8732 = fadd fast float %8730, 1.000000e+00
  %8733 = fsub fast float 2.000000e+00, %8713
  %8734 = bitcast float %8731 to i32
  %8735 = sub nsw i32 2129859010, %8734
  %8736 = bitcast i32 %8735 to float
  %8737 = fmul fast float %8736, %8733
  %8738 = fadd fast float %8737, -1.000000e+00
  %8739 = bitcast float %8732 to i32
  %8740 = sub nsw i32 2129859010, %8739
  %8741 = bitcast i32 %8740 to float
  %8742 = fmul fast float %8741, %8713
  %8743 = fadd fast float %8742, 1.000000e+00
  %8744 = fadd fast float %8724, %8714
  %8745 = fmul fast float %8744, %8696
  %8746 = fadd fast float %8738, %8715
  %8747 = fmul fast float %8746, %8697
  %8748 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %48, float %8745, float %8747, float undef, float undef, i32 0, i32 0, i32 undef, float %8701)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %8749 = extractvalue %dx.types.ResRet.f32 %8748, 0
  %8750 = fmul fast float %8749, %8717
  %8751 = fadd fast float %8729, %8714
  %8752 = fmul fast float %8751, %8696
  %8753 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %48, float %8752, float %8747, float undef, float undef, i32 0, i32 0, i32 undef, float %8701)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %8754 = extractvalue %dx.types.ResRet.f32 %8753, 0
  %8755 = fmul fast float %8754, %8718
  %8756 = fadd fast float %8743, %8715
  %8757 = fmul fast float %8756, %8697
  %8758 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %48, float %8745, float %8757, float undef, float undef, i32 0, i32 0, i32 undef, float %8701)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %8759 = extractvalue %dx.types.ResRet.f32 %8758, 0
  %8760 = fmul fast float %8759, %8717
  %8761 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %48, float %8752, float %8757, float undef, float undef, i32 0, i32 0, i32 undef, float %8701)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %8762 = extractvalue %dx.types.ResRet.f32 %8761, 0
  %8763 = fmul fast float %8762, %8718
  %8764 = fadd fast float %8763, %8760
  %8765 = fmul fast float %8764, %8732
  %8766 = fadd fast float %8755, %8750
  %8767 = fmul fast float %8766, %8731
  %8768 = fadd fast float %8767, %8765
  %8769 = fmul fast float %8768, 6.250000e-02
  br label %8855

; <label>:8770                                    ; preds = %8691
  %8771 = fmul fast float %236, 0x401921FB60000000
  %8772 = call float @dx.op.unary.f32(i32 13, float %8771)  ; Sin(value)
  %8773 = call float @dx.op.unary.f32(i32 12, float %8771)  ; Cos(value)
  %8774 = fsub fast float -0.000000e+00, %8772
  br label %8775

; <label>:8775                                    ; preds = %8824, %8770
  %8776 = phi float [ 0.000000e+00, %8770 ], [ %8819, %8824 ]
  %8777 = phi float [ 0.000000e+00, %8770 ], [ %8821, %8824 ]
  %8778 = phi i32 [ 0, %8770 ], [ %8825, %8824 ]
  %8779 = mul i32 %8778, 2
  %8780 = add i32 0, %8779
  %8781 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8780
  %8782 = load float, float* %8781, align 4
  %8783 = mul i32 %8778, 2
  %8784 = add i32 1, %8783
  %8785 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8784
  %8786 = load float, float* %8785, align 4
  %8787 = fmul fast float %8782, %8773
  %8788 = call float @dx.op.tertiary.f32(i32 46, float %8786, float %8774, float %8787)  ; FMad(a,b,c)
  %8789 = fmul fast float %8782, %8772
  %8790 = call float @dx.op.tertiary.f32(i32 46, float %8786, float %8773, float %8789)  ; FMad(a,b,c)
  %8791 = fmul fast float %8788, %8699
  %8792 = fmul fast float %8790, %8699
  %8793 = fadd fast float %8791, %7833
  %8794 = fadd fast float %8792, %7837
  %8795 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %47, float %8793, float %8794, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8796 = extractvalue %dx.types.ResRet.f32 %8795, 0
  %8797 = extractvalue %dx.types.ResRet.f32 %8795, 1
  %8798 = extractvalue %dx.types.ResRet.f32 %8795, 2
  %8799 = extractvalue %dx.types.ResRet.f32 %8795, 3
  %8800 = getelementptr inbounds [4 x float], [4 x float]* %100, i32 0, i32 0
  store float %8796, float* %8800, align 4
  %8801 = getelementptr inbounds [4 x float], [4 x float]* %100, i32 0, i32 1
  store float %8797, float* %8801, align 4
  %8802 = getelementptr inbounds [4 x float], [4 x float]* %100, i32 0, i32 2
  store float %8798, float* %8802, align 4
  %8803 = getelementptr inbounds [4 x float], [4 x float]* %100, i32 0, i32 3
  store float %8799, float* %8803, align 4
  %8804 = fsub fast float %8796, %8701
  %8805 = fcmp fast olt float %8804, 0.000000e+00
  %8806 = select i1 %8805, float 0.000000e+00, float 1.000000e+00
  %8807 = fadd fast float %8806, %8776
  %8808 = fmul fast float %8806, %8804
  %8809 = fadd fast float %8808, %8777
  br label %8810

; <label>:8810                                    ; preds = %8810, %8775
  %8811 = phi i32 [ 1, %8775 ], [ %8822, %8810 ]
  %8812 = phi float [ %8809, %8775 ], [ %8821, %8810 ]
  %8813 = phi float [ %8807, %8775 ], [ %8819, %8810 ]
  %8814 = getelementptr [4 x float], [4 x float]* %100, i32 0, i32 %8811
  %8815 = load float, float* %8814, align 4, !tbaa !89, !noalias !105
  %8816 = fsub fast float %8815, %8701
  %8817 = fcmp fast olt float %8816, 0.000000e+00
  %8818 = select i1 %8817, float 0.000000e+00, float 1.000000e+00
  %8819 = fadd fast float %8818, %8813
  %8820 = fmul fast float %8818, %8816
  %8821 = fadd fast float %8820, %8812
  %8822 = add nuw nsw i32 %8811, 1
  %8823 = icmp eq i32 %8822, 4
  br i1 %8823, label %8824, label %8810, !llvm.loop !115

; <label>:8824                                    ; preds = %8810
  %8825 = add nuw nsw i32 %8778, 1
  %8826 = icmp eq i32 %8825, 8
  br i1 %8826, label %8827, label %8775, !llvm.loop !116

; <label>:8827                                    ; preds = %8824
  %8828 = fdiv fast float 1.000000e+00, %8819
  %8829 = fmul fast float %8828, %8821
  %8830 = fdiv fast float 1.000000e+00, %8701
  %8831 = fmul fast float %8829, %8830
  %8832 = call float @dx.op.unary.f32(i32 7, float %8831)  ; Saturate(value)
  %8833 = call float @dx.op.binary.f32(i32 35, float %8832, float 0.000000e+00)  ; FMax(a,b)
  %8834 = fmul fast float %8819, 3.125000e-02
  %8835 = call float @dx.op.unary.f32(i32 7, float %8834)  ; Saturate(value)
  %8836 = fmul fast float %8835, 2.000000e+00
  %8837 = fadd fast float %8836, -1.000000e+00
  %8838 = fcmp fast ogt float %8837, 0.000000e+00
  %8839 = fcmp fast olt float %8837, 0.000000e+00
  %8840 = zext i1 %8838 to i32
  %8841 = zext i1 %8839 to i32
  %8842 = sub nsw i32 %8840, %8841
  %8843 = sitofp i32 %8842 to float
  %8844 = fmul fast float %8843, %8837
  %8845 = fsub fast float 1.000000e+00, %8844
  %8846 = fmul fast float %8845, %8845
  %8847 = fmul fast float %8846, %8845
  %8848 = fsub fast float %8845, %8847
  %8849 = fmul fast float %8848, %8833
  %8850 = fsub fast float 1.000000e+00, %8847
  %8851 = fsub fast float %8850, %8849
  %8852 = fmul fast float %8843, 5.000000e-01
  %8853 = fmul fast float %8852, %8851
  %8854 = fsub fast float 5.000000e-01, %8853
  br label %8855

; <label>:8855                                    ; preds = %8827, %8703, %8688
  %8856 = phi float [ 1.000000e+00, %8688 ], [ %8769, %8703 ], [ %8854, %8827 ]
  %8857 = fsub fast float %8522, %8357
  %8858 = fmul fast float %8857, %7895
  %8859 = fadd fast float %8858, %8357
  %8860 = fsub fast float %8689, %8859
  %8861 = fmul fast float %8860, %7925
  %8862 = fadd fast float %8861, %8859
  %8863 = fsub fast float %8856, %8862
  %8864 = fmul fast float %8863, %7951
  %8865 = fadd fast float %8864, %8862
  %8866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %8867 = extractvalue %dx.types.CBufRet.f32 %8866, 2
  %8868 = fcmp fast ogt float %8867, 0.000000e+00
  br i1 %8868, label %8869, label %8909, !dx.controlflow.hints !119

; <label>:8869                                    ; preds = %8855
  %8870 = fcmp fast ugt float %8867, 0.000000e+00
  br i1 %8870, label %8871, label %8906

; <label>:8871                                    ; preds = %8869
  %8872 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %8873 = extractvalue %dx.types.CBufRet.f32 %8872, 0
  %8874 = extractvalue %dx.types.CBufRet.f32 %8872, 1
  %8875 = extractvalue %dx.types.CBufRet.f32 %8872, 2
  %8876 = extractvalue %dx.types.CBufRet.f32 %8872, 3
  %8877 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %8878 = extractvalue %dx.types.CBufRet.f32 %8877, 0
  %8879 = extractvalue %dx.types.CBufRet.f32 %8877, 1
  %8880 = extractvalue %dx.types.CBufRet.f32 %8877, 2
  %8881 = extractvalue %dx.types.CBufRet.f32 %8877, 3
  %8882 = extractvalue %dx.types.CBufRet.f32 %8866, 0
  %8883 = extractvalue %dx.types.CBufRet.f32 %8866, 1
  %8884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %8885 = extractvalue %dx.types.CBufRet.f32 %8884, 0
  %8886 = extractvalue %dx.types.CBufRet.f32 %8884, 1
  %8887 = extractvalue %dx.types.CBufRet.f32 %8884, 2
  %8888 = fadd fast float %8885, %7810
  %8889 = fadd fast float %8886, %7811
  %8890 = fadd fast float %8887, %7812
  %8891 = fmul fast float %8888, %8873
  %8892 = call float @dx.op.tertiary.f32(i32 46, float %8874, float %8889, float %8891)  ; FMad(a,b,c)
  %8893 = call float @dx.op.tertiary.f32(i32 46, float %8875, float %8890, float %8892)  ; FMad(a,b,c)
  %8894 = fadd fast float %8893, %8876
  %8895 = fmul fast float %8888, %8878
  %8896 = call float @dx.op.tertiary.f32(i32 46, float %8879, float %8889, float %8895)  ; FMad(a,b,c)
  %8897 = call float @dx.op.tertiary.f32(i32 46, float %8880, float %8890, float %8896)  ; FMad(a,b,c)
  %8898 = fadd fast float %8897, %8881
  %8899 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %43, float %8894, float %8898, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %8900 = extractvalue %dx.types.ResRet.f32 %8899, 0
  %8901 = fmul fast float %8900, %8883
  %8902 = fadd fast float %8901, %8882
  %8903 = call float @dx.op.unary.f32(i32 7, float %8902)  ; Saturate(value)
  %8904 = fmul fast float %8903, %8867
  %8905 = fsub fast float 1.000000e+00, %8904
  br label %8906

; <label>:8906                                    ; preds = %8871, %8869
  %8907 = phi float [ %8905, %8871 ], [ 1.000000e+00, %8869 ]
  %8908 = fmul fast float %8907, %8865
  br label %8909

; <label>:8909                                    ; preds = %8906, %8855, %7790
  %8910 = phi float [ 1.000000e+00, %7790 ], [ %8908, %8906 ], [ %8865, %8855 ]
  %8911 = call float @dx.op.binary.f32(i32 36, float %8910, float %8910)  ; FMin(a,b)
  %8912 = call float @dx.op.binary.f32(i32 36, float %8910, float %8911)  ; FMin(a,b)
  %8913 = fcmp fast ogt float %8912, 0.000000e+00
  br i1 %8913, label %8914, label %9080, !dx.controlflow.hints !120

; <label>:8914                                    ; preds = %8909
  %8915 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %8916 = extractvalue %dx.types.CBufRet.f32 %8915, 0
  %8917 = extractvalue %dx.types.CBufRet.f32 %8915, 1
  %8918 = extractvalue %dx.types.CBufRet.f32 %8915, 2
  %8919 = extractvalue %dx.types.CBufRet.f32 %8915, 3
  %8920 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %8921 = extractvalue %dx.types.CBufRet.f32 %8920, 0
  %8922 = extractvalue %dx.types.CBufRet.f32 %8920, 1
  %8923 = extractvalue %dx.types.CBufRet.f32 %8920, 2
  %8924 = extractvalue %dx.types.CBufRet.f32 %8920, 3
  %8925 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %8926 = extractvalue %dx.types.CBufRet.f32 %8925, 0
  %8927 = extractvalue %dx.types.CBufRet.f32 %8925, 1
  %8928 = extractvalue %dx.types.CBufRet.f32 %8925, 2
  %8929 = extractvalue %dx.types.CBufRet.f32 %8925, 3
  %8930 = fmul fast float %8916, %7810
  %8931 = call float @dx.op.tertiary.f32(i32 46, float %7811, float %8917, float %8930)  ; FMad(a,b,c)
  %8932 = call float @dx.op.tertiary.f32(i32 46, float %7812, float %8918, float %8931)  ; FMad(a,b,c)
  %8933 = fadd fast float %8932, %8919
  %8934 = fmul fast float %8921, %7810
  %8935 = call float @dx.op.tertiary.f32(i32 46, float %7811, float %8922, float %8934)  ; FMad(a,b,c)
  %8936 = call float @dx.op.tertiary.f32(i32 46, float %7812, float %8923, float %8935)  ; FMad(a,b,c)
  %8937 = fadd fast float %8936, %8924
  %8938 = fmul fast float %8926, %7810
  %8939 = call float @dx.op.tertiary.f32(i32 46, float %7811, float %8927, float %8938)  ; FMad(a,b,c)
  %8940 = call float @dx.op.tertiary.f32(i32 46, float %7812, float %8928, float %8939)  ; FMad(a,b,c)
  %8941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %8942 = extractvalue %dx.types.CBufRet.f32 %8941, 0
  %8943 = extractvalue %dx.types.CBufRet.f32 %8941, 1
  %8944 = extractvalue %dx.types.CBufRet.f32 %8941, 3
  %8945 = fmul fast float %8944, %8933
  %8946 = fmul fast float %8944, %8937
  %8947 = fadd fast float %8945, %8942
  %8948 = fadd fast float %8946, %8943
  %8949 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %8950 = extractvalue %dx.types.CBufRet.f32 %8949, 0
  %8951 = extractvalue %dx.types.CBufRet.f32 %8949, 1
  %8952 = fsub fast float %8947, %8950
  %8953 = fsub fast float %8948, %8951
  %8954 = fcmp fast olt float %8952, 0.000000e+00
  %8955 = fcmp fast olt float %8953, 0.000000e+00
  %8956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %8957 = extractvalue %dx.types.CBufRet.f32 %8956, 0
  %8958 = extractvalue %dx.types.CBufRet.f32 %8956, 1
  %8959 = extractvalue %dx.types.CBufRet.f32 %8956, 2
  %8960 = extractvalue %dx.types.CBufRet.f32 %8956, 3
  %8961 = select i1 %8954, float %8957, float %8959
  %8962 = select i1 %8955, float %8958, float %8960
  %8963 = fmul fast float %8961, %8952
  %8964 = fmul fast float %8962, %8953
  %8965 = call float @dx.op.unary.f32(i32 6, float %8963)  ; FAbs(value)
  %8966 = call float @dx.op.unary.f32(i32 6, float %8964)  ; FAbs(value)
  %8967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %8968 = extractvalue %dx.types.CBufRet.f32 %8967, 0
  %8969 = call float @dx.op.binary.f32(i32 35, float %8965, float %8966)  ; FMax(a,b)
  %8970 = fsub fast float %8968, %8969
  %8971 = call float @dx.op.unary.f32(i32 7, float %8970)  ; Saturate(value)
  %8972 = fcmp fast ogt float %8971, 0.000000e+00
  br i1 %8972, label %8973, label %9014, !dx.controlflow.hints !121

; <label>:8973                                    ; preds = %8914
  %8974 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %46, float %8947, float %8948, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8975 = extractvalue %dx.types.ResRet.f32 %8974, 1
  %8976 = fcmp fast ogt float %8975, 0.000000e+00
  br i1 %8976, label %8977, label %9009

; <label>:8977                                    ; preds = %8973
  %8978 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %46, float %8947, float %8948, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8979 = extractvalue %dx.types.ResRet.f32 %8978, 0
  %8980 = extractvalue %dx.types.ResRet.f32 %8978, 1
  %8981 = extractvalue %dx.types.ResRet.f32 %8978, 2
  %8982 = extractvalue %dx.types.ResRet.f32 %8978, 3
  %8983 = fsub fast float 1.000000e+00, %8929
  %8984 = fsub fast float %8983, %8940
  %8985 = fmul fast float %8984, 0x400921FB60000000
  %8986 = fadd fast float %8985, 0x3FF921FB60000000
  %8987 = call float @dx.op.unary.f32(i32 13, float %8986)  ; Sin(value)
  %8988 = fadd fast float %8987, -1.000000e+00
  %8989 = fmul fast float %8988, 0x3FD45F3060000000
  %8990 = fmul fast float %8984, 0x401921FB60000000
  %8991 = fadd fast float %8990, 0x400921FB60000000
  %8992 = call float @dx.op.unary.f32(i32 13, float %8991)  ; Sin(value)
  %8993 = fadd fast float %8992, 0x3E7777A5C0000000
  %8994 = fmul fast float %8993, 0x3FC45F3060000000
  %8995 = fmul fast float %8984, 0x4022D97C80000000
  %8996 = fadd fast float %8995, 0x4012D97C80000000
  %8997 = call float @dx.op.unary.f32(i32 13, float %8996)  ; Sin(value)
  %8998 = fadd fast float %8997, 1.000000e+00
  %8999 = fmul fast float %8998, 0x3FBB2995E0000000
  %9000 = fmul fast float %8984, 0x402921FB60000000
  %9001 = fadd fast float %9000, 0x401921FB60000000
  %9002 = call float @dx.op.unary.f32(i32 13, float %9001)  ; Sin(value)
  %9003 = fadd fast float %9002, 0xBE8777A5C0000000
  %9004 = fmul fast float %9003, 0x3FB45F3060000000
  %9005 = call float @dx.op.dot4.f32(i32 56, float %8979, float %8980, float %8981, float %8982, float %8989, float %8994, float %8999, float %9004)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %9006 = fmul fast float %9005, 0xBFF7154760000000
  %9007 = call float @dx.op.unary.f32(i32 21, float %9006)  ; Exp(value)
  %9008 = call float @dx.op.unary.f32(i32 7, float %9007)  ; Saturate(value)
  br label %9009

; <label>:9009                                    ; preds = %8977, %8973
  %9010 = phi float [ %9008, %8977 ], [ 1.000000e+00, %8973 ]
  %9011 = fadd fast float %9010, -1.000000e+00
  %9012 = fmul fast float %9011, %8971
  %9013 = fadd fast float %9012, 1.000000e+00
  br label %9014

; <label>:9014                                    ; preds = %9009, %8914
  %9015 = phi float [ %9013, %9009 ], [ 1.000000e+00, %8914 ]
  %9016 = fmul fast float %9015, %8910
  %9017 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %9018 = extractvalue %dx.types.CBufRet.f32 %9017, 0
  %9019 = extractvalue %dx.types.CBufRet.f32 %9017, 1
  %9020 = extractvalue %dx.types.CBufRet.f32 %9017, 2
  %9021 = fadd fast float %9018, %164
  %9022 = fadd fast float %9019, %165
  %9023 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %9024 = extractvalue %dx.types.CBufRet.f32 %9023, 1
  %9025 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %9026 = extractvalue %dx.types.CBufRet.f32 %9025, 0
  %9027 = extractvalue %dx.types.CBufRet.f32 %9025, 1
  %9028 = extractvalue %dx.types.CBufRet.f32 %9025, 2
  %9029 = fsub fast float -0.000000e+00, %9021
  %9030 = fsub fast float -0.000000e+00, %9022
  %9031 = fsub fast float -0.000000e+00, %166
  %9032 = fsub fast float %9031, %9020
  %9033 = fadd fast float %9032, %9024
  %9034 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %9029, float %9030, float %9033)  ; Dot3(ax,ay,az,bx,by,bz)
  %9035 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %9026, float %9027, float %9028)  ; Dot3(ax,ay,az,bx,by,bz)
  %9036 = fdiv fast float 1.000000e+00, %9035
  %9037 = fmul fast float %9036, %9034
  %9038 = fmul fast float %9026, %9037
  %9039 = fmul fast float %9027, %9037
  %9040 = fadd fast float %9038, %9021
  %9041 = fadd fast float %9039, %9022
  %9042 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %9043 = extractvalue %dx.types.CBufRet.f32 %9042, 0
  %9044 = extractvalue %dx.types.CBufRet.f32 %9042, 1
  %9045 = fsub fast float %9040, %9043
  %9046 = fsub fast float %9041, %9044
  %9047 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %9048 = extractvalue %dx.types.CBufRet.f32 %9047, 2
  %9049 = extractvalue %dx.types.CBufRet.f32 %9047, 3
  %9050 = fmul fast float %9045, %9048
  %9051 = fmul fast float %9046, %9049
  %9052 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %9053 = extractvalue %dx.types.CBufRet.i32 %9052, 3
  %9054 = icmp eq i32 %9053, 0
  br i1 %9054, label %9060, label %9055

; <label>:9055                                    ; preds = %9014
  %9056 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %45, float %9050, float %9051, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9057 = extractvalue %dx.types.ResRet.f32 %9056, 0
  %9058 = extractvalue %dx.types.ResRet.f32 %9056, 1
  %9059 = extractvalue %dx.types.ResRet.f32 %9056, 2
  br label %9065

; <label>:9060                                    ; preds = %9014
  %9061 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %46, float %9050, float %9051, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9062 = extractvalue %dx.types.ResRet.f32 %9061, 0
  %9063 = extractvalue %dx.types.ResRet.f32 %9061, 1
  %9064 = extractvalue %dx.types.ResRet.f32 %9061, 2
  br label %9065

; <label>:9065                                    ; preds = %9060, %9055
  %9066 = phi float [ %9057, %9055 ], [ %9062, %9060 ]
  %9067 = phi float [ %9058, %9055 ], [ %9063, %9060 ]
  %9068 = phi float [ %9059, %9055 ], [ %9064, %9060 ]
  %9069 = extractvalue %dx.types.CBufRet.f32 %9023, 2
  %9070 = fmul fast float %9069, %9066
  %9071 = extractvalue %dx.types.CBufRet.f32 %9023, 0
  %9072 = fsub fast float %9037, %9071
  %9073 = fsub fast float %9072, %9070
  %9074 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9073)  ; FMax(a,b)
  %9075 = fmul fast float %9074, %9067
  %9076 = call float @dx.op.binary.f32(i32 36, float %9068, float %9075)  ; FMin(a,b)
  %9077 = fmul fast float %9076, 0xBFF7154760000000
  %9078 = call float @dx.op.unary.f32(i32 21, float %9077)  ; Exp(value)
  %9079 = fmul fast float %9016, %9078
  br label %9080

; <label>:9080                                    ; preds = %9065, %8909
  %9081 = phi float [ %9079, %9065 ], [ %8910, %8909 ]
  %9082 = call float @dx.op.binary.f32(i32 36, float %9081, float %9081)  ; FMin(a,b)
  %9083 = call float @dx.op.binary.f32(i32 36, float %9081, float %9082)  ; FMin(a,b)
  %9084 = fcmp fast ogt float %9083, 0.000000e+00
  br i1 %9084, label %9085, label %9311, !dx.controlflow.hints !122

; <label>:9085                                    ; preds = %9080
  %9086 = bitcast i32 %6962 to float
  %9087 = fmul fast float %9081, %7802
  %9088 = fmul fast float %9081, %7803
  %9089 = fmul fast float %9081, %7804
  %9090 = fsub fast float %7791, %6924
  %9091 = fsub fast float %7792, %6923
  %9092 = fsub fast float %7793, %6922
  %9093 = call float @dx.op.dot3.f32(i32 55, float %9090, float %9091, float %9092, float %9090, float %9091, float %9092)  ; Dot3(ax,ay,az,bx,by,bz)
  %9094 = call float @dx.op.unary.f32(i32 25, float %9093)  ; Rsqrt(value)
  %9095 = fmul fast float %9094, %9090
  %9096 = fmul fast float %9094, %9091
  %9097 = fmul fast float %9094, %9092
  %9098 = call float @dx.op.dot3.f32(i32 55, float %7791, float %7792, float %7793, float %6928, float %6929, float %6930)  ; Dot3(ax,ay,az,bx,by,bz)
  %9099 = call float @dx.op.dot3.f32(i32 55, float %6921, float %6920, float %6919, float %9095, float %9096, float %9097)  ; Dot3(ax,ay,az,bx,by,bz)
  %9100 = call float @dx.op.unary.f32(i32 7, float %9098)  ; Saturate(value)
  %9101 = fmul fast float %9100, %9100
  %9102 = fmul fast float %9101, %9086
  %9103 = call float @dx.op.unary.f32(i32 7, float %9102)  ; Saturate(value)
  %9104 = fmul fast float %9103, %9100
  %9105 = call float @dx.op.dot3.f32(i32 55, float %6928, float %6929, float %6930, float %9095, float %9096, float %9097)  ; Dot3(ax,ay,az,bx,by,bz)
  %9106 = fmul fast float %9105, %9105
  %9107 = call float @dx.op.unary.f32(i32 6, float %9098)  ; FAbs(value)
  %9108 = fsub fast float 1.000000e+00, %6956
  %9109 = fmul fast float %6938, %6938
  %9110 = fmul fast float %9109, %9108
  %9111 = fadd fast float %9110, %6956
  %9112 = bitcast float %9111 to i32
  %9113 = ashr i32 %9112, 1
  %9114 = add nsw i32 %9113, 532487669
  %9115 = bitcast i32 %9114 to float
  %9116 = fadd fast float %9115, %6938
  %9117 = fmul fast float %6956, %9106
  %9118 = fsub fast float 1.000000e+00, %9106
  %9119 = fadd fast float %9118, %9117
  %9120 = fmul fast float %9107, %9107
  %9121 = fmul fast float %9120, %9108
  %9122 = fadd fast float %9121, %6956
  %9123 = bitcast float %9122 to i32
  %9124 = ashr i32 %9123, 1
  %9125 = add nsw i32 %9124, 532487669
  %9126 = bitcast i32 %9125 to float
  %9127 = fadd fast float %9126, %9107
  %9128 = fmul fast float %9119, %9119
  %9129 = fmul fast float %9128, %9116
  %9130 = fmul fast float %9129, %9127
  %9131 = fdiv fast float 0x3FF0A00000000000, %9130
  %9132 = fmul fast float %9131, %6956
  %9133 = call float @dx.op.unary.f32(i32 6, float %9099)  ; FAbs(value)
  %9134 = fsub fast float 1.000000e+00, %9133
  %9135 = bitcast float %9134 to i32
  %9136 = sitofp i32 %9135 to float
  %9137 = fmul fast float %9136, 5.000000e+00
  %9138 = fadd fast float %9137, 0xC1EFBF8940000000
  %9139 = fptosi float %9138 to i32
  %9140 = bitcast i32 %9139 to float
  %9141 = fsub fast float 1.000000e+00, %6925
  %9142 = fsub fast float 1.000000e+00, %6926
  %9143 = fsub fast float 1.000000e+00, %6936
  %9144 = fmul fast float %9140, %9141
  %9145 = fmul fast float %9140, %9142
  %9146 = fmul fast float %9140, %9143
  %9147 = fadd fast float %9144, %6925
  %9148 = fadd fast float %9145, %6926
  %9149 = fadd fast float %9146, %6936
  br i1 %7220, label %9150, label %9173

; <label>:9150                                    ; preds = %9085
  %9151 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %46, float %4641, float %9133, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9152 = extractvalue %dx.types.ResRet.f32 %9151, 0
  %9153 = extractvalue %dx.types.ResRet.f32 %9151, 1
  %9154 = extractvalue %dx.types.ResRet.f32 %9151, 2
  %9155 = fadd fast float %9152, -5.000000e-01
  %9156 = fadd fast float %9153, -5.000000e-01
  %9157 = fadd fast float %9154, -5.000000e-01
  %9158 = fmul fast float %6925, 4.000000e+00
  %9159 = fmul fast float %9158, %9141
  %9160 = fmul fast float %9159, %9155
  %9161 = fmul fast float %6926, 4.000000e+00
  %9162 = fmul fast float %9161, %9142
  %9163 = fmul fast float %9162, %9156
  %9164 = fmul fast float %6936, 4.000000e+00
  %9165 = fmul fast float %9164, %9143
  %9166 = fmul fast float %9165, %9157
  %9167 = fadd fast float %9160, %9147
  %9168 = fadd fast float %9163, %9148
  %9169 = fadd fast float %9166, %9149
  %9170 = call float @dx.op.unary.f32(i32 7, float %9167)  ; Saturate(value)
  %9171 = call float @dx.op.unary.f32(i32 7, float %9168)  ; Saturate(value)
  %9172 = call float @dx.op.unary.f32(i32 7, float %9169)  ; Saturate(value)
  br label %9173

; <label>:9173                                    ; preds = %9150, %9085
  %9174 = phi float [ %9170, %9150 ], [ %9147, %9085 ]
  %9175 = phi float [ %9171, %9150 ], [ %9148, %9085 ]
  %9176 = phi float [ %9172, %9150 ], [ %9149, %9085 ]
  %9177 = fmul fast float %9098, 9.843750e-01
  %9178 = fadd fast float %9177, 7.812500e-03
  %9179 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %41, %dx.types.Handle %46, float %9178, float %7210, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9180 = extractvalue %dx.types.ResRet.f32 %9179, 2
  %9181 = extractvalue %dx.types.ResRet.f32 %9179, 3
  %9182 = fmul fast float %9180, %6925
  %9183 = fmul fast float %9180, %6926
  %9184 = fmul fast float %9180, %6936
  %9185 = fadd fast float %9182, %9181
  %9186 = fadd fast float %9183, %9181
  %9187 = fadd fast float %9184, %9181
  br i1 %7220, label %9188, label %9211

; <label>:9188                                    ; preds = %9173
  %9189 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %46, float %4641, float %9098, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9190 = extractvalue %dx.types.ResRet.f32 %9189, 0
  %9191 = extractvalue %dx.types.ResRet.f32 %9189, 1
  %9192 = extractvalue %dx.types.ResRet.f32 %9189, 2
  %9193 = fadd fast float %9190, -5.000000e-01
  %9194 = fadd fast float %9191, -5.000000e-01
  %9195 = fadd fast float %9192, -5.000000e-01
  %9196 = fmul fast float %6925, 4.000000e+00
  %9197 = fmul fast float %9196, %9141
  %9198 = fmul fast float %9197, %9193
  %9199 = fmul fast float %6926, 4.000000e+00
  %9200 = fmul fast float %9199, %9142
  %9201 = fmul fast float %9200, %9194
  %9202 = fmul fast float %6936, 4.000000e+00
  %9203 = fmul fast float %9202, %9143
  %9204 = fmul fast float %9203, %9195
  %9205 = fadd fast float %9198, %9185
  %9206 = fadd fast float %9201, %9186
  %9207 = fadd fast float %9204, %9187
  %9208 = call float @dx.op.unary.f32(i32 7, float %9205)  ; Saturate(value)
  %9209 = call float @dx.op.unary.f32(i32 7, float %9206)  ; Saturate(value)
  %9210 = call float @dx.op.unary.f32(i32 7, float %9207)  ; Saturate(value)
  br label %9211

; <label>:9211                                    ; preds = %9188, %9173
  %9212 = phi float [ %9208, %9188 ], [ %9185, %9173 ]
  %9213 = phi float [ %9209, %9188 ], [ %9186, %9173 ]
  %9214 = phi float [ %9210, %9188 ], [ %9187, %9173 ]
  %9215 = call float @dx.op.binary.f32(i32 35, float %9213, float %9214)  ; FMax(a,b)
  %9216 = call float @dx.op.binary.f32(i32 35, float %9212, float %9215)  ; FMax(a,b)
  %9217 = fsub fast float 1.000000e+00, %9216
  %9218 = fsub fast float -0.000000e+00, %6928
  %9219 = fsub fast float -0.000000e+00, %6929
  %9220 = fsub fast float -0.000000e+00, %6930
  %9221 = call float @dx.op.dot3.f32(i32 55, float %7791, float %7792, float %7793, float %9218, float %9219, float %9220)  ; Dot3(ax,ay,az,bx,by,bz)
  %9222 = call float @dx.op.unary.f32(i32 7, float %9221)  ; Saturate(value)
  %9223 = fmul fast float %9222, 9.843750e-01
  %9224 = fadd fast float %9223, 7.812500e-03
  %9225 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %41, %dx.types.Handle %46, float %9224, float %7210, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9226 = extractvalue %dx.types.ResRet.f32 %9225, 2
  %9227 = extractvalue %dx.types.ResRet.f32 %9225, 3
  %9228 = fmul fast float %9226, %6925
  %9229 = fmul fast float %9226, %6926
  %9230 = fmul fast float %9226, %6936
  %9231 = fadd fast float %9228, %9227
  %9232 = fadd fast float %9229, %9227
  %9233 = fadd fast float %9230, %9227
  br i1 %7220, label %9234, label %9257

; <label>:9234                                    ; preds = %9211
  %9235 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %46, float %4641, float %9222, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9236 = extractvalue %dx.types.ResRet.f32 %9235, 0
  %9237 = extractvalue %dx.types.ResRet.f32 %9235, 1
  %9238 = extractvalue %dx.types.ResRet.f32 %9235, 2
  %9239 = fadd fast float %9236, -5.000000e-01
  %9240 = fadd fast float %9237, -5.000000e-01
  %9241 = fadd fast float %9238, -5.000000e-01
  %9242 = fmul fast float %6925, 4.000000e+00
  %9243 = fmul fast float %9242, %9141
  %9244 = fmul fast float %9243, %9239
  %9245 = fmul fast float %6926, 4.000000e+00
  %9246 = fmul fast float %9245, %9142
  %9247 = fmul fast float %9246, %9240
  %9248 = fmul fast float %6936, 4.000000e+00
  %9249 = fmul fast float %9248, %9143
  %9250 = fmul fast float %9249, %9241
  %9251 = fadd fast float %9244, %9231
  %9252 = fadd fast float %9247, %9232
  %9253 = fadd fast float %9250, %9233
  %9254 = call float @dx.op.unary.f32(i32 7, float %9251)  ; Saturate(value)
  %9255 = call float @dx.op.unary.f32(i32 7, float %9252)  ; Saturate(value)
  %9256 = call float @dx.op.unary.f32(i32 7, float %9253)  ; Saturate(value)
  br label %9257

; <label>:9257                                    ; preds = %9234, %9211
  %9258 = phi float [ %9254, %9234 ], [ %9231, %9211 ]
  %9259 = phi float [ %9255, %9234 ], [ %9232, %9211 ]
  %9260 = phi float [ %9256, %9234 ], [ %9233, %9211 ]
  %9261 = call float @dx.op.binary.f32(i32 35, float %9259, float %9260)  ; FMax(a,b)
  %9262 = call float @dx.op.binary.f32(i32 35, float %9258, float %9261)  ; FMax(a,b)
  %9263 = fsub fast float 1.000000e+00, %9262
  %9264 = fmul fast float %9263, %9222
  %9265 = fmul fast float %9264, %4731
  %9266 = fmul fast float %9264, %4732
  %9267 = fmul fast float %9264, %4733
  %9268 = fmul fast float %9174, %9132
  %9269 = fmul fast float %9175, %9132
  %9270 = fmul fast float %9176, %9132
  %9271 = fsub fast float 1.000000e+00, %9099
  %9272 = bitcast float %9271 to i32
  %9273 = sitofp i32 %9272 to float
  %9274 = fmul fast float %9273, 5.000000e+00
  %9275 = fadd fast float %9274, 0xC1EFBF8940000000
  %9276 = fptosi float %9275 to i32
  %9277 = bitcast i32 %9276 to float
  %9278 = fmul fast float %9277, %4642
  %9279 = fmul fast float %9217, %9278
  %9280 = fmul fast float %9279, %7731
  %9281 = fmul fast float %9279, %7732
  %9282 = fmul fast float %9279, %7733
  %9283 = fmul fast float %9217, %9104
  %9284 = fadd fast float %9280, %9268
  %9285 = fadd fast float %9281, %9269
  %9286 = fadd fast float %9282, %9270
  %9287 = fadd fast float %9265, %9283
  %9288 = fadd fast float %9266, %9283
  %9289 = fadd fast float %9267, %9283
  %9290 = fmul fast float %9287, %9087
  %9291 = fmul fast float %9288, %9088
  %9292 = fmul fast float %9289, %9089
  %9293 = fmul fast float %9104, %9087
  %9294 = fmul fast float %9293, %9284
  %9295 = fmul fast float %9104, %9088
  %9296 = fmul fast float %9295, %9285
  %9297 = fmul fast float %9104, %9089
  %9298 = fmul fast float %9297, %9286
  %9299 = fadd fast float %9290, %7781
  %9300 = fmul fast float %9299, %4638
  %9301 = fadd fast float %9291, %7783
  %9302 = fmul fast float %9301, %4638
  %9303 = fadd fast float %9292, %7785
  %9304 = fmul fast float %9303, %4638
  %9305 = fadd fast float %9294, %7764
  %9306 = fmul fast float %9305, %4638
  %9307 = fadd fast float %9296, %7767
  %9308 = fmul fast float %9307, %4638
  %9309 = fadd fast float %9298, %7770
  %9310 = fmul fast float %9309, %4638
  br label %9311

; <label>:9311                                    ; preds = %9257, %9080, %7714
  %9312 = phi float [ %7765, %7714 ], [ %7765, %9080 ], [ %9306, %9257 ]
  %9313 = phi float [ %7768, %7714 ], [ %7768, %9080 ], [ %9308, %9257 ]
  %9314 = phi float [ %7771, %7714 ], [ %7771, %9080 ], [ %9310, %9257 ]
  %9315 = phi float [ %7782, %7714 ], [ %7782, %9080 ], [ %9300, %9257 ]
  %9316 = phi float [ %7784, %7714 ], [ %7784, %9080 ], [ %9302, %9257 ]
  %9317 = phi float [ %7786, %7714 ], [ %7786, %9080 ], [ %9304, %9257 ]
  %9318 = fmul fast float %7740, %4638
  %9319 = fmul fast float %7741, %4638
  %9320 = fmul fast float %7742, %4638
  %9321 = fadd fast float %9318, 1.000000e+00
  %9322 = fadd fast float %9319, 1.000000e+00
  %9323 = fadd fast float %9320, 1.000000e+00
  %9324 = call float @dx.op.dot3.f32(i32 55, float %9321, float %9322, float %9323, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9325 = fsub fast float 1.000000e+00, %9324
  %9326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9327 = extractvalue %dx.types.CBufRet.f32 %9326, 0
  %9328 = fmul fast float %9327, %7746
  %9329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %9330 = extractvalue %dx.types.CBufRet.f32 %9329, 3
  %9331 = fsub fast float 1.000000e+00, %4645
  %9332 = call float @dx.op.unary.f32(i32 7, float %9331)  ; Saturate(value)
  %9333 = fadd fast float %9317, %4644
  %9334 = fmul fast float %9333, %4645
  %9335 = fmul fast float %9332, %9330
  %9336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %9337 = extractvalue %dx.types.CBufRet.f32 %9336, 3
  %9338 = fmul fast float %9315, %6931
  %9339 = fmul fast float %9316, %6932
  %9340 = fmul fast float %9317, %6933
  %9341 = fcmp fast ogt float %97, %186
  %9342 = and i1 %9341, %4750
  %9343 = or i1 %4829, %9342
  %9344 = icmp eq i32 %4749, 2
  %9345 = fcmp fast ole float %97, %186
  %9346 = and i1 %9345, %9344
  %9347 = or i1 %9346, %9343
  br i1 %9342, label %9348, label %9605

; <label>:9348                                    ; preds = %9311
  %9349 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %9350 = extractvalue %dx.types.CBufRet.f32 %9349, 2
  %9351 = extractvalue %dx.types.CBufRet.f32 %9349, 3
  %9352 = fmul fast float %9350, %109
  %9353 = fmul fast float %9351, %110
  %9354 = call float @dx.op.unary.f32(i32 7, float %9352)  ; Saturate(value)
  %9355 = call float @dx.op.unary.f32(i32 7, float %9353)  ; Saturate(value)
  %9356 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %46, float %9354, float %9355, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9357 = extractvalue %dx.types.ResRet.f32 %9356, 0
  %9358 = extractvalue %dx.types.ResRet.f32 %9356, 1
  %9359 = extractvalue %dx.types.ResRet.f32 %9356, 2
  %9360 = extractvalue %dx.types.ResRet.f32 %9356, 3
  %9361 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %46, float %9354, float %9355, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9362 = extractvalue %dx.types.ResRet.f32 %9361, 0
  %9363 = extractvalue %dx.types.ResRet.f32 %9361, 1
  %9364 = extractvalue %dx.types.ResRet.f32 %9361, 2
  %9365 = extractvalue %dx.types.ResRet.f32 %9361, 3
  %9366 = call float @dx.op.binary.f32(i32 35, float %9358, float %9359)  ; FMax(a,b)
  %9367 = call float @dx.op.binary.f32(i32 35, float %9357, float %9366)  ; FMax(a,b)
  %9368 = call float @dx.op.binary.f32(i32 35, float %9367, float %9360)  ; FMax(a,b)
  %9369 = call float @dx.op.binary.f32(i32 36, float %9363, float %9364)  ; FMin(a,b)
  %9370 = call float @dx.op.binary.f32(i32 36, float %9362, float %9369)  ; FMin(a,b)
  %9371 = call float @dx.op.binary.f32(i32 36, float %9370, float %9365)  ; FMin(a,b)
  %9372 = fmul fast float %9368, 2.550000e+02
  %9373 = fadd fast float %9372, 0x3F70101020000000
  %9374 = fptoui float %9373 to i32
  %9375 = fmul fast float %9371, 2.550000e+02
  %9376 = fadd fast float %9375, 0x3F70101020000000
  %9377 = fptoui float %9376 to i32
  %9378 = icmp ult i32 %9374, %9377
  br i1 %9378, label %9379, label %9547

; <label>:9379                                    ; preds = %9348
  %9380 = fcmp fast ogt float %96, 9.843750e-01
  %9381 = fadd fast float %97, -4.000000e+00
  %9382 = select i1 %9380, float -4.000000e+00, float %9381
  %9383 = call float @dx.op.binary.f32(i32 35, float %9382, float 0.000000e+00)  ; FMax(a,b)
  %9384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9385 = extractvalue %dx.types.CBufRet.f32 %9384, 0
  %9386 = fadd fast float %9385, %9383
  %9387 = extractvalue %dx.types.CBufRet.f32 %9384, 2
  %9388 = fmul fast float %9386, %9387
  %9389 = call float @dx.op.unary.f32(i32 23, float %9388)  ; Log(value)
  %9390 = extractvalue %dx.types.CBufRet.f32 %9384, 3
  %9391 = fmul fast float %9390, %9389
  %9392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9393 = extractvalue %dx.types.CBufRet.f32 %9392, 2
  %9394 = fmul fast float %9391, %9393
  %9395 = call float @dx.op.unary.f32(i32 7, float %9394)  ; Saturate(value)
  %9396 = uitofp i32 %9374 to float
  %9397 = uitofp i32 %9377 to float
  %9398 = fadd fast float %9396, 5.000000e-01
  %9399 = fadd fast float %9397, 5.000000e-01
  %9400 = fmul fast float %9393, %9398
  %9401 = fmul fast float %9393, %9399
  %9402 = fadd fast float %9400, 0x3F0FFB4800000000
  %9403 = fadd fast float %9401, 0xBF0FFB4800000000
  %9404 = call float @dx.op.binary.f32(i32 35, float %9395, float %9402)  ; FMax(a,b)
  %9405 = call float @dx.op.binary.f32(i32 36, float %9404, float %9403)  ; FMin(a,b)
  %9406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9407 = extractvalue %dx.types.CBufRet.f32 %9406, 1
  %9408 = extractvalue %dx.types.CBufRet.f32 %9406, 2
  %9409 = extractvalue %dx.types.CBufRet.f32 %9406, 0
  %9410 = fmul fast float %9407, %9405
  %9411 = fadd fast float %9409, %9410
  %9412 = fadd fast float %9409, %9408
  %9413 = fsub fast float %9407, %9408
  %9414 = fadd fast float %9413, %9409
  %9415 = call float @dx.op.binary.f32(i32 35, float %9411, float %9412)  ; FMax(a,b)
  %9416 = call float @dx.op.binary.f32(i32 36, float %9415, float %9414)  ; FMin(a,b)
  %9417 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %44, float %9354, float %9355, float %9416, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9418 = extractvalue %dx.types.ResRet.f32 %9417, 0
  %9419 = extractvalue %dx.types.ResRet.f32 %9417, 1
  %9420 = extractvalue %dx.types.ResRet.f32 %9417, 2
  %9421 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9422 = extractvalue %dx.types.CBufRet.i32 %9421, 0
  %9423 = extractvalue %dx.types.CBufRet.i32 %9421, 1
  %9424 = uitofp i32 %9422 to float
  %9425 = uitofp i32 %9423 to float
  %9426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9427 = extractvalue %dx.types.CBufRet.f32 %9426, 0
  %9428 = extractvalue %dx.types.CBufRet.f32 %9426, 1
  %9429 = fmul fast float %9424, %9354
  %9430 = fmul fast float %9425, %9355
  %9431 = fadd fast float %9429, -5.000000e-01
  %9432 = fadd fast float %9430, -5.000000e-01
  %9433 = call float @dx.op.unary.f32(i32 22, float %9431)  ; Frc(value)
  %9434 = call float @dx.op.unary.f32(i32 22, float %9432)  ; Frc(value)
  %9435 = fmul fast float %9433, %9433
  %9436 = fmul fast float %9435, %9433
  %9437 = fsub fast float 3.000000e+00, %9433
  %9438 = fmul fast float %9435, %9437
  %9439 = fmul fast float %9433, 3.000000e+00
  %9440 = fmul fast float %9436, 3.000000e+00
  %9441 = fmul fast float %9435, 6.000000e+00
  %9442 = fsub fast float %9440, %9441
  %9443 = fadd fast float %9442, 4.000000e+00
  %9444 = fmul fast float %9443, 0x3FC5555560000000
  %9445 = fmul fast float %9436, -3.000000e+00
  %9446 = fadd fast float %9435, %9433
  %9447 = fmul fast float %9446, 3.000000e+00
  %9448 = fadd fast float %9445, 1.000000e+00
  %9449 = fadd fast float %9448, %9447
  %9450 = fmul fast float %9436, 0x3FC5555560000000
  %9451 = fmul fast float %9434, %9434
  %9452 = fmul fast float %9451, %9434
  %9453 = fsub fast float 3.000000e+00, %9434
  %9454 = fmul fast float %9451, %9453
  %9455 = fmul fast float %9434, 3.000000e+00
  %9456 = fmul fast float %9452, 3.000000e+00
  %9457 = fmul fast float %9451, 6.000000e+00
  %9458 = fsub fast float %9456, %9457
  %9459 = fadd fast float %9458, 4.000000e+00
  %9460 = fmul fast float %9459, 0x3FC5555560000000
  %9461 = fmul fast float %9452, -3.000000e+00
  %9462 = fadd fast float %9451, %9434
  %9463 = fmul fast float %9462, 3.000000e+00
  %9464 = fadd fast float %9461, 1.000000e+00
  %9465 = fadd fast float %9464, %9463
  %9466 = fmul fast float %9452, 0x3FC5555560000000
  %9467 = fadd fast float %9433, 1.000000e+00
  %9468 = fsub fast float 1.000000e+00, %9439
  %9469 = fadd fast float %9468, %9438
  %9470 = fadd fast float %9469, %9443
  %9471 = fmul fast float %9470, 0x3FC5555560000000
  %9472 = fdiv fast float %9444, %9471
  %9473 = fsub fast float %9467, %9472
  %9474 = fsub fast float 1.000000e+00, %9433
  %9475 = fadd fast float %9449, %9436
  %9476 = fmul fast float %9475, 0x3FC5555560000000
  %9477 = fdiv fast float %9450, %9476
  %9478 = fadd fast float %9474, %9477
  %9479 = fadd fast float %9434, 1.000000e+00
  %9480 = fsub fast float 1.000000e+00, %9455
  %9481 = fadd fast float %9480, %9454
  %9482 = fadd fast float %9481, %9459
  %9483 = fmul fast float %9482, 0x3FC5555560000000
  %9484 = fdiv fast float %9460, %9483
  %9485 = fsub fast float %9479, %9484
  %9486 = fsub fast float 1.000000e+00, %9434
  %9487 = fadd fast float %9465, %9452
  %9488 = fmul fast float %9487, 0x3FC5555560000000
  %9489 = fdiv fast float %9466, %9488
  %9490 = fadd fast float %9489, %9486
  %9491 = fmul fast float %9473, %9427
  %9492 = fsub fast float %9354, %9491
  %9493 = fmul fast float %9478, %9427
  %9494 = fadd fast float %9493, %9354
  %9495 = fmul fast float %9490, %9428
  %9496 = fadd fast float %9495, %9355
  %9497 = fmul fast float %9485, %9428
  %9498 = fsub fast float %9355, %9497
  %9499 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %44, float %9492, float %9498, float %9416, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9500 = extractvalue %dx.types.ResRet.f32 %9499, 0
  %9501 = extractvalue %dx.types.ResRet.f32 %9499, 1
  %9502 = extractvalue %dx.types.ResRet.f32 %9499, 2
  %9503 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %44, float %9494, float %9498, float %9416, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9504 = extractvalue %dx.types.ResRet.f32 %9503, 0
  %9505 = extractvalue %dx.types.ResRet.f32 %9503, 1
  %9506 = extractvalue %dx.types.ResRet.f32 %9503, 2
  %9507 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %44, float %9492, float %9496, float %9416, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9508 = extractvalue %dx.types.ResRet.f32 %9507, 0
  %9509 = extractvalue %dx.types.ResRet.f32 %9507, 1
  %9510 = extractvalue %dx.types.ResRet.f32 %9507, 2
  %9511 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %44, float %9494, float %9496, float %9416, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9512 = extractvalue %dx.types.ResRet.f32 %9511, 0
  %9513 = extractvalue %dx.types.ResRet.f32 %9511, 1
  %9514 = extractvalue %dx.types.ResRet.f32 %9511, 2
  %9515 = fsub fast float %9508, %9500
  %9516 = fsub fast float %9509, %9501
  %9517 = fsub fast float %9510, %9502
  %9518 = fmul fast float %9515, %9488
  %9519 = fmul fast float %9516, %9488
  %9520 = fmul fast float %9517, %9488
  %9521 = fadd fast float %9518, %9500
  %9522 = fadd fast float %9519, %9501
  %9523 = fadd fast float %9520, %9502
  %9524 = fsub fast float %9512, %9504
  %9525 = fsub fast float %9513, %9505
  %9526 = fsub fast float %9514, %9506
  %9527 = fmul fast float %9524, %9488
  %9528 = fmul fast float %9525, %9488
  %9529 = fmul fast float %9526, %9488
  %9530 = fsub fast float %9504, %9521
  %9531 = fadd fast float %9530, %9527
  %9532 = fsub fast float %9505, %9522
  %9533 = fadd fast float %9532, %9528
  %9534 = fsub fast float %9506, %9523
  %9535 = fadd fast float %9534, %9529
  %9536 = fmul fast float %9531, %9476
  %9537 = fmul fast float %9533, %9476
  %9538 = fmul fast float %9535, %9476
  %9539 = fadd fast float %9536, %9521
  %9540 = fadd fast float %9537, %9522
  %9541 = fadd fast float %9538, %9523
  %9542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9543 = extractvalue %dx.types.CBufRet.f32 %9542, 1
  %9544 = fmul fast float %9539, %9543
  %9545 = fmul fast float %9540, %9543
  %9546 = fmul fast float %9541, %9543
  br label %9547

; <label>:9547                                    ; preds = %9379, %9348
  %9548 = phi float [ %9418, %9379 ], [ 1.000000e+00, %9348 ]
  %9549 = phi float [ %9419, %9379 ], [ 1.000000e+00, %9348 ]
  %9550 = phi float [ %9420, %9379 ], [ 1.000000e+00, %9348 ]
  %9551 = phi float [ %9544, %9379 ], [ 0.000000e+00, %9348 ]
  %9552 = phi float [ %9545, %9379 ], [ 0.000000e+00, %9348 ]
  %9553 = phi float [ %9546, %9379 ], [ 0.000000e+00, %9348 ]
  %9554 = fmul fast float %9551, %9325
  %9555 = fmul fast float %9552, %9325
  %9556 = fmul fast float %9553, %9325
  %9557 = call float @dx.op.dot3.f32(i32 55, float %9548, float %9549, float %9550, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9558 = call float @dx.op.dot3.f32(i32 55, float %9554, float %9555, float %9556, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9559 = select i1 %225, float %9557, float %9548
  %9560 = select i1 %225, float %9557, float %9549
  %9561 = select i1 %225, float 1.000000e+00, float %9550
  %9562 = select i1 %225, float %9558, float %9554
  %9563 = select i1 %225, float 0.000000e+00, float %9555
  %9564 = select i1 %225, float 0.000000e+00, float %9556
  %9565 = fmul fast float %9559, %9338
  %9566 = fmul fast float %9560, %9339
  %9567 = fmul fast float %9561, %9340
  %9568 = fadd fast float %9565, %9562
  %9569 = fadd fast float %9566, %9563
  %9570 = fadd fast float %9564, %9567
  %9571 = fmul fast float %9559, %9312
  %9572 = fmul fast float %9560, %9313
  %9573 = fmul fast float %9561, %9314
  %9574 = fmul fast float %134, %9350
  %9575 = fmul fast float %136, %9351
  %9576 = fsub fast float 1.000000e+00, %9574
  %9577 = fsub fast float 1.000000e+00, %9575
  %9578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9579 = extractvalue %dx.types.CBufRet.f32 %9578, 0
  %9580 = extractvalue %dx.types.CBufRet.f32 %9578, 1
  %9581 = extractvalue %dx.types.CBufRet.f32 %9578, 2
  %9582 = fmul fast float %9576, %9579
  %9583 = fmul fast float %9576, %9580
  %9584 = fmul fast float %9576, %9581
  %9585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9586 = extractvalue %dx.types.CBufRet.f32 %9585, 0
  %9587 = extractvalue %dx.types.CBufRet.f32 %9585, 1
  %9588 = extractvalue %dx.types.CBufRet.f32 %9585, 2
  %9589 = fmul fast float %9577, %9586
  %9590 = fmul fast float %9577, %9587
  %9591 = fmul fast float %9577, %9588
  %9592 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9593 = extractvalue %dx.types.CBufRet.f32 %9592, 0
  %9594 = extractvalue %dx.types.CBufRet.f32 %9592, 1
  %9595 = extractvalue %dx.types.CBufRet.f32 %9592, 2
  %9596 = fadd fast float %9589, %9593
  %9597 = fadd fast float %9596, %9582
  %9598 = fadd fast float %9590, %9594
  %9599 = fadd fast float %9598, %9583
  %9600 = fadd fast float %9591, %9595
  %9601 = fadd fast float %9600, %9584
  %9602 = fmul fast float %9597, %186
  %9603 = fmul fast float %9599, %186
  %9604 = fmul fast float %9601, %186
  br label %9605

; <label>:9605                                    ; preds = %9547, %9311
  %9606 = phi float [ %9602, %9547 ], [ %164, %9311 ]
  %9607 = phi float [ %9603, %9547 ], [ %165, %9311 ]
  %9608 = phi float [ %9604, %9547 ], [ %166, %9311 ]
  %9609 = phi float [ %186, %9547 ], [ %97, %9311 ]
  %9610 = phi float [ %9568, %9547 ], [ %9338, %9311 ]
  %9611 = phi float [ %9569, %9547 ], [ %9339, %9311 ]
  %9612 = phi float [ %9570, %9547 ], [ %9340, %9311 ]
  %9613 = phi float [ %9571, %9547 ], [ %9312, %9311 ]
  %9614 = phi float [ %9572, %9547 ], [ %9313, %9311 ]
  %9615 = phi float [ %9573, %9547 ], [ %9314, %9311 ]
  %9616 = phi float [ %9548, %9547 ], [ 1.000000e+00, %9311 ]
  br i1 %9347, label %10771, label %9617

; <label>:9617                                    ; preds = %9605
  %9618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %9619 = extractvalue %dx.types.CBufRet.f32 %9618, 0
  %9620 = extractvalue %dx.types.CBufRet.f32 %9618, 1
  %9621 = extractvalue %dx.types.CBufRet.f32 %9618, 2
  %9622 = extractvalue %dx.types.CBufRet.f32 %9618, 3
  %9623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %9624 = extractvalue %dx.types.CBufRet.f32 %9623, 0
  %9625 = extractvalue %dx.types.CBufRet.f32 %9623, 1
  %9626 = extractvalue %dx.types.CBufRet.f32 %9623, 2
  %9627 = extractvalue %dx.types.CBufRet.f32 %9623, 3
  %9628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %9629 = extractvalue %dx.types.CBufRet.f32 %9628, 0
  %9630 = extractvalue %dx.types.CBufRet.f32 %9628, 1
  %9631 = extractvalue %dx.types.CBufRet.f32 %9628, 2
  %9632 = extractvalue %dx.types.CBufRet.f32 %9628, 3
  %9633 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %9634 = extractvalue %dx.types.CBufRet.f32 %9633, 0
  %9635 = extractvalue %dx.types.CBufRet.f32 %9633, 1
  %9636 = extractvalue %dx.types.CBufRet.f32 %9633, 2
  %9637 = extractvalue %dx.types.CBufRet.f32 %9633, 3
  %9638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %9639 = extractvalue %dx.types.CBufRet.f32 %9638, 3
  %9640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %9641 = extractvalue %dx.types.CBufRet.f32 %9640, 3
  %9642 = extractvalue %dx.types.CBufRet.f32 %9640, 0
  %9643 = extractvalue %dx.types.CBufRet.f32 %9640, 1
  %9644 = extractvalue %dx.types.CBufRet.f32 %9640, 2
  %9645 = fcmp fast olt float %9644, -5.000000e-01
  %9646 = call float @dx.op.dot3.f32(i32 55, float %9606, float %9607, float %9608, float %9606, float %9607, float %9608)  ; Dot3(ax,ay,az,bx,by,bz)
  %9647 = call float @dx.op.unary.f32(i32 25, float %9646)  ; Rsqrt(value)
  %9648 = fmul fast float %9647, %9646
  %9649 = fmul fast float %9647, %9606
  %9650 = fmul fast float %9647, %9607
  %9651 = fmul fast float %9647, %9608
  %9652 = fadd fast float %9648, %9622
  %9653 = call float @dx.op.dot3.f32(i32 55, float %9649, float %9650, float %9651, float %9619, float %9620, float %9621)  ; Dot3(ax,ay,az,bx,by,bz)
  %9654 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %9655 = extractvalue %dx.types.CBufRet.i32 %9654, 1
  %9656 = and i32 %9655, 1
  %9657 = icmp ne i32 %9656, 0
  %9658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %9659 = extractvalue %dx.types.CBufRet.f32 %9658, 2
  %9660 = fcmp fast ogt float %9659, 0.000000e+00
  %9661 = and i1 %9657, %9660
  br i1 %9661, label %9662, label %10068, !dx.controlflow.hints !123

; <label>:9662                                    ; preds = %9617
  %9663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %9664 = extractvalue %dx.types.CBufRet.f32 %9663, 3
  %9665 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %9666 = extractvalue %dx.types.CBufRet.f32 %9665, 2
  %9667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9668 = extractvalue %dx.types.CBufRet.f32 %9667, 2
  %9669 = fsub fast float %9666, %9668
  %9670 = and i32 %9655, 2
  %9671 = extractvalue %dx.types.CBufRet.i32 %9654, 0
  %9672 = call i32 @dx.op.binary.i32(i32 40, i32 %9671, i32 3)  ; UMin(a,b)
  %9673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %9674 = extractvalue %dx.types.CBufRet.f32 %9673, 0
  %9675 = extractvalue %dx.types.CBufRet.f32 %9673, 1
  %9676 = extractvalue %dx.types.CBufRet.f32 %9667, 0
  %9677 = extractvalue %dx.types.CBufRet.f32 %9667, 1
  %9678 = fsub fast float %9674, %9676
  %9679 = fsub fast float %9675, %9677
  %9680 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %9681 = extractvalue %dx.types.CBufRet.f32 %9680, 0
  %9682 = fcmp fast ogt float %9681, 0.000000e+00
  %9683 = fsub fast float -0.000000e+00, %9678
  %9684 = fsub fast float -0.000000e+00, %9679
  %9685 = call float @dx.op.dot2.f32(i32 54, float %9649, float %9650, float %9649, float %9650)  ; Dot2(ax,ay,bx,by)
  %9686 = call float @dx.op.dot2.f32(i32 54, float %9649, float %9650, float %9683, float %9684)  ; Dot2(ax,ay,bx,by)
  %9687 = fmul fast float %9686, 2.000000e+00
  %9688 = call float @dx.op.dot2.f32(i32 54, float %9683, float %9684, float %9683, float %9684)  ; Dot2(ax,ay,bx,by)
  %9689 = fmul fast float %9681, %9681
  %9690 = fsub fast float %9688, %9689
  %9691 = fmul fast float %9687, %9687
  %9692 = fmul fast float %9685, 4.000000e+00
  %9693 = fmul fast float %9692, %9690
  %9694 = fsub fast float %9691, %9693
  %9695 = fcmp fast ogt float %9694, 0.000000e+00
  br i1 %9695, label %9696, label %9711

; <label>:9696                                    ; preds = %9662
  %9697 = fcmp fast ogt float %9687, 0.000000e+00
  %9698 = call float @dx.op.unary.f32(i32 24, float %9694)  ; Sqrt(value)
  %9699 = fsub fast float -0.000000e+00, %9698
  %9700 = select i1 %9697, float %9698, float %9699
  %9701 = fadd fast float %9700, %9687
  %9702 = fmul float %9701, -5.000000e-01
  %9703 = fdiv fast float %9702, %9685
  %9704 = call float @dx.op.binary.f32(i32 35, float %9703, float 0.000000e+00)  ; FMax(a,b)
  %9705 = call float @dx.op.binary.f32(i32 36, float %9648, float %9704)  ; FMin(a,b)
  %9706 = fdiv fast float %9690, %9702
  %9707 = call float @dx.op.binary.f32(i32 35, float %9706, float 0.000000e+00)  ; FMax(a,b)
  %9708 = call float @dx.op.binary.f32(i32 36, float %9648, float %9707)  ; FMin(a,b)
  %9709 = call float @dx.op.binary.f32(i32 36, float %9705, float %9708)  ; FMin(a,b)
  %9710 = call float @dx.op.binary.f32(i32 35, float %9705, float %9708)  ; FMax(a,b)
  br label %9711

; <label>:9711                                    ; preds = %9696, %9662
  %9712 = phi float [ %9710, %9696 ], [ -1.000000e+00, %9662 ]
  %9713 = phi float [ %9709, %9696 ], [ -1.000000e+00, %9662 ]
  %9714 = phi i1 [ true, %9696 ], [ false, %9662 ]
  %9715 = and i1 %9682, %9714
  br i1 %9715, label %9716, label %9718

; <label>:9716                                    ; preds = %9711
  %9717 = fcmp fast oeq float %9713, %9712
  br i1 %9717, label %10021, label %9719

; <label>:9718                                    ; preds = %9711
  br i1 %9682, label %10021, label %9719

; <label>:9719                                    ; preds = %9718, %9716
  %9720 = phi float [ %9648, %9718 ], [ %9712, %9716 ]
  %9721 = phi float [ 0.000000e+00, %9718 ], [ %9713, %9716 ]
  %9722 = icmp ne i32 %9670, 0
  %9723 = fmul fast float %9720, %9651
  %9724 = fadd fast float %9723, %9664
  %9725 = fmul fast float %9724, %9720
  %9726 = select i1 %9722, float 0.000000e+00, float %9725
  %9727 = fcmp fast oeq float %9651, 0.000000e+00
  %9728 = fdiv fast float %9669, %9651
  %9729 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9728)  ; FMax(a,b)
  %9730 = select i1 %9727, float %9720, float %9729
  %9731 = call float @dx.op.binary.f32(i32 36, float %9720, float %9730)  ; FMin(a,b)
  %9732 = fcmp fast ogt float %9651, 0.000000e+00
  %9733 = fcmp fast olt float %9669, 0.000000e+00
  br i1 %9732, label %9734, label %9791

; <label>:9734                                    ; preds = %9719
  %9735 = icmp eq i32 %9670, 0
  br i1 %9733, label %9736, label %9780

; <label>:9736                                    ; preds = %9734
  %9737 = select i1 %9735, float %9720, float 0.000000e+00
  %9738 = fsub fast float -0.000000e+00, %9737
  %9739 = call float @dx.op.unary.f32(i32 6, float %9738)  ; FAbs(value)
  %9740 = fmul fast float %9737, %9651
  %9741 = fadd fast float %9740, %9664
  %9742 = fmul fast float %9739, %9741
  %9743 = fsub fast float %9726, %9742
  %9744 = fsub fast float %9720, %9739
  %9745 = select i1 %9735, float %9744, float 0.000000e+00
  %9746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9747 = extractvalue %dx.types.CBufRet.f32 %9746, 0
  %9748 = extractvalue %dx.types.CBufRet.f32 %9746, 1
  %9749 = extractvalue %dx.types.CBufRet.f32 %9746, 2
  %9750 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9751 = extractvalue %dx.types.CBufRet.f32 %9750, 0
  %9752 = extractvalue %dx.types.CBufRet.f32 %9750, 1
  %9753 = extractvalue %dx.types.CBufRet.f32 %9750, 2
  %9754 = extractvalue %dx.types.CBufRet.f32 %9750, 3
  %9755 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9756 = extractvalue %dx.types.CBufRet.f32 %9755, 3
  %9757 = call float @dx.op.binary.f32(i32 36, float %9743, float %9756)  ; FMin(a,b)
  %9758 = fmul fast float %9754, %9745
  %9759 = call float @dx.op.unary.f32(i32 7, float %9758)  ; Saturate(value)
  %9760 = fsub fast float %9751, %9747
  %9761 = fsub fast float %9752, %9748
  %9762 = fsub fast float %9753, %9749
  %9763 = fmul fast float %9759, %9760
  %9764 = fmul fast float %9759, %9761
  %9765 = fmul fast float %9759, %9762
  %9766 = fadd fast float %9763, %9747
  %9767 = fadd fast float %9764, %9748
  %9768 = fadd fast float %9765, %9749
  %9769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9770 = extractvalue %dx.types.CBufRet.f32 %9769, 0
  %9771 = extractvalue %dx.types.CBufRet.f32 %9769, 1
  %9772 = fadd fast float %9771, %9770
  %9773 = call float @dx.op.unary.f32(i32 7, float %9772)  ; Saturate(value)
  %9774 = extractvalue %dx.types.CBufRet.f32 %9769, 2
  %9775 = extractvalue %dx.types.CBufRet.f32 %9769, 3
  %9776 = fadd fast float %9775, %9774
  %9777 = call float @dx.op.unary.f32(i32 7, float %9776)  ; Saturate(value)
  %9778 = fmul fast float %9773, %9757
  %9779 = fmul fast float %9778, %9777
  br label %10021

; <label>:9780                                    ; preds = %9734
  br i1 %9735, label %9781, label %9802

; <label>:9781                                    ; preds = %9780
  %9782 = call float @dx.op.binary.f32(i32 36, float %9731, float %9721)  ; FMin(a,b)
  %9783 = fsub fast float %9731, %9782
  %9784 = fsub fast float %9783, %9720
  %9785 = call float @dx.op.unary.f32(i32 6, float %9784)  ; FAbs(value)
  %9786 = fadd fast float %9783, %9720
  %9787 = fmul fast float %9786, %9651
  %9788 = fadd fast float %9787, %9664
  %9789 = fmul fast float %9788, %9785
  %9790 = fsub fast float %9726, %9789
  br label %9802

; <label>:9791                                    ; preds = %9719
  br i1 %9733, label %9792, label %9802

; <label>:9792                                    ; preds = %9791
  %9793 = call float @dx.op.binary.f32(i32 35, float %9721, float %9731)  ; FMax(a,b)
  %9794 = icmp eq i32 %9670, 0
  %9795 = select i1 %9794, float %9731, float 0.000000e+00
  %9796 = fsub fast float -0.000000e+00, %9795
  %9797 = call float @dx.op.unary.f32(i32 6, float %9796)  ; FAbs(value)
  %9798 = fmul fast float %9795, %9651
  %9799 = fadd fast float %9798, %9664
  %9800 = fmul fast float %9797, %9799
  %9801 = fsub fast float %9726, %9800
  br label %9802

; <label>:9802                                    ; preds = %9792, %9791, %9781, %9780
  %9803 = phi float [ %9721, %9780 ], [ %9721, %9781 ], [ %9793, %9792 ], [ %9721, %9791 ]
  %9804 = phi float [ 0.000000e+00, %9780 ], [ %9785, %9781 ], [ %9797, %9792 ], [ 0.000000e+00, %9791 ]
  %9805 = phi float [ %9726, %9780 ], [ %9790, %9781 ], [ %9801, %9792 ], [ %9726, %9791 ]
  %9806 = phi float [ %9731, %9780 ], [ %9731, %9781 ], [ %9720, %9792 ], [ %9720, %9791 ]
  %9807 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 0
  store float -1.000000e+00, float* %9807, align 4, !tbaa !89, !noalias !124
  %9808 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 1
  store float -1.000000e+00, float* %9808, align 4, !tbaa !89, !noalias !124
  %9809 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 2
  store float -1.000000e+00, float* %9809, align 4, !tbaa !89, !noalias !124
  %9810 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 0
  store float -1.000000e+00, float* %9810, align 4, !tbaa !89, !noalias !124
  %9811 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 1
  store float -1.000000e+00, float* %9811, align 4, !tbaa !89, !noalias !124
  %9812 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 2
  store float -1.000000e+00, float* %9812, align 4, !tbaa !89, !noalias !124
  %9813 = icmp sgt i32 %9672, 0
  br i1 %9813, label %9814, label %9875

; <label>:9814                                    ; preds = %9802
  br label %9815

; <label>:9815                                    ; preds = %9864, %9814
  %9816 = phi i32 [ %9865, %9864 ], [ 0, %9814 ]
  %9817 = phi i32 [ %9866, %9864 ], [ 0, %9814 ]
  %9818 = add nuw i32 %9817, 171
  %9819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 %9818)  ; CBufferLoadLegacy(handle,regIndex)
  %9820 = extractvalue %dx.types.CBufRet.f32 %9819, 0
  %9821 = extractvalue %dx.types.CBufRet.f32 %9819, 1
  %9822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9823 = extractvalue %dx.types.CBufRet.f32 %9822, 0
  %9824 = extractvalue %dx.types.CBufRet.f32 %9822, 1
  %9825 = fsub fast float %9820, %9823
  %9826 = fsub fast float %9821, %9824
  %9827 = extractvalue %dx.types.CBufRet.f32 %9819, 2
  %9828 = fsub fast float -0.000000e+00, %9825
  %9829 = fsub fast float -0.000000e+00, %9826
  %9830 = call float @dx.op.dot2.f32(i32 54, float %9649, float %9650, float %9828, float %9829)  ; Dot2(ax,ay,bx,by)
  %9831 = fmul fast float %9830, 2.000000e+00
  %9832 = call float @dx.op.dot2.f32(i32 54, float %9828, float %9829, float %9828, float %9829)  ; Dot2(ax,ay,bx,by)
  %9833 = fmul fast float %9827, %9827
  %9834 = fsub fast float %9832, %9833
  %9835 = fmul fast float %9831, %9831
  %9836 = fmul fast float %9692, %9834
  %9837 = fsub fast float %9835, %9836
  %9838 = fcmp fast ogt float %9837, 0.000000e+00
  br i1 %9838, label %9839, label %9854

; <label>:9839                                    ; preds = %9815
  %9840 = fcmp fast ogt float %9831, 0.000000e+00
  %9841 = call float @dx.op.unary.f32(i32 24, float %9837)  ; Sqrt(value)
  %9842 = fsub fast float -0.000000e+00, %9841
  %9843 = select i1 %9840, float %9841, float %9842
  %9844 = fadd fast float %9843, %9831
  %9845 = fmul float %9844, -5.000000e-01
  %9846 = fdiv fast float %9845, %9685
  %9847 = call float @dx.op.binary.f32(i32 35, float %9846, float 0.000000e+00)  ; FMax(a,b)
  %9848 = call float @dx.op.binary.f32(i32 36, float %9720, float %9847)  ; FMin(a,b)
  %9849 = fdiv fast float %9834, %9845
  %9850 = call float @dx.op.binary.f32(i32 35, float %9849, float 0.000000e+00)  ; FMax(a,b)
  %9851 = call float @dx.op.binary.f32(i32 36, float %9720, float %9850)  ; FMin(a,b)
  %9852 = call float @dx.op.binary.f32(i32 36, float %9848, float %9851)  ; FMin(a,b)
  %9853 = call float @dx.op.binary.f32(i32 35, float %9848, float %9851)  ; FMax(a,b)
  br label %9854

; <label>:9854                                    ; preds = %9839, %9815
  %9855 = phi float [ %9853, %9839 ], [ -1.000000e+00, %9815 ]
  %9856 = phi float [ %9852, %9839 ], [ -1.000000e+00, %9815 ]
  %9857 = phi i1 [ true, %9839 ], [ false, %9815 ]
  br i1 %9857, label %9858, label %9864

; <label>:9858                                    ; preds = %9854
  %9859 = call float @dx.op.binary.f32(i32 35, float %9803, float %9856)  ; FMax(a,b)
  %9860 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 %9817
  store float %9859, float* %9860, align 4, !tbaa !89, !noalias !124
  %9861 = call float @dx.op.binary.f32(i32 35, float %9803, float %9855)  ; FMax(a,b)
  %9862 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 %9817
  store float %9861, float* %9862, align 4, !tbaa !89, !noalias !124
  %9863 = add nsw i32 %9816, 1
  br label %9864

; <label>:9864                                    ; preds = %9858, %9854
  %9865 = phi i32 [ %9863, %9858 ], [ %9816, %9854 ]
  %9866 = add nuw nsw i32 %9817, 1
  %9867 = icmp eq i32 %9866, %9672
  br i1 %9867, label %9868, label %9815

; <label>:9868                                    ; preds = %9864
  %9869 = load float, float* %9809, align 4, !tbaa !89, !alias.scope !140, !noalias !143
  %9870 = load float, float* %9808, align 4, !tbaa !89, !alias.scope !146, !noalias !147
  %9871 = load float, float* %9807, align 4, !tbaa !89, !alias.scope !148, !noalias !149
  %9872 = load float, float* %9812, align 4, !tbaa !89, !alias.scope !150, !noalias !153
  %9873 = load float, float* %9811, align 4, !tbaa !89, !alias.scope !156, !noalias !157
  %9874 = load float, float* %9810, align 4, !tbaa !89, !alias.scope !158, !noalias !159
  br label %9875

; <label>:9875                                    ; preds = %9868, %9802
  %9876 = phi float [ -1.000000e+00, %9802 ], [ %9874, %9868 ]
  %9877 = phi float [ -1.000000e+00, %9802 ], [ %9873, %9868 ]
  %9878 = phi float [ -1.000000e+00, %9802 ], [ %9872, %9868 ]
  %9879 = phi float [ -1.000000e+00, %9802 ], [ %9871, %9868 ]
  %9880 = phi float [ -1.000000e+00, %9802 ], [ %9870, %9868 ]
  %9881 = phi float [ -1.000000e+00, %9802 ], [ %9869, %9868 ]
  %9882 = phi i32 [ 0, %9802 ], [ %9865, %9868 ]
  %9883 = call float @dx.op.binary.f32(i32 36, float %9880, float %9881)  ; FMin(a,b)
  %9884 = call float @dx.op.binary.f32(i32 36, float %9879, float %9883)  ; FMin(a,b)
  %9885 = call float @dx.op.binary.f32(i32 35, float %9879, float %9880)  ; FMax(a,b)
  %9886 = call float @dx.op.binary.f32(i32 36, float %9885, float %9881)  ; FMin(a,b)
  %9887 = call float @dx.op.binary.f32(i32 36, float %9879, float %9880)  ; FMin(a,b)
  %9888 = call float @dx.op.binary.f32(i32 35, float %9887, float %9886)  ; FMax(a,b)
  %9889 = call float @dx.op.binary.f32(i32 35, float %9880, float %9881)  ; FMax(a,b)
  %9890 = call float @dx.op.binary.f32(i32 35, float %9879, float %9889)  ; FMax(a,b)
  store float %9884, float* %9807, align 4, !tbaa !89, !alias.scope !148, !noalias !149
  store float %9888, float* %9808, align 4, !tbaa !89, !alias.scope !146, !noalias !147
  store float %9890, float* %9809, align 4, !tbaa !89, !alias.scope !140, !noalias !143
  %9891 = call float @dx.op.binary.f32(i32 36, float %9877, float %9878)  ; FMin(a,b)
  %9892 = call float @dx.op.binary.f32(i32 36, float %9876, float %9891)  ; FMin(a,b)
  %9893 = call float @dx.op.binary.f32(i32 35, float %9876, float %9877)  ; FMax(a,b)
  %9894 = call float @dx.op.binary.f32(i32 36, float %9893, float %9878)  ; FMin(a,b)
  %9895 = call float @dx.op.binary.f32(i32 36, float %9876, float %9877)  ; FMin(a,b)
  %9896 = call float @dx.op.binary.f32(i32 35, float %9895, float %9894)  ; FMax(a,b)
  %9897 = call float @dx.op.binary.f32(i32 35, float %9877, float %9878)  ; FMax(a,b)
  %9898 = call float @dx.op.binary.f32(i32 35, float %9876, float %9897)  ; FMax(a,b)
  store float %9892, float* %9810, align 4, !tbaa !89, !alias.scope !158, !noalias !159
  store float %9896, float* %9811, align 4, !tbaa !89, !alias.scope !156, !noalias !157
  store float %9898, float* %9812, align 4, !tbaa !89, !alias.scope !150, !noalias !153
  %9899 = sub nsw i32 3, %9882
  %9900 = icmp sgt i32 %9899, 2
  br i1 %9900, label %9901, label %9939

; <label>:9901                                    ; preds = %9875
  %9902 = icmp eq i32 %9670, 0
  %9903 = fsub fast float %9720, %9804
  %9904 = select i1 %9902, float %9903, float %9804
  %9905 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9906 = extractvalue %dx.types.CBufRet.f32 %9905, 0
  %9907 = extractvalue %dx.types.CBufRet.f32 %9905, 1
  %9908 = extractvalue %dx.types.CBufRet.f32 %9905, 2
  %9909 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9910 = extractvalue %dx.types.CBufRet.f32 %9909, 0
  %9911 = extractvalue %dx.types.CBufRet.f32 %9909, 1
  %9912 = extractvalue %dx.types.CBufRet.f32 %9909, 2
  %9913 = extractvalue %dx.types.CBufRet.f32 %9909, 3
  %9914 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9915 = extractvalue %dx.types.CBufRet.f32 %9914, 3
  %9916 = call float @dx.op.binary.f32(i32 36, float %9805, float %9915)  ; FMin(a,b)
  %9917 = fmul fast float %9913, %9904
  %9918 = call float @dx.op.unary.f32(i32 7, float %9917)  ; Saturate(value)
  %9919 = fsub fast float %9910, %9906
  %9920 = fsub fast float %9911, %9907
  %9921 = fsub fast float %9912, %9908
  %9922 = fmul fast float %9918, %9919
  %9923 = fmul fast float %9918, %9920
  %9924 = fmul fast float %9918, %9921
  %9925 = fadd fast float %9922, %9906
  %9926 = fadd fast float %9923, %9907
  %9927 = fadd fast float %9924, %9908
  %9928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9929 = extractvalue %dx.types.CBufRet.f32 %9928, 0
  %9930 = extractvalue %dx.types.CBufRet.f32 %9928, 1
  %9931 = fadd fast float %9930, %9929
  %9932 = call float @dx.op.unary.f32(i32 7, float %9931)  ; Saturate(value)
  %9933 = extractvalue %dx.types.CBufRet.f32 %9928, 2
  %9934 = extractvalue %dx.types.CBufRet.f32 %9928, 3
  %9935 = fadd fast float %9934, %9933
  %9936 = call float @dx.op.unary.f32(i32 7, float %9935)  ; Saturate(value)
  %9937 = fmul fast float %9932, %9916
  %9938 = fmul fast float %9937, %9936
  br label %10021

; <label>:9939                                    ; preds = %9875
  %9940 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 %9899
  %9941 = load float, float* %9940, align 4, !tbaa !89, !noalias !124
  %9942 = fcmp fast olt float %9941, %9806
  %9943 = icmp sgt i32 %9882, 0
  %9944 = and i1 %9943, %9942
  br i1 %9944, label %9945, label %9982

; <label>:9945                                    ; preds = %9939
  br label %9946

; <label>:9946                                    ; preds = %9975, %9945
  %9947 = phi float [ %9976, %9975 ], [ %9804, %9945 ]
  %9948 = phi float [ %9977, %9975 ], [ %9805, %9945 ]
  %9949 = phi float [ %9957, %9975 ], [ %9941, %9945 ]
  %9950 = phi i32 [ %9954, %9975 ], [ %9899, %9945 ]
  %9951 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 %9950
  %9952 = load float, float* %9951, align 4, !tbaa !89, !noalias !124
  %9953 = icmp slt i32 %9950, 2
  %9954 = add nsw i32 %9950, 1
  %9955 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 %9954
  %9956 = load float, float* %9955, align 4, !tbaa !89, !noalias !124
  %9957 = select i1 %9953, float %9956, float %9720
  %9958 = call float @dx.op.binary.f32(i32 36, float %9957, float %9952)  ; FMin(a,b)
  %9959 = call float @dx.op.binary.f32(i32 36, float %9806, float %9958)  ; FMin(a,b)
  %9960 = icmp eq i32 %9670, 0
  %9961 = fadd fast float %9959, %9949
  %9962 = fmul fast float %9961, %9651
  %9963 = fadd fast float %9962, %9664
  br i1 %9960, label %9969, label %9964

; <label>:9964                                    ; preds = %9946
  %9965 = fsub fast float %9959, %9949
  %9966 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9965)  ; FMax(a,b)
  %9967 = fmul fast float %9966, %9963
  %9968 = fadd fast float %9967, %9948
  br label %9975

; <label>:9969                                    ; preds = %9946
  %9970 = fsub fast float %9949, %9959
  %9971 = call float @dx.op.unary.f32(i32 6, float %9970)  ; FAbs(value)
  %9972 = fadd fast float %9971, %9947
  %9973 = fmul fast float %9971, %9963
  %9974 = fsub fast float %9948, %9973
  br label %9975

; <label>:9975                                    ; preds = %9969, %9964
  %9976 = phi float [ %9966, %9964 ], [ %9972, %9969 ]
  %9977 = phi float [ %9968, %9964 ], [ %9974, %9969 ]
  %9978 = fcmp fast olt float %9957, %9806
  %9979 = icmp slt i32 %9954, 3
  %9980 = and i1 %9979, %9978
  br i1 %9980, label %9946, label %9981

; <label>:9981                                    ; preds = %9975
  br label %9982

; <label>:9982                                    ; preds = %9981, %9939
  %9983 = phi float [ %9804, %9939 ], [ %9976, %9981 ]
  %9984 = phi float [ %9805, %9939 ], [ %9977, %9981 ]
  %9985 = fsub fast float %9720, %9983
  %9986 = select i1 %9722, float %9983, float %9985
  %9987 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9988 = extractvalue %dx.types.CBufRet.f32 %9987, 0
  %9989 = extractvalue %dx.types.CBufRet.f32 %9987, 1
  %9990 = extractvalue %dx.types.CBufRet.f32 %9987, 2
  %9991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9992 = extractvalue %dx.types.CBufRet.f32 %9991, 0
  %9993 = extractvalue %dx.types.CBufRet.f32 %9991, 1
  %9994 = extractvalue %dx.types.CBufRet.f32 %9991, 2
  %9995 = extractvalue %dx.types.CBufRet.f32 %9991, 3
  %9996 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9997 = extractvalue %dx.types.CBufRet.f32 %9996, 3
  %9998 = call float @dx.op.binary.f32(i32 36, float %9984, float %9997)  ; FMin(a,b)
  %9999 = fmul fast float %9995, %9986
  %10000 = call float @dx.op.unary.f32(i32 7, float %9999)  ; Saturate(value)
  %10001 = fsub fast float %9992, %9988
  %10002 = fsub fast float %9993, %9989
  %10003 = fsub fast float %9994, %9990
  %10004 = fmul fast float %10000, %10001
  %10005 = fmul fast float %10000, %10002
  %10006 = fmul fast float %10000, %10003
  %10007 = fadd fast float %10004, %9988
  %10008 = fadd fast float %10005, %9989
  %10009 = fadd fast float %10006, %9990
  %10010 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %10011 = extractvalue %dx.types.CBufRet.f32 %10010, 0
  %10012 = extractvalue %dx.types.CBufRet.f32 %10010, 1
  %10013 = fadd fast float %10012, %10011
  %10014 = call float @dx.op.unary.f32(i32 7, float %10013)  ; Saturate(value)
  %10015 = extractvalue %dx.types.CBufRet.f32 %10010, 2
  %10016 = extractvalue %dx.types.CBufRet.f32 %10010, 3
  %10017 = fadd fast float %10016, %10015
  %10018 = call float @dx.op.unary.f32(i32 7, float %10017)  ; Saturate(value)
  %10019 = fmul fast float %10014, %9998
  %10020 = fmul fast float %10019, %10018
  br label %10021

; <label>:10021                                   ; preds = %9982, %9901, %9736, %9718, %9716
  %10022 = phi float [ %9745, %9736 ], [ %9904, %9901 ], [ %9986, %9982 ], [ 0.000000e+00, %9716 ], [ 0.000000e+00, %9718 ]
  %10023 = phi float [ %9779, %9736 ], [ %9938, %9901 ], [ %10020, %9982 ], [ 0.000000e+00, %9716 ], [ 0.000000e+00, %9718 ]
  %10024 = phi float [ %9766, %9736 ], [ %9925, %9901 ], [ %10007, %9982 ], [ 0.000000e+00, %9716 ], [ 0.000000e+00, %9718 ]
  %10025 = phi float [ %9767, %9736 ], [ %9926, %9901 ], [ %10008, %9982 ], [ 0.000000e+00, %9716 ], [ 0.000000e+00, %9718 ]
  %10026 = phi float [ %9768, %9736 ], [ %9927, %9901 ], [ %10009, %9982 ], [ 0.000000e+00, %9716 ], [ 0.000000e+00, %9718 ]
  %10027 = fmul fast float %9659, %10023
  %10028 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %10029 = extractvalue %dx.types.CBufRet.f32 %10028, 2
  %10030 = fsub fast float %9666, %10029
  %10031 = fcmp fast olt float %10027, -2.000000e+01
  %10032 = call float @dx.op.unary.f32(i32 21, float %10027)  ; Exp(value)
  %10033 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %10034 = extractvalue %dx.types.CBufRet.f32 %10033, 2
  %10035 = extractvalue %dx.types.CBufRet.f32 %10033, 3
  %10036 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %10037 = extractvalue %dx.types.CBufRet.f32 %10036, 2
  %10038 = fmul fast float %10035, %10030
  %10039 = call float @dx.op.unary.f32(i32 7, float %10038)  ; Saturate(value)
  %10040 = fsub fast float 1.000000e+00, %10039
  %10041 = fmul fast float %9651, 5.000000e-01
  %10042 = fadd fast float %10041, 5.000000e-01
  %10043 = call float @dx.op.unary.f32(i32 7, float %10042)  ; Saturate(value)
  %10044 = fsub fast float 1.000000e+00, %10043
  %10045 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %10040)  ; FMax(a,b)
  %10046 = fdiv fast float %10044, %10045
  %10047 = fsub fast float %10030, %9608
  %10048 = call float @dx.op.unary.f32(i32 6, float %10047)  ; FAbs(value)
  %10049 = fmul fast float %10048, %10034
  %10050 = call float @dx.op.unary.f32(i32 7, float %10046)  ; Saturate(value)
  %10051 = fsub fast float 1.000000e+00, %10049
  %10052 = fmul fast float %10051, %10050
  %10053 = fadd fast float %10052, %10049
  %10054 = fmul fast float %10037, %10030
  %10055 = call float @dx.op.unary.f32(i32 7, float %10054)  ; Saturate(value)
  %10056 = fsub fast float 1.000000e+00, %10053
  %10057 = fmul fast float %10056, %10055
  %10058 = fadd fast float %10057, %10053
  %10059 = call float @dx.op.unary.f32(i32 7, float %10058)  ; Saturate(value)
  %10060 = fadd fast float %10032, -1.000000e+00
  %10061 = select i1 %10031, float -1.000000e+00, float %10060
  %10062 = fmul fast float %10059, %10061
  %10063 = fadd fast float %10062, 1.000000e+00
  %10064 = fsub fast float -0.000000e+00, %10062
  %10065 = fmul fast float %10024, %10064
  %10066 = fmul fast float %10025, %10064
  %10067 = fmul fast float %10026, %10064
  br label %10068

; <label>:10068                                   ; preds = %10021, %9617
  %10069 = phi float [ %10022, %10021 ], [ 0.000000e+00, %9617 ]
  %10070 = phi float [ %10063, %10021 ], [ 1.000000e+00, %9617 ]
  %10071 = phi float [ %10065, %10021 ], [ 0.000000e+00, %9617 ]
  %10072 = phi float [ %10066, %10021 ], [ 0.000000e+00, %9617 ]
  %10073 = phi float [ %10067, %10021 ], [ 0.000000e+00, %9617 ]
  %10074 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %10075 = extractvalue %dx.types.CBufRet.f32 %10074, 1
  %10076 = fsub fast float 1.000000e+00, %10070
  %10077 = fmul fast float %10076, %9652
  %10078 = fmul fast float %10077, %10075
  %10079 = fsub fast float %9652, %10078
  br i1 %9645, label %10080, label %10109, !dx.controlflow.hints !160

; <label>:10080                                   ; preds = %10068
  %10081 = fmul fast float %9653, %9642
  %10082 = fadd fast float %10081, %9643
  %10083 = call float @dx.op.unary.f32(i32 7, float %10082)  ; Saturate(value)
  %10084 = fmul fast float %9624, %10079
  %10085 = fsub fast float -0.000000e+00, %10084
  %10086 = fmul fast float %9625, %10079
  %10087 = fsub fast float -0.000000e+00, %10086
  %10088 = call float @dx.op.unary.f32(i32 21, float %10085)  ; Exp(value)
  %10089 = call float @dx.op.unary.f32(i32 21, float %10087)  ; Exp(value)
  %10090 = call float @dx.op.binary.f32(i32 35, float %9632, float %10088)  ; FMax(a,b)
  %10091 = call float @dx.op.binary.f32(i32 35, float %9632, float %10089)  ; FMax(a,b)
  %10092 = fsub fast float %10091, %10090
  %10093 = fmul fast float %10092, %10083
  %10094 = fadd fast float %10093, %10090
  %10095 = call float @dx.op.unary.f32(i32 7, float %10094)  ; Saturate(value)
  %10096 = fsub fast float %9629, %9634
  %10097 = fsub fast float %9630, %9635
  %10098 = fsub fast float %9631, %9636
  %10099 = fmul fast float %10083, %10096
  %10100 = fmul fast float %10083, %10097
  %10101 = fmul fast float %10083, %10098
  %10102 = fadd fast float %10099, %9634
  %10103 = fadd fast float %10100, %9635
  %10104 = fadd fast float %10101, %9636
  %10105 = fsub fast float 1.000000e+00, %10095
  %10106 = fmul fast float %10105, %10102
  %10107 = fmul fast float %10105, %10103
  %10108 = fmul fast float %10105, %10104
  br label %10168

; <label>:10109                                   ; preds = %10068
  %10110 = fmul fast float %10079, %9641
  %10111 = call float @dx.op.unary.f32(i32 7, float %10110)  ; Saturate(value)
  %10112 = fsub fast float 2.000000e+00, %10111
  %10113 = fmul fast float %10111, 9.921875e-01
  %10114 = fmul fast float %10113, %10112
  %10115 = fadd fast float %10114, 3.906250e-03
  %10116 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %46, float %10115, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10117 = extractvalue %dx.types.ResRet.f32 %10116, 0
  %10118 = fsub fast float %10111, %10117
  %10119 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %10118)  ; FMax(a,b)
  %10120 = fmul fast float %9627, %9608
  %10121 = call float @dx.op.unary.f32(i32 6, float %10120)  ; FAbs(value)
  %10122 = fcmp fast ogt float %10121, 0x3EB0C6F7A0000000
  br i1 %10122, label %10123, label %10129, !dx.controlflow.hints !161

; <label>:10123                                   ; preds = %10109
  %10124 = fmul fast float %10120, 0xBFF7154760000000
  %10125 = call float @dx.op.unary.f32(i32 21, float %10124)  ; Exp(value)
  %10126 = fsub fast float 1.000000e+00, %10125
  %10127 = fdiv fast float %10126, %10120
  %10128 = fmul fast float %10127, %9637
  br label %10129

; <label>:10129                                   ; preds = %10123, %10109
  %10130 = phi float [ %10128, %10123 ], [ %9637, %10109 ]
  %10131 = fadd fast float %10130, %9639
  %10132 = fmul fast float %10131, %10119
  %10133 = fmul fast float %9624, %10132
  %10134 = fsub fast float -0.000000e+00, %10133
  %10135 = fmul fast float %9625, %10132
  %10136 = fsub fast float -0.000000e+00, %10135
  %10137 = fmul fast float %9626, %10132
  %10138 = fsub fast float -0.000000e+00, %10137
  %10139 = call float @dx.op.unary.f32(i32 21, float %10134)  ; Exp(value)
  %10140 = call float @dx.op.unary.f32(i32 21, float %10136)  ; Exp(value)
  %10141 = call float @dx.op.unary.f32(i32 21, float %10138)  ; Exp(value)
  %10142 = fmul fast float %9653, %9653
  %10143 = fadd fast float %10142, 1.000000e+00
  %10144 = fmul fast float %10143, 0x3FAE8EC8A0000000
  %10145 = fmul fast float %10144, %9634
  %10146 = fmul fast float %10144, %9635
  %10147 = fmul fast float %10144, %9636
  %10148 = fmul fast float %9653, %9632
  %10149 = fsub fast float 1.000000e+00, %10148
  %10150 = fmul fast float %9632, %9632
  %10151 = fsub fast float 1.000000e+00, %10150
  %10152 = fmul fast float %10151, 0x3FB45F3060000000
  %10153 = fmul fast float %10149, %10149
  %10154 = fdiv fast float 1.000000e+00, %10153
  %10155 = fmul fast float %10152, %10154
  %10156 = fmul fast float %10155, %9629
  %10157 = fmul fast float %10155, %9630
  %10158 = fmul fast float %10155, %9631
  %10159 = fadd fast float %10156, %10145
  %10160 = fadd fast float %10157, %10146
  %10161 = fadd fast float %10158, %10147
  %10162 = fsub fast float 1.000000e+00, %10139
  %10163 = fsub fast float 1.000000e+00, %10140
  %10164 = fsub fast float 1.000000e+00, %10141
  %10165 = fmul fast float %10159, %10162
  %10166 = fmul fast float %10160, %10163
  %10167 = fmul fast float %10161, %10164
  br label %10168

; <label>:10168                                   ; preds = %10129, %10080
  %10169 = phi float [ %10106, %10080 ], [ %10165, %10129 ]
  %10170 = phi float [ %10107, %10080 ], [ %10166, %10129 ]
  %10171 = phi float [ %10108, %10080 ], [ %10167, %10129 ]
  %10172 = phi float [ %10095, %10080 ], [ %10139, %10129 ]
  %10173 = phi float [ %10095, %10080 ], [ %10140, %10129 ]
  %10174 = phi float [ %10095, %10080 ], [ %10141, %10129 ]
  br i1 %9661, label %10175, label %10373, !dx.controlflow.hints !162

; <label>:10175                                   ; preds = %10168
  %10176 = extractvalue %dx.types.CBufRet.f32 %10074, 0
  %10177 = fmul fast float %10176, %10076
  %10178 = fsub fast float %10071, %10169
  %10179 = fsub fast float %10072, %10170
  %10180 = fsub fast float %10073, %10171
  %10181 = fmul fast float %10177, %10178
  %10182 = fmul fast float %10177, %10179
  %10183 = fmul fast float %10177, %10180
  %10184 = fadd fast float %10181, %10169
  %10185 = fadd fast float %10182, %10170
  %10186 = fadd fast float %10183, %10171
  %10187 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %10172)  ; FMax(a,b)
  %10188 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %10173)  ; FMax(a,b)
  %10189 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %10174)  ; FMax(a,b)
  %10190 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %10070)  ; FMax(a,b)
  %10191 = call float @dx.op.binary.f32(i32 35, float %10069, float %10079)  ; FMax(a,b)
  %10192 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %10191)  ; FMax(a,b)
  %10193 = fdiv fast float %10069, %10192
  %10194 = call float @dx.op.unary.f32(i32 7, float %10193)  ; Saturate(value)
  %10195 = fdiv fast float %10079, %10192
  %10196 = call float @dx.op.unary.f32(i32 7, float %10195)  ; Saturate(value)
  %10197 = fcmp fast une float %10190, 1.000000e+00
  br i1 %10197, label %10198, label %10211, !dx.controlflow.hints !163

; <label>:10198                                   ; preds = %10175
  %10199 = call float @dx.op.unary.f32(i32 23, float %10190)  ; Log(value)
  %10200 = fmul fast float %10199, 0x3FE62E4300000000
  %10201 = fmul fast float %10071, %10200
  %10202 = fsub fast float -0.000000e+00, %10201
  %10203 = fmul fast float %10072, %10200
  %10204 = fsub fast float -0.000000e+00, %10203
  %10205 = fmul fast float %10073, %10200
  %10206 = fsub fast float -0.000000e+00, %10205
  %10207 = fsub fast float 1.000000e+00, %10190
  %10208 = fdiv fast float %10202, %10207
  %10209 = fdiv fast float %10204, %10207
  %10210 = fdiv fast float %10206, %10207
  br label %10211

; <label>:10211                                   ; preds = %10198, %10175
  %10212 = phi float [ %10208, %10198 ], [ %10071, %10175 ]
  %10213 = phi float [ %10209, %10198 ], [ %10072, %10175 ]
  %10214 = phi float [ %10210, %10198 ], [ %10073, %10175 ]
  %10215 = phi float [ %10200, %10198 ], [ 0.000000e+00, %10175 ]
  %10216 = fcmp fast une float %10187, 1.000000e+00
  br i1 %10216, label %10217, label %10224, !dx.controlflow.hints !164

; <label>:10217                                   ; preds = %10211
  %10218 = call float @dx.op.unary.f32(i32 23, float %10187)  ; Log(value)
  %10219 = fmul fast float %10218, 0x3FE62E4300000000
  %10220 = fmul fast float %10184, %10219
  %10221 = fsub fast float -0.000000e+00, %10220
  %10222 = fsub fast float 1.000000e+00, %10187
  %10223 = fdiv fast float %10221, %10222
  br label %10224

; <label>:10224                                   ; preds = %10217, %10211
  %10225 = phi float [ %10223, %10217 ], [ %10184, %10211 ]
  %10226 = phi float [ %10219, %10217 ], [ 0.000000e+00, %10211 ]
  %10227 = fcmp fast une float %10188, 1.000000e+00
  br i1 %10227, label %10228, label %10235, !dx.controlflow.hints !164

; <label>:10228                                   ; preds = %10224
  %10229 = call float @dx.op.unary.f32(i32 23, float %10188)  ; Log(value)
  %10230 = fmul fast float %10229, 0x3FE62E4300000000
  %10231 = fmul fast float %10185, %10230
  %10232 = fsub fast float -0.000000e+00, %10231
  %10233 = fsub fast float 1.000000e+00, %10188
  %10234 = fdiv fast float %10232, %10233
  br label %10235

; <label>:10235                                   ; preds = %10228, %10224
  %10236 = phi float [ %10234, %10228 ], [ %10185, %10224 ]
  %10237 = phi float [ %10230, %10228 ], [ 0.000000e+00, %10224 ]
  %10238 = fcmp fast une float %10189, 1.000000e+00
  br i1 %10238, label %10239, label %10246, !dx.controlflow.hints !164

; <label>:10239                                   ; preds = %10235
  %10240 = call float @dx.op.unary.f32(i32 23, float %10189)  ; Log(value)
  %10241 = fmul fast float %10240, 0x3FE62E4300000000
  %10242 = fmul fast float %10186, %10241
  %10243 = fsub fast float -0.000000e+00, %10242
  %10244 = fsub fast float 1.000000e+00, %10189
  %10245 = fdiv fast float %10243, %10244
  br label %10246

; <label>:10246                                   ; preds = %10239, %10235
  %10247 = phi float [ %10245, %10239 ], [ %10186, %10235 ]
  %10248 = phi float [ %10241, %10239 ], [ 0.000000e+00, %10235 ]
  %10249 = fmul fast float %10212, %10196
  %10250 = fmul fast float %10213, %10196
  %10251 = fmul fast float %10214, %10196
  %10252 = fmul fast float %10215, %10196
  %10253 = fmul fast float %10225, %10194
  %10254 = fmul fast float %10236, %10194
  %10255 = fmul fast float %10247, %10194
  %10256 = fmul fast float %10226, %10194
  %10257 = fmul fast float %10237, %10194
  %10258 = fmul fast float %10248, %10194
  %10259 = fadd fast float %10253, %10249
  %10260 = fadd fast float %10254, %10250
  %10261 = fadd fast float %10255, %10251
  %10262 = fadd fast float %10256, %10252
  %10263 = fadd fast float %10257, %10252
  %10264 = fadd fast float %10258, %10252
  %10265 = fcmp fast une float %10262, 0.000000e+00
  br i1 %10265, label %10266, label %10273, !dx.controlflow.hints !165

; <label>:10266                                   ; preds = %10246
  %10267 = fmul fast float %10262, 0x3FF7154760000000
  %10268 = call float @dx.op.unary.f32(i32 21, float %10267)  ; Exp(value)
  %10269 = fsub fast float 1.000000e+00, %10268
  %10270 = fmul fast float %10259, %10269
  %10271 = fsub fast float -0.000000e+00, %10270
  %10272 = fdiv fast float %10271, %10262
  br label %10273

; <label>:10273                                   ; preds = %10266, %10246
  %10274 = phi float [ %10268, %10266 ], [ 1.000000e+00, %10246 ]
  %10275 = phi float [ %10272, %10266 ], [ %10259, %10246 ]
  %10276 = fcmp fast une float %10263, 0.000000e+00
  br i1 %10276, label %10277, label %10284, !dx.controlflow.hints !165

; <label>:10277                                   ; preds = %10273
  %10278 = fmul fast float %10263, 0x3FF7154760000000
  %10279 = call float @dx.op.unary.f32(i32 21, float %10278)  ; Exp(value)
  %10280 = fsub fast float 1.000000e+00, %10279
  %10281 = fmul fast float %10260, %10280
  %10282 = fsub fast float -0.000000e+00, %10281
  %10283 = fdiv fast float %10282, %10263
  br label %10284

; <label>:10284                                   ; preds = %10277, %10273
  %10285 = phi float [ %10279, %10277 ], [ 1.000000e+00, %10273 ]
  %10286 = phi float [ %10283, %10277 ], [ %10260, %10273 ]
  %10287 = fcmp fast une float %10264, 0.000000e+00
  br i1 %10287, label %10288, label %10295, !dx.controlflow.hints !165

; <label>:10288                                   ; preds = %10284
  %10289 = fmul fast float %10264, 0x3FF7154760000000
  %10290 = call float @dx.op.unary.f32(i32 21, float %10289)  ; Exp(value)
  %10291 = fsub fast float 1.000000e+00, %10290
  %10292 = fmul fast float %10261, %10291
  %10293 = fsub fast float -0.000000e+00, %10292
  %10294 = fdiv fast float %10293, %10264
  br label %10295

; <label>:10295                                   ; preds = %10288, %10284
  %10296 = phi float [ %10290, %10288 ], [ 1.000000e+00, %10284 ]
  %10297 = phi float [ %10294, %10288 ], [ %10261, %10284 ]
  %10298 = fcmp fast ogt float %10194, %10196
  br i1 %10298, label %10299, label %10319

; <label>:10299                                   ; preds = %10295
  %10300 = fsub fast float 1.000000e+00, %10196
  %10301 = fmul fast float %10212, %10300
  %10302 = fmul fast float %10213, %10300
  %10303 = fmul fast float %10214, %10300
  %10304 = fmul fast float %10215, %10300
  %10305 = fcmp fast une float %10304, 0.000000e+00
  br i1 %10305, label %10306, label %10357, !dx.controlflow.hints !166

; <label>:10306                                   ; preds = %10299
  %10307 = fmul fast float %10304, 0x3FF7154760000000
  %10308 = call float @dx.op.unary.f32(i32 21, float %10307)  ; Exp(value)
  %10309 = fsub fast float 1.000000e+00, %10308
  %10310 = fmul fast float %10301, %10309
  %10311 = fsub fast float -0.000000e+00, %10310
  %10312 = fmul fast float %10302, %10309
  %10313 = fsub fast float -0.000000e+00, %10312
  %10314 = fmul fast float %10303, %10309
  %10315 = fsub fast float -0.000000e+00, %10314
  %10316 = fdiv fast float %10311, %10304
  %10317 = fdiv fast float %10313, %10304
  %10318 = fdiv fast float %10315, %10304
  br label %10357

; <label>:10319                                   ; preds = %10295
  %10320 = fsub fast float 1.000000e+00, %10194
  %10321 = fmul fast float %10225, %10320
  %10322 = fmul fast float %10236, %10320
  %10323 = fmul fast float %10247, %10320
  %10324 = fmul fast float %10226, %10320
  %10325 = fmul fast float %10237, %10320
  %10326 = fmul fast float %10248, %10320
  %10327 = fcmp fast une float %10324, 0.000000e+00
  br i1 %10327, label %10328, label %10335, !dx.controlflow.hints !165

; <label>:10328                                   ; preds = %10319
  %10329 = fmul fast float %10324, 0x3FF7154760000000
  %10330 = call float @dx.op.unary.f32(i32 21, float %10329)  ; Exp(value)
  %10331 = fsub fast float 1.000000e+00, %10330
  %10332 = fmul fast float %10321, %10331
  %10333 = fsub fast float -0.000000e+00, %10332
  %10334 = fdiv fast float %10333, %10324
  br label %10335

; <label>:10335                                   ; preds = %10328, %10319
  %10336 = phi float [ %10334, %10328 ], [ %10321, %10319 ]
  %10337 = phi float [ %10330, %10328 ], [ 1.000000e+00, %10319 ]
  %10338 = fcmp fast une float %10325, 0.000000e+00
  br i1 %10338, label %10339, label %10346, !dx.controlflow.hints !165

; <label>:10339                                   ; preds = %10335
  %10340 = fmul fast float %10325, 0x3FF7154760000000
  %10341 = call float @dx.op.unary.f32(i32 21, float %10340)  ; Exp(value)
  %10342 = fsub fast float 1.000000e+00, %10341
  %10343 = fmul fast float %10322, %10342
  %10344 = fsub fast float -0.000000e+00, %10343
  %10345 = fdiv fast float %10344, %10325
  br label %10346

; <label>:10346                                   ; preds = %10339, %10335
  %10347 = phi float [ %10345, %10339 ], [ %10322, %10335 ]
  %10348 = phi float [ %10341, %10339 ], [ 1.000000e+00, %10335 ]
  %10349 = fcmp fast une float %10326, 0.000000e+00
  br i1 %10349, label %10350, label %10357, !dx.controlflow.hints !165

; <label>:10350                                   ; preds = %10346
  %10351 = fmul fast float %10326, 0x3FF7154760000000
  %10352 = call float @dx.op.unary.f32(i32 21, float %10351)  ; Exp(value)
  %10353 = fsub fast float 1.000000e+00, %10352
  %10354 = fmul fast float %10323, %10353
  %10355 = fsub fast float -0.000000e+00, %10354
  %10356 = fdiv fast float %10355, %10326
  br label %10357

; <label>:10357                                   ; preds = %10350, %10346, %10306, %10299
  %10358 = phi float [ %10356, %10350 ], [ %10318, %10306 ], [ %10303, %10299 ], [ %10323, %10346 ]
  %10359 = phi float [ %10347, %10350 ], [ %10317, %10306 ], [ %10302, %10299 ], [ %10347, %10346 ]
  %10360 = phi float [ %10336, %10350 ], [ %10316, %10306 ], [ %10301, %10299 ], [ %10336, %10346 ]
  %10361 = phi float [ %10352, %10350 ], [ %10308, %10306 ], [ 1.000000e+00, %10299 ], [ 1.000000e+00, %10346 ]
  %10362 = phi float [ %10348, %10350 ], [ %10308, %10306 ], [ 1.000000e+00, %10299 ], [ %10348, %10346 ]
  %10363 = phi float [ %10337, %10350 ], [ %10308, %10306 ], [ 1.000000e+00, %10299 ], [ %10337, %10346 ]
  %10364 = fmul fast float %10363, %10275
  %10365 = fmul fast float %10362, %10286
  %10366 = fmul fast float %10361, %10297
  %10367 = fadd fast float %10364, %10360
  %10368 = fadd fast float %10365, %10359
  %10369 = fadd fast float %10366, %10358
  %10370 = fmul fast float %10363, %10274
  %10371 = fmul fast float %10362, %10285
  %10372 = fmul fast float %10361, %10296
  br label %10373

; <label>:10373                                   ; preds = %10357, %10168
  %10374 = phi float [ %10372, %10357 ], [ %10174, %10168 ]
  %10375 = phi float [ %10371, %10357 ], [ %10173, %10168 ]
  %10376 = phi float [ %10370, %10357 ], [ %10172, %10168 ]
  %10377 = phi float [ %10369, %10357 ], [ %10171, %10168 ]
  %10378 = phi float [ %10368, %10357 ], [ %10170, %10168 ]
  %10379 = phi float [ %10367, %10357 ], [ %10169, %10168 ]
  %10380 = fmul fast float %10379, %9325
  %10381 = fmul fast float %10378, %9325
  %10382 = fmul fast float %10377, %9325
  %10383 = fmul fast float %10376, %9616
  %10384 = call float @dx.op.dot3.f32(i32 55, float %10376, float %10375, float %10374, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10385 = call float @dx.op.dot3.f32(i32 55, float %10380, float %10381, float %10382, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10386 = select i1 %225, float %10384, float %10376
  %10387 = select i1 %225, float %10384, float %10375
  %10388 = select i1 %225, float 1.000000e+00, float %10374
  %10389 = select i1 %225, float %10385, float %10380
  %10390 = select i1 %225, float 0.000000e+00, float %10381
  %10391 = select i1 %225, float 0.000000e+00, float %10382
  %10392 = fmul fast float %10386, %9610
  %10393 = fmul fast float %10387, %9611
  %10394 = fmul fast float %10388, %9612
  %10395 = fadd fast float %10392, %10389
  %10396 = fadd fast float %10393, %10390
  %10397 = fadd fast float %10391, %10394
  %10398 = fmul fast float %10386, %9613
  %10399 = fmul fast float %10387, %9614
  %10400 = fmul fast float %10388, %9615
  %10401 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %10402 = extractvalue %dx.types.CBufRet.i32 %10401, 0
  %10403 = icmp eq i32 %10402, 0
  br i1 %10403, label %10771, label %10404, !dx.controlflow.hints !167

; <label>:10404                                   ; preds = %10373
  %10405 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %10406 = extractvalue %dx.types.CBufRet.f32 %10405, 2
  %10407 = extractvalue %dx.types.CBufRet.f32 %10405, 3
  %10408 = fmul fast float %10406, %109
  %10409 = fmul fast float %10407, %110
  %10410 = fmul fast float %10408, 2.000000e+00
  %10411 = fmul fast float %10409, 2.000000e+00
  %10412 = fsub fast float 1.000000e+00, %10410
  %10413 = fsub fast float 1.000000e+00, %10411
  %10414 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %10415 = extractvalue %dx.types.CBufRet.f32 %10414, 0
  %10416 = extractvalue %dx.types.CBufRet.f32 %10414, 1
  %10417 = extractvalue %dx.types.CBufRet.f32 %10414, 2
  %10418 = fmul fast float %10412, %10415
  %10419 = fmul fast float %10412, %10416
  %10420 = fmul fast float %10412, %10417
  %10421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %10422 = extractvalue %dx.types.CBufRet.f32 %10421, 0
  %10423 = extractvalue %dx.types.CBufRet.f32 %10421, 1
  %10424 = extractvalue %dx.types.CBufRet.f32 %10421, 2
  %10425 = fmul fast float %10413, %10422
  %10426 = fmul fast float %10413, %10423
  %10427 = fmul fast float %10413, %10424
  %10428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %10429 = extractvalue %dx.types.CBufRet.f32 %10428, 0
  %10430 = extractvalue %dx.types.CBufRet.f32 %10428, 1
  %10431 = extractvalue %dx.types.CBufRet.f32 %10428, 2
  %10432 = fadd fast float %10425, %10429
  %10433 = fadd fast float %10432, %10418
  %10434 = fadd fast float %10426, %10430
  %10435 = fadd fast float %10434, %10419
  %10436 = fadd fast float %10427, %10431
  %10437 = fadd fast float %10436, %10420
  %10438 = fmul fast float %10433, %9609
  %10439 = fmul fast float %10435, %9609
  %10440 = fmul fast float %10437, %9609
  %10441 = fmul fast float %10438, %10438
  %10442 = fmul fast float %10439, %10439
  %10443 = fadd fast float %10441, %10442
  %10444 = fmul fast float %10440, %10440
  %10445 = fadd fast float %10443, %10444
  %10446 = call float @dx.op.unary.f32(i32 24, float %10445)  ; Sqrt(value)
  %10447 = extractvalue %dx.types.CBufRet.f32 %9336, 0
  %10448 = fsub fast float %10446, %10447
  %10449 = extractvalue %dx.types.CBufRet.f32 %9336, 2
  %10450 = fmul fast float %10448, %10449
  %10451 = call float @dx.op.unary.f32(i32 7, float %10450)  ; Saturate(value)
  %10452 = fadd fast float %10451, -5.000000e-01
  %10453 = fmul fast float %10452, 2.000000e+00
  %10454 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %10455 = extractvalue %dx.types.CBufRet.f32 %10454, 2
  %10456 = call float @dx.op.binary.f32(i32 36, float %10455, float %10453)  ; FMin(a,b)
  %10457 = fsub fast float -0.000000e+00, %10455
  %10458 = fcmp fast ogt float %10456, %10457
  br i1 %10458, label %10459, label %10771, !dx.controlflow.hints !168

; <label>:10459                                   ; preds = %10404
  %10460 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %10461 = extractvalue %dx.types.CBufRet.f32 %10460, 3
  %10462 = fcmp fast ogt float %10461, 0.000000e+00
  br i1 %10462, label %10463, label %10538, !dx.controlflow.hints !169

; <label>:10463                                   ; preds = %10459
  %10464 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %28, i32 0)  ; GetDimensions(handle,mipLevel)
  %10465 = extractvalue %dx.types.Dimensions %10464, 0
  %10466 = sitofp i32 %10465 to float
  %10467 = extractvalue %dx.types.Dimensions %10464, 1
  %10468 = sitofp i32 %10467 to float
  %10469 = fmul fast float %10408, %10466
  %10470 = fmul fast float %10409, %10468
  %10471 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %10472 = extractvalue %dx.types.CBufRet.f32 %10471, 1
  %10473 = fsub fast float -0.000000e+00, %10472
  %10474 = fptoui float %10473 to i32
  %10475 = fptoui float %10469 to i32
  %10476 = fptoui float %10470 to i32
  %10477 = and i32 %10474, 31
  %10478 = lshr i32 %10475, %10477
  %10479 = lshr i32 %10476, %10477
  %10480 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %28, i32 %10474, i32 %10478, i32 %10479, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %10481 = extractvalue %dx.types.ResRet.f32 %10480, 0
  %10482 = fcmp fast olt float %10481, -1.000000e+00
  %10483 = fcmp fast ogt float %10481, -1.000000e+00
  %10484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %10485 = extractvalue %dx.types.CBufRet.f32 %10484, 1
  %10486 = select i1 %10483, float %10485, float 1.000000e+00
  %10487 = fadd fast float %10481, 1.000000e+00
  %10488 = fmul fast float %10486, %10487
  %10489 = call float @dx.op.unary.f32(i32 6, float %10488)  ; FAbs(value)
  %10490 = extractvalue %dx.types.CBufRet.f32 %10484, 3
  %10491 = fcmp fast oge float %10489, %10490
  %10492 = select i1 %10491, float 0x4197782600000000, float %10489
  %10493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %10494 = extractvalue %dx.types.CBufRet.f32 %10493, 0
  %10495 = extractvalue %dx.types.CBufRet.f32 %10493, 1
  %10496 = extractvalue %dx.types.CBufRet.f32 %10493, 2
  %10497 = select i1 %10482, float %10494, float %10415
  %10498 = select i1 %10482, float %10495, float %10416
  %10499 = select i1 %10482, float %10496, float %10417
  %10500 = fmul fast float %10497, %10412
  %10501 = fmul fast float %10498, %10412
  %10502 = fmul fast float %10499, %10412
  %10503 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %10504 = extractvalue %dx.types.CBufRet.f32 %10503, 0
  %10505 = extractvalue %dx.types.CBufRet.f32 %10503, 1
  %10506 = extractvalue %dx.types.CBufRet.f32 %10503, 2
  %10507 = select i1 %10482, float %10504, float %10422
  %10508 = select i1 %10482, float %10505, float %10423
  %10509 = select i1 %10482, float %10506, float %10424
  %10510 = fmul fast float %10507, %10413
  %10511 = fmul fast float %10508, %10413
  %10512 = fmul fast float %10509, %10413
  %10513 = fadd fast float %10510, %10500
  %10514 = fadd fast float %10511, %10501
  %10515 = fadd fast float %10512, %10502
  %10516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %10517 = extractvalue %dx.types.CBufRet.f32 %10516, 0
  %10518 = extractvalue %dx.types.CBufRet.f32 %10516, 1
  %10519 = extractvalue %dx.types.CBufRet.f32 %10516, 2
  %10520 = select i1 %10482, float %10517, float %10429
  %10521 = select i1 %10482, float %10518, float %10430
  %10522 = select i1 %10482, float %10519, float %10431
  %10523 = fadd fast float %10513, %10520
  %10524 = fadd fast float %10514, %10521
  %10525 = fadd fast float %10515, %10522
  %10526 = fmul fast float %10523, %10492
  %10527 = fmul fast float %10524, %10492
  %10528 = fmul fast float %10525, %10492
  %10529 = fmul fast float %10526, %10526
  %10530 = fmul fast float %10527, %10527
  %10531 = fadd fast float %10529, %10530
  %10532 = fmul fast float %10528, %10528
  %10533 = fadd fast float %10531, %10532
  %10534 = call float @dx.op.unary.f32(i32 24, float %10533)  ; Sqrt(value)
  %10535 = fsub fast float %10534, %10447
  %10536 = fmul fast float %10535, %10449
  %10537 = call float @dx.op.unary.f32(i32 7, float %10536)  ; Saturate(value)
  br label %10538

; <label>:10538                                   ; preds = %10463, %10459
  %10539 = phi float [ %10537, %10463 ], [ 1.000000e+00, %10459 ]
  %10540 = fmul fast float %10456, 5.000000e-01
  %10541 = fadd fast float %10540, 5.000000e-01
  %10542 = call float @dx.op.unary.f32(i32 22, float %10541)  ; Frc(value)
  %10543 = call float @dx.op.unary.f32(i32 27, float %10542)  ; Round_ni(value)
  %10544 = call float @dx.op.unary.f32(i32 22, float %10542)  ; Frc(value)
  %10545 = fmul fast float %10544, 2.000000e+00
  %10546 = fadd fast float %10545, -1.000000e+00
  %10547 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %46, float %10408, float %10409, float %10543, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10548 = extractvalue %dx.types.ResRet.f32 %10547, 0
  %10549 = extractvalue %dx.types.ResRet.f32 %10547, 1
  %10550 = extractvalue %dx.types.ResRet.f32 %10547, 2
  %10551 = extractvalue %dx.types.ResRet.f32 %10547, 3
  %10552 = fadd fast float %10548, -5.000000e-01
  %10553 = fadd fast float %10550, -5.000000e-01
  %10554 = fmul fast float %10552, 0xBFD5555560000000
  %10555 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %10553, float %10554)  ; FMad(a,b,c)
  %10556 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %10549, float 0.000000e+00)  ; FMad(a,b,c)
  %10557 = fadd fast float %10556, %10551
  %10558 = fmul fast float %10552, -7.500000e-01
  %10559 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %10553, float %10558)  ; FMad(a,b,c)
  %10560 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %10549, float 0.000000e+00)  ; FMad(a,b,c)
  %10561 = fadd fast float %10560, %10551
  %10562 = call float @dx.op.binary.f32(i32 35, float %10555, float -1.000000e+00)  ; FMax(a,b)
  %10563 = call float @dx.op.binary.f32(i32 35, float %10557, float -1.000000e+00)  ; FMax(a,b)
  %10564 = call float @dx.op.binary.f32(i32 35, float %10559, float -1.000000e+00)  ; FMax(a,b)
  %10565 = call float @dx.op.binary.f32(i32 35, float %10561, float -1.000000e+00)  ; FMax(a,b)
  %10566 = call float @dx.op.binary.f32(i32 36, float %10562, float 1.000000e+00)  ; FMin(a,b)
  %10567 = call float @dx.op.binary.f32(i32 36, float %10563, float 1.000000e+00)  ; FMin(a,b)
  %10568 = call float @dx.op.binary.f32(i32 36, float %10564, float 1.000000e+00)  ; FMin(a,b)
  %10569 = call float @dx.op.binary.f32(i32 36, float %10565, float 1.000000e+00)  ; FMin(a,b)
  %10570 = fcmp fast olt float %10566, 0x3FEFFF8020000000
  br i1 %10570, label %10571, label %10686, !dx.controlflow.hints !170

; <label>:10571                                   ; preds = %10538
  %10572 = extractvalue %dx.types.CBufRet.f32 %10454, 3
  %10573 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %10574 = extractvalue %dx.types.CBufRet.f32 %10573, 0
  %10575 = extractvalue %dx.types.CBufRet.f32 %10573, 1
  %10576 = extractvalue %dx.types.CBufRet.f32 %10573, 2
  %10577 = extractvalue %dx.types.CBufRet.f32 %10573, 3
  %10578 = fsub fast float %10574, %10566
  %10579 = fsub fast float %10575, %10567
  %10580 = fsub fast float %10576, %10568
  %10581 = fsub fast float %10577, %10569
  %10582 = fmul fast float %10578, %10572
  %10583 = fmul fast float %10579, %10572
  %10584 = fmul fast float %10580, %10572
  %10585 = fmul fast float %10581, %10572
  %10586 = fadd fast float %10582, %10566
  %10587 = fadd fast float %10583, %10567
  %10588 = fsub fast float -0.000000e+00, %10587
  %10589 = fadd fast float %10584, %10568
  %10590 = fadd fast float %10585, %10569
  %10591 = fmul fast float %10586, %10586
  %10592 = fsub fast float %10587, %10591
  %10593 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %10592)  ; FMax(a,b)
  %10594 = fdiv fast float 1.000000e+00, %10593
  %10595 = fmul fast float %10587, %10586
  %10596 = fsub fast float %10589, %10595
  %10597 = fsub fast float %10546, %10586
  %10598 = fmul fast float %10546, %10546
  %10599 = fsub fast float %10598, %10587
  %10600 = fmul fast float %10597, %10594
  %10601 = fmul fast float %10600, %10596
  %10602 = fsub fast float %10599, %10601
  %10603 = fmul fast float %10587, %10587
  %10604 = fsub fast float %10590, %10603
  %10605 = fmul fast float %10596, %10596
  %10606 = fmul fast float %10605, %10594
  %10607 = fsub fast float %10604, %10606
  %10608 = fdiv fast float %10602, %10607
  %10609 = fmul fast float %10596, %10608
  %10610 = fsub fast float %10597, %10609
  %10611 = fmul fast float %10610, %10594
  %10612 = fmul fast float %10611, %10586
  %10613 = fsub fast float 1.000000e+00, %10612
  %10614 = fmul fast float %10587, %10608
  %10615 = fsub fast float %10613, %10614
  %10616 = fmul fast float %10611, %10611
  %10617 = fmul fast float %10608, 4.000000e+00
  %10618 = fmul fast float %10617, %10615
  %10619 = fsub fast float %10616, %10618
  %10620 = call float @dx.op.unary.f32(i32 24, float %10619)  ; Sqrt(value)
  %10621 = fcmp fast oge float %10611, 0.000000e+00
  %10622 = fsub fast float -0.000000e+00, %10620
  %10623 = select i1 %10621, float %10622, float %10620
  %10624 = fsub fast float %10623, %10611
  %10625 = fdiv fast float %10624, %10608
  %10626 = fdiv fast float %10615, %10624
  %10627 = fmul fast float %10625, 5.000000e-01
  %10628 = fmul fast float %10626, 2.000000e+00
  %10629 = select i1 %10621, float %10627, float %10628
  %10630 = select i1 %10621, float %10628, float %10627
  %10631 = call float @dx.op.binary.f32(i32 35, float %10629, float %10630)  ; FMax(a,b)
  %10632 = call float @dx.op.binary.f32(i32 36, float %10629, float %10630)  ; FMin(a,b)
  %10633 = fcmp fast ogt float %10546, %10632
  br i1 %10633, label %10634, label %10644

; <label>:10634                                   ; preds = %10571
  %10635 = fsub fast float %10546, %10632
  %10636 = fsub fast float %10631, %10632
  %10637 = fmul fast float %10635, %10636
  %10638 = fmul fast float %10631, %10546
  %10639 = fadd fast float %10631, %10546
  %10640 = fmul fast float %10639, %10586
  %10641 = fadd fast float %10638, %10587
  %10642 = fsub fast float %10641, %10640
  %10643 = fdiv fast float %10642, %10637
  br label %10644

; <label>:10644                                   ; preds = %10634, %10571
  %10645 = phi float [ %10643, %10634 ], [ 0.000000e+00, %10571 ]
  %10646 = fcmp fast ogt float %10546, %10631
  %10647 = fsub fast float %10546, %10631
  br i1 %10646, label %10648, label %10658

; <label>:10648                                   ; preds = %10644
  %10649 = fsub fast float %10631, %10632
  %10650 = fmul fast float %10649, %10647
  %10651 = fmul fast float %10632, %10546
  %10652 = fadd fast float %10632, %10546
  %10653 = fmul fast float %10652, %10586
  %10654 = fsub fast float %10588, %10651
  %10655 = fadd fast float %10654, %10653
  %10656 = fdiv fast float %10655, %10650
  %10657 = fadd fast float %10656, %10645
  br label %10658

; <label>:10658                                   ; preds = %10648, %10644
  %10659 = phi float [ %10657, %10648 ], [ %10645, %10644 ]
  %10660 = fsub fast float %10546, %10632
  %10661 = fmul fast float %10660, %10647
  %10662 = fmul fast float %10632, %10631
  %10663 = fadd fast float %10632, %10631
  %10664 = fmul fast float %10663, %10586
  %10665 = fadd fast float %10662, %10587
  %10666 = fsub fast float %10665, %10664
  %10667 = fdiv fast float %10666, %10661
  %10668 = call float @dx.op.unary.f32(i32 7, float %10659)  ; Saturate(value)
  %10669 = fcmp fast oeq float %9337, 0.000000e+00
  %10670 = extractvalue %dx.types.CBufRet.f32 %10454, 0
  %10671 = fcmp fast oeq float %10670, 0.000000e+00
  %10672 = or i1 %10669, %10671
  %10673 = fmul fast float %10670, 2.000000e+00
  %10674 = fadd fast float %10455, %10456
  %10675 = fdiv fast float %10674, %10673
  %10676 = call float @dx.op.unary.f32(i32 7, float %10675)  ; Saturate(value)
  %10677 = fmul fast float %10676, 2.000000e+00
  %10678 = fsub fast float 3.000000e+00, %10677
  %10679 = fmul fast float %10676, %10676
  %10680 = fmul fast float %10679, %10678
  %10681 = select i1 %10672, float 1.000000e+00, float %10680
  %10682 = fmul fast float %10667, %9337
  %10683 = fadd fast float %10668, %10682
  %10684 = call float @dx.op.unary.f32(i32 7, float %10683)  ; Saturate(value)
  %10685 = fmul fast float %10681, %10684
  br label %10686

; <label>:10686                                   ; preds = %10658, %10538
  %10687 = phi float [ %10685, %10658 ], [ 0.000000e+00, %10538 ]
  %10688 = fsub fast float 1.000000e+00, %10687
  %10689 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %46, float %10408, float %10409, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10690 = extractvalue %dx.types.ResRet.f32 %10689, 0
  %10691 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %10692 = extractvalue %dx.types.CBufRet.i32 %10691, 2
  %10693 = icmp eq i32 %10692, 0
  br i1 %10693, label %10699, label %10694

; <label>:10694                                   ; preds = %10686
  %10695 = call float @dx.op.unary.f32(i32 7, float %10687)  ; Saturate(value)
  %10696 = fadd fast float %10690, -1.000000e+00
  %10697 = fmul fast float %10695, %10696
  %10698 = fadd fast float %10697, 1.000000e+00
  br label %10699

; <label>:10699                                   ; preds = %10694, %10686
  %10700 = phi float [ %10698, %10694 ], [ %10688, %10686 ]
  br i1 %10462, label %10701, label %10719

; <label>:10701                                   ; preds = %10699
  %10702 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %10703 = extractvalue %dx.types.CBufRet.f32 %10702, 1
  %10704 = fsub fast float %10539, %10703
  %10705 = call float @dx.op.unary.f32(i32 7, float %10704)  ; Saturate(value)
  %10706 = fsub fast float %10539, %10461
  %10707 = call float @dx.op.unary.f32(i32 7, float %10706)  ; Saturate(value)
  %10708 = fsub fast float %10705, %10707
  %10709 = fsub fast float %10541, %10707
  %10710 = fdiv fast float %10709, %10708
  %10711 = call float @dx.op.unary.f32(i32 7, float %10710)  ; Saturate(value)
  %10712 = fmul fast float %10711, 2.000000e+00
  %10713 = fsub fast float 3.000000e+00, %10712
  %10714 = fsub fast float %10690, %10700
  %10715 = fmul fast float %10711, %10711
  %10716 = fmul fast float %10715, %10714
  %10717 = fmul fast float %10716, %10713
  %10718 = fadd fast float %10717, %10700
  br label %10719

; <label>:10719                                   ; preds = %10701, %10699
  %10720 = phi float [ %10718, %10701 ], [ %10700, %10699 ]
  %10721 = call float @dx.op.binary.f32(i32 35, float %10690, float %10720)  ; FMax(a,b)
  %10722 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %10723 = extractvalue %dx.types.CBufRet.i32 %10722, 2
  %10724 = and i32 %10723, 1
  %10725 = icmp eq i32 %10724, 0
  %10726 = fcmp fast une float %10721, 1.000000e+00
  %10727 = and i1 %10726, %10725
  br i1 %10727, label %10728, label %10747

; <label>:10728                                   ; preds = %10719
  %10729 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %46, float %10408, float %10409, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10730 = extractvalue %dx.types.ResRet.f32 %10729, 0
  %10731 = extractvalue %dx.types.ResRet.f32 %10729, 1
  %10732 = extractvalue %dx.types.ResRet.f32 %10729, 2
  %10733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10734 = extractvalue %dx.types.CBufRet.f32 %10733, 1
  %10735 = fmul fast float %10734, %10730
  %10736 = fmul fast float %10734, %10731
  %10737 = fmul fast float %10734, %10732
  %10738 = fcmp fast ogt float %10690, 0x3FEFFF2E40000000
  %10739 = fsub fast float 1.000000e+00, %10721
  %10740 = fsub fast float 1.000000e+00, %10690
  %10741 = fdiv fast float %10739, %10740
  %10742 = call float @dx.op.unary.f32(i32 7, float %10741)  ; Saturate(value)
  %10743 = select i1 %10738, float 0.000000e+00, float %10742
  %10744 = fmul fast float %10735, %10743
  %10745 = fmul fast float %10736, %10743
  %10746 = fmul fast float %10737, %10743
  br label %10747

; <label>:10747                                   ; preds = %10728, %10719
  %10748 = phi float [ 0.000000e+00, %10719 ], [ %10744, %10728 ]
  %10749 = phi float [ 0.000000e+00, %10719 ], [ %10745, %10728 ]
  %10750 = phi float [ 0.000000e+00, %10719 ], [ %10746, %10728 ]
  %10751 = fmul fast float %10748, %9325
  %10752 = fmul fast float %10749, %9325
  %10753 = fmul fast float %10750, %9325
  %10754 = fmul fast float %10721, %10383
  %10755 = call float @dx.op.dot3.f32(i32 55, float %10721, float %10721, float %10721, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10756 = call float @dx.op.dot3.f32(i32 55, float %10751, float %10752, float %10753, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10757 = select i1 %225, float %10755, float %10721
  %10758 = select i1 %225, float 1.000000e+00, float %10721
  %10759 = select i1 %225, float %10756, float %10751
  %10760 = select i1 %225, float 0.000000e+00, float %10752
  %10761 = select i1 %225, float 0.000000e+00, float %10753
  %10762 = fmul fast float %10757, %10395
  %10763 = fmul fast float %10757, %10396
  %10764 = fmul fast float %10758, %10397
  %10765 = fadd fast float %10762, %10759
  %10766 = fadd fast float %10763, %10760
  %10767 = fadd fast float %10761, %10764
  %10768 = fmul fast float %10757, %10398
  %10769 = fmul fast float %10757, %10399
  %10770 = fmul fast float %10758, %10400
  br label %10771

; <label>:10771                                   ; preds = %10747, %10404, %10373, %9605
  %10772 = phi float [ %9610, %9605 ], [ %10395, %10373 ], [ %10765, %10747 ], [ %10395, %10404 ]
  %10773 = phi float [ %9611, %9605 ], [ %10396, %10373 ], [ %10766, %10747 ], [ %10396, %10404 ]
  %10774 = phi float [ %9612, %9605 ], [ %10397, %10373 ], [ %10767, %10747 ], [ %10397, %10404 ]
  %10775 = phi float [ %9613, %9605 ], [ %10398, %10373 ], [ %10768, %10747 ], [ %10398, %10404 ]
  %10776 = phi float [ %9614, %9605 ], [ %10399, %10373 ], [ %10769, %10747 ], [ %10399, %10404 ]
  %10777 = phi float [ %9615, %9605 ], [ %10400, %10373 ], [ %10770, %10747 ], [ %10400, %10404 ]
  %10778 = phi float [ %9616, %9605 ], [ %10383, %10373 ], [ %10754, %10747 ], [ %10383, %10404 ]
  %10779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %10780 = extractvalue %dx.types.CBufRet.f32 %10779, 2
  %10781 = extractvalue %dx.types.CBufRet.f32 %10779, 3
  %10782 = fmul fast float %10780, %109
  %10783 = fmul fast float %10781, %110
  %10784 = call float @dx.op.unary.f32(i32 7, float %10782)  ; Saturate(value)
  %10785 = call float @dx.op.unary.f32(i32 7, float %10783)  ; Saturate(value)
  %10786 = select i1 %9347, i32 2, i32 0
  %10787 = or i32 %10786, 1
  %10788 = uitofp i32 %10787 to float
  %10789 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %46, float %10784, float %10785, float %10788, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10790 = extractvalue %dx.types.ResRet.f32 %10789, 0
  %10791 = extractvalue %dx.types.ResRet.f32 %10789, 1
  %10792 = extractvalue %dx.types.ResRet.f32 %10789, 2
  %10793 = extractvalue %dx.types.ResRet.f32 %10789, 3
  %10794 = add nuw nsw i32 %10786, 2
  %10795 = uitofp i32 %10794 to float
  %10796 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %46, float %10784, float %10785, float %10795, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10797 = extractvalue %dx.types.ResRet.f32 %10796, 0
  %10798 = extractvalue %dx.types.ResRet.f32 %10796, 1
  %10799 = extractvalue %dx.types.ResRet.f32 %10796, 2
  %10800 = extractvalue %dx.types.ResRet.f32 %10796, 3
  %10801 = call float @dx.op.binary.f32(i32 35, float %10791, float %10792)  ; FMax(a,b)
  %10802 = call float @dx.op.binary.f32(i32 35, float %10790, float %10801)  ; FMax(a,b)
  %10803 = call float @dx.op.binary.f32(i32 35, float %10802, float %10793)  ; FMax(a,b)
  %10804 = call float @dx.op.binary.f32(i32 36, float %10798, float %10799)  ; FMin(a,b)
  %10805 = call float @dx.op.binary.f32(i32 36, float %10797, float %10804)  ; FMin(a,b)
  %10806 = call float @dx.op.binary.f32(i32 36, float %10805, float %10800)  ; FMin(a,b)
  %10807 = fmul fast float %10803, 2.550000e+02
  %10808 = fadd fast float %10807, 0x3F70101020000000
  %10809 = fptoui float %10808 to i32
  %10810 = fmul fast float %10806, 2.550000e+02
  %10811 = fadd fast float %10810, 0x3F70101020000000
  %10812 = fptoui float %10811 to i32
  %10813 = icmp ult i32 %10809, %10812
  br i1 %10813, label %10814, label %10983

; <label>:10814                                   ; preds = %10771
  %10815 = fcmp fast ogt float %96, 9.843750e-01
  %10816 = fadd fast float %9609, -4.000000e+00
  %10817 = select i1 %10815, float -4.000000e+00, float %10816
  %10818 = call float @dx.op.binary.f32(i32 35, float %10817, float 0.000000e+00)  ; FMax(a,b)
  %10819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %10820 = extractvalue %dx.types.CBufRet.f32 %10819, 0
  %10821 = fadd fast float %10820, %10818
  %10822 = extractvalue %dx.types.CBufRet.f32 %10819, 2
  %10823 = fmul fast float %10821, %10822
  %10824 = call float @dx.op.unary.f32(i32 23, float %10823)  ; Log(value)
  %10825 = extractvalue %dx.types.CBufRet.f32 %10819, 3
  %10826 = fmul fast float %10825, %10824
  %10827 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %10828 = extractvalue %dx.types.CBufRet.f32 %10827, 2
  %10829 = fmul fast float %10826, %10828
  %10830 = call float @dx.op.unary.f32(i32 7, float %10829)  ; Saturate(value)
  %10831 = uitofp i32 %10809 to float
  %10832 = uitofp i32 %10812 to float
  %10833 = fadd fast float %10831, 5.000000e-01
  %10834 = fadd fast float %10832, 5.000000e-01
  %10835 = fmul fast float %10828, %10833
  %10836 = fmul fast float %10828, %10834
  %10837 = fadd fast float %10835, 0x3F0FFB4800000000
  %10838 = fadd fast float %10836, 0xBF0FFB4800000000
  %10839 = call float @dx.op.binary.f32(i32 35, float %10830, float %10837)  ; FMax(a,b)
  %10840 = call float @dx.op.binary.f32(i32 36, float %10839, float %10838)  ; FMin(a,b)
  %10841 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %10842 = extractvalue %dx.types.CBufRet.f32 %10841, 1
  %10843 = extractvalue %dx.types.CBufRet.f32 %10841, 2
  %10844 = extractvalue %dx.types.CBufRet.f32 %10841, 0
  %10845 = select i1 %9347, float %10844, float 0.000000e+00
  %10846 = fmul fast float %10842, %10840
  %10847 = fadd fast float %10845, %10846
  %10848 = fadd fast float %10845, %10843
  %10849 = fsub fast float %10842, %10843
  %10850 = fadd fast float %10849, %10845
  %10851 = call float @dx.op.binary.f32(i32 35, float %10847, float %10848)  ; FMax(a,b)
  %10852 = call float @dx.op.binary.f32(i32 36, float %10851, float %10850)  ; FMin(a,b)
  %10853 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %44, float %10784, float %10785, float %10852, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10854 = extractvalue %dx.types.ResRet.f32 %10853, 0
  %10855 = extractvalue %dx.types.ResRet.f32 %10853, 1
  %10856 = extractvalue %dx.types.ResRet.f32 %10853, 2
  %10857 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %10858 = extractvalue %dx.types.CBufRet.i32 %10857, 0
  %10859 = extractvalue %dx.types.CBufRet.i32 %10857, 1
  %10860 = uitofp i32 %10858 to float
  %10861 = uitofp i32 %10859 to float
  %10862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %10863 = extractvalue %dx.types.CBufRet.f32 %10862, 0
  %10864 = extractvalue %dx.types.CBufRet.f32 %10862, 1
  %10865 = fmul fast float %10860, %10784
  %10866 = fmul fast float %10861, %10785
  %10867 = fadd fast float %10865, -5.000000e-01
  %10868 = fadd fast float %10866, -5.000000e-01
  %10869 = call float @dx.op.unary.f32(i32 22, float %10867)  ; Frc(value)
  %10870 = call float @dx.op.unary.f32(i32 22, float %10868)  ; Frc(value)
  %10871 = fmul fast float %10869, %10869
  %10872 = fmul fast float %10871, %10869
  %10873 = fsub fast float 3.000000e+00, %10869
  %10874 = fmul fast float %10871, %10873
  %10875 = fmul fast float %10869, 3.000000e+00
  %10876 = fmul fast float %10872, 3.000000e+00
  %10877 = fmul fast float %10871, 6.000000e+00
  %10878 = fsub fast float %10876, %10877
  %10879 = fadd fast float %10878, 4.000000e+00
  %10880 = fmul fast float %10879, 0x3FC5555560000000
  %10881 = fmul fast float %10872, -3.000000e+00
  %10882 = fadd fast float %10871, %10869
  %10883 = fmul fast float %10882, 3.000000e+00
  %10884 = fadd fast float %10881, 1.000000e+00
  %10885 = fadd fast float %10884, %10883
  %10886 = fmul fast float %10872, 0x3FC5555560000000
  %10887 = fmul fast float %10870, %10870
  %10888 = fmul fast float %10887, %10870
  %10889 = fsub fast float 3.000000e+00, %10870
  %10890 = fmul fast float %10887, %10889
  %10891 = fmul fast float %10870, 3.000000e+00
  %10892 = fmul fast float %10888, 3.000000e+00
  %10893 = fmul fast float %10887, 6.000000e+00
  %10894 = fsub fast float %10892, %10893
  %10895 = fadd fast float %10894, 4.000000e+00
  %10896 = fmul fast float %10895, 0x3FC5555560000000
  %10897 = fmul fast float %10888, -3.000000e+00
  %10898 = fadd fast float %10887, %10870
  %10899 = fmul fast float %10898, 3.000000e+00
  %10900 = fadd fast float %10897, 1.000000e+00
  %10901 = fadd fast float %10900, %10899
  %10902 = fmul fast float %10888, 0x3FC5555560000000
  %10903 = fadd fast float %10869, 1.000000e+00
  %10904 = fsub fast float 1.000000e+00, %10875
  %10905 = fadd fast float %10904, %10874
  %10906 = fadd fast float %10905, %10879
  %10907 = fmul fast float %10906, 0x3FC5555560000000
  %10908 = fdiv fast float %10880, %10907
  %10909 = fsub fast float %10903, %10908
  %10910 = fsub fast float 1.000000e+00, %10869
  %10911 = fadd fast float %10885, %10872
  %10912 = fmul fast float %10911, 0x3FC5555560000000
  %10913 = fdiv fast float %10886, %10912
  %10914 = fadd fast float %10910, %10913
  %10915 = fadd fast float %10870, 1.000000e+00
  %10916 = fsub fast float 1.000000e+00, %10891
  %10917 = fadd fast float %10916, %10890
  %10918 = fadd fast float %10917, %10895
  %10919 = fmul fast float %10918, 0x3FC5555560000000
  %10920 = fdiv fast float %10896, %10919
  %10921 = fsub fast float %10915, %10920
  %10922 = fsub fast float 1.000000e+00, %10870
  %10923 = fadd fast float %10901, %10888
  %10924 = fmul fast float %10923, 0x3FC5555560000000
  %10925 = fdiv fast float %10902, %10924
  %10926 = fadd fast float %10925, %10922
  %10927 = fmul fast float %10909, %10863
  %10928 = fsub fast float %10784, %10927
  %10929 = fmul fast float %10914, %10863
  %10930 = fadd fast float %10929, %10784
  %10931 = fmul fast float %10926, %10864
  %10932 = fadd fast float %10931, %10785
  %10933 = fmul fast float %10921, %10864
  %10934 = fsub fast float %10785, %10933
  %10935 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %44, float %10928, float %10934, float %10852, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10936 = extractvalue %dx.types.ResRet.f32 %10935, 0
  %10937 = extractvalue %dx.types.ResRet.f32 %10935, 1
  %10938 = extractvalue %dx.types.ResRet.f32 %10935, 2
  %10939 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %44, float %10930, float %10934, float %10852, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10940 = extractvalue %dx.types.ResRet.f32 %10939, 0
  %10941 = extractvalue %dx.types.ResRet.f32 %10939, 1
  %10942 = extractvalue %dx.types.ResRet.f32 %10939, 2
  %10943 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %44, float %10928, float %10932, float %10852, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10944 = extractvalue %dx.types.ResRet.f32 %10943, 0
  %10945 = extractvalue %dx.types.ResRet.f32 %10943, 1
  %10946 = extractvalue %dx.types.ResRet.f32 %10943, 2
  %10947 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %44, float %10930, float %10932, float %10852, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10948 = extractvalue %dx.types.ResRet.f32 %10947, 0
  %10949 = extractvalue %dx.types.ResRet.f32 %10947, 1
  %10950 = extractvalue %dx.types.ResRet.f32 %10947, 2
  %10951 = fsub fast float %10944, %10936
  %10952 = fsub fast float %10945, %10937
  %10953 = fsub fast float %10946, %10938
  %10954 = fmul fast float %10951, %10924
  %10955 = fmul fast float %10952, %10924
  %10956 = fmul fast float %10953, %10924
  %10957 = fadd fast float %10954, %10936
  %10958 = fadd fast float %10955, %10937
  %10959 = fadd fast float %10956, %10938
  %10960 = fsub fast float %10948, %10940
  %10961 = fsub fast float %10949, %10941
  %10962 = fsub fast float %10950, %10942
  %10963 = fmul fast float %10960, %10924
  %10964 = fmul fast float %10961, %10924
  %10965 = fmul fast float %10962, %10924
  %10966 = fsub fast float %10940, %10957
  %10967 = fadd fast float %10966, %10963
  %10968 = fsub fast float %10941, %10958
  %10969 = fadd fast float %10968, %10964
  %10970 = fsub fast float %10942, %10959
  %10971 = fadd fast float %10970, %10965
  %10972 = fmul fast float %10967, %10912
  %10973 = fmul fast float %10969, %10912
  %10974 = fmul fast float %10971, %10912
  %10975 = fadd fast float %10972, %10957
  %10976 = fadd fast float %10973, %10958
  %10977 = fadd fast float %10974, %10959
  %10978 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10979 = extractvalue %dx.types.CBufRet.f32 %10978, 1
  %10980 = fmul fast float %10975, %10979
  %10981 = fmul fast float %10976, %10979
  %10982 = fmul fast float %10977, %10979
  br label %10983

; <label>:10983                                   ; preds = %10814, %10771
  %10984 = phi float [ %10854, %10814 ], [ 1.000000e+00, %10771 ]
  %10985 = phi float [ %10855, %10814 ], [ 1.000000e+00, %10771 ]
  %10986 = phi float [ %10856, %10814 ], [ 1.000000e+00, %10771 ]
  %10987 = phi float [ %10980, %10814 ], [ 0.000000e+00, %10771 ]
  %10988 = phi float [ %10981, %10814 ], [ 0.000000e+00, %10771 ]
  %10989 = phi float [ %10982, %10814 ], [ 0.000000e+00, %10771 ]
  %10990 = fmul fast float %10987, %9325
  %10991 = fmul fast float %10988, %9325
  %10992 = fmul fast float %10989, %9325
  %10993 = fmul fast float %10984, %10778
  %10994 = call float @dx.op.dot3.f32(i32 55, float %10984, float %10985, float %10986, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10995 = call float @dx.op.dot3.f32(i32 55, float %10990, float %10991, float %10992, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10996 = select i1 %225, float %10994, float %10984
  %10997 = select i1 %225, float %10994, float %10985
  %10998 = select i1 %225, float 1.000000e+00, float %10986
  %10999 = select i1 %225, float %10995, float %10990
  %11000 = select i1 %225, float 0.000000e+00, float %10991
  %11001 = select i1 %225, float 0.000000e+00, float %10992
  %11002 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %11003 = extractvalue %dx.types.CBufRet.i32 %11002, 3
  %11004 = and i32 %11003, 3
  %11005 = icmp ne i32 %11004, 0
  %11006 = and i32 %11003, 4
  %11007 = icmp ne i32 %11006, 0
  %11008 = and i1 %11005, %11007
  %11009 = and i1 %225, %11008
  br i1 %11009, label %11010, label %11016

; <label>:11010                                   ; preds = %10983
  %11011 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %11012 = extractvalue %dx.types.CBufRet.f32 %11011, 1
  %11013 = fadd fast float %10993, -1.000000e+00
  %11014 = fmul fast float %11012, %11013
  %11015 = fadd fast float %11014, 1.000000e+00
  br label %11016

; <label>:11016                                   ; preds = %11010, %10983
  %11017 = phi float [ %11015, %11010 ], [ %10993, %10983 ]
  %11018 = fadd fast float %10775, %10772
  %11019 = fmul fast float %10996, %11018
  %11020 = fadd fast float %11019, %10999
  %11021 = fadd fast float %10776, %10773
  %11022 = fmul fast float %10997, %11021
  %11023 = fadd fast float %11022, %11000
  %11024 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %11025 = extractvalue %dx.types.CBufRet.f32 %11024, 0
  br i1 %225, label %11026, label %11049

; <label>:11026                                   ; preds = %11016
  %11027 = fadd fast float %11020, %11023
  %11028 = fmul fast float %11025, %11027
  %11029 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %11030 = extractvalue %dx.types.CBufRet.f32 %11029, 3
  %11031 = extractvalue %dx.types.CBufRet.f32 %9329, 1
  %11032 = fsub fast float %9334, %9328
  %11033 = fadd fast float %11032, %9335
  %11034 = fsub fast float %11033, %11031
  %11035 = extractvalue %dx.types.CBufRet.f32 %9329, 2
  %11036 = fmul fast float %11034, %11035
  %11037 = call float @dx.op.unary.f32(i32 7, float %11036)  ; Saturate(value)
  %11038 = fsub fast float %11037, %11030
  %11039 = fmul fast float %11038, %11017
  %11040 = fadd fast float %11039, %11030
  %11041 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %11042 = extractvalue %dx.types.CBufRet.f32 %11041, 0
  %11043 = fsub fast float %11040, %11042
  %11044 = fmul fast float %11043, 1.000000e+01
  %11045 = call float @dx.op.unary.f32(i32 7, float %11044)  ; Saturate(value)
  %11046 = fmul fast float %11045, %9324
  %11047 = fadd fast float %11046, %9325
  %11048 = fmul fast float %11047, %11040
  br label %11073

; <label>:11049                                   ; preds = %11016
  %11050 = fadd fast float %10777, %10774
  %11051 = fmul fast float %10998, %11050
  %11052 = fadd fast float %11051, %11001
  %11053 = fmul fast float %11025, %11020
  %11054 = fmul fast float %11025, %11023
  %11055 = fmul fast float %11025, %11052
  %11056 = call float @dx.op.binary.f32(i32 35, float %11054, float %11055)  ; FMax(a,b)
  %11057 = call float @dx.op.binary.f32(i32 35, float %11053, float %11056)  ; FMax(a,b)
  %11058 = call float @dx.op.binary.f32(i32 35, float %11057, float %9325)  ; FMax(a,b)
  %11059 = fcmp fast ugt float %11058, 0x3F10000000000000
  br i1 %11059, label %11061, label %11060

; <label>:11060                                   ; preds = %11049
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %11061

; <label>:11061                                   ; preds = %11060, %11049
  %11062 = add i32 %60, 356
  %11063 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %11062, i32 undef)  ; BufferLoad(srv,index,wot)
  %11064 = extractvalue %dx.types.ResRet.i32 %11063, 0
  %11065 = and i32 %11064, 32
  %11066 = icmp eq i32 %11065, 0
  br i1 %11066, label %11073, label %11067

; <label>:11067                                   ; preds = %11061
  %11068 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %11069 = extractvalue %dx.types.CBufRet.f32 %11068, 0
  %11070 = fmul fast float %11069, 0x3FE99999A0000000
  %11071 = fadd fast float %11069, %11053
  %11072 = fadd fast float %11070, %11055
  br label %11073

; <label>:11073                                   ; preds = %11067, %11061, %11026
  %11074 = phi float [ %11028, %11026 ], [ %11071, %11067 ], [ %11053, %11061 ]
  %11075 = phi float [ %11048, %11026 ], [ %11054, %11067 ], [ %11054, %11061 ]
  %11076 = phi float [ %11047, %11026 ], [ %11072, %11067 ], [ %11055, %11061 ]
  %11077 = phi float [ %11047, %11026 ], [ %9325, %11067 ], [ %9325, %11061 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %11078 = call float @dx.op.binary.f32(i32 36, float %11074, float 3.225500e+04)  ; FMin(a,b)
  %11079 = call float @dx.op.binary.f32(i32 36, float %11075, float 3.225500e+04)  ; FMin(a,b)
  %11080 = call float @dx.op.binary.f32(i32 36, float %11076, float 3.225500e+04)  ; FMin(a,b)
  %11081 = call float @dx.op.binary.f32(i32 36, float %11077, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %11078)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %11079)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %11080)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %11081)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!65 = !{[46 x i32] [i32 44, i32 4, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 7, i32 3, i32 3, i32 3, i32 7, i32 3, i32 3, i32 3, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15]}
!66 = !{void ()* @ps_main, !"ps_main", !67, !4, !88}
!67 = !{!68, !86, null}
!68 = !{!69, !72, !73, !75, !77, !78, !79, !80, !81, !82, !83, !85}
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
!85 = !{i32 11, !"SV_SampleIndex", i8 5, i8 12, !70, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!86 = !{!87}
!87 = !{i32 0, !"SV_Target", i8 9, i8 16, !70, i8 0, i32 1, i8 4, i32 0, i8 0, !71}
!88 = !{i32 0, i64 16}
!89 = !{!90, !90, i64 0}
!90 = !{!"float", !91, i64 0}
!91 = !{!"omnipotent char", !92, i64 0}
!92 = !{!"Simple C/C++ TBAA"}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 1}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 1}
!95 = !{!96, !96, i64 0}
!96 = !{!"int", !91, i64 0}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 1}
!98 = distinct !{!98, !99}
!99 = !{!"llvm.loop.unroll.disable"}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 1}
!101 = distinct !{!101, !"dx.controlflow.hints", i32 1}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 1}
!103 = distinct !{!103, !"dx.controlflow.hints", i32 1}
!104 = distinct !{!104, !"dx.controlflow.hints", i32 1}
!105 = !{!106, !108, !110, !112}
!106 = distinct !{!106, !107, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!107 = distinct !{!107, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!108 = distinct !{!108, !109, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!109 = distinct !{!109, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!110 = distinct !{!110, !111, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!111 = distinct !{!111, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!112 = distinct !{!112, !113, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!113 = distinct !{!113, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!114 = distinct !{!114, !"dx.controlflow.hints", i32 1}
!115 = distinct !{!115, !99}
!116 = distinct !{!116, !99}
!117 = distinct !{!117, !"dx.controlflow.hints", i32 1}
!118 = distinct !{!118, !"dx.controlflow.hints", i32 1}
!119 = distinct !{!119, !"dx.controlflow.hints", i32 1}
!120 = distinct !{!120, !"dx.controlflow.hints", i32 1}
!121 = distinct !{!121, !"dx.controlflow.hints", i32 1}
!122 = distinct !{!122, !"dx.controlflow.hints", i32 1}
!123 = distinct !{!123, !"dx.controlflow.hints", i32 1}
!124 = !{!125, !127, !129, !130, !132, !133, !134, !136, !137, !138}
!125 = distinct !{!125, !126, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!126 = distinct !{!126, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!127 = distinct !{!127, !128, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!128 = distinct !{!128, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!129 = distinct !{!129, !128, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!130 = distinct !{!130, !131, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!131 = distinct !{!131, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!132 = distinct !{!132, !131, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!133 = distinct !{!133, !131, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!134 = distinct !{!134, !135, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!135 = distinct !{!135, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!136 = distinct !{!136, !135, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!137 = distinct !{!137, !135, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!138 = distinct !{!138, !139, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!139 = distinct !{!139, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!140 = !{!141}
!141 = distinct !{!141, !142, !"\01?sort@@YAXAIAM00@Z: %c"}
!142 = distinct !{!142, !"\01?sort@@YAXAIAM00@Z"}
!143 = !{!144, !145, !125, !127, !129, !130, !132, !133, !134, !136, !137, !138}
!144 = distinct !{!144, !142, !"\01?sort@@YAXAIAM00@Z: %a"}
!145 = distinct !{!145, !142, !"\01?sort@@YAXAIAM00@Z: %b"}
!146 = !{!145}
!147 = !{!144, !141, !125, !127, !129, !130, !132, !133, !134, !136, !137, !138}
!148 = !{!144}
!149 = !{!145, !141, !125, !127, !129, !130, !132, !133, !134, !136, !137, !138}
!150 = !{!151}
!151 = distinct !{!151, !152, !"\01?sort@@YAXAIAM00@Z: %c"}
!152 = distinct !{!152, !"\01?sort@@YAXAIAM00@Z"}
!153 = !{!154, !155, !125, !127, !129, !130, !132, !133, !134, !136, !137, !138}
!154 = distinct !{!154, !152, !"\01?sort@@YAXAIAM00@Z: %a"}
!155 = distinct !{!155, !152, !"\01?sort@@YAXAIAM00@Z: %b"}
!156 = !{!155}
!157 = !{!154, !151, !125, !127, !129, !130, !132, !133, !134, !136, !137, !138}
!158 = !{!154}
!159 = !{!155, !151, !125, !127, !129, !130, !132, !133, !134, !136, !137, !138}
!160 = distinct !{!160, !"dx.controlflow.hints", i32 1}
!161 = distinct !{!161, !"dx.controlflow.hints", i32 2}
!162 = distinct !{!162, !"dx.controlflow.hints", i32 1}
!163 = distinct !{!163, !"dx.controlflow.hints", i32 1}
!164 = distinct !{!164, !"dx.controlflow.hints", i32 1}
!165 = distinct !{!165, !"dx.controlflow.hints", i32 1}
!166 = distinct !{!166, !"dx.controlflow.hints", i32 1}
!167 = distinct !{!167, !"dx.controlflow.hints", i32 1}
!168 = distinct !{!168, !"dx.controlflow.hints", i32 1}
!169 = distinct !{!169, !"dx.controlflow.hints", i32 1}
!170 = distinct !{!170, !"dx.controlflow.hints", i32 1}

