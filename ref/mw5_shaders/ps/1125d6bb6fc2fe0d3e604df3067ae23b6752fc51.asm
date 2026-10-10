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
; shader hash: 04dc596559773dd54e359cf64616edbb
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
;                                   sampler      NA          NA      S1             s0     1
;                                   sampler      NA          NA      S2             s1     1
;                                   sampler      NA          NA      S3             s2     1
;                                   sampler      NA          NA      S4             s3     1
;                                   sampler      NA          NA      S5             s4     1
;                                   sampler      NA          NA      S6             s5     1
;                                   sampler      NA          NA      S7             s6     1
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
;                                   texture     f32          2d     T18             t1     1
;                                   texture     f32          2d     T19     t58,space2     1
;                                   texture     f32          2d     T20     t57,space2     1
;                                   texture    byte         r/o     T21     t69,space1     1
;                                   texture     u32          2d     T22     t56,space2     1
;                                   texture     f32     2darray     T23     t35,space2     1
;                                   texture     f32          2d     T24     t34,space2     1
;                                   texture     f32          3d     T25     t31,space2     1
;                                   texture     f32          2d     T26      t2,space2     1
;                                   texture     f32          2d     T27      t3,space2     1
;                                   texture     f32          2d     T28      t4,space2     1
;                                   textureunorm_f32     2darray     T29     t80,space2     1
;                                   texture    byte         r/o     T30     t67,space1     1
;                                   texture     f32          2d     T31      t7,space2     1
;                                   texture     f32          2d     T32      t6,space2     1
;                                   texture     f32          2d     T33      t5,space2     1
;                                   texture     f32          2d     T34     t38,space2     1
;                                   texture     f32          1d     T35     t30,space2     1
;                                   texture     f32          3d     T36     t44,space2     1
;                                   texture     f32          3d     T37     t45,space2     1
;                                   texture     f32     2darray     T38     t47,space2     1
;                                   textureunorm_f32     2darray     T39     t85,space2     1
;                                   texture     f32          2d     T40     t83,space2     1
;                                   texture     f32          2d     T41     t86,space2     1
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
%"class.Texture2DArray<float>" = type { float, %"class.Texture2DArray<float>::mips_type" }
%"class.Texture2DArray<float>::mips_type" = type { i32 }
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
%struct.SamplerComparisonState = type { i32 }

@PCF_OFFSETS_8.v.1dim = internal constant [16 x float] [float 0xBFE6A09020000000, float 0x3FE6A09020000000, float 0.000000e+00, float -8.750000e-01, float 0x3FE0F837C0000000, float 0x3FE0F837C0000000, float -6.250000e-01, float 0.000000e+00, float 0x3FD6A161E0000000, float 0xBFD6A161E0000000, float 0.000000e+00, float 3.750000e-01, float 0xBFC6A161E0000000, float 0xBFC6A161E0000000, float 1.250000e-01, float 0.000000e+00], align 4

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 41, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 40, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 39, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 38, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 51, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 50, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 49, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 7, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %49 = alloca [4 x i32], align 4
  %50 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %87 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %88 = alloca [12 x float], align 4
  %89 = alloca [12 x float], align 4
  %90 = alloca [4 x float], align 4
  %91 = alloca [4 x float], align 4
  %92 = alloca [4 x float], align 4
  %93 = alloca [3 x float], align 4
  %94 = alloca [3 x float], align 4
  %95 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %96 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %97 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %98 = extractvalue %dx.types.CBufRet.f32 %97, 0
  %99 = fmul fast float %98, %84
  %100 = fmul fast float %98, %85
  %101 = call float @dx.op.dot3.f32(i32 55, float %75, float %76, float %77, float %75, float %76, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %102 = bitcast float %101 to i32
  %103 = ashr i32 %102, 1
  %104 = sub nsw i32 1597250115, %103
  %105 = bitcast i32 %104 to float
  %106 = fmul fast float %105, %75
  %107 = fmul fast float %105, %76
  %108 = fmul fast float %105, %77
  %109 = fmul fast float %76, %73
  %110 = fmul fast float %77, %72
  %111 = fsub fast float %109, %110
  %112 = fmul fast float %77, %71
  %113 = fmul fast float %75, %73
  %114 = fsub fast float %112, %113
  %115 = fmul fast float %75, %72
  %116 = fmul fast float %76, %71
  %117 = fsub fast float %115, %116
  %118 = fmul fast float %111, %74
  %119 = fmul fast float %114, %74
  %120 = fmul fast float %117, %74
  %121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %122 = extractvalue %dx.types.CBufRet.f32 %121, 2
  %123 = extractvalue %dx.types.CBufRet.f32 %121, 3
  %124 = fmul fast float %99, 2.000000e+00
  %125 = fmul fast float %124, %122
  %126 = fmul fast float %100, 2.000000e+00
  %127 = fmul fast float %126, %123
  %128 = fsub fast float 1.000000e+00, %125
  %129 = fsub fast float 1.000000e+00, %127
  %130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %131 = extractvalue %dx.types.CBufRet.f32 %130, 0
  %132 = extractvalue %dx.types.CBufRet.f32 %130, 1
  %133 = extractvalue %dx.types.CBufRet.f32 %130, 2
  %134 = fmul fast float %128, %131
  %135 = fmul fast float %128, %132
  %136 = fmul fast float %128, %133
  %137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %138 = extractvalue %dx.types.CBufRet.f32 %137, 0
  %139 = extractvalue %dx.types.CBufRet.f32 %137, 1
  %140 = extractvalue %dx.types.CBufRet.f32 %137, 2
  %141 = fmul fast float %129, %138
  %142 = fmul fast float %129, %139
  %143 = fmul fast float %129, %140
  %144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %145 = extractvalue %dx.types.CBufRet.f32 %144, 0
  %146 = extractvalue %dx.types.CBufRet.f32 %144, 1
  %147 = extractvalue %dx.types.CBufRet.f32 %144, 2
  %148 = fadd fast float %141, %145
  %149 = fadd fast float %148, %134
  %150 = fadd fast float %142, %146
  %151 = fadd fast float %150, %135
  %152 = fadd fast float %143, %147
  %153 = fadd fast float %152, %136
  %154 = fmul fast float %149, %87
  %155 = fmul fast float %151, %87
  %156 = fmul fast float %153, %87
  %157 = fmul fast float %99, 5.000000e-01
  %158 = fmul fast float %100, 5.000000e-01
  %159 = fptosi float %157 to i32
  %160 = fptosi float %158 to i32
  %161 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %20, i32 0, i32 %159, i32 %160, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %162 = extractvalue %dx.types.ResRet.i32 %161, 0
  %163 = lshr i32 %162, 18
  %164 = uitofp i32 %163 to float
  %165 = fmul fast float %164, 0x3F4C00EBA0000000
  %166 = call float @dx.op.unary.f32(i32 21, float %165)  ; Exp(value)
  %167 = fadd fast float %166, -1.000000e+00
  %168 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %20, i32 0)  ; GetDimensions(handle,mipLevel)
  %169 = extractvalue %dx.types.Dimensions %168, 0
  %170 = sitofp i32 %169 to float
  %171 = extractvalue %dx.types.Dimensions %168, 1
  %172 = sitofp i32 %171 to float
  %173 = fcmp fast oge float %157, %170
  %174 = fcmp fast oge float %158, %172
  %175 = or i1 %173, %174
  %176 = select i1 %175, float 0x4197782600000000, float %167
  %177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %178 = extractvalue %dx.types.CBufRet.f32 %177, 2
  %179 = extractvalue %dx.types.CBufRet.f32 %177, 3
  %180 = fmul fast float %178, %99
  %181 = fmul fast float %179, %100
  %182 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %183 = extractvalue %dx.types.ResRet.i32 %182, 0
  %184 = and i32 %183, 114688
  %185 = icmp ne i32 %184, 0
  %186 = select i1 %185, float %180, float 0.000000e+00
  %187 = select i1 %185, float %181, float 0.000000e+00
  %188 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %45, float %186, float %187, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %189 = extractvalue %dx.types.ResRet.f32 %188, 0
  %190 = fmul fast float %189, 2.550000e+02
  %191 = fptoui float %190 to i32
  %192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %193 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %194 = extractvalue %dx.types.CBufRet.i32 %193, 3
  %195 = and i32 %194, 3
  %196 = icmp ne i32 %195, 0
  %197 = and i32 %194, 4
  %198 = icmp ne i32 %197, 0
  %199 = and i1 %196, %198
  br i1 %199, label %200, label %211

; <label>:200                                     ; preds = %0
  %201 = extractvalue %dx.types.CBufRet.f32 %192, 3
  %202 = fmul fast float %201, %100
  %203 = extractvalue %dx.types.CBufRet.f32 %192, 2
  %204 = fmul fast float %203, %99
  %205 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %44, float %204, float %202, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %206 = extractvalue %dx.types.ResRet.f32 %205, 0
  %207 = fsub fast float 1.000000e+00, %206
  %208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %209 = extractvalue %dx.types.CBufRet.f32 %208, 0
  %210 = fcmp fast olt float %207, %209
  br label %214

; <label>:211                                     ; preds = %0
  %212 = icmp eq i32 %197, 0
  %213 = and i1 %196, %212
  br label %214

; <label>:214                                     ; preds = %211, %200
  %215 = phi i1 [ %210, %200 ], [ %213, %211 ]
  %216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %217 = extractvalue %dx.types.CBufRet.f32 %216, 2
  %218 = fmul fast float %217, 0x3FE3C6EF40000000
  %219 = frem fast float %99, 2.560000e+02
  %220 = frem fast float %100, 2.560000e+02
  %221 = fptoui float %219 to i32
  %222 = fptoui float %220 to i32
  %223 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %26, i32 0, i32 %221, i32 %222, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %224 = extractvalue %dx.types.ResRet.f32 %223, 0
  %225 = extractvalue %dx.types.ResRet.f32 %223, 1
  %226 = fadd fast float %224, %218
  %227 = fadd fast float %225, %218
  %228 = call float @dx.op.unary.f32(i32 22, float %226)  ; Frc(value)
  %229 = call float @dx.op.unary.f32(i32 22, float %227)  ; Frc(value)
  %230 = add i32 %50, 156
  %231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %230, i32 undef)  ; BufferLoad(srv,index,wot)
  %232 = extractvalue %dx.types.ResRet.i32 %231, 0
  %233 = shl i32 %232, 4
  %234 = and i32 %233, 32752
  %235 = call float @dx.op.legacyF16ToF32(i32 131, i32 %234)  ; LegacyF16ToF32(value)
  %236 = lshr i32 %232, 7
  %237 = and i32 %236, 32752
  %238 = call float @dx.op.legacyF16ToF32(i32 131, i32 %237)  ; LegacyF16ToF32(value)
  %239 = lshr i32 %232, 22
  %240 = shl nuw nsw i32 %239, 5
  %241 = call float @dx.op.legacyF16ToF32(i32 131, i32 %240)  ; LegacyF16ToF32(value)
  %242 = add i32 %50, 216
  %243 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %242, i32 undef)  ; BufferLoad(srv,index,wot)
  %244 = extractvalue %dx.types.ResRet.i32 %243, 0
  %245 = and i32 %244, 255
  %246 = uitofp i32 %245 to float
  %247 = fmul fast float %246, 0x3F70101020000000
  %248 = lshr i32 %244, 8
  %249 = and i32 %248, 255
  %250 = uitofp i32 %249 to float
  %251 = fmul fast float %250, 0x3F70101020000000
  %252 = lshr i32 %244, 16
  %253 = and i32 %252, 255
  %254 = uitofp i32 %253 to float
  %255 = fmul fast float %254, 0x3F70101020000000
  %256 = add i32 %50, 36
  %257 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %256, i32 undef)  ; BufferLoad(srv,index,wot)
  %258 = extractvalue %dx.types.ResRet.i32 %257, 0
  %259 = and i32 %258, 65535
  %260 = call float @dx.op.legacyF16ToF32(i32 131, i32 %259)  ; LegacyF16ToF32(value)
  %261 = lshr i32 %258, 16
  %262 = call float @dx.op.legacyF16ToF32(i32 131, i32 %261)  ; LegacyF16ToF32(value)
  %263 = add i32 %50, 288
  %264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %263, i32 undef)  ; BufferLoad(srv,index,wot)
  %265 = extractvalue %dx.types.ResRet.i32 %264, 0
  %266 = and i32 %265, 65535
  %267 = call float @dx.op.legacyF16ToF32(i32 131, i32 %266)  ; LegacyF16ToF32(value)
  %268 = lshr i32 %265, 16
  %269 = call float @dx.op.legacyF16ToF32(i32 131, i32 %268)  ; LegacyF16ToF32(value)
  %270 = fmul fast float %267, 0x3F50624DE0000000
  %271 = fmul fast float %269, 0x3F50624DE0000000
  %272 = add i32 %50, 172
  %273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %272, i32 undef)  ; BufferLoad(srv,index,wot)
  %274 = extractvalue %dx.types.ResRet.i32 %273, 0
  %275 = shl i32 %274, 4
  %276 = and i32 %275, 32752
  %277 = call float @dx.op.legacyF16ToF32(i32 131, i32 %276)  ; LegacyF16ToF32(value)
  %278 = lshr i32 %274, 7
  %279 = and i32 %278, 32752
  %280 = call float @dx.op.legacyF16ToF32(i32 131, i32 %279)  ; LegacyF16ToF32(value)
  %281 = lshr i32 %274, 22
  %282 = shl nuw nsw i32 %281, 5
  %283 = call float @dx.op.legacyF16ToF32(i32 131, i32 %282)  ; LegacyF16ToF32(value)
  %284 = add i32 %50, 232
  %285 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %284, i32 undef)  ; BufferLoad(srv,index,wot)
  %286 = extractvalue %dx.types.ResRet.i32 %285, 0
  %287 = and i32 %286, 255
  %288 = uitofp i32 %287 to float
  %289 = fmul fast float %288, 0x3F70101020000000
  %290 = lshr i32 %286, 8
  %291 = and i32 %290, 255
  %292 = uitofp i32 %291 to float
  %293 = fmul fast float %292, 0x3F70101020000000
  %294 = lshr i32 %286, 16
  %295 = and i32 %294, 255
  %296 = uitofp i32 %295 to float
  %297 = fmul fast float %296, 0x3F70101020000000
  %298 = add i32 %50, 52
  %299 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %298, i32 undef)  ; BufferLoad(srv,index,wot)
  %300 = extractvalue %dx.types.ResRet.i32 %299, 0
  %301 = and i32 %300, 65535
  %302 = call float @dx.op.legacyF16ToF32(i32 131, i32 %301)  ; LegacyF16ToF32(value)
  %303 = lshr i32 %300, 16
  %304 = call float @dx.op.legacyF16ToF32(i32 131, i32 %303)  ; LegacyF16ToF32(value)
  %305 = add i32 %50, 304
  %306 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %305, i32 undef)  ; BufferLoad(srv,index,wot)
  %307 = extractvalue %dx.types.ResRet.i32 %306, 0
  %308 = and i32 %307, 65535
  %309 = call float @dx.op.legacyF16ToF32(i32 131, i32 %308)  ; LegacyF16ToF32(value)
  %310 = lshr i32 %307, 16
  %311 = call float @dx.op.legacyF16ToF32(i32 131, i32 %310)  ; LegacyF16ToF32(value)
  %312 = fmul fast float %309, 0x3F50624DE0000000
  %313 = fmul fast float %311, 0x3F50624DE0000000
  %314 = add i32 %50, 188
  %315 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %314, i32 undef)  ; BufferLoad(srv,index,wot)
  %316 = extractvalue %dx.types.ResRet.i32 %315, 0
  %317 = shl i32 %316, 4
  %318 = and i32 %317, 32752
  %319 = call float @dx.op.legacyF16ToF32(i32 131, i32 %318)  ; LegacyF16ToF32(value)
  %320 = lshr i32 %316, 7
  %321 = and i32 %320, 32752
  %322 = call float @dx.op.legacyF16ToF32(i32 131, i32 %321)  ; LegacyF16ToF32(value)
  %323 = lshr i32 %316, 22
  %324 = shl nuw nsw i32 %323, 5
  %325 = call float @dx.op.legacyF16ToF32(i32 131, i32 %324)  ; LegacyF16ToF32(value)
  %326 = add i32 %50, 248
  %327 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %326, i32 undef)  ; BufferLoad(srv,index,wot)
  %328 = extractvalue %dx.types.ResRet.i32 %327, 0
  %329 = and i32 %328, 255
  %330 = uitofp i32 %329 to float
  %331 = fmul fast float %330, 0x3F70101020000000
  %332 = lshr i32 %328, 8
  %333 = and i32 %332, 255
  %334 = uitofp i32 %333 to float
  %335 = fmul fast float %334, 0x3F70101020000000
  %336 = lshr i32 %328, 16
  %337 = and i32 %336, 255
  %338 = uitofp i32 %337 to float
  %339 = fmul fast float %338, 0x3F70101020000000
  %340 = add i32 %50, 68
  %341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %340, i32 undef)  ; BufferLoad(srv,index,wot)
  %342 = extractvalue %dx.types.ResRet.i32 %341, 0
  %343 = and i32 %342, 65535
  %344 = call float @dx.op.legacyF16ToF32(i32 131, i32 %343)  ; LegacyF16ToF32(value)
  %345 = lshr i32 %342, 16
  %346 = call float @dx.op.legacyF16ToF32(i32 131, i32 %345)  ; LegacyF16ToF32(value)
  %347 = add i32 %50, 320
  %348 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %347, i32 undef)  ; BufferLoad(srv,index,wot)
  %349 = extractvalue %dx.types.ResRet.i32 %348, 0
  %350 = and i32 %349, 65535
  %351 = call float @dx.op.legacyF16ToF32(i32 131, i32 %350)  ; LegacyF16ToF32(value)
  %352 = lshr i32 %349, 16
  %353 = call float @dx.op.legacyF16ToF32(i32 131, i32 %352)  ; LegacyF16ToF32(value)
  %354 = fmul fast float %351, 0x3F50624DE0000000
  %355 = fmul fast float %353, 0x3F50624DE0000000
  %356 = add i32 %50, 204
  %357 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %356, i32 undef)  ; BufferLoad(srv,index,wot)
  %358 = extractvalue %dx.types.ResRet.i32 %357, 0
  %359 = shl i32 %358, 4
  %360 = and i32 %359, 32752
  %361 = call float @dx.op.legacyF16ToF32(i32 131, i32 %360)  ; LegacyF16ToF32(value)
  %362 = lshr i32 %358, 7
  %363 = and i32 %362, 32752
  %364 = call float @dx.op.legacyF16ToF32(i32 131, i32 %363)  ; LegacyF16ToF32(value)
  %365 = lshr i32 %358, 22
  %366 = shl nuw nsw i32 %365, 5
  %367 = call float @dx.op.legacyF16ToF32(i32 131, i32 %366)  ; LegacyF16ToF32(value)
  %368 = add i32 %50, 264
  %369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %368, i32 undef)  ; BufferLoad(srv,index,wot)
  %370 = extractvalue %dx.types.ResRet.i32 %369, 0
  %371 = and i32 %370, 255
  %372 = uitofp i32 %371 to float
  %373 = fmul fast float %372, 0x3F70101020000000
  %374 = lshr i32 %370, 8
  %375 = and i32 %374, 255
  %376 = uitofp i32 %375 to float
  %377 = fmul fast float %376, 0x3F70101020000000
  %378 = lshr i32 %370, 16
  %379 = and i32 %378, 255
  %380 = uitofp i32 %379 to float
  %381 = fmul fast float %380, 0x3F70101020000000
  %382 = add i32 %50, 84
  %383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %382, i32 undef)  ; BufferLoad(srv,index,wot)
  %384 = extractvalue %dx.types.ResRet.i32 %383, 0
  %385 = and i32 %384, 65535
  %386 = call float @dx.op.legacyF16ToF32(i32 131, i32 %385)  ; LegacyF16ToF32(value)
  %387 = lshr i32 %384, 16
  %388 = call float @dx.op.legacyF16ToF32(i32 131, i32 %387)  ; LegacyF16ToF32(value)
  %389 = add i32 %50, 336
  %390 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %389, i32 undef)  ; BufferLoad(srv,index,wot)
  %391 = extractvalue %dx.types.ResRet.i32 %390, 0
  %392 = and i32 %391, 65535
  %393 = call float @dx.op.legacyF16ToF32(i32 131, i32 %392)  ; LegacyF16ToF32(value)
  %394 = lshr i32 %391, 16
  %395 = call float @dx.op.legacyF16ToF32(i32 131, i32 %394)  ; LegacyF16ToF32(value)
  %396 = fmul fast float %393, 0x3F50624DE0000000
  %397 = fmul fast float %395, 0x3F50624DE0000000
  %398 = add i32 %50, 348
  %399 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %398, i32 undef)  ; BufferLoad(srv,index,wot)
  %400 = extractvalue %dx.types.ResRet.i32 %399, 0
  %401 = and i32 %400, 32
  %402 = icmp eq i32 %401, 0
  %403 = and i32 %400, 64
  %404 = icmp eq i32 %403, 0
  %405 = and i32 %400, 128
  %406 = icmp eq i32 %405, 0
  %407 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %398, i32 undef)  ; BufferLoad(srv,index,wot)
  %408 = extractvalue %dx.types.ResRet.i32 %407, 0
  %409 = and i32 %408, 2
  %410 = icmp eq i32 %409, 0
  br i1 %410, label %426, label %411

; <label>:411                                     ; preds = %214
  %412 = add i32 %50, 488
  %413 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %412, i32 undef)  ; BufferLoad(srv,index,wot)
  %414 = extractvalue %dx.types.ResRet.i32 %413, 0
  %415 = add i32 %414, 0
  %416 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %415, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %417 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %416, %dx.types.Handle %96, float %78, float %79, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %418 = extractvalue %dx.types.ResRet.f32 %417, 0
  %419 = extractvalue %dx.types.ResRet.f32 %417, 1
  %420 = extractvalue %dx.types.ResRet.f32 %417, 2
  %421 = extractvalue %dx.types.ResRet.f32 %417, 3
  %422 = fmul fast float %421, %80
  %423 = fmul fast float %418, %81
  %424 = fmul fast float %419, %82
  %425 = fmul fast float %420, %83
  br label %426

; <label>:426                                     ; preds = %411, %214
  %427 = phi float [ %83, %214 ], [ %425, %411 ]
  %428 = phi float [ %82, %214 ], [ %424, %411 ]
  %429 = phi float [ %81, %214 ], [ %423, %411 ]
  %430 = phi float [ %80, %214 ], [ %422, %411 ]
  %431 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %398, i32 undef)  ; BufferLoad(srv,index,wot)
  %432 = extractvalue %dx.types.ResRet.i32 %431, 0
  %433 = and i32 %432, 2
  %434 = icmp eq i32 %433, 0
  br i1 %434, label %454, label %435

; <label>:435                                     ; preds = %426
  %436 = add i32 %50, 44
  %437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %436, i32 undef)  ; BufferLoad(srv,index,wot)
  %438 = extractvalue %dx.types.ResRet.i32 %437, 0
  %439 = and i32 %438, 1
  %440 = icmp ne i32 %439, 0
  %441 = select i1 %440, float %429, float 1.000000e+00
  %442 = add i32 %50, 60
  %443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %442, i32 undef)  ; BufferLoad(srv,index,wot)
  %444 = extractvalue %dx.types.ResRet.i32 %443, 0
  %445 = and i32 %444, 1
  %446 = icmp ne i32 %445, 0
  %447 = select i1 %446, float %428, float 1.000000e+00
  %448 = add i32 %50, 76
  %449 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %448, i32 undef)  ; BufferLoad(srv,index,wot)
  %450 = extractvalue %dx.types.ResRet.i32 %449, 0
  %451 = and i32 %450, 1
  %452 = icmp ne i32 %451, 0
  %453 = select i1 %452, float %427, float 1.000000e+00
  br label %454

; <label>:454                                     ; preds = %435, %426
  %455 = phi float [ %427, %426 ], [ %453, %435 ]
  %456 = phi float [ %428, %426 ], [ %447, %435 ]
  %457 = phi float [ %429, %426 ], [ %441, %435 ]
  %458 = lshr i32 %432, 20
  %459 = and i32 %458, 3
  %460 = add nuw nsw i32 %459, 1
  %461 = add i32 %50, 24
  %462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %461, i32 undef)  ; BufferLoad(srv,index,wot)
  %463 = extractvalue %dx.types.ResRet.i32 %462, 0
  %464 = add i32 %50, 28
  %465 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %464, i32 undef)  ; BufferLoad(srv,index,wot)
  %466 = extractvalue %dx.types.ResRet.i32 %465, 0
  %467 = or i32 %466, %463
  %468 = icmp eq i32 %467, 0
  br i1 %468, label %1229, label %469

; <label>:469                                     ; preds = %454
  %470 = and i32 %463, 262144
  %471 = icmp ne i32 %470, 0
  %472 = select i1 %471, float %53, float 1.000000e+00
  %473 = select i1 %471, float %54, float 0.000000e+00
  %474 = select i1 %471, float %55, float 0.000000e+00
  %475 = select i1 %471, float %56, float 1.000000e+00
  %476 = select i1 %471, float %57, float %78
  %477 = select i1 %471, float %58, float %79
  %478 = add i32 %50, 284
  %479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %478, i32 undef)  ; BufferLoad(srv,index,wot)
  %480 = extractvalue %dx.types.ResRet.i32 %479, 0
  %481 = lshr i32 %480, 16
  %482 = call float @dx.op.legacyF16ToF32(i32 131, i32 %481)  ; LegacyF16ToF32(value)
  %483 = fmul fast float %482, 0x3F50624DE0000000
  %484 = add i32 %50, 88
  %485 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %484, i32 undef)  ; BufferLoad(srv,index,wot)
  %486 = extractvalue %dx.types.ResRet.i32 %485, 0
  %487 = lshr i32 %486, 16
  %488 = and i32 %487, 255
  %489 = lshr i32 %486, 24
  %490 = add i32 %50, 292
  %491 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %490, i32 undef)  ; BufferLoad(srv,index,wot)
  %492 = extractvalue %dx.types.ResRet.i32 %491, 0
  %493 = and i32 %492, 65535
  %494 = call float @dx.op.legacyF16ToF32(i32 131, i32 %493)  ; LegacyF16ToF32(value)
  %495 = lshr i32 %492, 16
  %496 = call float @dx.op.legacyF16ToF32(i32 131, i32 %495)  ; LegacyF16ToF32(value)
  %497 = add i32 %50, 32
  %498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %497, i32 undef)  ; BufferLoad(srv,index,wot)
  %499 = extractvalue %dx.types.ResRet.i32 %498, 0
  %500 = lshr i32 %499, 22
  %501 = shl nuw nsw i32 %500, 5
  %502 = call float @dx.op.legacyF16ToF32(i32 131, i32 %501)  ; LegacyF16ToF32(value)
  %503 = shl i32 %499, 4
  %504 = and i32 %503, 32752
  %505 = call float @dx.op.legacyF16ToF32(i32 131, i32 %504)  ; LegacyF16ToF32(value)
  %506 = lshr i32 %499, 7
  %507 = and i32 %506, 32752
  %508 = call float @dx.op.legacyF16ToF32(i32 131, i32 %507)  ; LegacyF16ToF32(value)
  %509 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %510 = extractvalue %dx.types.CBufRet.f32 %509, 3
  %511 = fmul fast float %510, 1.000000e+03
  %512 = fmul fast float %270, %511
  %513 = call float @dx.op.unary.f32(i32 22, float %512)  ; Frc(value)
  %514 = fadd fast float %513, %260
  %515 = fmul fast float %271, %511
  %516 = call float @dx.op.unary.f32(i32 22, float %515)  ; Frc(value)
  %517 = fadd fast float %516, %262
  %518 = fmul fast float %483, %511
  %519 = call float @dx.op.unary.f32(i32 22, float %518)  ; Frc(value)
  %520 = fmul fast float %519, 0x401921FB60000000
  %521 = fadd fast float %520, %502
  %522 = call float @dx.op.unary.f32(i32 13, float %521)  ; Sin(value)
  %523 = call float @dx.op.unary.f32(i32 12, float %521)  ; Cos(value)
  %524 = fsub fast float -0.000000e+00, %522
  %525 = fadd fast float %476, -5.000000e-01
  %526 = fadd fast float %477, -5.000000e-01
  %527 = fmul fast float %494, %525
  %528 = fmul fast float %496, %526
  %529 = fadd fast float %527, 5.000000e-01
  %530 = fadd fast float %528, 5.000000e-01
  %531 = fmul fast float %505, %529
  %532 = fmul fast float %508, %530
  %533 = fmul fast float %523, %531
  %534 = call float @dx.op.tertiary.f32(i32 46, float %524, float %532, float %533)  ; FMad(a,b,c)
  %535 = fmul fast float %522, %531
  %536 = call float @dx.op.tertiary.f32(i32 46, float %523, float %532, float %535)  ; FMad(a,b,c)
  %537 = fadd fast float %514, %534
  %538 = fadd fast float %517, %536
  %539 = icmp ugt i32 %488, 1
  %540 = icmp ugt i32 %486, 33554431
  %541 = or i1 %540, %539
  br i1 %541, label %542, label %567

; <label>:542                                     ; preds = %469
  %543 = add i32 %50, 228
  %544 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %543, i32 undef)  ; BufferLoad(srv,index,wot)
  %545 = extractvalue %dx.types.ResRet.i32 %544, 0
  %546 = lshr i32 %545, 16
  %547 = call float @dx.op.legacyF16ToF32(i32 131, i32 %546)  ; LegacyF16ToF32(value)
  %548 = fmul fast float %510, %547
  %549 = call float @dx.op.unary.f32(i32 22, float %548)  ; Frc(value)
  %550 = mul nuw nsw i32 %488, %489
  %551 = uitofp i32 %550 to float
  %552 = fmul fast float %549, %551
  %553 = call float @dx.op.unary.f32(i32 27, float %552)  ; Round_ni(value)
  %554 = fptoui float %553 to i32
  %555 = urem i32 %554, %488
  %556 = udiv i32 %554, %489
  %557 = call float @dx.op.unary.f32(i32 22, float %537)  ; Frc(value)
  %558 = call float @dx.op.unary.f32(i32 22, float %538)  ; Frc(value)
  %559 = uitofp i32 %555 to float
  %560 = uitofp i32 %556 to float
  %561 = fadd fast float %557, %559
  %562 = fadd fast float %558, %560
  %563 = uitofp i32 %488 to float
  %564 = uitofp i32 %489 to float
  %565 = fdiv fast float %561, %563
  %566 = fdiv fast float %562, %564
  br label %567

; <label>:567                                     ; preds = %542, %469
  %568 = phi float [ %565, %542 ], [ %537, %469 ]
  %569 = phi float [ %566, %542 ], [ %538, %469 ]
  %570 = and i32 %463, 16777216
  %571 = icmp eq i32 %570, 0
  br i1 %571, label %681, label %572

; <label>:572                                     ; preds = %567
  %573 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %574 = extractvalue %dx.types.CBufRet.f32 %573, 0
  %575 = extractvalue %dx.types.CBufRet.f32 %573, 1
  %576 = extractvalue %dx.types.CBufRet.f32 %573, 2
  %577 = fadd fast float %574, %154
  %578 = fadd fast float %575, %155
  %579 = fadd fast float %576, %156
  %580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %581 = extractvalue %dx.types.CBufRet.f32 %580, 0
  %582 = call float @dx.op.unary.f32(i32 7, float %581)  ; Saturate(value)
  %583 = icmp eq i32 %51, 65535
  br i1 %583, label %678, label %584

; <label>:584                                     ; preds = %572
  %585 = lshr i32 %51, 1
  %586 = shl i32 %585, 2
  %587 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %586, i32 undef)  ; BufferLoad(srv,index,wot)
  %588 = extractvalue %dx.types.ResRet.i32 %587, 0
  %589 = and i32 %51, 1
  %590 = icmp ne i32 %589, 0
  %591 = lshr i32 %588, 16
  %592 = and i32 %588, 65535
  %593 = select i1 %590, i32 %591, i32 %592
  %594 = icmp eq i32 %593, 65535
  br i1 %594, label %674, label %595

; <label>:595                                     ; preds = %584
  %596 = mul nuw nsw i32 %593, 40
  %597 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %596, i32 undef)  ; BufferLoad(srv,index,wot)
  %598 = extractvalue %dx.types.ResRet.f32 %597, 0
  %599 = extractvalue %dx.types.ResRet.f32 %597, 1
  %600 = extractvalue %dx.types.ResRet.f32 %597, 2
  %601 = add nuw nsw i32 %596, 12
  %602 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %601, i32 undef)  ; BufferLoad(srv,index,wot)
  %603 = extractvalue %dx.types.ResRet.f32 %602, 0
  %604 = extractvalue %dx.types.ResRet.f32 %602, 1
  %605 = extractvalue %dx.types.ResRet.f32 %602, 2
  %606 = add nuw nsw i32 %596, 24
  %607 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %606, i32 undef)  ; BufferLoad(srv,index,wot)
  %608 = extractvalue %dx.types.ResRet.f32 %607, 0
  %609 = extractvalue %dx.types.ResRet.f32 %607, 1
  %610 = extractvalue %dx.types.ResRet.f32 %607, 2
  %611 = add nuw nsw i32 %596, 36
  %612 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %611, i32 undef)  ; BufferLoad(srv,index,wot)
  %613 = extractvalue %dx.types.ResRet.f32 %612, 0
  %614 = fsub fast float %577, %598
  %615 = fsub fast float %578, %599
  %616 = fsub fast float %579, %600
  %617 = fmul fast float %613, %614
  %618 = fmul fast float %613, %615
  %619 = fmul fast float %613, %616
  %620 = call float @dx.op.unary.f32(i32 27, float %617)  ; Round_ni(value)
  %621 = call float @dx.op.unary.f32(i32 27, float %618)  ; Round_ni(value)
  %622 = call float @dx.op.unary.f32(i32 27, float %619)  ; Round_ni(value)
  %623 = fadd fast float %620, 5.000000e-01
  %624 = fadd fast float %621, 5.000000e-01
  %625 = fadd fast float %622, 5.000000e-01
  %626 = fmul fast float %623, %603
  %627 = fmul fast float %624, %604
  %628 = fmul fast float %625, %605
  %629 = shl i32 %51, 2
  %630 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %629, i32 undef)  ; BufferLoad(srv,index,wot)
  %631 = extractvalue %dx.types.ResRet.i32 %630, 0
  %632 = add i32 %631, 0
  %633 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %632, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %634 = call float @dx.op.unary.f32(i32 22, float %626)  ; Frc(value)
  %635 = call float @dx.op.unary.f32(i32 22, float %627)  ; Frc(value)
  %636 = call float @dx.op.unary.f32(i32 22, float %628)  ; Frc(value)
  %637 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %633, %dx.types.Handle %45, float %634, float %635, float %636, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %638 = extractvalue %dx.types.ResRet.f32 %637, 0
  %639 = extractvalue %dx.types.ResRet.f32 %637, 1
  %640 = extractvalue %dx.types.ResRet.f32 %637, 2
  %641 = fmul fast float %638, 1.023000e+03
  %642 = fmul fast float %639, 1.023000e+03
  %643 = fmul fast float %640, 1.023000e+03
  %644 = fadd fast float %641, 5.000000e-01
  %645 = fadd fast float %642, 5.000000e-01
  %646 = fadd fast float %643, 5.000000e-01
  %647 = call float @dx.op.unary.f32(i32 27, float %644)  ; Round_ni(value)
  %648 = call float @dx.op.unary.f32(i32 27, float %645)  ; Round_ni(value)
  %649 = call float @dx.op.unary.f32(i32 27, float %646)  ; Round_ni(value)
  %650 = fsub fast float %617, %620
  %651 = fsub fast float %618, %621
  %652 = fsub fast float %619, %622
  %653 = fmul fast float %650, 7.500000e-01
  %654 = fmul fast float %651, 7.500000e-01
  %655 = fmul fast float %652, 7.500000e-01
  %656 = fadd fast float %620, 1.250000e-01
  %657 = fadd fast float %656, %653
  %658 = fadd fast float %657, %647
  %659 = fadd fast float %621, 1.250000e-01
  %660 = fadd fast float %659, %654
  %661 = fadd fast float %660, %648
  %662 = fadd fast float %622, 1.250000e-01
  %663 = fadd fast float %662, %655
  %664 = fadd fast float %663, %649
  %665 = fmul fast float %658, %608
  %666 = fmul fast float %661, %609
  %667 = fmul fast float %664, %610
  %668 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %629, i32 undef)  ; BufferLoad(srv,index,wot)
  %669 = extractvalue %dx.types.ResRet.i32 %668, 0
  %670 = add i32 %669, 0
  %671 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %670, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %672 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %671, %dx.types.Handle %43, float %665, float %666, float %667, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %673 = extractvalue %dx.types.ResRet.f32 %672, 0
  br label %674

; <label>:674                                     ; preds = %595, %584
  %675 = phi float [ %673, %595 ], [ -1.000000e+00, %584 ]
  %676 = fadd fast float %675, %582
  %677 = call float @dx.op.unary.f32(i32 7, float %676)  ; Saturate(value)
  br label %678

; <label>:678                                     ; preds = %674, %572
  %679 = phi float [ %677, %674 ], [ %582, %572 ]
  %680 = fmul fast float %679, %430
  br label %681

; <label>:681                                     ; preds = %678, %567
  %682 = phi float [ %680, %678 ], [ %430, %567 ]
  %683 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %461, i32 undef)  ; BufferLoad(srv,index,wot)
  %684 = extractvalue %dx.types.ResRet.i32 %683, 0
  %685 = and i32 %684, 256
  %686 = icmp eq i32 %685, 0
  br i1 %686, label %733, label %687

; <label>:687                                     ; preds = %681
  %688 = add i32 %50, 424
  %689 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %688, i32 undef)  ; BufferLoad(srv,index,wot)
  %690 = extractvalue %dx.types.ResRet.i32 %689, 0
  %691 = add i32 %690, 0
  %692 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %691, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %693 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %692, %dx.types.Handle %96, float %568, float %569, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %694 = extractvalue %dx.types.ResRet.f32 %693, 0
  %695 = add i32 %50, 100
  %696 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %695, i32 undef)  ; BufferLoad(srv,index,wot)
  %697 = extractvalue %dx.types.ResRet.i32 %696, 0
  %698 = shl i32 %697, 4
  %699 = and i32 %698, 32752
  %700 = call float @dx.op.legacyF16ToF32(i32 131, i32 %699)  ; LegacyF16ToF32(value)
  %701 = lshr i32 %697, 7
  %702 = and i32 %701, 32752
  %703 = call float @dx.op.legacyF16ToF32(i32 131, i32 %702)  ; LegacyF16ToF32(value)
  %704 = fsub fast float 1.000000e+00, %682
  %705 = call float @dx.op.binary.f32(i32 35, float %704, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %706 = bitcast float %682 to i32
  %707 = sitofp i32 %706 to float
  %708 = fadd fast float %707, 0xC1CFBF8940000000
  %709 = fmul fast float %703, %708
  %710 = fadd fast float %709, 0x41CFBF8940000000
  %711 = fptosi float %710 to i32
  %712 = bitcast i32 %711 to float
  %713 = bitcast float %705 to i32
  %714 = sitofp i32 %713 to float
  %715 = fadd fast float %714, 0xC1CFBF8940000000
  %716 = fmul fast float %715, %703
  %717 = fadd fast float %716, 0x41CFBF8940000000
  %718 = fptosi float %717 to i32
  %719 = bitcast i32 %718 to float
  %720 = fmul fast float %712, %700
  %721 = fmul fast float %719, %700
  %722 = fsub fast float %705, %720
  %723 = fadd fast float %721, %705
  %724 = call float @dx.op.unary.f32(i32 7, float %722)  ; Saturate(value)
  %725 = call float @dx.op.unary.f32(i32 7, float %723)  ; Saturate(value)
  %726 = fsub fast float %694, %724
  %727 = fsub fast float %725, %724
  %728 = bitcast float %727 to i32
  %729 = sub nsw i32 2129859010, %728
  %730 = bitcast i32 %729 to float
  %731 = fmul fast float %730, %726
  %732 = call float @dx.op.unary.f32(i32 7, float %731)  ; Saturate(value)
  br label %733

; <label>:733                                     ; preds = %687, %681
  %734 = phi float [ %732, %687 ], [ %682, %681 ]
  %735 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %461, i32 undef)  ; BufferLoad(srv,index,wot)
  %736 = extractvalue %dx.types.ResRet.i32 %735, 0
  %737 = and i32 %736, 128
  %738 = icmp eq i32 %737, 0
  br i1 %738, label %755, label %739

; <label>:739                                     ; preds = %733
  %740 = add i32 %50, 408
  %741 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %740, i32 undef)  ; BufferLoad(srv,index,wot)
  %742 = extractvalue %dx.types.ResRet.i32 %741, 0
  %743 = add i32 %742, 0
  %744 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %743, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %745 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %744, %dx.types.Handle %96, float %568, float %569, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %746 = extractvalue %dx.types.ResRet.f32 %745, 0
  %747 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %461, i32 undef)  ; BufferLoad(srv,index,wot)
  %748 = extractvalue %dx.types.ResRet.i32 %747, 0
  %749 = and i32 %748, 524288
  %750 = icmp ne i32 %749, 0
  %751 = fcmp fast ogt float %746, 0x3FE0101020000000
  %752 = select i1 %751, float 1.000000e+00, float 0.000000e+00
  %753 = select i1 %750, float %752, float %746
  %754 = fmul fast float %753, %734
  br label %755

; <label>:755                                     ; preds = %739, %733
  %756 = phi float [ %754, %739 ], [ %734, %733 ]
  %757 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %461, i32 undef)  ; BufferLoad(srv,index,wot)
  %758 = extractvalue %dx.types.ResRet.i32 %757, 0
  %759 = and i32 %758, 16
  %760 = icmp eq i32 %759, 0
  br i1 %760, label %959, label %761

; <label>:761                                     ; preds = %755
  %762 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %484, i32 undef)  ; BufferLoad(srv,index,wot)
  %763 = extractvalue %dx.types.ResRet.i32 %762, 0
  %764 = add i32 %50, 360
  %765 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %764, i32 undef)  ; BufferLoad(srv,index,wot)
  %766 = extractvalue %dx.types.ResRet.i32 %765, 0
  %767 = add i32 %766, 0
  %768 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %767, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %769 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %768, %dx.types.Handle %95, float %568, float %569, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %770 = extractvalue %dx.types.ResRet.f32 %769, 0
  %771 = extractvalue %dx.types.ResRet.f32 %769, 1
  %772 = extractvalue %dx.types.ResRet.f32 %769, 2
  %773 = extractvalue %dx.types.ResRet.f32 %769, 3
  %774 = and i32 %763, 255
  %775 = uitofp i32 %774 to float
  %776 = lshr i32 %763, 8
  %777 = and i32 %776, 255
  %778 = uitofp i32 %777 to float
  %779 = fmul fast float %773, %775
  %780 = fadd fast float %779, %778
  %781 = fmul fast float %780, 0x3F70101000000000
  %782 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %461, i32 undef)  ; BufferLoad(srv,index,wot)
  %783 = extractvalue %dx.types.ResRet.i32 %782, 0
  %784 = and i32 %783, 512
  %785 = icmp eq i32 %784, 0
  br i1 %785, label %794, label %786

; <label>:786                                     ; preds = %761
  %787 = add i32 %50, 440
  %788 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %787, i32 undef)  ; BufferLoad(srv,index,wot)
  %789 = extractvalue %dx.types.ResRet.i32 %788, 0
  %790 = add i32 %789, 0
  %791 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %790, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %792 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %791, %dx.types.Handle %96, float %568, float %569, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %793 = extractvalue %dx.types.ResRet.f32 %792, 0
  br label %794

; <label>:794                                     ; preds = %786, %761
  %795 = phi float [ %793, %786 ], [ 1.000000e+00, %761 ]
  %796 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %461, i32 undef)  ; BufferLoad(srv,index,wot)
  %797 = extractvalue %dx.types.ResRet.i32 %796, 0
  %798 = and i32 %797, 33554432
  %799 = icmp eq i32 %798, 0
  br i1 %799, label %906, label %800

; <label>:800                                     ; preds = %794
  %801 = add i32 %50, 224
  %802 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %801, i32 undef)  ; BufferLoad(srv,index,wot)
  %803 = extractvalue %dx.types.ResRet.i32 %802, 0
  %804 = and i32 %803, 65535
  %805 = call float @dx.op.legacyF16ToF32(i32 131, i32 %804)  ; LegacyF16ToF32(value)
  %806 = lshr i32 %803, 16
  %807 = call float @dx.op.legacyF16ToF32(i32 131, i32 %806)  ; LegacyF16ToF32(value)
  %808 = add i32 %50, 228
  %809 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %808, i32 undef)  ; BufferLoad(srv,index,wot)
  %810 = extractvalue %dx.types.ResRet.i32 %809, 0
  %811 = and i32 %810, 65535
  %812 = call float @dx.op.legacyF16ToF32(i32 131, i32 %811)  ; LegacyF16ToF32(value)
  %813 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %242, i32 undef)  ; BufferLoad(srv,index,wot)
  %814 = extractvalue %dx.types.ResRet.i32 %813, 0
  %815 = lshr i32 %814, 24
  %816 = uitofp i32 %815 to float
  %817 = fmul fast float %816, 0x3F70101020000000
  %818 = and i32 %814, 255
  %819 = uitofp i32 %818 to float
  %820 = fmul fast float %819, 0x3F70101020000000
  %821 = lshr i32 %814, 8
  %822 = and i32 %821, 255
  %823 = uitofp i32 %822 to float
  %824 = fmul fast float %823, 0x3F70101020000000
  %825 = lshr i32 %814, 16
  %826 = and i32 %825, 255
  %827 = uitofp i32 %826 to float
  %828 = fmul fast float %827, 0x3F70101020000000
  %829 = add i32 %50, 220
  %830 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %829, i32 undef)  ; BufferLoad(srv,index,wot)
  %831 = extractvalue %dx.types.ResRet.i32 %830, 0
  %832 = lshr i32 %831, 24
  %833 = uitofp i32 %832 to float
  %834 = fmul fast float %833, 0x3F70101020000000
  %835 = and i32 %831, 255
  %836 = uitofp i32 %835 to float
  %837 = fmul fast float %836, 0x3F70101020000000
  %838 = lshr i32 %831, 8
  %839 = and i32 %838, 255
  %840 = uitofp i32 %839 to float
  %841 = fmul fast float %840, 0x3F70101020000000
  %842 = lshr i32 %831, 16
  %843 = and i32 %842, 255
  %844 = uitofp i32 %843 to float
  %845 = fmul fast float %844, 0x3F70101020000000
  %846 = bitcast float %770 to i32
  %847 = ashr i32 %846, 1
  %848 = sub nsw i32 1597463174, %847
  %849 = bitcast i32 %848 to float
  %850 = fmul fast float %770, 5.000000e-01
  %851 = fmul fast float %849, %849
  %852 = fmul fast float %851, %850
  %853 = fsub fast float 1.500000e+00, %852
  %854 = fmul fast float %849, %770
  %855 = fmul fast float %854, %853
  %856 = bitcast float %771 to i32
  %857 = ashr i32 %856, 1
  %858 = sub nsw i32 1597463174, %857
  %859 = bitcast i32 %858 to float
  %860 = fmul fast float %771, 5.000000e-01
  %861 = fmul fast float %859, %859
  %862 = fmul fast float %861, %860
  %863 = fsub fast float 1.500000e+00, %862
  %864 = fmul fast float %859, %771
  %865 = fmul fast float %864, %863
  %866 = bitcast float %772 to i32
  %867 = ashr i32 %866, 1
  %868 = sub nsw i32 1597463174, %867
  %869 = bitcast i32 %868 to float
  %870 = fmul fast float %772, 5.000000e-01
  %871 = fmul fast float %869, %869
  %872 = fmul fast float %871, %870
  %873 = fsub fast float 1.500000e+00, %872
  %874 = fmul fast float %869, %772
  %875 = fmul fast float %874, %873
  %876 = fsub fast float %855, %837
  %877 = fsub fast float %865, %841
  %878 = fsub fast float %875, %845
  %879 = fmul fast float %876, %805
  %880 = fmul fast float %877, %807
  %881 = fmul fast float %878, %812
  %882 = fadd fast float %879, %820
  %883 = fadd fast float %880, %824
  %884 = fadd fast float %881, %828
  %885 = call float @dx.op.unary.f32(i32 7, float %882)  ; Saturate(value)
  %886 = call float @dx.op.unary.f32(i32 7, float %883)  ; Saturate(value)
  %887 = call float @dx.op.unary.f32(i32 7, float %884)  ; Saturate(value)
  %888 = fmul fast float %885, %885
  %889 = fmul fast float %886, %886
  %890 = fmul fast float %887, %887
  %891 = fsub fast float %888, %770
  %892 = fsub fast float %889, %771
  %893 = fsub fast float %890, %772
  %894 = fmul fast float %891, %795
  %895 = fmul fast float %892, %795
  %896 = fmul fast float %893, %795
  %897 = fadd fast float %894, %770
  %898 = fadd fast float %895, %771
  %899 = fadd fast float %896, %772
  %900 = fadd fast float %817, %781
  %901 = fsub fast float %900, %834
  %902 = call float @dx.op.unary.f32(i32 7, float %901)  ; Saturate(value)
  %903 = fsub fast float %902, %781
  %904 = fmul fast float %903, %795
  %905 = fadd fast float %904, %781
  br label %959

; <label>:906                                     ; preds = %794
  %907 = and i32 %797, 134217728
  %908 = icmp eq i32 %907, 0
  br i1 %908, label %943, label %909

; <label>:909                                     ; preds = %906
  %910 = call float @dx.op.unary.f32(i32 24, float %247)  ; Sqrt(value)
  %911 = call float @dx.op.unary.f32(i32 24, float %251)  ; Sqrt(value)
  %912 = call float @dx.op.unary.f32(i32 24, float %255)  ; Sqrt(value)
  %913 = fadd fast float %910, -5.000000e-01
  %914 = fadd fast float %911, -5.000000e-01
  %915 = fadd fast float %912, -5.000000e-01
  %916 = fmul fast float %913, %795
  %917 = fmul fast float %914, %795
  %918 = fmul fast float %915, %795
  %919 = fadd fast float %916, 5.000000e-01
  %920 = fadd fast float %917, 5.000000e-01
  %921 = fadd fast float %918, 5.000000e-01
  %922 = call float @dx.op.unary.f32(i32 24, float %770)  ; Sqrt(value)
  %923 = call float @dx.op.unary.f32(i32 24, float %771)  ; Sqrt(value)
  %924 = call float @dx.op.unary.f32(i32 24, float %772)  ; Sqrt(value)
  %925 = fmul fast float %919, 2.000000e+00
  %926 = fsub fast float 1.000000e+00, %925
  %927 = fmul fast float %926, %922
  %928 = fadd fast float %927, %925
  %929 = fmul fast float %928, %922
  %930 = fmul fast float %920, 2.000000e+00
  %931 = fsub fast float 1.000000e+00, %930
  %932 = fmul fast float %931, %923
  %933 = fadd fast float %932, %930
  %934 = fmul fast float %933, %923
  %935 = fmul fast float %921, 2.000000e+00
  %936 = fsub fast float 1.000000e+00, %935
  %937 = fmul fast float %936, %924
  %938 = fadd fast float %937, %935
  %939 = fmul fast float %938, %924
  %940 = fmul fast float %929, %929
  %941 = fmul fast float %934, %934
  %942 = fmul fast float %939, %939
  br label %959

; <label>:943                                     ; preds = %906
  %944 = fmul fast float %247, %247
  %945 = fmul fast float %251, %251
  %946 = fmul fast float %255, %255
  %947 = fadd fast float %944, -1.000000e+00
  %948 = fadd fast float %945, -1.000000e+00
  %949 = fadd fast float %946, -1.000000e+00
  %950 = fmul fast float %795, %947
  %951 = fmul fast float %795, %948
  %952 = fmul fast float %795, %949
  %953 = fadd fast float %950, 1.000000e+00
  %954 = fadd fast float %951, 1.000000e+00
  %955 = fadd fast float %952, 1.000000e+00
  %956 = fmul fast float %953, %770
  %957 = fmul fast float %954, %771
  %958 = fmul fast float %955, %772
  br label %959

; <label>:959                                     ; preds = %943, %909, %800, %755
  %960 = phi float [ %905, %800 ], [ %781, %909 ], [ %781, %943 ], [ 0x3FA23C0BE0000000, %755 ]
  %961 = phi float [ %897, %800 ], [ %940, %909 ], [ %956, %943 ], [ 1.000000e+00, %755 ]
  %962 = phi float [ %898, %800 ], [ %941, %909 ], [ %957, %943 ], [ 1.000000e+00, %755 ]
  %963 = phi float [ %899, %800 ], [ %942, %909 ], [ %958, %943 ], [ 1.000000e+00, %755 ]
  %964 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %965 = extractvalue %dx.types.CBufRet.i32 %964, 1
  %966 = and i32 %965, 1
  %967 = icmp ne i32 %966, 0
  %968 = add i32 %50, 356
  %969 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %968, i32 undef)  ; BufferLoad(srv,index,wot)
  %970 = extractvalue %dx.types.ResRet.i32 %969, 0
  %971 = and i32 %970, 32
  %972 = icmp ne i32 %971, 0
  %973 = and i1 %967, %972
  %974 = select i1 %973, float 1.000000e+00, float %961
  %975 = select i1 %973, float 0x3FD3333340000000, float %962
  %976 = select i1 %973, float 0x3FD3333340000000, float %963
  %977 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %461, i32 undef)  ; BufferLoad(srv,index,wot)
  %978 = extractvalue %dx.types.ResRet.i32 %977, 0
  %979 = and i32 %978, 32
  %980 = icmp eq i32 %979, 0
  br i1 %980, label %1053, label %981

; <label>:981                                     ; preds = %959
  %982 = add i32 %50, 92
  %983 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %982, i32 undef)  ; BufferLoad(srv,index,wot)
  %984 = extractvalue %dx.types.ResRet.i32 %983, 0
  %985 = add i32 %50, 376
  %986 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %985, i32 undef)  ; BufferLoad(srv,index,wot)
  %987 = extractvalue %dx.types.ResRet.i32 %986, 0
  %988 = add i32 %987, 0
  %989 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %988, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %990 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %989, %dx.types.Handle %95, float %568, float %569, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %991 = extractvalue %dx.types.ResRet.f32 %990, 0
  %992 = extractvalue %dx.types.ResRet.f32 %990, 1
  %993 = extractvalue %dx.types.ResRet.f32 %990, 2
  %994 = extractvalue %dx.types.ResRet.f32 %990, 3
  %995 = and i32 %984, 255
  %996 = uitofp i32 %995 to float
  %997 = lshr i32 %984, 8
  %998 = and i32 %997, 255
  %999 = uitofp i32 %998 to float
  %1000 = lshr i32 %984, 16
  %1001 = and i32 %1000, 255
  %1002 = uitofp i32 %1001 to float
  %1003 = fmul fast float %1002, 0x3F70101000000000
  %1004 = fmul fast float %991, %996
  %1005 = fadd fast float %1004, %999
  %1006 = fmul fast float %1005, 0x3F70101000000000
  %1007 = fadd fast float %992, -5.000000e-01
  %1008 = fadd fast float %994, -5.000000e-01
  %1009 = fmul fast float %1007, %1003
  %1010 = fmul fast float %1008, %1003
  %1011 = fadd fast float %1009, 5.000000e-01
  %1012 = fadd fast float %1010, 5.000000e-01
  %1013 = fmul fast float %1011, 2.000000e+00
  %1014 = fadd fast float %1013, -1.000000e+00
  %1015 = fmul fast float %1012, 2.000000e+00
  %1016 = fadd fast float %1015, -1.000000e+00
  %1017 = fadd fast float %1014, %1016
  %1018 = fmul fast float %1017, 5.000000e-01
  %1019 = fsub fast float %1014, %1016
  %1020 = fmul fast float %1019, 5.000000e-01
  %1021 = call float @dx.op.unary.f32(i32 6, float %1018)  ; FAbs(value)
  %1022 = fsub fast float 1.000000e+00, %1021
  %1023 = call float @dx.op.unary.f32(i32 6, float %1020)  ; FAbs(value)
  %1024 = fsub fast float %1022, %1023
  %1025 = call float @dx.op.dot3.f32(i32 55, float %1018, float %1020, float %1024, float %1018, float %1020, float %1024)  ; Dot3(ax,ay,az,bx,by,bz)
  %1026 = call float @dx.op.unary.f32(i32 25, float %1025)  ; Rsqrt(value)
  %1027 = fmul fast float %1018, %1026
  %1028 = fmul fast float %1020, %1026
  %1029 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %461, i32 undef)  ; BufferLoad(srv,index,wot)
  %1030 = extractvalue %dx.types.ResRet.i32 %1029, 0
  %1031 = and i32 %1030, 67108864
  %1032 = icmp eq i32 %1031, 0
  br i1 %1032, label %1049, label %1033

; <label>:1033                                    ; preds = %981
  %1034 = add i32 %50, 280
  %1035 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1034, i32 undef)  ; BufferLoad(srv,index,wot)
  %1036 = extractvalue %dx.types.ResRet.i32 %1035, 0
  %1037 = and i32 %1036, 65535
  %1038 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1037)  ; LegacyF16ToF32(value)
  %1039 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %478, i32 undef)  ; BufferLoad(srv,index,wot)
  %1040 = extractvalue %dx.types.ResRet.i32 %1039, 0
  %1041 = and i32 %1040, 65535
  %1042 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1041)  ; LegacyF16ToF32(value)
  %1043 = lshr i32 %1036, 16
  %1044 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1043)  ; LegacyF16ToF32(value)
  %1045 = fsub fast float %1006, %1044
  %1046 = fmul fast float %1045, %1038
  %1047 = fadd fast float %1046, %1042
  %1048 = call float @dx.op.unary.f32(i32 7, float %1047)  ; Saturate(value)
  br label %1049

; <label>:1049                                    ; preds = %1033, %981
  %1050 = phi float [ %1048, %1033 ], [ %1006, %981 ]
  %1051 = call float @dx.op.dot2.f32(i32 54, float %1027, float %1028, float %472, float %473)  ; Dot2(ax,ay,bx,by)
  %1052 = call float @dx.op.dot2.f32(i32 54, float %1027, float %1028, float %474, float %475)  ; Dot2(ax,ay,bx,by)
  br label %1053

; <label>:1053                                    ; preds = %1049, %959
  %1054 = phi float [ %1050, %1049 ], [ 0x3FD6666660000000, %959 ]
  %1055 = phi float [ %1051, %1049 ], [ 0.000000e+00, %959 ]
  %1056 = phi float [ %1052, %1049 ], [ 0.000000e+00, %959 ]
  %1057 = phi float [ %993, %1049 ], [ 1.000000e+00, %959 ]
  %1058 = add i32 %50, 160
  %1059 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1058, i32 undef)  ; BufferLoad(srv,index,wot)
  %1060 = extractvalue %dx.types.ResRet.i32 %1059, 0
  %1061 = lshr i32 %1060, 22
  %1062 = shl nuw nsw i32 %1061, 5
  %1063 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1062)  ; LegacyF16ToF32(value)
  %1064 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %461, i32 undef)  ; BufferLoad(srv,index,wot)
  %1065 = extractvalue %dx.types.ResRet.i32 %1064, 0
  %1066 = and i32 %1065, 64
  %1067 = icmp eq i32 %1066, 0
  br i1 %1067, label %1101, label %1068

; <label>:1068                                    ; preds = %1053
  %1069 = add i32 %50, 392
  %1070 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1069, i32 undef)  ; BufferLoad(srv,index,wot)
  %1071 = extractvalue %dx.types.ResRet.i32 %1070, 0
  %1072 = add i32 %1071, 0
  %1073 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1072, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1074 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %461, i32 undef)  ; BufferLoad(srv,index,wot)
  %1075 = extractvalue %dx.types.ResRet.i32 %1074, 0
  %1076 = and i32 %1075, 131072
  %1077 = icmp eq i32 %1076, 0
  %1078 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1073, %dx.types.Handle %95, float %568, float %569, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1079 = extractvalue %dx.types.ResRet.f32 %1078, 0
  %1080 = extractvalue %dx.types.ResRet.f32 %1078, 1
  %1081 = extractvalue %dx.types.ResRet.f32 %1078, 2
  %1082 = fmul fast float %1079, %235
  %1083 = fmul fast float %1080, %238
  %1084 = fmul fast float %1081, %241
  br i1 %1077, label %1091, label %1085

; <label>:1085                                    ; preds = %1068
  %1086 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1087 = extractvalue %dx.types.CBufRet.f32 %1086, 0
  %1088 = fmul fast float %1087, %1082
  %1089 = fmul fast float %1087, %1083
  %1090 = fmul fast float %1087, %1084
  br label %1091

; <label>:1091                                    ; preds = %1085, %1068
  %1092 = phi float [ %1088, %1085 ], [ %1082, %1068 ]
  %1093 = phi float [ %1089, %1085 ], [ %1083, %1068 ]
  %1094 = phi float [ %1090, %1085 ], [ %1084, %1068 ]
  %1095 = fmul fast float %1092, %1063
  %1096 = select i1 %215, float %1095, float %1092
  %1097 = call float @dx.op.dot3.f32(i32 55, float %1096, float %1093, float %1094, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1098 = select i1 %215, float 0.000000e+00, float %1092
  %1099 = select i1 %215, float %1097, float %1093
  %1100 = select i1 %215, float 0.000000e+00, float %1094
  br label %1101

; <label>:1101                                    ; preds = %1091, %1053
  %1102 = phi float [ %1098, %1091 ], [ 0.000000e+00, %1053 ]
  %1103 = phi float [ %1099, %1091 ], [ 0.000000e+00, %1053 ]
  %1104 = phi float [ %1100, %1091 ], [ 0.000000e+00, %1053 ]
  %1105 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %461, i32 undef)  ; BufferLoad(srv,index,wot)
  %1106 = extractvalue %dx.types.ResRet.i32 %1105, 0
  %1107 = and i32 %1106, 1024
  %1108 = icmp eq i32 %1107, 0
  br i1 %1108, label %1139, label %1109

; <label>:1109                                    ; preds = %1101
  %1110 = add i32 %50, 152
  %1111 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1110, i32 undef)  ; BufferLoad(srv,index,wot)
  %1112 = extractvalue %dx.types.ResRet.i32 %1111, 0
  %1113 = and i32 %1112, 255
  %1114 = uitofp i32 %1113 to float
  %1115 = fmul fast float %1114, 0x3F70101020000000
  %1116 = lshr i32 %1112, 8
  %1117 = and i32 %1116, 255
  %1118 = uitofp i32 %1117 to float
  %1119 = fmul fast float %1118, 0x3F70101020000000
  %1120 = lshr i32 %1112, 16
  %1121 = and i32 %1120, 255
  %1122 = uitofp i32 %1121 to float
  %1123 = fmul fast float %1122, 0x3F70101020000000
  %1124 = fmul fast float %1115, %1115
  %1125 = fmul fast float %1119, %1119
  %1126 = fmul fast float %1123, %1123
  %1127 = add i32 %50, 456
  %1128 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1127, i32 undef)  ; BufferLoad(srv,index,wot)
  %1129 = extractvalue %dx.types.ResRet.i32 %1128, 0
  %1130 = add i32 %1129, 0
  %1131 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1130, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1132 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1131, %dx.types.Handle %96, float %568, float %569, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1133 = extractvalue %dx.types.ResRet.f32 %1132, 0
  %1134 = extractvalue %dx.types.ResRet.f32 %1132, 1
  %1135 = extractvalue %dx.types.ResRet.f32 %1132, 2
  %1136 = fmul fast float %1124, %1133
  %1137 = fmul fast float %1125, %1134
  %1138 = fmul fast float %1126, %1135
  br label %1139

; <label>:1139                                    ; preds = %1109, %1101
  %1140 = phi float [ %1136, %1109 ], [ 0.000000e+00, %1101 ]
  %1141 = phi float [ %1137, %1109 ], [ 0.000000e+00, %1101 ]
  %1142 = phi float [ %1138, %1109 ], [ 0.000000e+00, %1101 ]
  %1143 = fcmp fast ogt float %1140, 0.000000e+00
  %1144 = fcmp fast ogt float %1141, 0.000000e+00
  %1145 = fcmp fast ogt float %1142, 0.000000e+00
  %1146 = call float @dx.op.unary.f32(i32 23, float %1140)  ; Log(value)
  %1147 = call float @dx.op.unary.f32(i32 23, float %1141)  ; Log(value)
  %1148 = call float @dx.op.unary.f32(i32 23, float %1142)  ; Log(value)
  %1149 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1058, i32 undef)  ; BufferLoad(srv,index,wot)
  %1150 = extractvalue %dx.types.ResRet.i32 %1149, 0
  %1151 = lshr i32 %1150, 7
  %1152 = and i32 %1151, 32752
  %1153 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1152)  ; LegacyF16ToF32(value)
  %1154 = fmul fast float %1146, 0xBFE62E4300000000
  %1155 = fmul fast float %1154, %1153
  %1156 = fmul fast float %1147, 0xBFE62E4300000000
  %1157 = fmul fast float %1156, %1153
  %1158 = fmul fast float %1148, 0xBFE62E4300000000
  %1159 = fmul fast float %1158, %1153
  %1160 = select i1 %1143, float %1155, float 1.270000e+02
  %1161 = select i1 %1144, float %1157, float 1.270000e+02
  %1162 = select i1 %1145, float %1159, float 1.270000e+02
  %1163 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %461, i32 undef)  ; BufferLoad(srv,index,wot)
  %1164 = extractvalue %dx.types.ResRet.i32 %1163, 0
  %1165 = and i32 %1164, 10240
  %1166 = icmp eq i32 %1165, 0
  br i1 %1166, label %1211, label %1167

; <label>:1167                                    ; preds = %1139
  %1168 = add i32 %50, 472
  %1169 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1168, i32 undef)  ; BufferLoad(srv,index,wot)
  %1170 = extractvalue %dx.types.ResRet.i32 %1169, 0
  %1171 = add i32 %1170, 0
  %1172 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1171, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1173 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1172, %dx.types.Handle %96, float %568, float %569, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1174 = extractvalue %dx.types.ResRet.f32 %1173, 1
  %1175 = extractvalue %dx.types.ResRet.f32 %1173, 3
  %1176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %461, i32 undef)  ; BufferLoad(srv,index,wot)
  %1177 = extractvalue %dx.types.ResRet.i32 %1176, 0
  %1178 = and i32 %1177, 1048576
  %1179 = icmp ne i32 %1178, 0
  %1180 = and i32 %1177, 8192
  %1181 = icmp eq i32 %1180, 0
  br i1 %1181, label %1197, label %1182

; <label>:1182                                    ; preds = %1167
  %1183 = extractvalue %dx.types.ResRet.f32 %1173, 2
  %1184 = select i1 %1179, float %1183, float %1174
  %1185 = extractvalue %dx.types.ResRet.f32 %1173, 0
  %1186 = select i1 %1179, float %1185, float %1174
  %1187 = add i32 %50, 96
  %1188 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1187, i32 undef)  ; BufferLoad(srv,index,wot)
  %1189 = extractvalue %dx.types.ResRet.i32 %1188, 0
  %1190 = lshr i32 %1189, 16
  %1191 = and i32 %1190, 255
  %1192 = uitofp i32 %1191 to float
  %1193 = fmul fast float %1192, 0x3F80101020000000
  %1194 = fmul fast float %1193, %1186
  %1195 = fmul fast float %1193, %1174
  %1196 = fmul fast float %1193, %1184
  br label %1197

; <label>:1197                                    ; preds = %1182, %1167
  %1198 = phi float [ %1194, %1182 ], [ 0.000000e+00, %1167 ]
  %1199 = phi float [ %1195, %1182 ], [ 0.000000e+00, %1167 ]
  %1200 = phi float [ %1196, %1182 ], [ 0.000000e+00, %1167 ]
  %1201 = and i32 %1177, 2048
  %1202 = icmp eq i32 %1201, 0
  br i1 %1202, label %1211, label %1203

; <label>:1203                                    ; preds = %1197
  %1204 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1058, i32 undef)  ; BufferLoad(srv,index,wot)
  %1205 = extractvalue %dx.types.ResRet.i32 %1204, 0
  %1206 = shl i32 %1205, 4
  %1207 = and i32 %1206, 32752
  %1208 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1207)  ; LegacyF16ToF32(value)
  %1209 = fmul fast float %1208, %1175
  %1210 = call float @dx.op.binary.f32(i32 35, float %1209, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1211

; <label>:1211                                    ; preds = %1203, %1197, %1139
  %1212 = phi float [ %1198, %1203 ], [ %1198, %1197 ], [ 0.000000e+00, %1139 ]
  %1213 = phi float [ %1199, %1203 ], [ %1199, %1197 ], [ 0.000000e+00, %1139 ]
  %1214 = phi float [ %1200, %1203 ], [ %1200, %1197 ], [ 0.000000e+00, %1139 ]
  %1215 = phi float [ %1210, %1203 ], [ 0x3F70101020000000, %1197 ], [ 0x3F70101020000000, %1139 ]
  %1216 = add i32 %50, 96
  %1217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1216, i32 undef)  ; BufferLoad(srv,index,wot)
  %1218 = extractvalue %dx.types.ResRet.i32 %1217, 0
  %1219 = and i32 %1218, 255
  %1220 = uitofp i32 %1219 to float
  %1221 = lshr i32 %1218, 8
  %1222 = and i32 %1221, 255
  %1223 = uitofp i32 %1222 to float
  %1224 = call float @dx.op.dot3.f32(i32 55, float %974, float %975, float %976, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1225 = fmul fast float %1223, %1224
  %1226 = fadd fast float %1225, %1220
  %1227 = fmul fast float %1226, 0x3F70101020000000
  %1228 = call float @dx.op.unary.f32(i32 7, float %1227)  ; Saturate(value)
  br label %1229

; <label>:1229                                    ; preds = %1211, %454
  %1230 = phi float [ 0.000000e+00, %454 ], [ %1055, %1211 ]
  %1231 = phi float [ 0.000000e+00, %454 ], [ %1056, %1211 ]
  %1232 = phi float [ 0.000000e+00, %454 ], [ %974, %1211 ]
  %1233 = phi float [ 0.000000e+00, %454 ], [ %975, %1211 ]
  %1234 = phi float [ 0.000000e+00, %454 ], [ %976, %1211 ]
  %1235 = phi float [ 0.000000e+00, %454 ], [ %1102, %1211 ]
  %1236 = phi float [ 0.000000e+00, %454 ], [ %1103, %1211 ]
  %1237 = phi float [ 0.000000e+00, %454 ], [ %1104, %1211 ]
  %1238 = phi float [ 0.000000e+00, %454 ], [ %1160, %1211 ]
  %1239 = phi float [ 0.000000e+00, %454 ], [ %1161, %1211 ]
  %1240 = phi float [ 0.000000e+00, %454 ], [ %1162, %1211 ]
  %1241 = phi float [ 0.000000e+00, %454 ], [ %1212, %1211 ]
  %1242 = phi float [ 0.000000e+00, %454 ], [ %1213, %1211 ]
  %1243 = phi float [ 0.000000e+00, %454 ], [ %1214, %1211 ]
  %1244 = phi float [ 0.000000e+00, %454 ], [ %960, %1211 ]
  %1245 = phi float [ 0.000000e+00, %454 ], [ %756, %1211 ]
  %1246 = phi float [ 0.000000e+00, %454 ], [ %1054, %1211 ]
  %1247 = phi float [ 0.000000e+00, %454 ], [ %1057, %1211 ]
  %1248 = phi float [ 0.000000e+00, %454 ], [ %1215, %1211 ]
  %1249 = phi float [ 0.000000e+00, %454 ], [ %1228, %1211 ]
  br i1 %402, label %2287, label %1250

; <label>:1250                                    ; preds = %1229
  %1251 = icmp ult i32 %460, 2
  %1252 = add i32 %50, 40
  %1253 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1252, i32 undef)  ; BufferLoad(srv,index,wot)
  %1254 = extractvalue %dx.types.ResRet.i32 %1253, 0
  %1255 = add i32 %50, 44
  %1256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1255, i32 undef)  ; BufferLoad(srv,index,wot)
  %1257 = extractvalue %dx.types.ResRet.i32 %1256, 0
  %1258 = or i32 %1257, %1254
  %1259 = icmp eq i32 %1258, 0
  br i1 %1259, label %2287, label %1260

; <label>:1260                                    ; preds = %1250
  %1261 = and i32 %1254, 262144
  %1262 = icmp ne i32 %1261, 0
  %1263 = select i1 %1262, float %53, float 1.000000e+00
  %1264 = select i1 %1262, float %54, float 0.000000e+00
  %1265 = select i1 %1262, float %55, float 0.000000e+00
  %1266 = select i1 %1262, float %56, float 1.000000e+00
  %1267 = select i1 %1262, float %57, float %78
  %1268 = select i1 %1262, float %58, float %79
  %1269 = add i32 %50, 300
  %1270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1269, i32 undef)  ; BufferLoad(srv,index,wot)
  %1271 = extractvalue %dx.types.ResRet.i32 %1270, 0
  %1272 = lshr i32 %1271, 16
  %1273 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1272)  ; LegacyF16ToF32(value)
  %1274 = fmul fast float %1273, 0x3F50624DE0000000
  %1275 = add i32 %50, 104
  %1276 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1275, i32 undef)  ; BufferLoad(srv,index,wot)
  %1277 = extractvalue %dx.types.ResRet.i32 %1276, 0
  %1278 = lshr i32 %1277, 16
  %1279 = and i32 %1278, 255
  %1280 = lshr i32 %1277, 24
  %1281 = add i32 %50, 308
  %1282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1281, i32 undef)  ; BufferLoad(srv,index,wot)
  %1283 = extractvalue %dx.types.ResRet.i32 %1282, 0
  %1284 = and i32 %1283, 65535
  %1285 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1284)  ; LegacyF16ToF32(value)
  %1286 = lshr i32 %1283, 16
  %1287 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1286)  ; LegacyF16ToF32(value)
  %1288 = add i32 %50, 48
  %1289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1288, i32 undef)  ; BufferLoad(srv,index,wot)
  %1290 = extractvalue %dx.types.ResRet.i32 %1289, 0
  %1291 = lshr i32 %1290, 22
  %1292 = shl nuw nsw i32 %1291, 5
  %1293 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1292)  ; LegacyF16ToF32(value)
  %1294 = shl i32 %1290, 4
  %1295 = and i32 %1294, 32752
  %1296 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1295)  ; LegacyF16ToF32(value)
  %1297 = lshr i32 %1290, 7
  %1298 = and i32 %1297, 32752
  %1299 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1298)  ; LegacyF16ToF32(value)
  %1300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1301 = extractvalue %dx.types.CBufRet.f32 %1300, 3
  %1302 = fmul fast float %1301, 1.000000e+03
  %1303 = fmul fast float %312, %1302
  %1304 = call float @dx.op.unary.f32(i32 22, float %1303)  ; Frc(value)
  %1305 = fadd fast float %1304, %302
  %1306 = fmul fast float %313, %1302
  %1307 = call float @dx.op.unary.f32(i32 22, float %1306)  ; Frc(value)
  %1308 = fadd fast float %1307, %304
  %1309 = fmul fast float %1274, %1302
  %1310 = call float @dx.op.unary.f32(i32 22, float %1309)  ; Frc(value)
  %1311 = fmul fast float %1310, 0x401921FB60000000
  %1312 = fadd fast float %1311, %1293
  %1313 = call float @dx.op.unary.f32(i32 13, float %1312)  ; Sin(value)
  %1314 = call float @dx.op.unary.f32(i32 12, float %1312)  ; Cos(value)
  %1315 = fsub fast float -0.000000e+00, %1313
  %1316 = fadd fast float %1267, -5.000000e-01
  %1317 = fadd fast float %1268, -5.000000e-01
  %1318 = fmul fast float %1285, %1316
  %1319 = fmul fast float %1287, %1317
  %1320 = fadd fast float %1318, 5.000000e-01
  %1321 = fadd fast float %1319, 5.000000e-01
  %1322 = fmul fast float %1296, %1320
  %1323 = fmul fast float %1299, %1321
  %1324 = fmul fast float %1314, %1322
  %1325 = call float @dx.op.tertiary.f32(i32 46, float %1315, float %1323, float %1324)  ; FMad(a,b,c)
  %1326 = fmul fast float %1313, %1322
  %1327 = call float @dx.op.tertiary.f32(i32 46, float %1314, float %1323, float %1326)  ; FMad(a,b,c)
  %1328 = fadd fast float %1305, %1325
  %1329 = fadd fast float %1308, %1327
  %1330 = icmp ugt i32 %1279, 1
  %1331 = icmp ugt i32 %1277, 33554431
  %1332 = or i1 %1331, %1330
  br i1 %1332, label %1333, label %1358

; <label>:1333                                    ; preds = %1260
  %1334 = add i32 %50, 244
  %1335 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1334, i32 undef)  ; BufferLoad(srv,index,wot)
  %1336 = extractvalue %dx.types.ResRet.i32 %1335, 0
  %1337 = lshr i32 %1336, 16
  %1338 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1337)  ; LegacyF16ToF32(value)
  %1339 = fmul fast float %1301, %1338
  %1340 = call float @dx.op.unary.f32(i32 22, float %1339)  ; Frc(value)
  %1341 = mul nuw nsw i32 %1279, %1280
  %1342 = uitofp i32 %1341 to float
  %1343 = fmul fast float %1340, %1342
  %1344 = call float @dx.op.unary.f32(i32 27, float %1343)  ; Round_ni(value)
  %1345 = fptoui float %1344 to i32
  %1346 = urem i32 %1345, %1279
  %1347 = udiv i32 %1345, %1280
  %1348 = call float @dx.op.unary.f32(i32 22, float %1328)  ; Frc(value)
  %1349 = call float @dx.op.unary.f32(i32 22, float %1329)  ; Frc(value)
  %1350 = uitofp i32 %1346 to float
  %1351 = uitofp i32 %1347 to float
  %1352 = fadd fast float %1348, %1350
  %1353 = fadd fast float %1349, %1351
  %1354 = uitofp i32 %1279 to float
  %1355 = uitofp i32 %1280 to float
  %1356 = fdiv fast float %1352, %1354
  %1357 = fdiv fast float %1353, %1355
  br label %1358

; <label>:1358                                    ; preds = %1333, %1260
  %1359 = phi float [ %1356, %1333 ], [ %1328, %1260 ]
  %1360 = phi float [ %1357, %1333 ], [ %1329, %1260 ]
  %1361 = and i32 %1254, 16777216
  %1362 = icmp eq i32 %1361, 0
  br i1 %1362, label %1472, label %1363

; <label>:1363                                    ; preds = %1358
  %1364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1365 = extractvalue %dx.types.CBufRet.f32 %1364, 0
  %1366 = extractvalue %dx.types.CBufRet.f32 %1364, 1
  %1367 = extractvalue %dx.types.CBufRet.f32 %1364, 2
  %1368 = fadd fast float %1365, %154
  %1369 = fadd fast float %1366, %155
  %1370 = fadd fast float %1367, %156
  %1371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1372 = extractvalue %dx.types.CBufRet.f32 %1371, 0
  %1373 = call float @dx.op.unary.f32(i32 7, float %1372)  ; Saturate(value)
  %1374 = icmp eq i32 %51, 65535
  br i1 %1374, label %1469, label %1375

; <label>:1375                                    ; preds = %1363
  %1376 = lshr i32 %51, 1
  %1377 = shl i32 %1376, 2
  %1378 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1377, i32 undef)  ; BufferLoad(srv,index,wot)
  %1379 = extractvalue %dx.types.ResRet.i32 %1378, 0
  %1380 = and i32 %51, 1
  %1381 = icmp ne i32 %1380, 0
  %1382 = lshr i32 %1379, 16
  %1383 = and i32 %1379, 65535
  %1384 = select i1 %1381, i32 %1382, i32 %1383
  %1385 = icmp eq i32 %1384, 65535
  br i1 %1385, label %1465, label %1386

; <label>:1386                                    ; preds = %1375
  %1387 = mul nuw nsw i32 %1384, 40
  %1388 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %1387, i32 undef)  ; BufferLoad(srv,index,wot)
  %1389 = extractvalue %dx.types.ResRet.f32 %1388, 0
  %1390 = extractvalue %dx.types.ResRet.f32 %1388, 1
  %1391 = extractvalue %dx.types.ResRet.f32 %1388, 2
  %1392 = add nuw nsw i32 %1387, 12
  %1393 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %1392, i32 undef)  ; BufferLoad(srv,index,wot)
  %1394 = extractvalue %dx.types.ResRet.f32 %1393, 0
  %1395 = extractvalue %dx.types.ResRet.f32 %1393, 1
  %1396 = extractvalue %dx.types.ResRet.f32 %1393, 2
  %1397 = add nuw nsw i32 %1387, 24
  %1398 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %1397, i32 undef)  ; BufferLoad(srv,index,wot)
  %1399 = extractvalue %dx.types.ResRet.f32 %1398, 0
  %1400 = extractvalue %dx.types.ResRet.f32 %1398, 1
  %1401 = extractvalue %dx.types.ResRet.f32 %1398, 2
  %1402 = add nuw nsw i32 %1387, 36
  %1403 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %1402, i32 undef)  ; BufferLoad(srv,index,wot)
  %1404 = extractvalue %dx.types.ResRet.f32 %1403, 0
  %1405 = fsub fast float %1368, %1389
  %1406 = fsub fast float %1369, %1390
  %1407 = fsub fast float %1370, %1391
  %1408 = fmul fast float %1404, %1405
  %1409 = fmul fast float %1404, %1406
  %1410 = fmul fast float %1404, %1407
  %1411 = call float @dx.op.unary.f32(i32 27, float %1408)  ; Round_ni(value)
  %1412 = call float @dx.op.unary.f32(i32 27, float %1409)  ; Round_ni(value)
  %1413 = call float @dx.op.unary.f32(i32 27, float %1410)  ; Round_ni(value)
  %1414 = fadd fast float %1411, 5.000000e-01
  %1415 = fadd fast float %1412, 5.000000e-01
  %1416 = fadd fast float %1413, 5.000000e-01
  %1417 = fmul fast float %1414, %1394
  %1418 = fmul fast float %1415, %1395
  %1419 = fmul fast float %1416, %1396
  %1420 = shl i32 %51, 2
  %1421 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %1420, i32 undef)  ; BufferLoad(srv,index,wot)
  %1422 = extractvalue %dx.types.ResRet.i32 %1421, 0
  %1423 = add i32 %1422, 0
  %1424 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1423, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1425 = call float @dx.op.unary.f32(i32 22, float %1417)  ; Frc(value)
  %1426 = call float @dx.op.unary.f32(i32 22, float %1418)  ; Frc(value)
  %1427 = call float @dx.op.unary.f32(i32 22, float %1419)  ; Frc(value)
  %1428 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1424, %dx.types.Handle %45, float %1425, float %1426, float %1427, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1429 = extractvalue %dx.types.ResRet.f32 %1428, 0
  %1430 = extractvalue %dx.types.ResRet.f32 %1428, 1
  %1431 = extractvalue %dx.types.ResRet.f32 %1428, 2
  %1432 = fmul fast float %1429, 1.023000e+03
  %1433 = fmul fast float %1430, 1.023000e+03
  %1434 = fmul fast float %1431, 1.023000e+03
  %1435 = fadd fast float %1432, 5.000000e-01
  %1436 = fadd fast float %1433, 5.000000e-01
  %1437 = fadd fast float %1434, 5.000000e-01
  %1438 = call float @dx.op.unary.f32(i32 27, float %1435)  ; Round_ni(value)
  %1439 = call float @dx.op.unary.f32(i32 27, float %1436)  ; Round_ni(value)
  %1440 = call float @dx.op.unary.f32(i32 27, float %1437)  ; Round_ni(value)
  %1441 = fsub fast float %1408, %1411
  %1442 = fsub fast float %1409, %1412
  %1443 = fsub fast float %1410, %1413
  %1444 = fmul fast float %1441, 7.500000e-01
  %1445 = fmul fast float %1442, 7.500000e-01
  %1446 = fmul fast float %1443, 7.500000e-01
  %1447 = fadd fast float %1411, 1.250000e-01
  %1448 = fadd fast float %1447, %1444
  %1449 = fadd fast float %1448, %1438
  %1450 = fadd fast float %1412, 1.250000e-01
  %1451 = fadd fast float %1450, %1445
  %1452 = fadd fast float %1451, %1439
  %1453 = fadd fast float %1413, 1.250000e-01
  %1454 = fadd fast float %1453, %1446
  %1455 = fadd fast float %1454, %1440
  %1456 = fmul fast float %1449, %1399
  %1457 = fmul fast float %1452, %1400
  %1458 = fmul fast float %1455, %1401
  %1459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %1420, i32 undef)  ; BufferLoad(srv,index,wot)
  %1460 = extractvalue %dx.types.ResRet.i32 %1459, 0
  %1461 = add i32 %1460, 0
  %1462 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1461, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1463 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1462, %dx.types.Handle %43, float %1456, float %1457, float %1458, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1464 = extractvalue %dx.types.ResRet.f32 %1463, 0
  br label %1465

; <label>:1465                                    ; preds = %1386, %1375
  %1466 = phi float [ %1464, %1386 ], [ -1.000000e+00, %1375 ]
  %1467 = fadd fast float %1466, %1373
  %1468 = call float @dx.op.unary.f32(i32 7, float %1467)  ; Saturate(value)
  br label %1469

; <label>:1469                                    ; preds = %1465, %1363
  %1470 = phi float [ %1468, %1465 ], [ %1373, %1363 ]
  %1471 = fmul fast float %1470, %457
  br label %1472

; <label>:1472                                    ; preds = %1469, %1358
  %1473 = phi float [ %1471, %1469 ], [ %457, %1358 ]
  %1474 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1252, i32 undef)  ; BufferLoad(srv,index,wot)
  %1475 = extractvalue %dx.types.ResRet.i32 %1474, 0
  %1476 = and i32 %1475, 256
  %1477 = icmp eq i32 %1476, 0
  br i1 %1477, label %1524, label %1478

; <label>:1478                                    ; preds = %1472
  %1479 = add i32 %50, 428
  %1480 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1479, i32 undef)  ; BufferLoad(srv,index,wot)
  %1481 = extractvalue %dx.types.ResRet.i32 %1480, 0
  %1482 = add i32 %1481, 0
  %1483 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1482, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1484 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1483, %dx.types.Handle %96, float %1359, float %1360, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1485 = extractvalue %dx.types.ResRet.f32 %1484, 0
  %1486 = add i32 %50, 116
  %1487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1486, i32 undef)  ; BufferLoad(srv,index,wot)
  %1488 = extractvalue %dx.types.ResRet.i32 %1487, 0
  %1489 = shl i32 %1488, 4
  %1490 = and i32 %1489, 32752
  %1491 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1490)  ; LegacyF16ToF32(value)
  %1492 = lshr i32 %1488, 7
  %1493 = and i32 %1492, 32752
  %1494 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1493)  ; LegacyF16ToF32(value)
  %1495 = fsub fast float 1.000000e+00, %1473
  %1496 = call float @dx.op.binary.f32(i32 35, float %1495, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1497 = bitcast float %1473 to i32
  %1498 = sitofp i32 %1497 to float
  %1499 = fadd fast float %1498, 0xC1CFBF8940000000
  %1500 = fmul fast float %1494, %1499
  %1501 = fadd fast float %1500, 0x41CFBF8940000000
  %1502 = fptosi float %1501 to i32
  %1503 = bitcast i32 %1502 to float
  %1504 = bitcast float %1496 to i32
  %1505 = sitofp i32 %1504 to float
  %1506 = fadd fast float %1505, 0xC1CFBF8940000000
  %1507 = fmul fast float %1506, %1494
  %1508 = fadd fast float %1507, 0x41CFBF8940000000
  %1509 = fptosi float %1508 to i32
  %1510 = bitcast i32 %1509 to float
  %1511 = fmul fast float %1503, %1491
  %1512 = fmul fast float %1510, %1491
  %1513 = fsub fast float %1496, %1511
  %1514 = fadd fast float %1512, %1496
  %1515 = call float @dx.op.unary.f32(i32 7, float %1513)  ; Saturate(value)
  %1516 = call float @dx.op.unary.f32(i32 7, float %1514)  ; Saturate(value)
  %1517 = fsub fast float %1485, %1515
  %1518 = fsub fast float %1516, %1515
  %1519 = bitcast float %1518 to i32
  %1520 = sub nsw i32 2129859010, %1519
  %1521 = bitcast i32 %1520 to float
  %1522 = fmul fast float %1521, %1517
  %1523 = call float @dx.op.unary.f32(i32 7, float %1522)  ; Saturate(value)
  br label %1524

; <label>:1524                                    ; preds = %1478, %1472
  %1525 = phi float [ %1523, %1478 ], [ %1473, %1472 ]
  %1526 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1252, i32 undef)  ; BufferLoad(srv,index,wot)
  %1527 = extractvalue %dx.types.ResRet.i32 %1526, 0
  %1528 = and i32 %1527, 128
  %1529 = icmp eq i32 %1528, 0
  br i1 %1529, label %1546, label %1530

; <label>:1530                                    ; preds = %1524
  %1531 = add i32 %50, 412
  %1532 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1531, i32 undef)  ; BufferLoad(srv,index,wot)
  %1533 = extractvalue %dx.types.ResRet.i32 %1532, 0
  %1534 = add i32 %1533, 0
  %1535 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1534, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1536 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1535, %dx.types.Handle %96, float %1359, float %1360, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1537 = extractvalue %dx.types.ResRet.f32 %1536, 0
  %1538 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1252, i32 undef)  ; BufferLoad(srv,index,wot)
  %1539 = extractvalue %dx.types.ResRet.i32 %1538, 0
  %1540 = and i32 %1539, 524288
  %1541 = icmp ne i32 %1540, 0
  %1542 = fcmp fast ogt float %1537, 0x3FE0101020000000
  %1543 = select i1 %1542, float 1.000000e+00, float 0.000000e+00
  %1544 = select i1 %1541, float %1543, float %1537
  %1545 = fmul fast float %1544, %1525
  br label %1546

; <label>:1546                                    ; preds = %1530, %1524
  %1547 = phi float [ %1545, %1530 ], [ %1525, %1524 ]
  %1548 = fcmp fast ult float %1547, 0x3F70101020000000
  br i1 %1548, label %2287, label %1549

; <label>:1549                                    ; preds = %1546
  %1550 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1252, i32 undef)  ; BufferLoad(srv,index,wot)
  %1551 = extractvalue %dx.types.ResRet.i32 %1550, 0
  %1552 = and i32 %1551, 16
  %1553 = icmp eq i32 %1552, 0
  br i1 %1553, label %1752, label %1554

; <label>:1554                                    ; preds = %1549
  %1555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1275, i32 undef)  ; BufferLoad(srv,index,wot)
  %1556 = extractvalue %dx.types.ResRet.i32 %1555, 0
  %1557 = add i32 %50, 364
  %1558 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1557, i32 undef)  ; BufferLoad(srv,index,wot)
  %1559 = extractvalue %dx.types.ResRet.i32 %1558, 0
  %1560 = add i32 %1559, 0
  %1561 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1560, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1562 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1561, %dx.types.Handle %95, float %1359, float %1360, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1563 = extractvalue %dx.types.ResRet.f32 %1562, 0
  %1564 = extractvalue %dx.types.ResRet.f32 %1562, 1
  %1565 = extractvalue %dx.types.ResRet.f32 %1562, 2
  %1566 = extractvalue %dx.types.ResRet.f32 %1562, 3
  %1567 = and i32 %1556, 255
  %1568 = uitofp i32 %1567 to float
  %1569 = lshr i32 %1556, 8
  %1570 = and i32 %1569, 255
  %1571 = uitofp i32 %1570 to float
  %1572 = fmul fast float %1566, %1568
  %1573 = fadd fast float %1572, %1571
  %1574 = fmul fast float %1573, 0x3F70101000000000
  %1575 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1252, i32 undef)  ; BufferLoad(srv,index,wot)
  %1576 = extractvalue %dx.types.ResRet.i32 %1575, 0
  %1577 = and i32 %1576, 512
  %1578 = icmp eq i32 %1577, 0
  br i1 %1578, label %1587, label %1579

; <label>:1579                                    ; preds = %1554
  %1580 = add i32 %50, 444
  %1581 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1580, i32 undef)  ; BufferLoad(srv,index,wot)
  %1582 = extractvalue %dx.types.ResRet.i32 %1581, 0
  %1583 = add i32 %1582, 0
  %1584 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1583, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1585 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1584, %dx.types.Handle %96, float %1359, float %1360, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1586 = extractvalue %dx.types.ResRet.f32 %1585, 0
  br label %1587

; <label>:1587                                    ; preds = %1579, %1554
  %1588 = phi float [ %1586, %1579 ], [ 1.000000e+00, %1554 ]
  %1589 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1252, i32 undef)  ; BufferLoad(srv,index,wot)
  %1590 = extractvalue %dx.types.ResRet.i32 %1589, 0
  %1591 = and i32 %1590, 33554432
  %1592 = icmp eq i32 %1591, 0
  br i1 %1592, label %1699, label %1593

; <label>:1593                                    ; preds = %1587
  %1594 = add i32 %50, 240
  %1595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1594, i32 undef)  ; BufferLoad(srv,index,wot)
  %1596 = extractvalue %dx.types.ResRet.i32 %1595, 0
  %1597 = and i32 %1596, 65535
  %1598 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1597)  ; LegacyF16ToF32(value)
  %1599 = lshr i32 %1596, 16
  %1600 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1599)  ; LegacyF16ToF32(value)
  %1601 = add i32 %50, 244
  %1602 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1601, i32 undef)  ; BufferLoad(srv,index,wot)
  %1603 = extractvalue %dx.types.ResRet.i32 %1602, 0
  %1604 = and i32 %1603, 65535
  %1605 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1604)  ; LegacyF16ToF32(value)
  %1606 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %284, i32 undef)  ; BufferLoad(srv,index,wot)
  %1607 = extractvalue %dx.types.ResRet.i32 %1606, 0
  %1608 = lshr i32 %1607, 24
  %1609 = uitofp i32 %1608 to float
  %1610 = fmul fast float %1609, 0x3F70101020000000
  %1611 = and i32 %1607, 255
  %1612 = uitofp i32 %1611 to float
  %1613 = fmul fast float %1612, 0x3F70101020000000
  %1614 = lshr i32 %1607, 8
  %1615 = and i32 %1614, 255
  %1616 = uitofp i32 %1615 to float
  %1617 = fmul fast float %1616, 0x3F70101020000000
  %1618 = lshr i32 %1607, 16
  %1619 = and i32 %1618, 255
  %1620 = uitofp i32 %1619 to float
  %1621 = fmul fast float %1620, 0x3F70101020000000
  %1622 = add i32 %50, 236
  %1623 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1622, i32 undef)  ; BufferLoad(srv,index,wot)
  %1624 = extractvalue %dx.types.ResRet.i32 %1623, 0
  %1625 = lshr i32 %1624, 24
  %1626 = uitofp i32 %1625 to float
  %1627 = fmul fast float %1626, 0x3F70101020000000
  %1628 = and i32 %1624, 255
  %1629 = uitofp i32 %1628 to float
  %1630 = fmul fast float %1629, 0x3F70101020000000
  %1631 = lshr i32 %1624, 8
  %1632 = and i32 %1631, 255
  %1633 = uitofp i32 %1632 to float
  %1634 = fmul fast float %1633, 0x3F70101020000000
  %1635 = lshr i32 %1624, 16
  %1636 = and i32 %1635, 255
  %1637 = uitofp i32 %1636 to float
  %1638 = fmul fast float %1637, 0x3F70101020000000
  %1639 = bitcast float %1563 to i32
  %1640 = ashr i32 %1639, 1
  %1641 = sub nsw i32 1597463174, %1640
  %1642 = bitcast i32 %1641 to float
  %1643 = fmul fast float %1563, 5.000000e-01
  %1644 = fmul fast float %1642, %1642
  %1645 = fmul fast float %1644, %1643
  %1646 = fsub fast float 1.500000e+00, %1645
  %1647 = fmul fast float %1642, %1563
  %1648 = fmul fast float %1647, %1646
  %1649 = bitcast float %1564 to i32
  %1650 = ashr i32 %1649, 1
  %1651 = sub nsw i32 1597463174, %1650
  %1652 = bitcast i32 %1651 to float
  %1653 = fmul fast float %1564, 5.000000e-01
  %1654 = fmul fast float %1652, %1652
  %1655 = fmul fast float %1654, %1653
  %1656 = fsub fast float 1.500000e+00, %1655
  %1657 = fmul fast float %1652, %1564
  %1658 = fmul fast float %1657, %1656
  %1659 = bitcast float %1565 to i32
  %1660 = ashr i32 %1659, 1
  %1661 = sub nsw i32 1597463174, %1660
  %1662 = bitcast i32 %1661 to float
  %1663 = fmul fast float %1565, 5.000000e-01
  %1664 = fmul fast float %1662, %1662
  %1665 = fmul fast float %1664, %1663
  %1666 = fsub fast float 1.500000e+00, %1665
  %1667 = fmul fast float %1662, %1565
  %1668 = fmul fast float %1667, %1666
  %1669 = fsub fast float %1648, %1630
  %1670 = fsub fast float %1658, %1634
  %1671 = fsub fast float %1668, %1638
  %1672 = fmul fast float %1669, %1598
  %1673 = fmul fast float %1670, %1600
  %1674 = fmul fast float %1671, %1605
  %1675 = fadd fast float %1672, %1613
  %1676 = fadd fast float %1673, %1617
  %1677 = fadd fast float %1674, %1621
  %1678 = call float @dx.op.unary.f32(i32 7, float %1675)  ; Saturate(value)
  %1679 = call float @dx.op.unary.f32(i32 7, float %1676)  ; Saturate(value)
  %1680 = call float @dx.op.unary.f32(i32 7, float %1677)  ; Saturate(value)
  %1681 = fmul fast float %1678, %1678
  %1682 = fmul fast float %1679, %1679
  %1683 = fmul fast float %1680, %1680
  %1684 = fsub fast float %1681, %1563
  %1685 = fsub fast float %1682, %1564
  %1686 = fsub fast float %1683, %1565
  %1687 = fmul fast float %1684, %1588
  %1688 = fmul fast float %1685, %1588
  %1689 = fmul fast float %1686, %1588
  %1690 = fadd fast float %1687, %1563
  %1691 = fadd fast float %1688, %1564
  %1692 = fadd fast float %1689, %1565
  %1693 = fadd fast float %1610, %1574
  %1694 = fsub fast float %1693, %1627
  %1695 = call float @dx.op.unary.f32(i32 7, float %1694)  ; Saturate(value)
  %1696 = fsub fast float %1695, %1574
  %1697 = fmul fast float %1696, %1588
  %1698 = fadd fast float %1697, %1574
  br label %1752

; <label>:1699                                    ; preds = %1587
  %1700 = and i32 %1590, 134217728
  %1701 = icmp eq i32 %1700, 0
  br i1 %1701, label %1736, label %1702

; <label>:1702                                    ; preds = %1699
  %1703 = call float @dx.op.unary.f32(i32 24, float %289)  ; Sqrt(value)
  %1704 = call float @dx.op.unary.f32(i32 24, float %293)  ; Sqrt(value)
  %1705 = call float @dx.op.unary.f32(i32 24, float %297)  ; Sqrt(value)
  %1706 = fadd fast float %1703, -5.000000e-01
  %1707 = fadd fast float %1704, -5.000000e-01
  %1708 = fadd fast float %1705, -5.000000e-01
  %1709 = fmul fast float %1706, %1588
  %1710 = fmul fast float %1707, %1588
  %1711 = fmul fast float %1708, %1588
  %1712 = fadd fast float %1709, 5.000000e-01
  %1713 = fadd fast float %1710, 5.000000e-01
  %1714 = fadd fast float %1711, 5.000000e-01
  %1715 = call float @dx.op.unary.f32(i32 24, float %1563)  ; Sqrt(value)
  %1716 = call float @dx.op.unary.f32(i32 24, float %1564)  ; Sqrt(value)
  %1717 = call float @dx.op.unary.f32(i32 24, float %1565)  ; Sqrt(value)
  %1718 = fmul fast float %1712, 2.000000e+00
  %1719 = fsub fast float 1.000000e+00, %1718
  %1720 = fmul fast float %1719, %1715
  %1721 = fadd fast float %1720, %1718
  %1722 = fmul fast float %1721, %1715
  %1723 = fmul fast float %1713, 2.000000e+00
  %1724 = fsub fast float 1.000000e+00, %1723
  %1725 = fmul fast float %1724, %1716
  %1726 = fadd fast float %1725, %1723
  %1727 = fmul fast float %1726, %1716
  %1728 = fmul fast float %1714, 2.000000e+00
  %1729 = fsub fast float 1.000000e+00, %1728
  %1730 = fmul fast float %1729, %1717
  %1731 = fadd fast float %1730, %1728
  %1732 = fmul fast float %1731, %1717
  %1733 = fmul fast float %1722, %1722
  %1734 = fmul fast float %1727, %1727
  %1735 = fmul fast float %1732, %1732
  br label %1752

; <label>:1736                                    ; preds = %1699
  %1737 = fmul fast float %289, %289
  %1738 = fmul fast float %293, %293
  %1739 = fmul fast float %297, %297
  %1740 = fadd fast float %1737, -1.000000e+00
  %1741 = fadd fast float %1738, -1.000000e+00
  %1742 = fadd fast float %1739, -1.000000e+00
  %1743 = fmul fast float %1588, %1740
  %1744 = fmul fast float %1588, %1741
  %1745 = fmul fast float %1588, %1742
  %1746 = fadd fast float %1743, 1.000000e+00
  %1747 = fadd fast float %1744, 1.000000e+00
  %1748 = fadd fast float %1745, 1.000000e+00
  %1749 = fmul fast float %1746, %1563
  %1750 = fmul fast float %1747, %1564
  %1751 = fmul fast float %1748, %1565
  br label %1752

; <label>:1752                                    ; preds = %1736, %1702, %1593, %1549
  %1753 = phi float [ %1698, %1593 ], [ %1574, %1702 ], [ %1574, %1736 ], [ 0x3FA23C0BE0000000, %1549 ]
  %1754 = phi float [ %1690, %1593 ], [ %1733, %1702 ], [ %1749, %1736 ], [ 1.000000e+00, %1549 ]
  %1755 = phi float [ %1691, %1593 ], [ %1734, %1702 ], [ %1750, %1736 ], [ 1.000000e+00, %1549 ]
  %1756 = phi float [ %1692, %1593 ], [ %1735, %1702 ], [ %1751, %1736 ], [ 1.000000e+00, %1549 ]
  %1757 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1758 = extractvalue %dx.types.CBufRet.i32 %1757, 1
  %1759 = and i32 %1758, 1
  %1760 = icmp ne i32 %1759, 0
  %1761 = add i32 %50, 356
  %1762 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1761, i32 undef)  ; BufferLoad(srv,index,wot)
  %1763 = extractvalue %dx.types.ResRet.i32 %1762, 0
  %1764 = and i32 %1763, 32
  %1765 = icmp ne i32 %1764, 0
  %1766 = and i1 %1760, %1765
  %1767 = select i1 %1766, float 1.000000e+00, float %1754
  %1768 = select i1 %1766, float 0x3FD3333340000000, float %1755
  %1769 = select i1 %1766, float 0x3FD3333340000000, float %1756
  %1770 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1252, i32 undef)  ; BufferLoad(srv,index,wot)
  %1771 = extractvalue %dx.types.ResRet.i32 %1770, 0
  %1772 = and i32 %1771, 32
  %1773 = icmp eq i32 %1772, 0
  br i1 %1773, label %1846, label %1774

; <label>:1774                                    ; preds = %1752
  %1775 = add i32 %50, 108
  %1776 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1775, i32 undef)  ; BufferLoad(srv,index,wot)
  %1777 = extractvalue %dx.types.ResRet.i32 %1776, 0
  %1778 = add i32 %50, 380
  %1779 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1778, i32 undef)  ; BufferLoad(srv,index,wot)
  %1780 = extractvalue %dx.types.ResRet.i32 %1779, 0
  %1781 = add i32 %1780, 0
  %1782 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1781, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1783 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1782, %dx.types.Handle %95, float %1359, float %1360, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1784 = extractvalue %dx.types.ResRet.f32 %1783, 0
  %1785 = extractvalue %dx.types.ResRet.f32 %1783, 1
  %1786 = extractvalue %dx.types.ResRet.f32 %1783, 2
  %1787 = extractvalue %dx.types.ResRet.f32 %1783, 3
  %1788 = and i32 %1777, 255
  %1789 = uitofp i32 %1788 to float
  %1790 = lshr i32 %1777, 8
  %1791 = and i32 %1790, 255
  %1792 = uitofp i32 %1791 to float
  %1793 = lshr i32 %1777, 16
  %1794 = and i32 %1793, 255
  %1795 = uitofp i32 %1794 to float
  %1796 = fmul fast float %1795, 0x3F70101000000000
  %1797 = fmul fast float %1784, %1789
  %1798 = fadd fast float %1797, %1792
  %1799 = fmul fast float %1798, 0x3F70101000000000
  %1800 = fadd fast float %1785, -5.000000e-01
  %1801 = fadd fast float %1787, -5.000000e-01
  %1802 = fmul fast float %1800, %1796
  %1803 = fmul fast float %1801, %1796
  %1804 = fadd fast float %1802, 5.000000e-01
  %1805 = fadd fast float %1803, 5.000000e-01
  %1806 = fmul fast float %1804, 2.000000e+00
  %1807 = fadd fast float %1806, -1.000000e+00
  %1808 = fmul fast float %1805, 2.000000e+00
  %1809 = fadd fast float %1808, -1.000000e+00
  %1810 = fadd fast float %1807, %1809
  %1811 = fmul fast float %1810, 5.000000e-01
  %1812 = fsub fast float %1807, %1809
  %1813 = fmul fast float %1812, 5.000000e-01
  %1814 = call float @dx.op.unary.f32(i32 6, float %1811)  ; FAbs(value)
  %1815 = fsub fast float 1.000000e+00, %1814
  %1816 = call float @dx.op.unary.f32(i32 6, float %1813)  ; FAbs(value)
  %1817 = fsub fast float %1815, %1816
  %1818 = call float @dx.op.dot3.f32(i32 55, float %1811, float %1813, float %1817, float %1811, float %1813, float %1817)  ; Dot3(ax,ay,az,bx,by,bz)
  %1819 = call float @dx.op.unary.f32(i32 25, float %1818)  ; Rsqrt(value)
  %1820 = fmul fast float %1811, %1819
  %1821 = fmul fast float %1813, %1819
  %1822 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1252, i32 undef)  ; BufferLoad(srv,index,wot)
  %1823 = extractvalue %dx.types.ResRet.i32 %1822, 0
  %1824 = and i32 %1823, 67108864
  %1825 = icmp eq i32 %1824, 0
  br i1 %1825, label %1842, label %1826

; <label>:1826                                    ; preds = %1774
  %1827 = add i32 %50, 296
  %1828 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1827, i32 undef)  ; BufferLoad(srv,index,wot)
  %1829 = extractvalue %dx.types.ResRet.i32 %1828, 0
  %1830 = and i32 %1829, 65535
  %1831 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1830)  ; LegacyF16ToF32(value)
  %1832 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1269, i32 undef)  ; BufferLoad(srv,index,wot)
  %1833 = extractvalue %dx.types.ResRet.i32 %1832, 0
  %1834 = and i32 %1833, 65535
  %1835 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1834)  ; LegacyF16ToF32(value)
  %1836 = lshr i32 %1829, 16
  %1837 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1836)  ; LegacyF16ToF32(value)
  %1838 = fsub fast float %1799, %1837
  %1839 = fmul fast float %1838, %1831
  %1840 = fadd fast float %1839, %1835
  %1841 = call float @dx.op.unary.f32(i32 7, float %1840)  ; Saturate(value)
  br label %1842

; <label>:1842                                    ; preds = %1826, %1774
  %1843 = phi float [ %1841, %1826 ], [ %1799, %1774 ]
  %1844 = call float @dx.op.dot2.f32(i32 54, float %1820, float %1821, float %1263, float %1264)  ; Dot2(ax,ay,bx,by)
  %1845 = call float @dx.op.dot2.f32(i32 54, float %1820, float %1821, float %1265, float %1266)  ; Dot2(ax,ay,bx,by)
  br label %1846

; <label>:1846                                    ; preds = %1842, %1752
  %1847 = phi float [ %1843, %1842 ], [ 0x3FD6666660000000, %1752 ]
  %1848 = phi float [ %1844, %1842 ], [ 0.000000e+00, %1752 ]
  %1849 = phi float [ %1845, %1842 ], [ 0.000000e+00, %1752 ]
  %1850 = phi float [ %1786, %1842 ], [ 1.000000e+00, %1752 ]
  %1851 = add i32 %50, 176
  %1852 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1851, i32 undef)  ; BufferLoad(srv,index,wot)
  %1853 = extractvalue %dx.types.ResRet.i32 %1852, 0
  %1854 = lshr i32 %1853, 22
  %1855 = shl nuw nsw i32 %1854, 5
  %1856 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1855)  ; LegacyF16ToF32(value)
  %1857 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1252, i32 undef)  ; BufferLoad(srv,index,wot)
  %1858 = extractvalue %dx.types.ResRet.i32 %1857, 0
  %1859 = and i32 %1858, 64
  %1860 = icmp eq i32 %1859, 0
  br i1 %1860, label %1894, label %1861

; <label>:1861                                    ; preds = %1846
  %1862 = add i32 %50, 396
  %1863 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1862, i32 undef)  ; BufferLoad(srv,index,wot)
  %1864 = extractvalue %dx.types.ResRet.i32 %1863, 0
  %1865 = add i32 %1864, 0
  %1866 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1865, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1867 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1252, i32 undef)  ; BufferLoad(srv,index,wot)
  %1868 = extractvalue %dx.types.ResRet.i32 %1867, 0
  %1869 = and i32 %1868, 131072
  %1870 = icmp eq i32 %1869, 0
  %1871 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1866, %dx.types.Handle %95, float %1359, float %1360, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1872 = extractvalue %dx.types.ResRet.f32 %1871, 0
  %1873 = extractvalue %dx.types.ResRet.f32 %1871, 1
  %1874 = extractvalue %dx.types.ResRet.f32 %1871, 2
  %1875 = fmul fast float %1872, %277
  %1876 = fmul fast float %1873, %280
  %1877 = fmul fast float %1874, %283
  br i1 %1870, label %1884, label %1878

; <label>:1878                                    ; preds = %1861
  %1879 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1880 = extractvalue %dx.types.CBufRet.f32 %1879, 0
  %1881 = fmul fast float %1880, %1875
  %1882 = fmul fast float %1880, %1876
  %1883 = fmul fast float %1880, %1877
  br label %1884

; <label>:1884                                    ; preds = %1878, %1861
  %1885 = phi float [ %1881, %1878 ], [ %1875, %1861 ]
  %1886 = phi float [ %1882, %1878 ], [ %1876, %1861 ]
  %1887 = phi float [ %1883, %1878 ], [ %1877, %1861 ]
  %1888 = fmul fast float %1885, %1856
  %1889 = select i1 %215, float %1888, float %1885
  %1890 = call float @dx.op.dot3.f32(i32 55, float %1889, float %1886, float %1887, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1891 = select i1 %215, float 0.000000e+00, float %1885
  %1892 = select i1 %215, float %1890, float %1886
  %1893 = select i1 %215, float 0.000000e+00, float %1887
  br label %1894

; <label>:1894                                    ; preds = %1884, %1846
  %1895 = phi float [ %1891, %1884 ], [ 0.000000e+00, %1846 ]
  %1896 = phi float [ %1892, %1884 ], [ 0.000000e+00, %1846 ]
  %1897 = phi float [ %1893, %1884 ], [ 0.000000e+00, %1846 ]
  %1898 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1252, i32 undef)  ; BufferLoad(srv,index,wot)
  %1899 = extractvalue %dx.types.ResRet.i32 %1898, 0
  %1900 = and i32 %1899, 1024
  %1901 = icmp eq i32 %1900, 0
  br i1 %1901, label %1932, label %1902

; <label>:1902                                    ; preds = %1894
  %1903 = add i32 %50, 168
  %1904 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1903, i32 undef)  ; BufferLoad(srv,index,wot)
  %1905 = extractvalue %dx.types.ResRet.i32 %1904, 0
  %1906 = and i32 %1905, 255
  %1907 = uitofp i32 %1906 to float
  %1908 = fmul fast float %1907, 0x3F70101020000000
  %1909 = lshr i32 %1905, 8
  %1910 = and i32 %1909, 255
  %1911 = uitofp i32 %1910 to float
  %1912 = fmul fast float %1911, 0x3F70101020000000
  %1913 = lshr i32 %1905, 16
  %1914 = and i32 %1913, 255
  %1915 = uitofp i32 %1914 to float
  %1916 = fmul fast float %1915, 0x3F70101020000000
  %1917 = fmul fast float %1908, %1908
  %1918 = fmul fast float %1912, %1912
  %1919 = fmul fast float %1916, %1916
  %1920 = add i32 %50, 460
  %1921 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1920, i32 undef)  ; BufferLoad(srv,index,wot)
  %1922 = extractvalue %dx.types.ResRet.i32 %1921, 0
  %1923 = add i32 %1922, 0
  %1924 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1923, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1925 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1924, %dx.types.Handle %96, float %1359, float %1360, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1926 = extractvalue %dx.types.ResRet.f32 %1925, 0
  %1927 = extractvalue %dx.types.ResRet.f32 %1925, 1
  %1928 = extractvalue %dx.types.ResRet.f32 %1925, 2
  %1929 = fmul fast float %1917, %1926
  %1930 = fmul fast float %1918, %1927
  %1931 = fmul fast float %1919, %1928
  br label %1932

; <label>:1932                                    ; preds = %1902, %1894
  %1933 = phi float [ %1929, %1902 ], [ 0.000000e+00, %1894 ]
  %1934 = phi float [ %1930, %1902 ], [ 0.000000e+00, %1894 ]
  %1935 = phi float [ %1931, %1902 ], [ 0.000000e+00, %1894 ]
  %1936 = fcmp fast ogt float %1933, 0.000000e+00
  %1937 = fcmp fast ogt float %1934, 0.000000e+00
  %1938 = fcmp fast ogt float %1935, 0.000000e+00
  %1939 = call float @dx.op.unary.f32(i32 23, float %1933)  ; Log(value)
  %1940 = call float @dx.op.unary.f32(i32 23, float %1934)  ; Log(value)
  %1941 = call float @dx.op.unary.f32(i32 23, float %1935)  ; Log(value)
  %1942 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1851, i32 undef)  ; BufferLoad(srv,index,wot)
  %1943 = extractvalue %dx.types.ResRet.i32 %1942, 0
  %1944 = lshr i32 %1943, 7
  %1945 = and i32 %1944, 32752
  %1946 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1945)  ; LegacyF16ToF32(value)
  %1947 = fmul fast float %1939, 0xBFE62E4300000000
  %1948 = fmul fast float %1947, %1946
  %1949 = fmul fast float %1940, 0xBFE62E4300000000
  %1950 = fmul fast float %1949, %1946
  %1951 = fmul fast float %1941, 0xBFE62E4300000000
  %1952 = fmul fast float %1951, %1946
  %1953 = select i1 %1936, float %1948, float 1.270000e+02
  %1954 = select i1 %1937, float %1950, float 1.270000e+02
  %1955 = select i1 %1938, float %1952, float 1.270000e+02
  %1956 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1252, i32 undef)  ; BufferLoad(srv,index,wot)
  %1957 = extractvalue %dx.types.ResRet.i32 %1956, 0
  %1958 = and i32 %1957, 10240
  %1959 = icmp eq i32 %1958, 0
  br i1 %1959, label %2004, label %1960

; <label>:1960                                    ; preds = %1932
  %1961 = add i32 %50, 476
  %1962 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1961, i32 undef)  ; BufferLoad(srv,index,wot)
  %1963 = extractvalue %dx.types.ResRet.i32 %1962, 0
  %1964 = add i32 %1963, 0
  %1965 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1964, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1966 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1965, %dx.types.Handle %96, float %1359, float %1360, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1967 = extractvalue %dx.types.ResRet.f32 %1966, 1
  %1968 = extractvalue %dx.types.ResRet.f32 %1966, 3
  %1969 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1252, i32 undef)  ; BufferLoad(srv,index,wot)
  %1970 = extractvalue %dx.types.ResRet.i32 %1969, 0
  %1971 = and i32 %1970, 1048576
  %1972 = icmp ne i32 %1971, 0
  %1973 = and i32 %1970, 8192
  %1974 = icmp eq i32 %1973, 0
  br i1 %1974, label %1990, label %1975

; <label>:1975                                    ; preds = %1960
  %1976 = extractvalue %dx.types.ResRet.f32 %1966, 2
  %1977 = select i1 %1972, float %1976, float %1967
  %1978 = extractvalue %dx.types.ResRet.f32 %1966, 0
  %1979 = select i1 %1972, float %1978, float %1967
  %1980 = add i32 %50, 112
  %1981 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1980, i32 undef)  ; BufferLoad(srv,index,wot)
  %1982 = extractvalue %dx.types.ResRet.i32 %1981, 0
  %1983 = lshr i32 %1982, 16
  %1984 = and i32 %1983, 255
  %1985 = uitofp i32 %1984 to float
  %1986 = fmul fast float %1985, 0x3F80101020000000
  %1987 = fmul fast float %1986, %1979
  %1988 = fmul fast float %1986, %1967
  %1989 = fmul fast float %1986, %1977
  br label %1990

; <label>:1990                                    ; preds = %1975, %1960
  %1991 = phi float [ %1987, %1975 ], [ 0.000000e+00, %1960 ]
  %1992 = phi float [ %1988, %1975 ], [ 0.000000e+00, %1960 ]
  %1993 = phi float [ %1989, %1975 ], [ 0.000000e+00, %1960 ]
  %1994 = and i32 %1970, 2048
  %1995 = icmp eq i32 %1994, 0
  br i1 %1995, label %2004, label %1996

; <label>:1996                                    ; preds = %1990
  %1997 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1851, i32 undef)  ; BufferLoad(srv,index,wot)
  %1998 = extractvalue %dx.types.ResRet.i32 %1997, 0
  %1999 = shl i32 %1998, 4
  %2000 = and i32 %1999, 32752
  %2001 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2000)  ; LegacyF16ToF32(value)
  %2002 = fmul fast float %2001, %1968
  %2003 = call float @dx.op.binary.f32(i32 35, float %2002, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2004

; <label>:2004                                    ; preds = %1996, %1990, %1932
  %2005 = phi float [ %1991, %1996 ], [ %1991, %1990 ], [ 0.000000e+00, %1932 ]
  %2006 = phi float [ %1992, %1996 ], [ %1992, %1990 ], [ 0.000000e+00, %1932 ]
  %2007 = phi float [ %1993, %1996 ], [ %1993, %1990 ], [ 0.000000e+00, %1932 ]
  %2008 = phi float [ %2003, %1996 ], [ 0x3F70101020000000, %1990 ], [ 0x3F70101020000000, %1932 ]
  %2009 = add i32 %50, 112
  %2010 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2009, i32 undef)  ; BufferLoad(srv,index,wot)
  %2011 = extractvalue %dx.types.ResRet.i32 %2010, 0
  %2012 = and i32 %2011, 255
  %2013 = uitofp i32 %2012 to float
  %2014 = lshr i32 %2011, 8
  %2015 = and i32 %2014, 255
  %2016 = uitofp i32 %2015 to float
  %2017 = call float @dx.op.dot3.f32(i32 55, float %1767, float %1768, float %1769, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2018 = fmul fast float %2016, %2017
  %2019 = fadd fast float %2018, %2013
  %2020 = fmul fast float %2019, 0x3F70101020000000
  %2021 = call float @dx.op.unary.f32(i32 7, float %2020)  ; Saturate(value)
  br i1 %1251, label %2022, label %2057

; <label>:2022                                    ; preds = %2004
  %2023 = fmul fast float %2008, 2.000000e+00
  %2024 = fcmp fast olt float %1953, 1.270000e+02
  %2025 = fcmp fast olt float %1954, 1.270000e+02
  %2026 = fcmp fast olt float %1955, 1.270000e+02
  %2027 = fmul fast float %1953, 0xBFF7154760000000
  %2028 = fmul fast float %2027, %2023
  %2029 = fmul fast float %1954, 0xBFF7154760000000
  %2030 = fmul fast float %2029, %2023
  %2031 = fmul fast float %1955, 0xBFF7154760000000
  %2032 = fmul fast float %2031, %2023
  %2033 = call float @dx.op.unary.f32(i32 21, float %2028)  ; Exp(value)
  %2034 = call float @dx.op.unary.f32(i32 21, float %2030)  ; Exp(value)
  %2035 = call float @dx.op.unary.f32(i32 21, float %2032)  ; Exp(value)
  %2036 = call float @dx.op.unary.f32(i32 7, float %2033)  ; Saturate(value)
  %2037 = call float @dx.op.unary.f32(i32 7, float %2034)  ; Saturate(value)
  %2038 = call float @dx.op.unary.f32(i32 7, float %2035)  ; Saturate(value)
  %2039 = fadd fast float %2036, -1.000000e+00
  %2040 = select i1 %2024, float %2039, float -1.000000e+00
  %2041 = fadd fast float %2037, -1.000000e+00
  %2042 = select i1 %2025, float %2041, float -1.000000e+00
  %2043 = fadd fast float %2038, -1.000000e+00
  %2044 = select i1 %2026, float %2043, float -1.000000e+00
  %2045 = fmul fast float %2040, %1547
  %2046 = fmul fast float %2042, %1547
  %2047 = fmul fast float %2044, %1547
  %2048 = fadd fast float %2045, 1.000000e+00
  %2049 = fadd fast float %2046, 1.000000e+00
  %2050 = fadd fast float %2047, 1.000000e+00
  %2051 = fmul fast float %2048, %1232
  %2052 = fmul fast float %2049, %1233
  %2053 = fmul fast float %2050, %1234
  %2054 = fmul fast float %2048, %1235
  %2055 = fmul fast float %2049, %1236
  %2056 = fmul fast float %2050, %1237
  br label %2057

; <label>:2057                                    ; preds = %2022, %2004
  %2058 = phi float [ %2051, %2022 ], [ %1232, %2004 ]
  %2059 = phi float [ %2052, %2022 ], [ %1233, %2004 ]
  %2060 = phi float [ %2053, %2022 ], [ %1234, %2004 ]
  %2061 = phi float [ %2054, %2022 ], [ %1235, %2004 ]
  %2062 = phi float [ %2055, %2022 ], [ %1236, %2004 ]
  %2063 = phi float [ %2056, %2022 ], [ %1237, %2004 ]
  %2064 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1252, i32 undef)  ; BufferLoad(srv,index,wot)
  %2065 = extractvalue %dx.types.ResRet.i32 %2064, 0
  %2066 = and i32 %2065, 3
  %2067 = icmp eq i32 %2066, 3
  br i1 %2067, label %2146, label %2068

; <label>:2068                                    ; preds = %2057
  %2069 = and i32 %2065, 16
  %2070 = icmp ne i32 %2069, 0
  %2071 = select i1 %2070, float %1547, float 0.000000e+00
  %2072 = icmp eq i32 %2066, 0
  br i1 %2072, label %2073, label %2101

; <label>:2073                                    ; preds = %2068
  %2074 = and i32 %2065, 64
  %2075 = icmp ne i32 %2074, 0
  %2076 = select i1 %2075, float %1547, float 0.000000e+00
  %2077 = fsub fast float %1767, %2058
  %2078 = fsub fast float %1768, %2059
  %2079 = fsub fast float %1769, %2060
  %2080 = fmul fast float %2071, %2077
  %2081 = fmul fast float %2071, %2078
  %2082 = fmul fast float %2071, %2079
  %2083 = fadd fast float %2080, %2058
  %2084 = fadd fast float %2081, %2059
  %2085 = fadd fast float %2082, %2060
  %2086 = fsub fast float %1753, %1244
  %2087 = fmul fast float %2071, %2086
  %2088 = fadd fast float %2087, %1244
  %2089 = fsub fast float %1895, %2061
  %2090 = fsub fast float %1896, %2062
  %2091 = fsub fast float %1897, %2063
  %2092 = fmul fast float %2076, %2089
  %2093 = fmul fast float %2076, %2090
  %2094 = fmul fast float %2076, %2091
  %2095 = fadd fast float %2092, %2061
  %2096 = fadd fast float %2093, %2062
  %2097 = fadd fast float %2094, %2063
  %2098 = fsub fast float %2021, %1249
  %2099 = fmul fast float %2071, %2098
  %2100 = fadd fast float %2099, %1249
  br label %2146

; <label>:2101                                    ; preds = %2068
  %2102 = icmp eq i32 %2066, 1
  br i1 %2102, label %2103, label %2116

; <label>:2103                                    ; preds = %2101
  %2104 = fadd fast float %1767, -1.000000e+00
  %2105 = fadd fast float %1768, -1.000000e+00
  %2106 = fadd fast float %1769, -1.000000e+00
  %2107 = fmul fast float %2071, %2104
  %2108 = fmul fast float %2071, %2105
  %2109 = fmul fast float %2071, %2106
  %2110 = fadd fast float %2107, 1.000000e+00
  %2111 = fadd fast float %2108, 1.000000e+00
  %2112 = fadd fast float %2109, 1.000000e+00
  %2113 = fmul fast float %2110, %2058
  %2114 = fmul fast float %2111, %2059
  %2115 = fmul fast float %2112, %2060
  br label %2146

; <label>:2116                                    ; preds = %2101
  %2117 = icmp eq i32 %2066, 2
  br i1 %2117, label %2118, label %2146

; <label>:2118                                    ; preds = %2116
  %2119 = call float @dx.op.unary.f32(i32 24, float %1767)  ; Sqrt(value)
  %2120 = call float @dx.op.unary.f32(i32 24, float %1768)  ; Sqrt(value)
  %2121 = call float @dx.op.unary.f32(i32 24, float %1769)  ; Sqrt(value)
  %2122 = fadd fast float %2119, -5.000000e-01
  %2123 = fadd fast float %2120, -5.000000e-01
  %2124 = fadd fast float %2121, -5.000000e-01
  %2125 = fmul fast float %2122, %2071
  %2126 = fmul fast float %2123, %2071
  %2127 = fmul fast float %2124, %2071
  %2128 = fadd fast float %2125, 5.000000e-01
  %2129 = fadd fast float %2126, 5.000000e-01
  %2130 = fadd fast float %2127, 5.000000e-01
  %2131 = fmul fast float %2128, 2.000000e+00
  %2132 = fsub fast float 1.000000e+00, %2131
  %2133 = fmul fast float %2132, %2058
  %2134 = fadd fast float %2133, %2131
  %2135 = fmul fast float %2134, %2058
  %2136 = fmul fast float %2129, 2.000000e+00
  %2137 = fsub fast float 1.000000e+00, %2136
  %2138 = fmul fast float %2137, %2059
  %2139 = fadd fast float %2138, %2136
  %2140 = fmul fast float %2139, %2059
  %2141 = fmul fast float %2130, 2.000000e+00
  %2142 = fsub fast float 1.000000e+00, %2141
  %2143 = fmul fast float %2142, %2060
  %2144 = fadd fast float %2143, %2141
  %2145 = fmul fast float %2144, %2060
  br label %2146

; <label>:2146                                    ; preds = %2118, %2116, %2103, %2073, %2057
  %2147 = phi float [ %2058, %2057 ], [ %2135, %2118 ], [ %2058, %2116 ], [ %2113, %2103 ], [ %2083, %2073 ]
  %2148 = phi float [ %2059, %2057 ], [ %2140, %2118 ], [ %2059, %2116 ], [ %2114, %2103 ], [ %2084, %2073 ]
  %2149 = phi float [ %2060, %2057 ], [ %2145, %2118 ], [ %2060, %2116 ], [ %2115, %2103 ], [ %2085, %2073 ]
  %2150 = phi float [ %2061, %2057 ], [ %2061, %2118 ], [ %2061, %2116 ], [ %2061, %2103 ], [ %2095, %2073 ]
  %2151 = phi float [ %2062, %2057 ], [ %2062, %2118 ], [ %2062, %2116 ], [ %2062, %2103 ], [ %2096, %2073 ]
  %2152 = phi float [ %2063, %2057 ], [ %2063, %2118 ], [ %2063, %2116 ], [ %2063, %2103 ], [ %2097, %2073 ]
  %2153 = phi float [ %1244, %2057 ], [ %1244, %2118 ], [ %1244, %2116 ], [ %1244, %2103 ], [ %2088, %2073 ]
  %2154 = phi float [ %1249, %2057 ], [ %1249, %2118 ], [ %1249, %2116 ], [ %1249, %2103 ], [ %2100, %2073 ]
  %2155 = and i32 %2065, 12
  %2156 = icmp eq i32 %2155, 12
  br i1 %2156, label %2287, label %2157

; <label>:2157                                    ; preds = %2146
  %2158 = and i32 %2065, 2097184
  %2159 = icmp eq i32 %2158, 2097184
  %2160 = select i1 %2159, float %1547, float 0.000000e+00
  %2161 = and i32 %2065, 4194336
  %2162 = icmp eq i32 %2161, 4194336
  %2163 = select i1 %2162, float %1547, float 0.000000e+00
  %2164 = and i32 %2065, 8388640
  %2165 = icmp eq i32 %2164, 8388640
  %2166 = select i1 %2165, float %1547, float 0.000000e+00
  %2167 = and i32 %2065, 1024
  %2168 = icmp ne i32 %2167, 0
  %2169 = select i1 %2168, float %1547, float 0.000000e+00
  %2170 = and i32 %2065, 2048
  %2171 = icmp ne i32 %2170, 0
  %2172 = select i1 %2171, float %1547, float 0.000000e+00
  %2173 = and i32 %2065, 8192
  %2174 = icmp ne i32 %2173, 0
  %2175 = select i1 %2174, float %1547, float 0.000000e+00
  %2176 = icmp eq i32 %2155, 0
  br i1 %2176, label %2177, label %2211

; <label>:2177                                    ; preds = %2157
  %2178 = fsub fast float %1848, %1230
  %2179 = fsub fast float %1849, %1231
  %2180 = fmul fast float %2160, %2178
  %2181 = fmul fast float %2160, %2179
  %2182 = fadd fast float %2180, %1230
  %2183 = fadd fast float %2181, %1231
  %2184 = fsub fast float %1850, %1247
  %2185 = fmul fast float %2163, %2184
  %2186 = fadd fast float %2185, %1247
  %2187 = fsub fast float %1847, %1246
  %2188 = fmul fast float %2166, %2187
  %2189 = fadd fast float %2188, %1246
  %2190 = fsub fast float %1953, %1238
  %2191 = fsub fast float %1954, %1239
  %2192 = fsub fast float %1955, %1240
  %2193 = fmul fast float %2169, %2190
  %2194 = fmul fast float %2169, %2191
  %2195 = fmul fast float %2169, %2192
  %2196 = fadd fast float %2193, %1238
  %2197 = fadd fast float %2194, %1239
  %2198 = fadd fast float %2195, %1240
  %2199 = fsub fast float %2008, %1248
  %2200 = fmul fast float %2172, %2199
  %2201 = fadd fast float %2200, %1248
  %2202 = fsub fast float %2005, %1241
  %2203 = fsub fast float %2006, %1242
  %2204 = fsub fast float %2007, %1243
  %2205 = fmul fast float %2175, %2202
  %2206 = fmul fast float %2175, %2203
  %2207 = fmul fast float %2175, %2204
  %2208 = fadd fast float %2205, %1241
  %2209 = fadd fast float %2206, %1242
  %2210 = fadd fast float %2207, %1243
  br label %2287

; <label>:2211                                    ; preds = %2157
  %2212 = icmp eq i32 %2155, 4
  br i1 %2212, label %2213, label %2259

; <label>:2213                                    ; preds = %2211
  %2214 = fmul fast float %2160, %1848
  %2215 = fmul fast float %2160, %1849
  %2216 = fadd fast float %2214, %1230
  %2217 = fadd fast float %2215, %1231
  %2218 = call float @dx.op.binary.f32(i32 36, float %1247, float %1850)  ; FMin(a,b)
  %2219 = fsub fast float %2218, %1247
  %2220 = fmul fast float %2219, %2163
  %2221 = fadd fast float %2220, %1247
  %2222 = fadd fast float %1847, %1246
  %2223 = fmul fast float %2222, 0x3FF337FAE0000000
  %2224 = fmul fast float %1246, %1246
  %2225 = fmul fast float %1847, %1847
  %2226 = fadd fast float %2225, %2224
  %2227 = fmul fast float %2226, 0x3FE5152B00000000
  %2228 = fmul fast float %1246, 0xBFCC1F85E0000000
  %2229 = fmul fast float %2228, %1847
  %2230 = fadd fast float %2229, 0xBFE1363700000000
  %2231 = fadd fast float %2230, %2223
  %2232 = fsub fast float %2231, %2227
  %2233 = fmul fast float %2222, 0x3FBA6F0D00000000
  %2234 = fmul fast float %2226, 0x3FD0432880000000
  %2235 = fmul fast float %1246, 0xBFEF110800000000
  %2236 = fmul fast float %2235, %1847
  %2237 = fadd fast float %2236, 1.000000e+00
  %2238 = fsub fast float %2237, %2233
  %2239 = fadd fast float %2238, %2234
  %2240 = fdiv fast float %2232, %2239
  %2241 = call float @dx.op.unary.f32(i32 7, float %2240)  ; Saturate(value)
  %2242 = fsub fast float %2241, %1246
  %2243 = fmul fast float %2242, %2166
  %2244 = fadd fast float %2243, %1246
  %2245 = fmul fast float %2169, %1953
  %2246 = fmul fast float %2169, %1954
  %2247 = fmul fast float %2169, %1955
  %2248 = fadd fast float %2245, %1238
  %2249 = fadd fast float %2246, %1239
  %2250 = fadd fast float %2247, %1240
  %2251 = fmul fast float %2172, %2008
  %2252 = fadd fast float %2251, %1248
  %2253 = fmul fast float %2175, %2005
  %2254 = fmul fast float %2175, %2006
  %2255 = fmul fast float %2175, %2007
  %2256 = fadd fast float %2253, %1241
  %2257 = fadd fast float %2254, %1242
  %2258 = fadd fast float %2255, %1243
  br label %2287

; <label>:2259                                    ; preds = %2211
  %2260 = icmp eq i32 %2155, 8
  br i1 %2260, label %2261, label %2287

; <label>:2261                                    ; preds = %2259
  %2262 = fmul fast float %2160, %1848
  %2263 = fmul fast float %2160, %1849
  %2264 = fadd fast float %2262, %1230
  %2265 = fadd fast float %2263, %1231
  %2266 = call float @dx.op.binary.f32(i32 36, float %1247, float %1850)  ; FMin(a,b)
  %2267 = fsub fast float %2266, %1247
  %2268 = fmul fast float %2267, %2163
  %2269 = fadd fast float %2268, %1247
  %2270 = fsub fast float %1847, %1246
  %2271 = fmul fast float %2166, %2270
  %2272 = fadd fast float %2271, %1246
  %2273 = fmul fast float %2169, %1953
  %2274 = fmul fast float %2169, %1954
  %2275 = fmul fast float %2169, %1955
  %2276 = fadd fast float %2273, %1238
  %2277 = fadd fast float %2274, %1239
  %2278 = fadd fast float %2275, %1240
  %2279 = fmul fast float %2172, %2008
  %2280 = fadd fast float %2279, %1248
  %2281 = fmul fast float %2175, %2005
  %2282 = fmul fast float %2175, %2006
  %2283 = fmul fast float %2175, %2007
  %2284 = fadd fast float %2281, %1241
  %2285 = fadd fast float %2282, %1242
  %2286 = fadd fast float %2283, %1243
  br label %2287

; <label>:2287                                    ; preds = %2261, %2259, %2213, %2177, %2146, %1546, %1250, %1229
  %2288 = phi float [ %1230, %2146 ], [ %1230, %1546 ], [ %1230, %1229 ], [ %2264, %2261 ], [ %1230, %2259 ], [ %2216, %2213 ], [ %2182, %2177 ], [ %1230, %1250 ]
  %2289 = phi float [ %1231, %2146 ], [ %1231, %1546 ], [ %1231, %1229 ], [ %2265, %2261 ], [ %1231, %2259 ], [ %2217, %2213 ], [ %2183, %2177 ], [ %1231, %1250 ]
  %2290 = phi float [ %2147, %2146 ], [ %1232, %1546 ], [ %1232, %1229 ], [ %2147, %2261 ], [ %2147, %2259 ], [ %2147, %2213 ], [ %2147, %2177 ], [ %1232, %1250 ]
  %2291 = phi float [ %2148, %2146 ], [ %1233, %1546 ], [ %1233, %1229 ], [ %2148, %2261 ], [ %2148, %2259 ], [ %2148, %2213 ], [ %2148, %2177 ], [ %1233, %1250 ]
  %2292 = phi float [ %2149, %2146 ], [ %1234, %1546 ], [ %1234, %1229 ], [ %2149, %2261 ], [ %2149, %2259 ], [ %2149, %2213 ], [ %2149, %2177 ], [ %1234, %1250 ]
  %2293 = phi float [ %2150, %2146 ], [ %1235, %1546 ], [ %1235, %1229 ], [ %2150, %2261 ], [ %2150, %2259 ], [ %2150, %2213 ], [ %2150, %2177 ], [ %1235, %1250 ]
  %2294 = phi float [ %2151, %2146 ], [ %1236, %1546 ], [ %1236, %1229 ], [ %2151, %2261 ], [ %2151, %2259 ], [ %2151, %2213 ], [ %2151, %2177 ], [ %1236, %1250 ]
  %2295 = phi float [ %2152, %2146 ], [ %1237, %1546 ], [ %1237, %1229 ], [ %2152, %2261 ], [ %2152, %2259 ], [ %2152, %2213 ], [ %2152, %2177 ], [ %1237, %1250 ]
  %2296 = phi float [ %1238, %2146 ], [ %1238, %1546 ], [ %1238, %1229 ], [ %2276, %2261 ], [ %1238, %2259 ], [ %2248, %2213 ], [ %2196, %2177 ], [ %1238, %1250 ]
  %2297 = phi float [ %1239, %2146 ], [ %1239, %1546 ], [ %1239, %1229 ], [ %2277, %2261 ], [ %1239, %2259 ], [ %2249, %2213 ], [ %2197, %2177 ], [ %1239, %1250 ]
  %2298 = phi float [ %1240, %2146 ], [ %1240, %1546 ], [ %1240, %1229 ], [ %2278, %2261 ], [ %1240, %2259 ], [ %2250, %2213 ], [ %2198, %2177 ], [ %1240, %1250 ]
  %2299 = phi float [ %1241, %2146 ], [ %1241, %1546 ], [ %1241, %1229 ], [ %2284, %2261 ], [ %1241, %2259 ], [ %2256, %2213 ], [ %2208, %2177 ], [ %1241, %1250 ]
  %2300 = phi float [ %1242, %2146 ], [ %1242, %1546 ], [ %1242, %1229 ], [ %2285, %2261 ], [ %1242, %2259 ], [ %2257, %2213 ], [ %2209, %2177 ], [ %1242, %1250 ]
  %2301 = phi float [ %1243, %2146 ], [ %1243, %1546 ], [ %1243, %1229 ], [ %2286, %2261 ], [ %1243, %2259 ], [ %2258, %2213 ], [ %2210, %2177 ], [ %1243, %1250 ]
  %2302 = phi float [ %2153, %2146 ], [ %1244, %1546 ], [ %1244, %1229 ], [ %2153, %2261 ], [ %2153, %2259 ], [ %2153, %2213 ], [ %2153, %2177 ], [ %1244, %1250 ]
  %2303 = phi float [ %1246, %2146 ], [ %1246, %1546 ], [ %1246, %1229 ], [ %2272, %2261 ], [ %1246, %2259 ], [ %2244, %2213 ], [ %2189, %2177 ], [ %1246, %1250 ]
  %2304 = phi float [ %1247, %2146 ], [ %1247, %1546 ], [ %1247, %1229 ], [ %2269, %2261 ], [ %1247, %2259 ], [ %2221, %2213 ], [ %2186, %2177 ], [ %1247, %1250 ]
  %2305 = phi float [ %1248, %2146 ], [ %1248, %1546 ], [ %1248, %1229 ], [ %2280, %2261 ], [ %1248, %2259 ], [ %2252, %2213 ], [ %2201, %2177 ], [ %1248, %1250 ]
  %2306 = phi float [ %2154, %2146 ], [ %1249, %1546 ], [ %1249, %1229 ], [ %2154, %2261 ], [ %2154, %2259 ], [ %2154, %2213 ], [ %2154, %2177 ], [ %1249, %1250 ]
  br i1 %404, label %3344, label %2307

; <label>:2307                                    ; preds = %2287
  %2308 = icmp ult i32 %460, 3
  %2309 = add i32 %50, 56
  %2310 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2309, i32 undef)  ; BufferLoad(srv,index,wot)
  %2311 = extractvalue %dx.types.ResRet.i32 %2310, 0
  %2312 = add i32 %50, 60
  %2313 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2312, i32 undef)  ; BufferLoad(srv,index,wot)
  %2314 = extractvalue %dx.types.ResRet.i32 %2313, 0
  %2315 = or i32 %2314, %2311
  %2316 = icmp eq i32 %2315, 0
  br i1 %2316, label %3344, label %2317

; <label>:2317                                    ; preds = %2307
  %2318 = and i32 %2311, 262144
  %2319 = icmp ne i32 %2318, 0
  %2320 = select i1 %2319, float %53, float 1.000000e+00
  %2321 = select i1 %2319, float %54, float 0.000000e+00
  %2322 = select i1 %2319, float %55, float 0.000000e+00
  %2323 = select i1 %2319, float %56, float 1.000000e+00
  %2324 = select i1 %2319, float %57, float %78
  %2325 = select i1 %2319, float %58, float %79
  %2326 = add i32 %50, 316
  %2327 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2326, i32 undef)  ; BufferLoad(srv,index,wot)
  %2328 = extractvalue %dx.types.ResRet.i32 %2327, 0
  %2329 = lshr i32 %2328, 16
  %2330 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2329)  ; LegacyF16ToF32(value)
  %2331 = fmul fast float %2330, 0x3F50624DE0000000
  %2332 = add i32 %50, 120
  %2333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2332, i32 undef)  ; BufferLoad(srv,index,wot)
  %2334 = extractvalue %dx.types.ResRet.i32 %2333, 0
  %2335 = lshr i32 %2334, 16
  %2336 = and i32 %2335, 255
  %2337 = lshr i32 %2334, 24
  %2338 = add i32 %50, 324
  %2339 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2338, i32 undef)  ; BufferLoad(srv,index,wot)
  %2340 = extractvalue %dx.types.ResRet.i32 %2339, 0
  %2341 = and i32 %2340, 65535
  %2342 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2341)  ; LegacyF16ToF32(value)
  %2343 = lshr i32 %2340, 16
  %2344 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2343)  ; LegacyF16ToF32(value)
  %2345 = add i32 %50, 64
  %2346 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2345, i32 undef)  ; BufferLoad(srv,index,wot)
  %2347 = extractvalue %dx.types.ResRet.i32 %2346, 0
  %2348 = lshr i32 %2347, 22
  %2349 = shl nuw nsw i32 %2348, 5
  %2350 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2349)  ; LegacyF16ToF32(value)
  %2351 = shl i32 %2347, 4
  %2352 = and i32 %2351, 32752
  %2353 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2352)  ; LegacyF16ToF32(value)
  %2354 = lshr i32 %2347, 7
  %2355 = and i32 %2354, 32752
  %2356 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2355)  ; LegacyF16ToF32(value)
  %2357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2358 = extractvalue %dx.types.CBufRet.f32 %2357, 3
  %2359 = fmul fast float %2358, 1.000000e+03
  %2360 = fmul fast float %354, %2359
  %2361 = call float @dx.op.unary.f32(i32 22, float %2360)  ; Frc(value)
  %2362 = fadd fast float %2361, %344
  %2363 = fmul fast float %355, %2359
  %2364 = call float @dx.op.unary.f32(i32 22, float %2363)  ; Frc(value)
  %2365 = fadd fast float %2364, %346
  %2366 = fmul fast float %2331, %2359
  %2367 = call float @dx.op.unary.f32(i32 22, float %2366)  ; Frc(value)
  %2368 = fmul fast float %2367, 0x401921FB60000000
  %2369 = fadd fast float %2368, %2350
  %2370 = call float @dx.op.unary.f32(i32 13, float %2369)  ; Sin(value)
  %2371 = call float @dx.op.unary.f32(i32 12, float %2369)  ; Cos(value)
  %2372 = fsub fast float -0.000000e+00, %2370
  %2373 = fadd fast float %2324, -5.000000e-01
  %2374 = fadd fast float %2325, -5.000000e-01
  %2375 = fmul fast float %2342, %2373
  %2376 = fmul fast float %2344, %2374
  %2377 = fadd fast float %2375, 5.000000e-01
  %2378 = fadd fast float %2376, 5.000000e-01
  %2379 = fmul fast float %2353, %2377
  %2380 = fmul fast float %2356, %2378
  %2381 = fmul fast float %2371, %2379
  %2382 = call float @dx.op.tertiary.f32(i32 46, float %2372, float %2380, float %2381)  ; FMad(a,b,c)
  %2383 = fmul fast float %2370, %2379
  %2384 = call float @dx.op.tertiary.f32(i32 46, float %2371, float %2380, float %2383)  ; FMad(a,b,c)
  %2385 = fadd fast float %2362, %2382
  %2386 = fadd fast float %2365, %2384
  %2387 = icmp ugt i32 %2336, 1
  %2388 = icmp ugt i32 %2334, 33554431
  %2389 = or i1 %2388, %2387
  br i1 %2389, label %2390, label %2415

; <label>:2390                                    ; preds = %2317
  %2391 = add i32 %50, 260
  %2392 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2391, i32 undef)  ; BufferLoad(srv,index,wot)
  %2393 = extractvalue %dx.types.ResRet.i32 %2392, 0
  %2394 = lshr i32 %2393, 16
  %2395 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2394)  ; LegacyF16ToF32(value)
  %2396 = fmul fast float %2358, %2395
  %2397 = call float @dx.op.unary.f32(i32 22, float %2396)  ; Frc(value)
  %2398 = mul nuw nsw i32 %2336, %2337
  %2399 = uitofp i32 %2398 to float
  %2400 = fmul fast float %2397, %2399
  %2401 = call float @dx.op.unary.f32(i32 27, float %2400)  ; Round_ni(value)
  %2402 = fptoui float %2401 to i32
  %2403 = urem i32 %2402, %2336
  %2404 = udiv i32 %2402, %2337
  %2405 = call float @dx.op.unary.f32(i32 22, float %2385)  ; Frc(value)
  %2406 = call float @dx.op.unary.f32(i32 22, float %2386)  ; Frc(value)
  %2407 = uitofp i32 %2403 to float
  %2408 = uitofp i32 %2404 to float
  %2409 = fadd fast float %2405, %2407
  %2410 = fadd fast float %2406, %2408
  %2411 = uitofp i32 %2336 to float
  %2412 = uitofp i32 %2337 to float
  %2413 = fdiv fast float %2409, %2411
  %2414 = fdiv fast float %2410, %2412
  br label %2415

; <label>:2415                                    ; preds = %2390, %2317
  %2416 = phi float [ %2413, %2390 ], [ %2385, %2317 ]
  %2417 = phi float [ %2414, %2390 ], [ %2386, %2317 ]
  %2418 = and i32 %2311, 16777216
  %2419 = icmp eq i32 %2418, 0
  br i1 %2419, label %2529, label %2420

; <label>:2420                                    ; preds = %2415
  %2421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2422 = extractvalue %dx.types.CBufRet.f32 %2421, 0
  %2423 = extractvalue %dx.types.CBufRet.f32 %2421, 1
  %2424 = extractvalue %dx.types.CBufRet.f32 %2421, 2
  %2425 = fadd fast float %2422, %154
  %2426 = fadd fast float %2423, %155
  %2427 = fadd fast float %2424, %156
  %2428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2429 = extractvalue %dx.types.CBufRet.f32 %2428, 0
  %2430 = call float @dx.op.unary.f32(i32 7, float %2429)  ; Saturate(value)
  %2431 = icmp eq i32 %51, 65535
  br i1 %2431, label %2526, label %2432

; <label>:2432                                    ; preds = %2420
  %2433 = lshr i32 %51, 1
  %2434 = shl i32 %2433, 2
  %2435 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2434, i32 undef)  ; BufferLoad(srv,index,wot)
  %2436 = extractvalue %dx.types.ResRet.i32 %2435, 0
  %2437 = and i32 %51, 1
  %2438 = icmp ne i32 %2437, 0
  %2439 = lshr i32 %2436, 16
  %2440 = and i32 %2436, 65535
  %2441 = select i1 %2438, i32 %2439, i32 %2440
  %2442 = icmp eq i32 %2441, 65535
  br i1 %2442, label %2522, label %2443

; <label>:2443                                    ; preds = %2432
  %2444 = mul nuw nsw i32 %2441, 40
  %2445 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %2444, i32 undef)  ; BufferLoad(srv,index,wot)
  %2446 = extractvalue %dx.types.ResRet.f32 %2445, 0
  %2447 = extractvalue %dx.types.ResRet.f32 %2445, 1
  %2448 = extractvalue %dx.types.ResRet.f32 %2445, 2
  %2449 = add nuw nsw i32 %2444, 12
  %2450 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %2449, i32 undef)  ; BufferLoad(srv,index,wot)
  %2451 = extractvalue %dx.types.ResRet.f32 %2450, 0
  %2452 = extractvalue %dx.types.ResRet.f32 %2450, 1
  %2453 = extractvalue %dx.types.ResRet.f32 %2450, 2
  %2454 = add nuw nsw i32 %2444, 24
  %2455 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %2454, i32 undef)  ; BufferLoad(srv,index,wot)
  %2456 = extractvalue %dx.types.ResRet.f32 %2455, 0
  %2457 = extractvalue %dx.types.ResRet.f32 %2455, 1
  %2458 = extractvalue %dx.types.ResRet.f32 %2455, 2
  %2459 = add nuw nsw i32 %2444, 36
  %2460 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %2459, i32 undef)  ; BufferLoad(srv,index,wot)
  %2461 = extractvalue %dx.types.ResRet.f32 %2460, 0
  %2462 = fsub fast float %2425, %2446
  %2463 = fsub fast float %2426, %2447
  %2464 = fsub fast float %2427, %2448
  %2465 = fmul fast float %2461, %2462
  %2466 = fmul fast float %2461, %2463
  %2467 = fmul fast float %2461, %2464
  %2468 = call float @dx.op.unary.f32(i32 27, float %2465)  ; Round_ni(value)
  %2469 = call float @dx.op.unary.f32(i32 27, float %2466)  ; Round_ni(value)
  %2470 = call float @dx.op.unary.f32(i32 27, float %2467)  ; Round_ni(value)
  %2471 = fadd fast float %2468, 5.000000e-01
  %2472 = fadd fast float %2469, 5.000000e-01
  %2473 = fadd fast float %2470, 5.000000e-01
  %2474 = fmul fast float %2471, %2451
  %2475 = fmul fast float %2472, %2452
  %2476 = fmul fast float %2473, %2453
  %2477 = shl i32 %51, 2
  %2478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %2477, i32 undef)  ; BufferLoad(srv,index,wot)
  %2479 = extractvalue %dx.types.ResRet.i32 %2478, 0
  %2480 = add i32 %2479, 0
  %2481 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2480, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2482 = call float @dx.op.unary.f32(i32 22, float %2474)  ; Frc(value)
  %2483 = call float @dx.op.unary.f32(i32 22, float %2475)  ; Frc(value)
  %2484 = call float @dx.op.unary.f32(i32 22, float %2476)  ; Frc(value)
  %2485 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2481, %dx.types.Handle %45, float %2482, float %2483, float %2484, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2486 = extractvalue %dx.types.ResRet.f32 %2485, 0
  %2487 = extractvalue %dx.types.ResRet.f32 %2485, 1
  %2488 = extractvalue %dx.types.ResRet.f32 %2485, 2
  %2489 = fmul fast float %2486, 1.023000e+03
  %2490 = fmul fast float %2487, 1.023000e+03
  %2491 = fmul fast float %2488, 1.023000e+03
  %2492 = fadd fast float %2489, 5.000000e-01
  %2493 = fadd fast float %2490, 5.000000e-01
  %2494 = fadd fast float %2491, 5.000000e-01
  %2495 = call float @dx.op.unary.f32(i32 27, float %2492)  ; Round_ni(value)
  %2496 = call float @dx.op.unary.f32(i32 27, float %2493)  ; Round_ni(value)
  %2497 = call float @dx.op.unary.f32(i32 27, float %2494)  ; Round_ni(value)
  %2498 = fsub fast float %2465, %2468
  %2499 = fsub fast float %2466, %2469
  %2500 = fsub fast float %2467, %2470
  %2501 = fmul fast float %2498, 7.500000e-01
  %2502 = fmul fast float %2499, 7.500000e-01
  %2503 = fmul fast float %2500, 7.500000e-01
  %2504 = fadd fast float %2468, 1.250000e-01
  %2505 = fadd fast float %2504, %2501
  %2506 = fadd fast float %2505, %2495
  %2507 = fadd fast float %2469, 1.250000e-01
  %2508 = fadd fast float %2507, %2502
  %2509 = fadd fast float %2508, %2496
  %2510 = fadd fast float %2470, 1.250000e-01
  %2511 = fadd fast float %2510, %2503
  %2512 = fadd fast float %2511, %2497
  %2513 = fmul fast float %2506, %2456
  %2514 = fmul fast float %2509, %2457
  %2515 = fmul fast float %2512, %2458
  %2516 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %2477, i32 undef)  ; BufferLoad(srv,index,wot)
  %2517 = extractvalue %dx.types.ResRet.i32 %2516, 0
  %2518 = add i32 %2517, 0
  %2519 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2518, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2520 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2519, %dx.types.Handle %43, float %2513, float %2514, float %2515, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2521 = extractvalue %dx.types.ResRet.f32 %2520, 0
  br label %2522

; <label>:2522                                    ; preds = %2443, %2432
  %2523 = phi float [ %2521, %2443 ], [ -1.000000e+00, %2432 ]
  %2524 = fadd fast float %2523, %2430
  %2525 = call float @dx.op.unary.f32(i32 7, float %2524)  ; Saturate(value)
  br label %2526

; <label>:2526                                    ; preds = %2522, %2420
  %2527 = phi float [ %2525, %2522 ], [ %2430, %2420 ]
  %2528 = fmul fast float %2527, %456
  br label %2529

; <label>:2529                                    ; preds = %2526, %2415
  %2530 = phi float [ %2528, %2526 ], [ %456, %2415 ]
  %2531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2309, i32 undef)  ; BufferLoad(srv,index,wot)
  %2532 = extractvalue %dx.types.ResRet.i32 %2531, 0
  %2533 = and i32 %2532, 256
  %2534 = icmp eq i32 %2533, 0
  br i1 %2534, label %2581, label %2535

; <label>:2535                                    ; preds = %2529
  %2536 = add i32 %50, 432
  %2537 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2536, i32 undef)  ; BufferLoad(srv,index,wot)
  %2538 = extractvalue %dx.types.ResRet.i32 %2537, 0
  %2539 = add i32 %2538, 0
  %2540 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2539, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2541 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2540, %dx.types.Handle %96, float %2416, float %2417, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2542 = extractvalue %dx.types.ResRet.f32 %2541, 0
  %2543 = add i32 %50, 132
  %2544 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2543, i32 undef)  ; BufferLoad(srv,index,wot)
  %2545 = extractvalue %dx.types.ResRet.i32 %2544, 0
  %2546 = shl i32 %2545, 4
  %2547 = and i32 %2546, 32752
  %2548 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2547)  ; LegacyF16ToF32(value)
  %2549 = lshr i32 %2545, 7
  %2550 = and i32 %2549, 32752
  %2551 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2550)  ; LegacyF16ToF32(value)
  %2552 = fsub fast float 1.000000e+00, %2530
  %2553 = call float @dx.op.binary.f32(i32 35, float %2552, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2554 = bitcast float %2530 to i32
  %2555 = sitofp i32 %2554 to float
  %2556 = fadd fast float %2555, 0xC1CFBF8940000000
  %2557 = fmul fast float %2551, %2556
  %2558 = fadd fast float %2557, 0x41CFBF8940000000
  %2559 = fptosi float %2558 to i32
  %2560 = bitcast i32 %2559 to float
  %2561 = bitcast float %2553 to i32
  %2562 = sitofp i32 %2561 to float
  %2563 = fadd fast float %2562, 0xC1CFBF8940000000
  %2564 = fmul fast float %2563, %2551
  %2565 = fadd fast float %2564, 0x41CFBF8940000000
  %2566 = fptosi float %2565 to i32
  %2567 = bitcast i32 %2566 to float
  %2568 = fmul fast float %2560, %2548
  %2569 = fmul fast float %2567, %2548
  %2570 = fsub fast float %2553, %2568
  %2571 = fadd fast float %2569, %2553
  %2572 = call float @dx.op.unary.f32(i32 7, float %2570)  ; Saturate(value)
  %2573 = call float @dx.op.unary.f32(i32 7, float %2571)  ; Saturate(value)
  %2574 = fsub fast float %2542, %2572
  %2575 = fsub fast float %2573, %2572
  %2576 = bitcast float %2575 to i32
  %2577 = sub nsw i32 2129859010, %2576
  %2578 = bitcast i32 %2577 to float
  %2579 = fmul fast float %2578, %2574
  %2580 = call float @dx.op.unary.f32(i32 7, float %2579)  ; Saturate(value)
  br label %2581

; <label>:2581                                    ; preds = %2535, %2529
  %2582 = phi float [ %2580, %2535 ], [ %2530, %2529 ]
  %2583 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2309, i32 undef)  ; BufferLoad(srv,index,wot)
  %2584 = extractvalue %dx.types.ResRet.i32 %2583, 0
  %2585 = and i32 %2584, 128
  %2586 = icmp eq i32 %2585, 0
  br i1 %2586, label %2603, label %2587

; <label>:2587                                    ; preds = %2581
  %2588 = add i32 %50, 416
  %2589 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2588, i32 undef)  ; BufferLoad(srv,index,wot)
  %2590 = extractvalue %dx.types.ResRet.i32 %2589, 0
  %2591 = add i32 %2590, 0
  %2592 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2591, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2593 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2592, %dx.types.Handle %96, float %2416, float %2417, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2594 = extractvalue %dx.types.ResRet.f32 %2593, 0
  %2595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2309, i32 undef)  ; BufferLoad(srv,index,wot)
  %2596 = extractvalue %dx.types.ResRet.i32 %2595, 0
  %2597 = and i32 %2596, 524288
  %2598 = icmp ne i32 %2597, 0
  %2599 = fcmp fast ogt float %2594, 0x3FE0101020000000
  %2600 = select i1 %2599, float 1.000000e+00, float 0.000000e+00
  %2601 = select i1 %2598, float %2600, float %2594
  %2602 = fmul fast float %2601, %2582
  br label %2603

; <label>:2603                                    ; preds = %2587, %2581
  %2604 = phi float [ %2602, %2587 ], [ %2582, %2581 ]
  %2605 = fcmp fast ult float %2604, 0x3F70101020000000
  br i1 %2605, label %3344, label %2606

; <label>:2606                                    ; preds = %2603
  %2607 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2309, i32 undef)  ; BufferLoad(srv,index,wot)
  %2608 = extractvalue %dx.types.ResRet.i32 %2607, 0
  %2609 = and i32 %2608, 16
  %2610 = icmp eq i32 %2609, 0
  br i1 %2610, label %2809, label %2611

; <label>:2611                                    ; preds = %2606
  %2612 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2332, i32 undef)  ; BufferLoad(srv,index,wot)
  %2613 = extractvalue %dx.types.ResRet.i32 %2612, 0
  %2614 = add i32 %50, 368
  %2615 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2614, i32 undef)  ; BufferLoad(srv,index,wot)
  %2616 = extractvalue %dx.types.ResRet.i32 %2615, 0
  %2617 = add i32 %2616, 0
  %2618 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2617, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2619 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2618, %dx.types.Handle %95, float %2416, float %2417, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2620 = extractvalue %dx.types.ResRet.f32 %2619, 0
  %2621 = extractvalue %dx.types.ResRet.f32 %2619, 1
  %2622 = extractvalue %dx.types.ResRet.f32 %2619, 2
  %2623 = extractvalue %dx.types.ResRet.f32 %2619, 3
  %2624 = and i32 %2613, 255
  %2625 = uitofp i32 %2624 to float
  %2626 = lshr i32 %2613, 8
  %2627 = and i32 %2626, 255
  %2628 = uitofp i32 %2627 to float
  %2629 = fmul fast float %2623, %2625
  %2630 = fadd fast float %2629, %2628
  %2631 = fmul fast float %2630, 0x3F70101000000000
  %2632 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2309, i32 undef)  ; BufferLoad(srv,index,wot)
  %2633 = extractvalue %dx.types.ResRet.i32 %2632, 0
  %2634 = and i32 %2633, 512
  %2635 = icmp eq i32 %2634, 0
  br i1 %2635, label %2644, label %2636

; <label>:2636                                    ; preds = %2611
  %2637 = add i32 %50, 448
  %2638 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2637, i32 undef)  ; BufferLoad(srv,index,wot)
  %2639 = extractvalue %dx.types.ResRet.i32 %2638, 0
  %2640 = add i32 %2639, 0
  %2641 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2640, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2642 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2641, %dx.types.Handle %96, float %2416, float %2417, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2643 = extractvalue %dx.types.ResRet.f32 %2642, 0
  br label %2644

; <label>:2644                                    ; preds = %2636, %2611
  %2645 = phi float [ %2643, %2636 ], [ 1.000000e+00, %2611 ]
  %2646 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2309, i32 undef)  ; BufferLoad(srv,index,wot)
  %2647 = extractvalue %dx.types.ResRet.i32 %2646, 0
  %2648 = and i32 %2647, 33554432
  %2649 = icmp eq i32 %2648, 0
  br i1 %2649, label %2756, label %2650

; <label>:2650                                    ; preds = %2644
  %2651 = add i32 %50, 256
  %2652 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2651, i32 undef)  ; BufferLoad(srv,index,wot)
  %2653 = extractvalue %dx.types.ResRet.i32 %2652, 0
  %2654 = and i32 %2653, 65535
  %2655 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2654)  ; LegacyF16ToF32(value)
  %2656 = lshr i32 %2653, 16
  %2657 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2656)  ; LegacyF16ToF32(value)
  %2658 = add i32 %50, 260
  %2659 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2658, i32 undef)  ; BufferLoad(srv,index,wot)
  %2660 = extractvalue %dx.types.ResRet.i32 %2659, 0
  %2661 = and i32 %2660, 65535
  %2662 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2661)  ; LegacyF16ToF32(value)
  %2663 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %326, i32 undef)  ; BufferLoad(srv,index,wot)
  %2664 = extractvalue %dx.types.ResRet.i32 %2663, 0
  %2665 = lshr i32 %2664, 24
  %2666 = uitofp i32 %2665 to float
  %2667 = fmul fast float %2666, 0x3F70101020000000
  %2668 = and i32 %2664, 255
  %2669 = uitofp i32 %2668 to float
  %2670 = fmul fast float %2669, 0x3F70101020000000
  %2671 = lshr i32 %2664, 8
  %2672 = and i32 %2671, 255
  %2673 = uitofp i32 %2672 to float
  %2674 = fmul fast float %2673, 0x3F70101020000000
  %2675 = lshr i32 %2664, 16
  %2676 = and i32 %2675, 255
  %2677 = uitofp i32 %2676 to float
  %2678 = fmul fast float %2677, 0x3F70101020000000
  %2679 = add i32 %50, 252
  %2680 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2679, i32 undef)  ; BufferLoad(srv,index,wot)
  %2681 = extractvalue %dx.types.ResRet.i32 %2680, 0
  %2682 = lshr i32 %2681, 24
  %2683 = uitofp i32 %2682 to float
  %2684 = fmul fast float %2683, 0x3F70101020000000
  %2685 = and i32 %2681, 255
  %2686 = uitofp i32 %2685 to float
  %2687 = fmul fast float %2686, 0x3F70101020000000
  %2688 = lshr i32 %2681, 8
  %2689 = and i32 %2688, 255
  %2690 = uitofp i32 %2689 to float
  %2691 = fmul fast float %2690, 0x3F70101020000000
  %2692 = lshr i32 %2681, 16
  %2693 = and i32 %2692, 255
  %2694 = uitofp i32 %2693 to float
  %2695 = fmul fast float %2694, 0x3F70101020000000
  %2696 = bitcast float %2620 to i32
  %2697 = ashr i32 %2696, 1
  %2698 = sub nsw i32 1597463174, %2697
  %2699 = bitcast i32 %2698 to float
  %2700 = fmul fast float %2620, 5.000000e-01
  %2701 = fmul fast float %2699, %2699
  %2702 = fmul fast float %2701, %2700
  %2703 = fsub fast float 1.500000e+00, %2702
  %2704 = fmul fast float %2699, %2620
  %2705 = fmul fast float %2704, %2703
  %2706 = bitcast float %2621 to i32
  %2707 = ashr i32 %2706, 1
  %2708 = sub nsw i32 1597463174, %2707
  %2709 = bitcast i32 %2708 to float
  %2710 = fmul fast float %2621, 5.000000e-01
  %2711 = fmul fast float %2709, %2709
  %2712 = fmul fast float %2711, %2710
  %2713 = fsub fast float 1.500000e+00, %2712
  %2714 = fmul fast float %2709, %2621
  %2715 = fmul fast float %2714, %2713
  %2716 = bitcast float %2622 to i32
  %2717 = ashr i32 %2716, 1
  %2718 = sub nsw i32 1597463174, %2717
  %2719 = bitcast i32 %2718 to float
  %2720 = fmul fast float %2622, 5.000000e-01
  %2721 = fmul fast float %2719, %2719
  %2722 = fmul fast float %2721, %2720
  %2723 = fsub fast float 1.500000e+00, %2722
  %2724 = fmul fast float %2719, %2622
  %2725 = fmul fast float %2724, %2723
  %2726 = fsub fast float %2705, %2687
  %2727 = fsub fast float %2715, %2691
  %2728 = fsub fast float %2725, %2695
  %2729 = fmul fast float %2726, %2655
  %2730 = fmul fast float %2727, %2657
  %2731 = fmul fast float %2728, %2662
  %2732 = fadd fast float %2729, %2670
  %2733 = fadd fast float %2730, %2674
  %2734 = fadd fast float %2731, %2678
  %2735 = call float @dx.op.unary.f32(i32 7, float %2732)  ; Saturate(value)
  %2736 = call float @dx.op.unary.f32(i32 7, float %2733)  ; Saturate(value)
  %2737 = call float @dx.op.unary.f32(i32 7, float %2734)  ; Saturate(value)
  %2738 = fmul fast float %2735, %2735
  %2739 = fmul fast float %2736, %2736
  %2740 = fmul fast float %2737, %2737
  %2741 = fsub fast float %2738, %2620
  %2742 = fsub fast float %2739, %2621
  %2743 = fsub fast float %2740, %2622
  %2744 = fmul fast float %2741, %2645
  %2745 = fmul fast float %2742, %2645
  %2746 = fmul fast float %2743, %2645
  %2747 = fadd fast float %2744, %2620
  %2748 = fadd fast float %2745, %2621
  %2749 = fadd fast float %2746, %2622
  %2750 = fadd fast float %2667, %2631
  %2751 = fsub fast float %2750, %2684
  %2752 = call float @dx.op.unary.f32(i32 7, float %2751)  ; Saturate(value)
  %2753 = fsub fast float %2752, %2631
  %2754 = fmul fast float %2753, %2645
  %2755 = fadd fast float %2754, %2631
  br label %2809

; <label>:2756                                    ; preds = %2644
  %2757 = and i32 %2647, 134217728
  %2758 = icmp eq i32 %2757, 0
  br i1 %2758, label %2793, label %2759

; <label>:2759                                    ; preds = %2756
  %2760 = call float @dx.op.unary.f32(i32 24, float %331)  ; Sqrt(value)
  %2761 = call float @dx.op.unary.f32(i32 24, float %335)  ; Sqrt(value)
  %2762 = call float @dx.op.unary.f32(i32 24, float %339)  ; Sqrt(value)
  %2763 = fadd fast float %2760, -5.000000e-01
  %2764 = fadd fast float %2761, -5.000000e-01
  %2765 = fadd fast float %2762, -5.000000e-01
  %2766 = fmul fast float %2763, %2645
  %2767 = fmul fast float %2764, %2645
  %2768 = fmul fast float %2765, %2645
  %2769 = fadd fast float %2766, 5.000000e-01
  %2770 = fadd fast float %2767, 5.000000e-01
  %2771 = fadd fast float %2768, 5.000000e-01
  %2772 = call float @dx.op.unary.f32(i32 24, float %2620)  ; Sqrt(value)
  %2773 = call float @dx.op.unary.f32(i32 24, float %2621)  ; Sqrt(value)
  %2774 = call float @dx.op.unary.f32(i32 24, float %2622)  ; Sqrt(value)
  %2775 = fmul fast float %2769, 2.000000e+00
  %2776 = fsub fast float 1.000000e+00, %2775
  %2777 = fmul fast float %2776, %2772
  %2778 = fadd fast float %2777, %2775
  %2779 = fmul fast float %2778, %2772
  %2780 = fmul fast float %2770, 2.000000e+00
  %2781 = fsub fast float 1.000000e+00, %2780
  %2782 = fmul fast float %2781, %2773
  %2783 = fadd fast float %2782, %2780
  %2784 = fmul fast float %2783, %2773
  %2785 = fmul fast float %2771, 2.000000e+00
  %2786 = fsub fast float 1.000000e+00, %2785
  %2787 = fmul fast float %2786, %2774
  %2788 = fadd fast float %2787, %2785
  %2789 = fmul fast float %2788, %2774
  %2790 = fmul fast float %2779, %2779
  %2791 = fmul fast float %2784, %2784
  %2792 = fmul fast float %2789, %2789
  br label %2809

; <label>:2793                                    ; preds = %2756
  %2794 = fmul fast float %331, %331
  %2795 = fmul fast float %335, %335
  %2796 = fmul fast float %339, %339
  %2797 = fadd fast float %2794, -1.000000e+00
  %2798 = fadd fast float %2795, -1.000000e+00
  %2799 = fadd fast float %2796, -1.000000e+00
  %2800 = fmul fast float %2645, %2797
  %2801 = fmul fast float %2645, %2798
  %2802 = fmul fast float %2645, %2799
  %2803 = fadd fast float %2800, 1.000000e+00
  %2804 = fadd fast float %2801, 1.000000e+00
  %2805 = fadd fast float %2802, 1.000000e+00
  %2806 = fmul fast float %2803, %2620
  %2807 = fmul fast float %2804, %2621
  %2808 = fmul fast float %2805, %2622
  br label %2809

; <label>:2809                                    ; preds = %2793, %2759, %2650, %2606
  %2810 = phi float [ %2755, %2650 ], [ %2631, %2759 ], [ %2631, %2793 ], [ 0x3FA23C0BE0000000, %2606 ]
  %2811 = phi float [ %2747, %2650 ], [ %2790, %2759 ], [ %2806, %2793 ], [ 1.000000e+00, %2606 ]
  %2812 = phi float [ %2748, %2650 ], [ %2791, %2759 ], [ %2807, %2793 ], [ 1.000000e+00, %2606 ]
  %2813 = phi float [ %2749, %2650 ], [ %2792, %2759 ], [ %2808, %2793 ], [ 1.000000e+00, %2606 ]
  %2814 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2815 = extractvalue %dx.types.CBufRet.i32 %2814, 1
  %2816 = and i32 %2815, 1
  %2817 = icmp ne i32 %2816, 0
  %2818 = add i32 %50, 356
  %2819 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2818, i32 undef)  ; BufferLoad(srv,index,wot)
  %2820 = extractvalue %dx.types.ResRet.i32 %2819, 0
  %2821 = and i32 %2820, 32
  %2822 = icmp ne i32 %2821, 0
  %2823 = and i1 %2817, %2822
  %2824 = select i1 %2823, float 1.000000e+00, float %2811
  %2825 = select i1 %2823, float 0x3FD3333340000000, float %2812
  %2826 = select i1 %2823, float 0x3FD3333340000000, float %2813
  %2827 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2309, i32 undef)  ; BufferLoad(srv,index,wot)
  %2828 = extractvalue %dx.types.ResRet.i32 %2827, 0
  %2829 = and i32 %2828, 32
  %2830 = icmp eq i32 %2829, 0
  br i1 %2830, label %2903, label %2831

; <label>:2831                                    ; preds = %2809
  %2832 = add i32 %50, 124
  %2833 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2832, i32 undef)  ; BufferLoad(srv,index,wot)
  %2834 = extractvalue %dx.types.ResRet.i32 %2833, 0
  %2835 = add i32 %50, 384
  %2836 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2835, i32 undef)  ; BufferLoad(srv,index,wot)
  %2837 = extractvalue %dx.types.ResRet.i32 %2836, 0
  %2838 = add i32 %2837, 0
  %2839 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2838, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2840 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2839, %dx.types.Handle %95, float %2416, float %2417, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2841 = extractvalue %dx.types.ResRet.f32 %2840, 0
  %2842 = extractvalue %dx.types.ResRet.f32 %2840, 1
  %2843 = extractvalue %dx.types.ResRet.f32 %2840, 2
  %2844 = extractvalue %dx.types.ResRet.f32 %2840, 3
  %2845 = and i32 %2834, 255
  %2846 = uitofp i32 %2845 to float
  %2847 = lshr i32 %2834, 8
  %2848 = and i32 %2847, 255
  %2849 = uitofp i32 %2848 to float
  %2850 = lshr i32 %2834, 16
  %2851 = and i32 %2850, 255
  %2852 = uitofp i32 %2851 to float
  %2853 = fmul fast float %2852, 0x3F70101000000000
  %2854 = fmul fast float %2841, %2846
  %2855 = fadd fast float %2854, %2849
  %2856 = fmul fast float %2855, 0x3F70101000000000
  %2857 = fadd fast float %2842, -5.000000e-01
  %2858 = fadd fast float %2844, -5.000000e-01
  %2859 = fmul fast float %2857, %2853
  %2860 = fmul fast float %2858, %2853
  %2861 = fadd fast float %2859, 5.000000e-01
  %2862 = fadd fast float %2860, 5.000000e-01
  %2863 = fmul fast float %2861, 2.000000e+00
  %2864 = fadd fast float %2863, -1.000000e+00
  %2865 = fmul fast float %2862, 2.000000e+00
  %2866 = fadd fast float %2865, -1.000000e+00
  %2867 = fadd fast float %2864, %2866
  %2868 = fmul fast float %2867, 5.000000e-01
  %2869 = fsub fast float %2864, %2866
  %2870 = fmul fast float %2869, 5.000000e-01
  %2871 = call float @dx.op.unary.f32(i32 6, float %2868)  ; FAbs(value)
  %2872 = fsub fast float 1.000000e+00, %2871
  %2873 = call float @dx.op.unary.f32(i32 6, float %2870)  ; FAbs(value)
  %2874 = fsub fast float %2872, %2873
  %2875 = call float @dx.op.dot3.f32(i32 55, float %2868, float %2870, float %2874, float %2868, float %2870, float %2874)  ; Dot3(ax,ay,az,bx,by,bz)
  %2876 = call float @dx.op.unary.f32(i32 25, float %2875)  ; Rsqrt(value)
  %2877 = fmul fast float %2868, %2876
  %2878 = fmul fast float %2870, %2876
  %2879 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2309, i32 undef)  ; BufferLoad(srv,index,wot)
  %2880 = extractvalue %dx.types.ResRet.i32 %2879, 0
  %2881 = and i32 %2880, 67108864
  %2882 = icmp eq i32 %2881, 0
  br i1 %2882, label %2899, label %2883

; <label>:2883                                    ; preds = %2831
  %2884 = add i32 %50, 312
  %2885 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2884, i32 undef)  ; BufferLoad(srv,index,wot)
  %2886 = extractvalue %dx.types.ResRet.i32 %2885, 0
  %2887 = and i32 %2886, 65535
  %2888 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2887)  ; LegacyF16ToF32(value)
  %2889 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2326, i32 undef)  ; BufferLoad(srv,index,wot)
  %2890 = extractvalue %dx.types.ResRet.i32 %2889, 0
  %2891 = and i32 %2890, 65535
  %2892 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2891)  ; LegacyF16ToF32(value)
  %2893 = lshr i32 %2886, 16
  %2894 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2893)  ; LegacyF16ToF32(value)
  %2895 = fsub fast float %2856, %2894
  %2896 = fmul fast float %2895, %2888
  %2897 = fadd fast float %2896, %2892
  %2898 = call float @dx.op.unary.f32(i32 7, float %2897)  ; Saturate(value)
  br label %2899

; <label>:2899                                    ; preds = %2883, %2831
  %2900 = phi float [ %2898, %2883 ], [ %2856, %2831 ]
  %2901 = call float @dx.op.dot2.f32(i32 54, float %2877, float %2878, float %2320, float %2321)  ; Dot2(ax,ay,bx,by)
  %2902 = call float @dx.op.dot2.f32(i32 54, float %2877, float %2878, float %2322, float %2323)  ; Dot2(ax,ay,bx,by)
  br label %2903

; <label>:2903                                    ; preds = %2899, %2809
  %2904 = phi float [ %2900, %2899 ], [ 0x3FD6666660000000, %2809 ]
  %2905 = phi float [ %2901, %2899 ], [ 0.000000e+00, %2809 ]
  %2906 = phi float [ %2902, %2899 ], [ 0.000000e+00, %2809 ]
  %2907 = phi float [ %2843, %2899 ], [ 1.000000e+00, %2809 ]
  %2908 = add i32 %50, 192
  %2909 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2908, i32 undef)  ; BufferLoad(srv,index,wot)
  %2910 = extractvalue %dx.types.ResRet.i32 %2909, 0
  %2911 = lshr i32 %2910, 22
  %2912 = shl nuw nsw i32 %2911, 5
  %2913 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2912)  ; LegacyF16ToF32(value)
  %2914 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2309, i32 undef)  ; BufferLoad(srv,index,wot)
  %2915 = extractvalue %dx.types.ResRet.i32 %2914, 0
  %2916 = and i32 %2915, 64
  %2917 = icmp eq i32 %2916, 0
  br i1 %2917, label %2951, label %2918

; <label>:2918                                    ; preds = %2903
  %2919 = add i32 %50, 400
  %2920 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2919, i32 undef)  ; BufferLoad(srv,index,wot)
  %2921 = extractvalue %dx.types.ResRet.i32 %2920, 0
  %2922 = add i32 %2921, 0
  %2923 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2922, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2924 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2309, i32 undef)  ; BufferLoad(srv,index,wot)
  %2925 = extractvalue %dx.types.ResRet.i32 %2924, 0
  %2926 = and i32 %2925, 131072
  %2927 = icmp eq i32 %2926, 0
  %2928 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2923, %dx.types.Handle %95, float %2416, float %2417, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2929 = extractvalue %dx.types.ResRet.f32 %2928, 0
  %2930 = extractvalue %dx.types.ResRet.f32 %2928, 1
  %2931 = extractvalue %dx.types.ResRet.f32 %2928, 2
  %2932 = fmul fast float %2929, %319
  %2933 = fmul fast float %2930, %322
  %2934 = fmul fast float %2931, %325
  br i1 %2927, label %2941, label %2935

; <label>:2935                                    ; preds = %2918
  %2936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2937 = extractvalue %dx.types.CBufRet.f32 %2936, 0
  %2938 = fmul fast float %2937, %2932
  %2939 = fmul fast float %2937, %2933
  %2940 = fmul fast float %2937, %2934
  br label %2941

; <label>:2941                                    ; preds = %2935, %2918
  %2942 = phi float [ %2938, %2935 ], [ %2932, %2918 ]
  %2943 = phi float [ %2939, %2935 ], [ %2933, %2918 ]
  %2944 = phi float [ %2940, %2935 ], [ %2934, %2918 ]
  %2945 = fmul fast float %2942, %2913
  %2946 = select i1 %215, float %2945, float %2942
  %2947 = call float @dx.op.dot3.f32(i32 55, float %2946, float %2943, float %2944, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2948 = select i1 %215, float 0.000000e+00, float %2942
  %2949 = select i1 %215, float %2947, float %2943
  %2950 = select i1 %215, float 0.000000e+00, float %2944
  br label %2951

; <label>:2951                                    ; preds = %2941, %2903
  %2952 = phi float [ %2948, %2941 ], [ 0.000000e+00, %2903 ]
  %2953 = phi float [ %2949, %2941 ], [ 0.000000e+00, %2903 ]
  %2954 = phi float [ %2950, %2941 ], [ 0.000000e+00, %2903 ]
  %2955 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2309, i32 undef)  ; BufferLoad(srv,index,wot)
  %2956 = extractvalue %dx.types.ResRet.i32 %2955, 0
  %2957 = and i32 %2956, 1024
  %2958 = icmp eq i32 %2957, 0
  br i1 %2958, label %2989, label %2959

; <label>:2959                                    ; preds = %2951
  %2960 = add i32 %50, 184
  %2961 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2960, i32 undef)  ; BufferLoad(srv,index,wot)
  %2962 = extractvalue %dx.types.ResRet.i32 %2961, 0
  %2963 = and i32 %2962, 255
  %2964 = uitofp i32 %2963 to float
  %2965 = fmul fast float %2964, 0x3F70101020000000
  %2966 = lshr i32 %2962, 8
  %2967 = and i32 %2966, 255
  %2968 = uitofp i32 %2967 to float
  %2969 = fmul fast float %2968, 0x3F70101020000000
  %2970 = lshr i32 %2962, 16
  %2971 = and i32 %2970, 255
  %2972 = uitofp i32 %2971 to float
  %2973 = fmul fast float %2972, 0x3F70101020000000
  %2974 = fmul fast float %2965, %2965
  %2975 = fmul fast float %2969, %2969
  %2976 = fmul fast float %2973, %2973
  %2977 = add i32 %50, 464
  %2978 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2977, i32 undef)  ; BufferLoad(srv,index,wot)
  %2979 = extractvalue %dx.types.ResRet.i32 %2978, 0
  %2980 = add i32 %2979, 0
  %2981 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2980, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2982 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2981, %dx.types.Handle %96, float %2416, float %2417, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2983 = extractvalue %dx.types.ResRet.f32 %2982, 0
  %2984 = extractvalue %dx.types.ResRet.f32 %2982, 1
  %2985 = extractvalue %dx.types.ResRet.f32 %2982, 2
  %2986 = fmul fast float %2974, %2983
  %2987 = fmul fast float %2975, %2984
  %2988 = fmul fast float %2976, %2985
  br label %2989

; <label>:2989                                    ; preds = %2959, %2951
  %2990 = phi float [ %2986, %2959 ], [ 0.000000e+00, %2951 ]
  %2991 = phi float [ %2987, %2959 ], [ 0.000000e+00, %2951 ]
  %2992 = phi float [ %2988, %2959 ], [ 0.000000e+00, %2951 ]
  %2993 = fcmp fast ogt float %2990, 0.000000e+00
  %2994 = fcmp fast ogt float %2991, 0.000000e+00
  %2995 = fcmp fast ogt float %2992, 0.000000e+00
  %2996 = call float @dx.op.unary.f32(i32 23, float %2990)  ; Log(value)
  %2997 = call float @dx.op.unary.f32(i32 23, float %2991)  ; Log(value)
  %2998 = call float @dx.op.unary.f32(i32 23, float %2992)  ; Log(value)
  %2999 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2908, i32 undef)  ; BufferLoad(srv,index,wot)
  %3000 = extractvalue %dx.types.ResRet.i32 %2999, 0
  %3001 = lshr i32 %3000, 7
  %3002 = and i32 %3001, 32752
  %3003 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3002)  ; LegacyF16ToF32(value)
  %3004 = fmul fast float %2996, 0xBFE62E4300000000
  %3005 = fmul fast float %3004, %3003
  %3006 = fmul fast float %2997, 0xBFE62E4300000000
  %3007 = fmul fast float %3006, %3003
  %3008 = fmul fast float %2998, 0xBFE62E4300000000
  %3009 = fmul fast float %3008, %3003
  %3010 = select i1 %2993, float %3005, float 1.270000e+02
  %3011 = select i1 %2994, float %3007, float 1.270000e+02
  %3012 = select i1 %2995, float %3009, float 1.270000e+02
  %3013 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2309, i32 undef)  ; BufferLoad(srv,index,wot)
  %3014 = extractvalue %dx.types.ResRet.i32 %3013, 0
  %3015 = and i32 %3014, 10240
  %3016 = icmp eq i32 %3015, 0
  br i1 %3016, label %3061, label %3017

; <label>:3017                                    ; preds = %2989
  %3018 = add i32 %50, 480
  %3019 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3018, i32 undef)  ; BufferLoad(srv,index,wot)
  %3020 = extractvalue %dx.types.ResRet.i32 %3019, 0
  %3021 = add i32 %3020, 0
  %3022 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3021, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3023 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3022, %dx.types.Handle %96, float %2416, float %2417, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3024 = extractvalue %dx.types.ResRet.f32 %3023, 1
  %3025 = extractvalue %dx.types.ResRet.f32 %3023, 3
  %3026 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2309, i32 undef)  ; BufferLoad(srv,index,wot)
  %3027 = extractvalue %dx.types.ResRet.i32 %3026, 0
  %3028 = and i32 %3027, 1048576
  %3029 = icmp ne i32 %3028, 0
  %3030 = and i32 %3027, 8192
  %3031 = icmp eq i32 %3030, 0
  br i1 %3031, label %3047, label %3032

; <label>:3032                                    ; preds = %3017
  %3033 = extractvalue %dx.types.ResRet.f32 %3023, 2
  %3034 = select i1 %3029, float %3033, float %3024
  %3035 = extractvalue %dx.types.ResRet.f32 %3023, 0
  %3036 = select i1 %3029, float %3035, float %3024
  %3037 = add i32 %50, 128
  %3038 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3037, i32 undef)  ; BufferLoad(srv,index,wot)
  %3039 = extractvalue %dx.types.ResRet.i32 %3038, 0
  %3040 = lshr i32 %3039, 16
  %3041 = and i32 %3040, 255
  %3042 = uitofp i32 %3041 to float
  %3043 = fmul fast float %3042, 0x3F80101020000000
  %3044 = fmul fast float %3043, %3036
  %3045 = fmul fast float %3043, %3024
  %3046 = fmul fast float %3043, %3034
  br label %3047

; <label>:3047                                    ; preds = %3032, %3017
  %3048 = phi float [ %3044, %3032 ], [ 0.000000e+00, %3017 ]
  %3049 = phi float [ %3045, %3032 ], [ 0.000000e+00, %3017 ]
  %3050 = phi float [ %3046, %3032 ], [ 0.000000e+00, %3017 ]
  %3051 = and i32 %3027, 2048
  %3052 = icmp eq i32 %3051, 0
  br i1 %3052, label %3061, label %3053

; <label>:3053                                    ; preds = %3047
  %3054 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2908, i32 undef)  ; BufferLoad(srv,index,wot)
  %3055 = extractvalue %dx.types.ResRet.i32 %3054, 0
  %3056 = shl i32 %3055, 4
  %3057 = and i32 %3056, 32752
  %3058 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3057)  ; LegacyF16ToF32(value)
  %3059 = fmul fast float %3058, %3025
  %3060 = call float @dx.op.binary.f32(i32 35, float %3059, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3061

; <label>:3061                                    ; preds = %3053, %3047, %2989
  %3062 = phi float [ %3048, %3053 ], [ %3048, %3047 ], [ 0.000000e+00, %2989 ]
  %3063 = phi float [ %3049, %3053 ], [ %3049, %3047 ], [ 0.000000e+00, %2989 ]
  %3064 = phi float [ %3050, %3053 ], [ %3050, %3047 ], [ 0.000000e+00, %2989 ]
  %3065 = phi float [ %3060, %3053 ], [ 0x3F70101020000000, %3047 ], [ 0x3F70101020000000, %2989 ]
  %3066 = add i32 %50, 128
  %3067 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3066, i32 undef)  ; BufferLoad(srv,index,wot)
  %3068 = extractvalue %dx.types.ResRet.i32 %3067, 0
  %3069 = and i32 %3068, 255
  %3070 = uitofp i32 %3069 to float
  %3071 = lshr i32 %3068, 8
  %3072 = and i32 %3071, 255
  %3073 = uitofp i32 %3072 to float
  %3074 = call float @dx.op.dot3.f32(i32 55, float %2824, float %2825, float %2826, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3075 = fmul fast float %3073, %3074
  %3076 = fadd fast float %3075, %3070
  %3077 = fmul fast float %3076, 0x3F70101020000000
  %3078 = call float @dx.op.unary.f32(i32 7, float %3077)  ; Saturate(value)
  br i1 %2308, label %3079, label %3114

; <label>:3079                                    ; preds = %3061
  %3080 = fmul fast float %3065, 2.000000e+00
  %3081 = fcmp fast olt float %3010, 1.270000e+02
  %3082 = fcmp fast olt float %3011, 1.270000e+02
  %3083 = fcmp fast olt float %3012, 1.270000e+02
  %3084 = fmul fast float %3010, 0xBFF7154760000000
  %3085 = fmul fast float %3084, %3080
  %3086 = fmul fast float %3011, 0xBFF7154760000000
  %3087 = fmul fast float %3086, %3080
  %3088 = fmul fast float %3012, 0xBFF7154760000000
  %3089 = fmul fast float %3088, %3080
  %3090 = call float @dx.op.unary.f32(i32 21, float %3085)  ; Exp(value)
  %3091 = call float @dx.op.unary.f32(i32 21, float %3087)  ; Exp(value)
  %3092 = call float @dx.op.unary.f32(i32 21, float %3089)  ; Exp(value)
  %3093 = call float @dx.op.unary.f32(i32 7, float %3090)  ; Saturate(value)
  %3094 = call float @dx.op.unary.f32(i32 7, float %3091)  ; Saturate(value)
  %3095 = call float @dx.op.unary.f32(i32 7, float %3092)  ; Saturate(value)
  %3096 = fadd fast float %3093, -1.000000e+00
  %3097 = select i1 %3081, float %3096, float -1.000000e+00
  %3098 = fadd fast float %3094, -1.000000e+00
  %3099 = select i1 %3082, float %3098, float -1.000000e+00
  %3100 = fadd fast float %3095, -1.000000e+00
  %3101 = select i1 %3083, float %3100, float -1.000000e+00
  %3102 = fmul fast float %3097, %2604
  %3103 = fmul fast float %3099, %2604
  %3104 = fmul fast float %3101, %2604
  %3105 = fadd fast float %3102, 1.000000e+00
  %3106 = fadd fast float %3103, 1.000000e+00
  %3107 = fadd fast float %3104, 1.000000e+00
  %3108 = fmul fast float %3105, %2290
  %3109 = fmul fast float %3106, %2291
  %3110 = fmul fast float %3107, %2292
  %3111 = fmul fast float %3105, %2293
  %3112 = fmul fast float %3106, %2294
  %3113 = fmul fast float %3107, %2295
  br label %3114

; <label>:3114                                    ; preds = %3079, %3061
  %3115 = phi float [ %3108, %3079 ], [ %2290, %3061 ]
  %3116 = phi float [ %3109, %3079 ], [ %2291, %3061 ]
  %3117 = phi float [ %3110, %3079 ], [ %2292, %3061 ]
  %3118 = phi float [ %3111, %3079 ], [ %2293, %3061 ]
  %3119 = phi float [ %3112, %3079 ], [ %2294, %3061 ]
  %3120 = phi float [ %3113, %3079 ], [ %2295, %3061 ]
  %3121 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2309, i32 undef)  ; BufferLoad(srv,index,wot)
  %3122 = extractvalue %dx.types.ResRet.i32 %3121, 0
  %3123 = and i32 %3122, 3
  %3124 = icmp eq i32 %3123, 3
  br i1 %3124, label %3203, label %3125

; <label>:3125                                    ; preds = %3114
  %3126 = and i32 %3122, 16
  %3127 = icmp ne i32 %3126, 0
  %3128 = select i1 %3127, float %2604, float 0.000000e+00
  %3129 = icmp eq i32 %3123, 0
  br i1 %3129, label %3130, label %3158

; <label>:3130                                    ; preds = %3125
  %3131 = and i32 %3122, 64
  %3132 = icmp ne i32 %3131, 0
  %3133 = select i1 %3132, float %2604, float 0.000000e+00
  %3134 = fsub fast float %2824, %3115
  %3135 = fsub fast float %2825, %3116
  %3136 = fsub fast float %2826, %3117
  %3137 = fmul fast float %3128, %3134
  %3138 = fmul fast float %3128, %3135
  %3139 = fmul fast float %3128, %3136
  %3140 = fadd fast float %3137, %3115
  %3141 = fadd fast float %3138, %3116
  %3142 = fadd fast float %3139, %3117
  %3143 = fsub fast float %2810, %2302
  %3144 = fmul fast float %3128, %3143
  %3145 = fadd fast float %3144, %2302
  %3146 = fsub fast float %2952, %3118
  %3147 = fsub fast float %2953, %3119
  %3148 = fsub fast float %2954, %3120
  %3149 = fmul fast float %3133, %3146
  %3150 = fmul fast float %3133, %3147
  %3151 = fmul fast float %3133, %3148
  %3152 = fadd fast float %3149, %3118
  %3153 = fadd fast float %3150, %3119
  %3154 = fadd fast float %3151, %3120
  %3155 = fsub fast float %3078, %2306
  %3156 = fmul fast float %3128, %3155
  %3157 = fadd fast float %3156, %2306
  br label %3203

; <label>:3158                                    ; preds = %3125
  %3159 = icmp eq i32 %3123, 1
  br i1 %3159, label %3160, label %3173

; <label>:3160                                    ; preds = %3158
  %3161 = fadd fast float %2824, -1.000000e+00
  %3162 = fadd fast float %2825, -1.000000e+00
  %3163 = fadd fast float %2826, -1.000000e+00
  %3164 = fmul fast float %3128, %3161
  %3165 = fmul fast float %3128, %3162
  %3166 = fmul fast float %3128, %3163
  %3167 = fadd fast float %3164, 1.000000e+00
  %3168 = fadd fast float %3165, 1.000000e+00
  %3169 = fadd fast float %3166, 1.000000e+00
  %3170 = fmul fast float %3167, %3115
  %3171 = fmul fast float %3168, %3116
  %3172 = fmul fast float %3169, %3117
  br label %3203

; <label>:3173                                    ; preds = %3158
  %3174 = icmp eq i32 %3123, 2
  br i1 %3174, label %3175, label %3203

; <label>:3175                                    ; preds = %3173
  %3176 = call float @dx.op.unary.f32(i32 24, float %2824)  ; Sqrt(value)
  %3177 = call float @dx.op.unary.f32(i32 24, float %2825)  ; Sqrt(value)
  %3178 = call float @dx.op.unary.f32(i32 24, float %2826)  ; Sqrt(value)
  %3179 = fadd fast float %3176, -5.000000e-01
  %3180 = fadd fast float %3177, -5.000000e-01
  %3181 = fadd fast float %3178, -5.000000e-01
  %3182 = fmul fast float %3179, %3128
  %3183 = fmul fast float %3180, %3128
  %3184 = fmul fast float %3181, %3128
  %3185 = fadd fast float %3182, 5.000000e-01
  %3186 = fadd fast float %3183, 5.000000e-01
  %3187 = fadd fast float %3184, 5.000000e-01
  %3188 = fmul fast float %3185, 2.000000e+00
  %3189 = fsub fast float 1.000000e+00, %3188
  %3190 = fmul fast float %3189, %3115
  %3191 = fadd fast float %3190, %3188
  %3192 = fmul fast float %3191, %3115
  %3193 = fmul fast float %3186, 2.000000e+00
  %3194 = fsub fast float 1.000000e+00, %3193
  %3195 = fmul fast float %3194, %3116
  %3196 = fadd fast float %3195, %3193
  %3197 = fmul fast float %3196, %3116
  %3198 = fmul fast float %3187, 2.000000e+00
  %3199 = fsub fast float 1.000000e+00, %3198
  %3200 = fmul fast float %3199, %3117
  %3201 = fadd fast float %3200, %3198
  %3202 = fmul fast float %3201, %3117
  br label %3203

; <label>:3203                                    ; preds = %3175, %3173, %3160, %3130, %3114
  %3204 = phi float [ %3115, %3114 ], [ %3192, %3175 ], [ %3115, %3173 ], [ %3170, %3160 ], [ %3140, %3130 ]
  %3205 = phi float [ %3116, %3114 ], [ %3197, %3175 ], [ %3116, %3173 ], [ %3171, %3160 ], [ %3141, %3130 ]
  %3206 = phi float [ %3117, %3114 ], [ %3202, %3175 ], [ %3117, %3173 ], [ %3172, %3160 ], [ %3142, %3130 ]
  %3207 = phi float [ %3118, %3114 ], [ %3118, %3175 ], [ %3118, %3173 ], [ %3118, %3160 ], [ %3152, %3130 ]
  %3208 = phi float [ %3119, %3114 ], [ %3119, %3175 ], [ %3119, %3173 ], [ %3119, %3160 ], [ %3153, %3130 ]
  %3209 = phi float [ %3120, %3114 ], [ %3120, %3175 ], [ %3120, %3173 ], [ %3120, %3160 ], [ %3154, %3130 ]
  %3210 = phi float [ %2302, %3114 ], [ %2302, %3175 ], [ %2302, %3173 ], [ %2302, %3160 ], [ %3145, %3130 ]
  %3211 = phi float [ %2306, %3114 ], [ %2306, %3175 ], [ %2306, %3173 ], [ %2306, %3160 ], [ %3157, %3130 ]
  %3212 = and i32 %3122, 12
  %3213 = icmp eq i32 %3212, 12
  br i1 %3213, label %3344, label %3214

; <label>:3214                                    ; preds = %3203
  %3215 = and i32 %3122, 2097184
  %3216 = icmp eq i32 %3215, 2097184
  %3217 = select i1 %3216, float %2604, float 0.000000e+00
  %3218 = and i32 %3122, 4194336
  %3219 = icmp eq i32 %3218, 4194336
  %3220 = select i1 %3219, float %2604, float 0.000000e+00
  %3221 = and i32 %3122, 8388640
  %3222 = icmp eq i32 %3221, 8388640
  %3223 = select i1 %3222, float %2604, float 0.000000e+00
  %3224 = and i32 %3122, 1024
  %3225 = icmp ne i32 %3224, 0
  %3226 = select i1 %3225, float %2604, float 0.000000e+00
  %3227 = and i32 %3122, 2048
  %3228 = icmp ne i32 %3227, 0
  %3229 = select i1 %3228, float %2604, float 0.000000e+00
  %3230 = and i32 %3122, 8192
  %3231 = icmp ne i32 %3230, 0
  %3232 = select i1 %3231, float %2604, float 0.000000e+00
  %3233 = icmp eq i32 %3212, 0
  br i1 %3233, label %3234, label %3268

; <label>:3234                                    ; preds = %3214
  %3235 = fsub fast float %2905, %2288
  %3236 = fsub fast float %2906, %2289
  %3237 = fmul fast float %3217, %3235
  %3238 = fmul fast float %3217, %3236
  %3239 = fadd fast float %3237, %2288
  %3240 = fadd fast float %3238, %2289
  %3241 = fsub fast float %2907, %2304
  %3242 = fmul fast float %3220, %3241
  %3243 = fadd fast float %3242, %2304
  %3244 = fsub fast float %2904, %2303
  %3245 = fmul fast float %3223, %3244
  %3246 = fadd fast float %3245, %2303
  %3247 = fsub fast float %3010, %2296
  %3248 = fsub fast float %3011, %2297
  %3249 = fsub fast float %3012, %2298
  %3250 = fmul fast float %3226, %3247
  %3251 = fmul fast float %3226, %3248
  %3252 = fmul fast float %3226, %3249
  %3253 = fadd fast float %3250, %2296
  %3254 = fadd fast float %3251, %2297
  %3255 = fadd fast float %3252, %2298
  %3256 = fsub fast float %3065, %2305
  %3257 = fmul fast float %3229, %3256
  %3258 = fadd fast float %3257, %2305
  %3259 = fsub fast float %3062, %2299
  %3260 = fsub fast float %3063, %2300
  %3261 = fsub fast float %3064, %2301
  %3262 = fmul fast float %3232, %3259
  %3263 = fmul fast float %3232, %3260
  %3264 = fmul fast float %3232, %3261
  %3265 = fadd fast float %3262, %2299
  %3266 = fadd fast float %3263, %2300
  %3267 = fadd fast float %3264, %2301
  br label %3344

; <label>:3268                                    ; preds = %3214
  %3269 = icmp eq i32 %3212, 4
  br i1 %3269, label %3270, label %3316

; <label>:3270                                    ; preds = %3268
  %3271 = fmul fast float %3217, %2905
  %3272 = fmul fast float %3217, %2906
  %3273 = fadd fast float %3271, %2288
  %3274 = fadd fast float %3272, %2289
  %3275 = call float @dx.op.binary.f32(i32 36, float %2304, float %2907)  ; FMin(a,b)
  %3276 = fsub fast float %3275, %2304
  %3277 = fmul fast float %3276, %3220
  %3278 = fadd fast float %3277, %2304
  %3279 = fadd fast float %2904, %2303
  %3280 = fmul fast float %3279, 0x3FF337FAE0000000
  %3281 = fmul fast float %2303, %2303
  %3282 = fmul fast float %2904, %2904
  %3283 = fadd fast float %3282, %3281
  %3284 = fmul fast float %3283, 0x3FE5152B00000000
  %3285 = fmul fast float %2303, 0xBFCC1F85E0000000
  %3286 = fmul fast float %3285, %2904
  %3287 = fadd fast float %3286, 0xBFE1363700000000
  %3288 = fadd fast float %3287, %3280
  %3289 = fsub fast float %3288, %3284
  %3290 = fmul fast float %3279, 0x3FBA6F0D00000000
  %3291 = fmul fast float %3283, 0x3FD0432880000000
  %3292 = fmul fast float %2303, 0xBFEF110800000000
  %3293 = fmul fast float %3292, %2904
  %3294 = fadd fast float %3293, 1.000000e+00
  %3295 = fsub fast float %3294, %3290
  %3296 = fadd fast float %3295, %3291
  %3297 = fdiv fast float %3289, %3296
  %3298 = call float @dx.op.unary.f32(i32 7, float %3297)  ; Saturate(value)
  %3299 = fsub fast float %3298, %2303
  %3300 = fmul fast float %3299, %3223
  %3301 = fadd fast float %3300, %2303
  %3302 = fmul fast float %3226, %3010
  %3303 = fmul fast float %3226, %3011
  %3304 = fmul fast float %3226, %3012
  %3305 = fadd fast float %3302, %2296
  %3306 = fadd fast float %3303, %2297
  %3307 = fadd fast float %3304, %2298
  %3308 = fmul fast float %3229, %3065
  %3309 = fadd fast float %3308, %2305
  %3310 = fmul fast float %3232, %3062
  %3311 = fmul fast float %3232, %3063
  %3312 = fmul fast float %3232, %3064
  %3313 = fadd fast float %3310, %2299
  %3314 = fadd fast float %3311, %2300
  %3315 = fadd fast float %3312, %2301
  br label %3344

; <label>:3316                                    ; preds = %3268
  %3317 = icmp eq i32 %3212, 8
  br i1 %3317, label %3318, label %3344

; <label>:3318                                    ; preds = %3316
  %3319 = fmul fast float %3217, %2905
  %3320 = fmul fast float %3217, %2906
  %3321 = fadd fast float %3319, %2288
  %3322 = fadd fast float %3320, %2289
  %3323 = call float @dx.op.binary.f32(i32 36, float %2304, float %2907)  ; FMin(a,b)
  %3324 = fsub fast float %3323, %2304
  %3325 = fmul fast float %3324, %3220
  %3326 = fadd fast float %3325, %2304
  %3327 = fsub fast float %2904, %2303
  %3328 = fmul fast float %3223, %3327
  %3329 = fadd fast float %3328, %2303
  %3330 = fmul fast float %3226, %3010
  %3331 = fmul fast float %3226, %3011
  %3332 = fmul fast float %3226, %3012
  %3333 = fadd fast float %3330, %2296
  %3334 = fadd fast float %3331, %2297
  %3335 = fadd fast float %3332, %2298
  %3336 = fmul fast float %3229, %3065
  %3337 = fadd fast float %3336, %2305
  %3338 = fmul fast float %3232, %3062
  %3339 = fmul fast float %3232, %3063
  %3340 = fmul fast float %3232, %3064
  %3341 = fadd fast float %3338, %2299
  %3342 = fadd fast float %3339, %2300
  %3343 = fadd fast float %3340, %2301
  br label %3344

; <label>:3344                                    ; preds = %3318, %3316, %3270, %3234, %3203, %2603, %2307, %2287
  %3345 = phi float [ %2288, %3203 ], [ %2288, %2603 ], [ %2288, %2287 ], [ %3321, %3318 ], [ %2288, %3316 ], [ %3273, %3270 ], [ %3239, %3234 ], [ %2288, %2307 ]
  %3346 = phi float [ %2289, %3203 ], [ %2289, %2603 ], [ %2289, %2287 ], [ %3322, %3318 ], [ %2289, %3316 ], [ %3274, %3270 ], [ %3240, %3234 ], [ %2289, %2307 ]
  %3347 = phi float [ %3204, %3203 ], [ %2290, %2603 ], [ %2290, %2287 ], [ %3204, %3318 ], [ %3204, %3316 ], [ %3204, %3270 ], [ %3204, %3234 ], [ %2290, %2307 ]
  %3348 = phi float [ %3205, %3203 ], [ %2291, %2603 ], [ %2291, %2287 ], [ %3205, %3318 ], [ %3205, %3316 ], [ %3205, %3270 ], [ %3205, %3234 ], [ %2291, %2307 ]
  %3349 = phi float [ %3206, %3203 ], [ %2292, %2603 ], [ %2292, %2287 ], [ %3206, %3318 ], [ %3206, %3316 ], [ %3206, %3270 ], [ %3206, %3234 ], [ %2292, %2307 ]
  %3350 = phi float [ %3207, %3203 ], [ %2293, %2603 ], [ %2293, %2287 ], [ %3207, %3318 ], [ %3207, %3316 ], [ %3207, %3270 ], [ %3207, %3234 ], [ %2293, %2307 ]
  %3351 = phi float [ %3208, %3203 ], [ %2294, %2603 ], [ %2294, %2287 ], [ %3208, %3318 ], [ %3208, %3316 ], [ %3208, %3270 ], [ %3208, %3234 ], [ %2294, %2307 ]
  %3352 = phi float [ %3209, %3203 ], [ %2295, %2603 ], [ %2295, %2287 ], [ %3209, %3318 ], [ %3209, %3316 ], [ %3209, %3270 ], [ %3209, %3234 ], [ %2295, %2307 ]
  %3353 = phi float [ %2296, %3203 ], [ %2296, %2603 ], [ %2296, %2287 ], [ %3333, %3318 ], [ %2296, %3316 ], [ %3305, %3270 ], [ %3253, %3234 ], [ %2296, %2307 ]
  %3354 = phi float [ %2297, %3203 ], [ %2297, %2603 ], [ %2297, %2287 ], [ %3334, %3318 ], [ %2297, %3316 ], [ %3306, %3270 ], [ %3254, %3234 ], [ %2297, %2307 ]
  %3355 = phi float [ %2298, %3203 ], [ %2298, %2603 ], [ %2298, %2287 ], [ %3335, %3318 ], [ %2298, %3316 ], [ %3307, %3270 ], [ %3255, %3234 ], [ %2298, %2307 ]
  %3356 = phi float [ %2299, %3203 ], [ %2299, %2603 ], [ %2299, %2287 ], [ %3341, %3318 ], [ %2299, %3316 ], [ %3313, %3270 ], [ %3265, %3234 ], [ %2299, %2307 ]
  %3357 = phi float [ %2300, %3203 ], [ %2300, %2603 ], [ %2300, %2287 ], [ %3342, %3318 ], [ %2300, %3316 ], [ %3314, %3270 ], [ %3266, %3234 ], [ %2300, %2307 ]
  %3358 = phi float [ %2301, %3203 ], [ %2301, %2603 ], [ %2301, %2287 ], [ %3343, %3318 ], [ %2301, %3316 ], [ %3315, %3270 ], [ %3267, %3234 ], [ %2301, %2307 ]
  %3359 = phi float [ %3210, %3203 ], [ %2302, %2603 ], [ %2302, %2287 ], [ %3210, %3318 ], [ %3210, %3316 ], [ %3210, %3270 ], [ %3210, %3234 ], [ %2302, %2307 ]
  %3360 = phi float [ %2303, %3203 ], [ %2303, %2603 ], [ %2303, %2287 ], [ %3329, %3318 ], [ %2303, %3316 ], [ %3301, %3270 ], [ %3246, %3234 ], [ %2303, %2307 ]
  %3361 = phi float [ %2304, %3203 ], [ %2304, %2603 ], [ %2304, %2287 ], [ %3326, %3318 ], [ %2304, %3316 ], [ %3278, %3270 ], [ %3243, %3234 ], [ %2304, %2307 ]
  %3362 = phi float [ %2305, %3203 ], [ %2305, %2603 ], [ %2305, %2287 ], [ %3337, %3318 ], [ %2305, %3316 ], [ %3309, %3270 ], [ %3258, %3234 ], [ %2305, %2307 ]
  %3363 = phi float [ %3211, %3203 ], [ %2306, %2603 ], [ %2306, %2287 ], [ %3211, %3318 ], [ %3211, %3316 ], [ %3211, %3270 ], [ %3211, %3234 ], [ %2306, %2307 ]
  br i1 %406, label %4401, label %3364

; <label>:3364                                    ; preds = %3344
  %3365 = icmp ult i32 %460, 4
  %3366 = add i32 %50, 72
  %3367 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3366, i32 undef)  ; BufferLoad(srv,index,wot)
  %3368 = extractvalue %dx.types.ResRet.i32 %3367, 0
  %3369 = add i32 %50, 76
  %3370 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3369, i32 undef)  ; BufferLoad(srv,index,wot)
  %3371 = extractvalue %dx.types.ResRet.i32 %3370, 0
  %3372 = or i32 %3371, %3368
  %3373 = icmp eq i32 %3372, 0
  br i1 %3373, label %4401, label %3374

; <label>:3374                                    ; preds = %3364
  %3375 = and i32 %3368, 262144
  %3376 = icmp ne i32 %3375, 0
  %3377 = select i1 %3376, float %53, float 1.000000e+00
  %3378 = select i1 %3376, float %54, float 0.000000e+00
  %3379 = select i1 %3376, float %55, float 0.000000e+00
  %3380 = select i1 %3376, float %56, float 1.000000e+00
  %3381 = select i1 %3376, float %57, float %78
  %3382 = select i1 %3376, float %58, float %79
  %3383 = add i32 %50, 332
  %3384 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3383, i32 undef)  ; BufferLoad(srv,index,wot)
  %3385 = extractvalue %dx.types.ResRet.i32 %3384, 0
  %3386 = lshr i32 %3385, 16
  %3387 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3386)  ; LegacyF16ToF32(value)
  %3388 = fmul fast float %3387, 0x3F50624DE0000000
  %3389 = add i32 %50, 136
  %3390 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3389, i32 undef)  ; BufferLoad(srv,index,wot)
  %3391 = extractvalue %dx.types.ResRet.i32 %3390, 0
  %3392 = lshr i32 %3391, 16
  %3393 = and i32 %3392, 255
  %3394 = lshr i32 %3391, 24
  %3395 = add i32 %50, 340
  %3396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3395, i32 undef)  ; BufferLoad(srv,index,wot)
  %3397 = extractvalue %dx.types.ResRet.i32 %3396, 0
  %3398 = and i32 %3397, 65535
  %3399 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3398)  ; LegacyF16ToF32(value)
  %3400 = lshr i32 %3397, 16
  %3401 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3400)  ; LegacyF16ToF32(value)
  %3402 = add i32 %50, 80
  %3403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3402, i32 undef)  ; BufferLoad(srv,index,wot)
  %3404 = extractvalue %dx.types.ResRet.i32 %3403, 0
  %3405 = lshr i32 %3404, 22
  %3406 = shl nuw nsw i32 %3405, 5
  %3407 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3406)  ; LegacyF16ToF32(value)
  %3408 = shl i32 %3404, 4
  %3409 = and i32 %3408, 32752
  %3410 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3409)  ; LegacyF16ToF32(value)
  %3411 = lshr i32 %3404, 7
  %3412 = and i32 %3411, 32752
  %3413 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3412)  ; LegacyF16ToF32(value)
  %3414 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3415 = extractvalue %dx.types.CBufRet.f32 %3414, 3
  %3416 = fmul fast float %3415, 1.000000e+03
  %3417 = fmul fast float %396, %3416
  %3418 = call float @dx.op.unary.f32(i32 22, float %3417)  ; Frc(value)
  %3419 = fadd fast float %3418, %386
  %3420 = fmul fast float %397, %3416
  %3421 = call float @dx.op.unary.f32(i32 22, float %3420)  ; Frc(value)
  %3422 = fadd fast float %3421, %388
  %3423 = fmul fast float %3388, %3416
  %3424 = call float @dx.op.unary.f32(i32 22, float %3423)  ; Frc(value)
  %3425 = fmul fast float %3424, 0x401921FB60000000
  %3426 = fadd fast float %3425, %3407
  %3427 = call float @dx.op.unary.f32(i32 13, float %3426)  ; Sin(value)
  %3428 = call float @dx.op.unary.f32(i32 12, float %3426)  ; Cos(value)
  %3429 = fsub fast float -0.000000e+00, %3427
  %3430 = fadd fast float %3381, -5.000000e-01
  %3431 = fadd fast float %3382, -5.000000e-01
  %3432 = fmul fast float %3399, %3430
  %3433 = fmul fast float %3401, %3431
  %3434 = fadd fast float %3432, 5.000000e-01
  %3435 = fadd fast float %3433, 5.000000e-01
  %3436 = fmul fast float %3410, %3434
  %3437 = fmul fast float %3413, %3435
  %3438 = fmul fast float %3428, %3436
  %3439 = call float @dx.op.tertiary.f32(i32 46, float %3429, float %3437, float %3438)  ; FMad(a,b,c)
  %3440 = fmul fast float %3427, %3436
  %3441 = call float @dx.op.tertiary.f32(i32 46, float %3428, float %3437, float %3440)  ; FMad(a,b,c)
  %3442 = fadd fast float %3419, %3439
  %3443 = fadd fast float %3422, %3441
  %3444 = icmp ugt i32 %3393, 1
  %3445 = icmp ugt i32 %3391, 33554431
  %3446 = or i1 %3445, %3444
  br i1 %3446, label %3447, label %3472

; <label>:3447                                    ; preds = %3374
  %3448 = add i32 %50, 276
  %3449 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3448, i32 undef)  ; BufferLoad(srv,index,wot)
  %3450 = extractvalue %dx.types.ResRet.i32 %3449, 0
  %3451 = lshr i32 %3450, 16
  %3452 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3451)  ; LegacyF16ToF32(value)
  %3453 = fmul fast float %3415, %3452
  %3454 = call float @dx.op.unary.f32(i32 22, float %3453)  ; Frc(value)
  %3455 = mul nuw nsw i32 %3393, %3394
  %3456 = uitofp i32 %3455 to float
  %3457 = fmul fast float %3454, %3456
  %3458 = call float @dx.op.unary.f32(i32 27, float %3457)  ; Round_ni(value)
  %3459 = fptoui float %3458 to i32
  %3460 = urem i32 %3459, %3393
  %3461 = udiv i32 %3459, %3394
  %3462 = call float @dx.op.unary.f32(i32 22, float %3442)  ; Frc(value)
  %3463 = call float @dx.op.unary.f32(i32 22, float %3443)  ; Frc(value)
  %3464 = uitofp i32 %3460 to float
  %3465 = uitofp i32 %3461 to float
  %3466 = fadd fast float %3462, %3464
  %3467 = fadd fast float %3463, %3465
  %3468 = uitofp i32 %3393 to float
  %3469 = uitofp i32 %3394 to float
  %3470 = fdiv fast float %3466, %3468
  %3471 = fdiv fast float %3467, %3469
  br label %3472

; <label>:3472                                    ; preds = %3447, %3374
  %3473 = phi float [ %3470, %3447 ], [ %3442, %3374 ]
  %3474 = phi float [ %3471, %3447 ], [ %3443, %3374 ]
  %3475 = and i32 %3368, 16777216
  %3476 = icmp eq i32 %3475, 0
  br i1 %3476, label %3586, label %3477

; <label>:3477                                    ; preds = %3472
  %3478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %3479 = extractvalue %dx.types.CBufRet.f32 %3478, 0
  %3480 = extractvalue %dx.types.CBufRet.f32 %3478, 1
  %3481 = extractvalue %dx.types.CBufRet.f32 %3478, 2
  %3482 = fadd fast float %3479, %154
  %3483 = fadd fast float %3480, %155
  %3484 = fadd fast float %3481, %156
  %3485 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %3486 = extractvalue %dx.types.CBufRet.f32 %3485, 0
  %3487 = call float @dx.op.unary.f32(i32 7, float %3486)  ; Saturate(value)
  %3488 = icmp eq i32 %51, 65535
  br i1 %3488, label %3583, label %3489

; <label>:3489                                    ; preds = %3477
  %3490 = lshr i32 %51, 1
  %3491 = shl i32 %3490, 2
  %3492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3491, i32 undef)  ; BufferLoad(srv,index,wot)
  %3493 = extractvalue %dx.types.ResRet.i32 %3492, 0
  %3494 = and i32 %51, 1
  %3495 = icmp ne i32 %3494, 0
  %3496 = lshr i32 %3493, 16
  %3497 = and i32 %3493, 65535
  %3498 = select i1 %3495, i32 %3496, i32 %3497
  %3499 = icmp eq i32 %3498, 65535
  br i1 %3499, label %3579, label %3500

; <label>:3500                                    ; preds = %3489
  %3501 = mul nuw nsw i32 %3498, 40
  %3502 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %3501, i32 undef)  ; BufferLoad(srv,index,wot)
  %3503 = extractvalue %dx.types.ResRet.f32 %3502, 0
  %3504 = extractvalue %dx.types.ResRet.f32 %3502, 1
  %3505 = extractvalue %dx.types.ResRet.f32 %3502, 2
  %3506 = add nuw nsw i32 %3501, 12
  %3507 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %3506, i32 undef)  ; BufferLoad(srv,index,wot)
  %3508 = extractvalue %dx.types.ResRet.f32 %3507, 0
  %3509 = extractvalue %dx.types.ResRet.f32 %3507, 1
  %3510 = extractvalue %dx.types.ResRet.f32 %3507, 2
  %3511 = add nuw nsw i32 %3501, 24
  %3512 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %3511, i32 undef)  ; BufferLoad(srv,index,wot)
  %3513 = extractvalue %dx.types.ResRet.f32 %3512, 0
  %3514 = extractvalue %dx.types.ResRet.f32 %3512, 1
  %3515 = extractvalue %dx.types.ResRet.f32 %3512, 2
  %3516 = add nuw nsw i32 %3501, 36
  %3517 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %3516, i32 undef)  ; BufferLoad(srv,index,wot)
  %3518 = extractvalue %dx.types.ResRet.f32 %3517, 0
  %3519 = fsub fast float %3482, %3503
  %3520 = fsub fast float %3483, %3504
  %3521 = fsub fast float %3484, %3505
  %3522 = fmul fast float %3518, %3519
  %3523 = fmul fast float %3518, %3520
  %3524 = fmul fast float %3518, %3521
  %3525 = call float @dx.op.unary.f32(i32 27, float %3522)  ; Round_ni(value)
  %3526 = call float @dx.op.unary.f32(i32 27, float %3523)  ; Round_ni(value)
  %3527 = call float @dx.op.unary.f32(i32 27, float %3524)  ; Round_ni(value)
  %3528 = fadd fast float %3525, 5.000000e-01
  %3529 = fadd fast float %3526, 5.000000e-01
  %3530 = fadd fast float %3527, 5.000000e-01
  %3531 = fmul fast float %3528, %3508
  %3532 = fmul fast float %3529, %3509
  %3533 = fmul fast float %3530, %3510
  %3534 = shl i32 %51, 2
  %3535 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %3534, i32 undef)  ; BufferLoad(srv,index,wot)
  %3536 = extractvalue %dx.types.ResRet.i32 %3535, 0
  %3537 = add i32 %3536, 0
  %3538 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3537, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3539 = call float @dx.op.unary.f32(i32 22, float %3531)  ; Frc(value)
  %3540 = call float @dx.op.unary.f32(i32 22, float %3532)  ; Frc(value)
  %3541 = call float @dx.op.unary.f32(i32 22, float %3533)  ; Frc(value)
  %3542 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3538, %dx.types.Handle %45, float %3539, float %3540, float %3541, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3543 = extractvalue %dx.types.ResRet.f32 %3542, 0
  %3544 = extractvalue %dx.types.ResRet.f32 %3542, 1
  %3545 = extractvalue %dx.types.ResRet.f32 %3542, 2
  %3546 = fmul fast float %3543, 1.023000e+03
  %3547 = fmul fast float %3544, 1.023000e+03
  %3548 = fmul fast float %3545, 1.023000e+03
  %3549 = fadd fast float %3546, 5.000000e-01
  %3550 = fadd fast float %3547, 5.000000e-01
  %3551 = fadd fast float %3548, 5.000000e-01
  %3552 = call float @dx.op.unary.f32(i32 27, float %3549)  ; Round_ni(value)
  %3553 = call float @dx.op.unary.f32(i32 27, float %3550)  ; Round_ni(value)
  %3554 = call float @dx.op.unary.f32(i32 27, float %3551)  ; Round_ni(value)
  %3555 = fsub fast float %3522, %3525
  %3556 = fsub fast float %3523, %3526
  %3557 = fsub fast float %3524, %3527
  %3558 = fmul fast float %3555, 7.500000e-01
  %3559 = fmul fast float %3556, 7.500000e-01
  %3560 = fmul fast float %3557, 7.500000e-01
  %3561 = fadd fast float %3525, 1.250000e-01
  %3562 = fadd fast float %3561, %3558
  %3563 = fadd fast float %3562, %3552
  %3564 = fadd fast float %3526, 1.250000e-01
  %3565 = fadd fast float %3564, %3559
  %3566 = fadd fast float %3565, %3553
  %3567 = fadd fast float %3527, 1.250000e-01
  %3568 = fadd fast float %3567, %3560
  %3569 = fadd fast float %3568, %3554
  %3570 = fmul fast float %3563, %3513
  %3571 = fmul fast float %3566, %3514
  %3572 = fmul fast float %3569, %3515
  %3573 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %3534, i32 undef)  ; BufferLoad(srv,index,wot)
  %3574 = extractvalue %dx.types.ResRet.i32 %3573, 0
  %3575 = add i32 %3574, 0
  %3576 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3575, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3577 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3576, %dx.types.Handle %43, float %3570, float %3571, float %3572, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3578 = extractvalue %dx.types.ResRet.f32 %3577, 0
  br label %3579

; <label>:3579                                    ; preds = %3500, %3489
  %3580 = phi float [ %3578, %3500 ], [ -1.000000e+00, %3489 ]
  %3581 = fadd fast float %3580, %3487
  %3582 = call float @dx.op.unary.f32(i32 7, float %3581)  ; Saturate(value)
  br label %3583

; <label>:3583                                    ; preds = %3579, %3477
  %3584 = phi float [ %3582, %3579 ], [ %3487, %3477 ]
  %3585 = fmul fast float %3584, %455
  br label %3586

; <label>:3586                                    ; preds = %3583, %3472
  %3587 = phi float [ %3585, %3583 ], [ %455, %3472 ]
  %3588 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3366, i32 undef)  ; BufferLoad(srv,index,wot)
  %3589 = extractvalue %dx.types.ResRet.i32 %3588, 0
  %3590 = and i32 %3589, 256
  %3591 = icmp eq i32 %3590, 0
  br i1 %3591, label %3638, label %3592

; <label>:3592                                    ; preds = %3586
  %3593 = add i32 %50, 436
  %3594 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3593, i32 undef)  ; BufferLoad(srv,index,wot)
  %3595 = extractvalue %dx.types.ResRet.i32 %3594, 0
  %3596 = add i32 %3595, 0
  %3597 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3596, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3598 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3597, %dx.types.Handle %96, float %3473, float %3474, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3599 = extractvalue %dx.types.ResRet.f32 %3598, 0
  %3600 = add i32 %50, 148
  %3601 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3600, i32 undef)  ; BufferLoad(srv,index,wot)
  %3602 = extractvalue %dx.types.ResRet.i32 %3601, 0
  %3603 = shl i32 %3602, 4
  %3604 = and i32 %3603, 32752
  %3605 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3604)  ; LegacyF16ToF32(value)
  %3606 = lshr i32 %3602, 7
  %3607 = and i32 %3606, 32752
  %3608 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3607)  ; LegacyF16ToF32(value)
  %3609 = fsub fast float 1.000000e+00, %3587
  %3610 = call float @dx.op.binary.f32(i32 35, float %3609, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3611 = bitcast float %3587 to i32
  %3612 = sitofp i32 %3611 to float
  %3613 = fadd fast float %3612, 0xC1CFBF8940000000
  %3614 = fmul fast float %3608, %3613
  %3615 = fadd fast float %3614, 0x41CFBF8940000000
  %3616 = fptosi float %3615 to i32
  %3617 = bitcast i32 %3616 to float
  %3618 = bitcast float %3610 to i32
  %3619 = sitofp i32 %3618 to float
  %3620 = fadd fast float %3619, 0xC1CFBF8940000000
  %3621 = fmul fast float %3620, %3608
  %3622 = fadd fast float %3621, 0x41CFBF8940000000
  %3623 = fptosi float %3622 to i32
  %3624 = bitcast i32 %3623 to float
  %3625 = fmul fast float %3617, %3605
  %3626 = fmul fast float %3624, %3605
  %3627 = fsub fast float %3610, %3625
  %3628 = fadd fast float %3626, %3610
  %3629 = call float @dx.op.unary.f32(i32 7, float %3627)  ; Saturate(value)
  %3630 = call float @dx.op.unary.f32(i32 7, float %3628)  ; Saturate(value)
  %3631 = fsub fast float %3599, %3629
  %3632 = fsub fast float %3630, %3629
  %3633 = bitcast float %3632 to i32
  %3634 = sub nsw i32 2129859010, %3633
  %3635 = bitcast i32 %3634 to float
  %3636 = fmul fast float %3635, %3631
  %3637 = call float @dx.op.unary.f32(i32 7, float %3636)  ; Saturate(value)
  br label %3638

; <label>:3638                                    ; preds = %3592, %3586
  %3639 = phi float [ %3637, %3592 ], [ %3587, %3586 ]
  %3640 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3366, i32 undef)  ; BufferLoad(srv,index,wot)
  %3641 = extractvalue %dx.types.ResRet.i32 %3640, 0
  %3642 = and i32 %3641, 128
  %3643 = icmp eq i32 %3642, 0
  br i1 %3643, label %3660, label %3644

; <label>:3644                                    ; preds = %3638
  %3645 = add i32 %50, 420
  %3646 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3645, i32 undef)  ; BufferLoad(srv,index,wot)
  %3647 = extractvalue %dx.types.ResRet.i32 %3646, 0
  %3648 = add i32 %3647, 0
  %3649 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3648, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3650 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3649, %dx.types.Handle %96, float %3473, float %3474, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3651 = extractvalue %dx.types.ResRet.f32 %3650, 0
  %3652 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3366, i32 undef)  ; BufferLoad(srv,index,wot)
  %3653 = extractvalue %dx.types.ResRet.i32 %3652, 0
  %3654 = and i32 %3653, 524288
  %3655 = icmp ne i32 %3654, 0
  %3656 = fcmp fast ogt float %3651, 0x3FE0101020000000
  %3657 = select i1 %3656, float 1.000000e+00, float 0.000000e+00
  %3658 = select i1 %3655, float %3657, float %3651
  %3659 = fmul fast float %3658, %3639
  br label %3660

; <label>:3660                                    ; preds = %3644, %3638
  %3661 = phi float [ %3659, %3644 ], [ %3639, %3638 ]
  %3662 = fcmp fast ult float %3661, 0x3F70101020000000
  br i1 %3662, label %4401, label %3663

; <label>:3663                                    ; preds = %3660
  %3664 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3366, i32 undef)  ; BufferLoad(srv,index,wot)
  %3665 = extractvalue %dx.types.ResRet.i32 %3664, 0
  %3666 = and i32 %3665, 16
  %3667 = icmp eq i32 %3666, 0
  br i1 %3667, label %3866, label %3668

; <label>:3668                                    ; preds = %3663
  %3669 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3389, i32 undef)  ; BufferLoad(srv,index,wot)
  %3670 = extractvalue %dx.types.ResRet.i32 %3669, 0
  %3671 = add i32 %50, 372
  %3672 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3671, i32 undef)  ; BufferLoad(srv,index,wot)
  %3673 = extractvalue %dx.types.ResRet.i32 %3672, 0
  %3674 = add i32 %3673, 0
  %3675 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3674, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3676 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3675, %dx.types.Handle %95, float %3473, float %3474, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3677 = extractvalue %dx.types.ResRet.f32 %3676, 0
  %3678 = extractvalue %dx.types.ResRet.f32 %3676, 1
  %3679 = extractvalue %dx.types.ResRet.f32 %3676, 2
  %3680 = extractvalue %dx.types.ResRet.f32 %3676, 3
  %3681 = and i32 %3670, 255
  %3682 = uitofp i32 %3681 to float
  %3683 = lshr i32 %3670, 8
  %3684 = and i32 %3683, 255
  %3685 = uitofp i32 %3684 to float
  %3686 = fmul fast float %3680, %3682
  %3687 = fadd fast float %3686, %3685
  %3688 = fmul fast float %3687, 0x3F70101000000000
  %3689 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3366, i32 undef)  ; BufferLoad(srv,index,wot)
  %3690 = extractvalue %dx.types.ResRet.i32 %3689, 0
  %3691 = and i32 %3690, 512
  %3692 = icmp eq i32 %3691, 0
  br i1 %3692, label %3701, label %3693

; <label>:3693                                    ; preds = %3668
  %3694 = add i32 %50, 452
  %3695 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3694, i32 undef)  ; BufferLoad(srv,index,wot)
  %3696 = extractvalue %dx.types.ResRet.i32 %3695, 0
  %3697 = add i32 %3696, 0
  %3698 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3697, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3699 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3698, %dx.types.Handle %96, float %3473, float %3474, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3700 = extractvalue %dx.types.ResRet.f32 %3699, 0
  br label %3701

; <label>:3701                                    ; preds = %3693, %3668
  %3702 = phi float [ %3700, %3693 ], [ 1.000000e+00, %3668 ]
  %3703 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3366, i32 undef)  ; BufferLoad(srv,index,wot)
  %3704 = extractvalue %dx.types.ResRet.i32 %3703, 0
  %3705 = and i32 %3704, 33554432
  %3706 = icmp eq i32 %3705, 0
  br i1 %3706, label %3813, label %3707

; <label>:3707                                    ; preds = %3701
  %3708 = add i32 %50, 272
  %3709 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3708, i32 undef)  ; BufferLoad(srv,index,wot)
  %3710 = extractvalue %dx.types.ResRet.i32 %3709, 0
  %3711 = and i32 %3710, 65535
  %3712 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3711)  ; LegacyF16ToF32(value)
  %3713 = lshr i32 %3710, 16
  %3714 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3713)  ; LegacyF16ToF32(value)
  %3715 = add i32 %50, 276
  %3716 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3715, i32 undef)  ; BufferLoad(srv,index,wot)
  %3717 = extractvalue %dx.types.ResRet.i32 %3716, 0
  %3718 = and i32 %3717, 65535
  %3719 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3718)  ; LegacyF16ToF32(value)
  %3720 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %368, i32 undef)  ; BufferLoad(srv,index,wot)
  %3721 = extractvalue %dx.types.ResRet.i32 %3720, 0
  %3722 = lshr i32 %3721, 24
  %3723 = uitofp i32 %3722 to float
  %3724 = fmul fast float %3723, 0x3F70101020000000
  %3725 = and i32 %3721, 255
  %3726 = uitofp i32 %3725 to float
  %3727 = fmul fast float %3726, 0x3F70101020000000
  %3728 = lshr i32 %3721, 8
  %3729 = and i32 %3728, 255
  %3730 = uitofp i32 %3729 to float
  %3731 = fmul fast float %3730, 0x3F70101020000000
  %3732 = lshr i32 %3721, 16
  %3733 = and i32 %3732, 255
  %3734 = uitofp i32 %3733 to float
  %3735 = fmul fast float %3734, 0x3F70101020000000
  %3736 = add i32 %50, 268
  %3737 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3736, i32 undef)  ; BufferLoad(srv,index,wot)
  %3738 = extractvalue %dx.types.ResRet.i32 %3737, 0
  %3739 = lshr i32 %3738, 24
  %3740 = uitofp i32 %3739 to float
  %3741 = fmul fast float %3740, 0x3F70101020000000
  %3742 = and i32 %3738, 255
  %3743 = uitofp i32 %3742 to float
  %3744 = fmul fast float %3743, 0x3F70101020000000
  %3745 = lshr i32 %3738, 8
  %3746 = and i32 %3745, 255
  %3747 = uitofp i32 %3746 to float
  %3748 = fmul fast float %3747, 0x3F70101020000000
  %3749 = lshr i32 %3738, 16
  %3750 = and i32 %3749, 255
  %3751 = uitofp i32 %3750 to float
  %3752 = fmul fast float %3751, 0x3F70101020000000
  %3753 = bitcast float %3677 to i32
  %3754 = ashr i32 %3753, 1
  %3755 = sub nsw i32 1597463174, %3754
  %3756 = bitcast i32 %3755 to float
  %3757 = fmul fast float %3677, 5.000000e-01
  %3758 = fmul fast float %3756, %3756
  %3759 = fmul fast float %3758, %3757
  %3760 = fsub fast float 1.500000e+00, %3759
  %3761 = fmul fast float %3756, %3677
  %3762 = fmul fast float %3761, %3760
  %3763 = bitcast float %3678 to i32
  %3764 = ashr i32 %3763, 1
  %3765 = sub nsw i32 1597463174, %3764
  %3766 = bitcast i32 %3765 to float
  %3767 = fmul fast float %3678, 5.000000e-01
  %3768 = fmul fast float %3766, %3766
  %3769 = fmul fast float %3768, %3767
  %3770 = fsub fast float 1.500000e+00, %3769
  %3771 = fmul fast float %3766, %3678
  %3772 = fmul fast float %3771, %3770
  %3773 = bitcast float %3679 to i32
  %3774 = ashr i32 %3773, 1
  %3775 = sub nsw i32 1597463174, %3774
  %3776 = bitcast i32 %3775 to float
  %3777 = fmul fast float %3679, 5.000000e-01
  %3778 = fmul fast float %3776, %3776
  %3779 = fmul fast float %3778, %3777
  %3780 = fsub fast float 1.500000e+00, %3779
  %3781 = fmul fast float %3776, %3679
  %3782 = fmul fast float %3781, %3780
  %3783 = fsub fast float %3762, %3744
  %3784 = fsub fast float %3772, %3748
  %3785 = fsub fast float %3782, %3752
  %3786 = fmul fast float %3783, %3712
  %3787 = fmul fast float %3784, %3714
  %3788 = fmul fast float %3785, %3719
  %3789 = fadd fast float %3786, %3727
  %3790 = fadd fast float %3787, %3731
  %3791 = fadd fast float %3788, %3735
  %3792 = call float @dx.op.unary.f32(i32 7, float %3789)  ; Saturate(value)
  %3793 = call float @dx.op.unary.f32(i32 7, float %3790)  ; Saturate(value)
  %3794 = call float @dx.op.unary.f32(i32 7, float %3791)  ; Saturate(value)
  %3795 = fmul fast float %3792, %3792
  %3796 = fmul fast float %3793, %3793
  %3797 = fmul fast float %3794, %3794
  %3798 = fsub fast float %3795, %3677
  %3799 = fsub fast float %3796, %3678
  %3800 = fsub fast float %3797, %3679
  %3801 = fmul fast float %3798, %3702
  %3802 = fmul fast float %3799, %3702
  %3803 = fmul fast float %3800, %3702
  %3804 = fadd fast float %3801, %3677
  %3805 = fadd fast float %3802, %3678
  %3806 = fadd fast float %3803, %3679
  %3807 = fadd fast float %3724, %3688
  %3808 = fsub fast float %3807, %3741
  %3809 = call float @dx.op.unary.f32(i32 7, float %3808)  ; Saturate(value)
  %3810 = fsub fast float %3809, %3688
  %3811 = fmul fast float %3810, %3702
  %3812 = fadd fast float %3811, %3688
  br label %3866

; <label>:3813                                    ; preds = %3701
  %3814 = and i32 %3704, 134217728
  %3815 = icmp eq i32 %3814, 0
  br i1 %3815, label %3850, label %3816

; <label>:3816                                    ; preds = %3813
  %3817 = call float @dx.op.unary.f32(i32 24, float %373)  ; Sqrt(value)
  %3818 = call float @dx.op.unary.f32(i32 24, float %377)  ; Sqrt(value)
  %3819 = call float @dx.op.unary.f32(i32 24, float %381)  ; Sqrt(value)
  %3820 = fadd fast float %3817, -5.000000e-01
  %3821 = fadd fast float %3818, -5.000000e-01
  %3822 = fadd fast float %3819, -5.000000e-01
  %3823 = fmul fast float %3820, %3702
  %3824 = fmul fast float %3821, %3702
  %3825 = fmul fast float %3822, %3702
  %3826 = fadd fast float %3823, 5.000000e-01
  %3827 = fadd fast float %3824, 5.000000e-01
  %3828 = fadd fast float %3825, 5.000000e-01
  %3829 = call float @dx.op.unary.f32(i32 24, float %3677)  ; Sqrt(value)
  %3830 = call float @dx.op.unary.f32(i32 24, float %3678)  ; Sqrt(value)
  %3831 = call float @dx.op.unary.f32(i32 24, float %3679)  ; Sqrt(value)
  %3832 = fmul fast float %3826, 2.000000e+00
  %3833 = fsub fast float 1.000000e+00, %3832
  %3834 = fmul fast float %3833, %3829
  %3835 = fadd fast float %3834, %3832
  %3836 = fmul fast float %3835, %3829
  %3837 = fmul fast float %3827, 2.000000e+00
  %3838 = fsub fast float 1.000000e+00, %3837
  %3839 = fmul fast float %3838, %3830
  %3840 = fadd fast float %3839, %3837
  %3841 = fmul fast float %3840, %3830
  %3842 = fmul fast float %3828, 2.000000e+00
  %3843 = fsub fast float 1.000000e+00, %3842
  %3844 = fmul fast float %3843, %3831
  %3845 = fadd fast float %3844, %3842
  %3846 = fmul fast float %3845, %3831
  %3847 = fmul fast float %3836, %3836
  %3848 = fmul fast float %3841, %3841
  %3849 = fmul fast float %3846, %3846
  br label %3866

; <label>:3850                                    ; preds = %3813
  %3851 = fmul fast float %373, %373
  %3852 = fmul fast float %377, %377
  %3853 = fmul fast float %381, %381
  %3854 = fadd fast float %3851, -1.000000e+00
  %3855 = fadd fast float %3852, -1.000000e+00
  %3856 = fadd fast float %3853, -1.000000e+00
  %3857 = fmul fast float %3702, %3854
  %3858 = fmul fast float %3702, %3855
  %3859 = fmul fast float %3702, %3856
  %3860 = fadd fast float %3857, 1.000000e+00
  %3861 = fadd fast float %3858, 1.000000e+00
  %3862 = fadd fast float %3859, 1.000000e+00
  %3863 = fmul fast float %3860, %3677
  %3864 = fmul fast float %3861, %3678
  %3865 = fmul fast float %3862, %3679
  br label %3866

; <label>:3866                                    ; preds = %3850, %3816, %3707, %3663
  %3867 = phi float [ %3812, %3707 ], [ %3688, %3816 ], [ %3688, %3850 ], [ 0x3FA23C0BE0000000, %3663 ]
  %3868 = phi float [ %3804, %3707 ], [ %3847, %3816 ], [ %3863, %3850 ], [ 1.000000e+00, %3663 ]
  %3869 = phi float [ %3805, %3707 ], [ %3848, %3816 ], [ %3864, %3850 ], [ 1.000000e+00, %3663 ]
  %3870 = phi float [ %3806, %3707 ], [ %3849, %3816 ], [ %3865, %3850 ], [ 1.000000e+00, %3663 ]
  %3871 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3872 = extractvalue %dx.types.CBufRet.i32 %3871, 1
  %3873 = and i32 %3872, 1
  %3874 = icmp ne i32 %3873, 0
  %3875 = add i32 %50, 356
  %3876 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3875, i32 undef)  ; BufferLoad(srv,index,wot)
  %3877 = extractvalue %dx.types.ResRet.i32 %3876, 0
  %3878 = and i32 %3877, 32
  %3879 = icmp ne i32 %3878, 0
  %3880 = and i1 %3874, %3879
  %3881 = select i1 %3880, float 1.000000e+00, float %3868
  %3882 = select i1 %3880, float 0x3FD3333340000000, float %3869
  %3883 = select i1 %3880, float 0x3FD3333340000000, float %3870
  %3884 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3366, i32 undef)  ; BufferLoad(srv,index,wot)
  %3885 = extractvalue %dx.types.ResRet.i32 %3884, 0
  %3886 = and i32 %3885, 32
  %3887 = icmp eq i32 %3886, 0
  br i1 %3887, label %3960, label %3888

; <label>:3888                                    ; preds = %3866
  %3889 = add i32 %50, 140
  %3890 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3889, i32 undef)  ; BufferLoad(srv,index,wot)
  %3891 = extractvalue %dx.types.ResRet.i32 %3890, 0
  %3892 = add i32 %50, 388
  %3893 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3892, i32 undef)  ; BufferLoad(srv,index,wot)
  %3894 = extractvalue %dx.types.ResRet.i32 %3893, 0
  %3895 = add i32 %3894, 0
  %3896 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3895, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3897 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3896, %dx.types.Handle %95, float %3473, float %3474, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3898 = extractvalue %dx.types.ResRet.f32 %3897, 0
  %3899 = extractvalue %dx.types.ResRet.f32 %3897, 1
  %3900 = extractvalue %dx.types.ResRet.f32 %3897, 2
  %3901 = extractvalue %dx.types.ResRet.f32 %3897, 3
  %3902 = and i32 %3891, 255
  %3903 = uitofp i32 %3902 to float
  %3904 = lshr i32 %3891, 8
  %3905 = and i32 %3904, 255
  %3906 = uitofp i32 %3905 to float
  %3907 = lshr i32 %3891, 16
  %3908 = and i32 %3907, 255
  %3909 = uitofp i32 %3908 to float
  %3910 = fmul fast float %3909, 0x3F70101000000000
  %3911 = fmul fast float %3898, %3903
  %3912 = fadd fast float %3911, %3906
  %3913 = fmul fast float %3912, 0x3F70101000000000
  %3914 = fadd fast float %3899, -5.000000e-01
  %3915 = fadd fast float %3901, -5.000000e-01
  %3916 = fmul fast float %3914, %3910
  %3917 = fmul fast float %3915, %3910
  %3918 = fadd fast float %3916, 5.000000e-01
  %3919 = fadd fast float %3917, 5.000000e-01
  %3920 = fmul fast float %3918, 2.000000e+00
  %3921 = fadd fast float %3920, -1.000000e+00
  %3922 = fmul fast float %3919, 2.000000e+00
  %3923 = fadd fast float %3922, -1.000000e+00
  %3924 = fadd fast float %3921, %3923
  %3925 = fmul fast float %3924, 5.000000e-01
  %3926 = fsub fast float %3921, %3923
  %3927 = fmul fast float %3926, 5.000000e-01
  %3928 = call float @dx.op.unary.f32(i32 6, float %3925)  ; FAbs(value)
  %3929 = fsub fast float 1.000000e+00, %3928
  %3930 = call float @dx.op.unary.f32(i32 6, float %3927)  ; FAbs(value)
  %3931 = fsub fast float %3929, %3930
  %3932 = call float @dx.op.dot3.f32(i32 55, float %3925, float %3927, float %3931, float %3925, float %3927, float %3931)  ; Dot3(ax,ay,az,bx,by,bz)
  %3933 = call float @dx.op.unary.f32(i32 25, float %3932)  ; Rsqrt(value)
  %3934 = fmul fast float %3925, %3933
  %3935 = fmul fast float %3927, %3933
  %3936 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3366, i32 undef)  ; BufferLoad(srv,index,wot)
  %3937 = extractvalue %dx.types.ResRet.i32 %3936, 0
  %3938 = and i32 %3937, 67108864
  %3939 = icmp eq i32 %3938, 0
  br i1 %3939, label %3956, label %3940

; <label>:3940                                    ; preds = %3888
  %3941 = add i32 %50, 328
  %3942 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3941, i32 undef)  ; BufferLoad(srv,index,wot)
  %3943 = extractvalue %dx.types.ResRet.i32 %3942, 0
  %3944 = and i32 %3943, 65535
  %3945 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3944)  ; LegacyF16ToF32(value)
  %3946 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3383, i32 undef)  ; BufferLoad(srv,index,wot)
  %3947 = extractvalue %dx.types.ResRet.i32 %3946, 0
  %3948 = and i32 %3947, 65535
  %3949 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3948)  ; LegacyF16ToF32(value)
  %3950 = lshr i32 %3943, 16
  %3951 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3950)  ; LegacyF16ToF32(value)
  %3952 = fsub fast float %3913, %3951
  %3953 = fmul fast float %3952, %3945
  %3954 = fadd fast float %3953, %3949
  %3955 = call float @dx.op.unary.f32(i32 7, float %3954)  ; Saturate(value)
  br label %3956

; <label>:3956                                    ; preds = %3940, %3888
  %3957 = phi float [ %3955, %3940 ], [ %3913, %3888 ]
  %3958 = call float @dx.op.dot2.f32(i32 54, float %3934, float %3935, float %3377, float %3378)  ; Dot2(ax,ay,bx,by)
  %3959 = call float @dx.op.dot2.f32(i32 54, float %3934, float %3935, float %3379, float %3380)  ; Dot2(ax,ay,bx,by)
  br label %3960

; <label>:3960                                    ; preds = %3956, %3866
  %3961 = phi float [ %3957, %3956 ], [ 0x3FD6666660000000, %3866 ]
  %3962 = phi float [ %3958, %3956 ], [ 0.000000e+00, %3866 ]
  %3963 = phi float [ %3959, %3956 ], [ 0.000000e+00, %3866 ]
  %3964 = phi float [ %3900, %3956 ], [ 1.000000e+00, %3866 ]
  %3965 = add i32 %50, 208
  %3966 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3965, i32 undef)  ; BufferLoad(srv,index,wot)
  %3967 = extractvalue %dx.types.ResRet.i32 %3966, 0
  %3968 = lshr i32 %3967, 22
  %3969 = shl nuw nsw i32 %3968, 5
  %3970 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3969)  ; LegacyF16ToF32(value)
  %3971 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3366, i32 undef)  ; BufferLoad(srv,index,wot)
  %3972 = extractvalue %dx.types.ResRet.i32 %3971, 0
  %3973 = and i32 %3972, 64
  %3974 = icmp eq i32 %3973, 0
  br i1 %3974, label %4008, label %3975

; <label>:3975                                    ; preds = %3960
  %3976 = add i32 %50, 404
  %3977 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3976, i32 undef)  ; BufferLoad(srv,index,wot)
  %3978 = extractvalue %dx.types.ResRet.i32 %3977, 0
  %3979 = add i32 %3978, 0
  %3980 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3979, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3981 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3366, i32 undef)  ; BufferLoad(srv,index,wot)
  %3982 = extractvalue %dx.types.ResRet.i32 %3981, 0
  %3983 = and i32 %3982, 131072
  %3984 = icmp eq i32 %3983, 0
  %3985 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3980, %dx.types.Handle %95, float %3473, float %3474, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3986 = extractvalue %dx.types.ResRet.f32 %3985, 0
  %3987 = extractvalue %dx.types.ResRet.f32 %3985, 1
  %3988 = extractvalue %dx.types.ResRet.f32 %3985, 2
  %3989 = fmul fast float %3986, %361
  %3990 = fmul fast float %3987, %364
  %3991 = fmul fast float %3988, %367
  br i1 %3984, label %3998, label %3992

; <label>:3992                                    ; preds = %3975
  %3993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3994 = extractvalue %dx.types.CBufRet.f32 %3993, 0
  %3995 = fmul fast float %3994, %3989
  %3996 = fmul fast float %3994, %3990
  %3997 = fmul fast float %3994, %3991
  br label %3998

; <label>:3998                                    ; preds = %3992, %3975
  %3999 = phi float [ %3995, %3992 ], [ %3989, %3975 ]
  %4000 = phi float [ %3996, %3992 ], [ %3990, %3975 ]
  %4001 = phi float [ %3997, %3992 ], [ %3991, %3975 ]
  %4002 = fmul fast float %3999, %3970
  %4003 = select i1 %215, float %4002, float %3999
  %4004 = call float @dx.op.dot3.f32(i32 55, float %4003, float %4000, float %4001, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4005 = select i1 %215, float 0.000000e+00, float %3999
  %4006 = select i1 %215, float %4004, float %4000
  %4007 = select i1 %215, float 0.000000e+00, float %4001
  br label %4008

; <label>:4008                                    ; preds = %3998, %3960
  %4009 = phi float [ %4005, %3998 ], [ 0.000000e+00, %3960 ]
  %4010 = phi float [ %4006, %3998 ], [ 0.000000e+00, %3960 ]
  %4011 = phi float [ %4007, %3998 ], [ 0.000000e+00, %3960 ]
  %4012 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3366, i32 undef)  ; BufferLoad(srv,index,wot)
  %4013 = extractvalue %dx.types.ResRet.i32 %4012, 0
  %4014 = and i32 %4013, 1024
  %4015 = icmp eq i32 %4014, 0
  br i1 %4015, label %4046, label %4016

; <label>:4016                                    ; preds = %4008
  %4017 = add i32 %50, 200
  %4018 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4017, i32 undef)  ; BufferLoad(srv,index,wot)
  %4019 = extractvalue %dx.types.ResRet.i32 %4018, 0
  %4020 = and i32 %4019, 255
  %4021 = uitofp i32 %4020 to float
  %4022 = fmul fast float %4021, 0x3F70101020000000
  %4023 = lshr i32 %4019, 8
  %4024 = and i32 %4023, 255
  %4025 = uitofp i32 %4024 to float
  %4026 = fmul fast float %4025, 0x3F70101020000000
  %4027 = lshr i32 %4019, 16
  %4028 = and i32 %4027, 255
  %4029 = uitofp i32 %4028 to float
  %4030 = fmul fast float %4029, 0x3F70101020000000
  %4031 = fmul fast float %4022, %4022
  %4032 = fmul fast float %4026, %4026
  %4033 = fmul fast float %4030, %4030
  %4034 = add i32 %50, 468
  %4035 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4034, i32 undef)  ; BufferLoad(srv,index,wot)
  %4036 = extractvalue %dx.types.ResRet.i32 %4035, 0
  %4037 = add i32 %4036, 0
  %4038 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4037, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4039 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4038, %dx.types.Handle %96, float %3473, float %3474, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4040 = extractvalue %dx.types.ResRet.f32 %4039, 0
  %4041 = extractvalue %dx.types.ResRet.f32 %4039, 1
  %4042 = extractvalue %dx.types.ResRet.f32 %4039, 2
  %4043 = fmul fast float %4031, %4040
  %4044 = fmul fast float %4032, %4041
  %4045 = fmul fast float %4033, %4042
  br label %4046

; <label>:4046                                    ; preds = %4016, %4008
  %4047 = phi float [ %4043, %4016 ], [ 0.000000e+00, %4008 ]
  %4048 = phi float [ %4044, %4016 ], [ 0.000000e+00, %4008 ]
  %4049 = phi float [ %4045, %4016 ], [ 0.000000e+00, %4008 ]
  %4050 = fcmp fast ogt float %4047, 0.000000e+00
  %4051 = fcmp fast ogt float %4048, 0.000000e+00
  %4052 = fcmp fast ogt float %4049, 0.000000e+00
  %4053 = call float @dx.op.unary.f32(i32 23, float %4047)  ; Log(value)
  %4054 = call float @dx.op.unary.f32(i32 23, float %4048)  ; Log(value)
  %4055 = call float @dx.op.unary.f32(i32 23, float %4049)  ; Log(value)
  %4056 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3965, i32 undef)  ; BufferLoad(srv,index,wot)
  %4057 = extractvalue %dx.types.ResRet.i32 %4056, 0
  %4058 = lshr i32 %4057, 7
  %4059 = and i32 %4058, 32752
  %4060 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4059)  ; LegacyF16ToF32(value)
  %4061 = fmul fast float %4053, 0xBFE62E4300000000
  %4062 = fmul fast float %4061, %4060
  %4063 = fmul fast float %4054, 0xBFE62E4300000000
  %4064 = fmul fast float %4063, %4060
  %4065 = fmul fast float %4055, 0xBFE62E4300000000
  %4066 = fmul fast float %4065, %4060
  %4067 = select i1 %4050, float %4062, float 1.270000e+02
  %4068 = select i1 %4051, float %4064, float 1.270000e+02
  %4069 = select i1 %4052, float %4066, float 1.270000e+02
  %4070 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3366, i32 undef)  ; BufferLoad(srv,index,wot)
  %4071 = extractvalue %dx.types.ResRet.i32 %4070, 0
  %4072 = and i32 %4071, 10240
  %4073 = icmp eq i32 %4072, 0
  br i1 %4073, label %4118, label %4074

; <label>:4074                                    ; preds = %4046
  %4075 = add i32 %50, 484
  %4076 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4075, i32 undef)  ; BufferLoad(srv,index,wot)
  %4077 = extractvalue %dx.types.ResRet.i32 %4076, 0
  %4078 = add i32 %4077, 0
  %4079 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4078, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4080 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4079, %dx.types.Handle %96, float %3473, float %3474, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4081 = extractvalue %dx.types.ResRet.f32 %4080, 1
  %4082 = extractvalue %dx.types.ResRet.f32 %4080, 3
  %4083 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3366, i32 undef)  ; BufferLoad(srv,index,wot)
  %4084 = extractvalue %dx.types.ResRet.i32 %4083, 0
  %4085 = and i32 %4084, 1048576
  %4086 = icmp ne i32 %4085, 0
  %4087 = and i32 %4084, 8192
  %4088 = icmp eq i32 %4087, 0
  br i1 %4088, label %4104, label %4089

; <label>:4089                                    ; preds = %4074
  %4090 = extractvalue %dx.types.ResRet.f32 %4080, 2
  %4091 = select i1 %4086, float %4090, float %4081
  %4092 = extractvalue %dx.types.ResRet.f32 %4080, 0
  %4093 = select i1 %4086, float %4092, float %4081
  %4094 = add i32 %50, 144
  %4095 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4094, i32 undef)  ; BufferLoad(srv,index,wot)
  %4096 = extractvalue %dx.types.ResRet.i32 %4095, 0
  %4097 = lshr i32 %4096, 16
  %4098 = and i32 %4097, 255
  %4099 = uitofp i32 %4098 to float
  %4100 = fmul fast float %4099, 0x3F80101020000000
  %4101 = fmul fast float %4100, %4093
  %4102 = fmul fast float %4100, %4081
  %4103 = fmul fast float %4100, %4091
  br label %4104

; <label>:4104                                    ; preds = %4089, %4074
  %4105 = phi float [ %4101, %4089 ], [ 0.000000e+00, %4074 ]
  %4106 = phi float [ %4102, %4089 ], [ 0.000000e+00, %4074 ]
  %4107 = phi float [ %4103, %4089 ], [ 0.000000e+00, %4074 ]
  %4108 = and i32 %4084, 2048
  %4109 = icmp eq i32 %4108, 0
  br i1 %4109, label %4118, label %4110

; <label>:4110                                    ; preds = %4104
  %4111 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3965, i32 undef)  ; BufferLoad(srv,index,wot)
  %4112 = extractvalue %dx.types.ResRet.i32 %4111, 0
  %4113 = shl i32 %4112, 4
  %4114 = and i32 %4113, 32752
  %4115 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4114)  ; LegacyF16ToF32(value)
  %4116 = fmul fast float %4115, %4082
  %4117 = call float @dx.op.binary.f32(i32 35, float %4116, float 0x3F70101020000000)  ; FMax(a,b)
  br label %4118

; <label>:4118                                    ; preds = %4110, %4104, %4046
  %4119 = phi float [ %4105, %4110 ], [ %4105, %4104 ], [ 0.000000e+00, %4046 ]
  %4120 = phi float [ %4106, %4110 ], [ %4106, %4104 ], [ 0.000000e+00, %4046 ]
  %4121 = phi float [ %4107, %4110 ], [ %4107, %4104 ], [ 0.000000e+00, %4046 ]
  %4122 = phi float [ %4117, %4110 ], [ 0x3F70101020000000, %4104 ], [ 0x3F70101020000000, %4046 ]
  %4123 = add i32 %50, 144
  %4124 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4123, i32 undef)  ; BufferLoad(srv,index,wot)
  %4125 = extractvalue %dx.types.ResRet.i32 %4124, 0
  %4126 = and i32 %4125, 255
  %4127 = uitofp i32 %4126 to float
  %4128 = lshr i32 %4125, 8
  %4129 = and i32 %4128, 255
  %4130 = uitofp i32 %4129 to float
  %4131 = call float @dx.op.dot3.f32(i32 55, float %3881, float %3882, float %3883, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4132 = fmul fast float %4130, %4131
  %4133 = fadd fast float %4132, %4127
  %4134 = fmul fast float %4133, 0x3F70101020000000
  %4135 = call float @dx.op.unary.f32(i32 7, float %4134)  ; Saturate(value)
  br i1 %3365, label %4136, label %4171

; <label>:4136                                    ; preds = %4118
  %4137 = fmul fast float %4122, 2.000000e+00
  %4138 = fcmp fast olt float %4067, 1.270000e+02
  %4139 = fcmp fast olt float %4068, 1.270000e+02
  %4140 = fcmp fast olt float %4069, 1.270000e+02
  %4141 = fmul fast float %4067, 0xBFF7154760000000
  %4142 = fmul fast float %4141, %4137
  %4143 = fmul fast float %4068, 0xBFF7154760000000
  %4144 = fmul fast float %4143, %4137
  %4145 = fmul fast float %4069, 0xBFF7154760000000
  %4146 = fmul fast float %4145, %4137
  %4147 = call float @dx.op.unary.f32(i32 21, float %4142)  ; Exp(value)
  %4148 = call float @dx.op.unary.f32(i32 21, float %4144)  ; Exp(value)
  %4149 = call float @dx.op.unary.f32(i32 21, float %4146)  ; Exp(value)
  %4150 = call float @dx.op.unary.f32(i32 7, float %4147)  ; Saturate(value)
  %4151 = call float @dx.op.unary.f32(i32 7, float %4148)  ; Saturate(value)
  %4152 = call float @dx.op.unary.f32(i32 7, float %4149)  ; Saturate(value)
  %4153 = fadd fast float %4150, -1.000000e+00
  %4154 = select i1 %4138, float %4153, float -1.000000e+00
  %4155 = fadd fast float %4151, -1.000000e+00
  %4156 = select i1 %4139, float %4155, float -1.000000e+00
  %4157 = fadd fast float %4152, -1.000000e+00
  %4158 = select i1 %4140, float %4157, float -1.000000e+00
  %4159 = fmul fast float %4154, %3661
  %4160 = fmul fast float %4156, %3661
  %4161 = fmul fast float %4158, %3661
  %4162 = fadd fast float %4159, 1.000000e+00
  %4163 = fadd fast float %4160, 1.000000e+00
  %4164 = fadd fast float %4161, 1.000000e+00
  %4165 = fmul fast float %4162, %3347
  %4166 = fmul fast float %4163, %3348
  %4167 = fmul fast float %4164, %3349
  %4168 = fmul fast float %4162, %3350
  %4169 = fmul fast float %4163, %3351
  %4170 = fmul fast float %4164, %3352
  br label %4171

; <label>:4171                                    ; preds = %4136, %4118
  %4172 = phi float [ %4165, %4136 ], [ %3347, %4118 ]
  %4173 = phi float [ %4166, %4136 ], [ %3348, %4118 ]
  %4174 = phi float [ %4167, %4136 ], [ %3349, %4118 ]
  %4175 = phi float [ %4168, %4136 ], [ %3350, %4118 ]
  %4176 = phi float [ %4169, %4136 ], [ %3351, %4118 ]
  %4177 = phi float [ %4170, %4136 ], [ %3352, %4118 ]
  %4178 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3366, i32 undef)  ; BufferLoad(srv,index,wot)
  %4179 = extractvalue %dx.types.ResRet.i32 %4178, 0
  %4180 = and i32 %4179, 3
  %4181 = icmp eq i32 %4180, 3
  br i1 %4181, label %4260, label %4182

; <label>:4182                                    ; preds = %4171
  %4183 = and i32 %4179, 16
  %4184 = icmp ne i32 %4183, 0
  %4185 = select i1 %4184, float %3661, float 0.000000e+00
  %4186 = icmp eq i32 %4180, 0
  br i1 %4186, label %4187, label %4215

; <label>:4187                                    ; preds = %4182
  %4188 = and i32 %4179, 64
  %4189 = icmp ne i32 %4188, 0
  %4190 = select i1 %4189, float %3661, float 0.000000e+00
  %4191 = fsub fast float %3881, %4172
  %4192 = fsub fast float %3882, %4173
  %4193 = fsub fast float %3883, %4174
  %4194 = fmul fast float %4185, %4191
  %4195 = fmul fast float %4185, %4192
  %4196 = fmul fast float %4185, %4193
  %4197 = fadd fast float %4194, %4172
  %4198 = fadd fast float %4195, %4173
  %4199 = fadd fast float %4196, %4174
  %4200 = fsub fast float %3867, %3359
  %4201 = fmul fast float %4185, %4200
  %4202 = fadd fast float %4201, %3359
  %4203 = fsub fast float %4009, %4175
  %4204 = fsub fast float %4010, %4176
  %4205 = fsub fast float %4011, %4177
  %4206 = fmul fast float %4190, %4203
  %4207 = fmul fast float %4190, %4204
  %4208 = fmul fast float %4190, %4205
  %4209 = fadd fast float %4206, %4175
  %4210 = fadd fast float %4207, %4176
  %4211 = fadd fast float %4208, %4177
  %4212 = fsub fast float %4135, %3363
  %4213 = fmul fast float %4185, %4212
  %4214 = fadd fast float %4213, %3363
  br label %4260

; <label>:4215                                    ; preds = %4182
  %4216 = icmp eq i32 %4180, 1
  br i1 %4216, label %4217, label %4230

; <label>:4217                                    ; preds = %4215
  %4218 = fadd fast float %3881, -1.000000e+00
  %4219 = fadd fast float %3882, -1.000000e+00
  %4220 = fadd fast float %3883, -1.000000e+00
  %4221 = fmul fast float %4185, %4218
  %4222 = fmul fast float %4185, %4219
  %4223 = fmul fast float %4185, %4220
  %4224 = fadd fast float %4221, 1.000000e+00
  %4225 = fadd fast float %4222, 1.000000e+00
  %4226 = fadd fast float %4223, 1.000000e+00
  %4227 = fmul fast float %4224, %4172
  %4228 = fmul fast float %4225, %4173
  %4229 = fmul fast float %4226, %4174
  br label %4260

; <label>:4230                                    ; preds = %4215
  %4231 = icmp eq i32 %4180, 2
  br i1 %4231, label %4232, label %4260

; <label>:4232                                    ; preds = %4230
  %4233 = call float @dx.op.unary.f32(i32 24, float %3881)  ; Sqrt(value)
  %4234 = call float @dx.op.unary.f32(i32 24, float %3882)  ; Sqrt(value)
  %4235 = call float @dx.op.unary.f32(i32 24, float %3883)  ; Sqrt(value)
  %4236 = fadd fast float %4233, -5.000000e-01
  %4237 = fadd fast float %4234, -5.000000e-01
  %4238 = fadd fast float %4235, -5.000000e-01
  %4239 = fmul fast float %4236, %4185
  %4240 = fmul fast float %4237, %4185
  %4241 = fmul fast float %4238, %4185
  %4242 = fadd fast float %4239, 5.000000e-01
  %4243 = fadd fast float %4240, 5.000000e-01
  %4244 = fadd fast float %4241, 5.000000e-01
  %4245 = fmul fast float %4242, 2.000000e+00
  %4246 = fsub fast float 1.000000e+00, %4245
  %4247 = fmul fast float %4246, %4172
  %4248 = fadd fast float %4247, %4245
  %4249 = fmul fast float %4248, %4172
  %4250 = fmul fast float %4243, 2.000000e+00
  %4251 = fsub fast float 1.000000e+00, %4250
  %4252 = fmul fast float %4251, %4173
  %4253 = fadd fast float %4252, %4250
  %4254 = fmul fast float %4253, %4173
  %4255 = fmul fast float %4244, 2.000000e+00
  %4256 = fsub fast float 1.000000e+00, %4255
  %4257 = fmul fast float %4256, %4174
  %4258 = fadd fast float %4257, %4255
  %4259 = fmul fast float %4258, %4174
  br label %4260

; <label>:4260                                    ; preds = %4232, %4230, %4217, %4187, %4171
  %4261 = phi float [ %4172, %4171 ], [ %4249, %4232 ], [ %4172, %4230 ], [ %4227, %4217 ], [ %4197, %4187 ]
  %4262 = phi float [ %4173, %4171 ], [ %4254, %4232 ], [ %4173, %4230 ], [ %4228, %4217 ], [ %4198, %4187 ]
  %4263 = phi float [ %4174, %4171 ], [ %4259, %4232 ], [ %4174, %4230 ], [ %4229, %4217 ], [ %4199, %4187 ]
  %4264 = phi float [ %4175, %4171 ], [ %4175, %4232 ], [ %4175, %4230 ], [ %4175, %4217 ], [ %4209, %4187 ]
  %4265 = phi float [ %4176, %4171 ], [ %4176, %4232 ], [ %4176, %4230 ], [ %4176, %4217 ], [ %4210, %4187 ]
  %4266 = phi float [ %4177, %4171 ], [ %4177, %4232 ], [ %4177, %4230 ], [ %4177, %4217 ], [ %4211, %4187 ]
  %4267 = phi float [ %3359, %4171 ], [ %3359, %4232 ], [ %3359, %4230 ], [ %3359, %4217 ], [ %4202, %4187 ]
  %4268 = phi float [ %3363, %4171 ], [ %3363, %4232 ], [ %3363, %4230 ], [ %3363, %4217 ], [ %4214, %4187 ]
  %4269 = and i32 %4179, 12
  %4270 = icmp eq i32 %4269, 12
  br i1 %4270, label %4401, label %4271

; <label>:4271                                    ; preds = %4260
  %4272 = and i32 %4179, 2097184
  %4273 = icmp eq i32 %4272, 2097184
  %4274 = select i1 %4273, float %3661, float 0.000000e+00
  %4275 = and i32 %4179, 4194336
  %4276 = icmp eq i32 %4275, 4194336
  %4277 = select i1 %4276, float %3661, float 0.000000e+00
  %4278 = and i32 %4179, 8388640
  %4279 = icmp eq i32 %4278, 8388640
  %4280 = select i1 %4279, float %3661, float 0.000000e+00
  %4281 = and i32 %4179, 1024
  %4282 = icmp ne i32 %4281, 0
  %4283 = select i1 %4282, float %3661, float 0.000000e+00
  %4284 = and i32 %4179, 2048
  %4285 = icmp ne i32 %4284, 0
  %4286 = select i1 %4285, float %3661, float 0.000000e+00
  %4287 = and i32 %4179, 8192
  %4288 = icmp ne i32 %4287, 0
  %4289 = select i1 %4288, float %3661, float 0.000000e+00
  %4290 = icmp eq i32 %4269, 0
  br i1 %4290, label %4291, label %4325

; <label>:4291                                    ; preds = %4271
  %4292 = fsub fast float %3962, %3345
  %4293 = fsub fast float %3963, %3346
  %4294 = fmul fast float %4274, %4292
  %4295 = fmul fast float %4274, %4293
  %4296 = fadd fast float %4294, %3345
  %4297 = fadd fast float %4295, %3346
  %4298 = fsub fast float %3964, %3361
  %4299 = fmul fast float %4277, %4298
  %4300 = fadd fast float %4299, %3361
  %4301 = fsub fast float %3961, %3360
  %4302 = fmul fast float %4280, %4301
  %4303 = fadd fast float %4302, %3360
  %4304 = fsub fast float %4067, %3353
  %4305 = fsub fast float %4068, %3354
  %4306 = fsub fast float %4069, %3355
  %4307 = fmul fast float %4283, %4304
  %4308 = fmul fast float %4283, %4305
  %4309 = fmul fast float %4283, %4306
  %4310 = fadd fast float %4307, %3353
  %4311 = fadd fast float %4308, %3354
  %4312 = fadd fast float %4309, %3355
  %4313 = fsub fast float %4122, %3362
  %4314 = fmul fast float %4286, %4313
  %4315 = fadd fast float %4314, %3362
  %4316 = fsub fast float %4119, %3356
  %4317 = fsub fast float %4120, %3357
  %4318 = fsub fast float %4121, %3358
  %4319 = fmul fast float %4289, %4316
  %4320 = fmul fast float %4289, %4317
  %4321 = fmul fast float %4289, %4318
  %4322 = fadd fast float %4319, %3356
  %4323 = fadd fast float %4320, %3357
  %4324 = fadd fast float %4321, %3358
  br label %4401

; <label>:4325                                    ; preds = %4271
  %4326 = icmp eq i32 %4269, 4
  br i1 %4326, label %4327, label %4373

; <label>:4327                                    ; preds = %4325
  %4328 = fmul fast float %4274, %3962
  %4329 = fmul fast float %4274, %3963
  %4330 = fadd fast float %4328, %3345
  %4331 = fadd fast float %4329, %3346
  %4332 = call float @dx.op.binary.f32(i32 36, float %3361, float %3964)  ; FMin(a,b)
  %4333 = fsub fast float %4332, %3361
  %4334 = fmul fast float %4333, %4277
  %4335 = fadd fast float %4334, %3361
  %4336 = fadd fast float %3961, %3360
  %4337 = fmul fast float %4336, 0x3FF337FAE0000000
  %4338 = fmul fast float %3360, %3360
  %4339 = fmul fast float %3961, %3961
  %4340 = fadd fast float %4339, %4338
  %4341 = fmul fast float %4340, 0x3FE5152B00000000
  %4342 = fmul fast float %3360, 0xBFCC1F85E0000000
  %4343 = fmul fast float %4342, %3961
  %4344 = fadd fast float %4343, 0xBFE1363700000000
  %4345 = fadd fast float %4344, %4337
  %4346 = fsub fast float %4345, %4341
  %4347 = fmul fast float %4336, 0x3FBA6F0D00000000
  %4348 = fmul fast float %4340, 0x3FD0432880000000
  %4349 = fmul fast float %3360, 0xBFEF110800000000
  %4350 = fmul fast float %4349, %3961
  %4351 = fadd fast float %4350, 1.000000e+00
  %4352 = fsub fast float %4351, %4347
  %4353 = fadd fast float %4352, %4348
  %4354 = fdiv fast float %4346, %4353
  %4355 = call float @dx.op.unary.f32(i32 7, float %4354)  ; Saturate(value)
  %4356 = fsub fast float %4355, %3360
  %4357 = fmul fast float %4356, %4280
  %4358 = fadd fast float %4357, %3360
  %4359 = fmul fast float %4283, %4067
  %4360 = fmul fast float %4283, %4068
  %4361 = fmul fast float %4283, %4069
  %4362 = fadd fast float %4359, %3353
  %4363 = fadd fast float %4360, %3354
  %4364 = fadd fast float %4361, %3355
  %4365 = fmul fast float %4286, %4122
  %4366 = fadd fast float %4365, %3362
  %4367 = fmul fast float %4289, %4119
  %4368 = fmul fast float %4289, %4120
  %4369 = fmul fast float %4289, %4121
  %4370 = fadd fast float %4367, %3356
  %4371 = fadd fast float %4368, %3357
  %4372 = fadd fast float %4369, %3358
  br label %4401

; <label>:4373                                    ; preds = %4325
  %4374 = icmp eq i32 %4269, 8
  br i1 %4374, label %4375, label %4401

; <label>:4375                                    ; preds = %4373
  %4376 = fmul fast float %4274, %3962
  %4377 = fmul fast float %4274, %3963
  %4378 = fadd fast float %4376, %3345
  %4379 = fadd fast float %4377, %3346
  %4380 = call float @dx.op.binary.f32(i32 36, float %3361, float %3964)  ; FMin(a,b)
  %4381 = fsub fast float %4380, %3361
  %4382 = fmul fast float %4381, %4277
  %4383 = fadd fast float %4382, %3361
  %4384 = fsub fast float %3961, %3360
  %4385 = fmul fast float %4280, %4384
  %4386 = fadd fast float %4385, %3360
  %4387 = fmul fast float %4283, %4067
  %4388 = fmul fast float %4283, %4068
  %4389 = fmul fast float %4283, %4069
  %4390 = fadd fast float %4387, %3353
  %4391 = fadd fast float %4388, %3354
  %4392 = fadd fast float %4389, %3355
  %4393 = fmul fast float %4286, %4122
  %4394 = fadd fast float %4393, %3362
  %4395 = fmul fast float %4289, %4119
  %4396 = fmul fast float %4289, %4120
  %4397 = fmul fast float %4289, %4121
  %4398 = fadd fast float %4395, %3356
  %4399 = fadd fast float %4396, %3357
  %4400 = fadd fast float %4397, %3358
  br label %4401

; <label>:4401                                    ; preds = %4375, %4373, %4327, %4291, %4260, %3660, %3364, %3344
  %4402 = phi float [ %3345, %4260 ], [ %3345, %3660 ], [ %3345, %3344 ], [ %3345, %3364 ], [ %4296, %4291 ], [ %4330, %4327 ], [ %3345, %4373 ], [ %4378, %4375 ]
  %4403 = phi float [ %3346, %4260 ], [ %3346, %3660 ], [ %3346, %3344 ], [ %3346, %3364 ], [ %4297, %4291 ], [ %4331, %4327 ], [ %3346, %4373 ], [ %4379, %4375 ]
  %4404 = phi float [ %4261, %4260 ], [ %3347, %3660 ], [ %3347, %3344 ], [ %3347, %3364 ], [ %4261, %4291 ], [ %4261, %4327 ], [ %4261, %4373 ], [ %4261, %4375 ]
  %4405 = phi float [ %4262, %4260 ], [ %3348, %3660 ], [ %3348, %3344 ], [ %3348, %3364 ], [ %4262, %4291 ], [ %4262, %4327 ], [ %4262, %4373 ], [ %4262, %4375 ]
  %4406 = phi float [ %4263, %4260 ], [ %3349, %3660 ], [ %3349, %3344 ], [ %3349, %3364 ], [ %4263, %4291 ], [ %4263, %4327 ], [ %4263, %4373 ], [ %4263, %4375 ]
  %4407 = phi float [ %4264, %4260 ], [ %3350, %3660 ], [ %3350, %3344 ], [ %3350, %3364 ], [ %4264, %4291 ], [ %4264, %4327 ], [ %4264, %4373 ], [ %4264, %4375 ]
  %4408 = phi float [ %4265, %4260 ], [ %3351, %3660 ], [ %3351, %3344 ], [ %3351, %3364 ], [ %4265, %4291 ], [ %4265, %4327 ], [ %4265, %4373 ], [ %4265, %4375 ]
  %4409 = phi float [ %4266, %4260 ], [ %3352, %3660 ], [ %3352, %3344 ], [ %3352, %3364 ], [ %4266, %4291 ], [ %4266, %4327 ], [ %4266, %4373 ], [ %4266, %4375 ]
  %4410 = phi float [ %3353, %4260 ], [ %3353, %3660 ], [ %3353, %3344 ], [ %3353, %3364 ], [ %4310, %4291 ], [ %4362, %4327 ], [ %3353, %4373 ], [ %4390, %4375 ]
  %4411 = phi float [ %3354, %4260 ], [ %3354, %3660 ], [ %3354, %3344 ], [ %3354, %3364 ], [ %4311, %4291 ], [ %4363, %4327 ], [ %3354, %4373 ], [ %4391, %4375 ]
  %4412 = phi float [ %3355, %4260 ], [ %3355, %3660 ], [ %3355, %3344 ], [ %3355, %3364 ], [ %4312, %4291 ], [ %4364, %4327 ], [ %3355, %4373 ], [ %4392, %4375 ]
  %4413 = phi float [ %3356, %4260 ], [ %3356, %3660 ], [ %3356, %3344 ], [ %3356, %3364 ], [ %4322, %4291 ], [ %4370, %4327 ], [ %3356, %4373 ], [ %4398, %4375 ]
  %4414 = phi float [ %3357, %4260 ], [ %3357, %3660 ], [ %3357, %3344 ], [ %3357, %3364 ], [ %4323, %4291 ], [ %4371, %4327 ], [ %3357, %4373 ], [ %4399, %4375 ]
  %4415 = phi float [ %3358, %4260 ], [ %3358, %3660 ], [ %3358, %3344 ], [ %3358, %3364 ], [ %4324, %4291 ], [ %4372, %4327 ], [ %3358, %4373 ], [ %4400, %4375 ]
  %4416 = phi float [ %4267, %4260 ], [ %3359, %3660 ], [ %3359, %3344 ], [ %3359, %3364 ], [ %4267, %4291 ], [ %4267, %4327 ], [ %4267, %4373 ], [ %4267, %4375 ]
  %4417 = phi float [ %3360, %4260 ], [ %3360, %3660 ], [ %3360, %3344 ], [ %3360, %3364 ], [ %4303, %4291 ], [ %4358, %4327 ], [ %3360, %4373 ], [ %4386, %4375 ]
  %4418 = phi float [ %3361, %4260 ], [ %3361, %3660 ], [ %3361, %3344 ], [ %3361, %3364 ], [ %4300, %4291 ], [ %4335, %4327 ], [ %3361, %4373 ], [ %4383, %4375 ]
  %4419 = phi float [ %3362, %4260 ], [ %3362, %3660 ], [ %3362, %3344 ], [ %3362, %3364 ], [ %4315, %4291 ], [ %4366, %4327 ], [ %3362, %4373 ], [ %4394, %4375 ]
  %4420 = phi float [ %4268, %4260 ], [ %3363, %3660 ], [ %3363, %3344 ], [ %3363, %3364 ], [ %4268, %4291 ], [ %4268, %4327 ], [ %4268, %4373 ], [ %4268, %4375 ]
  %4421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4422 = extractvalue %dx.types.CBufRet.f32 %4421, 0
  %4423 = call float @dx.op.dot2.f32(i32 54, float %4402, float %4403, float %4402, float %4403)  ; Dot2(ax,ay,bx,by)
  %4424 = fmul fast float %4423, 0x3FE3333340000000
  %4425 = fsub fast float 1.000000e+00, %4424
  %4426 = call float @dx.op.dot3.f32(i32 55, float %4402, float %4403, float %4425, float %4402, float %4403, float %4425)  ; Dot3(ax,ay,az,bx,by,bz)
  %4427 = call float @dx.op.unary.f32(i32 25, float %4426)  ; Rsqrt(value)
  %4428 = fmul fast float %4427, %4402
  %4429 = fmul fast float %4427, %4403
  %4430 = fmul fast float %4425, %4427
  %4431 = fmul fast float %4430, %106
  %4432 = fmul fast float %4430, %107
  %4433 = fmul fast float %4430, %108
  %4434 = fmul fast float %4428, %71
  %4435 = fmul fast float %4428, %72
  %4436 = fmul fast float %4428, %73
  %4437 = fadd fast float %4431, %4434
  %4438 = fadd fast float %4432, %4435
  %4439 = fadd fast float %4433, %4436
  %4440 = fmul fast float %118, %4429
  %4441 = fmul fast float %119, %4429
  %4442 = fmul fast float %120, %4429
  %4443 = fadd fast float %4437, %4440
  %4444 = fadd fast float %4438, %4441
  %4445 = fadd fast float %4439, %4442
  %4446 = call float @dx.op.dot3.f32(i32 55, float %4443, float %4444, float %4445, float %4443, float %4444, float %4445)  ; Dot3(ax,ay,az,bx,by,bz)
  %4447 = call float @dx.op.unary.f32(i32 25, float %4446)  ; Rsqrt(value)
  %4448 = fmul fast float %4443, %4447
  %4449 = fmul fast float %4444, %4447
  %4450 = fmul fast float %4445, %4447
  %4451 = and i32 %52, 1
  %4452 = icmp eq i32 %4451, 0
  br i1 %4452, label %4453, label %5045

; <label>:4453                                    ; preds = %4401
  %4454 = call float @dx.op.unary.f32(i32 83, float %154)  ; DerivCoarseX(value)
  %4455 = call float @dx.op.unary.f32(i32 83, float %155)  ; DerivCoarseX(value)
  %4456 = call float @dx.op.unary.f32(i32 83, float %156)  ; DerivCoarseX(value)
  %4457 = call float @dx.op.unary.f32(i32 84, float %154)  ; DerivCoarseY(value)
  %4458 = call float @dx.op.unary.f32(i32 84, float %155)  ; DerivCoarseY(value)
  %4459 = call float @dx.op.unary.f32(i32 84, float %156)  ; DerivCoarseY(value)
  %4460 = fadd fast float %4454, %154
  %4461 = fadd fast float %4455, %155
  %4462 = fadd fast float %4456, %156
  %4463 = fadd fast float %4457, %154
  %4464 = fadd fast float %4458, %155
  %4465 = fadd fast float %4459, %156
  %4466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %4467 = extractvalue %dx.types.CBufRet.f32 %4466, 0
  %4468 = extractvalue %dx.types.CBufRet.f32 %4466, 1
  %4469 = extractvalue %dx.types.CBufRet.f32 %4466, 2
  %4470 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4471 = extractvalue %dx.types.CBufRet.f32 %4470, 2
  %4472 = extractvalue %dx.types.CBufRet.f32 %4470, 3
  %4473 = fmul fast float %4467, %99
  %4474 = fmul fast float %4473, %4471
  %4475 = fmul fast float %4468, %100
  %4476 = fmul fast float %4475, %4472
  %4477 = fptoui float %4474 to i32
  %4478 = fptoui float %4476 to i32
  %4479 = fadd fast float %4467, -1.000000e+00
  %4480 = fadd fast float %4468, -1.000000e+00
  %4481 = fptoui float %4479 to i32
  %4482 = fptoui float %4480 to i32
  %4483 = call i32 @dx.op.binary.i32(i32 40, i32 %4477, i32 %4481)  ; UMin(a,b)
  %4484 = call i32 @dx.op.binary.i32(i32 40, i32 %4478, i32 %4482)  ; UMin(a,b)
  %4485 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4486 = extractvalue %dx.types.CBufRet.f32 %4485, 2
  %4487 = extractvalue %dx.types.CBufRet.f32 %4485, 3
  %4488 = fmul fast float %4486, %87
  %4489 = fsub fast float %4488, %4487
  %4490 = fadd fast float %4469, -1.000000e+00
  %4491 = call float @dx.op.binary.f32(i32 36, float %4489, float %4490)  ; FMin(a,b)
  %4492 = fptoui float %4491 to i32
  %4493 = fptoui float %4467 to i32
  %4494 = fptoui float %4468 to i32
  %4495 = mul i32 %4492, %4494
  %4496 = add i32 %4495, %4484
  %4497 = mul i32 %4496, %4493
  %4498 = add i32 %4497, %4483
  %4499 = shl i32 %4498, 2
  %4500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %4499, i32 undef)  ; BufferLoad(srv,index,wot)
  %4501 = extractvalue %dx.types.ResRet.i32 %4500, 0
  %4502 = and i32 %4501, 1023
  %4503 = lshr i32 %4501, 10
  %4504 = icmp eq i32 %4502, 0
  br i1 %4504, label %5008, label %4505

; <label>:4505                                    ; preds = %4453
  %4506 = and i32 %4501, 1023
  br label %4507

; <label>:4507                                    ; preds = %4639, %4505
  %4508 = phi i32 [ %4589, %4639 ], [ 0, %4505 ]
  %4509 = phi float [ %4640, %4639 ], [ 0.000000e+00, %4505 ]
  %4510 = phi float [ %4641, %4639 ], [ %4422, %4505 ]
  %4511 = phi float [ %4642, %4639 ], [ %4420, %4505 ]
  %4512 = phi float [ %4643, %4639 ], [ %4410, %4505 ]
  %4513 = phi float [ %4644, %4639 ], [ %4411, %4505 ]
  %4514 = phi float [ %4645, %4639 ], [ %4412, %4505 ]
  %4515 = phi float [ %4646, %4639 ], [ 0.000000e+00, %4505 ]
  %4516 = phi float [ %4647, %4639 ], [ 0.000000e+00, %4505 ]
  %4517 = phi float [ %4648, %4639 ], [ %4413, %4505 ]
  %4518 = phi float [ %4649, %4639 ], [ %4414, %4505 ]
  %4519 = phi float [ %4650, %4639 ], [ %4415, %4505 ]
  %4520 = phi float [ %4651, %4639 ], [ %4407, %4505 ]
  %4521 = phi float [ %4652, %4639 ], [ %4408, %4505 ]
  %4522 = phi float [ %4653, %4639 ], [ %4409, %4505 ]
  %4523 = phi float [ %4654, %4639 ], [ %4448, %4505 ]
  %4524 = phi float [ %4655, %4639 ], [ %4449, %4505 ]
  %4525 = phi float [ %4656, %4639 ], [ %4450, %4505 ]
  %4526 = phi float [ %4657, %4639 ], [ %4418, %4505 ]
  %4527 = phi float [ %4658, %4639 ], [ %4417, %4505 ]
  %4528 = phi float [ %4659, %4639 ], [ 0.000000e+00, %4505 ]
  %4529 = phi float [ %4660, %4639 ], [ %4416, %4505 ]
  %4530 = phi float [ %4661, %4639 ], [ %4404, %4505 ]
  %4531 = phi float [ %4662, %4639 ], [ %4405, %4505 ]
  %4532 = phi float [ %4663, %4639 ], [ %4406, %4505 ]
  %4533 = add nuw nsw i32 %4508, %4503
  %4534 = shl i32 %4533, 2
  %4535 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %4534, i32 undef)  ; BufferLoad(srv,index,wot)
  %4536 = extractvalue %dx.types.ResRet.i32 %4535, 0
  %4537 = shl i32 %4536, 8
  %4538 = or i32 %4537, 48
  %4539 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4538, i32 undef)  ; BufferLoad(srv,index,wot)
  %4540 = extractvalue %dx.types.ResRet.f32 %4539, 0
  %4541 = extractvalue %dx.types.ResRet.f32 %4539, 1
  %4542 = extractvalue %dx.types.ResRet.f32 %4539, 2
  %4543 = extractvalue %dx.types.ResRet.f32 %4539, 3
  %4544 = or i32 %4537, 64
  %4545 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4544, i32 undef)  ; BufferLoad(srv,index,wot)
  %4546 = extractvalue %dx.types.ResRet.i32 %4545, 0
  %4547 = extractvalue %dx.types.ResRet.i32 %4545, 1
  %4548 = or i32 %4537, 80
  %4549 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4548, i32 undef)  ; BufferLoad(srv,index,wot)
  %4550 = extractvalue %dx.types.ResRet.f32 %4549, 2
  %4551 = extractvalue %dx.types.ResRet.f32 %4549, 3
  %4552 = or i32 %4537, 96
  %4553 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4552, i32 undef)  ; BufferLoad(srv,index,wot)
  %4554 = extractvalue %dx.types.ResRet.f32 %4553, 0
  %4555 = extractvalue %dx.types.ResRet.f32 %4553, 1
  %4556 = extractvalue %dx.types.ResRet.f32 %4553, 2
  %4557 = extractvalue %dx.types.ResRet.f32 %4553, 3
  %4558 = or i32 %4537, 112
  %4559 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4558, i32 undef)  ; BufferLoad(srv,index,wot)
  %4560 = extractvalue %dx.types.ResRet.f32 %4559, 2
  %4561 = or i32 %4537, 128
  %4562 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4561, i32 undef)  ; BufferLoad(srv,index,wot)
  %4563 = extractvalue %dx.types.ResRet.f32 %4562, 0
  %4564 = extractvalue %dx.types.ResRet.f32 %4562, 1
  %4565 = extractvalue %dx.types.ResRet.f32 %4562, 2
  %4566 = extractvalue %dx.types.ResRet.f32 %4562, 3
  %4567 = or i32 %4537, 144
  %4568 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4567, i32 undef)  ; BufferLoad(srv,index,wot)
  %4569 = extractvalue %dx.types.ResRet.f32 %4568, 0
  %4570 = extractvalue %dx.types.ResRet.f32 %4568, 1
  %4571 = extractvalue %dx.types.ResRet.f32 %4568, 2
  %4572 = extractvalue %dx.types.ResRet.f32 %4568, 3
  %4573 = or i32 %4537, 160
  %4574 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4573, i32 undef)  ; BufferLoad(srv,index,wot)
  %4575 = extractvalue %dx.types.ResRet.f32 %4574, 0
  %4576 = extractvalue %dx.types.ResRet.f32 %4574, 1
  %4577 = extractvalue %dx.types.ResRet.f32 %4574, 2
  %4578 = extractvalue %dx.types.ResRet.f32 %4574, 3
  %4579 = or i32 %4537, 192
  %4580 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4579, i32 undef)  ; BufferLoad(srv,index,wot)
  %4581 = extractvalue %dx.types.ResRet.i32 %4580, 0
  %4582 = or i32 %4537, 208
  %4583 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4582, i32 undef)  ; BufferLoad(srv,index,wot)
  %4584 = extractvalue %dx.types.ResRet.f32 %4583, 0
  %4585 = or i32 %4537, 248
  %4586 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4585, i32 undef)  ; BufferLoad(srv,index,wot)
  %4587 = extractvalue %dx.types.ResRet.f32 %4586, 0
  %4588 = extractvalue %dx.types.ResRet.f32 %4586, 1
  %4589 = add nuw nsw i32 %4508, 1
  %4590 = bitcast float %4543 to i32
  %4591 = and i32 %4590, 512
  %4592 = icmp eq i32 %4591, 0
  %4593 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4537, i32 undef)  ; BufferLoad(srv,index,wot)
  %4594 = extractvalue %dx.types.ResRet.f32 %4593, 0
  %4595 = extractvalue %dx.types.ResRet.f32 %4593, 1
  %4596 = extractvalue %dx.types.ResRet.f32 %4593, 2
  %4597 = extractvalue %dx.types.ResRet.f32 %4593, 3
  %4598 = call float @dx.op.dot4.f32(i32 56, float %4594, float %4595, float %4596, float %4597, float %154, float %155, float %156, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4599 = or i32 %4537, 16
  %4600 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4599, i32 undef)  ; BufferLoad(srv,index,wot)
  %4601 = extractvalue %dx.types.ResRet.f32 %4600, 0
  %4602 = extractvalue %dx.types.ResRet.f32 %4600, 1
  %4603 = extractvalue %dx.types.ResRet.f32 %4600, 2
  %4604 = extractvalue %dx.types.ResRet.f32 %4600, 3
  %4605 = call float @dx.op.dot4.f32(i32 56, float %4601, float %4602, float %4603, float %4604, float %154, float %155, float %156, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4606 = or i32 %4537, 32
  %4607 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4606, i32 undef)  ; BufferLoad(srv,index,wot)
  %4608 = extractvalue %dx.types.ResRet.f32 %4607, 0
  %4609 = extractvalue %dx.types.ResRet.f32 %4607, 1
  %4610 = extractvalue %dx.types.ResRet.f32 %4607, 2
  %4611 = extractvalue %dx.types.ResRet.f32 %4607, 3
  %4612 = call float @dx.op.dot4.f32(i32 56, float %4608, float %4609, float %4610, float %4611, float %154, float %155, float %156, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4613 = call float @dx.op.unary.f32(i32 27, float %4598)  ; Round_ni(value)
  %4614 = call float @dx.op.unary.f32(i32 6, float %4613)  ; FAbs(value)
  %4615 = call float @dx.op.unary.f32(i32 27, float %4605)  ; Round_ni(value)
  %4616 = call float @dx.op.unary.f32(i32 6, float %4615)  ; FAbs(value)
  %4617 = call float @dx.op.unary.f32(i32 6, float %4612)  ; FAbs(value)
  %4618 = call float @dx.op.unary.f32(i32 27, float %4617)  ; Round_ni(value)
  %4619 = fadd fast float %4616, %4614
  %4620 = fadd fast float %4619, %4618
  %4621 = fcmp fast oeq float %4620, 0.000000e+00
  %4622 = call float @dx.op.dot4.f32(i32 56, float %4594, float %4595, float %4596, float %4597, float %4460, float %4461, float %4462, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4623 = call float @dx.op.dot4.f32(i32 56, float %4601, float %4602, float %4603, float %4604, float %4460, float %4461, float %4462, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4624 = call float @dx.op.dot4.f32(i32 56, float %4594, float %4595, float %4596, float %4597, float %4463, float %4464, float %4465, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4625 = call float @dx.op.dot4.f32(i32 56, float %4601, float %4602, float %4603, float %4604, float %4463, float %4464, float %4465, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4626 = fsub fast float %4622, %4598
  %4627 = fsub fast float %4624, %4598
  %4628 = fsub fast float %4623, %4605
  %4629 = fsub fast float %4625, %4605
  %4630 = call float @dx.op.dot3.f32(i32 55, float %4540, float %4541, float %4542, float %106, float %107, float %108)  ; Dot3(ax,ay,az,bx,by,bz)
  %4631 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4632 = extractvalue %dx.types.CBufRet.f32 %4631, 2
  %4633 = fadd fast float %4632, %4630
  %4634 = call float @dx.op.unary.f32(i32 7, float %4633)  ; Saturate(value)
  %4635 = extractvalue %dx.types.CBufRet.f32 %4631, 0
  %4636 = fcmp fast ogt float %4634, %4635
  %4637 = and i1 %4621, %4636
  %4638 = and i1 %4592, %4637
  br i1 %4638, label %4665, label %4639

; <label>:4639                                    ; preds = %4994, %4746, %4665, %4507
  %4640 = phi float [ %4509, %4665 ], [ %4749, %4746 ], [ %4749, %4994 ], [ %4509, %4507 ]
  %4641 = phi float [ %4510, %4665 ], [ %4510, %4746 ], [ %4970, %4994 ], [ %4510, %4507 ]
  %4642 = phi float [ %4511, %4665 ], [ %4511, %4746 ], [ %4968, %4994 ], [ %4511, %4507 ]
  %4643 = phi float [ %4512, %4665 ], [ %4512, %4746 ], [ %4946, %4994 ], [ %4512, %4507 ]
  %4644 = phi float [ %4513, %4665 ], [ %4513, %4746 ], [ %4947, %4994 ], [ %4513, %4507 ]
  %4645 = phi float [ %4514, %4665 ], [ %4514, %4746 ], [ %4948, %4994 ], [ %4514, %4507 ]
  %4646 = phi float [ %4515, %4665 ], [ %4515, %4746 ], [ %4873, %4994 ], [ %4515, %4507 ]
  %4647 = phi float [ %4516, %4665 ], [ %4516, %4746 ], [ %4871, %4994 ], [ %4516, %4507 ]
  %4648 = phi float [ %4517, %4665 ], [ %4517, %4746 ], [ %4916, %4994 ], [ %4517, %4507 ]
  %4649 = phi float [ %4518, %4665 ], [ %4518, %4746 ], [ %4917, %4994 ], [ %4518, %4507 ]
  %4650 = phi float [ %4519, %4665 ], [ %4519, %4746 ], [ %4918, %4994 ], [ %4519, %4507 ]
  %4651 = phi float [ %4520, %4665 ], [ %4520, %4746 ], [ %5004, %4994 ], [ %4520, %4507 ]
  %4652 = phi float [ %4521, %4665 ], [ %4521, %4746 ], [ %5005, %4994 ], [ %4521, %4507 ]
  %4653 = phi float [ %4522, %4665 ], [ %4522, %4746 ], [ %5006, %4994 ], [ %4522, %4507 ]
  %4654 = phi float [ %4523, %4665 ], [ %4523, %4746 ], [ %4852, %4994 ], [ %4523, %4507 ]
  %4655 = phi float [ %4524, %4665 ], [ %4524, %4746 ], [ %4853, %4994 ], [ %4524, %4507 ]
  %4656 = phi float [ %4525, %4665 ], [ %4525, %4746 ], [ %4854, %4994 ], [ %4525, %4507 ]
  %4657 = phi float [ %4526, %4665 ], [ %4526, %4746 ], [ %4926, %4994 ], [ %4526, %4507 ]
  %4658 = phi float [ %4527, %4665 ], [ %4527, %4746 ], [ %4923, %4994 ], [ %4527, %4507 ]
  %4659 = phi float [ %4528, %4665 ], [ %4528, %4746 ], [ %4920, %4994 ], [ %4528, %4507 ]
  %4660 = phi float [ %4529, %4665 ], [ %4529, %4746 ], [ %4869, %4994 ], [ %4529, %4507 ]
  %4661 = phi float [ %4530, %4665 ], [ %4530, %4746 ], [ %4864, %4994 ], [ %4530, %4507 ]
  %4662 = phi float [ %4531, %4665 ], [ %4531, %4746 ], [ %4865, %4994 ], [ %4531, %4507 ]
  %4663 = phi float [ %4532, %4665 ], [ %4532, %4746 ], [ %4866, %4994 ], [ %4532, %4507 ]
  %4664 = icmp eq i32 %4589, %4506
  br i1 %4664, label %5007, label %4507

; <label>:4665                                    ; preds = %4507
  %4666 = extractvalue %dx.types.ResRet.f32 %4559, 3
  %4667 = extractvalue %dx.types.ResRet.f32 %4559, 1
  %4668 = extractvalue %dx.types.ResRet.f32 %4559, 0
  %4669 = extractvalue %dx.types.ResRet.f32 %4549, 1
  %4670 = extractvalue %dx.types.ResRet.f32 %4549, 0
  %4671 = extractvalue %dx.types.ResRet.i32 %4545, 3
  %4672 = extractvalue %dx.types.ResRet.i32 %4545, 2
  %4673 = add i32 %4671, 0
  %4674 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4673, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4675 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4676 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4674, %dx.types.Handle %4675, float %4598, float %4605, float undef, float undef, i32 0, i32 0, i32 undef, float %4626, float %4628, float undef, float %4627, float %4629, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4677 = extractvalue %dx.types.ResRet.f32 %4676, 0
  %4678 = fmul fast float %4677, %4670
  %4679 = fadd fast float %4678, %4669
  %4680 = call float @dx.op.unary.f32(i32 7, float %4679)  ; Saturate(value)
  %4681 = fmul fast float %4598, %4554
  %4682 = call float @dx.op.tertiary.f32(i32 46, float %4555, float %4605, float %4681)  ; FMad(a,b,c)
  %4683 = fadd fast float %4682, %4668
  %4684 = fmul fast float %4598, %4556
  %4685 = call float @dx.op.tertiary.f32(i32 46, float %4557, float %4605, float %4684)  ; FMad(a,b,c)
  %4686 = fadd fast float %4685, %4667
  %4687 = fmul fast float %4626, %4554
  %4688 = call float @dx.op.tertiary.f32(i32 46, float %4555, float %4628, float %4687)  ; FMad(a,b,c)
  %4689 = fmul fast float %4626, %4556
  %4690 = call float @dx.op.tertiary.f32(i32 46, float %4557, float %4628, float %4689)  ; FMad(a,b,c)
  %4691 = fmul fast float %4627, %4554
  %4692 = call float @dx.op.tertiary.f32(i32 46, float %4555, float %4629, float %4691)  ; FMad(a,b,c)
  %4693 = fmul fast float %4627, %4556
  %4694 = call float @dx.op.tertiary.f32(i32 46, float %4557, float %4629, float %4693)  ; FMad(a,b,c)
  %4695 = add i32 %4672, 0
  %4696 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4695, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4697 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4696, %dx.types.Handle %4675, float %4683, float %4686, float undef, float undef, i32 0, i32 0, i32 undef, float %4688, float %4690, float undef, float %4692, float %4694, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4698 = extractvalue %dx.types.ResRet.f32 %4697, 0
  %4699 = and i32 %4590, 1024
  %4700 = icmp ne i32 %4699, 0
  %4701 = fcmp fast ogt float %4698, 0x3FE0101020000000
  %4702 = uitofp i1 %4701 to float
  %4703 = select i1 %4700, float %4702, float %4698
  %4704 = and i32 %4590, 8192
  %4705 = icmp ne i32 %4704, 0
  %4706 = select i1 %4705, float %4666, float 1.000000e+00
  %4707 = fmul fast float %4598, 2.000000e+00
  %4708 = fadd fast float %4707, -1.000000e+00
  %4709 = call float @dx.op.unary.f32(i32 6, float %4708)  ; FAbs(value)
  %4710 = fmul fast float %4709, %4587
  %4711 = fsub fast float %4710, %4587
  %4712 = call float @dx.op.unary.f32(i32 7, float %4711)  ; Saturate(value)
  %4713 = fmul fast float %4605, 2.000000e+00
  %4714 = fadd fast float %4713, -1.000000e+00
  %4715 = call float @dx.op.unary.f32(i32 6, float %4714)  ; FAbs(value)
  %4716 = fmul fast float %4715, %4588
  %4717 = fsub fast float %4716, %4588
  %4718 = call float @dx.op.unary.f32(i32 7, float %4717)  ; Saturate(value)
  %4719 = fmul fast float %4617, %4550
  %4720 = fsub fast float %4719, %4550
  %4721 = call float @dx.op.unary.f32(i32 7, float %4720)  ; Saturate(value)
  %4722 = fmul fast float %4680, %4706
  %4723 = fmul fast float %4722, %4677
  %4724 = fmul fast float %4723, %4712
  %4725 = fmul fast float %4724, %4703
  %4726 = fmul fast float %4725, %4718
  %4727 = fmul fast float %4726, %4721
  %4728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4729 = extractvalue %dx.types.CBufRet.f32 %4728, 1
  %4730 = extractvalue %dx.types.CBufRet.f32 %4728, 0
  %4731 = fsub fast float %4634, %4730
  %4732 = fmul fast float %4731, %4729
  %4733 = call float @dx.op.unary.f32(i32 7, float %4732)  ; Saturate(value)
  %4734 = fmul fast float %4727, %4551
  %4735 = fadd fast float %4727, %4551
  %4736 = fmul fast float %4735, %4560
  %4737 = fsub fast float %4736, %4560
  %4738 = call float @dx.op.unary.f32(i32 7, float %4737)  ; Saturate(value)
  %4739 = and i32 %4590, 128
  %4740 = icmp ne i32 %4739, 0
  %4741 = select i1 %4740, float %4738, float %4734
  %4742 = fmul fast float %4741, %4733
  %4743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4744 = extractvalue %dx.types.CBufRet.f32 %4743, 0
  %4745 = fcmp fast ugt float %4742, %4744
  br i1 %4745, label %4746, label %4639

; <label>:4746                                    ; preds = %4665
  %4747 = select i1 %4705, float %4742, float 0.000000e+00
  %4748 = fadd fast float %4747, %4509
  %4749 = call float @dx.op.unary.f32(i32 7, float %4748)  ; Saturate(value)
  br i1 %4705, label %4639, label %4750

; <label>:4750                                    ; preds = %4746
  %4751 = and i32 %4590, 4
  %4752 = and i32 %4590, 8
  %4753 = add i32 %4546, 0
  %4754 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4753, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4755 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4756 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4754, %dx.types.Handle %4755, float %4683, float %4686, float undef, float undef, i32 0, i32 0, i32 undef, float %4688, float %4690, float undef, float %4692, float %4694, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4757 = extractvalue %dx.types.ResRet.f32 %4756, 0
  %4758 = extractvalue %dx.types.ResRet.f32 %4756, 1
  %4759 = extractvalue %dx.types.ResRet.f32 %4756, 2
  %4760 = extractvalue %dx.types.ResRet.f32 %4756, 3
  %4761 = bitcast float %4572 to i32
  %4762 = and i32 %4761, 255
  %4763 = uitofp i32 %4762 to float
  %4764 = lshr i32 %4761, 8
  %4765 = and i32 %4764, 255
  %4766 = uitofp i32 %4765 to float
  %4767 = fmul fast float %4760, %4763
  %4768 = fadd fast float %4767, %4766
  %4769 = fmul fast float %4768, 0x3F70101000000000
  %4770 = add i32 %4547, 0
  %4771 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4770, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4772 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4771, %dx.types.Handle %4755, float %4683, float %4686, float undef, float undef, i32 0, i32 0, i32 undef, float %4688, float %4690, float undef, float %4692, float %4694, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4773 = extractvalue %dx.types.ResRet.f32 %4772, 0
  %4774 = extractvalue %dx.types.ResRet.f32 %4772, 1
  %4775 = extractvalue %dx.types.ResRet.f32 %4772, 2
  %4776 = extractvalue %dx.types.ResRet.f32 %4772, 3
  %4777 = bitcast float %4566 to i32
  %4778 = and i32 %4777, 255
  %4779 = uitofp i32 %4778 to float
  %4780 = lshr i32 %4777, 8
  %4781 = and i32 %4780, 255
  %4782 = uitofp i32 %4781 to float
  %4783 = lshr i32 %4777, 16
  %4784 = and i32 %4783, 255
  %4785 = uitofp i32 %4784 to float
  %4786 = fmul fast float %4785, 0x3F70101000000000
  %4787 = fmul fast float %4773, %4779
  %4788 = fadd fast float %4787, %4782
  %4789 = fmul fast float %4788, 0x3F70101000000000
  %4790 = fadd fast float %4774, -5.000000e-01
  %4791 = fadd fast float %4776, -5.000000e-01
  %4792 = fmul fast float %4790, %4786
  %4793 = fmul fast float %4791, %4786
  %4794 = fadd fast float %4792, 5.000000e-01
  %4795 = fadd fast float %4793, 5.000000e-01
  %4796 = fmul fast float %4757, %4575
  %4797 = fmul fast float %4758, %4576
  %4798 = fmul fast float %4759, %4577
  %4799 = fmul fast float %4794, 2.000000e+00
  %4800 = fadd fast float %4799, -1.000000e+00
  %4801 = fmul fast float %4795, 2.000000e+00
  %4802 = fadd fast float %4801, -1.000000e+00
  %4803 = fadd fast float %4800, %4802
  %4804 = fmul fast float %4803, 5.000000e-01
  %4805 = fsub fast float %4800, %4802
  %4806 = fmul fast float %4805, 5.000000e-01
  %4807 = call float @dx.op.unary.f32(i32 6, float %4804)  ; FAbs(value)
  %4808 = fsub fast float 1.000000e+00, %4807
  %4809 = call float @dx.op.unary.f32(i32 6, float %4806)  ; FAbs(value)
  %4810 = fsub fast float %4808, %4809
  %4811 = call float @dx.op.dot3.f32(i32 55, float %4804, float %4806, float %4810, float %4804, float %4806, float %4810)  ; Dot3(ax,ay,az,bx,by,bz)
  %4812 = call float @dx.op.unary.f32(i32 25, float %4811)  ; Rsqrt(value)
  %4813 = fmul fast float %4804, %4812
  %4814 = fmul fast float %4806, %4812
  %4815 = fmul fast float %4812, %4810
  %4816 = fmul fast float %4815, %4540
  %4817 = fmul fast float %4815, %4541
  %4818 = fmul fast float %4815, %4542
  %4819 = fmul fast float %4813, %4563
  %4820 = fmul fast float %4813, %4564
  %4821 = fmul fast float %4813, %4565
  %4822 = fadd fast float %4819, %4816
  %4823 = fadd fast float %4820, %4817
  %4824 = fadd fast float %4821, %4818
  %4825 = fmul fast float %4814, %4569
  %4826 = fmul fast float %4814, %4570
  %4827 = fmul fast float %4814, %4571
  %4828 = fadd fast float %4822, %4825
  %4829 = fadd fast float %4823, %4826
  %4830 = fadd fast float %4824, %4827
  %4831 = call float @dx.op.dot3.f32(i32 55, float %4828, float %4829, float %4830, float %4828, float %4829, float %4830)  ; Dot3(ax,ay,az,bx,by,bz)
  %4832 = call float @dx.op.unary.f32(i32 25, float %4831)  ; Rsqrt(value)
  %4833 = fmul fast float %4828, %4832
  %4834 = fmul fast float %4829, %4832
  %4835 = fmul fast float %4830, %4832
  %4836 = icmp ne i32 %4752, 0
  %4837 = select i1 %4836, float 1.000000e+00, float 0.000000e+00
  %4838 = fmul fast float %4742, %4837
  %4839 = and i32 %4590, 1
  %4840 = icmp eq i32 %4839, 0
  br i1 %4840, label %4841, label %4845

; <label>:4841                                    ; preds = %4750
  %4842 = fsub fast float %4833, %4523
  %4843 = fsub fast float %4834, %4524
  %4844 = fsub fast float %4835, %4525
  br label %4845

; <label>:4845                                    ; preds = %4841, %4750
  %4846 = phi float [ %4842, %4841 ], [ %4833, %4750 ]
  %4847 = phi float [ %4843, %4841 ], [ %4834, %4750 ]
  %4848 = phi float [ %4844, %4841 ], [ %4835, %4750 ]
  %4849 = fmul float %4848, %4838
  %4850 = fmul float %4847, %4838
  %4851 = fmul float %4846, %4838
  %4852 = fadd fast float %4851, %4523
  %4853 = fadd fast float %4850, %4524
  %4854 = fadd fast float %4849, %4525
  %4855 = icmp ne i32 %4751, 0
  %4856 = select i1 %4855, float 1.000000e+00, float 0.000000e+00
  %4857 = fmul fast float %4742, %4856
  %4858 = fsub fast float %4796, %4530
  %4859 = fsub fast float %4797, %4531
  %4860 = fsub fast float %4798, %4532
  %4861 = fmul fast float %4858, %4857
  %4862 = fmul fast float %4859, %4857
  %4863 = fmul fast float %4860, %4857
  %4864 = fadd fast float %4861, %4530
  %4865 = fadd fast float %4862, %4531
  %4866 = fadd fast float %4863, %4532
  %4867 = fsub fast float %4769, %4529
  %4868 = fmul fast float %4867, %4857
  %4869 = fadd fast float %4868, %4529
  %4870 = fmul fast float %4857, %4516
  %4871 = fsub fast float %4516, %4870
  %4872 = fmul fast float %4857, %4515
  %4873 = fsub fast float %4515, %4872
  %4874 = bitcast float %4584 to i32
  %4875 = lshr i32 %4874, 16
  %4876 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4875)  ; LegacyF16ToF32(value)
  %4877 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %398, i32 undef)  ; BufferLoad(srv,index,wot)
  %4878 = extractvalue %dx.types.ResRet.i32 %4877, 0
  %4879 = and i32 %4878, 1
  %4880 = icmp eq i32 %4879, 0
  br i1 %4880, label %4881, label %4906

; <label>:4881                                    ; preds = %4845
  %4882 = fadd fast float %4769, 0xBFB99999A0000000
  %4883 = call float @dx.op.unary.f32(i32 7, float %4882)  ; Saturate(value)
  %4884 = fmul fast float %4883, 0x3FF1C71C80000000
  %4885 = fsub fast float 1.000000e+00, %4884
  %4886 = call float @dx.op.unary.f32(i32 7, float %4885)  ; Saturate(value)
  %4887 = fmul fast float %4886, %4796
  %4888 = fmul fast float %4886, %4797
  %4889 = fmul fast float %4886, %4798
  %4890 = call float @dx.op.unary.f32(i32 7, float %4887)  ; Saturate(value)
  %4891 = call float @dx.op.unary.f32(i32 7, float %4888)  ; Saturate(value)
  %4892 = call float @dx.op.unary.f32(i32 7, float %4889)  ; Saturate(value)
  %4893 = call float @dx.op.binary.f32(i32 35, float %4891, float %4892)  ; FMax(a,b)
  %4894 = call float @dx.op.binary.f32(i32 35, float %4890, float %4893)  ; FMax(a,b)
  %4895 = fcmp fast ogt float %4894, 0.000000e+00
  %4896 = bitcast float %4894 to i32
  %4897 = sub nsw i32 2129859010, %4896
  %4898 = bitcast i32 %4897 to float
  %4899 = select i1 %4895, float %4898, float 0.000000e+00
  %4900 = fmul fast float %4890, %4876
  %4901 = fmul fast float %4891, %4876
  %4902 = fmul fast float %4892, %4876
  %4903 = fmul fast float %4900, %4899
  %4904 = fmul fast float %4901, %4899
  %4905 = fmul fast float %4902, %4899
  br label %4906

; <label>:4906                                    ; preds = %4881, %4845
  %4907 = phi float [ %4876, %4845 ], [ %4903, %4881 ]
  %4908 = phi float [ %4876, %4845 ], [ %4904, %4881 ]
  %4909 = phi float [ %4876, %4845 ], [ %4905, %4881 ]
  %4910 = fsub fast float %4907, %4517
  %4911 = fsub fast float %4908, %4518
  %4912 = fsub fast float %4909, %4519
  %4913 = fmul fast float %4910, %4857
  %4914 = fmul fast float %4911, %4857
  %4915 = fmul fast float %4912, %4857
  %4916 = fadd fast float %4913, %4517
  %4917 = fadd fast float %4914, %4518
  %4918 = fadd fast float %4915, %4519
  %4919 = fadd fast float %4742, %4528
  %4920 = call float @dx.op.unary.f32(i32 7, float %4919)  ; Saturate(value)
  %4921 = fsub fast float %4789, %4527
  %4922 = fmul fast float %4921, %4838
  %4923 = fadd fast float %4922, %4527
  %4924 = fsub fast float %4775, %4526
  %4925 = fmul fast float %4924, %4838
  %4926 = fadd fast float %4925, %4526
  br i1 %4840, label %4935, label %4927

; <label>:4927                                    ; preds = %4906
  %4928 = and i32 %4590, 32768
  %4929 = icmp eq i32 %4928, 0
  br i1 %4929, label %4945, label %4930

; <label>:4930                                    ; preds = %4927
  %4931 = fmul fast float %4838, 1.270000e+02
  %4932 = fadd fast float %4931, %4512
  %4933 = fadd fast float %4931, %4513
  %4934 = fadd fast float %4931, %4514
  br label %4945

; <label>:4935                                    ; preds = %4906
  %4936 = fsub fast float 1.270000e+02, %4512
  %4937 = fsub fast float 1.270000e+02, %4513
  %4938 = fsub fast float 1.270000e+02, %4514
  %4939 = fmul fast float %4838, %4936
  %4940 = fmul fast float %4838, %4937
  %4941 = fmul fast float %4838, %4938
  %4942 = fadd fast float %4939, %4512
  %4943 = fadd fast float %4940, %4513
  %4944 = fadd fast float %4941, %4514
  br label %4945

; <label>:4945                                    ; preds = %4935, %4930, %4927
  %4946 = phi float [ %4932, %4930 ], [ %4512, %4927 ], [ %4942, %4935 ]
  %4947 = phi float [ %4933, %4930 ], [ %4513, %4927 ], [ %4943, %4935 ]
  %4948 = phi float [ %4934, %4930 ], [ %4514, %4927 ], [ %4944, %4935 ]
  %4949 = call float @dx.op.dot3.f32(i32 55, float %4796, float %4797, float %4798, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4950 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4951 = extractvalue %dx.types.CBufRet.f32 %4950, 0
  %4952 = extractvalue %dx.types.CBufRet.f32 %4950, 1
  %4953 = fmul fast float %4952, %4949
  %4954 = fadd fast float %4953, %4951
  %4955 = call float @dx.op.unary.f32(i32 7, float %4954)  ; Saturate(value)
  %4956 = bitcast float %4578 to i32
  %4957 = and i32 %4956, 65535
  %4958 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4957)  ; LegacyF16ToF32(value)
  %4959 = lshr i32 %4956, 16
  %4960 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4959)  ; LegacyF16ToF32(value)
  %4961 = fcmp fast oge float %4958, 0.000000e+00
  %4962 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4963 = extractvalue %dx.types.CBufRet.f32 %4962, 0
  %4964 = select i1 %4961, float %4958, float %4963
  %4965 = fadd fast float %4964, %4960
  %4966 = fsub fast float %4955, %4511
  %4967 = fmul fast float %4966, %4742
  %4968 = fadd fast float %4967, %4511
  %4969 = fmul fast float %4965, %4742
  %4970 = call float @dx.op.binary.f32(i32 35, float %4510, float %4969)  ; FMax(a,b)
  %4971 = and i32 %4590, 16
  %4972 = icmp eq i32 %4971, 0
  br i1 %4972, label %4994, label %4973

; <label>:4973                                    ; preds = %4945
  %4974 = add i32 %4581, 0
  %4975 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4974, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4976 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4975, %dx.types.Handle %4755, float %4683, float %4686, float undef, float undef, i32 0, i32 0, i32 undef, float %4688, float %4690, float undef, float %4692, float %4694, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4977 = extractvalue %dx.types.ResRet.f32 %4976, 0
  %4978 = extractvalue %dx.types.ResRet.f32 %4976, 1
  %4979 = extractvalue %dx.types.ResRet.f32 %4976, 2
  %4980 = and i32 %4874, 65535
  %4981 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4980)  ; LegacyF16ToF32(value)
  %4982 = fmul fast float %4977, %4575
  %4983 = fmul fast float %4978, %4576
  %4984 = fmul fast float %4979, %4577
  %4985 = and i32 %4590, 16384
  %4986 = icmp ne i32 %4985, 0
  %4987 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4988 = extractvalue %dx.types.CBufRet.f32 %4987, 0
  %4989 = select i1 %4986, float %4988, float 1.000000e+00
  %4990 = fmul fast float %4989, %4981
  %4991 = fmul fast float %4982, %4990
  %4992 = fmul fast float %4983, %4990
  %4993 = fmul fast float %4984, %4990
  br label %4994

; <label>:4994                                    ; preds = %4973, %4945
  %4995 = phi float [ %4991, %4973 ], [ 0.000000e+00, %4945 ]
  %4996 = phi float [ %4992, %4973 ], [ 0.000000e+00, %4945 ]
  %4997 = phi float [ %4993, %4973 ], [ 0.000000e+00, %4945 ]
  %4998 = fsub fast float %4995, %4520
  %4999 = fsub fast float %4996, %4521
  %5000 = fsub fast float %4997, %4522
  %5001 = fmul fast float %4998, %4742
  %5002 = fmul fast float %4999, %4742
  %5003 = fmul fast float %5000, %4742
  %5004 = fadd fast float %5001, %4520
  %5005 = fadd fast float %5002, %4521
  %5006 = fadd fast float %5003, %4522
  br label %4639

; <label>:5007                                    ; preds = %4639
  br label %5008

; <label>:5008                                    ; preds = %5007, %4453
  %5009 = phi float [ 0.000000e+00, %4453 ], [ %4640, %5007 ]
  %5010 = phi float [ %4422, %4453 ], [ %4641, %5007 ]
  %5011 = phi float [ %4420, %4453 ], [ %4642, %5007 ]
  %5012 = phi float [ %4410, %4453 ], [ %4643, %5007 ]
  %5013 = phi float [ %4411, %4453 ], [ %4644, %5007 ]
  %5014 = phi float [ %4412, %4453 ], [ %4645, %5007 ]
  %5015 = phi float [ 0.000000e+00, %4453 ], [ %4646, %5007 ]
  %5016 = phi float [ 0.000000e+00, %4453 ], [ %4647, %5007 ]
  %5017 = phi float [ %4413, %4453 ], [ %4648, %5007 ]
  %5018 = phi float [ %4414, %4453 ], [ %4649, %5007 ]
  %5019 = phi float [ %4415, %4453 ], [ %4650, %5007 ]
  %5020 = phi float [ %4407, %4453 ], [ %4651, %5007 ]
  %5021 = phi float [ %4408, %4453 ], [ %4652, %5007 ]
  %5022 = phi float [ %4409, %4453 ], [ %4653, %5007 ]
  %5023 = phi float [ %4448, %4453 ], [ %4654, %5007 ]
  %5024 = phi float [ %4449, %4453 ], [ %4655, %5007 ]
  %5025 = phi float [ %4450, %4453 ], [ %4656, %5007 ]
  %5026 = phi float [ %4418, %4453 ], [ %4657, %5007 ]
  %5027 = phi float [ %4417, %4453 ], [ %4658, %5007 ]
  %5028 = phi float [ 0.000000e+00, %4453 ], [ %4659, %5007 ]
  %5029 = phi float [ %4416, %4453 ], [ %4660, %5007 ]
  %5030 = phi float [ %4404, %4453 ], [ %4661, %5007 ]
  %5031 = phi float [ %4405, %4453 ], [ %4662, %5007 ]
  %5032 = phi float [ %4406, %4453 ], [ %4663, %5007 ]
  %5033 = call float @dx.op.dot3.f32(i32 55, float %5023, float %5024, float %5025, float %5023, float %5024, float %5025)  ; Dot3(ax,ay,az,bx,by,bz)
  %5034 = call float @dx.op.unary.f32(i32 25, float %5033)  ; Rsqrt(value)
  %5035 = fmul fast float %5034, %5023
  %5036 = fmul fast float %5034, %5024
  %5037 = fmul fast float %5034, %5025
  %5038 = fadd fast float %5028, %1245
  %5039 = call float @dx.op.unary.f32(i32 7, float %5038)  ; Saturate(value)
  %5040 = call float @dx.op.dot3.f32(i32 55, float %5035, float %5036, float %5037, float %5035, float %5036, float %5037)  ; Dot3(ax,ay,az,bx,by,bz)
  %5041 = call float @dx.op.unary.f32(i32 25, float %5040)  ; Rsqrt(value)
  %5042 = fmul fast float %5041, %5035
  %5043 = fmul fast float %5041, %5036
  %5044 = fmul fast float %5041, %5037
  br label %5045

; <label>:5045                                    ; preds = %5008, %4401
  %5046 = phi float [ %5042, %5008 ], [ %4448, %4401 ]
  %5047 = phi float [ %5043, %5008 ], [ %4449, %4401 ]
  %5048 = phi float [ %5044, %5008 ], [ %4450, %4401 ]
  %5049 = phi float [ %5020, %5008 ], [ %4407, %4401 ]
  %5050 = phi float [ %5021, %5008 ], [ %4408, %4401 ]
  %5051 = phi float [ %5022, %5008 ], [ %4409, %4401 ]
  %5052 = phi float [ %5012, %5008 ], [ %4410, %4401 ]
  %5053 = phi float [ %5013, %5008 ], [ %4411, %4401 ]
  %5054 = phi float [ %5014, %5008 ], [ %4412, %4401 ]
  %5055 = phi float [ %5017, %5008 ], [ %4413, %4401 ]
  %5056 = phi float [ %5018, %5008 ], [ %4414, %4401 ]
  %5057 = phi float [ %5019, %5008 ], [ %4415, %4401 ]
  %5058 = phi float [ %5030, %5008 ], [ %4404, %4401 ]
  %5059 = phi float [ %5031, %5008 ], [ %4405, %4401 ]
  %5060 = phi float [ %5032, %5008 ], [ %4406, %4401 ]
  %5061 = phi float [ %5029, %5008 ], [ %4416, %4401 ]
  %5062 = phi float [ %5039, %5008 ], [ %1245, %4401 ]
  %5063 = phi float [ %5027, %5008 ], [ %4417, %4401 ]
  %5064 = phi float [ %5026, %5008 ], [ %4418, %4401 ]
  %5065 = phi float [ %5016, %5008 ], [ 0.000000e+00, %4401 ]
  %5066 = phi float [ %5015, %5008 ], [ 0.000000e+00, %4401 ]
  %5067 = phi float [ %5009, %5008 ], [ 0.000000e+00, %4401 ]
  %5068 = phi float [ %5010, %5008 ], [ %4422, %4401 ]
  %5069 = phi float [ %5011, %5008 ], [ %4420, %4401 ]
  %5070 = fadd fast float %5061, 0xBFB99999A0000000
  %5071 = call float @dx.op.unary.f32(i32 7, float %5070)  ; Saturate(value)
  %5072 = fmul fast float %5071, 0x3FF1C71C80000000
  %5073 = call float @dx.op.binary.f32(i32 36, float %5061, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5074 = fsub fast float 1.000000e+00, %5072
  %5075 = call float @dx.op.unary.f32(i32 7, float %5074)  ; Saturate(value)
  %5076 = fmul fast float %5075, %5058
  %5077 = fmul fast float %5075, %5059
  %5078 = fmul fast float %5075, %5060
  %5079 = call float @dx.op.unary.f32(i32 7, float %5076)  ; Saturate(value)
  %5080 = call float @dx.op.unary.f32(i32 7, float %5077)  ; Saturate(value)
  %5081 = call float @dx.op.unary.f32(i32 7, float %5078)  ; Saturate(value)
  %5082 = fmul fast float %5072, %5058
  %5083 = fmul fast float %5072, %5059
  %5084 = fmul fast float %5072, %5060
  %5085 = fadd fast float %5082, %5073
  %5086 = fadd fast float %5083, %5073
  %5087 = fadd fast float %5084, %5073
  %5088 = call float @dx.op.unary.f32(i32 7, float %5085)  ; Saturate(value)
  %5089 = call float @dx.op.unary.f32(i32 7, float %5086)  ; Saturate(value)
  %5090 = call float @dx.op.unary.f32(i32 7, float %5087)  ; Saturate(value)
  %5091 = call float @dx.op.unary.f32(i32 7, float %5063)  ; Saturate(value)
  %5092 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %398, i32 undef)  ; BufferLoad(srv,index,wot)
  %5093 = extractvalue %dx.types.ResRet.i32 %5092, 0
  %5094 = and i32 %5093, 1
  %5095 = icmp eq i32 %5094, 0
  br i1 %5095, label %5110, label %5096

; <label>:5096                                    ; preds = %5045
  %5097 = call float @dx.op.binary.f32(i32 35, float %5080, float %5081)  ; FMax(a,b)
  %5098 = call float @dx.op.binary.f32(i32 35, float %5079, float %5097)  ; FMax(a,b)
  %5099 = fcmp fast ogt float %5098, 0.000000e+00
  %5100 = bitcast float %5098 to i32
  %5101 = sub nsw i32 2129859010, %5100
  %5102 = bitcast i32 %5101 to float
  %5103 = select i1 %5099, float %5102, float 0.000000e+00
  %5104 = fmul fast float %5079, %5055
  %5105 = fmul fast float %5080, %5056
  %5106 = fmul fast float %5081, %5057
  %5107 = fmul fast float %5104, %5103
  %5108 = fmul fast float %5105, %5103
  %5109 = fmul fast float %5106, %5103
  br label %5110

; <label>:5110                                    ; preds = %5096, %5045
  %5111 = phi float [ %5107, %5096 ], [ %5055, %5045 ]
  %5112 = phi float [ %5108, %5096 ], [ %5056, %5045 ]
  %5113 = phi float [ %5109, %5096 ], [ %5057, %5045 ]
  %5114 = call float @dx.op.binary.f32(i32 36, float %5052, float 1.270000e+02)  ; FMin(a,b)
  %5115 = call float @dx.op.binary.f32(i32 36, float %5053, float 1.270000e+02)  ; FMin(a,b)
  %5116 = call float @dx.op.binary.f32(i32 36, float %5054, float 1.270000e+02)  ; FMin(a,b)
  %5117 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5118 = extractvalue %dx.types.CBufRet.i32 %5117, 3
  %5119 = and i32 %5118, 8
  %5120 = icmp ne i32 %5119, 0
  %5121 = call float @dx.op.binary.f32(i32 35, float %5079, float %5058)  ; FMax(a,b)
  %5122 = call float @dx.op.binary.f32(i32 35, float %5080, float %5058)  ; FMax(a,b)
  %5123 = call float @dx.op.binary.f32(i32 35, float %5081, float %5058)  ; FMax(a,b)
  %5124 = call float @dx.op.dot3.f32(i32 55, float %5079, float %5080, float %5081, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5125 = select i1 %215, float %5058, float %5079
  %5126 = select i1 %215, float %5124, float %5080
  %5127 = select i1 %215, float 1.000000e+00, float %5081
  %5128 = select i1 %5120, float %5121, float %5125
  %5129 = select i1 %5120, float %5122, float %5126
  %5130 = select i1 %5120, float %5123, float %5127
  %5131 = call float @dx.op.dot3.f32(i32 55, float %5111, float %5112, float %5113, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5132 = select i1 %215, float %5131, float %5111
  %5133 = select i1 %215, float %5131, float %5112
  %5134 = select i1 %215, float %5131, float %5113
  %5135 = and i32 %191, 3
  %5136 = select i1 %185, i32 %5135, i32 0
  %5137 = icmp eq i32 %5136, 1
  br i1 %5137, label %5138, label %5214

; <label>:5138                                    ; preds = %5110
  %5139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5140 = extractvalue %dx.types.CBufRet.f32 %5139, 0
  %5141 = extractvalue %dx.types.CBufRet.f32 %5139, 1
  %5142 = fadd fast float %5140, %154
  %5143 = fadd fast float %5141, %155
  %5144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %5145 = extractvalue %dx.types.CBufRet.f32 %5144, 0
  %5146 = extractvalue %dx.types.CBufRet.f32 %5144, 1
  %5147 = fsub fast float %5142, %5145
  %5148 = fsub fast float %5143, %5146
  %5149 = fmul fast float %5147, %5147
  %5150 = fmul fast float %5148, %5148
  %5151 = fadd fast float %5149, %5150
  %5152 = call float @dx.op.unary.f32(i32 24, float %5151)  ; Sqrt(value)
  %5153 = extractvalue %dx.types.CBufRet.f32 %5144, 2
  %5154 = fcmp fast olt float %5152, %5153
  br i1 %5154, label %5155, label %5208

; <label>:5155                                    ; preds = %5138
  %5156 = extractvalue %dx.types.CBufRet.f32 %5139, 2
  %5157 = fadd fast float %5156, %156
  %5158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5159 = extractvalue %dx.types.CBufRet.f32 %5158, 0
  %5160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5161 = extractvalue %dx.types.CBufRet.f32 %5160, 0
  %5162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5163 = extractvalue %dx.types.CBufRet.f32 %5162, 0
  %5164 = extractvalue %dx.types.CBufRet.f32 %5158, 1
  %5165 = extractvalue %dx.types.CBufRet.f32 %5160, 1
  %5166 = extractvalue %dx.types.CBufRet.f32 %5162, 1
  %5167 = extractvalue %dx.types.CBufRet.f32 %5158, 3
  %5168 = extractvalue %dx.types.CBufRet.f32 %5160, 3
  %5169 = extractvalue %dx.types.CBufRet.f32 %5162, 3
  %5170 = fadd fast float %5167, %5142
  %5171 = fadd fast float %5168, %5143
  %5172 = fadd fast float %5157, %5169
  %5173 = fmul fast float %5170, %5159
  %5174 = call float @dx.op.tertiary.f32(i32 46, float %5171, float %5161, float %5173)  ; FMad(a,b,c)
  %5175 = call float @dx.op.tertiary.f32(i32 46, float %5172, float %5163, float %5174)  ; FMad(a,b,c)
  %5176 = fmul fast float %5170, %5164
  %5177 = call float @dx.op.tertiary.f32(i32 46, float %5171, float %5165, float %5176)  ; FMad(a,b,c)
  %5178 = call float @dx.op.tertiary.f32(i32 46, float %5172, float %5166, float %5177)  ; FMad(a,b,c)
  %5179 = fsub fast float %5175, %5167
  %5180 = fsub fast float %5178, %5168
  %5181 = fsub fast float %5179, %5145
  %5182 = fadd fast float %5181, %5153
  %5183 = fsub fast float %5180, %5146
  %5184 = fadd fast float %5183, %5153
  %5185 = extractvalue %dx.types.CBufRet.f32 %5144, 3
  %5186 = fmul fast float %5182, %5185
  %5187 = fmul fast float %5184, %5185
  %5188 = call float @dx.op.unary.f32(i32 7, float %5186)  ; Saturate(value)
  %5189 = call float @dx.op.unary.f32(i32 7, float %5187)  ; Saturate(value)
  %5190 = fsub fast float 1.000000e+00, %5188
  %5191 = fsub fast float 1.000000e+00, %5189
  %5192 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %44, float %5190, float %5191, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5193 = extractvalue %dx.types.ResRet.f32 %5192, 0
  %5194 = fcmp fast ugt float %5193, 0.000000e+00
  br i1 %5194, label %5195, label %5208

; <label>:5195                                    ; preds = %5155
  %5196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5197 = extractvalue %dx.types.CBufRet.f32 %5196, 2
  %5198 = fmul fast float %5197, %5193
  %5199 = extractvalue %dx.types.CBufRet.f32 %5196, 3
  %5200 = fadd fast float %5199, %5198
  %5201 = extractvalue %dx.types.CBufRet.f32 %5162, 2
  %5202 = fadd fast float %5200, %5169
  %5203 = fmul fast float %5175, %5163
  %5204 = call float @dx.op.tertiary.f32(i32 46, float %5178, float %5166, float %5203)  ; FMad(a,b,c)
  %5205 = call float @dx.op.tertiary.f32(i32 46, float %5202, float %5201, float %5204)  ; FMad(a,b,c)
  %5206 = fsub fast float %5205, %5169
  %5207 = fsub fast float %5206, %5156
  br label %5208

; <label>:5208                                    ; preds = %5195, %5155, %5138
  %5209 = phi i1 [ true, %5195 ], [ false, %5155 ], [ false, %5138 ]
  %5210 = phi float [ %5207, %5195 ], [ -1.310720e+05, %5155 ], [ -1.310720e+05, %5138 ]
  %5211 = fsub fast float %5210, %156
  %5212 = call float @dx.op.unary.f32(i32 7, float %5211)  ; Saturate(value)
  %5213 = select i1 %5209, float %5212, float 1.000000e+00
  br label %5214

; <label>:5214                                    ; preds = %5208, %5110
  %5215 = phi float [ %5213, %5208 ], [ 0.000000e+00, %5110 ]
  %5216 = icmp eq i32 %5136, 3
  %5217 = select i1 %5216, float 1.000000e+00, float %5215
  %5218 = call float @dx.op.binary.f32(i32 35, float %5067, float %5217)  ; FMax(a,b)
  %5219 = call float @dx.op.unary.f32(i32 7, float %5218)  ; Saturate(value)
  %5220 = fcmp fast une float %5219, 0.000000e+00
  %5221 = call float @dx.op.dot3.f32(i32 55, float %154, float %155, float %156, float %154, float %155, float %156)  ; Dot3(ax,ay,az,bx,by,bz)
  %5222 = call float @dx.op.unary.f32(i32 25, float %5221)  ; Rsqrt(value)
  br i1 %5220, label %5230, label %5223

; <label>:5223                                    ; preds = %5214
  %5224 = fmul fast float %5222, %154
  %5225 = fmul fast float %5222, %155
  %5226 = fmul fast float %5222, %156
  %5227 = fsub fast float -0.000000e+00, %5224
  %5228 = fsub fast float -0.000000e+00, %5225
  %5229 = fsub fast float -0.000000e+00, %5226
  br label %5398

; <label>:5230                                    ; preds = %5214
  %5231 = fmul fast float %154, %5222
  %5232 = fsub fast float -0.000000e+00, %5231
  %5233 = fmul fast float %155, %5222
  %5234 = fsub fast float -0.000000e+00, %5233
  %5235 = fmul fast float %156, %5222
  %5236 = fsub fast float -0.000000e+00, %5235
  %5237 = call float @dx.op.dot3.f32(i32 55, float %5232, float %5234, float %5236, float %106, float %107, float %108)  ; Dot3(ax,ay,az,bx,by,bz)
  %5238 = fmul fast float %5219, 2.500000e+00
  %5239 = call float @dx.op.unary.f32(i32 7, float %5238)  ; Saturate(value)
  %5240 = fmul fast float %5219, 0x4013FFFFE0000000
  %5241 = fadd fast float %5240, 0xBFFFFFFFE0000000
  %5242 = call float @dx.op.unary.f32(i32 7, float %5241)  ; Saturate(value)
  %5243 = fmul fast float %5219, 0x4004000020000000
  %5244 = fadd fast float %5243, 0xBFF8000040000000
  %5245 = call float @dx.op.unary.f32(i32 7, float %5244)  ; Saturate(value)
  %5246 = call float @dx.op.unary.f32(i32 7, float %5239)  ; Saturate(value)
  %5247 = fmul fast float %5070, 1.000000e+01
  %5248 = call float @dx.op.unary.f32(i32 7, float %5247)  ; Saturate(value)
  %5249 = fmul fast float %5248, 2.000000e+00
  %5250 = fsub fast float 3.000000e+00, %5249
  %5251 = fmul fast float %5248, %5248
  %5252 = fmul fast float %5251, %5250
  %5253 = fsub fast float 1.000000e+00, %5252
  %5254 = fsub fast float 0x3FE3333340000000, %5091
  %5255 = fmul fast float %5254, 0x400AAAAAA0000000
  %5256 = call float @dx.op.unary.f32(i32 7, float %5255)  ; Saturate(value)
  %5257 = fmul fast float %5253, %5256
  %5258 = fmul fast float %5128, 0x3FEA2B8620000000
  %5259 = fmul fast float %5129, 0x3FEA2B8620000000
  %5260 = fmul fast float %5130, 0x3FEA2B8620000000
  %5261 = fadd fast float %5258, 0x3FC81DFBA0000000
  %5262 = fmul fast float %5261, %5128
  %5263 = fadd fast float %5262, 0x3F910E6020000000
  %5264 = fadd fast float %5259, 0x3FC81DFBA0000000
  %5265 = fmul fast float %5264, %5129
  %5266 = fadd fast float %5265, 0x3F910E6020000000
  %5267 = fadd fast float %5260, 0x3FC81DFBA0000000
  %5268 = fmul fast float %5267, %5130
  %5269 = fadd fast float %5268, 0x3F910E6020000000
  %5270 = call float @dx.op.unary.f32(i32 7, float %5263)  ; Saturate(value)
  %5271 = call float @dx.op.unary.f32(i32 7, float %5266)  ; Saturate(value)
  %5272 = call float @dx.op.unary.f32(i32 7, float %5269)  ; Saturate(value)
  %5273 = fsub fast float %5270, %5128
  %5274 = fsub fast float %5271, %5129
  %5275 = fsub fast float %5272, %5130
  %5276 = fmul fast float %5273, %5246
  %5277 = fmul fast float %5276, %5257
  %5278 = fmul fast float %5274, %5246
  %5279 = fmul fast float %5278, %5257
  %5280 = fmul fast float %5275, %5246
  %5281 = fmul fast float %5280, %5257
  %5282 = fadd fast float %5277, %5128
  %5283 = fadd fast float %5279, %5129
  %5284 = fadd fast float %5281, %5130
  %5285 = fmul fast float %5064, %5064
  %5286 = fmul fast float %5285, %5285
  %5287 = fadd fast float %5242, 1.000000e+00
  %5288 = fsub fast float %5287, %5257
  %5289 = call float @dx.op.unary.f32(i32 7, float %5288)  ; Saturate(value)
  %5290 = call float @dx.op.dot3.f32(i32 55, float %106, float %107, float %108, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5291 = call float @dx.op.unary.f32(i32 7, float %5290)  ; Saturate(value)
  %5292 = fsub fast float 1.000000e+00, %5286
  %5293 = call float @dx.op.binary.f32(i32 36, float %5289, float %5292)  ; FMin(a,b)
  %5294 = call float @dx.op.unary.f32(i32 7, float %5245)  ; Saturate(value)
  %5295 = call float @dx.op.binary.f32(i32 35, float %5293, float %5294)  ; FMax(a,b)
  %5296 = fadd fast float %5291, 0xBFE4CCCCC0000000
  %5297 = fmul fast float %5296, 0x4006DB6DA0000000
  %5298 = call float @dx.op.unary.f32(i32 7, float %5297)  ; Saturate(value)
  %5299 = fmul fast float %5298, 2.000000e+00
  %5300 = fsub fast float 3.000000e+00, %5299
  %5301 = bitcast float %5088 to i32
  %5302 = ashr i32 %5301, 1
  %5303 = add nsw i32 %5302, 532487669
  %5304 = bitcast i32 %5303 to float
  %5305 = fsub fast float 1.000000e+00, %5304
  %5306 = bitcast float %5305 to i32
  %5307 = sub nsw i32 2129859010, %5306
  %5308 = bitcast i32 %5307 to float
  %5309 = fmul fast float %5308, 2.000000e+00
  %5310 = bitcast float %5089 to i32
  %5311 = ashr i32 %5310, 1
  %5312 = add nsw i32 %5311, 532487669
  %5313 = bitcast i32 %5312 to float
  %5314 = fsub fast float 1.000000e+00, %5313
  %5315 = bitcast float %5314 to i32
  %5316 = sub nsw i32 2129859010, %5315
  %5317 = bitcast i32 %5316 to float
  %5318 = fmul fast float %5317, 2.000000e+00
  %5319 = bitcast float %5090 to i32
  %5320 = ashr i32 %5319, 1
  %5321 = add nsw i32 %5320, 532487669
  %5322 = bitcast i32 %5321 to float
  %5323 = fsub fast float 1.000000e+00, %5322
  %5324 = bitcast float %5323 to i32
  %5325 = sub nsw i32 2129859010, %5324
  %5326 = bitcast i32 %5325 to float
  %5327 = fmul fast float %5326, 2.000000e+00
  %5328 = fsub fast float 0x4002A9FBE0000000, %5309
  %5329 = fadd fast float %5309, 0x3FD54FDF00000000
  %5330 = bitcast float %5329 to i32
  %5331 = sub nsw i32 2129859010, %5330
  %5332 = bitcast i32 %5331 to float
  %5333 = fmul fast float %5332, %5328
  %5334 = fmul fast float %5333, %5333
  %5335 = fsub fast float 0x4002A9FBE0000000, %5318
  %5336 = fadd fast float %5318, 0x3FD54FDF00000000
  %5337 = bitcast float %5336 to i32
  %5338 = sub nsw i32 2129859010, %5337
  %5339 = bitcast i32 %5338 to float
  %5340 = fmul fast float %5339, %5335
  %5341 = fmul fast float %5340, %5340
  %5342 = fsub fast float 0x4002A9FBE0000000, %5327
  %5343 = fadd fast float %5327, 0x3FD54FDF00000000
  %5344 = bitcast float %5343 to i32
  %5345 = sub nsw i32 2129859010, %5344
  %5346 = bitcast i32 %5345 to float
  %5347 = fmul fast float %5346, %5342
  %5348 = fmul fast float %5347, %5347
  %5349 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5334)  ; FMax(a,b)
  %5350 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5341)  ; FMax(a,b)
  %5351 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5348)  ; FMax(a,b)
  %5352 = fsub fast float 1.000000e+00, %5237
  %5353 = fadd fast float %5352, %5253
  %5354 = call float @dx.op.unary.f32(i32 7, float %5353)  ; Saturate(value)
  %5355 = fsub fast float 1.000000e+00, %5217
  %5356 = fmul fast float %5295, %5355
  %5357 = fmul fast float %5298, %5298
  %5358 = fmul fast float %5357, %5356
  %5359 = fmul fast float %5358, %5300
  %5360 = fmul fast float %5355, 0xBFE99999A0000000
  %5361 = fmul fast float %5360, %5246
  %5362 = fmul fast float %5361, %5257
  %5363 = fadd fast float %5362, 1.000000e+00
  %5364 = fadd fast float %5091, -1.000000e+00
  %5365 = fmul fast float %5363, %5364
  %5366 = fadd fast float %5365, 1.000000e+00
  %5367 = fsub fast float %5349, %5088
  %5368 = fsub fast float %5350, %5089
  %5369 = fsub fast float %5351, %5090
  %5370 = fmul fast float %5359, %5367
  %5371 = fmul fast float %5359, %5368
  %5372 = fmul fast float %5359, %5369
  %5373 = fadd fast float %5370, %5088
  %5374 = fadd fast float %5371, %5089
  %5375 = fadd fast float %5372, %5090
  %5376 = fsub fast float %106, %5046
  %5377 = fsub fast float %107, %5047
  %5378 = fsub fast float %108, %5048
  %5379 = fmul fast float %5359, %5376
  %5380 = fmul fast float %5359, %5377
  %5381 = fmul fast float %5359, %5378
  %5382 = fadd fast float %5379, %5046
  %5383 = fadd fast float %5380, %5047
  %5384 = fadd fast float %5381, %5048
  %5385 = fmul fast float %5359, %5354
  %5386 = call float @dx.op.unary.f32(i32 7, float %5366)  ; Saturate(value)
  %5387 = fsub fast float 1.000000e+00, %5386
  %5388 = fmul fast float %5385, %5387
  %5389 = fadd fast float %5388, %5386
  %5390 = fsub fast float 1.000000e+00, %5064
  %5391 = fmul fast float %5359, %5390
  %5392 = fadd fast float %5391, %5064
  %5393 = call float @dx.op.dot3.f32(i32 55, float %5382, float %5383, float %5384, float %5382, float %5383, float %5384)  ; Dot3(ax,ay,az,bx,by,bz)
  %5394 = call float @dx.op.unary.f32(i32 25, float %5393)  ; Rsqrt(value)
  %5395 = fmul fast float %5382, %5394
  %5396 = fmul fast float %5383, %5394
  %5397 = fmul fast float %5384, %5394
  br label %5398

; <label>:5398                                    ; preds = %5230, %5223
  %5399 = phi float [ %5229, %5223 ], [ %5236, %5230 ]
  %5400 = phi float [ %5228, %5223 ], [ %5234, %5230 ]
  %5401 = phi float [ %5227, %5223 ], [ %5232, %5230 ]
  %5402 = phi float [ %5226, %5223 ], [ %5235, %5230 ]
  %5403 = phi float [ %5225, %5223 ], [ %5233, %5230 ]
  %5404 = phi float [ %5224, %5223 ], [ %5231, %5230 ]
  %5405 = phi float [ %5088, %5223 ], [ %5373, %5230 ]
  %5406 = phi float [ %5089, %5223 ], [ %5374, %5230 ]
  %5407 = phi float [ %5090, %5223 ], [ %5375, %5230 ]
  %5408 = phi float [ %5046, %5223 ], [ %5395, %5230 ]
  %5409 = phi float [ %5047, %5223 ], [ %5396, %5230 ]
  %5410 = phi float [ %5048, %5223 ], [ %5397, %5230 ]
  %5411 = phi float [ %5128, %5223 ], [ %5282, %5230 ]
  %5412 = phi float [ %5129, %5223 ], [ %5283, %5230 ]
  %5413 = phi float [ %5130, %5223 ], [ %5284, %5230 ]
  %5414 = phi float [ %5091, %5223 ], [ %5389, %5230 ]
  %5415 = phi float [ %5064, %5223 ], [ %5392, %5230 ]
  %5416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5417 = extractvalue %dx.types.CBufRet.f32 %5416, 2
  %5418 = extractvalue %dx.types.CBufRet.f32 %5416, 3
  %5419 = fmul fast float %124, %5417
  %5420 = fmul fast float %126, %5418
  %5421 = fsub fast float 1.000000e+00, %5419
  %5422 = fsub fast float 1.000000e+00, %5420
  %5423 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %5424 = extractvalue %dx.types.CBufRet.f32 %5423, 0
  %5425 = extractvalue %dx.types.CBufRet.f32 %5423, 1
  %5426 = extractvalue %dx.types.CBufRet.f32 %5423, 2
  %5427 = fmul fast float %5421, %5424
  %5428 = fmul fast float %5421, %5425
  %5429 = fmul fast float %5421, %5426
  %5430 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %5431 = extractvalue %dx.types.CBufRet.f32 %5430, 0
  %5432 = extractvalue %dx.types.CBufRet.f32 %5430, 1
  %5433 = extractvalue %dx.types.CBufRet.f32 %5430, 2
  %5434 = fmul fast float %5422, %5431
  %5435 = fmul fast float %5422, %5432
  %5436 = fmul fast float %5422, %5433
  %5437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %5438 = extractvalue %dx.types.CBufRet.f32 %5437, 0
  %5439 = extractvalue %dx.types.CBufRet.f32 %5437, 1
  %5440 = extractvalue %dx.types.CBufRet.f32 %5437, 2
  %5441 = fadd fast float %5434, %5438
  %5442 = fadd fast float %5441, %5427
  %5443 = fadd fast float %5435, %5439
  %5444 = fadd fast float %5443, %5428
  %5445 = fadd fast float %5436, %5440
  %5446 = fadd fast float %5445, %5429
  %5447 = fmul fast float %5442, %87
  %5448 = fmul fast float %5444, %87
  %5449 = fmul fast float %5446, %87
  %5450 = select i1 %215, float 0.000000e+00, float %5407
  %5451 = call float @dx.op.dot3.f32(i32 55, float %5408, float %5409, float %5410, float %5401, float %5400, float %5399)  ; Dot3(ax,ay,az,bx,by,bz)
  %5452 = call float @dx.op.unary.f32(i32 7, float %5451)  ; Saturate(value)
  %5453 = call float @dx.op.dot3.f32(i32 55, float %5404, float %5403, float %5402, float %5408, float %5409, float %5410)  ; Dot3(ax,ay,az,bx,by,bz)
  %5454 = fmul fast float %5453, 2.000000e+00
  %5455 = fmul fast float %5454, %5408
  %5456 = fmul fast float %5454, %5409
  %5457 = fmul fast float %5454, %5410
  %5458 = fsub fast float %5404, %5455
  %5459 = fsub fast float %5403, %5456
  %5460 = fsub fast float %5402, %5457
  %5461 = call float @dx.op.binary.f32(i32 36, float %5415, float 1.000000e+00)  ; FMin(a,b)
  %5462 = fsub fast float 1.000000e+00, %5461
  %5463 = bitcast float %5462 to i32
  %5464 = ashr i32 %5463, 1
  %5465 = add nsw i32 %5464, 532487669
  %5466 = bitcast i32 %5465 to float
  %5467 = fsub fast float 1.000000e+00, %5414
  %5468 = call float @dx.op.binary.f32(i32 35, float %5467, float 0x3F847AE140000000)  ; FMax(a,b)
  %5469 = fmul fast float %5468, %5468
  %5470 = fmul fast float %5469, %5469
  %5471 = call float @dx.op.unary.f32(i32 7, float %5452)  ; Saturate(value)
  %5472 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %44, float %5466, float %5470, float %5471, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5473 = extractvalue %dx.types.ResRet.f32 %5472, 0
  %5474 = fsub fast float 1.000000e+00, %5415
  %5475 = bitcast float %5474 to i32
  %5476 = sub nsw i32 2129859010, %5475
  %5477 = call float @dx.op.dot3.f32(i32 55, float %67, float %63, float %59, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5478 = fmul fast float %5477, 0x3FD20DD760000000
  %5479 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %67)  ; FMax(a,b)
  %5480 = call float @dx.op.dot3.f32(i32 55, float %68, float %69, float %70, float %68, float %69, float %70)  ; Dot3(ax,ay,az,bx,by,bz)
  %5481 = fcmp fast oeq float %5480, 0.000000e+00
  %5482 = fcmp fast oeq float %5479, 0.000000e+00
  %5483 = or i1 %5482, %5481
  br i1 %5483, label %5513, label %5484

; <label>:5484                                    ; preds = %5398
  %5485 = fsub fast float -0.000000e+00, %70
  %5486 = fsub fast float -0.000000e+00, %68
  %5487 = call float @dx.op.unary.f32(i32 24, float %5480)  ; Sqrt(value)
  %5488 = fdiv fast float %5487, %5479
  %5489 = fcmp fast ogt float %5488, 0x3FFB6F8900000000
  %5490 = select i1 %5489, float 0x3FFB6F8900000000, float %5488
  %5491 = fmul fast float %5490, 0x3FE8A23460000000
  %5492 = call float @dx.op.unary.f32(i32 7, float %5491)  ; Saturate(value)
  %5493 = call float @dx.op.binary.f32(i32 35, float %5490, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5494 = fmul fast float %5492, %5479
  %5495 = fmul fast float %5493, 0x3FF279A740000000
  %5496 = fadd fast float %5495, -1.000000e+00
  %5497 = call float @dx.op.dot3.f32(i32 55, float %5485, float %5486, float %69, float %5485, float %5486, float %69)  ; Dot3(ax,ay,az,bx,by,bz)
  %5498 = call float @dx.op.unary.f32(i32 25, float %5497)  ; Rsqrt(value)
  %5499 = fmul fast float %5498, %5485
  %5500 = fmul fast float %5498, %5486
  %5501 = fmul fast float %5498, %69
  %5502 = fmul fast float %5496, %5496
  %5503 = fsub fast float 1.000000e+00, %5502
  %5504 = fmul fast float %5493, 0x40005F8BE0000000
  %5505 = fsub fast float 0x400C5BF8A0000000, %5504
  %5506 = fdiv fast float %5494, %5505
  %5507 = fmul fast float %5506, 0x3FEE31C3C0000000
  %5508 = fmul fast float %5507, %5503
  %5509 = fmul fast float %5493, 0x3FDACB7480000000
  %5510 = fadd fast float %5509, 0xBFD7347680000000
  %5511 = fmul fast float %5510, %5506
  %5512 = fmul fast float %5511, %5503
  br label %5513

; <label>:5513                                    ; preds = %5484, %5398
  %5514 = phi float [ %5499, %5484 ], [ 0.000000e+00, %5398 ]
  %5515 = phi float [ %5500, %5484 ], [ 0.000000e+00, %5398 ]
  %5516 = phi float [ %5501, %5484 ], [ 0.000000e+00, %5398 ]
  %5517 = phi float [ %5508, %5484 ], [ 0.000000e+00, %5398 ]
  %5518 = phi float [ %5512, %5484 ], [ 0.000000e+00, %5398 ]
  %5519 = call float @dx.op.dot3.f32(i32 55, float %5514, float %5515, float %5516, float %5408, float %5409, float %5410)  ; Dot3(ax,ay,az,bx,by,bz)
  %5520 = fmul fast float %5519, %5519
  %5521 = fmul fast float %5520, 0x3FEE471020000000
  %5522 = fadd fast float %5521, 0xBFD42F6020000000
  %5523 = fmul fast float %5479, 0x3FD20DD760000000
  %5524 = fmul fast float %5522, %5518
  %5525 = fmul fast float %5517, 0x3FDF454380000000
  %5526 = fmul fast float %5525, %5519
  %5527 = fadd fast float %5526, %5523
  %5528 = fadd fast float %5527, %5524
  %5529 = call float @dx.op.dot3.f32(i32 55, float %5514, float %5515, float %5516, float %5458, float %5459, float %5460)  ; Dot3(ax,ay,az,bx,by,bz)
  %5530 = fmul fast float %5529, 0x3FDF454380000000
  %5531 = fmul fast float %5529, %5529
  %5532 = fmul fast float %5531, 0x3FEE471020000000
  %5533 = fadd fast float %5532, 0xBFD42F6020000000
  %5534 = call float @dx.op.dot3.f32(i32 55, float %5479, float %5517, float %5518, float 0x3FD20DD760000000, float %5530, float %5533)  ; Dot3(ax,ay,az,bx,by,bz)
  %5535 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %63)  ; FMax(a,b)
  %5536 = call float @dx.op.dot3.f32(i32 55, float %64, float %65, float %66, float %64, float %65, float %66)  ; Dot3(ax,ay,az,bx,by,bz)
  %5537 = fcmp fast oeq float %5536, 0.000000e+00
  %5538 = fcmp fast oeq float %5535, 0.000000e+00
  %5539 = or i1 %5538, %5537
  br i1 %5539, label %5569, label %5540

; <label>:5540                                    ; preds = %5513
  %5541 = fsub fast float -0.000000e+00, %66
  %5542 = fsub fast float -0.000000e+00, %64
  %5543 = call float @dx.op.unary.f32(i32 24, float %5536)  ; Sqrt(value)
  %5544 = fdiv fast float %5543, %5535
  %5545 = fcmp fast ogt float %5544, 0x3FFB6F8900000000
  %5546 = select i1 %5545, float 0x3FFB6F8900000000, float %5544
  %5547 = fmul fast float %5546, 0x3FE8A23460000000
  %5548 = call float @dx.op.unary.f32(i32 7, float %5547)  ; Saturate(value)
  %5549 = call float @dx.op.binary.f32(i32 35, float %5546, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5550 = fmul fast float %5548, %5535
  %5551 = fmul fast float %5549, 0x3FF279A740000000
  %5552 = fadd fast float %5551, -1.000000e+00
  %5553 = call float @dx.op.dot3.f32(i32 55, float %5541, float %5542, float %65, float %5541, float %5542, float %65)  ; Dot3(ax,ay,az,bx,by,bz)
  %5554 = call float @dx.op.unary.f32(i32 25, float %5553)  ; Rsqrt(value)
  %5555 = fmul fast float %5554, %5541
  %5556 = fmul fast float %5554, %5542
  %5557 = fmul fast float %5554, %65
  %5558 = fmul fast float %5552, %5552
  %5559 = fsub fast float 1.000000e+00, %5558
  %5560 = fmul fast float %5549, 0x40005F8BE0000000
  %5561 = fsub fast float 0x400C5BF8A0000000, %5560
  %5562 = fdiv fast float %5550, %5561
  %5563 = fmul fast float %5562, 0x3FEE31C3C0000000
  %5564 = fmul fast float %5563, %5559
  %5565 = fmul fast float %5549, 0x3FDACB7480000000
  %5566 = fadd fast float %5565, 0xBFD7347680000000
  %5567 = fmul fast float %5566, %5562
  %5568 = fmul fast float %5567, %5559
  br label %5569

; <label>:5569                                    ; preds = %5540, %5513
  %5570 = phi float [ %5555, %5540 ], [ 0.000000e+00, %5513 ]
  %5571 = phi float [ %5556, %5540 ], [ 0.000000e+00, %5513 ]
  %5572 = phi float [ %5557, %5540 ], [ 0.000000e+00, %5513 ]
  %5573 = phi float [ %5564, %5540 ], [ 0.000000e+00, %5513 ]
  %5574 = phi float [ %5568, %5540 ], [ 0.000000e+00, %5513 ]
  %5575 = call float @dx.op.dot3.f32(i32 55, float %5570, float %5571, float %5572, float %5408, float %5409, float %5410)  ; Dot3(ax,ay,az,bx,by,bz)
  %5576 = fmul fast float %5575, %5575
  %5577 = fmul fast float %5576, 0x3FEE471020000000
  %5578 = fadd fast float %5577, 0xBFD42F6020000000
  %5579 = fmul fast float %5535, 0x3FD20DD760000000
  %5580 = fmul fast float %5578, %5574
  %5581 = fmul fast float %5573, 0x3FDF454380000000
  %5582 = fmul fast float %5581, %5575
  %5583 = fadd fast float %5582, %5579
  %5584 = fadd fast float %5583, %5580
  %5585 = call float @dx.op.dot3.f32(i32 55, float %5570, float %5571, float %5572, float %5458, float %5459, float %5460)  ; Dot3(ax,ay,az,bx,by,bz)
  %5586 = fmul fast float %5585, 0x3FDF454380000000
  %5587 = fmul fast float %5585, %5585
  %5588 = fmul fast float %5587, 0x3FEE471020000000
  %5589 = fadd fast float %5588, 0xBFD42F6020000000
  %5590 = call float @dx.op.dot3.f32(i32 55, float %5535, float %5573, float %5574, float 0x3FD20DD760000000, float %5586, float %5589)  ; Dot3(ax,ay,az,bx,by,bz)
  %5591 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %59)  ; FMax(a,b)
  %5592 = call float @dx.op.dot3.f32(i32 55, float %60, float %61, float %62, float %60, float %61, float %62)  ; Dot3(ax,ay,az,bx,by,bz)
  %5593 = fcmp fast oeq float %5592, 0.000000e+00
  %5594 = fcmp fast oeq float %5591, 0.000000e+00
  %5595 = or i1 %5594, %5593
  br i1 %5595, label %5625, label %5596

; <label>:5596                                    ; preds = %5569
  %5597 = fsub fast float -0.000000e+00, %62
  %5598 = fsub fast float -0.000000e+00, %60
  %5599 = call float @dx.op.unary.f32(i32 24, float %5592)  ; Sqrt(value)
  %5600 = fdiv fast float %5599, %5591
  %5601 = fcmp fast ogt float %5600, 0x3FFB6F8900000000
  %5602 = select i1 %5601, float 0x3FFB6F8900000000, float %5600
  %5603 = fmul fast float %5602, 0x3FE8A23460000000
  %5604 = call float @dx.op.unary.f32(i32 7, float %5603)  ; Saturate(value)
  %5605 = call float @dx.op.binary.f32(i32 35, float %5602, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5606 = fmul fast float %5604, %5591
  %5607 = fmul fast float %5605, 0x3FF279A740000000
  %5608 = fadd fast float %5607, -1.000000e+00
  %5609 = call float @dx.op.dot3.f32(i32 55, float %5597, float %5598, float %61, float %5597, float %5598, float %61)  ; Dot3(ax,ay,az,bx,by,bz)
  %5610 = call float @dx.op.unary.f32(i32 25, float %5609)  ; Rsqrt(value)
  %5611 = fmul fast float %5610, %5597
  %5612 = fmul fast float %5610, %5598
  %5613 = fmul fast float %5610, %61
  %5614 = fmul fast float %5608, %5608
  %5615 = fsub fast float 1.000000e+00, %5614
  %5616 = fmul fast float %5605, 0x40005F8BE0000000
  %5617 = fsub fast float 0x400C5BF8A0000000, %5616
  %5618 = fdiv fast float %5606, %5617
  %5619 = fmul fast float %5618, 0x3FEE31C3C0000000
  %5620 = fmul fast float %5619, %5615
  %5621 = fmul fast float %5605, 0x3FDACB7480000000
  %5622 = fadd fast float %5621, 0xBFD7347680000000
  %5623 = fmul fast float %5622, %5618
  %5624 = fmul fast float %5623, %5615
  br label %5625

; <label>:5625                                    ; preds = %5596, %5569
  %5626 = phi float [ %5611, %5596 ], [ 0.000000e+00, %5569 ]
  %5627 = phi float [ %5612, %5596 ], [ 0.000000e+00, %5569 ]
  %5628 = phi float [ %5613, %5596 ], [ 0.000000e+00, %5569 ]
  %5629 = phi float [ %5620, %5596 ], [ 0.000000e+00, %5569 ]
  %5630 = phi float [ %5624, %5596 ], [ 0.000000e+00, %5569 ]
  %5631 = call float @dx.op.dot3.f32(i32 55, float %5626, float %5627, float %5628, float %5408, float %5409, float %5410)  ; Dot3(ax,ay,az,bx,by,bz)
  %5632 = fmul fast float %5631, %5631
  %5633 = fmul fast float %5632, 0x3FEE471020000000
  %5634 = fadd fast float %5633, 0xBFD42F6020000000
  %5635 = fmul fast float %5591, 0x3FD20DD760000000
  %5636 = fmul fast float %5634, %5630
  %5637 = fmul fast float %5629, 0x3FDF454380000000
  %5638 = fmul fast float %5637, %5631
  %5639 = fadd fast float %5638, %5635
  %5640 = fadd fast float %5639, %5636
  %5641 = call float @dx.op.dot3.f32(i32 55, float %5626, float %5627, float %5628, float %5458, float %5459, float %5460)  ; Dot3(ax,ay,az,bx,by,bz)
  %5642 = fmul fast float %5641, 0x3FDF454380000000
  %5643 = fmul fast float %5641, %5641
  %5644 = fmul fast float %5643, 0x3FEE471020000000
  %5645 = fadd fast float %5644, 0xBFD42F6020000000
  %5646 = call float @dx.op.dot3.f32(i32 55, float %5591, float %5629, float %5630, float 0x3FD20DD760000000, float %5642, float %5645)  ; Dot3(ax,ay,az,bx,by,bz)
  %5647 = call float @dx.op.binary.f32(i32 35, float %5528, float 0.000000e+00)  ; FMax(a,b)
  %5648 = call float @dx.op.binary.f32(i32 35, float %5584, float 0.000000e+00)  ; FMax(a,b)
  %5649 = call float @dx.op.binary.f32(i32 35, float %5640, float 0.000000e+00)  ; FMax(a,b)
  %5650 = call float @dx.op.binary.f32(i32 35, float %5534, float 0.000000e+00)  ; FMax(a,b)
  %5651 = call float @dx.op.binary.f32(i32 35, float %5590, float 0.000000e+00)  ; FMax(a,b)
  %5652 = call float @dx.op.binary.f32(i32 35, float %5646, float 0.000000e+00)  ; FMax(a,b)
  %5653 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5654 = extractvalue %dx.types.CBufRet.f32 %5653, 0
  %5655 = call float @dx.op.binary.f32(i32 36, float %5411, float %5654)  ; FMin(a,b)
  %5656 = fmul fast float %5655, %5462
  %5657 = fsub fast float 1.000000e+00, %5656
  %5658 = bitcast float %5657 to i32
  %5659 = sub nsw i32 2129859010, %5658
  %5660 = bitcast i32 %5659 to float
  %5661 = call float @dx.op.binary.f32(i32 36, float %5412, float %5654)  ; FMin(a,b)
  %5662 = fmul fast float %5661, %5462
  %5663 = fsub fast float 1.000000e+00, %5662
  %5664 = bitcast float %5663 to i32
  %5665 = sub nsw i32 2129859010, %5664
  %5666 = bitcast i32 %5665 to float
  %5667 = call float @dx.op.binary.f32(i32 36, float %5413, float %5654)  ; FMin(a,b)
  %5668 = fmul fast float %5667, %5462
  %5669 = fsub fast float 1.000000e+00, %5668
  %5670 = bitcast float %5669 to i32
  %5671 = sub nsw i32 2129859010, %5670
  %5672 = bitcast i32 %5671 to float
  %5673 = fmul fast float %5647, %5461
  %5674 = fmul fast float %5673, %5660
  %5675 = fmul fast float %5648, %5461
  %5676 = fmul fast float %5675, %5666
  %5677 = fmul fast float %5649, %5461
  %5678 = fmul fast float %5677, %5672
  %5679 = call float @dx.op.binary.f32(i32 36, float %5405, float %5654)  ; FMin(a,b)
  %5680 = fmul fast float %5679, %5462
  %5681 = fsub fast float 1.000000e+00, %5680
  %5682 = bitcast float %5681 to i32
  %5683 = sub nsw i32 2129859010, %5682
  %5684 = bitcast i32 %5683 to float
  %5685 = call float @dx.op.binary.f32(i32 36, float %5406, float %5654)  ; FMin(a,b)
  %5686 = fmul fast float %5685, %5462
  %5687 = fsub fast float 1.000000e+00, %5686
  %5688 = bitcast float %5687 to i32
  %5689 = sub nsw i32 2129859010, %5688
  %5690 = bitcast i32 %5689 to float
  %5691 = call float @dx.op.binary.f32(i32 36, float %5450, float %5654)  ; FMin(a,b)
  %5692 = fmul fast float %5691, %5462
  %5693 = fsub fast float 1.000000e+00, %5692
  %5694 = bitcast float %5693 to i32
  %5695 = sub nsw i32 2129859010, %5694
  %5696 = bitcast i32 %5695 to float
  %5697 = fmul fast float %5650, %5461
  %5698 = fmul fast float %5697, %5684
  %5699 = fmul fast float %5651, %5461
  %5700 = fmul fast float %5699, %5690
  %5701 = fmul fast float %5652, %5461
  %5702 = fmul fast float %5701, %5696
  %5703 = call float @dx.op.dot3.f32(i32 55, float %5674, float %5676, float %5678, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5704 = select i1 %215, float 0.000000e+00, float %5674
  %5705 = select i1 %215, float %5703, float %5676
  %5706 = select i1 %215, float 0.000000e+00, float %5678
  %5707 = call float @dx.op.dot3.f32(i32 55, float %5698, float %5700, float %5702, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5708 = select i1 %215, float 0.000000e+00, float %5698
  %5709 = select i1 %215, float %5707, float %5700
  %5710 = select i1 %215, float 0.000000e+00, float %5702
  %5711 = fmul fast float %4419, %4419
  %5712 = call float @dx.op.unary.f32(i32 7, float %5711)  ; Saturate(value)
  %5713 = fmul fast float %5452, 9.843750e-01
  %5714 = fmul fast float %5414, 9.843750e-01
  %5715 = fadd fast float %5713, 7.812500e-03
  %5716 = fadd fast float %5714, 7.812500e-03
  %5717 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %44, float %5715, float %5716, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5718 = extractvalue %dx.types.ResRet.f32 %5717, 0
  %5719 = extractvalue %dx.types.ResRet.f32 %5717, 1
  %5720 = extractvalue %dx.types.ResRet.f32 %5717, 2
  %5721 = extractvalue %dx.types.ResRet.f32 %5717, 3
  %5722 = fsub fast float 1.000000e+00, %5712
  %5723 = fsub fast float %5720, %5718
  %5724 = fsub fast float %5721, %5719
  %5725 = fmul fast float %5723, %5722
  %5726 = fmul fast float %5724, %5722
  %5727 = fadd fast float %5725, %5718
  %5728 = fadd fast float %5726, %5719
  %5729 = fmul fast float %5727, %5405
  %5730 = fmul fast float %5727, %5406
  %5731 = fmul fast float %5727, %5450
  %5732 = fadd fast float %5729, %5728
  %5733 = fadd fast float %5730, %5728
  %5734 = fadd fast float %5731, %5728
  %5735 = fcmp fast ogt float %5065, 0.000000e+00
  br i1 %5735, label %5736, label %5762

; <label>:5736                                    ; preds = %5625
  %5737 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %44, float %5065, float %5452, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5738 = extractvalue %dx.types.ResRet.f32 %5737, 0
  %5739 = extractvalue %dx.types.ResRet.f32 %5737, 1
  %5740 = extractvalue %dx.types.ResRet.f32 %5737, 2
  %5741 = fadd fast float %5738, -5.000000e-01
  %5742 = fadd fast float %5739, -5.000000e-01
  %5743 = fadd fast float %5740, -5.000000e-01
  %5744 = fsub fast float 1.000000e+00, %5405
  %5745 = fsub fast float 1.000000e+00, %5406
  %5746 = fsub fast float 1.000000e+00, %5450
  %5747 = fmul fast float %5405, 4.000000e+00
  %5748 = fmul fast float %5747, %5744
  %5749 = fmul fast float %5748, %5741
  %5750 = fmul fast float %5406, 4.000000e+00
  %5751 = fmul fast float %5750, %5745
  %5752 = fmul fast float %5751, %5742
  %5753 = fmul fast float %5450, 4.000000e+00
  %5754 = fmul fast float %5753, %5746
  %5755 = fmul fast float %5754, %5743
  %5756 = fadd fast float %5749, %5732
  %5757 = fadd fast float %5752, %5733
  %5758 = fadd fast float %5755, %5734
  %5759 = call float @dx.op.unary.f32(i32 7, float %5756)  ; Saturate(value)
  %5760 = call float @dx.op.unary.f32(i32 7, float %5757)  ; Saturate(value)
  %5761 = call float @dx.op.unary.f32(i32 7, float %5758)  ; Saturate(value)
  br label %5762

; <label>:5762                                    ; preds = %5736, %5625
  %5763 = phi float [ %5759, %5736 ], [ %5732, %5625 ]
  %5764 = phi float [ %5760, %5736 ], [ %5733, %5625 ]
  %5765 = phi float [ %5761, %5736 ], [ %5734, %5625 ]
  %5766 = call float @dx.op.binary.f32(i32 35, float %5764, float %5765)  ; FMax(a,b)
  %5767 = call float @dx.op.binary.f32(i32 35, float %5763, float %5766)  ; FMax(a,b)
  %5768 = fsub fast float 1.000000e+00, %5767
  %5769 = fmul fast float %5767, %5414
  %5770 = fadd fast float %5769, %5414
  %5771 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %5772 = extractvalue %dx.types.CBufRet.f32 %5771, 2
  %5773 = extractvalue %dx.types.CBufRet.f32 %5771, 3
  %5774 = fmul fast float %5770, %5772
  %5775 = fadd fast float %5774, %5773
  %5776 = call float @dx.op.unary.f32(i32 7, float %5775)  ; Saturate(value)
  %5777 = fsub fast float 1.000000e+00, %5473
  %5778 = fadd fast float %5777, %5776
  %5779 = call float @dx.op.unary.f32(i32 7, float %5778)  ; Saturate(value)
  %5780 = fcmp fast olt float %5779, 1.000000e+00
  br i1 %5780, label %5781, label %6229

; <label>:5781                                    ; preds = %5762
  %5782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5783 = extractvalue %dx.types.CBufRet.f32 %5782, 2
  %5784 = extractvalue %dx.types.CBufRet.f32 %5782, 3
  %5785 = fmul fast float %5783, %99
  %5786 = fmul fast float %5784, %100
  %5787 = fptoui float %5785 to i32
  %5788 = fptoui float %5786 to i32
  %5789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5790 = extractvalue %dx.types.CBufRet.f32 %5789, 0
  %5791 = extractvalue %dx.types.CBufRet.f32 %5789, 2
  %5792 = extractvalue %dx.types.CBufRet.f32 %5789, 3
  %5793 = fadd fast float %87, -4.000000e+00
  %5794 = call float @dx.op.binary.f32(i32 35, float %5793, float 0.000000e+00)  ; FMax(a,b)
  %5795 = fadd fast float %5794, %5790
  %5796 = fmul fast float %5795, %5791
  %5797 = call float @dx.op.unary.f32(i32 23, float %5796)  ; Log(value)
  %5798 = fmul fast float %5797, %5792
  %5799 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5800 = extractvalue %dx.types.CBufRet.f32 %5799, 2
  %5801 = fmul fast float %5798, %5800
  %5802 = call float @dx.op.unary.f32(i32 7, float %5801)  ; Saturate(value)
  %5803 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5804 = extractvalue %dx.types.CBufRet.i32 %5803, 1
  %5805 = add i32 %5804, -1
  %5806 = uitofp i32 %5804 to float
  %5807 = fmul fast float %5806, %5802
  %5808 = fptoui float %5807 to i32
  %5809 = call i32 @dx.op.binary.i32(i32 40, i32 %5808, i32 %5805)  ; UMin(a,b)
  %5810 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5811 = extractvalue %dx.types.CBufRet.i32 %5810, 2
  %5812 = extractvalue %dx.types.CBufRet.i32 %5810, 3
  %5813 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5788, i32 %5811, i32 %5787)  ; UMad(a,b,c)
  %5814 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5809, i32 %5812, i32 %5813)  ; UMad(a,b,c)
  %5815 = call float @dx.op.binary.f32(i32 35, float %87, float 0.000000e+00)  ; FMax(a,b)
  %5816 = fptoui float %5815 to i32
  %5817 = lshr i32 %5816, 5
  %5818 = call i32 @dx.op.binary.i32(i32 40, i32 %5817, i32 8191)  ; UMin(a,b)
  br i1 false, label %5819, label %5826

; <label>:5819                                    ; preds = %5781
  %5820 = fadd fast float 0.000000e+00, %5460
  %5821 = call float @dx.op.dot3.f32(i32 55, float %5458, float %5459, float %5820, float %5458, float %5459, float %5820)  ; Dot3(ax,ay,az,bx,by,bz)
  %5822 = call float @dx.op.unary.f32(i32 25, float %5821)  ; Rsqrt(value)
  %5823 = fmul fast float %5822, %5458
  %5824 = fmul fast float %5822, %5459
  %5825 = fmul fast float %5820, %5822
  br label %5826

; <label>:5826                                    ; preds = %5819, %5781
  %5827 = phi float [ %5823, %5819 ], [ %5458, %5781 ]
  %5828 = phi float [ %5824, %5819 ], [ %5459, %5781 ]
  %5829 = phi float [ %5825, %5819 ], [ %5460, %5781 ]
  %5830 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5831 = extractvalue %dx.types.CBufRet.i32 %5830, 2
  %5832 = add nsw i32 %5831, -1
  %5833 = call i32 @dx.op.binary.i32(i32 37, i32 %5832, i32 0)  ; IMax(a,b)
  %5834 = shl i32 %5818, 2
  %5835 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %5834, i32 undef)  ; BufferLoad(srv,index,wot)
  %5836 = extractvalue %dx.types.ResRet.i32 %5835, 0
  %5837 = lshr i32 %5836, 16
  %5838 = and i32 %5836, 65535
  %5839 = lshr i32 %5836, 21
  %5840 = lshr i32 %5838, 5
  %5841 = call i32 @dx.op.binary.i32(i32 40, i32 %5840, i32 %5833)  ; UMin(a,b)
  %5842 = icmp ugt i32 %5839, %5841
  br i1 %5842, label %6205, label %5843

; <label>:5843                                    ; preds = %5826
  br label %5844

; <label>:5844                                    ; preds = %6197, %5843
  %5845 = phi float [ %6198, %6197 ], [ 0.000000e+00, %5843 ]
  %5846 = phi float [ %6199, %6197 ], [ 0.000000e+00, %5843 ]
  %5847 = phi float [ %6200, %6197 ], [ 0.000000e+00, %5843 ]
  %5848 = phi float [ %6201, %6197 ], [ 1.000000e+00, %5843 ]
  %5849 = phi i32 [ %6202, %6197 ], [ %5839, %5843 ]
  %5850 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5851 = extractvalue %dx.types.CBufRet.i32 %5850, 2
  %5852 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5814, i32 %5851, i32 %5849)  ; UMad(a,b,c)
  %5853 = shl i32 %5852, 2
  %5854 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %5853, i32 undef)  ; BufferLoad(srv,index,wot)
  %5855 = extractvalue %dx.types.ResRet.i32 %5854, 0
  %5856 = shl i32 %5849, 5
  %5857 = sub nsw i32 %5837, %5856
  %5858 = call i32 @dx.op.binary.i32(i32 37, i32 %5857, i32 0)  ; IMax(a,b)
  %5859 = call i32 @dx.op.binary.i32(i32 38, i32 %5858, i32 31)  ; IMin(a,b)
  %5860 = sub nsw i32 1, %5837
  %5861 = add nsw i32 %5860, %5838
  %5862 = call i32 @dx.op.binary.i32(i32 37, i32 %5861, i32 0)  ; IMax(a,b)
  %5863 = call i32 @dx.op.binary.i32(i32 38, i32 %5862, i32 32)  ; IMin(a,b)
  %5864 = and i32 %5863, 31
  %5865 = shl i32 -1, %5864
  %5866 = xor i32 %5865, -1
  %5867 = and i32 %5859, 31
  %5868 = shl i32 %5866, %5867
  %5869 = icmp eq i32 %5863, 32
  %5870 = select i1 %5869, i32 -1, i32 %5868
  %5871 = and i32 %5870, %5855
  %5872 = icmp eq i32 %5871, 0
  br i1 %5872, label %6197, label %5873

; <label>:5873                                    ; preds = %5844
  br label %5874

; <label>:5874                                    ; preds = %5980, %5873
  %5875 = phi float [ %5981, %5980 ], [ %5845, %5873 ]
  %5876 = phi float [ %5982, %5980 ], [ %5846, %5873 ]
  %5877 = phi float [ %5983, %5980 ], [ %5847, %5873 ]
  %5878 = phi float [ %5984, %5980 ], [ %5848, %5873 ]
  %5879 = phi i32 [ %5884, %5980 ], [ %5871, %5873 ]
  %5880 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5879)  ; FirstbitLo(value)
  %5881 = add i32 %5880, %5856
  %5882 = and i32 %5880, 31
  %5883 = shl i32 1, %5882
  %5884 = xor i32 %5883, %5879
  %5885 = mul i32 %5881, 72
  %5886 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %5885, i32 undef)  ; BufferLoad(srv,index,wot)
  %5887 = extractvalue %dx.types.ResRet.f32 %5886, 0
  %5888 = extractvalue %dx.types.ResRet.f32 %5886, 1
  %5889 = extractvalue %dx.types.ResRet.f32 %5886, 2
  %5890 = add i32 %5885, 12
  %5891 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %5890, i32 undef)  ; BufferLoad(srv,index,wot)
  %5892 = extractvalue %dx.types.ResRet.i32 %5891, 0
  %5893 = add i32 %5885, 16
  %5894 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %5893, i32 undef)  ; BufferLoad(srv,index,wot)
  %5895 = extractvalue %dx.types.ResRet.f32 %5894, 0
  %5896 = extractvalue %dx.types.ResRet.f32 %5894, 1
  %5897 = extractvalue %dx.types.ResRet.f32 %5894, 2
  %5898 = add i32 %5885, 28
  %5899 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %5898, i32 undef)  ; BufferLoad(srv,index,wot)
  %5900 = extractvalue %dx.types.ResRet.f32 %5899, 0
  %5901 = add i32 %5885, 32
  %5902 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %5901, i32 undef)  ; BufferLoad(srv,index,wot)
  %5903 = extractvalue %dx.types.ResRet.f32 %5902, 0
  %5904 = extractvalue %dx.types.ResRet.f32 %5902, 1
  %5905 = extractvalue %dx.types.ResRet.f32 %5902, 2
  %5906 = extractvalue %dx.types.ResRet.f32 %5902, 3
  %5907 = add i32 %5885, 48
  %5908 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %5907, i32 undef)  ; BufferLoad(srv,index,wot)
  %5909 = extractvalue %dx.types.ResRet.f32 %5908, 0
  %5910 = extractvalue %dx.types.ResRet.f32 %5908, 1
  %5911 = add i32 %5885, 56
  %5912 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %5911, i32 undef)  ; BufferLoad(srv,index,wot)
  %5913 = extractvalue %dx.types.ResRet.f32 %5912, 0
  %5914 = extractvalue %dx.types.ResRet.f32 %5912, 1
  %5915 = add i32 %5885, 64
  %5916 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %5915, i32 undef)  ; BufferLoad(srv,index,wot)
  %5917 = extractvalue %dx.types.ResRet.f32 %5916, 0
  %5918 = extractvalue %dx.types.ResRet.f32 %5916, 1
  %5919 = mul i32 %5881, 60
  %5920 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %5919, i32 undef)  ; BufferLoad(srv,index,wot)
  %5921 = extractvalue %dx.types.ResRet.f32 %5920, 0
  %5922 = extractvalue %dx.types.ResRet.f32 %5920, 1
  %5923 = extractvalue %dx.types.ResRet.f32 %5920, 2
  %5924 = add i32 %5919, 12
  %5925 = add i32 %5919, 48
  %5926 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %5925, i32 undef)  ; BufferLoad(srv,index,wot)
  %5927 = extractvalue %dx.types.ResRet.f32 %5926, 0
  %5928 = extractvalue %dx.types.ResRet.f32 %5926, 1
  %5929 = extractvalue %dx.types.ResRet.f32 %5926, 2
  %5930 = and i32 %5892, 32767
  %5931 = bitcast float %5887 to i32
  %5932 = icmp eq i32 %5931, -1
  %5933 = bitcast float %5888 to i32
  %5934 = and i32 %5892, 32768
  %5935 = icmp ne i32 %5934, 0
  %5936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5937 = extractvalue %dx.types.CBufRet.f32 %5936, 0
  %5938 = extractvalue %dx.types.CBufRet.f32 %5936, 1
  %5939 = extractvalue %dx.types.CBufRet.f32 %5936, 2
  %5940 = fsub fast float %5921, %5937
  %5941 = fsub fast float %5922, %5938
  %5942 = fsub fast float %5923, %5939
  %5943 = fsub fast float %154, %5940
  %5944 = fsub fast float %155, %5941
  %5945 = fsub fast float %156, %5942
  %5946 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %5924, i32 undef)  ; BufferLoad(srv,index,wot)
  %5947 = extractvalue %dx.types.ResRet.f32 %5946, 0
  %5948 = extractvalue %dx.types.ResRet.f32 %5946, 1
  %5949 = extractvalue %dx.types.ResRet.f32 %5946, 2
  %5950 = call float @dx.op.dot3.f32(i32 55, float %5943, float %5944, float %5945, float %5947, float %5948, float %5949)  ; Dot3(ax,ay,az,bx,by,bz)
  %5951 = add i32 %5919, 24
  %5952 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %5951, i32 undef)  ; BufferLoad(srv,index,wot)
  %5953 = extractvalue %dx.types.ResRet.f32 %5952, 0
  %5954 = extractvalue %dx.types.ResRet.f32 %5952, 1
  %5955 = extractvalue %dx.types.ResRet.f32 %5952, 2
  %5956 = call float @dx.op.dot3.f32(i32 55, float %5943, float %5944, float %5945, float %5953, float %5954, float %5955)  ; Dot3(ax,ay,az,bx,by,bz)
  %5957 = add i32 %5919, 36
  %5958 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %5957, i32 undef)  ; BufferLoad(srv,index,wot)
  %5959 = extractvalue %dx.types.ResRet.f32 %5958, 0
  %5960 = extractvalue %dx.types.ResRet.f32 %5958, 1
  %5961 = extractvalue %dx.types.ResRet.f32 %5958, 2
  %5962 = call float @dx.op.dot3.f32(i32 55, float %5943, float %5944, float %5945, float %5959, float %5960, float %5961)  ; Dot3(ax,ay,az,bx,by,bz)
  %5963 = call float @dx.op.unary.f32(i32 6, float %5950)  ; FAbs(value)
  %5964 = call float @dx.op.unary.f32(i32 6, float %5956)  ; FAbs(value)
  %5965 = call float @dx.op.unary.f32(i32 6, float %5962)  ; FAbs(value)
  %5966 = fsub fast float %5927, %5963
  %5967 = fsub fast float %5928, %5964
  %5968 = fsub fast float %5929, %5965
  %5969 = fmul fast float %5966, %5895
  %5970 = fmul fast float %5967, %5896
  %5971 = fmul fast float %5968, %5897
  %5972 = call float @dx.op.binary.f32(i32 36, float %5970, float %5971)  ; FMin(a,b)
  %5973 = call float @dx.op.binary.f32(i32 36, float %5969, float %5972)  ; FMin(a,b)
  %5974 = call float @dx.op.unary.f32(i32 7, float %5973)  ; Saturate(value)
  %5975 = call float @dx.op.binary.f32(i32 36, float %5878, float %5974)  ; FMin(a,b)
  %5976 = uitofp i1 %5935 to float
  %5977 = fsub fast float 1.000000e+00, %5976
  %5978 = fmul fast float %5975, %5977
  %5979 = fcmp fast ogt float %5978, 0.000000e+00
  br i1 %5979, label %5986, label %5980

; <label>:5980                                    ; preds = %6128, %5874
  %5981 = phi float [ %6192, %6128 ], [ %5875, %5874 ]
  %5982 = phi float [ %6193, %6128 ], [ %5876, %5874 ]
  %5983 = phi float [ %6194, %6128 ], [ %5877, %5874 ]
  %5984 = phi float [ %6195, %6128 ], [ %5878, %5874 ]
  %5985 = icmp eq i32 %5879, %5883
  br i1 %5985, label %6196, label %5874

; <label>:5986                                    ; preds = %5874
  br i1 %5932, label %6044, label %5987

; <label>:5987                                    ; preds = %5986
  %5988 = fsub fast float -0.000000e+00, %5947
  %5989 = fsub fast float -0.000000e+00, %5948
  %5990 = fsub fast float -0.000000e+00, %5949
  %5991 = call float @dx.op.dot3.f32(i32 55, float %5827, float %5828, float %5829, float %5988, float %5989, float %5990)  ; Dot3(ax,ay,az,bx,by,bz)
  %5992 = fsub fast float -0.000000e+00, %5991
  %5993 = call float @dx.op.dot3.f32(i32 55, float %5943, float %5944, float %5945, float %5988, float %5989, float %5990)  ; Dot3(ax,ay,az,bx,by,bz)
  %5994 = fadd fast float %5993, %5910
  %5995 = fadd fast float %5909, %5993
  %5996 = fsub fast float -0.000000e+00, %5995
  %5997 = fcmp ogt float %5991, -0.000000e+00
  %5998 = select i1 %5997, float %5996, float %5994
  %5999 = call float @dx.op.unary.f32(i32 6, float %5992)  ; FAbs(value)
  %6000 = fdiv fast float 1.000000e+00, %5999
  %6001 = fmul fast float %5998, %6000
  %6002 = call float @dx.op.binary.f32(i32 35, float %6001, float 0.000000e+00)  ; FMax(a,b)
  %6003 = fsub fast float -0.000000e+00, %5953
  %6004 = fsub fast float -0.000000e+00, %5954
  %6005 = fsub fast float -0.000000e+00, %5955
  %6006 = call float @dx.op.dot3.f32(i32 55, float %5827, float %5828, float %5829, float %6003, float %6004, float %6005)  ; Dot3(ax,ay,az,bx,by,bz)
  %6007 = fsub fast float -0.000000e+00, %6006
  %6008 = call float @dx.op.dot3.f32(i32 55, float %5943, float %5944, float %5945, float %6003, float %6004, float %6005)  ; Dot3(ax,ay,az,bx,by,bz)
  %6009 = fadd fast float %6008, %5914
  %6010 = fadd fast float %5913, %6008
  %6011 = fsub fast float -0.000000e+00, %6010
  %6012 = fcmp ogt float %6006, -0.000000e+00
  %6013 = select i1 %6012, float %6011, float %6009
  %6014 = call float @dx.op.unary.f32(i32 6, float %6007)  ; FAbs(value)
  %6015 = fdiv fast float 1.000000e+00, %6014
  %6016 = fmul fast float %6013, %6015
  %6017 = call float @dx.op.binary.f32(i32 35, float %6016, float 0.000000e+00)  ; FMax(a,b)
  %6018 = fsub fast float -0.000000e+00, %5959
  %6019 = fsub fast float -0.000000e+00, %5960
  %6020 = fsub fast float -0.000000e+00, %5961
  %6021 = call float @dx.op.dot3.f32(i32 55, float %5827, float %5828, float %5829, float %6018, float %6019, float %6020)  ; Dot3(ax,ay,az,bx,by,bz)
  %6022 = fsub fast float -0.000000e+00, %6021
  %6023 = call float @dx.op.dot3.f32(i32 55, float %5943, float %5944, float %5945, float %6018, float %6019, float %6020)  ; Dot3(ax,ay,az,bx,by,bz)
  %6024 = fadd fast float %6023, %5918
  %6025 = fadd fast float %5917, %6023
  %6026 = fsub fast float -0.000000e+00, %6025
  %6027 = fcmp ogt float %6021, -0.000000e+00
  %6028 = select i1 %6027, float %6026, float %6024
  %6029 = call float @dx.op.unary.f32(i32 6, float %6022)  ; FAbs(value)
  %6030 = fdiv fast float 1.000000e+00, %6029
  %6031 = fmul fast float %6028, %6030
  %6032 = call float @dx.op.binary.f32(i32 35, float %6031, float 0.000000e+00)  ; FMax(a,b)
  %6033 = call float @dx.op.binary.f32(i32 36, float %6017, float %6032)  ; FMin(a,b)
  %6034 = call float @dx.op.binary.f32(i32 36, float %6002, float %6033)  ; FMin(a,b)
  %6035 = fmul fast float %6034, %5827
  %6036 = fmul fast float %6034, %5828
  %6037 = fmul fast float %6034, %5829
  %6038 = fadd fast float %6035, %154
  %6039 = fadd fast float %6036, %155
  %6040 = fadd fast float %6037, %156
  %6041 = fsub fast float %6038, %5887
  %6042 = fsub fast float %6039, %5888
  %6043 = fsub fast float %6040, %5889
  br label %6051

; <label>:6044                                    ; preds = %5986
  %6045 = fmul fast float %5827, 8.096000e+03
  %6046 = fmul fast float %5828, 8.096000e+03
  %6047 = fmul fast float %5829, 8.096000e+03
  %6048 = fadd fast float %6045, %154
  %6049 = fadd fast float %6046, %155
  %6050 = fadd fast float %6047, %156
  br label %6051

; <label>:6051                                    ; preds = %6044, %5987
  %6052 = phi float [ %5827, %6044 ], [ %6041, %5987 ]
  %6053 = phi float [ %5828, %6044 ], [ %6042, %5987 ]
  %6054 = phi float [ %5829, %6044 ], [ %6043, %5987 ]
  %6055 = phi float [ %6048, %6044 ], [ %6038, %5987 ]
  %6056 = phi float [ %6049, %6044 ], [ %6039, %5987 ]
  %6057 = phi float [ %6050, %6044 ], [ %6040, %5987 ]
  %6058 = fcmp fast olt float %5906, 1.000000e+00
  br i1 %6058, label %6059, label %6090, !dx.controlflow.hints !87

; <label>:6059                                    ; preds = %6051
  %6060 = fmul fast float %6054, %5904
  %6061 = fmul fast float %6053, %5905
  %6062 = fsub fast float %6060, %6061
  %6063 = fmul fast float %6052, %5905
  %6064 = fmul fast float %6054, %5903
  %6065 = fsub fast float %6063, %6064
  %6066 = fmul fast float %6053, %5903
  %6067 = fmul fast float %6052, %5904
  %6068 = fsub fast float %6066, %6067
  %6069 = fmul fast float %6062, 2.000000e+00
  %6070 = fmul fast float %6065, 2.000000e+00
  %6071 = fmul fast float %6068, 2.000000e+00
  %6072 = fmul fast float %6069, %5906
  %6073 = fmul fast float %6070, %5906
  %6074 = fmul fast float %6071, %5906
  %6075 = fmul fast float %6071, %5904
  %6076 = fmul fast float %6070, %5905
  %6077 = fmul fast float %6069, %5905
  %6078 = fmul fast float %6071, %5903
  %6079 = fmul fast float %6070, %5903
  %6080 = fmul fast float %6069, %5904
  %6081 = fadd fast float %6075, %6052
  %6082 = fadd fast float %6081, %6072
  %6083 = fsub fast float %6082, %6076
  %6084 = fsub fast float %6053, %6078
  %6085 = fadd fast float %6084, %6073
  %6086 = fadd fast float %6085, %6077
  %6087 = fadd fast float %6074, %6054
  %6088 = fsub fast float %6087, %6080
  %6089 = fadd fast float %6088, %6079
  br label %6090

; <label>:6090                                    ; preds = %6059, %6051
  %6091 = phi float [ %6083, %6059 ], [ %6052, %6051 ]
  %6092 = phi float [ %6086, %6059 ], [ %6053, %6051 ]
  %6093 = phi float [ %6089, %6059 ], [ %6054, %6051 ]
  br i1 %5932, label %6125, label %6094

; <label>:6094                                    ; preds = %6090
  %6095 = fmul fast float %5414, 0x400187C840000000
  %6096 = fadd fast float %6095, 0xC00EFC2120000000
  %6097 = fmul fast float %6096, %5414
  %6098 = fadd fast float %6097, 0x3FE5D16340000000
  %6099 = fmul fast float %6098, %5414
  %6100 = fadd fast float %6099, 1.000000e+00
  %6101 = call float @dx.op.unary.f32(i32 7, float %6100)  ; Saturate(value)
  %6102 = fsub fast float %6055, %154
  %6103 = fsub fast float %6056, %155
  %6104 = fsub fast float %6057, %156
  %6105 = fsub fast float %6055, %5887
  %6106 = fsub fast float %6056, %5888
  %6107 = fsub fast float %6057, %5889
  %6108 = call float @dx.op.dot3.f32(i32 55, float %6102, float %6103, float %6104, float %6102, float %6103, float %6104)  ; Dot3(ax,ay,az,bx,by,bz)
  %6109 = call float @dx.op.dot3.f32(i32 55, float %6105, float %6106, float %6107, float %6105, float %6106, float %6107)  ; Dot3(ax,ay,az,bx,by,bz)
  %6110 = fadd fast float %6109, 0x3EE4F8B580000000
  %6111 = fdiv fast float %6108, %6110
  %6112 = bitcast float %6111 to i32
  %6113 = ashr i32 %6112, 1
  %6114 = add nsw i32 %6113, 532487669
  %6115 = bitcast i32 %6114 to float
  %6116 = fmul fast float %6115, %6101
  %6117 = call float @dx.op.unary.f32(i32 7, float %6116)  ; Saturate(value)
  %6118 = fmul fast float %6117, 0x4009981AE0000000
  %6119 = fsub fast float 0x40111BBD80000000, %6118
  %6120 = fmul fast float %6119, %6117
  %6121 = fadd fast float %6120, 0xC0009F6020000000
  %6122 = fmul fast float %6121, %6117
  %6123 = fadd fast float %6122, 1.000000e+00
  %6124 = call float @dx.op.unary.f32(i32 7, float %6123)  ; Saturate(value)
  br label %6128

; <label>:6125                                    ; preds = %6090
  %6126 = icmp ne i32 %5933, -1
  %6127 = zext i1 %6126 to i32
  br label %6128

; <label>:6128                                    ; preds = %6125, %6094
  %6129 = phi float [ %5414, %6125 ], [ %6124, %6094 ]
  %6130 = phi i32 [ %6127, %6125 ], [ 0, %6094 ]
  %6131 = fmul float %6129, 5.000000e+00
  %6132 = fsub float 5.000000e+00, %6131
  %6133 = icmp ne i32 %6130, 0
  %6134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %6135 = extractvalue %dx.types.CBufRet.f32 %6134, 3
  %6136 = fadd fast float %6135, %6132
  %6137 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6136)  ; FMax(a,b)
  %6138 = call float @dx.op.unary.f32(i32 6, float %6091)  ; FAbs(value)
  %6139 = call float @dx.op.unary.f32(i32 6, float %6092)  ; FAbs(value)
  %6140 = fadd fast float %6139, %6138
  %6141 = call float @dx.op.unary.f32(i32 6, float %6093)  ; FAbs(value)
  %6142 = fadd fast float %6140, %6141
  %6143 = fcmp fast oeq float %6142, 0.000000e+00
  %6144 = fdiv fast float 1.000000e+00, %6142
  %6145 = select i1 %6143, float 1.000000e+00, float %6144
  %6146 = fmul fast float %6145, %6091
  %6147 = fmul fast float %6145, %6092
  %6148 = call float @dx.op.unary.f32(i32 6, float %6147)  ; FAbs(value)
  %6149 = call float @dx.op.unary.f32(i32 6, float %6146)  ; FAbs(value)
  %6150 = fsub fast float 1.000000e+00, %6148
  %6151 = fsub fast float 1.000000e+00, %6149
  %6152 = fcmp fast oge float %6146, 0.000000e+00
  %6153 = fcmp fast oge float %6147, 0.000000e+00
  %6154 = select i1 %6152, float 1.000000e+00, float -1.000000e+00
  %6155 = select i1 %6153, float 1.000000e+00, float -1.000000e+00
  %6156 = fcmp fast ole float %6093, 0.000000e+00
  %6157 = fmul fast float %6154, %6150
  %6158 = fmul fast float %6155, %6151
  %6159 = select i1 %6156, float %6157, float %6146
  %6160 = select i1 %6156, float %6158, float %6147
  %6161 = fmul fast float %6159, 5.000000e-01
  %6162 = fmul fast float %6160, 5.000000e-01
  %6163 = fadd fast float %6161, 5.000000e-01
  %6164 = fadd fast float %6162, 5.000000e-01
  %6165 = uitofp i32 %5930 to float
  %6166 = call float @dx.op.binary.f32(i32 36, float %6137, float 3.000000e+00)  ; FMin(a,b)
  %6167 = fadd fast float %6166, 2.000000e+00
  %6168 = call float @dx.op.unary.f32(i32 21, float %6167)  ; Exp(value)
  %6169 = extractvalue %dx.types.CBufRet.f32 %6134, 1
  %6170 = fmul fast float %6169, %6168
  %6171 = fmul fast float %6170, 2.000000e+00
  %6172 = fsub fast float 1.000000e+00, %6171
  %6173 = fmul fast float %6163, %6172
  %6174 = fmul fast float %6164, %6172
  %6175 = fadd fast float %6173, %6170
  %6176 = fadd fast float %6174, %6170
  %6177 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %42, float %6175, float %6176, float %6165, float undef, i32 0, i32 0, i32 undef, float %6137)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6178 = extractvalue %dx.types.ResRet.f32 %6177, 0
  %6179 = extractvalue %dx.types.ResRet.f32 %6177, 1
  %6180 = extractvalue %dx.types.ResRet.f32 %6177, 2
  %6181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6182 = extractvalue %dx.types.CBufRet.f32 %6181, 3
  %6183 = fmul fast float %6182, %5900
  %6184 = call float @dx.op.binary.f32(i32 36, float %5478, float %6183)  ; FMin(a,b)
  %6185 = select i1 %6133, float %6184, float %6183
  %6186 = fmul fast float %6178, %5978
  %6187 = fmul fast float %6186, %6185
  %6188 = fmul fast float %6179, %5978
  %6189 = fmul fast float %6188, %6185
  %6190 = fmul fast float %6180, %5978
  %6191 = fmul fast float %6190, %6185
  %6192 = fadd fast float %6187, %5875
  %6193 = fadd fast float %6189, %5876
  %6194 = fadd fast float %6191, %5877
  %6195 = fsub fast float %5878, %5978
  br label %5980

; <label>:6196                                    ; preds = %5980
  br label %6197

; <label>:6197                                    ; preds = %6196, %5844
  %6198 = phi float [ %5845, %5844 ], [ %5981, %6196 ]
  %6199 = phi float [ %5846, %5844 ], [ %5982, %6196 ]
  %6200 = phi float [ %5847, %5844 ], [ %5983, %6196 ]
  %6201 = phi float [ %5848, %5844 ], [ %5984, %6196 ]
  %6202 = add i32 %5849, 1
  %6203 = icmp ugt i32 %6202, %5841
  br i1 %6203, label %6204, label %5844, !llvm.loop !88

; <label>:6204                                    ; preds = %6197
  br label %6205

; <label>:6205                                    ; preds = %6204, %5826
  %6206 = phi float [ 0.000000e+00, %5826 ], [ %6198, %6204 ]
  %6207 = phi float [ 0.000000e+00, %5826 ], [ %6199, %6204 ]
  %6208 = phi float [ 0.000000e+00, %5826 ], [ %6200, %6204 ]
  %6209 = call float @dx.op.dot3.f32(i32 55, float %6206, float %6207, float %6208, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6210 = select i1 %215, float 0.000000e+00, float %6206
  %6211 = select i1 %215, float %6209, float %6207
  %6212 = select i1 %215, float 0.000000e+00, float %6208
  %6213 = fcmp fast olt float %5779, 0.000000e+00
  %6214 = call float @dx.op.unary.f32(i32 6, float %5779)  ; FAbs(value)
  %6215 = fmul fast float %6214, %5708
  %6216 = fmul fast float %6214, %5709
  %6217 = fmul fast float %6214, %5710
  %6218 = select i1 %6213, float %5708, float %6215
  %6219 = select i1 %6213, float %5709, float %6216
  %6220 = select i1 %6213, float %5710, float %6217
  %6221 = fsub fast float 1.000000e+00, %6214
  %6222 = call float @dx.op.unary.f32(i32 7, float %6221)  ; Saturate(value)
  %6223 = fmul fast float %6222, %6210
  %6224 = fmul fast float %6222, %6211
  %6225 = fmul fast float %6222, %6212
  %6226 = fadd fast float %6218, %6223
  %6227 = fadd fast float %6219, %6224
  %6228 = fadd fast float %6220, %6225
  br label %6229

; <label>:6229                                    ; preds = %6205, %5762
  %6230 = phi float [ %5708, %5762 ], [ %6226, %6205 ]
  %6231 = phi float [ %5709, %5762 ], [ %6227, %6205 ]
  %6232 = phi float [ %5710, %5762 ], [ %6228, %6205 ]
  %6233 = fmul fast float %5768, %5704
  %6234 = fmul fast float %5768, %5705
  %6235 = fmul fast float %5768, %5706
  %6236 = call float @dx.op.dot3.f32(i32 55, float %5411, float %5412, float %5413, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6237 = fcmp fast ogt float %6236, 0x3E7FF19E20000000
  %6238 = fdiv fast float 1.000000e+00, %6236
  %6239 = select i1 %6237, float %6238, float 0.000000e+00
  %6240 = fmul fast float %6239, %5411
  %6241 = fmul fast float %6239, %5412
  %6242 = fmul fast float %6239, %5413
  %6243 = fadd fast float %6240, -1.000000e+00
  %6244 = fadd fast float %6241, -1.000000e+00
  %6245 = fadd fast float %6242, -1.000000e+00
  %6246 = fmul fast float %6243, 5.000000e-01
  %6247 = fmul fast float %6244, 5.000000e-01
  %6248 = fmul fast float %6245, 5.000000e-01
  %6249 = fadd fast float %6246, 1.000000e+00
  %6250 = fadd fast float %6247, 1.000000e+00
  %6251 = fadd fast float %6248, 1.000000e+00
  %6252 = call float @dx.op.binary.f32(i32 35, float %5452, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6253 = fdiv fast float %4419, %6252
  %6254 = fcmp fast olt float %5114, 1.270000e+02
  %6255 = fcmp fast olt float %5115, 1.270000e+02
  %6256 = fcmp fast olt float %5116, 1.270000e+02
  %6257 = fmul fast float %5114, 0xBFF7154760000000
  %6258 = fmul fast float %6257, %6253
  %6259 = fmul fast float %5115, 0xBFF7154760000000
  %6260 = fmul fast float %6259, %6253
  %6261 = fmul fast float %5116, 0xBFF7154760000000
  %6262 = fmul fast float %6261, %6253
  %6263 = call float @dx.op.unary.f32(i32 21, float %6258)  ; Exp(value)
  %6264 = call float @dx.op.unary.f32(i32 21, float %6260)  ; Exp(value)
  %6265 = call float @dx.op.unary.f32(i32 21, float %6262)  ; Exp(value)
  %6266 = call float @dx.op.unary.f32(i32 7, float %6263)  ; Saturate(value)
  %6267 = call float @dx.op.unary.f32(i32 7, float %6264)  ; Saturate(value)
  %6268 = call float @dx.op.unary.f32(i32 7, float %6265)  ; Saturate(value)
  %6269 = select i1 %6254, float %6266, float 0.000000e+00
  %6270 = select i1 %6255, float %6267, float 0.000000e+00
  %6271 = select i1 %6256, float %6268, float 0.000000e+00
  %6272 = fmul fast float %6269, %5768
  %6273 = fmul fast float %6270, %5768
  %6274 = fmul fast float %6271, %5768
  %6275 = fadd fast float %6272, -1.000000e+00
  %6276 = fadd fast float %6273, -1.000000e+00
  %6277 = fadd fast float %6274, -1.000000e+00
  %6278 = fmul fast float %6275, %5062
  %6279 = fmul fast float %6276, %5062
  %6280 = fmul fast float %6277, %5062
  %6281 = fadd fast float %6278, 1.000000e+00
  %6282 = fadd fast float %6279, 1.000000e+00
  %6283 = fadd fast float %6280, 1.000000e+00
  %6284 = fmul fast float %5406, 0x401CF23780000000
  %6285 = fadd fast float %6284, 0x3FF32641C0000000
  %6286 = fdiv fast float 1.000000e+00, %6285
  %6287 = call float @dx.op.dot3.f32(i32 55, float %5401, float %5400, float %5399, float %5408, float %5409, float %5410)  ; Dot3(ax,ay,az,bx,by,bz)
  %6288 = fmul fast float %6286, %6286
  %6289 = fmul fast float %6287, %6287
  %6290 = fsub fast float 1.000000e+00, %6289
  %6291 = fmul fast float %6288, %6290
  %6292 = fsub fast float 1.000000e+00, %6291
  %6293 = fcmp fast oge float %6292, 0.000000e+00
  %6294 = fmul fast float %6286, %5401
  %6295 = fmul fast float %6286, %5400
  %6296 = fmul fast float %6286, %5399
  %6297 = call float @dx.op.unary.f32(i32 24, float %6292)  ; Sqrt(value)
  %6298 = fmul fast float %6287, %6286
  %6299 = fadd fast float %6298, %6297
  %6300 = fmul fast float %6299, %5408
  %6301 = fmul fast float %6299, %5409
  %6302 = fmul fast float %6299, %5410
  %6303 = fsub fast float %6294, %6300
  %6304 = fsub fast float %6295, %6301
  %6305 = fsub fast float %6296, %6302
  %6306 = select i1 %6293, float %6303, float 0.000000e+00
  %6307 = select i1 %6293, float %6304, float 0.000000e+00
  %6308 = select i1 %6293, float %6305, float 0.000000e+00
  %6309 = fmul fast float %6306, %4419
  %6310 = fmul fast float %6307, %4419
  %6311 = fmul fast float %6308, %4419
  %6312 = fadd fast float %6309, %5447
  %6313 = fadd fast float %6310, %5448
  %6314 = fadd fast float %6311, %5449
  %6315 = call float @dx.op.dot3.f32(i32 55, float %5132, float %5133, float %5134, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6316 = fmul fast float %5467, %5062
  %6317 = fsub fast float 1.000000e+00, %6316
  %6318 = call float @dx.op.unary.f32(i32 7, float %6317)  ; Saturate(value)
  %6319 = fsub fast float 1.000000e+00, %6318
  %6320 = fmul fast float %5406, 0x4012D0A400000000
  %6321 = fadd fast float %6320, 0x3FDB6377A0000000
  %6322 = fmul fast float %6319, %6321
  %6323 = fadd fast float %6322, %6315
  %6324 = call float @dx.op.unary.f32(i32 7, float %6323)  ; Saturate(value)
  %6325 = fmul fast float %6230, %5763
  %6326 = fmul fast float %6231, %5764
  %6327 = fmul fast float %6232, %5765
  %6328 = fsub fast float 1.000000e+00, %5452
  %6329 = bitcast float %6328 to i32
  %6330 = sitofp i32 %6329 to float
  %6331 = fmul fast float %6330, 5.000000e+00
  %6332 = fadd fast float %6331, 0xC1EFBF8940000000
  %6333 = fptosi float %6332 to i32
  %6334 = bitcast i32 %6333 to float
  %6335 = fmul fast float %6334, %5066
  %6336 = fmul fast float %5704, %6335
  %6337 = fmul fast float %6336, %5768
  %6338 = fmul fast float %6337, %6249
  %6339 = fmul fast float %5705, %6335
  %6340 = fmul fast float %6339, %5768
  %6341 = fmul fast float %6340, %6250
  %6342 = fmul fast float %5706, %6335
  %6343 = fmul fast float %6342, %5768
  %6344 = fmul fast float %6343, %6251
  %6345 = fmul fast float %6233, %5062
  %6346 = fmul fast float %6234, %5062
  %6347 = fmul fast float %6235, %5062
  %6348 = fsub fast float 1.000000e+00, %6324
  %6349 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %6350 = extractvalue %dx.types.CBufRet.f32 %6349, 0
  %6351 = extractvalue %dx.types.CBufRet.f32 %6349, 1
  %6352 = extractvalue %dx.types.CBufRet.f32 %6349, 2
  %6353 = extractvalue %dx.types.CBufRet.f32 %6349, 3
  %6354 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %6355 = extractvalue %dx.types.CBufRet.f32 %6354, 0
  %6356 = extractvalue %dx.types.CBufRet.f32 %6354, 1
  %6357 = extractvalue %dx.types.CBufRet.f32 %6354, 2
  %6358 = extractvalue %dx.types.CBufRet.f32 %6354, 3
  %6359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %6360 = extractvalue %dx.types.CBufRet.f32 %6359, 0
  %6361 = extractvalue %dx.types.CBufRet.f32 %6359, 1
  %6362 = extractvalue %dx.types.CBufRet.f32 %6359, 2
  %6363 = extractvalue %dx.types.CBufRet.f32 %6359, 3
  %6364 = fmul fast float %6312, %6350
  %6365 = call float @dx.op.tertiary.f32(i32 46, float %6313, float %6351, float %6364)  ; FMad(a,b,c)
  %6366 = call float @dx.op.tertiary.f32(i32 46, float %6314, float %6352, float %6365)  ; FMad(a,b,c)
  %6367 = fadd fast float %6366, %6353
  %6368 = fmul fast float %6312, %6355
  %6369 = call float @dx.op.tertiary.f32(i32 46, float %6313, float %6356, float %6368)  ; FMad(a,b,c)
  %6370 = call float @dx.op.tertiary.f32(i32 46, float %6314, float %6357, float %6369)  ; FMad(a,b,c)
  %6371 = fadd fast float %6370, %6358
  %6372 = fmul fast float %6312, %6360
  %6373 = call float @dx.op.tertiary.f32(i32 46, float %6313, float %6361, float %6372)  ; FMad(a,b,c)
  %6374 = call float @dx.op.tertiary.f32(i32 46, float %6314, float %6362, float %6373)  ; FMad(a,b,c)
  %6375 = fadd fast float %6374, %6363
  %6376 = fdiv fast float %6367, %6375
  %6377 = fdiv fast float %6371, %6375
  %6378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6379 = extractvalue %dx.types.CBufRet.f32 %6378, 0
  %6380 = extractvalue %dx.types.CBufRet.f32 %6378, 1
  %6381 = fmul fast float %6379, %6376
  %6382 = fmul fast float %6380, %6377
  %6383 = extractvalue %dx.types.CBufRet.f32 %6378, 2
  %6384 = extractvalue %dx.types.CBufRet.f32 %6378, 3
  %6385 = fadd fast float %6381, %6383
  %6386 = fadd fast float %6382, %6384
  %6387 = call float @dx.op.unary.f32(i32 7, float %6385)  ; Saturate(value)
  %6388 = call float @dx.op.unary.f32(i32 7, float %6386)  ; Saturate(value)
  %6389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %6390 = extractvalue %dx.types.CBufRet.f32 %6389, 0
  %6391 = extractvalue %dx.types.CBufRet.f32 %6389, 1
  %6392 = fmul fast float %6390, %6387
  %6393 = fmul fast float %6391, %6388
  %6394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %6395 = extractvalue %dx.types.CBufRet.f32 %6394, 1
  %6396 = extractvalue %dx.types.CBufRet.f32 %6394, 2
  %6397 = fsub fast float %6395, %6396
  %6398 = fmul fast float %6397, %6348
  %6399 = fadd fast float %6398, %6396
  %6400 = fmul fast float %228, 2.000000e+00
  %6401 = fmul fast float %229, 2.000000e+00
  %6402 = fadd fast float %6400, -1.000000e+00
  %6403 = fadd fast float %6401, -1.000000e+00
  %6404 = fmul fast float %6399, %6402
  %6405 = fmul fast float %6399, %6403
  %6406 = fadd fast float %6404, %6392
  %6407 = fadd fast float %6405, %6393
  %6408 = extractvalue %dx.types.CBufRet.f32 %6389, 2
  %6409 = extractvalue %dx.types.CBufRet.f32 %6389, 3
  %6410 = fmul fast float %6406, %6408
  %6411 = fmul fast float %6407, %6409
  %6412 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %45, float %6410, float %6411, float undef, float undef, i32 0, i32 0, i32 undef, float 2.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6413 = extractvalue %dx.types.ResRet.f32 %6412, 0
  %6414 = fcmp fast ogt float %6413, -1.000000e+00
  %6415 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %6416 = extractvalue %dx.types.CBufRet.f32 %6415, 1
  %6417 = select i1 %6414, float %6416, float 1.000000e+00
  %6418 = fadd fast float %6413, 1.000000e+00
  %6419 = fmul fast float %6417, %6418
  %6420 = call float @dx.op.unary.f32(i32 6, float %6419)  ; FAbs(value)
  %6421 = fsub fast float %6420, %6375
  %6422 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %6423 = extractvalue %dx.types.CBufRet.f32 %6422, 2
  %6424 = fmul fast float %6423, %6420
  %6425 = fdiv fast float 1.600000e+02, %6424
  %6426 = fmul fast float %6324, %6324
  %6427 = fmul fast float %6426, 0xBFB5B17960000000
  %6428 = fmul fast float %6427, %6421
  %6429 = fmul fast float %6428, %6425
  %6430 = call float @dx.op.unary.f32(i32 21, float %6429)  ; Exp(value)
  %6431 = fmul fast float %6430, 0x3FF04B2960000000
  %6432 = fsub fast float 0x3FF04B2960000000, %6431
  %6433 = call float @dx.op.unary.f32(i32 7, float %6432)  ; Saturate(value)
  %6434 = fmul fast float %6433, 4.000000e+00
  %6435 = fadd fast float %228, -5.000000e-01
  %6436 = fadd fast float %229, -5.000000e-01
  %6437 = fmul fast float %6433, 0x3FBEB851E0000000
  %6438 = call float @dx.op.unary.f32(i32 7, float %6437)  ; Saturate(value)
  %6439 = fmul fast float %6438, %6435
  %6440 = fmul fast float %6438, %6436
  %6441 = fadd fast float %6439, %6385
  %6442 = fadd fast float %6440, %6386
  %6443 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 212)  ; CBufferLoadLegacy(handle,regIndex)
  %6444 = extractvalue %dx.types.CBufRet.i32 %6443, 0
  %6445 = icmp eq i32 %6444, 0
  br i1 %6445, label %6451, label %6446, !dx.controlflow.hints !90

; <label>:6446                                    ; preds = %6229
  %6447 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %40, float %6441, float %6442, float undef, float undef, i32 0, i32 0, i32 undef, float %6434)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6448 = extractvalue %dx.types.ResRet.f32 %6447, 0
  %6449 = extractvalue %dx.types.ResRet.f32 %6447, 1
  %6450 = extractvalue %dx.types.ResRet.f32 %6447, 2
  br label %6456

; <label>:6451                                    ; preds = %6229
  %6452 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %42, float %6441, float %6442, float undef, float undef, i32 0, i32 0, i32 undef, float %6434)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6453 = extractvalue %dx.types.ResRet.f32 %6452, 0
  %6454 = extractvalue %dx.types.ResRet.f32 %6452, 1
  %6455 = extractvalue %dx.types.ResRet.f32 %6452, 2
  br label %6456

; <label>:6456                                    ; preds = %6451, %6446
  %6457 = phi float [ %6448, %6446 ], [ %6453, %6451 ]
  %6458 = phi float [ %6449, %6446 ], [ %6454, %6451 ]
  %6459 = phi float [ %6450, %6446 ], [ %6455, %6451 ]
  %6460 = select i1 %215, float 0.000000e+00, float %6458
  %6461 = select i1 %215, float 0.000000e+00, float %6459
  %6462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6463 = extractvalue %dx.types.CBufRet.f32 %6462, 1
  %6464 = fmul fast float %6457, %6281
  %6465 = fmul fast float %6464, %6463
  %6466 = fmul fast float %6460, %6282
  %6467 = fmul fast float %6466, %6463
  %6468 = fmul fast float %6461, %6283
  %6469 = fmul fast float %6468, %6463
  %6470 = fadd fast float %6325, %5049
  %6471 = fadd fast float %6470, %6338
  %6472 = fadd fast float %6471, %6465
  %6473 = fmul fast float %6472, %5062
  %6474 = fadd fast float %6326, %5050
  %6475 = fadd fast float %6474, %6341
  %6476 = fadd fast float %6475, %6467
  %6477 = fmul fast float %6476, %5062
  %6478 = fadd fast float %6327, %5051
  %6479 = fadd fast float %6478, %6344
  %6480 = fadd fast float %6479, %6469
  %6481 = fmul fast float %6480, %5062
  %6482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6483 = extractvalue %dx.types.CBufRet.f32 %6482, 3
  %6484 = fcmp fast oeq float %6483, 0.000000e+00
  br i1 %6484, label %8088, label %6485

; <label>:6485                                    ; preds = %6456
  %6486 = extractvalue %dx.types.CBufRet.f32 %6482, 0
  %6487 = extractvalue %dx.types.CBufRet.f32 %6482, 1
  %6488 = extractvalue %dx.types.CBufRet.f32 %6482, 2
  %6489 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6490 = extractvalue %dx.types.CBufRet.f32 %6489, 0
  %6491 = extractvalue %dx.types.CBufRet.f32 %6489, 1
  %6492 = extractvalue %dx.types.CBufRet.f32 %6489, 2
  %6493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6494 = extractvalue %dx.types.CBufRet.f32 %6493, 0
  %6495 = extractvalue %dx.types.CBufRet.f32 %6493, 1
  %6496 = call float @dx.op.dot3.f32(i32 55, float %6490, float %6491, float %6492, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6497 = select i1 %215, float %6494, float %6490
  %6498 = select i1 %215, float %6496, float %6491
  %6499 = select i1 %215, float %6495, float %6492
  %6500 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6501 = extractvalue %dx.types.CBufRet.f32 %6500, 2
  %6502 = fmul fast float %6501, %106
  %6503 = fmul fast float %6501, %107
  %6504 = fmul fast float %6501, %108
  %6505 = fadd fast float %6502, %154
  %6506 = fadd fast float %6503, %155
  %6507 = fadd fast float %6504, %156
  %6508 = fcmp fast olt float %6483, 0.000000e+00
  br i1 %6508, label %7604, label %6509

; <label>:6509                                    ; preds = %6485
  %6510 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6511 = extractvalue %dx.types.CBufRet.f32 %6510, 0
  %6512 = extractvalue %dx.types.CBufRet.f32 %6510, 1
  %6513 = extractvalue %dx.types.CBufRet.f32 %6510, 2
  %6514 = extractvalue %dx.types.CBufRet.f32 %6510, 3
  %6515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6516 = extractvalue %dx.types.CBufRet.f32 %6515, 0
  %6517 = extractvalue %dx.types.CBufRet.f32 %6515, 1
  %6518 = extractvalue %dx.types.CBufRet.f32 %6515, 2
  %6519 = extractvalue %dx.types.CBufRet.f32 %6515, 3
  %6520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6521 = extractvalue %dx.types.CBufRet.f32 %6520, 0
  %6522 = extractvalue %dx.types.CBufRet.f32 %6520, 1
  %6523 = extractvalue %dx.types.CBufRet.f32 %6520, 2
  %6524 = extractvalue %dx.types.CBufRet.f32 %6520, 3
  %6525 = fmul fast float %6511, %6505
  %6526 = call float @dx.op.tertiary.f32(i32 46, float %6506, float %6512, float %6525)  ; FMad(a,b,c)
  %6527 = call float @dx.op.tertiary.f32(i32 46, float %6507, float %6513, float %6526)  ; FMad(a,b,c)
  %6528 = fadd fast float %6527, %6514
  %6529 = fmul fast float %6516, %6505
  %6530 = call float @dx.op.tertiary.f32(i32 46, float %6506, float %6517, float %6529)  ; FMad(a,b,c)
  %6531 = call float @dx.op.tertiary.f32(i32 46, float %6507, float %6518, float %6530)  ; FMad(a,b,c)
  %6532 = fadd fast float %6531, %6519
  %6533 = fmul fast float %6521, %6505
  %6534 = call float @dx.op.tertiary.f32(i32 46, float %6506, float %6522, float %6533)  ; FMad(a,b,c)
  %6535 = call float @dx.op.tertiary.f32(i32 46, float %6507, float %6523, float %6534)  ; FMad(a,b,c)
  %6536 = fadd fast float %6535, %6524
  %6537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6538 = extractvalue %dx.types.CBufRet.f32 %6537, 0
  %6539 = extractvalue %dx.types.CBufRet.f32 %6537, 1
  %6540 = extractvalue %dx.types.CBufRet.f32 %6537, 3
  %6541 = fmul fast float %6540, %6528
  %6542 = fmul fast float %6540, %6532
  %6543 = fadd fast float %6541, %6538
  %6544 = fadd fast float %6542, %6539
  %6545 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6546 = extractvalue %dx.types.CBufRet.f32 %6545, 0
  %6547 = extractvalue %dx.types.CBufRet.f32 %6545, 1
  %6548 = extractvalue %dx.types.CBufRet.f32 %6545, 3
  %6549 = fmul fast float %6548, %6528
  %6550 = fmul fast float %6548, %6532
  %6551 = fadd fast float %6549, %6546
  %6552 = fadd fast float %6550, %6547
  %6553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6554 = extractvalue %dx.types.CBufRet.f32 %6553, 1
  %6555 = fsub fast float %6554, %6536
  %6556 = extractvalue %dx.types.CBufRet.f32 %6553, 2
  %6557 = fmul fast float %6555, %6556
  %6558 = fsub fast float 1.000000e+00, %6557
  %6559 = call float @dx.op.unary.f32(i32 7, float %6558)  ; Saturate(value)
  %6560 = extractvalue %dx.types.CBufRet.f32 %6545, 2
  %6561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6562 = extractvalue %dx.types.CBufRet.f32 %6561, 2
  %6563 = fadd fast float %6562, %6560
  %6564 = fcmp fast ogt float %6563, 0.000000e+00
  br i1 %6564, label %6565, label %6589

; <label>:6565                                    ; preds = %6509
  %6566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6567 = extractvalue %dx.types.CBufRet.f32 %6566, 0
  %6568 = extractvalue %dx.types.CBufRet.f32 %6566, 1
  %6569 = fsub fast float %6551, %6567
  %6570 = fsub fast float %6552, %6568
  %6571 = fcmp fast olt float %6569, 0.000000e+00
  %6572 = fcmp fast olt float %6570, 0.000000e+00
  %6573 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6574 = extractvalue %dx.types.CBufRet.f32 %6573, 0
  %6575 = extractvalue %dx.types.CBufRet.f32 %6573, 1
  %6576 = extractvalue %dx.types.CBufRet.f32 %6573, 2
  %6577 = extractvalue %dx.types.CBufRet.f32 %6573, 3
  %6578 = select i1 %6571, float %6574, float %6576
  %6579 = select i1 %6572, float %6575, float %6577
  %6580 = fmul fast float %6578, %6569
  %6581 = fmul fast float %6579, %6570
  %6582 = call float @dx.op.unary.f32(i32 6, float %6580)  ; FAbs(value)
  %6583 = call float @dx.op.unary.f32(i32 6, float %6581)  ; FAbs(value)
  %6584 = extractvalue %dx.types.CBufRet.f32 %6500, 0
  %6585 = call float @dx.op.binary.f32(i32 35, float %6582, float %6583)  ; FMax(a,b)
  %6586 = fsub fast float %6584, %6585
  %6587 = call float @dx.op.unary.f32(i32 7, float %6586)  ; Saturate(value)
  %6588 = fmul fast float %6587, %6559
  br label %6589

; <label>:6589                                    ; preds = %6565, %6509
  %6590 = phi float [ %6588, %6565 ], [ 0.000000e+00, %6509 ]
  %6591 = extractvalue %dx.types.CBufRet.f32 %6537, 2
  %6592 = extractvalue %dx.types.CBufRet.f32 %6561, 1
  %6593 = fadd fast float %6592, %6591
  %6594 = fcmp fast ogt float %6593, 0.000000e+00
  %6595 = extractvalue %dx.types.CBufRet.f32 %6500, 0
  br i1 %6594, label %6596, label %6619

; <label>:6596                                    ; preds = %6589
  %6597 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6598 = extractvalue %dx.types.CBufRet.f32 %6597, 0
  %6599 = extractvalue %dx.types.CBufRet.f32 %6597, 1
  %6600 = fsub fast float %6543, %6598
  %6601 = fsub fast float %6544, %6599
  %6602 = fcmp fast olt float %6600, 0.000000e+00
  %6603 = fcmp fast olt float %6601, 0.000000e+00
  %6604 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6605 = extractvalue %dx.types.CBufRet.f32 %6604, 0
  %6606 = extractvalue %dx.types.CBufRet.f32 %6604, 1
  %6607 = extractvalue %dx.types.CBufRet.f32 %6604, 2
  %6608 = extractvalue %dx.types.CBufRet.f32 %6604, 3
  %6609 = select i1 %6602, float %6605, float %6607
  %6610 = select i1 %6603, float %6606, float %6608
  %6611 = fmul fast float %6609, %6600
  %6612 = fmul fast float %6610, %6601
  %6613 = call float @dx.op.unary.f32(i32 6, float %6611)  ; FAbs(value)
  %6614 = call float @dx.op.unary.f32(i32 6, float %6612)  ; FAbs(value)
  %6615 = call float @dx.op.binary.f32(i32 35, float %6613, float %6614)  ; FMax(a,b)
  %6616 = fsub fast float %6595, %6615
  %6617 = call float @dx.op.unary.f32(i32 7, float %6616)  ; Saturate(value)
  %6618 = fmul fast float %6617, %6559
  br label %6619

; <label>:6619                                    ; preds = %6596, %6589
  %6620 = phi float [ %6618, %6596 ], [ 0.000000e+00, %6589 ]
  %6621 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6622 = extractvalue %dx.types.CBufRet.f32 %6621, 1
  %6623 = call float @dx.op.unary.f32(i32 7, float %6622)  ; Saturate(value)
  %6624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6625 = extractvalue %dx.types.CBufRet.f32 %6624, 0
  %6626 = extractvalue %dx.types.CBufRet.f32 %6624, 1
  %6627 = fsub fast float %6528, %6625
  %6628 = fsub fast float %6532, %6626
  %6629 = fcmp fast olt float %6627, 0.000000e+00
  %6630 = fcmp fast olt float %6628, 0.000000e+00
  %6631 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6632 = extractvalue %dx.types.CBufRet.f32 %6631, 0
  %6633 = extractvalue %dx.types.CBufRet.f32 %6631, 1
  %6634 = extractvalue %dx.types.CBufRet.f32 %6631, 2
  %6635 = extractvalue %dx.types.CBufRet.f32 %6631, 3
  %6636 = select i1 %6629, float %6632, float %6634
  %6637 = select i1 %6630, float %6633, float %6635
  %6638 = fmul fast float %6636, %6627
  %6639 = fmul fast float %6637, %6628
  %6640 = call float @dx.op.unary.f32(i32 6, float %6638)  ; FAbs(value)
  %6641 = call float @dx.op.unary.f32(i32 6, float %6639)  ; FAbs(value)
  %6642 = call float @dx.op.binary.f32(i32 35, float %6640, float %6641)  ; FMax(a,b)
  %6643 = fsub fast float %6595, %6642
  %6644 = call float @dx.op.unary.f32(i32 7, float %6643)  ; Saturate(value)
  %6645 = call float @dx.op.binary.f32(i32 36, float %6644, float %6623)  ; FMin(a,b)
  %6646 = fmul fast float %6645, %6559
  %6647 = fsub fast float %6620, %6646
  %6648 = fsub fast float %6590, %6620
  %6649 = fsub fast float %6648, %6646
  %6650 = call float @dx.op.binary.f32(i32 35, float %6620, float %6590)  ; FMax(a,b)
  %6651 = call float @dx.op.binary.f32(i32 35, float %6646, float %6650)  ; FMax(a,b)
  %6652 = fcmp fast olt float %6651, 1.000000e+00
  br i1 %6652, label %6653, label %7051, !dx.controlflow.hints !91

; <label>:6653                                    ; preds = %6619
  %6654 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6655 = extractvalue %dx.types.CBufRet.f32 %6654, 0
  %6656 = fcmp fast une float %6655, 0.000000e+00
  br i1 %6656, label %6657, label %7051, !dx.controlflow.hints !92

; <label>:6657                                    ; preds = %6653
  %6658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6659 = extractvalue %dx.types.CBufRet.f32 %6658, 0
  %6660 = extractvalue %dx.types.CBufRet.f32 %6658, 1
  %6661 = extractvalue %dx.types.CBufRet.f32 %6658, 2
  %6662 = extractvalue %dx.types.CBufRet.f32 %6658, 3
  %6663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6664 = extractvalue %dx.types.CBufRet.f32 %6663, 0
  %6665 = extractvalue %dx.types.CBufRet.f32 %6663, 1
  %6666 = extractvalue %dx.types.CBufRet.f32 %6663, 2
  %6667 = extractvalue %dx.types.CBufRet.f32 %6663, 3
  %6668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6669 = extractvalue %dx.types.CBufRet.f32 %6668, 0
  %6670 = extractvalue %dx.types.CBufRet.f32 %6668, 1
  %6671 = extractvalue %dx.types.CBufRet.f32 %6668, 2
  %6672 = extractvalue %dx.types.CBufRet.f32 %6668, 3
  %6673 = fmul fast float %6659, %6505
  %6674 = call float @dx.op.tertiary.f32(i32 46, float %6506, float %6660, float %6673)  ; FMad(a,b,c)
  %6675 = call float @dx.op.tertiary.f32(i32 46, float %6507, float %6661, float %6674)  ; FMad(a,b,c)
  %6676 = fadd fast float %6675, %6662
  %6677 = fmul fast float %6664, %6505
  %6678 = call float @dx.op.tertiary.f32(i32 46, float %6506, float %6665, float %6677)  ; FMad(a,b,c)
  %6679 = call float @dx.op.tertiary.f32(i32 46, float %6507, float %6666, float %6678)  ; FMad(a,b,c)
  %6680 = fadd fast float %6679, %6667
  %6681 = fmul fast float %6669, %6505
  %6682 = call float @dx.op.tertiary.f32(i32 46, float %6506, float %6670, float %6681)  ; FMad(a,b,c)
  %6683 = call float @dx.op.tertiary.f32(i32 46, float %6507, float %6671, float %6682)  ; FMad(a,b,c)
  %6684 = fadd fast float %6683, %6672
  %6685 = fcmp fast oge float %6676, 1.000000e+00
  %6686 = fcmp fast oge float %6680, 1.000000e+00
  %6687 = or i1 %6685, %6686
  %6688 = fcmp fast olt float %6676, 0.000000e+00
  %6689 = fcmp fast olt float %6680, 0.000000e+00
  %6690 = or i1 %6688, %6689
  %6691 = or i1 %6687, %6690
  br i1 %6691, label %7051, label %6692, !dx.controlflow.hints !93

; <label>:6692                                    ; preds = %6657
  %6693 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6694 = extractvalue %dx.types.CBufRet.f32 %6693, 0
  %6695 = extractvalue %dx.types.CBufRet.f32 %6693, 1
  %6696 = extractvalue %dx.types.CBufRet.f32 %6693, 2
  %6697 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6698 = extractvalue %dx.types.CBufRet.i32 %6697, 2
  %6699 = uitofp i32 %6698 to float
  %6700 = extractvalue %dx.types.CBufRet.i32 %6697, 3
  %6701 = uitofp i32 %6700 to float
  %6702 = extractvalue %dx.types.CBufRet.f32 %6693, 3
  %6703 = fmul fast float %6702, 2.000000e+00
  %6704 = fsub fast float %6676, %6694
  %6705 = fsub fast float %6680, %6695
  %6706 = fmul fast float %6703, %6704
  %6707 = fmul fast float %6703, %6705
  %6708 = fdiv fast float 1.000000e+00, %6488
  %6709 = fmul fast float %6707, %6708
  %6710 = call float @dx.op.unary.f32(i32 6, float %6709)  ; FAbs(value)
  %6711 = fmul fast float %6696, %6507
  %6712 = fmul fast float %6711, %6703
  %6713 = call float @dx.op.unary.f32(i32 6, float %6712)  ; FAbs(value)
  %6714 = call float @dx.op.unary.f32(i32 6, float %6706)  ; FAbs(value)
  %6715 = call float @dx.op.binary.f32(i32 35, float %6713, float %6710)  ; FMax(a,b)
  %6716 = call float @dx.op.binary.f32(i32 35, float %6714, float %6715)  ; FMax(a,b)
  %6717 = fmul fast float %6716, 2.000000e+00
  %6718 = call float @dx.op.unary.f32(i32 23, float %6717)  ; Log(value)
  %6719 = call float @dx.op.binary.f32(i32 35, float %6718, float %6699)  ; FMax(a,b)
  %6720 = call float @dx.op.unary.f32(i32 22, float %6719)  ; Frc(value)
  %6721 = fadd fast float %6720, 0xBFEA666660000000
  %6722 = fmul fast float %6721, 8.000000e+00
  %6723 = call float @dx.op.unary.f32(i32 7, float %6722)  ; Saturate(value)
  %6724 = call float @dx.op.unary.f32(i32 27, float %6719)  ; Round_ni(value)
  %6725 = fadd fast float %6724, %6723
  %6726 = call float @dx.op.binary.f32(i32 36, float %6725, float %6701)  ; FMin(a,b)
  %6727 = call float @dx.op.unary.f32(i32 27, float %6726)  ; Round_ni(value)
  %6728 = fsub fast float -0.000000e+00, %6727
  %6729 = call float @dx.op.unary.f32(i32 21, float %6728)  ; Exp(value)
  %6730 = fmul fast float %6729, %6703
  %6731 = fmul fast float %6730, %6676
  %6732 = fmul fast float %6730, %6680
  %6733 = fmul fast float %6731, 2.500000e-01
  %6734 = fmul fast float %6732, 2.500000e-01
  %6735 = fadd fast float %6733, 5.000000e-01
  %6736 = fadd fast float %6734, 5.000000e-01
  %6737 = fsub fast float %6701, %6699
  %6738 = fptoui float %6737 to i32
  %6739 = add i32 %6738, 320
  %6740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 %6739)  ; CBufferLoadLegacy(handle,regIndex)
  %6741 = extractvalue %dx.types.CBufRet.f32 %6740, 0
  %6742 = extractvalue %dx.types.CBufRet.f32 %6740, 1
  %6743 = fcmp fast une float %6726, %6701
  %6744 = fsub fast float %6676, %6741
  %6745 = fsub fast float %6680, %6742
  %6746 = call float @dx.op.unary.f32(i32 6, float %6744)  ; FAbs(value)
  %6747 = call float @dx.op.unary.f32(i32 6, float %6745)  ; FAbs(value)
  %6748 = fmul fast float %6746, %6730
  %6749 = fmul fast float %6747, %6730
  %6750 = fcmp fast olt float %6748, 1.000000e+00
  %6751 = fcmp fast olt float %6749, 1.000000e+00
  %6752 = and i1 %6750, %6751
  %6753 = or i1 %6743, %6752
  br i1 %6753, label %6754, label %7051, !dx.controlflow.hints !94

; <label>:6754                                    ; preds = %6692
  %6755 = fmul fast float %6732, 5.000000e-01
  %6756 = fmul fast float %6731, 5.000000e-01
  %6757 = fadd fast float %6755, 5.000000e-01
  %6758 = fadd fast float %6756, 5.000000e-01
  %6759 = sitofp i32 %6698 to float
  %6760 = fsub fast float %6726, %6759
  %6761 = call float @dx.op.unary.f32(i32 27, float %6760)  ; Round_ni(value)
  %6762 = call float @dx.op.unary.f32(i32 22, float %6726)  ; Frc(value)
  %6763 = call float @dx.op.unary.f32(i32 22, float %6758)  ; Frc(value)
  %6764 = call float @dx.op.unary.f32(i32 22, float %6757)  ; Frc(value)
  %6765 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %43, float %6763, float %6764, float %6761, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6766 = extractvalue %dx.types.ResRet.f32 %6765, 0
  %6767 = extractvalue %dx.types.ResRet.f32 %6765, 1
  %6768 = extractvalue %dx.types.ResRet.f32 %6765, 2
  %6769 = extractvalue %dx.types.ResRet.f32 %6765, 3
  %6770 = fcmp fast ogt float %6762, 0.000000e+00
  br i1 %6770, label %6771, label %6792, !dx.controlflow.hints !95

; <label>:6771                                    ; preds = %6754
  %6772 = fadd fast float %6761, 1.000000e+00
  %6773 = call float @dx.op.unary.f32(i32 22, float %6735)  ; Frc(value)
  %6774 = call float @dx.op.unary.f32(i32 22, float %6736)  ; Frc(value)
  %6775 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %43, float %6773, float %6774, float %6772, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6776 = extractvalue %dx.types.ResRet.f32 %6775, 0
  %6777 = extractvalue %dx.types.ResRet.f32 %6775, 1
  %6778 = extractvalue %dx.types.ResRet.f32 %6775, 2
  %6779 = extractvalue %dx.types.ResRet.f32 %6775, 3
  %6780 = fsub fast float %6776, %6766
  %6781 = fsub fast float %6777, %6767
  %6782 = fsub fast float %6778, %6768
  %6783 = fsub fast float %6779, %6769
  %6784 = fmul fast float %6780, %6762
  %6785 = fmul fast float %6781, %6762
  %6786 = fmul fast float %6782, %6762
  %6787 = fmul fast float %6783, %6762
  %6788 = fadd fast float %6784, %6766
  %6789 = fadd fast float %6785, %6767
  %6790 = fadd fast float %6786, %6768
  %6791 = fadd fast float %6787, %6769
  br label %6792

; <label>:6792                                    ; preds = %6771, %6754
  %6793 = phi float [ %6788, %6771 ], [ %6766, %6754 ]
  %6794 = phi float [ %6789, %6771 ], [ %6767, %6754 ]
  %6795 = phi float [ %6790, %6771 ], [ %6768, %6754 ]
  %6796 = phi float [ %6791, %6771 ], [ %6769, %6754 ]
  %6797 = fadd fast float %6793, -5.000000e-01
  %6798 = fadd fast float %6795, -5.000000e-01
  %6799 = fmul fast float %6797, 0xBFD5555560000000
  %6800 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6798, float %6799)  ; FMad(a,b,c)
  %6801 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6794, float 0.000000e+00)  ; FMad(a,b,c)
  %6802 = fadd fast float %6801, %6796
  %6803 = fmul fast float %6797, -7.500000e-01
  %6804 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6798, float %6803)  ; FMad(a,b,c)
  %6805 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6794, float 0.000000e+00)  ; FMad(a,b,c)
  %6806 = fadd fast float %6805, %6796
  %6807 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6808 = extractvalue %dx.types.CBufRet.f32 %6807, 0
  %6809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6810 = extractvalue %dx.types.CBufRet.f32 %6809, 0
  %6811 = extractvalue %dx.types.CBufRet.f32 %6809, 1
  %6812 = extractvalue %dx.types.CBufRet.f32 %6809, 2
  %6813 = extractvalue %dx.types.CBufRet.f32 %6809, 3
  %6814 = fsub fast float %6810, %6800
  %6815 = fsub fast float %6811, %6802
  %6816 = fsub fast float %6812, %6804
  %6817 = fsub fast float %6813, %6806
  %6818 = fmul fast float %6814, %6808
  %6819 = fmul fast float %6815, %6808
  %6820 = fmul fast float %6816, %6808
  %6821 = fmul fast float %6817, %6808
  %6822 = fadd fast float %6818, %6800
  %6823 = fadd fast float %6819, %6802
  %6824 = fadd fast float %6820, %6804
  %6825 = fadd fast float %6821, %6806
  %6826 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6827 = extractvalue %dx.types.ResRet.i32 %6826, 0
  %6828 = and i32 %6827, 536870911
  %6829 = uitofp i32 %6828 to float
  %6830 = fmul fast float %6829, %6676
  %6831 = fmul fast float %6829, %6680
  %6832 = fptoui float %6830 to i32
  %6833 = fptoui float %6831 to i32
  %6834 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6835 = extractvalue %dx.types.ResRet.i32 %6834, 0
  %6836 = and i32 %6835, 31
  %6837 = lshr i32 %6832, %6836
  %6838 = lshr i32 %6833, %6836
  %6839 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6840 = extractvalue %dx.types.ResRet.i32 %6839, 0
  %6841 = and i32 %6840, 31
  %6842 = shl i32 1, %6841
  %6843 = call i32 @dx.op.binary.i32(i32 40, i32 %6842, i32 4)  ; UMin(a,b)
  %6844 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6845 = extractvalue %dx.types.ResRet.i32 %6844, 0
  %6846 = extractvalue %dx.types.ResRet.i32 %6844, 1
  %6847 = icmp eq i32 %6843, 0
  br i1 %6847, label %6889, label %6848

; <label>:6848                                    ; preds = %6792
  br label %6849

; <label>:6849                                    ; preds = %6877, %6848
  %6850 = phi i32 [ %6880, %6877 ], [ 0, %6848 ]
  %6851 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6852 = extractvalue %dx.types.ResRet.i32 %6851, 0
  %6853 = lshr i32 %6852, 16
  %6854 = and i32 %6853, 31
  %6855 = shl i32 %6838, %6854
  %6856 = add i32 %6855, %6837
  %6857 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6858 = extractvalue %dx.types.ResRet.i32 %6857, 0
  %6859 = and i32 %6858, 31
  %6860 = shl i32 %6856, %6859
  %6861 = add i32 %6860, %6850
  %6862 = shl i32 %6861, 2
  %6863 = add i32 %6862, 32
  %6864 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6863, i32 undef)  ; BufferLoad(srv,index,wot)
  %6865 = extractvalue %dx.types.ResRet.i32 %6864, 0
  %6866 = icmp slt i32 %6865, 0
  %6867 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 %6850
  %6868 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 %6850
  %6869 = bitcast float* %6867 to i32*
  %6870 = bitcast float* %6868 to i32*
  br i1 %6866, label %6871, label %6877

; <label>:6871                                    ; preds = %6849
  %6872 = and i32 %6865, 1073741823
  %6873 = add nuw nsw i32 %6872, 20
  %6874 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6873, i32 undef)  ; BufferLoad(srv,index,wot)
  %6875 = extractvalue %dx.types.ResRet.i32 %6874, 0
  %6876 = extractvalue %dx.types.ResRet.i32 %6874, 1
  br label %6877

; <label>:6877                                    ; preds = %6871, %6849
  %6878 = phi i32 [ %6875, %6871 ], [ %6845, %6849 ]
  %6879 = phi i32 [ %6876, %6871 ], [ %6846, %6849 ]
  store i32 %6878, i32* %6869, align 4
  store i32 %6879, i32* %6870, align 4
  %6880 = add nuw i32 %6850, 1
  %6881 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6882 = extractvalue %dx.types.CBufRet.i32 %6881, 2
  %6883 = icmp eq i32 %6882, 0
  %6884 = icmp ugt i32 %6865, -1073741825
  %6885 = and i1 %6884, %6883
  %6886 = icmp ult i32 %6880, %6843
  %6887 = and i1 %6885, %6886
  br i1 %6887, label %6849, label %6888

; <label>:6888                                    ; preds = %6877
  br label %6889

; <label>:6889                                    ; preds = %6888, %6792
  %6890 = phi i32 [ 0, %6792 ], [ %6880, %6888 ]
  %6891 = extractvalue %dx.types.CBufRet.f32 %6654, 2
  %6892 = fptoui float %6891 to i32
  %6893 = icmp eq i32 %6892, 0
  br i1 %6893, label %6945, label %6894

; <label>:6894                                    ; preds = %6889
  br label %6895

; <label>:6895                                    ; preds = %6940, %6894
  %6896 = phi i32 [ %6941, %6940 ], [ %6890, %6894 ]
  %6897 = phi i32 [ %6942, %6940 ], [ 0, %6894 ]
  %6898 = lshr i32 %6897, 2
  %6899 = and i32 %6897, 3
  %6900 = add nuw nsw i32 %6898, 83
  %6901 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 %6900)  ; CBufferLoadLegacy(handle,regIndex)
  %6902 = extractvalue %dx.types.CBufRet.i32 %6901, 0
  %6903 = extractvalue %dx.types.CBufRet.i32 %6901, 1
  %6904 = extractvalue %dx.types.CBufRet.i32 %6901, 2
  %6905 = extractvalue %dx.types.CBufRet.i32 %6901, 3
  %6906 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i32 0, i32 0
  store i32 %6902, i32* %6906, align 4
  %6907 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i32 0, i32 1
  store i32 %6903, i32* %6907, align 4
  %6908 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i32 0, i32 2
  store i32 %6904, i32* %6908, align 4
  %6909 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i32 0, i32 3
  store i32 %6905, i32* %6909, align 4
  %6910 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i32 0, i32 %6899
  %6911 = load i32, i32* %6910, align 4, !tbaa !96, !noalias !100
  %6912 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6913 = extractvalue %dx.types.ResRet.i32 %6912, 0
  %6914 = lshr i32 %6913, 16
  %6915 = and i32 %6914, 31
  %6916 = shl i32 %6838, %6915
  %6917 = add i32 %6916, %6837
  %6918 = shl i32 %6917, 2
  %6919 = add i32 %6918, %6911
  %6920 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6919, i32 undef)  ; BufferLoad(srv,index,wot)
  %6921 = extractvalue %dx.types.ResRet.i32 %6920, 0
  %6922 = icmp eq i32 %6921, 0
  br i1 %6922, label %6940, label %6923

; <label>:6923                                    ; preds = %6895
  %6924 = icmp slt i32 %6921, 0
  %6925 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 %6896
  %6926 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 %6896
  %6927 = bitcast float* %6925 to i32*
  %6928 = bitcast float* %6926 to i32*
  br i1 %6924, label %6929, label %6936

; <label>:6929                                    ; preds = %6923
  %6930 = and i32 %6921, 1073741823
  %6931 = add i32 %6911, 20
  %6932 = add i32 %6931, %6930
  %6933 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6932, i32 undef)  ; BufferLoad(srv,index,wot)
  %6934 = extractvalue %dx.types.ResRet.i32 %6933, 0
  %6935 = extractvalue %dx.types.ResRet.i32 %6933, 1
  br label %6936

; <label>:6936                                    ; preds = %6929, %6923
  %6937 = phi i32 [ %6934, %6929 ], [ %6845, %6923 ]
  %6938 = phi i32 [ %6935, %6929 ], [ %6846, %6923 ]
  store i32 %6937, i32* %6927, align 4
  store i32 %6938, i32* %6928, align 4
  %6939 = add i32 %6896, 1
  br label %6940

; <label>:6940                                    ; preds = %6936, %6895
  %6941 = phi i32 [ %6896, %6895 ], [ %6939, %6936 ]
  %6942 = add nuw i32 %6897, 1
  %6943 = icmp eq i32 %6942, %6892
  br i1 %6943, label %6944, label %6895

; <label>:6944                                    ; preds = %6940
  br label %6945

; <label>:6945                                    ; preds = %6944, %6889
  %6946 = phi i32 [ %6890, %6889 ], [ %6941, %6944 ]
  %6947 = icmp eq i32 %6946, 1
  %6948 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 0
  %6949 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 0
  br i1 %6947, label %6950, label %6953

; <label>:6950                                    ; preds = %6945
  %6951 = load float, float* %6948, align 4
  %6952 = load float, float* %6949, align 4
  br label %6980

; <label>:6953                                    ; preds = %6945
  %6954 = load float, float* %6948, align 4
  %6955 = load float, float* %6949, align 4
  %6956 = fdiv fast float 1.000000e+00, %6955
  %6957 = fsub fast float %6954, %6956
  %6958 = icmp ugt i32 %6946, 1
  br i1 %6958, label %6959, label %6975

; <label>:6959                                    ; preds = %6953
  br label %6960

; <label>:6960                                    ; preds = %6960, %6959
  %6961 = phi float [ %6970, %6960 ], [ %6957, %6959 ]
  %6962 = phi float [ %6971, %6960 ], [ %6954, %6959 ]
  %6963 = phi i32 [ %6972, %6960 ], [ 1, %6959 ]
  %6964 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 %6963
  %6965 = load float, float* %6964, align 4
  %6966 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 %6963
  %6967 = load float, float* %6966, align 4
  %6968 = fdiv fast float 1.000000e+00, %6967
  %6969 = fsub fast float %6965, %6968
  %6970 = call float @dx.op.binary.f32(i32 36, float %6961, float %6969)  ; FMin(a,b)
  %6971 = call float @dx.op.binary.f32(i32 35, float %6962, float %6965)  ; FMax(a,b)
  %6972 = add nuw i32 %6963, 1
  %6973 = icmp eq i32 %6972, %6946
  br i1 %6973, label %6974, label %6960

; <label>:6974                                    ; preds = %6960
  br label %6975

; <label>:6975                                    ; preds = %6974, %6953
  %6976 = phi float [ %6957, %6953 ], [ %6970, %6974 ]
  %6977 = phi float [ %6954, %6953 ], [ %6971, %6974 ]
  %6978 = fsub fast float %6977, %6976
  %6979 = fdiv fast float 1.000000e+00, %6978
  br label %6980

; <label>:6980                                    ; preds = %6975, %6950
  %6981 = phi float [ %6951, %6950 ], [ %6977, %6975 ]
  %6982 = phi float [ %6952, %6950 ], [ %6979, %6975 ]
  %6983 = fadd fast float %6684, %6981
  %6984 = fmul fast float %6983, %6982
  %6985 = call float @dx.op.unary.f32(i32 7, float %6984)  ; Saturate(value)
  %6986 = fmul fast float %6985, 2.000000e+00
  %6987 = fsub fast float 1.000000e+00, %6986
  %6988 = fmul fast float %6822, %6822
  %6989 = fsub fast float %6823, %6988
  %6990 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6989)  ; FMax(a,b)
  %6991 = fdiv fast float 1.000000e+00, %6990
  %6992 = fmul fast float %6823, %6822
  %6993 = fsub fast float %6824, %6992
  %6994 = fsub fast float %6987, %6822
  %6995 = fmul fast float %6987, %6987
  %6996 = fsub fast float %6995, %6823
  %6997 = fmul fast float %6991, %6993
  %6998 = fmul fast float %6997, %6994
  %6999 = fsub fast float %6996, %6998
  %7000 = fmul fast float %6823, %6823
  %7001 = fsub fast float %6825, %7000
  %7002 = fmul fast float %6993, %6993
  %7003 = fmul fast float %7002, %6991
  %7004 = fsub fast float %7001, %7003
  %7005 = fdiv fast float %6999, %7004
  %7006 = fmul fast float %7005, %6993
  %7007 = fsub fast float %6994, %7006
  %7008 = fmul fast float %7007, %6991
  %7009 = fmul fast float %7008, %6822
  %7010 = fsub fast float 1.000000e+00, %7009
  %7011 = fmul fast float %7005, %6823
  %7012 = fsub fast float %7010, %7011
  %7013 = fmul fast float %7008, %7008
  %7014 = fmul fast float %7005, 4.000000e+00
  %7015 = fmul fast float %7014, %7012
  %7016 = fsub fast float %7013, %7015
  %7017 = call float @dx.op.unary.f32(i32 24, float %7016)  ; Sqrt(value)
  %7018 = fcmp fast oge float %7008, 0.000000e+00
  %7019 = fsub fast float -0.000000e+00, %7017
  %7020 = select i1 %7018, float %7019, float %7017
  %7021 = fsub fast float %7020, %7008
  %7022 = fdiv fast float %7021, %7005
  %7023 = fdiv fast float %7012, %7021
  %7024 = fmul fast float %7022, 5.000000e-01
  %7025 = fmul fast float %7023, 2.000000e+00
  %7026 = select i1 %7018, float %7024, float %7025
  %7027 = select i1 %7018, float %7025, float %7024
  %7028 = call float @dx.op.binary.f32(i32 35, float %7026, float %7027)  ; FMax(a,b)
  %7029 = call float @dx.op.binary.f32(i32 36, float %7026, float %7027)  ; FMin(a,b)
  %7030 = fcmp fast ogt float %6987, %7028
  %7031 = fsub fast float %6987, %7029
  %7032 = fsub fast float %6987, %7028
  %7033 = fsub fast float %7028, %7029
  %7034 = select i1 %7030, float %7032, float %7033
  %7035 = fmul float %7031, %7034
  %7036 = select i1 %7030, float %7029, float %6987
  %7037 = fcmp fast ogt float %6987, %7029
  %7038 = fmul fast float %7036, %7028
  %7039 = fadd fast float %7036, %7028
  %7040 = fmul fast float %7039, %6822
  %7041 = fadd fast float %7038, %6823
  %7042 = fsub fast float %7041, %7040
  %7043 = fdiv fast float %7042, %7035
  %7044 = select i1 %7037, float %7043, float 0.000000e+00
  %7045 = fsub fast float 1.000000e+00, %7044
  %7046 = select i1 %7030, float %7045, float %7044
  %7047 = call float @dx.op.unary.f32(i32 7, float %7046)  ; Saturate(value)
  %7048 = extractvalue %dx.types.CBufRet.f32 %6807, 3
  %7049 = fmul fast float %7048, %7047
  %7050 = fsub fast float 1.000000e+00, %7049
  br label %7051

; <label>:7051                                    ; preds = %6980, %6692, %6657, %6653, %6619
  %7052 = phi float [ 1.000000e+00, %6619 ], [ %7050, %6980 ], [ 1.000000e+00, %6657 ], [ 1.000000e+00, %6692 ], [ 1.000000e+00, %6653 ]
  %7053 = fcmp fast ogt float %6649, 0.000000e+00
  br i1 %7053, label %7054, label %7216, !dx.controlflow.hints !109

; <label>:7054                                    ; preds = %7051
  %7055 = fadd fast float %6562, %6536
  %7056 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7057 = extractvalue %dx.types.CBufRet.f32 %7056, 2
  %7058 = extractvalue %dx.types.CBufRet.f32 %7056, 3
  %7059 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7060 = extractvalue %dx.types.CBufRet.f32 %7059, 2
  %7061 = call float @dx.op.binary.f32(i32 35, float %7055, float 0.000000e+00)  ; FMax(a,b)
  %7062 = fadd fast float %7061, 0x3F10000000000000
  %7063 = fcmp fast oeq float %7060, 0.000000e+00
  br i1 %7063, label %7064, label %7131

; <label>:7064                                    ; preds = %7054
  %7065 = extractvalue %dx.types.CBufRet.f32 %7056, 1
  %7066 = extractvalue %dx.types.CBufRet.f32 %7056, 0
  %7067 = fmul fast float %7066, %6551
  %7068 = fmul fast float %7065, %6552
  %7069 = fadd fast float %7067, 5.000000e-01
  %7070 = call float @dx.op.unary.f32(i32 27, float %7069)  ; Round_ni(value)
  %7071 = fadd fast float %7068, 5.000000e-01
  %7072 = call float @dx.op.unary.f32(i32 27, float %7071)  ; Round_ni(value)
  %7073 = fsub fast float %7069, %7070
  %7074 = fsub fast float %7071, %7072
  %7075 = fadd fast float %7070, -5.000000e-01
  %7076 = fadd fast float %7072, -5.000000e-01
  %7077 = fmul fast float %7073, 2.000000e+00
  %7078 = fsub fast float 3.000000e+00, %7077
  %7079 = fadd fast float %7077, 1.000000e+00
  %7080 = fsub fast float 2.000000e+00, %7073
  %7081 = bitcast float %7078 to i32
  %7082 = sub nsw i32 2129859010, %7081
  %7083 = bitcast i32 %7082 to float
  %7084 = fmul fast float %7083, %7080
  %7085 = fadd fast float %7084, -1.000000e+00
  %7086 = bitcast float %7079 to i32
  %7087 = sub nsw i32 2129859010, %7086
  %7088 = bitcast i32 %7087 to float
  %7089 = fmul fast float %7088, %7073
  %7090 = fadd fast float %7089, 1.000000e+00
  %7091 = fmul fast float %7074, 2.000000e+00
  %7092 = fsub fast float 3.000000e+00, %7091
  %7093 = fadd fast float %7091, 1.000000e+00
  %7094 = fsub fast float 2.000000e+00, %7074
  %7095 = bitcast float %7092 to i32
  %7096 = sub nsw i32 2129859010, %7095
  %7097 = bitcast i32 %7096 to float
  %7098 = fmul fast float %7097, %7094
  %7099 = fadd fast float %7098, -1.000000e+00
  %7100 = bitcast float %7093 to i32
  %7101 = sub nsw i32 2129859010, %7100
  %7102 = bitcast i32 %7101 to float
  %7103 = fmul fast float %7102, %7074
  %7104 = fadd fast float %7103, 1.000000e+00
  %7105 = fadd fast float %7085, %7075
  %7106 = fmul fast float %7105, %7057
  %7107 = fadd fast float %7099, %7076
  %7108 = fmul fast float %7107, %7058
  %7109 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %46, float %7106, float %7108, float undef, float undef, i32 0, i32 0, i32 undef, float %7062)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7110 = extractvalue %dx.types.ResRet.f32 %7109, 0
  %7111 = fmul fast float %7110, %7078
  %7112 = fadd fast float %7090, %7075
  %7113 = fmul fast float %7112, %7057
  %7114 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %46, float %7113, float %7108, float undef, float undef, i32 0, i32 0, i32 undef, float %7062)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7115 = extractvalue %dx.types.ResRet.f32 %7114, 0
  %7116 = fmul fast float %7115, %7079
  %7117 = fadd fast float %7104, %7076
  %7118 = fmul fast float %7117, %7058
  %7119 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %46, float %7106, float %7118, float undef, float undef, i32 0, i32 0, i32 undef, float %7062)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7120 = extractvalue %dx.types.ResRet.f32 %7119, 0
  %7121 = fmul fast float %7120, %7078
  %7122 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %46, float %7113, float %7118, float undef, float undef, i32 0, i32 0, i32 undef, float %7062)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7123 = extractvalue %dx.types.ResRet.f32 %7122, 0
  %7124 = fmul fast float %7123, %7079
  %7125 = fadd fast float %7124, %7121
  %7126 = fmul fast float %7125, %7093
  %7127 = fadd fast float %7116, %7111
  %7128 = fmul fast float %7127, %7092
  %7129 = fadd fast float %7128, %7126
  %7130 = fmul fast float %7129, 6.250000e-02
  br label %7216

; <label>:7131                                    ; preds = %7054
  %7132 = fmul fast float %228, 0x401921FB60000000
  %7133 = call float @dx.op.unary.f32(i32 13, float %7132)  ; Sin(value)
  %7134 = call float @dx.op.unary.f32(i32 12, float %7132)  ; Cos(value)
  %7135 = fsub fast float -0.000000e+00, %7133
  br label %7136

; <label>:7136                                    ; preds = %7185, %7131
  %7137 = phi float [ 0.000000e+00, %7131 ], [ %7180, %7185 ]
  %7138 = phi float [ 0.000000e+00, %7131 ], [ %7182, %7185 ]
  %7139 = phi i32 [ 0, %7131 ], [ %7186, %7185 ]
  %7140 = mul i32 %7139, 2
  %7141 = add i32 0, %7140
  %7142 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7141
  %7143 = load float, float* %7142, align 4
  %7144 = mul i32 %7139, 2
  %7145 = add i32 1, %7144
  %7146 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7145
  %7147 = load float, float* %7146, align 4
  %7148 = fmul fast float %7143, %7134
  %7149 = call float @dx.op.tertiary.f32(i32 46, float %7147, float %7135, float %7148)  ; FMad(a,b,c)
  %7150 = fmul fast float %7143, %7133
  %7151 = call float @dx.op.tertiary.f32(i32 46, float %7147, float %7134, float %7150)  ; FMad(a,b,c)
  %7152 = fmul fast float %7149, %7060
  %7153 = fmul fast float %7151, %7060
  %7154 = fadd fast float %7152, %6551
  %7155 = fadd fast float %7153, %6552
  %7156 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %14, %dx.types.Handle %45, float %7154, float %7155, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7157 = extractvalue %dx.types.ResRet.f32 %7156, 0
  %7158 = extractvalue %dx.types.ResRet.f32 %7156, 1
  %7159 = extractvalue %dx.types.ResRet.f32 %7156, 2
  %7160 = extractvalue %dx.types.ResRet.f32 %7156, 3
  %7161 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 0
  store float %7157, float* %7161, align 4
  %7162 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 1
  store float %7158, float* %7162, align 4
  %7163 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 2
  store float %7159, float* %7163, align 4
  %7164 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 3
  store float %7160, float* %7164, align 4
  %7165 = fsub fast float %7157, %7062
  %7166 = fcmp fast olt float %7165, 0.000000e+00
  %7167 = select i1 %7166, float 0.000000e+00, float 1.000000e+00
  %7168 = fadd fast float %7167, %7137
  %7169 = fmul fast float %7167, %7165
  %7170 = fadd fast float %7169, %7138
  br label %7171

; <label>:7171                                    ; preds = %7171, %7136
  %7172 = phi i32 [ 1, %7136 ], [ %7183, %7171 ]
  %7173 = phi float [ %7170, %7136 ], [ %7182, %7171 ]
  %7174 = phi float [ %7168, %7136 ], [ %7180, %7171 ]
  %7175 = getelementptr [4 x float], [4 x float]* %92, i32 0, i32 %7172
  %7176 = load float, float* %7175, align 4, !tbaa !110, !noalias !100
  %7177 = fsub fast float %7176, %7062
  %7178 = fcmp fast olt float %7177, 0.000000e+00
  %7179 = select i1 %7178, float 0.000000e+00, float 1.000000e+00
  %7180 = fadd fast float %7179, %7174
  %7181 = fmul fast float %7179, %7177
  %7182 = fadd fast float %7181, %7173
  %7183 = add nuw nsw i32 %7172, 1
  %7184 = icmp eq i32 %7183, 4
  br i1 %7184, label %7185, label %7171, !llvm.loop !112

; <label>:7185                                    ; preds = %7171
  %7186 = add nuw nsw i32 %7139, 1
  %7187 = icmp eq i32 %7186, 8
  br i1 %7187, label %7188, label %7136, !llvm.loop !113

; <label>:7188                                    ; preds = %7185
  %7189 = fdiv fast float 1.000000e+00, %7180
  %7190 = fmul fast float %7189, %7182
  %7191 = fdiv fast float 1.000000e+00, %7062
  %7192 = fmul fast float %7190, %7191
  %7193 = call float @dx.op.unary.f32(i32 7, float %7192)  ; Saturate(value)
  %7194 = call float @dx.op.binary.f32(i32 35, float %7193, float 0.000000e+00)  ; FMax(a,b)
  %7195 = fmul fast float %7180, 3.125000e-02
  %7196 = call float @dx.op.unary.f32(i32 7, float %7195)  ; Saturate(value)
  %7197 = fmul fast float %7196, 2.000000e+00
  %7198 = fadd fast float %7197, -1.000000e+00
  %7199 = fcmp fast ogt float %7198, 0.000000e+00
  %7200 = fcmp fast olt float %7198, 0.000000e+00
  %7201 = zext i1 %7199 to i32
  %7202 = zext i1 %7200 to i32
  %7203 = sub nsw i32 %7201, %7202
  %7204 = sitofp i32 %7203 to float
  %7205 = fmul fast float %7204, %7198
  %7206 = fsub fast float 1.000000e+00, %7205
  %7207 = fmul fast float %7206, %7206
  %7208 = fmul fast float %7207, %7206
  %7209 = fsub fast float %7206, %7208
  %7210 = fmul fast float %7209, %7194
  %7211 = fsub fast float 1.000000e+00, %7208
  %7212 = fsub fast float %7211, %7210
  %7213 = fmul fast float %7204, 5.000000e-01
  %7214 = fmul fast float %7213, %7212
  %7215 = fsub fast float 5.000000e-01, %7214
  br label %7216

; <label>:7216                                    ; preds = %7188, %7064, %7051
  %7217 = phi float [ 1.000000e+00, %7051 ], [ %7130, %7064 ], [ %7215, %7188 ]
  %7218 = fcmp fast ogt float %6647, 0.000000e+00
  br i1 %7218, label %7219, label %7383, !dx.controlflow.hints !114

; <label>:7219                                    ; preds = %7216
  %7220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7221 = extractvalue %dx.types.CBufRet.f32 %7220, 1
  %7222 = fadd fast float %7221, %6536
  %7223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7224 = extractvalue %dx.types.CBufRet.f32 %7223, 2
  %7225 = extractvalue %dx.types.CBufRet.f32 %7223, 3
  %7226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7227 = extractvalue %dx.types.CBufRet.f32 %7226, 1
  %7228 = call float @dx.op.binary.f32(i32 35, float %7222, float 0.000000e+00)  ; FMax(a,b)
  %7229 = fadd fast float %7228, 0x3F10000000000000
  %7230 = fcmp fast oeq float %7227, 0.000000e+00
  br i1 %7230, label %7231, label %7298

; <label>:7231                                    ; preds = %7219
  %7232 = extractvalue %dx.types.CBufRet.f32 %7223, 1
  %7233 = extractvalue %dx.types.CBufRet.f32 %7223, 0
  %7234 = fmul fast float %7233, %6543
  %7235 = fmul fast float %7232, %6544
  %7236 = fadd fast float %7234, 5.000000e-01
  %7237 = call float @dx.op.unary.f32(i32 27, float %7236)  ; Round_ni(value)
  %7238 = fadd fast float %7235, 5.000000e-01
  %7239 = call float @dx.op.unary.f32(i32 27, float %7238)  ; Round_ni(value)
  %7240 = fsub fast float %7236, %7237
  %7241 = fsub fast float %7238, %7239
  %7242 = fadd fast float %7237, -5.000000e-01
  %7243 = fadd fast float %7239, -5.000000e-01
  %7244 = fmul fast float %7240, 2.000000e+00
  %7245 = fsub fast float 3.000000e+00, %7244
  %7246 = fadd fast float %7244, 1.000000e+00
  %7247 = fsub fast float 2.000000e+00, %7240
  %7248 = bitcast float %7245 to i32
  %7249 = sub nsw i32 2129859010, %7248
  %7250 = bitcast i32 %7249 to float
  %7251 = fmul fast float %7250, %7247
  %7252 = fadd fast float %7251, -1.000000e+00
  %7253 = bitcast float %7246 to i32
  %7254 = sub nsw i32 2129859010, %7253
  %7255 = bitcast i32 %7254 to float
  %7256 = fmul fast float %7255, %7240
  %7257 = fadd fast float %7256, 1.000000e+00
  %7258 = fmul fast float %7241, 2.000000e+00
  %7259 = fsub fast float 3.000000e+00, %7258
  %7260 = fadd fast float %7258, 1.000000e+00
  %7261 = fsub fast float 2.000000e+00, %7241
  %7262 = bitcast float %7259 to i32
  %7263 = sub nsw i32 2129859010, %7262
  %7264 = bitcast i32 %7263 to float
  %7265 = fmul fast float %7264, %7261
  %7266 = fadd fast float %7265, -1.000000e+00
  %7267 = bitcast float %7260 to i32
  %7268 = sub nsw i32 2129859010, %7267
  %7269 = bitcast i32 %7268 to float
  %7270 = fmul fast float %7269, %7241
  %7271 = fadd fast float %7270, 1.000000e+00
  %7272 = fadd fast float %7252, %7242
  %7273 = fmul fast float %7272, %7224
  %7274 = fadd fast float %7266, %7243
  %7275 = fmul fast float %7274, %7225
  %7276 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %46, float %7273, float %7275, float undef, float undef, i32 0, i32 0, i32 undef, float %7229)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7277 = extractvalue %dx.types.ResRet.f32 %7276, 0
  %7278 = fmul fast float %7277, %7245
  %7279 = fadd fast float %7257, %7242
  %7280 = fmul fast float %7279, %7224
  %7281 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %46, float %7280, float %7275, float undef, float undef, i32 0, i32 0, i32 undef, float %7229)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7282 = extractvalue %dx.types.ResRet.f32 %7281, 0
  %7283 = fmul fast float %7282, %7246
  %7284 = fadd fast float %7271, %7243
  %7285 = fmul fast float %7284, %7225
  %7286 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %46, float %7273, float %7285, float undef, float undef, i32 0, i32 0, i32 undef, float %7229)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7287 = extractvalue %dx.types.ResRet.f32 %7286, 0
  %7288 = fmul fast float %7287, %7245
  %7289 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %46, float %7280, float %7285, float undef, float undef, i32 0, i32 0, i32 undef, float %7229)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7290 = extractvalue %dx.types.ResRet.f32 %7289, 0
  %7291 = fmul fast float %7290, %7246
  %7292 = fadd fast float %7291, %7288
  %7293 = fmul fast float %7292, %7260
  %7294 = fadd fast float %7283, %7278
  %7295 = fmul fast float %7294, %7259
  %7296 = fadd fast float %7295, %7293
  %7297 = fmul fast float %7296, 6.250000e-02
  br label %7383

; <label>:7298                                    ; preds = %7219
  %7299 = fmul fast float %228, 0x401921FB60000000
  %7300 = call float @dx.op.unary.f32(i32 13, float %7299)  ; Sin(value)
  %7301 = call float @dx.op.unary.f32(i32 12, float %7299)  ; Cos(value)
  %7302 = fsub fast float -0.000000e+00, %7300
  br label %7303

; <label>:7303                                    ; preds = %7352, %7298
  %7304 = phi float [ 0.000000e+00, %7298 ], [ %7347, %7352 ]
  %7305 = phi float [ 0.000000e+00, %7298 ], [ %7349, %7352 ]
  %7306 = phi i32 [ 0, %7298 ], [ %7353, %7352 ]
  %7307 = mul i32 %7306, 2
  %7308 = add i32 0, %7307
  %7309 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7308
  %7310 = load float, float* %7309, align 4
  %7311 = mul i32 %7306, 2
  %7312 = add i32 1, %7311
  %7313 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7312
  %7314 = load float, float* %7313, align 4
  %7315 = fmul fast float %7310, %7301
  %7316 = call float @dx.op.tertiary.f32(i32 46, float %7314, float %7302, float %7315)  ; FMad(a,b,c)
  %7317 = fmul fast float %7310, %7300
  %7318 = call float @dx.op.tertiary.f32(i32 46, float %7314, float %7301, float %7317)  ; FMad(a,b,c)
  %7319 = fmul fast float %7316, %7227
  %7320 = fmul fast float %7318, %7227
  %7321 = fadd fast float %7319, %6543
  %7322 = fadd fast float %7320, %6544
  %7323 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %15, %dx.types.Handle %45, float %7321, float %7322, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7324 = extractvalue %dx.types.ResRet.f32 %7323, 0
  %7325 = extractvalue %dx.types.ResRet.f32 %7323, 1
  %7326 = extractvalue %dx.types.ResRet.f32 %7323, 2
  %7327 = extractvalue %dx.types.ResRet.f32 %7323, 3
  %7328 = getelementptr inbounds [4 x float], [4 x float]* %91, i32 0, i32 0
  store float %7324, float* %7328, align 4
  %7329 = getelementptr inbounds [4 x float], [4 x float]* %91, i32 0, i32 1
  store float %7325, float* %7329, align 4
  %7330 = getelementptr inbounds [4 x float], [4 x float]* %91, i32 0, i32 2
  store float %7326, float* %7330, align 4
  %7331 = getelementptr inbounds [4 x float], [4 x float]* %91, i32 0, i32 3
  store float %7327, float* %7331, align 4
  %7332 = fsub fast float %7324, %7229
  %7333 = fcmp fast olt float %7332, 0.000000e+00
  %7334 = select i1 %7333, float 0.000000e+00, float 1.000000e+00
  %7335 = fadd fast float %7334, %7304
  %7336 = fmul fast float %7334, %7332
  %7337 = fadd fast float %7336, %7305
  br label %7338

; <label>:7338                                    ; preds = %7338, %7303
  %7339 = phi i32 [ 1, %7303 ], [ %7350, %7338 ]
  %7340 = phi float [ %7337, %7303 ], [ %7349, %7338 ]
  %7341 = phi float [ %7335, %7303 ], [ %7347, %7338 ]
  %7342 = getelementptr [4 x float], [4 x float]* %91, i32 0, i32 %7339
  %7343 = load float, float* %7342, align 4, !tbaa !110, !noalias !100
  %7344 = fsub fast float %7343, %7229
  %7345 = fcmp fast olt float %7344, 0.000000e+00
  %7346 = select i1 %7345, float 0.000000e+00, float 1.000000e+00
  %7347 = fadd fast float %7346, %7341
  %7348 = fmul fast float %7346, %7344
  %7349 = fadd fast float %7348, %7340
  %7350 = add nuw nsw i32 %7339, 1
  %7351 = icmp eq i32 %7350, 4
  br i1 %7351, label %7352, label %7338, !llvm.loop !112

; <label>:7352                                    ; preds = %7338
  %7353 = add nuw nsw i32 %7306, 1
  %7354 = icmp eq i32 %7353, 8
  br i1 %7354, label %7355, label %7303, !llvm.loop !113

; <label>:7355                                    ; preds = %7352
  %7356 = fdiv fast float 1.000000e+00, %7347
  %7357 = fmul fast float %7356, %7349
  %7358 = fdiv fast float 1.000000e+00, %7229
  %7359 = fmul fast float %7357, %7358
  %7360 = call float @dx.op.unary.f32(i32 7, float %7359)  ; Saturate(value)
  %7361 = call float @dx.op.binary.f32(i32 35, float %7360, float 0.000000e+00)  ; FMax(a,b)
  %7362 = fmul fast float %7347, 3.125000e-02
  %7363 = call float @dx.op.unary.f32(i32 7, float %7362)  ; Saturate(value)
  %7364 = fmul fast float %7363, 2.000000e+00
  %7365 = fadd fast float %7364, -1.000000e+00
  %7366 = fcmp fast ogt float %7365, 0.000000e+00
  %7367 = fcmp fast olt float %7365, 0.000000e+00
  %7368 = zext i1 %7366 to i32
  %7369 = zext i1 %7367 to i32
  %7370 = sub nsw i32 %7368, %7369
  %7371 = sitofp i32 %7370 to float
  %7372 = fmul fast float %7371, %7365
  %7373 = fsub fast float 1.000000e+00, %7372
  %7374 = fmul fast float %7373, %7373
  %7375 = fmul fast float %7374, %7373
  %7376 = fsub fast float %7373, %7375
  %7377 = fmul fast float %7376, %7361
  %7378 = fsub fast float 1.000000e+00, %7375
  %7379 = fsub fast float %7378, %7377
  %7380 = fmul fast float %7371, 5.000000e-01
  %7381 = fmul fast float %7380, %7379
  %7382 = fsub fast float 5.000000e-01, %7381
  br label %7383

; <label>:7383                                    ; preds = %7355, %7231, %7216
  %7384 = phi float [ 1.000000e+00, %7216 ], [ %7297, %7231 ], [ %7382, %7355 ]
  %7385 = fcmp fast ogt float %6646, 0.000000e+00
  br i1 %7385, label %7386, label %7550, !dx.controlflow.hints !115

; <label>:7386                                    ; preds = %7383
  %7387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7388 = extractvalue %dx.types.CBufRet.f32 %7387, 0
  %7389 = fadd fast float %7388, %6536
  %7390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7391 = extractvalue %dx.types.CBufRet.f32 %7390, 2
  %7392 = extractvalue %dx.types.CBufRet.f32 %7390, 3
  %7393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7394 = extractvalue %dx.types.CBufRet.f32 %7393, 0
  %7395 = call float @dx.op.binary.f32(i32 35, float %7389, float 0.000000e+00)  ; FMax(a,b)
  %7396 = fadd fast float %7395, 0x3F10000000000000
  %7397 = fcmp fast oeq float %7394, 0.000000e+00
  br i1 %7397, label %7398, label %7465

; <label>:7398                                    ; preds = %7386
  %7399 = extractvalue %dx.types.CBufRet.f32 %7390, 1
  %7400 = extractvalue %dx.types.CBufRet.f32 %7390, 0
  %7401 = fmul fast float %7400, %6528
  %7402 = fmul fast float %7399, %6532
  %7403 = fadd fast float %7401, 5.000000e-01
  %7404 = call float @dx.op.unary.f32(i32 27, float %7403)  ; Round_ni(value)
  %7405 = fadd fast float %7402, 5.000000e-01
  %7406 = call float @dx.op.unary.f32(i32 27, float %7405)  ; Round_ni(value)
  %7407 = fsub fast float %7403, %7404
  %7408 = fsub fast float %7405, %7406
  %7409 = fadd fast float %7404, -5.000000e-01
  %7410 = fadd fast float %7406, -5.000000e-01
  %7411 = fmul fast float %7407, 2.000000e+00
  %7412 = fsub fast float 3.000000e+00, %7411
  %7413 = fadd fast float %7411, 1.000000e+00
  %7414 = fsub fast float 2.000000e+00, %7407
  %7415 = bitcast float %7412 to i32
  %7416 = sub nsw i32 2129859010, %7415
  %7417 = bitcast i32 %7416 to float
  %7418 = fmul fast float %7417, %7414
  %7419 = fadd fast float %7418, -1.000000e+00
  %7420 = bitcast float %7413 to i32
  %7421 = sub nsw i32 2129859010, %7420
  %7422 = bitcast i32 %7421 to float
  %7423 = fmul fast float %7422, %7407
  %7424 = fadd fast float %7423, 1.000000e+00
  %7425 = fmul fast float %7408, 2.000000e+00
  %7426 = fsub fast float 3.000000e+00, %7425
  %7427 = fadd fast float %7425, 1.000000e+00
  %7428 = fsub fast float 2.000000e+00, %7408
  %7429 = bitcast float %7426 to i32
  %7430 = sub nsw i32 2129859010, %7429
  %7431 = bitcast i32 %7430 to float
  %7432 = fmul fast float %7431, %7428
  %7433 = fadd fast float %7432, -1.000000e+00
  %7434 = bitcast float %7427 to i32
  %7435 = sub nsw i32 2129859010, %7434
  %7436 = bitcast i32 %7435 to float
  %7437 = fmul fast float %7436, %7408
  %7438 = fadd fast float %7437, 1.000000e+00
  %7439 = fadd fast float %7419, %7409
  %7440 = fmul fast float %7439, %7391
  %7441 = fadd fast float %7433, %7410
  %7442 = fmul fast float %7441, %7392
  %7443 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %46, float %7440, float %7442, float undef, float undef, i32 0, i32 0, i32 undef, float %7396)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7444 = extractvalue %dx.types.ResRet.f32 %7443, 0
  %7445 = fmul fast float %7444, %7412
  %7446 = fadd fast float %7424, %7409
  %7447 = fmul fast float %7446, %7391
  %7448 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %46, float %7447, float %7442, float undef, float undef, i32 0, i32 0, i32 undef, float %7396)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7449 = extractvalue %dx.types.ResRet.f32 %7448, 0
  %7450 = fmul fast float %7449, %7413
  %7451 = fadd fast float %7438, %7410
  %7452 = fmul fast float %7451, %7392
  %7453 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %46, float %7440, float %7452, float undef, float undef, i32 0, i32 0, i32 undef, float %7396)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7454 = extractvalue %dx.types.ResRet.f32 %7453, 0
  %7455 = fmul fast float %7454, %7412
  %7456 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %46, float %7447, float %7452, float undef, float undef, i32 0, i32 0, i32 undef, float %7396)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7457 = extractvalue %dx.types.ResRet.f32 %7456, 0
  %7458 = fmul fast float %7457, %7413
  %7459 = fadd fast float %7458, %7455
  %7460 = fmul fast float %7459, %7427
  %7461 = fadd fast float %7450, %7445
  %7462 = fmul fast float %7461, %7426
  %7463 = fadd fast float %7462, %7460
  %7464 = fmul fast float %7463, 6.250000e-02
  br label %7550

; <label>:7465                                    ; preds = %7386
  %7466 = fmul fast float %228, 0x401921FB60000000
  %7467 = call float @dx.op.unary.f32(i32 13, float %7466)  ; Sin(value)
  %7468 = call float @dx.op.unary.f32(i32 12, float %7466)  ; Cos(value)
  %7469 = fsub fast float -0.000000e+00, %7467
  br label %7470

; <label>:7470                                    ; preds = %7519, %7465
  %7471 = phi float [ 0.000000e+00, %7465 ], [ %7514, %7519 ]
  %7472 = phi float [ 0.000000e+00, %7465 ], [ %7516, %7519 ]
  %7473 = phi i32 [ 0, %7465 ], [ %7520, %7519 ]
  %7474 = mul i32 %7473, 2
  %7475 = add i32 0, %7474
  %7476 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7475
  %7477 = load float, float* %7476, align 4
  %7478 = mul i32 %7473, 2
  %7479 = add i32 1, %7478
  %7480 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7479
  %7481 = load float, float* %7480, align 4
  %7482 = fmul fast float %7477, %7468
  %7483 = call float @dx.op.tertiary.f32(i32 46, float %7481, float %7469, float %7482)  ; FMad(a,b,c)
  %7484 = fmul fast float %7477, %7467
  %7485 = call float @dx.op.tertiary.f32(i32 46, float %7481, float %7468, float %7484)  ; FMad(a,b,c)
  %7486 = fmul fast float %7483, %7394
  %7487 = fmul fast float %7485, %7394
  %7488 = fadd fast float %7486, %6528
  %7489 = fadd fast float %7487, %6532
  %7490 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %45, float %7488, float %7489, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7491 = extractvalue %dx.types.ResRet.f32 %7490, 0
  %7492 = extractvalue %dx.types.ResRet.f32 %7490, 1
  %7493 = extractvalue %dx.types.ResRet.f32 %7490, 2
  %7494 = extractvalue %dx.types.ResRet.f32 %7490, 3
  %7495 = getelementptr inbounds [4 x float], [4 x float]* %90, i32 0, i32 0
  store float %7491, float* %7495, align 4
  %7496 = getelementptr inbounds [4 x float], [4 x float]* %90, i32 0, i32 1
  store float %7492, float* %7496, align 4
  %7497 = getelementptr inbounds [4 x float], [4 x float]* %90, i32 0, i32 2
  store float %7493, float* %7497, align 4
  %7498 = getelementptr inbounds [4 x float], [4 x float]* %90, i32 0, i32 3
  store float %7494, float* %7498, align 4
  %7499 = fsub fast float %7491, %7396
  %7500 = fcmp fast olt float %7499, 0.000000e+00
  %7501 = select i1 %7500, float 0.000000e+00, float 1.000000e+00
  %7502 = fadd fast float %7501, %7471
  %7503 = fmul fast float %7501, %7499
  %7504 = fadd fast float %7503, %7472
  br label %7505

; <label>:7505                                    ; preds = %7505, %7470
  %7506 = phi i32 [ 1, %7470 ], [ %7517, %7505 ]
  %7507 = phi float [ %7504, %7470 ], [ %7516, %7505 ]
  %7508 = phi float [ %7502, %7470 ], [ %7514, %7505 ]
  %7509 = getelementptr [4 x float], [4 x float]* %90, i32 0, i32 %7506
  %7510 = load float, float* %7509, align 4, !tbaa !110, !noalias !100
  %7511 = fsub fast float %7510, %7396
  %7512 = fcmp fast olt float %7511, 0.000000e+00
  %7513 = select i1 %7512, float 0.000000e+00, float 1.000000e+00
  %7514 = fadd fast float %7513, %7508
  %7515 = fmul fast float %7513, %7511
  %7516 = fadd fast float %7515, %7507
  %7517 = add nuw nsw i32 %7506, 1
  %7518 = icmp eq i32 %7517, 4
  br i1 %7518, label %7519, label %7505, !llvm.loop !112

; <label>:7519                                    ; preds = %7505
  %7520 = add nuw nsw i32 %7473, 1
  %7521 = icmp eq i32 %7520, 8
  br i1 %7521, label %7522, label %7470, !llvm.loop !113

; <label>:7522                                    ; preds = %7519
  %7523 = fdiv fast float 1.000000e+00, %7514
  %7524 = fmul fast float %7523, %7516
  %7525 = fdiv fast float 1.000000e+00, %7396
  %7526 = fmul fast float %7524, %7525
  %7527 = call float @dx.op.unary.f32(i32 7, float %7526)  ; Saturate(value)
  %7528 = call float @dx.op.binary.f32(i32 35, float %7527, float 0.000000e+00)  ; FMax(a,b)
  %7529 = fmul fast float %7514, 3.125000e-02
  %7530 = call float @dx.op.unary.f32(i32 7, float %7529)  ; Saturate(value)
  %7531 = fmul fast float %7530, 2.000000e+00
  %7532 = fadd fast float %7531, -1.000000e+00
  %7533 = fcmp fast ogt float %7532, 0.000000e+00
  %7534 = fcmp fast olt float %7532, 0.000000e+00
  %7535 = zext i1 %7533 to i32
  %7536 = zext i1 %7534 to i32
  %7537 = sub nsw i32 %7535, %7536
  %7538 = sitofp i32 %7537 to float
  %7539 = fmul fast float %7538, %7532
  %7540 = fsub fast float 1.000000e+00, %7539
  %7541 = fmul fast float %7540, %7540
  %7542 = fmul fast float %7541, %7540
  %7543 = fsub fast float %7540, %7542
  %7544 = fmul fast float %7543, %7528
  %7545 = fsub fast float 1.000000e+00, %7542
  %7546 = fsub fast float %7545, %7544
  %7547 = fmul fast float %7538, 5.000000e-01
  %7548 = fmul fast float %7547, %7546
  %7549 = fsub fast float 5.000000e-01, %7548
  br label %7550

; <label>:7550                                    ; preds = %7522, %7398, %7383
  %7551 = phi float [ 1.000000e+00, %7383 ], [ %7464, %7398 ], [ %7549, %7522 ]
  %7552 = fsub fast float %7217, %7052
  %7553 = fmul fast float %7552, %6590
  %7554 = fadd fast float %7553, %7052
  %7555 = fsub fast float %7384, %7554
  %7556 = fmul fast float %7555, %6620
  %7557 = fadd fast float %7556, %7554
  %7558 = fsub fast float %7551, %7557
  %7559 = fmul fast float %7558, %6646
  %7560 = fadd fast float %7559, %7557
  %7561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %7562 = extractvalue %dx.types.CBufRet.f32 %7561, 2
  %7563 = fcmp fast ogt float %7562, 0.000000e+00
  br i1 %7563, label %7564, label %7604, !dx.controlflow.hints !116

; <label>:7564                                    ; preds = %7550
  %7565 = fcmp fast ugt float %7562, 0.000000e+00
  br i1 %7565, label %7566, label %7601

; <label>:7566                                    ; preds = %7564
  %7567 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %7568 = extractvalue %dx.types.CBufRet.f32 %7567, 0
  %7569 = extractvalue %dx.types.CBufRet.f32 %7567, 1
  %7570 = extractvalue %dx.types.CBufRet.f32 %7567, 2
  %7571 = extractvalue %dx.types.CBufRet.f32 %7567, 3
  %7572 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %7573 = extractvalue %dx.types.CBufRet.f32 %7572, 0
  %7574 = extractvalue %dx.types.CBufRet.f32 %7572, 1
  %7575 = extractvalue %dx.types.CBufRet.f32 %7572, 2
  %7576 = extractvalue %dx.types.CBufRet.f32 %7572, 3
  %7577 = extractvalue %dx.types.CBufRet.f32 %7561, 0
  %7578 = extractvalue %dx.types.CBufRet.f32 %7561, 1
  %7579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7580 = extractvalue %dx.types.CBufRet.f32 %7579, 0
  %7581 = extractvalue %dx.types.CBufRet.f32 %7579, 1
  %7582 = extractvalue %dx.types.CBufRet.f32 %7579, 2
  %7583 = fadd fast float %7580, %6505
  %7584 = fadd fast float %7581, %6506
  %7585 = fadd fast float %7582, %6507
  %7586 = fmul fast float %7583, %7568
  %7587 = call float @dx.op.tertiary.f32(i32 46, float %7569, float %7584, float %7586)  ; FMad(a,b,c)
  %7588 = call float @dx.op.tertiary.f32(i32 46, float %7570, float %7585, float %7587)  ; FMad(a,b,c)
  %7589 = fadd fast float %7588, %7571
  %7590 = fmul fast float %7583, %7573
  %7591 = call float @dx.op.tertiary.f32(i32 46, float %7574, float %7584, float %7590)  ; FMad(a,b,c)
  %7592 = call float @dx.op.tertiary.f32(i32 46, float %7575, float %7585, float %7591)  ; FMad(a,b,c)
  %7593 = fadd fast float %7592, %7576
  %7594 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %11, %dx.types.Handle %41, float %7589, float %7593, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %7595 = extractvalue %dx.types.ResRet.f32 %7594, 0
  %7596 = fmul fast float %7595, %7578
  %7597 = fadd fast float %7596, %7577
  %7598 = call float @dx.op.unary.f32(i32 7, float %7597)  ; Saturate(value)
  %7599 = fmul fast float %7598, %7562
  %7600 = fsub fast float 1.000000e+00, %7599
  br label %7601

; <label>:7601                                    ; preds = %7566, %7564
  %7602 = phi float [ %7600, %7566 ], [ 1.000000e+00, %7564 ]
  %7603 = fmul fast float %7602, %7560
  br label %7604

; <label>:7604                                    ; preds = %7601, %7550, %6485
  %7605 = phi float [ 1.000000e+00, %6485 ], [ %7603, %7601 ], [ %7560, %7550 ]
  %7606 = call float @dx.op.binary.f32(i32 36, float %7605, float %7605)  ; FMin(a,b)
  %7607 = call float @dx.op.binary.f32(i32 36, float %7605, float %7606)  ; FMin(a,b)
  %7608 = fcmp fast ogt float %7607, 0.000000e+00
  br i1 %7608, label %7609, label %7775, !dx.controlflow.hints !117

; <label>:7609                                    ; preds = %7604
  %7610 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7611 = extractvalue %dx.types.CBufRet.f32 %7610, 0
  %7612 = extractvalue %dx.types.CBufRet.f32 %7610, 1
  %7613 = extractvalue %dx.types.CBufRet.f32 %7610, 2
  %7614 = extractvalue %dx.types.CBufRet.f32 %7610, 3
  %7615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7616 = extractvalue %dx.types.CBufRet.f32 %7615, 0
  %7617 = extractvalue %dx.types.CBufRet.f32 %7615, 1
  %7618 = extractvalue %dx.types.CBufRet.f32 %7615, 2
  %7619 = extractvalue %dx.types.CBufRet.f32 %7615, 3
  %7620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7621 = extractvalue %dx.types.CBufRet.f32 %7620, 0
  %7622 = extractvalue %dx.types.CBufRet.f32 %7620, 1
  %7623 = extractvalue %dx.types.CBufRet.f32 %7620, 2
  %7624 = extractvalue %dx.types.CBufRet.f32 %7620, 3
  %7625 = fmul fast float %7611, %6505
  %7626 = call float @dx.op.tertiary.f32(i32 46, float %6506, float %7612, float %7625)  ; FMad(a,b,c)
  %7627 = call float @dx.op.tertiary.f32(i32 46, float %6507, float %7613, float %7626)  ; FMad(a,b,c)
  %7628 = fadd fast float %7627, %7614
  %7629 = fmul fast float %7616, %6505
  %7630 = call float @dx.op.tertiary.f32(i32 46, float %6506, float %7617, float %7629)  ; FMad(a,b,c)
  %7631 = call float @dx.op.tertiary.f32(i32 46, float %6507, float %7618, float %7630)  ; FMad(a,b,c)
  %7632 = fadd fast float %7631, %7619
  %7633 = fmul fast float %7621, %6505
  %7634 = call float @dx.op.tertiary.f32(i32 46, float %6506, float %7622, float %7633)  ; FMad(a,b,c)
  %7635 = call float @dx.op.tertiary.f32(i32 46, float %6507, float %7623, float %7634)  ; FMad(a,b,c)
  %7636 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %7637 = extractvalue %dx.types.CBufRet.f32 %7636, 0
  %7638 = extractvalue %dx.types.CBufRet.f32 %7636, 1
  %7639 = extractvalue %dx.types.CBufRet.f32 %7636, 3
  %7640 = fmul fast float %7639, %7628
  %7641 = fmul fast float %7639, %7632
  %7642 = fadd fast float %7640, %7637
  %7643 = fadd fast float %7641, %7638
  %7644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %7645 = extractvalue %dx.types.CBufRet.f32 %7644, 0
  %7646 = extractvalue %dx.types.CBufRet.f32 %7644, 1
  %7647 = fsub fast float %7642, %7645
  %7648 = fsub fast float %7643, %7646
  %7649 = fcmp fast olt float %7647, 0.000000e+00
  %7650 = fcmp fast olt float %7648, 0.000000e+00
  %7651 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %7652 = extractvalue %dx.types.CBufRet.f32 %7651, 0
  %7653 = extractvalue %dx.types.CBufRet.f32 %7651, 1
  %7654 = extractvalue %dx.types.CBufRet.f32 %7651, 2
  %7655 = extractvalue %dx.types.CBufRet.f32 %7651, 3
  %7656 = select i1 %7649, float %7652, float %7654
  %7657 = select i1 %7650, float %7653, float %7655
  %7658 = fmul fast float %7656, %7647
  %7659 = fmul fast float %7657, %7648
  %7660 = call float @dx.op.unary.f32(i32 6, float %7658)  ; FAbs(value)
  %7661 = call float @dx.op.unary.f32(i32 6, float %7659)  ; FAbs(value)
  %7662 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %7663 = extractvalue %dx.types.CBufRet.f32 %7662, 0
  %7664 = call float @dx.op.binary.f32(i32 35, float %7660, float %7661)  ; FMax(a,b)
  %7665 = fsub fast float %7663, %7664
  %7666 = call float @dx.op.unary.f32(i32 7, float %7665)  ; Saturate(value)
  %7667 = fcmp fast ogt float %7666, 0.000000e+00
  br i1 %7667, label %7668, label %7709, !dx.controlflow.hints !118

; <label>:7668                                    ; preds = %7609
  %7669 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %44, float %7642, float %7643, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7670 = extractvalue %dx.types.ResRet.f32 %7669, 1
  %7671 = fcmp fast ogt float %7670, 0.000000e+00
  br i1 %7671, label %7672, label %7704

; <label>:7672                                    ; preds = %7668
  %7673 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %44, float %7642, float %7643, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7674 = extractvalue %dx.types.ResRet.f32 %7673, 0
  %7675 = extractvalue %dx.types.ResRet.f32 %7673, 1
  %7676 = extractvalue %dx.types.ResRet.f32 %7673, 2
  %7677 = extractvalue %dx.types.ResRet.f32 %7673, 3
  %7678 = fsub fast float 1.000000e+00, %7624
  %7679 = fsub fast float %7678, %7635
  %7680 = fmul fast float %7679, 0x400921FB60000000
  %7681 = fadd fast float %7680, 0x3FF921FB60000000
  %7682 = call float @dx.op.unary.f32(i32 13, float %7681)  ; Sin(value)
  %7683 = fadd fast float %7682, -1.000000e+00
  %7684 = fmul fast float %7683, 0x3FD45F3060000000
  %7685 = fmul fast float %7679, 0x401921FB60000000
  %7686 = fadd fast float %7685, 0x400921FB60000000
  %7687 = call float @dx.op.unary.f32(i32 13, float %7686)  ; Sin(value)
  %7688 = fadd fast float %7687, 0x3E7777A5C0000000
  %7689 = fmul fast float %7688, 0x3FC45F3060000000
  %7690 = fmul fast float %7679, 0x4022D97C80000000
  %7691 = fadd fast float %7690, 0x4012D97C80000000
  %7692 = call float @dx.op.unary.f32(i32 13, float %7691)  ; Sin(value)
  %7693 = fadd fast float %7692, 1.000000e+00
  %7694 = fmul fast float %7693, 0x3FBB2995E0000000
  %7695 = fmul fast float %7679, 0x402921FB60000000
  %7696 = fadd fast float %7695, 0x401921FB60000000
  %7697 = call float @dx.op.unary.f32(i32 13, float %7696)  ; Sin(value)
  %7698 = fadd fast float %7697, 0xBE8777A5C0000000
  %7699 = fmul fast float %7698, 0x3FB45F3060000000
  %7700 = call float @dx.op.dot4.f32(i32 56, float %7674, float %7675, float %7676, float %7677, float %7684, float %7689, float %7694, float %7699)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7701 = fmul fast float %7700, 0xBFF7154760000000
  %7702 = call float @dx.op.unary.f32(i32 21, float %7701)  ; Exp(value)
  %7703 = call float @dx.op.unary.f32(i32 7, float %7702)  ; Saturate(value)
  br label %7704

; <label>:7704                                    ; preds = %7672, %7668
  %7705 = phi float [ %7703, %7672 ], [ 1.000000e+00, %7668 ]
  %7706 = fadd fast float %7705, -1.000000e+00
  %7707 = fmul fast float %7706, %7666
  %7708 = fadd fast float %7707, 1.000000e+00
  br label %7709

; <label>:7709                                    ; preds = %7704, %7609
  %7710 = phi float [ %7708, %7704 ], [ 1.000000e+00, %7609 ]
  %7711 = fmul fast float %7710, %7605
  %7712 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7713 = extractvalue %dx.types.CBufRet.f32 %7712, 0
  %7714 = extractvalue %dx.types.CBufRet.f32 %7712, 1
  %7715 = extractvalue %dx.types.CBufRet.f32 %7712, 2
  %7716 = fadd fast float %7713, %154
  %7717 = fadd fast float %7714, %155
  %7718 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7719 = extractvalue %dx.types.CBufRet.f32 %7718, 1
  %7720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %7721 = extractvalue %dx.types.CBufRet.f32 %7720, 0
  %7722 = extractvalue %dx.types.CBufRet.f32 %7720, 1
  %7723 = extractvalue %dx.types.CBufRet.f32 %7720, 2
  %7724 = fsub fast float -0.000000e+00, %7716
  %7725 = fsub fast float -0.000000e+00, %7717
  %7726 = fsub fast float -0.000000e+00, %156
  %7727 = fsub fast float %7726, %7715
  %7728 = fadd fast float %7727, %7719
  %7729 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7724, float %7725, float %7728)  ; Dot3(ax,ay,az,bx,by,bz)
  %7730 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7721, float %7722, float %7723)  ; Dot3(ax,ay,az,bx,by,bz)
  %7731 = fdiv fast float 1.000000e+00, %7730
  %7732 = fmul fast float %7731, %7729
  %7733 = fmul fast float %7721, %7732
  %7734 = fmul fast float %7722, %7732
  %7735 = fadd fast float %7733, %7716
  %7736 = fadd fast float %7734, %7717
  %7737 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7738 = extractvalue %dx.types.CBufRet.f32 %7737, 0
  %7739 = extractvalue %dx.types.CBufRet.f32 %7737, 1
  %7740 = fsub fast float %7735, %7738
  %7741 = fsub fast float %7736, %7739
  %7742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7743 = extractvalue %dx.types.CBufRet.f32 %7742, 2
  %7744 = extractvalue %dx.types.CBufRet.f32 %7742, 3
  %7745 = fmul fast float %7740, %7743
  %7746 = fmul fast float %7741, %7744
  %7747 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7748 = extractvalue %dx.types.CBufRet.i32 %7747, 3
  %7749 = icmp eq i32 %7748, 0
  br i1 %7749, label %7755, label %7750

; <label>:7750                                    ; preds = %7709
  %7751 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %43, float %7745, float %7746, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7752 = extractvalue %dx.types.ResRet.f32 %7751, 0
  %7753 = extractvalue %dx.types.ResRet.f32 %7751, 1
  %7754 = extractvalue %dx.types.ResRet.f32 %7751, 2
  br label %7760

; <label>:7755                                    ; preds = %7709
  %7756 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %44, float %7745, float %7746, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7757 = extractvalue %dx.types.ResRet.f32 %7756, 0
  %7758 = extractvalue %dx.types.ResRet.f32 %7756, 1
  %7759 = extractvalue %dx.types.ResRet.f32 %7756, 2
  br label %7760

; <label>:7760                                    ; preds = %7755, %7750
  %7761 = phi float [ %7752, %7750 ], [ %7757, %7755 ]
  %7762 = phi float [ %7753, %7750 ], [ %7758, %7755 ]
  %7763 = phi float [ %7754, %7750 ], [ %7759, %7755 ]
  %7764 = extractvalue %dx.types.CBufRet.f32 %7718, 2
  %7765 = fmul fast float %7764, %7761
  %7766 = extractvalue %dx.types.CBufRet.f32 %7718, 0
  %7767 = fsub fast float %7732, %7766
  %7768 = fsub fast float %7767, %7765
  %7769 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7768)  ; FMax(a,b)
  %7770 = fmul fast float %7769, %7762
  %7771 = call float @dx.op.binary.f32(i32 36, float %7763, float %7770)  ; FMin(a,b)
  %7772 = fmul fast float %7771, 0xBFF7154760000000
  %7773 = call float @dx.op.unary.f32(i32 21, float %7772)  ; Exp(value)
  %7774 = fmul fast float %7711, %7773
  br label %7775

; <label>:7775                                    ; preds = %7760, %7604
  %7776 = phi float [ %7774, %7760 ], [ %7605, %7604 ]
  %7777 = call float @dx.op.binary.f32(i32 36, float %7776, float %7776)  ; FMin(a,b)
  %7778 = call float @dx.op.binary.f32(i32 36, float %7776, float %7777)  ; FMin(a,b)
  %7779 = fcmp fast ogt float %7778, 0.000000e+00
  br i1 %7779, label %7780, label %8088, !dx.controlflow.hints !119

; <label>:7780                                    ; preds = %7775
  %7781 = bitcast i32 %5476 to float
  %7782 = fmul fast float %7776, %6497
  %7783 = fmul fast float %7776, %6498
  %7784 = fmul fast float %7776, %6499
  %7785 = fsub fast float %6486, %5404
  %7786 = fsub fast float %6487, %5403
  %7787 = fsub fast float %6488, %5402
  %7788 = call float @dx.op.dot3.f32(i32 55, float %7785, float %7786, float %7787, float %7785, float %7786, float %7787)  ; Dot3(ax,ay,az,bx,by,bz)
  %7789 = call float @dx.op.unary.f32(i32 25, float %7788)  ; Rsqrt(value)
  %7790 = fmul fast float %7789, %7785
  %7791 = fmul fast float %7789, %7786
  %7792 = fmul fast float %7789, %7787
  %7793 = call float @dx.op.dot3.f32(i32 55, float %6486, float %6487, float %6488, float %5408, float %5409, float %5410)  ; Dot3(ax,ay,az,bx,by,bz)
  %7794 = call float @dx.op.dot3.f32(i32 55, float %5401, float %5400, float %5399, float %7790, float %7791, float %7792)  ; Dot3(ax,ay,az,bx,by,bz)
  %7795 = call float @dx.op.unary.f32(i32 7, float %7793)  ; Saturate(value)
  %7796 = fmul fast float %7795, %7795
  %7797 = fmul fast float %7796, %7781
  %7798 = call float @dx.op.unary.f32(i32 7, float %7797)  ; Saturate(value)
  %7799 = fmul fast float %7798, %7795
  %7800 = call float @dx.op.dot3.f32(i32 55, float %5408, float %5409, float %5410, float %7790, float %7791, float %7792)  ; Dot3(ax,ay,az,bx,by,bz)
  %7801 = fmul fast float %7800, %7800
  %7802 = call float @dx.op.unary.f32(i32 6, float %7793)  ; FAbs(value)
  %7803 = fsub fast float 1.000000e+00, %5470
  %7804 = fmul fast float %5452, %5452
  %7805 = fmul fast float %7804, %7803
  %7806 = fadd fast float %7805, %5470
  %7807 = bitcast float %7806 to i32
  %7808 = ashr i32 %7807, 1
  %7809 = add nsw i32 %7808, 532487669
  %7810 = bitcast i32 %7809 to float
  %7811 = fadd fast float %7810, %5452
  %7812 = fmul fast float %5470, %7801
  %7813 = fsub fast float 1.000000e+00, %7801
  %7814 = fadd fast float %7813, %7812
  %7815 = fmul fast float %7802, %7802
  %7816 = fmul fast float %7815, %7803
  %7817 = fadd fast float %7816, %5470
  %7818 = bitcast float %7817 to i32
  %7819 = ashr i32 %7818, 1
  %7820 = add nsw i32 %7819, 532487669
  %7821 = bitcast i32 %7820 to float
  %7822 = fadd fast float %7821, %7802
  %7823 = fmul fast float %7814, %7814
  %7824 = fmul fast float %7823, %7811
  %7825 = fmul fast float %7824, %7822
  %7826 = fdiv fast float 0x3FF0A00000000000, %7825
  %7827 = fmul fast float %7826, %5470
  %7828 = fmul fast float %5712, 0x3FF9999980000000
  %7829 = fsub fast float 5.000000e+00, %7828
  %7830 = call float @dx.op.unary.f32(i32 6, float %7794)  ; FAbs(value)
  %7831 = fsub fast float 1.000000e+00, %7830
  %7832 = fmul fast float %5712, 0x41D9660740000000
  %7833 = fadd fast float %7832, 0xC1EFBF8940000000
  %7834 = bitcast float %7831 to i32
  %7835 = sitofp i32 %7834 to float
  %7836 = fmul fast float %7835, %7829
  %7837 = fadd fast float %7833, %7836
  %7838 = fptosi float %7837 to i32
  %7839 = bitcast i32 %7838 to float
  %7840 = fsub fast float 1.000000e+00, %5405
  %7841 = fsub fast float 1.000000e+00, %5406
  %7842 = fsub fast float 1.000000e+00, %5450
  %7843 = fmul fast float %7839, %7840
  %7844 = fmul fast float %7839, %7841
  %7845 = fmul fast float %7839, %7842
  %7846 = fadd fast float %7843, %5405
  %7847 = fadd fast float %7844, %5406
  %7848 = fadd fast float %7845, %5450
  br i1 %5735, label %7849, label %7872

; <label>:7849                                    ; preds = %7780
  %7850 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %44, float %5065, float %7830, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7851 = extractvalue %dx.types.ResRet.f32 %7850, 0
  %7852 = extractvalue %dx.types.ResRet.f32 %7850, 1
  %7853 = extractvalue %dx.types.ResRet.f32 %7850, 2
  %7854 = fadd fast float %7851, -5.000000e-01
  %7855 = fadd fast float %7852, -5.000000e-01
  %7856 = fadd fast float %7853, -5.000000e-01
  %7857 = fmul fast float %5405, 4.000000e+00
  %7858 = fmul fast float %7857, %7840
  %7859 = fmul fast float %7858, %7854
  %7860 = fmul fast float %5406, 4.000000e+00
  %7861 = fmul fast float %7860, %7841
  %7862 = fmul fast float %7861, %7855
  %7863 = fmul fast float %5450, 4.000000e+00
  %7864 = fmul fast float %7863, %7842
  %7865 = fmul fast float %7864, %7856
  %7866 = fadd fast float %7859, %7846
  %7867 = fadd fast float %7862, %7847
  %7868 = fadd fast float %7865, %7848
  %7869 = call float @dx.op.unary.f32(i32 7, float %7866)  ; Saturate(value)
  %7870 = call float @dx.op.unary.f32(i32 7, float %7867)  ; Saturate(value)
  %7871 = call float @dx.op.unary.f32(i32 7, float %7868)  ; Saturate(value)
  br label %7872

; <label>:7872                                    ; preds = %7849, %7780
  %7873 = phi float [ %7869, %7849 ], [ %7846, %7780 ]
  %7874 = phi float [ %7870, %7849 ], [ %7847, %7780 ]
  %7875 = phi float [ %7871, %7849 ], [ %7848, %7780 ]
  %7876 = fmul fast float %7793, 9.843750e-01
  %7877 = fadd fast float %7876, 7.812500e-03
  %7878 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %44, float %7877, float %5716, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7879 = extractvalue %dx.types.ResRet.f32 %7878, 0
  %7880 = extractvalue %dx.types.ResRet.f32 %7878, 1
  %7881 = extractvalue %dx.types.ResRet.f32 %7878, 2
  %7882 = extractvalue %dx.types.ResRet.f32 %7878, 3
  %7883 = fsub fast float %7881, %7879
  %7884 = fsub fast float %7882, %7880
  %7885 = fmul fast float %7883, %5722
  %7886 = fmul fast float %7884, %5722
  %7887 = fadd fast float %7885, %7879
  %7888 = fadd fast float %7886, %7880
  %7889 = fmul fast float %7887, %5405
  %7890 = fmul fast float %7887, %5406
  %7891 = fmul fast float %7887, %5450
  %7892 = fadd fast float %7889, %7888
  %7893 = fadd fast float %7890, %7888
  %7894 = fadd fast float %7891, %7888
  br i1 %5735, label %7895, label %7918

; <label>:7895                                    ; preds = %7872
  %7896 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %44, float %5065, float %7793, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7897 = extractvalue %dx.types.ResRet.f32 %7896, 0
  %7898 = extractvalue %dx.types.ResRet.f32 %7896, 1
  %7899 = extractvalue %dx.types.ResRet.f32 %7896, 2
  %7900 = fadd fast float %7897, -5.000000e-01
  %7901 = fadd fast float %7898, -5.000000e-01
  %7902 = fadd fast float %7899, -5.000000e-01
  %7903 = fmul fast float %5405, 4.000000e+00
  %7904 = fmul fast float %7903, %7840
  %7905 = fmul fast float %7904, %7900
  %7906 = fmul fast float %5406, 4.000000e+00
  %7907 = fmul fast float %7906, %7841
  %7908 = fmul fast float %7907, %7901
  %7909 = fmul fast float %5450, 4.000000e+00
  %7910 = fmul fast float %7909, %7842
  %7911 = fmul fast float %7910, %7902
  %7912 = fadd fast float %7905, %7892
  %7913 = fadd fast float %7908, %7893
  %7914 = fadd fast float %7911, %7894
  %7915 = call float @dx.op.unary.f32(i32 7, float %7912)  ; Saturate(value)
  %7916 = call float @dx.op.unary.f32(i32 7, float %7913)  ; Saturate(value)
  %7917 = call float @dx.op.unary.f32(i32 7, float %7914)  ; Saturate(value)
  br label %7918

; <label>:7918                                    ; preds = %7895, %7872
  %7919 = phi float [ %7915, %7895 ], [ %7892, %7872 ]
  %7920 = phi float [ %7916, %7895 ], [ %7893, %7872 ]
  %7921 = phi float [ %7917, %7895 ], [ %7894, %7872 ]
  %7922 = call float @dx.op.binary.f32(i32 35, float %7920, float %7921)  ; FMax(a,b)
  %7923 = call float @dx.op.binary.f32(i32 35, float %7919, float %7922)  ; FMax(a,b)
  %7924 = fsub fast float 1.000000e+00, %7923
  %7925 = call float @dx.op.binary.f32(i32 35, float %7802, float 0x3F50624DE0000000)  ; FMax(a,b)
  %7926 = fdiv fast float %4419, %7925
  %7927 = fmul fast float %6257, %7926
  %7928 = fmul fast float %6259, %7926
  %7929 = fmul fast float %6261, %7926
  %7930 = call float @dx.op.unary.f32(i32 21, float %7927)  ; Exp(value)
  %7931 = call float @dx.op.unary.f32(i32 21, float %7928)  ; Exp(value)
  %7932 = call float @dx.op.unary.f32(i32 21, float %7929)  ; Exp(value)
  %7933 = call float @dx.op.unary.f32(i32 7, float %7930)  ; Saturate(value)
  %7934 = call float @dx.op.unary.f32(i32 7, float %7931)  ; Saturate(value)
  %7935 = call float @dx.op.unary.f32(i32 7, float %7932)  ; Saturate(value)
  %7936 = select i1 %6254, float %7933, float 0.000000e+00
  %7937 = select i1 %6255, float %7934, float 0.000000e+00
  %7938 = select i1 %6256, float %7935, float 0.000000e+00
  %7939 = fsub fast float -0.000000e+00, %5408
  %7940 = fsub fast float -0.000000e+00, %5409
  %7941 = fsub fast float -0.000000e+00, %5410
  %7942 = call float @dx.op.dot3.f32(i32 55, float %6486, float %6487, float %6488, float %7939, float %7940, float %7941)  ; Dot3(ax,ay,az,bx,by,bz)
  %7943 = call float @dx.op.unary.f32(i32 7, float %7942)  ; Saturate(value)
  %7944 = fmul fast float %7943, 9.843750e-01
  %7945 = fadd fast float %7944, 7.812500e-03
  %7946 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %44, float %7945, float %5716, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7947 = extractvalue %dx.types.ResRet.f32 %7946, 0
  %7948 = extractvalue %dx.types.ResRet.f32 %7946, 1
  %7949 = extractvalue %dx.types.ResRet.f32 %7946, 2
  %7950 = extractvalue %dx.types.ResRet.f32 %7946, 3
  %7951 = fsub fast float %7949, %7947
  %7952 = fsub fast float %7950, %7948
  %7953 = fmul fast float %7951, %5722
  %7954 = fmul fast float %7952, %5722
  %7955 = fadd fast float %7953, %7947
  %7956 = fadd fast float %7954, %7948
  %7957 = fmul fast float %7955, %5405
  %7958 = fmul fast float %7955, %5406
  %7959 = fmul fast float %7955, %5450
  %7960 = fadd fast float %7957, %7956
  %7961 = fadd fast float %7958, %7956
  %7962 = fadd fast float %7959, %7956
  br i1 %5735, label %7963, label %7986

; <label>:7963                                    ; preds = %7918
  %7964 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %44, float %5065, float %7943, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7965 = extractvalue %dx.types.ResRet.f32 %7964, 0
  %7966 = extractvalue %dx.types.ResRet.f32 %7964, 1
  %7967 = extractvalue %dx.types.ResRet.f32 %7964, 2
  %7968 = fadd fast float %7965, -5.000000e-01
  %7969 = fadd fast float %7966, -5.000000e-01
  %7970 = fadd fast float %7967, -5.000000e-01
  %7971 = fmul fast float %5405, 4.000000e+00
  %7972 = fmul fast float %7971, %7840
  %7973 = fmul fast float %7972, %7968
  %7974 = fmul fast float %5406, 4.000000e+00
  %7975 = fmul fast float %7974, %7841
  %7976 = fmul fast float %7975, %7969
  %7977 = fmul fast float %5450, 4.000000e+00
  %7978 = fmul fast float %7977, %7842
  %7979 = fmul fast float %7978, %7970
  %7980 = fadd fast float %7973, %7960
  %7981 = fadd fast float %7976, %7961
  %7982 = fadd fast float %7979, %7962
  %7983 = call float @dx.op.unary.f32(i32 7, float %7980)  ; Saturate(value)
  %7984 = call float @dx.op.unary.f32(i32 7, float %7981)  ; Saturate(value)
  %7985 = call float @dx.op.unary.f32(i32 7, float %7982)  ; Saturate(value)
  br label %7986

; <label>:7986                                    ; preds = %7963, %7918
  %7987 = phi float [ %7983, %7963 ], [ %7960, %7918 ]
  %7988 = phi float [ %7984, %7963 ], [ %7961, %7918 ]
  %7989 = phi float [ %7985, %7963 ], [ %7962, %7918 ]
  %7990 = call float @dx.op.binary.f32(i32 35, float %7988, float %7989)  ; FMax(a,b)
  %7991 = call float @dx.op.binary.f32(i32 35, float %7987, float %7990)  ; FMax(a,b)
  %7992 = fsub fast float 1.000000e+00, %7991
  %7993 = fmul fast float %5467, %6321
  %7994 = fadd fast float %6315, %7993
  %7995 = call float @dx.op.unary.f32(i32 7, float %7994)  ; Saturate(value)
  %7996 = fsub fast float %6486, %5458
  %7997 = fsub fast float %6487, %5459
  %7998 = fsub fast float %6488, %5460
  %7999 = call float @dx.op.dot3.f32(i32 55, float %7996, float %7997, float %7998, float %7996, float %7997, float %7998)  ; Dot3(ax,ay,az,bx,by,bz)
  %8000 = call float @dx.op.unary.f32(i32 25, float %7999)  ; Rsqrt(value)
  %8001 = fmul fast float %8000, %7996
  %8002 = fmul fast float %8000, %7997
  %8003 = fmul fast float %8000, %7998
  %8004 = call float @dx.op.dot3.f32(i32 55, float %7939, float %7940, float %7941, float %8001, float %8002, float %8003)  ; Dot3(ax,ay,az,bx,by,bz)
  %8005 = fmul fast float %8004, %8004
  %8006 = call float @dx.op.unary.f32(i32 6, float %7943)  ; FAbs(value)
  %8007 = call float @dx.op.binary.f32(i32 35, float %7995, float 0x3F847AE140000000)  ; FMax(a,b)
  %8008 = fmul fast float %8007, %8007
  %8009 = fmul fast float %8008, %8008
  %8010 = fsub fast float 1.000000e+00, %8009
  %8011 = fmul fast float %7804, %8010
  %8012 = fadd fast float %8011, %8009
  %8013 = bitcast float %8012 to i32
  %8014 = ashr i32 %8013, 1
  %8015 = add nsw i32 %8014, 532487669
  %8016 = bitcast i32 %8015 to float
  %8017 = fadd fast float %8016, %5452
  %8018 = fmul fast float %8009, %8005
  %8019 = fsub fast float 1.000000e+00, %8005
  %8020 = fadd fast float %8019, %8018
  %8021 = fmul fast float %8006, %8006
  %8022 = fmul fast float %8021, %8010
  %8023 = fadd fast float %8022, %8009
  %8024 = bitcast float %8023 to i32
  %8025 = ashr i32 %8024, 1
  %8026 = add nsw i32 %8025, 532487669
  %8027 = bitcast i32 %8026 to float
  %8028 = fadd fast float %8027, %8006
  %8029 = fmul fast float %8020, %8020
  %8030 = fmul fast float %8029, %8017
  %8031 = fmul fast float %8030, %8028
  %8032 = fdiv fast float 0x3FF0A00000000000, %8031
  %8033 = fmul fast float %8032, %8009
  %8034 = fmul fast float %7943, %7936
  %8035 = fmul fast float %7943, %7937
  %8036 = fmul fast float %7943, %7938
  %8037 = fmul fast float %8034, %7992
  %8038 = fmul fast float %8037, %8033
  %8039 = fmul fast float %8035, %7992
  %8040 = fmul fast float %8039, %8033
  %8041 = fmul fast float %8036, %7992
  %8042 = fmul fast float %8041, %8033
  %8043 = fmul fast float %7873, %7827
  %8044 = fmul fast float %7874, %7827
  %8045 = fmul fast float %7875, %7827
  %8046 = fsub fast float 1.000000e+00, %7794
  %8047 = bitcast float %8046 to i32
  %8048 = sitofp i32 %8047 to float
  %8049 = fmul fast float %8048, 5.000000e+00
  %8050 = fadd fast float %8049, 0xC1EFBF8940000000
  %8051 = fptosi float %8050 to i32
  %8052 = bitcast i32 %8051 to float
  %8053 = fmul fast float %8052, %5066
  %8054 = fmul fast float %7924, %8053
  %8055 = fmul fast float %8054, %6249
  %8056 = fmul fast float %8054, %6250
  %8057 = fmul fast float %8054, %6251
  %8058 = fadd fast float %8055, %8043
  %8059 = fadd fast float %8056, %8044
  %8060 = fadd fast float %8057, %8045
  %8061 = fmul fast float %8058, %7799
  %8062 = fmul fast float %8059, %7799
  %8063 = fmul fast float %8060, %7799
  %8064 = fmul fast float %7799, %7782
  %8065 = fmul fast float %8064, %7924
  %8066 = fmul fast float %7799, %7783
  %8067 = fmul fast float %8066, %7924
  %8068 = fmul fast float %7799, %7784
  %8069 = fmul fast float %8068, %7924
  %8070 = fadd fast float %8061, %8038
  %8071 = fadd fast float %8062, %8040
  %8072 = fadd fast float %8063, %8042
  %8073 = fmul fast float %8070, %7782
  %8074 = fmul fast float %8071, %7783
  %8075 = fmul fast float %8072, %7784
  %8076 = fadd fast float %8065, %6233
  %8077 = fmul fast float %8076, %5062
  %8078 = fadd fast float %8067, %6234
  %8079 = fmul fast float %8078, %5062
  %8080 = fadd fast float %8069, %6235
  %8081 = fmul fast float %8080, %5062
  %8082 = fadd fast float %8073, %6472
  %8083 = fmul fast float %8082, %5062
  %8084 = fadd fast float %8074, %6476
  %8085 = fmul fast float %8084, %5062
  %8086 = fadd fast float %8075, %6480
  %8087 = fmul fast float %8086, %5062
  br label %8088

; <label>:8088                                    ; preds = %7986, %7775, %6456
  %8089 = phi float [ %6473, %6456 ], [ %6473, %7775 ], [ %8083, %7986 ]
  %8090 = phi float [ %6477, %6456 ], [ %6477, %7775 ], [ %8085, %7986 ]
  %8091 = phi float [ %6481, %6456 ], [ %6481, %7775 ], [ %8087, %7986 ]
  %8092 = phi float [ %6345, %6456 ], [ %6345, %7775 ], [ %8077, %7986 ]
  %8093 = phi float [ %6346, %6456 ], [ %6346, %7775 ], [ %8079, %7986 ]
  %8094 = phi float [ %6347, %6456 ], [ %6347, %7775 ], [ %8081, %7986 ]
  %8095 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8096 = extractvalue %dx.types.CBufRet.f32 %8095, 0
  %8097 = fmul fast float %8096, %6328
  %8098 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8099 = extractvalue %dx.types.CBufRet.f32 %8098, 3
  %8100 = fsub fast float 1.000000e+00, %5069
  %8101 = call float @dx.op.unary.f32(i32 7, float %8100)  ; Saturate(value)
  %8102 = fadd fast float %8094, %5068
  %8103 = fmul fast float %8102, %5069
  %8104 = fmul fast float %8101, %8099
  %8105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %8106 = extractvalue %dx.types.CBufRet.f32 %8105, 3
  %8107 = fmul fast float %8092, %5411
  %8108 = fmul fast float %8093, %5412
  %8109 = fmul fast float %8094, %5413
  %8110 = fcmp fast ogt float %87, %176
  %8111 = and i1 %8110, %5137
  %8112 = or i1 %5216, %8111
  %8113 = icmp eq i32 %5136, 2
  %8114 = fcmp fast ole float %87, %176
  %8115 = and i1 %8114, %8113
  %8116 = or i1 %8115, %8112
  br i1 %8111, label %8117, label %8371

; <label>:8117                                    ; preds = %8088
  %8118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8119 = extractvalue %dx.types.CBufRet.f32 %8118, 2
  %8120 = extractvalue %dx.types.CBufRet.f32 %8118, 3
  %8121 = fmul fast float %8119, %99
  %8122 = fmul fast float %8120, %100
  %8123 = call float @dx.op.unary.f32(i32 7, float %8121)  ; Saturate(value)
  %8124 = call float @dx.op.unary.f32(i32 7, float %8122)  ; Saturate(value)
  %8125 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %44, float %8123, float %8124, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8126 = extractvalue %dx.types.ResRet.f32 %8125, 0
  %8127 = extractvalue %dx.types.ResRet.f32 %8125, 1
  %8128 = extractvalue %dx.types.ResRet.f32 %8125, 2
  %8129 = extractvalue %dx.types.ResRet.f32 %8125, 3
  %8130 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %44, float %8123, float %8124, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8131 = extractvalue %dx.types.ResRet.f32 %8130, 0
  %8132 = extractvalue %dx.types.ResRet.f32 %8130, 1
  %8133 = extractvalue %dx.types.ResRet.f32 %8130, 2
  %8134 = extractvalue %dx.types.ResRet.f32 %8130, 3
  %8135 = call float @dx.op.binary.f32(i32 35, float %8127, float %8128)  ; FMax(a,b)
  %8136 = call float @dx.op.binary.f32(i32 35, float %8126, float %8135)  ; FMax(a,b)
  %8137 = call float @dx.op.binary.f32(i32 35, float %8136, float %8129)  ; FMax(a,b)
  %8138 = call float @dx.op.binary.f32(i32 36, float %8132, float %8133)  ; FMin(a,b)
  %8139 = call float @dx.op.binary.f32(i32 36, float %8131, float %8138)  ; FMin(a,b)
  %8140 = call float @dx.op.binary.f32(i32 36, float %8139, float %8134)  ; FMin(a,b)
  %8141 = fmul fast float %8137, 2.550000e+02
  %8142 = fadd fast float %8141, 0x3F70101020000000
  %8143 = fptoui float %8142 to i32
  %8144 = fmul fast float %8140, 2.550000e+02
  %8145 = fadd fast float %8144, 0x3F70101020000000
  %8146 = fptoui float %8145 to i32
  %8147 = icmp ult i32 %8143, %8146
  br i1 %8147, label %8148, label %8316

; <label>:8148                                    ; preds = %8117
  %8149 = fcmp fast ogt float %86, 9.843750e-01
  %8150 = fadd fast float %87, -4.000000e+00
  %8151 = select i1 %8149, float -4.000000e+00, float %8150
  %8152 = call float @dx.op.binary.f32(i32 35, float %8151, float 0.000000e+00)  ; FMax(a,b)
  %8153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8154 = extractvalue %dx.types.CBufRet.f32 %8153, 0
  %8155 = fadd fast float %8154, %8152
  %8156 = extractvalue %dx.types.CBufRet.f32 %8153, 2
  %8157 = fmul fast float %8155, %8156
  %8158 = call float @dx.op.unary.f32(i32 23, float %8157)  ; Log(value)
  %8159 = extractvalue %dx.types.CBufRet.f32 %8153, 3
  %8160 = fmul fast float %8159, %8158
  %8161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8162 = extractvalue %dx.types.CBufRet.f32 %8161, 2
  %8163 = fmul fast float %8160, %8162
  %8164 = call float @dx.op.unary.f32(i32 7, float %8163)  ; Saturate(value)
  %8165 = uitofp i32 %8143 to float
  %8166 = uitofp i32 %8146 to float
  %8167 = fadd fast float %8165, 5.000000e-01
  %8168 = fadd fast float %8166, 5.000000e-01
  %8169 = fmul fast float %8162, %8167
  %8170 = fmul fast float %8162, %8168
  %8171 = fadd fast float %8169, 0x3F0FFB4800000000
  %8172 = fadd fast float %8170, 0xBF0FFB4800000000
  %8173 = call float @dx.op.binary.f32(i32 35, float %8164, float %8171)  ; FMax(a,b)
  %8174 = call float @dx.op.binary.f32(i32 36, float %8173, float %8172)  ; FMin(a,b)
  %8175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8176 = extractvalue %dx.types.CBufRet.f32 %8175, 1
  %8177 = extractvalue %dx.types.CBufRet.f32 %8175, 2
  %8178 = extractvalue %dx.types.CBufRet.f32 %8175, 0
  %8179 = fmul fast float %8176, %8174
  %8180 = fadd fast float %8178, %8179
  %8181 = fadd fast float %8178, %8177
  %8182 = fsub fast float %8176, %8177
  %8183 = fadd fast float %8182, %8178
  %8184 = call float @dx.op.binary.f32(i32 35, float %8180, float %8181)  ; FMax(a,b)
  %8185 = call float @dx.op.binary.f32(i32 36, float %8184, float %8183)  ; FMin(a,b)
  %8186 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %42, float %8123, float %8124, float %8185, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8187 = extractvalue %dx.types.ResRet.f32 %8186, 0
  %8188 = extractvalue %dx.types.ResRet.f32 %8186, 1
  %8189 = extractvalue %dx.types.ResRet.f32 %8186, 2
  %8190 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8191 = extractvalue %dx.types.CBufRet.i32 %8190, 0
  %8192 = extractvalue %dx.types.CBufRet.i32 %8190, 1
  %8193 = uitofp i32 %8191 to float
  %8194 = uitofp i32 %8192 to float
  %8195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8196 = extractvalue %dx.types.CBufRet.f32 %8195, 0
  %8197 = extractvalue %dx.types.CBufRet.f32 %8195, 1
  %8198 = fmul fast float %8193, %8123
  %8199 = fmul fast float %8194, %8124
  %8200 = fadd fast float %8198, -5.000000e-01
  %8201 = fadd fast float %8199, -5.000000e-01
  %8202 = call float @dx.op.unary.f32(i32 22, float %8200)  ; Frc(value)
  %8203 = call float @dx.op.unary.f32(i32 22, float %8201)  ; Frc(value)
  %8204 = fmul fast float %8202, %8202
  %8205 = fmul fast float %8204, %8202
  %8206 = fsub fast float 3.000000e+00, %8202
  %8207 = fmul fast float %8204, %8206
  %8208 = fmul fast float %8202, 3.000000e+00
  %8209 = fmul fast float %8205, 3.000000e+00
  %8210 = fmul fast float %8204, 6.000000e+00
  %8211 = fsub fast float %8209, %8210
  %8212 = fadd fast float %8211, 4.000000e+00
  %8213 = fmul fast float %8212, 0x3FC5555560000000
  %8214 = fmul fast float %8205, -3.000000e+00
  %8215 = fadd fast float %8204, %8202
  %8216 = fmul fast float %8215, 3.000000e+00
  %8217 = fadd fast float %8214, 1.000000e+00
  %8218 = fadd fast float %8217, %8216
  %8219 = fmul fast float %8205, 0x3FC5555560000000
  %8220 = fmul fast float %8203, %8203
  %8221 = fmul fast float %8220, %8203
  %8222 = fsub fast float 3.000000e+00, %8203
  %8223 = fmul fast float %8220, %8222
  %8224 = fmul fast float %8203, 3.000000e+00
  %8225 = fmul fast float %8221, 3.000000e+00
  %8226 = fmul fast float %8220, 6.000000e+00
  %8227 = fsub fast float %8225, %8226
  %8228 = fadd fast float %8227, 4.000000e+00
  %8229 = fmul fast float %8228, 0x3FC5555560000000
  %8230 = fmul fast float %8221, -3.000000e+00
  %8231 = fadd fast float %8220, %8203
  %8232 = fmul fast float %8231, 3.000000e+00
  %8233 = fadd fast float %8230, 1.000000e+00
  %8234 = fadd fast float %8233, %8232
  %8235 = fmul fast float %8221, 0x3FC5555560000000
  %8236 = fadd fast float %8202, 1.000000e+00
  %8237 = fsub fast float 1.000000e+00, %8208
  %8238 = fadd fast float %8237, %8207
  %8239 = fadd fast float %8238, %8212
  %8240 = fmul fast float %8239, 0x3FC5555560000000
  %8241 = fdiv fast float %8213, %8240
  %8242 = fsub fast float %8236, %8241
  %8243 = fsub fast float 1.000000e+00, %8202
  %8244 = fadd fast float %8218, %8205
  %8245 = fmul fast float %8244, 0x3FC5555560000000
  %8246 = fdiv fast float %8219, %8245
  %8247 = fadd fast float %8243, %8246
  %8248 = fadd fast float %8203, 1.000000e+00
  %8249 = fsub fast float 1.000000e+00, %8224
  %8250 = fadd fast float %8249, %8223
  %8251 = fadd fast float %8250, %8228
  %8252 = fmul fast float %8251, 0x3FC5555560000000
  %8253 = fdiv fast float %8229, %8252
  %8254 = fsub fast float %8248, %8253
  %8255 = fsub fast float 1.000000e+00, %8203
  %8256 = fadd fast float %8234, %8221
  %8257 = fmul fast float %8256, 0x3FC5555560000000
  %8258 = fdiv fast float %8235, %8257
  %8259 = fadd fast float %8258, %8255
  %8260 = fmul fast float %8242, %8196
  %8261 = fsub fast float %8123, %8260
  %8262 = fmul fast float %8247, %8196
  %8263 = fadd fast float %8262, %8123
  %8264 = fmul fast float %8259, %8197
  %8265 = fadd fast float %8264, %8124
  %8266 = fmul fast float %8254, %8197
  %8267 = fsub fast float %8124, %8266
  %8268 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %8261, float %8267, float %8185, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8269 = extractvalue %dx.types.ResRet.f32 %8268, 0
  %8270 = extractvalue %dx.types.ResRet.f32 %8268, 1
  %8271 = extractvalue %dx.types.ResRet.f32 %8268, 2
  %8272 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %8263, float %8267, float %8185, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8273 = extractvalue %dx.types.ResRet.f32 %8272, 0
  %8274 = extractvalue %dx.types.ResRet.f32 %8272, 1
  %8275 = extractvalue %dx.types.ResRet.f32 %8272, 2
  %8276 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %8261, float %8265, float %8185, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8277 = extractvalue %dx.types.ResRet.f32 %8276, 0
  %8278 = extractvalue %dx.types.ResRet.f32 %8276, 1
  %8279 = extractvalue %dx.types.ResRet.f32 %8276, 2
  %8280 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %8263, float %8265, float %8185, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8281 = extractvalue %dx.types.ResRet.f32 %8280, 0
  %8282 = extractvalue %dx.types.ResRet.f32 %8280, 1
  %8283 = extractvalue %dx.types.ResRet.f32 %8280, 2
  %8284 = fsub fast float %8277, %8269
  %8285 = fsub fast float %8278, %8270
  %8286 = fsub fast float %8279, %8271
  %8287 = fmul fast float %8284, %8257
  %8288 = fmul fast float %8285, %8257
  %8289 = fmul fast float %8286, %8257
  %8290 = fadd fast float %8287, %8269
  %8291 = fadd fast float %8288, %8270
  %8292 = fadd fast float %8289, %8271
  %8293 = fsub fast float %8281, %8273
  %8294 = fsub fast float %8282, %8274
  %8295 = fsub fast float %8283, %8275
  %8296 = fmul fast float %8293, %8257
  %8297 = fmul fast float %8294, %8257
  %8298 = fmul fast float %8295, %8257
  %8299 = fsub fast float %8273, %8290
  %8300 = fadd fast float %8299, %8296
  %8301 = fsub fast float %8274, %8291
  %8302 = fadd fast float %8301, %8297
  %8303 = fsub fast float %8275, %8292
  %8304 = fadd fast float %8303, %8298
  %8305 = fmul fast float %8300, %8245
  %8306 = fmul fast float %8302, %8245
  %8307 = fmul fast float %8304, %8245
  %8308 = fadd fast float %8305, %8290
  %8309 = fadd fast float %8306, %8291
  %8310 = fadd fast float %8307, %8292
  %8311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8312 = extractvalue %dx.types.CBufRet.f32 %8311, 1
  %8313 = fmul fast float %8308, %8312
  %8314 = fmul fast float %8309, %8312
  %8315 = fmul fast float %8310, %8312
  br label %8316

; <label>:8316                                    ; preds = %8148, %8117
  %8317 = phi float [ %8187, %8148 ], [ 1.000000e+00, %8117 ]
  %8318 = phi float [ %8188, %8148 ], [ 1.000000e+00, %8117 ]
  %8319 = phi float [ %8189, %8148 ], [ 1.000000e+00, %8117 ]
  %8320 = phi float [ %8313, %8148 ], [ 0.000000e+00, %8117 ]
  %8321 = phi float [ %8314, %8148 ], [ 0.000000e+00, %8117 ]
  %8322 = phi float [ %8315, %8148 ], [ 0.000000e+00, %8117 ]
  %8323 = call float @dx.op.dot3.f32(i32 55, float %8317, float %8318, float %8319, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8324 = call float @dx.op.dot3.f32(i32 55, float %8320, float %8321, float %8322, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8325 = select i1 %215, float %8323, float %8317
  %8326 = select i1 %215, float %8323, float %8318
  %8327 = select i1 %215, float 1.000000e+00, float %8319
  %8328 = select i1 %215, float %8324, float %8320
  %8329 = select i1 %215, float 0.000000e+00, float %8321
  %8330 = select i1 %215, float 0.000000e+00, float %8322
  %8331 = fmul fast float %8325, %8107
  %8332 = fmul fast float %8326, %8108
  %8333 = fmul fast float %8327, %8109
  %8334 = fadd fast float %8331, %8328
  %8335 = fadd fast float %8332, %8329
  %8336 = fadd fast float %8330, %8333
  %8337 = fmul fast float %8325, %8089
  %8338 = fmul fast float %8326, %8090
  %8339 = fmul fast float %8327, %8091
  %8340 = fmul fast float %124, %8119
  %8341 = fmul fast float %126, %8120
  %8342 = fsub fast float 1.000000e+00, %8340
  %8343 = fsub fast float 1.000000e+00, %8341
  %8344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8345 = extractvalue %dx.types.CBufRet.f32 %8344, 0
  %8346 = extractvalue %dx.types.CBufRet.f32 %8344, 1
  %8347 = extractvalue %dx.types.CBufRet.f32 %8344, 2
  %8348 = fmul fast float %8342, %8345
  %8349 = fmul fast float %8342, %8346
  %8350 = fmul fast float %8342, %8347
  %8351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8352 = extractvalue %dx.types.CBufRet.f32 %8351, 0
  %8353 = extractvalue %dx.types.CBufRet.f32 %8351, 1
  %8354 = extractvalue %dx.types.CBufRet.f32 %8351, 2
  %8355 = fmul fast float %8343, %8352
  %8356 = fmul fast float %8343, %8353
  %8357 = fmul fast float %8343, %8354
  %8358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8359 = extractvalue %dx.types.CBufRet.f32 %8358, 0
  %8360 = extractvalue %dx.types.CBufRet.f32 %8358, 1
  %8361 = extractvalue %dx.types.CBufRet.f32 %8358, 2
  %8362 = fadd fast float %8355, %8359
  %8363 = fadd fast float %8362, %8348
  %8364 = fadd fast float %8356, %8360
  %8365 = fadd fast float %8364, %8349
  %8366 = fadd fast float %8357, %8361
  %8367 = fadd fast float %8366, %8350
  %8368 = fmul fast float %8363, %176
  %8369 = fmul fast float %8365, %176
  %8370 = fmul fast float %8367, %176
  br label %8371

; <label>:8371                                    ; preds = %8316, %8088
  %8372 = phi float [ %8368, %8316 ], [ %154, %8088 ]
  %8373 = phi float [ %8369, %8316 ], [ %155, %8088 ]
  %8374 = phi float [ %8370, %8316 ], [ %156, %8088 ]
  %8375 = phi float [ %176, %8316 ], [ %87, %8088 ]
  %8376 = phi float [ %8334, %8316 ], [ %8107, %8088 ]
  %8377 = phi float [ %8335, %8316 ], [ %8108, %8088 ]
  %8378 = phi float [ %8336, %8316 ], [ %8109, %8088 ]
  %8379 = phi float [ %8337, %8316 ], [ %8089, %8088 ]
  %8380 = phi float [ %8338, %8316 ], [ %8090, %8088 ]
  %8381 = phi float [ %8339, %8316 ], [ %8091, %8088 ]
  %8382 = phi float [ %8317, %8316 ], [ 1.000000e+00, %8088 ]
  br i1 %8116, label %9531, label %8383

; <label>:8383                                    ; preds = %8371
  %8384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8385 = extractvalue %dx.types.CBufRet.f32 %8384, 0
  %8386 = extractvalue %dx.types.CBufRet.f32 %8384, 1
  %8387 = extractvalue %dx.types.CBufRet.f32 %8384, 2
  %8388 = extractvalue %dx.types.CBufRet.f32 %8384, 3
  %8389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8390 = extractvalue %dx.types.CBufRet.f32 %8389, 0
  %8391 = extractvalue %dx.types.CBufRet.f32 %8389, 1
  %8392 = extractvalue %dx.types.CBufRet.f32 %8389, 2
  %8393 = extractvalue %dx.types.CBufRet.f32 %8389, 3
  %8394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8395 = extractvalue %dx.types.CBufRet.f32 %8394, 0
  %8396 = extractvalue %dx.types.CBufRet.f32 %8394, 1
  %8397 = extractvalue %dx.types.CBufRet.f32 %8394, 2
  %8398 = extractvalue %dx.types.CBufRet.f32 %8394, 3
  %8399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8400 = extractvalue %dx.types.CBufRet.f32 %8399, 0
  %8401 = extractvalue %dx.types.CBufRet.f32 %8399, 1
  %8402 = extractvalue %dx.types.CBufRet.f32 %8399, 2
  %8403 = extractvalue %dx.types.CBufRet.f32 %8399, 3
  %8404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8405 = extractvalue %dx.types.CBufRet.f32 %8404, 3
  %8406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8407 = extractvalue %dx.types.CBufRet.f32 %8406, 3
  %8408 = extractvalue %dx.types.CBufRet.f32 %8406, 0
  %8409 = extractvalue %dx.types.CBufRet.f32 %8406, 1
  %8410 = extractvalue %dx.types.CBufRet.f32 %8406, 2
  %8411 = fcmp fast olt float %8410, -5.000000e-01
  %8412 = call float @dx.op.dot3.f32(i32 55, float %8372, float %8373, float %8374, float %8372, float %8373, float %8374)  ; Dot3(ax,ay,az,bx,by,bz)
  %8413 = call float @dx.op.unary.f32(i32 25, float %8412)  ; Rsqrt(value)
  %8414 = fmul fast float %8413, %8412
  %8415 = fmul fast float %8413, %8372
  %8416 = fmul fast float %8413, %8373
  %8417 = fmul fast float %8413, %8374
  %8418 = fadd fast float %8414, %8388
  %8419 = call float @dx.op.dot3.f32(i32 55, float %8415, float %8416, float %8417, float %8385, float %8386, float %8387)  ; Dot3(ax,ay,az,bx,by,bz)
  %8420 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8421 = extractvalue %dx.types.CBufRet.i32 %8420, 1
  %8422 = and i32 %8421, 1
  %8423 = icmp ne i32 %8422, 0
  %8424 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8425 = extractvalue %dx.types.CBufRet.f32 %8424, 2
  %8426 = fcmp fast ogt float %8425, 0.000000e+00
  %8427 = and i1 %8423, %8426
  br i1 %8427, label %8428, label %8834, !dx.controlflow.hints !120

; <label>:8428                                    ; preds = %8383
  %8429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8430 = extractvalue %dx.types.CBufRet.f32 %8429, 3
  %8431 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8432 = extractvalue %dx.types.CBufRet.f32 %8431, 2
  %8433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8434 = extractvalue %dx.types.CBufRet.f32 %8433, 2
  %8435 = fsub fast float %8432, %8434
  %8436 = and i32 %8421, 2
  %8437 = extractvalue %dx.types.CBufRet.i32 %8420, 0
  %8438 = call i32 @dx.op.binary.i32(i32 40, i32 %8437, i32 3)  ; UMin(a,b)
  %8439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8440 = extractvalue %dx.types.CBufRet.f32 %8439, 0
  %8441 = extractvalue %dx.types.CBufRet.f32 %8439, 1
  %8442 = extractvalue %dx.types.CBufRet.f32 %8433, 0
  %8443 = extractvalue %dx.types.CBufRet.f32 %8433, 1
  %8444 = fsub fast float %8440, %8442
  %8445 = fsub fast float %8441, %8443
  %8446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8447 = extractvalue %dx.types.CBufRet.f32 %8446, 0
  %8448 = fcmp fast ogt float %8447, 0.000000e+00
  %8449 = fsub fast float -0.000000e+00, %8444
  %8450 = fsub fast float -0.000000e+00, %8445
  %8451 = call float @dx.op.dot2.f32(i32 54, float %8415, float %8416, float %8415, float %8416)  ; Dot2(ax,ay,bx,by)
  %8452 = call float @dx.op.dot2.f32(i32 54, float %8415, float %8416, float %8449, float %8450)  ; Dot2(ax,ay,bx,by)
  %8453 = fmul fast float %8452, 2.000000e+00
  %8454 = call float @dx.op.dot2.f32(i32 54, float %8449, float %8450, float %8449, float %8450)  ; Dot2(ax,ay,bx,by)
  %8455 = fmul fast float %8447, %8447
  %8456 = fsub fast float %8454, %8455
  %8457 = fmul fast float %8453, %8453
  %8458 = fmul fast float %8451, 4.000000e+00
  %8459 = fmul fast float %8458, %8456
  %8460 = fsub fast float %8457, %8459
  %8461 = fcmp fast ogt float %8460, 0.000000e+00
  br i1 %8461, label %8462, label %8477

; <label>:8462                                    ; preds = %8428
  %8463 = fcmp fast ogt float %8453, 0.000000e+00
  %8464 = call float @dx.op.unary.f32(i32 24, float %8460)  ; Sqrt(value)
  %8465 = fsub fast float -0.000000e+00, %8464
  %8466 = select i1 %8463, float %8464, float %8465
  %8467 = fadd fast float %8466, %8453
  %8468 = fmul float %8467, -5.000000e-01
  %8469 = fdiv fast float %8468, %8451
  %8470 = call float @dx.op.binary.f32(i32 35, float %8469, float 0.000000e+00)  ; FMax(a,b)
  %8471 = call float @dx.op.binary.f32(i32 36, float %8414, float %8470)  ; FMin(a,b)
  %8472 = fdiv fast float %8456, %8468
  %8473 = call float @dx.op.binary.f32(i32 35, float %8472, float 0.000000e+00)  ; FMax(a,b)
  %8474 = call float @dx.op.binary.f32(i32 36, float %8414, float %8473)  ; FMin(a,b)
  %8475 = call float @dx.op.binary.f32(i32 36, float %8471, float %8474)  ; FMin(a,b)
  %8476 = call float @dx.op.binary.f32(i32 35, float %8471, float %8474)  ; FMax(a,b)
  br label %8477

; <label>:8477                                    ; preds = %8462, %8428
  %8478 = phi float [ %8476, %8462 ], [ -1.000000e+00, %8428 ]
  %8479 = phi float [ %8475, %8462 ], [ -1.000000e+00, %8428 ]
  %8480 = phi i1 [ true, %8462 ], [ false, %8428 ]
  %8481 = and i1 %8448, %8480
  br i1 %8481, label %8482, label %8484

; <label>:8482                                    ; preds = %8477
  %8483 = fcmp fast oeq float %8479, %8478
  br i1 %8483, label %8787, label %8485

; <label>:8484                                    ; preds = %8477
  br i1 %8448, label %8787, label %8485

; <label>:8485                                    ; preds = %8484, %8482
  %8486 = phi float [ %8414, %8484 ], [ %8478, %8482 ]
  %8487 = phi float [ 0.000000e+00, %8484 ], [ %8479, %8482 ]
  %8488 = icmp ne i32 %8436, 0
  %8489 = fmul fast float %8486, %8417
  %8490 = fadd fast float %8489, %8430
  %8491 = fmul fast float %8490, %8486
  %8492 = select i1 %8488, float 0.000000e+00, float %8491
  %8493 = fcmp fast oeq float %8417, 0.000000e+00
  %8494 = fdiv fast float %8435, %8417
  %8495 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8494)  ; FMax(a,b)
  %8496 = select i1 %8493, float %8486, float %8495
  %8497 = call float @dx.op.binary.f32(i32 36, float %8486, float %8496)  ; FMin(a,b)
  %8498 = fcmp fast ogt float %8417, 0.000000e+00
  %8499 = fcmp fast olt float %8435, 0.000000e+00
  br i1 %8498, label %8500, label %8557

; <label>:8500                                    ; preds = %8485
  %8501 = icmp eq i32 %8436, 0
  br i1 %8499, label %8502, label %8546

; <label>:8502                                    ; preds = %8500
  %8503 = select i1 %8501, float %8486, float 0.000000e+00
  %8504 = fsub fast float -0.000000e+00, %8503
  %8505 = call float @dx.op.unary.f32(i32 6, float %8504)  ; FAbs(value)
  %8506 = fmul fast float %8503, %8417
  %8507 = fadd fast float %8506, %8430
  %8508 = fmul fast float %8505, %8507
  %8509 = fsub fast float %8492, %8508
  %8510 = fsub fast float %8486, %8505
  %8511 = select i1 %8501, float %8510, float 0.000000e+00
  %8512 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8513 = extractvalue %dx.types.CBufRet.f32 %8512, 0
  %8514 = extractvalue %dx.types.CBufRet.f32 %8512, 1
  %8515 = extractvalue %dx.types.CBufRet.f32 %8512, 2
  %8516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8517 = extractvalue %dx.types.CBufRet.f32 %8516, 0
  %8518 = extractvalue %dx.types.CBufRet.f32 %8516, 1
  %8519 = extractvalue %dx.types.CBufRet.f32 %8516, 2
  %8520 = extractvalue %dx.types.CBufRet.f32 %8516, 3
  %8521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8522 = extractvalue %dx.types.CBufRet.f32 %8521, 3
  %8523 = call float @dx.op.binary.f32(i32 36, float %8509, float %8522)  ; FMin(a,b)
  %8524 = fmul fast float %8520, %8511
  %8525 = call float @dx.op.unary.f32(i32 7, float %8524)  ; Saturate(value)
  %8526 = fsub fast float %8517, %8513
  %8527 = fsub fast float %8518, %8514
  %8528 = fsub fast float %8519, %8515
  %8529 = fmul fast float %8525, %8526
  %8530 = fmul fast float %8525, %8527
  %8531 = fmul fast float %8525, %8528
  %8532 = fadd fast float %8529, %8513
  %8533 = fadd fast float %8530, %8514
  %8534 = fadd fast float %8531, %8515
  %8535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8536 = extractvalue %dx.types.CBufRet.f32 %8535, 0
  %8537 = extractvalue %dx.types.CBufRet.f32 %8535, 1
  %8538 = fadd fast float %8537, %8536
  %8539 = call float @dx.op.unary.f32(i32 7, float %8538)  ; Saturate(value)
  %8540 = extractvalue %dx.types.CBufRet.f32 %8535, 2
  %8541 = extractvalue %dx.types.CBufRet.f32 %8535, 3
  %8542 = fadd fast float %8541, %8540
  %8543 = call float @dx.op.unary.f32(i32 7, float %8542)  ; Saturate(value)
  %8544 = fmul fast float %8539, %8523
  %8545 = fmul fast float %8544, %8543
  br label %8787

; <label>:8546                                    ; preds = %8500
  br i1 %8501, label %8547, label %8568

; <label>:8547                                    ; preds = %8546
  %8548 = call float @dx.op.binary.f32(i32 36, float %8497, float %8487)  ; FMin(a,b)
  %8549 = fsub fast float %8497, %8548
  %8550 = fsub fast float %8549, %8486
  %8551 = call float @dx.op.unary.f32(i32 6, float %8550)  ; FAbs(value)
  %8552 = fadd fast float %8549, %8486
  %8553 = fmul fast float %8552, %8417
  %8554 = fadd fast float %8553, %8430
  %8555 = fmul fast float %8554, %8551
  %8556 = fsub fast float %8492, %8555
  br label %8568

; <label>:8557                                    ; preds = %8485
  br i1 %8499, label %8558, label %8568

; <label>:8558                                    ; preds = %8557
  %8559 = call float @dx.op.binary.f32(i32 35, float %8487, float %8497)  ; FMax(a,b)
  %8560 = icmp eq i32 %8436, 0
  %8561 = select i1 %8560, float %8497, float 0.000000e+00
  %8562 = fsub fast float -0.000000e+00, %8561
  %8563 = call float @dx.op.unary.f32(i32 6, float %8562)  ; FAbs(value)
  %8564 = fmul fast float %8561, %8417
  %8565 = fadd fast float %8564, %8430
  %8566 = fmul fast float %8563, %8565
  %8567 = fsub fast float %8492, %8566
  br label %8568

; <label>:8568                                    ; preds = %8558, %8557, %8547, %8546
  %8569 = phi float [ %8487, %8546 ], [ %8487, %8547 ], [ %8559, %8558 ], [ %8487, %8557 ]
  %8570 = phi float [ 0.000000e+00, %8546 ], [ %8551, %8547 ], [ %8563, %8558 ], [ 0.000000e+00, %8557 ]
  %8571 = phi float [ %8492, %8546 ], [ %8556, %8547 ], [ %8567, %8558 ], [ %8492, %8557 ]
  %8572 = phi float [ %8497, %8546 ], [ %8497, %8547 ], [ %8486, %8558 ], [ %8486, %8557 ]
  %8573 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 0
  store float -1.000000e+00, float* %8573, align 4, !tbaa !110, !noalias !121
  %8574 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 1
  store float -1.000000e+00, float* %8574, align 4, !tbaa !110, !noalias !121
  %8575 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 2
  store float -1.000000e+00, float* %8575, align 4, !tbaa !110, !noalias !121
  %8576 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 0
  store float -1.000000e+00, float* %8576, align 4, !tbaa !110, !noalias !121
  %8577 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 1
  store float -1.000000e+00, float* %8577, align 4, !tbaa !110, !noalias !121
  %8578 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 2
  store float -1.000000e+00, float* %8578, align 4, !tbaa !110, !noalias !121
  %8579 = icmp sgt i32 %8438, 0
  br i1 %8579, label %8580, label %8641

; <label>:8580                                    ; preds = %8568
  br label %8581

; <label>:8581                                    ; preds = %8630, %8580
  %8582 = phi i32 [ %8631, %8630 ], [ 0, %8580 ]
  %8583 = phi i32 [ %8632, %8630 ], [ 0, %8580 ]
  %8584 = add nuw i32 %8583, 171
  %8585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 %8584)  ; CBufferLoadLegacy(handle,regIndex)
  %8586 = extractvalue %dx.types.CBufRet.f32 %8585, 0
  %8587 = extractvalue %dx.types.CBufRet.f32 %8585, 1
  %8588 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8589 = extractvalue %dx.types.CBufRet.f32 %8588, 0
  %8590 = extractvalue %dx.types.CBufRet.f32 %8588, 1
  %8591 = fsub fast float %8586, %8589
  %8592 = fsub fast float %8587, %8590
  %8593 = extractvalue %dx.types.CBufRet.f32 %8585, 2
  %8594 = fsub fast float -0.000000e+00, %8591
  %8595 = fsub fast float -0.000000e+00, %8592
  %8596 = call float @dx.op.dot2.f32(i32 54, float %8415, float %8416, float %8594, float %8595)  ; Dot2(ax,ay,bx,by)
  %8597 = fmul fast float %8596, 2.000000e+00
  %8598 = call float @dx.op.dot2.f32(i32 54, float %8594, float %8595, float %8594, float %8595)  ; Dot2(ax,ay,bx,by)
  %8599 = fmul fast float %8593, %8593
  %8600 = fsub fast float %8598, %8599
  %8601 = fmul fast float %8597, %8597
  %8602 = fmul fast float %8458, %8600
  %8603 = fsub fast float %8601, %8602
  %8604 = fcmp fast ogt float %8603, 0.000000e+00
  br i1 %8604, label %8605, label %8620

; <label>:8605                                    ; preds = %8581
  %8606 = fcmp fast ogt float %8597, 0.000000e+00
  %8607 = call float @dx.op.unary.f32(i32 24, float %8603)  ; Sqrt(value)
  %8608 = fsub fast float -0.000000e+00, %8607
  %8609 = select i1 %8606, float %8607, float %8608
  %8610 = fadd fast float %8609, %8597
  %8611 = fmul float %8610, -5.000000e-01
  %8612 = fdiv fast float %8611, %8451
  %8613 = call float @dx.op.binary.f32(i32 35, float %8612, float 0.000000e+00)  ; FMax(a,b)
  %8614 = call float @dx.op.binary.f32(i32 36, float %8486, float %8613)  ; FMin(a,b)
  %8615 = fdiv fast float %8600, %8611
  %8616 = call float @dx.op.binary.f32(i32 35, float %8615, float 0.000000e+00)  ; FMax(a,b)
  %8617 = call float @dx.op.binary.f32(i32 36, float %8486, float %8616)  ; FMin(a,b)
  %8618 = call float @dx.op.binary.f32(i32 36, float %8614, float %8617)  ; FMin(a,b)
  %8619 = call float @dx.op.binary.f32(i32 35, float %8614, float %8617)  ; FMax(a,b)
  br label %8620

; <label>:8620                                    ; preds = %8605, %8581
  %8621 = phi float [ %8619, %8605 ], [ -1.000000e+00, %8581 ]
  %8622 = phi float [ %8618, %8605 ], [ -1.000000e+00, %8581 ]
  %8623 = phi i1 [ true, %8605 ], [ false, %8581 ]
  br i1 %8623, label %8624, label %8630

; <label>:8624                                    ; preds = %8620
  %8625 = call float @dx.op.binary.f32(i32 35, float %8569, float %8622)  ; FMax(a,b)
  %8626 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 %8583
  store float %8625, float* %8626, align 4, !tbaa !110, !noalias !121
  %8627 = call float @dx.op.binary.f32(i32 35, float %8569, float %8621)  ; FMax(a,b)
  %8628 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 %8583
  store float %8627, float* %8628, align 4, !tbaa !110, !noalias !121
  %8629 = add nsw i32 %8582, 1
  br label %8630

; <label>:8630                                    ; preds = %8624, %8620
  %8631 = phi i32 [ %8629, %8624 ], [ %8582, %8620 ]
  %8632 = add nuw nsw i32 %8583, 1
  %8633 = icmp eq i32 %8632, %8438
  br i1 %8633, label %8634, label %8581

; <label>:8634                                    ; preds = %8630
  %8635 = load float, float* %8575, align 4, !tbaa !110, !alias.scope !137, !noalias !140
  %8636 = load float, float* %8574, align 4, !tbaa !110, !alias.scope !143, !noalias !144
  %8637 = load float, float* %8573, align 4, !tbaa !110, !alias.scope !145, !noalias !146
  %8638 = load float, float* %8578, align 4, !tbaa !110, !alias.scope !147, !noalias !150
  %8639 = load float, float* %8577, align 4, !tbaa !110, !alias.scope !153, !noalias !154
  %8640 = load float, float* %8576, align 4, !tbaa !110, !alias.scope !155, !noalias !156
  br label %8641

; <label>:8641                                    ; preds = %8634, %8568
  %8642 = phi float [ -1.000000e+00, %8568 ], [ %8640, %8634 ]
  %8643 = phi float [ -1.000000e+00, %8568 ], [ %8639, %8634 ]
  %8644 = phi float [ -1.000000e+00, %8568 ], [ %8638, %8634 ]
  %8645 = phi float [ -1.000000e+00, %8568 ], [ %8637, %8634 ]
  %8646 = phi float [ -1.000000e+00, %8568 ], [ %8636, %8634 ]
  %8647 = phi float [ -1.000000e+00, %8568 ], [ %8635, %8634 ]
  %8648 = phi i32 [ 0, %8568 ], [ %8631, %8634 ]
  %8649 = call float @dx.op.binary.f32(i32 36, float %8646, float %8647)  ; FMin(a,b)
  %8650 = call float @dx.op.binary.f32(i32 36, float %8645, float %8649)  ; FMin(a,b)
  %8651 = call float @dx.op.binary.f32(i32 35, float %8645, float %8646)  ; FMax(a,b)
  %8652 = call float @dx.op.binary.f32(i32 36, float %8651, float %8647)  ; FMin(a,b)
  %8653 = call float @dx.op.binary.f32(i32 36, float %8645, float %8646)  ; FMin(a,b)
  %8654 = call float @dx.op.binary.f32(i32 35, float %8653, float %8652)  ; FMax(a,b)
  %8655 = call float @dx.op.binary.f32(i32 35, float %8646, float %8647)  ; FMax(a,b)
  %8656 = call float @dx.op.binary.f32(i32 35, float %8645, float %8655)  ; FMax(a,b)
  store float %8650, float* %8573, align 4, !tbaa !110, !alias.scope !145, !noalias !146
  store float %8654, float* %8574, align 4, !tbaa !110, !alias.scope !143, !noalias !144
  store float %8656, float* %8575, align 4, !tbaa !110, !alias.scope !137, !noalias !140
  %8657 = call float @dx.op.binary.f32(i32 36, float %8643, float %8644)  ; FMin(a,b)
  %8658 = call float @dx.op.binary.f32(i32 36, float %8642, float %8657)  ; FMin(a,b)
  %8659 = call float @dx.op.binary.f32(i32 35, float %8642, float %8643)  ; FMax(a,b)
  %8660 = call float @dx.op.binary.f32(i32 36, float %8659, float %8644)  ; FMin(a,b)
  %8661 = call float @dx.op.binary.f32(i32 36, float %8642, float %8643)  ; FMin(a,b)
  %8662 = call float @dx.op.binary.f32(i32 35, float %8661, float %8660)  ; FMax(a,b)
  %8663 = call float @dx.op.binary.f32(i32 35, float %8643, float %8644)  ; FMax(a,b)
  %8664 = call float @dx.op.binary.f32(i32 35, float %8642, float %8663)  ; FMax(a,b)
  store float %8658, float* %8576, align 4, !tbaa !110, !alias.scope !155, !noalias !156
  store float %8662, float* %8577, align 4, !tbaa !110, !alias.scope !153, !noalias !154
  store float %8664, float* %8578, align 4, !tbaa !110, !alias.scope !147, !noalias !150
  %8665 = sub nsw i32 3, %8648
  %8666 = icmp sgt i32 %8665, 2
  br i1 %8666, label %8667, label %8705

; <label>:8667                                    ; preds = %8641
  %8668 = icmp eq i32 %8436, 0
  %8669 = fsub fast float %8486, %8570
  %8670 = select i1 %8668, float %8669, float %8570
  %8671 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8672 = extractvalue %dx.types.CBufRet.f32 %8671, 0
  %8673 = extractvalue %dx.types.CBufRet.f32 %8671, 1
  %8674 = extractvalue %dx.types.CBufRet.f32 %8671, 2
  %8675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8676 = extractvalue %dx.types.CBufRet.f32 %8675, 0
  %8677 = extractvalue %dx.types.CBufRet.f32 %8675, 1
  %8678 = extractvalue %dx.types.CBufRet.f32 %8675, 2
  %8679 = extractvalue %dx.types.CBufRet.f32 %8675, 3
  %8680 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8681 = extractvalue %dx.types.CBufRet.f32 %8680, 3
  %8682 = call float @dx.op.binary.f32(i32 36, float %8571, float %8681)  ; FMin(a,b)
  %8683 = fmul fast float %8679, %8670
  %8684 = call float @dx.op.unary.f32(i32 7, float %8683)  ; Saturate(value)
  %8685 = fsub fast float %8676, %8672
  %8686 = fsub fast float %8677, %8673
  %8687 = fsub fast float %8678, %8674
  %8688 = fmul fast float %8684, %8685
  %8689 = fmul fast float %8684, %8686
  %8690 = fmul fast float %8684, %8687
  %8691 = fadd fast float %8688, %8672
  %8692 = fadd fast float %8689, %8673
  %8693 = fadd fast float %8690, %8674
  %8694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8695 = extractvalue %dx.types.CBufRet.f32 %8694, 0
  %8696 = extractvalue %dx.types.CBufRet.f32 %8694, 1
  %8697 = fadd fast float %8696, %8695
  %8698 = call float @dx.op.unary.f32(i32 7, float %8697)  ; Saturate(value)
  %8699 = extractvalue %dx.types.CBufRet.f32 %8694, 2
  %8700 = extractvalue %dx.types.CBufRet.f32 %8694, 3
  %8701 = fadd fast float %8700, %8699
  %8702 = call float @dx.op.unary.f32(i32 7, float %8701)  ; Saturate(value)
  %8703 = fmul fast float %8698, %8682
  %8704 = fmul fast float %8703, %8702
  br label %8787

; <label>:8705                                    ; preds = %8641
  %8706 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 %8665
  %8707 = load float, float* %8706, align 4, !tbaa !110, !noalias !121
  %8708 = fcmp fast olt float %8707, %8572
  %8709 = icmp sgt i32 %8648, 0
  %8710 = and i1 %8709, %8708
  br i1 %8710, label %8711, label %8748

; <label>:8711                                    ; preds = %8705
  br label %8712

; <label>:8712                                    ; preds = %8741, %8711
  %8713 = phi float [ %8742, %8741 ], [ %8570, %8711 ]
  %8714 = phi float [ %8743, %8741 ], [ %8571, %8711 ]
  %8715 = phi float [ %8723, %8741 ], [ %8707, %8711 ]
  %8716 = phi i32 [ %8720, %8741 ], [ %8665, %8711 ]
  %8717 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 %8716
  %8718 = load float, float* %8717, align 4, !tbaa !110, !noalias !121
  %8719 = icmp slt i32 %8716, 2
  %8720 = add nsw i32 %8716, 1
  %8721 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 %8720
  %8722 = load float, float* %8721, align 4, !tbaa !110, !noalias !121
  %8723 = select i1 %8719, float %8722, float %8486
  %8724 = call float @dx.op.binary.f32(i32 36, float %8723, float %8718)  ; FMin(a,b)
  %8725 = call float @dx.op.binary.f32(i32 36, float %8572, float %8724)  ; FMin(a,b)
  %8726 = icmp eq i32 %8436, 0
  %8727 = fadd fast float %8725, %8715
  %8728 = fmul fast float %8727, %8417
  %8729 = fadd fast float %8728, %8430
  br i1 %8726, label %8735, label %8730

; <label>:8730                                    ; preds = %8712
  %8731 = fsub fast float %8725, %8715
  %8732 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8731)  ; FMax(a,b)
  %8733 = fmul fast float %8732, %8729
  %8734 = fadd fast float %8733, %8714
  br label %8741

; <label>:8735                                    ; preds = %8712
  %8736 = fsub fast float %8715, %8725
  %8737 = call float @dx.op.unary.f32(i32 6, float %8736)  ; FAbs(value)
  %8738 = fadd fast float %8737, %8713
  %8739 = fmul fast float %8737, %8729
  %8740 = fsub fast float %8714, %8739
  br label %8741

; <label>:8741                                    ; preds = %8735, %8730
  %8742 = phi float [ %8732, %8730 ], [ %8738, %8735 ]
  %8743 = phi float [ %8734, %8730 ], [ %8740, %8735 ]
  %8744 = fcmp fast olt float %8723, %8572
  %8745 = icmp slt i32 %8720, 3
  %8746 = and i1 %8745, %8744
  br i1 %8746, label %8712, label %8747

; <label>:8747                                    ; preds = %8741
  br label %8748

; <label>:8748                                    ; preds = %8747, %8705
  %8749 = phi float [ %8570, %8705 ], [ %8742, %8747 ]
  %8750 = phi float [ %8571, %8705 ], [ %8743, %8747 ]
  %8751 = fsub fast float %8486, %8749
  %8752 = select i1 %8488, float %8749, float %8751
  %8753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8754 = extractvalue %dx.types.CBufRet.f32 %8753, 0
  %8755 = extractvalue %dx.types.CBufRet.f32 %8753, 1
  %8756 = extractvalue %dx.types.CBufRet.f32 %8753, 2
  %8757 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8758 = extractvalue %dx.types.CBufRet.f32 %8757, 0
  %8759 = extractvalue %dx.types.CBufRet.f32 %8757, 1
  %8760 = extractvalue %dx.types.CBufRet.f32 %8757, 2
  %8761 = extractvalue %dx.types.CBufRet.f32 %8757, 3
  %8762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8763 = extractvalue %dx.types.CBufRet.f32 %8762, 3
  %8764 = call float @dx.op.binary.f32(i32 36, float %8750, float %8763)  ; FMin(a,b)
  %8765 = fmul fast float %8761, %8752
  %8766 = call float @dx.op.unary.f32(i32 7, float %8765)  ; Saturate(value)
  %8767 = fsub fast float %8758, %8754
  %8768 = fsub fast float %8759, %8755
  %8769 = fsub fast float %8760, %8756
  %8770 = fmul fast float %8766, %8767
  %8771 = fmul fast float %8766, %8768
  %8772 = fmul fast float %8766, %8769
  %8773 = fadd fast float %8770, %8754
  %8774 = fadd fast float %8771, %8755
  %8775 = fadd fast float %8772, %8756
  %8776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8777 = extractvalue %dx.types.CBufRet.f32 %8776, 0
  %8778 = extractvalue %dx.types.CBufRet.f32 %8776, 1
  %8779 = fadd fast float %8778, %8777
  %8780 = call float @dx.op.unary.f32(i32 7, float %8779)  ; Saturate(value)
  %8781 = extractvalue %dx.types.CBufRet.f32 %8776, 2
  %8782 = extractvalue %dx.types.CBufRet.f32 %8776, 3
  %8783 = fadd fast float %8782, %8781
  %8784 = call float @dx.op.unary.f32(i32 7, float %8783)  ; Saturate(value)
  %8785 = fmul fast float %8780, %8764
  %8786 = fmul fast float %8785, %8784
  br label %8787

; <label>:8787                                    ; preds = %8748, %8667, %8502, %8484, %8482
  %8788 = phi float [ %8511, %8502 ], [ %8670, %8667 ], [ %8752, %8748 ], [ 0.000000e+00, %8482 ], [ 0.000000e+00, %8484 ]
  %8789 = phi float [ %8545, %8502 ], [ %8704, %8667 ], [ %8786, %8748 ], [ 0.000000e+00, %8482 ], [ 0.000000e+00, %8484 ]
  %8790 = phi float [ %8532, %8502 ], [ %8691, %8667 ], [ %8773, %8748 ], [ 0.000000e+00, %8482 ], [ 0.000000e+00, %8484 ]
  %8791 = phi float [ %8533, %8502 ], [ %8692, %8667 ], [ %8774, %8748 ], [ 0.000000e+00, %8482 ], [ 0.000000e+00, %8484 ]
  %8792 = phi float [ %8534, %8502 ], [ %8693, %8667 ], [ %8775, %8748 ], [ 0.000000e+00, %8482 ], [ 0.000000e+00, %8484 ]
  %8793 = fmul fast float %8425, %8789
  %8794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8795 = extractvalue %dx.types.CBufRet.f32 %8794, 2
  %8796 = fsub fast float %8432, %8795
  %8797 = fcmp fast olt float %8793, -2.000000e+01
  %8798 = call float @dx.op.unary.f32(i32 21, float %8793)  ; Exp(value)
  %8799 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8800 = extractvalue %dx.types.CBufRet.f32 %8799, 2
  %8801 = extractvalue %dx.types.CBufRet.f32 %8799, 3
  %8802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8803 = extractvalue %dx.types.CBufRet.f32 %8802, 2
  %8804 = fmul fast float %8801, %8796
  %8805 = call float @dx.op.unary.f32(i32 7, float %8804)  ; Saturate(value)
  %8806 = fsub fast float 1.000000e+00, %8805
  %8807 = fmul fast float %8417, 5.000000e-01
  %8808 = fadd fast float %8807, 5.000000e-01
  %8809 = call float @dx.op.unary.f32(i32 7, float %8808)  ; Saturate(value)
  %8810 = fsub fast float 1.000000e+00, %8809
  %8811 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8806)  ; FMax(a,b)
  %8812 = fdiv fast float %8810, %8811
  %8813 = fsub fast float %8796, %8374
  %8814 = call float @dx.op.unary.f32(i32 6, float %8813)  ; FAbs(value)
  %8815 = fmul fast float %8814, %8800
  %8816 = call float @dx.op.unary.f32(i32 7, float %8812)  ; Saturate(value)
  %8817 = fsub fast float 1.000000e+00, %8815
  %8818 = fmul fast float %8817, %8816
  %8819 = fadd fast float %8818, %8815
  %8820 = fmul fast float %8803, %8796
  %8821 = call float @dx.op.unary.f32(i32 7, float %8820)  ; Saturate(value)
  %8822 = fsub fast float 1.000000e+00, %8819
  %8823 = fmul fast float %8822, %8821
  %8824 = fadd fast float %8823, %8819
  %8825 = call float @dx.op.unary.f32(i32 7, float %8824)  ; Saturate(value)
  %8826 = fadd fast float %8798, -1.000000e+00
  %8827 = select i1 %8797, float -1.000000e+00, float %8826
  %8828 = fmul fast float %8825, %8827
  %8829 = fadd fast float %8828, 1.000000e+00
  %8830 = fsub fast float -0.000000e+00, %8828
  %8831 = fmul fast float %8790, %8830
  %8832 = fmul fast float %8791, %8830
  %8833 = fmul fast float %8792, %8830
  br label %8834

; <label>:8834                                    ; preds = %8787, %8383
  %8835 = phi float [ %8788, %8787 ], [ 0.000000e+00, %8383 ]
  %8836 = phi float [ %8829, %8787 ], [ 1.000000e+00, %8383 ]
  %8837 = phi float [ %8831, %8787 ], [ 0.000000e+00, %8383 ]
  %8838 = phi float [ %8832, %8787 ], [ 0.000000e+00, %8383 ]
  %8839 = phi float [ %8833, %8787 ], [ 0.000000e+00, %8383 ]
  %8840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8841 = extractvalue %dx.types.CBufRet.f32 %8840, 1
  %8842 = fsub fast float 1.000000e+00, %8836
  %8843 = fmul fast float %8842, %8418
  %8844 = fmul fast float %8843, %8841
  %8845 = fsub fast float %8418, %8844
  br i1 %8411, label %8846, label %8875, !dx.controlflow.hints !157

; <label>:8846                                    ; preds = %8834
  %8847 = fmul fast float %8419, %8408
  %8848 = fadd fast float %8847, %8409
  %8849 = call float @dx.op.unary.f32(i32 7, float %8848)  ; Saturate(value)
  %8850 = fmul fast float %8390, %8845
  %8851 = fsub fast float -0.000000e+00, %8850
  %8852 = fmul fast float %8391, %8845
  %8853 = fsub fast float -0.000000e+00, %8852
  %8854 = call float @dx.op.unary.f32(i32 21, float %8851)  ; Exp(value)
  %8855 = call float @dx.op.unary.f32(i32 21, float %8853)  ; Exp(value)
  %8856 = call float @dx.op.binary.f32(i32 35, float %8398, float %8854)  ; FMax(a,b)
  %8857 = call float @dx.op.binary.f32(i32 35, float %8398, float %8855)  ; FMax(a,b)
  %8858 = fsub fast float %8857, %8856
  %8859 = fmul fast float %8858, %8849
  %8860 = fadd fast float %8859, %8856
  %8861 = call float @dx.op.unary.f32(i32 7, float %8860)  ; Saturate(value)
  %8862 = fsub fast float %8395, %8400
  %8863 = fsub fast float %8396, %8401
  %8864 = fsub fast float %8397, %8402
  %8865 = fmul fast float %8849, %8862
  %8866 = fmul fast float %8849, %8863
  %8867 = fmul fast float %8849, %8864
  %8868 = fadd fast float %8865, %8400
  %8869 = fadd fast float %8866, %8401
  %8870 = fadd fast float %8867, %8402
  %8871 = fsub fast float 1.000000e+00, %8861
  %8872 = fmul fast float %8871, %8868
  %8873 = fmul fast float %8871, %8869
  %8874 = fmul fast float %8871, %8870
  br label %8934

; <label>:8875                                    ; preds = %8834
  %8876 = fmul fast float %8845, %8407
  %8877 = call float @dx.op.unary.f32(i32 7, float %8876)  ; Saturate(value)
  %8878 = fsub fast float 2.000000e+00, %8877
  %8879 = fmul fast float %8877, 9.921875e-01
  %8880 = fmul fast float %8879, %8878
  %8881 = fadd fast float %8880, 3.906250e-03
  %8882 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %44, float %8881, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8883 = extractvalue %dx.types.ResRet.f32 %8882, 0
  %8884 = fsub fast float %8877, %8883
  %8885 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8884)  ; FMax(a,b)
  %8886 = fmul fast float %8393, %8374
  %8887 = call float @dx.op.unary.f32(i32 6, float %8886)  ; FAbs(value)
  %8888 = fcmp fast ogt float %8887, 0x3EB0C6F7A0000000
  br i1 %8888, label %8889, label %8895, !dx.controlflow.hints !158

; <label>:8889                                    ; preds = %8875
  %8890 = fmul fast float %8886, 0xBFF7154760000000
  %8891 = call float @dx.op.unary.f32(i32 21, float %8890)  ; Exp(value)
  %8892 = fsub fast float 1.000000e+00, %8891
  %8893 = fdiv fast float %8892, %8886
  %8894 = fmul fast float %8893, %8403
  br label %8895

; <label>:8895                                    ; preds = %8889, %8875
  %8896 = phi float [ %8894, %8889 ], [ %8403, %8875 ]
  %8897 = fadd fast float %8896, %8405
  %8898 = fmul fast float %8897, %8885
  %8899 = fmul fast float %8390, %8898
  %8900 = fsub fast float -0.000000e+00, %8899
  %8901 = fmul fast float %8391, %8898
  %8902 = fsub fast float -0.000000e+00, %8901
  %8903 = fmul fast float %8392, %8898
  %8904 = fsub fast float -0.000000e+00, %8903
  %8905 = call float @dx.op.unary.f32(i32 21, float %8900)  ; Exp(value)
  %8906 = call float @dx.op.unary.f32(i32 21, float %8902)  ; Exp(value)
  %8907 = call float @dx.op.unary.f32(i32 21, float %8904)  ; Exp(value)
  %8908 = fmul fast float %8419, %8419
  %8909 = fadd fast float %8908, 1.000000e+00
  %8910 = fmul fast float %8909, 0x3FAE8EC8A0000000
  %8911 = fmul fast float %8910, %8400
  %8912 = fmul fast float %8910, %8401
  %8913 = fmul fast float %8910, %8402
  %8914 = fmul fast float %8419, %8398
  %8915 = fsub fast float 1.000000e+00, %8914
  %8916 = fmul fast float %8398, %8398
  %8917 = fsub fast float 1.000000e+00, %8916
  %8918 = fmul fast float %8917, 0x3FB45F3060000000
  %8919 = fmul fast float %8915, %8915
  %8920 = fdiv fast float 1.000000e+00, %8919
  %8921 = fmul fast float %8918, %8920
  %8922 = fmul fast float %8921, %8395
  %8923 = fmul fast float %8921, %8396
  %8924 = fmul fast float %8921, %8397
  %8925 = fadd fast float %8922, %8911
  %8926 = fadd fast float %8923, %8912
  %8927 = fadd fast float %8924, %8913
  %8928 = fsub fast float 1.000000e+00, %8905
  %8929 = fsub fast float 1.000000e+00, %8906
  %8930 = fsub fast float 1.000000e+00, %8907
  %8931 = fmul fast float %8925, %8928
  %8932 = fmul fast float %8926, %8929
  %8933 = fmul fast float %8927, %8930
  br label %8934

; <label>:8934                                    ; preds = %8895, %8846
  %8935 = phi float [ %8872, %8846 ], [ %8931, %8895 ]
  %8936 = phi float [ %8873, %8846 ], [ %8932, %8895 ]
  %8937 = phi float [ %8874, %8846 ], [ %8933, %8895 ]
  %8938 = phi float [ %8861, %8846 ], [ %8905, %8895 ]
  %8939 = phi float [ %8861, %8846 ], [ %8906, %8895 ]
  %8940 = phi float [ %8861, %8846 ], [ %8907, %8895 ]
  br i1 %8427, label %8941, label %9139, !dx.controlflow.hints !159

; <label>:8941                                    ; preds = %8934
  %8942 = extractvalue %dx.types.CBufRet.f32 %8840, 0
  %8943 = fmul fast float %8942, %8842
  %8944 = fsub fast float %8837, %8935
  %8945 = fsub fast float %8838, %8936
  %8946 = fsub fast float %8839, %8937
  %8947 = fmul fast float %8943, %8944
  %8948 = fmul fast float %8943, %8945
  %8949 = fmul fast float %8943, %8946
  %8950 = fadd fast float %8947, %8935
  %8951 = fadd fast float %8948, %8936
  %8952 = fadd fast float %8949, %8937
  %8953 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8938)  ; FMax(a,b)
  %8954 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8939)  ; FMax(a,b)
  %8955 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8940)  ; FMax(a,b)
  %8956 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8836)  ; FMax(a,b)
  %8957 = call float @dx.op.binary.f32(i32 35, float %8835, float %8845)  ; FMax(a,b)
  %8958 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8957)  ; FMax(a,b)
  %8959 = fdiv fast float %8835, %8958
  %8960 = call float @dx.op.unary.f32(i32 7, float %8959)  ; Saturate(value)
  %8961 = fdiv fast float %8845, %8958
  %8962 = call float @dx.op.unary.f32(i32 7, float %8961)  ; Saturate(value)
  %8963 = fcmp fast une float %8956, 1.000000e+00
  br i1 %8963, label %8964, label %8977, !dx.controlflow.hints !160

; <label>:8964                                    ; preds = %8941
  %8965 = call float @dx.op.unary.f32(i32 23, float %8956)  ; Log(value)
  %8966 = fmul fast float %8965, 0x3FE62E4300000000
  %8967 = fmul fast float %8837, %8966
  %8968 = fsub fast float -0.000000e+00, %8967
  %8969 = fmul fast float %8838, %8966
  %8970 = fsub fast float -0.000000e+00, %8969
  %8971 = fmul fast float %8839, %8966
  %8972 = fsub fast float -0.000000e+00, %8971
  %8973 = fsub fast float 1.000000e+00, %8956
  %8974 = fdiv fast float %8968, %8973
  %8975 = fdiv fast float %8970, %8973
  %8976 = fdiv fast float %8972, %8973
  br label %8977

; <label>:8977                                    ; preds = %8964, %8941
  %8978 = phi float [ %8974, %8964 ], [ %8837, %8941 ]
  %8979 = phi float [ %8975, %8964 ], [ %8838, %8941 ]
  %8980 = phi float [ %8976, %8964 ], [ %8839, %8941 ]
  %8981 = phi float [ %8966, %8964 ], [ 0.000000e+00, %8941 ]
  %8982 = fcmp fast une float %8953, 1.000000e+00
  br i1 %8982, label %8983, label %8990, !dx.controlflow.hints !161

; <label>:8983                                    ; preds = %8977
  %8984 = call float @dx.op.unary.f32(i32 23, float %8953)  ; Log(value)
  %8985 = fmul fast float %8984, 0x3FE62E4300000000
  %8986 = fmul fast float %8950, %8985
  %8987 = fsub fast float -0.000000e+00, %8986
  %8988 = fsub fast float 1.000000e+00, %8953
  %8989 = fdiv fast float %8987, %8988
  br label %8990

; <label>:8990                                    ; preds = %8983, %8977
  %8991 = phi float [ %8989, %8983 ], [ %8950, %8977 ]
  %8992 = phi float [ %8985, %8983 ], [ 0.000000e+00, %8977 ]
  %8993 = fcmp fast une float %8954, 1.000000e+00
  br i1 %8993, label %8994, label %9001, !dx.controlflow.hints !161

; <label>:8994                                    ; preds = %8990
  %8995 = call float @dx.op.unary.f32(i32 23, float %8954)  ; Log(value)
  %8996 = fmul fast float %8995, 0x3FE62E4300000000
  %8997 = fmul fast float %8951, %8996
  %8998 = fsub fast float -0.000000e+00, %8997
  %8999 = fsub fast float 1.000000e+00, %8954
  %9000 = fdiv fast float %8998, %8999
  br label %9001

; <label>:9001                                    ; preds = %8994, %8990
  %9002 = phi float [ %9000, %8994 ], [ %8951, %8990 ]
  %9003 = phi float [ %8996, %8994 ], [ 0.000000e+00, %8990 ]
  %9004 = fcmp fast une float %8955, 1.000000e+00
  br i1 %9004, label %9005, label %9012, !dx.controlflow.hints !161

; <label>:9005                                    ; preds = %9001
  %9006 = call float @dx.op.unary.f32(i32 23, float %8955)  ; Log(value)
  %9007 = fmul fast float %9006, 0x3FE62E4300000000
  %9008 = fmul fast float %8952, %9007
  %9009 = fsub fast float -0.000000e+00, %9008
  %9010 = fsub fast float 1.000000e+00, %8955
  %9011 = fdiv fast float %9009, %9010
  br label %9012

; <label>:9012                                    ; preds = %9005, %9001
  %9013 = phi float [ %9011, %9005 ], [ %8952, %9001 ]
  %9014 = phi float [ %9007, %9005 ], [ 0.000000e+00, %9001 ]
  %9015 = fmul fast float %8978, %8962
  %9016 = fmul fast float %8979, %8962
  %9017 = fmul fast float %8980, %8962
  %9018 = fmul fast float %8981, %8962
  %9019 = fmul fast float %8991, %8960
  %9020 = fmul fast float %9002, %8960
  %9021 = fmul fast float %9013, %8960
  %9022 = fmul fast float %8992, %8960
  %9023 = fmul fast float %9003, %8960
  %9024 = fmul fast float %9014, %8960
  %9025 = fadd fast float %9019, %9015
  %9026 = fadd fast float %9020, %9016
  %9027 = fadd fast float %9021, %9017
  %9028 = fadd fast float %9022, %9018
  %9029 = fadd fast float %9023, %9018
  %9030 = fadd fast float %9024, %9018
  %9031 = fcmp fast une float %9028, 0.000000e+00
  br i1 %9031, label %9032, label %9039, !dx.controlflow.hints !162

; <label>:9032                                    ; preds = %9012
  %9033 = fmul fast float %9028, 0x3FF7154760000000
  %9034 = call float @dx.op.unary.f32(i32 21, float %9033)  ; Exp(value)
  %9035 = fsub fast float 1.000000e+00, %9034
  %9036 = fmul fast float %9025, %9035
  %9037 = fsub fast float -0.000000e+00, %9036
  %9038 = fdiv fast float %9037, %9028
  br label %9039

; <label>:9039                                    ; preds = %9032, %9012
  %9040 = phi float [ %9034, %9032 ], [ 1.000000e+00, %9012 ]
  %9041 = phi float [ %9038, %9032 ], [ %9025, %9012 ]
  %9042 = fcmp fast une float %9029, 0.000000e+00
  br i1 %9042, label %9043, label %9050, !dx.controlflow.hints !162

; <label>:9043                                    ; preds = %9039
  %9044 = fmul fast float %9029, 0x3FF7154760000000
  %9045 = call float @dx.op.unary.f32(i32 21, float %9044)  ; Exp(value)
  %9046 = fsub fast float 1.000000e+00, %9045
  %9047 = fmul fast float %9026, %9046
  %9048 = fsub fast float -0.000000e+00, %9047
  %9049 = fdiv fast float %9048, %9029
  br label %9050

; <label>:9050                                    ; preds = %9043, %9039
  %9051 = phi float [ %9045, %9043 ], [ 1.000000e+00, %9039 ]
  %9052 = phi float [ %9049, %9043 ], [ %9026, %9039 ]
  %9053 = fcmp fast une float %9030, 0.000000e+00
  br i1 %9053, label %9054, label %9061, !dx.controlflow.hints !162

; <label>:9054                                    ; preds = %9050
  %9055 = fmul fast float %9030, 0x3FF7154760000000
  %9056 = call float @dx.op.unary.f32(i32 21, float %9055)  ; Exp(value)
  %9057 = fsub fast float 1.000000e+00, %9056
  %9058 = fmul fast float %9027, %9057
  %9059 = fsub fast float -0.000000e+00, %9058
  %9060 = fdiv fast float %9059, %9030
  br label %9061

; <label>:9061                                    ; preds = %9054, %9050
  %9062 = phi float [ %9056, %9054 ], [ 1.000000e+00, %9050 ]
  %9063 = phi float [ %9060, %9054 ], [ %9027, %9050 ]
  %9064 = fcmp fast ogt float %8960, %8962
  br i1 %9064, label %9065, label %9085

; <label>:9065                                    ; preds = %9061
  %9066 = fsub fast float 1.000000e+00, %8962
  %9067 = fmul fast float %8978, %9066
  %9068 = fmul fast float %8979, %9066
  %9069 = fmul fast float %8980, %9066
  %9070 = fmul fast float %8981, %9066
  %9071 = fcmp fast une float %9070, 0.000000e+00
  br i1 %9071, label %9072, label %9123, !dx.controlflow.hints !163

; <label>:9072                                    ; preds = %9065
  %9073 = fmul fast float %9070, 0x3FF7154760000000
  %9074 = call float @dx.op.unary.f32(i32 21, float %9073)  ; Exp(value)
  %9075 = fsub fast float 1.000000e+00, %9074
  %9076 = fmul fast float %9067, %9075
  %9077 = fsub fast float -0.000000e+00, %9076
  %9078 = fmul fast float %9068, %9075
  %9079 = fsub fast float -0.000000e+00, %9078
  %9080 = fmul fast float %9069, %9075
  %9081 = fsub fast float -0.000000e+00, %9080
  %9082 = fdiv fast float %9077, %9070
  %9083 = fdiv fast float %9079, %9070
  %9084 = fdiv fast float %9081, %9070
  br label %9123

; <label>:9085                                    ; preds = %9061
  %9086 = fsub fast float 1.000000e+00, %8960
  %9087 = fmul fast float %8991, %9086
  %9088 = fmul fast float %9002, %9086
  %9089 = fmul fast float %9013, %9086
  %9090 = fmul fast float %8992, %9086
  %9091 = fmul fast float %9003, %9086
  %9092 = fmul fast float %9014, %9086
  %9093 = fcmp fast une float %9090, 0.000000e+00
  br i1 %9093, label %9094, label %9101, !dx.controlflow.hints !162

; <label>:9094                                    ; preds = %9085
  %9095 = fmul fast float %9090, 0x3FF7154760000000
  %9096 = call float @dx.op.unary.f32(i32 21, float %9095)  ; Exp(value)
  %9097 = fsub fast float 1.000000e+00, %9096
  %9098 = fmul fast float %9087, %9097
  %9099 = fsub fast float -0.000000e+00, %9098
  %9100 = fdiv fast float %9099, %9090
  br label %9101

; <label>:9101                                    ; preds = %9094, %9085
  %9102 = phi float [ %9100, %9094 ], [ %9087, %9085 ]
  %9103 = phi float [ %9096, %9094 ], [ 1.000000e+00, %9085 ]
  %9104 = fcmp fast une float %9091, 0.000000e+00
  br i1 %9104, label %9105, label %9112, !dx.controlflow.hints !162

; <label>:9105                                    ; preds = %9101
  %9106 = fmul fast float %9091, 0x3FF7154760000000
  %9107 = call float @dx.op.unary.f32(i32 21, float %9106)  ; Exp(value)
  %9108 = fsub fast float 1.000000e+00, %9107
  %9109 = fmul fast float %9088, %9108
  %9110 = fsub fast float -0.000000e+00, %9109
  %9111 = fdiv fast float %9110, %9091
  br label %9112

; <label>:9112                                    ; preds = %9105, %9101
  %9113 = phi float [ %9111, %9105 ], [ %9088, %9101 ]
  %9114 = phi float [ %9107, %9105 ], [ 1.000000e+00, %9101 ]
  %9115 = fcmp fast une float %9092, 0.000000e+00
  br i1 %9115, label %9116, label %9123, !dx.controlflow.hints !162

; <label>:9116                                    ; preds = %9112
  %9117 = fmul fast float %9092, 0x3FF7154760000000
  %9118 = call float @dx.op.unary.f32(i32 21, float %9117)  ; Exp(value)
  %9119 = fsub fast float 1.000000e+00, %9118
  %9120 = fmul fast float %9089, %9119
  %9121 = fsub fast float -0.000000e+00, %9120
  %9122 = fdiv fast float %9121, %9092
  br label %9123

; <label>:9123                                    ; preds = %9116, %9112, %9072, %9065
  %9124 = phi float [ %9122, %9116 ], [ %9084, %9072 ], [ %9069, %9065 ], [ %9089, %9112 ]
  %9125 = phi float [ %9113, %9116 ], [ %9083, %9072 ], [ %9068, %9065 ], [ %9113, %9112 ]
  %9126 = phi float [ %9102, %9116 ], [ %9082, %9072 ], [ %9067, %9065 ], [ %9102, %9112 ]
  %9127 = phi float [ %9118, %9116 ], [ %9074, %9072 ], [ 1.000000e+00, %9065 ], [ 1.000000e+00, %9112 ]
  %9128 = phi float [ %9114, %9116 ], [ %9074, %9072 ], [ 1.000000e+00, %9065 ], [ %9114, %9112 ]
  %9129 = phi float [ %9103, %9116 ], [ %9074, %9072 ], [ 1.000000e+00, %9065 ], [ %9103, %9112 ]
  %9130 = fmul fast float %9129, %9041
  %9131 = fmul fast float %9128, %9052
  %9132 = fmul fast float %9127, %9063
  %9133 = fadd fast float %9130, %9126
  %9134 = fadd fast float %9131, %9125
  %9135 = fadd fast float %9132, %9124
  %9136 = fmul fast float %9129, %9040
  %9137 = fmul fast float %9128, %9051
  %9138 = fmul fast float %9127, %9062
  br label %9139

; <label>:9139                                    ; preds = %9123, %8934
  %9140 = phi float [ %9138, %9123 ], [ %8940, %8934 ]
  %9141 = phi float [ %9137, %9123 ], [ %8939, %8934 ]
  %9142 = phi float [ %9136, %9123 ], [ %8938, %8934 ]
  %9143 = phi float [ %9135, %9123 ], [ %8937, %8934 ]
  %9144 = phi float [ %9134, %9123 ], [ %8936, %8934 ]
  %9145 = phi float [ %9133, %9123 ], [ %8935, %8934 ]
  %9146 = fmul fast float %9142, %8382
  %9147 = call float @dx.op.dot3.f32(i32 55, float %9142, float %9141, float %9140, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9148 = call float @dx.op.dot3.f32(i32 55, float %9145, float %9144, float %9143, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9149 = select i1 %215, float %9147, float %9142
  %9150 = select i1 %215, float %9147, float %9141
  %9151 = select i1 %215, float 1.000000e+00, float %9140
  %9152 = select i1 %215, float %9148, float %9145
  %9153 = select i1 %215, float 0.000000e+00, float %9144
  %9154 = select i1 %215, float 0.000000e+00, float %9143
  %9155 = fmul fast float %9149, %8376
  %9156 = fmul fast float %9150, %8377
  %9157 = fmul fast float %9151, %8378
  %9158 = fadd fast float %9155, %9152
  %9159 = fadd fast float %9156, %9153
  %9160 = fadd fast float %9154, %9157
  %9161 = fmul fast float %9149, %8379
  %9162 = fmul fast float %9150, %8380
  %9163 = fmul fast float %9151, %8381
  %9164 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9165 = extractvalue %dx.types.CBufRet.i32 %9164, 0
  %9166 = icmp eq i32 %9165, 0
  br i1 %9166, label %9531, label %9167, !dx.controlflow.hints !164

; <label>:9167                                    ; preds = %9139
  %9168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9169 = extractvalue %dx.types.CBufRet.f32 %9168, 2
  %9170 = extractvalue %dx.types.CBufRet.f32 %9168, 3
  %9171 = fmul fast float %9169, %99
  %9172 = fmul fast float %9170, %100
  %9173 = fmul fast float %9171, 2.000000e+00
  %9174 = fmul fast float %9172, 2.000000e+00
  %9175 = fsub fast float 1.000000e+00, %9173
  %9176 = fsub fast float 1.000000e+00, %9174
  %9177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9178 = extractvalue %dx.types.CBufRet.f32 %9177, 0
  %9179 = extractvalue %dx.types.CBufRet.f32 %9177, 1
  %9180 = extractvalue %dx.types.CBufRet.f32 %9177, 2
  %9181 = fmul fast float %9175, %9178
  %9182 = fmul fast float %9175, %9179
  %9183 = fmul fast float %9175, %9180
  %9184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9185 = extractvalue %dx.types.CBufRet.f32 %9184, 0
  %9186 = extractvalue %dx.types.CBufRet.f32 %9184, 1
  %9187 = extractvalue %dx.types.CBufRet.f32 %9184, 2
  %9188 = fmul fast float %9176, %9185
  %9189 = fmul fast float %9176, %9186
  %9190 = fmul fast float %9176, %9187
  %9191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9192 = extractvalue %dx.types.CBufRet.f32 %9191, 0
  %9193 = extractvalue %dx.types.CBufRet.f32 %9191, 1
  %9194 = extractvalue %dx.types.CBufRet.f32 %9191, 2
  %9195 = fadd fast float %9188, %9192
  %9196 = fadd fast float %9195, %9181
  %9197 = fadd fast float %9189, %9193
  %9198 = fadd fast float %9197, %9182
  %9199 = fadd fast float %9190, %9194
  %9200 = fadd fast float %9199, %9183
  %9201 = fmul fast float %9196, %8375
  %9202 = fmul fast float %9198, %8375
  %9203 = fmul fast float %9200, %8375
  %9204 = fmul fast float %9201, %9201
  %9205 = fmul fast float %9202, %9202
  %9206 = fadd fast float %9204, %9205
  %9207 = fmul fast float %9203, %9203
  %9208 = fadd fast float %9206, %9207
  %9209 = call float @dx.op.unary.f32(i32 24, float %9208)  ; Sqrt(value)
  %9210 = extractvalue %dx.types.CBufRet.f32 %8105, 0
  %9211 = fsub fast float %9209, %9210
  %9212 = extractvalue %dx.types.CBufRet.f32 %8105, 2
  %9213 = fmul fast float %9211, %9212
  %9214 = call float @dx.op.unary.f32(i32 7, float %9213)  ; Saturate(value)
  %9215 = fadd fast float %9214, -5.000000e-01
  %9216 = fmul fast float %9215, 2.000000e+00
  %9217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9218 = extractvalue %dx.types.CBufRet.f32 %9217, 2
  %9219 = call float @dx.op.binary.f32(i32 36, float %9218, float %9216)  ; FMin(a,b)
  %9220 = fsub fast float -0.000000e+00, %9218
  %9221 = fcmp fast ogt float %9219, %9220
  br i1 %9221, label %9222, label %9531, !dx.controlflow.hints !165

; <label>:9222                                    ; preds = %9167
  %9223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9224 = extractvalue %dx.types.CBufRet.f32 %9223, 3
  %9225 = fcmp fast ogt float %9224, 0.000000e+00
  br i1 %9225, label %9226, label %9301, !dx.controlflow.hints !166

; <label>:9226                                    ; preds = %9222
  %9227 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %25, i32 0)  ; GetDimensions(handle,mipLevel)
  %9228 = extractvalue %dx.types.Dimensions %9227, 0
  %9229 = sitofp i32 %9228 to float
  %9230 = extractvalue %dx.types.Dimensions %9227, 1
  %9231 = sitofp i32 %9230 to float
  %9232 = fmul fast float %9171, %9229
  %9233 = fmul fast float %9172, %9231
  %9234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %9235 = extractvalue %dx.types.CBufRet.f32 %9234, 1
  %9236 = fsub fast float -0.000000e+00, %9235
  %9237 = fptoui float %9236 to i32
  %9238 = fptoui float %9232 to i32
  %9239 = fptoui float %9233 to i32
  %9240 = and i32 %9237, 31
  %9241 = lshr i32 %9238, %9240
  %9242 = lshr i32 %9239, %9240
  %9243 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %25, i32 %9237, i32 %9241, i32 %9242, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9244 = extractvalue %dx.types.ResRet.f32 %9243, 0
  %9245 = fcmp fast olt float %9244, -1.000000e+00
  %9246 = fcmp fast ogt float %9244, -1.000000e+00
  %9247 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9248 = extractvalue %dx.types.CBufRet.f32 %9247, 1
  %9249 = select i1 %9246, float %9248, float 1.000000e+00
  %9250 = fadd fast float %9244, 1.000000e+00
  %9251 = fmul fast float %9249, %9250
  %9252 = call float @dx.op.unary.f32(i32 6, float %9251)  ; FAbs(value)
  %9253 = extractvalue %dx.types.CBufRet.f32 %9247, 3
  %9254 = fcmp fast oge float %9252, %9253
  %9255 = select i1 %9254, float 0x4197782600000000, float %9252
  %9256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9257 = extractvalue %dx.types.CBufRet.f32 %9256, 0
  %9258 = extractvalue %dx.types.CBufRet.f32 %9256, 1
  %9259 = extractvalue %dx.types.CBufRet.f32 %9256, 2
  %9260 = select i1 %9245, float %9257, float %9178
  %9261 = select i1 %9245, float %9258, float %9179
  %9262 = select i1 %9245, float %9259, float %9180
  %9263 = fmul fast float %9260, %9175
  %9264 = fmul fast float %9261, %9175
  %9265 = fmul fast float %9262, %9175
  %9266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9267 = extractvalue %dx.types.CBufRet.f32 %9266, 0
  %9268 = extractvalue %dx.types.CBufRet.f32 %9266, 1
  %9269 = extractvalue %dx.types.CBufRet.f32 %9266, 2
  %9270 = select i1 %9245, float %9267, float %9185
  %9271 = select i1 %9245, float %9268, float %9186
  %9272 = select i1 %9245, float %9269, float %9187
  %9273 = fmul fast float %9270, %9176
  %9274 = fmul fast float %9271, %9176
  %9275 = fmul fast float %9272, %9176
  %9276 = fadd fast float %9273, %9263
  %9277 = fadd fast float %9274, %9264
  %9278 = fadd fast float %9275, %9265
  %9279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9280 = extractvalue %dx.types.CBufRet.f32 %9279, 0
  %9281 = extractvalue %dx.types.CBufRet.f32 %9279, 1
  %9282 = extractvalue %dx.types.CBufRet.f32 %9279, 2
  %9283 = select i1 %9245, float %9280, float %9192
  %9284 = select i1 %9245, float %9281, float %9193
  %9285 = select i1 %9245, float %9282, float %9194
  %9286 = fadd fast float %9276, %9283
  %9287 = fadd fast float %9277, %9284
  %9288 = fadd fast float %9278, %9285
  %9289 = fmul fast float %9286, %9255
  %9290 = fmul fast float %9287, %9255
  %9291 = fmul fast float %9288, %9255
  %9292 = fmul fast float %9289, %9289
  %9293 = fmul fast float %9290, %9290
  %9294 = fadd fast float %9292, %9293
  %9295 = fmul fast float %9291, %9291
  %9296 = fadd fast float %9294, %9295
  %9297 = call float @dx.op.unary.f32(i32 24, float %9296)  ; Sqrt(value)
  %9298 = fsub fast float %9297, %9210
  %9299 = fmul fast float %9298, %9212
  %9300 = call float @dx.op.unary.f32(i32 7, float %9299)  ; Saturate(value)
  br label %9301

; <label>:9301                                    ; preds = %9226, %9222
  %9302 = phi float [ %9300, %9226 ], [ 1.000000e+00, %9222 ]
  %9303 = fmul fast float %9219, 5.000000e-01
  %9304 = fadd fast float %9303, 5.000000e-01
  %9305 = call float @dx.op.unary.f32(i32 22, float %9304)  ; Frc(value)
  %9306 = call float @dx.op.unary.f32(i32 27, float %9305)  ; Round_ni(value)
  %9307 = call float @dx.op.unary.f32(i32 22, float %9305)  ; Frc(value)
  %9308 = fmul fast float %9307, 2.000000e+00
  %9309 = fadd fast float %9308, -1.000000e+00
  %9310 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %44, float %9171, float %9172, float %9306, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9311 = extractvalue %dx.types.ResRet.f32 %9310, 0
  %9312 = extractvalue %dx.types.ResRet.f32 %9310, 1
  %9313 = extractvalue %dx.types.ResRet.f32 %9310, 2
  %9314 = extractvalue %dx.types.ResRet.f32 %9310, 3
  %9315 = fadd fast float %9311, -5.000000e-01
  %9316 = fadd fast float %9313, -5.000000e-01
  %9317 = fmul fast float %9315, 0xBFD5555560000000
  %9318 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9316, float %9317)  ; FMad(a,b,c)
  %9319 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9312, float 0.000000e+00)  ; FMad(a,b,c)
  %9320 = fadd fast float %9319, %9314
  %9321 = fmul fast float %9315, -7.500000e-01
  %9322 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9316, float %9321)  ; FMad(a,b,c)
  %9323 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9312, float 0.000000e+00)  ; FMad(a,b,c)
  %9324 = fadd fast float %9323, %9314
  %9325 = call float @dx.op.binary.f32(i32 35, float %9318, float -1.000000e+00)  ; FMax(a,b)
  %9326 = call float @dx.op.binary.f32(i32 35, float %9320, float -1.000000e+00)  ; FMax(a,b)
  %9327 = call float @dx.op.binary.f32(i32 35, float %9322, float -1.000000e+00)  ; FMax(a,b)
  %9328 = call float @dx.op.binary.f32(i32 35, float %9324, float -1.000000e+00)  ; FMax(a,b)
  %9329 = call float @dx.op.binary.f32(i32 36, float %9325, float 1.000000e+00)  ; FMin(a,b)
  %9330 = call float @dx.op.binary.f32(i32 36, float %9326, float 1.000000e+00)  ; FMin(a,b)
  %9331 = call float @dx.op.binary.f32(i32 36, float %9327, float 1.000000e+00)  ; FMin(a,b)
  %9332 = call float @dx.op.binary.f32(i32 36, float %9328, float 1.000000e+00)  ; FMin(a,b)
  %9333 = fcmp fast olt float %9329, 0x3FEFFF8020000000
  br i1 %9333, label %9334, label %9449, !dx.controlflow.hints !167

; <label>:9334                                    ; preds = %9301
  %9335 = extractvalue %dx.types.CBufRet.f32 %9217, 3
  %9336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9337 = extractvalue %dx.types.CBufRet.f32 %9336, 0
  %9338 = extractvalue %dx.types.CBufRet.f32 %9336, 1
  %9339 = extractvalue %dx.types.CBufRet.f32 %9336, 2
  %9340 = extractvalue %dx.types.CBufRet.f32 %9336, 3
  %9341 = fsub fast float %9337, %9329
  %9342 = fsub fast float %9338, %9330
  %9343 = fsub fast float %9339, %9331
  %9344 = fsub fast float %9340, %9332
  %9345 = fmul fast float %9341, %9335
  %9346 = fmul fast float %9342, %9335
  %9347 = fmul fast float %9343, %9335
  %9348 = fmul fast float %9344, %9335
  %9349 = fadd fast float %9345, %9329
  %9350 = fadd fast float %9346, %9330
  %9351 = fsub fast float -0.000000e+00, %9350
  %9352 = fadd fast float %9347, %9331
  %9353 = fadd fast float %9348, %9332
  %9354 = fmul fast float %9349, %9349
  %9355 = fsub fast float %9350, %9354
  %9356 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9355)  ; FMax(a,b)
  %9357 = fdiv fast float 1.000000e+00, %9356
  %9358 = fmul fast float %9350, %9349
  %9359 = fsub fast float %9352, %9358
  %9360 = fsub fast float %9309, %9349
  %9361 = fmul fast float %9309, %9309
  %9362 = fsub fast float %9361, %9350
  %9363 = fmul fast float %9360, %9357
  %9364 = fmul fast float %9363, %9359
  %9365 = fsub fast float %9362, %9364
  %9366 = fmul fast float %9350, %9350
  %9367 = fsub fast float %9353, %9366
  %9368 = fmul fast float %9359, %9359
  %9369 = fmul fast float %9368, %9357
  %9370 = fsub fast float %9367, %9369
  %9371 = fdiv fast float %9365, %9370
  %9372 = fmul fast float %9359, %9371
  %9373 = fsub fast float %9360, %9372
  %9374 = fmul fast float %9373, %9357
  %9375 = fmul fast float %9374, %9349
  %9376 = fsub fast float 1.000000e+00, %9375
  %9377 = fmul fast float %9350, %9371
  %9378 = fsub fast float %9376, %9377
  %9379 = fmul fast float %9374, %9374
  %9380 = fmul fast float %9371, 4.000000e+00
  %9381 = fmul fast float %9380, %9378
  %9382 = fsub fast float %9379, %9381
  %9383 = call float @dx.op.unary.f32(i32 24, float %9382)  ; Sqrt(value)
  %9384 = fcmp fast oge float %9374, 0.000000e+00
  %9385 = fsub fast float -0.000000e+00, %9383
  %9386 = select i1 %9384, float %9385, float %9383
  %9387 = fsub fast float %9386, %9374
  %9388 = fdiv fast float %9387, %9371
  %9389 = fdiv fast float %9378, %9387
  %9390 = fmul fast float %9388, 5.000000e-01
  %9391 = fmul fast float %9389, 2.000000e+00
  %9392 = select i1 %9384, float %9390, float %9391
  %9393 = select i1 %9384, float %9391, float %9390
  %9394 = call float @dx.op.binary.f32(i32 35, float %9392, float %9393)  ; FMax(a,b)
  %9395 = call float @dx.op.binary.f32(i32 36, float %9392, float %9393)  ; FMin(a,b)
  %9396 = fcmp fast ogt float %9309, %9395
  br i1 %9396, label %9397, label %9407

; <label>:9397                                    ; preds = %9334
  %9398 = fsub fast float %9309, %9395
  %9399 = fsub fast float %9394, %9395
  %9400 = fmul fast float %9398, %9399
  %9401 = fmul fast float %9394, %9309
  %9402 = fadd fast float %9394, %9309
  %9403 = fmul fast float %9402, %9349
  %9404 = fadd fast float %9401, %9350
  %9405 = fsub fast float %9404, %9403
  %9406 = fdiv fast float %9405, %9400
  br label %9407

; <label>:9407                                    ; preds = %9397, %9334
  %9408 = phi float [ %9406, %9397 ], [ 0.000000e+00, %9334 ]
  %9409 = fcmp fast ogt float %9309, %9394
  %9410 = fsub fast float %9309, %9394
  br i1 %9409, label %9411, label %9421

; <label>:9411                                    ; preds = %9407
  %9412 = fsub fast float %9394, %9395
  %9413 = fmul fast float %9412, %9410
  %9414 = fmul fast float %9395, %9309
  %9415 = fadd fast float %9395, %9309
  %9416 = fmul fast float %9415, %9349
  %9417 = fsub fast float %9351, %9414
  %9418 = fadd fast float %9417, %9416
  %9419 = fdiv fast float %9418, %9413
  %9420 = fadd fast float %9419, %9408
  br label %9421

; <label>:9421                                    ; preds = %9411, %9407
  %9422 = phi float [ %9420, %9411 ], [ %9408, %9407 ]
  %9423 = fsub fast float %9309, %9395
  %9424 = fmul fast float %9423, %9410
  %9425 = fmul fast float %9395, %9394
  %9426 = fadd fast float %9395, %9394
  %9427 = fmul fast float %9426, %9349
  %9428 = fadd fast float %9425, %9350
  %9429 = fsub fast float %9428, %9427
  %9430 = fdiv fast float %9429, %9424
  %9431 = call float @dx.op.unary.f32(i32 7, float %9422)  ; Saturate(value)
  %9432 = fcmp fast oeq float %8106, 0.000000e+00
  %9433 = extractvalue %dx.types.CBufRet.f32 %9217, 0
  %9434 = fcmp fast oeq float %9433, 0.000000e+00
  %9435 = or i1 %9432, %9434
  %9436 = fmul fast float %9433, 2.000000e+00
  %9437 = fadd fast float %9218, %9219
  %9438 = fdiv fast float %9437, %9436
  %9439 = call float @dx.op.unary.f32(i32 7, float %9438)  ; Saturate(value)
  %9440 = fmul fast float %9439, 2.000000e+00
  %9441 = fsub fast float 3.000000e+00, %9440
  %9442 = fmul fast float %9439, %9439
  %9443 = fmul fast float %9442, %9441
  %9444 = select i1 %9435, float 1.000000e+00, float %9443
  %9445 = fmul fast float %9430, %8106
  %9446 = fadd fast float %9431, %9445
  %9447 = call float @dx.op.unary.f32(i32 7, float %9446)  ; Saturate(value)
  %9448 = fmul fast float %9444, %9447
  br label %9449

; <label>:9449                                    ; preds = %9421, %9301
  %9450 = phi float [ %9448, %9421 ], [ 0.000000e+00, %9301 ]
  %9451 = fsub fast float 1.000000e+00, %9450
  %9452 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %44, float %9171, float %9172, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9453 = extractvalue %dx.types.ResRet.f32 %9452, 0
  %9454 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9455 = extractvalue %dx.types.CBufRet.i32 %9454, 2
  %9456 = icmp eq i32 %9455, 0
  br i1 %9456, label %9462, label %9457

; <label>:9457                                    ; preds = %9449
  %9458 = call float @dx.op.unary.f32(i32 7, float %9450)  ; Saturate(value)
  %9459 = fadd fast float %9453, -1.000000e+00
  %9460 = fmul fast float %9458, %9459
  %9461 = fadd fast float %9460, 1.000000e+00
  br label %9462

; <label>:9462                                    ; preds = %9457, %9449
  %9463 = phi float [ %9461, %9457 ], [ %9451, %9449 ]
  br i1 %9225, label %9464, label %9482

; <label>:9464                                    ; preds = %9462
  %9465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9466 = extractvalue %dx.types.CBufRet.f32 %9465, 1
  %9467 = fsub fast float %9302, %9466
  %9468 = call float @dx.op.unary.f32(i32 7, float %9467)  ; Saturate(value)
  %9469 = fsub fast float %9302, %9224
  %9470 = call float @dx.op.unary.f32(i32 7, float %9469)  ; Saturate(value)
  %9471 = fsub fast float %9468, %9470
  %9472 = fsub fast float %9304, %9470
  %9473 = fdiv fast float %9472, %9471
  %9474 = call float @dx.op.unary.f32(i32 7, float %9473)  ; Saturate(value)
  %9475 = fmul fast float %9474, 2.000000e+00
  %9476 = fsub fast float 3.000000e+00, %9475
  %9477 = fsub fast float %9453, %9463
  %9478 = fmul fast float %9474, %9474
  %9479 = fmul fast float %9478, %9477
  %9480 = fmul fast float %9479, %9476
  %9481 = fadd fast float %9480, %9463
  br label %9482

; <label>:9482                                    ; preds = %9464, %9462
  %9483 = phi float [ %9481, %9464 ], [ %9463, %9462 ]
  %9484 = call float @dx.op.binary.f32(i32 35, float %9453, float %9483)  ; FMax(a,b)
  %9485 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9486 = extractvalue %dx.types.CBufRet.i32 %9485, 2
  %9487 = and i32 %9486, 1
  %9488 = icmp eq i32 %9487, 0
  %9489 = fcmp fast une float %9484, 1.000000e+00
  %9490 = and i1 %9489, %9488
  br i1 %9490, label %9491, label %9510

; <label>:9491                                    ; preds = %9482
  %9492 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %44, float %9171, float %9172, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9493 = extractvalue %dx.types.ResRet.f32 %9492, 0
  %9494 = extractvalue %dx.types.ResRet.f32 %9492, 1
  %9495 = extractvalue %dx.types.ResRet.f32 %9492, 2
  %9496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9497 = extractvalue %dx.types.CBufRet.f32 %9496, 1
  %9498 = fmul fast float %9497, %9493
  %9499 = fmul fast float %9497, %9494
  %9500 = fmul fast float %9497, %9495
  %9501 = fcmp fast ogt float %9453, 0x3FEFFF2E40000000
  %9502 = fsub fast float 1.000000e+00, %9484
  %9503 = fsub fast float 1.000000e+00, %9453
  %9504 = fdiv fast float %9502, %9503
  %9505 = call float @dx.op.unary.f32(i32 7, float %9504)  ; Saturate(value)
  %9506 = select i1 %9501, float 0.000000e+00, float %9505
  %9507 = fmul fast float %9498, %9506
  %9508 = fmul fast float %9499, %9506
  %9509 = fmul fast float %9500, %9506
  br label %9510

; <label>:9510                                    ; preds = %9491, %9482
  %9511 = phi float [ 0.000000e+00, %9482 ], [ %9507, %9491 ]
  %9512 = phi float [ 0.000000e+00, %9482 ], [ %9508, %9491 ]
  %9513 = phi float [ 0.000000e+00, %9482 ], [ %9509, %9491 ]
  %9514 = fmul fast float %9484, %9146
  %9515 = call float @dx.op.dot3.f32(i32 55, float %9484, float %9484, float %9484, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9516 = call float @dx.op.dot3.f32(i32 55, float %9511, float %9512, float %9513, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9517 = select i1 %215, float %9515, float %9484
  %9518 = select i1 %215, float 1.000000e+00, float %9484
  %9519 = select i1 %215, float %9516, float %9511
  %9520 = select i1 %215, float 0.000000e+00, float %9512
  %9521 = select i1 %215, float 0.000000e+00, float %9513
  %9522 = fmul fast float %9517, %9158
  %9523 = fmul fast float %9517, %9159
  %9524 = fmul fast float %9518, %9160
  %9525 = fadd fast float %9522, %9519
  %9526 = fadd fast float %9523, %9520
  %9527 = fadd fast float %9521, %9524
  %9528 = fmul fast float %9517, %9161
  %9529 = fmul fast float %9517, %9162
  %9530 = fmul fast float %9518, %9163
  br label %9531

; <label>:9531                                    ; preds = %9510, %9167, %9139, %8371
  %9532 = phi float [ %8376, %8371 ], [ %9158, %9139 ], [ %9525, %9510 ], [ %9158, %9167 ]
  %9533 = phi float [ %8377, %8371 ], [ %9159, %9139 ], [ %9526, %9510 ], [ %9159, %9167 ]
  %9534 = phi float [ %8378, %8371 ], [ %9160, %9139 ], [ %9527, %9510 ], [ %9160, %9167 ]
  %9535 = phi float [ %8379, %8371 ], [ %9161, %9139 ], [ %9528, %9510 ], [ %9161, %9167 ]
  %9536 = phi float [ %8380, %8371 ], [ %9162, %9139 ], [ %9529, %9510 ], [ %9162, %9167 ]
  %9537 = phi float [ %8381, %8371 ], [ %9163, %9139 ], [ %9530, %9510 ], [ %9163, %9167 ]
  %9538 = phi float [ %8382, %8371 ], [ %9146, %9139 ], [ %9514, %9510 ], [ %9146, %9167 ]
  %9539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9540 = extractvalue %dx.types.CBufRet.f32 %9539, 2
  %9541 = extractvalue %dx.types.CBufRet.f32 %9539, 3
  %9542 = fmul fast float %9540, %99
  %9543 = fmul fast float %9541, %100
  %9544 = call float @dx.op.unary.f32(i32 7, float %9542)  ; Saturate(value)
  %9545 = call float @dx.op.unary.f32(i32 7, float %9543)  ; Saturate(value)
  %9546 = select i1 %8116, i32 2, i32 0
  %9547 = or i32 %9546, 1
  %9548 = uitofp i32 %9547 to float
  %9549 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %44, float %9544, float %9545, float %9548, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9550 = extractvalue %dx.types.ResRet.f32 %9549, 0
  %9551 = extractvalue %dx.types.ResRet.f32 %9549, 1
  %9552 = extractvalue %dx.types.ResRet.f32 %9549, 2
  %9553 = extractvalue %dx.types.ResRet.f32 %9549, 3
  %9554 = add nuw nsw i32 %9546, 2
  %9555 = uitofp i32 %9554 to float
  %9556 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %44, float %9544, float %9545, float %9555, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9557 = extractvalue %dx.types.ResRet.f32 %9556, 0
  %9558 = extractvalue %dx.types.ResRet.f32 %9556, 1
  %9559 = extractvalue %dx.types.ResRet.f32 %9556, 2
  %9560 = extractvalue %dx.types.ResRet.f32 %9556, 3
  %9561 = call float @dx.op.binary.f32(i32 35, float %9551, float %9552)  ; FMax(a,b)
  %9562 = call float @dx.op.binary.f32(i32 35, float %9550, float %9561)  ; FMax(a,b)
  %9563 = call float @dx.op.binary.f32(i32 35, float %9562, float %9553)  ; FMax(a,b)
  %9564 = call float @dx.op.binary.f32(i32 36, float %9558, float %9559)  ; FMin(a,b)
  %9565 = call float @dx.op.binary.f32(i32 36, float %9557, float %9564)  ; FMin(a,b)
  %9566 = call float @dx.op.binary.f32(i32 36, float %9565, float %9560)  ; FMin(a,b)
  %9567 = fmul fast float %9563, 2.550000e+02
  %9568 = fadd fast float %9567, 0x3F70101020000000
  %9569 = fptoui float %9568 to i32
  %9570 = fmul fast float %9566, 2.550000e+02
  %9571 = fadd fast float %9570, 0x3F70101020000000
  %9572 = fptoui float %9571 to i32
  %9573 = icmp ult i32 %9569, %9572
  br i1 %9573, label %9574, label %9743

; <label>:9574                                    ; preds = %9531
  %9575 = fcmp fast ogt float %86, 9.843750e-01
  %9576 = fadd fast float %8375, -4.000000e+00
  %9577 = select i1 %9575, float -4.000000e+00, float %9576
  %9578 = call float @dx.op.binary.f32(i32 35, float %9577, float 0.000000e+00)  ; FMax(a,b)
  %9579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9580 = extractvalue %dx.types.CBufRet.f32 %9579, 0
  %9581 = fadd fast float %9580, %9578
  %9582 = extractvalue %dx.types.CBufRet.f32 %9579, 2
  %9583 = fmul fast float %9581, %9582
  %9584 = call float @dx.op.unary.f32(i32 23, float %9583)  ; Log(value)
  %9585 = extractvalue %dx.types.CBufRet.f32 %9579, 3
  %9586 = fmul fast float %9585, %9584
  %9587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9588 = extractvalue %dx.types.CBufRet.f32 %9587, 2
  %9589 = fmul fast float %9586, %9588
  %9590 = call float @dx.op.unary.f32(i32 7, float %9589)  ; Saturate(value)
  %9591 = uitofp i32 %9569 to float
  %9592 = uitofp i32 %9572 to float
  %9593 = fadd fast float %9591, 5.000000e-01
  %9594 = fadd fast float %9592, 5.000000e-01
  %9595 = fmul fast float %9588, %9593
  %9596 = fmul fast float %9588, %9594
  %9597 = fadd fast float %9595, 0x3F0FFB4800000000
  %9598 = fadd fast float %9596, 0xBF0FFB4800000000
  %9599 = call float @dx.op.binary.f32(i32 35, float %9590, float %9597)  ; FMax(a,b)
  %9600 = call float @dx.op.binary.f32(i32 36, float %9599, float %9598)  ; FMin(a,b)
  %9601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9602 = extractvalue %dx.types.CBufRet.f32 %9601, 1
  %9603 = extractvalue %dx.types.CBufRet.f32 %9601, 2
  %9604 = extractvalue %dx.types.CBufRet.f32 %9601, 0
  %9605 = select i1 %8116, float %9604, float 0.000000e+00
  %9606 = fmul fast float %9602, %9600
  %9607 = fadd fast float %9605, %9606
  %9608 = fadd fast float %9605, %9603
  %9609 = fsub fast float %9602, %9603
  %9610 = fadd fast float %9609, %9605
  %9611 = call float @dx.op.binary.f32(i32 35, float %9607, float %9608)  ; FMax(a,b)
  %9612 = call float @dx.op.binary.f32(i32 36, float %9611, float %9610)  ; FMin(a,b)
  %9613 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %42, float %9544, float %9545, float %9612, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9614 = extractvalue %dx.types.ResRet.f32 %9613, 0
  %9615 = extractvalue %dx.types.ResRet.f32 %9613, 1
  %9616 = extractvalue %dx.types.ResRet.f32 %9613, 2
  %9617 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9618 = extractvalue %dx.types.CBufRet.i32 %9617, 0
  %9619 = extractvalue %dx.types.CBufRet.i32 %9617, 1
  %9620 = uitofp i32 %9618 to float
  %9621 = uitofp i32 %9619 to float
  %9622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9623 = extractvalue %dx.types.CBufRet.f32 %9622, 0
  %9624 = extractvalue %dx.types.CBufRet.f32 %9622, 1
  %9625 = fmul fast float %9620, %9544
  %9626 = fmul fast float %9621, %9545
  %9627 = fadd fast float %9625, -5.000000e-01
  %9628 = fadd fast float %9626, -5.000000e-01
  %9629 = call float @dx.op.unary.f32(i32 22, float %9627)  ; Frc(value)
  %9630 = call float @dx.op.unary.f32(i32 22, float %9628)  ; Frc(value)
  %9631 = fmul fast float %9629, %9629
  %9632 = fmul fast float %9631, %9629
  %9633 = fsub fast float 3.000000e+00, %9629
  %9634 = fmul fast float %9631, %9633
  %9635 = fmul fast float %9629, 3.000000e+00
  %9636 = fmul fast float %9632, 3.000000e+00
  %9637 = fmul fast float %9631, 6.000000e+00
  %9638 = fsub fast float %9636, %9637
  %9639 = fadd fast float %9638, 4.000000e+00
  %9640 = fmul fast float %9639, 0x3FC5555560000000
  %9641 = fmul fast float %9632, -3.000000e+00
  %9642 = fadd fast float %9631, %9629
  %9643 = fmul fast float %9642, 3.000000e+00
  %9644 = fadd fast float %9641, 1.000000e+00
  %9645 = fadd fast float %9644, %9643
  %9646 = fmul fast float %9632, 0x3FC5555560000000
  %9647 = fmul fast float %9630, %9630
  %9648 = fmul fast float %9647, %9630
  %9649 = fsub fast float 3.000000e+00, %9630
  %9650 = fmul fast float %9647, %9649
  %9651 = fmul fast float %9630, 3.000000e+00
  %9652 = fmul fast float %9648, 3.000000e+00
  %9653 = fmul fast float %9647, 6.000000e+00
  %9654 = fsub fast float %9652, %9653
  %9655 = fadd fast float %9654, 4.000000e+00
  %9656 = fmul fast float %9655, 0x3FC5555560000000
  %9657 = fmul fast float %9648, -3.000000e+00
  %9658 = fadd fast float %9647, %9630
  %9659 = fmul fast float %9658, 3.000000e+00
  %9660 = fadd fast float %9657, 1.000000e+00
  %9661 = fadd fast float %9660, %9659
  %9662 = fmul fast float %9648, 0x3FC5555560000000
  %9663 = fadd fast float %9629, 1.000000e+00
  %9664 = fsub fast float 1.000000e+00, %9635
  %9665 = fadd fast float %9664, %9634
  %9666 = fadd fast float %9665, %9639
  %9667 = fmul fast float %9666, 0x3FC5555560000000
  %9668 = fdiv fast float %9640, %9667
  %9669 = fsub fast float %9663, %9668
  %9670 = fsub fast float 1.000000e+00, %9629
  %9671 = fadd fast float %9645, %9632
  %9672 = fmul fast float %9671, 0x3FC5555560000000
  %9673 = fdiv fast float %9646, %9672
  %9674 = fadd fast float %9670, %9673
  %9675 = fadd fast float %9630, 1.000000e+00
  %9676 = fsub fast float 1.000000e+00, %9651
  %9677 = fadd fast float %9676, %9650
  %9678 = fadd fast float %9677, %9655
  %9679 = fmul fast float %9678, 0x3FC5555560000000
  %9680 = fdiv fast float %9656, %9679
  %9681 = fsub fast float %9675, %9680
  %9682 = fsub fast float 1.000000e+00, %9630
  %9683 = fadd fast float %9661, %9648
  %9684 = fmul fast float %9683, 0x3FC5555560000000
  %9685 = fdiv fast float %9662, %9684
  %9686 = fadd fast float %9685, %9682
  %9687 = fmul fast float %9669, %9623
  %9688 = fsub fast float %9544, %9687
  %9689 = fmul fast float %9674, %9623
  %9690 = fadd fast float %9689, %9544
  %9691 = fmul fast float %9686, %9624
  %9692 = fadd fast float %9691, %9545
  %9693 = fmul fast float %9681, %9624
  %9694 = fsub fast float %9545, %9693
  %9695 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %9688, float %9694, float %9612, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9696 = extractvalue %dx.types.ResRet.f32 %9695, 0
  %9697 = extractvalue %dx.types.ResRet.f32 %9695, 1
  %9698 = extractvalue %dx.types.ResRet.f32 %9695, 2
  %9699 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %9690, float %9694, float %9612, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9700 = extractvalue %dx.types.ResRet.f32 %9699, 0
  %9701 = extractvalue %dx.types.ResRet.f32 %9699, 1
  %9702 = extractvalue %dx.types.ResRet.f32 %9699, 2
  %9703 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %9688, float %9692, float %9612, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9704 = extractvalue %dx.types.ResRet.f32 %9703, 0
  %9705 = extractvalue %dx.types.ResRet.f32 %9703, 1
  %9706 = extractvalue %dx.types.ResRet.f32 %9703, 2
  %9707 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %9690, float %9692, float %9612, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9708 = extractvalue %dx.types.ResRet.f32 %9707, 0
  %9709 = extractvalue %dx.types.ResRet.f32 %9707, 1
  %9710 = extractvalue %dx.types.ResRet.f32 %9707, 2
  %9711 = fsub fast float %9704, %9696
  %9712 = fsub fast float %9705, %9697
  %9713 = fsub fast float %9706, %9698
  %9714 = fmul fast float %9711, %9684
  %9715 = fmul fast float %9712, %9684
  %9716 = fmul fast float %9713, %9684
  %9717 = fadd fast float %9714, %9696
  %9718 = fadd fast float %9715, %9697
  %9719 = fadd fast float %9716, %9698
  %9720 = fsub fast float %9708, %9700
  %9721 = fsub fast float %9709, %9701
  %9722 = fsub fast float %9710, %9702
  %9723 = fmul fast float %9720, %9684
  %9724 = fmul fast float %9721, %9684
  %9725 = fmul fast float %9722, %9684
  %9726 = fsub fast float %9700, %9717
  %9727 = fadd fast float %9726, %9723
  %9728 = fsub fast float %9701, %9718
  %9729 = fadd fast float %9728, %9724
  %9730 = fsub fast float %9702, %9719
  %9731 = fadd fast float %9730, %9725
  %9732 = fmul fast float %9727, %9672
  %9733 = fmul fast float %9729, %9672
  %9734 = fmul fast float %9731, %9672
  %9735 = fadd fast float %9732, %9717
  %9736 = fadd fast float %9733, %9718
  %9737 = fadd fast float %9734, %9719
  %9738 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9739 = extractvalue %dx.types.CBufRet.f32 %9738, 1
  %9740 = fmul fast float %9735, %9739
  %9741 = fmul fast float %9736, %9739
  %9742 = fmul fast float %9737, %9739
  br label %9743

; <label>:9743                                    ; preds = %9574, %9531
  %9744 = phi float [ %9614, %9574 ], [ 1.000000e+00, %9531 ]
  %9745 = phi float [ %9615, %9574 ], [ 1.000000e+00, %9531 ]
  %9746 = phi float [ %9616, %9574 ], [ 1.000000e+00, %9531 ]
  %9747 = phi float [ %9740, %9574 ], [ 0.000000e+00, %9531 ]
  %9748 = phi float [ %9741, %9574 ], [ 0.000000e+00, %9531 ]
  %9749 = phi float [ %9742, %9574 ], [ 0.000000e+00, %9531 ]
  %9750 = fmul fast float %9744, %9538
  %9751 = call float @dx.op.dot3.f32(i32 55, float %9744, float %9745, float %9746, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9752 = call float @dx.op.dot3.f32(i32 55, float %9747, float %9748, float %9749, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9753 = select i1 %215, float %9751, float %9744
  %9754 = select i1 %215, float %9751, float %9745
  %9755 = select i1 %215, float 1.000000e+00, float %9746
  %9756 = select i1 %215, float %9752, float %9747
  %9757 = select i1 %215, float 0.000000e+00, float %9748
  %9758 = select i1 %215, float 0.000000e+00, float %9749
  %9759 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9760 = extractvalue %dx.types.CBufRet.i32 %9759, 3
  %9761 = and i32 %9760, 3
  %9762 = icmp ne i32 %9761, 0
  %9763 = and i32 %9760, 4
  %9764 = icmp ne i32 %9763, 0
  %9765 = and i1 %9762, %9764
  %9766 = and i1 %215, %9765
  br i1 %9766, label %9767, label %9773

; <label>:9767                                    ; preds = %9743
  %9768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9769 = extractvalue %dx.types.CBufRet.f32 %9768, 1
  %9770 = fadd fast float %9750, -1.000000e+00
  %9771 = fmul fast float %9769, %9770
  %9772 = fadd fast float %9771, 1.000000e+00
  br label %9773

; <label>:9773                                    ; preds = %9767, %9743
  %9774 = phi float [ %9772, %9767 ], [ %9750, %9743 ]
  %9775 = fadd fast float %9535, %9532
  %9776 = fmul fast float %9753, %9775
  %9777 = fadd fast float %9776, %9756
  %9778 = fadd fast float %9536, %9533
  %9779 = fmul fast float %9754, %9778
  %9780 = fadd fast float %9779, %9757
  %9781 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9782 = extractvalue %dx.types.CBufRet.f32 %9781, 0
  br i1 %215, label %9783, label %9798

; <label>:9783                                    ; preds = %9773
  %9784 = fadd fast float %9777, %9780
  %9785 = fmul fast float %9782, %9784
  %9786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9787 = extractvalue %dx.types.CBufRet.f32 %9786, 3
  %9788 = extractvalue %dx.types.CBufRet.f32 %8098, 1
  %9789 = fsub fast float %8103, %8097
  %9790 = fadd fast float %9789, %8104
  %9791 = fsub fast float %9790, %9788
  %9792 = extractvalue %dx.types.CBufRet.f32 %8098, 2
  %9793 = fmul fast float %9791, %9792
  %9794 = call float @dx.op.unary.f32(i32 7, float %9793)  ; Saturate(value)
  %9795 = fsub fast float %9794, %9787
  %9796 = fmul fast float %9795, %9774
  %9797 = fadd fast float %9796, %9787
  br label %9822

; <label>:9798                                    ; preds = %9773
  %9799 = fadd fast float %9537, %9534
  %9800 = fmul fast float %9755, %9799
  %9801 = fadd fast float %9800, %9758
  %9802 = fmul fast float %9782, %9777
  %9803 = fmul fast float %9782, %9780
  %9804 = fmul fast float %9782, %9801
  %9805 = call float @dx.op.binary.f32(i32 35, float %9803, float %9804)  ; FMax(a,b)
  %9806 = call float @dx.op.binary.f32(i32 35, float %9802, float %9805)  ; FMax(a,b)
  %9807 = call float @dx.op.binary.f32(i32 35, float %9806, float 1.000000e+00)  ; FMax(a,b)
  %9808 = fcmp fast ugt float %9807, 0x3F10000000000000
  br i1 %9808, label %9810, label %9809

; <label>:9809                                    ; preds = %9798
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9810

; <label>:9810                                    ; preds = %9809, %9798
  %9811 = add i32 %50, 356
  %9812 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %9811, i32 undef)  ; BufferLoad(srv,index,wot)
  %9813 = extractvalue %dx.types.ResRet.i32 %9812, 0
  %9814 = and i32 %9813, 32
  %9815 = icmp eq i32 %9814, 0
  br i1 %9815, label %9822, label %9816

; <label>:9816                                    ; preds = %9810
  %9817 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9818 = extractvalue %dx.types.CBufRet.f32 %9817, 0
  %9819 = fmul fast float %9818, 0x3FE99999A0000000
  %9820 = fadd fast float %9818, %9802
  %9821 = fadd fast float %9819, %9804
  br label %9822

; <label>:9822                                    ; preds = %9816, %9810, %9783
  %9823 = phi float [ %9785, %9783 ], [ %9820, %9816 ], [ %9802, %9810 ]
  %9824 = phi float [ %9797, %9783 ], [ %9803, %9816 ], [ %9803, %9810 ]
  %9825 = phi float [ 1.000000e+00, %9783 ], [ %9821, %9816 ], [ %9804, %9810 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9826 = call float @dx.op.binary.f32(i32 36, float %9823, float 3.225500e+04)  ; FMin(a,b)
  %9827 = call float @dx.op.binary.f32(i32 36, float %9824, float 3.225500e+04)  ; FMin(a,b)
  %9828 = call float @dx.op.binary.f32(i32 36, float %9825, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9826)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9827)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9828)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 1.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

; Function Attrs: nounwind readnone
declare i32 @dx.op.tertiary.i32(i32, i32, i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32) #2

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
!dx.viewIdState = !{!63}
!dx.entryPoints = !{!64}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !51, !54}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !31, !32, !33, !34, !35, !36, !37, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50}
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
!25 = !{i32 18, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!26 = !{i32 19, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!27 = !{i32 20, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!28 = !{i32 21, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!29 = !{i32 22, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 56, i32 1, i32 2, i32 0, !30}
!30 = !{i32 0, i32 5}
!31 = !{i32 23, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 35, i32 1, i32 7, i32 0, !7}
!32 = !{i32 24, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!33 = !{i32 25, %"class.Texture3D<float>"* undef, !"", i32 2, i32 31, i32 1, i32 4, i32 0, !7}
!34 = !{i32 26, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 2, i32 1, i32 2, i32 0, !7}
!35 = !{i32 27, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 3, i32 1, i32 2, i32 0, !7}
!36 = !{i32 28, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 4, i32 1, i32 2, i32 0, !7}
!37 = !{i32 29, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 80, i32 1, i32 7, i32 0, !38}
!38 = !{i32 0, i32 14}
!39 = !{i32 30, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 67, i32 1, i32 11, i32 0, null}
!40 = !{i32 31, %"class.Texture2D<float>"* undef, !"", i32 2, i32 7, i32 1, i32 2, i32 0, !7}
!41 = !{i32 32, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 6, i32 1, i32 2, i32 0, !7}
!42 = !{i32 33, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 5, i32 1, i32 2, i32 0, !7}
!43 = !{i32 34, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 38, i32 1, i32 2, i32 0, !7}
!44 = !{i32 35, %"class.Texture1D<float>"* undef, !"", i32 2, i32 30, i32 1, i32 1, i32 0, !7}
!45 = !{i32 36, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 44, i32 1, i32 4, i32 0, !7}
!46 = !{i32 37, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!47 = !{i32 38, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!48 = !{i32 39, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !38}
!49 = !{i32 40, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!50 = !{i32 41, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 86, i32 1, i32 2, i32 0, !7}
!51 = !{!52, !53}
!52 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!53 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!54 = !{!55, !56, !57, !58, !59, !60, !61, !62}
!55 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!56 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!57 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!58 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!59 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!60 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!61 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!62 = !{i32 7, %struct.SamplerState* undef, !"", i32 0, i32 6, i32 1, i32 0, null}
!63 = !{[46 x i32] [i32 44, i32 4, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 3, i32 3, i32 3, i32 7, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7]}
!64 = !{void ()* @ps_main, !"ps_main", !65, !4, !86}
!65 = !{!66, !84, null}
!66 = !{!67, !70, !71, !73, !75, !76, !77, !78, !79, !80, !81, !83}
!67 = !{i32 0, !"SV_Position", i8 9, i8 3, !68, i8 4, i32 1, i8 4, i32 0, i8 0, !69}
!68 = !{i32 0}
!69 = !{i32 3, i32 15}
!70 = !{i32 1, !"COLOR", i8 9, i8 0, !68, i8 2, i32 1, i8 4, i32 1, i8 0, !69}
!71 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !68, i8 2, i32 1, i8 4, i32 2, i8 0, !72}
!72 = !{i32 3, i32 3}
!73 = !{i32 3, !"NORMAL", i8 9, i8 0, !68, i8 2, i32 1, i8 3, i32 3, i8 0, !74}
!74 = !{i32 3, i32 7}
!75 = !{i32 4, !"TANGENT", i8 9, i8 0, !68, i8 2, i32 1, i8 4, i32 4, i8 0, !69}
!76 = !{i32 5, !"SH_RED", i8 9, i8 0, !68, i8 2, i32 1, i8 4, i32 5, i8 0, !69}
!77 = !{i32 6, !"SH_GREEN", i8 9, i8 0, !68, i8 2, i32 1, i8 4, i32 6, i8 0, !69}
!78 = !{i32 7, !"SH_BLUE", i8 9, i8 0, !68, i8 2, i32 1, i8 4, i32 7, i8 0, !69}
!79 = !{i32 8, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !68, i8 2, i32 1, i8 2, i32 8, i8 0, !72}
!80 = !{i32 9, !"SCEONDARY_NORMAL", i8 9, i8 0, !68, i8 2, i32 1, i8 4, i32 9, i8 0, !69}
!81 = !{i32 10, !"PACKED_TRI_DATA", i8 5, i8 0, !68, i8 1, i32 1, i8 4, i32 10, i8 0, !82}
!82 = !{i32 3, i32 13}
!83 = !{i32 11, !"SV_SampleIndex", i8 5, i8 12, !68, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!84 = !{!85}
!85 = !{i32 0, !"SV_Target", i8 9, i8 16, !68, i8 0, i32 1, i8 4, i32 0, i8 0, !69}
!86 = !{i32 0, i64 16}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 1}
!88 = distinct !{!88, !89}
!89 = !{!"llvm.loop.unroll.disable"}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 1}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 1}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 1}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 1}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 1}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 1}
!96 = !{!97, !97, i64 0}
!97 = !{!"int", !98, i64 0}
!98 = !{!"omnipotent char", !99, i64 0}
!99 = !{!"Simple C/C++ TBAA"}
!100 = !{!101, !103, !105, !107}
!101 = distinct !{!101, !102, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!102 = distinct !{!102, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!103 = distinct !{!103, !104, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!104 = distinct !{!104, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!105 = distinct !{!105, !106, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!106 = distinct !{!106, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!107 = distinct !{!107, !108, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!108 = distinct !{!108, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!109 = distinct !{!109, !"dx.controlflow.hints", i32 1}
!110 = !{!111, !111, i64 0}
!111 = !{!"float", !98, i64 0}
!112 = distinct !{!112, !89}
!113 = distinct !{!113, !89}
!114 = distinct !{!114, !"dx.controlflow.hints", i32 1}
!115 = distinct !{!115, !"dx.controlflow.hints", i32 1}
!116 = distinct !{!116, !"dx.controlflow.hints", i32 1}
!117 = distinct !{!117, !"dx.controlflow.hints", i32 1}
!118 = distinct !{!118, !"dx.controlflow.hints", i32 1}
!119 = distinct !{!119, !"dx.controlflow.hints", i32 1}
!120 = distinct !{!120, !"dx.controlflow.hints", i32 1}
!121 = !{!122, !124, !126, !127, !129, !130, !131, !133, !134, !135}
!122 = distinct !{!122, !123, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!123 = distinct !{!123, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!124 = distinct !{!124, !125, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!125 = distinct !{!125, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!126 = distinct !{!126, !125, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!127 = distinct !{!127, !128, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!128 = distinct !{!128, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!129 = distinct !{!129, !128, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!130 = distinct !{!130, !128, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!131 = distinct !{!131, !132, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!132 = distinct !{!132, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!133 = distinct !{!133, !132, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!134 = distinct !{!134, !132, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!135 = distinct !{!135, !136, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!136 = distinct !{!136, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!137 = !{!138}
!138 = distinct !{!138, !139, !"\01?sort@@YAXAIAM00@Z: %c"}
!139 = distinct !{!139, !"\01?sort@@YAXAIAM00@Z"}
!140 = !{!141, !142, !122, !124, !126, !127, !129, !130, !131, !133, !134, !135}
!141 = distinct !{!141, !139, !"\01?sort@@YAXAIAM00@Z: %a"}
!142 = distinct !{!142, !139, !"\01?sort@@YAXAIAM00@Z: %b"}
!143 = !{!142}
!144 = !{!141, !138, !122, !124, !126, !127, !129, !130, !131, !133, !134, !135}
!145 = !{!141}
!146 = !{!142, !138, !122, !124, !126, !127, !129, !130, !131, !133, !134, !135}
!147 = !{!148}
!148 = distinct !{!148, !149, !"\01?sort@@YAXAIAM00@Z: %c"}
!149 = distinct !{!149, !"\01?sort@@YAXAIAM00@Z"}
!150 = !{!151, !152, !122, !124, !126, !127, !129, !130, !131, !133, !134, !135}
!151 = distinct !{!151, !149, !"\01?sort@@YAXAIAM00@Z: %a"}
!152 = distinct !{!152, !149, !"\01?sort@@YAXAIAM00@Z: %b"}
!153 = !{!152}
!154 = !{!151, !148, !122, !124, !126, !127, !129, !130, !131, !133, !134, !135}
!155 = !{!151}
!156 = !{!152, !148, !122, !124, !126, !127, !129, !130, !131, !133, !134, !135}
!157 = distinct !{!157, !"dx.controlflow.hints", i32 1}
!158 = distinct !{!158, !"dx.controlflow.hints", i32 2}
!159 = distinct !{!159, !"dx.controlflow.hints", i32 1}
!160 = distinct !{!160, !"dx.controlflow.hints", i32 1}
!161 = distinct !{!161, !"dx.controlflow.hints", i32 1}
!162 = distinct !{!162, !"dx.controlflow.hints", i32 1}
!163 = distinct !{!163, !"dx.controlflow.hints", i32 1}
!164 = distinct !{!164, !"dx.controlflow.hints", i32 1}
!165 = distinct !{!165, !"dx.controlflow.hints", i32 1}
!166 = distinct !{!166, !"dx.controlflow.hints", i32 1}
!167 = distinct !{!167, !"dx.controlflow.hints", i32 1}

