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
; AMBIENT_COLOR            0   xyz         5     NONE   float   xyz 
; HIGHLIGHT_DIR_VIS        0   xyzw        6     NONE   float   xyzw
; SECONDARY_TEXCOORDS      0   xy          7     NONE   float   xy  
; SCEONDARY_NORMAL         0   xyzw        8     NONE   float   xyzw
; PACKED_TRI_DATA          0   xyzw        9     NONE    uint   x zw
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
; SV_Target                1   xyzw        1   TARGET   float   xyzw
;
; shader hash: b47cbd5b60aee02ee5afc0e14b24dcad
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
; AMBIENT_COLOR            0                 linear       
; HIGHLIGHT_DIR_VIS        0                 linear       
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
; SV_Target                1                              
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
; Number of inputs: 40, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 36, 38, 39 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 36, 38, 39 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 36, 38, 39 }
;   output 4 depends on inputs: { 0, 1, 3, 4, 8, 9, 12, 13, 14, 28, 29, 36, 38, 39 }
;   output 5 depends on inputs: { 0, 1, 3, 4, 8, 9, 12, 13, 14, 28, 29, 36, 38, 39 }
;   output 6 depends on inputs: { 0, 1, 3, 4, 8, 9, 12, 13, 14, 28, 29, 36, 38, 39 }
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
  %60 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %87 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %88 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %89 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %90 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %91 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %92 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %93 = alloca [12 x float], align 4
  %94 = alloca [12 x float], align 4
  %95 = alloca [4 x float], align 4
  %96 = alloca [4 x float], align 4
  %97 = alloca [4 x float], align 4
  %98 = alloca [3 x float], align 4
  %99 = alloca [3 x float], align 4
  %100 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %101 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %103 = extractvalue %dx.types.CBufRet.f32 %102, 0
  %104 = fmul fast float %103, %89
  %105 = fmul fast float %103, %90
  %106 = call float @dx.op.dot3.f32(i32 55, float %80, float %81, float %82, float %80, float %81, float %82)  ; Dot3(ax,ay,az,bx,by,bz)
  %107 = bitcast float %106 to i32
  %108 = ashr i32 %107, 1
  %109 = sub nsw i32 1597250115, %108
  %110 = bitcast i32 %109 to float
  %111 = fmul fast float %110, %80
  %112 = fmul fast float %110, %81
  %113 = fmul fast float %110, %82
  %114 = fmul fast float %81, %78
  %115 = fmul fast float %82, %77
  %116 = fsub fast float %114, %115
  %117 = fmul fast float %82, %76
  %118 = fmul fast float %80, %78
  %119 = fsub fast float %117, %118
  %120 = fmul fast float %80, %77
  %121 = fmul fast float %81, %76
  %122 = fsub fast float %120, %121
  %123 = fmul fast float %116, %79
  %124 = fmul fast float %119, %79
  %125 = fmul fast float %122, %79
  %126 = call float @dx.op.dot3.f32(i32 55, float %69, float %70, float %71, float %69, float %70, float %71)  ; Dot3(ax,ay,az,bx,by,bz)
  %127 = bitcast float %126 to i32
  %128 = ashr i32 %127, 1
  %129 = sub nsw i32 1597250115, %128
  %130 = bitcast i32 %129 to float
  %131 = fmul fast float %130, %69
  %132 = fmul fast float %130, %70
  %133 = fmul fast float %130, %71
  %134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %135 = extractvalue %dx.types.CBufRet.f32 %134, 2
  %136 = extractvalue %dx.types.CBufRet.f32 %134, 3
  %137 = fmul fast float %104, 2.000000e+00
  %138 = fmul fast float %137, %135
  %139 = fmul fast float %105, 2.000000e+00
  %140 = fmul fast float %139, %136
  %141 = fsub fast float 1.000000e+00, %138
  %142 = fsub fast float 1.000000e+00, %140
  %143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %144 = extractvalue %dx.types.CBufRet.f32 %143, 0
  %145 = extractvalue %dx.types.CBufRet.f32 %143, 1
  %146 = extractvalue %dx.types.CBufRet.f32 %143, 2
  %147 = fmul fast float %141, %144
  %148 = fmul fast float %141, %145
  %149 = fmul fast float %141, %146
  %150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %151 = extractvalue %dx.types.CBufRet.f32 %150, 0
  %152 = extractvalue %dx.types.CBufRet.f32 %150, 1
  %153 = extractvalue %dx.types.CBufRet.f32 %150, 2
  %154 = fmul fast float %142, %151
  %155 = fmul fast float %142, %152
  %156 = fmul fast float %142, %153
  %157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %158 = extractvalue %dx.types.CBufRet.f32 %157, 0
  %159 = extractvalue %dx.types.CBufRet.f32 %157, 1
  %160 = extractvalue %dx.types.CBufRet.f32 %157, 2
  %161 = fadd fast float %154, %158
  %162 = fadd fast float %161, %147
  %163 = fadd fast float %155, %159
  %164 = fadd fast float %163, %148
  %165 = fadd fast float %156, %160
  %166 = fadd fast float %165, %149
  %167 = fmul fast float %162, %92
  %168 = fmul fast float %164, %92
  %169 = fmul fast float %166, %92
  %170 = fmul fast float %104, 5.000000e-01
  %171 = fmul fast float %105, 5.000000e-01
  %172 = fptosi float %170 to i32
  %173 = fptosi float %171 to i32
  %174 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %22, i32 0, i32 %172, i32 %173, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %175 = extractvalue %dx.types.ResRet.i32 %174, 0
  %176 = lshr i32 %175, 18
  %177 = uitofp i32 %176 to float
  %178 = fmul fast float %177, 0x3F4C00EBA0000000
  %179 = call float @dx.op.unary.f32(i32 21, float %178)  ; Exp(value)
  %180 = fadd fast float %179, -1.000000e+00
  %181 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %22, i32 0)  ; GetDimensions(handle,mipLevel)
  %182 = extractvalue %dx.types.Dimensions %181, 0
  %183 = sitofp i32 %182 to float
  %184 = extractvalue %dx.types.Dimensions %181, 1
  %185 = sitofp i32 %184 to float
  %186 = fcmp fast oge float %170, %183
  %187 = fcmp fast oge float %171, %185
  %188 = or i1 %186, %187
  %189 = select i1 %188, float 0x4197782600000000, float %180
  %190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %191 = extractvalue %dx.types.CBufRet.f32 %190, 2
  %192 = extractvalue %dx.types.CBufRet.f32 %190, 3
  %193 = fmul fast float %191, %104
  %194 = fmul fast float %192, %105
  %195 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %196 = extractvalue %dx.types.ResRet.i32 %195, 0
  %197 = and i32 %196, 114688
  %198 = icmp ne i32 %197, 0
  %199 = select i1 %198, float %193, float 0.000000e+00
  %200 = select i1 %198, float %194, float 0.000000e+00
  %201 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %47, float %199, float %200, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %202 = extractvalue %dx.types.ResRet.f32 %201, 0
  %203 = fmul fast float %202, 2.550000e+02
  %204 = fptoui float %203 to i32
  %205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %206 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %207 = extractvalue %dx.types.CBufRet.i32 %206, 3
  %208 = and i32 %207, 3
  %209 = icmp ne i32 %208, 0
  %210 = and i32 %207, 4
  %211 = icmp ne i32 %210, 0
  %212 = and i1 %209, %211
  br i1 %212, label %213, label %224

; <label>:213                                     ; preds = %0
  %214 = extractvalue %dx.types.CBufRet.f32 %205, 3
  %215 = fmul fast float %214, %105
  %216 = extractvalue %dx.types.CBufRet.f32 %205, 2
  %217 = fmul fast float %216, %104
  %218 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %46, float %217, float %215, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %219 = extractvalue %dx.types.ResRet.f32 %218, 0
  %220 = fsub fast float 1.000000e+00, %219
  %221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %222 = extractvalue %dx.types.CBufRet.f32 %221, 0
  %223 = fcmp fast olt float %220, %222
  br label %227

; <label>:224                                     ; preds = %0
  %225 = icmp eq i32 %210, 0
  %226 = and i1 %209, %225
  br label %227

; <label>:227                                     ; preds = %224, %213
  %228 = phi i1 [ %223, %213 ], [ %226, %224 ]
  %229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %230 = extractvalue %dx.types.CBufRet.f32 %229, 2
  %231 = fmul fast float %230, 0x3FE3C6EF40000000
  %232 = frem fast float %104, 2.560000e+02
  %233 = frem fast float %105, 2.560000e+02
  %234 = fptoui float %232 to i32
  %235 = fptoui float %233 to i32
  %236 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %29, i32 0, i32 %234, i32 %235, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %237 = extractvalue %dx.types.ResRet.f32 %236, 0
  %238 = fadd fast float %237, %231
  %239 = call float @dx.op.unary.f32(i32 22, float %238)  ; Frc(value)
  %240 = add i32 %60, 156
  %241 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %240, i32 undef)  ; BufferLoad(srv,index,wot)
  %242 = extractvalue %dx.types.ResRet.i32 %241, 0
  %243 = shl i32 %242, 4
  %244 = and i32 %243, 32752
  %245 = call float @dx.op.legacyF16ToF32(i32 131, i32 %244)  ; LegacyF16ToF32(value)
  %246 = lshr i32 %242, 7
  %247 = and i32 %246, 32752
  %248 = call float @dx.op.legacyF16ToF32(i32 131, i32 %247)  ; LegacyF16ToF32(value)
  %249 = lshr i32 %242, 22
  %250 = shl nuw nsw i32 %249, 5
  %251 = call float @dx.op.legacyF16ToF32(i32 131, i32 %250)  ; LegacyF16ToF32(value)
  %252 = add i32 %60, 216
  %253 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %252, i32 undef)  ; BufferLoad(srv,index,wot)
  %254 = extractvalue %dx.types.ResRet.i32 %253, 0
  %255 = and i32 %254, 255
  %256 = uitofp i32 %255 to float
  %257 = fmul fast float %256, 0x3F70101020000000
  %258 = lshr i32 %254, 8
  %259 = and i32 %258, 255
  %260 = uitofp i32 %259 to float
  %261 = fmul fast float %260, 0x3F70101020000000
  %262 = lshr i32 %254, 16
  %263 = and i32 %262, 255
  %264 = uitofp i32 %263 to float
  %265 = fmul fast float %264, 0x3F70101020000000
  %266 = add i32 %60, 36
  %267 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %266, i32 undef)  ; BufferLoad(srv,index,wot)
  %268 = extractvalue %dx.types.ResRet.i32 %267, 0
  %269 = and i32 %268, 65535
  %270 = call float @dx.op.legacyF16ToF32(i32 131, i32 %269)  ; LegacyF16ToF32(value)
  %271 = lshr i32 %268, 16
  %272 = call float @dx.op.legacyF16ToF32(i32 131, i32 %271)  ; LegacyF16ToF32(value)
  %273 = add i32 %60, 288
  %274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %273, i32 undef)  ; BufferLoad(srv,index,wot)
  %275 = extractvalue %dx.types.ResRet.i32 %274, 0
  %276 = and i32 %275, 65535
  %277 = call float @dx.op.legacyF16ToF32(i32 131, i32 %276)  ; LegacyF16ToF32(value)
  %278 = lshr i32 %275, 16
  %279 = call float @dx.op.legacyF16ToF32(i32 131, i32 %278)  ; LegacyF16ToF32(value)
  %280 = fmul fast float %277, 0x3F50624DE0000000
  %281 = fmul fast float %279, 0x3F50624DE0000000
  %282 = add i32 %60, 172
  %283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %282, i32 undef)  ; BufferLoad(srv,index,wot)
  %284 = extractvalue %dx.types.ResRet.i32 %283, 0
  %285 = shl i32 %284, 4
  %286 = and i32 %285, 32752
  %287 = call float @dx.op.legacyF16ToF32(i32 131, i32 %286)  ; LegacyF16ToF32(value)
  %288 = lshr i32 %284, 7
  %289 = and i32 %288, 32752
  %290 = call float @dx.op.legacyF16ToF32(i32 131, i32 %289)  ; LegacyF16ToF32(value)
  %291 = lshr i32 %284, 22
  %292 = shl nuw nsw i32 %291, 5
  %293 = call float @dx.op.legacyF16ToF32(i32 131, i32 %292)  ; LegacyF16ToF32(value)
  %294 = add i32 %60, 232
  %295 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %294, i32 undef)  ; BufferLoad(srv,index,wot)
  %296 = extractvalue %dx.types.ResRet.i32 %295, 0
  %297 = and i32 %296, 255
  %298 = uitofp i32 %297 to float
  %299 = fmul fast float %298, 0x3F70101020000000
  %300 = lshr i32 %296, 8
  %301 = and i32 %300, 255
  %302 = uitofp i32 %301 to float
  %303 = fmul fast float %302, 0x3F70101020000000
  %304 = lshr i32 %296, 16
  %305 = and i32 %304, 255
  %306 = uitofp i32 %305 to float
  %307 = fmul fast float %306, 0x3F70101020000000
  %308 = add i32 %60, 52
  %309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %308, i32 undef)  ; BufferLoad(srv,index,wot)
  %310 = extractvalue %dx.types.ResRet.i32 %309, 0
  %311 = and i32 %310, 65535
  %312 = call float @dx.op.legacyF16ToF32(i32 131, i32 %311)  ; LegacyF16ToF32(value)
  %313 = lshr i32 %310, 16
  %314 = call float @dx.op.legacyF16ToF32(i32 131, i32 %313)  ; LegacyF16ToF32(value)
  %315 = add i32 %60, 304
  %316 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %315, i32 undef)  ; BufferLoad(srv,index,wot)
  %317 = extractvalue %dx.types.ResRet.i32 %316, 0
  %318 = and i32 %317, 65535
  %319 = call float @dx.op.legacyF16ToF32(i32 131, i32 %318)  ; LegacyF16ToF32(value)
  %320 = lshr i32 %317, 16
  %321 = call float @dx.op.legacyF16ToF32(i32 131, i32 %320)  ; LegacyF16ToF32(value)
  %322 = fmul fast float %319, 0x3F50624DE0000000
  %323 = fmul fast float %321, 0x3F50624DE0000000
  %324 = add i32 %60, 188
  %325 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %324, i32 undef)  ; BufferLoad(srv,index,wot)
  %326 = extractvalue %dx.types.ResRet.i32 %325, 0
  %327 = shl i32 %326, 4
  %328 = and i32 %327, 32752
  %329 = call float @dx.op.legacyF16ToF32(i32 131, i32 %328)  ; LegacyF16ToF32(value)
  %330 = lshr i32 %326, 7
  %331 = and i32 %330, 32752
  %332 = call float @dx.op.legacyF16ToF32(i32 131, i32 %331)  ; LegacyF16ToF32(value)
  %333 = lshr i32 %326, 22
  %334 = shl nuw nsw i32 %333, 5
  %335 = call float @dx.op.legacyF16ToF32(i32 131, i32 %334)  ; LegacyF16ToF32(value)
  %336 = add i32 %60, 248
  %337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %336, i32 undef)  ; BufferLoad(srv,index,wot)
  %338 = extractvalue %dx.types.ResRet.i32 %337, 0
  %339 = and i32 %338, 255
  %340 = uitofp i32 %339 to float
  %341 = fmul fast float %340, 0x3F70101020000000
  %342 = lshr i32 %338, 8
  %343 = and i32 %342, 255
  %344 = uitofp i32 %343 to float
  %345 = fmul fast float %344, 0x3F70101020000000
  %346 = lshr i32 %338, 16
  %347 = and i32 %346, 255
  %348 = uitofp i32 %347 to float
  %349 = fmul fast float %348, 0x3F70101020000000
  %350 = add i32 %60, 68
  %351 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %350, i32 undef)  ; BufferLoad(srv,index,wot)
  %352 = extractvalue %dx.types.ResRet.i32 %351, 0
  %353 = and i32 %352, 65535
  %354 = call float @dx.op.legacyF16ToF32(i32 131, i32 %353)  ; LegacyF16ToF32(value)
  %355 = lshr i32 %352, 16
  %356 = call float @dx.op.legacyF16ToF32(i32 131, i32 %355)  ; LegacyF16ToF32(value)
  %357 = add i32 %60, 320
  %358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %357, i32 undef)  ; BufferLoad(srv,index,wot)
  %359 = extractvalue %dx.types.ResRet.i32 %358, 0
  %360 = and i32 %359, 65535
  %361 = call float @dx.op.legacyF16ToF32(i32 131, i32 %360)  ; LegacyF16ToF32(value)
  %362 = lshr i32 %359, 16
  %363 = call float @dx.op.legacyF16ToF32(i32 131, i32 %362)  ; LegacyF16ToF32(value)
  %364 = fmul fast float %361, 0x3F50624DE0000000
  %365 = fmul fast float %363, 0x3F50624DE0000000
  %366 = add i32 %60, 204
  %367 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %366, i32 undef)  ; BufferLoad(srv,index,wot)
  %368 = extractvalue %dx.types.ResRet.i32 %367, 0
  %369 = shl i32 %368, 4
  %370 = and i32 %369, 32752
  %371 = call float @dx.op.legacyF16ToF32(i32 131, i32 %370)  ; LegacyF16ToF32(value)
  %372 = lshr i32 %368, 7
  %373 = and i32 %372, 32752
  %374 = call float @dx.op.legacyF16ToF32(i32 131, i32 %373)  ; LegacyF16ToF32(value)
  %375 = lshr i32 %368, 22
  %376 = shl nuw nsw i32 %375, 5
  %377 = call float @dx.op.legacyF16ToF32(i32 131, i32 %376)  ; LegacyF16ToF32(value)
  %378 = add i32 %60, 264
  %379 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %378, i32 undef)  ; BufferLoad(srv,index,wot)
  %380 = extractvalue %dx.types.ResRet.i32 %379, 0
  %381 = and i32 %380, 255
  %382 = uitofp i32 %381 to float
  %383 = fmul fast float %382, 0x3F70101020000000
  %384 = lshr i32 %380, 8
  %385 = and i32 %384, 255
  %386 = uitofp i32 %385 to float
  %387 = fmul fast float %386, 0x3F70101020000000
  %388 = lshr i32 %380, 16
  %389 = and i32 %388, 255
  %390 = uitofp i32 %389 to float
  %391 = fmul fast float %390, 0x3F70101020000000
  %392 = add i32 %60, 84
  %393 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %392, i32 undef)  ; BufferLoad(srv,index,wot)
  %394 = extractvalue %dx.types.ResRet.i32 %393, 0
  %395 = and i32 %394, 65535
  %396 = call float @dx.op.legacyF16ToF32(i32 131, i32 %395)  ; LegacyF16ToF32(value)
  %397 = lshr i32 %394, 16
  %398 = call float @dx.op.legacyF16ToF32(i32 131, i32 %397)  ; LegacyF16ToF32(value)
  %399 = add i32 %60, 336
  %400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %399, i32 undef)  ; BufferLoad(srv,index,wot)
  %401 = extractvalue %dx.types.ResRet.i32 %400, 0
  %402 = and i32 %401, 65535
  %403 = call float @dx.op.legacyF16ToF32(i32 131, i32 %402)  ; LegacyF16ToF32(value)
  %404 = lshr i32 %401, 16
  %405 = call float @dx.op.legacyF16ToF32(i32 131, i32 %404)  ; LegacyF16ToF32(value)
  %406 = fmul fast float %403, 0x3F50624DE0000000
  %407 = fmul fast float %405, 0x3F50624DE0000000
  %408 = add i32 %60, 348
  %409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %408, i32 undef)  ; BufferLoad(srv,index,wot)
  %410 = extractvalue %dx.types.ResRet.i32 %409, 0
  %411 = and i32 %410, 32
  %412 = icmp eq i32 %411, 0
  %413 = and i32 %410, 64
  %414 = icmp eq i32 %413, 0
  %415 = and i32 %410, 128
  %416 = icmp eq i32 %415, 0
  %417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %408, i32 undef)  ; BufferLoad(srv,index,wot)
  %418 = extractvalue %dx.types.ResRet.i32 %417, 0
  %419 = and i32 %418, 2
  %420 = icmp eq i32 %419, 0
  br i1 %420, label %436, label %421

; <label>:421                                     ; preds = %227
  %422 = add i32 %60, 472
  %423 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %422, i32 undef)  ; BufferLoad(srv,index,wot)
  %424 = extractvalue %dx.types.ResRet.i32 %423, 0
  %425 = add i32 %424, 0
  %426 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %425, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %427 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %426, %dx.types.Handle %101, float %83, float %84, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %428 = extractvalue %dx.types.ResRet.f32 %427, 0
  %429 = extractvalue %dx.types.ResRet.f32 %427, 1
  %430 = extractvalue %dx.types.ResRet.f32 %427, 2
  %431 = extractvalue %dx.types.ResRet.f32 %427, 3
  %432 = fmul fast float %431, %85
  %433 = fmul fast float %428, %86
  %434 = fmul fast float %429, %87
  %435 = fmul fast float %430, %88
  br label %436

; <label>:436                                     ; preds = %421, %227
  %437 = phi float [ %88, %227 ], [ %435, %421 ]
  %438 = phi float [ %87, %227 ], [ %434, %421 ]
  %439 = phi float [ %86, %227 ], [ %433, %421 ]
  %440 = phi float [ %85, %227 ], [ %432, %421 ]
  %441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %408, i32 undef)  ; BufferLoad(srv,index,wot)
  %442 = extractvalue %dx.types.ResRet.i32 %441, 0
  %443 = and i32 %442, 2
  %444 = icmp eq i32 %443, 0
  br i1 %444, label %464, label %445

; <label>:445                                     ; preds = %436
  %446 = add i32 %60, 44
  %447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %446, i32 undef)  ; BufferLoad(srv,index,wot)
  %448 = extractvalue %dx.types.ResRet.i32 %447, 0
  %449 = and i32 %448, 1
  %450 = icmp ne i32 %449, 0
  %451 = select i1 %450, float %439, float 1.000000e+00
  %452 = add i32 %60, 60
  %453 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %452, i32 undef)  ; BufferLoad(srv,index,wot)
  %454 = extractvalue %dx.types.ResRet.i32 %453, 0
  %455 = and i32 %454, 1
  %456 = icmp ne i32 %455, 0
  %457 = select i1 %456, float %438, float 1.000000e+00
  %458 = add i32 %60, 76
  %459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %458, i32 undef)  ; BufferLoad(srv,index,wot)
  %460 = extractvalue %dx.types.ResRet.i32 %459, 0
  %461 = and i32 %460, 1
  %462 = icmp ne i32 %461, 0
  %463 = select i1 %462, float %437, float 1.000000e+00
  br label %464

; <label>:464                                     ; preds = %445, %436
  %465 = phi float [ %437, %436 ], [ %463, %445 ]
  %466 = phi float [ %438, %436 ], [ %457, %445 ]
  %467 = phi float [ %439, %436 ], [ %451, %445 ]
  %468 = lshr i32 %442, 20
  %469 = and i32 %468, 3
  %470 = add nuw nsw i32 %469, 1
  %471 = add i32 %60, 24
  %472 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %471, i32 undef)  ; BufferLoad(srv,index,wot)
  %473 = extractvalue %dx.types.ResRet.i32 %472, 0
  %474 = add i32 %60, 28
  %475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %476 = extractvalue %dx.types.ResRet.i32 %475, 0
  %477 = or i32 %476, %473
  %478 = icmp eq i32 %477, 0
  br i1 %478, label %1128, label %479

; <label>:479                                     ; preds = %464
  %480 = and i32 %473, 262144
  %481 = icmp ne i32 %480, 0
  %482 = select i1 %481, float %63, float 1.000000e+00
  %483 = select i1 %481, float %64, float 0.000000e+00
  %484 = select i1 %481, float %65, float 0.000000e+00
  %485 = select i1 %481, float %66, float 1.000000e+00
  %486 = select i1 %481, float %67, float %83
  %487 = select i1 %481, float %68, float %84
  %488 = add i32 %60, 284
  %489 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %488, i32 undef)  ; BufferLoad(srv,index,wot)
  %490 = extractvalue %dx.types.ResRet.i32 %489, 0
  %491 = lshr i32 %490, 16
  %492 = call float @dx.op.legacyF16ToF32(i32 131, i32 %491)  ; LegacyF16ToF32(value)
  %493 = fmul fast float %492, 0x3F50624DE0000000
  %494 = add i32 %60, 88
  %495 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %494, i32 undef)  ; BufferLoad(srv,index,wot)
  %496 = extractvalue %dx.types.ResRet.i32 %495, 0
  %497 = lshr i32 %496, 16
  %498 = and i32 %497, 255
  %499 = lshr i32 %496, 24
  %500 = add i32 %60, 292
  %501 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %500, i32 undef)  ; BufferLoad(srv,index,wot)
  %502 = extractvalue %dx.types.ResRet.i32 %501, 0
  %503 = and i32 %502, 65535
  %504 = call float @dx.op.legacyF16ToF32(i32 131, i32 %503)  ; LegacyF16ToF32(value)
  %505 = lshr i32 %502, 16
  %506 = call float @dx.op.legacyF16ToF32(i32 131, i32 %505)  ; LegacyF16ToF32(value)
  %507 = add i32 %60, 32
  %508 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %507, i32 undef)  ; BufferLoad(srv,index,wot)
  %509 = extractvalue %dx.types.ResRet.i32 %508, 0
  %510 = lshr i32 %509, 22
  %511 = shl nuw nsw i32 %510, 5
  %512 = call float @dx.op.legacyF16ToF32(i32 131, i32 %511)  ; LegacyF16ToF32(value)
  %513 = shl i32 %509, 4
  %514 = and i32 %513, 32752
  %515 = call float @dx.op.legacyF16ToF32(i32 131, i32 %514)  ; LegacyF16ToF32(value)
  %516 = lshr i32 %509, 7
  %517 = and i32 %516, 32752
  %518 = call float @dx.op.legacyF16ToF32(i32 131, i32 %517)  ; LegacyF16ToF32(value)
  %519 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %520 = extractvalue %dx.types.CBufRet.f32 %519, 3
  %521 = fmul fast float %520, 1.000000e+03
  %522 = fmul fast float %280, %521
  %523 = call float @dx.op.unary.f32(i32 22, float %522)  ; Frc(value)
  %524 = fadd fast float %523, %270
  %525 = fmul fast float %281, %521
  %526 = call float @dx.op.unary.f32(i32 22, float %525)  ; Frc(value)
  %527 = fadd fast float %526, %272
  %528 = fmul fast float %493, %521
  %529 = call float @dx.op.unary.f32(i32 22, float %528)  ; Frc(value)
  %530 = fmul fast float %529, 0x401921FB60000000
  %531 = fadd fast float %530, %512
  %532 = call float @dx.op.unary.f32(i32 13, float %531)  ; Sin(value)
  %533 = call float @dx.op.unary.f32(i32 12, float %531)  ; Cos(value)
  %534 = fsub fast float -0.000000e+00, %532
  %535 = fadd fast float %486, -5.000000e-01
  %536 = fadd fast float %487, -5.000000e-01
  %537 = fmul fast float %504, %535
  %538 = fmul fast float %506, %536
  %539 = fadd fast float %537, 5.000000e-01
  %540 = fadd fast float %538, 5.000000e-01
  %541 = fmul fast float %515, %539
  %542 = fmul fast float %518, %540
  %543 = fmul fast float %533, %541
  %544 = call float @dx.op.tertiary.f32(i32 46, float %534, float %542, float %543)  ; FMad(a,b,c)
  %545 = fmul fast float %532, %541
  %546 = call float @dx.op.tertiary.f32(i32 46, float %533, float %542, float %545)  ; FMad(a,b,c)
  %547 = fadd fast float %524, %544
  %548 = fadd fast float %527, %546
  %549 = icmp ugt i32 %498, 1
  %550 = icmp ugt i32 %496, 33554431
  %551 = or i1 %550, %549
  br i1 %551, label %552, label %577

; <label>:552                                     ; preds = %479
  %553 = add i32 %60, 228
  %554 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %553, i32 undef)  ; BufferLoad(srv,index,wot)
  %555 = extractvalue %dx.types.ResRet.i32 %554, 0
  %556 = lshr i32 %555, 16
  %557 = call float @dx.op.legacyF16ToF32(i32 131, i32 %556)  ; LegacyF16ToF32(value)
  %558 = fmul fast float %520, %557
  %559 = call float @dx.op.unary.f32(i32 22, float %558)  ; Frc(value)
  %560 = mul nuw nsw i32 %498, %499
  %561 = uitofp i32 %560 to float
  %562 = fmul fast float %559, %561
  %563 = call float @dx.op.unary.f32(i32 27, float %562)  ; Round_ni(value)
  %564 = fptoui float %563 to i32
  %565 = urem i32 %564, %498
  %566 = udiv i32 %564, %499
  %567 = call float @dx.op.unary.f32(i32 22, float %547)  ; Frc(value)
  %568 = call float @dx.op.unary.f32(i32 22, float %548)  ; Frc(value)
  %569 = uitofp i32 %565 to float
  %570 = uitofp i32 %566 to float
  %571 = fadd fast float %567, %569
  %572 = fadd fast float %568, %570
  %573 = uitofp i32 %498 to float
  %574 = uitofp i32 %499 to float
  %575 = fdiv fast float %571, %573
  %576 = fdiv fast float %572, %574
  br label %577

; <label>:577                                     ; preds = %552, %479
  %578 = phi float [ %575, %552 ], [ %547, %479 ]
  %579 = phi float [ %576, %552 ], [ %548, %479 ]
  %580 = and i32 %473, 16777216
  %581 = icmp eq i32 %580, 0
  br i1 %581, label %691, label %582

; <label>:582                                     ; preds = %577
  %583 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %584 = extractvalue %dx.types.CBufRet.f32 %583, 0
  %585 = extractvalue %dx.types.CBufRet.f32 %583, 1
  %586 = extractvalue %dx.types.CBufRet.f32 %583, 2
  %587 = fadd fast float %584, %167
  %588 = fadd fast float %585, %168
  %589 = fadd fast float %586, %169
  %590 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %591 = extractvalue %dx.types.CBufRet.f32 %590, 0
  %592 = call float @dx.op.unary.f32(i32 7, float %591)  ; Saturate(value)
  %593 = icmp eq i32 %61, 65535
  br i1 %593, label %688, label %594

; <label>:594                                     ; preds = %582
  %595 = lshr i32 %61, 1
  %596 = shl i32 %595, 2
  %597 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %596, i32 undef)  ; BufferLoad(srv,index,wot)
  %598 = extractvalue %dx.types.ResRet.i32 %597, 0
  %599 = and i32 %61, 1
  %600 = icmp ne i32 %599, 0
  %601 = lshr i32 %598, 16
  %602 = and i32 %598, 65535
  %603 = select i1 %600, i32 %601, i32 %602
  %604 = icmp eq i32 %603, 65535
  br i1 %604, label %684, label %605

; <label>:605                                     ; preds = %594
  %606 = mul nuw nsw i32 %603, 40
  %607 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %606, i32 undef)  ; BufferLoad(srv,index,wot)
  %608 = extractvalue %dx.types.ResRet.f32 %607, 0
  %609 = extractvalue %dx.types.ResRet.f32 %607, 1
  %610 = extractvalue %dx.types.ResRet.f32 %607, 2
  %611 = add nuw nsw i32 %606, 12
  %612 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %611, i32 undef)  ; BufferLoad(srv,index,wot)
  %613 = extractvalue %dx.types.ResRet.f32 %612, 0
  %614 = extractvalue %dx.types.ResRet.f32 %612, 1
  %615 = extractvalue %dx.types.ResRet.f32 %612, 2
  %616 = add nuw nsw i32 %606, 24
  %617 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %616, i32 undef)  ; BufferLoad(srv,index,wot)
  %618 = extractvalue %dx.types.ResRet.f32 %617, 0
  %619 = extractvalue %dx.types.ResRet.f32 %617, 1
  %620 = extractvalue %dx.types.ResRet.f32 %617, 2
  %621 = add nuw nsw i32 %606, 36
  %622 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %621, i32 undef)  ; BufferLoad(srv,index,wot)
  %623 = extractvalue %dx.types.ResRet.f32 %622, 0
  %624 = fsub fast float %587, %608
  %625 = fsub fast float %588, %609
  %626 = fsub fast float %589, %610
  %627 = fmul fast float %623, %624
  %628 = fmul fast float %623, %625
  %629 = fmul fast float %623, %626
  %630 = call float @dx.op.unary.f32(i32 27, float %627)  ; Round_ni(value)
  %631 = call float @dx.op.unary.f32(i32 27, float %628)  ; Round_ni(value)
  %632 = call float @dx.op.unary.f32(i32 27, float %629)  ; Round_ni(value)
  %633 = fadd fast float %630, 5.000000e-01
  %634 = fadd fast float %631, 5.000000e-01
  %635 = fadd fast float %632, 5.000000e-01
  %636 = fmul fast float %633, %613
  %637 = fmul fast float %634, %614
  %638 = fmul fast float %635, %615
  %639 = shl i32 %61, 2
  %640 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %639, i32 undef)  ; BufferLoad(srv,index,wot)
  %641 = extractvalue %dx.types.ResRet.i32 %640, 0
  %642 = add i32 %641, 0
  %643 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %642, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %644 = call float @dx.op.unary.f32(i32 22, float %636)  ; Frc(value)
  %645 = call float @dx.op.unary.f32(i32 22, float %637)  ; Frc(value)
  %646 = call float @dx.op.unary.f32(i32 22, float %638)  ; Frc(value)
  %647 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %643, %dx.types.Handle %47, float %644, float %645, float %646, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %648 = extractvalue %dx.types.ResRet.f32 %647, 0
  %649 = extractvalue %dx.types.ResRet.f32 %647, 1
  %650 = extractvalue %dx.types.ResRet.f32 %647, 2
  %651 = fmul fast float %648, 1.023000e+03
  %652 = fmul fast float %649, 1.023000e+03
  %653 = fmul fast float %650, 1.023000e+03
  %654 = fadd fast float %651, 5.000000e-01
  %655 = fadd fast float %652, 5.000000e-01
  %656 = fadd fast float %653, 5.000000e-01
  %657 = call float @dx.op.unary.f32(i32 27, float %654)  ; Round_ni(value)
  %658 = call float @dx.op.unary.f32(i32 27, float %655)  ; Round_ni(value)
  %659 = call float @dx.op.unary.f32(i32 27, float %656)  ; Round_ni(value)
  %660 = fsub fast float %627, %630
  %661 = fsub fast float %628, %631
  %662 = fsub fast float %629, %632
  %663 = fmul fast float %660, 7.500000e-01
  %664 = fmul fast float %661, 7.500000e-01
  %665 = fmul fast float %662, 7.500000e-01
  %666 = fadd fast float %630, 1.250000e-01
  %667 = fadd fast float %666, %663
  %668 = fadd fast float %667, %657
  %669 = fadd fast float %631, 1.250000e-01
  %670 = fadd fast float %669, %664
  %671 = fadd fast float %670, %658
  %672 = fadd fast float %632, 1.250000e-01
  %673 = fadd fast float %672, %665
  %674 = fadd fast float %673, %659
  %675 = fmul fast float %668, %618
  %676 = fmul fast float %671, %619
  %677 = fmul fast float %674, %620
  %678 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %639, i32 undef)  ; BufferLoad(srv,index,wot)
  %679 = extractvalue %dx.types.ResRet.i32 %678, 0
  %680 = add i32 %679, 0
  %681 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %680, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %682 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %681, %dx.types.Handle %45, float %675, float %676, float %677, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %683 = extractvalue %dx.types.ResRet.f32 %682, 0
  br label %684

; <label>:684                                     ; preds = %605, %594
  %685 = phi float [ %683, %605 ], [ -1.000000e+00, %594 ]
  %686 = fadd fast float %685, %592
  %687 = call float @dx.op.unary.f32(i32 7, float %686)  ; Saturate(value)
  br label %688

; <label>:688                                     ; preds = %684, %582
  %689 = phi float [ %687, %684 ], [ %592, %582 ]
  %690 = fmul fast float %689, %440
  br label %691

; <label>:691                                     ; preds = %688, %577
  %692 = phi float [ %690, %688 ], [ %440, %577 ]
  %693 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %471, i32 undef)  ; BufferLoad(srv,index,wot)
  %694 = extractvalue %dx.types.ResRet.i32 %693, 0
  %695 = and i32 %694, 256
  %696 = icmp eq i32 %695, 0
  br i1 %696, label %743, label %697

; <label>:697                                     ; preds = %691
  %698 = add i32 %60, 424
  %699 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %698, i32 undef)  ; BufferLoad(srv,index,wot)
  %700 = extractvalue %dx.types.ResRet.i32 %699, 0
  %701 = add i32 %700, 0
  %702 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %701, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %703 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %702, %dx.types.Handle %101, float %578, float %579, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %704 = extractvalue %dx.types.ResRet.f32 %703, 0
  %705 = add i32 %60, 100
  %706 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %705, i32 undef)  ; BufferLoad(srv,index,wot)
  %707 = extractvalue %dx.types.ResRet.i32 %706, 0
  %708 = shl i32 %707, 4
  %709 = and i32 %708, 32752
  %710 = call float @dx.op.legacyF16ToF32(i32 131, i32 %709)  ; LegacyF16ToF32(value)
  %711 = lshr i32 %707, 7
  %712 = and i32 %711, 32752
  %713 = call float @dx.op.legacyF16ToF32(i32 131, i32 %712)  ; LegacyF16ToF32(value)
  %714 = fsub fast float 1.000000e+00, %692
  %715 = call float @dx.op.binary.f32(i32 35, float %714, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %716 = bitcast float %692 to i32
  %717 = sitofp i32 %716 to float
  %718 = fadd fast float %717, 0xC1CFBF8940000000
  %719 = fmul fast float %713, %718
  %720 = fadd fast float %719, 0x41CFBF8940000000
  %721 = fptosi float %720 to i32
  %722 = bitcast i32 %721 to float
  %723 = bitcast float %715 to i32
  %724 = sitofp i32 %723 to float
  %725 = fadd fast float %724, 0xC1CFBF8940000000
  %726 = fmul fast float %725, %713
  %727 = fadd fast float %726, 0x41CFBF8940000000
  %728 = fptosi float %727 to i32
  %729 = bitcast i32 %728 to float
  %730 = fmul fast float %722, %710
  %731 = fmul fast float %729, %710
  %732 = fsub fast float %715, %730
  %733 = fadd fast float %731, %715
  %734 = call float @dx.op.unary.f32(i32 7, float %732)  ; Saturate(value)
  %735 = call float @dx.op.unary.f32(i32 7, float %733)  ; Saturate(value)
  %736 = fsub fast float %704, %734
  %737 = fsub fast float %735, %734
  %738 = bitcast float %737 to i32
  %739 = sub nsw i32 2129859010, %738
  %740 = bitcast i32 %739 to float
  %741 = fmul fast float %740, %736
  %742 = call float @dx.op.unary.f32(i32 7, float %741)  ; Saturate(value)
  br label %743

; <label>:743                                     ; preds = %697, %691
  %744 = phi float [ %742, %697 ], [ %692, %691 ]
  %745 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %471, i32 undef)  ; BufferLoad(srv,index,wot)
  %746 = extractvalue %dx.types.ResRet.i32 %745, 0
  %747 = and i32 %746, 128
  %748 = icmp eq i32 %747, 0
  br i1 %748, label %765, label %749

; <label>:749                                     ; preds = %743
  %750 = add i32 %60, 408
  %751 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %750, i32 undef)  ; BufferLoad(srv,index,wot)
  %752 = extractvalue %dx.types.ResRet.i32 %751, 0
  %753 = add i32 %752, 0
  %754 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %753, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %755 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %754, %dx.types.Handle %101, float %578, float %579, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %756 = extractvalue %dx.types.ResRet.f32 %755, 0
  %757 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %471, i32 undef)  ; BufferLoad(srv,index,wot)
  %758 = extractvalue %dx.types.ResRet.i32 %757, 0
  %759 = and i32 %758, 524288
  %760 = icmp ne i32 %759, 0
  %761 = fcmp fast ogt float %756, 0x3FE0101020000000
  %762 = select i1 %761, float 1.000000e+00, float 0.000000e+00
  %763 = select i1 %760, float %762, float %756
  %764 = fmul fast float %763, %744
  br label %765

; <label>:765                                     ; preds = %749, %743
  %766 = phi float [ %764, %749 ], [ %744, %743 ]
  %767 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %471, i32 undef)  ; BufferLoad(srv,index,wot)
  %768 = extractvalue %dx.types.ResRet.i32 %767, 0
  %769 = and i32 %768, 16
  %770 = icmp eq i32 %769, 0
  br i1 %770, label %969, label %771

; <label>:771                                     ; preds = %765
  %772 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %494, i32 undef)  ; BufferLoad(srv,index,wot)
  %773 = extractvalue %dx.types.ResRet.i32 %772, 0
  %774 = add i32 %60, 360
  %775 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %774, i32 undef)  ; BufferLoad(srv,index,wot)
  %776 = extractvalue %dx.types.ResRet.i32 %775, 0
  %777 = add i32 %776, 0
  %778 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %777, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %779 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %778, %dx.types.Handle %100, float %578, float %579, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %780 = extractvalue %dx.types.ResRet.f32 %779, 0
  %781 = extractvalue %dx.types.ResRet.f32 %779, 1
  %782 = extractvalue %dx.types.ResRet.f32 %779, 2
  %783 = extractvalue %dx.types.ResRet.f32 %779, 3
  %784 = and i32 %773, 255
  %785 = uitofp i32 %784 to float
  %786 = lshr i32 %773, 8
  %787 = and i32 %786, 255
  %788 = uitofp i32 %787 to float
  %789 = fmul fast float %783, %785
  %790 = fadd fast float %789, %788
  %791 = fmul fast float %790, 0x3F70101000000000
  %792 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %471, i32 undef)  ; BufferLoad(srv,index,wot)
  %793 = extractvalue %dx.types.ResRet.i32 %792, 0
  %794 = and i32 %793, 512
  %795 = icmp eq i32 %794, 0
  br i1 %795, label %804, label %796

; <label>:796                                     ; preds = %771
  %797 = add i32 %60, 440
  %798 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %797, i32 undef)  ; BufferLoad(srv,index,wot)
  %799 = extractvalue %dx.types.ResRet.i32 %798, 0
  %800 = add i32 %799, 0
  %801 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %800, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %802 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %801, %dx.types.Handle %101, float %578, float %579, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %803 = extractvalue %dx.types.ResRet.f32 %802, 0
  br label %804

; <label>:804                                     ; preds = %796, %771
  %805 = phi float [ %803, %796 ], [ 1.000000e+00, %771 ]
  %806 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %471, i32 undef)  ; BufferLoad(srv,index,wot)
  %807 = extractvalue %dx.types.ResRet.i32 %806, 0
  %808 = and i32 %807, 33554432
  %809 = icmp eq i32 %808, 0
  br i1 %809, label %916, label %810

; <label>:810                                     ; preds = %804
  %811 = add i32 %60, 224
  %812 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %811, i32 undef)  ; BufferLoad(srv,index,wot)
  %813 = extractvalue %dx.types.ResRet.i32 %812, 0
  %814 = and i32 %813, 65535
  %815 = call float @dx.op.legacyF16ToF32(i32 131, i32 %814)  ; LegacyF16ToF32(value)
  %816 = lshr i32 %813, 16
  %817 = call float @dx.op.legacyF16ToF32(i32 131, i32 %816)  ; LegacyF16ToF32(value)
  %818 = add i32 %60, 228
  %819 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %818, i32 undef)  ; BufferLoad(srv,index,wot)
  %820 = extractvalue %dx.types.ResRet.i32 %819, 0
  %821 = and i32 %820, 65535
  %822 = call float @dx.op.legacyF16ToF32(i32 131, i32 %821)  ; LegacyF16ToF32(value)
  %823 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %252, i32 undef)  ; BufferLoad(srv,index,wot)
  %824 = extractvalue %dx.types.ResRet.i32 %823, 0
  %825 = lshr i32 %824, 24
  %826 = uitofp i32 %825 to float
  %827 = fmul fast float %826, 0x3F70101020000000
  %828 = and i32 %824, 255
  %829 = uitofp i32 %828 to float
  %830 = fmul fast float %829, 0x3F70101020000000
  %831 = lshr i32 %824, 8
  %832 = and i32 %831, 255
  %833 = uitofp i32 %832 to float
  %834 = fmul fast float %833, 0x3F70101020000000
  %835 = lshr i32 %824, 16
  %836 = and i32 %835, 255
  %837 = uitofp i32 %836 to float
  %838 = fmul fast float %837, 0x3F70101020000000
  %839 = add i32 %60, 220
  %840 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %839, i32 undef)  ; BufferLoad(srv,index,wot)
  %841 = extractvalue %dx.types.ResRet.i32 %840, 0
  %842 = lshr i32 %841, 24
  %843 = uitofp i32 %842 to float
  %844 = fmul fast float %843, 0x3F70101020000000
  %845 = and i32 %841, 255
  %846 = uitofp i32 %845 to float
  %847 = fmul fast float %846, 0x3F70101020000000
  %848 = lshr i32 %841, 8
  %849 = and i32 %848, 255
  %850 = uitofp i32 %849 to float
  %851 = fmul fast float %850, 0x3F70101020000000
  %852 = lshr i32 %841, 16
  %853 = and i32 %852, 255
  %854 = uitofp i32 %853 to float
  %855 = fmul fast float %854, 0x3F70101020000000
  %856 = bitcast float %780 to i32
  %857 = ashr i32 %856, 1
  %858 = sub nsw i32 1597463174, %857
  %859 = bitcast i32 %858 to float
  %860 = fmul fast float %780, 5.000000e-01
  %861 = fmul fast float %859, %859
  %862 = fmul fast float %861, %860
  %863 = fsub fast float 1.500000e+00, %862
  %864 = fmul fast float %859, %780
  %865 = fmul fast float %864, %863
  %866 = bitcast float %781 to i32
  %867 = ashr i32 %866, 1
  %868 = sub nsw i32 1597463174, %867
  %869 = bitcast i32 %868 to float
  %870 = fmul fast float %781, 5.000000e-01
  %871 = fmul fast float %869, %869
  %872 = fmul fast float %871, %870
  %873 = fsub fast float 1.500000e+00, %872
  %874 = fmul fast float %869, %781
  %875 = fmul fast float %874, %873
  %876 = bitcast float %782 to i32
  %877 = ashr i32 %876, 1
  %878 = sub nsw i32 1597463174, %877
  %879 = bitcast i32 %878 to float
  %880 = fmul fast float %782, 5.000000e-01
  %881 = fmul fast float %879, %879
  %882 = fmul fast float %881, %880
  %883 = fsub fast float 1.500000e+00, %882
  %884 = fmul fast float %879, %782
  %885 = fmul fast float %884, %883
  %886 = fsub fast float %865, %847
  %887 = fsub fast float %875, %851
  %888 = fsub fast float %885, %855
  %889 = fmul fast float %886, %815
  %890 = fmul fast float %887, %817
  %891 = fmul fast float %888, %822
  %892 = fadd fast float %889, %830
  %893 = fadd fast float %890, %834
  %894 = fadd fast float %891, %838
  %895 = call float @dx.op.unary.f32(i32 7, float %892)  ; Saturate(value)
  %896 = call float @dx.op.unary.f32(i32 7, float %893)  ; Saturate(value)
  %897 = call float @dx.op.unary.f32(i32 7, float %894)  ; Saturate(value)
  %898 = fmul fast float %895, %895
  %899 = fmul fast float %896, %896
  %900 = fmul fast float %897, %897
  %901 = fsub fast float %898, %780
  %902 = fsub fast float %899, %781
  %903 = fsub fast float %900, %782
  %904 = fmul fast float %901, %805
  %905 = fmul fast float %902, %805
  %906 = fmul fast float %903, %805
  %907 = fadd fast float %904, %780
  %908 = fadd fast float %905, %781
  %909 = fadd fast float %906, %782
  %910 = fadd fast float %827, %791
  %911 = fsub fast float %910, %844
  %912 = call float @dx.op.unary.f32(i32 7, float %911)  ; Saturate(value)
  %913 = fsub fast float %912, %791
  %914 = fmul fast float %913, %805
  %915 = fadd fast float %914, %791
  br label %969

; <label>:916                                     ; preds = %804
  %917 = and i32 %807, 134217728
  %918 = icmp eq i32 %917, 0
  br i1 %918, label %953, label %919

; <label>:919                                     ; preds = %916
  %920 = call float @dx.op.unary.f32(i32 24, float %257)  ; Sqrt(value)
  %921 = call float @dx.op.unary.f32(i32 24, float %261)  ; Sqrt(value)
  %922 = call float @dx.op.unary.f32(i32 24, float %265)  ; Sqrt(value)
  %923 = fadd fast float %920, -5.000000e-01
  %924 = fadd fast float %921, -5.000000e-01
  %925 = fadd fast float %922, -5.000000e-01
  %926 = fmul fast float %923, %805
  %927 = fmul fast float %924, %805
  %928 = fmul fast float %925, %805
  %929 = fadd fast float %926, 5.000000e-01
  %930 = fadd fast float %927, 5.000000e-01
  %931 = fadd fast float %928, 5.000000e-01
  %932 = call float @dx.op.unary.f32(i32 24, float %780)  ; Sqrt(value)
  %933 = call float @dx.op.unary.f32(i32 24, float %781)  ; Sqrt(value)
  %934 = call float @dx.op.unary.f32(i32 24, float %782)  ; Sqrt(value)
  %935 = fmul fast float %929, 2.000000e+00
  %936 = fsub fast float 1.000000e+00, %935
  %937 = fmul fast float %936, %932
  %938 = fadd fast float %937, %935
  %939 = fmul fast float %938, %932
  %940 = fmul fast float %930, 2.000000e+00
  %941 = fsub fast float 1.000000e+00, %940
  %942 = fmul fast float %941, %933
  %943 = fadd fast float %942, %940
  %944 = fmul fast float %943, %933
  %945 = fmul fast float %931, 2.000000e+00
  %946 = fsub fast float 1.000000e+00, %945
  %947 = fmul fast float %946, %934
  %948 = fadd fast float %947, %945
  %949 = fmul fast float %948, %934
  %950 = fmul fast float %939, %939
  %951 = fmul fast float %944, %944
  %952 = fmul fast float %949, %949
  br label %969

; <label>:953                                     ; preds = %916
  %954 = fmul fast float %257, %257
  %955 = fmul fast float %261, %261
  %956 = fmul fast float %265, %265
  %957 = fadd fast float %954, -1.000000e+00
  %958 = fadd fast float %955, -1.000000e+00
  %959 = fadd fast float %956, -1.000000e+00
  %960 = fmul fast float %805, %957
  %961 = fmul fast float %805, %958
  %962 = fmul fast float %805, %959
  %963 = fadd fast float %960, 1.000000e+00
  %964 = fadd fast float %961, 1.000000e+00
  %965 = fadd fast float %962, 1.000000e+00
  %966 = fmul fast float %963, %780
  %967 = fmul fast float %964, %781
  %968 = fmul fast float %965, %782
  br label %969

; <label>:969                                     ; preds = %953, %919, %810, %765
  %970 = phi float [ %915, %810 ], [ %791, %919 ], [ %791, %953 ], [ 0x3FA23C0BE0000000, %765 ]
  %971 = phi float [ %907, %810 ], [ %950, %919 ], [ %966, %953 ], [ 1.000000e+00, %765 ]
  %972 = phi float [ %908, %810 ], [ %951, %919 ], [ %967, %953 ], [ 1.000000e+00, %765 ]
  %973 = phi float [ %909, %810 ], [ %952, %919 ], [ %968, %953 ], [ 1.000000e+00, %765 ]
  %974 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %975 = extractvalue %dx.types.CBufRet.i32 %974, 1
  %976 = and i32 %975, 1
  %977 = icmp ne i32 %976, 0
  %978 = add i32 %60, 356
  %979 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %978, i32 undef)  ; BufferLoad(srv,index,wot)
  %980 = extractvalue %dx.types.ResRet.i32 %979, 0
  %981 = and i32 %980, 32
  %982 = icmp ne i32 %981, 0
  %983 = and i1 %977, %982
  %984 = select i1 %983, float 1.000000e+00, float %971
  %985 = select i1 %983, float 0x3FD3333340000000, float %972
  %986 = select i1 %983, float 0x3FD3333340000000, float %973
  %987 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %471, i32 undef)  ; BufferLoad(srv,index,wot)
  %988 = extractvalue %dx.types.ResRet.i32 %987, 0
  %989 = and i32 %988, 32
  %990 = icmp eq i32 %989, 0
  br i1 %990, label %1063, label %991

; <label>:991                                     ; preds = %969
  %992 = add i32 %60, 92
  %993 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %992, i32 undef)  ; BufferLoad(srv,index,wot)
  %994 = extractvalue %dx.types.ResRet.i32 %993, 0
  %995 = add i32 %60, 376
  %996 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %995, i32 undef)  ; BufferLoad(srv,index,wot)
  %997 = extractvalue %dx.types.ResRet.i32 %996, 0
  %998 = add i32 %997, 0
  %999 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %998, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1000 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %999, %dx.types.Handle %100, float %578, float %579, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1001 = extractvalue %dx.types.ResRet.f32 %1000, 0
  %1002 = extractvalue %dx.types.ResRet.f32 %1000, 1
  %1003 = extractvalue %dx.types.ResRet.f32 %1000, 2
  %1004 = extractvalue %dx.types.ResRet.f32 %1000, 3
  %1005 = and i32 %994, 255
  %1006 = uitofp i32 %1005 to float
  %1007 = lshr i32 %994, 8
  %1008 = and i32 %1007, 255
  %1009 = uitofp i32 %1008 to float
  %1010 = lshr i32 %994, 16
  %1011 = and i32 %1010, 255
  %1012 = uitofp i32 %1011 to float
  %1013 = fmul fast float %1012, 0x3F70101000000000
  %1014 = fmul fast float %1001, %1006
  %1015 = fadd fast float %1014, %1009
  %1016 = fmul fast float %1015, 0x3F70101000000000
  %1017 = fadd fast float %1002, -5.000000e-01
  %1018 = fadd fast float %1004, -5.000000e-01
  %1019 = fmul fast float %1017, %1013
  %1020 = fmul fast float %1018, %1013
  %1021 = fadd fast float %1019, 5.000000e-01
  %1022 = fadd fast float %1020, 5.000000e-01
  %1023 = fmul fast float %1021, 2.000000e+00
  %1024 = fadd fast float %1023, -1.000000e+00
  %1025 = fmul fast float %1022, 2.000000e+00
  %1026 = fadd fast float %1025, -1.000000e+00
  %1027 = fadd fast float %1024, %1026
  %1028 = fmul fast float %1027, 5.000000e-01
  %1029 = fsub fast float %1024, %1026
  %1030 = fmul fast float %1029, 5.000000e-01
  %1031 = call float @dx.op.unary.f32(i32 6, float %1028)  ; FAbs(value)
  %1032 = fsub fast float 1.000000e+00, %1031
  %1033 = call float @dx.op.unary.f32(i32 6, float %1030)  ; FAbs(value)
  %1034 = fsub fast float %1032, %1033
  %1035 = call float @dx.op.dot3.f32(i32 55, float %1028, float %1030, float %1034, float %1028, float %1030, float %1034)  ; Dot3(ax,ay,az,bx,by,bz)
  %1036 = call float @dx.op.unary.f32(i32 25, float %1035)  ; Rsqrt(value)
  %1037 = fmul fast float %1028, %1036
  %1038 = fmul fast float %1030, %1036
  %1039 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %471, i32 undef)  ; BufferLoad(srv,index,wot)
  %1040 = extractvalue %dx.types.ResRet.i32 %1039, 0
  %1041 = and i32 %1040, 67108864
  %1042 = icmp eq i32 %1041, 0
  br i1 %1042, label %1059, label %1043

; <label>:1043                                    ; preds = %991
  %1044 = add i32 %60, 280
  %1045 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1044, i32 undef)  ; BufferLoad(srv,index,wot)
  %1046 = extractvalue %dx.types.ResRet.i32 %1045, 0
  %1047 = and i32 %1046, 65535
  %1048 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1047)  ; LegacyF16ToF32(value)
  %1049 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %488, i32 undef)  ; BufferLoad(srv,index,wot)
  %1050 = extractvalue %dx.types.ResRet.i32 %1049, 0
  %1051 = and i32 %1050, 65535
  %1052 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1051)  ; LegacyF16ToF32(value)
  %1053 = lshr i32 %1046, 16
  %1054 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1053)  ; LegacyF16ToF32(value)
  %1055 = fsub fast float %1016, %1054
  %1056 = fmul fast float %1055, %1048
  %1057 = fadd fast float %1056, %1052
  %1058 = call float @dx.op.unary.f32(i32 7, float %1057)  ; Saturate(value)
  br label %1059

; <label>:1059                                    ; preds = %1043, %991
  %1060 = phi float [ %1058, %1043 ], [ %1016, %991 ]
  %1061 = call float @dx.op.dot2.f32(i32 54, float %1037, float %1038, float %482, float %483)  ; Dot2(ax,ay,bx,by)
  %1062 = call float @dx.op.dot2.f32(i32 54, float %1037, float %1038, float %484, float %485)  ; Dot2(ax,ay,bx,by)
  br label %1063

; <label>:1063                                    ; preds = %1059, %969
  %1064 = phi float [ %1060, %1059 ], [ 0x3FD6666660000000, %969 ]
  %1065 = phi float [ %1061, %1059 ], [ 0.000000e+00, %969 ]
  %1066 = phi float [ %1062, %1059 ], [ 0.000000e+00, %969 ]
  %1067 = phi float [ %1003, %1059 ], [ 1.000000e+00, %969 ]
  %1068 = add i32 %60, 160
  %1069 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1068, i32 undef)  ; BufferLoad(srv,index,wot)
  %1070 = extractvalue %dx.types.ResRet.i32 %1069, 0
  %1071 = lshr i32 %1070, 22
  %1072 = shl nuw nsw i32 %1071, 5
  %1073 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1072)  ; LegacyF16ToF32(value)
  %1074 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %471, i32 undef)  ; BufferLoad(srv,index,wot)
  %1075 = extractvalue %dx.types.ResRet.i32 %1074, 0
  %1076 = and i32 %1075, 64
  %1077 = icmp eq i32 %1076, 0
  br i1 %1077, label %1111, label %1078

; <label>:1078                                    ; preds = %1063
  %1079 = add i32 %60, 392
  %1080 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1079, i32 undef)  ; BufferLoad(srv,index,wot)
  %1081 = extractvalue %dx.types.ResRet.i32 %1080, 0
  %1082 = add i32 %1081, 0
  %1083 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1082, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1084 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %471, i32 undef)  ; BufferLoad(srv,index,wot)
  %1085 = extractvalue %dx.types.ResRet.i32 %1084, 0
  %1086 = and i32 %1085, 131072
  %1087 = icmp eq i32 %1086, 0
  %1088 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1083, %dx.types.Handle %100, float %578, float %579, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1089 = extractvalue %dx.types.ResRet.f32 %1088, 0
  %1090 = extractvalue %dx.types.ResRet.f32 %1088, 1
  %1091 = extractvalue %dx.types.ResRet.f32 %1088, 2
  %1092 = fmul fast float %1089, %245
  %1093 = fmul fast float %1090, %248
  %1094 = fmul fast float %1091, %251
  br i1 %1087, label %1101, label %1095

; <label>:1095                                    ; preds = %1078
  %1096 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1097 = extractvalue %dx.types.CBufRet.f32 %1096, 0
  %1098 = fmul fast float %1097, %1092
  %1099 = fmul fast float %1097, %1093
  %1100 = fmul fast float %1097, %1094
  br label %1101

; <label>:1101                                    ; preds = %1095, %1078
  %1102 = phi float [ %1098, %1095 ], [ %1092, %1078 ]
  %1103 = phi float [ %1099, %1095 ], [ %1093, %1078 ]
  %1104 = phi float [ %1100, %1095 ], [ %1094, %1078 ]
  %1105 = fmul fast float %1102, %1073
  %1106 = select i1 %228, float %1105, float %1102
  %1107 = call float @dx.op.dot3.f32(i32 55, float %1106, float %1103, float %1104, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1108 = select i1 %228, float 0.000000e+00, float %1102
  %1109 = select i1 %228, float %1107, float %1103
  %1110 = select i1 %228, float 0.000000e+00, float %1104
  br label %1111

; <label>:1111                                    ; preds = %1101, %1063
  %1112 = phi float [ %1108, %1101 ], [ 0.000000e+00, %1063 ]
  %1113 = phi float [ %1109, %1101 ], [ 0.000000e+00, %1063 ]
  %1114 = phi float [ %1110, %1101 ], [ 0.000000e+00, %1063 ]
  %1115 = add i32 %60, 96
  %1116 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1115, i32 undef)  ; BufferLoad(srv,index,wot)
  %1117 = extractvalue %dx.types.ResRet.i32 %1116, 0
  %1118 = and i32 %1117, 255
  %1119 = uitofp i32 %1118 to float
  %1120 = lshr i32 %1117, 8
  %1121 = and i32 %1120, 255
  %1122 = uitofp i32 %1121 to float
  %1123 = call float @dx.op.dot3.f32(i32 55, float %984, float %985, float %986, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1124 = fmul fast float %1122, %1123
  %1125 = fadd fast float %1124, %1119
  %1126 = fmul fast float %1125, 0x3F70101020000000
  %1127 = call float @dx.op.unary.f32(i32 7, float %1126)  ; Saturate(value)
  br label %1128

; <label>:1128                                    ; preds = %1111, %464
  %1129 = phi float [ 0.000000e+00, %464 ], [ %1065, %1111 ]
  %1130 = phi float [ 0.000000e+00, %464 ], [ %1066, %1111 ]
  %1131 = phi float [ 0.000000e+00, %464 ], [ %984, %1111 ]
  %1132 = phi float [ 0.000000e+00, %464 ], [ %985, %1111 ]
  %1133 = phi float [ 0.000000e+00, %464 ], [ %986, %1111 ]
  %1134 = phi float [ 0.000000e+00, %464 ], [ %1112, %1111 ]
  %1135 = phi float [ 0.000000e+00, %464 ], [ %1113, %1111 ]
  %1136 = phi float [ 0.000000e+00, %464 ], [ %1114, %1111 ]
  %1137 = phi float [ 0.000000e+00, %464 ], [ %970, %1111 ]
  %1138 = phi float [ 0.000000e+00, %464 ], [ %766, %1111 ]
  %1139 = phi float [ 0.000000e+00, %464 ], [ %1064, %1111 ]
  %1140 = phi float [ 0.000000e+00, %464 ], [ %1067, %1111 ]
  %1141 = phi float [ 0.000000e+00, %464 ], [ %1127, %1111 ]
  br i1 %412, label %1983, label %1142

; <label>:1142                                    ; preds = %1128
  %1143 = icmp ult i32 %470, 2
  %1144 = add i32 %60, 40
  %1145 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1144, i32 undef)  ; BufferLoad(srv,index,wot)
  %1146 = extractvalue %dx.types.ResRet.i32 %1145, 0
  %1147 = add i32 %60, 44
  %1148 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1147, i32 undef)  ; BufferLoad(srv,index,wot)
  %1149 = extractvalue %dx.types.ResRet.i32 %1148, 0
  %1150 = or i32 %1149, %1146
  %1151 = icmp eq i32 %1150, 0
  br i1 %1151, label %1983, label %1152

; <label>:1152                                    ; preds = %1142
  %1153 = and i32 %1146, 262144
  %1154 = icmp ne i32 %1153, 0
  %1155 = select i1 %1154, float %63, float 1.000000e+00
  %1156 = select i1 %1154, float %64, float 0.000000e+00
  %1157 = select i1 %1154, float %65, float 0.000000e+00
  %1158 = select i1 %1154, float %66, float 1.000000e+00
  %1159 = select i1 %1154, float %67, float %83
  %1160 = select i1 %1154, float %68, float %84
  %1161 = add i32 %60, 300
  %1162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1161, i32 undef)  ; BufferLoad(srv,index,wot)
  %1163 = extractvalue %dx.types.ResRet.i32 %1162, 0
  %1164 = lshr i32 %1163, 16
  %1165 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1164)  ; LegacyF16ToF32(value)
  %1166 = fmul fast float %1165, 0x3F50624DE0000000
  %1167 = add i32 %60, 104
  %1168 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1167, i32 undef)  ; BufferLoad(srv,index,wot)
  %1169 = extractvalue %dx.types.ResRet.i32 %1168, 0
  %1170 = lshr i32 %1169, 16
  %1171 = and i32 %1170, 255
  %1172 = lshr i32 %1169, 24
  %1173 = add i32 %60, 308
  %1174 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1173, i32 undef)  ; BufferLoad(srv,index,wot)
  %1175 = extractvalue %dx.types.ResRet.i32 %1174, 0
  %1176 = and i32 %1175, 65535
  %1177 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1176)  ; LegacyF16ToF32(value)
  %1178 = lshr i32 %1175, 16
  %1179 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1178)  ; LegacyF16ToF32(value)
  %1180 = add i32 %60, 48
  %1181 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1180, i32 undef)  ; BufferLoad(srv,index,wot)
  %1182 = extractvalue %dx.types.ResRet.i32 %1181, 0
  %1183 = lshr i32 %1182, 22
  %1184 = shl nuw nsw i32 %1183, 5
  %1185 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1184)  ; LegacyF16ToF32(value)
  %1186 = shl i32 %1182, 4
  %1187 = and i32 %1186, 32752
  %1188 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1187)  ; LegacyF16ToF32(value)
  %1189 = lshr i32 %1182, 7
  %1190 = and i32 %1189, 32752
  %1191 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1190)  ; LegacyF16ToF32(value)
  %1192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1193 = extractvalue %dx.types.CBufRet.f32 %1192, 3
  %1194 = fmul fast float %1193, 1.000000e+03
  %1195 = fmul fast float %322, %1194
  %1196 = call float @dx.op.unary.f32(i32 22, float %1195)  ; Frc(value)
  %1197 = fadd fast float %1196, %312
  %1198 = fmul fast float %323, %1194
  %1199 = call float @dx.op.unary.f32(i32 22, float %1198)  ; Frc(value)
  %1200 = fadd fast float %1199, %314
  %1201 = fmul fast float %1166, %1194
  %1202 = call float @dx.op.unary.f32(i32 22, float %1201)  ; Frc(value)
  %1203 = fmul fast float %1202, 0x401921FB60000000
  %1204 = fadd fast float %1203, %1185
  %1205 = call float @dx.op.unary.f32(i32 13, float %1204)  ; Sin(value)
  %1206 = call float @dx.op.unary.f32(i32 12, float %1204)  ; Cos(value)
  %1207 = fsub fast float -0.000000e+00, %1205
  %1208 = fadd fast float %1159, -5.000000e-01
  %1209 = fadd fast float %1160, -5.000000e-01
  %1210 = fmul fast float %1177, %1208
  %1211 = fmul fast float %1179, %1209
  %1212 = fadd fast float %1210, 5.000000e-01
  %1213 = fadd fast float %1211, 5.000000e-01
  %1214 = fmul fast float %1188, %1212
  %1215 = fmul fast float %1191, %1213
  %1216 = fmul fast float %1206, %1214
  %1217 = call float @dx.op.tertiary.f32(i32 46, float %1207, float %1215, float %1216)  ; FMad(a,b,c)
  %1218 = fmul fast float %1205, %1214
  %1219 = call float @dx.op.tertiary.f32(i32 46, float %1206, float %1215, float %1218)  ; FMad(a,b,c)
  %1220 = fadd fast float %1197, %1217
  %1221 = fadd fast float %1200, %1219
  %1222 = icmp ugt i32 %1171, 1
  %1223 = icmp ugt i32 %1169, 33554431
  %1224 = or i1 %1223, %1222
  br i1 %1224, label %1225, label %1250

; <label>:1225                                    ; preds = %1152
  %1226 = add i32 %60, 244
  %1227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1226, i32 undef)  ; BufferLoad(srv,index,wot)
  %1228 = extractvalue %dx.types.ResRet.i32 %1227, 0
  %1229 = lshr i32 %1228, 16
  %1230 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1229)  ; LegacyF16ToF32(value)
  %1231 = fmul fast float %1193, %1230
  %1232 = call float @dx.op.unary.f32(i32 22, float %1231)  ; Frc(value)
  %1233 = mul nuw nsw i32 %1171, %1172
  %1234 = uitofp i32 %1233 to float
  %1235 = fmul fast float %1232, %1234
  %1236 = call float @dx.op.unary.f32(i32 27, float %1235)  ; Round_ni(value)
  %1237 = fptoui float %1236 to i32
  %1238 = urem i32 %1237, %1171
  %1239 = udiv i32 %1237, %1172
  %1240 = call float @dx.op.unary.f32(i32 22, float %1220)  ; Frc(value)
  %1241 = call float @dx.op.unary.f32(i32 22, float %1221)  ; Frc(value)
  %1242 = uitofp i32 %1238 to float
  %1243 = uitofp i32 %1239 to float
  %1244 = fadd fast float %1240, %1242
  %1245 = fadd fast float %1241, %1243
  %1246 = uitofp i32 %1171 to float
  %1247 = uitofp i32 %1172 to float
  %1248 = fdiv fast float %1244, %1246
  %1249 = fdiv fast float %1245, %1247
  br label %1250

; <label>:1250                                    ; preds = %1225, %1152
  %1251 = phi float [ %1248, %1225 ], [ %1220, %1152 ]
  %1252 = phi float [ %1249, %1225 ], [ %1221, %1152 ]
  %1253 = and i32 %1146, 16777216
  %1254 = icmp eq i32 %1253, 0
  br i1 %1254, label %1364, label %1255

; <label>:1255                                    ; preds = %1250
  %1256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1257 = extractvalue %dx.types.CBufRet.f32 %1256, 0
  %1258 = extractvalue %dx.types.CBufRet.f32 %1256, 1
  %1259 = extractvalue %dx.types.CBufRet.f32 %1256, 2
  %1260 = fadd fast float %1257, %167
  %1261 = fadd fast float %1258, %168
  %1262 = fadd fast float %1259, %169
  %1263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1264 = extractvalue %dx.types.CBufRet.f32 %1263, 0
  %1265 = call float @dx.op.unary.f32(i32 7, float %1264)  ; Saturate(value)
  %1266 = icmp eq i32 %61, 65535
  br i1 %1266, label %1361, label %1267

; <label>:1267                                    ; preds = %1255
  %1268 = lshr i32 %61, 1
  %1269 = shl i32 %1268, 2
  %1270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1269, i32 undef)  ; BufferLoad(srv,index,wot)
  %1271 = extractvalue %dx.types.ResRet.i32 %1270, 0
  %1272 = and i32 %61, 1
  %1273 = icmp ne i32 %1272, 0
  %1274 = lshr i32 %1271, 16
  %1275 = and i32 %1271, 65535
  %1276 = select i1 %1273, i32 %1274, i32 %1275
  %1277 = icmp eq i32 %1276, 65535
  br i1 %1277, label %1357, label %1278

; <label>:1278                                    ; preds = %1267
  %1279 = mul nuw nsw i32 %1276, 40
  %1280 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %1279, i32 undef)  ; BufferLoad(srv,index,wot)
  %1281 = extractvalue %dx.types.ResRet.f32 %1280, 0
  %1282 = extractvalue %dx.types.ResRet.f32 %1280, 1
  %1283 = extractvalue %dx.types.ResRet.f32 %1280, 2
  %1284 = add nuw nsw i32 %1279, 12
  %1285 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %1284, i32 undef)  ; BufferLoad(srv,index,wot)
  %1286 = extractvalue %dx.types.ResRet.f32 %1285, 0
  %1287 = extractvalue %dx.types.ResRet.f32 %1285, 1
  %1288 = extractvalue %dx.types.ResRet.f32 %1285, 2
  %1289 = add nuw nsw i32 %1279, 24
  %1290 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %1289, i32 undef)  ; BufferLoad(srv,index,wot)
  %1291 = extractvalue %dx.types.ResRet.f32 %1290, 0
  %1292 = extractvalue %dx.types.ResRet.f32 %1290, 1
  %1293 = extractvalue %dx.types.ResRet.f32 %1290, 2
  %1294 = add nuw nsw i32 %1279, 36
  %1295 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %1294, i32 undef)  ; BufferLoad(srv,index,wot)
  %1296 = extractvalue %dx.types.ResRet.f32 %1295, 0
  %1297 = fsub fast float %1260, %1281
  %1298 = fsub fast float %1261, %1282
  %1299 = fsub fast float %1262, %1283
  %1300 = fmul fast float %1296, %1297
  %1301 = fmul fast float %1296, %1298
  %1302 = fmul fast float %1296, %1299
  %1303 = call float @dx.op.unary.f32(i32 27, float %1300)  ; Round_ni(value)
  %1304 = call float @dx.op.unary.f32(i32 27, float %1301)  ; Round_ni(value)
  %1305 = call float @dx.op.unary.f32(i32 27, float %1302)  ; Round_ni(value)
  %1306 = fadd fast float %1303, 5.000000e-01
  %1307 = fadd fast float %1304, 5.000000e-01
  %1308 = fadd fast float %1305, 5.000000e-01
  %1309 = fmul fast float %1306, %1286
  %1310 = fmul fast float %1307, %1287
  %1311 = fmul fast float %1308, %1288
  %1312 = shl i32 %61, 2
  %1313 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1312, i32 undef)  ; BufferLoad(srv,index,wot)
  %1314 = extractvalue %dx.types.ResRet.i32 %1313, 0
  %1315 = add i32 %1314, 0
  %1316 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1315, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1317 = call float @dx.op.unary.f32(i32 22, float %1309)  ; Frc(value)
  %1318 = call float @dx.op.unary.f32(i32 22, float %1310)  ; Frc(value)
  %1319 = call float @dx.op.unary.f32(i32 22, float %1311)  ; Frc(value)
  %1320 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1316, %dx.types.Handle %47, float %1317, float %1318, float %1319, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1321 = extractvalue %dx.types.ResRet.f32 %1320, 0
  %1322 = extractvalue %dx.types.ResRet.f32 %1320, 1
  %1323 = extractvalue %dx.types.ResRet.f32 %1320, 2
  %1324 = fmul fast float %1321, 1.023000e+03
  %1325 = fmul fast float %1322, 1.023000e+03
  %1326 = fmul fast float %1323, 1.023000e+03
  %1327 = fadd fast float %1324, 5.000000e-01
  %1328 = fadd fast float %1325, 5.000000e-01
  %1329 = fadd fast float %1326, 5.000000e-01
  %1330 = call float @dx.op.unary.f32(i32 27, float %1327)  ; Round_ni(value)
  %1331 = call float @dx.op.unary.f32(i32 27, float %1328)  ; Round_ni(value)
  %1332 = call float @dx.op.unary.f32(i32 27, float %1329)  ; Round_ni(value)
  %1333 = fsub fast float %1300, %1303
  %1334 = fsub fast float %1301, %1304
  %1335 = fsub fast float %1302, %1305
  %1336 = fmul fast float %1333, 7.500000e-01
  %1337 = fmul fast float %1334, 7.500000e-01
  %1338 = fmul fast float %1335, 7.500000e-01
  %1339 = fadd fast float %1303, 1.250000e-01
  %1340 = fadd fast float %1339, %1336
  %1341 = fadd fast float %1340, %1330
  %1342 = fadd fast float %1304, 1.250000e-01
  %1343 = fadd fast float %1342, %1337
  %1344 = fadd fast float %1343, %1331
  %1345 = fadd fast float %1305, 1.250000e-01
  %1346 = fadd fast float %1345, %1338
  %1347 = fadd fast float %1346, %1332
  %1348 = fmul fast float %1341, %1291
  %1349 = fmul fast float %1344, %1292
  %1350 = fmul fast float %1347, %1293
  %1351 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1312, i32 undef)  ; BufferLoad(srv,index,wot)
  %1352 = extractvalue %dx.types.ResRet.i32 %1351, 0
  %1353 = add i32 %1352, 0
  %1354 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1353, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1355 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1354, %dx.types.Handle %45, float %1348, float %1349, float %1350, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1356 = extractvalue %dx.types.ResRet.f32 %1355, 0
  br label %1357

; <label>:1357                                    ; preds = %1278, %1267
  %1358 = phi float [ %1356, %1278 ], [ -1.000000e+00, %1267 ]
  %1359 = fadd fast float %1358, %1265
  %1360 = call float @dx.op.unary.f32(i32 7, float %1359)  ; Saturate(value)
  br label %1361

; <label>:1361                                    ; preds = %1357, %1255
  %1362 = phi float [ %1360, %1357 ], [ %1265, %1255 ]
  %1363 = fmul fast float %1362, %467
  br label %1364

; <label>:1364                                    ; preds = %1361, %1250
  %1365 = phi float [ %1363, %1361 ], [ %467, %1250 ]
  %1366 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1144, i32 undef)  ; BufferLoad(srv,index,wot)
  %1367 = extractvalue %dx.types.ResRet.i32 %1366, 0
  %1368 = and i32 %1367, 256
  %1369 = icmp eq i32 %1368, 0
  br i1 %1369, label %1416, label %1370

; <label>:1370                                    ; preds = %1364
  %1371 = add i32 %60, 428
  %1372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1371, i32 undef)  ; BufferLoad(srv,index,wot)
  %1373 = extractvalue %dx.types.ResRet.i32 %1372, 0
  %1374 = add i32 %1373, 0
  %1375 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1374, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1376 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1375, %dx.types.Handle %101, float %1251, float %1252, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1377 = extractvalue %dx.types.ResRet.f32 %1376, 0
  %1378 = add i32 %60, 116
  %1379 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1378, i32 undef)  ; BufferLoad(srv,index,wot)
  %1380 = extractvalue %dx.types.ResRet.i32 %1379, 0
  %1381 = shl i32 %1380, 4
  %1382 = and i32 %1381, 32752
  %1383 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1382)  ; LegacyF16ToF32(value)
  %1384 = lshr i32 %1380, 7
  %1385 = and i32 %1384, 32752
  %1386 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1385)  ; LegacyF16ToF32(value)
  %1387 = fsub fast float 1.000000e+00, %1365
  %1388 = call float @dx.op.binary.f32(i32 35, float %1387, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1389 = bitcast float %1365 to i32
  %1390 = sitofp i32 %1389 to float
  %1391 = fadd fast float %1390, 0xC1CFBF8940000000
  %1392 = fmul fast float %1386, %1391
  %1393 = fadd fast float %1392, 0x41CFBF8940000000
  %1394 = fptosi float %1393 to i32
  %1395 = bitcast i32 %1394 to float
  %1396 = bitcast float %1388 to i32
  %1397 = sitofp i32 %1396 to float
  %1398 = fadd fast float %1397, 0xC1CFBF8940000000
  %1399 = fmul fast float %1398, %1386
  %1400 = fadd fast float %1399, 0x41CFBF8940000000
  %1401 = fptosi float %1400 to i32
  %1402 = bitcast i32 %1401 to float
  %1403 = fmul fast float %1395, %1383
  %1404 = fmul fast float %1402, %1383
  %1405 = fsub fast float %1388, %1403
  %1406 = fadd fast float %1404, %1388
  %1407 = call float @dx.op.unary.f32(i32 7, float %1405)  ; Saturate(value)
  %1408 = call float @dx.op.unary.f32(i32 7, float %1406)  ; Saturate(value)
  %1409 = fsub fast float %1377, %1407
  %1410 = fsub fast float %1408, %1407
  %1411 = bitcast float %1410 to i32
  %1412 = sub nsw i32 2129859010, %1411
  %1413 = bitcast i32 %1412 to float
  %1414 = fmul fast float %1413, %1409
  %1415 = call float @dx.op.unary.f32(i32 7, float %1414)  ; Saturate(value)
  br label %1416

; <label>:1416                                    ; preds = %1370, %1364
  %1417 = phi float [ %1415, %1370 ], [ %1365, %1364 ]
  %1418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1144, i32 undef)  ; BufferLoad(srv,index,wot)
  %1419 = extractvalue %dx.types.ResRet.i32 %1418, 0
  %1420 = and i32 %1419, 128
  %1421 = icmp eq i32 %1420, 0
  br i1 %1421, label %1438, label %1422

; <label>:1422                                    ; preds = %1416
  %1423 = add i32 %60, 412
  %1424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1423, i32 undef)  ; BufferLoad(srv,index,wot)
  %1425 = extractvalue %dx.types.ResRet.i32 %1424, 0
  %1426 = add i32 %1425, 0
  %1427 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1426, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1428 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1427, %dx.types.Handle %101, float %1251, float %1252, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1429 = extractvalue %dx.types.ResRet.f32 %1428, 0
  %1430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1144, i32 undef)  ; BufferLoad(srv,index,wot)
  %1431 = extractvalue %dx.types.ResRet.i32 %1430, 0
  %1432 = and i32 %1431, 524288
  %1433 = icmp ne i32 %1432, 0
  %1434 = fcmp fast ogt float %1429, 0x3FE0101020000000
  %1435 = select i1 %1434, float 1.000000e+00, float 0.000000e+00
  %1436 = select i1 %1433, float %1435, float %1429
  %1437 = fmul fast float %1436, %1417
  br label %1438

; <label>:1438                                    ; preds = %1422, %1416
  %1439 = phi float [ %1437, %1422 ], [ %1417, %1416 ]
  %1440 = fcmp fast ult float %1439, 0x3F70101020000000
  br i1 %1440, label %1983, label %1441

; <label>:1441                                    ; preds = %1438
  %1442 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1144, i32 undef)  ; BufferLoad(srv,index,wot)
  %1443 = extractvalue %dx.types.ResRet.i32 %1442, 0
  %1444 = and i32 %1443, 16
  %1445 = icmp eq i32 %1444, 0
  br i1 %1445, label %1644, label %1446

; <label>:1446                                    ; preds = %1441
  %1447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1167, i32 undef)  ; BufferLoad(srv,index,wot)
  %1448 = extractvalue %dx.types.ResRet.i32 %1447, 0
  %1449 = add i32 %60, 364
  %1450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1449, i32 undef)  ; BufferLoad(srv,index,wot)
  %1451 = extractvalue %dx.types.ResRet.i32 %1450, 0
  %1452 = add i32 %1451, 0
  %1453 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1452, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1454 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1453, %dx.types.Handle %100, float %1251, float %1252, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1455 = extractvalue %dx.types.ResRet.f32 %1454, 0
  %1456 = extractvalue %dx.types.ResRet.f32 %1454, 1
  %1457 = extractvalue %dx.types.ResRet.f32 %1454, 2
  %1458 = extractvalue %dx.types.ResRet.f32 %1454, 3
  %1459 = and i32 %1448, 255
  %1460 = uitofp i32 %1459 to float
  %1461 = lshr i32 %1448, 8
  %1462 = and i32 %1461, 255
  %1463 = uitofp i32 %1462 to float
  %1464 = fmul fast float %1458, %1460
  %1465 = fadd fast float %1464, %1463
  %1466 = fmul fast float %1465, 0x3F70101000000000
  %1467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1144, i32 undef)  ; BufferLoad(srv,index,wot)
  %1468 = extractvalue %dx.types.ResRet.i32 %1467, 0
  %1469 = and i32 %1468, 512
  %1470 = icmp eq i32 %1469, 0
  br i1 %1470, label %1479, label %1471

; <label>:1471                                    ; preds = %1446
  %1472 = add i32 %60, 444
  %1473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1472, i32 undef)  ; BufferLoad(srv,index,wot)
  %1474 = extractvalue %dx.types.ResRet.i32 %1473, 0
  %1475 = add i32 %1474, 0
  %1476 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1475, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1477 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1476, %dx.types.Handle %101, float %1251, float %1252, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1478 = extractvalue %dx.types.ResRet.f32 %1477, 0
  br label %1479

; <label>:1479                                    ; preds = %1471, %1446
  %1480 = phi float [ %1478, %1471 ], [ 1.000000e+00, %1446 ]
  %1481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1144, i32 undef)  ; BufferLoad(srv,index,wot)
  %1482 = extractvalue %dx.types.ResRet.i32 %1481, 0
  %1483 = and i32 %1482, 33554432
  %1484 = icmp eq i32 %1483, 0
  br i1 %1484, label %1591, label %1485

; <label>:1485                                    ; preds = %1479
  %1486 = add i32 %60, 240
  %1487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1486, i32 undef)  ; BufferLoad(srv,index,wot)
  %1488 = extractvalue %dx.types.ResRet.i32 %1487, 0
  %1489 = and i32 %1488, 65535
  %1490 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1489)  ; LegacyF16ToF32(value)
  %1491 = lshr i32 %1488, 16
  %1492 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1491)  ; LegacyF16ToF32(value)
  %1493 = add i32 %60, 244
  %1494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1493, i32 undef)  ; BufferLoad(srv,index,wot)
  %1495 = extractvalue %dx.types.ResRet.i32 %1494, 0
  %1496 = and i32 %1495, 65535
  %1497 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1496)  ; LegacyF16ToF32(value)
  %1498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %294, i32 undef)  ; BufferLoad(srv,index,wot)
  %1499 = extractvalue %dx.types.ResRet.i32 %1498, 0
  %1500 = lshr i32 %1499, 24
  %1501 = uitofp i32 %1500 to float
  %1502 = fmul fast float %1501, 0x3F70101020000000
  %1503 = and i32 %1499, 255
  %1504 = uitofp i32 %1503 to float
  %1505 = fmul fast float %1504, 0x3F70101020000000
  %1506 = lshr i32 %1499, 8
  %1507 = and i32 %1506, 255
  %1508 = uitofp i32 %1507 to float
  %1509 = fmul fast float %1508, 0x3F70101020000000
  %1510 = lshr i32 %1499, 16
  %1511 = and i32 %1510, 255
  %1512 = uitofp i32 %1511 to float
  %1513 = fmul fast float %1512, 0x3F70101020000000
  %1514 = add i32 %60, 236
  %1515 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1514, i32 undef)  ; BufferLoad(srv,index,wot)
  %1516 = extractvalue %dx.types.ResRet.i32 %1515, 0
  %1517 = lshr i32 %1516, 24
  %1518 = uitofp i32 %1517 to float
  %1519 = fmul fast float %1518, 0x3F70101020000000
  %1520 = and i32 %1516, 255
  %1521 = uitofp i32 %1520 to float
  %1522 = fmul fast float %1521, 0x3F70101020000000
  %1523 = lshr i32 %1516, 8
  %1524 = and i32 %1523, 255
  %1525 = uitofp i32 %1524 to float
  %1526 = fmul fast float %1525, 0x3F70101020000000
  %1527 = lshr i32 %1516, 16
  %1528 = and i32 %1527, 255
  %1529 = uitofp i32 %1528 to float
  %1530 = fmul fast float %1529, 0x3F70101020000000
  %1531 = bitcast float %1455 to i32
  %1532 = ashr i32 %1531, 1
  %1533 = sub nsw i32 1597463174, %1532
  %1534 = bitcast i32 %1533 to float
  %1535 = fmul fast float %1455, 5.000000e-01
  %1536 = fmul fast float %1534, %1534
  %1537 = fmul fast float %1536, %1535
  %1538 = fsub fast float 1.500000e+00, %1537
  %1539 = fmul fast float %1534, %1455
  %1540 = fmul fast float %1539, %1538
  %1541 = bitcast float %1456 to i32
  %1542 = ashr i32 %1541, 1
  %1543 = sub nsw i32 1597463174, %1542
  %1544 = bitcast i32 %1543 to float
  %1545 = fmul fast float %1456, 5.000000e-01
  %1546 = fmul fast float %1544, %1544
  %1547 = fmul fast float %1546, %1545
  %1548 = fsub fast float 1.500000e+00, %1547
  %1549 = fmul fast float %1544, %1456
  %1550 = fmul fast float %1549, %1548
  %1551 = bitcast float %1457 to i32
  %1552 = ashr i32 %1551, 1
  %1553 = sub nsw i32 1597463174, %1552
  %1554 = bitcast i32 %1553 to float
  %1555 = fmul fast float %1457, 5.000000e-01
  %1556 = fmul fast float %1554, %1554
  %1557 = fmul fast float %1556, %1555
  %1558 = fsub fast float 1.500000e+00, %1557
  %1559 = fmul fast float %1554, %1457
  %1560 = fmul fast float %1559, %1558
  %1561 = fsub fast float %1540, %1522
  %1562 = fsub fast float %1550, %1526
  %1563 = fsub fast float %1560, %1530
  %1564 = fmul fast float %1561, %1490
  %1565 = fmul fast float %1562, %1492
  %1566 = fmul fast float %1563, %1497
  %1567 = fadd fast float %1564, %1505
  %1568 = fadd fast float %1565, %1509
  %1569 = fadd fast float %1566, %1513
  %1570 = call float @dx.op.unary.f32(i32 7, float %1567)  ; Saturate(value)
  %1571 = call float @dx.op.unary.f32(i32 7, float %1568)  ; Saturate(value)
  %1572 = call float @dx.op.unary.f32(i32 7, float %1569)  ; Saturate(value)
  %1573 = fmul fast float %1570, %1570
  %1574 = fmul fast float %1571, %1571
  %1575 = fmul fast float %1572, %1572
  %1576 = fsub fast float %1573, %1455
  %1577 = fsub fast float %1574, %1456
  %1578 = fsub fast float %1575, %1457
  %1579 = fmul fast float %1576, %1480
  %1580 = fmul fast float %1577, %1480
  %1581 = fmul fast float %1578, %1480
  %1582 = fadd fast float %1579, %1455
  %1583 = fadd fast float %1580, %1456
  %1584 = fadd fast float %1581, %1457
  %1585 = fadd fast float %1502, %1466
  %1586 = fsub fast float %1585, %1519
  %1587 = call float @dx.op.unary.f32(i32 7, float %1586)  ; Saturate(value)
  %1588 = fsub fast float %1587, %1466
  %1589 = fmul fast float %1588, %1480
  %1590 = fadd fast float %1589, %1466
  br label %1644

; <label>:1591                                    ; preds = %1479
  %1592 = and i32 %1482, 134217728
  %1593 = icmp eq i32 %1592, 0
  br i1 %1593, label %1628, label %1594

; <label>:1594                                    ; preds = %1591
  %1595 = call float @dx.op.unary.f32(i32 24, float %299)  ; Sqrt(value)
  %1596 = call float @dx.op.unary.f32(i32 24, float %303)  ; Sqrt(value)
  %1597 = call float @dx.op.unary.f32(i32 24, float %307)  ; Sqrt(value)
  %1598 = fadd fast float %1595, -5.000000e-01
  %1599 = fadd fast float %1596, -5.000000e-01
  %1600 = fadd fast float %1597, -5.000000e-01
  %1601 = fmul fast float %1598, %1480
  %1602 = fmul fast float %1599, %1480
  %1603 = fmul fast float %1600, %1480
  %1604 = fadd fast float %1601, 5.000000e-01
  %1605 = fadd fast float %1602, 5.000000e-01
  %1606 = fadd fast float %1603, 5.000000e-01
  %1607 = call float @dx.op.unary.f32(i32 24, float %1455)  ; Sqrt(value)
  %1608 = call float @dx.op.unary.f32(i32 24, float %1456)  ; Sqrt(value)
  %1609 = call float @dx.op.unary.f32(i32 24, float %1457)  ; Sqrt(value)
  %1610 = fmul fast float %1604, 2.000000e+00
  %1611 = fsub fast float 1.000000e+00, %1610
  %1612 = fmul fast float %1611, %1607
  %1613 = fadd fast float %1612, %1610
  %1614 = fmul fast float %1613, %1607
  %1615 = fmul fast float %1605, 2.000000e+00
  %1616 = fsub fast float 1.000000e+00, %1615
  %1617 = fmul fast float %1616, %1608
  %1618 = fadd fast float %1617, %1615
  %1619 = fmul fast float %1618, %1608
  %1620 = fmul fast float %1606, 2.000000e+00
  %1621 = fsub fast float 1.000000e+00, %1620
  %1622 = fmul fast float %1621, %1609
  %1623 = fadd fast float %1622, %1620
  %1624 = fmul fast float %1623, %1609
  %1625 = fmul fast float %1614, %1614
  %1626 = fmul fast float %1619, %1619
  %1627 = fmul fast float %1624, %1624
  br label %1644

; <label>:1628                                    ; preds = %1591
  %1629 = fmul fast float %299, %299
  %1630 = fmul fast float %303, %303
  %1631 = fmul fast float %307, %307
  %1632 = fadd fast float %1629, -1.000000e+00
  %1633 = fadd fast float %1630, -1.000000e+00
  %1634 = fadd fast float %1631, -1.000000e+00
  %1635 = fmul fast float %1480, %1632
  %1636 = fmul fast float %1480, %1633
  %1637 = fmul fast float %1480, %1634
  %1638 = fadd fast float %1635, 1.000000e+00
  %1639 = fadd fast float %1636, 1.000000e+00
  %1640 = fadd fast float %1637, 1.000000e+00
  %1641 = fmul fast float %1638, %1455
  %1642 = fmul fast float %1639, %1456
  %1643 = fmul fast float %1640, %1457
  br label %1644

; <label>:1644                                    ; preds = %1628, %1594, %1485, %1441
  %1645 = phi float [ %1590, %1485 ], [ %1466, %1594 ], [ %1466, %1628 ], [ 0x3FA23C0BE0000000, %1441 ]
  %1646 = phi float [ %1582, %1485 ], [ %1625, %1594 ], [ %1641, %1628 ], [ 1.000000e+00, %1441 ]
  %1647 = phi float [ %1583, %1485 ], [ %1626, %1594 ], [ %1642, %1628 ], [ 1.000000e+00, %1441 ]
  %1648 = phi float [ %1584, %1485 ], [ %1627, %1594 ], [ %1643, %1628 ], [ 1.000000e+00, %1441 ]
  %1649 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1650 = extractvalue %dx.types.CBufRet.i32 %1649, 1
  %1651 = and i32 %1650, 1
  %1652 = icmp ne i32 %1651, 0
  %1653 = add i32 %60, 356
  %1654 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1653, i32 undef)  ; BufferLoad(srv,index,wot)
  %1655 = extractvalue %dx.types.ResRet.i32 %1654, 0
  %1656 = and i32 %1655, 32
  %1657 = icmp ne i32 %1656, 0
  %1658 = and i1 %1652, %1657
  %1659 = select i1 %1658, float 1.000000e+00, float %1646
  %1660 = select i1 %1658, float 0x3FD3333340000000, float %1647
  %1661 = select i1 %1658, float 0x3FD3333340000000, float %1648
  %1662 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1144, i32 undef)  ; BufferLoad(srv,index,wot)
  %1663 = extractvalue %dx.types.ResRet.i32 %1662, 0
  %1664 = and i32 %1663, 32
  %1665 = icmp eq i32 %1664, 0
  br i1 %1665, label %1738, label %1666

; <label>:1666                                    ; preds = %1644
  %1667 = add i32 %60, 108
  %1668 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1667, i32 undef)  ; BufferLoad(srv,index,wot)
  %1669 = extractvalue %dx.types.ResRet.i32 %1668, 0
  %1670 = add i32 %60, 380
  %1671 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1670, i32 undef)  ; BufferLoad(srv,index,wot)
  %1672 = extractvalue %dx.types.ResRet.i32 %1671, 0
  %1673 = add i32 %1672, 0
  %1674 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1673, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1675 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1674, %dx.types.Handle %100, float %1251, float %1252, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1676 = extractvalue %dx.types.ResRet.f32 %1675, 0
  %1677 = extractvalue %dx.types.ResRet.f32 %1675, 1
  %1678 = extractvalue %dx.types.ResRet.f32 %1675, 2
  %1679 = extractvalue %dx.types.ResRet.f32 %1675, 3
  %1680 = and i32 %1669, 255
  %1681 = uitofp i32 %1680 to float
  %1682 = lshr i32 %1669, 8
  %1683 = and i32 %1682, 255
  %1684 = uitofp i32 %1683 to float
  %1685 = lshr i32 %1669, 16
  %1686 = and i32 %1685, 255
  %1687 = uitofp i32 %1686 to float
  %1688 = fmul fast float %1687, 0x3F70101000000000
  %1689 = fmul fast float %1676, %1681
  %1690 = fadd fast float %1689, %1684
  %1691 = fmul fast float %1690, 0x3F70101000000000
  %1692 = fadd fast float %1677, -5.000000e-01
  %1693 = fadd fast float %1679, -5.000000e-01
  %1694 = fmul fast float %1692, %1688
  %1695 = fmul fast float %1693, %1688
  %1696 = fadd fast float %1694, 5.000000e-01
  %1697 = fadd fast float %1695, 5.000000e-01
  %1698 = fmul fast float %1696, 2.000000e+00
  %1699 = fadd fast float %1698, -1.000000e+00
  %1700 = fmul fast float %1697, 2.000000e+00
  %1701 = fadd fast float %1700, -1.000000e+00
  %1702 = fadd fast float %1699, %1701
  %1703 = fmul fast float %1702, 5.000000e-01
  %1704 = fsub fast float %1699, %1701
  %1705 = fmul fast float %1704, 5.000000e-01
  %1706 = call float @dx.op.unary.f32(i32 6, float %1703)  ; FAbs(value)
  %1707 = fsub fast float 1.000000e+00, %1706
  %1708 = call float @dx.op.unary.f32(i32 6, float %1705)  ; FAbs(value)
  %1709 = fsub fast float %1707, %1708
  %1710 = call float @dx.op.dot3.f32(i32 55, float %1703, float %1705, float %1709, float %1703, float %1705, float %1709)  ; Dot3(ax,ay,az,bx,by,bz)
  %1711 = call float @dx.op.unary.f32(i32 25, float %1710)  ; Rsqrt(value)
  %1712 = fmul fast float %1703, %1711
  %1713 = fmul fast float %1705, %1711
  %1714 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1144, i32 undef)  ; BufferLoad(srv,index,wot)
  %1715 = extractvalue %dx.types.ResRet.i32 %1714, 0
  %1716 = and i32 %1715, 67108864
  %1717 = icmp eq i32 %1716, 0
  br i1 %1717, label %1734, label %1718

; <label>:1718                                    ; preds = %1666
  %1719 = add i32 %60, 296
  %1720 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1719, i32 undef)  ; BufferLoad(srv,index,wot)
  %1721 = extractvalue %dx.types.ResRet.i32 %1720, 0
  %1722 = and i32 %1721, 65535
  %1723 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1722)  ; LegacyF16ToF32(value)
  %1724 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1161, i32 undef)  ; BufferLoad(srv,index,wot)
  %1725 = extractvalue %dx.types.ResRet.i32 %1724, 0
  %1726 = and i32 %1725, 65535
  %1727 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1726)  ; LegacyF16ToF32(value)
  %1728 = lshr i32 %1721, 16
  %1729 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1728)  ; LegacyF16ToF32(value)
  %1730 = fsub fast float %1691, %1729
  %1731 = fmul fast float %1730, %1723
  %1732 = fadd fast float %1731, %1727
  %1733 = call float @dx.op.unary.f32(i32 7, float %1732)  ; Saturate(value)
  br label %1734

; <label>:1734                                    ; preds = %1718, %1666
  %1735 = phi float [ %1733, %1718 ], [ %1691, %1666 ]
  %1736 = call float @dx.op.dot2.f32(i32 54, float %1712, float %1713, float %1155, float %1156)  ; Dot2(ax,ay,bx,by)
  %1737 = call float @dx.op.dot2.f32(i32 54, float %1712, float %1713, float %1157, float %1158)  ; Dot2(ax,ay,bx,by)
  br label %1738

; <label>:1738                                    ; preds = %1734, %1644
  %1739 = phi float [ %1735, %1734 ], [ 0x3FD6666660000000, %1644 ]
  %1740 = phi float [ %1736, %1734 ], [ 0.000000e+00, %1644 ]
  %1741 = phi float [ %1737, %1734 ], [ 0.000000e+00, %1644 ]
  %1742 = phi float [ %1678, %1734 ], [ 1.000000e+00, %1644 ]
  %1743 = add i32 %60, 176
  %1744 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1743, i32 undef)  ; BufferLoad(srv,index,wot)
  %1745 = extractvalue %dx.types.ResRet.i32 %1744, 0
  %1746 = lshr i32 %1745, 22
  %1747 = shl nuw nsw i32 %1746, 5
  %1748 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1747)  ; LegacyF16ToF32(value)
  %1749 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1144, i32 undef)  ; BufferLoad(srv,index,wot)
  %1750 = extractvalue %dx.types.ResRet.i32 %1749, 0
  %1751 = and i32 %1750, 64
  %1752 = icmp eq i32 %1751, 0
  br i1 %1752, label %1786, label %1753

; <label>:1753                                    ; preds = %1738
  %1754 = add i32 %60, 396
  %1755 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1754, i32 undef)  ; BufferLoad(srv,index,wot)
  %1756 = extractvalue %dx.types.ResRet.i32 %1755, 0
  %1757 = add i32 %1756, 0
  %1758 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1757, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1759 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1144, i32 undef)  ; BufferLoad(srv,index,wot)
  %1760 = extractvalue %dx.types.ResRet.i32 %1759, 0
  %1761 = and i32 %1760, 131072
  %1762 = icmp eq i32 %1761, 0
  %1763 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1758, %dx.types.Handle %100, float %1251, float %1252, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1764 = extractvalue %dx.types.ResRet.f32 %1763, 0
  %1765 = extractvalue %dx.types.ResRet.f32 %1763, 1
  %1766 = extractvalue %dx.types.ResRet.f32 %1763, 2
  %1767 = fmul fast float %1764, %287
  %1768 = fmul fast float %1765, %290
  %1769 = fmul fast float %1766, %293
  br i1 %1762, label %1776, label %1770

; <label>:1770                                    ; preds = %1753
  %1771 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1772 = extractvalue %dx.types.CBufRet.f32 %1771, 0
  %1773 = fmul fast float %1772, %1767
  %1774 = fmul fast float %1772, %1768
  %1775 = fmul fast float %1772, %1769
  br label %1776

; <label>:1776                                    ; preds = %1770, %1753
  %1777 = phi float [ %1773, %1770 ], [ %1767, %1753 ]
  %1778 = phi float [ %1774, %1770 ], [ %1768, %1753 ]
  %1779 = phi float [ %1775, %1770 ], [ %1769, %1753 ]
  %1780 = fmul fast float %1777, %1748
  %1781 = select i1 %228, float %1780, float %1777
  %1782 = call float @dx.op.dot3.f32(i32 55, float %1781, float %1778, float %1779, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1783 = select i1 %228, float 0.000000e+00, float %1777
  %1784 = select i1 %228, float %1782, float %1778
  %1785 = select i1 %228, float 0.000000e+00, float %1779
  br label %1786

; <label>:1786                                    ; preds = %1776, %1738
  %1787 = phi float [ %1783, %1776 ], [ 0.000000e+00, %1738 ]
  %1788 = phi float [ %1784, %1776 ], [ 0.000000e+00, %1738 ]
  %1789 = phi float [ %1785, %1776 ], [ 0.000000e+00, %1738 ]
  %1790 = add i32 %60, 112
  %1791 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1790, i32 undef)  ; BufferLoad(srv,index,wot)
  %1792 = extractvalue %dx.types.ResRet.i32 %1791, 0
  %1793 = and i32 %1792, 255
  %1794 = uitofp i32 %1793 to float
  %1795 = lshr i32 %1792, 8
  %1796 = and i32 %1795, 255
  %1797 = uitofp i32 %1796 to float
  %1798 = call float @dx.op.dot3.f32(i32 55, float %1659, float %1660, float %1661, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1799 = fmul fast float %1797, %1798
  %1800 = fadd fast float %1799, %1794
  %1801 = fmul fast float %1800, 0x3F70101020000000
  %1802 = call float @dx.op.unary.f32(i32 7, float %1801)  ; Saturate(value)
  br i1 %1143, label %1803, label %1811

; <label>:1803                                    ; preds = %1786
  %1804 = fsub fast float 1.000000e+00, %1439
  %1805 = fmul fast float %1804, %1131
  %1806 = fmul fast float %1804, %1132
  %1807 = fmul fast float %1804, %1133
  %1808 = fmul fast float %1804, %1134
  %1809 = fmul fast float %1804, %1135
  %1810 = fmul fast float %1804, %1136
  br label %1811

; <label>:1811                                    ; preds = %1803, %1786
  %1812 = phi float [ %1805, %1803 ], [ %1131, %1786 ]
  %1813 = phi float [ %1806, %1803 ], [ %1132, %1786 ]
  %1814 = phi float [ %1807, %1803 ], [ %1133, %1786 ]
  %1815 = phi float [ %1808, %1803 ], [ %1134, %1786 ]
  %1816 = phi float [ %1809, %1803 ], [ %1135, %1786 ]
  %1817 = phi float [ %1810, %1803 ], [ %1136, %1786 ]
  %1818 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1144, i32 undef)  ; BufferLoad(srv,index,wot)
  %1819 = extractvalue %dx.types.ResRet.i32 %1818, 0
  %1820 = and i32 %1819, 3
  %1821 = icmp eq i32 %1820, 3
  br i1 %1821, label %1900, label %1822

; <label>:1822                                    ; preds = %1811
  %1823 = and i32 %1819, 16
  %1824 = icmp ne i32 %1823, 0
  %1825 = select i1 %1824, float %1439, float 0.000000e+00
  %1826 = icmp eq i32 %1820, 0
  br i1 %1826, label %1827, label %1855

; <label>:1827                                    ; preds = %1822
  %1828 = and i32 %1819, 64
  %1829 = icmp ne i32 %1828, 0
  %1830 = select i1 %1829, float %1439, float 0.000000e+00
  %1831 = fsub fast float %1659, %1812
  %1832 = fsub fast float %1660, %1813
  %1833 = fsub fast float %1661, %1814
  %1834 = fmul fast float %1825, %1831
  %1835 = fmul fast float %1825, %1832
  %1836 = fmul fast float %1825, %1833
  %1837 = fadd fast float %1834, %1812
  %1838 = fadd fast float %1835, %1813
  %1839 = fadd fast float %1836, %1814
  %1840 = fsub fast float %1645, %1137
  %1841 = fmul fast float %1825, %1840
  %1842 = fadd fast float %1841, %1137
  %1843 = fsub fast float %1787, %1815
  %1844 = fsub fast float %1788, %1816
  %1845 = fsub fast float %1789, %1817
  %1846 = fmul fast float %1830, %1843
  %1847 = fmul fast float %1830, %1844
  %1848 = fmul fast float %1830, %1845
  %1849 = fadd fast float %1846, %1815
  %1850 = fadd fast float %1847, %1816
  %1851 = fadd fast float %1848, %1817
  %1852 = fsub fast float %1802, %1141
  %1853 = fmul fast float %1825, %1852
  %1854 = fadd fast float %1853, %1141
  br label %1900

; <label>:1855                                    ; preds = %1822
  %1856 = icmp eq i32 %1820, 1
  br i1 %1856, label %1857, label %1870

; <label>:1857                                    ; preds = %1855
  %1858 = fadd fast float %1659, -1.000000e+00
  %1859 = fadd fast float %1660, -1.000000e+00
  %1860 = fadd fast float %1661, -1.000000e+00
  %1861 = fmul fast float %1825, %1858
  %1862 = fmul fast float %1825, %1859
  %1863 = fmul fast float %1825, %1860
  %1864 = fadd fast float %1861, 1.000000e+00
  %1865 = fadd fast float %1862, 1.000000e+00
  %1866 = fadd fast float %1863, 1.000000e+00
  %1867 = fmul fast float %1864, %1812
  %1868 = fmul fast float %1865, %1813
  %1869 = fmul fast float %1866, %1814
  br label %1900

; <label>:1870                                    ; preds = %1855
  %1871 = icmp eq i32 %1820, 2
  br i1 %1871, label %1872, label %1900

; <label>:1872                                    ; preds = %1870
  %1873 = call float @dx.op.unary.f32(i32 24, float %1659)  ; Sqrt(value)
  %1874 = call float @dx.op.unary.f32(i32 24, float %1660)  ; Sqrt(value)
  %1875 = call float @dx.op.unary.f32(i32 24, float %1661)  ; Sqrt(value)
  %1876 = fadd fast float %1873, -5.000000e-01
  %1877 = fadd fast float %1874, -5.000000e-01
  %1878 = fadd fast float %1875, -5.000000e-01
  %1879 = fmul fast float %1876, %1825
  %1880 = fmul fast float %1877, %1825
  %1881 = fmul fast float %1878, %1825
  %1882 = fadd fast float %1879, 5.000000e-01
  %1883 = fadd fast float %1880, 5.000000e-01
  %1884 = fadd fast float %1881, 5.000000e-01
  %1885 = fmul fast float %1882, 2.000000e+00
  %1886 = fsub fast float 1.000000e+00, %1885
  %1887 = fmul fast float %1886, %1812
  %1888 = fadd fast float %1887, %1885
  %1889 = fmul fast float %1888, %1812
  %1890 = fmul fast float %1883, 2.000000e+00
  %1891 = fsub fast float 1.000000e+00, %1890
  %1892 = fmul fast float %1891, %1813
  %1893 = fadd fast float %1892, %1890
  %1894 = fmul fast float %1893, %1813
  %1895 = fmul fast float %1884, 2.000000e+00
  %1896 = fsub fast float 1.000000e+00, %1895
  %1897 = fmul fast float %1896, %1814
  %1898 = fadd fast float %1897, %1895
  %1899 = fmul fast float %1898, %1814
  br label %1900

; <label>:1900                                    ; preds = %1872, %1870, %1857, %1827, %1811
  %1901 = phi float [ %1812, %1811 ], [ %1889, %1872 ], [ %1812, %1870 ], [ %1867, %1857 ], [ %1837, %1827 ]
  %1902 = phi float [ %1813, %1811 ], [ %1894, %1872 ], [ %1813, %1870 ], [ %1868, %1857 ], [ %1838, %1827 ]
  %1903 = phi float [ %1814, %1811 ], [ %1899, %1872 ], [ %1814, %1870 ], [ %1869, %1857 ], [ %1839, %1827 ]
  %1904 = phi float [ %1815, %1811 ], [ %1815, %1872 ], [ %1815, %1870 ], [ %1815, %1857 ], [ %1849, %1827 ]
  %1905 = phi float [ %1816, %1811 ], [ %1816, %1872 ], [ %1816, %1870 ], [ %1816, %1857 ], [ %1850, %1827 ]
  %1906 = phi float [ %1817, %1811 ], [ %1817, %1872 ], [ %1817, %1870 ], [ %1817, %1857 ], [ %1851, %1827 ]
  %1907 = phi float [ %1137, %1811 ], [ %1137, %1872 ], [ %1137, %1870 ], [ %1137, %1857 ], [ %1842, %1827 ]
  %1908 = phi float [ %1141, %1811 ], [ %1141, %1872 ], [ %1141, %1870 ], [ %1141, %1857 ], [ %1854, %1827 ]
  %1909 = and i32 %1819, 12
  %1910 = icmp eq i32 %1909, 12
  br i1 %1910, label %1983, label %1911

; <label>:1911                                    ; preds = %1900
  %1912 = and i32 %1819, 2097184
  %1913 = icmp eq i32 %1912, 2097184
  %1914 = select i1 %1913, float %1439, float 0.000000e+00
  %1915 = and i32 %1819, 4194336
  %1916 = icmp eq i32 %1915, 4194336
  %1917 = select i1 %1916, float %1439, float 0.000000e+00
  %1918 = and i32 %1819, 8388640
  %1919 = icmp eq i32 %1918, 8388640
  %1920 = select i1 %1919, float %1439, float 0.000000e+00
  %1921 = icmp eq i32 %1909, 0
  br i1 %1921, label %1922, label %1935

; <label>:1922                                    ; preds = %1911
  %1923 = fsub fast float %1740, %1129
  %1924 = fsub fast float %1741, %1130
  %1925 = fmul fast float %1914, %1923
  %1926 = fmul fast float %1914, %1924
  %1927 = fadd fast float %1925, %1129
  %1928 = fadd fast float %1926, %1130
  %1929 = fsub fast float %1742, %1140
  %1930 = fmul fast float %1917, %1929
  %1931 = fadd fast float %1930, %1140
  %1932 = fsub fast float %1739, %1139
  %1933 = fmul fast float %1920, %1932
  %1934 = fadd fast float %1933, %1139
  br label %1983

; <label>:1935                                    ; preds = %1911
  %1936 = icmp eq i32 %1909, 4
  br i1 %1936, label %1937, label %1969

; <label>:1937                                    ; preds = %1935
  %1938 = fmul fast float %1914, %1740
  %1939 = fmul fast float %1914, %1741
  %1940 = fadd fast float %1938, %1129
  %1941 = fadd fast float %1939, %1130
  %1942 = call float @dx.op.binary.f32(i32 36, float %1140, float %1742)  ; FMin(a,b)
  %1943 = fsub fast float %1942, %1140
  %1944 = fmul fast float %1943, %1917
  %1945 = fadd fast float %1944, %1140
  %1946 = fadd fast float %1739, %1139
  %1947 = fmul fast float %1946, 0x3FF337FAE0000000
  %1948 = fmul fast float %1139, %1139
  %1949 = fmul fast float %1739, %1739
  %1950 = fadd fast float %1949, %1948
  %1951 = fmul fast float %1950, 0x3FE5152B00000000
  %1952 = fmul fast float %1139, 0xBFCC1F85E0000000
  %1953 = fmul fast float %1952, %1739
  %1954 = fadd fast float %1953, 0xBFE1363700000000
  %1955 = fadd fast float %1954, %1947
  %1956 = fsub fast float %1955, %1951
  %1957 = fmul fast float %1946, 0x3FBA6F0D00000000
  %1958 = fmul fast float %1950, 0x3FD0432880000000
  %1959 = fmul fast float %1139, 0xBFEF110800000000
  %1960 = fmul fast float %1959, %1739
  %1961 = fadd fast float %1960, 1.000000e+00
  %1962 = fsub fast float %1961, %1957
  %1963 = fadd fast float %1962, %1958
  %1964 = fdiv fast float %1956, %1963
  %1965 = call float @dx.op.unary.f32(i32 7, float %1964)  ; Saturate(value)
  %1966 = fsub fast float %1965, %1139
  %1967 = fmul fast float %1966, %1920
  %1968 = fadd fast float %1967, %1139
  br label %1983

; <label>:1969                                    ; preds = %1935
  %1970 = icmp eq i32 %1909, 8
  br i1 %1970, label %1971, label %1983

; <label>:1971                                    ; preds = %1969
  %1972 = fmul fast float %1914, %1740
  %1973 = fmul fast float %1914, %1741
  %1974 = fadd fast float %1972, %1129
  %1975 = fadd fast float %1973, %1130
  %1976 = call float @dx.op.binary.f32(i32 36, float %1140, float %1742)  ; FMin(a,b)
  %1977 = fsub fast float %1976, %1140
  %1978 = fmul fast float %1977, %1917
  %1979 = fadd fast float %1978, %1140
  %1980 = fsub fast float %1739, %1139
  %1981 = fmul fast float %1920, %1980
  %1982 = fadd fast float %1981, %1139
  br label %1983

; <label>:1983                                    ; preds = %1971, %1969, %1937, %1922, %1900, %1438, %1142, %1128
  %1984 = phi float [ %1129, %1900 ], [ %1129, %1438 ], [ %1129, %1128 ], [ %1974, %1971 ], [ %1129, %1969 ], [ %1940, %1937 ], [ %1927, %1922 ], [ %1129, %1142 ]
  %1985 = phi float [ %1130, %1900 ], [ %1130, %1438 ], [ %1130, %1128 ], [ %1975, %1971 ], [ %1130, %1969 ], [ %1941, %1937 ], [ %1928, %1922 ], [ %1130, %1142 ]
  %1986 = phi float [ %1901, %1900 ], [ %1131, %1438 ], [ %1131, %1128 ], [ %1901, %1971 ], [ %1901, %1969 ], [ %1901, %1937 ], [ %1901, %1922 ], [ %1131, %1142 ]
  %1987 = phi float [ %1902, %1900 ], [ %1132, %1438 ], [ %1132, %1128 ], [ %1902, %1971 ], [ %1902, %1969 ], [ %1902, %1937 ], [ %1902, %1922 ], [ %1132, %1142 ]
  %1988 = phi float [ %1903, %1900 ], [ %1133, %1438 ], [ %1133, %1128 ], [ %1903, %1971 ], [ %1903, %1969 ], [ %1903, %1937 ], [ %1903, %1922 ], [ %1133, %1142 ]
  %1989 = phi float [ %1904, %1900 ], [ %1134, %1438 ], [ %1134, %1128 ], [ %1904, %1971 ], [ %1904, %1969 ], [ %1904, %1937 ], [ %1904, %1922 ], [ %1134, %1142 ]
  %1990 = phi float [ %1905, %1900 ], [ %1135, %1438 ], [ %1135, %1128 ], [ %1905, %1971 ], [ %1905, %1969 ], [ %1905, %1937 ], [ %1905, %1922 ], [ %1135, %1142 ]
  %1991 = phi float [ %1906, %1900 ], [ %1136, %1438 ], [ %1136, %1128 ], [ %1906, %1971 ], [ %1906, %1969 ], [ %1906, %1937 ], [ %1906, %1922 ], [ %1136, %1142 ]
  %1992 = phi float [ %1907, %1900 ], [ %1137, %1438 ], [ %1137, %1128 ], [ %1907, %1971 ], [ %1907, %1969 ], [ %1907, %1937 ], [ %1907, %1922 ], [ %1137, %1142 ]
  %1993 = phi float [ %1139, %1900 ], [ %1139, %1438 ], [ %1139, %1128 ], [ %1982, %1971 ], [ %1139, %1969 ], [ %1968, %1937 ], [ %1934, %1922 ], [ %1139, %1142 ]
  %1994 = phi float [ %1140, %1900 ], [ %1140, %1438 ], [ %1140, %1128 ], [ %1979, %1971 ], [ %1140, %1969 ], [ %1945, %1937 ], [ %1931, %1922 ], [ %1140, %1142 ]
  %1995 = phi float [ %1908, %1900 ], [ %1141, %1438 ], [ %1141, %1128 ], [ %1908, %1971 ], [ %1908, %1969 ], [ %1908, %1937 ], [ %1908, %1922 ], [ %1141, %1142 ]
  br i1 %414, label %2837, label %1996

; <label>:1996                                    ; preds = %1983
  %1997 = icmp ult i32 %470, 3
  %1998 = add i32 %60, 56
  %1999 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1998, i32 undef)  ; BufferLoad(srv,index,wot)
  %2000 = extractvalue %dx.types.ResRet.i32 %1999, 0
  %2001 = add i32 %60, 60
  %2002 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2001, i32 undef)  ; BufferLoad(srv,index,wot)
  %2003 = extractvalue %dx.types.ResRet.i32 %2002, 0
  %2004 = or i32 %2003, %2000
  %2005 = icmp eq i32 %2004, 0
  br i1 %2005, label %2837, label %2006

; <label>:2006                                    ; preds = %1996
  %2007 = and i32 %2000, 262144
  %2008 = icmp ne i32 %2007, 0
  %2009 = select i1 %2008, float %63, float 1.000000e+00
  %2010 = select i1 %2008, float %64, float 0.000000e+00
  %2011 = select i1 %2008, float %65, float 0.000000e+00
  %2012 = select i1 %2008, float %66, float 1.000000e+00
  %2013 = select i1 %2008, float %67, float %83
  %2014 = select i1 %2008, float %68, float %84
  %2015 = add i32 %60, 316
  %2016 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2015, i32 undef)  ; BufferLoad(srv,index,wot)
  %2017 = extractvalue %dx.types.ResRet.i32 %2016, 0
  %2018 = lshr i32 %2017, 16
  %2019 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2018)  ; LegacyF16ToF32(value)
  %2020 = fmul fast float %2019, 0x3F50624DE0000000
  %2021 = add i32 %60, 120
  %2022 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2021, i32 undef)  ; BufferLoad(srv,index,wot)
  %2023 = extractvalue %dx.types.ResRet.i32 %2022, 0
  %2024 = lshr i32 %2023, 16
  %2025 = and i32 %2024, 255
  %2026 = lshr i32 %2023, 24
  %2027 = add i32 %60, 324
  %2028 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2027, i32 undef)  ; BufferLoad(srv,index,wot)
  %2029 = extractvalue %dx.types.ResRet.i32 %2028, 0
  %2030 = and i32 %2029, 65535
  %2031 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2030)  ; LegacyF16ToF32(value)
  %2032 = lshr i32 %2029, 16
  %2033 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2032)  ; LegacyF16ToF32(value)
  %2034 = add i32 %60, 64
  %2035 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2034, i32 undef)  ; BufferLoad(srv,index,wot)
  %2036 = extractvalue %dx.types.ResRet.i32 %2035, 0
  %2037 = lshr i32 %2036, 22
  %2038 = shl nuw nsw i32 %2037, 5
  %2039 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2038)  ; LegacyF16ToF32(value)
  %2040 = shl i32 %2036, 4
  %2041 = and i32 %2040, 32752
  %2042 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2041)  ; LegacyF16ToF32(value)
  %2043 = lshr i32 %2036, 7
  %2044 = and i32 %2043, 32752
  %2045 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2044)  ; LegacyF16ToF32(value)
  %2046 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2047 = extractvalue %dx.types.CBufRet.f32 %2046, 3
  %2048 = fmul fast float %2047, 1.000000e+03
  %2049 = fmul fast float %364, %2048
  %2050 = call float @dx.op.unary.f32(i32 22, float %2049)  ; Frc(value)
  %2051 = fadd fast float %2050, %354
  %2052 = fmul fast float %365, %2048
  %2053 = call float @dx.op.unary.f32(i32 22, float %2052)  ; Frc(value)
  %2054 = fadd fast float %2053, %356
  %2055 = fmul fast float %2020, %2048
  %2056 = call float @dx.op.unary.f32(i32 22, float %2055)  ; Frc(value)
  %2057 = fmul fast float %2056, 0x401921FB60000000
  %2058 = fadd fast float %2057, %2039
  %2059 = call float @dx.op.unary.f32(i32 13, float %2058)  ; Sin(value)
  %2060 = call float @dx.op.unary.f32(i32 12, float %2058)  ; Cos(value)
  %2061 = fsub fast float -0.000000e+00, %2059
  %2062 = fadd fast float %2013, -5.000000e-01
  %2063 = fadd fast float %2014, -5.000000e-01
  %2064 = fmul fast float %2031, %2062
  %2065 = fmul fast float %2033, %2063
  %2066 = fadd fast float %2064, 5.000000e-01
  %2067 = fadd fast float %2065, 5.000000e-01
  %2068 = fmul fast float %2042, %2066
  %2069 = fmul fast float %2045, %2067
  %2070 = fmul fast float %2060, %2068
  %2071 = call float @dx.op.tertiary.f32(i32 46, float %2061, float %2069, float %2070)  ; FMad(a,b,c)
  %2072 = fmul fast float %2059, %2068
  %2073 = call float @dx.op.tertiary.f32(i32 46, float %2060, float %2069, float %2072)  ; FMad(a,b,c)
  %2074 = fadd fast float %2051, %2071
  %2075 = fadd fast float %2054, %2073
  %2076 = icmp ugt i32 %2025, 1
  %2077 = icmp ugt i32 %2023, 33554431
  %2078 = or i1 %2077, %2076
  br i1 %2078, label %2079, label %2104

; <label>:2079                                    ; preds = %2006
  %2080 = add i32 %60, 260
  %2081 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2080, i32 undef)  ; BufferLoad(srv,index,wot)
  %2082 = extractvalue %dx.types.ResRet.i32 %2081, 0
  %2083 = lshr i32 %2082, 16
  %2084 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2083)  ; LegacyF16ToF32(value)
  %2085 = fmul fast float %2047, %2084
  %2086 = call float @dx.op.unary.f32(i32 22, float %2085)  ; Frc(value)
  %2087 = mul nuw nsw i32 %2025, %2026
  %2088 = uitofp i32 %2087 to float
  %2089 = fmul fast float %2086, %2088
  %2090 = call float @dx.op.unary.f32(i32 27, float %2089)  ; Round_ni(value)
  %2091 = fptoui float %2090 to i32
  %2092 = urem i32 %2091, %2025
  %2093 = udiv i32 %2091, %2026
  %2094 = call float @dx.op.unary.f32(i32 22, float %2074)  ; Frc(value)
  %2095 = call float @dx.op.unary.f32(i32 22, float %2075)  ; Frc(value)
  %2096 = uitofp i32 %2092 to float
  %2097 = uitofp i32 %2093 to float
  %2098 = fadd fast float %2094, %2096
  %2099 = fadd fast float %2095, %2097
  %2100 = uitofp i32 %2025 to float
  %2101 = uitofp i32 %2026 to float
  %2102 = fdiv fast float %2098, %2100
  %2103 = fdiv fast float %2099, %2101
  br label %2104

; <label>:2104                                    ; preds = %2079, %2006
  %2105 = phi float [ %2102, %2079 ], [ %2074, %2006 ]
  %2106 = phi float [ %2103, %2079 ], [ %2075, %2006 ]
  %2107 = and i32 %2000, 16777216
  %2108 = icmp eq i32 %2107, 0
  br i1 %2108, label %2218, label %2109

; <label>:2109                                    ; preds = %2104
  %2110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2111 = extractvalue %dx.types.CBufRet.f32 %2110, 0
  %2112 = extractvalue %dx.types.CBufRet.f32 %2110, 1
  %2113 = extractvalue %dx.types.CBufRet.f32 %2110, 2
  %2114 = fadd fast float %2111, %167
  %2115 = fadd fast float %2112, %168
  %2116 = fadd fast float %2113, %169
  %2117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2118 = extractvalue %dx.types.CBufRet.f32 %2117, 0
  %2119 = call float @dx.op.unary.f32(i32 7, float %2118)  ; Saturate(value)
  %2120 = icmp eq i32 %61, 65535
  br i1 %2120, label %2215, label %2121

; <label>:2121                                    ; preds = %2109
  %2122 = lshr i32 %61, 1
  %2123 = shl i32 %2122, 2
  %2124 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2123, i32 undef)  ; BufferLoad(srv,index,wot)
  %2125 = extractvalue %dx.types.ResRet.i32 %2124, 0
  %2126 = and i32 %61, 1
  %2127 = icmp ne i32 %2126, 0
  %2128 = lshr i32 %2125, 16
  %2129 = and i32 %2125, 65535
  %2130 = select i1 %2127, i32 %2128, i32 %2129
  %2131 = icmp eq i32 %2130, 65535
  br i1 %2131, label %2211, label %2132

; <label>:2132                                    ; preds = %2121
  %2133 = mul nuw nsw i32 %2130, 40
  %2134 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %2133, i32 undef)  ; BufferLoad(srv,index,wot)
  %2135 = extractvalue %dx.types.ResRet.f32 %2134, 0
  %2136 = extractvalue %dx.types.ResRet.f32 %2134, 1
  %2137 = extractvalue %dx.types.ResRet.f32 %2134, 2
  %2138 = add nuw nsw i32 %2133, 12
  %2139 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %2138, i32 undef)  ; BufferLoad(srv,index,wot)
  %2140 = extractvalue %dx.types.ResRet.f32 %2139, 0
  %2141 = extractvalue %dx.types.ResRet.f32 %2139, 1
  %2142 = extractvalue %dx.types.ResRet.f32 %2139, 2
  %2143 = add nuw nsw i32 %2133, 24
  %2144 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %2143, i32 undef)  ; BufferLoad(srv,index,wot)
  %2145 = extractvalue %dx.types.ResRet.f32 %2144, 0
  %2146 = extractvalue %dx.types.ResRet.f32 %2144, 1
  %2147 = extractvalue %dx.types.ResRet.f32 %2144, 2
  %2148 = add nuw nsw i32 %2133, 36
  %2149 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %2148, i32 undef)  ; BufferLoad(srv,index,wot)
  %2150 = extractvalue %dx.types.ResRet.f32 %2149, 0
  %2151 = fsub fast float %2114, %2135
  %2152 = fsub fast float %2115, %2136
  %2153 = fsub fast float %2116, %2137
  %2154 = fmul fast float %2150, %2151
  %2155 = fmul fast float %2150, %2152
  %2156 = fmul fast float %2150, %2153
  %2157 = call float @dx.op.unary.f32(i32 27, float %2154)  ; Round_ni(value)
  %2158 = call float @dx.op.unary.f32(i32 27, float %2155)  ; Round_ni(value)
  %2159 = call float @dx.op.unary.f32(i32 27, float %2156)  ; Round_ni(value)
  %2160 = fadd fast float %2157, 5.000000e-01
  %2161 = fadd fast float %2158, 5.000000e-01
  %2162 = fadd fast float %2159, 5.000000e-01
  %2163 = fmul fast float %2160, %2140
  %2164 = fmul fast float %2161, %2141
  %2165 = fmul fast float %2162, %2142
  %2166 = shl i32 %61, 2
  %2167 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2166, i32 undef)  ; BufferLoad(srv,index,wot)
  %2168 = extractvalue %dx.types.ResRet.i32 %2167, 0
  %2169 = add i32 %2168, 0
  %2170 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2169, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2171 = call float @dx.op.unary.f32(i32 22, float %2163)  ; Frc(value)
  %2172 = call float @dx.op.unary.f32(i32 22, float %2164)  ; Frc(value)
  %2173 = call float @dx.op.unary.f32(i32 22, float %2165)  ; Frc(value)
  %2174 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2170, %dx.types.Handle %47, float %2171, float %2172, float %2173, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2175 = extractvalue %dx.types.ResRet.f32 %2174, 0
  %2176 = extractvalue %dx.types.ResRet.f32 %2174, 1
  %2177 = extractvalue %dx.types.ResRet.f32 %2174, 2
  %2178 = fmul fast float %2175, 1.023000e+03
  %2179 = fmul fast float %2176, 1.023000e+03
  %2180 = fmul fast float %2177, 1.023000e+03
  %2181 = fadd fast float %2178, 5.000000e-01
  %2182 = fadd fast float %2179, 5.000000e-01
  %2183 = fadd fast float %2180, 5.000000e-01
  %2184 = call float @dx.op.unary.f32(i32 27, float %2181)  ; Round_ni(value)
  %2185 = call float @dx.op.unary.f32(i32 27, float %2182)  ; Round_ni(value)
  %2186 = call float @dx.op.unary.f32(i32 27, float %2183)  ; Round_ni(value)
  %2187 = fsub fast float %2154, %2157
  %2188 = fsub fast float %2155, %2158
  %2189 = fsub fast float %2156, %2159
  %2190 = fmul fast float %2187, 7.500000e-01
  %2191 = fmul fast float %2188, 7.500000e-01
  %2192 = fmul fast float %2189, 7.500000e-01
  %2193 = fadd fast float %2157, 1.250000e-01
  %2194 = fadd fast float %2193, %2190
  %2195 = fadd fast float %2194, %2184
  %2196 = fadd fast float %2158, 1.250000e-01
  %2197 = fadd fast float %2196, %2191
  %2198 = fadd fast float %2197, %2185
  %2199 = fadd fast float %2159, 1.250000e-01
  %2200 = fadd fast float %2199, %2192
  %2201 = fadd fast float %2200, %2186
  %2202 = fmul fast float %2195, %2145
  %2203 = fmul fast float %2198, %2146
  %2204 = fmul fast float %2201, %2147
  %2205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2166, i32 undef)  ; BufferLoad(srv,index,wot)
  %2206 = extractvalue %dx.types.ResRet.i32 %2205, 0
  %2207 = add i32 %2206, 0
  %2208 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2207, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2209 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2208, %dx.types.Handle %45, float %2202, float %2203, float %2204, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2210 = extractvalue %dx.types.ResRet.f32 %2209, 0
  br label %2211

; <label>:2211                                    ; preds = %2132, %2121
  %2212 = phi float [ %2210, %2132 ], [ -1.000000e+00, %2121 ]
  %2213 = fadd fast float %2212, %2119
  %2214 = call float @dx.op.unary.f32(i32 7, float %2213)  ; Saturate(value)
  br label %2215

; <label>:2215                                    ; preds = %2211, %2109
  %2216 = phi float [ %2214, %2211 ], [ %2119, %2109 ]
  %2217 = fmul fast float %2216, %466
  br label %2218

; <label>:2218                                    ; preds = %2215, %2104
  %2219 = phi float [ %2217, %2215 ], [ %466, %2104 ]
  %2220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1998, i32 undef)  ; BufferLoad(srv,index,wot)
  %2221 = extractvalue %dx.types.ResRet.i32 %2220, 0
  %2222 = and i32 %2221, 256
  %2223 = icmp eq i32 %2222, 0
  br i1 %2223, label %2270, label %2224

; <label>:2224                                    ; preds = %2218
  %2225 = add i32 %60, 432
  %2226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2225, i32 undef)  ; BufferLoad(srv,index,wot)
  %2227 = extractvalue %dx.types.ResRet.i32 %2226, 0
  %2228 = add i32 %2227, 0
  %2229 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2228, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2230 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2229, %dx.types.Handle %101, float %2105, float %2106, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2231 = extractvalue %dx.types.ResRet.f32 %2230, 0
  %2232 = add i32 %60, 132
  %2233 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2232, i32 undef)  ; BufferLoad(srv,index,wot)
  %2234 = extractvalue %dx.types.ResRet.i32 %2233, 0
  %2235 = shl i32 %2234, 4
  %2236 = and i32 %2235, 32752
  %2237 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2236)  ; LegacyF16ToF32(value)
  %2238 = lshr i32 %2234, 7
  %2239 = and i32 %2238, 32752
  %2240 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2239)  ; LegacyF16ToF32(value)
  %2241 = fsub fast float 1.000000e+00, %2219
  %2242 = call float @dx.op.binary.f32(i32 35, float %2241, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2243 = bitcast float %2219 to i32
  %2244 = sitofp i32 %2243 to float
  %2245 = fadd fast float %2244, 0xC1CFBF8940000000
  %2246 = fmul fast float %2240, %2245
  %2247 = fadd fast float %2246, 0x41CFBF8940000000
  %2248 = fptosi float %2247 to i32
  %2249 = bitcast i32 %2248 to float
  %2250 = bitcast float %2242 to i32
  %2251 = sitofp i32 %2250 to float
  %2252 = fadd fast float %2251, 0xC1CFBF8940000000
  %2253 = fmul fast float %2252, %2240
  %2254 = fadd fast float %2253, 0x41CFBF8940000000
  %2255 = fptosi float %2254 to i32
  %2256 = bitcast i32 %2255 to float
  %2257 = fmul fast float %2249, %2237
  %2258 = fmul fast float %2256, %2237
  %2259 = fsub fast float %2242, %2257
  %2260 = fadd fast float %2258, %2242
  %2261 = call float @dx.op.unary.f32(i32 7, float %2259)  ; Saturate(value)
  %2262 = call float @dx.op.unary.f32(i32 7, float %2260)  ; Saturate(value)
  %2263 = fsub fast float %2231, %2261
  %2264 = fsub fast float %2262, %2261
  %2265 = bitcast float %2264 to i32
  %2266 = sub nsw i32 2129859010, %2265
  %2267 = bitcast i32 %2266 to float
  %2268 = fmul fast float %2267, %2263
  %2269 = call float @dx.op.unary.f32(i32 7, float %2268)  ; Saturate(value)
  br label %2270

; <label>:2270                                    ; preds = %2224, %2218
  %2271 = phi float [ %2269, %2224 ], [ %2219, %2218 ]
  %2272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1998, i32 undef)  ; BufferLoad(srv,index,wot)
  %2273 = extractvalue %dx.types.ResRet.i32 %2272, 0
  %2274 = and i32 %2273, 128
  %2275 = icmp eq i32 %2274, 0
  br i1 %2275, label %2292, label %2276

; <label>:2276                                    ; preds = %2270
  %2277 = add i32 %60, 416
  %2278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2277, i32 undef)  ; BufferLoad(srv,index,wot)
  %2279 = extractvalue %dx.types.ResRet.i32 %2278, 0
  %2280 = add i32 %2279, 0
  %2281 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2280, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2282 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2281, %dx.types.Handle %101, float %2105, float %2106, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2283 = extractvalue %dx.types.ResRet.f32 %2282, 0
  %2284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1998, i32 undef)  ; BufferLoad(srv,index,wot)
  %2285 = extractvalue %dx.types.ResRet.i32 %2284, 0
  %2286 = and i32 %2285, 524288
  %2287 = icmp ne i32 %2286, 0
  %2288 = fcmp fast ogt float %2283, 0x3FE0101020000000
  %2289 = select i1 %2288, float 1.000000e+00, float 0.000000e+00
  %2290 = select i1 %2287, float %2289, float %2283
  %2291 = fmul fast float %2290, %2271
  br label %2292

; <label>:2292                                    ; preds = %2276, %2270
  %2293 = phi float [ %2291, %2276 ], [ %2271, %2270 ]
  %2294 = fcmp fast ult float %2293, 0x3F70101020000000
  br i1 %2294, label %2837, label %2295

; <label>:2295                                    ; preds = %2292
  %2296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1998, i32 undef)  ; BufferLoad(srv,index,wot)
  %2297 = extractvalue %dx.types.ResRet.i32 %2296, 0
  %2298 = and i32 %2297, 16
  %2299 = icmp eq i32 %2298, 0
  br i1 %2299, label %2498, label %2300

; <label>:2300                                    ; preds = %2295
  %2301 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2021, i32 undef)  ; BufferLoad(srv,index,wot)
  %2302 = extractvalue %dx.types.ResRet.i32 %2301, 0
  %2303 = add i32 %60, 368
  %2304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2303, i32 undef)  ; BufferLoad(srv,index,wot)
  %2305 = extractvalue %dx.types.ResRet.i32 %2304, 0
  %2306 = add i32 %2305, 0
  %2307 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2306, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2308 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2307, %dx.types.Handle %100, float %2105, float %2106, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2309 = extractvalue %dx.types.ResRet.f32 %2308, 0
  %2310 = extractvalue %dx.types.ResRet.f32 %2308, 1
  %2311 = extractvalue %dx.types.ResRet.f32 %2308, 2
  %2312 = extractvalue %dx.types.ResRet.f32 %2308, 3
  %2313 = and i32 %2302, 255
  %2314 = uitofp i32 %2313 to float
  %2315 = lshr i32 %2302, 8
  %2316 = and i32 %2315, 255
  %2317 = uitofp i32 %2316 to float
  %2318 = fmul fast float %2312, %2314
  %2319 = fadd fast float %2318, %2317
  %2320 = fmul fast float %2319, 0x3F70101000000000
  %2321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1998, i32 undef)  ; BufferLoad(srv,index,wot)
  %2322 = extractvalue %dx.types.ResRet.i32 %2321, 0
  %2323 = and i32 %2322, 512
  %2324 = icmp eq i32 %2323, 0
  br i1 %2324, label %2333, label %2325

; <label>:2325                                    ; preds = %2300
  %2326 = add i32 %60, 448
  %2327 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2326, i32 undef)  ; BufferLoad(srv,index,wot)
  %2328 = extractvalue %dx.types.ResRet.i32 %2327, 0
  %2329 = add i32 %2328, 0
  %2330 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2329, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2331 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2330, %dx.types.Handle %101, float %2105, float %2106, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2332 = extractvalue %dx.types.ResRet.f32 %2331, 0
  br label %2333

; <label>:2333                                    ; preds = %2325, %2300
  %2334 = phi float [ %2332, %2325 ], [ 1.000000e+00, %2300 ]
  %2335 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1998, i32 undef)  ; BufferLoad(srv,index,wot)
  %2336 = extractvalue %dx.types.ResRet.i32 %2335, 0
  %2337 = and i32 %2336, 33554432
  %2338 = icmp eq i32 %2337, 0
  br i1 %2338, label %2445, label %2339

; <label>:2339                                    ; preds = %2333
  %2340 = add i32 %60, 256
  %2341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2340, i32 undef)  ; BufferLoad(srv,index,wot)
  %2342 = extractvalue %dx.types.ResRet.i32 %2341, 0
  %2343 = and i32 %2342, 65535
  %2344 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2343)  ; LegacyF16ToF32(value)
  %2345 = lshr i32 %2342, 16
  %2346 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2345)  ; LegacyF16ToF32(value)
  %2347 = add i32 %60, 260
  %2348 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2347, i32 undef)  ; BufferLoad(srv,index,wot)
  %2349 = extractvalue %dx.types.ResRet.i32 %2348, 0
  %2350 = and i32 %2349, 65535
  %2351 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2350)  ; LegacyF16ToF32(value)
  %2352 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %336, i32 undef)  ; BufferLoad(srv,index,wot)
  %2353 = extractvalue %dx.types.ResRet.i32 %2352, 0
  %2354 = lshr i32 %2353, 24
  %2355 = uitofp i32 %2354 to float
  %2356 = fmul fast float %2355, 0x3F70101020000000
  %2357 = and i32 %2353, 255
  %2358 = uitofp i32 %2357 to float
  %2359 = fmul fast float %2358, 0x3F70101020000000
  %2360 = lshr i32 %2353, 8
  %2361 = and i32 %2360, 255
  %2362 = uitofp i32 %2361 to float
  %2363 = fmul fast float %2362, 0x3F70101020000000
  %2364 = lshr i32 %2353, 16
  %2365 = and i32 %2364, 255
  %2366 = uitofp i32 %2365 to float
  %2367 = fmul fast float %2366, 0x3F70101020000000
  %2368 = add i32 %60, 252
  %2369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2368, i32 undef)  ; BufferLoad(srv,index,wot)
  %2370 = extractvalue %dx.types.ResRet.i32 %2369, 0
  %2371 = lshr i32 %2370, 24
  %2372 = uitofp i32 %2371 to float
  %2373 = fmul fast float %2372, 0x3F70101020000000
  %2374 = and i32 %2370, 255
  %2375 = uitofp i32 %2374 to float
  %2376 = fmul fast float %2375, 0x3F70101020000000
  %2377 = lshr i32 %2370, 8
  %2378 = and i32 %2377, 255
  %2379 = uitofp i32 %2378 to float
  %2380 = fmul fast float %2379, 0x3F70101020000000
  %2381 = lshr i32 %2370, 16
  %2382 = and i32 %2381, 255
  %2383 = uitofp i32 %2382 to float
  %2384 = fmul fast float %2383, 0x3F70101020000000
  %2385 = bitcast float %2309 to i32
  %2386 = ashr i32 %2385, 1
  %2387 = sub nsw i32 1597463174, %2386
  %2388 = bitcast i32 %2387 to float
  %2389 = fmul fast float %2309, 5.000000e-01
  %2390 = fmul fast float %2388, %2388
  %2391 = fmul fast float %2390, %2389
  %2392 = fsub fast float 1.500000e+00, %2391
  %2393 = fmul fast float %2388, %2309
  %2394 = fmul fast float %2393, %2392
  %2395 = bitcast float %2310 to i32
  %2396 = ashr i32 %2395, 1
  %2397 = sub nsw i32 1597463174, %2396
  %2398 = bitcast i32 %2397 to float
  %2399 = fmul fast float %2310, 5.000000e-01
  %2400 = fmul fast float %2398, %2398
  %2401 = fmul fast float %2400, %2399
  %2402 = fsub fast float 1.500000e+00, %2401
  %2403 = fmul fast float %2398, %2310
  %2404 = fmul fast float %2403, %2402
  %2405 = bitcast float %2311 to i32
  %2406 = ashr i32 %2405, 1
  %2407 = sub nsw i32 1597463174, %2406
  %2408 = bitcast i32 %2407 to float
  %2409 = fmul fast float %2311, 5.000000e-01
  %2410 = fmul fast float %2408, %2408
  %2411 = fmul fast float %2410, %2409
  %2412 = fsub fast float 1.500000e+00, %2411
  %2413 = fmul fast float %2408, %2311
  %2414 = fmul fast float %2413, %2412
  %2415 = fsub fast float %2394, %2376
  %2416 = fsub fast float %2404, %2380
  %2417 = fsub fast float %2414, %2384
  %2418 = fmul fast float %2415, %2344
  %2419 = fmul fast float %2416, %2346
  %2420 = fmul fast float %2417, %2351
  %2421 = fadd fast float %2418, %2359
  %2422 = fadd fast float %2419, %2363
  %2423 = fadd fast float %2420, %2367
  %2424 = call float @dx.op.unary.f32(i32 7, float %2421)  ; Saturate(value)
  %2425 = call float @dx.op.unary.f32(i32 7, float %2422)  ; Saturate(value)
  %2426 = call float @dx.op.unary.f32(i32 7, float %2423)  ; Saturate(value)
  %2427 = fmul fast float %2424, %2424
  %2428 = fmul fast float %2425, %2425
  %2429 = fmul fast float %2426, %2426
  %2430 = fsub fast float %2427, %2309
  %2431 = fsub fast float %2428, %2310
  %2432 = fsub fast float %2429, %2311
  %2433 = fmul fast float %2430, %2334
  %2434 = fmul fast float %2431, %2334
  %2435 = fmul fast float %2432, %2334
  %2436 = fadd fast float %2433, %2309
  %2437 = fadd fast float %2434, %2310
  %2438 = fadd fast float %2435, %2311
  %2439 = fadd fast float %2356, %2320
  %2440 = fsub fast float %2439, %2373
  %2441 = call float @dx.op.unary.f32(i32 7, float %2440)  ; Saturate(value)
  %2442 = fsub fast float %2441, %2320
  %2443 = fmul fast float %2442, %2334
  %2444 = fadd fast float %2443, %2320
  br label %2498

; <label>:2445                                    ; preds = %2333
  %2446 = and i32 %2336, 134217728
  %2447 = icmp eq i32 %2446, 0
  br i1 %2447, label %2482, label %2448

; <label>:2448                                    ; preds = %2445
  %2449 = call float @dx.op.unary.f32(i32 24, float %341)  ; Sqrt(value)
  %2450 = call float @dx.op.unary.f32(i32 24, float %345)  ; Sqrt(value)
  %2451 = call float @dx.op.unary.f32(i32 24, float %349)  ; Sqrt(value)
  %2452 = fadd fast float %2449, -5.000000e-01
  %2453 = fadd fast float %2450, -5.000000e-01
  %2454 = fadd fast float %2451, -5.000000e-01
  %2455 = fmul fast float %2452, %2334
  %2456 = fmul fast float %2453, %2334
  %2457 = fmul fast float %2454, %2334
  %2458 = fadd fast float %2455, 5.000000e-01
  %2459 = fadd fast float %2456, 5.000000e-01
  %2460 = fadd fast float %2457, 5.000000e-01
  %2461 = call float @dx.op.unary.f32(i32 24, float %2309)  ; Sqrt(value)
  %2462 = call float @dx.op.unary.f32(i32 24, float %2310)  ; Sqrt(value)
  %2463 = call float @dx.op.unary.f32(i32 24, float %2311)  ; Sqrt(value)
  %2464 = fmul fast float %2458, 2.000000e+00
  %2465 = fsub fast float 1.000000e+00, %2464
  %2466 = fmul fast float %2465, %2461
  %2467 = fadd fast float %2466, %2464
  %2468 = fmul fast float %2467, %2461
  %2469 = fmul fast float %2459, 2.000000e+00
  %2470 = fsub fast float 1.000000e+00, %2469
  %2471 = fmul fast float %2470, %2462
  %2472 = fadd fast float %2471, %2469
  %2473 = fmul fast float %2472, %2462
  %2474 = fmul fast float %2460, 2.000000e+00
  %2475 = fsub fast float 1.000000e+00, %2474
  %2476 = fmul fast float %2475, %2463
  %2477 = fadd fast float %2476, %2474
  %2478 = fmul fast float %2477, %2463
  %2479 = fmul fast float %2468, %2468
  %2480 = fmul fast float %2473, %2473
  %2481 = fmul fast float %2478, %2478
  br label %2498

; <label>:2482                                    ; preds = %2445
  %2483 = fmul fast float %341, %341
  %2484 = fmul fast float %345, %345
  %2485 = fmul fast float %349, %349
  %2486 = fadd fast float %2483, -1.000000e+00
  %2487 = fadd fast float %2484, -1.000000e+00
  %2488 = fadd fast float %2485, -1.000000e+00
  %2489 = fmul fast float %2334, %2486
  %2490 = fmul fast float %2334, %2487
  %2491 = fmul fast float %2334, %2488
  %2492 = fadd fast float %2489, 1.000000e+00
  %2493 = fadd fast float %2490, 1.000000e+00
  %2494 = fadd fast float %2491, 1.000000e+00
  %2495 = fmul fast float %2492, %2309
  %2496 = fmul fast float %2493, %2310
  %2497 = fmul fast float %2494, %2311
  br label %2498

; <label>:2498                                    ; preds = %2482, %2448, %2339, %2295
  %2499 = phi float [ %2444, %2339 ], [ %2320, %2448 ], [ %2320, %2482 ], [ 0x3FA23C0BE0000000, %2295 ]
  %2500 = phi float [ %2436, %2339 ], [ %2479, %2448 ], [ %2495, %2482 ], [ 1.000000e+00, %2295 ]
  %2501 = phi float [ %2437, %2339 ], [ %2480, %2448 ], [ %2496, %2482 ], [ 1.000000e+00, %2295 ]
  %2502 = phi float [ %2438, %2339 ], [ %2481, %2448 ], [ %2497, %2482 ], [ 1.000000e+00, %2295 ]
  %2503 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2504 = extractvalue %dx.types.CBufRet.i32 %2503, 1
  %2505 = and i32 %2504, 1
  %2506 = icmp ne i32 %2505, 0
  %2507 = add i32 %60, 356
  %2508 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2507, i32 undef)  ; BufferLoad(srv,index,wot)
  %2509 = extractvalue %dx.types.ResRet.i32 %2508, 0
  %2510 = and i32 %2509, 32
  %2511 = icmp ne i32 %2510, 0
  %2512 = and i1 %2506, %2511
  %2513 = select i1 %2512, float 1.000000e+00, float %2500
  %2514 = select i1 %2512, float 0x3FD3333340000000, float %2501
  %2515 = select i1 %2512, float 0x3FD3333340000000, float %2502
  %2516 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1998, i32 undef)  ; BufferLoad(srv,index,wot)
  %2517 = extractvalue %dx.types.ResRet.i32 %2516, 0
  %2518 = and i32 %2517, 32
  %2519 = icmp eq i32 %2518, 0
  br i1 %2519, label %2592, label %2520

; <label>:2520                                    ; preds = %2498
  %2521 = add i32 %60, 124
  %2522 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2521, i32 undef)  ; BufferLoad(srv,index,wot)
  %2523 = extractvalue %dx.types.ResRet.i32 %2522, 0
  %2524 = add i32 %60, 384
  %2525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2524, i32 undef)  ; BufferLoad(srv,index,wot)
  %2526 = extractvalue %dx.types.ResRet.i32 %2525, 0
  %2527 = add i32 %2526, 0
  %2528 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2527, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2529 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2528, %dx.types.Handle %100, float %2105, float %2106, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2530 = extractvalue %dx.types.ResRet.f32 %2529, 0
  %2531 = extractvalue %dx.types.ResRet.f32 %2529, 1
  %2532 = extractvalue %dx.types.ResRet.f32 %2529, 2
  %2533 = extractvalue %dx.types.ResRet.f32 %2529, 3
  %2534 = and i32 %2523, 255
  %2535 = uitofp i32 %2534 to float
  %2536 = lshr i32 %2523, 8
  %2537 = and i32 %2536, 255
  %2538 = uitofp i32 %2537 to float
  %2539 = lshr i32 %2523, 16
  %2540 = and i32 %2539, 255
  %2541 = uitofp i32 %2540 to float
  %2542 = fmul fast float %2541, 0x3F70101000000000
  %2543 = fmul fast float %2530, %2535
  %2544 = fadd fast float %2543, %2538
  %2545 = fmul fast float %2544, 0x3F70101000000000
  %2546 = fadd fast float %2531, -5.000000e-01
  %2547 = fadd fast float %2533, -5.000000e-01
  %2548 = fmul fast float %2546, %2542
  %2549 = fmul fast float %2547, %2542
  %2550 = fadd fast float %2548, 5.000000e-01
  %2551 = fadd fast float %2549, 5.000000e-01
  %2552 = fmul fast float %2550, 2.000000e+00
  %2553 = fadd fast float %2552, -1.000000e+00
  %2554 = fmul fast float %2551, 2.000000e+00
  %2555 = fadd fast float %2554, -1.000000e+00
  %2556 = fadd fast float %2553, %2555
  %2557 = fmul fast float %2556, 5.000000e-01
  %2558 = fsub fast float %2553, %2555
  %2559 = fmul fast float %2558, 5.000000e-01
  %2560 = call float @dx.op.unary.f32(i32 6, float %2557)  ; FAbs(value)
  %2561 = fsub fast float 1.000000e+00, %2560
  %2562 = call float @dx.op.unary.f32(i32 6, float %2559)  ; FAbs(value)
  %2563 = fsub fast float %2561, %2562
  %2564 = call float @dx.op.dot3.f32(i32 55, float %2557, float %2559, float %2563, float %2557, float %2559, float %2563)  ; Dot3(ax,ay,az,bx,by,bz)
  %2565 = call float @dx.op.unary.f32(i32 25, float %2564)  ; Rsqrt(value)
  %2566 = fmul fast float %2557, %2565
  %2567 = fmul fast float %2559, %2565
  %2568 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1998, i32 undef)  ; BufferLoad(srv,index,wot)
  %2569 = extractvalue %dx.types.ResRet.i32 %2568, 0
  %2570 = and i32 %2569, 67108864
  %2571 = icmp eq i32 %2570, 0
  br i1 %2571, label %2588, label %2572

; <label>:2572                                    ; preds = %2520
  %2573 = add i32 %60, 312
  %2574 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2573, i32 undef)  ; BufferLoad(srv,index,wot)
  %2575 = extractvalue %dx.types.ResRet.i32 %2574, 0
  %2576 = and i32 %2575, 65535
  %2577 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2576)  ; LegacyF16ToF32(value)
  %2578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2015, i32 undef)  ; BufferLoad(srv,index,wot)
  %2579 = extractvalue %dx.types.ResRet.i32 %2578, 0
  %2580 = and i32 %2579, 65535
  %2581 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2580)  ; LegacyF16ToF32(value)
  %2582 = lshr i32 %2575, 16
  %2583 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2582)  ; LegacyF16ToF32(value)
  %2584 = fsub fast float %2545, %2583
  %2585 = fmul fast float %2584, %2577
  %2586 = fadd fast float %2585, %2581
  %2587 = call float @dx.op.unary.f32(i32 7, float %2586)  ; Saturate(value)
  br label %2588

; <label>:2588                                    ; preds = %2572, %2520
  %2589 = phi float [ %2587, %2572 ], [ %2545, %2520 ]
  %2590 = call float @dx.op.dot2.f32(i32 54, float %2566, float %2567, float %2009, float %2010)  ; Dot2(ax,ay,bx,by)
  %2591 = call float @dx.op.dot2.f32(i32 54, float %2566, float %2567, float %2011, float %2012)  ; Dot2(ax,ay,bx,by)
  br label %2592

; <label>:2592                                    ; preds = %2588, %2498
  %2593 = phi float [ %2589, %2588 ], [ 0x3FD6666660000000, %2498 ]
  %2594 = phi float [ %2590, %2588 ], [ 0.000000e+00, %2498 ]
  %2595 = phi float [ %2591, %2588 ], [ 0.000000e+00, %2498 ]
  %2596 = phi float [ %2532, %2588 ], [ 1.000000e+00, %2498 ]
  %2597 = add i32 %60, 192
  %2598 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2597, i32 undef)  ; BufferLoad(srv,index,wot)
  %2599 = extractvalue %dx.types.ResRet.i32 %2598, 0
  %2600 = lshr i32 %2599, 22
  %2601 = shl nuw nsw i32 %2600, 5
  %2602 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2601)  ; LegacyF16ToF32(value)
  %2603 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1998, i32 undef)  ; BufferLoad(srv,index,wot)
  %2604 = extractvalue %dx.types.ResRet.i32 %2603, 0
  %2605 = and i32 %2604, 64
  %2606 = icmp eq i32 %2605, 0
  br i1 %2606, label %2640, label %2607

; <label>:2607                                    ; preds = %2592
  %2608 = add i32 %60, 400
  %2609 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2608, i32 undef)  ; BufferLoad(srv,index,wot)
  %2610 = extractvalue %dx.types.ResRet.i32 %2609, 0
  %2611 = add i32 %2610, 0
  %2612 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2611, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2613 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1998, i32 undef)  ; BufferLoad(srv,index,wot)
  %2614 = extractvalue %dx.types.ResRet.i32 %2613, 0
  %2615 = and i32 %2614, 131072
  %2616 = icmp eq i32 %2615, 0
  %2617 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2612, %dx.types.Handle %100, float %2105, float %2106, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2618 = extractvalue %dx.types.ResRet.f32 %2617, 0
  %2619 = extractvalue %dx.types.ResRet.f32 %2617, 1
  %2620 = extractvalue %dx.types.ResRet.f32 %2617, 2
  %2621 = fmul fast float %2618, %329
  %2622 = fmul fast float %2619, %332
  %2623 = fmul fast float %2620, %335
  br i1 %2616, label %2630, label %2624

; <label>:2624                                    ; preds = %2607
  %2625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2626 = extractvalue %dx.types.CBufRet.f32 %2625, 0
  %2627 = fmul fast float %2626, %2621
  %2628 = fmul fast float %2626, %2622
  %2629 = fmul fast float %2626, %2623
  br label %2630

; <label>:2630                                    ; preds = %2624, %2607
  %2631 = phi float [ %2627, %2624 ], [ %2621, %2607 ]
  %2632 = phi float [ %2628, %2624 ], [ %2622, %2607 ]
  %2633 = phi float [ %2629, %2624 ], [ %2623, %2607 ]
  %2634 = fmul fast float %2631, %2602
  %2635 = select i1 %228, float %2634, float %2631
  %2636 = call float @dx.op.dot3.f32(i32 55, float %2635, float %2632, float %2633, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2637 = select i1 %228, float 0.000000e+00, float %2631
  %2638 = select i1 %228, float %2636, float %2632
  %2639 = select i1 %228, float 0.000000e+00, float %2633
  br label %2640

; <label>:2640                                    ; preds = %2630, %2592
  %2641 = phi float [ %2637, %2630 ], [ 0.000000e+00, %2592 ]
  %2642 = phi float [ %2638, %2630 ], [ 0.000000e+00, %2592 ]
  %2643 = phi float [ %2639, %2630 ], [ 0.000000e+00, %2592 ]
  %2644 = add i32 %60, 128
  %2645 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2644, i32 undef)  ; BufferLoad(srv,index,wot)
  %2646 = extractvalue %dx.types.ResRet.i32 %2645, 0
  %2647 = and i32 %2646, 255
  %2648 = uitofp i32 %2647 to float
  %2649 = lshr i32 %2646, 8
  %2650 = and i32 %2649, 255
  %2651 = uitofp i32 %2650 to float
  %2652 = call float @dx.op.dot3.f32(i32 55, float %2513, float %2514, float %2515, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2653 = fmul fast float %2651, %2652
  %2654 = fadd fast float %2653, %2648
  %2655 = fmul fast float %2654, 0x3F70101020000000
  %2656 = call float @dx.op.unary.f32(i32 7, float %2655)  ; Saturate(value)
  br i1 %1997, label %2657, label %2665

; <label>:2657                                    ; preds = %2640
  %2658 = fsub fast float 1.000000e+00, %2293
  %2659 = fmul fast float %2658, %1986
  %2660 = fmul fast float %2658, %1987
  %2661 = fmul fast float %2658, %1988
  %2662 = fmul fast float %2658, %1989
  %2663 = fmul fast float %2658, %1990
  %2664 = fmul fast float %2658, %1991
  br label %2665

; <label>:2665                                    ; preds = %2657, %2640
  %2666 = phi float [ %2659, %2657 ], [ %1986, %2640 ]
  %2667 = phi float [ %2660, %2657 ], [ %1987, %2640 ]
  %2668 = phi float [ %2661, %2657 ], [ %1988, %2640 ]
  %2669 = phi float [ %2662, %2657 ], [ %1989, %2640 ]
  %2670 = phi float [ %2663, %2657 ], [ %1990, %2640 ]
  %2671 = phi float [ %2664, %2657 ], [ %1991, %2640 ]
  %2672 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1998, i32 undef)  ; BufferLoad(srv,index,wot)
  %2673 = extractvalue %dx.types.ResRet.i32 %2672, 0
  %2674 = and i32 %2673, 3
  %2675 = icmp eq i32 %2674, 3
  br i1 %2675, label %2754, label %2676

; <label>:2676                                    ; preds = %2665
  %2677 = and i32 %2673, 16
  %2678 = icmp ne i32 %2677, 0
  %2679 = select i1 %2678, float %2293, float 0.000000e+00
  %2680 = icmp eq i32 %2674, 0
  br i1 %2680, label %2681, label %2709

; <label>:2681                                    ; preds = %2676
  %2682 = and i32 %2673, 64
  %2683 = icmp ne i32 %2682, 0
  %2684 = select i1 %2683, float %2293, float 0.000000e+00
  %2685 = fsub fast float %2513, %2666
  %2686 = fsub fast float %2514, %2667
  %2687 = fsub fast float %2515, %2668
  %2688 = fmul fast float %2679, %2685
  %2689 = fmul fast float %2679, %2686
  %2690 = fmul fast float %2679, %2687
  %2691 = fadd fast float %2688, %2666
  %2692 = fadd fast float %2689, %2667
  %2693 = fadd fast float %2690, %2668
  %2694 = fsub fast float %2499, %1992
  %2695 = fmul fast float %2679, %2694
  %2696 = fadd fast float %2695, %1992
  %2697 = fsub fast float %2641, %2669
  %2698 = fsub fast float %2642, %2670
  %2699 = fsub fast float %2643, %2671
  %2700 = fmul fast float %2684, %2697
  %2701 = fmul fast float %2684, %2698
  %2702 = fmul fast float %2684, %2699
  %2703 = fadd fast float %2700, %2669
  %2704 = fadd fast float %2701, %2670
  %2705 = fadd fast float %2702, %2671
  %2706 = fsub fast float %2656, %1995
  %2707 = fmul fast float %2679, %2706
  %2708 = fadd fast float %2707, %1995
  br label %2754

; <label>:2709                                    ; preds = %2676
  %2710 = icmp eq i32 %2674, 1
  br i1 %2710, label %2711, label %2724

; <label>:2711                                    ; preds = %2709
  %2712 = fadd fast float %2513, -1.000000e+00
  %2713 = fadd fast float %2514, -1.000000e+00
  %2714 = fadd fast float %2515, -1.000000e+00
  %2715 = fmul fast float %2679, %2712
  %2716 = fmul fast float %2679, %2713
  %2717 = fmul fast float %2679, %2714
  %2718 = fadd fast float %2715, 1.000000e+00
  %2719 = fadd fast float %2716, 1.000000e+00
  %2720 = fadd fast float %2717, 1.000000e+00
  %2721 = fmul fast float %2718, %2666
  %2722 = fmul fast float %2719, %2667
  %2723 = fmul fast float %2720, %2668
  br label %2754

; <label>:2724                                    ; preds = %2709
  %2725 = icmp eq i32 %2674, 2
  br i1 %2725, label %2726, label %2754

; <label>:2726                                    ; preds = %2724
  %2727 = call float @dx.op.unary.f32(i32 24, float %2513)  ; Sqrt(value)
  %2728 = call float @dx.op.unary.f32(i32 24, float %2514)  ; Sqrt(value)
  %2729 = call float @dx.op.unary.f32(i32 24, float %2515)  ; Sqrt(value)
  %2730 = fadd fast float %2727, -5.000000e-01
  %2731 = fadd fast float %2728, -5.000000e-01
  %2732 = fadd fast float %2729, -5.000000e-01
  %2733 = fmul fast float %2730, %2679
  %2734 = fmul fast float %2731, %2679
  %2735 = fmul fast float %2732, %2679
  %2736 = fadd fast float %2733, 5.000000e-01
  %2737 = fadd fast float %2734, 5.000000e-01
  %2738 = fadd fast float %2735, 5.000000e-01
  %2739 = fmul fast float %2736, 2.000000e+00
  %2740 = fsub fast float 1.000000e+00, %2739
  %2741 = fmul fast float %2740, %2666
  %2742 = fadd fast float %2741, %2739
  %2743 = fmul fast float %2742, %2666
  %2744 = fmul fast float %2737, 2.000000e+00
  %2745 = fsub fast float 1.000000e+00, %2744
  %2746 = fmul fast float %2745, %2667
  %2747 = fadd fast float %2746, %2744
  %2748 = fmul fast float %2747, %2667
  %2749 = fmul fast float %2738, 2.000000e+00
  %2750 = fsub fast float 1.000000e+00, %2749
  %2751 = fmul fast float %2750, %2668
  %2752 = fadd fast float %2751, %2749
  %2753 = fmul fast float %2752, %2668
  br label %2754

; <label>:2754                                    ; preds = %2726, %2724, %2711, %2681, %2665
  %2755 = phi float [ %2666, %2665 ], [ %2743, %2726 ], [ %2666, %2724 ], [ %2721, %2711 ], [ %2691, %2681 ]
  %2756 = phi float [ %2667, %2665 ], [ %2748, %2726 ], [ %2667, %2724 ], [ %2722, %2711 ], [ %2692, %2681 ]
  %2757 = phi float [ %2668, %2665 ], [ %2753, %2726 ], [ %2668, %2724 ], [ %2723, %2711 ], [ %2693, %2681 ]
  %2758 = phi float [ %2669, %2665 ], [ %2669, %2726 ], [ %2669, %2724 ], [ %2669, %2711 ], [ %2703, %2681 ]
  %2759 = phi float [ %2670, %2665 ], [ %2670, %2726 ], [ %2670, %2724 ], [ %2670, %2711 ], [ %2704, %2681 ]
  %2760 = phi float [ %2671, %2665 ], [ %2671, %2726 ], [ %2671, %2724 ], [ %2671, %2711 ], [ %2705, %2681 ]
  %2761 = phi float [ %1992, %2665 ], [ %1992, %2726 ], [ %1992, %2724 ], [ %1992, %2711 ], [ %2696, %2681 ]
  %2762 = phi float [ %1995, %2665 ], [ %1995, %2726 ], [ %1995, %2724 ], [ %1995, %2711 ], [ %2708, %2681 ]
  %2763 = and i32 %2673, 12
  %2764 = icmp eq i32 %2763, 12
  br i1 %2764, label %2837, label %2765

; <label>:2765                                    ; preds = %2754
  %2766 = and i32 %2673, 2097184
  %2767 = icmp eq i32 %2766, 2097184
  %2768 = select i1 %2767, float %2293, float 0.000000e+00
  %2769 = and i32 %2673, 4194336
  %2770 = icmp eq i32 %2769, 4194336
  %2771 = select i1 %2770, float %2293, float 0.000000e+00
  %2772 = and i32 %2673, 8388640
  %2773 = icmp eq i32 %2772, 8388640
  %2774 = select i1 %2773, float %2293, float 0.000000e+00
  %2775 = icmp eq i32 %2763, 0
  br i1 %2775, label %2776, label %2789

; <label>:2776                                    ; preds = %2765
  %2777 = fsub fast float %2594, %1984
  %2778 = fsub fast float %2595, %1985
  %2779 = fmul fast float %2768, %2777
  %2780 = fmul fast float %2768, %2778
  %2781 = fadd fast float %2779, %1984
  %2782 = fadd fast float %2780, %1985
  %2783 = fsub fast float %2596, %1994
  %2784 = fmul fast float %2771, %2783
  %2785 = fadd fast float %2784, %1994
  %2786 = fsub fast float %2593, %1993
  %2787 = fmul fast float %2774, %2786
  %2788 = fadd fast float %2787, %1993
  br label %2837

; <label>:2789                                    ; preds = %2765
  %2790 = icmp eq i32 %2763, 4
  br i1 %2790, label %2791, label %2823

; <label>:2791                                    ; preds = %2789
  %2792 = fmul fast float %2768, %2594
  %2793 = fmul fast float %2768, %2595
  %2794 = fadd fast float %2792, %1984
  %2795 = fadd fast float %2793, %1985
  %2796 = call float @dx.op.binary.f32(i32 36, float %1994, float %2596)  ; FMin(a,b)
  %2797 = fsub fast float %2796, %1994
  %2798 = fmul fast float %2797, %2771
  %2799 = fadd fast float %2798, %1994
  %2800 = fadd fast float %2593, %1993
  %2801 = fmul fast float %2800, 0x3FF337FAE0000000
  %2802 = fmul fast float %1993, %1993
  %2803 = fmul fast float %2593, %2593
  %2804 = fadd fast float %2803, %2802
  %2805 = fmul fast float %2804, 0x3FE5152B00000000
  %2806 = fmul fast float %1993, 0xBFCC1F85E0000000
  %2807 = fmul fast float %2806, %2593
  %2808 = fadd fast float %2807, 0xBFE1363700000000
  %2809 = fadd fast float %2808, %2801
  %2810 = fsub fast float %2809, %2805
  %2811 = fmul fast float %2800, 0x3FBA6F0D00000000
  %2812 = fmul fast float %2804, 0x3FD0432880000000
  %2813 = fmul fast float %1993, 0xBFEF110800000000
  %2814 = fmul fast float %2813, %2593
  %2815 = fadd fast float %2814, 1.000000e+00
  %2816 = fsub fast float %2815, %2811
  %2817 = fadd fast float %2816, %2812
  %2818 = fdiv fast float %2810, %2817
  %2819 = call float @dx.op.unary.f32(i32 7, float %2818)  ; Saturate(value)
  %2820 = fsub fast float %2819, %1993
  %2821 = fmul fast float %2820, %2774
  %2822 = fadd fast float %2821, %1993
  br label %2837

; <label>:2823                                    ; preds = %2789
  %2824 = icmp eq i32 %2763, 8
  br i1 %2824, label %2825, label %2837

; <label>:2825                                    ; preds = %2823
  %2826 = fmul fast float %2768, %2594
  %2827 = fmul fast float %2768, %2595
  %2828 = fadd fast float %2826, %1984
  %2829 = fadd fast float %2827, %1985
  %2830 = call float @dx.op.binary.f32(i32 36, float %1994, float %2596)  ; FMin(a,b)
  %2831 = fsub fast float %2830, %1994
  %2832 = fmul fast float %2831, %2771
  %2833 = fadd fast float %2832, %1994
  %2834 = fsub fast float %2593, %1993
  %2835 = fmul fast float %2774, %2834
  %2836 = fadd fast float %2835, %1993
  br label %2837

; <label>:2837                                    ; preds = %2825, %2823, %2791, %2776, %2754, %2292, %1996, %1983
  %2838 = phi float [ %1984, %2754 ], [ %1984, %2292 ], [ %1984, %1983 ], [ %2828, %2825 ], [ %1984, %2823 ], [ %2794, %2791 ], [ %2781, %2776 ], [ %1984, %1996 ]
  %2839 = phi float [ %1985, %2754 ], [ %1985, %2292 ], [ %1985, %1983 ], [ %2829, %2825 ], [ %1985, %2823 ], [ %2795, %2791 ], [ %2782, %2776 ], [ %1985, %1996 ]
  %2840 = phi float [ %2755, %2754 ], [ %1986, %2292 ], [ %1986, %1983 ], [ %2755, %2825 ], [ %2755, %2823 ], [ %2755, %2791 ], [ %2755, %2776 ], [ %1986, %1996 ]
  %2841 = phi float [ %2756, %2754 ], [ %1987, %2292 ], [ %1987, %1983 ], [ %2756, %2825 ], [ %2756, %2823 ], [ %2756, %2791 ], [ %2756, %2776 ], [ %1987, %1996 ]
  %2842 = phi float [ %2757, %2754 ], [ %1988, %2292 ], [ %1988, %1983 ], [ %2757, %2825 ], [ %2757, %2823 ], [ %2757, %2791 ], [ %2757, %2776 ], [ %1988, %1996 ]
  %2843 = phi float [ %2758, %2754 ], [ %1989, %2292 ], [ %1989, %1983 ], [ %2758, %2825 ], [ %2758, %2823 ], [ %2758, %2791 ], [ %2758, %2776 ], [ %1989, %1996 ]
  %2844 = phi float [ %2759, %2754 ], [ %1990, %2292 ], [ %1990, %1983 ], [ %2759, %2825 ], [ %2759, %2823 ], [ %2759, %2791 ], [ %2759, %2776 ], [ %1990, %1996 ]
  %2845 = phi float [ %2760, %2754 ], [ %1991, %2292 ], [ %1991, %1983 ], [ %2760, %2825 ], [ %2760, %2823 ], [ %2760, %2791 ], [ %2760, %2776 ], [ %1991, %1996 ]
  %2846 = phi float [ %2761, %2754 ], [ %1992, %2292 ], [ %1992, %1983 ], [ %2761, %2825 ], [ %2761, %2823 ], [ %2761, %2791 ], [ %2761, %2776 ], [ %1992, %1996 ]
  %2847 = phi float [ %1993, %2754 ], [ %1993, %2292 ], [ %1993, %1983 ], [ %2836, %2825 ], [ %1993, %2823 ], [ %2822, %2791 ], [ %2788, %2776 ], [ %1993, %1996 ]
  %2848 = phi float [ %1994, %2754 ], [ %1994, %2292 ], [ %1994, %1983 ], [ %2833, %2825 ], [ %1994, %2823 ], [ %2799, %2791 ], [ %2785, %2776 ], [ %1994, %1996 ]
  %2849 = phi float [ %2762, %2754 ], [ %1995, %2292 ], [ %1995, %1983 ], [ %2762, %2825 ], [ %2762, %2823 ], [ %2762, %2791 ], [ %2762, %2776 ], [ %1995, %1996 ]
  br i1 %416, label %3691, label %2850

; <label>:2850                                    ; preds = %2837
  %2851 = icmp ult i32 %470, 4
  %2852 = add i32 %60, 72
  %2853 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2852, i32 undef)  ; BufferLoad(srv,index,wot)
  %2854 = extractvalue %dx.types.ResRet.i32 %2853, 0
  %2855 = add i32 %60, 76
  %2856 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2855, i32 undef)  ; BufferLoad(srv,index,wot)
  %2857 = extractvalue %dx.types.ResRet.i32 %2856, 0
  %2858 = or i32 %2857, %2854
  %2859 = icmp eq i32 %2858, 0
  br i1 %2859, label %3691, label %2860

; <label>:2860                                    ; preds = %2850
  %2861 = and i32 %2854, 262144
  %2862 = icmp ne i32 %2861, 0
  %2863 = select i1 %2862, float %63, float 1.000000e+00
  %2864 = select i1 %2862, float %64, float 0.000000e+00
  %2865 = select i1 %2862, float %65, float 0.000000e+00
  %2866 = select i1 %2862, float %66, float 1.000000e+00
  %2867 = select i1 %2862, float %67, float %83
  %2868 = select i1 %2862, float %68, float %84
  %2869 = add i32 %60, 332
  %2870 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2869, i32 undef)  ; BufferLoad(srv,index,wot)
  %2871 = extractvalue %dx.types.ResRet.i32 %2870, 0
  %2872 = lshr i32 %2871, 16
  %2873 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2872)  ; LegacyF16ToF32(value)
  %2874 = fmul fast float %2873, 0x3F50624DE0000000
  %2875 = add i32 %60, 136
  %2876 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2875, i32 undef)  ; BufferLoad(srv,index,wot)
  %2877 = extractvalue %dx.types.ResRet.i32 %2876, 0
  %2878 = lshr i32 %2877, 16
  %2879 = and i32 %2878, 255
  %2880 = lshr i32 %2877, 24
  %2881 = add i32 %60, 340
  %2882 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2881, i32 undef)  ; BufferLoad(srv,index,wot)
  %2883 = extractvalue %dx.types.ResRet.i32 %2882, 0
  %2884 = and i32 %2883, 65535
  %2885 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2884)  ; LegacyF16ToF32(value)
  %2886 = lshr i32 %2883, 16
  %2887 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2886)  ; LegacyF16ToF32(value)
  %2888 = add i32 %60, 80
  %2889 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2888, i32 undef)  ; BufferLoad(srv,index,wot)
  %2890 = extractvalue %dx.types.ResRet.i32 %2889, 0
  %2891 = lshr i32 %2890, 22
  %2892 = shl nuw nsw i32 %2891, 5
  %2893 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2892)  ; LegacyF16ToF32(value)
  %2894 = shl i32 %2890, 4
  %2895 = and i32 %2894, 32752
  %2896 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2895)  ; LegacyF16ToF32(value)
  %2897 = lshr i32 %2890, 7
  %2898 = and i32 %2897, 32752
  %2899 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2898)  ; LegacyF16ToF32(value)
  %2900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2901 = extractvalue %dx.types.CBufRet.f32 %2900, 3
  %2902 = fmul fast float %2901, 1.000000e+03
  %2903 = fmul fast float %406, %2902
  %2904 = call float @dx.op.unary.f32(i32 22, float %2903)  ; Frc(value)
  %2905 = fadd fast float %2904, %396
  %2906 = fmul fast float %407, %2902
  %2907 = call float @dx.op.unary.f32(i32 22, float %2906)  ; Frc(value)
  %2908 = fadd fast float %2907, %398
  %2909 = fmul fast float %2874, %2902
  %2910 = call float @dx.op.unary.f32(i32 22, float %2909)  ; Frc(value)
  %2911 = fmul fast float %2910, 0x401921FB60000000
  %2912 = fadd fast float %2911, %2893
  %2913 = call float @dx.op.unary.f32(i32 13, float %2912)  ; Sin(value)
  %2914 = call float @dx.op.unary.f32(i32 12, float %2912)  ; Cos(value)
  %2915 = fsub fast float -0.000000e+00, %2913
  %2916 = fadd fast float %2867, -5.000000e-01
  %2917 = fadd fast float %2868, -5.000000e-01
  %2918 = fmul fast float %2885, %2916
  %2919 = fmul fast float %2887, %2917
  %2920 = fadd fast float %2918, 5.000000e-01
  %2921 = fadd fast float %2919, 5.000000e-01
  %2922 = fmul fast float %2896, %2920
  %2923 = fmul fast float %2899, %2921
  %2924 = fmul fast float %2914, %2922
  %2925 = call float @dx.op.tertiary.f32(i32 46, float %2915, float %2923, float %2924)  ; FMad(a,b,c)
  %2926 = fmul fast float %2913, %2922
  %2927 = call float @dx.op.tertiary.f32(i32 46, float %2914, float %2923, float %2926)  ; FMad(a,b,c)
  %2928 = fadd fast float %2905, %2925
  %2929 = fadd fast float %2908, %2927
  %2930 = icmp ugt i32 %2879, 1
  %2931 = icmp ugt i32 %2877, 33554431
  %2932 = or i1 %2931, %2930
  br i1 %2932, label %2933, label %2958

; <label>:2933                                    ; preds = %2860
  %2934 = add i32 %60, 276
  %2935 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2934, i32 undef)  ; BufferLoad(srv,index,wot)
  %2936 = extractvalue %dx.types.ResRet.i32 %2935, 0
  %2937 = lshr i32 %2936, 16
  %2938 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2937)  ; LegacyF16ToF32(value)
  %2939 = fmul fast float %2901, %2938
  %2940 = call float @dx.op.unary.f32(i32 22, float %2939)  ; Frc(value)
  %2941 = mul nuw nsw i32 %2879, %2880
  %2942 = uitofp i32 %2941 to float
  %2943 = fmul fast float %2940, %2942
  %2944 = call float @dx.op.unary.f32(i32 27, float %2943)  ; Round_ni(value)
  %2945 = fptoui float %2944 to i32
  %2946 = urem i32 %2945, %2879
  %2947 = udiv i32 %2945, %2880
  %2948 = call float @dx.op.unary.f32(i32 22, float %2928)  ; Frc(value)
  %2949 = call float @dx.op.unary.f32(i32 22, float %2929)  ; Frc(value)
  %2950 = uitofp i32 %2946 to float
  %2951 = uitofp i32 %2947 to float
  %2952 = fadd fast float %2948, %2950
  %2953 = fadd fast float %2949, %2951
  %2954 = uitofp i32 %2879 to float
  %2955 = uitofp i32 %2880 to float
  %2956 = fdiv fast float %2952, %2954
  %2957 = fdiv fast float %2953, %2955
  br label %2958

; <label>:2958                                    ; preds = %2933, %2860
  %2959 = phi float [ %2956, %2933 ], [ %2928, %2860 ]
  %2960 = phi float [ %2957, %2933 ], [ %2929, %2860 ]
  %2961 = and i32 %2854, 16777216
  %2962 = icmp eq i32 %2961, 0
  br i1 %2962, label %3072, label %2963

; <label>:2963                                    ; preds = %2958
  %2964 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2965 = extractvalue %dx.types.CBufRet.f32 %2964, 0
  %2966 = extractvalue %dx.types.CBufRet.f32 %2964, 1
  %2967 = extractvalue %dx.types.CBufRet.f32 %2964, 2
  %2968 = fadd fast float %2965, %167
  %2969 = fadd fast float %2966, %168
  %2970 = fadd fast float %2967, %169
  %2971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2972 = extractvalue %dx.types.CBufRet.f32 %2971, 0
  %2973 = call float @dx.op.unary.f32(i32 7, float %2972)  ; Saturate(value)
  %2974 = icmp eq i32 %61, 65535
  br i1 %2974, label %3069, label %2975

; <label>:2975                                    ; preds = %2963
  %2976 = lshr i32 %61, 1
  %2977 = shl i32 %2976, 2
  %2978 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %2977, i32 undef)  ; BufferLoad(srv,index,wot)
  %2979 = extractvalue %dx.types.ResRet.i32 %2978, 0
  %2980 = and i32 %61, 1
  %2981 = icmp ne i32 %2980, 0
  %2982 = lshr i32 %2979, 16
  %2983 = and i32 %2979, 65535
  %2984 = select i1 %2981, i32 %2982, i32 %2983
  %2985 = icmp eq i32 %2984, 65535
  br i1 %2985, label %3065, label %2986

; <label>:2986                                    ; preds = %2975
  %2987 = mul nuw nsw i32 %2984, 40
  %2988 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %2987, i32 undef)  ; BufferLoad(srv,index,wot)
  %2989 = extractvalue %dx.types.ResRet.f32 %2988, 0
  %2990 = extractvalue %dx.types.ResRet.f32 %2988, 1
  %2991 = extractvalue %dx.types.ResRet.f32 %2988, 2
  %2992 = add nuw nsw i32 %2987, 12
  %2993 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %2992, i32 undef)  ; BufferLoad(srv,index,wot)
  %2994 = extractvalue %dx.types.ResRet.f32 %2993, 0
  %2995 = extractvalue %dx.types.ResRet.f32 %2993, 1
  %2996 = extractvalue %dx.types.ResRet.f32 %2993, 2
  %2997 = add nuw nsw i32 %2987, 24
  %2998 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %2997, i32 undef)  ; BufferLoad(srv,index,wot)
  %2999 = extractvalue %dx.types.ResRet.f32 %2998, 0
  %3000 = extractvalue %dx.types.ResRet.f32 %2998, 1
  %3001 = extractvalue %dx.types.ResRet.f32 %2998, 2
  %3002 = add nuw nsw i32 %2987, 36
  %3003 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %3002, i32 undef)  ; BufferLoad(srv,index,wot)
  %3004 = extractvalue %dx.types.ResRet.f32 %3003, 0
  %3005 = fsub fast float %2968, %2989
  %3006 = fsub fast float %2969, %2990
  %3007 = fsub fast float %2970, %2991
  %3008 = fmul fast float %3004, %3005
  %3009 = fmul fast float %3004, %3006
  %3010 = fmul fast float %3004, %3007
  %3011 = call float @dx.op.unary.f32(i32 27, float %3008)  ; Round_ni(value)
  %3012 = call float @dx.op.unary.f32(i32 27, float %3009)  ; Round_ni(value)
  %3013 = call float @dx.op.unary.f32(i32 27, float %3010)  ; Round_ni(value)
  %3014 = fadd fast float %3011, 5.000000e-01
  %3015 = fadd fast float %3012, 5.000000e-01
  %3016 = fadd fast float %3013, 5.000000e-01
  %3017 = fmul fast float %3014, %2994
  %3018 = fmul fast float %3015, %2995
  %3019 = fmul fast float %3016, %2996
  %3020 = shl i32 %61, 2
  %3021 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3020, i32 undef)  ; BufferLoad(srv,index,wot)
  %3022 = extractvalue %dx.types.ResRet.i32 %3021, 0
  %3023 = add i32 %3022, 0
  %3024 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3023, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3025 = call float @dx.op.unary.f32(i32 22, float %3017)  ; Frc(value)
  %3026 = call float @dx.op.unary.f32(i32 22, float %3018)  ; Frc(value)
  %3027 = call float @dx.op.unary.f32(i32 22, float %3019)  ; Frc(value)
  %3028 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3024, %dx.types.Handle %47, float %3025, float %3026, float %3027, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3029 = extractvalue %dx.types.ResRet.f32 %3028, 0
  %3030 = extractvalue %dx.types.ResRet.f32 %3028, 1
  %3031 = extractvalue %dx.types.ResRet.f32 %3028, 2
  %3032 = fmul fast float %3029, 1.023000e+03
  %3033 = fmul fast float %3030, 1.023000e+03
  %3034 = fmul fast float %3031, 1.023000e+03
  %3035 = fadd fast float %3032, 5.000000e-01
  %3036 = fadd fast float %3033, 5.000000e-01
  %3037 = fadd fast float %3034, 5.000000e-01
  %3038 = call float @dx.op.unary.f32(i32 27, float %3035)  ; Round_ni(value)
  %3039 = call float @dx.op.unary.f32(i32 27, float %3036)  ; Round_ni(value)
  %3040 = call float @dx.op.unary.f32(i32 27, float %3037)  ; Round_ni(value)
  %3041 = fsub fast float %3008, %3011
  %3042 = fsub fast float %3009, %3012
  %3043 = fsub fast float %3010, %3013
  %3044 = fmul fast float %3041, 7.500000e-01
  %3045 = fmul fast float %3042, 7.500000e-01
  %3046 = fmul fast float %3043, 7.500000e-01
  %3047 = fadd fast float %3011, 1.250000e-01
  %3048 = fadd fast float %3047, %3044
  %3049 = fadd fast float %3048, %3038
  %3050 = fadd fast float %3012, 1.250000e-01
  %3051 = fadd fast float %3050, %3045
  %3052 = fadd fast float %3051, %3039
  %3053 = fadd fast float %3013, 1.250000e-01
  %3054 = fadd fast float %3053, %3046
  %3055 = fadd fast float %3054, %3040
  %3056 = fmul fast float %3049, %2999
  %3057 = fmul fast float %3052, %3000
  %3058 = fmul fast float %3055, %3001
  %3059 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3020, i32 undef)  ; BufferLoad(srv,index,wot)
  %3060 = extractvalue %dx.types.ResRet.i32 %3059, 0
  %3061 = add i32 %3060, 0
  %3062 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3061, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3063 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3062, %dx.types.Handle %45, float %3056, float %3057, float %3058, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3064 = extractvalue %dx.types.ResRet.f32 %3063, 0
  br label %3065

; <label>:3065                                    ; preds = %2986, %2975
  %3066 = phi float [ %3064, %2986 ], [ -1.000000e+00, %2975 ]
  %3067 = fadd fast float %3066, %2973
  %3068 = call float @dx.op.unary.f32(i32 7, float %3067)  ; Saturate(value)
  br label %3069

; <label>:3069                                    ; preds = %3065, %2963
  %3070 = phi float [ %3068, %3065 ], [ %2973, %2963 ]
  %3071 = fmul fast float %3070, %465
  br label %3072

; <label>:3072                                    ; preds = %3069, %2958
  %3073 = phi float [ %3071, %3069 ], [ %465, %2958 ]
  %3074 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2852, i32 undef)  ; BufferLoad(srv,index,wot)
  %3075 = extractvalue %dx.types.ResRet.i32 %3074, 0
  %3076 = and i32 %3075, 256
  %3077 = icmp eq i32 %3076, 0
  br i1 %3077, label %3124, label %3078

; <label>:3078                                    ; preds = %3072
  %3079 = add i32 %60, 436
  %3080 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %3079, i32 undef)  ; BufferLoad(srv,index,wot)
  %3081 = extractvalue %dx.types.ResRet.i32 %3080, 0
  %3082 = add i32 %3081, 0
  %3083 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3082, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3084 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3083, %dx.types.Handle %101, float %2959, float %2960, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3085 = extractvalue %dx.types.ResRet.f32 %3084, 0
  %3086 = add i32 %60, 148
  %3087 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %3086, i32 undef)  ; BufferLoad(srv,index,wot)
  %3088 = extractvalue %dx.types.ResRet.i32 %3087, 0
  %3089 = shl i32 %3088, 4
  %3090 = and i32 %3089, 32752
  %3091 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3090)  ; LegacyF16ToF32(value)
  %3092 = lshr i32 %3088, 7
  %3093 = and i32 %3092, 32752
  %3094 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3093)  ; LegacyF16ToF32(value)
  %3095 = fsub fast float 1.000000e+00, %3073
  %3096 = call float @dx.op.binary.f32(i32 35, float %3095, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3097 = bitcast float %3073 to i32
  %3098 = sitofp i32 %3097 to float
  %3099 = fadd fast float %3098, 0xC1CFBF8940000000
  %3100 = fmul fast float %3094, %3099
  %3101 = fadd fast float %3100, 0x41CFBF8940000000
  %3102 = fptosi float %3101 to i32
  %3103 = bitcast i32 %3102 to float
  %3104 = bitcast float %3096 to i32
  %3105 = sitofp i32 %3104 to float
  %3106 = fadd fast float %3105, 0xC1CFBF8940000000
  %3107 = fmul fast float %3106, %3094
  %3108 = fadd fast float %3107, 0x41CFBF8940000000
  %3109 = fptosi float %3108 to i32
  %3110 = bitcast i32 %3109 to float
  %3111 = fmul fast float %3103, %3091
  %3112 = fmul fast float %3110, %3091
  %3113 = fsub fast float %3096, %3111
  %3114 = fadd fast float %3112, %3096
  %3115 = call float @dx.op.unary.f32(i32 7, float %3113)  ; Saturate(value)
  %3116 = call float @dx.op.unary.f32(i32 7, float %3114)  ; Saturate(value)
  %3117 = fsub fast float %3085, %3115
  %3118 = fsub fast float %3116, %3115
  %3119 = bitcast float %3118 to i32
  %3120 = sub nsw i32 2129859010, %3119
  %3121 = bitcast i32 %3120 to float
  %3122 = fmul fast float %3121, %3117
  %3123 = call float @dx.op.unary.f32(i32 7, float %3122)  ; Saturate(value)
  br label %3124

; <label>:3124                                    ; preds = %3078, %3072
  %3125 = phi float [ %3123, %3078 ], [ %3073, %3072 ]
  %3126 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2852, i32 undef)  ; BufferLoad(srv,index,wot)
  %3127 = extractvalue %dx.types.ResRet.i32 %3126, 0
  %3128 = and i32 %3127, 128
  %3129 = icmp eq i32 %3128, 0
  br i1 %3129, label %3146, label %3130

; <label>:3130                                    ; preds = %3124
  %3131 = add i32 %60, 420
  %3132 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %3131, i32 undef)  ; BufferLoad(srv,index,wot)
  %3133 = extractvalue %dx.types.ResRet.i32 %3132, 0
  %3134 = add i32 %3133, 0
  %3135 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3134, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3136 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3135, %dx.types.Handle %101, float %2959, float %2960, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3137 = extractvalue %dx.types.ResRet.f32 %3136, 0
  %3138 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2852, i32 undef)  ; BufferLoad(srv,index,wot)
  %3139 = extractvalue %dx.types.ResRet.i32 %3138, 0
  %3140 = and i32 %3139, 524288
  %3141 = icmp ne i32 %3140, 0
  %3142 = fcmp fast ogt float %3137, 0x3FE0101020000000
  %3143 = select i1 %3142, float 1.000000e+00, float 0.000000e+00
  %3144 = select i1 %3141, float %3143, float %3137
  %3145 = fmul fast float %3144, %3125
  br label %3146

; <label>:3146                                    ; preds = %3130, %3124
  %3147 = phi float [ %3145, %3130 ], [ %3125, %3124 ]
  %3148 = fcmp fast ult float %3147, 0x3F70101020000000
  br i1 %3148, label %3691, label %3149

; <label>:3149                                    ; preds = %3146
  %3150 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2852, i32 undef)  ; BufferLoad(srv,index,wot)
  %3151 = extractvalue %dx.types.ResRet.i32 %3150, 0
  %3152 = and i32 %3151, 16
  %3153 = icmp eq i32 %3152, 0
  br i1 %3153, label %3352, label %3154

; <label>:3154                                    ; preds = %3149
  %3155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2875, i32 undef)  ; BufferLoad(srv,index,wot)
  %3156 = extractvalue %dx.types.ResRet.i32 %3155, 0
  %3157 = add i32 %60, 372
  %3158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %3157, i32 undef)  ; BufferLoad(srv,index,wot)
  %3159 = extractvalue %dx.types.ResRet.i32 %3158, 0
  %3160 = add i32 %3159, 0
  %3161 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3160, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3162 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3161, %dx.types.Handle %100, float %2959, float %2960, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3163 = extractvalue %dx.types.ResRet.f32 %3162, 0
  %3164 = extractvalue %dx.types.ResRet.f32 %3162, 1
  %3165 = extractvalue %dx.types.ResRet.f32 %3162, 2
  %3166 = extractvalue %dx.types.ResRet.f32 %3162, 3
  %3167 = and i32 %3156, 255
  %3168 = uitofp i32 %3167 to float
  %3169 = lshr i32 %3156, 8
  %3170 = and i32 %3169, 255
  %3171 = uitofp i32 %3170 to float
  %3172 = fmul fast float %3166, %3168
  %3173 = fadd fast float %3172, %3171
  %3174 = fmul fast float %3173, 0x3F70101000000000
  %3175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2852, i32 undef)  ; BufferLoad(srv,index,wot)
  %3176 = extractvalue %dx.types.ResRet.i32 %3175, 0
  %3177 = and i32 %3176, 512
  %3178 = icmp eq i32 %3177, 0
  br i1 %3178, label %3187, label %3179

; <label>:3179                                    ; preds = %3154
  %3180 = add i32 %60, 452
  %3181 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %3180, i32 undef)  ; BufferLoad(srv,index,wot)
  %3182 = extractvalue %dx.types.ResRet.i32 %3181, 0
  %3183 = add i32 %3182, 0
  %3184 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3183, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3185 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3184, %dx.types.Handle %101, float %2959, float %2960, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3186 = extractvalue %dx.types.ResRet.f32 %3185, 0
  br label %3187

; <label>:3187                                    ; preds = %3179, %3154
  %3188 = phi float [ %3186, %3179 ], [ 1.000000e+00, %3154 ]
  %3189 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2852, i32 undef)  ; BufferLoad(srv,index,wot)
  %3190 = extractvalue %dx.types.ResRet.i32 %3189, 0
  %3191 = and i32 %3190, 33554432
  %3192 = icmp eq i32 %3191, 0
  br i1 %3192, label %3299, label %3193

; <label>:3193                                    ; preds = %3187
  %3194 = add i32 %60, 272
  %3195 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %3194, i32 undef)  ; BufferLoad(srv,index,wot)
  %3196 = extractvalue %dx.types.ResRet.i32 %3195, 0
  %3197 = and i32 %3196, 65535
  %3198 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3197)  ; LegacyF16ToF32(value)
  %3199 = lshr i32 %3196, 16
  %3200 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3199)  ; LegacyF16ToF32(value)
  %3201 = add i32 %60, 276
  %3202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %3201, i32 undef)  ; BufferLoad(srv,index,wot)
  %3203 = extractvalue %dx.types.ResRet.i32 %3202, 0
  %3204 = and i32 %3203, 65535
  %3205 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3204)  ; LegacyF16ToF32(value)
  %3206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %378, i32 undef)  ; BufferLoad(srv,index,wot)
  %3207 = extractvalue %dx.types.ResRet.i32 %3206, 0
  %3208 = lshr i32 %3207, 24
  %3209 = uitofp i32 %3208 to float
  %3210 = fmul fast float %3209, 0x3F70101020000000
  %3211 = and i32 %3207, 255
  %3212 = uitofp i32 %3211 to float
  %3213 = fmul fast float %3212, 0x3F70101020000000
  %3214 = lshr i32 %3207, 8
  %3215 = and i32 %3214, 255
  %3216 = uitofp i32 %3215 to float
  %3217 = fmul fast float %3216, 0x3F70101020000000
  %3218 = lshr i32 %3207, 16
  %3219 = and i32 %3218, 255
  %3220 = uitofp i32 %3219 to float
  %3221 = fmul fast float %3220, 0x3F70101020000000
  %3222 = add i32 %60, 268
  %3223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %3222, i32 undef)  ; BufferLoad(srv,index,wot)
  %3224 = extractvalue %dx.types.ResRet.i32 %3223, 0
  %3225 = lshr i32 %3224, 24
  %3226 = uitofp i32 %3225 to float
  %3227 = fmul fast float %3226, 0x3F70101020000000
  %3228 = and i32 %3224, 255
  %3229 = uitofp i32 %3228 to float
  %3230 = fmul fast float %3229, 0x3F70101020000000
  %3231 = lshr i32 %3224, 8
  %3232 = and i32 %3231, 255
  %3233 = uitofp i32 %3232 to float
  %3234 = fmul fast float %3233, 0x3F70101020000000
  %3235 = lshr i32 %3224, 16
  %3236 = and i32 %3235, 255
  %3237 = uitofp i32 %3236 to float
  %3238 = fmul fast float %3237, 0x3F70101020000000
  %3239 = bitcast float %3163 to i32
  %3240 = ashr i32 %3239, 1
  %3241 = sub nsw i32 1597463174, %3240
  %3242 = bitcast i32 %3241 to float
  %3243 = fmul fast float %3163, 5.000000e-01
  %3244 = fmul fast float %3242, %3242
  %3245 = fmul fast float %3244, %3243
  %3246 = fsub fast float 1.500000e+00, %3245
  %3247 = fmul fast float %3242, %3163
  %3248 = fmul fast float %3247, %3246
  %3249 = bitcast float %3164 to i32
  %3250 = ashr i32 %3249, 1
  %3251 = sub nsw i32 1597463174, %3250
  %3252 = bitcast i32 %3251 to float
  %3253 = fmul fast float %3164, 5.000000e-01
  %3254 = fmul fast float %3252, %3252
  %3255 = fmul fast float %3254, %3253
  %3256 = fsub fast float 1.500000e+00, %3255
  %3257 = fmul fast float %3252, %3164
  %3258 = fmul fast float %3257, %3256
  %3259 = bitcast float %3165 to i32
  %3260 = ashr i32 %3259, 1
  %3261 = sub nsw i32 1597463174, %3260
  %3262 = bitcast i32 %3261 to float
  %3263 = fmul fast float %3165, 5.000000e-01
  %3264 = fmul fast float %3262, %3262
  %3265 = fmul fast float %3264, %3263
  %3266 = fsub fast float 1.500000e+00, %3265
  %3267 = fmul fast float %3262, %3165
  %3268 = fmul fast float %3267, %3266
  %3269 = fsub fast float %3248, %3230
  %3270 = fsub fast float %3258, %3234
  %3271 = fsub fast float %3268, %3238
  %3272 = fmul fast float %3269, %3198
  %3273 = fmul fast float %3270, %3200
  %3274 = fmul fast float %3271, %3205
  %3275 = fadd fast float %3272, %3213
  %3276 = fadd fast float %3273, %3217
  %3277 = fadd fast float %3274, %3221
  %3278 = call float @dx.op.unary.f32(i32 7, float %3275)  ; Saturate(value)
  %3279 = call float @dx.op.unary.f32(i32 7, float %3276)  ; Saturate(value)
  %3280 = call float @dx.op.unary.f32(i32 7, float %3277)  ; Saturate(value)
  %3281 = fmul fast float %3278, %3278
  %3282 = fmul fast float %3279, %3279
  %3283 = fmul fast float %3280, %3280
  %3284 = fsub fast float %3281, %3163
  %3285 = fsub fast float %3282, %3164
  %3286 = fsub fast float %3283, %3165
  %3287 = fmul fast float %3284, %3188
  %3288 = fmul fast float %3285, %3188
  %3289 = fmul fast float %3286, %3188
  %3290 = fadd fast float %3287, %3163
  %3291 = fadd fast float %3288, %3164
  %3292 = fadd fast float %3289, %3165
  %3293 = fadd fast float %3210, %3174
  %3294 = fsub fast float %3293, %3227
  %3295 = call float @dx.op.unary.f32(i32 7, float %3294)  ; Saturate(value)
  %3296 = fsub fast float %3295, %3174
  %3297 = fmul fast float %3296, %3188
  %3298 = fadd fast float %3297, %3174
  br label %3352

; <label>:3299                                    ; preds = %3187
  %3300 = and i32 %3190, 134217728
  %3301 = icmp eq i32 %3300, 0
  br i1 %3301, label %3336, label %3302

; <label>:3302                                    ; preds = %3299
  %3303 = call float @dx.op.unary.f32(i32 24, float %383)  ; Sqrt(value)
  %3304 = call float @dx.op.unary.f32(i32 24, float %387)  ; Sqrt(value)
  %3305 = call float @dx.op.unary.f32(i32 24, float %391)  ; Sqrt(value)
  %3306 = fadd fast float %3303, -5.000000e-01
  %3307 = fadd fast float %3304, -5.000000e-01
  %3308 = fadd fast float %3305, -5.000000e-01
  %3309 = fmul fast float %3306, %3188
  %3310 = fmul fast float %3307, %3188
  %3311 = fmul fast float %3308, %3188
  %3312 = fadd fast float %3309, 5.000000e-01
  %3313 = fadd fast float %3310, 5.000000e-01
  %3314 = fadd fast float %3311, 5.000000e-01
  %3315 = call float @dx.op.unary.f32(i32 24, float %3163)  ; Sqrt(value)
  %3316 = call float @dx.op.unary.f32(i32 24, float %3164)  ; Sqrt(value)
  %3317 = call float @dx.op.unary.f32(i32 24, float %3165)  ; Sqrt(value)
  %3318 = fmul fast float %3312, 2.000000e+00
  %3319 = fsub fast float 1.000000e+00, %3318
  %3320 = fmul fast float %3319, %3315
  %3321 = fadd fast float %3320, %3318
  %3322 = fmul fast float %3321, %3315
  %3323 = fmul fast float %3313, 2.000000e+00
  %3324 = fsub fast float 1.000000e+00, %3323
  %3325 = fmul fast float %3324, %3316
  %3326 = fadd fast float %3325, %3323
  %3327 = fmul fast float %3326, %3316
  %3328 = fmul fast float %3314, 2.000000e+00
  %3329 = fsub fast float 1.000000e+00, %3328
  %3330 = fmul fast float %3329, %3317
  %3331 = fadd fast float %3330, %3328
  %3332 = fmul fast float %3331, %3317
  %3333 = fmul fast float %3322, %3322
  %3334 = fmul fast float %3327, %3327
  %3335 = fmul fast float %3332, %3332
  br label %3352

; <label>:3336                                    ; preds = %3299
  %3337 = fmul fast float %383, %383
  %3338 = fmul fast float %387, %387
  %3339 = fmul fast float %391, %391
  %3340 = fadd fast float %3337, -1.000000e+00
  %3341 = fadd fast float %3338, -1.000000e+00
  %3342 = fadd fast float %3339, -1.000000e+00
  %3343 = fmul fast float %3188, %3340
  %3344 = fmul fast float %3188, %3341
  %3345 = fmul fast float %3188, %3342
  %3346 = fadd fast float %3343, 1.000000e+00
  %3347 = fadd fast float %3344, 1.000000e+00
  %3348 = fadd fast float %3345, 1.000000e+00
  %3349 = fmul fast float %3346, %3163
  %3350 = fmul fast float %3347, %3164
  %3351 = fmul fast float %3348, %3165
  br label %3352

; <label>:3352                                    ; preds = %3336, %3302, %3193, %3149
  %3353 = phi float [ %3298, %3193 ], [ %3174, %3302 ], [ %3174, %3336 ], [ 0x3FA23C0BE0000000, %3149 ]
  %3354 = phi float [ %3290, %3193 ], [ %3333, %3302 ], [ %3349, %3336 ], [ 1.000000e+00, %3149 ]
  %3355 = phi float [ %3291, %3193 ], [ %3334, %3302 ], [ %3350, %3336 ], [ 1.000000e+00, %3149 ]
  %3356 = phi float [ %3292, %3193 ], [ %3335, %3302 ], [ %3351, %3336 ], [ 1.000000e+00, %3149 ]
  %3357 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3358 = extractvalue %dx.types.CBufRet.i32 %3357, 1
  %3359 = and i32 %3358, 1
  %3360 = icmp ne i32 %3359, 0
  %3361 = add i32 %60, 356
  %3362 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %3361, i32 undef)  ; BufferLoad(srv,index,wot)
  %3363 = extractvalue %dx.types.ResRet.i32 %3362, 0
  %3364 = and i32 %3363, 32
  %3365 = icmp ne i32 %3364, 0
  %3366 = and i1 %3360, %3365
  %3367 = select i1 %3366, float 1.000000e+00, float %3354
  %3368 = select i1 %3366, float 0x3FD3333340000000, float %3355
  %3369 = select i1 %3366, float 0x3FD3333340000000, float %3356
  %3370 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2852, i32 undef)  ; BufferLoad(srv,index,wot)
  %3371 = extractvalue %dx.types.ResRet.i32 %3370, 0
  %3372 = and i32 %3371, 32
  %3373 = icmp eq i32 %3372, 0
  br i1 %3373, label %3446, label %3374

; <label>:3374                                    ; preds = %3352
  %3375 = add i32 %60, 140
  %3376 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %3375, i32 undef)  ; BufferLoad(srv,index,wot)
  %3377 = extractvalue %dx.types.ResRet.i32 %3376, 0
  %3378 = add i32 %60, 388
  %3379 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %3378, i32 undef)  ; BufferLoad(srv,index,wot)
  %3380 = extractvalue %dx.types.ResRet.i32 %3379, 0
  %3381 = add i32 %3380, 0
  %3382 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3381, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3383 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3382, %dx.types.Handle %100, float %2959, float %2960, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3384 = extractvalue %dx.types.ResRet.f32 %3383, 0
  %3385 = extractvalue %dx.types.ResRet.f32 %3383, 1
  %3386 = extractvalue %dx.types.ResRet.f32 %3383, 2
  %3387 = extractvalue %dx.types.ResRet.f32 %3383, 3
  %3388 = and i32 %3377, 255
  %3389 = uitofp i32 %3388 to float
  %3390 = lshr i32 %3377, 8
  %3391 = and i32 %3390, 255
  %3392 = uitofp i32 %3391 to float
  %3393 = lshr i32 %3377, 16
  %3394 = and i32 %3393, 255
  %3395 = uitofp i32 %3394 to float
  %3396 = fmul fast float %3395, 0x3F70101000000000
  %3397 = fmul fast float %3384, %3389
  %3398 = fadd fast float %3397, %3392
  %3399 = fmul fast float %3398, 0x3F70101000000000
  %3400 = fadd fast float %3385, -5.000000e-01
  %3401 = fadd fast float %3387, -5.000000e-01
  %3402 = fmul fast float %3400, %3396
  %3403 = fmul fast float %3401, %3396
  %3404 = fadd fast float %3402, 5.000000e-01
  %3405 = fadd fast float %3403, 5.000000e-01
  %3406 = fmul fast float %3404, 2.000000e+00
  %3407 = fadd fast float %3406, -1.000000e+00
  %3408 = fmul fast float %3405, 2.000000e+00
  %3409 = fadd fast float %3408, -1.000000e+00
  %3410 = fadd fast float %3407, %3409
  %3411 = fmul fast float %3410, 5.000000e-01
  %3412 = fsub fast float %3407, %3409
  %3413 = fmul fast float %3412, 5.000000e-01
  %3414 = call float @dx.op.unary.f32(i32 6, float %3411)  ; FAbs(value)
  %3415 = fsub fast float 1.000000e+00, %3414
  %3416 = call float @dx.op.unary.f32(i32 6, float %3413)  ; FAbs(value)
  %3417 = fsub fast float %3415, %3416
  %3418 = call float @dx.op.dot3.f32(i32 55, float %3411, float %3413, float %3417, float %3411, float %3413, float %3417)  ; Dot3(ax,ay,az,bx,by,bz)
  %3419 = call float @dx.op.unary.f32(i32 25, float %3418)  ; Rsqrt(value)
  %3420 = fmul fast float %3411, %3419
  %3421 = fmul fast float %3413, %3419
  %3422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2852, i32 undef)  ; BufferLoad(srv,index,wot)
  %3423 = extractvalue %dx.types.ResRet.i32 %3422, 0
  %3424 = and i32 %3423, 67108864
  %3425 = icmp eq i32 %3424, 0
  br i1 %3425, label %3442, label %3426

; <label>:3426                                    ; preds = %3374
  %3427 = add i32 %60, 328
  %3428 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %3427, i32 undef)  ; BufferLoad(srv,index,wot)
  %3429 = extractvalue %dx.types.ResRet.i32 %3428, 0
  %3430 = and i32 %3429, 65535
  %3431 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3430)  ; LegacyF16ToF32(value)
  %3432 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2869, i32 undef)  ; BufferLoad(srv,index,wot)
  %3433 = extractvalue %dx.types.ResRet.i32 %3432, 0
  %3434 = and i32 %3433, 65535
  %3435 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3434)  ; LegacyF16ToF32(value)
  %3436 = lshr i32 %3429, 16
  %3437 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3436)  ; LegacyF16ToF32(value)
  %3438 = fsub fast float %3399, %3437
  %3439 = fmul fast float %3438, %3431
  %3440 = fadd fast float %3439, %3435
  %3441 = call float @dx.op.unary.f32(i32 7, float %3440)  ; Saturate(value)
  br label %3442

; <label>:3442                                    ; preds = %3426, %3374
  %3443 = phi float [ %3441, %3426 ], [ %3399, %3374 ]
  %3444 = call float @dx.op.dot2.f32(i32 54, float %3420, float %3421, float %2863, float %2864)  ; Dot2(ax,ay,bx,by)
  %3445 = call float @dx.op.dot2.f32(i32 54, float %3420, float %3421, float %2865, float %2866)  ; Dot2(ax,ay,bx,by)
  br label %3446

; <label>:3446                                    ; preds = %3442, %3352
  %3447 = phi float [ %3443, %3442 ], [ 0x3FD6666660000000, %3352 ]
  %3448 = phi float [ %3444, %3442 ], [ 0.000000e+00, %3352 ]
  %3449 = phi float [ %3445, %3442 ], [ 0.000000e+00, %3352 ]
  %3450 = phi float [ %3386, %3442 ], [ 1.000000e+00, %3352 ]
  %3451 = add i32 %60, 208
  %3452 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %3451, i32 undef)  ; BufferLoad(srv,index,wot)
  %3453 = extractvalue %dx.types.ResRet.i32 %3452, 0
  %3454 = lshr i32 %3453, 22
  %3455 = shl nuw nsw i32 %3454, 5
  %3456 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3455)  ; LegacyF16ToF32(value)
  %3457 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2852, i32 undef)  ; BufferLoad(srv,index,wot)
  %3458 = extractvalue %dx.types.ResRet.i32 %3457, 0
  %3459 = and i32 %3458, 64
  %3460 = icmp eq i32 %3459, 0
  br i1 %3460, label %3494, label %3461

; <label>:3461                                    ; preds = %3446
  %3462 = add i32 %60, 404
  %3463 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %3462, i32 undef)  ; BufferLoad(srv,index,wot)
  %3464 = extractvalue %dx.types.ResRet.i32 %3463, 0
  %3465 = add i32 %3464, 0
  %3466 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3465, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2852, i32 undef)  ; BufferLoad(srv,index,wot)
  %3468 = extractvalue %dx.types.ResRet.i32 %3467, 0
  %3469 = and i32 %3468, 131072
  %3470 = icmp eq i32 %3469, 0
  %3471 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3466, %dx.types.Handle %100, float %2959, float %2960, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3472 = extractvalue %dx.types.ResRet.f32 %3471, 0
  %3473 = extractvalue %dx.types.ResRet.f32 %3471, 1
  %3474 = extractvalue %dx.types.ResRet.f32 %3471, 2
  %3475 = fmul fast float %3472, %371
  %3476 = fmul fast float %3473, %374
  %3477 = fmul fast float %3474, %377
  br i1 %3470, label %3484, label %3478

; <label>:3478                                    ; preds = %3461
  %3479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3480 = extractvalue %dx.types.CBufRet.f32 %3479, 0
  %3481 = fmul fast float %3480, %3475
  %3482 = fmul fast float %3480, %3476
  %3483 = fmul fast float %3480, %3477
  br label %3484

; <label>:3484                                    ; preds = %3478, %3461
  %3485 = phi float [ %3481, %3478 ], [ %3475, %3461 ]
  %3486 = phi float [ %3482, %3478 ], [ %3476, %3461 ]
  %3487 = phi float [ %3483, %3478 ], [ %3477, %3461 ]
  %3488 = fmul fast float %3485, %3456
  %3489 = select i1 %228, float %3488, float %3485
  %3490 = call float @dx.op.dot3.f32(i32 55, float %3489, float %3486, float %3487, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3491 = select i1 %228, float 0.000000e+00, float %3485
  %3492 = select i1 %228, float %3490, float %3486
  %3493 = select i1 %228, float 0.000000e+00, float %3487
  br label %3494

; <label>:3494                                    ; preds = %3484, %3446
  %3495 = phi float [ %3491, %3484 ], [ 0.000000e+00, %3446 ]
  %3496 = phi float [ %3492, %3484 ], [ 0.000000e+00, %3446 ]
  %3497 = phi float [ %3493, %3484 ], [ 0.000000e+00, %3446 ]
  %3498 = add i32 %60, 144
  %3499 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %3498, i32 undef)  ; BufferLoad(srv,index,wot)
  %3500 = extractvalue %dx.types.ResRet.i32 %3499, 0
  %3501 = and i32 %3500, 255
  %3502 = uitofp i32 %3501 to float
  %3503 = lshr i32 %3500, 8
  %3504 = and i32 %3503, 255
  %3505 = uitofp i32 %3504 to float
  %3506 = call float @dx.op.dot3.f32(i32 55, float %3367, float %3368, float %3369, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3507 = fmul fast float %3505, %3506
  %3508 = fadd fast float %3507, %3502
  %3509 = fmul fast float %3508, 0x3F70101020000000
  %3510 = call float @dx.op.unary.f32(i32 7, float %3509)  ; Saturate(value)
  br i1 %2851, label %3511, label %3519

; <label>:3511                                    ; preds = %3494
  %3512 = fsub fast float 1.000000e+00, %3147
  %3513 = fmul fast float %3512, %2840
  %3514 = fmul fast float %3512, %2841
  %3515 = fmul fast float %3512, %2842
  %3516 = fmul fast float %3512, %2843
  %3517 = fmul fast float %3512, %2844
  %3518 = fmul fast float %3512, %2845
  br label %3519

; <label>:3519                                    ; preds = %3511, %3494
  %3520 = phi float [ %3513, %3511 ], [ %2840, %3494 ]
  %3521 = phi float [ %3514, %3511 ], [ %2841, %3494 ]
  %3522 = phi float [ %3515, %3511 ], [ %2842, %3494 ]
  %3523 = phi float [ %3516, %3511 ], [ %2843, %3494 ]
  %3524 = phi float [ %3517, %3511 ], [ %2844, %3494 ]
  %3525 = phi float [ %3518, %3511 ], [ %2845, %3494 ]
  %3526 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2852, i32 undef)  ; BufferLoad(srv,index,wot)
  %3527 = extractvalue %dx.types.ResRet.i32 %3526, 0
  %3528 = and i32 %3527, 3
  %3529 = icmp eq i32 %3528, 3
  br i1 %3529, label %3608, label %3530

; <label>:3530                                    ; preds = %3519
  %3531 = and i32 %3527, 16
  %3532 = icmp ne i32 %3531, 0
  %3533 = select i1 %3532, float %3147, float 0.000000e+00
  %3534 = icmp eq i32 %3528, 0
  br i1 %3534, label %3535, label %3563

; <label>:3535                                    ; preds = %3530
  %3536 = and i32 %3527, 64
  %3537 = icmp ne i32 %3536, 0
  %3538 = select i1 %3537, float %3147, float 0.000000e+00
  %3539 = fsub fast float %3367, %3520
  %3540 = fsub fast float %3368, %3521
  %3541 = fsub fast float %3369, %3522
  %3542 = fmul fast float %3533, %3539
  %3543 = fmul fast float %3533, %3540
  %3544 = fmul fast float %3533, %3541
  %3545 = fadd fast float %3542, %3520
  %3546 = fadd fast float %3543, %3521
  %3547 = fadd fast float %3544, %3522
  %3548 = fsub fast float %3353, %2846
  %3549 = fmul fast float %3533, %3548
  %3550 = fadd fast float %3549, %2846
  %3551 = fsub fast float %3495, %3523
  %3552 = fsub fast float %3496, %3524
  %3553 = fsub fast float %3497, %3525
  %3554 = fmul fast float %3538, %3551
  %3555 = fmul fast float %3538, %3552
  %3556 = fmul fast float %3538, %3553
  %3557 = fadd fast float %3554, %3523
  %3558 = fadd fast float %3555, %3524
  %3559 = fadd fast float %3556, %3525
  %3560 = fsub fast float %3510, %2849
  %3561 = fmul fast float %3533, %3560
  %3562 = fadd fast float %3561, %2849
  br label %3608

; <label>:3563                                    ; preds = %3530
  %3564 = icmp eq i32 %3528, 1
  br i1 %3564, label %3565, label %3578

; <label>:3565                                    ; preds = %3563
  %3566 = fadd fast float %3367, -1.000000e+00
  %3567 = fadd fast float %3368, -1.000000e+00
  %3568 = fadd fast float %3369, -1.000000e+00
  %3569 = fmul fast float %3533, %3566
  %3570 = fmul fast float %3533, %3567
  %3571 = fmul fast float %3533, %3568
  %3572 = fadd fast float %3569, 1.000000e+00
  %3573 = fadd fast float %3570, 1.000000e+00
  %3574 = fadd fast float %3571, 1.000000e+00
  %3575 = fmul fast float %3572, %3520
  %3576 = fmul fast float %3573, %3521
  %3577 = fmul fast float %3574, %3522
  br label %3608

; <label>:3578                                    ; preds = %3563
  %3579 = icmp eq i32 %3528, 2
  br i1 %3579, label %3580, label %3608

; <label>:3580                                    ; preds = %3578
  %3581 = call float @dx.op.unary.f32(i32 24, float %3367)  ; Sqrt(value)
  %3582 = call float @dx.op.unary.f32(i32 24, float %3368)  ; Sqrt(value)
  %3583 = call float @dx.op.unary.f32(i32 24, float %3369)  ; Sqrt(value)
  %3584 = fadd fast float %3581, -5.000000e-01
  %3585 = fadd fast float %3582, -5.000000e-01
  %3586 = fadd fast float %3583, -5.000000e-01
  %3587 = fmul fast float %3584, %3533
  %3588 = fmul fast float %3585, %3533
  %3589 = fmul fast float %3586, %3533
  %3590 = fadd fast float %3587, 5.000000e-01
  %3591 = fadd fast float %3588, 5.000000e-01
  %3592 = fadd fast float %3589, 5.000000e-01
  %3593 = fmul fast float %3590, 2.000000e+00
  %3594 = fsub fast float 1.000000e+00, %3593
  %3595 = fmul fast float %3594, %3520
  %3596 = fadd fast float %3595, %3593
  %3597 = fmul fast float %3596, %3520
  %3598 = fmul fast float %3591, 2.000000e+00
  %3599 = fsub fast float 1.000000e+00, %3598
  %3600 = fmul fast float %3599, %3521
  %3601 = fadd fast float %3600, %3598
  %3602 = fmul fast float %3601, %3521
  %3603 = fmul fast float %3592, 2.000000e+00
  %3604 = fsub fast float 1.000000e+00, %3603
  %3605 = fmul fast float %3604, %3522
  %3606 = fadd fast float %3605, %3603
  %3607 = fmul fast float %3606, %3522
  br label %3608

; <label>:3608                                    ; preds = %3580, %3578, %3565, %3535, %3519
  %3609 = phi float [ %3520, %3519 ], [ %3597, %3580 ], [ %3520, %3578 ], [ %3575, %3565 ], [ %3545, %3535 ]
  %3610 = phi float [ %3521, %3519 ], [ %3602, %3580 ], [ %3521, %3578 ], [ %3576, %3565 ], [ %3546, %3535 ]
  %3611 = phi float [ %3522, %3519 ], [ %3607, %3580 ], [ %3522, %3578 ], [ %3577, %3565 ], [ %3547, %3535 ]
  %3612 = phi float [ %3523, %3519 ], [ %3523, %3580 ], [ %3523, %3578 ], [ %3523, %3565 ], [ %3557, %3535 ]
  %3613 = phi float [ %3524, %3519 ], [ %3524, %3580 ], [ %3524, %3578 ], [ %3524, %3565 ], [ %3558, %3535 ]
  %3614 = phi float [ %3525, %3519 ], [ %3525, %3580 ], [ %3525, %3578 ], [ %3525, %3565 ], [ %3559, %3535 ]
  %3615 = phi float [ %2846, %3519 ], [ %2846, %3580 ], [ %2846, %3578 ], [ %2846, %3565 ], [ %3550, %3535 ]
  %3616 = phi float [ %2849, %3519 ], [ %2849, %3580 ], [ %2849, %3578 ], [ %2849, %3565 ], [ %3562, %3535 ]
  %3617 = and i32 %3527, 12
  %3618 = icmp eq i32 %3617, 12
  br i1 %3618, label %3691, label %3619

; <label>:3619                                    ; preds = %3608
  %3620 = and i32 %3527, 2097184
  %3621 = icmp eq i32 %3620, 2097184
  %3622 = select i1 %3621, float %3147, float 0.000000e+00
  %3623 = and i32 %3527, 4194336
  %3624 = icmp eq i32 %3623, 4194336
  %3625 = select i1 %3624, float %3147, float 0.000000e+00
  %3626 = and i32 %3527, 8388640
  %3627 = icmp eq i32 %3626, 8388640
  %3628 = select i1 %3627, float %3147, float 0.000000e+00
  %3629 = icmp eq i32 %3617, 0
  br i1 %3629, label %3630, label %3643

; <label>:3630                                    ; preds = %3619
  %3631 = fsub fast float %3448, %2838
  %3632 = fsub fast float %3449, %2839
  %3633 = fmul fast float %3622, %3631
  %3634 = fmul fast float %3622, %3632
  %3635 = fadd fast float %3633, %2838
  %3636 = fadd fast float %3634, %2839
  %3637 = fsub fast float %3450, %2848
  %3638 = fmul fast float %3625, %3637
  %3639 = fadd fast float %3638, %2848
  %3640 = fsub fast float %3447, %2847
  %3641 = fmul fast float %3628, %3640
  %3642 = fadd fast float %3641, %2847
  br label %3691

; <label>:3643                                    ; preds = %3619
  %3644 = icmp eq i32 %3617, 4
  br i1 %3644, label %3645, label %3677

; <label>:3645                                    ; preds = %3643
  %3646 = fmul fast float %3622, %3448
  %3647 = fmul fast float %3622, %3449
  %3648 = fadd fast float %3646, %2838
  %3649 = fadd fast float %3647, %2839
  %3650 = call float @dx.op.binary.f32(i32 36, float %2848, float %3450)  ; FMin(a,b)
  %3651 = fsub fast float %3650, %2848
  %3652 = fmul fast float %3651, %3625
  %3653 = fadd fast float %3652, %2848
  %3654 = fadd fast float %3447, %2847
  %3655 = fmul fast float %3654, 0x3FF337FAE0000000
  %3656 = fmul fast float %2847, %2847
  %3657 = fmul fast float %3447, %3447
  %3658 = fadd fast float %3657, %3656
  %3659 = fmul fast float %3658, 0x3FE5152B00000000
  %3660 = fmul fast float %2847, 0xBFCC1F85E0000000
  %3661 = fmul fast float %3660, %3447
  %3662 = fadd fast float %3661, 0xBFE1363700000000
  %3663 = fadd fast float %3662, %3655
  %3664 = fsub fast float %3663, %3659
  %3665 = fmul fast float %3654, 0x3FBA6F0D00000000
  %3666 = fmul fast float %3658, 0x3FD0432880000000
  %3667 = fmul fast float %2847, 0xBFEF110800000000
  %3668 = fmul fast float %3667, %3447
  %3669 = fadd fast float %3668, 1.000000e+00
  %3670 = fsub fast float %3669, %3665
  %3671 = fadd fast float %3670, %3666
  %3672 = fdiv fast float %3664, %3671
  %3673 = call float @dx.op.unary.f32(i32 7, float %3672)  ; Saturate(value)
  %3674 = fsub fast float %3673, %2847
  %3675 = fmul fast float %3674, %3628
  %3676 = fadd fast float %3675, %2847
  br label %3691

; <label>:3677                                    ; preds = %3643
  %3678 = icmp eq i32 %3617, 8
  br i1 %3678, label %3679, label %3691

; <label>:3679                                    ; preds = %3677
  %3680 = fmul fast float %3622, %3448
  %3681 = fmul fast float %3622, %3449
  %3682 = fadd fast float %3680, %2838
  %3683 = fadd fast float %3681, %2839
  %3684 = call float @dx.op.binary.f32(i32 36, float %2848, float %3450)  ; FMin(a,b)
  %3685 = fsub fast float %3684, %2848
  %3686 = fmul fast float %3685, %3625
  %3687 = fadd fast float %3686, %2848
  %3688 = fsub fast float %3447, %2847
  %3689 = fmul fast float %3628, %3688
  %3690 = fadd fast float %3689, %2847
  br label %3691

; <label>:3691                                    ; preds = %3679, %3677, %3645, %3630, %3608, %3146, %2850, %2837
  %3692 = phi float [ %2838, %3608 ], [ %2838, %3146 ], [ %2838, %2837 ], [ %2838, %2850 ], [ %3635, %3630 ], [ %3648, %3645 ], [ %2838, %3677 ], [ %3682, %3679 ]
  %3693 = phi float [ %2839, %3608 ], [ %2839, %3146 ], [ %2839, %2837 ], [ %2839, %2850 ], [ %3636, %3630 ], [ %3649, %3645 ], [ %2839, %3677 ], [ %3683, %3679 ]
  %3694 = phi float [ %3609, %3608 ], [ %2840, %3146 ], [ %2840, %2837 ], [ %2840, %2850 ], [ %3609, %3630 ], [ %3609, %3645 ], [ %3609, %3677 ], [ %3609, %3679 ]
  %3695 = phi float [ %3610, %3608 ], [ %2841, %3146 ], [ %2841, %2837 ], [ %2841, %2850 ], [ %3610, %3630 ], [ %3610, %3645 ], [ %3610, %3677 ], [ %3610, %3679 ]
  %3696 = phi float [ %3611, %3608 ], [ %2842, %3146 ], [ %2842, %2837 ], [ %2842, %2850 ], [ %3611, %3630 ], [ %3611, %3645 ], [ %3611, %3677 ], [ %3611, %3679 ]
  %3697 = phi float [ %3612, %3608 ], [ %2843, %3146 ], [ %2843, %2837 ], [ %2843, %2850 ], [ %3612, %3630 ], [ %3612, %3645 ], [ %3612, %3677 ], [ %3612, %3679 ]
  %3698 = phi float [ %3613, %3608 ], [ %2844, %3146 ], [ %2844, %2837 ], [ %2844, %2850 ], [ %3613, %3630 ], [ %3613, %3645 ], [ %3613, %3677 ], [ %3613, %3679 ]
  %3699 = phi float [ %3614, %3608 ], [ %2845, %3146 ], [ %2845, %2837 ], [ %2845, %2850 ], [ %3614, %3630 ], [ %3614, %3645 ], [ %3614, %3677 ], [ %3614, %3679 ]
  %3700 = phi float [ %3615, %3608 ], [ %2846, %3146 ], [ %2846, %2837 ], [ %2846, %2850 ], [ %3615, %3630 ], [ %3615, %3645 ], [ %3615, %3677 ], [ %3615, %3679 ]
  %3701 = phi float [ %2847, %3608 ], [ %2847, %3146 ], [ %2847, %2837 ], [ %2847, %2850 ], [ %3642, %3630 ], [ %3676, %3645 ], [ %2847, %3677 ], [ %3690, %3679 ]
  %3702 = phi float [ %2848, %3608 ], [ %2848, %3146 ], [ %2848, %2837 ], [ %2848, %2850 ], [ %3639, %3630 ], [ %3653, %3645 ], [ %2848, %3677 ], [ %3687, %3679 ]
  %3703 = phi float [ %3616, %3608 ], [ %2849, %3146 ], [ %2849, %2837 ], [ %2849, %2850 ], [ %3616, %3630 ], [ %3616, %3645 ], [ %3616, %3677 ], [ %3616, %3679 ]
  %3704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3705 = extractvalue %dx.types.CBufRet.f32 %3704, 0
  %3706 = call float @dx.op.dot2.f32(i32 54, float %3692, float %3693, float %3692, float %3693)  ; Dot2(ax,ay,bx,by)
  %3707 = fmul fast float %3706, 0x3FE3333340000000
  %3708 = fsub fast float 1.000000e+00, %3707
  %3709 = call float @dx.op.dot3.f32(i32 55, float %3692, float %3693, float %3708, float %3692, float %3693, float %3708)  ; Dot3(ax,ay,az,bx,by,bz)
  %3710 = call float @dx.op.unary.f32(i32 25, float %3709)  ; Rsqrt(value)
  %3711 = fmul fast float %3710, %3692
  %3712 = fmul fast float %3710, %3693
  %3713 = fmul fast float %3708, %3710
  %3714 = fmul fast float %3713, %111
  %3715 = fmul fast float %3713, %112
  %3716 = fmul fast float %3713, %113
  %3717 = fmul fast float %3711, %76
  %3718 = fmul fast float %3711, %77
  %3719 = fmul fast float %3711, %78
  %3720 = fadd fast float %3714, %3717
  %3721 = fadd fast float %3715, %3718
  %3722 = fadd fast float %3716, %3719
  %3723 = fmul fast float %123, %3712
  %3724 = fmul fast float %124, %3712
  %3725 = fmul fast float %125, %3712
  %3726 = fadd fast float %3720, %3723
  %3727 = fadd fast float %3721, %3724
  %3728 = fadd fast float %3722, %3725
  %3729 = call float @dx.op.dot3.f32(i32 55, float %3726, float %3727, float %3728, float %3726, float %3727, float %3728)  ; Dot3(ax,ay,az,bx,by,bz)
  %3730 = call float @dx.op.unary.f32(i32 25, float %3729)  ; Rsqrt(value)
  %3731 = fmul fast float %3726, %3730
  %3732 = fmul fast float %3727, %3730
  %3733 = fmul fast float %3728, %3730
  %3734 = and i32 %62, 1
  %3735 = icmp eq i32 %3734, 0
  br i1 %3735, label %3736, label %4248

; <label>:3736                                    ; preds = %3691
  %3737 = call float @dx.op.unary.f32(i32 83, float %167)  ; DerivCoarseX(value)
  %3738 = call float @dx.op.unary.f32(i32 83, float %168)  ; DerivCoarseX(value)
  %3739 = call float @dx.op.unary.f32(i32 83, float %169)  ; DerivCoarseX(value)
  %3740 = call float @dx.op.unary.f32(i32 84, float %167)  ; DerivCoarseY(value)
  %3741 = call float @dx.op.unary.f32(i32 84, float %168)  ; DerivCoarseY(value)
  %3742 = call float @dx.op.unary.f32(i32 84, float %169)  ; DerivCoarseY(value)
  %3743 = fadd fast float %3737, %167
  %3744 = fadd fast float %3738, %168
  %3745 = fadd fast float %3739, %169
  %3746 = fadd fast float %3740, %167
  %3747 = fadd fast float %3741, %168
  %3748 = fadd fast float %3742, %169
  %3749 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3750 = extractvalue %dx.types.CBufRet.f32 %3749, 0
  %3751 = extractvalue %dx.types.CBufRet.f32 %3749, 1
  %3752 = extractvalue %dx.types.CBufRet.f32 %3749, 2
  %3753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %3754 = extractvalue %dx.types.CBufRet.f32 %3753, 2
  %3755 = extractvalue %dx.types.CBufRet.f32 %3753, 3
  %3756 = fmul fast float %3750, %104
  %3757 = fmul fast float %3756, %3754
  %3758 = fmul fast float %3751, %105
  %3759 = fmul fast float %3758, %3755
  %3760 = fptoui float %3757 to i32
  %3761 = fptoui float %3759 to i32
  %3762 = fadd fast float %3750, -1.000000e+00
  %3763 = fadd fast float %3751, -1.000000e+00
  %3764 = fptoui float %3762 to i32
  %3765 = fptoui float %3763 to i32
  %3766 = call i32 @dx.op.binary.i32(i32 40, i32 %3760, i32 %3764)  ; UMin(a,b)
  %3767 = call i32 @dx.op.binary.i32(i32 40, i32 %3761, i32 %3765)  ; UMin(a,b)
  %3768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3769 = extractvalue %dx.types.CBufRet.f32 %3768, 2
  %3770 = extractvalue %dx.types.CBufRet.f32 %3768, 3
  %3771 = fmul fast float %3769, %92
  %3772 = fsub fast float %3771, %3770
  %3773 = fadd fast float %3752, -1.000000e+00
  %3774 = call float @dx.op.binary.f32(i32 36, float %3772, float %3773)  ; FMin(a,b)
  %3775 = fptoui float %3774 to i32
  %3776 = fptoui float %3750 to i32
  %3777 = fptoui float %3751 to i32
  %3778 = mul i32 %3775, %3777
  %3779 = add i32 %3778, %3767
  %3780 = mul i32 %3779, %3776
  %3781 = add i32 %3780, %3766
  %3782 = shl i32 %3781, 2
  %3783 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %3782, i32 undef)  ; BufferLoad(srv,index,wot)
  %3784 = extractvalue %dx.types.ResRet.i32 %3783, 0
  %3785 = and i32 %3784, 1023
  %3786 = lshr i32 %3784, 10
  %3787 = icmp eq i32 %3785, 0
  br i1 %3787, label %4216, label %3788

; <label>:3788                                    ; preds = %3736
  %3789 = and i32 %3784, 1023
  br label %3790

; <label>:3790                                    ; preds = %3917, %3788
  %3791 = phi i32 [ %3867, %3917 ], [ 0, %3788 ]
  %3792 = phi float [ %3918, %3917 ], [ 0.000000e+00, %3788 ]
  %3793 = phi float [ %3919, %3917 ], [ %1138, %3788 ]
  %3794 = phi float [ %3920, %3917 ], [ %3705, %3788 ]
  %3795 = phi float [ %3921, %3917 ], [ %3703, %3788 ]
  %3796 = phi float [ %3922, %3917 ], [ 0.000000e+00, %3788 ]
  %3797 = phi float [ %3923, %3917 ], [ 0.000000e+00, %3788 ]
  %3798 = phi float [ %3924, %3917 ], [ %3697, %3788 ]
  %3799 = phi float [ %3925, %3917 ], [ %3698, %3788 ]
  %3800 = phi float [ %3926, %3917 ], [ %3699, %3788 ]
  %3801 = phi float [ %3927, %3917 ], [ %3731, %3788 ]
  %3802 = phi float [ %3928, %3917 ], [ %3732, %3788 ]
  %3803 = phi float [ %3929, %3917 ], [ %3733, %3788 ]
  %3804 = phi float [ %3930, %3917 ], [ %3702, %3788 ]
  %3805 = phi float [ %3931, %3917 ], [ %3701, %3788 ]
  %3806 = phi float [ %3932, %3917 ], [ 0.000000e+00, %3788 ]
  %3807 = phi float [ %3933, %3917 ], [ %3700, %3788 ]
  %3808 = phi float [ %3934, %3917 ], [ %3694, %3788 ]
  %3809 = phi float [ %3935, %3917 ], [ %3695, %3788 ]
  %3810 = phi float [ %3936, %3917 ], [ %3696, %3788 ]
  %3811 = add nuw nsw i32 %3791, %3786
  %3812 = shl i32 %3811, 2
  %3813 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %3812, i32 undef)  ; BufferLoad(srv,index,wot)
  %3814 = extractvalue %dx.types.ResRet.i32 %3813, 0
  %3815 = shl i32 %3814, 8
  %3816 = or i32 %3815, 48
  %3817 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3816, i32 undef)  ; BufferLoad(srv,index,wot)
  %3818 = extractvalue %dx.types.ResRet.f32 %3817, 0
  %3819 = extractvalue %dx.types.ResRet.f32 %3817, 1
  %3820 = extractvalue %dx.types.ResRet.f32 %3817, 2
  %3821 = extractvalue %dx.types.ResRet.f32 %3817, 3
  %3822 = or i32 %3815, 64
  %3823 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3822, i32 undef)  ; BufferLoad(srv,index,wot)
  %3824 = extractvalue %dx.types.ResRet.i32 %3823, 0
  %3825 = extractvalue %dx.types.ResRet.i32 %3823, 1
  %3826 = or i32 %3815, 80
  %3827 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3826, i32 undef)  ; BufferLoad(srv,index,wot)
  %3828 = extractvalue %dx.types.ResRet.f32 %3827, 2
  %3829 = extractvalue %dx.types.ResRet.f32 %3827, 3
  %3830 = or i32 %3815, 96
  %3831 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3830, i32 undef)  ; BufferLoad(srv,index,wot)
  %3832 = extractvalue %dx.types.ResRet.f32 %3831, 0
  %3833 = extractvalue %dx.types.ResRet.f32 %3831, 1
  %3834 = extractvalue %dx.types.ResRet.f32 %3831, 2
  %3835 = extractvalue %dx.types.ResRet.f32 %3831, 3
  %3836 = or i32 %3815, 112
  %3837 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3836, i32 undef)  ; BufferLoad(srv,index,wot)
  %3838 = extractvalue %dx.types.ResRet.f32 %3837, 2
  %3839 = or i32 %3815, 128
  %3840 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3839, i32 undef)  ; BufferLoad(srv,index,wot)
  %3841 = extractvalue %dx.types.ResRet.f32 %3840, 0
  %3842 = extractvalue %dx.types.ResRet.f32 %3840, 1
  %3843 = extractvalue %dx.types.ResRet.f32 %3840, 2
  %3844 = extractvalue %dx.types.ResRet.f32 %3840, 3
  %3845 = or i32 %3815, 144
  %3846 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3845, i32 undef)  ; BufferLoad(srv,index,wot)
  %3847 = extractvalue %dx.types.ResRet.f32 %3846, 0
  %3848 = extractvalue %dx.types.ResRet.f32 %3846, 1
  %3849 = extractvalue %dx.types.ResRet.f32 %3846, 2
  %3850 = extractvalue %dx.types.ResRet.f32 %3846, 3
  %3851 = or i32 %3815, 160
  %3852 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3851, i32 undef)  ; BufferLoad(srv,index,wot)
  %3853 = extractvalue %dx.types.ResRet.f32 %3852, 0
  %3854 = extractvalue %dx.types.ResRet.f32 %3852, 1
  %3855 = extractvalue %dx.types.ResRet.f32 %3852, 2
  %3856 = extractvalue %dx.types.ResRet.f32 %3852, 3
  %3857 = or i32 %3815, 192
  %3858 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3857, i32 undef)  ; BufferLoad(srv,index,wot)
  %3859 = extractvalue %dx.types.ResRet.i32 %3858, 0
  %3860 = or i32 %3815, 208
  %3861 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3860, i32 undef)  ; BufferLoad(srv,index,wot)
  %3862 = extractvalue %dx.types.ResRet.f32 %3861, 0
  %3863 = or i32 %3815, 248
  %3864 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3863, i32 undef)  ; BufferLoad(srv,index,wot)
  %3865 = extractvalue %dx.types.ResRet.f32 %3864, 0
  %3866 = extractvalue %dx.types.ResRet.f32 %3864, 1
  %3867 = add nuw nsw i32 %3791, 1
  %3868 = bitcast float %3821 to i32
  %3869 = and i32 %3868, 512
  %3870 = icmp eq i32 %3869, 0
  %3871 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3815, i32 undef)  ; BufferLoad(srv,index,wot)
  %3872 = extractvalue %dx.types.ResRet.f32 %3871, 0
  %3873 = extractvalue %dx.types.ResRet.f32 %3871, 1
  %3874 = extractvalue %dx.types.ResRet.f32 %3871, 2
  %3875 = extractvalue %dx.types.ResRet.f32 %3871, 3
  %3876 = call float @dx.op.dot4.f32(i32 56, float %3872, float %3873, float %3874, float %3875, float %167, float %168, float %169, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3877 = or i32 %3815, 16
  %3878 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3877, i32 undef)  ; BufferLoad(srv,index,wot)
  %3879 = extractvalue %dx.types.ResRet.f32 %3878, 0
  %3880 = extractvalue %dx.types.ResRet.f32 %3878, 1
  %3881 = extractvalue %dx.types.ResRet.f32 %3878, 2
  %3882 = extractvalue %dx.types.ResRet.f32 %3878, 3
  %3883 = call float @dx.op.dot4.f32(i32 56, float %3879, float %3880, float %3881, float %3882, float %167, float %168, float %169, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3884 = or i32 %3815, 32
  %3885 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3884, i32 undef)  ; BufferLoad(srv,index,wot)
  %3886 = extractvalue %dx.types.ResRet.f32 %3885, 0
  %3887 = extractvalue %dx.types.ResRet.f32 %3885, 1
  %3888 = extractvalue %dx.types.ResRet.f32 %3885, 2
  %3889 = extractvalue %dx.types.ResRet.f32 %3885, 3
  %3890 = call float @dx.op.dot4.f32(i32 56, float %3886, float %3887, float %3888, float %3889, float %167, float %168, float %169, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3891 = call float @dx.op.unary.f32(i32 27, float %3876)  ; Round_ni(value)
  %3892 = call float @dx.op.unary.f32(i32 6, float %3891)  ; FAbs(value)
  %3893 = call float @dx.op.unary.f32(i32 27, float %3883)  ; Round_ni(value)
  %3894 = call float @dx.op.unary.f32(i32 6, float %3893)  ; FAbs(value)
  %3895 = call float @dx.op.unary.f32(i32 6, float %3890)  ; FAbs(value)
  %3896 = call float @dx.op.unary.f32(i32 27, float %3895)  ; Round_ni(value)
  %3897 = fadd fast float %3894, %3892
  %3898 = fadd fast float %3897, %3896
  %3899 = fcmp fast oeq float %3898, 0.000000e+00
  %3900 = call float @dx.op.dot4.f32(i32 56, float %3872, float %3873, float %3874, float %3875, float %3743, float %3744, float %3745, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3901 = call float @dx.op.dot4.f32(i32 56, float %3879, float %3880, float %3881, float %3882, float %3743, float %3744, float %3745, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3902 = call float @dx.op.dot4.f32(i32 56, float %3872, float %3873, float %3874, float %3875, float %3746, float %3747, float %3748, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3903 = call float @dx.op.dot4.f32(i32 56, float %3879, float %3880, float %3881, float %3882, float %3746, float %3747, float %3748, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3904 = fsub fast float %3900, %3876
  %3905 = fsub fast float %3902, %3876
  %3906 = fsub fast float %3901, %3883
  %3907 = fsub fast float %3903, %3883
  %3908 = call float @dx.op.dot3.f32(i32 55, float %3818, float %3819, float %3820, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %3909 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3910 = extractvalue %dx.types.CBufRet.f32 %3909, 2
  %3911 = fadd fast float %3910, %3908
  %3912 = call float @dx.op.unary.f32(i32 7, float %3911)  ; Saturate(value)
  %3913 = extractvalue %dx.types.CBufRet.f32 %3909, 0
  %3914 = fcmp fast ogt float %3912, %3913
  %3915 = and i1 %3899, %3914
  %3916 = and i1 %3870, %3915
  br i1 %3916, label %3938, label %3917

; <label>:3917                                    ; preds = %4202, %4019, %3938, %3790
  %3918 = phi float [ %3792, %3938 ], [ %4022, %4019 ], [ %4022, %4202 ], [ %3792, %3790 ]
  %3919 = phi float [ %3793, %3938 ], [ %3793, %4019 ], [ %4177, %4202 ], [ %3793, %3790 ]
  %3920 = phi float [ %3794, %3938 ], [ %3794, %4019 ], [ %4176, %4202 ], [ %3794, %3790 ]
  %3921 = phi float [ %3795, %3938 ], [ %3795, %4019 ], [ %4174, %4202 ], [ %3795, %3790 ]
  %3922 = phi float [ %3796, %3938 ], [ %3796, %4019 ], [ %4146, %4202 ], [ %3796, %3790 ]
  %3923 = phi float [ %3797, %3938 ], [ %3797, %4019 ], [ %4144, %4202 ], [ %3797, %3790 ]
  %3924 = phi float [ %3798, %3938 ], [ %3798, %4019 ], [ %4212, %4202 ], [ %3798, %3790 ]
  %3925 = phi float [ %3799, %3938 ], [ %3799, %4019 ], [ %4213, %4202 ], [ %3799, %3790 ]
  %3926 = phi float [ %3800, %3938 ], [ %3800, %4019 ], [ %4214, %4202 ], [ %3800, %3790 ]
  %3927 = phi float [ %3801, %3938 ], [ %3801, %4019 ], [ %4125, %4202 ], [ %3801, %3790 ]
  %3928 = phi float [ %3802, %3938 ], [ %3802, %4019 ], [ %4126, %4202 ], [ %3802, %3790 ]
  %3929 = phi float [ %3803, %3938 ], [ %3803, %4019 ], [ %4127, %4202 ], [ %3803, %3790 ]
  %3930 = phi float [ %3804, %3938 ], [ %3804, %4019 ], [ %4154, %4202 ], [ %3804, %3790 ]
  %3931 = phi float [ %3805, %3938 ], [ %3805, %4019 ], [ %4151, %4202 ], [ %3805, %3790 ]
  %3932 = phi float [ %3806, %3938 ], [ %3806, %4019 ], [ %4148, %4202 ], [ %3806, %3790 ]
  %3933 = phi float [ %3807, %3938 ], [ %3807, %4019 ], [ %4142, %4202 ], [ %3807, %3790 ]
  %3934 = phi float [ %3808, %3938 ], [ %3808, %4019 ], [ %4137, %4202 ], [ %3808, %3790 ]
  %3935 = phi float [ %3809, %3938 ], [ %3809, %4019 ], [ %4138, %4202 ], [ %3809, %3790 ]
  %3936 = phi float [ %3810, %3938 ], [ %3810, %4019 ], [ %4139, %4202 ], [ %3810, %3790 ]
  %3937 = icmp eq i32 %3867, %3789
  br i1 %3937, label %4215, label %3790

; <label>:3938                                    ; preds = %3790
  %3939 = extractvalue %dx.types.ResRet.f32 %3837, 3
  %3940 = extractvalue %dx.types.ResRet.f32 %3837, 1
  %3941 = extractvalue %dx.types.ResRet.f32 %3837, 0
  %3942 = extractvalue %dx.types.ResRet.f32 %3827, 1
  %3943 = extractvalue %dx.types.ResRet.f32 %3827, 0
  %3944 = extractvalue %dx.types.ResRet.i32 %3823, 3
  %3945 = extractvalue %dx.types.ResRet.i32 %3823, 2
  %3946 = add i32 %3944, 0
  %3947 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3946, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3948 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3949 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3947, %dx.types.Handle %3948, float %3876, float %3883, float undef, float undef, i32 0, i32 0, i32 undef, float %3904, float %3906, float undef, float %3905, float %3907, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3950 = extractvalue %dx.types.ResRet.f32 %3949, 0
  %3951 = fmul fast float %3950, %3943
  %3952 = fadd fast float %3951, %3942
  %3953 = call float @dx.op.unary.f32(i32 7, float %3952)  ; Saturate(value)
  %3954 = fmul fast float %3876, %3832
  %3955 = call float @dx.op.tertiary.f32(i32 46, float %3833, float %3883, float %3954)  ; FMad(a,b,c)
  %3956 = fadd fast float %3955, %3941
  %3957 = fmul fast float %3876, %3834
  %3958 = call float @dx.op.tertiary.f32(i32 46, float %3835, float %3883, float %3957)  ; FMad(a,b,c)
  %3959 = fadd fast float %3958, %3940
  %3960 = fmul fast float %3904, %3832
  %3961 = call float @dx.op.tertiary.f32(i32 46, float %3833, float %3906, float %3960)  ; FMad(a,b,c)
  %3962 = fmul fast float %3904, %3834
  %3963 = call float @dx.op.tertiary.f32(i32 46, float %3835, float %3906, float %3962)  ; FMad(a,b,c)
  %3964 = fmul fast float %3905, %3832
  %3965 = call float @dx.op.tertiary.f32(i32 46, float %3833, float %3907, float %3964)  ; FMad(a,b,c)
  %3966 = fmul fast float %3905, %3834
  %3967 = call float @dx.op.tertiary.f32(i32 46, float %3835, float %3907, float %3966)  ; FMad(a,b,c)
  %3968 = add i32 %3945, 0
  %3969 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3968, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3970 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3969, %dx.types.Handle %3948, float %3956, float %3959, float undef, float undef, i32 0, i32 0, i32 undef, float %3961, float %3963, float undef, float %3965, float %3967, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3971 = extractvalue %dx.types.ResRet.f32 %3970, 0
  %3972 = and i32 %3868, 1024
  %3973 = icmp ne i32 %3972, 0
  %3974 = fcmp fast ogt float %3971, 0x3FE0101020000000
  %3975 = uitofp i1 %3974 to float
  %3976 = select i1 %3973, float %3975, float %3971
  %3977 = and i32 %3868, 8192
  %3978 = icmp ne i32 %3977, 0
  %3979 = select i1 %3978, float %3939, float 1.000000e+00
  %3980 = fmul fast float %3876, 2.000000e+00
  %3981 = fadd fast float %3980, -1.000000e+00
  %3982 = call float @dx.op.unary.f32(i32 6, float %3981)  ; FAbs(value)
  %3983 = fmul fast float %3982, %3865
  %3984 = fsub fast float %3983, %3865
  %3985 = call float @dx.op.unary.f32(i32 7, float %3984)  ; Saturate(value)
  %3986 = fmul fast float %3883, 2.000000e+00
  %3987 = fadd fast float %3986, -1.000000e+00
  %3988 = call float @dx.op.unary.f32(i32 6, float %3987)  ; FAbs(value)
  %3989 = fmul fast float %3988, %3866
  %3990 = fsub fast float %3989, %3866
  %3991 = call float @dx.op.unary.f32(i32 7, float %3990)  ; Saturate(value)
  %3992 = fmul fast float %3895, %3828
  %3993 = fsub fast float %3992, %3828
  %3994 = call float @dx.op.unary.f32(i32 7, float %3993)  ; Saturate(value)
  %3995 = fmul fast float %3953, %3979
  %3996 = fmul fast float %3995, %3950
  %3997 = fmul fast float %3996, %3985
  %3998 = fmul fast float %3997, %3976
  %3999 = fmul fast float %3998, %3991
  %4000 = fmul fast float %3999, %3994
  %4001 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4002 = extractvalue %dx.types.CBufRet.f32 %4001, 1
  %4003 = extractvalue %dx.types.CBufRet.f32 %4001, 0
  %4004 = fsub fast float %3912, %4003
  %4005 = fmul fast float %4004, %4002
  %4006 = call float @dx.op.unary.f32(i32 7, float %4005)  ; Saturate(value)
  %4007 = fmul fast float %4000, %3829
  %4008 = fadd fast float %4000, %3829
  %4009 = fmul fast float %4008, %3838
  %4010 = fsub fast float %4009, %3838
  %4011 = call float @dx.op.unary.f32(i32 7, float %4010)  ; Saturate(value)
  %4012 = and i32 %3868, 128
  %4013 = icmp ne i32 %4012, 0
  %4014 = select i1 %4013, float %4011, float %4007
  %4015 = fmul fast float %4014, %4006
  %4016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4017 = extractvalue %dx.types.CBufRet.f32 %4016, 0
  %4018 = fcmp fast ugt float %4015, %4017
  br i1 %4018, label %4019, label %3917

; <label>:4019                                    ; preds = %3938
  %4020 = select i1 %3978, float %4015, float 0.000000e+00
  %4021 = fadd fast float %4020, %3792
  %4022 = call float @dx.op.unary.f32(i32 7, float %4021)  ; Saturate(value)
  br i1 %3978, label %3917, label %4023

; <label>:4023                                    ; preds = %4019
  %4024 = and i32 %3868, 4
  %4025 = and i32 %3868, 8
  %4026 = add i32 %3824, 0
  %4027 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4026, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4028 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4029 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4027, %dx.types.Handle %4028, float %3956, float %3959, float undef, float undef, i32 0, i32 0, i32 undef, float %3961, float %3963, float undef, float %3965, float %3967, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4030 = extractvalue %dx.types.ResRet.f32 %4029, 0
  %4031 = extractvalue %dx.types.ResRet.f32 %4029, 1
  %4032 = extractvalue %dx.types.ResRet.f32 %4029, 2
  %4033 = extractvalue %dx.types.ResRet.f32 %4029, 3
  %4034 = bitcast float %3850 to i32
  %4035 = and i32 %4034, 255
  %4036 = uitofp i32 %4035 to float
  %4037 = lshr i32 %4034, 8
  %4038 = and i32 %4037, 255
  %4039 = uitofp i32 %4038 to float
  %4040 = fmul fast float %4033, %4036
  %4041 = fadd fast float %4040, %4039
  %4042 = fmul fast float %4041, 0x3F70101000000000
  %4043 = add i32 %3825, 0
  %4044 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4043, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4045 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4044, %dx.types.Handle %4028, float %3956, float %3959, float undef, float undef, i32 0, i32 0, i32 undef, float %3961, float %3963, float undef, float %3965, float %3967, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4046 = extractvalue %dx.types.ResRet.f32 %4045, 0
  %4047 = extractvalue %dx.types.ResRet.f32 %4045, 1
  %4048 = extractvalue %dx.types.ResRet.f32 %4045, 2
  %4049 = extractvalue %dx.types.ResRet.f32 %4045, 3
  %4050 = bitcast float %3844 to i32
  %4051 = and i32 %4050, 255
  %4052 = uitofp i32 %4051 to float
  %4053 = lshr i32 %4050, 8
  %4054 = and i32 %4053, 255
  %4055 = uitofp i32 %4054 to float
  %4056 = lshr i32 %4050, 16
  %4057 = and i32 %4056, 255
  %4058 = uitofp i32 %4057 to float
  %4059 = fmul fast float %4058, 0x3F70101000000000
  %4060 = fmul fast float %4046, %4052
  %4061 = fadd fast float %4060, %4055
  %4062 = fmul fast float %4061, 0x3F70101000000000
  %4063 = fadd fast float %4047, -5.000000e-01
  %4064 = fadd fast float %4049, -5.000000e-01
  %4065 = fmul fast float %4063, %4059
  %4066 = fmul fast float %4064, %4059
  %4067 = fadd fast float %4065, 5.000000e-01
  %4068 = fadd fast float %4066, 5.000000e-01
  %4069 = fmul fast float %4030, %3853
  %4070 = fmul fast float %4031, %3854
  %4071 = fmul fast float %4032, %3855
  %4072 = fmul fast float %4067, 2.000000e+00
  %4073 = fadd fast float %4072, -1.000000e+00
  %4074 = fmul fast float %4068, 2.000000e+00
  %4075 = fadd fast float %4074, -1.000000e+00
  %4076 = fadd fast float %4073, %4075
  %4077 = fmul fast float %4076, 5.000000e-01
  %4078 = fsub fast float %4073, %4075
  %4079 = fmul fast float %4078, 5.000000e-01
  %4080 = call float @dx.op.unary.f32(i32 6, float %4077)  ; FAbs(value)
  %4081 = fsub fast float 1.000000e+00, %4080
  %4082 = call float @dx.op.unary.f32(i32 6, float %4079)  ; FAbs(value)
  %4083 = fsub fast float %4081, %4082
  %4084 = call float @dx.op.dot3.f32(i32 55, float %4077, float %4079, float %4083, float %4077, float %4079, float %4083)  ; Dot3(ax,ay,az,bx,by,bz)
  %4085 = call float @dx.op.unary.f32(i32 25, float %4084)  ; Rsqrt(value)
  %4086 = fmul fast float %4077, %4085
  %4087 = fmul fast float %4079, %4085
  %4088 = fmul fast float %4085, %4083
  %4089 = fmul fast float %4088, %3818
  %4090 = fmul fast float %4088, %3819
  %4091 = fmul fast float %4088, %3820
  %4092 = fmul fast float %4086, %3841
  %4093 = fmul fast float %4086, %3842
  %4094 = fmul fast float %4086, %3843
  %4095 = fadd fast float %4092, %4089
  %4096 = fadd fast float %4093, %4090
  %4097 = fadd fast float %4094, %4091
  %4098 = fmul fast float %4087, %3847
  %4099 = fmul fast float %4087, %3848
  %4100 = fmul fast float %4087, %3849
  %4101 = fadd fast float %4095, %4098
  %4102 = fadd fast float %4096, %4099
  %4103 = fadd fast float %4097, %4100
  %4104 = call float @dx.op.dot3.f32(i32 55, float %4101, float %4102, float %4103, float %4101, float %4102, float %4103)  ; Dot3(ax,ay,az,bx,by,bz)
  %4105 = call float @dx.op.unary.f32(i32 25, float %4104)  ; Rsqrt(value)
  %4106 = fmul fast float %4101, %4105
  %4107 = fmul fast float %4102, %4105
  %4108 = fmul fast float %4103, %4105
  %4109 = icmp ne i32 %4025, 0
  %4110 = select i1 %4109, float 1.000000e+00, float 0.000000e+00
  %4111 = fmul fast float %4015, %4110
  %4112 = and i32 %3868, 1
  %4113 = icmp eq i32 %4112, 0
  br i1 %4113, label %4114, label %4118

; <label>:4114                                    ; preds = %4023
  %4115 = fsub fast float %4106, %3801
  %4116 = fsub fast float %4107, %3802
  %4117 = fsub fast float %4108, %3803
  br label %4118

; <label>:4118                                    ; preds = %4114, %4023
  %4119 = phi float [ %4115, %4114 ], [ %4106, %4023 ]
  %4120 = phi float [ %4116, %4114 ], [ %4107, %4023 ]
  %4121 = phi float [ %4117, %4114 ], [ %4108, %4023 ]
  %4122 = fmul float %4121, %4111
  %4123 = fmul float %4120, %4111
  %4124 = fmul float %4119, %4111
  %4125 = fadd fast float %4124, %3801
  %4126 = fadd fast float %4123, %3802
  %4127 = fadd fast float %4122, %3803
  %4128 = icmp ne i32 %4024, 0
  %4129 = select i1 %4128, float 1.000000e+00, float 0.000000e+00
  %4130 = fmul fast float %4015, %4129
  %4131 = fsub fast float %4069, %3808
  %4132 = fsub fast float %4070, %3809
  %4133 = fsub fast float %4071, %3810
  %4134 = fmul fast float %4131, %4130
  %4135 = fmul fast float %4132, %4130
  %4136 = fmul fast float %4133, %4130
  %4137 = fadd fast float %4134, %3808
  %4138 = fadd fast float %4135, %3809
  %4139 = fadd fast float %4136, %3810
  %4140 = fsub fast float %4042, %3807
  %4141 = fmul fast float %4140, %4130
  %4142 = fadd fast float %4141, %3807
  %4143 = fmul fast float %4130, %3797
  %4144 = fsub fast float %3797, %4143
  %4145 = fmul fast float %4130, %3796
  %4146 = fsub fast float %3796, %4145
  %4147 = fadd fast float %4015, %3806
  %4148 = call float @dx.op.unary.f32(i32 7, float %4147)  ; Saturate(value)
  %4149 = fsub fast float %4062, %3805
  %4150 = fmul fast float %4149, %4111
  %4151 = fadd fast float %4150, %3805
  %4152 = fsub fast float %4048, %3804
  %4153 = fmul fast float %4152, %4111
  %4154 = fadd fast float %4153, %3804
  %4155 = call float @dx.op.dot3.f32(i32 55, float %4069, float %4070, float %4071, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4157 = extractvalue %dx.types.CBufRet.f32 %4156, 0
  %4158 = extractvalue %dx.types.CBufRet.f32 %4156, 1
  %4159 = fmul fast float %4158, %4155
  %4160 = fadd fast float %4159, %4157
  %4161 = call float @dx.op.unary.f32(i32 7, float %4160)  ; Saturate(value)
  %4162 = bitcast float %3856 to i32
  %4163 = and i32 %4162, 65535
  %4164 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4163)  ; LegacyF16ToF32(value)
  %4165 = lshr i32 %4162, 16
  %4166 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4165)  ; LegacyF16ToF32(value)
  %4167 = fcmp fast oge float %4164, 0.000000e+00
  %4168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4169 = extractvalue %dx.types.CBufRet.f32 %4168, 0
  %4170 = select i1 %4167, float %4164, float %4169
  %4171 = fadd fast float %4170, %4166
  %4172 = fsub fast float %4161, %3795
  %4173 = fmul fast float %4172, %4015
  %4174 = fadd fast float %4173, %3795
  %4175 = fmul fast float %4171, %4015
  %4176 = call float @dx.op.binary.f32(i32 35, float %3794, float %4175)  ; FMax(a,b)
  %4177 = call float @dx.op.binary.f32(i32 35, float %3793, float %4015)  ; FMax(a,b)
  %4178 = and i32 %3868, 16
  %4179 = icmp eq i32 %4178, 0
  br i1 %4179, label %4202, label %4180

; <label>:4180                                    ; preds = %4118
  %4181 = bitcast float %3862 to i32
  %4182 = add i32 %3859, 0
  %4183 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4182, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4184 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4183, %dx.types.Handle %4028, float %3956, float %3959, float undef, float undef, i32 0, i32 0, i32 undef, float %3961, float %3963, float undef, float %3965, float %3967, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4185 = extractvalue %dx.types.ResRet.f32 %4184, 0
  %4186 = extractvalue %dx.types.ResRet.f32 %4184, 1
  %4187 = extractvalue %dx.types.ResRet.f32 %4184, 2
  %4188 = and i32 %4181, 65535
  %4189 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4188)  ; LegacyF16ToF32(value)
  %4190 = fmul fast float %4185, %3853
  %4191 = fmul fast float %4186, %3854
  %4192 = fmul fast float %4187, %3855
  %4193 = and i32 %3868, 16384
  %4194 = icmp ne i32 %4193, 0
  %4195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4196 = extractvalue %dx.types.CBufRet.f32 %4195, 0
  %4197 = select i1 %4194, float %4196, float 1.000000e+00
  %4198 = fmul fast float %4197, %4189
  %4199 = fmul fast float %4190, %4198
  %4200 = fmul fast float %4191, %4198
  %4201 = fmul fast float %4192, %4198
  br label %4202

; <label>:4202                                    ; preds = %4180, %4118
  %4203 = phi float [ %4199, %4180 ], [ 0.000000e+00, %4118 ]
  %4204 = phi float [ %4200, %4180 ], [ 0.000000e+00, %4118 ]
  %4205 = phi float [ %4201, %4180 ], [ 0.000000e+00, %4118 ]
  %4206 = fsub fast float %4203, %3798
  %4207 = fsub fast float %4204, %3799
  %4208 = fsub fast float %4205, %3800
  %4209 = fmul fast float %4206, %4015
  %4210 = fmul fast float %4207, %4015
  %4211 = fmul fast float %4208, %4015
  %4212 = fadd fast float %4209, %3798
  %4213 = fadd fast float %4210, %3799
  %4214 = fadd fast float %4211, %3800
  br label %3917

; <label>:4215                                    ; preds = %3917
  br label %4216

; <label>:4216                                    ; preds = %4215, %3736
  %4217 = phi float [ 0.000000e+00, %3736 ], [ %3918, %4215 ]
  %4218 = phi float [ %1138, %3736 ], [ %3919, %4215 ]
  %4219 = phi float [ %3705, %3736 ], [ %3920, %4215 ]
  %4220 = phi float [ %3703, %3736 ], [ %3921, %4215 ]
  %4221 = phi float [ 0.000000e+00, %3736 ], [ %3922, %4215 ]
  %4222 = phi float [ 0.000000e+00, %3736 ], [ %3923, %4215 ]
  %4223 = phi float [ %3697, %3736 ], [ %3924, %4215 ]
  %4224 = phi float [ %3698, %3736 ], [ %3925, %4215 ]
  %4225 = phi float [ %3699, %3736 ], [ %3926, %4215 ]
  %4226 = phi float [ %3731, %3736 ], [ %3927, %4215 ]
  %4227 = phi float [ %3732, %3736 ], [ %3928, %4215 ]
  %4228 = phi float [ %3733, %3736 ], [ %3929, %4215 ]
  %4229 = phi float [ %3702, %3736 ], [ %3930, %4215 ]
  %4230 = phi float [ %3701, %3736 ], [ %3931, %4215 ]
  %4231 = phi float [ 0.000000e+00, %3736 ], [ %3932, %4215 ]
  %4232 = phi float [ %3700, %3736 ], [ %3933, %4215 ]
  %4233 = phi float [ %3694, %3736 ], [ %3934, %4215 ]
  %4234 = phi float [ %3695, %3736 ], [ %3935, %4215 ]
  %4235 = phi float [ %3696, %3736 ], [ %3936, %4215 ]
  %4236 = call float @dx.op.dot3.f32(i32 55, float %4226, float %4227, float %4228, float %4226, float %4227, float %4228)  ; Dot3(ax,ay,az,bx,by,bz)
  %4237 = call float @dx.op.unary.f32(i32 25, float %4236)  ; Rsqrt(value)
  %4238 = fmul fast float %4237, %4226
  %4239 = fmul fast float %4237, %4227
  %4240 = fmul fast float %4237, %4228
  %4241 = fadd fast float %4231, %1138
  %4242 = call float @dx.op.unary.f32(i32 7, float %4241)  ; Saturate(value)
  %4243 = call float @dx.op.dot3.f32(i32 55, float %4238, float %4239, float %4240, float %4238, float %4239, float %4240)  ; Dot3(ax,ay,az,bx,by,bz)
  %4244 = call float @dx.op.unary.f32(i32 25, float %4243)  ; Rsqrt(value)
  %4245 = fmul fast float %4244, %4238
  %4246 = fmul fast float %4244, %4239
  %4247 = fmul fast float %4244, %4240
  br label %4248

; <label>:4248                                    ; preds = %4216, %3691
  %4249 = phi float [ %4245, %4216 ], [ %3731, %3691 ]
  %4250 = phi float [ %4246, %4216 ], [ %3732, %3691 ]
  %4251 = phi float [ %4247, %4216 ], [ %3733, %3691 ]
  %4252 = phi float [ %4233, %4216 ], [ %3694, %3691 ]
  %4253 = phi float [ %4234, %4216 ], [ %3695, %3691 ]
  %4254 = phi float [ %4235, %4216 ], [ %3696, %3691 ]
  %4255 = phi float [ %4223, %4216 ], [ %3697, %3691 ]
  %4256 = phi float [ %4224, %4216 ], [ %3698, %3691 ]
  %4257 = phi float [ %4225, %4216 ], [ %3699, %3691 ]
  %4258 = phi float [ %4232, %4216 ], [ %3700, %3691 ]
  %4259 = phi float [ %4242, %4216 ], [ %1138, %3691 ]
  %4260 = phi float [ %4230, %4216 ], [ %3701, %3691 ]
  %4261 = phi float [ %4229, %4216 ], [ %3702, %3691 ]
  %4262 = phi float [ %4222, %4216 ], [ 0.000000e+00, %3691 ]
  %4263 = phi float [ %4221, %4216 ], [ 0.000000e+00, %3691 ]
  %4264 = phi float [ %4217, %4216 ], [ 0.000000e+00, %3691 ]
  %4265 = phi float [ %4219, %4216 ], [ %3705, %3691 ]
  %4266 = phi float [ %4218, %4216 ], [ %1138, %3691 ]
  %4267 = phi float [ %4220, %4216 ], [ %3703, %3691 ]
  %4268 = fadd fast float %4258, 0xBFB99999A0000000
  %4269 = call float @dx.op.unary.f32(i32 7, float %4268)  ; Saturate(value)
  %4270 = fmul fast float %4269, 0x3FF1C71C80000000
  %4271 = call float @dx.op.binary.f32(i32 36, float %4258, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4272 = fsub fast float 1.000000e+00, %4270
  %4273 = call float @dx.op.unary.f32(i32 7, float %4272)  ; Saturate(value)
  %4274 = fmul fast float %4273, %4252
  %4275 = fmul fast float %4273, %4253
  %4276 = fmul fast float %4273, %4254
  %4277 = call float @dx.op.unary.f32(i32 7, float %4274)  ; Saturate(value)
  %4278 = call float @dx.op.unary.f32(i32 7, float %4275)  ; Saturate(value)
  %4279 = call float @dx.op.unary.f32(i32 7, float %4276)  ; Saturate(value)
  %4280 = fmul fast float %4270, %4252
  %4281 = fmul fast float %4270, %4253
  %4282 = fmul fast float %4270, %4254
  %4283 = fadd fast float %4280, %4271
  %4284 = fadd fast float %4281, %4271
  %4285 = fadd fast float %4282, %4271
  %4286 = call float @dx.op.unary.f32(i32 7, float %4283)  ; Saturate(value)
  %4287 = call float @dx.op.unary.f32(i32 7, float %4284)  ; Saturate(value)
  %4288 = call float @dx.op.unary.f32(i32 7, float %4285)  ; Saturate(value)
  %4289 = call float @dx.op.unary.f32(i32 7, float %4260)  ; Saturate(value)
  %4290 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4291 = extractvalue %dx.types.CBufRet.i32 %4290, 3
  %4292 = and i32 %4291, 8
  %4293 = icmp ne i32 %4292, 0
  %4294 = call float @dx.op.binary.f32(i32 35, float %4277, float %4252)  ; FMax(a,b)
  %4295 = call float @dx.op.binary.f32(i32 35, float %4278, float %4252)  ; FMax(a,b)
  %4296 = call float @dx.op.binary.f32(i32 35, float %4279, float %4252)  ; FMax(a,b)
  %4297 = call float @dx.op.dot3.f32(i32 55, float %4277, float %4278, float %4279, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4298 = select i1 %228, float %4252, float %4277
  %4299 = select i1 %228, float %4297, float %4278
  %4300 = select i1 %228, float 1.000000e+00, float %4279
  %4301 = select i1 %4293, float %4294, float %4298
  %4302 = select i1 %4293, float %4295, float %4299
  %4303 = select i1 %4293, float %4296, float %4300
  %4304 = and i32 %204, 3
  %4305 = select i1 %198, i32 %4304, i32 0
  %4306 = icmp eq i32 %4305, 1
  br i1 %4306, label %4307, label %4383

; <label>:4307                                    ; preds = %4248
  %4308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4309 = extractvalue %dx.types.CBufRet.f32 %4308, 0
  %4310 = extractvalue %dx.types.CBufRet.f32 %4308, 1
  %4311 = fadd fast float %4309, %167
  %4312 = fadd fast float %4310, %168
  %4313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4314 = extractvalue %dx.types.CBufRet.f32 %4313, 0
  %4315 = extractvalue %dx.types.CBufRet.f32 %4313, 1
  %4316 = fsub fast float %4311, %4314
  %4317 = fsub fast float %4312, %4315
  %4318 = fmul fast float %4316, %4316
  %4319 = fmul fast float %4317, %4317
  %4320 = fadd fast float %4318, %4319
  %4321 = call float @dx.op.unary.f32(i32 24, float %4320)  ; Sqrt(value)
  %4322 = extractvalue %dx.types.CBufRet.f32 %4313, 2
  %4323 = fcmp fast olt float %4321, %4322
  br i1 %4323, label %4324, label %4377

; <label>:4324                                    ; preds = %4307
  %4325 = extractvalue %dx.types.CBufRet.f32 %4308, 2
  %4326 = fadd fast float %4325, %169
  %4327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4328 = extractvalue %dx.types.CBufRet.f32 %4327, 0
  %4329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4330 = extractvalue %dx.types.CBufRet.f32 %4329, 0
  %4331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4332 = extractvalue %dx.types.CBufRet.f32 %4331, 0
  %4333 = extractvalue %dx.types.CBufRet.f32 %4327, 1
  %4334 = extractvalue %dx.types.CBufRet.f32 %4329, 1
  %4335 = extractvalue %dx.types.CBufRet.f32 %4331, 1
  %4336 = extractvalue %dx.types.CBufRet.f32 %4327, 3
  %4337 = extractvalue %dx.types.CBufRet.f32 %4329, 3
  %4338 = extractvalue %dx.types.CBufRet.f32 %4331, 3
  %4339 = fadd fast float %4336, %4311
  %4340 = fadd fast float %4337, %4312
  %4341 = fadd fast float %4326, %4338
  %4342 = fmul fast float %4339, %4328
  %4343 = call float @dx.op.tertiary.f32(i32 46, float %4340, float %4330, float %4342)  ; FMad(a,b,c)
  %4344 = call float @dx.op.tertiary.f32(i32 46, float %4341, float %4332, float %4343)  ; FMad(a,b,c)
  %4345 = fmul fast float %4339, %4333
  %4346 = call float @dx.op.tertiary.f32(i32 46, float %4340, float %4334, float %4345)  ; FMad(a,b,c)
  %4347 = call float @dx.op.tertiary.f32(i32 46, float %4341, float %4335, float %4346)  ; FMad(a,b,c)
  %4348 = fsub fast float %4344, %4336
  %4349 = fsub fast float %4347, %4337
  %4350 = fsub fast float %4348, %4314
  %4351 = fadd fast float %4350, %4322
  %4352 = fsub fast float %4349, %4315
  %4353 = fadd fast float %4352, %4322
  %4354 = extractvalue %dx.types.CBufRet.f32 %4313, 3
  %4355 = fmul fast float %4351, %4354
  %4356 = fmul fast float %4353, %4354
  %4357 = call float @dx.op.unary.f32(i32 7, float %4355)  ; Saturate(value)
  %4358 = call float @dx.op.unary.f32(i32 7, float %4356)  ; Saturate(value)
  %4359 = fsub fast float 1.000000e+00, %4357
  %4360 = fsub fast float 1.000000e+00, %4358
  %4361 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %46, float %4359, float %4360, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4362 = extractvalue %dx.types.ResRet.f32 %4361, 0
  %4363 = fcmp fast ugt float %4362, 0.000000e+00
  br i1 %4363, label %4364, label %4377

; <label>:4364                                    ; preds = %4324
  %4365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4366 = extractvalue %dx.types.CBufRet.f32 %4365, 2
  %4367 = fmul fast float %4366, %4362
  %4368 = extractvalue %dx.types.CBufRet.f32 %4365, 3
  %4369 = fadd fast float %4368, %4367
  %4370 = extractvalue %dx.types.CBufRet.f32 %4331, 2
  %4371 = fadd fast float %4369, %4338
  %4372 = fmul fast float %4344, %4332
  %4373 = call float @dx.op.tertiary.f32(i32 46, float %4347, float %4335, float %4372)  ; FMad(a,b,c)
  %4374 = call float @dx.op.tertiary.f32(i32 46, float %4371, float %4370, float %4373)  ; FMad(a,b,c)
  %4375 = fsub fast float %4374, %4338
  %4376 = fsub fast float %4375, %4325
  br label %4377

; <label>:4377                                    ; preds = %4364, %4324, %4307
  %4378 = phi i1 [ true, %4364 ], [ false, %4324 ], [ false, %4307 ]
  %4379 = phi float [ %4376, %4364 ], [ -1.310720e+05, %4324 ], [ -1.310720e+05, %4307 ]
  %4380 = fsub fast float %4379, %169
  %4381 = call float @dx.op.unary.f32(i32 7, float %4380)  ; Saturate(value)
  %4382 = select i1 %4378, float %4381, float 1.000000e+00
  br label %4383

; <label>:4383                                    ; preds = %4377, %4248
  %4384 = phi float [ %4382, %4377 ], [ 0.000000e+00, %4248 ]
  %4385 = icmp eq i32 %4305, 3
  %4386 = select i1 %4385, float 1.000000e+00, float %4384
  %4387 = call float @dx.op.binary.f32(i32 35, float %4264, float %4386)  ; FMax(a,b)
  %4388 = fcmp fast olt float %4386, 1.000000e+00
  br i1 %4388, label %4389, label %5513

; <label>:4389                                    ; preds = %4383
  %4390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4391 = extractvalue %dx.types.CBufRet.f32 %4390, 0
  %4392 = extractvalue %dx.types.CBufRet.f32 %4390, 1
  %4393 = extractvalue %dx.types.CBufRet.f32 %4390, 2
  %4394 = fadd fast float %4391, %167
  %4395 = fadd fast float %4392, %168
  %4396 = fadd fast float %4393, %169
  %4397 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 335)  ; CBufferLoadLegacy(handle,regIndex)
  %4398 = extractvalue %dx.types.CBufRet.i32 %4397, 2
  %4399 = icmp ult i32 %4398, 4
  br i1 %4399, label %4400, label %4451

; <label>:4400                                    ; preds = %4389
  br label %4401

; <label>:4401                                    ; preds = %4446, %4400
  %4402 = phi i32 [ %4447, %4446 ], [ %4398, %4400 ]
  %4403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 342)  ; CBufferLoadLegacy(handle,regIndex)
  %4404 = extractvalue %dx.types.CBufRet.f32 %4403, 0
  %4405 = extractvalue %dx.types.CBufRet.f32 %4403, 1
  %4406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 339)  ; CBufferLoadLegacy(handle,regIndex)
  %4407 = extractvalue %dx.types.CBufRet.f32 %4406, 0
  %4408 = fmul fast float %4407, 5.000000e-01
  %4409 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 340)  ; CBufferLoadLegacy(handle,regIndex)
  %4410 = extractvalue %dx.types.CBufRet.f32 %4409, 0
  %4411 = extractvalue %dx.types.CBufRet.f32 %4409, 1
  %4412 = extractvalue %dx.types.CBufRet.f32 %4409, 2
  %4413 = extractvalue %dx.types.CBufRet.f32 %4409, 3
  %4414 = getelementptr inbounds [4 x float], [4 x float]* %58, i32 0, i32 0
  store float %4410, float* %4414, align 4
  %4415 = getelementptr inbounds [4 x float], [4 x float]* %58, i32 0, i32 1
  store float %4411, float* %4415, align 4
  %4416 = getelementptr inbounds [4 x float], [4 x float]* %58, i32 0, i32 2
  store float %4412, float* %4416, align 4
  %4417 = getelementptr inbounds [4 x float], [4 x float]* %58, i32 0, i32 3
  store float %4413, float* %4417, align 4
  %4418 = getelementptr inbounds [4 x float], [4 x float]* %58, i32 0, i32 %4402
  %4419 = load float, float* %4418, align 4, !tbaa !90
  %4420 = fmul fast float %4408, %4419
  %4421 = fsub fast float %4394, %4404
  %4422 = fadd fast float %4421, %4420
  %4423 = fsub fast float %4395, %4405
  %4424 = fadd fast float %4423, %4420
  %4425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 341)  ; CBufferLoadLegacy(handle,regIndex)
  %4426 = extractvalue %dx.types.CBufRet.f32 %4425, 0
  %4427 = extractvalue %dx.types.CBufRet.f32 %4425, 1
  %4428 = extractvalue %dx.types.CBufRet.f32 %4425, 2
  %4429 = extractvalue %dx.types.CBufRet.f32 %4425, 3
  %4430 = getelementptr inbounds [4 x float], [4 x float]* %57, i32 0, i32 0
  store float %4426, float* %4430, align 4
  %4431 = getelementptr inbounds [4 x float], [4 x float]* %57, i32 0, i32 1
  store float %4427, float* %4431, align 4
  %4432 = getelementptr inbounds [4 x float], [4 x float]* %57, i32 0, i32 2
  store float %4428, float* %4432, align 4
  %4433 = getelementptr inbounds [4 x float], [4 x float]* %57, i32 0, i32 3
  store float %4429, float* %4433, align 4
  %4434 = getelementptr inbounds [4 x float], [4 x float]* %57, i32 0, i32 %4402
  %4435 = load float, float* %4434, align 4, !tbaa !90
  %4436 = fmul fast float %4422, %4435
  %4437 = fmul fast float %4424, %4435
  %4438 = extractvalue %dx.types.CBufRet.f32 %4406, 1
  %4439 = fmul fast float %4436, %4438
  %4440 = fmul fast float %4437, %4438
  %4441 = call float @dx.op.unary.f32(i32 7, float %4439)  ; Saturate(value)
  %4442 = call float @dx.op.unary.f32(i32 7, float %4440)  ; Saturate(value)
  %4443 = fcmp fast oeq float %4441, %4439
  %4444 = fcmp fast oeq float %4442, %4440
  %4445 = and i1 %4443, %4444
  br i1 %4445, label %4449, label %4446

; <label>:4446                                    ; preds = %4401
  %4447 = add nuw nsw i32 %4402, 1
  %4448 = icmp ult i32 %4447, 4
  br i1 %4448, label %4401, label %4449

; <label>:4449                                    ; preds = %4446, %4401
  %4450 = phi i32 [ %4447, %4446 ], [ %4402, %4401 ]
  br label %4451

; <label>:4451                                    ; preds = %4449, %4389
  %4452 = phi float [ 0.000000e+00, %4389 ], [ %4439, %4449 ]
  %4453 = phi float [ 0.000000e+00, %4389 ], [ %4440, %4449 ]
  %4454 = phi i32 [ %4398, %4389 ], [ %4450, %4449 ]
  %4455 = extractvalue %dx.types.CBufRet.i32 %4397, 1
  %4456 = uitofp i32 %4454 to float
  %4457 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %25, %dx.types.Handle %46, float %4452, float %4453, float %4456, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4458 = extractvalue %dx.types.ResRet.f32 %4457, 0
  %4459 = extractvalue %dx.types.ResRet.f32 %4457, 1
  %4460 = extractvalue %dx.types.ResRet.f32 %4457, 2
  %4461 = extractvalue %dx.types.ResRet.f32 %4457, 3
  %4462 = call float @dx.op.binary.f32(i32 35, float %4459, float %4460)  ; FMax(a,b)
  %4463 = call float @dx.op.binary.f32(i32 35, float %4458, float %4462)  ; FMax(a,b)
  %4464 = call float @dx.op.binary.f32(i32 35, float %4463, float %4461)  ; FMax(a,b)
  %4465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 335)  ; CBufferLoadLegacy(handle,regIndex)
  %4466 = extractvalue %dx.types.CBufRet.f32 %4465, 0
  %4467 = fadd fast float %4466, %4464
  %4468 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 339)  ; CBufferLoadLegacy(handle,regIndex)
  %4469 = extractvalue %dx.types.CBufRet.f32 %4468, 3
  %4470 = fadd fast float %4467, %4469
  %4471 = fcmp fast ogt float %4396, %4470
  %4472 = icmp uge i32 %4454, %4455
  %4473 = or i1 %4472, %4471
  %4474 = zext i1 %4473 to i32
  %4475 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4476 = extractvalue %dx.types.CBufRet.i32 %4475, 0
  %4477 = lshr i32 %4476, 21
  %4478 = and i32 %4477, 1
  %4479 = xor i32 %4478, 1
  %4480 = or i32 %4474, %4479
  %4481 = and i32 %4476, 1
  %4482 = xor i32 %4481, 1
  %4483 = or i32 %4480, %4482
  %4484 = icmp eq i32 %4483, 0
  br i1 %4484, label %4485, label %5329, !dx.controlflow.hints !94

; <label>:4485                                    ; preds = %4451
  %4486 = fmul fast float %4452, 2.000000e+00
  %4487 = fmul fast float %4453, 2.000000e+00
  %4488 = fadd fast float %4486, -1.000000e+00
  %4489 = fadd fast float %4487, -1.000000e+00
  %4490 = call float @dx.op.unary.f32(i32 6, float %4488)  ; FAbs(value)
  %4491 = call float @dx.op.unary.f32(i32 6, float %4489)  ; FAbs(value)
  %4492 = extractvalue %dx.types.CBufRet.f32 %4468, 1
  %4493 = fmul fast float %4492, 2.000000e+00
  %4494 = fsub fast float 1.000000e+00, %4493
  %4495 = fcmp fast oge float %4490, %4494
  %4496 = fcmp fast oge float %4491, %4494
  %4497 = or i1 %4495, %4496
  %4498 = add i32 %4454, 1
  %4499 = icmp ult i32 %4498, %4455
  %4500 = and i1 %4499, %4497
  %4501 = extractvalue %dx.types.CBufRet.f32 %4468, 0
  %4502 = fptosi float %4501 to i32
  %4503 = sitofp i32 %4502 to float
  %4504 = fmul fast float %4503, %4452
  %4505 = fmul fast float %4503, %4453
  %4506 = fadd fast float %4504, -5.000000e-01
  %4507 = fadd fast float %4505, -5.000000e-01
  %4508 = fptosi float %4506 to i32
  %4509 = fptosi float %4507 to i32
  %4510 = fadd fast float %4504, 5.000000e-01
  %4511 = fadd fast float %4505, 5.000000e-01
  %4512 = call float @dx.op.unary.f32(i32 22, float %4510)  ; Frc(value)
  %4513 = call float @dx.op.unary.f32(i32 22, float %4511)  ; Frc(value)
  %4514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 340)  ; CBufferLoadLegacy(handle,regIndex)
  %4515 = extractvalue %dx.types.CBufRet.f32 %4514, 0
  %4516 = extractvalue %dx.types.CBufRet.f32 %4514, 1
  %4517 = extractvalue %dx.types.CBufRet.f32 %4514, 2
  %4518 = extractvalue %dx.types.CBufRet.f32 %4514, 3
  %4519 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 336)  ; CBufferLoadLegacy(handle,regIndex)
  %4520 = extractvalue %dx.types.CBufRet.f32 %4519, 2
  %4521 = fadd fast float %4512, -5.000000e-01
  %4522 = fadd fast float %4513, -5.000000e-01
  %4523 = add i32 %4502, -1
  %4524 = call i32 @dx.op.binary.i32(i32 37, i32 %4508, i32 0)  ; IMax(a,b)
  %4525 = call i32 @dx.op.binary.i32(i32 37, i32 %4509, i32 0)  ; IMax(a,b)
  %4526 = call i32 @dx.op.binary.i32(i32 38, i32 %4524, i32 %4523)  ; IMin(a,b)
  %4527 = call i32 @dx.op.binary.i32(i32 38, i32 %4525, i32 %4523)  ; IMin(a,b)
  %4528 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 337)  ; CBufferLoadLegacy(handle,regIndex)
  %4529 = extractvalue %dx.types.CBufRet.i32 %4528, 0
  %4530 = extractvalue %dx.types.CBufRet.i32 %4528, 1
  %4531 = sub nsw i32 3, %4454
  %4532 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 338)  ; CBufferLoadLegacy(handle,regIndex)
  %4533 = extractvalue %dx.types.CBufRet.i32 %4532, 0
  %4534 = extractvalue %dx.types.CBufRet.i32 %4532, 1
  %4535 = extractvalue %dx.types.CBufRet.i32 %4532, 2
  %4536 = extractvalue %dx.types.CBufRet.i32 %4532, 3
  %4537 = add i32 %4526, 536870912
  %4538 = add i32 %4527, 536870912
  %4539 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 336)  ; CBufferLoadLegacy(handle,regIndex)
  %4540 = extractvalue %dx.types.CBufRet.i32 %4539, 3
  %4541 = add i32 %4508, 1
  %4542 = call i32 @dx.op.binary.i32(i32 37, i32 %4541, i32 0)  ; IMax(a,b)
  %4543 = call i32 @dx.op.binary.i32(i32 38, i32 %4542, i32 %4523)  ; IMin(a,b)
  %4544 = add i32 %4543, 536870912
  %4545 = add i32 %4509, 1
  %4546 = call i32 @dx.op.binary.i32(i32 37, i32 %4545, i32 0)  ; IMax(a,b)
  %4547 = call i32 @dx.op.binary.i32(i32 38, i32 %4546, i32 %4523)  ; IMin(a,b)
  %4548 = add i32 %4547, 536870912
  br i1 %4500, label %4793, label %4549, !dx.controlflow.hints !95

; <label>:4549                                    ; preds = %4485
  %4550 = getelementptr inbounds [4 x float], [4 x float]* %51, i32 0, i32 0
  store float %4515, float* %4550, align 4
  %4551 = getelementptr inbounds [4 x float], [4 x float]* %51, i32 0, i32 1
  store float %4516, float* %4551, align 4
  %4552 = getelementptr inbounds [4 x float], [4 x float]* %51, i32 0, i32 2
  store float %4517, float* %4552, align 4
  %4553 = getelementptr inbounds [4 x float], [4 x float]* %51, i32 0, i32 3
  store float %4518, float* %4553, align 4
  %4554 = getelementptr inbounds [4 x float], [4 x float]* %51, i32 0, i32 %4454
  %4555 = load float, float* %4554, align 4, !tbaa !90
  %4556 = fmul fast float %4520, %4555
  %4557 = call float @dx.op.binary.f32(i32 35, float 1.000000e+00, float %4556)  ; FMax(a,b)
  %4558 = fmul fast float %4557, %4521
  %4559 = fmul fast float %4557, %4522
  %4560 = call float @dx.op.binary.f32(i32 35, float %4558, float -5.000000e-01)  ; FMax(a,b)
  %4561 = call float @dx.op.binary.f32(i32 35, float %4559, float -5.000000e-01)  ; FMax(a,b)
  %4562 = call float @dx.op.binary.f32(i32 36, float %4560, float 5.000000e-01)  ; FMin(a,b)
  %4563 = call float @dx.op.binary.f32(i32 36, float %4561, float 5.000000e-01)  ; FMin(a,b)
  %4564 = fadd fast float %4562, 5.000000e-01
  %4565 = fadd fast float %4563, 5.000000e-01
  %4566 = getelementptr inbounds [4 x i32], [4 x i32]* %52, i32 0, i32 0
  store i32 %4533, i32* %4566, align 4
  %4567 = getelementptr inbounds [4 x i32], [4 x i32]* %52, i32 0, i32 1
  store i32 %4534, i32* %4567, align 4
  %4568 = getelementptr inbounds [4 x i32], [4 x i32]* %52, i32 0, i32 2
  store i32 %4535, i32* %4568, align 4
  %4569 = getelementptr inbounds [4 x i32], [4 x i32]* %52, i32 0, i32 3
  store i32 %4536, i32* %4569, align 4
  %4570 = getelementptr inbounds [4 x i32], [4 x i32]* %52, i32 0, i32 %4531
  %4571 = load i32, i32* %4570, align 4, !tbaa !96
  %4572 = mul i32 %4571, %4529
  %4573 = mul i32 %4571, %4530
  %4574 = add i32 %4537, %4572
  %4575 = add i32 %4538, %4573
  %4576 = and i32 %4574, %4540
  %4577 = and i32 %4575, %4540
  %4578 = fsub fast float %4396, %4466
  %4579 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %4576, i32 %4577, i32 %4454, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4580 = extractvalue %dx.types.ResRet.i32 %4579, 0
  %4581 = extractvalue %dx.types.ResRet.i32 %4579, 1
  %4582 = extractvalue %dx.types.ResRet.i32 %4579, 2
  %4583 = extractvalue %dx.types.ResRet.i32 %4579, 3
  %4584 = and i32 %4580, 65535
  %4585 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4584)  ; LegacyF16ToF32(value)
  %4586 = lshr i32 %4580, 16
  %4587 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4586)  ; LegacyF16ToF32(value)
  %4588 = and i32 %4581, 65535
  %4589 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4588)  ; LegacyF16ToF32(value)
  %4590 = lshr i32 %4581, 16
  %4591 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4590)  ; LegacyF16ToF32(value)
  %4592 = and i32 %4582, 65535
  %4593 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4592)  ; LegacyF16ToF32(value)
  %4594 = lshr i32 %4582, 16
  %4595 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4594)  ; LegacyF16ToF32(value)
  %4596 = and i32 %4583, 65535
  %4597 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4596)  ; LegacyF16ToF32(value)
  %4598 = lshr i32 %4583, 16
  %4599 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4598)  ; LegacyF16ToF32(value)
  %4600 = fsub fast float %4578, %4587
  %4601 = call float @dx.op.binary.f32(i32 35, float %4600, float 0.000000e+00)  ; FMax(a,b)
  %4602 = extractvalue %dx.types.CBufRet.f32 %4468, 2
  %4603 = fmul fast float %4602, %4601
  %4604 = fsub fast float %4585, %4603
  %4605 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4604)  ; FMax(a,b)
  %4606 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4605)  ; FMax(a,b)
  %4607 = fsub fast float %4578, %4591
  %4608 = call float @dx.op.binary.f32(i32 35, float %4607, float 0.000000e+00)  ; FMax(a,b)
  %4609 = fmul fast float %4602, %4608
  %4610 = fsub fast float %4589, %4609
  %4611 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4610)  ; FMax(a,b)
  %4612 = call float @dx.op.binary.f32(i32 35, float %4606, float %4611)  ; FMax(a,b)
  %4613 = fsub fast float %4578, %4595
  %4614 = call float @dx.op.binary.f32(i32 35, float %4613, float 0.000000e+00)  ; FMax(a,b)
  %4615 = fmul fast float %4602, %4614
  %4616 = fsub fast float %4593, %4615
  %4617 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4616)  ; FMax(a,b)
  %4618 = call float @dx.op.binary.f32(i32 35, float %4612, float %4617)  ; FMax(a,b)
  %4619 = fsub fast float %4578, %4599
  %4620 = call float @dx.op.binary.f32(i32 35, float %4619, float 0.000000e+00)  ; FMax(a,b)
  %4621 = fmul fast float %4602, %4620
  %4622 = fsub fast float %4597, %4621
  %4623 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4622)  ; FMax(a,b)
  %4624 = call float @dx.op.binary.f32(i32 35, float %4618, float %4623)  ; FMax(a,b)
  %4625 = fsub fast float 5.000000e-01, %4562
  %4626 = fsub fast float 5.000000e-01, %4563
  %4627 = fmul fast float %4626, %4625
  %4628 = fmul fast float %4627, %4624
  store i32 %4533, i32* %4566, align 4
  store i32 %4534, i32* %4567, align 4
  store i32 %4535, i32* %4568, align 4
  store i32 %4536, i32* %4569, align 4
  %4629 = load i32, i32* %4570, align 4, !tbaa !96
  %4630 = mul i32 %4629, %4529
  %4631 = mul i32 %4629, %4530
  %4632 = add i32 %4544, %4630
  %4633 = add i32 %4538, %4631
  %4634 = and i32 %4632, %4540
  %4635 = and i32 %4633, %4540
  %4636 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %4634, i32 %4635, i32 %4454, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4637 = extractvalue %dx.types.ResRet.i32 %4636, 0
  %4638 = extractvalue %dx.types.ResRet.i32 %4636, 1
  %4639 = extractvalue %dx.types.ResRet.i32 %4636, 2
  %4640 = extractvalue %dx.types.ResRet.i32 %4636, 3
  %4641 = and i32 %4637, 65535
  %4642 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4641)  ; LegacyF16ToF32(value)
  %4643 = lshr i32 %4637, 16
  %4644 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4643)  ; LegacyF16ToF32(value)
  %4645 = and i32 %4638, 65535
  %4646 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4645)  ; LegacyF16ToF32(value)
  %4647 = lshr i32 %4638, 16
  %4648 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4647)  ; LegacyF16ToF32(value)
  %4649 = and i32 %4639, 65535
  %4650 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4649)  ; LegacyF16ToF32(value)
  %4651 = lshr i32 %4639, 16
  %4652 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4651)  ; LegacyF16ToF32(value)
  %4653 = and i32 %4640, 65535
  %4654 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4653)  ; LegacyF16ToF32(value)
  %4655 = lshr i32 %4640, 16
  %4656 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4655)  ; LegacyF16ToF32(value)
  %4657 = fsub fast float %4578, %4644
  %4658 = call float @dx.op.binary.f32(i32 35, float %4657, float 0.000000e+00)  ; FMax(a,b)
  %4659 = fmul fast float %4602, %4658
  %4660 = fsub fast float %4642, %4659
  %4661 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4660)  ; FMax(a,b)
  %4662 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4661)  ; FMax(a,b)
  %4663 = fsub fast float %4578, %4648
  %4664 = call float @dx.op.binary.f32(i32 35, float %4663, float 0.000000e+00)  ; FMax(a,b)
  %4665 = fmul fast float %4602, %4664
  %4666 = fsub fast float %4646, %4665
  %4667 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4666)  ; FMax(a,b)
  %4668 = call float @dx.op.binary.f32(i32 35, float %4662, float %4667)  ; FMax(a,b)
  %4669 = fsub fast float %4578, %4652
  %4670 = call float @dx.op.binary.f32(i32 35, float %4669, float 0.000000e+00)  ; FMax(a,b)
  %4671 = fmul fast float %4602, %4670
  %4672 = fsub fast float %4650, %4671
  %4673 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4672)  ; FMax(a,b)
  %4674 = call float @dx.op.binary.f32(i32 35, float %4668, float %4673)  ; FMax(a,b)
  %4675 = fsub fast float %4578, %4656
  %4676 = call float @dx.op.binary.f32(i32 35, float %4675, float 0.000000e+00)  ; FMax(a,b)
  %4677 = fmul fast float %4602, %4676
  %4678 = fsub fast float %4654, %4677
  %4679 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4678)  ; FMax(a,b)
  %4680 = call float @dx.op.binary.f32(i32 35, float %4674, float %4679)  ; FMax(a,b)
  %4681 = fmul fast float %4626, %4564
  %4682 = fmul fast float %4681, %4680
  store i32 %4533, i32* %4566, align 4
  store i32 %4534, i32* %4567, align 4
  store i32 %4535, i32* %4568, align 4
  store i32 %4536, i32* %4569, align 4
  %4683 = load i32, i32* %4570, align 4, !tbaa !96
  %4684 = mul i32 %4683, %4529
  %4685 = mul i32 %4683, %4530
  %4686 = add i32 %4537, %4684
  %4687 = add i32 %4548, %4685
  %4688 = and i32 %4686, %4540
  %4689 = and i32 %4687, %4540
  %4690 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %4688, i32 %4689, i32 %4454, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4691 = extractvalue %dx.types.ResRet.i32 %4690, 0
  %4692 = extractvalue %dx.types.ResRet.i32 %4690, 1
  %4693 = extractvalue %dx.types.ResRet.i32 %4690, 2
  %4694 = extractvalue %dx.types.ResRet.i32 %4690, 3
  %4695 = and i32 %4691, 65535
  %4696 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4695)  ; LegacyF16ToF32(value)
  %4697 = lshr i32 %4691, 16
  %4698 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4697)  ; LegacyF16ToF32(value)
  %4699 = and i32 %4692, 65535
  %4700 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4699)  ; LegacyF16ToF32(value)
  %4701 = lshr i32 %4692, 16
  %4702 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4701)  ; LegacyF16ToF32(value)
  %4703 = and i32 %4693, 65535
  %4704 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4703)  ; LegacyF16ToF32(value)
  %4705 = lshr i32 %4693, 16
  %4706 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4705)  ; LegacyF16ToF32(value)
  %4707 = and i32 %4694, 65535
  %4708 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4707)  ; LegacyF16ToF32(value)
  %4709 = lshr i32 %4694, 16
  %4710 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4709)  ; LegacyF16ToF32(value)
  %4711 = fsub fast float %4578, %4698
  %4712 = call float @dx.op.binary.f32(i32 35, float %4711, float 0.000000e+00)  ; FMax(a,b)
  %4713 = fmul fast float %4602, %4712
  %4714 = fsub fast float %4696, %4713
  %4715 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4714)  ; FMax(a,b)
  %4716 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4715)  ; FMax(a,b)
  %4717 = fsub fast float %4578, %4702
  %4718 = call float @dx.op.binary.f32(i32 35, float %4717, float 0.000000e+00)  ; FMax(a,b)
  %4719 = fmul fast float %4602, %4718
  %4720 = fsub fast float %4700, %4719
  %4721 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4720)  ; FMax(a,b)
  %4722 = call float @dx.op.binary.f32(i32 35, float %4716, float %4721)  ; FMax(a,b)
  %4723 = fsub fast float %4578, %4706
  %4724 = call float @dx.op.binary.f32(i32 35, float %4723, float 0.000000e+00)  ; FMax(a,b)
  %4725 = fmul fast float %4602, %4724
  %4726 = fsub fast float %4704, %4725
  %4727 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4726)  ; FMax(a,b)
  %4728 = call float @dx.op.binary.f32(i32 35, float %4722, float %4727)  ; FMax(a,b)
  %4729 = fsub fast float %4578, %4710
  %4730 = call float @dx.op.binary.f32(i32 35, float %4729, float 0.000000e+00)  ; FMax(a,b)
  %4731 = fmul fast float %4602, %4730
  %4732 = fsub fast float %4708, %4731
  %4733 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4732)  ; FMax(a,b)
  %4734 = call float @dx.op.binary.f32(i32 35, float %4728, float %4733)  ; FMax(a,b)
  %4735 = fmul fast float %4734, %4625
  store i32 %4533, i32* %4566, align 4
  store i32 %4534, i32* %4567, align 4
  store i32 %4535, i32* %4568, align 4
  store i32 %4536, i32* %4569, align 4
  %4736 = load i32, i32* %4570, align 4, !tbaa !96
  %4737 = mul i32 %4736, %4529
  %4738 = mul i32 %4736, %4530
  %4739 = add i32 %4544, %4737
  %4740 = add i32 %4548, %4738
  %4741 = and i32 %4739, %4540
  %4742 = and i32 %4740, %4540
  %4743 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %4741, i32 %4742, i32 %4454, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4744 = extractvalue %dx.types.ResRet.i32 %4743, 0
  %4745 = extractvalue %dx.types.ResRet.i32 %4743, 1
  %4746 = extractvalue %dx.types.ResRet.i32 %4743, 2
  %4747 = extractvalue %dx.types.ResRet.i32 %4743, 3
  %4748 = and i32 %4744, 65535
  %4749 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4748)  ; LegacyF16ToF32(value)
  %4750 = lshr i32 %4744, 16
  %4751 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4750)  ; LegacyF16ToF32(value)
  %4752 = and i32 %4745, 65535
  %4753 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4752)  ; LegacyF16ToF32(value)
  %4754 = lshr i32 %4745, 16
  %4755 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4754)  ; LegacyF16ToF32(value)
  %4756 = and i32 %4746, 65535
  %4757 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4756)  ; LegacyF16ToF32(value)
  %4758 = lshr i32 %4746, 16
  %4759 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4758)  ; LegacyF16ToF32(value)
  %4760 = and i32 %4747, 65535
  %4761 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4760)  ; LegacyF16ToF32(value)
  %4762 = lshr i32 %4747, 16
  %4763 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4762)  ; LegacyF16ToF32(value)
  %4764 = fsub fast float %4578, %4751
  %4765 = call float @dx.op.binary.f32(i32 35, float %4764, float 0.000000e+00)  ; FMax(a,b)
  %4766 = fmul fast float %4602, %4765
  %4767 = fsub fast float %4749, %4766
  %4768 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4767)  ; FMax(a,b)
  %4769 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4768)  ; FMax(a,b)
  %4770 = fsub fast float %4578, %4755
  %4771 = call float @dx.op.binary.f32(i32 35, float %4770, float 0.000000e+00)  ; FMax(a,b)
  %4772 = fmul fast float %4602, %4771
  %4773 = fsub fast float %4753, %4772
  %4774 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4773)  ; FMax(a,b)
  %4775 = call float @dx.op.binary.f32(i32 35, float %4769, float %4774)  ; FMax(a,b)
  %4776 = fsub fast float %4578, %4759
  %4777 = call float @dx.op.binary.f32(i32 35, float %4776, float 0.000000e+00)  ; FMax(a,b)
  %4778 = fmul fast float %4602, %4777
  %4779 = fsub fast float %4757, %4778
  %4780 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4779)  ; FMax(a,b)
  %4781 = call float @dx.op.binary.f32(i32 35, float %4775, float %4780)  ; FMax(a,b)
  %4782 = fsub fast float %4578, %4763
  %4783 = call float @dx.op.binary.f32(i32 35, float %4782, float 0.000000e+00)  ; FMax(a,b)
  %4784 = fmul fast float %4602, %4783
  %4785 = fsub fast float %4761, %4784
  %4786 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4785)  ; FMax(a,b)
  %4787 = call float @dx.op.binary.f32(i32 35, float %4781, float %4786)  ; FMax(a,b)
  %4788 = fmul fast float %4787, %4564
  %4789 = fadd fast float %4788, %4735
  %4790 = fmul fast float %4789, %4565
  %4791 = fadd fast float %4682, %4628
  %4792 = fadd fast float %4791, %4790
  br label %5329

; <label>:4793                                    ; preds = %4485
  %4794 = getelementptr inbounds [4 x float], [4 x float]* %53, i32 0, i32 0
  store float %4515, float* %4794, align 4
  %4795 = getelementptr inbounds [4 x float], [4 x float]* %53, i32 0, i32 1
  store float %4516, float* %4795, align 4
  %4796 = getelementptr inbounds [4 x float], [4 x float]* %53, i32 0, i32 2
  store float %4517, float* %4796, align 4
  %4797 = getelementptr inbounds [4 x float], [4 x float]* %53, i32 0, i32 3
  store float %4518, float* %4797, align 4
  %4798 = getelementptr inbounds [4 x float], [4 x float]* %53, i32 0, i32 %4454
  %4799 = load float, float* %4798, align 4, !tbaa !90
  %4800 = fmul fast float %4520, %4799
  %4801 = call float @dx.op.binary.f32(i32 35, float 1.000000e+00, float %4800)  ; FMax(a,b)
  %4802 = fmul fast float %4801, %4521
  %4803 = fmul fast float %4801, %4522
  %4804 = call float @dx.op.binary.f32(i32 35, float %4802, float -5.000000e-01)  ; FMax(a,b)
  %4805 = call float @dx.op.binary.f32(i32 35, float %4803, float -5.000000e-01)  ; FMax(a,b)
  %4806 = call float @dx.op.binary.f32(i32 36, float %4804, float 5.000000e-01)  ; FMin(a,b)
  %4807 = call float @dx.op.binary.f32(i32 36, float %4805, float 5.000000e-01)  ; FMin(a,b)
  %4808 = fadd fast float %4806, 5.000000e-01
  %4809 = fadd fast float %4807, 5.000000e-01
  %4810 = getelementptr inbounds [4 x i32], [4 x i32]* %56, i32 0, i32 0
  store i32 %4533, i32* %4810, align 4
  %4811 = getelementptr inbounds [4 x i32], [4 x i32]* %56, i32 0, i32 1
  store i32 %4534, i32* %4811, align 4
  %4812 = getelementptr inbounds [4 x i32], [4 x i32]* %56, i32 0, i32 2
  store i32 %4535, i32* %4812, align 4
  %4813 = getelementptr inbounds [4 x i32], [4 x i32]* %56, i32 0, i32 3
  store i32 %4536, i32* %4813, align 4
  %4814 = getelementptr inbounds [4 x i32], [4 x i32]* %56, i32 0, i32 %4531
  %4815 = load i32, i32* %4814, align 4, !tbaa !96
  %4816 = mul i32 %4815, %4529
  %4817 = mul i32 %4815, %4530
  %4818 = add i32 %4537, %4816
  %4819 = add i32 %4538, %4817
  %4820 = and i32 %4818, %4540
  %4821 = and i32 %4819, %4540
  %4822 = fsub fast float %4396, %4466
  %4823 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %4820, i32 %4821, i32 %4454, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4824 = extractvalue %dx.types.ResRet.i32 %4823, 0
  %4825 = extractvalue %dx.types.ResRet.i32 %4823, 1
  %4826 = extractvalue %dx.types.ResRet.i32 %4823, 2
  %4827 = extractvalue %dx.types.ResRet.i32 %4823, 3
  %4828 = and i32 %4824, 65535
  %4829 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4828)  ; LegacyF16ToF32(value)
  %4830 = lshr i32 %4824, 16
  %4831 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4830)  ; LegacyF16ToF32(value)
  %4832 = and i32 %4825, 65535
  %4833 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4832)  ; LegacyF16ToF32(value)
  %4834 = lshr i32 %4825, 16
  %4835 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4834)  ; LegacyF16ToF32(value)
  %4836 = and i32 %4826, 65535
  %4837 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4836)  ; LegacyF16ToF32(value)
  %4838 = lshr i32 %4826, 16
  %4839 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4838)  ; LegacyF16ToF32(value)
  %4840 = and i32 %4827, 65535
  %4841 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4840)  ; LegacyF16ToF32(value)
  %4842 = lshr i32 %4827, 16
  %4843 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4842)  ; LegacyF16ToF32(value)
  %4844 = fsub fast float %4822, %4831
  %4845 = call float @dx.op.binary.f32(i32 35, float %4844, float 0.000000e+00)  ; FMax(a,b)
  %4846 = extractvalue %dx.types.CBufRet.f32 %4468, 2
  %4847 = fmul fast float %4846, %4845
  %4848 = fsub fast float %4829, %4847
  %4849 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4848)  ; FMax(a,b)
  %4850 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4849)  ; FMax(a,b)
  %4851 = fsub fast float %4822, %4835
  %4852 = call float @dx.op.binary.f32(i32 35, float %4851, float 0.000000e+00)  ; FMax(a,b)
  %4853 = fmul fast float %4846, %4852
  %4854 = fsub fast float %4833, %4853
  %4855 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4854)  ; FMax(a,b)
  %4856 = call float @dx.op.binary.f32(i32 35, float %4850, float %4855)  ; FMax(a,b)
  %4857 = fsub fast float %4822, %4839
  %4858 = call float @dx.op.binary.f32(i32 35, float %4857, float 0.000000e+00)  ; FMax(a,b)
  %4859 = fmul fast float %4846, %4858
  %4860 = fsub fast float %4837, %4859
  %4861 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4860)  ; FMax(a,b)
  %4862 = call float @dx.op.binary.f32(i32 35, float %4856, float %4861)  ; FMax(a,b)
  %4863 = fsub fast float %4822, %4843
  %4864 = call float @dx.op.binary.f32(i32 35, float %4863, float 0.000000e+00)  ; FMax(a,b)
  %4865 = fmul fast float %4846, %4864
  %4866 = fsub fast float %4841, %4865
  %4867 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4866)  ; FMax(a,b)
  %4868 = call float @dx.op.binary.f32(i32 35, float %4862, float %4867)  ; FMax(a,b)
  %4869 = fsub fast float 5.000000e-01, %4806
  %4870 = fsub fast float 5.000000e-01, %4807
  %4871 = fmul fast float %4870, %4869
  %4872 = fmul fast float %4871, %4868
  store i32 %4533, i32* %4810, align 4
  store i32 %4534, i32* %4811, align 4
  store i32 %4535, i32* %4812, align 4
  store i32 %4536, i32* %4813, align 4
  %4873 = load i32, i32* %4814, align 4, !tbaa !96
  %4874 = mul i32 %4873, %4529
  %4875 = mul i32 %4873, %4530
  %4876 = add i32 %4544, %4874
  %4877 = add i32 %4538, %4875
  %4878 = and i32 %4876, %4540
  %4879 = and i32 %4877, %4540
  %4880 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %4878, i32 %4879, i32 %4454, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4881 = extractvalue %dx.types.ResRet.i32 %4880, 0
  %4882 = extractvalue %dx.types.ResRet.i32 %4880, 1
  %4883 = extractvalue %dx.types.ResRet.i32 %4880, 2
  %4884 = extractvalue %dx.types.ResRet.i32 %4880, 3
  %4885 = and i32 %4881, 65535
  %4886 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4885)  ; LegacyF16ToF32(value)
  %4887 = lshr i32 %4881, 16
  %4888 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4887)  ; LegacyF16ToF32(value)
  %4889 = and i32 %4882, 65535
  %4890 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4889)  ; LegacyF16ToF32(value)
  %4891 = lshr i32 %4882, 16
  %4892 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4891)  ; LegacyF16ToF32(value)
  %4893 = and i32 %4883, 65535
  %4894 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4893)  ; LegacyF16ToF32(value)
  %4895 = lshr i32 %4883, 16
  %4896 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4895)  ; LegacyF16ToF32(value)
  %4897 = and i32 %4884, 65535
  %4898 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4897)  ; LegacyF16ToF32(value)
  %4899 = lshr i32 %4884, 16
  %4900 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4899)  ; LegacyF16ToF32(value)
  %4901 = fsub fast float %4822, %4888
  %4902 = call float @dx.op.binary.f32(i32 35, float %4901, float 0.000000e+00)  ; FMax(a,b)
  %4903 = fmul fast float %4846, %4902
  %4904 = fsub fast float %4886, %4903
  %4905 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4904)  ; FMax(a,b)
  %4906 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4905)  ; FMax(a,b)
  %4907 = fsub fast float %4822, %4892
  %4908 = call float @dx.op.binary.f32(i32 35, float %4907, float 0.000000e+00)  ; FMax(a,b)
  %4909 = fmul fast float %4846, %4908
  %4910 = fsub fast float %4890, %4909
  %4911 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4910)  ; FMax(a,b)
  %4912 = call float @dx.op.binary.f32(i32 35, float %4906, float %4911)  ; FMax(a,b)
  %4913 = fsub fast float %4822, %4896
  %4914 = call float @dx.op.binary.f32(i32 35, float %4913, float 0.000000e+00)  ; FMax(a,b)
  %4915 = fmul fast float %4846, %4914
  %4916 = fsub fast float %4894, %4915
  %4917 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4916)  ; FMax(a,b)
  %4918 = call float @dx.op.binary.f32(i32 35, float %4912, float %4917)  ; FMax(a,b)
  %4919 = fsub fast float %4822, %4900
  %4920 = call float @dx.op.binary.f32(i32 35, float %4919, float 0.000000e+00)  ; FMax(a,b)
  %4921 = fmul fast float %4846, %4920
  %4922 = fsub fast float %4898, %4921
  %4923 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4922)  ; FMax(a,b)
  %4924 = call float @dx.op.binary.f32(i32 35, float %4918, float %4923)  ; FMax(a,b)
  %4925 = fmul fast float %4870, %4808
  %4926 = fmul fast float %4925, %4924
  store i32 %4533, i32* %4810, align 4
  store i32 %4534, i32* %4811, align 4
  store i32 %4535, i32* %4812, align 4
  store i32 %4536, i32* %4813, align 4
  %4927 = load i32, i32* %4814, align 4, !tbaa !96
  %4928 = mul i32 %4927, %4529
  %4929 = mul i32 %4927, %4530
  %4930 = add i32 %4537, %4928
  %4931 = add i32 %4548, %4929
  %4932 = and i32 %4930, %4540
  %4933 = and i32 %4931, %4540
  %4934 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %4932, i32 %4933, i32 %4454, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4935 = extractvalue %dx.types.ResRet.i32 %4934, 0
  %4936 = extractvalue %dx.types.ResRet.i32 %4934, 1
  %4937 = extractvalue %dx.types.ResRet.i32 %4934, 2
  %4938 = extractvalue %dx.types.ResRet.i32 %4934, 3
  %4939 = and i32 %4935, 65535
  %4940 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4939)  ; LegacyF16ToF32(value)
  %4941 = lshr i32 %4935, 16
  %4942 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4941)  ; LegacyF16ToF32(value)
  %4943 = and i32 %4936, 65535
  %4944 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4943)  ; LegacyF16ToF32(value)
  %4945 = lshr i32 %4936, 16
  %4946 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4945)  ; LegacyF16ToF32(value)
  %4947 = and i32 %4937, 65535
  %4948 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4947)  ; LegacyF16ToF32(value)
  %4949 = lshr i32 %4937, 16
  %4950 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4949)  ; LegacyF16ToF32(value)
  %4951 = and i32 %4938, 65535
  %4952 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4951)  ; LegacyF16ToF32(value)
  %4953 = lshr i32 %4938, 16
  %4954 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4953)  ; LegacyF16ToF32(value)
  %4955 = fsub fast float %4822, %4942
  %4956 = call float @dx.op.binary.f32(i32 35, float %4955, float 0.000000e+00)  ; FMax(a,b)
  %4957 = fmul fast float %4846, %4956
  %4958 = fsub fast float %4940, %4957
  %4959 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4958)  ; FMax(a,b)
  %4960 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4959)  ; FMax(a,b)
  %4961 = fsub fast float %4822, %4946
  %4962 = call float @dx.op.binary.f32(i32 35, float %4961, float 0.000000e+00)  ; FMax(a,b)
  %4963 = fmul fast float %4846, %4962
  %4964 = fsub fast float %4944, %4963
  %4965 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4964)  ; FMax(a,b)
  %4966 = call float @dx.op.binary.f32(i32 35, float %4960, float %4965)  ; FMax(a,b)
  %4967 = fsub fast float %4822, %4950
  %4968 = call float @dx.op.binary.f32(i32 35, float %4967, float 0.000000e+00)  ; FMax(a,b)
  %4969 = fmul fast float %4846, %4968
  %4970 = fsub fast float %4948, %4969
  %4971 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4970)  ; FMax(a,b)
  %4972 = call float @dx.op.binary.f32(i32 35, float %4966, float %4971)  ; FMax(a,b)
  %4973 = fsub fast float %4822, %4954
  %4974 = call float @dx.op.binary.f32(i32 35, float %4973, float 0.000000e+00)  ; FMax(a,b)
  %4975 = fmul fast float %4846, %4974
  %4976 = fsub fast float %4952, %4975
  %4977 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4976)  ; FMax(a,b)
  %4978 = call float @dx.op.binary.f32(i32 35, float %4972, float %4977)  ; FMax(a,b)
  %4979 = fmul fast float %4978, %4869
  store i32 %4533, i32* %4810, align 4
  store i32 %4534, i32* %4811, align 4
  store i32 %4535, i32* %4812, align 4
  store i32 %4536, i32* %4813, align 4
  %4980 = load i32, i32* %4814, align 4, !tbaa !96
  %4981 = mul i32 %4980, %4529
  %4982 = mul i32 %4980, %4530
  %4983 = add i32 %4544, %4981
  %4984 = add i32 %4548, %4982
  %4985 = and i32 %4983, %4540
  %4986 = and i32 %4984, %4540
  %4987 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %4985, i32 %4986, i32 %4454, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4988 = extractvalue %dx.types.ResRet.i32 %4987, 0
  %4989 = extractvalue %dx.types.ResRet.i32 %4987, 1
  %4990 = extractvalue %dx.types.ResRet.i32 %4987, 2
  %4991 = extractvalue %dx.types.ResRet.i32 %4987, 3
  %4992 = and i32 %4988, 65535
  %4993 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4992)  ; LegacyF16ToF32(value)
  %4994 = lshr i32 %4988, 16
  %4995 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4994)  ; LegacyF16ToF32(value)
  %4996 = and i32 %4989, 65535
  %4997 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4996)  ; LegacyF16ToF32(value)
  %4998 = lshr i32 %4989, 16
  %4999 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4998)  ; LegacyF16ToF32(value)
  %5000 = and i32 %4990, 65535
  %5001 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5000)  ; LegacyF16ToF32(value)
  %5002 = lshr i32 %4990, 16
  %5003 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5002)  ; LegacyF16ToF32(value)
  %5004 = and i32 %4991, 65535
  %5005 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5004)  ; LegacyF16ToF32(value)
  %5006 = lshr i32 %4991, 16
  %5007 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5006)  ; LegacyF16ToF32(value)
  %5008 = fsub fast float %4822, %4995
  %5009 = call float @dx.op.binary.f32(i32 35, float %5008, float 0.000000e+00)  ; FMax(a,b)
  %5010 = fmul fast float %4846, %5009
  %5011 = fsub fast float %4993, %5010
  %5012 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5011)  ; FMax(a,b)
  %5013 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5012)  ; FMax(a,b)
  %5014 = fsub fast float %4822, %4999
  %5015 = call float @dx.op.binary.f32(i32 35, float %5014, float 0.000000e+00)  ; FMax(a,b)
  %5016 = fmul fast float %4846, %5015
  %5017 = fsub fast float %4997, %5016
  %5018 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5017)  ; FMax(a,b)
  %5019 = call float @dx.op.binary.f32(i32 35, float %5013, float %5018)  ; FMax(a,b)
  %5020 = fsub fast float %4822, %5003
  %5021 = call float @dx.op.binary.f32(i32 35, float %5020, float 0.000000e+00)  ; FMax(a,b)
  %5022 = fmul fast float %4846, %5021
  %5023 = fsub fast float %5001, %5022
  %5024 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5023)  ; FMax(a,b)
  %5025 = call float @dx.op.binary.f32(i32 35, float %5019, float %5024)  ; FMax(a,b)
  %5026 = fsub fast float %4822, %5007
  %5027 = call float @dx.op.binary.f32(i32 35, float %5026, float 0.000000e+00)  ; FMax(a,b)
  %5028 = fmul fast float %4846, %5027
  %5029 = fsub fast float %5005, %5028
  %5030 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5029)  ; FMax(a,b)
  %5031 = call float @dx.op.binary.f32(i32 35, float %5025, float %5030)  ; FMax(a,b)
  %5032 = fmul fast float %5031, %4808
  %5033 = fadd fast float %5032, %4979
  %5034 = fmul fast float %5033, %4809
  %5035 = fadd fast float %4926, %4872
  %5036 = fadd fast float %5035, %5034
  %5037 = fmul fast float %4452, 5.000000e-01
  %5038 = fmul fast float %4453, 5.000000e-01
  %5039 = fadd fast float %5037, 2.500000e-01
  %5040 = fadd fast float %5038, 2.500000e-01
  %5041 = fmul fast float %4503, %5039
  %5042 = fmul fast float %4503, %5040
  %5043 = fadd fast float %5041, -5.000000e-01
  %5044 = fadd fast float %5042, -5.000000e-01
  %5045 = fptosi float %5043 to i32
  %5046 = fptosi float %5044 to i32
  %5047 = fadd fast float %5041, 5.000000e-01
  %5048 = fadd fast float %5042, 5.000000e-01
  %5049 = call float @dx.op.unary.f32(i32 22, float %5047)  ; Frc(value)
  %5050 = call float @dx.op.unary.f32(i32 22, float %5048)  ; Frc(value)
  %5051 = getelementptr inbounds [4 x float], [4 x float]* %54, i32 0, i32 0
  store float %4515, float* %5051, align 4
  %5052 = getelementptr inbounds [4 x float], [4 x float]* %54, i32 0, i32 1
  store float %4516, float* %5052, align 4
  %5053 = getelementptr inbounds [4 x float], [4 x float]* %54, i32 0, i32 2
  store float %4517, float* %5053, align 4
  %5054 = getelementptr inbounds [4 x float], [4 x float]* %54, i32 0, i32 3
  store float %4518, float* %5054, align 4
  %5055 = getelementptr inbounds [4 x float], [4 x float]* %54, i32 0, i32 %4498
  %5056 = load float, float* %5055, align 4, !tbaa !90
  %5057 = fmul fast float %4520, %5056
  %5058 = call float @dx.op.binary.f32(i32 35, float 1.000000e+00, float %5057)  ; FMax(a,b)
  %5059 = fadd fast float %5049, -5.000000e-01
  %5060 = fadd fast float %5050, -5.000000e-01
  %5061 = fmul fast float %5058, %5059
  %5062 = fmul fast float %5058, %5060
  %5063 = call float @dx.op.binary.f32(i32 35, float %5061, float -5.000000e-01)  ; FMax(a,b)
  %5064 = call float @dx.op.binary.f32(i32 35, float %5062, float -5.000000e-01)  ; FMax(a,b)
  %5065 = call float @dx.op.binary.f32(i32 36, float %5063, float 5.000000e-01)  ; FMin(a,b)
  %5066 = call float @dx.op.binary.f32(i32 36, float %5064, float 5.000000e-01)  ; FMin(a,b)
  %5067 = fadd fast float %5065, 5.000000e-01
  %5068 = fadd fast float %5066, 5.000000e-01
  %5069 = call i32 @dx.op.binary.i32(i32 37, i32 %5045, i32 0)  ; IMax(a,b)
  %5070 = call i32 @dx.op.binary.i32(i32 37, i32 %5046, i32 0)  ; IMax(a,b)
  %5071 = call i32 @dx.op.binary.i32(i32 38, i32 %5069, i32 %4523)  ; IMin(a,b)
  %5072 = call i32 @dx.op.binary.i32(i32 38, i32 %5070, i32 %4523)  ; IMin(a,b)
  %5073 = sub i32 2, %4454
  %5074 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 0
  store i32 %4533, i32* %5074, align 4
  %5075 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 1
  store i32 %4534, i32* %5075, align 4
  %5076 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 2
  store i32 %4535, i32* %5076, align 4
  %5077 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 3
  store i32 %4536, i32* %5077, align 4
  %5078 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 %5073
  %5079 = load i32, i32* %5078, align 4, !tbaa !96
  %5080 = mul i32 %5079, %4529
  %5081 = mul i32 %5079, %4530
  %5082 = add i32 %5071, 536870912
  %5083 = add i32 %5082, %5080
  %5084 = add i32 %5072, 536870912
  %5085 = add i32 %5084, %5081
  %5086 = and i32 %5083, %4540
  %5087 = and i32 %5085, %4540
  %5088 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %5086, i32 %5087, i32 %4498, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5089 = extractvalue %dx.types.ResRet.i32 %5088, 0
  %5090 = extractvalue %dx.types.ResRet.i32 %5088, 1
  %5091 = extractvalue %dx.types.ResRet.i32 %5088, 2
  %5092 = extractvalue %dx.types.ResRet.i32 %5088, 3
  %5093 = and i32 %5089, 65535
  %5094 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5093)  ; LegacyF16ToF32(value)
  %5095 = lshr i32 %5089, 16
  %5096 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5095)  ; LegacyF16ToF32(value)
  %5097 = and i32 %5090, 65535
  %5098 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5097)  ; LegacyF16ToF32(value)
  %5099 = lshr i32 %5090, 16
  %5100 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5099)  ; LegacyF16ToF32(value)
  %5101 = and i32 %5091, 65535
  %5102 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5101)  ; LegacyF16ToF32(value)
  %5103 = lshr i32 %5091, 16
  %5104 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5103)  ; LegacyF16ToF32(value)
  %5105 = and i32 %5092, 65535
  %5106 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5105)  ; LegacyF16ToF32(value)
  %5107 = lshr i32 %5092, 16
  %5108 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5107)  ; LegacyF16ToF32(value)
  %5109 = fsub fast float %4822, %5096
  %5110 = call float @dx.op.binary.f32(i32 35, float %5109, float 0.000000e+00)  ; FMax(a,b)
  %5111 = fmul fast float %4846, %5110
  %5112 = fsub fast float %5094, %5111
  %5113 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5112)  ; FMax(a,b)
  %5114 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5113)  ; FMax(a,b)
  %5115 = fsub fast float %4822, %5100
  %5116 = call float @dx.op.binary.f32(i32 35, float %5115, float 0.000000e+00)  ; FMax(a,b)
  %5117 = fmul fast float %4846, %5116
  %5118 = fsub fast float %5098, %5117
  %5119 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5118)  ; FMax(a,b)
  %5120 = call float @dx.op.binary.f32(i32 35, float %5114, float %5119)  ; FMax(a,b)
  %5121 = fsub fast float %4822, %5104
  %5122 = call float @dx.op.binary.f32(i32 35, float %5121, float 0.000000e+00)  ; FMax(a,b)
  %5123 = fmul fast float %4846, %5122
  %5124 = fsub fast float %5102, %5123
  %5125 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5124)  ; FMax(a,b)
  %5126 = call float @dx.op.binary.f32(i32 35, float %5120, float %5125)  ; FMax(a,b)
  %5127 = fsub fast float %4822, %5108
  %5128 = call float @dx.op.binary.f32(i32 35, float %5127, float 0.000000e+00)  ; FMax(a,b)
  %5129 = fmul fast float %4846, %5128
  %5130 = fsub fast float %5106, %5129
  %5131 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5130)  ; FMax(a,b)
  %5132 = call float @dx.op.binary.f32(i32 35, float %5126, float %5131)  ; FMax(a,b)
  %5133 = fsub fast float 5.000000e-01, %5065
  %5134 = fsub fast float 5.000000e-01, %5066
  %5135 = fmul fast float %5134, %5133
  %5136 = fmul fast float %5135, %5132
  %5137 = add i32 %5045, 1
  %5138 = call i32 @dx.op.binary.i32(i32 37, i32 %5137, i32 0)  ; IMax(a,b)
  %5139 = call i32 @dx.op.binary.i32(i32 38, i32 %5138, i32 %4523)  ; IMin(a,b)
  store i32 %4533, i32* %5074, align 4
  store i32 %4534, i32* %5075, align 4
  store i32 %4535, i32* %5076, align 4
  store i32 %4536, i32* %5077, align 4
  %5140 = load i32, i32* %5078, align 4, !tbaa !96
  %5141 = mul i32 %5140, %4529
  %5142 = mul i32 %5140, %4530
  %5143 = add i32 %5139, 536870912
  %5144 = add i32 %5143, %5141
  %5145 = add i32 %5084, %5142
  %5146 = and i32 %5144, %4540
  %5147 = and i32 %5145, %4540
  %5148 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %5146, i32 %5147, i32 %4498, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5149 = extractvalue %dx.types.ResRet.i32 %5148, 0
  %5150 = extractvalue %dx.types.ResRet.i32 %5148, 1
  %5151 = extractvalue %dx.types.ResRet.i32 %5148, 2
  %5152 = extractvalue %dx.types.ResRet.i32 %5148, 3
  %5153 = and i32 %5149, 65535
  %5154 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5153)  ; LegacyF16ToF32(value)
  %5155 = lshr i32 %5149, 16
  %5156 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5155)  ; LegacyF16ToF32(value)
  %5157 = and i32 %5150, 65535
  %5158 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5157)  ; LegacyF16ToF32(value)
  %5159 = lshr i32 %5150, 16
  %5160 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5159)  ; LegacyF16ToF32(value)
  %5161 = and i32 %5151, 65535
  %5162 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5161)  ; LegacyF16ToF32(value)
  %5163 = lshr i32 %5151, 16
  %5164 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5163)  ; LegacyF16ToF32(value)
  %5165 = and i32 %5152, 65535
  %5166 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5165)  ; LegacyF16ToF32(value)
  %5167 = lshr i32 %5152, 16
  %5168 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5167)  ; LegacyF16ToF32(value)
  %5169 = fsub fast float %4822, %5156
  %5170 = call float @dx.op.binary.f32(i32 35, float %5169, float 0.000000e+00)  ; FMax(a,b)
  %5171 = fmul fast float %4846, %5170
  %5172 = fsub fast float %5154, %5171
  %5173 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5172)  ; FMax(a,b)
  %5174 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5173)  ; FMax(a,b)
  %5175 = fsub fast float %4822, %5160
  %5176 = call float @dx.op.binary.f32(i32 35, float %5175, float 0.000000e+00)  ; FMax(a,b)
  %5177 = fmul fast float %4846, %5176
  %5178 = fsub fast float %5158, %5177
  %5179 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5178)  ; FMax(a,b)
  %5180 = call float @dx.op.binary.f32(i32 35, float %5174, float %5179)  ; FMax(a,b)
  %5181 = fsub fast float %4822, %5164
  %5182 = call float @dx.op.binary.f32(i32 35, float %5181, float 0.000000e+00)  ; FMax(a,b)
  %5183 = fmul fast float %4846, %5182
  %5184 = fsub fast float %5162, %5183
  %5185 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5184)  ; FMax(a,b)
  %5186 = call float @dx.op.binary.f32(i32 35, float %5180, float %5185)  ; FMax(a,b)
  %5187 = fsub fast float %4822, %5168
  %5188 = call float @dx.op.binary.f32(i32 35, float %5187, float 0.000000e+00)  ; FMax(a,b)
  %5189 = fmul fast float %4846, %5188
  %5190 = fsub fast float %5166, %5189
  %5191 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5190)  ; FMax(a,b)
  %5192 = call float @dx.op.binary.f32(i32 35, float %5186, float %5191)  ; FMax(a,b)
  %5193 = fmul fast float %5134, %5067
  %5194 = fmul fast float %5193, %5192
  %5195 = add i32 %5046, 1
  %5196 = call i32 @dx.op.binary.i32(i32 37, i32 %5195, i32 0)  ; IMax(a,b)
  %5197 = call i32 @dx.op.binary.i32(i32 38, i32 %5196, i32 %4523)  ; IMin(a,b)
  store i32 %4533, i32* %5074, align 4
  store i32 %4534, i32* %5075, align 4
  store i32 %4535, i32* %5076, align 4
  store i32 %4536, i32* %5077, align 4
  %5198 = load i32, i32* %5078, align 4, !tbaa !96
  %5199 = mul i32 %5198, %4529
  %5200 = mul i32 %5198, %4530
  %5201 = add i32 %5082, %5199
  %5202 = add i32 %5197, 536870912
  %5203 = add i32 %5202, %5200
  %5204 = and i32 %5201, %4540
  %5205 = and i32 %5203, %4540
  %5206 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %5204, i32 %5205, i32 %4498, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5207 = extractvalue %dx.types.ResRet.i32 %5206, 0
  %5208 = extractvalue %dx.types.ResRet.i32 %5206, 1
  %5209 = extractvalue %dx.types.ResRet.i32 %5206, 2
  %5210 = extractvalue %dx.types.ResRet.i32 %5206, 3
  %5211 = and i32 %5207, 65535
  %5212 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5211)  ; LegacyF16ToF32(value)
  %5213 = lshr i32 %5207, 16
  %5214 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5213)  ; LegacyF16ToF32(value)
  %5215 = and i32 %5208, 65535
  %5216 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5215)  ; LegacyF16ToF32(value)
  %5217 = lshr i32 %5208, 16
  %5218 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5217)  ; LegacyF16ToF32(value)
  %5219 = and i32 %5209, 65535
  %5220 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5219)  ; LegacyF16ToF32(value)
  %5221 = lshr i32 %5209, 16
  %5222 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5221)  ; LegacyF16ToF32(value)
  %5223 = and i32 %5210, 65535
  %5224 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5223)  ; LegacyF16ToF32(value)
  %5225 = lshr i32 %5210, 16
  %5226 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5225)  ; LegacyF16ToF32(value)
  %5227 = fsub fast float %4822, %5214
  %5228 = call float @dx.op.binary.f32(i32 35, float %5227, float 0.000000e+00)  ; FMax(a,b)
  %5229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 339)  ; CBufferLoadLegacy(handle,regIndex)
  %5230 = extractvalue %dx.types.CBufRet.f32 %5229, 2
  %5231 = fmul fast float %5230, %5228
  %5232 = fsub fast float %5212, %5231
  %5233 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5232)  ; FMax(a,b)
  %5234 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5233)  ; FMax(a,b)
  %5235 = fsub fast float %4822, %5218
  %5236 = call float @dx.op.binary.f32(i32 35, float %5235, float 0.000000e+00)  ; FMax(a,b)
  %5237 = fmul fast float %5230, %5236
  %5238 = fsub fast float %5216, %5237
  %5239 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5238)  ; FMax(a,b)
  %5240 = call float @dx.op.binary.f32(i32 35, float %5234, float %5239)  ; FMax(a,b)
  %5241 = fsub fast float %4822, %5222
  %5242 = call float @dx.op.binary.f32(i32 35, float %5241, float 0.000000e+00)  ; FMax(a,b)
  %5243 = fmul fast float %5230, %5242
  %5244 = fsub fast float %5220, %5243
  %5245 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5244)  ; FMax(a,b)
  %5246 = call float @dx.op.binary.f32(i32 35, float %5240, float %5245)  ; FMax(a,b)
  %5247 = fsub fast float %4822, %5226
  %5248 = call float @dx.op.binary.f32(i32 35, float %5247, float 0.000000e+00)  ; FMax(a,b)
  %5249 = fmul fast float %5230, %5248
  %5250 = fsub fast float %5224, %5249
  %5251 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5250)  ; FMax(a,b)
  %5252 = call float @dx.op.binary.f32(i32 35, float %5246, float %5251)  ; FMax(a,b)
  %5253 = fmul fast float %5252, %5133
  store i32 %4533, i32* %5074, align 4
  store i32 %4534, i32* %5075, align 4
  store i32 %4535, i32* %5076, align 4
  store i32 %4536, i32* %5077, align 4
  %5254 = load i32, i32* %5078, align 4, !tbaa !96
  %5255 = mul i32 %5254, %4529
  %5256 = mul i32 %5254, %4530
  %5257 = add i32 %5143, %5255
  %5258 = add i32 %5202, %5256
  %5259 = and i32 %5257, %4540
  %5260 = and i32 %5258, %4540
  %5261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 335)  ; CBufferLoadLegacy(handle,regIndex)
  %5262 = extractvalue %dx.types.CBufRet.f32 %5261, 0
  %5263 = fsub fast float %4396, %5262
  %5264 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %5259, i32 %5260, i32 %4498, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5265 = extractvalue %dx.types.ResRet.i32 %5264, 0
  %5266 = extractvalue %dx.types.ResRet.i32 %5264, 1
  %5267 = extractvalue %dx.types.ResRet.i32 %5264, 2
  %5268 = extractvalue %dx.types.ResRet.i32 %5264, 3
  %5269 = and i32 %5265, 65535
  %5270 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5269)  ; LegacyF16ToF32(value)
  %5271 = lshr i32 %5265, 16
  %5272 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5271)  ; LegacyF16ToF32(value)
  %5273 = and i32 %5266, 65535
  %5274 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5273)  ; LegacyF16ToF32(value)
  %5275 = lshr i32 %5266, 16
  %5276 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5275)  ; LegacyF16ToF32(value)
  %5277 = and i32 %5267, 65535
  %5278 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5277)  ; LegacyF16ToF32(value)
  %5279 = lshr i32 %5267, 16
  %5280 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5279)  ; LegacyF16ToF32(value)
  %5281 = and i32 %5268, 65535
  %5282 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5281)  ; LegacyF16ToF32(value)
  %5283 = lshr i32 %5268, 16
  %5284 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5283)  ; LegacyF16ToF32(value)
  %5285 = fsub fast float %5263, %5272
  %5286 = call float @dx.op.binary.f32(i32 35, float %5285, float 0.000000e+00)  ; FMax(a,b)
  %5287 = fmul fast float %5230, %5286
  %5288 = fsub fast float %5270, %5287
  %5289 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5288)  ; FMax(a,b)
  %5290 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5289)  ; FMax(a,b)
  %5291 = fsub fast float %5263, %5276
  %5292 = call float @dx.op.binary.f32(i32 35, float %5291, float 0.000000e+00)  ; FMax(a,b)
  %5293 = fmul fast float %5230, %5292
  %5294 = fsub fast float %5274, %5293
  %5295 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5294)  ; FMax(a,b)
  %5296 = call float @dx.op.binary.f32(i32 35, float %5290, float %5295)  ; FMax(a,b)
  %5297 = fsub fast float %5263, %5280
  %5298 = call float @dx.op.binary.f32(i32 35, float %5297, float 0.000000e+00)  ; FMax(a,b)
  %5299 = fmul fast float %5230, %5298
  %5300 = fsub fast float %5278, %5299
  %5301 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5300)  ; FMax(a,b)
  %5302 = call float @dx.op.binary.f32(i32 35, float %5296, float %5301)  ; FMax(a,b)
  %5303 = fsub fast float %5263, %5284
  %5304 = call float @dx.op.binary.f32(i32 35, float %5303, float 0.000000e+00)  ; FMax(a,b)
  %5305 = fmul fast float %5230, %5304
  %5306 = fsub fast float %5282, %5305
  %5307 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5306)  ; FMax(a,b)
  %5308 = call float @dx.op.binary.f32(i32 35, float %5302, float %5307)  ; FMax(a,b)
  %5309 = fmul fast float %5308, %5067
  %5310 = fadd fast float %5309, %5253
  %5311 = fmul fast float %5310, %5068
  %5312 = fadd fast float %5194, %5136
  %5313 = fadd fast float %5312, %5311
  %5314 = call float @dx.op.binary.f32(i32 35, float %4490, float %4491)  ; FMax(a,b)
  %5315 = extractvalue %dx.types.CBufRet.f32 %5229, 1
  %5316 = fmul fast float %5315, 2.000000e+00
  %5317 = fadd fast float %5314, -1.000000e+00
  %5318 = fadd fast float %5317, %5316
  %5319 = fdiv fast float %5318, %5316
  %5320 = call float @dx.op.unary.f32(i32 7, float %5319)  ; Saturate(value)
  %5321 = fmul fast float %5320, 2.000000e+00
  %5322 = fsub fast float 3.000000e+00, %5321
  %5323 = fmul fast float %5320, %5320
  %5324 = fmul fast float %5323, %5322
  %5325 = fmul fast float %5324, %5313
  %5326 = fsub fast float 1.000000e+00, %5324
  %5327 = fmul fast float %5326, %5036
  %5328 = fadd fast float %5327, %5325
  br label %5329

; <label>:5329                                    ; preds = %4793, %4549, %4451
  %5330 = phi float [ 0.000000e+00, %4451 ], [ %5328, %4793 ], [ %4792, %4549 ]
  %5331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5332 = extractvalue %dx.types.CBufRet.f32 %5331, 0
  %5333 = extractvalue %dx.types.CBufRet.f32 %5331, 1
  %5334 = fsub fast float %4394, %5332
  %5335 = fsub fast float %4395, %5333
  %5336 = fmul fast float %5334, %5334
  %5337 = fmul fast float %5335, %5335
  %5338 = fadd fast float %5336, %5337
  %5339 = call float @dx.op.unary.f32(i32 24, float %5338)  ; Sqrt(value)
  %5340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 336)  ; CBufferLoadLegacy(handle,regIndex)
  %5341 = extractvalue %dx.types.CBufRet.f32 %5340, 0
  %5342 = extractvalue %dx.types.CBufRet.f32 %5340, 1
  %5343 = fsub fast float %5342, %5341
  %5344 = fsub fast float %5339, %5341
  %5345 = fdiv fast float %5344, %5343
  %5346 = call float @dx.op.unary.f32(i32 7, float %5345)  ; Saturate(value)
  %5347 = fmul fast float %5346, 2.000000e+00
  %5348 = fsub fast float 3.000000e+00, %5347
  %5349 = fmul fast float %5346, %5346
  %5350 = fmul fast float %5349, %5348
  %5351 = fsub fast float 1.000000e+00, %5350
  %5352 = fmul fast float %5351, %5330
  %5353 = fadd fast float %5352, %4387
  %5354 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 369)  ; CBufferLoadLegacy(handle,regIndex)
  %5355 = extractvalue %dx.types.CBufRet.i32 %5354, 0
  %5356 = and i32 %5355, 7
  %5357 = icmp eq i32 %5356, 0
  br i1 %5357, label %5429, label %5358

; <label>:5358                                    ; preds = %5329
  %5359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5360 = extractvalue %dx.types.CBufRet.f32 %5359, 0
  %5361 = extractvalue %dx.types.CBufRet.f32 %5359, 1
  %5362 = extractvalue %dx.types.CBufRet.f32 %5359, 2
  %5363 = fadd fast float %5360, %167
  %5364 = fadd fast float %5361, %168
  %5365 = fadd fast float %5362, %169
  %5366 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 151)  ; CBufferLoadLegacy(handle,regIndex)
  %5367 = extractvalue %dx.types.CBufRet.f32 %5366, 0
  %5368 = extractvalue %dx.types.CBufRet.f32 %5366, 1
  %5369 = extractvalue %dx.types.CBufRet.f32 %5366, 2
  %5370 = extractvalue %dx.types.CBufRet.f32 %5366, 3
  %5371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 152)  ; CBufferLoadLegacy(handle,regIndex)
  %5372 = extractvalue %dx.types.CBufRet.f32 %5371, 0
  %5373 = extractvalue %dx.types.CBufRet.f32 %5371, 1
  %5374 = extractvalue %dx.types.CBufRet.f32 %5371, 2
  %5375 = extractvalue %dx.types.CBufRet.f32 %5371, 3
  %5376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 153)  ; CBufferLoadLegacy(handle,regIndex)
  %5377 = extractvalue %dx.types.CBufRet.f32 %5376, 0
  %5378 = extractvalue %dx.types.CBufRet.f32 %5376, 1
  %5379 = extractvalue %dx.types.CBufRet.f32 %5376, 2
  %5380 = extractvalue %dx.types.CBufRet.f32 %5376, 3
  %5381 = fmul fast float %5363, %5367
  %5382 = call float @dx.op.tertiary.f32(i32 46, float %5364, float %5368, float %5381)  ; FMad(a,b,c)
  %5383 = call float @dx.op.tertiary.f32(i32 46, float %5365, float %5369, float %5382)  ; FMad(a,b,c)
  %5384 = fadd fast float %5383, %5370
  %5385 = fmul fast float %5372, %5363
  %5386 = call float @dx.op.tertiary.f32(i32 46, float %5364, float %5373, float %5385)  ; FMad(a,b,c)
  %5387 = call float @dx.op.tertiary.f32(i32 46, float %5365, float %5374, float %5386)  ; FMad(a,b,c)
  %5388 = fadd fast float %5387, %5375
  %5389 = fmul fast float %5377, %5363
  %5390 = call float @dx.op.tertiary.f32(i32 46, float %5364, float %5378, float %5389)  ; FMad(a,b,c)
  %5391 = call float @dx.op.tertiary.f32(i32 46, float %5365, float %5379, float %5390)  ; FMad(a,b,c)
  %5392 = fadd fast float %5391, %5380
  %5393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 155)  ; CBufferLoadLegacy(handle,regIndex)
  %5394 = extractvalue %dx.types.CBufRet.f32 %5393, 1
  %5395 = extractvalue %dx.types.CBufRet.f32 %5393, 0
  %5396 = fmul fast float %5395, %239
  %5397 = fadd fast float %5392, %5396
  %5398 = fmul fast float %239, 0x401921FB60000000
  %5399 = call float @dx.op.unary.f32(i32 13, float %5398)  ; Sin(value)
  %5400 = call float @dx.op.unary.f32(i32 12, float %5398)  ; Cos(value)
  %5401 = fmul fast float %5400, %5394
  %5402 = call float @dx.op.tertiary.f32(i32 46, float %5399, float %5394, float 0.000000e+00)  ; FMad(a,b,c)
  %5403 = fmul fast float %5394, %5399
  %5404 = fsub fast float -0.000000e+00, %5403
  %5405 = call float @dx.op.tertiary.f32(i32 46, float %5400, float %5394, float 0.000000e+00)  ; FMad(a,b,c)
  br label %5406

; <label>:5406                                    ; preds = %5406, %5358
  %5407 = phi float [ 0.000000e+00, %5358 ], [ %5421, %5406 ]
  %5408 = phi i32 [ 0, %5358 ], [ %5422, %5406 ]
  %5409 = getelementptr [4 x float], [4 x float]* @PCF_OFFSETS_4.0, i32 0, i32 %5408
  %5410 = getelementptr [4 x float], [4 x float]* @PCF_OFFSETS_4.1, i32 0, i32 %5408
  %5411 = load float, float* %5409, align 4
  %5412 = load float, float* %5410, align 4
  %5413 = fmul fast float %5401, %5411
  %5414 = call float @dx.op.tertiary.f32(i32 46, float %5412, float %5404, float %5413)  ; FMad(a,b,c)
  %5415 = fmul fast float %5411, %5402
  %5416 = call float @dx.op.tertiary.f32(i32 46, float %5412, float %5405, float %5415)  ; FMad(a,b,c)
  %5417 = fadd fast float %5384, %5414
  %5418 = fadd fast float %5388, %5416
  %5419 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %2, %dx.types.Handle %48, float %5417, float %5418, float undef, float undef, i32 0, i32 0, i32 undef, float %5397)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5420 = extractvalue %dx.types.ResRet.f32 %5419, 0
  %5421 = fadd fast float %5420, %5407
  %5422 = add nuw nsw i32 %5408, 1
  %5423 = icmp eq i32 %5422, 4
  br i1 %5423, label %5424, label %5406

; <label>:5424                                    ; preds = %5406
  %5425 = fmul fast float %5421, 2.500000e-01
  %5426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 370)  ; CBufferLoadLegacy(handle,regIndex)
  %5427 = extractvalue %dx.types.CBufRet.f32 %5426, 1
  %5428 = fmul fast float %5427, %5425
  br label %5429

; <label>:5429                                    ; preds = %5424, %5329
  %5430 = phi float [ %5425, %5424 ], [ 0.000000e+00, %5329 ]
  %5431 = phi float [ %5428, %5424 ], [ 0.000000e+00, %5329 ]
  %5432 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 369)  ; CBufferLoadLegacy(handle,regIndex)
  %5433 = extractvalue %dx.types.CBufRet.i32 %5432, 0
  %5434 = and i32 %5433, 7
  %5435 = icmp eq i32 %5434, 0
  br i1 %5435, label %5513, label %5436

; <label>:5436                                    ; preds = %5429
  %5437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 370)  ; CBufferLoadLegacy(handle,regIndex)
  %5438 = extractvalue %dx.types.CBufRet.f32 %5437, 0
  %5439 = fmul fast float %5438, %5430
  %5440 = fadd fast float %5439, %5353
  %5441 = extractvalue %dx.types.CBufRet.f32 %5437, 2
  %5442 = fmul fast float %5441, %5430
  %5443 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 371)  ; CBufferLoadLegacy(handle,regIndex)
  %5444 = extractvalue %dx.types.CBufRet.f32 %5443, 0
  %5445 = fmul fast float %5444, %5430
  %5446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5447 = and i32 %5433, 8
  %5448 = icmp eq i32 %5447, 0
  br i1 %5448, label %5513, label %5449

; <label>:5449                                    ; preds = %5436
  %5450 = extractvalue %dx.types.CBufRet.f32 %5446, 2
  %5451 = fadd fast float %5450, %169
  %5452 = extractvalue %dx.types.CBufRet.f32 %5446, 1
  %5453 = fadd fast float %5452, %168
  %5454 = extractvalue %dx.types.CBufRet.f32 %5446, 0
  %5455 = fadd fast float %5454, %167
  %5456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 377)  ; CBufferLoadLegacy(handle,regIndex)
  %5457 = extractvalue %dx.types.CBufRet.f32 %5456, 0
  %5458 = extractvalue %dx.types.CBufRet.f32 %5456, 1
  %5459 = extractvalue %dx.types.CBufRet.f32 %5456, 2
  %5460 = fsub fast float %5455, %5457
  %5461 = fsub fast float %5453, %5458
  %5462 = fsub fast float %5451, %5459
  %5463 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 378)  ; CBufferLoadLegacy(handle,regIndex)
  %5464 = extractvalue %dx.types.CBufRet.f32 %5463, 0
  %5465 = extractvalue %dx.types.CBufRet.f32 %5463, 1
  %5466 = extractvalue %dx.types.CBufRet.f32 %5463, 2
  %5467 = fmul fast float %5460, %5464
  %5468 = fmul fast float %5461, %5465
  %5469 = fmul fast float %5462, %5466
  %5470 = fcmp fast oge float %5467, 0.000000e+00
  %5471 = fcmp fast oge float %5468, 0.000000e+00
  %5472 = fcmp fast oge float %5469, 0.000000e+00
  %5473 = and i1 %5470, %5471
  %5474 = and i1 %5472, %5473
  %5475 = fcmp fast ole float %5467, 1.000000e+00
  %5476 = fcmp fast ole float %5468, 1.000000e+00
  %5477 = fcmp fast ole float %5469, 1.000000e+00
  %5478 = and i1 %5475, %5476
  %5479 = and i1 %5477, %5478
  %5480 = and i1 %5474, %5479
  br i1 %5480, label %5481, label %5513

; <label>:5481                                    ; preds = %5449
  %5482 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 379)  ; CBufferLoadLegacy(handle,regIndex)
  %5483 = extractvalue %dx.types.CBufRet.i32 %5482, 0
  %5484 = icmp eq i32 %5483, 0
  br i1 %5484, label %5491, label %5485

; <label>:5485                                    ; preds = %5481
  %5486 = add i32 %5483, 0
  %5487 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5486, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5488 = fsub fast float -0.000000e+00, %5468
  %5489 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %5487, %dx.types.Handle %101, float %5467, float %5488, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %5490 = extractvalue %dx.types.ResRet.f32 %5489, 0
  br label %5491

; <label>:5491                                    ; preds = %5485, %5481
  %5492 = phi float [ %5490, %5485 ], [ 1.000000e+00, %5481 ]
  %5493 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 369)  ; CBufferLoadLegacy(handle,regIndex)
  %5494 = extractvalue %dx.types.CBufRet.i32 %5493, 0
  %5495 = and i32 %5494, 32
  %5496 = icmp ne i32 %5495, 0
  %5497 = fmul fast float %5492, %5430
  %5498 = select i1 %5496, float %5492, float %5497
  %5499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 379)  ; CBufferLoadLegacy(handle,regIndex)
  %5500 = extractvalue %dx.types.CBufRet.f32 %5499, 1
  %5501 = fmul fast float %5498, %5500
  %5502 = fadd fast float %5501, %5440
  %5503 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 380)  ; CBufferLoadLegacy(handle,regIndex)
  %5504 = extractvalue %dx.types.CBufRet.f32 %5503, 0
  %5505 = fmul fast float %5498, %5504
  %5506 = fadd fast float %5505, %5431
  %5507 = extractvalue %dx.types.CBufRet.f32 %5503, 1
  %5508 = fmul fast float %5498, %5507
  %5509 = fadd fast float %5508, %5442
  %5510 = extractvalue %dx.types.CBufRet.f32 %5503, 2
  %5511 = fmul fast float %5510, %5498
  %5512 = fadd fast float %5511, %5445
  br label %5513

; <label>:5513                                    ; preds = %5491, %5449, %5436, %5429, %4383
  %5514 = phi float [ %5353, %5429 ], [ %4387, %4383 ], [ %5502, %5491 ], [ %5440, %5449 ], [ %5440, %5436 ]
  %5515 = phi float [ %5431, %5429 ], [ 0.000000e+00, %4383 ], [ %5506, %5491 ], [ %5431, %5449 ], [ %5431, %5436 ]
  %5516 = phi float [ 0.000000e+00, %5429 ], [ 0.000000e+00, %4383 ], [ %5509, %5491 ], [ %5442, %5449 ], [ %5442, %5436 ]
  %5517 = phi float [ 0.000000e+00, %5429 ], [ 0.000000e+00, %4383 ], [ %5512, %5491 ], [ %5445, %5449 ], [ %5445, %5436 ]
  %5518 = call float @dx.op.unary.f32(i32 7, float %5514)  ; Saturate(value)
  %5519 = call float @dx.op.unary.f32(i32 7, float %5515)  ; Saturate(value)
  %5520 = call float @dx.op.unary.f32(i32 7, float %5516)  ; Saturate(value)
  %5521 = call float @dx.op.unary.f32(i32 7, float %5517)  ; Saturate(value)
  %5522 = fcmp fast une float %5520, 0.000000e+00
  %5523 = fcmp fast une float %5521, 0.000000e+00
  %5524 = or i1 %5522, %5523
  br i1 %5524, label %5525, label %6091

; <label>:5525                                    ; preds = %5513
  %5526 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5527 = extractvalue %dx.types.CBufRet.f32 %5526, 0
  %5528 = extractvalue %dx.types.CBufRet.f32 %5526, 1
  %5529 = extractvalue %dx.types.CBufRet.f32 %5526, 2
  %5530 = fadd fast float %5527, %167
  %5531 = fadd fast float %5528, %168
  %5532 = fadd fast float %5529, %169
  br i1 %5522, label %5533, label %5806

; <label>:5533                                    ; preds = %5525
  %5534 = call float @dx.op.unary.f32(i32 23, float %4261)  ; Log(value)
  %5535 = fmul fast float %5534, 4.000000e+00
  %5536 = call float @dx.op.unary.f32(i32 21, float %5535)  ; Exp(value)
  %5537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %5538 = extractvalue %dx.types.CBufRet.f32 %5537, 0
  %5539 = fmul fast float %5538, %5530
  %5540 = fmul fast float %5538, %5531
  %5541 = fmul fast float %5538, %5532
  %5542 = call float @dx.op.unary.f32(i32 6, float %111)  ; FAbs(value)
  %5543 = call float @dx.op.unary.f32(i32 6, float %112)  ; FAbs(value)
  %5544 = call float @dx.op.unary.f32(i32 6, float %113)  ; FAbs(value)
  %5545 = call float @dx.op.unary.f32(i32 23, float %5542)  ; Log(value)
  %5546 = call float @dx.op.unary.f32(i32 23, float %5543)  ; Log(value)
  %5547 = call float @dx.op.unary.f32(i32 23, float %5544)  ; Log(value)
  %5548 = fmul fast float %5545, 4.000000e+00
  %5549 = fmul fast float %5546, 4.000000e+00
  %5550 = fmul fast float %5547, 4.000000e+00
  %5551 = call float @dx.op.unary.f32(i32 21, float %5548)  ; Exp(value)
  %5552 = call float @dx.op.unary.f32(i32 21, float %5549)  ; Exp(value)
  %5553 = call float @dx.op.unary.f32(i32 21, float %5550)  ; Exp(value)
  %5554 = fadd fast float %5552, %5551
  %5555 = fadd fast float %5554, %5553
  %5556 = fdiv fast float 1.000000e+00, %5555
  %5557 = fmul fast float %5556, %5551
  %5558 = fcmp fast ogt float %111, 0.000000e+00
  %5559 = fcmp fast ogt float %112, 0.000000e+00
  %5560 = fcmp fast ogt float %113, 0.000000e+00
  %5561 = fcmp fast olt float %111, 0.000000e+00
  %5562 = fcmp fast olt float %112, 0.000000e+00
  %5563 = fcmp fast olt float %113, 0.000000e+00
  %5564 = zext i1 %5558 to i32
  %5565 = zext i1 %5559 to i32
  %5566 = zext i1 %5560 to i32
  %5567 = zext i1 %5561 to i32
  %5568 = zext i1 %5562 to i32
  %5569 = zext i1 %5563 to i32
  %5570 = sub nsw i32 %5564, %5567
  %5571 = sub nsw i32 %5565, %5568
  %5572 = sub nsw i32 %5566, %5569
  %5573 = call float @dx.op.unary.f32(i32 83, float %5539)  ; DerivCoarseX(value)
  %5574 = call float @dx.op.unary.f32(i32 83, float %5540)  ; DerivCoarseX(value)
  %5575 = call float @dx.op.unary.f32(i32 83, float %5541)  ; DerivCoarseX(value)
  %5576 = call float @dx.op.unary.f32(i32 84, float %5539)  ; DerivCoarseY(value)
  %5577 = call float @dx.op.unary.f32(i32 84, float %5540)  ; DerivCoarseY(value)
  %5578 = call float @dx.op.unary.f32(i32 84, float %5541)  ; DerivCoarseY(value)
  %5579 = fcmp fast ole float %239, %5557
  %5580 = fmul fast float %5556, %5554
  %5581 = fcmp fast ole float %239, %5580
  %5582 = select i1 %5581, float %5541, float %5539
  %5583 = select i1 %5581, float %5539, float %5540
  %5584 = select i1 %5579, float %5540, float %5582
  %5585 = select i1 %5579, float %5541, float %5583
  %5586 = select i1 %5581, float %5575, float %5573
  %5587 = select i1 %5581, float %5573, float %5574
  %5588 = select i1 %5579, float %5574, float %5586
  %5589 = select i1 %5579, float %5575, float %5587
  %5590 = select i1 %5581, float %5578, float %5576
  %5591 = select i1 %5581, float %5576, float %5577
  %5592 = select i1 %5579, float %5577, float %5590
  %5593 = select i1 %5579, float %5578, float %5591
  %5594 = call float @dx.op.unary.f32(i32 27, float %5584)  ; Round_ni(value)
  %5595 = call float @dx.op.unary.f32(i32 27, float %5585)  ; Round_ni(value)
  %5596 = fptosi float %5594 to i32
  %5597 = fptosi float %5595 to i32
  %5598 = xor i32 %5597, %5596
  %5599 = sitofp i32 %5598 to float
  %5600 = fptosi float %5599 to i32
  %5601 = sitofp i32 %5600 to float
  %5602 = fmul fast float %5601, 0x3FE3C6EF40000000
  %5603 = frem fast float %5594, 2.560000e+02
  %5604 = frem fast float %5595, 2.560000e+02
  %5605 = fptoui float %5603 to i32
  %5606 = fptoui float %5604 to i32
  %5607 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %29, i32 0, i32 %5605, i32 %5606, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5608 = extractvalue %dx.types.ResRet.f32 %5607, 0
  %5609 = extractvalue %dx.types.ResRet.f32 %5607, 1
  %5610 = extractvalue %dx.types.ResRet.f32 %5607, 2
  %5611 = fadd fast float %5608, %5602
  %5612 = fadd fast float %5609, %5602
  %5613 = fadd fast float %5610, %5602
  %5614 = call float @dx.op.unary.f32(i32 22, float %5611)  ; Frc(value)
  %5615 = call float @dx.op.unary.f32(i32 22, float %5612)  ; Frc(value)
  %5616 = call float @dx.op.unary.f32(i32 22, float %5613)  ; Frc(value)
  %5617 = fmul fast float %5616, 0x401921FB60000000
  %5618 = call float @dx.op.unary.f32(i32 13, float %5617)  ; Sin(value)
  %5619 = call float @dx.op.unary.f32(i32 12, float %5617)  ; Cos(value)
  %5620 = fsub fast float -0.000000e+00, %5619
  %5621 = fmul fast float %5619, %5584
  %5622 = call float @dx.op.tertiary.f32(i32 46, float %5618, float %5585, float %5621)  ; FMad(a,b,c)
  %5623 = fmul fast float %5618, %5584
  %5624 = call float @dx.op.tertiary.f32(i32 46, float %5620, float %5585, float %5623)  ; FMad(a,b,c)
  %5625 = fadd fast float %5622, %5614
  %5626 = fadd fast float %5624, %5615
  %5627 = extractvalue %dx.types.CBufRet.f32 %5537, 3
  %5628 = bitcast float %5627 to i32
  %5629 = icmp eq i32 %5628, 0
  br i1 %5629, label %5668, label %5630

; <label>:5630                                    ; preds = %5533
  %5631 = add i32 %5628, 0
  %5632 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5631, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5633 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5632, %dx.types.Handle %101, float %5625, float %5626, float undef, float undef, i32 0, i32 0, i32 undef, float %5588, float %5589, float undef, float %5592, float %5593, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5634 = extractvalue %dx.types.ResRet.f32 %5633, 0
  %5635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %5636 = extractvalue %dx.types.CBufRet.f32 %5635, 1
  %5637 = extractvalue %dx.types.CBufRet.f32 %5635, 2
  %5638 = fsub fast float 1.000000e+00, %5520
  %5639 = call float @dx.op.binary.f32(i32 35, float %5638, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5640 = bitcast float %5520 to i32
  %5641 = sitofp i32 %5640 to float
  %5642 = fadd fast float %5641, 0xC1CFBF8940000000
  %5643 = fmul fast float %5637, %5642
  %5644 = fadd fast float %5643, 0x41CFBF8940000000
  %5645 = fptosi float %5644 to i32
  %5646 = bitcast i32 %5645 to float
  %5647 = bitcast float %5639 to i32
  %5648 = sitofp i32 %5647 to float
  %5649 = fadd fast float %5648, 0xC1CFBF8940000000
  %5650 = fmul fast float %5649, %5637
  %5651 = fadd fast float %5650, 0x41CFBF8940000000
  %5652 = fptosi float %5651 to i32
  %5653 = bitcast i32 %5652 to float
  %5654 = fmul fast float %5646, %5636
  %5655 = fmul fast float %5653, %5636
  %5656 = fsub fast float %5639, %5654
  %5657 = fadd fast float %5655, %5639
  %5658 = call float @dx.op.unary.f32(i32 7, float %5656)  ; Saturate(value)
  %5659 = call float @dx.op.unary.f32(i32 7, float %5657)  ; Saturate(value)
  %5660 = fsub fast float %5634, %5658
  %5661 = fsub fast float %5659, %5658
  %5662 = bitcast float %5661 to i32
  %5663 = sub nsw i32 2129859010, %5662
  %5664 = bitcast i32 %5663 to float
  %5665 = fmul fast float %5664, %5660
  %5666 = call float @dx.op.unary.f32(i32 7, float %5665)  ; Saturate(value)
  %5667 = fcmp fast olt float %5666, 0x3F70101020000000
  br i1 %5667, label %5806, label %5668

; <label>:5668                                    ; preds = %5630, %5533
  %5669 = phi float [ %5666, %5630 ], [ %5520, %5533 ]
  %5670 = fmul fast float %5669, %5536
  %5671 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %5672 = extractvalue %dx.types.CBufRet.i32 %5671, 1
  %5673 = extractvalue %dx.types.CBufRet.i32 %5671, 0
  %5674 = add i32 %5673, 0
  %5675 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5674, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5676 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5675, %dx.types.Handle %100, float %5625, float %5626, float undef, float undef, i32 0, i32 0, i32 undef, float %5588, float %5589, float undef, float %5592, float %5593, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5677 = extractvalue %dx.types.ResRet.f32 %5676, 0
  %5678 = extractvalue %dx.types.ResRet.f32 %5676, 1
  %5679 = extractvalue %dx.types.ResRet.f32 %5676, 2
  %5680 = extractvalue %dx.types.ResRet.f32 %5676, 3
  %5681 = and i32 %5672, 255
  %5682 = uitofp i32 %5681 to float
  %5683 = lshr i32 %5672, 8
  %5684 = and i32 %5683, 255
  %5685 = uitofp i32 %5684 to float
  %5686 = fmul fast float %5680, %5682
  %5687 = fadd fast float %5686, %5685
  %5688 = fmul fast float %5687, 0x3F70101000000000
  %5689 = fadd fast float %5688, 0xBFB99999A0000000
  %5690 = call float @dx.op.unary.f32(i32 7, float %5689)  ; Saturate(value)
  %5691 = fmul fast float %5690, 0x3FF1C71C80000000
  %5692 = call float @dx.op.binary.f32(i32 36, float %5688, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5693 = fsub fast float 1.000000e+00, %5691
  %5694 = call float @dx.op.unary.f32(i32 7, float %5693)  ; Saturate(value)
  %5695 = fmul fast float %5694, %5677
  %5696 = fmul fast float %5694, %5678
  %5697 = fmul fast float %5694, %5679
  %5698 = call float @dx.op.unary.f32(i32 7, float %5695)  ; Saturate(value)
  %5699 = call float @dx.op.unary.f32(i32 7, float %5696)  ; Saturate(value)
  %5700 = call float @dx.op.unary.f32(i32 7, float %5697)  ; Saturate(value)
  %5701 = fmul fast float %5691, %5677
  %5702 = fmul fast float %5691, %5678
  %5703 = fmul fast float %5691, %5679
  %5704 = fadd fast float %5701, %5692
  %5705 = fadd fast float %5702, %5692
  %5706 = fadd fast float %5703, %5692
  %5707 = call float @dx.op.unary.f32(i32 7, float %5704)  ; Saturate(value)
  %5708 = call float @dx.op.unary.f32(i32 7, float %5705)  ; Saturate(value)
  %5709 = call float @dx.op.unary.f32(i32 7, float %5706)  ; Saturate(value)
  %5710 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %5711 = extractvalue %dx.types.CBufRet.i32 %5710, 3
  %5712 = extractvalue %dx.types.CBufRet.i32 %5710, 2
  %5713 = add i32 %5712, 0
  %5714 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5713, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5715 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5714, %dx.types.Handle %100, float %5625, float %5626, float undef, float undef, i32 0, i32 0, i32 undef, float %5588, float %5589, float undef, float %5592, float %5593, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5716 = extractvalue %dx.types.ResRet.f32 %5715, 0
  %5717 = extractvalue %dx.types.ResRet.f32 %5715, 1
  %5718 = extractvalue %dx.types.ResRet.f32 %5715, 2
  %5719 = extractvalue %dx.types.ResRet.f32 %5715, 3
  %5720 = and i32 %5711, 255
  %5721 = uitofp i32 %5720 to float
  %5722 = lshr i32 %5711, 8
  %5723 = and i32 %5722, 255
  %5724 = uitofp i32 %5723 to float
  %5725 = lshr i32 %5711, 16
  %5726 = and i32 %5725, 255
  %5727 = uitofp i32 %5726 to float
  %5728 = fmul fast float %5727, 0x3F70101000000000
  %5729 = fmul fast float %5716, %5721
  %5730 = fadd fast float %5729, %5724
  %5731 = fmul fast float %5730, 0x3F70101000000000
  %5732 = fadd fast float %5717, -5.000000e-01
  %5733 = fadd fast float %5719, -5.000000e-01
  %5734 = fmul fast float %5732, %5728
  %5735 = fmul fast float %5733, %5728
  %5736 = fadd fast float %5734, 5.000000e-01
  %5737 = fadd fast float %5735, 5.000000e-01
  %5738 = fmul fast float %5736, 2.000000e+00
  %5739 = fadd fast float %5738, -1.000000e+00
  %5740 = fmul fast float %5737, 2.000000e+00
  %5741 = fadd fast float %5740, -1.000000e+00
  %5742 = fadd fast float %5739, %5741
  %5743 = fmul fast float %5742, 5.000000e-01
  %5744 = fsub fast float %5739, %5741
  %5745 = fmul fast float %5744, 5.000000e-01
  %5746 = call float @dx.op.unary.f32(i32 6, float %5743)  ; FAbs(value)
  %5747 = fsub fast float 1.000000e+00, %5746
  %5748 = call float @dx.op.unary.f32(i32 6, float %5745)  ; FAbs(value)
  %5749 = fsub fast float %5747, %5748
  %5750 = call float @dx.op.dot3.f32(i32 55, float %5743, float %5745, float %5749, float %5743, float %5745, float %5749)  ; Dot3(ax,ay,az,bx,by,bz)
  %5751 = call float @dx.op.unary.f32(i32 25, float %5750)  ; Rsqrt(value)
  %5752 = fmul fast float %5743, %5751
  %5753 = fmul fast float %5745, %5751
  %5754 = select i1 %5581, i32 %5571, i32 %5572
  %5755 = select i1 %5579, i32 %5570, i32 %5754
  %5756 = sitofp i32 %5755 to float
  %5757 = fmul fast float %5749, %5756
  %5758 = fmul fast float %5757, %5751
  %5759 = select i1 %5581, float %5758, float %5753
  %5760 = select i1 %5581, float %5753, float %5758
  %5761 = select i1 %5579, float %5758, float %5752
  %5762 = select i1 %5579, float %5753, float %5759
  %5763 = select i1 %5579, float %5752, float %5760
  %5764 = fsub fast float %5698, %4301
  %5765 = fsub fast float %5699, %4302
  %5766 = fsub fast float %5700, %4303
  %5767 = fmul fast float %5764, %5670
  %5768 = fmul fast float %5765, %5670
  %5769 = fmul fast float %5766, %5670
  %5770 = fadd fast float %5767, %4301
  %5771 = fadd fast float %5768, %4302
  %5772 = fadd fast float %5769, %4303
  %5773 = fsub fast float %5707, %4286
  %5774 = fsub fast float %5708, %4287
  %5775 = fsub fast float %5709, %4288
  %5776 = fmul fast float %5773, %5670
  %5777 = fmul fast float %5774, %5670
  %5778 = fmul fast float %5775, %5670
  %5779 = fadd fast float %5776, %4286
  %5780 = fadd fast float %5777, %4287
  %5781 = fadd fast float %5778, %4288
  %5782 = fadd fast float %5761, %4249
  %5783 = fadd fast float %5762, %4250
  %5784 = fadd fast float %5763, %4251
  %5785 = call float @dx.op.dot3.f32(i32 55, float %5782, float %5783, float %5784, float %5782, float %5783, float %5784)  ; Dot3(ax,ay,az,bx,by,bz)
  %5786 = call float @dx.op.unary.f32(i32 25, float %5785)  ; Rsqrt(value)
  %5787 = fmul fast float %5782, %5786
  %5788 = fmul fast float %5783, %5786
  %5789 = fmul fast float %5784, %5786
  %5790 = fsub fast float %5787, %4249
  %5791 = fsub fast float %5788, %4250
  %5792 = fsub fast float %5789, %4251
  %5793 = fmul fast float %5790, %5670
  %5794 = fmul fast float %5791, %5670
  %5795 = fmul fast float %5792, %5670
  %5796 = fadd fast float %5793, %4249
  %5797 = fadd fast float %5794, %4250
  %5798 = fadd fast float %5795, %4251
  %5799 = call float @dx.op.binary.f32(i32 36, float %4261, float %5718)  ; FMin(a,b)
  %5800 = fsub fast float %5799, %4261
  %5801 = fmul fast float %5800, %5670
  %5802 = fadd fast float %5801, %4261
  %5803 = fsub fast float %5731, %4289
  %5804 = fmul fast float %5803, %5670
  %5805 = fadd fast float %5804, %4289
  br label %5806

; <label>:5806                                    ; preds = %5668, %5630, %5525
  %5807 = phi float [ %5770, %5668 ], [ %4301, %5630 ], [ %4301, %5525 ]
  %5808 = phi float [ %5771, %5668 ], [ %4302, %5630 ], [ %4302, %5525 ]
  %5809 = phi float [ %5772, %5668 ], [ %4303, %5630 ], [ %4303, %5525 ]
  %5810 = phi float [ %5796, %5668 ], [ %4249, %5630 ], [ %4249, %5525 ]
  %5811 = phi float [ %5797, %5668 ], [ %4250, %5630 ], [ %4250, %5525 ]
  %5812 = phi float [ %5798, %5668 ], [ %4251, %5630 ], [ %4251, %5525 ]
  %5813 = phi float [ %5779, %5668 ], [ %4286, %5630 ], [ %4286, %5525 ]
  %5814 = phi float [ %5780, %5668 ], [ %4287, %5630 ], [ %4287, %5525 ]
  %5815 = phi float [ %5781, %5668 ], [ %4288, %5630 ], [ %4288, %5525 ]
  %5816 = phi float [ %5805, %5668 ], [ %4289, %5630 ], [ %4289, %5525 ]
  %5817 = phi float [ %5802, %5668 ], [ %4261, %5630 ], [ %4261, %5525 ]
  br i1 %5523, label %5818, label %6091

; <label>:5818                                    ; preds = %5806
  %5819 = call float @dx.op.unary.f32(i32 23, float %5817)  ; Log(value)
  %5820 = fmul fast float %5819, 4.000000e+00
  %5821 = call float @dx.op.unary.f32(i32 21, float %5820)  ; Exp(value)
  %5822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5823 = extractvalue %dx.types.CBufRet.f32 %5822, 0
  %5824 = fmul fast float %5823, %5530
  %5825 = fmul fast float %5823, %5531
  %5826 = fmul fast float %5823, %5532
  %5827 = call float @dx.op.unary.f32(i32 6, float %111)  ; FAbs(value)
  %5828 = call float @dx.op.unary.f32(i32 6, float %112)  ; FAbs(value)
  %5829 = call float @dx.op.unary.f32(i32 6, float %113)  ; FAbs(value)
  %5830 = call float @dx.op.unary.f32(i32 23, float %5827)  ; Log(value)
  %5831 = call float @dx.op.unary.f32(i32 23, float %5828)  ; Log(value)
  %5832 = call float @dx.op.unary.f32(i32 23, float %5829)  ; Log(value)
  %5833 = fmul fast float %5830, 4.000000e+00
  %5834 = fmul fast float %5831, 4.000000e+00
  %5835 = fmul fast float %5832, 4.000000e+00
  %5836 = call float @dx.op.unary.f32(i32 21, float %5833)  ; Exp(value)
  %5837 = call float @dx.op.unary.f32(i32 21, float %5834)  ; Exp(value)
  %5838 = call float @dx.op.unary.f32(i32 21, float %5835)  ; Exp(value)
  %5839 = fadd fast float %5837, %5836
  %5840 = fadd fast float %5839, %5838
  %5841 = fdiv fast float 1.000000e+00, %5840
  %5842 = fmul fast float %5841, %5836
  %5843 = fcmp fast ogt float %111, 0.000000e+00
  %5844 = fcmp fast ogt float %112, 0.000000e+00
  %5845 = fcmp fast ogt float %113, 0.000000e+00
  %5846 = fcmp fast olt float %111, 0.000000e+00
  %5847 = fcmp fast olt float %112, 0.000000e+00
  %5848 = fcmp fast olt float %113, 0.000000e+00
  %5849 = zext i1 %5843 to i32
  %5850 = zext i1 %5844 to i32
  %5851 = zext i1 %5845 to i32
  %5852 = zext i1 %5846 to i32
  %5853 = zext i1 %5847 to i32
  %5854 = zext i1 %5848 to i32
  %5855 = sub nsw i32 %5849, %5852
  %5856 = sub nsw i32 %5850, %5853
  %5857 = sub nsw i32 %5851, %5854
  %5858 = call float @dx.op.unary.f32(i32 83, float %5824)  ; DerivCoarseX(value)
  %5859 = call float @dx.op.unary.f32(i32 83, float %5825)  ; DerivCoarseX(value)
  %5860 = call float @dx.op.unary.f32(i32 83, float %5826)  ; DerivCoarseX(value)
  %5861 = call float @dx.op.unary.f32(i32 84, float %5824)  ; DerivCoarseY(value)
  %5862 = call float @dx.op.unary.f32(i32 84, float %5825)  ; DerivCoarseY(value)
  %5863 = call float @dx.op.unary.f32(i32 84, float %5826)  ; DerivCoarseY(value)
  %5864 = fcmp fast ole float %239, %5842
  %5865 = fmul fast float %5841, %5839
  %5866 = fcmp fast ole float %239, %5865
  %5867 = select i1 %5866, float %5826, float %5824
  %5868 = select i1 %5866, float %5824, float %5825
  %5869 = select i1 %5864, float %5825, float %5867
  %5870 = select i1 %5864, float %5826, float %5868
  %5871 = select i1 %5866, float %5860, float %5858
  %5872 = select i1 %5866, float %5858, float %5859
  %5873 = select i1 %5864, float %5859, float %5871
  %5874 = select i1 %5864, float %5860, float %5872
  %5875 = select i1 %5866, float %5863, float %5861
  %5876 = select i1 %5866, float %5861, float %5862
  %5877 = select i1 %5864, float %5862, float %5875
  %5878 = select i1 %5864, float %5863, float %5876
  %5879 = call float @dx.op.unary.f32(i32 27, float %5869)  ; Round_ni(value)
  %5880 = call float @dx.op.unary.f32(i32 27, float %5870)  ; Round_ni(value)
  %5881 = fptosi float %5879 to i32
  %5882 = fptosi float %5880 to i32
  %5883 = xor i32 %5882, %5881
  %5884 = sitofp i32 %5883 to float
  %5885 = fptosi float %5884 to i32
  %5886 = sitofp i32 %5885 to float
  %5887 = fmul fast float %5886, 0x3FE3C6EF40000000
  %5888 = frem fast float %5879, 2.560000e+02
  %5889 = frem fast float %5880, 2.560000e+02
  %5890 = fptoui float %5888 to i32
  %5891 = fptoui float %5889 to i32
  %5892 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %29, i32 0, i32 %5890, i32 %5891, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5893 = extractvalue %dx.types.ResRet.f32 %5892, 0
  %5894 = extractvalue %dx.types.ResRet.f32 %5892, 1
  %5895 = extractvalue %dx.types.ResRet.f32 %5892, 2
  %5896 = fadd fast float %5893, %5887
  %5897 = fadd fast float %5894, %5887
  %5898 = fadd fast float %5895, %5887
  %5899 = call float @dx.op.unary.f32(i32 22, float %5896)  ; Frc(value)
  %5900 = call float @dx.op.unary.f32(i32 22, float %5897)  ; Frc(value)
  %5901 = call float @dx.op.unary.f32(i32 22, float %5898)  ; Frc(value)
  %5902 = fmul fast float %5901, 0x401921FB60000000
  %5903 = call float @dx.op.unary.f32(i32 13, float %5902)  ; Sin(value)
  %5904 = call float @dx.op.unary.f32(i32 12, float %5902)  ; Cos(value)
  %5905 = fsub fast float -0.000000e+00, %5904
  %5906 = fmul fast float %5904, %5869
  %5907 = call float @dx.op.tertiary.f32(i32 46, float %5903, float %5870, float %5906)  ; FMad(a,b,c)
  %5908 = fmul fast float %5903, %5869
  %5909 = call float @dx.op.tertiary.f32(i32 46, float %5905, float %5870, float %5908)  ; FMad(a,b,c)
  %5910 = fadd fast float %5907, %5899
  %5911 = fadd fast float %5909, %5900
  %5912 = extractvalue %dx.types.CBufRet.f32 %5822, 3
  %5913 = bitcast float %5912 to i32
  %5914 = icmp eq i32 %5913, 0
  br i1 %5914, label %5953, label %5915

; <label>:5915                                    ; preds = %5818
  %5916 = add i32 %5913, 0
  %5917 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5916, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5918 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5917, %dx.types.Handle %101, float %5910, float %5911, float undef, float undef, i32 0, i32 0, i32 undef, float %5873, float %5874, float undef, float %5877, float %5878, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5919 = extractvalue %dx.types.ResRet.f32 %5918, 0
  %5920 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5921 = extractvalue %dx.types.CBufRet.f32 %5920, 1
  %5922 = extractvalue %dx.types.CBufRet.f32 %5920, 2
  %5923 = fsub fast float 1.000000e+00, %5521
  %5924 = call float @dx.op.binary.f32(i32 35, float %5923, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5925 = bitcast float %5521 to i32
  %5926 = sitofp i32 %5925 to float
  %5927 = fadd fast float %5926, 0xC1CFBF8940000000
  %5928 = fmul fast float %5922, %5927
  %5929 = fadd fast float %5928, 0x41CFBF8940000000
  %5930 = fptosi float %5929 to i32
  %5931 = bitcast i32 %5930 to float
  %5932 = bitcast float %5924 to i32
  %5933 = sitofp i32 %5932 to float
  %5934 = fadd fast float %5933, 0xC1CFBF8940000000
  %5935 = fmul fast float %5934, %5922
  %5936 = fadd fast float %5935, 0x41CFBF8940000000
  %5937 = fptosi float %5936 to i32
  %5938 = bitcast i32 %5937 to float
  %5939 = fmul fast float %5931, %5921
  %5940 = fmul fast float %5938, %5921
  %5941 = fsub fast float %5924, %5939
  %5942 = fadd fast float %5940, %5924
  %5943 = call float @dx.op.unary.f32(i32 7, float %5941)  ; Saturate(value)
  %5944 = call float @dx.op.unary.f32(i32 7, float %5942)  ; Saturate(value)
  %5945 = fsub fast float %5919, %5943
  %5946 = fsub fast float %5944, %5943
  %5947 = bitcast float %5946 to i32
  %5948 = sub nsw i32 2129859010, %5947
  %5949 = bitcast i32 %5948 to float
  %5950 = fmul fast float %5949, %5945
  %5951 = call float @dx.op.unary.f32(i32 7, float %5950)  ; Saturate(value)
  %5952 = fcmp fast olt float %5951, 0x3F70101020000000
  br i1 %5952, label %6091, label %5953

; <label>:5953                                    ; preds = %5915, %5818
  %5954 = phi float [ %5951, %5915 ], [ %5521, %5818 ]
  %5955 = fmul fast float %5954, %5821
  %5956 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5957 = extractvalue %dx.types.CBufRet.i32 %5956, 1
  %5958 = extractvalue %dx.types.CBufRet.i32 %5956, 0
  %5959 = add i32 %5958, 0
  %5960 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5959, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5961 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5960, %dx.types.Handle %100, float %5910, float %5911, float undef, float undef, i32 0, i32 0, i32 undef, float %5873, float %5874, float undef, float %5877, float %5878, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5962 = extractvalue %dx.types.ResRet.f32 %5961, 0
  %5963 = extractvalue %dx.types.ResRet.f32 %5961, 1
  %5964 = extractvalue %dx.types.ResRet.f32 %5961, 2
  %5965 = extractvalue %dx.types.ResRet.f32 %5961, 3
  %5966 = and i32 %5957, 255
  %5967 = uitofp i32 %5966 to float
  %5968 = lshr i32 %5957, 8
  %5969 = and i32 %5968, 255
  %5970 = uitofp i32 %5969 to float
  %5971 = fmul fast float %5965, %5967
  %5972 = fadd fast float %5971, %5970
  %5973 = fmul fast float %5972, 0x3F70101000000000
  %5974 = fadd fast float %5973, 0xBFB99999A0000000
  %5975 = call float @dx.op.unary.f32(i32 7, float %5974)  ; Saturate(value)
  %5976 = fmul fast float %5975, 0x3FF1C71C80000000
  %5977 = call float @dx.op.binary.f32(i32 36, float %5973, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5978 = fsub fast float 1.000000e+00, %5976
  %5979 = call float @dx.op.unary.f32(i32 7, float %5978)  ; Saturate(value)
  %5980 = fmul fast float %5979, %5962
  %5981 = fmul fast float %5979, %5963
  %5982 = fmul fast float %5979, %5964
  %5983 = call float @dx.op.unary.f32(i32 7, float %5980)  ; Saturate(value)
  %5984 = call float @dx.op.unary.f32(i32 7, float %5981)  ; Saturate(value)
  %5985 = call float @dx.op.unary.f32(i32 7, float %5982)  ; Saturate(value)
  %5986 = fmul fast float %5976, %5962
  %5987 = fmul fast float %5976, %5963
  %5988 = fmul fast float %5976, %5964
  %5989 = fadd fast float %5986, %5977
  %5990 = fadd fast float %5987, %5977
  %5991 = fadd fast float %5988, %5977
  %5992 = call float @dx.op.unary.f32(i32 7, float %5989)  ; Saturate(value)
  %5993 = call float @dx.op.unary.f32(i32 7, float %5990)  ; Saturate(value)
  %5994 = call float @dx.op.unary.f32(i32 7, float %5991)  ; Saturate(value)
  %5995 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5996 = extractvalue %dx.types.CBufRet.i32 %5995, 3
  %5997 = extractvalue %dx.types.CBufRet.i32 %5995, 2
  %5998 = add i32 %5997, 0
  %5999 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5998, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6000 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5999, %dx.types.Handle %100, float %5910, float %5911, float undef, float undef, i32 0, i32 0, i32 undef, float %5873, float %5874, float undef, float %5877, float %5878, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %6001 = extractvalue %dx.types.ResRet.f32 %6000, 0
  %6002 = extractvalue %dx.types.ResRet.f32 %6000, 1
  %6003 = extractvalue %dx.types.ResRet.f32 %6000, 2
  %6004 = extractvalue %dx.types.ResRet.f32 %6000, 3
  %6005 = and i32 %5996, 255
  %6006 = uitofp i32 %6005 to float
  %6007 = lshr i32 %5996, 8
  %6008 = and i32 %6007, 255
  %6009 = uitofp i32 %6008 to float
  %6010 = lshr i32 %5996, 16
  %6011 = and i32 %6010, 255
  %6012 = uitofp i32 %6011 to float
  %6013 = fmul fast float %6012, 0x3F70101000000000
  %6014 = fmul fast float %6001, %6006
  %6015 = fadd fast float %6014, %6009
  %6016 = fmul fast float %6015, 0x3F70101000000000
  %6017 = fadd fast float %6002, -5.000000e-01
  %6018 = fadd fast float %6004, -5.000000e-01
  %6019 = fmul fast float %6017, %6013
  %6020 = fmul fast float %6018, %6013
  %6021 = fadd fast float %6019, 5.000000e-01
  %6022 = fadd fast float %6020, 5.000000e-01
  %6023 = fmul fast float %6021, 2.000000e+00
  %6024 = fadd fast float %6023, -1.000000e+00
  %6025 = fmul fast float %6022, 2.000000e+00
  %6026 = fadd fast float %6025, -1.000000e+00
  %6027 = fadd fast float %6024, %6026
  %6028 = fmul fast float %6027, 5.000000e-01
  %6029 = fsub fast float %6024, %6026
  %6030 = fmul fast float %6029, 5.000000e-01
  %6031 = call float @dx.op.unary.f32(i32 6, float %6028)  ; FAbs(value)
  %6032 = fsub fast float 1.000000e+00, %6031
  %6033 = call float @dx.op.unary.f32(i32 6, float %6030)  ; FAbs(value)
  %6034 = fsub fast float %6032, %6033
  %6035 = call float @dx.op.dot3.f32(i32 55, float %6028, float %6030, float %6034, float %6028, float %6030, float %6034)  ; Dot3(ax,ay,az,bx,by,bz)
  %6036 = call float @dx.op.unary.f32(i32 25, float %6035)  ; Rsqrt(value)
  %6037 = fmul fast float %6028, %6036
  %6038 = fmul fast float %6030, %6036
  %6039 = select i1 %5866, i32 %5856, i32 %5857
  %6040 = select i1 %5864, i32 %5855, i32 %6039
  %6041 = sitofp i32 %6040 to float
  %6042 = fmul fast float %6034, %6041
  %6043 = fmul fast float %6042, %6036
  %6044 = select i1 %5866, float %6043, float %6038
  %6045 = select i1 %5866, float %6038, float %6043
  %6046 = select i1 %5864, float %6043, float %6037
  %6047 = select i1 %5864, float %6038, float %6044
  %6048 = select i1 %5864, float %6037, float %6045
  %6049 = fsub fast float %5983, %5807
  %6050 = fsub fast float %5984, %5808
  %6051 = fsub fast float %5985, %5809
  %6052 = fmul fast float %6049, %5955
  %6053 = fmul fast float %6050, %5955
  %6054 = fmul fast float %6051, %5955
  %6055 = fadd fast float %6052, %5807
  %6056 = fadd fast float %6053, %5808
  %6057 = fadd fast float %6054, %5809
  %6058 = fsub fast float %5992, %5813
  %6059 = fsub fast float %5993, %5814
  %6060 = fsub fast float %5994, %5815
  %6061 = fmul fast float %6058, %5955
  %6062 = fmul fast float %6059, %5955
  %6063 = fmul fast float %6060, %5955
  %6064 = fadd fast float %6061, %5813
  %6065 = fadd fast float %6062, %5814
  %6066 = fadd fast float %6063, %5815
  %6067 = fadd fast float %6046, %5810
  %6068 = fadd fast float %6047, %5811
  %6069 = fadd fast float %6048, %5812
  %6070 = call float @dx.op.dot3.f32(i32 55, float %6067, float %6068, float %6069, float %6067, float %6068, float %6069)  ; Dot3(ax,ay,az,bx,by,bz)
  %6071 = call float @dx.op.unary.f32(i32 25, float %6070)  ; Rsqrt(value)
  %6072 = fmul fast float %6067, %6071
  %6073 = fmul fast float %6068, %6071
  %6074 = fmul fast float %6069, %6071
  %6075 = fsub fast float %6072, %5810
  %6076 = fsub fast float %6073, %5811
  %6077 = fsub fast float %6074, %5812
  %6078 = fmul fast float %6075, %5955
  %6079 = fmul fast float %6076, %5955
  %6080 = fmul fast float %6077, %5955
  %6081 = fadd fast float %6078, %5810
  %6082 = fadd fast float %6079, %5811
  %6083 = fadd fast float %6080, %5812
  %6084 = call float @dx.op.binary.f32(i32 36, float %5817, float %6003)  ; FMin(a,b)
  %6085 = fsub fast float %6084, %5817
  %6086 = fmul fast float %6085, %5955
  %6087 = fadd fast float %6086, %5817
  %6088 = fsub fast float %6016, %5816
  %6089 = fmul fast float %6088, %5955
  %6090 = fadd fast float %6089, %5816
  br label %6091

; <label>:6091                                    ; preds = %5953, %5915, %5806, %5513
  %6092 = phi float [ %6055, %5953 ], [ %5807, %5915 ], [ %5807, %5806 ], [ %4301, %5513 ]
  %6093 = phi float [ %6056, %5953 ], [ %5808, %5915 ], [ %5808, %5806 ], [ %4302, %5513 ]
  %6094 = phi float [ %6057, %5953 ], [ %5809, %5915 ], [ %5809, %5806 ], [ %4303, %5513 ]
  %6095 = phi float [ %6081, %5953 ], [ %5810, %5915 ], [ %5810, %5806 ], [ %4249, %5513 ]
  %6096 = phi float [ %6082, %5953 ], [ %5811, %5915 ], [ %5811, %5806 ], [ %4250, %5513 ]
  %6097 = phi float [ %6083, %5953 ], [ %5812, %5915 ], [ %5812, %5806 ], [ %4251, %5513 ]
  %6098 = phi float [ %6064, %5953 ], [ %5813, %5915 ], [ %5813, %5806 ], [ %4286, %5513 ]
  %6099 = phi float [ %6065, %5953 ], [ %5814, %5915 ], [ %5814, %5806 ], [ %4287, %5513 ]
  %6100 = phi float [ %6066, %5953 ], [ %5815, %5915 ], [ %5815, %5806 ], [ %4288, %5513 ]
  %6101 = phi float [ %6090, %5953 ], [ %5816, %5915 ], [ %5816, %5806 ], [ %4289, %5513 ]
  %6102 = phi float [ %6087, %5953 ], [ %5817, %5915 ], [ %5817, %5806 ], [ %4261, %5513 ]
  %6103 = fcmp fast une float %5518, 0.000000e+00
  %6104 = call float @dx.op.dot3.f32(i32 55, float %167, float %168, float %169, float %167, float %168, float %169)  ; Dot3(ax,ay,az,bx,by,bz)
  %6105 = call float @dx.op.unary.f32(i32 25, float %6104)  ; Rsqrt(value)
  br i1 %6103, label %6113, label %6106

; <label>:6106                                    ; preds = %6091
  %6107 = fmul fast float %6105, %167
  %6108 = fmul fast float %6105, %168
  %6109 = fmul fast float %6105, %169
  %6110 = fsub fast float -0.000000e+00, %6107
  %6111 = fsub fast float -0.000000e+00, %6108
  %6112 = fsub fast float -0.000000e+00, %6109
  br label %6474

; <label>:6113                                    ; preds = %6091
  %6114 = fmul fast float %167, %6105
  %6115 = fsub fast float -0.000000e+00, %6114
  %6116 = fmul fast float %168, %6105
  %6117 = fsub fast float -0.000000e+00, %6116
  %6118 = fmul fast float %169, %6105
  %6119 = fsub fast float -0.000000e+00, %6118
  %6120 = call float @dx.op.dot3.f32(i32 55, float %6115, float %6117, float %6119, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %6121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6122 = fmul fast float %5518, 2.500000e+00
  %6123 = call float @dx.op.unary.f32(i32 7, float %6122)  ; Saturate(value)
  %6124 = fmul fast float %5518, 0x4013FFFFE0000000
  %6125 = fadd fast float %6124, 0xBFFFFFFFE0000000
  %6126 = call float @dx.op.unary.f32(i32 7, float %6125)  ; Saturate(value)
  %6127 = fmul fast float %5518, 0x4004000020000000
  %6128 = fadd fast float %6127, 0xBFF8000040000000
  %6129 = call float @dx.op.unary.f32(i32 7, float %6128)  ; Saturate(value)
  %6130 = call float @dx.op.unary.f32(i32 7, float %6123)  ; Saturate(value)
  %6131 = fmul fast float %4268, 1.000000e+01
  %6132 = call float @dx.op.unary.f32(i32 7, float %6131)  ; Saturate(value)
  %6133 = fmul fast float %6132, 2.000000e+00
  %6134 = fsub fast float 3.000000e+00, %6133
  %6135 = fmul fast float %6132, %6132
  %6136 = fmul fast float %6135, %6134
  %6137 = fsub fast float 1.000000e+00, %6136
  %6138 = fsub fast float 0x3FE3333340000000, %6101
  %6139 = fmul fast float %6138, 0x400AAAAAA0000000
  %6140 = call float @dx.op.unary.f32(i32 7, float %6139)  ; Saturate(value)
  %6141 = fmul fast float %6137, %6140
  %6142 = fmul fast float %6092, 0x3FEA2B8620000000
  %6143 = fmul fast float %6093, 0x3FEA2B8620000000
  %6144 = fmul fast float %6094, 0x3FEA2B8620000000
  %6145 = fadd fast float %6142, 0x3FC81DFBA0000000
  %6146 = fmul fast float %6145, %6092
  %6147 = fadd fast float %6146, 0x3F910E6020000000
  %6148 = fadd fast float %6143, 0x3FC81DFBA0000000
  %6149 = fmul fast float %6148, %6093
  %6150 = fadd fast float %6149, 0x3F910E6020000000
  %6151 = fadd fast float %6144, 0x3FC81DFBA0000000
  %6152 = fmul fast float %6151, %6094
  %6153 = fadd fast float %6152, 0x3F910E6020000000
  %6154 = call float @dx.op.unary.f32(i32 7, float %6147)  ; Saturate(value)
  %6155 = call float @dx.op.unary.f32(i32 7, float %6150)  ; Saturate(value)
  %6156 = call float @dx.op.unary.f32(i32 7, float %6153)  ; Saturate(value)
  %6157 = fsub fast float %6154, %6092
  %6158 = fsub fast float %6155, %6093
  %6159 = fsub fast float %6156, %6094
  %6160 = fmul fast float %6157, %6130
  %6161 = fmul fast float %6160, %6141
  %6162 = fmul fast float %6158, %6130
  %6163 = fmul fast float %6162, %6141
  %6164 = fmul fast float %6159, %6130
  %6165 = fmul fast float %6164, %6141
  %6166 = fadd fast float %6161, %6092
  %6167 = fadd fast float %6163, %6093
  %6168 = fadd fast float %6165, %6094
  %6169 = fmul fast float %6102, %6102
  %6170 = fmul fast float %6169, %6169
  %6171 = fadd fast float %6126, 1.000000e+00
  %6172 = fsub fast float %6171, %6141
  %6173 = call float @dx.op.unary.f32(i32 7, float %6172)  ; Saturate(value)
  %6174 = call float @dx.op.dot3.f32(i32 55, float %111, float %112, float %113, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6175 = call float @dx.op.unary.f32(i32 7, float %6174)  ; Saturate(value)
  %6176 = fsub fast float 1.000000e+00, %6170
  %6177 = call float @dx.op.binary.f32(i32 36, float %6173, float %6176)  ; FMin(a,b)
  %6178 = call float @dx.op.unary.f32(i32 7, float %6129)  ; Saturate(value)
  %6179 = call float @dx.op.binary.f32(i32 35, float %6177, float %6178)  ; FMax(a,b)
  %6180 = fadd fast float %6175, 0xBFE4CCCCC0000000
  %6181 = fmul fast float %6180, 0x4006DB6DA0000000
  %6182 = call float @dx.op.unary.f32(i32 7, float %6181)  ; Saturate(value)
  %6183 = fmul fast float %6182, 2.000000e+00
  %6184 = fsub fast float 3.000000e+00, %6183
  %6185 = bitcast float %6098 to i32
  %6186 = ashr i32 %6185, 1
  %6187 = add nsw i32 %6186, 532487669
  %6188 = bitcast i32 %6187 to float
  %6189 = fsub fast float 1.000000e+00, %6188
  %6190 = bitcast float %6189 to i32
  %6191 = sub nsw i32 2129859010, %6190
  %6192 = bitcast i32 %6191 to float
  %6193 = fmul fast float %6192, 2.000000e+00
  %6194 = bitcast float %6099 to i32
  %6195 = ashr i32 %6194, 1
  %6196 = add nsw i32 %6195, 532487669
  %6197 = bitcast i32 %6196 to float
  %6198 = fsub fast float 1.000000e+00, %6197
  %6199 = bitcast float %6198 to i32
  %6200 = sub nsw i32 2129859010, %6199
  %6201 = bitcast i32 %6200 to float
  %6202 = fmul fast float %6201, 2.000000e+00
  %6203 = bitcast float %6100 to i32
  %6204 = ashr i32 %6203, 1
  %6205 = add nsw i32 %6204, 532487669
  %6206 = bitcast i32 %6205 to float
  %6207 = fsub fast float 1.000000e+00, %6206
  %6208 = bitcast float %6207 to i32
  %6209 = sub nsw i32 2129859010, %6208
  %6210 = bitcast i32 %6209 to float
  %6211 = fmul fast float %6210, 2.000000e+00
  %6212 = fsub fast float 0x4002A9FBE0000000, %6193
  %6213 = fadd fast float %6193, 0x3FD54FDF00000000
  %6214 = bitcast float %6213 to i32
  %6215 = sub nsw i32 2129859010, %6214
  %6216 = bitcast i32 %6215 to float
  %6217 = fmul fast float %6216, %6212
  %6218 = fmul fast float %6217, %6217
  %6219 = fsub fast float 0x4002A9FBE0000000, %6202
  %6220 = fadd fast float %6202, 0x3FD54FDF00000000
  %6221 = bitcast float %6220 to i32
  %6222 = sub nsw i32 2129859010, %6221
  %6223 = bitcast i32 %6222 to float
  %6224 = fmul fast float %6223, %6219
  %6225 = fmul fast float %6224, %6224
  %6226 = fsub fast float 0x4002A9FBE0000000, %6211
  %6227 = fadd fast float %6211, 0x3FD54FDF00000000
  %6228 = bitcast float %6227 to i32
  %6229 = sub nsw i32 2129859010, %6228
  %6230 = bitcast i32 %6229 to float
  %6231 = fmul fast float %6230, %6226
  %6232 = fmul fast float %6231, %6231
  %6233 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %6218)  ; FMax(a,b)
  %6234 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %6225)  ; FMax(a,b)
  %6235 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %6232)  ; FMax(a,b)
  %6236 = fsub fast float 1.000000e+00, %6120
  %6237 = fadd fast float %6236, %6137
  %6238 = call float @dx.op.unary.f32(i32 7, float %6237)  ; Saturate(value)
  %6239 = fsub fast float 1.000000e+00, %4386
  %6240 = fmul fast float %6179, %6239
  %6241 = fmul fast float %6182, %6182
  %6242 = fmul fast float %6241, %6240
  %6243 = fmul fast float %6242, %6184
  %6244 = fmul fast float %6239, 0xBFE99999A0000000
  %6245 = fmul fast float %6244, %6130
  %6246 = fmul fast float %6245, %6141
  %6247 = fadd fast float %6246, 1.000000e+00
  %6248 = fadd fast float %6101, -1.000000e+00
  %6249 = fmul fast float %6247, %6248
  %6250 = fadd fast float %6249, 1.000000e+00
  %6251 = fsub fast float %6233, %6098
  %6252 = fsub fast float %6234, %6099
  %6253 = fsub fast float %6235, %6100
  %6254 = fmul fast float %6243, %6251
  %6255 = fmul fast float %6243, %6252
  %6256 = fmul fast float %6243, %6253
  %6257 = fadd fast float %6254, %6098
  %6258 = fadd fast float %6255, %6099
  %6259 = fadd fast float %6256, %6100
  %6260 = fsub fast float %111, %6095
  %6261 = fsub fast float %112, %6096
  %6262 = fsub fast float %113, %6097
  %6263 = fmul fast float %6243, %6260
  %6264 = fmul fast float %6243, %6261
  %6265 = fmul fast float %6243, %6262
  %6266 = fadd fast float %6263, %6095
  %6267 = fadd fast float %6264, %6096
  %6268 = fadd fast float %6265, %6097
  %6269 = fmul fast float %6243, %6238
  %6270 = call float @dx.op.unary.f32(i32 7, float %6250)  ; Saturate(value)
  %6271 = fsub fast float 1.000000e+00, %6270
  %6272 = fmul fast float %6269, %6271
  %6273 = fadd fast float %6272, %6270
  %6274 = fsub fast float 1.000000e+00, %6102
  %6275 = fmul fast float %6243, %6274
  %6276 = fadd fast float %6275, %6102
  %6277 = fcmp fast une float %5519, 0.000000e+00
  %6278 = fcmp fast ogt float %6175, 0x3FE4CCCCC0000000
  %6279 = and i1 %6277, %6278
  br i1 %6279, label %6280, label %6466

; <label>:6280                                    ; preds = %6113
  %6281 = extractvalue %dx.types.CBufRet.f32 %6121, 1
  %6282 = fadd fast float %6281, %168
  %6283 = extractvalue %dx.types.CBufRet.f32 %6121, 0
  %6284 = fadd fast float %6283, %167
  %6285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %6286 = extractvalue %dx.types.CBufRet.f32 %6285, 3
  %6287 = fadd fast float %6286, 0x3FC0A3D700000000
  %6288 = fmul fast float %6287, 0x3FF6666660000000
  %6289 = fmul fast float %6286, 0x3FF2978D40000000
  %6290 = fmul fast float %6286, 0x3FF5BA5E40000000
  %6291 = fmul fast float %6286, 0x3FF94FDF40000000
  %6292 = call float @dx.op.unary.f32(i32 6, float %6284)  ; FAbs(value)
  %6293 = call float @dx.op.unary.f32(i32 6, float %6282)  ; FAbs(value)
  %6294 = fmul fast float %6292, 0x3F8EB851E0000000
  %6295 = fmul fast float %6293, 0x3F8EB851E0000000
  %6296 = fmul fast float %5519, 4.000000e+00
  %6297 = call float @dx.op.unary.f32(i32 7, float %6296)  ; Saturate(value)
  %6298 = fadd fast float %6294, 2.500000e-01
  %6299 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %45, float %6298, float %6295, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6300 = extractvalue %dx.types.ResRet.f32 %6299, 0
  %6301 = extractvalue %dx.types.ResRet.f32 %6299, 1
  %6302 = extractvalue %dx.types.ResRet.f32 %6299, 2
  %6303 = extractvalue %dx.types.ResRet.f32 %6299, 3
  %6304 = fmul fast float %6301, 2.000000e+00
  %6305 = fmul fast float %6302, 2.000000e+00
  %6306 = fadd fast float %6304, -1.000000e+00
  %6307 = fadd fast float %6305, -1.000000e+00
  %6308 = fsub fast float 1.000000e+00, %6297
  %6309 = fmul fast float %6308, 8.000000e+00
  %6310 = call float @dx.op.unary.f32(i32 21, float %6309)  ; Exp(value)
  %6311 = fmul fast float %6303, %6310
  %6312 = fadd fast float %6288, -1.000000e+00
  %6313 = fadd fast float %6312, %6303
  %6314 = fadd fast float %6313, %6311
  %6315 = frem fast float %6314, %6310
  %6316 = fcmp fast ole float %6315, 1.000000e+00
  %6317 = call float @dx.op.unary.f32(i32 22, float %6315)  ; Frc(value)
  %6318 = select i1 %6316, float %6317, float 0.000000e+00
  %6319 = fadd fast float %6300, -1.000000e+00
  %6320 = fadd fast float %6319, %6318
  %6321 = fsub fast float 1.000000e+00, %6318
  %6322 = call float @dx.op.unary.f32(i32 7, float %6321)  ; Saturate(value)
  %6323 = fmul fast float %6322, %6300
  %6324 = fmul fast float %6320, 8.000000e+00
  %6325 = call float @dx.op.binary.f32(i32 35, float %6324, float 0.000000e+00)  ; FMax(a,b)
  %6326 = call float @dx.op.binary.f32(i32 36, float %6325, float 4.000000e+00)  ; FMin(a,b)
  %6327 = fmul fast float %6326, 0x400921FB60000000
  %6328 = call float @dx.op.unary.f32(i32 13, float %6327)  ; Sin(value)
  %6329 = fadd fast float %6318, -1.000000e+00
  %6330 = fmul fast float %6323, %6329
  %6331 = fmul fast float %6330, %6328
  %6332 = fmul fast float %6331, %6306
  %6333 = fmul fast float %6331, %6307
  %6334 = fadd fast float %6296, -1.000000e+00
  %6335 = call float @dx.op.unary.f32(i32 7, float %6334)  ; Saturate(value)
  %6336 = fadd fast float %6294, 0xBFE19999A0000000
  %6337 = fadd fast float %6295, 0x3FD3D70A40000000
  %6338 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %45, float %6336, float %6337, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6339 = extractvalue %dx.types.ResRet.f32 %6338, 0
  %6340 = extractvalue %dx.types.ResRet.f32 %6338, 1
  %6341 = extractvalue %dx.types.ResRet.f32 %6338, 2
  %6342 = extractvalue %dx.types.ResRet.f32 %6338, 3
  %6343 = fmul fast float %6340, 2.000000e+00
  %6344 = fmul fast float %6341, 2.000000e+00
  %6345 = fadd fast float %6343, -1.000000e+00
  %6346 = fadd fast float %6344, -1.000000e+00
  %6347 = fsub fast float 1.000000e+00, %6335
  %6348 = fmul fast float %6347, 8.000000e+00
  %6349 = call float @dx.op.unary.f32(i32 21, float %6348)  ; Exp(value)
  %6350 = fmul fast float %6342, %6349
  %6351 = fadd fast float %6289, 0xBFE5B22D00000000
  %6352 = fadd fast float %6351, %6342
  %6353 = fadd fast float %6352, %6350
  %6354 = frem fast float %6353, %6349
  %6355 = fcmp fast ole float %6354, 1.000000e+00
  %6356 = call float @dx.op.unary.f32(i32 22, float %6354)  ; Frc(value)
  %6357 = select i1 %6355, float %6356, float 0.000000e+00
  %6358 = fadd fast float %6339, -1.000000e+00
  %6359 = fadd fast float %6358, %6357
  %6360 = fsub fast float 1.000000e+00, %6357
  %6361 = call float @dx.op.unary.f32(i32 7, float %6360)  ; Saturate(value)
  %6362 = fmul fast float %6361, %6339
  %6363 = fmul fast float %6359, 8.000000e+00
  %6364 = call float @dx.op.binary.f32(i32 35, float %6363, float 0.000000e+00)  ; FMax(a,b)
  %6365 = call float @dx.op.binary.f32(i32 36, float %6364, float 4.000000e+00)  ; FMin(a,b)
  %6366 = fmul fast float %6365, 0x400921FB60000000
  %6367 = call float @dx.op.unary.f32(i32 13, float %6366)  ; Sin(value)
  %6368 = fadd fast float %6357, -1.000000e+00
  %6369 = fmul fast float %6362, %6368
  %6370 = fmul fast float %6369, %6367
  %6371 = fmul fast float %6370, %6345
  %6372 = fmul fast float %6370, %6346
  %6373 = fadd fast float %6296, -2.000000e+00
  %6374 = call float @dx.op.unary.f32(i32 7, float %6373)  ; Saturate(value)
  %6375 = fadd fast float %6294, 0x3FE3333340000000
  %6376 = fadd fast float %6295, 0x3FEB333340000000
  %6377 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %45, float %6375, float %6376, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6378 = extractvalue %dx.types.ResRet.f32 %6377, 0
  %6379 = extractvalue %dx.types.ResRet.f32 %6377, 1
  %6380 = extractvalue %dx.types.ResRet.f32 %6377, 2
  %6381 = extractvalue %dx.types.ResRet.f32 %6377, 3
  %6382 = fmul fast float %6379, 2.000000e+00
  %6383 = fmul fast float %6380, 2.000000e+00
  %6384 = fadd fast float %6382, -1.000000e+00
  %6385 = fadd fast float %6383, -1.000000e+00
  %6386 = fsub fast float 1.000000e+00, %6374
  %6387 = fmul fast float %6386, 8.000000e+00
  %6388 = call float @dx.op.unary.f32(i32 21, float %6387)  ; Exp(value)
  %6389 = fmul fast float %6381, %6388
  %6390 = fadd fast float %6290, 0xBFD5E35400000000
  %6391 = fadd fast float %6390, %6381
  %6392 = fadd fast float %6391, %6389
  %6393 = frem fast float %6392, %6388
  %6394 = fcmp fast ole float %6393, 1.000000e+00
  %6395 = call float @dx.op.unary.f32(i32 22, float %6393)  ; Frc(value)
  %6396 = select i1 %6394, float %6395, float 0.000000e+00
  %6397 = fadd fast float %6378, -1.000000e+00
  %6398 = fadd fast float %6397, %6396
  %6399 = fsub fast float 1.000000e+00, %6396
  %6400 = call float @dx.op.unary.f32(i32 7, float %6399)  ; Saturate(value)
  %6401 = fmul fast float %6400, %6378
  %6402 = fmul fast float %6398, 8.000000e+00
  %6403 = call float @dx.op.binary.f32(i32 35, float %6402, float 0.000000e+00)  ; FMax(a,b)
  %6404 = call float @dx.op.binary.f32(i32 36, float %6403, float 4.000000e+00)  ; FMin(a,b)
  %6405 = fmul fast float %6404, 0x400921FB60000000
  %6406 = call float @dx.op.unary.f32(i32 13, float %6405)  ; Sin(value)
  %6407 = fadd fast float %6396, -1.000000e+00
  %6408 = fmul fast float %6401, %6407
  %6409 = fmul fast float %6408, %6406
  %6410 = fmul fast float %6409, %6384
  %6411 = fmul fast float %6409, %6385
  %6412 = fadd fast float %6296, -3.000000e+00
  %6413 = call float @dx.op.unary.f32(i32 7, float %6412)  ; Saturate(value)
  %6414 = fadd fast float %6294, 5.000000e-01
  %6415 = fadd fast float %6295, -7.500000e-01
  %6416 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %45, float %6414, float %6415, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6417 = extractvalue %dx.types.ResRet.f32 %6416, 0
  %6418 = extractvalue %dx.types.ResRet.f32 %6416, 1
  %6419 = extractvalue %dx.types.ResRet.f32 %6416, 2
  %6420 = extractvalue %dx.types.ResRet.f32 %6416, 3
  %6421 = fmul fast float %6418, 2.000000e+00
  %6422 = fmul fast float %6419, 2.000000e+00
  %6423 = fadd fast float %6421, -1.000000e+00
  %6424 = fadd fast float %6422, -1.000000e+00
  %6425 = fsub fast float 1.000000e+00, %6413
  %6426 = fmul fast float %6425, 8.000000e+00
  %6427 = call float @dx.op.unary.f32(i32 21, float %6426)  ; Exp(value)
  %6428 = fmul fast float %6420, %6427
  %6429 = fadd fast float %6291, 0xBF78938000000000
  %6430 = fadd fast float %6429, %6420
  %6431 = fadd fast float %6430, %6428
  %6432 = frem fast float %6431, %6427
  %6433 = fcmp fast ole float %6432, 1.000000e+00
  %6434 = call float @dx.op.unary.f32(i32 22, float %6432)  ; Frc(value)
  %6435 = select i1 %6433, float %6434, float 0.000000e+00
  %6436 = fadd fast float %6417, -1.000000e+00
  %6437 = fadd fast float %6436, %6435
  %6438 = fsub fast float 1.000000e+00, %6435
  %6439 = call float @dx.op.unary.f32(i32 7, float %6438)  ; Saturate(value)
  %6440 = fmul fast float %6439, %6417
  %6441 = fmul fast float %6437, 8.000000e+00
  %6442 = call float @dx.op.binary.f32(i32 35, float %6441, float 0.000000e+00)  ; FMax(a,b)
  %6443 = call float @dx.op.binary.f32(i32 36, float %6442, float 4.000000e+00)  ; FMin(a,b)
  %6444 = fmul fast float %6443, 0x400921FB60000000
  %6445 = call float @dx.op.unary.f32(i32 13, float %6444)  ; Sin(value)
  %6446 = fadd fast float %6435, -1.000000e+00
  %6447 = fmul fast float %6440, %6446
  %6448 = fmul fast float %6447, %6445
  %6449 = fmul fast float %6448, %6423
  %6450 = fmul fast float %6448, %6424
  %6451 = fadd fast float %6371, %6332
  %6452 = fadd fast float %6372, %6333
  %6453 = fadd fast float %6451, %6410
  %6454 = fadd fast float %6452, %6411
  %6455 = fadd fast float %6453, %6449
  %6456 = fadd fast float %6454, %6450
  %6457 = fmul fast float %6175, 0x4006DB6DA0000000
  %6458 = fadd fast float %6457, 0xBFFDB6DB40000000
  %6459 = call float @dx.op.unary.f32(i32 7, float %6458)  ; Saturate(value)
  %6460 = fmul fast float %6459, %6130
  %6461 = fmul fast float %6460, %6239
  %6462 = fmul fast float %6461, %6455
  %6463 = fmul fast float %6461, %6456
  %6464 = fadd fast float %6462, %6266
  %6465 = fadd fast float %6463, %6267
  br label %6466

; <label>:6466                                    ; preds = %6280, %6113
  %6467 = phi float [ %6266, %6113 ], [ %6464, %6280 ]
  %6468 = phi float [ %6267, %6113 ], [ %6465, %6280 ]
  %6469 = call float @dx.op.dot3.f32(i32 55, float %6467, float %6468, float %6268, float %6467, float %6468, float %6268)  ; Dot3(ax,ay,az,bx,by,bz)
  %6470 = call float @dx.op.unary.f32(i32 25, float %6469)  ; Rsqrt(value)
  %6471 = fmul fast float %6470, %6467
  %6472 = fmul fast float %6470, %6468
  %6473 = fmul fast float %6470, %6268
  br label %6474

; <label>:6474                                    ; preds = %6466, %6106
  %6475 = phi float [ %6112, %6106 ], [ %6119, %6466 ]
  %6476 = phi float [ %6111, %6106 ], [ %6117, %6466 ]
  %6477 = phi float [ %6110, %6106 ], [ %6115, %6466 ]
  %6478 = phi float [ %6109, %6106 ], [ %6118, %6466 ]
  %6479 = phi float [ %6108, %6106 ], [ %6116, %6466 ]
  %6480 = phi float [ %6107, %6106 ], [ %6114, %6466 ]
  %6481 = phi float [ %6092, %6106 ], [ %6166, %6466 ]
  %6482 = phi float [ %6093, %6106 ], [ %6167, %6466 ]
  %6483 = phi float [ %6094, %6106 ], [ %6168, %6466 ]
  %6484 = phi float [ %6095, %6106 ], [ %6471, %6466 ]
  %6485 = phi float [ %6096, %6106 ], [ %6472, %6466 ]
  %6486 = phi float [ %6097, %6106 ], [ %6473, %6466 ]
  %6487 = phi float [ %6098, %6106 ], [ %6257, %6466 ]
  %6488 = phi float [ %6099, %6106 ], [ %6258, %6466 ]
  %6489 = phi float [ %6100, %6106 ], [ %6259, %6466 ]
  %6490 = phi float [ %6101, %6106 ], [ %6273, %6466 ]
  %6491 = phi float [ %6102, %6106 ], [ %6276, %6466 ]
  %6492 = select i1 %228, float 0.000000e+00, float %6489
  %6493 = call float @dx.op.dot3.f32(i32 55, float %6484, float %6485, float %6486, float %6477, float %6476, float %6475)  ; Dot3(ax,ay,az,bx,by,bz)
  %6494 = call float @dx.op.unary.f32(i32 7, float %6493)  ; Saturate(value)
  %6495 = call float @dx.op.dot3.f32(i32 55, float %6480, float %6479, float %6478, float %6484, float %6485, float %6486)  ; Dot3(ax,ay,az,bx,by,bz)
  %6496 = fmul fast float %6495, 2.000000e+00
  %6497 = fmul fast float %6496, %6484
  %6498 = fmul fast float %6496, %6485
  %6499 = fmul fast float %6496, %6486
  %6500 = fsub fast float %6480, %6497
  %6501 = fsub fast float %6479, %6498
  %6502 = fsub fast float %6478, %6499
  %6503 = call float @dx.op.binary.f32(i32 36, float %6491, float 1.000000e+00)  ; FMin(a,b)
  %6504 = fsub fast float 1.000000e+00, %6503
  %6505 = bitcast float %6504 to i32
  %6506 = ashr i32 %6505, 1
  %6507 = add nsw i32 %6506, 532487669
  %6508 = bitcast i32 %6507 to float
  %6509 = fsub fast float 1.000000e+00, %6490
  %6510 = call float @dx.op.binary.f32(i32 35, float %6509, float 0x3F847AE140000000)  ; FMax(a,b)
  %6511 = fmul fast float %6510, %6510
  %6512 = fmul fast float %6511, %6511
  %6513 = call float @dx.op.unary.f32(i32 7, float %6494)  ; Saturate(value)
  %6514 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %46, float %6508, float %6512, float %6513, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6515 = extractvalue %dx.types.ResRet.f32 %6514, 0
  %6516 = fsub fast float 1.000000e+00, %6491
  %6517 = bitcast float %6516 to i32
  %6518 = sub nsw i32 2129859010, %6517
  %6519 = fsub fast float 1.000000e+00, %72
  %6520 = call float @dx.op.dot3.f32(i32 55, float %131, float %132, float %133, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %6521 = call float @dx.op.binary.f32(i32 35, float %6520, float 0x3FA99999A0000000)  ; FMax(a,b)
  %6522 = fdiv fast float %6519, %6521
  %6523 = call float @dx.op.dot3.f32(i32 55, float %6484, float %6485, float %6486, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %6524 = call float @dx.op.unary.f32(i32 7, float %6523)  ; Saturate(value)
  %6525 = fmul fast float %6524, 5.000000e-01
  %6526 = fadd fast float %6525, 5.000000e-01
  %6527 = fmul fast float %6526, %72
  %6528 = call float @dx.op.dot3.f32(i32 55, float %6484, float %6485, float %6486, float %131, float %132, float %133)  ; Dot3(ax,ay,az,bx,by,bz)
  %6529 = call float @dx.op.unary.f32(i32 7, float %6528)  ; Saturate(value)
  %6530 = fmul fast float %6529, %6522
  %6531 = fadd fast float %6527, %6530
  %6532 = fsub fast float 5.000000e-01, %6525
  %6533 = fmul fast float %6532, %6481
  %6534 = fmul fast float %6532, %6482
  %6535 = fmul fast float %6532, %6483
  %6536 = fadd fast float %6531, %6533
  %6537 = fadd fast float %6531, %6534
  %6538 = fadd fast float %6531, %6535
  %6539 = call float @dx.op.dot3.f32(i32 55, float %6500, float %6501, float %6502, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %6540 = call float @dx.op.unary.f32(i32 7, float %6539)  ; Saturate(value)
  %6541 = fmul fast float %6540, 5.000000e-01
  %6542 = fadd fast float %6541, 5.000000e-01
  %6543 = fmul fast float %6542, %72
  %6544 = call float @dx.op.dot3.f32(i32 55, float %6500, float %6501, float %6502, float %131, float %132, float %133)  ; Dot3(ax,ay,az,bx,by,bz)
  %6545 = call float @dx.op.unary.f32(i32 7, float %6544)  ; Saturate(value)
  %6546 = fmul fast float %6545, %6522
  %6547 = fadd fast float %6543, %6546
  %6548 = fsub fast float 5.000000e-01, %6541
  %6549 = fmul fast float %6548, %6481
  %6550 = fmul fast float %6548, %6482
  %6551 = fmul fast float %6548, %6483
  %6552 = fadd fast float %6547, %6549
  %6553 = fadd fast float %6547, %6550
  %6554 = fadd fast float %6547, %6551
  %6555 = call float @dx.op.dot3.f32(i32 55, float %73, float %74, float %75, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %6557 = extractvalue %dx.types.CBufRet.f32 %6556, 0
  %6558 = call float @dx.op.binary.f32(i32 36, float %6481, float %6557)  ; FMin(a,b)
  %6559 = fmul fast float %6558, %6504
  %6560 = fsub fast float 1.000000e+00, %6559
  %6561 = bitcast float %6560 to i32
  %6562 = sub nsw i32 2129859010, %6561
  %6563 = bitcast i32 %6562 to float
  %6564 = call float @dx.op.binary.f32(i32 36, float %6482, float %6557)  ; FMin(a,b)
  %6565 = fmul fast float %6564, %6504
  %6566 = fsub fast float 1.000000e+00, %6565
  %6567 = bitcast float %6566 to i32
  %6568 = sub nsw i32 2129859010, %6567
  %6569 = bitcast i32 %6568 to float
  %6570 = call float @dx.op.binary.f32(i32 36, float %6483, float %6557)  ; FMin(a,b)
  %6571 = fmul fast float %6570, %6504
  %6572 = fsub fast float 1.000000e+00, %6571
  %6573 = bitcast float %6572 to i32
  %6574 = sub nsw i32 2129859010, %6573
  %6575 = bitcast i32 %6574 to float
  %6576 = fmul fast float %6503, %73
  %6577 = fmul fast float %6576, %6536
  %6578 = fmul fast float %6577, %6563
  %6579 = fmul fast float %6503, %74
  %6580 = fmul fast float %6579, %6537
  %6581 = fmul fast float %6580, %6569
  %6582 = fmul fast float %6503, %75
  %6583 = fmul fast float %6582, %6538
  %6584 = fmul fast float %6583, %6575
  %6585 = call float @dx.op.binary.f32(i32 36, float %6487, float %6557)  ; FMin(a,b)
  %6586 = fmul fast float %6585, %6504
  %6587 = fsub fast float 1.000000e+00, %6586
  %6588 = bitcast float %6587 to i32
  %6589 = sub nsw i32 2129859010, %6588
  %6590 = bitcast i32 %6589 to float
  %6591 = call float @dx.op.binary.f32(i32 36, float %6488, float %6557)  ; FMin(a,b)
  %6592 = fmul fast float %6591, %6504
  %6593 = fsub fast float 1.000000e+00, %6592
  %6594 = bitcast float %6593 to i32
  %6595 = sub nsw i32 2129859010, %6594
  %6596 = bitcast i32 %6595 to float
  %6597 = call float @dx.op.binary.f32(i32 36, float %6492, float %6557)  ; FMin(a,b)
  %6598 = fmul fast float %6597, %6504
  %6599 = fsub fast float 1.000000e+00, %6598
  %6600 = bitcast float %6599 to i32
  %6601 = sub nsw i32 2129859010, %6600
  %6602 = bitcast i32 %6601 to float
  %6603 = fmul fast float %6576, %6552
  %6604 = fmul fast float %6603, %6590
  %6605 = fmul fast float %6579, %6553
  %6606 = fmul fast float %6605, %6596
  %6607 = fmul fast float %6582, %6554
  %6608 = fmul fast float %6607, %6602
  %6609 = call float @dx.op.dot3.f32(i32 55, float %6578, float %6581, float %6584, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6610 = select i1 %228, float 0.000000e+00, float %6578
  %6611 = select i1 %228, float %6609, float %6581
  %6612 = select i1 %228, float 0.000000e+00, float %6584
  %6613 = call float @dx.op.dot3.f32(i32 55, float %6604, float %6606, float %6608, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6614 = select i1 %228, float 0.000000e+00, float %6604
  %6615 = select i1 %228, float %6613, float %6606
  %6616 = select i1 %228, float 0.000000e+00, float %6608
  %6617 = fmul fast float %6494, 9.843750e-01
  %6618 = fmul fast float %6490, 9.843750e-01
  %6619 = fadd fast float %6617, 7.812500e-03
  %6620 = fadd fast float %6618, 7.812500e-03
  %6621 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %41, %dx.types.Handle %46, float %6619, float %6620, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6622 = extractvalue %dx.types.ResRet.f32 %6621, 2
  %6623 = extractvalue %dx.types.ResRet.f32 %6621, 3
  %6624 = fmul fast float %6622, %6487
  %6625 = fmul fast float %6622, %6488
  %6626 = fmul fast float %6622, %6492
  %6627 = fadd fast float %6624, %6623
  %6628 = fadd fast float %6625, %6623
  %6629 = fadd fast float %6626, %6623
  %6630 = fcmp fast ogt float %4262, 0.000000e+00
  br i1 %6630, label %6631, label %6657

; <label>:6631                                    ; preds = %6474
  %6632 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %46, float %4262, float %6494, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6633 = extractvalue %dx.types.ResRet.f32 %6632, 0
  %6634 = extractvalue %dx.types.ResRet.f32 %6632, 1
  %6635 = extractvalue %dx.types.ResRet.f32 %6632, 2
  %6636 = fadd fast float %6633, -5.000000e-01
  %6637 = fadd fast float %6634, -5.000000e-01
  %6638 = fadd fast float %6635, -5.000000e-01
  %6639 = fsub fast float 1.000000e+00, %6487
  %6640 = fsub fast float 1.000000e+00, %6488
  %6641 = fsub fast float 1.000000e+00, %6492
  %6642 = fmul fast float %6487, 4.000000e+00
  %6643 = fmul fast float %6642, %6639
  %6644 = fmul fast float %6643, %6636
  %6645 = fmul fast float %6488, 4.000000e+00
  %6646 = fmul fast float %6645, %6640
  %6647 = fmul fast float %6646, %6637
  %6648 = fmul fast float %6492, 4.000000e+00
  %6649 = fmul fast float %6648, %6641
  %6650 = fmul fast float %6649, %6638
  %6651 = fadd fast float %6644, %6627
  %6652 = fadd fast float %6647, %6628
  %6653 = fadd fast float %6650, %6629
  %6654 = call float @dx.op.unary.f32(i32 7, float %6651)  ; Saturate(value)
  %6655 = call float @dx.op.unary.f32(i32 7, float %6652)  ; Saturate(value)
  %6656 = call float @dx.op.unary.f32(i32 7, float %6653)  ; Saturate(value)
  br label %6657

; <label>:6657                                    ; preds = %6631, %6474
  %6658 = phi float [ %6654, %6631 ], [ %6627, %6474 ]
  %6659 = phi float [ %6655, %6631 ], [ %6628, %6474 ]
  %6660 = phi float [ %6656, %6631 ], [ %6629, %6474 ]
  %6661 = call float @dx.op.binary.f32(i32 35, float %6659, float %6660)  ; FMax(a,b)
  %6662 = call float @dx.op.binary.f32(i32 35, float %6658, float %6661)  ; FMax(a,b)
  %6663 = fsub fast float 1.000000e+00, %6662
  %6664 = fmul fast float %6662, %6490
  %6665 = fadd fast float %6664, %6490
  %6666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %6667 = extractvalue %dx.types.CBufRet.f32 %6666, 2
  %6668 = extractvalue %dx.types.CBufRet.f32 %6666, 3
  %6669 = fmul fast float %6665, %6667
  %6670 = fadd fast float %6669, %6668
  %6671 = call float @dx.op.unary.f32(i32 7, float %6670)  ; Saturate(value)
  %6672 = fsub fast float 1.000000e+00, %6515
  %6673 = fadd fast float %6672, %6671
  %6674 = call float @dx.op.unary.f32(i32 7, float %6673)  ; Saturate(value)
  %6675 = fcmp fast olt float %6674, 1.000000e+00
  br i1 %6675, label %6676, label %7124

; <label>:6676                                    ; preds = %6657
  %6677 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %6678 = extractvalue %dx.types.CBufRet.f32 %6677, 2
  %6679 = extractvalue %dx.types.CBufRet.f32 %6677, 3
  %6680 = fmul fast float %6678, %104
  %6681 = fmul fast float %6679, %105
  %6682 = fptoui float %6680 to i32
  %6683 = fptoui float %6681 to i32
  %6684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6685 = extractvalue %dx.types.CBufRet.f32 %6684, 0
  %6686 = extractvalue %dx.types.CBufRet.f32 %6684, 2
  %6687 = extractvalue %dx.types.CBufRet.f32 %6684, 3
  %6688 = fadd fast float %92, -4.000000e+00
  %6689 = call float @dx.op.binary.f32(i32 35, float %6688, float 0.000000e+00)  ; FMax(a,b)
  %6690 = fadd fast float %6689, %6685
  %6691 = fmul fast float %6690, %6686
  %6692 = call float @dx.op.unary.f32(i32 23, float %6691)  ; Log(value)
  %6693 = fmul fast float %6692, %6687
  %6694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6695 = extractvalue %dx.types.CBufRet.f32 %6694, 2
  %6696 = fmul fast float %6693, %6695
  %6697 = call float @dx.op.unary.f32(i32 7, float %6696)  ; Saturate(value)
  %6698 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6699 = extractvalue %dx.types.CBufRet.i32 %6698, 1
  %6700 = add i32 %6699, -1
  %6701 = uitofp i32 %6699 to float
  %6702 = fmul fast float %6701, %6697
  %6703 = fptoui float %6702 to i32
  %6704 = call i32 @dx.op.binary.i32(i32 40, i32 %6703, i32 %6700)  ; UMin(a,b)
  %6705 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6706 = extractvalue %dx.types.CBufRet.i32 %6705, 2
  %6707 = extractvalue %dx.types.CBufRet.i32 %6705, 3
  %6708 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6683, i32 %6706, i32 %6682)  ; UMad(a,b,c)
  %6709 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6704, i32 %6707, i32 %6708)  ; UMad(a,b,c)
  %6710 = call float @dx.op.binary.f32(i32 35, float %92, float 0.000000e+00)  ; FMax(a,b)
  %6711 = fptoui float %6710 to i32
  %6712 = lshr i32 %6711, 5
  %6713 = call i32 @dx.op.binary.i32(i32 40, i32 %6712, i32 8191)  ; UMin(a,b)
  br i1 false, label %6714, label %6721

; <label>:6714                                    ; preds = %6676
  %6715 = fadd fast float 0.000000e+00, %6502
  %6716 = call float @dx.op.dot3.f32(i32 55, float %6500, float %6501, float %6715, float %6500, float %6501, float %6715)  ; Dot3(ax,ay,az,bx,by,bz)
  %6717 = call float @dx.op.unary.f32(i32 25, float %6716)  ; Rsqrt(value)
  %6718 = fmul fast float %6717, %6500
  %6719 = fmul fast float %6717, %6501
  %6720 = fmul fast float %6715, %6717
  br label %6721

; <label>:6721                                    ; preds = %6714, %6676
  %6722 = phi float [ %6718, %6714 ], [ %6500, %6676 ]
  %6723 = phi float [ %6719, %6714 ], [ %6501, %6676 ]
  %6724 = phi float [ %6720, %6714 ], [ %6502, %6676 ]
  %6725 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6726 = extractvalue %dx.types.CBufRet.i32 %6725, 2
  %6727 = add nsw i32 %6726, -1
  %6728 = call i32 @dx.op.binary.i32(i32 37, i32 %6727, i32 0)  ; IMax(a,b)
  %6729 = shl i32 %6713, 2
  %6730 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %6729, i32 undef)  ; BufferLoad(srv,index,wot)
  %6731 = extractvalue %dx.types.ResRet.i32 %6730, 0
  %6732 = lshr i32 %6731, 16
  %6733 = and i32 %6731, 65535
  %6734 = lshr i32 %6731, 21
  %6735 = lshr i32 %6733, 5
  %6736 = call i32 @dx.op.binary.i32(i32 40, i32 %6735, i32 %6728)  ; UMin(a,b)
  %6737 = icmp ugt i32 %6734, %6736
  br i1 %6737, label %7100, label %6738

; <label>:6738                                    ; preds = %6721
  br label %6739

; <label>:6739                                    ; preds = %7092, %6738
  %6740 = phi float [ %7093, %7092 ], [ 0.000000e+00, %6738 ]
  %6741 = phi float [ %7094, %7092 ], [ 0.000000e+00, %6738 ]
  %6742 = phi float [ %7095, %7092 ], [ 0.000000e+00, %6738 ]
  %6743 = phi float [ %7096, %7092 ], [ 1.000000e+00, %6738 ]
  %6744 = phi i32 [ %7097, %7092 ], [ %6734, %6738 ]
  %6745 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6746 = extractvalue %dx.types.CBufRet.i32 %6745, 2
  %6747 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6709, i32 %6746, i32 %6744)  ; UMad(a,b,c)
  %6748 = shl i32 %6747, 2
  %6749 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %6748, i32 undef)  ; BufferLoad(srv,index,wot)
  %6750 = extractvalue %dx.types.ResRet.i32 %6749, 0
  %6751 = shl i32 %6744, 5
  %6752 = sub nsw i32 %6732, %6751
  %6753 = call i32 @dx.op.binary.i32(i32 37, i32 %6752, i32 0)  ; IMax(a,b)
  %6754 = call i32 @dx.op.binary.i32(i32 38, i32 %6753, i32 31)  ; IMin(a,b)
  %6755 = sub nsw i32 1, %6732
  %6756 = add nsw i32 %6755, %6733
  %6757 = call i32 @dx.op.binary.i32(i32 37, i32 %6756, i32 0)  ; IMax(a,b)
  %6758 = call i32 @dx.op.binary.i32(i32 38, i32 %6757, i32 32)  ; IMin(a,b)
  %6759 = and i32 %6758, 31
  %6760 = shl i32 -1, %6759
  %6761 = xor i32 %6760, -1
  %6762 = and i32 %6754, 31
  %6763 = shl i32 %6761, %6762
  %6764 = icmp eq i32 %6758, 32
  %6765 = select i1 %6764, i32 -1, i32 %6763
  %6766 = and i32 %6765, %6750
  %6767 = icmp eq i32 %6766, 0
  br i1 %6767, label %7092, label %6768

; <label>:6768                                    ; preds = %6739
  br label %6769

; <label>:6769                                    ; preds = %6875, %6768
  %6770 = phi float [ %6876, %6875 ], [ %6740, %6768 ]
  %6771 = phi float [ %6877, %6875 ], [ %6741, %6768 ]
  %6772 = phi float [ %6878, %6875 ], [ %6742, %6768 ]
  %6773 = phi float [ %6879, %6875 ], [ %6743, %6768 ]
  %6774 = phi i32 [ %6779, %6875 ], [ %6766, %6768 ]
  %6775 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6774)  ; FirstbitLo(value)
  %6776 = add i32 %6775, %6751
  %6777 = and i32 %6775, 31
  %6778 = shl i32 1, %6777
  %6779 = xor i32 %6778, %6774
  %6780 = mul i32 %6776, 72
  %6781 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %6780, i32 undef)  ; BufferLoad(srv,index,wot)
  %6782 = extractvalue %dx.types.ResRet.f32 %6781, 0
  %6783 = extractvalue %dx.types.ResRet.f32 %6781, 1
  %6784 = extractvalue %dx.types.ResRet.f32 %6781, 2
  %6785 = add i32 %6780, 12
  %6786 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %6785, i32 undef)  ; BufferLoad(srv,index,wot)
  %6787 = extractvalue %dx.types.ResRet.i32 %6786, 0
  %6788 = add i32 %6780, 16
  %6789 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %6788, i32 undef)  ; BufferLoad(srv,index,wot)
  %6790 = extractvalue %dx.types.ResRet.f32 %6789, 0
  %6791 = extractvalue %dx.types.ResRet.f32 %6789, 1
  %6792 = extractvalue %dx.types.ResRet.f32 %6789, 2
  %6793 = add i32 %6780, 28
  %6794 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %6793, i32 undef)  ; BufferLoad(srv,index,wot)
  %6795 = extractvalue %dx.types.ResRet.f32 %6794, 0
  %6796 = add i32 %6780, 32
  %6797 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %6796, i32 undef)  ; BufferLoad(srv,index,wot)
  %6798 = extractvalue %dx.types.ResRet.f32 %6797, 0
  %6799 = extractvalue %dx.types.ResRet.f32 %6797, 1
  %6800 = extractvalue %dx.types.ResRet.f32 %6797, 2
  %6801 = extractvalue %dx.types.ResRet.f32 %6797, 3
  %6802 = add i32 %6780, 48
  %6803 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %6802, i32 undef)  ; BufferLoad(srv,index,wot)
  %6804 = extractvalue %dx.types.ResRet.f32 %6803, 0
  %6805 = extractvalue %dx.types.ResRet.f32 %6803, 1
  %6806 = add i32 %6780, 56
  %6807 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %6806, i32 undef)  ; BufferLoad(srv,index,wot)
  %6808 = extractvalue %dx.types.ResRet.f32 %6807, 0
  %6809 = extractvalue %dx.types.ResRet.f32 %6807, 1
  %6810 = add i32 %6780, 64
  %6811 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %6810, i32 undef)  ; BufferLoad(srv,index,wot)
  %6812 = extractvalue %dx.types.ResRet.f32 %6811, 0
  %6813 = extractvalue %dx.types.ResRet.f32 %6811, 1
  %6814 = mul i32 %6776, 60
  %6815 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %6814, i32 undef)  ; BufferLoad(srv,index,wot)
  %6816 = extractvalue %dx.types.ResRet.f32 %6815, 0
  %6817 = extractvalue %dx.types.ResRet.f32 %6815, 1
  %6818 = extractvalue %dx.types.ResRet.f32 %6815, 2
  %6819 = add i32 %6814, 12
  %6820 = add i32 %6814, 48
  %6821 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %6820, i32 undef)  ; BufferLoad(srv,index,wot)
  %6822 = extractvalue %dx.types.ResRet.f32 %6821, 0
  %6823 = extractvalue %dx.types.ResRet.f32 %6821, 1
  %6824 = extractvalue %dx.types.ResRet.f32 %6821, 2
  %6825 = and i32 %6787, 32767
  %6826 = bitcast float %6782 to i32
  %6827 = icmp eq i32 %6826, -1
  %6828 = bitcast float %6783 to i32
  %6829 = and i32 %6787, 32768
  %6830 = icmp ne i32 %6829, 0
  %6831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6832 = extractvalue %dx.types.CBufRet.f32 %6831, 0
  %6833 = extractvalue %dx.types.CBufRet.f32 %6831, 1
  %6834 = extractvalue %dx.types.CBufRet.f32 %6831, 2
  %6835 = fsub fast float %6816, %6832
  %6836 = fsub fast float %6817, %6833
  %6837 = fsub fast float %6818, %6834
  %6838 = fsub fast float %167, %6835
  %6839 = fsub fast float %168, %6836
  %6840 = fsub fast float %169, %6837
  %6841 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %6819, i32 undef)  ; BufferLoad(srv,index,wot)
  %6842 = extractvalue %dx.types.ResRet.f32 %6841, 0
  %6843 = extractvalue %dx.types.ResRet.f32 %6841, 1
  %6844 = extractvalue %dx.types.ResRet.f32 %6841, 2
  %6845 = call float @dx.op.dot3.f32(i32 55, float %6838, float %6839, float %6840, float %6842, float %6843, float %6844)  ; Dot3(ax,ay,az,bx,by,bz)
  %6846 = add i32 %6814, 24
  %6847 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %6846, i32 undef)  ; BufferLoad(srv,index,wot)
  %6848 = extractvalue %dx.types.ResRet.f32 %6847, 0
  %6849 = extractvalue %dx.types.ResRet.f32 %6847, 1
  %6850 = extractvalue %dx.types.ResRet.f32 %6847, 2
  %6851 = call float @dx.op.dot3.f32(i32 55, float %6838, float %6839, float %6840, float %6848, float %6849, float %6850)  ; Dot3(ax,ay,az,bx,by,bz)
  %6852 = add i32 %6814, 36
  %6853 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %6852, i32 undef)  ; BufferLoad(srv,index,wot)
  %6854 = extractvalue %dx.types.ResRet.f32 %6853, 0
  %6855 = extractvalue %dx.types.ResRet.f32 %6853, 1
  %6856 = extractvalue %dx.types.ResRet.f32 %6853, 2
  %6857 = call float @dx.op.dot3.f32(i32 55, float %6838, float %6839, float %6840, float %6854, float %6855, float %6856)  ; Dot3(ax,ay,az,bx,by,bz)
  %6858 = call float @dx.op.unary.f32(i32 6, float %6845)  ; FAbs(value)
  %6859 = call float @dx.op.unary.f32(i32 6, float %6851)  ; FAbs(value)
  %6860 = call float @dx.op.unary.f32(i32 6, float %6857)  ; FAbs(value)
  %6861 = fsub fast float %6822, %6858
  %6862 = fsub fast float %6823, %6859
  %6863 = fsub fast float %6824, %6860
  %6864 = fmul fast float %6861, %6790
  %6865 = fmul fast float %6862, %6791
  %6866 = fmul fast float %6863, %6792
  %6867 = call float @dx.op.binary.f32(i32 36, float %6865, float %6866)  ; FMin(a,b)
  %6868 = call float @dx.op.binary.f32(i32 36, float %6864, float %6867)  ; FMin(a,b)
  %6869 = call float @dx.op.unary.f32(i32 7, float %6868)  ; Saturate(value)
  %6870 = call float @dx.op.binary.f32(i32 36, float %6773, float %6869)  ; FMin(a,b)
  %6871 = uitofp i1 %6830 to float
  %6872 = fsub fast float 1.000000e+00, %6871
  %6873 = fmul fast float %6870, %6872
  %6874 = fcmp fast ogt float %6873, 0.000000e+00
  br i1 %6874, label %6881, label %6875

; <label>:6875                                    ; preds = %7023, %6769
  %6876 = phi float [ %7087, %7023 ], [ %6770, %6769 ]
  %6877 = phi float [ %7088, %7023 ], [ %6771, %6769 ]
  %6878 = phi float [ %7089, %7023 ], [ %6772, %6769 ]
  %6879 = phi float [ %7090, %7023 ], [ %6773, %6769 ]
  %6880 = icmp eq i32 %6774, %6778
  br i1 %6880, label %7091, label %6769

; <label>:6881                                    ; preds = %6769
  br i1 %6827, label %6939, label %6882

; <label>:6882                                    ; preds = %6881
  %6883 = fsub fast float -0.000000e+00, %6842
  %6884 = fsub fast float -0.000000e+00, %6843
  %6885 = fsub fast float -0.000000e+00, %6844
  %6886 = call float @dx.op.dot3.f32(i32 55, float %6722, float %6723, float %6724, float %6883, float %6884, float %6885)  ; Dot3(ax,ay,az,bx,by,bz)
  %6887 = fsub fast float -0.000000e+00, %6886
  %6888 = call float @dx.op.dot3.f32(i32 55, float %6838, float %6839, float %6840, float %6883, float %6884, float %6885)  ; Dot3(ax,ay,az,bx,by,bz)
  %6889 = fadd fast float %6888, %6805
  %6890 = fadd fast float %6804, %6888
  %6891 = fsub fast float -0.000000e+00, %6890
  %6892 = fcmp ogt float %6886, -0.000000e+00
  %6893 = select i1 %6892, float %6891, float %6889
  %6894 = call float @dx.op.unary.f32(i32 6, float %6887)  ; FAbs(value)
  %6895 = fdiv fast float 1.000000e+00, %6894
  %6896 = fmul fast float %6893, %6895
  %6897 = call float @dx.op.binary.f32(i32 35, float %6896, float 0.000000e+00)  ; FMax(a,b)
  %6898 = fsub fast float -0.000000e+00, %6848
  %6899 = fsub fast float -0.000000e+00, %6849
  %6900 = fsub fast float -0.000000e+00, %6850
  %6901 = call float @dx.op.dot3.f32(i32 55, float %6722, float %6723, float %6724, float %6898, float %6899, float %6900)  ; Dot3(ax,ay,az,bx,by,bz)
  %6902 = fsub fast float -0.000000e+00, %6901
  %6903 = call float @dx.op.dot3.f32(i32 55, float %6838, float %6839, float %6840, float %6898, float %6899, float %6900)  ; Dot3(ax,ay,az,bx,by,bz)
  %6904 = fadd fast float %6903, %6809
  %6905 = fadd fast float %6808, %6903
  %6906 = fsub fast float -0.000000e+00, %6905
  %6907 = fcmp ogt float %6901, -0.000000e+00
  %6908 = select i1 %6907, float %6906, float %6904
  %6909 = call float @dx.op.unary.f32(i32 6, float %6902)  ; FAbs(value)
  %6910 = fdiv fast float 1.000000e+00, %6909
  %6911 = fmul fast float %6908, %6910
  %6912 = call float @dx.op.binary.f32(i32 35, float %6911, float 0.000000e+00)  ; FMax(a,b)
  %6913 = fsub fast float -0.000000e+00, %6854
  %6914 = fsub fast float -0.000000e+00, %6855
  %6915 = fsub fast float -0.000000e+00, %6856
  %6916 = call float @dx.op.dot3.f32(i32 55, float %6722, float %6723, float %6724, float %6913, float %6914, float %6915)  ; Dot3(ax,ay,az,bx,by,bz)
  %6917 = fsub fast float -0.000000e+00, %6916
  %6918 = call float @dx.op.dot3.f32(i32 55, float %6838, float %6839, float %6840, float %6913, float %6914, float %6915)  ; Dot3(ax,ay,az,bx,by,bz)
  %6919 = fadd fast float %6918, %6813
  %6920 = fadd fast float %6812, %6918
  %6921 = fsub fast float -0.000000e+00, %6920
  %6922 = fcmp ogt float %6916, -0.000000e+00
  %6923 = select i1 %6922, float %6921, float %6919
  %6924 = call float @dx.op.unary.f32(i32 6, float %6917)  ; FAbs(value)
  %6925 = fdiv fast float 1.000000e+00, %6924
  %6926 = fmul fast float %6923, %6925
  %6927 = call float @dx.op.binary.f32(i32 35, float %6926, float 0.000000e+00)  ; FMax(a,b)
  %6928 = call float @dx.op.binary.f32(i32 36, float %6912, float %6927)  ; FMin(a,b)
  %6929 = call float @dx.op.binary.f32(i32 36, float %6897, float %6928)  ; FMin(a,b)
  %6930 = fmul fast float %6929, %6722
  %6931 = fmul fast float %6929, %6723
  %6932 = fmul fast float %6929, %6724
  %6933 = fadd fast float %6930, %167
  %6934 = fadd fast float %6931, %168
  %6935 = fadd fast float %6932, %169
  %6936 = fsub fast float %6933, %6782
  %6937 = fsub fast float %6934, %6783
  %6938 = fsub fast float %6935, %6784
  br label %6946

; <label>:6939                                    ; preds = %6881
  %6940 = fmul fast float %6722, 8.096000e+03
  %6941 = fmul fast float %6723, 8.096000e+03
  %6942 = fmul fast float %6724, 8.096000e+03
  %6943 = fadd fast float %6940, %167
  %6944 = fadd fast float %6941, %168
  %6945 = fadd fast float %6942, %169
  br label %6946

; <label>:6946                                    ; preds = %6939, %6882
  %6947 = phi float [ %6722, %6939 ], [ %6936, %6882 ]
  %6948 = phi float [ %6723, %6939 ], [ %6937, %6882 ]
  %6949 = phi float [ %6724, %6939 ], [ %6938, %6882 ]
  %6950 = phi float [ %6943, %6939 ], [ %6933, %6882 ]
  %6951 = phi float [ %6944, %6939 ], [ %6934, %6882 ]
  %6952 = phi float [ %6945, %6939 ], [ %6935, %6882 ]
  %6953 = fcmp fast olt float %6801, 1.000000e+00
  br i1 %6953, label %6954, label %6985, !dx.controlflow.hints !98

; <label>:6954                                    ; preds = %6946
  %6955 = fmul fast float %6949, %6799
  %6956 = fmul fast float %6948, %6800
  %6957 = fsub fast float %6955, %6956
  %6958 = fmul fast float %6947, %6800
  %6959 = fmul fast float %6949, %6798
  %6960 = fsub fast float %6958, %6959
  %6961 = fmul fast float %6948, %6798
  %6962 = fmul fast float %6947, %6799
  %6963 = fsub fast float %6961, %6962
  %6964 = fmul fast float %6957, 2.000000e+00
  %6965 = fmul fast float %6960, 2.000000e+00
  %6966 = fmul fast float %6963, 2.000000e+00
  %6967 = fmul fast float %6964, %6801
  %6968 = fmul fast float %6965, %6801
  %6969 = fmul fast float %6966, %6801
  %6970 = fmul fast float %6966, %6799
  %6971 = fmul fast float %6965, %6800
  %6972 = fmul fast float %6964, %6800
  %6973 = fmul fast float %6966, %6798
  %6974 = fmul fast float %6965, %6798
  %6975 = fmul fast float %6964, %6799
  %6976 = fadd fast float %6970, %6947
  %6977 = fadd fast float %6976, %6967
  %6978 = fsub fast float %6977, %6971
  %6979 = fsub fast float %6948, %6973
  %6980 = fadd fast float %6979, %6968
  %6981 = fadd fast float %6980, %6972
  %6982 = fadd fast float %6969, %6949
  %6983 = fsub fast float %6982, %6975
  %6984 = fadd fast float %6983, %6974
  br label %6985

; <label>:6985                                    ; preds = %6954, %6946
  %6986 = phi float [ %6978, %6954 ], [ %6947, %6946 ]
  %6987 = phi float [ %6981, %6954 ], [ %6948, %6946 ]
  %6988 = phi float [ %6984, %6954 ], [ %6949, %6946 ]
  br i1 %6827, label %7020, label %6989

; <label>:6989                                    ; preds = %6985
  %6990 = fmul fast float %6490, 0x400187C840000000
  %6991 = fadd fast float %6990, 0xC00EFC2120000000
  %6992 = fmul fast float %6991, %6490
  %6993 = fadd fast float %6992, 0x3FE5D16340000000
  %6994 = fmul fast float %6993, %6490
  %6995 = fadd fast float %6994, 1.000000e+00
  %6996 = call float @dx.op.unary.f32(i32 7, float %6995)  ; Saturate(value)
  %6997 = fsub fast float %6950, %167
  %6998 = fsub fast float %6951, %168
  %6999 = fsub fast float %6952, %169
  %7000 = fsub fast float %6950, %6782
  %7001 = fsub fast float %6951, %6783
  %7002 = fsub fast float %6952, %6784
  %7003 = call float @dx.op.dot3.f32(i32 55, float %6997, float %6998, float %6999, float %6997, float %6998, float %6999)  ; Dot3(ax,ay,az,bx,by,bz)
  %7004 = call float @dx.op.dot3.f32(i32 55, float %7000, float %7001, float %7002, float %7000, float %7001, float %7002)  ; Dot3(ax,ay,az,bx,by,bz)
  %7005 = fadd fast float %7004, 0x3EE4F8B580000000
  %7006 = fdiv fast float %7003, %7005
  %7007 = bitcast float %7006 to i32
  %7008 = ashr i32 %7007, 1
  %7009 = add nsw i32 %7008, 532487669
  %7010 = bitcast i32 %7009 to float
  %7011 = fmul fast float %7010, %6996
  %7012 = call float @dx.op.unary.f32(i32 7, float %7011)  ; Saturate(value)
  %7013 = fmul fast float %7012, 0x4009981AE0000000
  %7014 = fsub fast float 0x40111BBD80000000, %7013
  %7015 = fmul fast float %7014, %7012
  %7016 = fadd fast float %7015, 0xC0009F6020000000
  %7017 = fmul fast float %7016, %7012
  %7018 = fadd fast float %7017, 1.000000e+00
  %7019 = call float @dx.op.unary.f32(i32 7, float %7018)  ; Saturate(value)
  br label %7023

; <label>:7020                                    ; preds = %6985
  %7021 = icmp ne i32 %6828, -1
  %7022 = zext i1 %7021 to i32
  br label %7023

; <label>:7023                                    ; preds = %7020, %6989
  %7024 = phi float [ %6490, %7020 ], [ %7019, %6989 ]
  %7025 = phi i32 [ %7022, %7020 ], [ 0, %6989 ]
  %7026 = fmul float %7024, 5.000000e+00
  %7027 = fsub float 5.000000e+00, %7026
  %7028 = icmp ne i32 %7025, 0
  %7029 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %7030 = extractvalue %dx.types.CBufRet.f32 %7029, 3
  %7031 = fadd fast float %7030, %7027
  %7032 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7031)  ; FMax(a,b)
  %7033 = call float @dx.op.unary.f32(i32 6, float %6986)  ; FAbs(value)
  %7034 = call float @dx.op.unary.f32(i32 6, float %6987)  ; FAbs(value)
  %7035 = fadd fast float %7034, %7033
  %7036 = call float @dx.op.unary.f32(i32 6, float %6988)  ; FAbs(value)
  %7037 = fadd fast float %7035, %7036
  %7038 = fcmp fast oeq float %7037, 0.000000e+00
  %7039 = fdiv fast float 1.000000e+00, %7037
  %7040 = select i1 %7038, float 1.000000e+00, float %7039
  %7041 = fmul fast float %7040, %6986
  %7042 = fmul fast float %7040, %6987
  %7043 = call float @dx.op.unary.f32(i32 6, float %7042)  ; FAbs(value)
  %7044 = call float @dx.op.unary.f32(i32 6, float %7041)  ; FAbs(value)
  %7045 = fsub fast float 1.000000e+00, %7043
  %7046 = fsub fast float 1.000000e+00, %7044
  %7047 = fcmp fast oge float %7041, 0.000000e+00
  %7048 = fcmp fast oge float %7042, 0.000000e+00
  %7049 = select i1 %7047, float 1.000000e+00, float -1.000000e+00
  %7050 = select i1 %7048, float 1.000000e+00, float -1.000000e+00
  %7051 = fcmp fast ole float %6988, 0.000000e+00
  %7052 = fmul fast float %7049, %7045
  %7053 = fmul fast float %7050, %7046
  %7054 = select i1 %7051, float %7052, float %7041
  %7055 = select i1 %7051, float %7053, float %7042
  %7056 = fmul fast float %7054, 5.000000e-01
  %7057 = fmul fast float %7055, 5.000000e-01
  %7058 = fadd fast float %7056, 5.000000e-01
  %7059 = fadd fast float %7057, 5.000000e-01
  %7060 = uitofp i32 %6825 to float
  %7061 = call float @dx.op.binary.f32(i32 36, float %7032, float 3.000000e+00)  ; FMin(a,b)
  %7062 = fadd fast float %7061, 2.000000e+00
  %7063 = call float @dx.op.unary.f32(i32 21, float %7062)  ; Exp(value)
  %7064 = extractvalue %dx.types.CBufRet.f32 %7029, 1
  %7065 = fmul fast float %7064, %7063
  %7066 = fmul fast float %7065, 2.000000e+00
  %7067 = fsub fast float 1.000000e+00, %7066
  %7068 = fmul fast float %7058, %7067
  %7069 = fmul fast float %7059, %7067
  %7070 = fadd fast float %7068, %7065
  %7071 = fadd fast float %7069, %7065
  %7072 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %44, float %7070, float %7071, float %7060, float undef, i32 0, i32 0, i32 undef, float %7032)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7073 = extractvalue %dx.types.ResRet.f32 %7072, 0
  %7074 = extractvalue %dx.types.ResRet.f32 %7072, 1
  %7075 = extractvalue %dx.types.ResRet.f32 %7072, 2
  %7076 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7077 = extractvalue %dx.types.CBufRet.f32 %7076, 3
  %7078 = fmul fast float %7077, %6795
  %7079 = call float @dx.op.binary.f32(i32 36, float %6555, float %7078)  ; FMin(a,b)
  %7080 = select i1 %7028, float %7079, float %7078
  %7081 = fmul fast float %7073, %6873
  %7082 = fmul fast float %7081, %7080
  %7083 = fmul fast float %7074, %6873
  %7084 = fmul fast float %7083, %7080
  %7085 = fmul fast float %7075, %6873
  %7086 = fmul fast float %7085, %7080
  %7087 = fadd fast float %7082, %6770
  %7088 = fadd fast float %7084, %6771
  %7089 = fadd fast float %7086, %6772
  %7090 = fsub fast float %6773, %6873
  br label %6875

; <label>:7091                                    ; preds = %6875
  br label %7092

; <label>:7092                                    ; preds = %7091, %6739
  %7093 = phi float [ %6740, %6739 ], [ %6876, %7091 ]
  %7094 = phi float [ %6741, %6739 ], [ %6877, %7091 ]
  %7095 = phi float [ %6742, %6739 ], [ %6878, %7091 ]
  %7096 = phi float [ %6743, %6739 ], [ %6879, %7091 ]
  %7097 = add i32 %6744, 1
  %7098 = icmp ugt i32 %7097, %6736
  br i1 %7098, label %7099, label %6739, !llvm.loop !99

; <label>:7099                                    ; preds = %7092
  br label %7100

; <label>:7100                                    ; preds = %7099, %6721
  %7101 = phi float [ 0.000000e+00, %6721 ], [ %7093, %7099 ]
  %7102 = phi float [ 0.000000e+00, %6721 ], [ %7094, %7099 ]
  %7103 = phi float [ 0.000000e+00, %6721 ], [ %7095, %7099 ]
  %7104 = call float @dx.op.dot3.f32(i32 55, float %7101, float %7102, float %7103, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7105 = select i1 %228, float 0.000000e+00, float %7101
  %7106 = select i1 %228, float %7104, float %7102
  %7107 = select i1 %228, float 0.000000e+00, float %7103
  %7108 = fcmp fast olt float %6674, 0.000000e+00
  %7109 = call float @dx.op.unary.f32(i32 6, float %6674)  ; FAbs(value)
  %7110 = fmul fast float %7109, %6614
  %7111 = fmul fast float %7109, %6615
  %7112 = fmul fast float %7109, %6616
  %7113 = select i1 %7108, float %6614, float %7110
  %7114 = select i1 %7108, float %6615, float %7111
  %7115 = select i1 %7108, float %6616, float %7112
  %7116 = fsub fast float 1.000000e+00, %7109
  %7117 = call float @dx.op.unary.f32(i32 7, float %7116)  ; Saturate(value)
  %7118 = fmul fast float %7117, %7105
  %7119 = fmul fast float %7117, %7106
  %7120 = fmul fast float %7117, %7107
  %7121 = fadd fast float %7113, %7118
  %7122 = fadd fast float %7114, %7119
  %7123 = fadd fast float %7115, %7120
  br label %7124

; <label>:7124                                    ; preds = %7100, %6657
  %7125 = phi float [ %6614, %6657 ], [ %7121, %7100 ]
  %7126 = phi float [ %6615, %6657 ], [ %7122, %7100 ]
  %7127 = phi float [ %6616, %6657 ], [ %7123, %7100 ]
  %7128 = fmul fast float %6663, %6610
  %7129 = fmul fast float %6663, %6611
  %7130 = fmul fast float %6663, %6612
  %7131 = call float @dx.op.dot3.f32(i32 55, float %6481, float %6482, float %6483, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7132 = fcmp fast ogt float %7131, 0x3E7FF19E20000000
  %7133 = fdiv fast float 1.000000e+00, %7131
  %7134 = select i1 %7132, float %7133, float 0.000000e+00
  %7135 = fmul fast float %7134, %6481
  %7136 = fmul fast float %7134, %6482
  %7137 = fmul fast float %7134, %6483
  %7138 = fadd fast float %7135, -1.000000e+00
  %7139 = fadd fast float %7136, -1.000000e+00
  %7140 = fadd fast float %7137, -1.000000e+00
  %7141 = fmul fast float %7138, 5.000000e-01
  %7142 = fmul fast float %7139, 5.000000e-01
  %7143 = fmul fast float %7140, 5.000000e-01
  %7144 = fadd fast float %7141, 1.000000e+00
  %7145 = fadd fast float %7142, 1.000000e+00
  %7146 = fadd fast float %7143, 1.000000e+00
  %7147 = fmul fast float %7125, %6658
  %7148 = fmul fast float %7126, %6659
  %7149 = fmul fast float %7127, %6660
  %7150 = fsub fast float 1.000000e+00, %6494
  %7151 = bitcast float %7150 to i32
  %7152 = sitofp i32 %7151 to float
  %7153 = fmul fast float %7152, 5.000000e+00
  %7154 = fadd fast float %7153, 0xC1EFBF8940000000
  %7155 = fptosi float %7154 to i32
  %7156 = bitcast i32 %7155 to float
  %7157 = fmul fast float %7156, %4263
  %7158 = fmul fast float %6610, %7157
  %7159 = fmul fast float %7158, %6663
  %7160 = fmul fast float %7159, %7144
  %7161 = fmul fast float %6611, %7157
  %7162 = fmul fast float %7161, %6663
  %7163 = fmul fast float %7162, %7145
  %7164 = fmul fast float %6612, %7157
  %7165 = fmul fast float %7164, %6663
  %7166 = fmul fast float %7165, %7146
  %7167 = fmul fast float %7128, %4259
  %7168 = fmul fast float %7129, %4259
  %7169 = fmul fast float %7130, %4259
  %7170 = fadd fast float %7147, %4255
  %7171 = fadd fast float %7170, %7160
  %7172 = fmul fast float %7171, %4259
  %7173 = fadd fast float %7148, %4256
  %7174 = fadd fast float %7173, %7163
  %7175 = fmul fast float %7174, %4259
  %7176 = fadd fast float %7149, %4257
  %7177 = fadd fast float %7176, %7166
  %7178 = fmul fast float %7177, %4259
  %7179 = bitcast i32 %6518 to float
  %7180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %7181 = extractvalue %dx.types.CBufRet.f32 %7180, 3
  %7182 = fcmp fast oeq float %7181, 0.000000e+00
  br i1 %7182, label %8649, label %7183

; <label>:7183                                    ; preds = %7124
  %7184 = extractvalue %dx.types.CBufRet.f32 %7180, 0
  %7185 = extractvalue %dx.types.CBufRet.f32 %7180, 1
  %7186 = extractvalue %dx.types.CBufRet.f32 %7180, 2
  %7187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %7188 = extractvalue %dx.types.CBufRet.f32 %7187, 0
  %7189 = extractvalue %dx.types.CBufRet.f32 %7187, 1
  %7190 = extractvalue %dx.types.CBufRet.f32 %7187, 2
  %7191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %7192 = extractvalue %dx.types.CBufRet.f32 %7191, 0
  %7193 = extractvalue %dx.types.CBufRet.f32 %7191, 1
  %7194 = call float @dx.op.dot3.f32(i32 55, float %7188, float %7189, float %7190, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7195 = select i1 %228, float %7192, float %7188
  %7196 = select i1 %228, float %7194, float %7189
  %7197 = select i1 %228, float %7193, float %7190
  %7198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %7199 = extractvalue %dx.types.CBufRet.f32 %7198, 2
  %7200 = fmul fast float %7199, %111
  %7201 = fmul fast float %7199, %112
  %7202 = fmul fast float %7199, %113
  %7203 = fadd fast float %7200, %167
  %7204 = fadd fast float %7201, %168
  %7205 = fadd fast float %7202, %169
  %7206 = fcmp fast olt float %7181, 0.000000e+00
  br i1 %7206, label %8302, label %7207

; <label>:7207                                    ; preds = %7183
  %7208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7209 = extractvalue %dx.types.CBufRet.f32 %7208, 0
  %7210 = extractvalue %dx.types.CBufRet.f32 %7208, 1
  %7211 = extractvalue %dx.types.CBufRet.f32 %7208, 2
  %7212 = extractvalue %dx.types.CBufRet.f32 %7208, 3
  %7213 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7214 = extractvalue %dx.types.CBufRet.f32 %7213, 0
  %7215 = extractvalue %dx.types.CBufRet.f32 %7213, 1
  %7216 = extractvalue %dx.types.CBufRet.f32 %7213, 2
  %7217 = extractvalue %dx.types.CBufRet.f32 %7213, 3
  %7218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7219 = extractvalue %dx.types.CBufRet.f32 %7218, 0
  %7220 = extractvalue %dx.types.CBufRet.f32 %7218, 1
  %7221 = extractvalue %dx.types.CBufRet.f32 %7218, 2
  %7222 = extractvalue %dx.types.CBufRet.f32 %7218, 3
  %7223 = fmul fast float %7209, %7203
  %7224 = call float @dx.op.tertiary.f32(i32 46, float %7204, float %7210, float %7223)  ; FMad(a,b,c)
  %7225 = call float @dx.op.tertiary.f32(i32 46, float %7205, float %7211, float %7224)  ; FMad(a,b,c)
  %7226 = fadd fast float %7225, %7212
  %7227 = fmul fast float %7214, %7203
  %7228 = call float @dx.op.tertiary.f32(i32 46, float %7204, float %7215, float %7227)  ; FMad(a,b,c)
  %7229 = call float @dx.op.tertiary.f32(i32 46, float %7205, float %7216, float %7228)  ; FMad(a,b,c)
  %7230 = fadd fast float %7229, %7217
  %7231 = fmul fast float %7219, %7203
  %7232 = call float @dx.op.tertiary.f32(i32 46, float %7204, float %7220, float %7231)  ; FMad(a,b,c)
  %7233 = call float @dx.op.tertiary.f32(i32 46, float %7205, float %7221, float %7232)  ; FMad(a,b,c)
  %7234 = fadd fast float %7233, %7222
  %7235 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %7236 = extractvalue %dx.types.CBufRet.f32 %7235, 0
  %7237 = extractvalue %dx.types.CBufRet.f32 %7235, 1
  %7238 = extractvalue %dx.types.CBufRet.f32 %7235, 3
  %7239 = fmul fast float %7238, %7226
  %7240 = fmul fast float %7238, %7230
  %7241 = fadd fast float %7239, %7236
  %7242 = fadd fast float %7240, %7237
  %7243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %7244 = extractvalue %dx.types.CBufRet.f32 %7243, 0
  %7245 = extractvalue %dx.types.CBufRet.f32 %7243, 1
  %7246 = extractvalue %dx.types.CBufRet.f32 %7243, 3
  %7247 = fmul fast float %7246, %7226
  %7248 = fmul fast float %7246, %7230
  %7249 = fadd fast float %7247, %7244
  %7250 = fadd fast float %7248, %7245
  %7251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %7252 = extractvalue %dx.types.CBufRet.f32 %7251, 1
  %7253 = fsub fast float %7252, %7234
  %7254 = extractvalue %dx.types.CBufRet.f32 %7251, 2
  %7255 = fmul fast float %7253, %7254
  %7256 = fsub fast float 1.000000e+00, %7255
  %7257 = call float @dx.op.unary.f32(i32 7, float %7256)  ; Saturate(value)
  %7258 = extractvalue %dx.types.CBufRet.f32 %7243, 2
  %7259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7260 = extractvalue %dx.types.CBufRet.f32 %7259, 2
  %7261 = fadd fast float %7260, %7258
  %7262 = fcmp fast ogt float %7261, 0.000000e+00
  br i1 %7262, label %7263, label %7287

; <label>:7263                                    ; preds = %7207
  %7264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %7265 = extractvalue %dx.types.CBufRet.f32 %7264, 0
  %7266 = extractvalue %dx.types.CBufRet.f32 %7264, 1
  %7267 = fsub fast float %7249, %7265
  %7268 = fsub fast float %7250, %7266
  %7269 = fcmp fast olt float %7267, 0.000000e+00
  %7270 = fcmp fast olt float %7268, 0.000000e+00
  %7271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %7272 = extractvalue %dx.types.CBufRet.f32 %7271, 0
  %7273 = extractvalue %dx.types.CBufRet.f32 %7271, 1
  %7274 = extractvalue %dx.types.CBufRet.f32 %7271, 2
  %7275 = extractvalue %dx.types.CBufRet.f32 %7271, 3
  %7276 = select i1 %7269, float %7272, float %7274
  %7277 = select i1 %7270, float %7273, float %7275
  %7278 = fmul fast float %7276, %7267
  %7279 = fmul fast float %7277, %7268
  %7280 = call float @dx.op.unary.f32(i32 6, float %7278)  ; FAbs(value)
  %7281 = call float @dx.op.unary.f32(i32 6, float %7279)  ; FAbs(value)
  %7282 = extractvalue %dx.types.CBufRet.f32 %7198, 0
  %7283 = call float @dx.op.binary.f32(i32 35, float %7280, float %7281)  ; FMax(a,b)
  %7284 = fsub fast float %7282, %7283
  %7285 = call float @dx.op.unary.f32(i32 7, float %7284)  ; Saturate(value)
  %7286 = fmul fast float %7285, %7257
  br label %7287

; <label>:7287                                    ; preds = %7263, %7207
  %7288 = phi float [ %7286, %7263 ], [ 0.000000e+00, %7207 ]
  %7289 = extractvalue %dx.types.CBufRet.f32 %7235, 2
  %7290 = extractvalue %dx.types.CBufRet.f32 %7259, 1
  %7291 = fadd fast float %7290, %7289
  %7292 = fcmp fast ogt float %7291, 0.000000e+00
  %7293 = extractvalue %dx.types.CBufRet.f32 %7198, 0
  br i1 %7292, label %7294, label %7317

; <label>:7294                                    ; preds = %7287
  %7295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %7296 = extractvalue %dx.types.CBufRet.f32 %7295, 0
  %7297 = extractvalue %dx.types.CBufRet.f32 %7295, 1
  %7298 = fsub fast float %7241, %7296
  %7299 = fsub fast float %7242, %7297
  %7300 = fcmp fast olt float %7298, 0.000000e+00
  %7301 = fcmp fast olt float %7299, 0.000000e+00
  %7302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %7303 = extractvalue %dx.types.CBufRet.f32 %7302, 0
  %7304 = extractvalue %dx.types.CBufRet.f32 %7302, 1
  %7305 = extractvalue %dx.types.CBufRet.f32 %7302, 2
  %7306 = extractvalue %dx.types.CBufRet.f32 %7302, 3
  %7307 = select i1 %7300, float %7303, float %7305
  %7308 = select i1 %7301, float %7304, float %7306
  %7309 = fmul fast float %7307, %7298
  %7310 = fmul fast float %7308, %7299
  %7311 = call float @dx.op.unary.f32(i32 6, float %7309)  ; FAbs(value)
  %7312 = call float @dx.op.unary.f32(i32 6, float %7310)  ; FAbs(value)
  %7313 = call float @dx.op.binary.f32(i32 35, float %7311, float %7312)  ; FMax(a,b)
  %7314 = fsub fast float %7293, %7313
  %7315 = call float @dx.op.unary.f32(i32 7, float %7314)  ; Saturate(value)
  %7316 = fmul fast float %7315, %7257
  br label %7317

; <label>:7317                                    ; preds = %7294, %7287
  %7318 = phi float [ %7316, %7294 ], [ 0.000000e+00, %7287 ]
  %7319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %7320 = extractvalue %dx.types.CBufRet.f32 %7319, 1
  %7321 = call float @dx.op.unary.f32(i32 7, float %7320)  ; Saturate(value)
  %7322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %7323 = extractvalue %dx.types.CBufRet.f32 %7322, 0
  %7324 = extractvalue %dx.types.CBufRet.f32 %7322, 1
  %7325 = fsub fast float %7226, %7323
  %7326 = fsub fast float %7230, %7324
  %7327 = fcmp fast olt float %7325, 0.000000e+00
  %7328 = fcmp fast olt float %7326, 0.000000e+00
  %7329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %7330 = extractvalue %dx.types.CBufRet.f32 %7329, 0
  %7331 = extractvalue %dx.types.CBufRet.f32 %7329, 1
  %7332 = extractvalue %dx.types.CBufRet.f32 %7329, 2
  %7333 = extractvalue %dx.types.CBufRet.f32 %7329, 3
  %7334 = select i1 %7327, float %7330, float %7332
  %7335 = select i1 %7328, float %7331, float %7333
  %7336 = fmul fast float %7334, %7325
  %7337 = fmul fast float %7335, %7326
  %7338 = call float @dx.op.unary.f32(i32 6, float %7336)  ; FAbs(value)
  %7339 = call float @dx.op.unary.f32(i32 6, float %7337)  ; FAbs(value)
  %7340 = call float @dx.op.binary.f32(i32 35, float %7338, float %7339)  ; FMax(a,b)
  %7341 = fsub fast float %7293, %7340
  %7342 = call float @dx.op.unary.f32(i32 7, float %7341)  ; Saturate(value)
  %7343 = call float @dx.op.binary.f32(i32 36, float %7342, float %7321)  ; FMin(a,b)
  %7344 = fmul fast float %7343, %7257
  %7345 = fsub fast float %7318, %7344
  %7346 = fsub fast float %7288, %7318
  %7347 = fsub fast float %7346, %7344
  %7348 = call float @dx.op.binary.f32(i32 35, float %7318, float %7288)  ; FMax(a,b)
  %7349 = call float @dx.op.binary.f32(i32 35, float %7344, float %7348)  ; FMax(a,b)
  %7350 = fcmp fast olt float %7349, 1.000000e+00
  br i1 %7350, label %7351, label %7749, !dx.controlflow.hints !101

; <label>:7351                                    ; preds = %7317
  %7352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %7353 = extractvalue %dx.types.CBufRet.f32 %7352, 0
  %7354 = fcmp fast une float %7353, 0.000000e+00
  br i1 %7354, label %7355, label %7749, !dx.controlflow.hints !102

; <label>:7355                                    ; preds = %7351
  %7356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %7357 = extractvalue %dx.types.CBufRet.f32 %7356, 0
  %7358 = extractvalue %dx.types.CBufRet.f32 %7356, 1
  %7359 = extractvalue %dx.types.CBufRet.f32 %7356, 2
  %7360 = extractvalue %dx.types.CBufRet.f32 %7356, 3
  %7361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %7362 = extractvalue %dx.types.CBufRet.f32 %7361, 0
  %7363 = extractvalue %dx.types.CBufRet.f32 %7361, 1
  %7364 = extractvalue %dx.types.CBufRet.f32 %7361, 2
  %7365 = extractvalue %dx.types.CBufRet.f32 %7361, 3
  %7366 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %7367 = extractvalue %dx.types.CBufRet.f32 %7366, 0
  %7368 = extractvalue %dx.types.CBufRet.f32 %7366, 1
  %7369 = extractvalue %dx.types.CBufRet.f32 %7366, 2
  %7370 = extractvalue %dx.types.CBufRet.f32 %7366, 3
  %7371 = fmul fast float %7357, %7203
  %7372 = call float @dx.op.tertiary.f32(i32 46, float %7204, float %7358, float %7371)  ; FMad(a,b,c)
  %7373 = call float @dx.op.tertiary.f32(i32 46, float %7205, float %7359, float %7372)  ; FMad(a,b,c)
  %7374 = fadd fast float %7373, %7360
  %7375 = fmul fast float %7362, %7203
  %7376 = call float @dx.op.tertiary.f32(i32 46, float %7204, float %7363, float %7375)  ; FMad(a,b,c)
  %7377 = call float @dx.op.tertiary.f32(i32 46, float %7205, float %7364, float %7376)  ; FMad(a,b,c)
  %7378 = fadd fast float %7377, %7365
  %7379 = fmul fast float %7367, %7203
  %7380 = call float @dx.op.tertiary.f32(i32 46, float %7204, float %7368, float %7379)  ; FMad(a,b,c)
  %7381 = call float @dx.op.tertiary.f32(i32 46, float %7205, float %7369, float %7380)  ; FMad(a,b,c)
  %7382 = fadd fast float %7381, %7370
  %7383 = fcmp fast oge float %7374, 1.000000e+00
  %7384 = fcmp fast oge float %7378, 1.000000e+00
  %7385 = or i1 %7383, %7384
  %7386 = fcmp fast olt float %7374, 0.000000e+00
  %7387 = fcmp fast olt float %7378, 0.000000e+00
  %7388 = or i1 %7386, %7387
  %7389 = or i1 %7385, %7388
  br i1 %7389, label %7749, label %7390, !dx.controlflow.hints !103

; <label>:7390                                    ; preds = %7355
  %7391 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %7392 = extractvalue %dx.types.CBufRet.f32 %7391, 0
  %7393 = extractvalue %dx.types.CBufRet.f32 %7391, 1
  %7394 = extractvalue %dx.types.CBufRet.f32 %7391, 2
  %7395 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %7396 = extractvalue %dx.types.CBufRet.i32 %7395, 2
  %7397 = uitofp i32 %7396 to float
  %7398 = extractvalue %dx.types.CBufRet.i32 %7395, 3
  %7399 = uitofp i32 %7398 to float
  %7400 = extractvalue %dx.types.CBufRet.f32 %7391, 3
  %7401 = fmul fast float %7400, 2.000000e+00
  %7402 = fsub fast float %7374, %7392
  %7403 = fsub fast float %7378, %7393
  %7404 = fmul fast float %7401, %7402
  %7405 = fmul fast float %7401, %7403
  %7406 = fdiv fast float 1.000000e+00, %7186
  %7407 = fmul fast float %7405, %7406
  %7408 = call float @dx.op.unary.f32(i32 6, float %7407)  ; FAbs(value)
  %7409 = fmul fast float %7394, %7205
  %7410 = fmul fast float %7409, %7401
  %7411 = call float @dx.op.unary.f32(i32 6, float %7410)  ; FAbs(value)
  %7412 = call float @dx.op.unary.f32(i32 6, float %7404)  ; FAbs(value)
  %7413 = call float @dx.op.binary.f32(i32 35, float %7411, float %7408)  ; FMax(a,b)
  %7414 = call float @dx.op.binary.f32(i32 35, float %7412, float %7413)  ; FMax(a,b)
  %7415 = fmul fast float %7414, 2.000000e+00
  %7416 = call float @dx.op.unary.f32(i32 23, float %7415)  ; Log(value)
  %7417 = call float @dx.op.binary.f32(i32 35, float %7416, float %7397)  ; FMax(a,b)
  %7418 = call float @dx.op.unary.f32(i32 22, float %7417)  ; Frc(value)
  %7419 = fadd fast float %7418, 0xBFEA666660000000
  %7420 = fmul fast float %7419, 8.000000e+00
  %7421 = call float @dx.op.unary.f32(i32 7, float %7420)  ; Saturate(value)
  %7422 = call float @dx.op.unary.f32(i32 27, float %7417)  ; Round_ni(value)
  %7423 = fadd fast float %7422, %7421
  %7424 = call float @dx.op.binary.f32(i32 36, float %7423, float %7399)  ; FMin(a,b)
  %7425 = call float @dx.op.unary.f32(i32 27, float %7424)  ; Round_ni(value)
  %7426 = fsub fast float -0.000000e+00, %7425
  %7427 = call float @dx.op.unary.f32(i32 21, float %7426)  ; Exp(value)
  %7428 = fmul fast float %7427, %7401
  %7429 = fmul fast float %7428, %7374
  %7430 = fmul fast float %7428, %7378
  %7431 = fmul fast float %7429, 2.500000e-01
  %7432 = fmul fast float %7430, 2.500000e-01
  %7433 = fadd fast float %7431, 5.000000e-01
  %7434 = fadd fast float %7432, 5.000000e-01
  %7435 = fsub fast float %7399, %7397
  %7436 = fptoui float %7435 to i32
  %7437 = add i32 %7436, 320
  %7438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 %7437)  ; CBufferLoadLegacy(handle,regIndex)
  %7439 = extractvalue %dx.types.CBufRet.f32 %7438, 0
  %7440 = extractvalue %dx.types.CBufRet.f32 %7438, 1
  %7441 = fcmp fast une float %7424, %7399
  %7442 = fsub fast float %7374, %7439
  %7443 = fsub fast float %7378, %7440
  %7444 = call float @dx.op.unary.f32(i32 6, float %7442)  ; FAbs(value)
  %7445 = call float @dx.op.unary.f32(i32 6, float %7443)  ; FAbs(value)
  %7446 = fmul fast float %7444, %7428
  %7447 = fmul fast float %7445, %7428
  %7448 = fcmp fast olt float %7446, 1.000000e+00
  %7449 = fcmp fast olt float %7447, 1.000000e+00
  %7450 = and i1 %7448, %7449
  %7451 = or i1 %7441, %7450
  br i1 %7451, label %7452, label %7749, !dx.controlflow.hints !104

; <label>:7452                                    ; preds = %7390
  %7453 = fmul fast float %7430, 5.000000e-01
  %7454 = fmul fast float %7429, 5.000000e-01
  %7455 = fadd fast float %7453, 5.000000e-01
  %7456 = fadd fast float %7454, 5.000000e-01
  %7457 = sitofp i32 %7396 to float
  %7458 = fsub fast float %7424, %7457
  %7459 = call float @dx.op.unary.f32(i32 27, float %7458)  ; Round_ni(value)
  %7460 = call float @dx.op.unary.f32(i32 22, float %7424)  ; Frc(value)
  %7461 = call float @dx.op.unary.f32(i32 22, float %7456)  ; Frc(value)
  %7462 = call float @dx.op.unary.f32(i32 22, float %7455)  ; Frc(value)
  %7463 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %45, float %7461, float %7462, float %7459, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7464 = extractvalue %dx.types.ResRet.f32 %7463, 0
  %7465 = extractvalue %dx.types.ResRet.f32 %7463, 1
  %7466 = extractvalue %dx.types.ResRet.f32 %7463, 2
  %7467 = extractvalue %dx.types.ResRet.f32 %7463, 3
  %7468 = fcmp fast ogt float %7460, 0.000000e+00
  br i1 %7468, label %7469, label %7490, !dx.controlflow.hints !105

; <label>:7469                                    ; preds = %7452
  %7470 = fadd fast float %7459, 1.000000e+00
  %7471 = call float @dx.op.unary.f32(i32 22, float %7433)  ; Frc(value)
  %7472 = call float @dx.op.unary.f32(i32 22, float %7434)  ; Frc(value)
  %7473 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %45, float %7471, float %7472, float %7470, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7474 = extractvalue %dx.types.ResRet.f32 %7473, 0
  %7475 = extractvalue %dx.types.ResRet.f32 %7473, 1
  %7476 = extractvalue %dx.types.ResRet.f32 %7473, 2
  %7477 = extractvalue %dx.types.ResRet.f32 %7473, 3
  %7478 = fsub fast float %7474, %7464
  %7479 = fsub fast float %7475, %7465
  %7480 = fsub fast float %7476, %7466
  %7481 = fsub fast float %7477, %7467
  %7482 = fmul fast float %7478, %7460
  %7483 = fmul fast float %7479, %7460
  %7484 = fmul fast float %7480, %7460
  %7485 = fmul fast float %7481, %7460
  %7486 = fadd fast float %7482, %7464
  %7487 = fadd fast float %7483, %7465
  %7488 = fadd fast float %7484, %7466
  %7489 = fadd fast float %7485, %7467
  br label %7490

; <label>:7490                                    ; preds = %7469, %7452
  %7491 = phi float [ %7486, %7469 ], [ %7464, %7452 ]
  %7492 = phi float [ %7487, %7469 ], [ %7465, %7452 ]
  %7493 = phi float [ %7488, %7469 ], [ %7466, %7452 ]
  %7494 = phi float [ %7489, %7469 ], [ %7467, %7452 ]
  %7495 = fadd fast float %7491, -5.000000e-01
  %7496 = fadd fast float %7493, -5.000000e-01
  %7497 = fmul fast float %7495, 0xBFD5555560000000
  %7498 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %7496, float %7497)  ; FMad(a,b,c)
  %7499 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %7492, float 0.000000e+00)  ; FMad(a,b,c)
  %7500 = fadd fast float %7499, %7494
  %7501 = fmul fast float %7495, -7.500000e-01
  %7502 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %7496, float %7501)  ; FMad(a,b,c)
  %7503 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %7492, float 0.000000e+00)  ; FMad(a,b,c)
  %7504 = fadd fast float %7503, %7494
  %7505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %7506 = extractvalue %dx.types.CBufRet.f32 %7505, 0
  %7507 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %7508 = extractvalue %dx.types.CBufRet.f32 %7507, 0
  %7509 = extractvalue %dx.types.CBufRet.f32 %7507, 1
  %7510 = extractvalue %dx.types.CBufRet.f32 %7507, 2
  %7511 = extractvalue %dx.types.CBufRet.f32 %7507, 3
  %7512 = fsub fast float %7508, %7498
  %7513 = fsub fast float %7509, %7500
  %7514 = fsub fast float %7510, %7502
  %7515 = fsub fast float %7511, %7504
  %7516 = fmul fast float %7512, %7506
  %7517 = fmul fast float %7513, %7506
  %7518 = fmul fast float %7514, %7506
  %7519 = fmul fast float %7515, %7506
  %7520 = fadd fast float %7516, %7498
  %7521 = fadd fast float %7517, %7500
  %7522 = fadd fast float %7518, %7502
  %7523 = fadd fast float %7519, %7504
  %7524 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %7525 = extractvalue %dx.types.ResRet.i32 %7524, 0
  %7526 = and i32 %7525, 536870911
  %7527 = uitofp i32 %7526 to float
  %7528 = fmul fast float %7527, %7374
  %7529 = fmul fast float %7527, %7378
  %7530 = fptoui float %7528 to i32
  %7531 = fptoui float %7529 to i32
  %7532 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %7533 = extractvalue %dx.types.ResRet.i32 %7532, 0
  %7534 = and i32 %7533, 31
  %7535 = lshr i32 %7530, %7534
  %7536 = lshr i32 %7531, %7534
  %7537 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %7538 = extractvalue %dx.types.ResRet.i32 %7537, 0
  %7539 = and i32 %7538, 31
  %7540 = shl i32 1, %7539
  %7541 = call i32 @dx.op.binary.i32(i32 40, i32 %7540, i32 4)  ; UMin(a,b)
  %7542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %7543 = extractvalue %dx.types.ResRet.i32 %7542, 0
  %7544 = extractvalue %dx.types.ResRet.i32 %7542, 1
  %7545 = icmp eq i32 %7541, 0
  br i1 %7545, label %7587, label %7546

; <label>:7546                                    ; preds = %7490
  br label %7547

; <label>:7547                                    ; preds = %7575, %7546
  %7548 = phi i32 [ %7578, %7575 ], [ 0, %7546 ]
  %7549 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %7550 = extractvalue %dx.types.ResRet.i32 %7549, 0
  %7551 = lshr i32 %7550, 16
  %7552 = and i32 %7551, 31
  %7553 = shl i32 %7536, %7552
  %7554 = add i32 %7553, %7535
  %7555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %7556 = extractvalue %dx.types.ResRet.i32 %7555, 0
  %7557 = and i32 %7556, 31
  %7558 = shl i32 %7554, %7557
  %7559 = add i32 %7558, %7548
  %7560 = shl i32 %7559, 2
  %7561 = add i32 %7560, 32
  %7562 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7561, i32 undef)  ; BufferLoad(srv,index,wot)
  %7563 = extractvalue %dx.types.ResRet.i32 %7562, 0
  %7564 = icmp slt i32 %7563, 0
  %7565 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 %7548
  %7566 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 %7548
  %7567 = bitcast float* %7565 to i32*
  %7568 = bitcast float* %7566 to i32*
  br i1 %7564, label %7569, label %7575

; <label>:7569                                    ; preds = %7547
  %7570 = and i32 %7563, 1073741823
  %7571 = add nuw nsw i32 %7570, 20
  %7572 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7571, i32 undef)  ; BufferLoad(srv,index,wot)
  %7573 = extractvalue %dx.types.ResRet.i32 %7572, 0
  %7574 = extractvalue %dx.types.ResRet.i32 %7572, 1
  br label %7575

; <label>:7575                                    ; preds = %7569, %7547
  %7576 = phi i32 [ %7573, %7569 ], [ %7543, %7547 ]
  %7577 = phi i32 [ %7574, %7569 ], [ %7544, %7547 ]
  store i32 %7576, i32* %7567, align 4
  store i32 %7577, i32* %7568, align 4
  %7578 = add nuw i32 %7548, 1
  %7579 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %7580 = extractvalue %dx.types.CBufRet.i32 %7579, 2
  %7581 = icmp eq i32 %7580, 0
  %7582 = icmp ugt i32 %7563, -1073741825
  %7583 = and i1 %7582, %7581
  %7584 = icmp ult i32 %7578, %7541
  %7585 = and i1 %7583, %7584
  br i1 %7585, label %7547, label %7586

; <label>:7586                                    ; preds = %7575
  br label %7587

; <label>:7587                                    ; preds = %7586, %7490
  %7588 = phi i32 [ 0, %7490 ], [ %7578, %7586 ]
  %7589 = extractvalue %dx.types.CBufRet.f32 %7352, 2
  %7590 = fptoui float %7589 to i32
  %7591 = icmp eq i32 %7590, 0
  br i1 %7591, label %7643, label %7592

; <label>:7592                                    ; preds = %7587
  br label %7593

; <label>:7593                                    ; preds = %7638, %7592
  %7594 = phi i32 [ %7639, %7638 ], [ %7588, %7592 ]
  %7595 = phi i32 [ %7640, %7638 ], [ 0, %7592 ]
  %7596 = lshr i32 %7595, 2
  %7597 = and i32 %7595, 3
  %7598 = add nuw nsw i32 %7596, 83
  %7599 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 %7598)  ; CBufferLoadLegacy(handle,regIndex)
  %7600 = extractvalue %dx.types.CBufRet.i32 %7599, 0
  %7601 = extractvalue %dx.types.CBufRet.i32 %7599, 1
  %7602 = extractvalue %dx.types.CBufRet.i32 %7599, 2
  %7603 = extractvalue %dx.types.CBufRet.i32 %7599, 3
  %7604 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 0
  store i32 %7600, i32* %7604, align 4
  %7605 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 1
  store i32 %7601, i32* %7605, align 4
  %7606 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 2
  store i32 %7602, i32* %7606, align 4
  %7607 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 3
  store i32 %7603, i32* %7607, align 4
  %7608 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 %7597
  %7609 = load i32, i32* %7608, align 4, !tbaa !96, !noalias !106
  %7610 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %7611 = extractvalue %dx.types.ResRet.i32 %7610, 0
  %7612 = lshr i32 %7611, 16
  %7613 = and i32 %7612, 31
  %7614 = shl i32 %7536, %7613
  %7615 = add i32 %7614, %7535
  %7616 = shl i32 %7615, 2
  %7617 = add i32 %7616, %7609
  %7618 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7617, i32 undef)  ; BufferLoad(srv,index,wot)
  %7619 = extractvalue %dx.types.ResRet.i32 %7618, 0
  %7620 = icmp eq i32 %7619, 0
  br i1 %7620, label %7638, label %7621

; <label>:7621                                    ; preds = %7593
  %7622 = icmp slt i32 %7619, 0
  %7623 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 %7594
  %7624 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 %7594
  %7625 = bitcast float* %7623 to i32*
  %7626 = bitcast float* %7624 to i32*
  br i1 %7622, label %7627, label %7634

; <label>:7627                                    ; preds = %7621
  %7628 = and i32 %7619, 1073741823
  %7629 = add i32 %7609, 20
  %7630 = add i32 %7629, %7628
  %7631 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7630, i32 undef)  ; BufferLoad(srv,index,wot)
  %7632 = extractvalue %dx.types.ResRet.i32 %7631, 0
  %7633 = extractvalue %dx.types.ResRet.i32 %7631, 1
  br label %7634

; <label>:7634                                    ; preds = %7627, %7621
  %7635 = phi i32 [ %7632, %7627 ], [ %7543, %7621 ]
  %7636 = phi i32 [ %7633, %7627 ], [ %7544, %7621 ]
  store i32 %7635, i32* %7625, align 4
  store i32 %7636, i32* %7626, align 4
  %7637 = add i32 %7594, 1
  br label %7638

; <label>:7638                                    ; preds = %7634, %7593
  %7639 = phi i32 [ %7594, %7593 ], [ %7637, %7634 ]
  %7640 = add nuw i32 %7595, 1
  %7641 = icmp eq i32 %7640, %7590
  br i1 %7641, label %7642, label %7593

; <label>:7642                                    ; preds = %7638
  br label %7643

; <label>:7643                                    ; preds = %7642, %7587
  %7644 = phi i32 [ %7588, %7587 ], [ %7639, %7642 ]
  %7645 = icmp eq i32 %7644, 1
  %7646 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 0
  %7647 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 0
  br i1 %7645, label %7648, label %7651

; <label>:7648                                    ; preds = %7643
  %7649 = load float, float* %7646, align 4
  %7650 = load float, float* %7647, align 4
  br label %7678

; <label>:7651                                    ; preds = %7643
  %7652 = load float, float* %7646, align 4
  %7653 = load float, float* %7647, align 4
  %7654 = fdiv fast float 1.000000e+00, %7653
  %7655 = fsub fast float %7652, %7654
  %7656 = icmp ugt i32 %7644, 1
  br i1 %7656, label %7657, label %7673

; <label>:7657                                    ; preds = %7651
  br label %7658

; <label>:7658                                    ; preds = %7658, %7657
  %7659 = phi float [ %7668, %7658 ], [ %7655, %7657 ]
  %7660 = phi float [ %7669, %7658 ], [ %7652, %7657 ]
  %7661 = phi i32 [ %7670, %7658 ], [ 1, %7657 ]
  %7662 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 %7661
  %7663 = load float, float* %7662, align 4
  %7664 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 %7661
  %7665 = load float, float* %7664, align 4
  %7666 = fdiv fast float 1.000000e+00, %7665
  %7667 = fsub fast float %7663, %7666
  %7668 = call float @dx.op.binary.f32(i32 36, float %7659, float %7667)  ; FMin(a,b)
  %7669 = call float @dx.op.binary.f32(i32 35, float %7660, float %7663)  ; FMax(a,b)
  %7670 = add nuw i32 %7661, 1
  %7671 = icmp eq i32 %7670, %7644
  br i1 %7671, label %7672, label %7658

; <label>:7672                                    ; preds = %7658
  br label %7673

; <label>:7673                                    ; preds = %7672, %7651
  %7674 = phi float [ %7655, %7651 ], [ %7668, %7672 ]
  %7675 = phi float [ %7652, %7651 ], [ %7669, %7672 ]
  %7676 = fsub fast float %7675, %7674
  %7677 = fdiv fast float 1.000000e+00, %7676
  br label %7678

; <label>:7678                                    ; preds = %7673, %7648
  %7679 = phi float [ %7649, %7648 ], [ %7675, %7673 ]
  %7680 = phi float [ %7650, %7648 ], [ %7677, %7673 ]
  %7681 = fadd fast float %7382, %7679
  %7682 = fmul fast float %7681, %7680
  %7683 = call float @dx.op.unary.f32(i32 7, float %7682)  ; Saturate(value)
  %7684 = fmul fast float %7683, 2.000000e+00
  %7685 = fsub fast float 1.000000e+00, %7684
  %7686 = fmul fast float %7520, %7520
  %7687 = fsub fast float %7521, %7686
  %7688 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %7687)  ; FMax(a,b)
  %7689 = fdiv fast float 1.000000e+00, %7688
  %7690 = fmul fast float %7521, %7520
  %7691 = fsub fast float %7522, %7690
  %7692 = fsub fast float %7685, %7520
  %7693 = fmul fast float %7685, %7685
  %7694 = fsub fast float %7693, %7521
  %7695 = fmul fast float %7689, %7691
  %7696 = fmul fast float %7695, %7692
  %7697 = fsub fast float %7694, %7696
  %7698 = fmul fast float %7521, %7521
  %7699 = fsub fast float %7523, %7698
  %7700 = fmul fast float %7691, %7691
  %7701 = fmul fast float %7700, %7689
  %7702 = fsub fast float %7699, %7701
  %7703 = fdiv fast float %7697, %7702
  %7704 = fmul fast float %7703, %7691
  %7705 = fsub fast float %7692, %7704
  %7706 = fmul fast float %7705, %7689
  %7707 = fmul fast float %7706, %7520
  %7708 = fsub fast float 1.000000e+00, %7707
  %7709 = fmul fast float %7703, %7521
  %7710 = fsub fast float %7708, %7709
  %7711 = fmul fast float %7706, %7706
  %7712 = fmul fast float %7703, 4.000000e+00
  %7713 = fmul fast float %7712, %7710
  %7714 = fsub fast float %7711, %7713
  %7715 = call float @dx.op.unary.f32(i32 24, float %7714)  ; Sqrt(value)
  %7716 = fcmp fast oge float %7706, 0.000000e+00
  %7717 = fsub fast float -0.000000e+00, %7715
  %7718 = select i1 %7716, float %7717, float %7715
  %7719 = fsub fast float %7718, %7706
  %7720 = fdiv fast float %7719, %7703
  %7721 = fdiv fast float %7710, %7719
  %7722 = fmul fast float %7720, 5.000000e-01
  %7723 = fmul fast float %7721, 2.000000e+00
  %7724 = select i1 %7716, float %7722, float %7723
  %7725 = select i1 %7716, float %7723, float %7722
  %7726 = call float @dx.op.binary.f32(i32 35, float %7724, float %7725)  ; FMax(a,b)
  %7727 = call float @dx.op.binary.f32(i32 36, float %7724, float %7725)  ; FMin(a,b)
  %7728 = fcmp fast ogt float %7685, %7726
  %7729 = fsub fast float %7685, %7727
  %7730 = fsub fast float %7685, %7726
  %7731 = fsub fast float %7726, %7727
  %7732 = select i1 %7728, float %7730, float %7731
  %7733 = fmul float %7729, %7732
  %7734 = select i1 %7728, float %7727, float %7685
  %7735 = fcmp fast ogt float %7685, %7727
  %7736 = fmul fast float %7734, %7726
  %7737 = fadd fast float %7734, %7726
  %7738 = fmul fast float %7737, %7520
  %7739 = fadd fast float %7736, %7521
  %7740 = fsub fast float %7739, %7738
  %7741 = fdiv fast float %7740, %7733
  %7742 = select i1 %7735, float %7741, float 0.000000e+00
  %7743 = fsub fast float 1.000000e+00, %7742
  %7744 = select i1 %7728, float %7743, float %7742
  %7745 = call float @dx.op.unary.f32(i32 7, float %7744)  ; Saturate(value)
  %7746 = extractvalue %dx.types.CBufRet.f32 %7505, 3
  %7747 = fmul fast float %7746, %7745
  %7748 = fsub fast float 1.000000e+00, %7747
  br label %7749

; <label>:7749                                    ; preds = %7678, %7390, %7355, %7351, %7317
  %7750 = phi float [ 1.000000e+00, %7317 ], [ %7748, %7678 ], [ 1.000000e+00, %7355 ], [ 1.000000e+00, %7390 ], [ 1.000000e+00, %7351 ]
  %7751 = fcmp fast ogt float %7347, 0.000000e+00
  br i1 %7751, label %7752, label %7914, !dx.controlflow.hints !115

; <label>:7752                                    ; preds = %7749
  %7753 = fadd fast float %7260, %7234
  %7754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7755 = extractvalue %dx.types.CBufRet.f32 %7754, 2
  %7756 = extractvalue %dx.types.CBufRet.f32 %7754, 3
  %7757 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7758 = extractvalue %dx.types.CBufRet.f32 %7757, 2
  %7759 = call float @dx.op.binary.f32(i32 35, float %7753, float 0.000000e+00)  ; FMax(a,b)
  %7760 = fadd fast float %7759, 0x3F10000000000000
  %7761 = fcmp fast oeq float %7758, 0.000000e+00
  br i1 %7761, label %7762, label %7829

; <label>:7762                                    ; preds = %7752
  %7763 = extractvalue %dx.types.CBufRet.f32 %7754, 1
  %7764 = extractvalue %dx.types.CBufRet.f32 %7754, 0
  %7765 = fmul fast float %7764, %7249
  %7766 = fmul fast float %7763, %7250
  %7767 = fadd fast float %7765, 5.000000e-01
  %7768 = call float @dx.op.unary.f32(i32 27, float %7767)  ; Round_ni(value)
  %7769 = fadd fast float %7766, 5.000000e-01
  %7770 = call float @dx.op.unary.f32(i32 27, float %7769)  ; Round_ni(value)
  %7771 = fsub fast float %7767, %7768
  %7772 = fsub fast float %7769, %7770
  %7773 = fadd fast float %7768, -5.000000e-01
  %7774 = fadd fast float %7770, -5.000000e-01
  %7775 = fmul fast float %7771, 2.000000e+00
  %7776 = fsub fast float 3.000000e+00, %7775
  %7777 = fadd fast float %7775, 1.000000e+00
  %7778 = fsub fast float 2.000000e+00, %7771
  %7779 = bitcast float %7776 to i32
  %7780 = sub nsw i32 2129859010, %7779
  %7781 = bitcast i32 %7780 to float
  %7782 = fmul fast float %7781, %7778
  %7783 = fadd fast float %7782, -1.000000e+00
  %7784 = bitcast float %7777 to i32
  %7785 = sub nsw i32 2129859010, %7784
  %7786 = bitcast i32 %7785 to float
  %7787 = fmul fast float %7786, %7771
  %7788 = fadd fast float %7787, 1.000000e+00
  %7789 = fmul fast float %7772, 2.000000e+00
  %7790 = fsub fast float 3.000000e+00, %7789
  %7791 = fadd fast float %7789, 1.000000e+00
  %7792 = fsub fast float 2.000000e+00, %7772
  %7793 = bitcast float %7790 to i32
  %7794 = sub nsw i32 2129859010, %7793
  %7795 = bitcast i32 %7794 to float
  %7796 = fmul fast float %7795, %7792
  %7797 = fadd fast float %7796, -1.000000e+00
  %7798 = bitcast float %7791 to i32
  %7799 = sub nsw i32 2129859010, %7798
  %7800 = bitcast i32 %7799 to float
  %7801 = fmul fast float %7800, %7772
  %7802 = fadd fast float %7801, 1.000000e+00
  %7803 = fadd fast float %7783, %7773
  %7804 = fmul fast float %7803, %7755
  %7805 = fadd fast float %7797, %7774
  %7806 = fmul fast float %7805, %7756
  %7807 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %48, float %7804, float %7806, float undef, float undef, i32 0, i32 0, i32 undef, float %7760)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7808 = extractvalue %dx.types.ResRet.f32 %7807, 0
  %7809 = fmul fast float %7808, %7776
  %7810 = fadd fast float %7788, %7773
  %7811 = fmul fast float %7810, %7755
  %7812 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %48, float %7811, float %7806, float undef, float undef, i32 0, i32 0, i32 undef, float %7760)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7813 = extractvalue %dx.types.ResRet.f32 %7812, 0
  %7814 = fmul fast float %7813, %7777
  %7815 = fadd fast float %7802, %7774
  %7816 = fmul fast float %7815, %7756
  %7817 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %48, float %7804, float %7816, float undef, float undef, i32 0, i32 0, i32 undef, float %7760)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7818 = extractvalue %dx.types.ResRet.f32 %7817, 0
  %7819 = fmul fast float %7818, %7776
  %7820 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %48, float %7811, float %7816, float undef, float undef, i32 0, i32 0, i32 undef, float %7760)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7821 = extractvalue %dx.types.ResRet.f32 %7820, 0
  %7822 = fmul fast float %7821, %7777
  %7823 = fadd fast float %7822, %7819
  %7824 = fmul fast float %7823, %7791
  %7825 = fadd fast float %7814, %7809
  %7826 = fmul fast float %7825, %7790
  %7827 = fadd fast float %7826, %7824
  %7828 = fmul fast float %7827, 6.250000e-02
  br label %7914

; <label>:7829                                    ; preds = %7752
  %7830 = fmul fast float %239, 0x401921FB60000000
  %7831 = call float @dx.op.unary.f32(i32 13, float %7830)  ; Sin(value)
  %7832 = call float @dx.op.unary.f32(i32 12, float %7830)  ; Cos(value)
  %7833 = fsub fast float -0.000000e+00, %7831
  br label %7834

; <label>:7834                                    ; preds = %7883, %7829
  %7835 = phi float [ 0.000000e+00, %7829 ], [ %7878, %7883 ]
  %7836 = phi float [ 0.000000e+00, %7829 ], [ %7880, %7883 ]
  %7837 = phi i32 [ 0, %7829 ], [ %7884, %7883 ]
  %7838 = mul i32 %7837, 2
  %7839 = add i32 0, %7838
  %7840 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7839
  %7841 = load float, float* %7840, align 4
  %7842 = mul i32 %7837, 2
  %7843 = add i32 1, %7842
  %7844 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7843
  %7845 = load float, float* %7844, align 4
  %7846 = fmul fast float %7841, %7832
  %7847 = call float @dx.op.tertiary.f32(i32 46, float %7845, float %7833, float %7846)  ; FMad(a,b,c)
  %7848 = fmul fast float %7841, %7831
  %7849 = call float @dx.op.tertiary.f32(i32 46, float %7845, float %7832, float %7848)  ; FMad(a,b,c)
  %7850 = fmul fast float %7847, %7758
  %7851 = fmul fast float %7849, %7758
  %7852 = fadd fast float %7850, %7249
  %7853 = fadd fast float %7851, %7250
  %7854 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %47, float %7852, float %7853, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7855 = extractvalue %dx.types.ResRet.f32 %7854, 0
  %7856 = extractvalue %dx.types.ResRet.f32 %7854, 1
  %7857 = extractvalue %dx.types.ResRet.f32 %7854, 2
  %7858 = extractvalue %dx.types.ResRet.f32 %7854, 3
  %7859 = getelementptr inbounds [4 x float], [4 x float]* %97, i32 0, i32 0
  store float %7855, float* %7859, align 4
  %7860 = getelementptr inbounds [4 x float], [4 x float]* %97, i32 0, i32 1
  store float %7856, float* %7860, align 4
  %7861 = getelementptr inbounds [4 x float], [4 x float]* %97, i32 0, i32 2
  store float %7857, float* %7861, align 4
  %7862 = getelementptr inbounds [4 x float], [4 x float]* %97, i32 0, i32 3
  store float %7858, float* %7862, align 4
  %7863 = fsub fast float %7855, %7760
  %7864 = fcmp fast olt float %7863, 0.000000e+00
  %7865 = select i1 %7864, float 0.000000e+00, float 1.000000e+00
  %7866 = fadd fast float %7865, %7835
  %7867 = fmul fast float %7865, %7863
  %7868 = fadd fast float %7867, %7836
  br label %7869

; <label>:7869                                    ; preds = %7869, %7834
  %7870 = phi i32 [ 1, %7834 ], [ %7881, %7869 ]
  %7871 = phi float [ %7868, %7834 ], [ %7880, %7869 ]
  %7872 = phi float [ %7866, %7834 ], [ %7878, %7869 ]
  %7873 = getelementptr [4 x float], [4 x float]* %97, i32 0, i32 %7870
  %7874 = load float, float* %7873, align 4, !tbaa !90, !noalias !106
  %7875 = fsub fast float %7874, %7760
  %7876 = fcmp fast olt float %7875, 0.000000e+00
  %7877 = select i1 %7876, float 0.000000e+00, float 1.000000e+00
  %7878 = fadd fast float %7877, %7872
  %7879 = fmul fast float %7877, %7875
  %7880 = fadd fast float %7879, %7871
  %7881 = add nuw nsw i32 %7870, 1
  %7882 = icmp eq i32 %7881, 4
  br i1 %7882, label %7883, label %7869, !llvm.loop !116

; <label>:7883                                    ; preds = %7869
  %7884 = add nuw nsw i32 %7837, 1
  %7885 = icmp eq i32 %7884, 8
  br i1 %7885, label %7886, label %7834, !llvm.loop !117

; <label>:7886                                    ; preds = %7883
  %7887 = fdiv fast float 1.000000e+00, %7878
  %7888 = fmul fast float %7887, %7880
  %7889 = fdiv fast float 1.000000e+00, %7760
  %7890 = fmul fast float %7888, %7889
  %7891 = call float @dx.op.unary.f32(i32 7, float %7890)  ; Saturate(value)
  %7892 = call float @dx.op.binary.f32(i32 35, float %7891, float 0.000000e+00)  ; FMax(a,b)
  %7893 = fmul fast float %7878, 3.125000e-02
  %7894 = call float @dx.op.unary.f32(i32 7, float %7893)  ; Saturate(value)
  %7895 = fmul fast float %7894, 2.000000e+00
  %7896 = fadd fast float %7895, -1.000000e+00
  %7897 = fcmp fast ogt float %7896, 0.000000e+00
  %7898 = fcmp fast olt float %7896, 0.000000e+00
  %7899 = zext i1 %7897 to i32
  %7900 = zext i1 %7898 to i32
  %7901 = sub nsw i32 %7899, %7900
  %7902 = sitofp i32 %7901 to float
  %7903 = fmul fast float %7902, %7896
  %7904 = fsub fast float 1.000000e+00, %7903
  %7905 = fmul fast float %7904, %7904
  %7906 = fmul fast float %7905, %7904
  %7907 = fsub fast float %7904, %7906
  %7908 = fmul fast float %7907, %7892
  %7909 = fsub fast float 1.000000e+00, %7906
  %7910 = fsub fast float %7909, %7908
  %7911 = fmul fast float %7902, 5.000000e-01
  %7912 = fmul fast float %7911, %7910
  %7913 = fsub fast float 5.000000e-01, %7912
  br label %7914

; <label>:7914                                    ; preds = %7886, %7762, %7749
  %7915 = phi float [ 1.000000e+00, %7749 ], [ %7828, %7762 ], [ %7913, %7886 ]
  %7916 = fcmp fast ogt float %7345, 0.000000e+00
  br i1 %7916, label %7917, label %8081, !dx.controlflow.hints !118

; <label>:7917                                    ; preds = %7914
  %7918 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7919 = extractvalue %dx.types.CBufRet.f32 %7918, 1
  %7920 = fadd fast float %7919, %7234
  %7921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7922 = extractvalue %dx.types.CBufRet.f32 %7921, 2
  %7923 = extractvalue %dx.types.CBufRet.f32 %7921, 3
  %7924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7925 = extractvalue %dx.types.CBufRet.f32 %7924, 1
  %7926 = call float @dx.op.binary.f32(i32 35, float %7920, float 0.000000e+00)  ; FMax(a,b)
  %7927 = fadd fast float %7926, 0x3F10000000000000
  %7928 = fcmp fast oeq float %7925, 0.000000e+00
  br i1 %7928, label %7929, label %7996

; <label>:7929                                    ; preds = %7917
  %7930 = extractvalue %dx.types.CBufRet.f32 %7921, 1
  %7931 = extractvalue %dx.types.CBufRet.f32 %7921, 0
  %7932 = fmul fast float %7931, %7241
  %7933 = fmul fast float %7930, %7242
  %7934 = fadd fast float %7932, 5.000000e-01
  %7935 = call float @dx.op.unary.f32(i32 27, float %7934)  ; Round_ni(value)
  %7936 = fadd fast float %7933, 5.000000e-01
  %7937 = call float @dx.op.unary.f32(i32 27, float %7936)  ; Round_ni(value)
  %7938 = fsub fast float %7934, %7935
  %7939 = fsub fast float %7936, %7937
  %7940 = fadd fast float %7935, -5.000000e-01
  %7941 = fadd fast float %7937, -5.000000e-01
  %7942 = fmul fast float %7938, 2.000000e+00
  %7943 = fsub fast float 3.000000e+00, %7942
  %7944 = fadd fast float %7942, 1.000000e+00
  %7945 = fsub fast float 2.000000e+00, %7938
  %7946 = bitcast float %7943 to i32
  %7947 = sub nsw i32 2129859010, %7946
  %7948 = bitcast i32 %7947 to float
  %7949 = fmul fast float %7948, %7945
  %7950 = fadd fast float %7949, -1.000000e+00
  %7951 = bitcast float %7944 to i32
  %7952 = sub nsw i32 2129859010, %7951
  %7953 = bitcast i32 %7952 to float
  %7954 = fmul fast float %7953, %7938
  %7955 = fadd fast float %7954, 1.000000e+00
  %7956 = fmul fast float %7939, 2.000000e+00
  %7957 = fsub fast float 3.000000e+00, %7956
  %7958 = fadd fast float %7956, 1.000000e+00
  %7959 = fsub fast float 2.000000e+00, %7939
  %7960 = bitcast float %7957 to i32
  %7961 = sub nsw i32 2129859010, %7960
  %7962 = bitcast i32 %7961 to float
  %7963 = fmul fast float %7962, %7959
  %7964 = fadd fast float %7963, -1.000000e+00
  %7965 = bitcast float %7958 to i32
  %7966 = sub nsw i32 2129859010, %7965
  %7967 = bitcast i32 %7966 to float
  %7968 = fmul fast float %7967, %7939
  %7969 = fadd fast float %7968, 1.000000e+00
  %7970 = fadd fast float %7950, %7940
  %7971 = fmul fast float %7970, %7922
  %7972 = fadd fast float %7964, %7941
  %7973 = fmul fast float %7972, %7923
  %7974 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %48, float %7971, float %7973, float undef, float undef, i32 0, i32 0, i32 undef, float %7927)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7975 = extractvalue %dx.types.ResRet.f32 %7974, 0
  %7976 = fmul fast float %7975, %7943
  %7977 = fadd fast float %7955, %7940
  %7978 = fmul fast float %7977, %7922
  %7979 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %48, float %7978, float %7973, float undef, float undef, i32 0, i32 0, i32 undef, float %7927)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7980 = extractvalue %dx.types.ResRet.f32 %7979, 0
  %7981 = fmul fast float %7980, %7944
  %7982 = fadd fast float %7969, %7941
  %7983 = fmul fast float %7982, %7923
  %7984 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %48, float %7971, float %7983, float undef, float undef, i32 0, i32 0, i32 undef, float %7927)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7985 = extractvalue %dx.types.ResRet.f32 %7984, 0
  %7986 = fmul fast float %7985, %7943
  %7987 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %48, float %7978, float %7983, float undef, float undef, i32 0, i32 0, i32 undef, float %7927)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7988 = extractvalue %dx.types.ResRet.f32 %7987, 0
  %7989 = fmul fast float %7988, %7944
  %7990 = fadd fast float %7989, %7986
  %7991 = fmul fast float %7990, %7958
  %7992 = fadd fast float %7981, %7976
  %7993 = fmul fast float %7992, %7957
  %7994 = fadd fast float %7993, %7991
  %7995 = fmul fast float %7994, 6.250000e-02
  br label %8081

; <label>:7996                                    ; preds = %7917
  %7997 = fmul fast float %239, 0x401921FB60000000
  %7998 = call float @dx.op.unary.f32(i32 13, float %7997)  ; Sin(value)
  %7999 = call float @dx.op.unary.f32(i32 12, float %7997)  ; Cos(value)
  %8000 = fsub fast float -0.000000e+00, %7998
  br label %8001

; <label>:8001                                    ; preds = %8050, %7996
  %8002 = phi float [ 0.000000e+00, %7996 ], [ %8045, %8050 ]
  %8003 = phi float [ 0.000000e+00, %7996 ], [ %8047, %8050 ]
  %8004 = phi i32 [ 0, %7996 ], [ %8051, %8050 ]
  %8005 = mul i32 %8004, 2
  %8006 = add i32 0, %8005
  %8007 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8006
  %8008 = load float, float* %8007, align 4
  %8009 = mul i32 %8004, 2
  %8010 = add i32 1, %8009
  %8011 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8010
  %8012 = load float, float* %8011, align 4
  %8013 = fmul fast float %8008, %7999
  %8014 = call float @dx.op.tertiary.f32(i32 46, float %8012, float %8000, float %8013)  ; FMad(a,b,c)
  %8015 = fmul fast float %8008, %7998
  %8016 = call float @dx.op.tertiary.f32(i32 46, float %8012, float %7999, float %8015)  ; FMad(a,b,c)
  %8017 = fmul fast float %8014, %7925
  %8018 = fmul fast float %8016, %7925
  %8019 = fadd fast float %8017, %7241
  %8020 = fadd fast float %8018, %7242
  %8021 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %47, float %8019, float %8020, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8022 = extractvalue %dx.types.ResRet.f32 %8021, 0
  %8023 = extractvalue %dx.types.ResRet.f32 %8021, 1
  %8024 = extractvalue %dx.types.ResRet.f32 %8021, 2
  %8025 = extractvalue %dx.types.ResRet.f32 %8021, 3
  %8026 = getelementptr inbounds [4 x float], [4 x float]* %96, i32 0, i32 0
  store float %8022, float* %8026, align 4
  %8027 = getelementptr inbounds [4 x float], [4 x float]* %96, i32 0, i32 1
  store float %8023, float* %8027, align 4
  %8028 = getelementptr inbounds [4 x float], [4 x float]* %96, i32 0, i32 2
  store float %8024, float* %8028, align 4
  %8029 = getelementptr inbounds [4 x float], [4 x float]* %96, i32 0, i32 3
  store float %8025, float* %8029, align 4
  %8030 = fsub fast float %8022, %7927
  %8031 = fcmp fast olt float %8030, 0.000000e+00
  %8032 = select i1 %8031, float 0.000000e+00, float 1.000000e+00
  %8033 = fadd fast float %8032, %8002
  %8034 = fmul fast float %8032, %8030
  %8035 = fadd fast float %8034, %8003
  br label %8036

; <label>:8036                                    ; preds = %8036, %8001
  %8037 = phi i32 [ 1, %8001 ], [ %8048, %8036 ]
  %8038 = phi float [ %8035, %8001 ], [ %8047, %8036 ]
  %8039 = phi float [ %8033, %8001 ], [ %8045, %8036 ]
  %8040 = getelementptr [4 x float], [4 x float]* %96, i32 0, i32 %8037
  %8041 = load float, float* %8040, align 4, !tbaa !90, !noalias !106
  %8042 = fsub fast float %8041, %7927
  %8043 = fcmp fast olt float %8042, 0.000000e+00
  %8044 = select i1 %8043, float 0.000000e+00, float 1.000000e+00
  %8045 = fadd fast float %8044, %8039
  %8046 = fmul fast float %8044, %8042
  %8047 = fadd fast float %8046, %8038
  %8048 = add nuw nsw i32 %8037, 1
  %8049 = icmp eq i32 %8048, 4
  br i1 %8049, label %8050, label %8036, !llvm.loop !116

; <label>:8050                                    ; preds = %8036
  %8051 = add nuw nsw i32 %8004, 1
  %8052 = icmp eq i32 %8051, 8
  br i1 %8052, label %8053, label %8001, !llvm.loop !117

; <label>:8053                                    ; preds = %8050
  %8054 = fdiv fast float 1.000000e+00, %8045
  %8055 = fmul fast float %8054, %8047
  %8056 = fdiv fast float 1.000000e+00, %7927
  %8057 = fmul fast float %8055, %8056
  %8058 = call float @dx.op.unary.f32(i32 7, float %8057)  ; Saturate(value)
  %8059 = call float @dx.op.binary.f32(i32 35, float %8058, float 0.000000e+00)  ; FMax(a,b)
  %8060 = fmul fast float %8045, 3.125000e-02
  %8061 = call float @dx.op.unary.f32(i32 7, float %8060)  ; Saturate(value)
  %8062 = fmul fast float %8061, 2.000000e+00
  %8063 = fadd fast float %8062, -1.000000e+00
  %8064 = fcmp fast ogt float %8063, 0.000000e+00
  %8065 = fcmp fast olt float %8063, 0.000000e+00
  %8066 = zext i1 %8064 to i32
  %8067 = zext i1 %8065 to i32
  %8068 = sub nsw i32 %8066, %8067
  %8069 = sitofp i32 %8068 to float
  %8070 = fmul fast float %8069, %8063
  %8071 = fsub fast float 1.000000e+00, %8070
  %8072 = fmul fast float %8071, %8071
  %8073 = fmul fast float %8072, %8071
  %8074 = fsub fast float %8071, %8073
  %8075 = fmul fast float %8074, %8059
  %8076 = fsub fast float 1.000000e+00, %8073
  %8077 = fsub fast float %8076, %8075
  %8078 = fmul fast float %8069, 5.000000e-01
  %8079 = fmul fast float %8078, %8077
  %8080 = fsub fast float 5.000000e-01, %8079
  br label %8081

; <label>:8081                                    ; preds = %8053, %7929, %7914
  %8082 = phi float [ 1.000000e+00, %7914 ], [ %7995, %7929 ], [ %8080, %8053 ]
  %8083 = fcmp fast ogt float %7344, 0.000000e+00
  br i1 %8083, label %8084, label %8248, !dx.controlflow.hints !119

; <label>:8084                                    ; preds = %8081
  %8085 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %8086 = extractvalue %dx.types.CBufRet.f32 %8085, 0
  %8087 = fadd fast float %8086, %7234
  %8088 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %8089 = extractvalue %dx.types.CBufRet.f32 %8088, 2
  %8090 = extractvalue %dx.types.CBufRet.f32 %8088, 3
  %8091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %8092 = extractvalue %dx.types.CBufRet.f32 %8091, 0
  %8093 = call float @dx.op.binary.f32(i32 35, float %8087, float 0.000000e+00)  ; FMax(a,b)
  %8094 = fadd fast float %8093, 0x3F10000000000000
  %8095 = fcmp fast oeq float %8092, 0.000000e+00
  br i1 %8095, label %8096, label %8163

; <label>:8096                                    ; preds = %8084
  %8097 = extractvalue %dx.types.CBufRet.f32 %8088, 1
  %8098 = extractvalue %dx.types.CBufRet.f32 %8088, 0
  %8099 = fmul fast float %8098, %7226
  %8100 = fmul fast float %8097, %7230
  %8101 = fadd fast float %8099, 5.000000e-01
  %8102 = call float @dx.op.unary.f32(i32 27, float %8101)  ; Round_ni(value)
  %8103 = fadd fast float %8100, 5.000000e-01
  %8104 = call float @dx.op.unary.f32(i32 27, float %8103)  ; Round_ni(value)
  %8105 = fsub fast float %8101, %8102
  %8106 = fsub fast float %8103, %8104
  %8107 = fadd fast float %8102, -5.000000e-01
  %8108 = fadd fast float %8104, -5.000000e-01
  %8109 = fmul fast float %8105, 2.000000e+00
  %8110 = fsub fast float 3.000000e+00, %8109
  %8111 = fadd fast float %8109, 1.000000e+00
  %8112 = fsub fast float 2.000000e+00, %8105
  %8113 = bitcast float %8110 to i32
  %8114 = sub nsw i32 2129859010, %8113
  %8115 = bitcast i32 %8114 to float
  %8116 = fmul fast float %8115, %8112
  %8117 = fadd fast float %8116, -1.000000e+00
  %8118 = bitcast float %8111 to i32
  %8119 = sub nsw i32 2129859010, %8118
  %8120 = bitcast i32 %8119 to float
  %8121 = fmul fast float %8120, %8105
  %8122 = fadd fast float %8121, 1.000000e+00
  %8123 = fmul fast float %8106, 2.000000e+00
  %8124 = fsub fast float 3.000000e+00, %8123
  %8125 = fadd fast float %8123, 1.000000e+00
  %8126 = fsub fast float 2.000000e+00, %8106
  %8127 = bitcast float %8124 to i32
  %8128 = sub nsw i32 2129859010, %8127
  %8129 = bitcast i32 %8128 to float
  %8130 = fmul fast float %8129, %8126
  %8131 = fadd fast float %8130, -1.000000e+00
  %8132 = bitcast float %8125 to i32
  %8133 = sub nsw i32 2129859010, %8132
  %8134 = bitcast i32 %8133 to float
  %8135 = fmul fast float %8134, %8106
  %8136 = fadd fast float %8135, 1.000000e+00
  %8137 = fadd fast float %8117, %8107
  %8138 = fmul fast float %8137, %8089
  %8139 = fadd fast float %8131, %8108
  %8140 = fmul fast float %8139, %8090
  %8141 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %48, float %8138, float %8140, float undef, float undef, i32 0, i32 0, i32 undef, float %8094)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %8142 = extractvalue %dx.types.ResRet.f32 %8141, 0
  %8143 = fmul fast float %8142, %8110
  %8144 = fadd fast float %8122, %8107
  %8145 = fmul fast float %8144, %8089
  %8146 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %48, float %8145, float %8140, float undef, float undef, i32 0, i32 0, i32 undef, float %8094)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %8147 = extractvalue %dx.types.ResRet.f32 %8146, 0
  %8148 = fmul fast float %8147, %8111
  %8149 = fadd fast float %8136, %8108
  %8150 = fmul fast float %8149, %8090
  %8151 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %48, float %8138, float %8150, float undef, float undef, i32 0, i32 0, i32 undef, float %8094)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %8152 = extractvalue %dx.types.ResRet.f32 %8151, 0
  %8153 = fmul fast float %8152, %8110
  %8154 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %48, float %8145, float %8150, float undef, float undef, i32 0, i32 0, i32 undef, float %8094)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %8155 = extractvalue %dx.types.ResRet.f32 %8154, 0
  %8156 = fmul fast float %8155, %8111
  %8157 = fadd fast float %8156, %8153
  %8158 = fmul fast float %8157, %8125
  %8159 = fadd fast float %8148, %8143
  %8160 = fmul fast float %8159, %8124
  %8161 = fadd fast float %8160, %8158
  %8162 = fmul fast float %8161, 6.250000e-02
  br label %8248

; <label>:8163                                    ; preds = %8084
  %8164 = fmul fast float %239, 0x401921FB60000000
  %8165 = call float @dx.op.unary.f32(i32 13, float %8164)  ; Sin(value)
  %8166 = call float @dx.op.unary.f32(i32 12, float %8164)  ; Cos(value)
  %8167 = fsub fast float -0.000000e+00, %8165
  br label %8168

; <label>:8168                                    ; preds = %8217, %8163
  %8169 = phi float [ 0.000000e+00, %8163 ], [ %8212, %8217 ]
  %8170 = phi float [ 0.000000e+00, %8163 ], [ %8214, %8217 ]
  %8171 = phi i32 [ 0, %8163 ], [ %8218, %8217 ]
  %8172 = mul i32 %8171, 2
  %8173 = add i32 0, %8172
  %8174 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8173
  %8175 = load float, float* %8174, align 4
  %8176 = mul i32 %8171, 2
  %8177 = add i32 1, %8176
  %8178 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8177
  %8179 = load float, float* %8178, align 4
  %8180 = fmul fast float %8175, %8166
  %8181 = call float @dx.op.tertiary.f32(i32 46, float %8179, float %8167, float %8180)  ; FMad(a,b,c)
  %8182 = fmul fast float %8175, %8165
  %8183 = call float @dx.op.tertiary.f32(i32 46, float %8179, float %8166, float %8182)  ; FMad(a,b,c)
  %8184 = fmul fast float %8181, %8092
  %8185 = fmul fast float %8183, %8092
  %8186 = fadd fast float %8184, %7226
  %8187 = fadd fast float %8185, %7230
  %8188 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %47, float %8186, float %8187, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8189 = extractvalue %dx.types.ResRet.f32 %8188, 0
  %8190 = extractvalue %dx.types.ResRet.f32 %8188, 1
  %8191 = extractvalue %dx.types.ResRet.f32 %8188, 2
  %8192 = extractvalue %dx.types.ResRet.f32 %8188, 3
  %8193 = getelementptr inbounds [4 x float], [4 x float]* %95, i32 0, i32 0
  store float %8189, float* %8193, align 4
  %8194 = getelementptr inbounds [4 x float], [4 x float]* %95, i32 0, i32 1
  store float %8190, float* %8194, align 4
  %8195 = getelementptr inbounds [4 x float], [4 x float]* %95, i32 0, i32 2
  store float %8191, float* %8195, align 4
  %8196 = getelementptr inbounds [4 x float], [4 x float]* %95, i32 0, i32 3
  store float %8192, float* %8196, align 4
  %8197 = fsub fast float %8189, %8094
  %8198 = fcmp fast olt float %8197, 0.000000e+00
  %8199 = select i1 %8198, float 0.000000e+00, float 1.000000e+00
  %8200 = fadd fast float %8199, %8169
  %8201 = fmul fast float %8199, %8197
  %8202 = fadd fast float %8201, %8170
  br label %8203

; <label>:8203                                    ; preds = %8203, %8168
  %8204 = phi i32 [ 1, %8168 ], [ %8215, %8203 ]
  %8205 = phi float [ %8202, %8168 ], [ %8214, %8203 ]
  %8206 = phi float [ %8200, %8168 ], [ %8212, %8203 ]
  %8207 = getelementptr [4 x float], [4 x float]* %95, i32 0, i32 %8204
  %8208 = load float, float* %8207, align 4, !tbaa !90, !noalias !106
  %8209 = fsub fast float %8208, %8094
  %8210 = fcmp fast olt float %8209, 0.000000e+00
  %8211 = select i1 %8210, float 0.000000e+00, float 1.000000e+00
  %8212 = fadd fast float %8211, %8206
  %8213 = fmul fast float %8211, %8209
  %8214 = fadd fast float %8213, %8205
  %8215 = add nuw nsw i32 %8204, 1
  %8216 = icmp eq i32 %8215, 4
  br i1 %8216, label %8217, label %8203, !llvm.loop !116

; <label>:8217                                    ; preds = %8203
  %8218 = add nuw nsw i32 %8171, 1
  %8219 = icmp eq i32 %8218, 8
  br i1 %8219, label %8220, label %8168, !llvm.loop !117

; <label>:8220                                    ; preds = %8217
  %8221 = fdiv fast float 1.000000e+00, %8212
  %8222 = fmul fast float %8221, %8214
  %8223 = fdiv fast float 1.000000e+00, %8094
  %8224 = fmul fast float %8222, %8223
  %8225 = call float @dx.op.unary.f32(i32 7, float %8224)  ; Saturate(value)
  %8226 = call float @dx.op.binary.f32(i32 35, float %8225, float 0.000000e+00)  ; FMax(a,b)
  %8227 = fmul fast float %8212, 3.125000e-02
  %8228 = call float @dx.op.unary.f32(i32 7, float %8227)  ; Saturate(value)
  %8229 = fmul fast float %8228, 2.000000e+00
  %8230 = fadd fast float %8229, -1.000000e+00
  %8231 = fcmp fast ogt float %8230, 0.000000e+00
  %8232 = fcmp fast olt float %8230, 0.000000e+00
  %8233 = zext i1 %8231 to i32
  %8234 = zext i1 %8232 to i32
  %8235 = sub nsw i32 %8233, %8234
  %8236 = sitofp i32 %8235 to float
  %8237 = fmul fast float %8236, %8230
  %8238 = fsub fast float 1.000000e+00, %8237
  %8239 = fmul fast float %8238, %8238
  %8240 = fmul fast float %8239, %8238
  %8241 = fsub fast float %8238, %8240
  %8242 = fmul fast float %8241, %8226
  %8243 = fsub fast float 1.000000e+00, %8240
  %8244 = fsub fast float %8243, %8242
  %8245 = fmul fast float %8236, 5.000000e-01
  %8246 = fmul fast float %8245, %8244
  %8247 = fsub fast float 5.000000e-01, %8246
  br label %8248

; <label>:8248                                    ; preds = %8220, %8096, %8081
  %8249 = phi float [ 1.000000e+00, %8081 ], [ %8162, %8096 ], [ %8247, %8220 ]
  %8250 = fsub fast float %7915, %7750
  %8251 = fmul fast float %8250, %7288
  %8252 = fadd fast float %8251, %7750
  %8253 = fsub fast float %8082, %8252
  %8254 = fmul fast float %8253, %7318
  %8255 = fadd fast float %8254, %8252
  %8256 = fsub fast float %8249, %8255
  %8257 = fmul fast float %8256, %7344
  %8258 = fadd fast float %8257, %8255
  %8259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %8260 = extractvalue %dx.types.CBufRet.f32 %8259, 2
  %8261 = fcmp fast ogt float %8260, 0.000000e+00
  br i1 %8261, label %8262, label %8302, !dx.controlflow.hints !120

; <label>:8262                                    ; preds = %8248
  %8263 = fcmp fast ugt float %8260, 0.000000e+00
  br i1 %8263, label %8264, label %8299

; <label>:8264                                    ; preds = %8262
  %8265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %8266 = extractvalue %dx.types.CBufRet.f32 %8265, 0
  %8267 = extractvalue %dx.types.CBufRet.f32 %8265, 1
  %8268 = extractvalue %dx.types.CBufRet.f32 %8265, 2
  %8269 = extractvalue %dx.types.CBufRet.f32 %8265, 3
  %8270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %8271 = extractvalue %dx.types.CBufRet.f32 %8270, 0
  %8272 = extractvalue %dx.types.CBufRet.f32 %8270, 1
  %8273 = extractvalue %dx.types.CBufRet.f32 %8270, 2
  %8274 = extractvalue %dx.types.CBufRet.f32 %8270, 3
  %8275 = extractvalue %dx.types.CBufRet.f32 %8259, 0
  %8276 = extractvalue %dx.types.CBufRet.f32 %8259, 1
  %8277 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %8278 = extractvalue %dx.types.CBufRet.f32 %8277, 0
  %8279 = extractvalue %dx.types.CBufRet.f32 %8277, 1
  %8280 = extractvalue %dx.types.CBufRet.f32 %8277, 2
  %8281 = fadd fast float %8278, %7203
  %8282 = fadd fast float %8279, %7204
  %8283 = fadd fast float %8280, %7205
  %8284 = fmul fast float %8281, %8266
  %8285 = call float @dx.op.tertiary.f32(i32 46, float %8267, float %8282, float %8284)  ; FMad(a,b,c)
  %8286 = call float @dx.op.tertiary.f32(i32 46, float %8268, float %8283, float %8285)  ; FMad(a,b,c)
  %8287 = fadd fast float %8286, %8269
  %8288 = fmul fast float %8281, %8271
  %8289 = call float @dx.op.tertiary.f32(i32 46, float %8272, float %8282, float %8288)  ; FMad(a,b,c)
  %8290 = call float @dx.op.tertiary.f32(i32 46, float %8273, float %8283, float %8289)  ; FMad(a,b,c)
  %8291 = fadd fast float %8290, %8274
  %8292 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %43, float %8287, float %8291, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %8293 = extractvalue %dx.types.ResRet.f32 %8292, 0
  %8294 = fmul fast float %8293, %8276
  %8295 = fadd fast float %8294, %8275
  %8296 = call float @dx.op.unary.f32(i32 7, float %8295)  ; Saturate(value)
  %8297 = fmul fast float %8296, %8260
  %8298 = fsub fast float 1.000000e+00, %8297
  br label %8299

; <label>:8299                                    ; preds = %8264, %8262
  %8300 = phi float [ %8298, %8264 ], [ 1.000000e+00, %8262 ]
  %8301 = fmul fast float %8300, %8258
  br label %8302

; <label>:8302                                    ; preds = %8299, %8248, %7183
  %8303 = phi float [ 1.000000e+00, %7183 ], [ %8301, %8299 ], [ %8258, %8248 ]
  %8304 = call float @dx.op.binary.f32(i32 36, float %8303, float %8303)  ; FMin(a,b)
  %8305 = call float @dx.op.binary.f32(i32 36, float %8303, float %8304)  ; FMin(a,b)
  %8306 = fcmp fast ogt float %8305, 0.000000e+00
  br i1 %8306, label %8307, label %8473, !dx.controlflow.hints !121

; <label>:8307                                    ; preds = %8302
  %8308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %8309 = extractvalue %dx.types.CBufRet.f32 %8308, 0
  %8310 = extractvalue %dx.types.CBufRet.f32 %8308, 1
  %8311 = extractvalue %dx.types.CBufRet.f32 %8308, 2
  %8312 = extractvalue %dx.types.CBufRet.f32 %8308, 3
  %8313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %8314 = extractvalue %dx.types.CBufRet.f32 %8313, 0
  %8315 = extractvalue %dx.types.CBufRet.f32 %8313, 1
  %8316 = extractvalue %dx.types.CBufRet.f32 %8313, 2
  %8317 = extractvalue %dx.types.CBufRet.f32 %8313, 3
  %8318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %8319 = extractvalue %dx.types.CBufRet.f32 %8318, 0
  %8320 = extractvalue %dx.types.CBufRet.f32 %8318, 1
  %8321 = extractvalue %dx.types.CBufRet.f32 %8318, 2
  %8322 = extractvalue %dx.types.CBufRet.f32 %8318, 3
  %8323 = fmul fast float %8309, %7203
  %8324 = call float @dx.op.tertiary.f32(i32 46, float %7204, float %8310, float %8323)  ; FMad(a,b,c)
  %8325 = call float @dx.op.tertiary.f32(i32 46, float %7205, float %8311, float %8324)  ; FMad(a,b,c)
  %8326 = fadd fast float %8325, %8312
  %8327 = fmul fast float %8314, %7203
  %8328 = call float @dx.op.tertiary.f32(i32 46, float %7204, float %8315, float %8327)  ; FMad(a,b,c)
  %8329 = call float @dx.op.tertiary.f32(i32 46, float %7205, float %8316, float %8328)  ; FMad(a,b,c)
  %8330 = fadd fast float %8329, %8317
  %8331 = fmul fast float %8319, %7203
  %8332 = call float @dx.op.tertiary.f32(i32 46, float %7204, float %8320, float %8331)  ; FMad(a,b,c)
  %8333 = call float @dx.op.tertiary.f32(i32 46, float %7205, float %8321, float %8332)  ; FMad(a,b,c)
  %8334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %8335 = extractvalue %dx.types.CBufRet.f32 %8334, 0
  %8336 = extractvalue %dx.types.CBufRet.f32 %8334, 1
  %8337 = extractvalue %dx.types.CBufRet.f32 %8334, 3
  %8338 = fmul fast float %8337, %8326
  %8339 = fmul fast float %8337, %8330
  %8340 = fadd fast float %8338, %8335
  %8341 = fadd fast float %8339, %8336
  %8342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %8343 = extractvalue %dx.types.CBufRet.f32 %8342, 0
  %8344 = extractvalue %dx.types.CBufRet.f32 %8342, 1
  %8345 = fsub fast float %8340, %8343
  %8346 = fsub fast float %8341, %8344
  %8347 = fcmp fast olt float %8345, 0.000000e+00
  %8348 = fcmp fast olt float %8346, 0.000000e+00
  %8349 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %8350 = extractvalue %dx.types.CBufRet.f32 %8349, 0
  %8351 = extractvalue %dx.types.CBufRet.f32 %8349, 1
  %8352 = extractvalue %dx.types.CBufRet.f32 %8349, 2
  %8353 = extractvalue %dx.types.CBufRet.f32 %8349, 3
  %8354 = select i1 %8347, float %8350, float %8352
  %8355 = select i1 %8348, float %8351, float %8353
  %8356 = fmul fast float %8354, %8345
  %8357 = fmul fast float %8355, %8346
  %8358 = call float @dx.op.unary.f32(i32 6, float %8356)  ; FAbs(value)
  %8359 = call float @dx.op.unary.f32(i32 6, float %8357)  ; FAbs(value)
  %8360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %8361 = extractvalue %dx.types.CBufRet.f32 %8360, 0
  %8362 = call float @dx.op.binary.f32(i32 35, float %8358, float %8359)  ; FMax(a,b)
  %8363 = fsub fast float %8361, %8362
  %8364 = call float @dx.op.unary.f32(i32 7, float %8363)  ; Saturate(value)
  %8365 = fcmp fast ogt float %8364, 0.000000e+00
  br i1 %8365, label %8366, label %8407, !dx.controlflow.hints !122

; <label>:8366                                    ; preds = %8307
  %8367 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %46, float %8340, float %8341, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8368 = extractvalue %dx.types.ResRet.f32 %8367, 1
  %8369 = fcmp fast ogt float %8368, 0.000000e+00
  br i1 %8369, label %8370, label %8402

; <label>:8370                                    ; preds = %8366
  %8371 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %46, float %8340, float %8341, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8372 = extractvalue %dx.types.ResRet.f32 %8371, 0
  %8373 = extractvalue %dx.types.ResRet.f32 %8371, 1
  %8374 = extractvalue %dx.types.ResRet.f32 %8371, 2
  %8375 = extractvalue %dx.types.ResRet.f32 %8371, 3
  %8376 = fsub fast float 1.000000e+00, %8322
  %8377 = fsub fast float %8376, %8333
  %8378 = fmul fast float %8377, 0x400921FB60000000
  %8379 = fadd fast float %8378, 0x3FF921FB60000000
  %8380 = call float @dx.op.unary.f32(i32 13, float %8379)  ; Sin(value)
  %8381 = fadd fast float %8380, -1.000000e+00
  %8382 = fmul fast float %8381, 0x3FD45F3060000000
  %8383 = fmul fast float %8377, 0x401921FB60000000
  %8384 = fadd fast float %8383, 0x400921FB60000000
  %8385 = call float @dx.op.unary.f32(i32 13, float %8384)  ; Sin(value)
  %8386 = fadd fast float %8385, 0x3E7777A5C0000000
  %8387 = fmul fast float %8386, 0x3FC45F3060000000
  %8388 = fmul fast float %8377, 0x4022D97C80000000
  %8389 = fadd fast float %8388, 0x4012D97C80000000
  %8390 = call float @dx.op.unary.f32(i32 13, float %8389)  ; Sin(value)
  %8391 = fadd fast float %8390, 1.000000e+00
  %8392 = fmul fast float %8391, 0x3FBB2995E0000000
  %8393 = fmul fast float %8377, 0x402921FB60000000
  %8394 = fadd fast float %8393, 0x401921FB60000000
  %8395 = call float @dx.op.unary.f32(i32 13, float %8394)  ; Sin(value)
  %8396 = fadd fast float %8395, 0xBE8777A5C0000000
  %8397 = fmul fast float %8396, 0x3FB45F3060000000
  %8398 = call float @dx.op.dot4.f32(i32 56, float %8372, float %8373, float %8374, float %8375, float %8382, float %8387, float %8392, float %8397)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %8399 = fmul fast float %8398, 0xBFF7154760000000
  %8400 = call float @dx.op.unary.f32(i32 21, float %8399)  ; Exp(value)
  %8401 = call float @dx.op.unary.f32(i32 7, float %8400)  ; Saturate(value)
  br label %8402

; <label>:8402                                    ; preds = %8370, %8366
  %8403 = phi float [ %8401, %8370 ], [ 1.000000e+00, %8366 ]
  %8404 = fadd fast float %8403, -1.000000e+00
  %8405 = fmul fast float %8404, %8364
  %8406 = fadd fast float %8405, 1.000000e+00
  br label %8407

; <label>:8407                                    ; preds = %8402, %8307
  %8408 = phi float [ %8406, %8402 ], [ 1.000000e+00, %8307 ]
  %8409 = fmul fast float %8408, %8303
  %8410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %8411 = extractvalue %dx.types.CBufRet.f32 %8410, 0
  %8412 = extractvalue %dx.types.CBufRet.f32 %8410, 1
  %8413 = extractvalue %dx.types.CBufRet.f32 %8410, 2
  %8414 = fadd fast float %8411, %167
  %8415 = fadd fast float %8412, %168
  %8416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %8417 = extractvalue %dx.types.CBufRet.f32 %8416, 1
  %8418 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %8419 = extractvalue %dx.types.CBufRet.f32 %8418, 0
  %8420 = extractvalue %dx.types.CBufRet.f32 %8418, 1
  %8421 = extractvalue %dx.types.CBufRet.f32 %8418, 2
  %8422 = fsub fast float -0.000000e+00, %8414
  %8423 = fsub fast float -0.000000e+00, %8415
  %8424 = fsub fast float -0.000000e+00, %169
  %8425 = fsub fast float %8424, %8413
  %8426 = fadd fast float %8425, %8417
  %8427 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8422, float %8423, float %8426)  ; Dot3(ax,ay,az,bx,by,bz)
  %8428 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8419, float %8420, float %8421)  ; Dot3(ax,ay,az,bx,by,bz)
  %8429 = fdiv fast float 1.000000e+00, %8428
  %8430 = fmul fast float %8429, %8427
  %8431 = fmul fast float %8419, %8430
  %8432 = fmul fast float %8420, %8430
  %8433 = fadd fast float %8431, %8414
  %8434 = fadd fast float %8432, %8415
  %8435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %8436 = extractvalue %dx.types.CBufRet.f32 %8435, 0
  %8437 = extractvalue %dx.types.CBufRet.f32 %8435, 1
  %8438 = fsub fast float %8433, %8436
  %8439 = fsub fast float %8434, %8437
  %8440 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %8441 = extractvalue %dx.types.CBufRet.f32 %8440, 2
  %8442 = extractvalue %dx.types.CBufRet.f32 %8440, 3
  %8443 = fmul fast float %8438, %8441
  %8444 = fmul fast float %8439, %8442
  %8445 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %8446 = extractvalue %dx.types.CBufRet.i32 %8445, 3
  %8447 = icmp eq i32 %8446, 0
  br i1 %8447, label %8453, label %8448

; <label>:8448                                    ; preds = %8407
  %8449 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %45, float %8443, float %8444, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8450 = extractvalue %dx.types.ResRet.f32 %8449, 0
  %8451 = extractvalue %dx.types.ResRet.f32 %8449, 1
  %8452 = extractvalue %dx.types.ResRet.f32 %8449, 2
  br label %8458

; <label>:8453                                    ; preds = %8407
  %8454 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %46, float %8443, float %8444, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8455 = extractvalue %dx.types.ResRet.f32 %8454, 0
  %8456 = extractvalue %dx.types.ResRet.f32 %8454, 1
  %8457 = extractvalue %dx.types.ResRet.f32 %8454, 2
  br label %8458

; <label>:8458                                    ; preds = %8453, %8448
  %8459 = phi float [ %8450, %8448 ], [ %8455, %8453 ]
  %8460 = phi float [ %8451, %8448 ], [ %8456, %8453 ]
  %8461 = phi float [ %8452, %8448 ], [ %8457, %8453 ]
  %8462 = extractvalue %dx.types.CBufRet.f32 %8416, 2
  %8463 = fmul fast float %8462, %8459
  %8464 = extractvalue %dx.types.CBufRet.f32 %8416, 0
  %8465 = fsub fast float %8430, %8464
  %8466 = fsub fast float %8465, %8463
  %8467 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8466)  ; FMax(a,b)
  %8468 = fmul fast float %8467, %8460
  %8469 = call float @dx.op.binary.f32(i32 36, float %8461, float %8468)  ; FMin(a,b)
  %8470 = fmul fast float %8469, 0xBFF7154760000000
  %8471 = call float @dx.op.unary.f32(i32 21, float %8470)  ; Exp(value)
  %8472 = fmul fast float %8409, %8471
  br label %8473

; <label>:8473                                    ; preds = %8458, %8302
  %8474 = phi float [ %8472, %8458 ], [ %8303, %8302 ]
  %8475 = call float @dx.op.binary.f32(i32 36, float %8474, float %8474)  ; FMin(a,b)
  %8476 = call float @dx.op.binary.f32(i32 36, float %8474, float %8475)  ; FMin(a,b)
  %8477 = fcmp fast ogt float %8476, 0.000000e+00
  br i1 %8477, label %8478, label %8649, !dx.controlflow.hints !123

; <label>:8478                                    ; preds = %8473
  %8479 = fmul fast float %8474, %7195
  %8480 = fmul fast float %8474, %7196
  %8481 = fmul fast float %8474, %7197
  %8482 = fsub fast float %7184, %6480
  %8483 = fsub fast float %7185, %6479
  %8484 = fsub fast float %7186, %6478
  %8485 = call float @dx.op.dot3.f32(i32 55, float %8482, float %8483, float %8484, float %8482, float %8483, float %8484)  ; Dot3(ax,ay,az,bx,by,bz)
  %8486 = call float @dx.op.unary.f32(i32 25, float %8485)  ; Rsqrt(value)
  %8487 = fmul fast float %8486, %8482
  %8488 = fmul fast float %8486, %8483
  %8489 = fmul fast float %8486, %8484
  %8490 = call float @dx.op.dot3.f32(i32 55, float %7184, float %7185, float %7186, float %6484, float %6485, float %6486)  ; Dot3(ax,ay,az,bx,by,bz)
  %8491 = call float @dx.op.dot3.f32(i32 55, float %6477, float %6476, float %6475, float %8487, float %8488, float %8489)  ; Dot3(ax,ay,az,bx,by,bz)
  %8492 = call float @dx.op.unary.f32(i32 7, float %8490)  ; Saturate(value)
  %8493 = fmul fast float %8492, %8492
  %8494 = fmul fast float %8493, %7179
  %8495 = call float @dx.op.unary.f32(i32 7, float %8494)  ; Saturate(value)
  %8496 = fmul fast float %8495, %8492
  %8497 = call float @dx.op.dot3.f32(i32 55, float %6484, float %6485, float %6486, float %8487, float %8488, float %8489)  ; Dot3(ax,ay,az,bx,by,bz)
  %8498 = fmul fast float %8497, %8497
  %8499 = call float @dx.op.unary.f32(i32 6, float %8490)  ; FAbs(value)
  %8500 = fsub fast float 1.000000e+00, %6512
  %8501 = fmul fast float %6494, %6494
  %8502 = fmul fast float %8501, %8500
  %8503 = fadd fast float %8502, %6512
  %8504 = bitcast float %8503 to i32
  %8505 = ashr i32 %8504, 1
  %8506 = add nsw i32 %8505, 532487669
  %8507 = bitcast i32 %8506 to float
  %8508 = fadd fast float %8507, %6494
  %8509 = fmul fast float %6512, %8498
  %8510 = fsub fast float 1.000000e+00, %8498
  %8511 = fadd fast float %8510, %8509
  %8512 = fmul fast float %8499, %8499
  %8513 = fmul fast float %8512, %8500
  %8514 = fadd fast float %8513, %6512
  %8515 = bitcast float %8514 to i32
  %8516 = ashr i32 %8515, 1
  %8517 = add nsw i32 %8516, 532487669
  %8518 = bitcast i32 %8517 to float
  %8519 = fadd fast float %8518, %8499
  %8520 = fmul fast float %8511, %8511
  %8521 = fmul fast float %8520, %8508
  %8522 = fmul fast float %8521, %8519
  %8523 = fdiv fast float 0x3FF0A00000000000, %8522
  %8524 = fmul fast float %8523, %6512
  %8525 = call float @dx.op.unary.f32(i32 6, float %8491)  ; FAbs(value)
  %8526 = fsub fast float 1.000000e+00, %8525
  %8527 = bitcast float %8526 to i32
  %8528 = sitofp i32 %8527 to float
  %8529 = fmul fast float %8528, 5.000000e+00
  %8530 = fadd fast float %8529, 0xC1EFBF8940000000
  %8531 = fptosi float %8530 to i32
  %8532 = bitcast i32 %8531 to float
  %8533 = fsub fast float 1.000000e+00, %6487
  %8534 = fsub fast float 1.000000e+00, %6488
  %8535 = fsub fast float 1.000000e+00, %6492
  %8536 = fmul fast float %8532, %8533
  %8537 = fmul fast float %8532, %8534
  %8538 = fmul fast float %8532, %8535
  %8539 = fadd fast float %8536, %6487
  %8540 = fadd fast float %8537, %6488
  %8541 = fadd fast float %8538, %6492
  br i1 %6630, label %8542, label %8565

; <label>:8542                                    ; preds = %8478
  %8543 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %46, float %4262, float %8525, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8544 = extractvalue %dx.types.ResRet.f32 %8543, 0
  %8545 = extractvalue %dx.types.ResRet.f32 %8543, 1
  %8546 = extractvalue %dx.types.ResRet.f32 %8543, 2
  %8547 = fadd fast float %8544, -5.000000e-01
  %8548 = fadd fast float %8545, -5.000000e-01
  %8549 = fadd fast float %8546, -5.000000e-01
  %8550 = fmul fast float %6487, 4.000000e+00
  %8551 = fmul fast float %8550, %8533
  %8552 = fmul fast float %8551, %8547
  %8553 = fmul fast float %6488, 4.000000e+00
  %8554 = fmul fast float %8553, %8534
  %8555 = fmul fast float %8554, %8548
  %8556 = fmul fast float %6492, 4.000000e+00
  %8557 = fmul fast float %8556, %8535
  %8558 = fmul fast float %8557, %8549
  %8559 = fadd fast float %8552, %8539
  %8560 = fadd fast float %8555, %8540
  %8561 = fadd fast float %8558, %8541
  %8562 = call float @dx.op.unary.f32(i32 7, float %8559)  ; Saturate(value)
  %8563 = call float @dx.op.unary.f32(i32 7, float %8560)  ; Saturate(value)
  %8564 = call float @dx.op.unary.f32(i32 7, float %8561)  ; Saturate(value)
  br label %8565

; <label>:8565                                    ; preds = %8542, %8478
  %8566 = phi float [ %8562, %8542 ], [ %8539, %8478 ]
  %8567 = phi float [ %8563, %8542 ], [ %8540, %8478 ]
  %8568 = phi float [ %8564, %8542 ], [ %8541, %8478 ]
  %8569 = fmul fast float %8490, 9.843750e-01
  %8570 = fadd fast float %8569, 7.812500e-03
  %8571 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %41, %dx.types.Handle %46, float %8570, float %6620, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8572 = extractvalue %dx.types.ResRet.f32 %8571, 2
  %8573 = extractvalue %dx.types.ResRet.f32 %8571, 3
  %8574 = fmul fast float %8572, %6487
  %8575 = fmul fast float %8572, %6488
  %8576 = fmul fast float %8572, %6492
  %8577 = fadd fast float %8574, %8573
  %8578 = fadd fast float %8575, %8573
  %8579 = fadd fast float %8576, %8573
  br i1 %6630, label %8580, label %8603

; <label>:8580                                    ; preds = %8565
  %8581 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %46, float %4262, float %8490, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8582 = extractvalue %dx.types.ResRet.f32 %8581, 0
  %8583 = extractvalue %dx.types.ResRet.f32 %8581, 1
  %8584 = extractvalue %dx.types.ResRet.f32 %8581, 2
  %8585 = fadd fast float %8582, -5.000000e-01
  %8586 = fadd fast float %8583, -5.000000e-01
  %8587 = fadd fast float %8584, -5.000000e-01
  %8588 = fmul fast float %6487, 4.000000e+00
  %8589 = fmul fast float %8588, %8533
  %8590 = fmul fast float %8589, %8585
  %8591 = fmul fast float %6488, 4.000000e+00
  %8592 = fmul fast float %8591, %8534
  %8593 = fmul fast float %8592, %8586
  %8594 = fmul fast float %6492, 4.000000e+00
  %8595 = fmul fast float %8594, %8535
  %8596 = fmul fast float %8595, %8587
  %8597 = fadd fast float %8590, %8577
  %8598 = fadd fast float %8593, %8578
  %8599 = fadd fast float %8596, %8579
  %8600 = call float @dx.op.unary.f32(i32 7, float %8597)  ; Saturate(value)
  %8601 = call float @dx.op.unary.f32(i32 7, float %8598)  ; Saturate(value)
  %8602 = call float @dx.op.unary.f32(i32 7, float %8599)  ; Saturate(value)
  br label %8603

; <label>:8603                                    ; preds = %8580, %8565
  %8604 = phi float [ %8600, %8580 ], [ %8577, %8565 ]
  %8605 = phi float [ %8601, %8580 ], [ %8578, %8565 ]
  %8606 = phi float [ %8602, %8580 ], [ %8579, %8565 ]
  %8607 = call float @dx.op.binary.f32(i32 35, float %8605, float %8606)  ; FMax(a,b)
  %8608 = call float @dx.op.binary.f32(i32 35, float %8604, float %8607)  ; FMax(a,b)
  %8609 = fsub fast float 1.000000e+00, %8608
  %8610 = fmul fast float %8566, %8524
  %8611 = fmul fast float %8567, %8524
  %8612 = fmul fast float %8568, %8524
  %8613 = fsub fast float 1.000000e+00, %8491
  %8614 = bitcast float %8613 to i32
  %8615 = sitofp i32 %8614 to float
  %8616 = fmul fast float %8615, 5.000000e+00
  %8617 = fadd fast float %8616, 0xC1EFBF8940000000
  %8618 = fptosi float %8617 to i32
  %8619 = bitcast i32 %8618 to float
  %8620 = fmul fast float %8619, %4263
  %8621 = fmul fast float %8609, %8620
  %8622 = fmul fast float %8621, %7144
  %8623 = fmul fast float %8621, %7145
  %8624 = fmul fast float %8621, %7146
  %8625 = fadd fast float %8622, %8610
  %8626 = fadd fast float %8623, %8611
  %8627 = fadd fast float %8624, %8612
  %8628 = fmul fast float %8496, %8479
  %8629 = fmul fast float %8628, %8609
  %8630 = fmul fast float %8496, %8480
  %8631 = fmul fast float %8630, %8609
  %8632 = fmul fast float %8496, %8481
  %8633 = fmul fast float %8632, %8609
  %8634 = fmul fast float %8628, %8625
  %8635 = fmul fast float %8630, %8626
  %8636 = fmul fast float %8632, %8627
  %8637 = fadd fast float %8629, %7128
  %8638 = fmul fast float %8637, %4259
  %8639 = fadd fast float %8631, %7129
  %8640 = fmul fast float %8639, %4259
  %8641 = fadd fast float %8633, %7130
  %8642 = fmul fast float %8641, %4259
  %8643 = fadd fast float %8634, %7171
  %8644 = fmul fast float %8643, %4259
  %8645 = fadd fast float %8635, %7174
  %8646 = fmul fast float %8645, %4259
  %8647 = fadd fast float %8636, %7177
  %8648 = fmul fast float %8647, %4259
  br label %8649

; <label>:8649                                    ; preds = %8603, %8473, %7124
  %8650 = phi float [ %7172, %7124 ], [ %7172, %8473 ], [ %8644, %8603 ]
  %8651 = phi float [ %7175, %7124 ], [ %7175, %8473 ], [ %8646, %8603 ]
  %8652 = phi float [ %7178, %7124 ], [ %7178, %8473 ], [ %8648, %8603 ]
  %8653 = phi float [ %7167, %7124 ], [ %7167, %8473 ], [ %8638, %8603 ]
  %8654 = phi float [ %7168, %7124 ], [ %7168, %8473 ], [ %8640, %8603 ]
  %8655 = phi float [ %7169, %7124 ], [ %7169, %8473 ], [ %8642, %8603 ]
  %8656 = fmul fast float %4259, %4259
  %8657 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8658 = extractvalue %dx.types.CBufRet.f32 %8657, 0
  %8659 = fmul fast float %8658, %7150
  %8660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8661 = extractvalue %dx.types.CBufRet.f32 %8660, 3
  %8662 = fsub fast float 1.000000e+00, %4267
  %8663 = call float @dx.op.unary.f32(i32 7, float %8662)  ; Saturate(value)
  %8664 = fadd fast float %8655, %4265
  %8665 = fmul fast float %8664, %4267
  %8666 = fmul fast float %8663, %8661
  %8667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %8668 = extractvalue %dx.types.CBufRet.f32 %8667, 3
  %8669 = fmul fast float %8653, %6481
  %8670 = fmul fast float %8654, %6482
  %8671 = fmul fast float %8655, %6483
  %8672 = fcmp fast ogt float %92, %189
  %8673 = and i1 %8672, %4306
  %8674 = or i1 %4385, %8673
  %8675 = icmp eq i32 %4305, 2
  %8676 = fcmp fast ole float %92, %189
  %8677 = and i1 %8676, %8675
  %8678 = or i1 %8677, %8674
  br i1 %8673, label %8679, label %8936

; <label>:8679                                    ; preds = %8649
  %8680 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %8681 = extractvalue %dx.types.CBufRet.f32 %8680, 2
  %8682 = extractvalue %dx.types.CBufRet.f32 %8680, 3
  %8683 = fmul fast float %8681, %104
  %8684 = fmul fast float %8682, %105
  %8685 = call float @dx.op.unary.f32(i32 7, float %8683)  ; Saturate(value)
  %8686 = call float @dx.op.unary.f32(i32 7, float %8684)  ; Saturate(value)
  %8687 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %46, float %8685, float %8686, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8688 = extractvalue %dx.types.ResRet.f32 %8687, 0
  %8689 = extractvalue %dx.types.ResRet.f32 %8687, 1
  %8690 = extractvalue %dx.types.ResRet.f32 %8687, 2
  %8691 = extractvalue %dx.types.ResRet.f32 %8687, 3
  %8692 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %46, float %8685, float %8686, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8693 = extractvalue %dx.types.ResRet.f32 %8692, 0
  %8694 = extractvalue %dx.types.ResRet.f32 %8692, 1
  %8695 = extractvalue %dx.types.ResRet.f32 %8692, 2
  %8696 = extractvalue %dx.types.ResRet.f32 %8692, 3
  %8697 = call float @dx.op.binary.f32(i32 35, float %8689, float %8690)  ; FMax(a,b)
  %8698 = call float @dx.op.binary.f32(i32 35, float %8688, float %8697)  ; FMax(a,b)
  %8699 = call float @dx.op.binary.f32(i32 35, float %8698, float %8691)  ; FMax(a,b)
  %8700 = call float @dx.op.binary.f32(i32 36, float %8694, float %8695)  ; FMin(a,b)
  %8701 = call float @dx.op.binary.f32(i32 36, float %8693, float %8700)  ; FMin(a,b)
  %8702 = call float @dx.op.binary.f32(i32 36, float %8701, float %8696)  ; FMin(a,b)
  %8703 = fmul fast float %8699, 2.550000e+02
  %8704 = fadd fast float %8703, 0x3F70101020000000
  %8705 = fptoui float %8704 to i32
  %8706 = fmul fast float %8702, 2.550000e+02
  %8707 = fadd fast float %8706, 0x3F70101020000000
  %8708 = fptoui float %8707 to i32
  %8709 = icmp ult i32 %8705, %8708
  br i1 %8709, label %8710, label %8878

; <label>:8710                                    ; preds = %8679
  %8711 = fcmp fast ogt float %91, 9.843750e-01
  %8712 = fadd fast float %92, -4.000000e+00
  %8713 = select i1 %8711, float -4.000000e+00, float %8712
  %8714 = call float @dx.op.binary.f32(i32 35, float %8713, float 0.000000e+00)  ; FMax(a,b)
  %8715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8716 = extractvalue %dx.types.CBufRet.f32 %8715, 0
  %8717 = fadd fast float %8716, %8714
  %8718 = extractvalue %dx.types.CBufRet.f32 %8715, 2
  %8719 = fmul fast float %8717, %8718
  %8720 = call float @dx.op.unary.f32(i32 23, float %8719)  ; Log(value)
  %8721 = extractvalue %dx.types.CBufRet.f32 %8715, 3
  %8722 = fmul fast float %8721, %8720
  %8723 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8724 = extractvalue %dx.types.CBufRet.f32 %8723, 2
  %8725 = fmul fast float %8722, %8724
  %8726 = call float @dx.op.unary.f32(i32 7, float %8725)  ; Saturate(value)
  %8727 = uitofp i32 %8705 to float
  %8728 = uitofp i32 %8708 to float
  %8729 = fadd fast float %8727, 5.000000e-01
  %8730 = fadd fast float %8728, 5.000000e-01
  %8731 = fmul fast float %8724, %8729
  %8732 = fmul fast float %8724, %8730
  %8733 = fadd fast float %8731, 0x3F0FFB4800000000
  %8734 = fadd fast float %8732, 0xBF0FFB4800000000
  %8735 = call float @dx.op.binary.f32(i32 35, float %8726, float %8733)  ; FMax(a,b)
  %8736 = call float @dx.op.binary.f32(i32 36, float %8735, float %8734)  ; FMin(a,b)
  %8737 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8738 = extractvalue %dx.types.CBufRet.f32 %8737, 1
  %8739 = extractvalue %dx.types.CBufRet.f32 %8737, 2
  %8740 = extractvalue %dx.types.CBufRet.f32 %8737, 0
  %8741 = fmul fast float %8738, %8736
  %8742 = fadd fast float %8740, %8741
  %8743 = fadd fast float %8740, %8739
  %8744 = fsub fast float %8738, %8739
  %8745 = fadd fast float %8744, %8740
  %8746 = call float @dx.op.binary.f32(i32 35, float %8742, float %8743)  ; FMax(a,b)
  %8747 = call float @dx.op.binary.f32(i32 36, float %8746, float %8745)  ; FMin(a,b)
  %8748 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %44, float %8685, float %8686, float %8747, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8749 = extractvalue %dx.types.ResRet.f32 %8748, 0
  %8750 = extractvalue %dx.types.ResRet.f32 %8748, 1
  %8751 = extractvalue %dx.types.ResRet.f32 %8748, 2
  %8752 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8753 = extractvalue %dx.types.CBufRet.i32 %8752, 0
  %8754 = extractvalue %dx.types.CBufRet.i32 %8752, 1
  %8755 = uitofp i32 %8753 to float
  %8756 = uitofp i32 %8754 to float
  %8757 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8758 = extractvalue %dx.types.CBufRet.f32 %8757, 0
  %8759 = extractvalue %dx.types.CBufRet.f32 %8757, 1
  %8760 = fmul fast float %8755, %8685
  %8761 = fmul fast float %8756, %8686
  %8762 = fadd fast float %8760, -5.000000e-01
  %8763 = fadd fast float %8761, -5.000000e-01
  %8764 = call float @dx.op.unary.f32(i32 22, float %8762)  ; Frc(value)
  %8765 = call float @dx.op.unary.f32(i32 22, float %8763)  ; Frc(value)
  %8766 = fmul fast float %8764, %8764
  %8767 = fmul fast float %8766, %8764
  %8768 = fsub fast float 3.000000e+00, %8764
  %8769 = fmul fast float %8766, %8768
  %8770 = fmul fast float %8764, 3.000000e+00
  %8771 = fmul fast float %8767, 3.000000e+00
  %8772 = fmul fast float %8766, 6.000000e+00
  %8773 = fsub fast float %8771, %8772
  %8774 = fadd fast float %8773, 4.000000e+00
  %8775 = fmul fast float %8774, 0x3FC5555560000000
  %8776 = fmul fast float %8767, -3.000000e+00
  %8777 = fadd fast float %8766, %8764
  %8778 = fmul fast float %8777, 3.000000e+00
  %8779 = fadd fast float %8776, 1.000000e+00
  %8780 = fadd fast float %8779, %8778
  %8781 = fmul fast float %8767, 0x3FC5555560000000
  %8782 = fmul fast float %8765, %8765
  %8783 = fmul fast float %8782, %8765
  %8784 = fsub fast float 3.000000e+00, %8765
  %8785 = fmul fast float %8782, %8784
  %8786 = fmul fast float %8765, 3.000000e+00
  %8787 = fmul fast float %8783, 3.000000e+00
  %8788 = fmul fast float %8782, 6.000000e+00
  %8789 = fsub fast float %8787, %8788
  %8790 = fadd fast float %8789, 4.000000e+00
  %8791 = fmul fast float %8790, 0x3FC5555560000000
  %8792 = fmul fast float %8783, -3.000000e+00
  %8793 = fadd fast float %8782, %8765
  %8794 = fmul fast float %8793, 3.000000e+00
  %8795 = fadd fast float %8792, 1.000000e+00
  %8796 = fadd fast float %8795, %8794
  %8797 = fmul fast float %8783, 0x3FC5555560000000
  %8798 = fadd fast float %8764, 1.000000e+00
  %8799 = fsub fast float 1.000000e+00, %8770
  %8800 = fadd fast float %8799, %8769
  %8801 = fadd fast float %8800, %8774
  %8802 = fmul fast float %8801, 0x3FC5555560000000
  %8803 = fdiv fast float %8775, %8802
  %8804 = fsub fast float %8798, %8803
  %8805 = fsub fast float 1.000000e+00, %8764
  %8806 = fadd fast float %8780, %8767
  %8807 = fmul fast float %8806, 0x3FC5555560000000
  %8808 = fdiv fast float %8781, %8807
  %8809 = fadd fast float %8805, %8808
  %8810 = fadd fast float %8765, 1.000000e+00
  %8811 = fsub fast float 1.000000e+00, %8786
  %8812 = fadd fast float %8811, %8785
  %8813 = fadd fast float %8812, %8790
  %8814 = fmul fast float %8813, 0x3FC5555560000000
  %8815 = fdiv fast float %8791, %8814
  %8816 = fsub fast float %8810, %8815
  %8817 = fsub fast float 1.000000e+00, %8765
  %8818 = fadd fast float %8796, %8783
  %8819 = fmul fast float %8818, 0x3FC5555560000000
  %8820 = fdiv fast float %8797, %8819
  %8821 = fadd fast float %8820, %8817
  %8822 = fmul fast float %8804, %8758
  %8823 = fsub fast float %8685, %8822
  %8824 = fmul fast float %8809, %8758
  %8825 = fadd fast float %8824, %8685
  %8826 = fmul fast float %8821, %8759
  %8827 = fadd fast float %8826, %8686
  %8828 = fmul fast float %8816, %8759
  %8829 = fsub fast float %8686, %8828
  %8830 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %44, float %8823, float %8829, float %8747, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8831 = extractvalue %dx.types.ResRet.f32 %8830, 0
  %8832 = extractvalue %dx.types.ResRet.f32 %8830, 1
  %8833 = extractvalue %dx.types.ResRet.f32 %8830, 2
  %8834 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %44, float %8825, float %8829, float %8747, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8835 = extractvalue %dx.types.ResRet.f32 %8834, 0
  %8836 = extractvalue %dx.types.ResRet.f32 %8834, 1
  %8837 = extractvalue %dx.types.ResRet.f32 %8834, 2
  %8838 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %44, float %8823, float %8827, float %8747, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8839 = extractvalue %dx.types.ResRet.f32 %8838, 0
  %8840 = extractvalue %dx.types.ResRet.f32 %8838, 1
  %8841 = extractvalue %dx.types.ResRet.f32 %8838, 2
  %8842 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %44, float %8825, float %8827, float %8747, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8843 = extractvalue %dx.types.ResRet.f32 %8842, 0
  %8844 = extractvalue %dx.types.ResRet.f32 %8842, 1
  %8845 = extractvalue %dx.types.ResRet.f32 %8842, 2
  %8846 = fsub fast float %8839, %8831
  %8847 = fsub fast float %8840, %8832
  %8848 = fsub fast float %8841, %8833
  %8849 = fmul fast float %8846, %8819
  %8850 = fmul fast float %8847, %8819
  %8851 = fmul fast float %8848, %8819
  %8852 = fadd fast float %8849, %8831
  %8853 = fadd fast float %8850, %8832
  %8854 = fadd fast float %8851, %8833
  %8855 = fsub fast float %8843, %8835
  %8856 = fsub fast float %8844, %8836
  %8857 = fsub fast float %8845, %8837
  %8858 = fmul fast float %8855, %8819
  %8859 = fmul fast float %8856, %8819
  %8860 = fmul fast float %8857, %8819
  %8861 = fsub fast float %8835, %8852
  %8862 = fadd fast float %8861, %8858
  %8863 = fsub fast float %8836, %8853
  %8864 = fadd fast float %8863, %8859
  %8865 = fsub fast float %8837, %8854
  %8866 = fadd fast float %8865, %8860
  %8867 = fmul fast float %8862, %8807
  %8868 = fmul fast float %8864, %8807
  %8869 = fmul fast float %8866, %8807
  %8870 = fadd fast float %8867, %8852
  %8871 = fadd fast float %8868, %8853
  %8872 = fadd fast float %8869, %8854
  %8873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8874 = extractvalue %dx.types.CBufRet.f32 %8873, 1
  %8875 = fmul fast float %8870, %8874
  %8876 = fmul fast float %8871, %8874
  %8877 = fmul fast float %8872, %8874
  br label %8878

; <label>:8878                                    ; preds = %8710, %8679
  %8879 = phi float [ %8749, %8710 ], [ 1.000000e+00, %8679 ]
  %8880 = phi float [ %8750, %8710 ], [ 1.000000e+00, %8679 ]
  %8881 = phi float [ %8751, %8710 ], [ 1.000000e+00, %8679 ]
  %8882 = phi float [ %8875, %8710 ], [ 0.000000e+00, %8679 ]
  %8883 = phi float [ %8876, %8710 ], [ 0.000000e+00, %8679 ]
  %8884 = phi float [ %8877, %8710 ], [ 0.000000e+00, %8679 ]
  %8885 = fmul fast float %8882, %8656
  %8886 = fmul fast float %8883, %8656
  %8887 = fmul fast float %8884, %8656
  %8888 = call float @dx.op.dot3.f32(i32 55, float %8879, float %8880, float %8881, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8889 = call float @dx.op.dot3.f32(i32 55, float %8885, float %8886, float %8887, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8890 = select i1 %228, float %8888, float %8879
  %8891 = select i1 %228, float %8888, float %8880
  %8892 = select i1 %228, float 1.000000e+00, float %8881
  %8893 = select i1 %228, float %8889, float %8885
  %8894 = select i1 %228, float 0.000000e+00, float %8886
  %8895 = select i1 %228, float 0.000000e+00, float %8887
  %8896 = fmul fast float %8890, %8669
  %8897 = fmul fast float %8891, %8670
  %8898 = fmul fast float %8892, %8671
  %8899 = fadd fast float %8896, %8893
  %8900 = fadd fast float %8897, %8894
  %8901 = fadd fast float %8895, %8898
  %8902 = fmul fast float %8890, %8650
  %8903 = fmul fast float %8891, %8651
  %8904 = fmul fast float %8892, %8652
  %8905 = fmul fast float %137, %8681
  %8906 = fmul fast float %139, %8682
  %8907 = fsub fast float 1.000000e+00, %8905
  %8908 = fsub fast float 1.000000e+00, %8906
  %8909 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8910 = extractvalue %dx.types.CBufRet.f32 %8909, 0
  %8911 = extractvalue %dx.types.CBufRet.f32 %8909, 1
  %8912 = extractvalue %dx.types.CBufRet.f32 %8909, 2
  %8913 = fmul fast float %8907, %8910
  %8914 = fmul fast float %8907, %8911
  %8915 = fmul fast float %8907, %8912
  %8916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8917 = extractvalue %dx.types.CBufRet.f32 %8916, 0
  %8918 = extractvalue %dx.types.CBufRet.f32 %8916, 1
  %8919 = extractvalue %dx.types.CBufRet.f32 %8916, 2
  %8920 = fmul fast float %8908, %8917
  %8921 = fmul fast float %8908, %8918
  %8922 = fmul fast float %8908, %8919
  %8923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8924 = extractvalue %dx.types.CBufRet.f32 %8923, 0
  %8925 = extractvalue %dx.types.CBufRet.f32 %8923, 1
  %8926 = extractvalue %dx.types.CBufRet.f32 %8923, 2
  %8927 = fadd fast float %8920, %8924
  %8928 = fadd fast float %8927, %8913
  %8929 = fadd fast float %8921, %8925
  %8930 = fadd fast float %8929, %8914
  %8931 = fadd fast float %8922, %8926
  %8932 = fadd fast float %8931, %8915
  %8933 = fmul fast float %8928, %189
  %8934 = fmul fast float %8930, %189
  %8935 = fmul fast float %8932, %189
  br label %8936

; <label>:8936                                    ; preds = %8878, %8649
  %8937 = phi float [ %8933, %8878 ], [ %167, %8649 ]
  %8938 = phi float [ %8934, %8878 ], [ %168, %8649 ]
  %8939 = phi float [ %8935, %8878 ], [ %169, %8649 ]
  %8940 = phi float [ %189, %8878 ], [ %92, %8649 ]
  %8941 = phi float [ %8899, %8878 ], [ %8669, %8649 ]
  %8942 = phi float [ %8900, %8878 ], [ %8670, %8649 ]
  %8943 = phi float [ %8901, %8878 ], [ %8671, %8649 ]
  %8944 = phi float [ %8902, %8878 ], [ %8650, %8649 ]
  %8945 = phi float [ %8903, %8878 ], [ %8651, %8649 ]
  %8946 = phi float [ %8904, %8878 ], [ %8652, %8649 ]
  %8947 = phi float [ %8879, %8878 ], [ 1.000000e+00, %8649 ]
  br i1 %8678, label %10102, label %8948

; <label>:8948                                    ; preds = %8936
  %8949 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8950 = extractvalue %dx.types.CBufRet.f32 %8949, 0
  %8951 = extractvalue %dx.types.CBufRet.f32 %8949, 1
  %8952 = extractvalue %dx.types.CBufRet.f32 %8949, 2
  %8953 = extractvalue %dx.types.CBufRet.f32 %8949, 3
  %8954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8955 = extractvalue %dx.types.CBufRet.f32 %8954, 0
  %8956 = extractvalue %dx.types.CBufRet.f32 %8954, 1
  %8957 = extractvalue %dx.types.CBufRet.f32 %8954, 2
  %8958 = extractvalue %dx.types.CBufRet.f32 %8954, 3
  %8959 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8960 = extractvalue %dx.types.CBufRet.f32 %8959, 0
  %8961 = extractvalue %dx.types.CBufRet.f32 %8959, 1
  %8962 = extractvalue %dx.types.CBufRet.f32 %8959, 2
  %8963 = extractvalue %dx.types.CBufRet.f32 %8959, 3
  %8964 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8965 = extractvalue %dx.types.CBufRet.f32 %8964, 0
  %8966 = extractvalue %dx.types.CBufRet.f32 %8964, 1
  %8967 = extractvalue %dx.types.CBufRet.f32 %8964, 2
  %8968 = extractvalue %dx.types.CBufRet.f32 %8964, 3
  %8969 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8970 = extractvalue %dx.types.CBufRet.f32 %8969, 3
  %8971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8972 = extractvalue %dx.types.CBufRet.f32 %8971, 3
  %8973 = extractvalue %dx.types.CBufRet.f32 %8971, 0
  %8974 = extractvalue %dx.types.CBufRet.f32 %8971, 1
  %8975 = extractvalue %dx.types.CBufRet.f32 %8971, 2
  %8976 = fcmp fast olt float %8975, -5.000000e-01
  %8977 = call float @dx.op.dot3.f32(i32 55, float %8937, float %8938, float %8939, float %8937, float %8938, float %8939)  ; Dot3(ax,ay,az,bx,by,bz)
  %8978 = call float @dx.op.unary.f32(i32 25, float %8977)  ; Rsqrt(value)
  %8979 = fmul fast float %8978, %8977
  %8980 = fmul fast float %8978, %8937
  %8981 = fmul fast float %8978, %8938
  %8982 = fmul fast float %8978, %8939
  %8983 = fadd fast float %8979, %8953
  %8984 = call float @dx.op.dot3.f32(i32 55, float %8980, float %8981, float %8982, float %8950, float %8951, float %8952)  ; Dot3(ax,ay,az,bx,by,bz)
  %8985 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8986 = extractvalue %dx.types.CBufRet.i32 %8985, 1
  %8987 = and i32 %8986, 1
  %8988 = icmp ne i32 %8987, 0
  %8989 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8990 = extractvalue %dx.types.CBufRet.f32 %8989, 2
  %8991 = fcmp fast ogt float %8990, 0.000000e+00
  %8992 = and i1 %8988, %8991
  br i1 %8992, label %8993, label %9399, !dx.controlflow.hints !124

; <label>:8993                                    ; preds = %8948
  %8994 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8995 = extractvalue %dx.types.CBufRet.f32 %8994, 3
  %8996 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8997 = extractvalue %dx.types.CBufRet.f32 %8996, 2
  %8998 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8999 = extractvalue %dx.types.CBufRet.f32 %8998, 2
  %9000 = fsub fast float %8997, %8999
  %9001 = and i32 %8986, 2
  %9002 = extractvalue %dx.types.CBufRet.i32 %8985, 0
  %9003 = call i32 @dx.op.binary.i32(i32 40, i32 %9002, i32 3)  ; UMin(a,b)
  %9004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %9005 = extractvalue %dx.types.CBufRet.f32 %9004, 0
  %9006 = extractvalue %dx.types.CBufRet.f32 %9004, 1
  %9007 = extractvalue %dx.types.CBufRet.f32 %8998, 0
  %9008 = extractvalue %dx.types.CBufRet.f32 %8998, 1
  %9009 = fsub fast float %9005, %9007
  %9010 = fsub fast float %9006, %9008
  %9011 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %9012 = extractvalue %dx.types.CBufRet.f32 %9011, 0
  %9013 = fcmp fast ogt float %9012, 0.000000e+00
  %9014 = fsub fast float -0.000000e+00, %9009
  %9015 = fsub fast float -0.000000e+00, %9010
  %9016 = call float @dx.op.dot2.f32(i32 54, float %8980, float %8981, float %8980, float %8981)  ; Dot2(ax,ay,bx,by)
  %9017 = call float @dx.op.dot2.f32(i32 54, float %8980, float %8981, float %9014, float %9015)  ; Dot2(ax,ay,bx,by)
  %9018 = fmul fast float %9017, 2.000000e+00
  %9019 = call float @dx.op.dot2.f32(i32 54, float %9014, float %9015, float %9014, float %9015)  ; Dot2(ax,ay,bx,by)
  %9020 = fmul fast float %9012, %9012
  %9021 = fsub fast float %9019, %9020
  %9022 = fmul fast float %9018, %9018
  %9023 = fmul fast float %9016, 4.000000e+00
  %9024 = fmul fast float %9023, %9021
  %9025 = fsub fast float %9022, %9024
  %9026 = fcmp fast ogt float %9025, 0.000000e+00
  br i1 %9026, label %9027, label %9042

; <label>:9027                                    ; preds = %8993
  %9028 = fcmp fast ogt float %9018, 0.000000e+00
  %9029 = call float @dx.op.unary.f32(i32 24, float %9025)  ; Sqrt(value)
  %9030 = fsub fast float -0.000000e+00, %9029
  %9031 = select i1 %9028, float %9029, float %9030
  %9032 = fadd fast float %9031, %9018
  %9033 = fmul float %9032, -5.000000e-01
  %9034 = fdiv fast float %9033, %9016
  %9035 = call float @dx.op.binary.f32(i32 35, float %9034, float 0.000000e+00)  ; FMax(a,b)
  %9036 = call float @dx.op.binary.f32(i32 36, float %8979, float %9035)  ; FMin(a,b)
  %9037 = fdiv fast float %9021, %9033
  %9038 = call float @dx.op.binary.f32(i32 35, float %9037, float 0.000000e+00)  ; FMax(a,b)
  %9039 = call float @dx.op.binary.f32(i32 36, float %8979, float %9038)  ; FMin(a,b)
  %9040 = call float @dx.op.binary.f32(i32 36, float %9036, float %9039)  ; FMin(a,b)
  %9041 = call float @dx.op.binary.f32(i32 35, float %9036, float %9039)  ; FMax(a,b)
  br label %9042

; <label>:9042                                    ; preds = %9027, %8993
  %9043 = phi float [ %9041, %9027 ], [ -1.000000e+00, %8993 ]
  %9044 = phi float [ %9040, %9027 ], [ -1.000000e+00, %8993 ]
  %9045 = phi i1 [ true, %9027 ], [ false, %8993 ]
  %9046 = and i1 %9013, %9045
  br i1 %9046, label %9047, label %9049

; <label>:9047                                    ; preds = %9042
  %9048 = fcmp fast oeq float %9044, %9043
  br i1 %9048, label %9352, label %9050

; <label>:9049                                    ; preds = %9042
  br i1 %9013, label %9352, label %9050

; <label>:9050                                    ; preds = %9049, %9047
  %9051 = phi float [ %8979, %9049 ], [ %9043, %9047 ]
  %9052 = phi float [ 0.000000e+00, %9049 ], [ %9044, %9047 ]
  %9053 = icmp ne i32 %9001, 0
  %9054 = fmul fast float %9051, %8982
  %9055 = fadd fast float %9054, %8995
  %9056 = fmul fast float %9055, %9051
  %9057 = select i1 %9053, float 0.000000e+00, float %9056
  %9058 = fcmp fast oeq float %8982, 0.000000e+00
  %9059 = fdiv fast float %9000, %8982
  %9060 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9059)  ; FMax(a,b)
  %9061 = select i1 %9058, float %9051, float %9060
  %9062 = call float @dx.op.binary.f32(i32 36, float %9051, float %9061)  ; FMin(a,b)
  %9063 = fcmp fast ogt float %8982, 0.000000e+00
  %9064 = fcmp fast olt float %9000, 0.000000e+00
  br i1 %9063, label %9065, label %9122

; <label>:9065                                    ; preds = %9050
  %9066 = icmp eq i32 %9001, 0
  br i1 %9064, label %9067, label %9111

; <label>:9067                                    ; preds = %9065
  %9068 = select i1 %9066, float %9051, float 0.000000e+00
  %9069 = fsub fast float -0.000000e+00, %9068
  %9070 = call float @dx.op.unary.f32(i32 6, float %9069)  ; FAbs(value)
  %9071 = fmul fast float %9068, %8982
  %9072 = fadd fast float %9071, %8995
  %9073 = fmul fast float %9070, %9072
  %9074 = fsub fast float %9057, %9073
  %9075 = fsub fast float %9051, %9070
  %9076 = select i1 %9066, float %9075, float 0.000000e+00
  %9077 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9078 = extractvalue %dx.types.CBufRet.f32 %9077, 0
  %9079 = extractvalue %dx.types.CBufRet.f32 %9077, 1
  %9080 = extractvalue %dx.types.CBufRet.f32 %9077, 2
  %9081 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9082 = extractvalue %dx.types.CBufRet.f32 %9081, 0
  %9083 = extractvalue %dx.types.CBufRet.f32 %9081, 1
  %9084 = extractvalue %dx.types.CBufRet.f32 %9081, 2
  %9085 = extractvalue %dx.types.CBufRet.f32 %9081, 3
  %9086 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9087 = extractvalue %dx.types.CBufRet.f32 %9086, 3
  %9088 = call float @dx.op.binary.f32(i32 36, float %9074, float %9087)  ; FMin(a,b)
  %9089 = fmul fast float %9085, %9076
  %9090 = call float @dx.op.unary.f32(i32 7, float %9089)  ; Saturate(value)
  %9091 = fsub fast float %9082, %9078
  %9092 = fsub fast float %9083, %9079
  %9093 = fsub fast float %9084, %9080
  %9094 = fmul fast float %9090, %9091
  %9095 = fmul fast float %9090, %9092
  %9096 = fmul fast float %9090, %9093
  %9097 = fadd fast float %9094, %9078
  %9098 = fadd fast float %9095, %9079
  %9099 = fadd fast float %9096, %9080
  %9100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9101 = extractvalue %dx.types.CBufRet.f32 %9100, 0
  %9102 = extractvalue %dx.types.CBufRet.f32 %9100, 1
  %9103 = fadd fast float %9102, %9101
  %9104 = call float @dx.op.unary.f32(i32 7, float %9103)  ; Saturate(value)
  %9105 = extractvalue %dx.types.CBufRet.f32 %9100, 2
  %9106 = extractvalue %dx.types.CBufRet.f32 %9100, 3
  %9107 = fadd fast float %9106, %9105
  %9108 = call float @dx.op.unary.f32(i32 7, float %9107)  ; Saturate(value)
  %9109 = fmul fast float %9104, %9088
  %9110 = fmul fast float %9109, %9108
  br label %9352

; <label>:9111                                    ; preds = %9065
  br i1 %9066, label %9112, label %9133

; <label>:9112                                    ; preds = %9111
  %9113 = call float @dx.op.binary.f32(i32 36, float %9062, float %9052)  ; FMin(a,b)
  %9114 = fsub fast float %9062, %9113
  %9115 = fsub fast float %9114, %9051
  %9116 = call float @dx.op.unary.f32(i32 6, float %9115)  ; FAbs(value)
  %9117 = fadd fast float %9114, %9051
  %9118 = fmul fast float %9117, %8982
  %9119 = fadd fast float %9118, %8995
  %9120 = fmul fast float %9119, %9116
  %9121 = fsub fast float %9057, %9120
  br label %9133

; <label>:9122                                    ; preds = %9050
  br i1 %9064, label %9123, label %9133

; <label>:9123                                    ; preds = %9122
  %9124 = call float @dx.op.binary.f32(i32 35, float %9052, float %9062)  ; FMax(a,b)
  %9125 = icmp eq i32 %9001, 0
  %9126 = select i1 %9125, float %9062, float 0.000000e+00
  %9127 = fsub fast float -0.000000e+00, %9126
  %9128 = call float @dx.op.unary.f32(i32 6, float %9127)  ; FAbs(value)
  %9129 = fmul fast float %9126, %8982
  %9130 = fadd fast float %9129, %8995
  %9131 = fmul fast float %9128, %9130
  %9132 = fsub fast float %9057, %9131
  br label %9133

; <label>:9133                                    ; preds = %9123, %9122, %9112, %9111
  %9134 = phi float [ %9052, %9111 ], [ %9052, %9112 ], [ %9124, %9123 ], [ %9052, %9122 ]
  %9135 = phi float [ 0.000000e+00, %9111 ], [ %9116, %9112 ], [ %9128, %9123 ], [ 0.000000e+00, %9122 ]
  %9136 = phi float [ %9057, %9111 ], [ %9121, %9112 ], [ %9132, %9123 ], [ %9057, %9122 ]
  %9137 = phi float [ %9062, %9111 ], [ %9062, %9112 ], [ %9051, %9123 ], [ %9051, %9122 ]
  %9138 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 0
  store float -1.000000e+00, float* %9138, align 4, !tbaa !90, !noalias !125
  %9139 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 1
  store float -1.000000e+00, float* %9139, align 4, !tbaa !90, !noalias !125
  %9140 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 2
  store float -1.000000e+00, float* %9140, align 4, !tbaa !90, !noalias !125
  %9141 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 0
  store float -1.000000e+00, float* %9141, align 4, !tbaa !90, !noalias !125
  %9142 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 1
  store float -1.000000e+00, float* %9142, align 4, !tbaa !90, !noalias !125
  %9143 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 2
  store float -1.000000e+00, float* %9143, align 4, !tbaa !90, !noalias !125
  %9144 = icmp sgt i32 %9003, 0
  br i1 %9144, label %9145, label %9206

; <label>:9145                                    ; preds = %9133
  br label %9146

; <label>:9146                                    ; preds = %9195, %9145
  %9147 = phi i32 [ %9196, %9195 ], [ 0, %9145 ]
  %9148 = phi i32 [ %9197, %9195 ], [ 0, %9145 ]
  %9149 = add nuw i32 %9148, 171
  %9150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 %9149)  ; CBufferLoadLegacy(handle,regIndex)
  %9151 = extractvalue %dx.types.CBufRet.f32 %9150, 0
  %9152 = extractvalue %dx.types.CBufRet.f32 %9150, 1
  %9153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9154 = extractvalue %dx.types.CBufRet.f32 %9153, 0
  %9155 = extractvalue %dx.types.CBufRet.f32 %9153, 1
  %9156 = fsub fast float %9151, %9154
  %9157 = fsub fast float %9152, %9155
  %9158 = extractvalue %dx.types.CBufRet.f32 %9150, 2
  %9159 = fsub fast float -0.000000e+00, %9156
  %9160 = fsub fast float -0.000000e+00, %9157
  %9161 = call float @dx.op.dot2.f32(i32 54, float %8980, float %8981, float %9159, float %9160)  ; Dot2(ax,ay,bx,by)
  %9162 = fmul fast float %9161, 2.000000e+00
  %9163 = call float @dx.op.dot2.f32(i32 54, float %9159, float %9160, float %9159, float %9160)  ; Dot2(ax,ay,bx,by)
  %9164 = fmul fast float %9158, %9158
  %9165 = fsub fast float %9163, %9164
  %9166 = fmul fast float %9162, %9162
  %9167 = fmul fast float %9023, %9165
  %9168 = fsub fast float %9166, %9167
  %9169 = fcmp fast ogt float %9168, 0.000000e+00
  br i1 %9169, label %9170, label %9185

; <label>:9170                                    ; preds = %9146
  %9171 = fcmp fast ogt float %9162, 0.000000e+00
  %9172 = call float @dx.op.unary.f32(i32 24, float %9168)  ; Sqrt(value)
  %9173 = fsub fast float -0.000000e+00, %9172
  %9174 = select i1 %9171, float %9172, float %9173
  %9175 = fadd fast float %9174, %9162
  %9176 = fmul float %9175, -5.000000e-01
  %9177 = fdiv fast float %9176, %9016
  %9178 = call float @dx.op.binary.f32(i32 35, float %9177, float 0.000000e+00)  ; FMax(a,b)
  %9179 = call float @dx.op.binary.f32(i32 36, float %9051, float %9178)  ; FMin(a,b)
  %9180 = fdiv fast float %9165, %9176
  %9181 = call float @dx.op.binary.f32(i32 35, float %9180, float 0.000000e+00)  ; FMax(a,b)
  %9182 = call float @dx.op.binary.f32(i32 36, float %9051, float %9181)  ; FMin(a,b)
  %9183 = call float @dx.op.binary.f32(i32 36, float %9179, float %9182)  ; FMin(a,b)
  %9184 = call float @dx.op.binary.f32(i32 35, float %9179, float %9182)  ; FMax(a,b)
  br label %9185

; <label>:9185                                    ; preds = %9170, %9146
  %9186 = phi float [ %9184, %9170 ], [ -1.000000e+00, %9146 ]
  %9187 = phi float [ %9183, %9170 ], [ -1.000000e+00, %9146 ]
  %9188 = phi i1 [ true, %9170 ], [ false, %9146 ]
  br i1 %9188, label %9189, label %9195

; <label>:9189                                    ; preds = %9185
  %9190 = call float @dx.op.binary.f32(i32 35, float %9134, float %9187)  ; FMax(a,b)
  %9191 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 %9148
  store float %9190, float* %9191, align 4, !tbaa !90, !noalias !125
  %9192 = call float @dx.op.binary.f32(i32 35, float %9134, float %9186)  ; FMax(a,b)
  %9193 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 %9148
  store float %9192, float* %9193, align 4, !tbaa !90, !noalias !125
  %9194 = add nsw i32 %9147, 1
  br label %9195

; <label>:9195                                    ; preds = %9189, %9185
  %9196 = phi i32 [ %9194, %9189 ], [ %9147, %9185 ]
  %9197 = add nuw nsw i32 %9148, 1
  %9198 = icmp eq i32 %9197, %9003
  br i1 %9198, label %9199, label %9146

; <label>:9199                                    ; preds = %9195
  %9200 = load float, float* %9140, align 4, !tbaa !90, !alias.scope !141, !noalias !144
  %9201 = load float, float* %9139, align 4, !tbaa !90, !alias.scope !147, !noalias !148
  %9202 = load float, float* %9138, align 4, !tbaa !90, !alias.scope !149, !noalias !150
  %9203 = load float, float* %9143, align 4, !tbaa !90, !alias.scope !151, !noalias !154
  %9204 = load float, float* %9142, align 4, !tbaa !90, !alias.scope !157, !noalias !158
  %9205 = load float, float* %9141, align 4, !tbaa !90, !alias.scope !159, !noalias !160
  br label %9206

; <label>:9206                                    ; preds = %9199, %9133
  %9207 = phi float [ -1.000000e+00, %9133 ], [ %9205, %9199 ]
  %9208 = phi float [ -1.000000e+00, %9133 ], [ %9204, %9199 ]
  %9209 = phi float [ -1.000000e+00, %9133 ], [ %9203, %9199 ]
  %9210 = phi float [ -1.000000e+00, %9133 ], [ %9202, %9199 ]
  %9211 = phi float [ -1.000000e+00, %9133 ], [ %9201, %9199 ]
  %9212 = phi float [ -1.000000e+00, %9133 ], [ %9200, %9199 ]
  %9213 = phi i32 [ 0, %9133 ], [ %9196, %9199 ]
  %9214 = call float @dx.op.binary.f32(i32 36, float %9211, float %9212)  ; FMin(a,b)
  %9215 = call float @dx.op.binary.f32(i32 36, float %9210, float %9214)  ; FMin(a,b)
  %9216 = call float @dx.op.binary.f32(i32 35, float %9210, float %9211)  ; FMax(a,b)
  %9217 = call float @dx.op.binary.f32(i32 36, float %9216, float %9212)  ; FMin(a,b)
  %9218 = call float @dx.op.binary.f32(i32 36, float %9210, float %9211)  ; FMin(a,b)
  %9219 = call float @dx.op.binary.f32(i32 35, float %9218, float %9217)  ; FMax(a,b)
  %9220 = call float @dx.op.binary.f32(i32 35, float %9211, float %9212)  ; FMax(a,b)
  %9221 = call float @dx.op.binary.f32(i32 35, float %9210, float %9220)  ; FMax(a,b)
  store float %9215, float* %9138, align 4, !tbaa !90, !alias.scope !149, !noalias !150
  store float %9219, float* %9139, align 4, !tbaa !90, !alias.scope !147, !noalias !148
  store float %9221, float* %9140, align 4, !tbaa !90, !alias.scope !141, !noalias !144
  %9222 = call float @dx.op.binary.f32(i32 36, float %9208, float %9209)  ; FMin(a,b)
  %9223 = call float @dx.op.binary.f32(i32 36, float %9207, float %9222)  ; FMin(a,b)
  %9224 = call float @dx.op.binary.f32(i32 35, float %9207, float %9208)  ; FMax(a,b)
  %9225 = call float @dx.op.binary.f32(i32 36, float %9224, float %9209)  ; FMin(a,b)
  %9226 = call float @dx.op.binary.f32(i32 36, float %9207, float %9208)  ; FMin(a,b)
  %9227 = call float @dx.op.binary.f32(i32 35, float %9226, float %9225)  ; FMax(a,b)
  %9228 = call float @dx.op.binary.f32(i32 35, float %9208, float %9209)  ; FMax(a,b)
  %9229 = call float @dx.op.binary.f32(i32 35, float %9207, float %9228)  ; FMax(a,b)
  store float %9223, float* %9141, align 4, !tbaa !90, !alias.scope !159, !noalias !160
  store float %9227, float* %9142, align 4, !tbaa !90, !alias.scope !157, !noalias !158
  store float %9229, float* %9143, align 4, !tbaa !90, !alias.scope !151, !noalias !154
  %9230 = sub nsw i32 3, %9213
  %9231 = icmp sgt i32 %9230, 2
  br i1 %9231, label %9232, label %9270

; <label>:9232                                    ; preds = %9206
  %9233 = icmp eq i32 %9001, 0
  %9234 = fsub fast float %9051, %9135
  %9235 = select i1 %9233, float %9234, float %9135
  %9236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9237 = extractvalue %dx.types.CBufRet.f32 %9236, 0
  %9238 = extractvalue %dx.types.CBufRet.f32 %9236, 1
  %9239 = extractvalue %dx.types.CBufRet.f32 %9236, 2
  %9240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9241 = extractvalue %dx.types.CBufRet.f32 %9240, 0
  %9242 = extractvalue %dx.types.CBufRet.f32 %9240, 1
  %9243 = extractvalue %dx.types.CBufRet.f32 %9240, 2
  %9244 = extractvalue %dx.types.CBufRet.f32 %9240, 3
  %9245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9246 = extractvalue %dx.types.CBufRet.f32 %9245, 3
  %9247 = call float @dx.op.binary.f32(i32 36, float %9136, float %9246)  ; FMin(a,b)
  %9248 = fmul fast float %9244, %9235
  %9249 = call float @dx.op.unary.f32(i32 7, float %9248)  ; Saturate(value)
  %9250 = fsub fast float %9241, %9237
  %9251 = fsub fast float %9242, %9238
  %9252 = fsub fast float %9243, %9239
  %9253 = fmul fast float %9249, %9250
  %9254 = fmul fast float %9249, %9251
  %9255 = fmul fast float %9249, %9252
  %9256 = fadd fast float %9253, %9237
  %9257 = fadd fast float %9254, %9238
  %9258 = fadd fast float %9255, %9239
  %9259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9260 = extractvalue %dx.types.CBufRet.f32 %9259, 0
  %9261 = extractvalue %dx.types.CBufRet.f32 %9259, 1
  %9262 = fadd fast float %9261, %9260
  %9263 = call float @dx.op.unary.f32(i32 7, float %9262)  ; Saturate(value)
  %9264 = extractvalue %dx.types.CBufRet.f32 %9259, 2
  %9265 = extractvalue %dx.types.CBufRet.f32 %9259, 3
  %9266 = fadd fast float %9265, %9264
  %9267 = call float @dx.op.unary.f32(i32 7, float %9266)  ; Saturate(value)
  %9268 = fmul fast float %9263, %9247
  %9269 = fmul fast float %9268, %9267
  br label %9352

; <label>:9270                                    ; preds = %9206
  %9271 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 %9230
  %9272 = load float, float* %9271, align 4, !tbaa !90, !noalias !125
  %9273 = fcmp fast olt float %9272, %9137
  %9274 = icmp sgt i32 %9213, 0
  %9275 = and i1 %9274, %9273
  br i1 %9275, label %9276, label %9313

; <label>:9276                                    ; preds = %9270
  br label %9277

; <label>:9277                                    ; preds = %9306, %9276
  %9278 = phi float [ %9307, %9306 ], [ %9135, %9276 ]
  %9279 = phi float [ %9308, %9306 ], [ %9136, %9276 ]
  %9280 = phi float [ %9288, %9306 ], [ %9272, %9276 ]
  %9281 = phi i32 [ %9285, %9306 ], [ %9230, %9276 ]
  %9282 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 %9281
  %9283 = load float, float* %9282, align 4, !tbaa !90, !noalias !125
  %9284 = icmp slt i32 %9281, 2
  %9285 = add nsw i32 %9281, 1
  %9286 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 %9285
  %9287 = load float, float* %9286, align 4, !tbaa !90, !noalias !125
  %9288 = select i1 %9284, float %9287, float %9051
  %9289 = call float @dx.op.binary.f32(i32 36, float %9288, float %9283)  ; FMin(a,b)
  %9290 = call float @dx.op.binary.f32(i32 36, float %9137, float %9289)  ; FMin(a,b)
  %9291 = icmp eq i32 %9001, 0
  %9292 = fadd fast float %9290, %9280
  %9293 = fmul fast float %9292, %8982
  %9294 = fadd fast float %9293, %8995
  br i1 %9291, label %9300, label %9295

; <label>:9295                                    ; preds = %9277
  %9296 = fsub fast float %9290, %9280
  %9297 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9296)  ; FMax(a,b)
  %9298 = fmul fast float %9297, %9294
  %9299 = fadd fast float %9298, %9279
  br label %9306

; <label>:9300                                    ; preds = %9277
  %9301 = fsub fast float %9280, %9290
  %9302 = call float @dx.op.unary.f32(i32 6, float %9301)  ; FAbs(value)
  %9303 = fadd fast float %9302, %9278
  %9304 = fmul fast float %9302, %9294
  %9305 = fsub fast float %9279, %9304
  br label %9306

; <label>:9306                                    ; preds = %9300, %9295
  %9307 = phi float [ %9297, %9295 ], [ %9303, %9300 ]
  %9308 = phi float [ %9299, %9295 ], [ %9305, %9300 ]
  %9309 = fcmp fast olt float %9288, %9137
  %9310 = icmp slt i32 %9285, 3
  %9311 = and i1 %9310, %9309
  br i1 %9311, label %9277, label %9312

; <label>:9312                                    ; preds = %9306
  br label %9313

; <label>:9313                                    ; preds = %9312, %9270
  %9314 = phi float [ %9135, %9270 ], [ %9307, %9312 ]
  %9315 = phi float [ %9136, %9270 ], [ %9308, %9312 ]
  %9316 = fsub fast float %9051, %9314
  %9317 = select i1 %9053, float %9314, float %9316
  %9318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9319 = extractvalue %dx.types.CBufRet.f32 %9318, 0
  %9320 = extractvalue %dx.types.CBufRet.f32 %9318, 1
  %9321 = extractvalue %dx.types.CBufRet.f32 %9318, 2
  %9322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9323 = extractvalue %dx.types.CBufRet.f32 %9322, 0
  %9324 = extractvalue %dx.types.CBufRet.f32 %9322, 1
  %9325 = extractvalue %dx.types.CBufRet.f32 %9322, 2
  %9326 = extractvalue %dx.types.CBufRet.f32 %9322, 3
  %9327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9328 = extractvalue %dx.types.CBufRet.f32 %9327, 3
  %9329 = call float @dx.op.binary.f32(i32 36, float %9315, float %9328)  ; FMin(a,b)
  %9330 = fmul fast float %9326, %9317
  %9331 = call float @dx.op.unary.f32(i32 7, float %9330)  ; Saturate(value)
  %9332 = fsub fast float %9323, %9319
  %9333 = fsub fast float %9324, %9320
  %9334 = fsub fast float %9325, %9321
  %9335 = fmul fast float %9331, %9332
  %9336 = fmul fast float %9331, %9333
  %9337 = fmul fast float %9331, %9334
  %9338 = fadd fast float %9335, %9319
  %9339 = fadd fast float %9336, %9320
  %9340 = fadd fast float %9337, %9321
  %9341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9342 = extractvalue %dx.types.CBufRet.f32 %9341, 0
  %9343 = extractvalue %dx.types.CBufRet.f32 %9341, 1
  %9344 = fadd fast float %9343, %9342
  %9345 = call float @dx.op.unary.f32(i32 7, float %9344)  ; Saturate(value)
  %9346 = extractvalue %dx.types.CBufRet.f32 %9341, 2
  %9347 = extractvalue %dx.types.CBufRet.f32 %9341, 3
  %9348 = fadd fast float %9347, %9346
  %9349 = call float @dx.op.unary.f32(i32 7, float %9348)  ; Saturate(value)
  %9350 = fmul fast float %9345, %9329
  %9351 = fmul fast float %9350, %9349
  br label %9352

; <label>:9352                                    ; preds = %9313, %9232, %9067, %9049, %9047
  %9353 = phi float [ %9076, %9067 ], [ %9235, %9232 ], [ %9317, %9313 ], [ 0.000000e+00, %9047 ], [ 0.000000e+00, %9049 ]
  %9354 = phi float [ %9110, %9067 ], [ %9269, %9232 ], [ %9351, %9313 ], [ 0.000000e+00, %9047 ], [ 0.000000e+00, %9049 ]
  %9355 = phi float [ %9097, %9067 ], [ %9256, %9232 ], [ %9338, %9313 ], [ 0.000000e+00, %9047 ], [ 0.000000e+00, %9049 ]
  %9356 = phi float [ %9098, %9067 ], [ %9257, %9232 ], [ %9339, %9313 ], [ 0.000000e+00, %9047 ], [ 0.000000e+00, %9049 ]
  %9357 = phi float [ %9099, %9067 ], [ %9258, %9232 ], [ %9340, %9313 ], [ 0.000000e+00, %9047 ], [ 0.000000e+00, %9049 ]
  %9358 = fmul fast float %8990, %9354
  %9359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9360 = extractvalue %dx.types.CBufRet.f32 %9359, 2
  %9361 = fsub fast float %8997, %9360
  %9362 = fcmp fast olt float %9358, -2.000000e+01
  %9363 = call float @dx.op.unary.f32(i32 21, float %9358)  ; Exp(value)
  %9364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9365 = extractvalue %dx.types.CBufRet.f32 %9364, 2
  %9366 = extractvalue %dx.types.CBufRet.f32 %9364, 3
  %9367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %9368 = extractvalue %dx.types.CBufRet.f32 %9367, 2
  %9369 = fmul fast float %9366, %9361
  %9370 = call float @dx.op.unary.f32(i32 7, float %9369)  ; Saturate(value)
  %9371 = fsub fast float 1.000000e+00, %9370
  %9372 = fmul fast float %8982, 5.000000e-01
  %9373 = fadd fast float %9372, 5.000000e-01
  %9374 = call float @dx.op.unary.f32(i32 7, float %9373)  ; Saturate(value)
  %9375 = fsub fast float 1.000000e+00, %9374
  %9376 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9371)  ; FMax(a,b)
  %9377 = fdiv fast float %9375, %9376
  %9378 = fsub fast float %9361, %8939
  %9379 = call float @dx.op.unary.f32(i32 6, float %9378)  ; FAbs(value)
  %9380 = fmul fast float %9379, %9365
  %9381 = call float @dx.op.unary.f32(i32 7, float %9377)  ; Saturate(value)
  %9382 = fsub fast float 1.000000e+00, %9380
  %9383 = fmul fast float %9382, %9381
  %9384 = fadd fast float %9383, %9380
  %9385 = fmul fast float %9368, %9361
  %9386 = call float @dx.op.unary.f32(i32 7, float %9385)  ; Saturate(value)
  %9387 = fsub fast float 1.000000e+00, %9384
  %9388 = fmul fast float %9387, %9386
  %9389 = fadd fast float %9388, %9384
  %9390 = call float @dx.op.unary.f32(i32 7, float %9389)  ; Saturate(value)
  %9391 = fadd fast float %9363, -1.000000e+00
  %9392 = select i1 %9362, float -1.000000e+00, float %9391
  %9393 = fmul fast float %9390, %9392
  %9394 = fadd fast float %9393, 1.000000e+00
  %9395 = fsub fast float -0.000000e+00, %9393
  %9396 = fmul fast float %9355, %9395
  %9397 = fmul fast float %9356, %9395
  %9398 = fmul fast float %9357, %9395
  br label %9399

; <label>:9399                                    ; preds = %9352, %8948
  %9400 = phi float [ %9353, %9352 ], [ 0.000000e+00, %8948 ]
  %9401 = phi float [ %9394, %9352 ], [ 1.000000e+00, %8948 ]
  %9402 = phi float [ %9396, %9352 ], [ 0.000000e+00, %8948 ]
  %9403 = phi float [ %9397, %9352 ], [ 0.000000e+00, %8948 ]
  %9404 = phi float [ %9398, %9352 ], [ 0.000000e+00, %8948 ]
  %9405 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9406 = extractvalue %dx.types.CBufRet.f32 %9405, 1
  %9407 = fsub fast float 1.000000e+00, %9401
  %9408 = fmul fast float %9407, %8983
  %9409 = fmul fast float %9408, %9406
  %9410 = fsub fast float %8983, %9409
  br i1 %8976, label %9411, label %9440, !dx.controlflow.hints !161

; <label>:9411                                    ; preds = %9399
  %9412 = fmul fast float %8984, %8973
  %9413 = fadd fast float %9412, %8974
  %9414 = call float @dx.op.unary.f32(i32 7, float %9413)  ; Saturate(value)
  %9415 = fmul fast float %8955, %9410
  %9416 = fsub fast float -0.000000e+00, %9415
  %9417 = fmul fast float %8956, %9410
  %9418 = fsub fast float -0.000000e+00, %9417
  %9419 = call float @dx.op.unary.f32(i32 21, float %9416)  ; Exp(value)
  %9420 = call float @dx.op.unary.f32(i32 21, float %9418)  ; Exp(value)
  %9421 = call float @dx.op.binary.f32(i32 35, float %8963, float %9419)  ; FMax(a,b)
  %9422 = call float @dx.op.binary.f32(i32 35, float %8963, float %9420)  ; FMax(a,b)
  %9423 = fsub fast float %9422, %9421
  %9424 = fmul fast float %9423, %9414
  %9425 = fadd fast float %9424, %9421
  %9426 = call float @dx.op.unary.f32(i32 7, float %9425)  ; Saturate(value)
  %9427 = fsub fast float %8960, %8965
  %9428 = fsub fast float %8961, %8966
  %9429 = fsub fast float %8962, %8967
  %9430 = fmul fast float %9414, %9427
  %9431 = fmul fast float %9414, %9428
  %9432 = fmul fast float %9414, %9429
  %9433 = fadd fast float %9430, %8965
  %9434 = fadd fast float %9431, %8966
  %9435 = fadd fast float %9432, %8967
  %9436 = fsub fast float 1.000000e+00, %9426
  %9437 = fmul fast float %9436, %9433
  %9438 = fmul fast float %9436, %9434
  %9439 = fmul fast float %9436, %9435
  br label %9499

; <label>:9440                                    ; preds = %9399
  %9441 = fmul fast float %9410, %8972
  %9442 = call float @dx.op.unary.f32(i32 7, float %9441)  ; Saturate(value)
  %9443 = fsub fast float 2.000000e+00, %9442
  %9444 = fmul fast float %9442, 9.921875e-01
  %9445 = fmul fast float %9444, %9443
  %9446 = fadd fast float %9445, 3.906250e-03
  %9447 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %46, float %9446, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9448 = extractvalue %dx.types.ResRet.f32 %9447, 0
  %9449 = fsub fast float %9442, %9448
  %9450 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9449)  ; FMax(a,b)
  %9451 = fmul fast float %8958, %8939
  %9452 = call float @dx.op.unary.f32(i32 6, float %9451)  ; FAbs(value)
  %9453 = fcmp fast ogt float %9452, 0x3EB0C6F7A0000000
  br i1 %9453, label %9454, label %9460, !dx.controlflow.hints !162

; <label>:9454                                    ; preds = %9440
  %9455 = fmul fast float %9451, 0xBFF7154760000000
  %9456 = call float @dx.op.unary.f32(i32 21, float %9455)  ; Exp(value)
  %9457 = fsub fast float 1.000000e+00, %9456
  %9458 = fdiv fast float %9457, %9451
  %9459 = fmul fast float %9458, %8968
  br label %9460

; <label>:9460                                    ; preds = %9454, %9440
  %9461 = phi float [ %9459, %9454 ], [ %8968, %9440 ]
  %9462 = fadd fast float %9461, %8970
  %9463 = fmul fast float %9462, %9450
  %9464 = fmul fast float %8955, %9463
  %9465 = fsub fast float -0.000000e+00, %9464
  %9466 = fmul fast float %8956, %9463
  %9467 = fsub fast float -0.000000e+00, %9466
  %9468 = fmul fast float %8957, %9463
  %9469 = fsub fast float -0.000000e+00, %9468
  %9470 = call float @dx.op.unary.f32(i32 21, float %9465)  ; Exp(value)
  %9471 = call float @dx.op.unary.f32(i32 21, float %9467)  ; Exp(value)
  %9472 = call float @dx.op.unary.f32(i32 21, float %9469)  ; Exp(value)
  %9473 = fmul fast float %8984, %8984
  %9474 = fadd fast float %9473, 1.000000e+00
  %9475 = fmul fast float %9474, 0x3FAE8EC8A0000000
  %9476 = fmul fast float %9475, %8965
  %9477 = fmul fast float %9475, %8966
  %9478 = fmul fast float %9475, %8967
  %9479 = fmul fast float %8984, %8963
  %9480 = fsub fast float 1.000000e+00, %9479
  %9481 = fmul fast float %8963, %8963
  %9482 = fsub fast float 1.000000e+00, %9481
  %9483 = fmul fast float %9482, 0x3FB45F3060000000
  %9484 = fmul fast float %9480, %9480
  %9485 = fdiv fast float 1.000000e+00, %9484
  %9486 = fmul fast float %9483, %9485
  %9487 = fmul fast float %9486, %8960
  %9488 = fmul fast float %9486, %8961
  %9489 = fmul fast float %9486, %8962
  %9490 = fadd fast float %9487, %9476
  %9491 = fadd fast float %9488, %9477
  %9492 = fadd fast float %9489, %9478
  %9493 = fsub fast float 1.000000e+00, %9470
  %9494 = fsub fast float 1.000000e+00, %9471
  %9495 = fsub fast float 1.000000e+00, %9472
  %9496 = fmul fast float %9490, %9493
  %9497 = fmul fast float %9491, %9494
  %9498 = fmul fast float %9492, %9495
  br label %9499

; <label>:9499                                    ; preds = %9460, %9411
  %9500 = phi float [ %9437, %9411 ], [ %9496, %9460 ]
  %9501 = phi float [ %9438, %9411 ], [ %9497, %9460 ]
  %9502 = phi float [ %9439, %9411 ], [ %9498, %9460 ]
  %9503 = phi float [ %9426, %9411 ], [ %9470, %9460 ]
  %9504 = phi float [ %9426, %9411 ], [ %9471, %9460 ]
  %9505 = phi float [ %9426, %9411 ], [ %9472, %9460 ]
  br i1 %8992, label %9506, label %9704, !dx.controlflow.hints !163

; <label>:9506                                    ; preds = %9499
  %9507 = extractvalue %dx.types.CBufRet.f32 %9405, 0
  %9508 = fmul fast float %9507, %9407
  %9509 = fsub fast float %9402, %9500
  %9510 = fsub fast float %9403, %9501
  %9511 = fsub fast float %9404, %9502
  %9512 = fmul fast float %9508, %9509
  %9513 = fmul fast float %9508, %9510
  %9514 = fmul fast float %9508, %9511
  %9515 = fadd fast float %9512, %9500
  %9516 = fadd fast float %9513, %9501
  %9517 = fadd fast float %9514, %9502
  %9518 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9503)  ; FMax(a,b)
  %9519 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9504)  ; FMax(a,b)
  %9520 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9505)  ; FMax(a,b)
  %9521 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9401)  ; FMax(a,b)
  %9522 = call float @dx.op.binary.f32(i32 35, float %9400, float %9410)  ; FMax(a,b)
  %9523 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9522)  ; FMax(a,b)
  %9524 = fdiv fast float %9400, %9523
  %9525 = call float @dx.op.unary.f32(i32 7, float %9524)  ; Saturate(value)
  %9526 = fdiv fast float %9410, %9523
  %9527 = call float @dx.op.unary.f32(i32 7, float %9526)  ; Saturate(value)
  %9528 = fcmp fast une float %9521, 1.000000e+00
  br i1 %9528, label %9529, label %9542, !dx.controlflow.hints !164

; <label>:9529                                    ; preds = %9506
  %9530 = call float @dx.op.unary.f32(i32 23, float %9521)  ; Log(value)
  %9531 = fmul fast float %9530, 0x3FE62E4300000000
  %9532 = fmul fast float %9402, %9531
  %9533 = fsub fast float -0.000000e+00, %9532
  %9534 = fmul fast float %9403, %9531
  %9535 = fsub fast float -0.000000e+00, %9534
  %9536 = fmul fast float %9404, %9531
  %9537 = fsub fast float -0.000000e+00, %9536
  %9538 = fsub fast float 1.000000e+00, %9521
  %9539 = fdiv fast float %9533, %9538
  %9540 = fdiv fast float %9535, %9538
  %9541 = fdiv fast float %9537, %9538
  br label %9542

; <label>:9542                                    ; preds = %9529, %9506
  %9543 = phi float [ %9539, %9529 ], [ %9402, %9506 ]
  %9544 = phi float [ %9540, %9529 ], [ %9403, %9506 ]
  %9545 = phi float [ %9541, %9529 ], [ %9404, %9506 ]
  %9546 = phi float [ %9531, %9529 ], [ 0.000000e+00, %9506 ]
  %9547 = fcmp fast une float %9518, 1.000000e+00
  br i1 %9547, label %9548, label %9555, !dx.controlflow.hints !165

; <label>:9548                                    ; preds = %9542
  %9549 = call float @dx.op.unary.f32(i32 23, float %9518)  ; Log(value)
  %9550 = fmul fast float %9549, 0x3FE62E4300000000
  %9551 = fmul fast float %9515, %9550
  %9552 = fsub fast float -0.000000e+00, %9551
  %9553 = fsub fast float 1.000000e+00, %9518
  %9554 = fdiv fast float %9552, %9553
  br label %9555

; <label>:9555                                    ; preds = %9548, %9542
  %9556 = phi float [ %9554, %9548 ], [ %9515, %9542 ]
  %9557 = phi float [ %9550, %9548 ], [ 0.000000e+00, %9542 ]
  %9558 = fcmp fast une float %9519, 1.000000e+00
  br i1 %9558, label %9559, label %9566, !dx.controlflow.hints !165

; <label>:9559                                    ; preds = %9555
  %9560 = call float @dx.op.unary.f32(i32 23, float %9519)  ; Log(value)
  %9561 = fmul fast float %9560, 0x3FE62E4300000000
  %9562 = fmul fast float %9516, %9561
  %9563 = fsub fast float -0.000000e+00, %9562
  %9564 = fsub fast float 1.000000e+00, %9519
  %9565 = fdiv fast float %9563, %9564
  br label %9566

; <label>:9566                                    ; preds = %9559, %9555
  %9567 = phi float [ %9565, %9559 ], [ %9516, %9555 ]
  %9568 = phi float [ %9561, %9559 ], [ 0.000000e+00, %9555 ]
  %9569 = fcmp fast une float %9520, 1.000000e+00
  br i1 %9569, label %9570, label %9577, !dx.controlflow.hints !165

; <label>:9570                                    ; preds = %9566
  %9571 = call float @dx.op.unary.f32(i32 23, float %9520)  ; Log(value)
  %9572 = fmul fast float %9571, 0x3FE62E4300000000
  %9573 = fmul fast float %9517, %9572
  %9574 = fsub fast float -0.000000e+00, %9573
  %9575 = fsub fast float 1.000000e+00, %9520
  %9576 = fdiv fast float %9574, %9575
  br label %9577

; <label>:9577                                    ; preds = %9570, %9566
  %9578 = phi float [ %9576, %9570 ], [ %9517, %9566 ]
  %9579 = phi float [ %9572, %9570 ], [ 0.000000e+00, %9566 ]
  %9580 = fmul fast float %9543, %9527
  %9581 = fmul fast float %9544, %9527
  %9582 = fmul fast float %9545, %9527
  %9583 = fmul fast float %9546, %9527
  %9584 = fmul fast float %9556, %9525
  %9585 = fmul fast float %9567, %9525
  %9586 = fmul fast float %9578, %9525
  %9587 = fmul fast float %9557, %9525
  %9588 = fmul fast float %9568, %9525
  %9589 = fmul fast float %9579, %9525
  %9590 = fadd fast float %9584, %9580
  %9591 = fadd fast float %9585, %9581
  %9592 = fadd fast float %9586, %9582
  %9593 = fadd fast float %9587, %9583
  %9594 = fadd fast float %9588, %9583
  %9595 = fadd fast float %9589, %9583
  %9596 = fcmp fast une float %9593, 0.000000e+00
  br i1 %9596, label %9597, label %9604, !dx.controlflow.hints !166

; <label>:9597                                    ; preds = %9577
  %9598 = fmul fast float %9593, 0x3FF7154760000000
  %9599 = call float @dx.op.unary.f32(i32 21, float %9598)  ; Exp(value)
  %9600 = fsub fast float 1.000000e+00, %9599
  %9601 = fmul fast float %9590, %9600
  %9602 = fsub fast float -0.000000e+00, %9601
  %9603 = fdiv fast float %9602, %9593
  br label %9604

; <label>:9604                                    ; preds = %9597, %9577
  %9605 = phi float [ %9599, %9597 ], [ 1.000000e+00, %9577 ]
  %9606 = phi float [ %9603, %9597 ], [ %9590, %9577 ]
  %9607 = fcmp fast une float %9594, 0.000000e+00
  br i1 %9607, label %9608, label %9615, !dx.controlflow.hints !166

; <label>:9608                                    ; preds = %9604
  %9609 = fmul fast float %9594, 0x3FF7154760000000
  %9610 = call float @dx.op.unary.f32(i32 21, float %9609)  ; Exp(value)
  %9611 = fsub fast float 1.000000e+00, %9610
  %9612 = fmul fast float %9591, %9611
  %9613 = fsub fast float -0.000000e+00, %9612
  %9614 = fdiv fast float %9613, %9594
  br label %9615

; <label>:9615                                    ; preds = %9608, %9604
  %9616 = phi float [ %9610, %9608 ], [ 1.000000e+00, %9604 ]
  %9617 = phi float [ %9614, %9608 ], [ %9591, %9604 ]
  %9618 = fcmp fast une float %9595, 0.000000e+00
  br i1 %9618, label %9619, label %9626, !dx.controlflow.hints !166

; <label>:9619                                    ; preds = %9615
  %9620 = fmul fast float %9595, 0x3FF7154760000000
  %9621 = call float @dx.op.unary.f32(i32 21, float %9620)  ; Exp(value)
  %9622 = fsub fast float 1.000000e+00, %9621
  %9623 = fmul fast float %9592, %9622
  %9624 = fsub fast float -0.000000e+00, %9623
  %9625 = fdiv fast float %9624, %9595
  br label %9626

; <label>:9626                                    ; preds = %9619, %9615
  %9627 = phi float [ %9621, %9619 ], [ 1.000000e+00, %9615 ]
  %9628 = phi float [ %9625, %9619 ], [ %9592, %9615 ]
  %9629 = fcmp fast ogt float %9525, %9527
  br i1 %9629, label %9630, label %9650

; <label>:9630                                    ; preds = %9626
  %9631 = fsub fast float 1.000000e+00, %9527
  %9632 = fmul fast float %9543, %9631
  %9633 = fmul fast float %9544, %9631
  %9634 = fmul fast float %9545, %9631
  %9635 = fmul fast float %9546, %9631
  %9636 = fcmp fast une float %9635, 0.000000e+00
  br i1 %9636, label %9637, label %9688, !dx.controlflow.hints !167

; <label>:9637                                    ; preds = %9630
  %9638 = fmul fast float %9635, 0x3FF7154760000000
  %9639 = call float @dx.op.unary.f32(i32 21, float %9638)  ; Exp(value)
  %9640 = fsub fast float 1.000000e+00, %9639
  %9641 = fmul fast float %9632, %9640
  %9642 = fsub fast float -0.000000e+00, %9641
  %9643 = fmul fast float %9633, %9640
  %9644 = fsub fast float -0.000000e+00, %9643
  %9645 = fmul fast float %9634, %9640
  %9646 = fsub fast float -0.000000e+00, %9645
  %9647 = fdiv fast float %9642, %9635
  %9648 = fdiv fast float %9644, %9635
  %9649 = fdiv fast float %9646, %9635
  br label %9688

; <label>:9650                                    ; preds = %9626
  %9651 = fsub fast float 1.000000e+00, %9525
  %9652 = fmul fast float %9556, %9651
  %9653 = fmul fast float %9567, %9651
  %9654 = fmul fast float %9578, %9651
  %9655 = fmul fast float %9557, %9651
  %9656 = fmul fast float %9568, %9651
  %9657 = fmul fast float %9579, %9651
  %9658 = fcmp fast une float %9655, 0.000000e+00
  br i1 %9658, label %9659, label %9666, !dx.controlflow.hints !166

; <label>:9659                                    ; preds = %9650
  %9660 = fmul fast float %9655, 0x3FF7154760000000
  %9661 = call float @dx.op.unary.f32(i32 21, float %9660)  ; Exp(value)
  %9662 = fsub fast float 1.000000e+00, %9661
  %9663 = fmul fast float %9652, %9662
  %9664 = fsub fast float -0.000000e+00, %9663
  %9665 = fdiv fast float %9664, %9655
  br label %9666

; <label>:9666                                    ; preds = %9659, %9650
  %9667 = phi float [ %9665, %9659 ], [ %9652, %9650 ]
  %9668 = phi float [ %9661, %9659 ], [ 1.000000e+00, %9650 ]
  %9669 = fcmp fast une float %9656, 0.000000e+00
  br i1 %9669, label %9670, label %9677, !dx.controlflow.hints !166

; <label>:9670                                    ; preds = %9666
  %9671 = fmul fast float %9656, 0x3FF7154760000000
  %9672 = call float @dx.op.unary.f32(i32 21, float %9671)  ; Exp(value)
  %9673 = fsub fast float 1.000000e+00, %9672
  %9674 = fmul fast float %9653, %9673
  %9675 = fsub fast float -0.000000e+00, %9674
  %9676 = fdiv fast float %9675, %9656
  br label %9677

; <label>:9677                                    ; preds = %9670, %9666
  %9678 = phi float [ %9676, %9670 ], [ %9653, %9666 ]
  %9679 = phi float [ %9672, %9670 ], [ 1.000000e+00, %9666 ]
  %9680 = fcmp fast une float %9657, 0.000000e+00
  br i1 %9680, label %9681, label %9688, !dx.controlflow.hints !166

; <label>:9681                                    ; preds = %9677
  %9682 = fmul fast float %9657, 0x3FF7154760000000
  %9683 = call float @dx.op.unary.f32(i32 21, float %9682)  ; Exp(value)
  %9684 = fsub fast float 1.000000e+00, %9683
  %9685 = fmul fast float %9654, %9684
  %9686 = fsub fast float -0.000000e+00, %9685
  %9687 = fdiv fast float %9686, %9657
  br label %9688

; <label>:9688                                    ; preds = %9681, %9677, %9637, %9630
  %9689 = phi float [ %9687, %9681 ], [ %9649, %9637 ], [ %9634, %9630 ], [ %9654, %9677 ]
  %9690 = phi float [ %9678, %9681 ], [ %9648, %9637 ], [ %9633, %9630 ], [ %9678, %9677 ]
  %9691 = phi float [ %9667, %9681 ], [ %9647, %9637 ], [ %9632, %9630 ], [ %9667, %9677 ]
  %9692 = phi float [ %9683, %9681 ], [ %9639, %9637 ], [ 1.000000e+00, %9630 ], [ 1.000000e+00, %9677 ]
  %9693 = phi float [ %9679, %9681 ], [ %9639, %9637 ], [ 1.000000e+00, %9630 ], [ %9679, %9677 ]
  %9694 = phi float [ %9668, %9681 ], [ %9639, %9637 ], [ 1.000000e+00, %9630 ], [ %9668, %9677 ]
  %9695 = fmul fast float %9694, %9606
  %9696 = fmul fast float %9693, %9617
  %9697 = fmul fast float %9692, %9628
  %9698 = fadd fast float %9695, %9691
  %9699 = fadd fast float %9696, %9690
  %9700 = fadd fast float %9697, %9689
  %9701 = fmul fast float %9694, %9605
  %9702 = fmul fast float %9693, %9616
  %9703 = fmul fast float %9692, %9627
  br label %9704

; <label>:9704                                    ; preds = %9688, %9499
  %9705 = phi float [ %9703, %9688 ], [ %9505, %9499 ]
  %9706 = phi float [ %9702, %9688 ], [ %9504, %9499 ]
  %9707 = phi float [ %9701, %9688 ], [ %9503, %9499 ]
  %9708 = phi float [ %9700, %9688 ], [ %9502, %9499 ]
  %9709 = phi float [ %9699, %9688 ], [ %9501, %9499 ]
  %9710 = phi float [ %9698, %9688 ], [ %9500, %9499 ]
  %9711 = fmul fast float %9710, %8656
  %9712 = fmul fast float %9709, %8656
  %9713 = fmul fast float %9708, %8656
  %9714 = fmul fast float %9707, %8947
  %9715 = call float @dx.op.dot3.f32(i32 55, float %9707, float %9706, float %9705, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9716 = call float @dx.op.dot3.f32(i32 55, float %9711, float %9712, float %9713, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9717 = select i1 %228, float %9715, float %9707
  %9718 = select i1 %228, float %9715, float %9706
  %9719 = select i1 %228, float 1.000000e+00, float %9705
  %9720 = select i1 %228, float %9716, float %9711
  %9721 = select i1 %228, float 0.000000e+00, float %9712
  %9722 = select i1 %228, float 0.000000e+00, float %9713
  %9723 = fmul fast float %9717, %8941
  %9724 = fmul fast float %9718, %8942
  %9725 = fmul fast float %9719, %8943
  %9726 = fadd fast float %9723, %9720
  %9727 = fadd fast float %9724, %9721
  %9728 = fadd fast float %9722, %9725
  %9729 = fmul fast float %9717, %8944
  %9730 = fmul fast float %9718, %8945
  %9731 = fmul fast float %9719, %8946
  %9732 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9733 = extractvalue %dx.types.CBufRet.i32 %9732, 0
  %9734 = icmp eq i32 %9733, 0
  br i1 %9734, label %10102, label %9735, !dx.controlflow.hints !168

; <label>:9735                                    ; preds = %9704
  %9736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %9737 = extractvalue %dx.types.CBufRet.f32 %9736, 2
  %9738 = extractvalue %dx.types.CBufRet.f32 %9736, 3
  %9739 = fmul fast float %9737, %104
  %9740 = fmul fast float %9738, %105
  %9741 = fmul fast float %9739, 2.000000e+00
  %9742 = fmul fast float %9740, 2.000000e+00
  %9743 = fsub fast float 1.000000e+00, %9741
  %9744 = fsub fast float 1.000000e+00, %9742
  %9745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9746 = extractvalue %dx.types.CBufRet.f32 %9745, 0
  %9747 = extractvalue %dx.types.CBufRet.f32 %9745, 1
  %9748 = extractvalue %dx.types.CBufRet.f32 %9745, 2
  %9749 = fmul fast float %9743, %9746
  %9750 = fmul fast float %9743, %9747
  %9751 = fmul fast float %9743, %9748
  %9752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9753 = extractvalue %dx.types.CBufRet.f32 %9752, 0
  %9754 = extractvalue %dx.types.CBufRet.f32 %9752, 1
  %9755 = extractvalue %dx.types.CBufRet.f32 %9752, 2
  %9756 = fmul fast float %9744, %9753
  %9757 = fmul fast float %9744, %9754
  %9758 = fmul fast float %9744, %9755
  %9759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9760 = extractvalue %dx.types.CBufRet.f32 %9759, 0
  %9761 = extractvalue %dx.types.CBufRet.f32 %9759, 1
  %9762 = extractvalue %dx.types.CBufRet.f32 %9759, 2
  %9763 = fadd fast float %9756, %9760
  %9764 = fadd fast float %9763, %9749
  %9765 = fadd fast float %9757, %9761
  %9766 = fadd fast float %9765, %9750
  %9767 = fadd fast float %9758, %9762
  %9768 = fadd fast float %9767, %9751
  %9769 = fmul fast float %9764, %8940
  %9770 = fmul fast float %9766, %8940
  %9771 = fmul fast float %9768, %8940
  %9772 = fmul fast float %9769, %9769
  %9773 = fmul fast float %9770, %9770
  %9774 = fadd fast float %9772, %9773
  %9775 = fmul fast float %9771, %9771
  %9776 = fadd fast float %9774, %9775
  %9777 = call float @dx.op.unary.f32(i32 24, float %9776)  ; Sqrt(value)
  %9778 = extractvalue %dx.types.CBufRet.f32 %8667, 0
  %9779 = fsub fast float %9777, %9778
  %9780 = extractvalue %dx.types.CBufRet.f32 %8667, 2
  %9781 = fmul fast float %9779, %9780
  %9782 = call float @dx.op.unary.f32(i32 7, float %9781)  ; Saturate(value)
  %9783 = fadd fast float %9782, -5.000000e-01
  %9784 = fmul fast float %9783, 2.000000e+00
  %9785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9786 = extractvalue %dx.types.CBufRet.f32 %9785, 2
  %9787 = call float @dx.op.binary.f32(i32 36, float %9786, float %9784)  ; FMin(a,b)
  %9788 = fsub fast float -0.000000e+00, %9786
  %9789 = fcmp fast ogt float %9787, %9788
  br i1 %9789, label %9790, label %10102, !dx.controlflow.hints !169

; <label>:9790                                    ; preds = %9735
  %9791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9792 = extractvalue %dx.types.CBufRet.f32 %9791, 3
  %9793 = fcmp fast ogt float %9792, 0.000000e+00
  br i1 %9793, label %9794, label %9869, !dx.controlflow.hints !170

; <label>:9794                                    ; preds = %9790
  %9795 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %28, i32 0)  ; GetDimensions(handle,mipLevel)
  %9796 = extractvalue %dx.types.Dimensions %9795, 0
  %9797 = sitofp i32 %9796 to float
  %9798 = extractvalue %dx.types.Dimensions %9795, 1
  %9799 = sitofp i32 %9798 to float
  %9800 = fmul fast float %9739, %9797
  %9801 = fmul fast float %9740, %9799
  %9802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9803 = extractvalue %dx.types.CBufRet.f32 %9802, 1
  %9804 = fsub fast float -0.000000e+00, %9803
  %9805 = fptoui float %9804 to i32
  %9806 = fptoui float %9800 to i32
  %9807 = fptoui float %9801 to i32
  %9808 = and i32 %9805, 31
  %9809 = lshr i32 %9806, %9808
  %9810 = lshr i32 %9807, %9808
  %9811 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %28, i32 %9805, i32 %9809, i32 %9810, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9812 = extractvalue %dx.types.ResRet.f32 %9811, 0
  %9813 = fcmp fast olt float %9812, -1.000000e+00
  %9814 = fcmp fast ogt float %9812, -1.000000e+00
  %9815 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9816 = extractvalue %dx.types.CBufRet.f32 %9815, 1
  %9817 = select i1 %9814, float %9816, float 1.000000e+00
  %9818 = fadd fast float %9812, 1.000000e+00
  %9819 = fmul fast float %9817, %9818
  %9820 = call float @dx.op.unary.f32(i32 6, float %9819)  ; FAbs(value)
  %9821 = extractvalue %dx.types.CBufRet.f32 %9815, 3
  %9822 = fcmp fast oge float %9820, %9821
  %9823 = select i1 %9822, float 0x4197782600000000, float %9820
  %9824 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9825 = extractvalue %dx.types.CBufRet.f32 %9824, 0
  %9826 = extractvalue %dx.types.CBufRet.f32 %9824, 1
  %9827 = extractvalue %dx.types.CBufRet.f32 %9824, 2
  %9828 = select i1 %9813, float %9825, float %9746
  %9829 = select i1 %9813, float %9826, float %9747
  %9830 = select i1 %9813, float %9827, float %9748
  %9831 = fmul fast float %9828, %9743
  %9832 = fmul fast float %9829, %9743
  %9833 = fmul fast float %9830, %9743
  %9834 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9835 = extractvalue %dx.types.CBufRet.f32 %9834, 0
  %9836 = extractvalue %dx.types.CBufRet.f32 %9834, 1
  %9837 = extractvalue %dx.types.CBufRet.f32 %9834, 2
  %9838 = select i1 %9813, float %9835, float %9753
  %9839 = select i1 %9813, float %9836, float %9754
  %9840 = select i1 %9813, float %9837, float %9755
  %9841 = fmul fast float %9838, %9744
  %9842 = fmul fast float %9839, %9744
  %9843 = fmul fast float %9840, %9744
  %9844 = fadd fast float %9841, %9831
  %9845 = fadd fast float %9842, %9832
  %9846 = fadd fast float %9843, %9833
  %9847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9848 = extractvalue %dx.types.CBufRet.f32 %9847, 0
  %9849 = extractvalue %dx.types.CBufRet.f32 %9847, 1
  %9850 = extractvalue %dx.types.CBufRet.f32 %9847, 2
  %9851 = select i1 %9813, float %9848, float %9760
  %9852 = select i1 %9813, float %9849, float %9761
  %9853 = select i1 %9813, float %9850, float %9762
  %9854 = fadd fast float %9844, %9851
  %9855 = fadd fast float %9845, %9852
  %9856 = fadd fast float %9846, %9853
  %9857 = fmul fast float %9854, %9823
  %9858 = fmul fast float %9855, %9823
  %9859 = fmul fast float %9856, %9823
  %9860 = fmul fast float %9857, %9857
  %9861 = fmul fast float %9858, %9858
  %9862 = fadd fast float %9860, %9861
  %9863 = fmul fast float %9859, %9859
  %9864 = fadd fast float %9862, %9863
  %9865 = call float @dx.op.unary.f32(i32 24, float %9864)  ; Sqrt(value)
  %9866 = fsub fast float %9865, %9778
  %9867 = fmul fast float %9866, %9780
  %9868 = call float @dx.op.unary.f32(i32 7, float %9867)  ; Saturate(value)
  br label %9869

; <label>:9869                                    ; preds = %9794, %9790
  %9870 = phi float [ %9868, %9794 ], [ 1.000000e+00, %9790 ]
  %9871 = fmul fast float %9787, 5.000000e-01
  %9872 = fadd fast float %9871, 5.000000e-01
  %9873 = call float @dx.op.unary.f32(i32 22, float %9872)  ; Frc(value)
  %9874 = call float @dx.op.unary.f32(i32 27, float %9873)  ; Round_ni(value)
  %9875 = call float @dx.op.unary.f32(i32 22, float %9873)  ; Frc(value)
  %9876 = fmul fast float %9875, 2.000000e+00
  %9877 = fadd fast float %9876, -1.000000e+00
  %9878 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %46, float %9739, float %9740, float %9874, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9879 = extractvalue %dx.types.ResRet.f32 %9878, 0
  %9880 = extractvalue %dx.types.ResRet.f32 %9878, 1
  %9881 = extractvalue %dx.types.ResRet.f32 %9878, 2
  %9882 = extractvalue %dx.types.ResRet.f32 %9878, 3
  %9883 = fadd fast float %9879, -5.000000e-01
  %9884 = fadd fast float %9881, -5.000000e-01
  %9885 = fmul fast float %9883, 0xBFD5555560000000
  %9886 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9884, float %9885)  ; FMad(a,b,c)
  %9887 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9880, float 0.000000e+00)  ; FMad(a,b,c)
  %9888 = fadd fast float %9887, %9882
  %9889 = fmul fast float %9883, -7.500000e-01
  %9890 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9884, float %9889)  ; FMad(a,b,c)
  %9891 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9880, float 0.000000e+00)  ; FMad(a,b,c)
  %9892 = fadd fast float %9891, %9882
  %9893 = call float @dx.op.binary.f32(i32 35, float %9886, float -1.000000e+00)  ; FMax(a,b)
  %9894 = call float @dx.op.binary.f32(i32 35, float %9888, float -1.000000e+00)  ; FMax(a,b)
  %9895 = call float @dx.op.binary.f32(i32 35, float %9890, float -1.000000e+00)  ; FMax(a,b)
  %9896 = call float @dx.op.binary.f32(i32 35, float %9892, float -1.000000e+00)  ; FMax(a,b)
  %9897 = call float @dx.op.binary.f32(i32 36, float %9893, float 1.000000e+00)  ; FMin(a,b)
  %9898 = call float @dx.op.binary.f32(i32 36, float %9894, float 1.000000e+00)  ; FMin(a,b)
  %9899 = call float @dx.op.binary.f32(i32 36, float %9895, float 1.000000e+00)  ; FMin(a,b)
  %9900 = call float @dx.op.binary.f32(i32 36, float %9896, float 1.000000e+00)  ; FMin(a,b)
  %9901 = fcmp fast olt float %9897, 0x3FEFFF8020000000
  br i1 %9901, label %9902, label %10017, !dx.controlflow.hints !171

; <label>:9902                                    ; preds = %9869
  %9903 = extractvalue %dx.types.CBufRet.f32 %9785, 3
  %9904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9905 = extractvalue %dx.types.CBufRet.f32 %9904, 0
  %9906 = extractvalue %dx.types.CBufRet.f32 %9904, 1
  %9907 = extractvalue %dx.types.CBufRet.f32 %9904, 2
  %9908 = extractvalue %dx.types.CBufRet.f32 %9904, 3
  %9909 = fsub fast float %9905, %9897
  %9910 = fsub fast float %9906, %9898
  %9911 = fsub fast float %9907, %9899
  %9912 = fsub fast float %9908, %9900
  %9913 = fmul fast float %9909, %9903
  %9914 = fmul fast float %9910, %9903
  %9915 = fmul fast float %9911, %9903
  %9916 = fmul fast float %9912, %9903
  %9917 = fadd fast float %9913, %9897
  %9918 = fadd fast float %9914, %9898
  %9919 = fsub fast float -0.000000e+00, %9918
  %9920 = fadd fast float %9915, %9899
  %9921 = fadd fast float %9916, %9900
  %9922 = fmul fast float %9917, %9917
  %9923 = fsub fast float %9918, %9922
  %9924 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9923)  ; FMax(a,b)
  %9925 = fdiv fast float 1.000000e+00, %9924
  %9926 = fmul fast float %9918, %9917
  %9927 = fsub fast float %9920, %9926
  %9928 = fsub fast float %9877, %9917
  %9929 = fmul fast float %9877, %9877
  %9930 = fsub fast float %9929, %9918
  %9931 = fmul fast float %9928, %9925
  %9932 = fmul fast float %9931, %9927
  %9933 = fsub fast float %9930, %9932
  %9934 = fmul fast float %9918, %9918
  %9935 = fsub fast float %9921, %9934
  %9936 = fmul fast float %9927, %9927
  %9937 = fmul fast float %9936, %9925
  %9938 = fsub fast float %9935, %9937
  %9939 = fdiv fast float %9933, %9938
  %9940 = fmul fast float %9927, %9939
  %9941 = fsub fast float %9928, %9940
  %9942 = fmul fast float %9941, %9925
  %9943 = fmul fast float %9942, %9917
  %9944 = fsub fast float 1.000000e+00, %9943
  %9945 = fmul fast float %9918, %9939
  %9946 = fsub fast float %9944, %9945
  %9947 = fmul fast float %9942, %9942
  %9948 = fmul fast float %9939, 4.000000e+00
  %9949 = fmul fast float %9948, %9946
  %9950 = fsub fast float %9947, %9949
  %9951 = call float @dx.op.unary.f32(i32 24, float %9950)  ; Sqrt(value)
  %9952 = fcmp fast oge float %9942, 0.000000e+00
  %9953 = fsub fast float -0.000000e+00, %9951
  %9954 = select i1 %9952, float %9953, float %9951
  %9955 = fsub fast float %9954, %9942
  %9956 = fdiv fast float %9955, %9939
  %9957 = fdiv fast float %9946, %9955
  %9958 = fmul fast float %9956, 5.000000e-01
  %9959 = fmul fast float %9957, 2.000000e+00
  %9960 = select i1 %9952, float %9958, float %9959
  %9961 = select i1 %9952, float %9959, float %9958
  %9962 = call float @dx.op.binary.f32(i32 35, float %9960, float %9961)  ; FMax(a,b)
  %9963 = call float @dx.op.binary.f32(i32 36, float %9960, float %9961)  ; FMin(a,b)
  %9964 = fcmp fast ogt float %9877, %9963
  br i1 %9964, label %9965, label %9975

; <label>:9965                                    ; preds = %9902
  %9966 = fsub fast float %9877, %9963
  %9967 = fsub fast float %9962, %9963
  %9968 = fmul fast float %9966, %9967
  %9969 = fmul fast float %9962, %9877
  %9970 = fadd fast float %9962, %9877
  %9971 = fmul fast float %9970, %9917
  %9972 = fadd fast float %9969, %9918
  %9973 = fsub fast float %9972, %9971
  %9974 = fdiv fast float %9973, %9968
  br label %9975

; <label>:9975                                    ; preds = %9965, %9902
  %9976 = phi float [ %9974, %9965 ], [ 0.000000e+00, %9902 ]
  %9977 = fcmp fast ogt float %9877, %9962
  %9978 = fsub fast float %9877, %9962
  br i1 %9977, label %9979, label %9989

; <label>:9979                                    ; preds = %9975
  %9980 = fsub fast float %9962, %9963
  %9981 = fmul fast float %9980, %9978
  %9982 = fmul fast float %9963, %9877
  %9983 = fadd fast float %9963, %9877
  %9984 = fmul fast float %9983, %9917
  %9985 = fsub fast float %9919, %9982
  %9986 = fadd fast float %9985, %9984
  %9987 = fdiv fast float %9986, %9981
  %9988 = fadd fast float %9987, %9976
  br label %9989

; <label>:9989                                    ; preds = %9979, %9975
  %9990 = phi float [ %9988, %9979 ], [ %9976, %9975 ]
  %9991 = fsub fast float %9877, %9963
  %9992 = fmul fast float %9991, %9978
  %9993 = fmul fast float %9963, %9962
  %9994 = fadd fast float %9963, %9962
  %9995 = fmul fast float %9994, %9917
  %9996 = fadd fast float %9993, %9918
  %9997 = fsub fast float %9996, %9995
  %9998 = fdiv fast float %9997, %9992
  %9999 = call float @dx.op.unary.f32(i32 7, float %9990)  ; Saturate(value)
  %10000 = fcmp fast oeq float %8668, 0.000000e+00
  %10001 = extractvalue %dx.types.CBufRet.f32 %9785, 0
  %10002 = fcmp fast oeq float %10001, 0.000000e+00
  %10003 = or i1 %10000, %10002
  %10004 = fmul fast float %10001, 2.000000e+00
  %10005 = fadd fast float %9786, %9787
  %10006 = fdiv fast float %10005, %10004
  %10007 = call float @dx.op.unary.f32(i32 7, float %10006)  ; Saturate(value)
  %10008 = fmul fast float %10007, 2.000000e+00
  %10009 = fsub fast float 3.000000e+00, %10008
  %10010 = fmul fast float %10007, %10007
  %10011 = fmul fast float %10010, %10009
  %10012 = select i1 %10003, float 1.000000e+00, float %10011
  %10013 = fmul fast float %9998, %8668
  %10014 = fadd fast float %9999, %10013
  %10015 = call float @dx.op.unary.f32(i32 7, float %10014)  ; Saturate(value)
  %10016 = fmul fast float %10012, %10015
  br label %10017

; <label>:10017                                   ; preds = %9989, %9869
  %10018 = phi float [ %10016, %9989 ], [ 0.000000e+00, %9869 ]
  %10019 = fsub fast float 1.000000e+00, %10018
  %10020 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %46, float %9739, float %9740, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10021 = extractvalue %dx.types.ResRet.f32 %10020, 0
  %10022 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %10023 = extractvalue %dx.types.CBufRet.i32 %10022, 2
  %10024 = icmp eq i32 %10023, 0
  br i1 %10024, label %10030, label %10025

; <label>:10025                                   ; preds = %10017
  %10026 = call float @dx.op.unary.f32(i32 7, float %10018)  ; Saturate(value)
  %10027 = fadd fast float %10021, -1.000000e+00
  %10028 = fmul fast float %10026, %10027
  %10029 = fadd fast float %10028, 1.000000e+00
  br label %10030

; <label>:10030                                   ; preds = %10025, %10017
  %10031 = phi float [ %10029, %10025 ], [ %10019, %10017 ]
  br i1 %9793, label %10032, label %10050

; <label>:10032                                   ; preds = %10030
  %10033 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %10034 = extractvalue %dx.types.CBufRet.f32 %10033, 1
  %10035 = fsub fast float %9870, %10034
  %10036 = call float @dx.op.unary.f32(i32 7, float %10035)  ; Saturate(value)
  %10037 = fsub fast float %9870, %9792
  %10038 = call float @dx.op.unary.f32(i32 7, float %10037)  ; Saturate(value)
  %10039 = fsub fast float %10036, %10038
  %10040 = fsub fast float %9872, %10038
  %10041 = fdiv fast float %10040, %10039
  %10042 = call float @dx.op.unary.f32(i32 7, float %10041)  ; Saturate(value)
  %10043 = fmul fast float %10042, 2.000000e+00
  %10044 = fsub fast float 3.000000e+00, %10043
  %10045 = fsub fast float %10021, %10031
  %10046 = fmul fast float %10042, %10042
  %10047 = fmul fast float %10046, %10045
  %10048 = fmul fast float %10047, %10044
  %10049 = fadd fast float %10048, %10031
  br label %10050

; <label>:10050                                   ; preds = %10032, %10030
  %10051 = phi float [ %10049, %10032 ], [ %10031, %10030 ]
  %10052 = call float @dx.op.binary.f32(i32 35, float %10021, float %10051)  ; FMax(a,b)
  %10053 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %10054 = extractvalue %dx.types.CBufRet.i32 %10053, 2
  %10055 = and i32 %10054, 1
  %10056 = icmp eq i32 %10055, 0
  %10057 = fcmp fast une float %10052, 1.000000e+00
  %10058 = and i1 %10057, %10056
  br i1 %10058, label %10059, label %10078

; <label>:10059                                   ; preds = %10050
  %10060 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %46, float %9739, float %9740, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10061 = extractvalue %dx.types.ResRet.f32 %10060, 0
  %10062 = extractvalue %dx.types.ResRet.f32 %10060, 1
  %10063 = extractvalue %dx.types.ResRet.f32 %10060, 2
  %10064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10065 = extractvalue %dx.types.CBufRet.f32 %10064, 1
  %10066 = fmul fast float %10065, %10061
  %10067 = fmul fast float %10065, %10062
  %10068 = fmul fast float %10065, %10063
  %10069 = fcmp fast ogt float %10021, 0x3FEFFF2E40000000
  %10070 = fsub fast float 1.000000e+00, %10052
  %10071 = fsub fast float 1.000000e+00, %10021
  %10072 = fdiv fast float %10070, %10071
  %10073 = call float @dx.op.unary.f32(i32 7, float %10072)  ; Saturate(value)
  %10074 = select i1 %10069, float 0.000000e+00, float %10073
  %10075 = fmul fast float %10066, %10074
  %10076 = fmul fast float %10067, %10074
  %10077 = fmul fast float %10068, %10074
  br label %10078

; <label>:10078                                   ; preds = %10059, %10050
  %10079 = phi float [ 0.000000e+00, %10050 ], [ %10075, %10059 ]
  %10080 = phi float [ 0.000000e+00, %10050 ], [ %10076, %10059 ]
  %10081 = phi float [ 0.000000e+00, %10050 ], [ %10077, %10059 ]
  %10082 = fmul fast float %10079, %8656
  %10083 = fmul fast float %10080, %8656
  %10084 = fmul fast float %10081, %8656
  %10085 = fmul fast float %10052, %9714
  %10086 = call float @dx.op.dot3.f32(i32 55, float %10052, float %10052, float %10052, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10087 = call float @dx.op.dot3.f32(i32 55, float %10082, float %10083, float %10084, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10088 = select i1 %228, float %10086, float %10052
  %10089 = select i1 %228, float 1.000000e+00, float %10052
  %10090 = select i1 %228, float %10087, float %10082
  %10091 = select i1 %228, float 0.000000e+00, float %10083
  %10092 = select i1 %228, float 0.000000e+00, float %10084
  %10093 = fmul fast float %10088, %9726
  %10094 = fmul fast float %10088, %9727
  %10095 = fmul fast float %10089, %9728
  %10096 = fadd fast float %10093, %10090
  %10097 = fadd fast float %10094, %10091
  %10098 = fadd fast float %10092, %10095
  %10099 = fmul fast float %10088, %9729
  %10100 = fmul fast float %10088, %9730
  %10101 = fmul fast float %10089, %9731
  br label %10102

; <label>:10102                                   ; preds = %10078, %9735, %9704, %8936
  %10103 = phi float [ %8941, %8936 ], [ %9726, %9704 ], [ %10096, %10078 ], [ %9726, %9735 ]
  %10104 = phi float [ %8942, %8936 ], [ %9727, %9704 ], [ %10097, %10078 ], [ %9727, %9735 ]
  %10105 = phi float [ %8943, %8936 ], [ %9728, %9704 ], [ %10098, %10078 ], [ %9728, %9735 ]
  %10106 = phi float [ %8944, %8936 ], [ %9729, %9704 ], [ %10099, %10078 ], [ %9729, %9735 ]
  %10107 = phi float [ %8945, %8936 ], [ %9730, %9704 ], [ %10100, %10078 ], [ %9730, %9735 ]
  %10108 = phi float [ %8946, %8936 ], [ %9731, %9704 ], [ %10101, %10078 ], [ %9731, %9735 ]
  %10109 = phi float [ %8947, %8936 ], [ %9714, %9704 ], [ %10085, %10078 ], [ %9714, %9735 ]
  %10110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %10111 = extractvalue %dx.types.CBufRet.f32 %10110, 2
  %10112 = extractvalue %dx.types.CBufRet.f32 %10110, 3
  %10113 = fmul fast float %10111, %104
  %10114 = fmul fast float %10112, %105
  %10115 = call float @dx.op.unary.f32(i32 7, float %10113)  ; Saturate(value)
  %10116 = call float @dx.op.unary.f32(i32 7, float %10114)  ; Saturate(value)
  %10117 = select i1 %8678, i32 2, i32 0
  %10118 = or i32 %10117, 1
  %10119 = uitofp i32 %10118 to float
  %10120 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %46, float %10115, float %10116, float %10119, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10121 = extractvalue %dx.types.ResRet.f32 %10120, 0
  %10122 = extractvalue %dx.types.ResRet.f32 %10120, 1
  %10123 = extractvalue %dx.types.ResRet.f32 %10120, 2
  %10124 = extractvalue %dx.types.ResRet.f32 %10120, 3
  %10125 = add nuw nsw i32 %10117, 2
  %10126 = uitofp i32 %10125 to float
  %10127 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %46, float %10115, float %10116, float %10126, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10128 = extractvalue %dx.types.ResRet.f32 %10127, 0
  %10129 = extractvalue %dx.types.ResRet.f32 %10127, 1
  %10130 = extractvalue %dx.types.ResRet.f32 %10127, 2
  %10131 = extractvalue %dx.types.ResRet.f32 %10127, 3
  %10132 = call float @dx.op.binary.f32(i32 35, float %10122, float %10123)  ; FMax(a,b)
  %10133 = call float @dx.op.binary.f32(i32 35, float %10121, float %10132)  ; FMax(a,b)
  %10134 = call float @dx.op.binary.f32(i32 35, float %10133, float %10124)  ; FMax(a,b)
  %10135 = call float @dx.op.binary.f32(i32 36, float %10129, float %10130)  ; FMin(a,b)
  %10136 = call float @dx.op.binary.f32(i32 36, float %10128, float %10135)  ; FMin(a,b)
  %10137 = call float @dx.op.binary.f32(i32 36, float %10136, float %10131)  ; FMin(a,b)
  %10138 = fmul fast float %10134, 2.550000e+02
  %10139 = fadd fast float %10138, 0x3F70101020000000
  %10140 = fptoui float %10139 to i32
  %10141 = fmul fast float %10137, 2.550000e+02
  %10142 = fadd fast float %10141, 0x3F70101020000000
  %10143 = fptoui float %10142 to i32
  %10144 = icmp ult i32 %10140, %10143
  br i1 %10144, label %10145, label %10314

; <label>:10145                                   ; preds = %10102
  %10146 = fcmp fast ogt float %91, 9.843750e-01
  %10147 = fadd fast float %8940, -4.000000e+00
  %10148 = select i1 %10146, float -4.000000e+00, float %10147
  %10149 = call float @dx.op.binary.f32(i32 35, float %10148, float 0.000000e+00)  ; FMax(a,b)
  %10150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %10151 = extractvalue %dx.types.CBufRet.f32 %10150, 0
  %10152 = fadd fast float %10151, %10149
  %10153 = extractvalue %dx.types.CBufRet.f32 %10150, 2
  %10154 = fmul fast float %10152, %10153
  %10155 = call float @dx.op.unary.f32(i32 23, float %10154)  ; Log(value)
  %10156 = extractvalue %dx.types.CBufRet.f32 %10150, 3
  %10157 = fmul fast float %10156, %10155
  %10158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %10159 = extractvalue %dx.types.CBufRet.f32 %10158, 2
  %10160 = fmul fast float %10157, %10159
  %10161 = call float @dx.op.unary.f32(i32 7, float %10160)  ; Saturate(value)
  %10162 = uitofp i32 %10140 to float
  %10163 = uitofp i32 %10143 to float
  %10164 = fadd fast float %10162, 5.000000e-01
  %10165 = fadd fast float %10163, 5.000000e-01
  %10166 = fmul fast float %10159, %10164
  %10167 = fmul fast float %10159, %10165
  %10168 = fadd fast float %10166, 0x3F0FFB4800000000
  %10169 = fadd fast float %10167, 0xBF0FFB4800000000
  %10170 = call float @dx.op.binary.f32(i32 35, float %10161, float %10168)  ; FMax(a,b)
  %10171 = call float @dx.op.binary.f32(i32 36, float %10170, float %10169)  ; FMin(a,b)
  %10172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %10173 = extractvalue %dx.types.CBufRet.f32 %10172, 1
  %10174 = extractvalue %dx.types.CBufRet.f32 %10172, 2
  %10175 = extractvalue %dx.types.CBufRet.f32 %10172, 0
  %10176 = select i1 %8678, float %10175, float 0.000000e+00
  %10177 = fmul fast float %10173, %10171
  %10178 = fadd fast float %10176, %10177
  %10179 = fadd fast float %10176, %10174
  %10180 = fsub fast float %10173, %10174
  %10181 = fadd fast float %10180, %10176
  %10182 = call float @dx.op.binary.f32(i32 35, float %10178, float %10179)  ; FMax(a,b)
  %10183 = call float @dx.op.binary.f32(i32 36, float %10182, float %10181)  ; FMin(a,b)
  %10184 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %44, float %10115, float %10116, float %10183, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10185 = extractvalue %dx.types.ResRet.f32 %10184, 0
  %10186 = extractvalue %dx.types.ResRet.f32 %10184, 1
  %10187 = extractvalue %dx.types.ResRet.f32 %10184, 2
  %10188 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %10189 = extractvalue %dx.types.CBufRet.i32 %10188, 0
  %10190 = extractvalue %dx.types.CBufRet.i32 %10188, 1
  %10191 = uitofp i32 %10189 to float
  %10192 = uitofp i32 %10190 to float
  %10193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %10194 = extractvalue %dx.types.CBufRet.f32 %10193, 0
  %10195 = extractvalue %dx.types.CBufRet.f32 %10193, 1
  %10196 = fmul fast float %10191, %10115
  %10197 = fmul fast float %10192, %10116
  %10198 = fadd fast float %10196, -5.000000e-01
  %10199 = fadd fast float %10197, -5.000000e-01
  %10200 = call float @dx.op.unary.f32(i32 22, float %10198)  ; Frc(value)
  %10201 = call float @dx.op.unary.f32(i32 22, float %10199)  ; Frc(value)
  %10202 = fmul fast float %10200, %10200
  %10203 = fmul fast float %10202, %10200
  %10204 = fsub fast float 3.000000e+00, %10200
  %10205 = fmul fast float %10202, %10204
  %10206 = fmul fast float %10200, 3.000000e+00
  %10207 = fmul fast float %10203, 3.000000e+00
  %10208 = fmul fast float %10202, 6.000000e+00
  %10209 = fsub fast float %10207, %10208
  %10210 = fadd fast float %10209, 4.000000e+00
  %10211 = fmul fast float %10210, 0x3FC5555560000000
  %10212 = fmul fast float %10203, -3.000000e+00
  %10213 = fadd fast float %10202, %10200
  %10214 = fmul fast float %10213, 3.000000e+00
  %10215 = fadd fast float %10212, 1.000000e+00
  %10216 = fadd fast float %10215, %10214
  %10217 = fmul fast float %10203, 0x3FC5555560000000
  %10218 = fmul fast float %10201, %10201
  %10219 = fmul fast float %10218, %10201
  %10220 = fsub fast float 3.000000e+00, %10201
  %10221 = fmul fast float %10218, %10220
  %10222 = fmul fast float %10201, 3.000000e+00
  %10223 = fmul fast float %10219, 3.000000e+00
  %10224 = fmul fast float %10218, 6.000000e+00
  %10225 = fsub fast float %10223, %10224
  %10226 = fadd fast float %10225, 4.000000e+00
  %10227 = fmul fast float %10226, 0x3FC5555560000000
  %10228 = fmul fast float %10219, -3.000000e+00
  %10229 = fadd fast float %10218, %10201
  %10230 = fmul fast float %10229, 3.000000e+00
  %10231 = fadd fast float %10228, 1.000000e+00
  %10232 = fadd fast float %10231, %10230
  %10233 = fmul fast float %10219, 0x3FC5555560000000
  %10234 = fadd fast float %10200, 1.000000e+00
  %10235 = fsub fast float 1.000000e+00, %10206
  %10236 = fadd fast float %10235, %10205
  %10237 = fadd fast float %10236, %10210
  %10238 = fmul fast float %10237, 0x3FC5555560000000
  %10239 = fdiv fast float %10211, %10238
  %10240 = fsub fast float %10234, %10239
  %10241 = fsub fast float 1.000000e+00, %10200
  %10242 = fadd fast float %10216, %10203
  %10243 = fmul fast float %10242, 0x3FC5555560000000
  %10244 = fdiv fast float %10217, %10243
  %10245 = fadd fast float %10241, %10244
  %10246 = fadd fast float %10201, 1.000000e+00
  %10247 = fsub fast float 1.000000e+00, %10222
  %10248 = fadd fast float %10247, %10221
  %10249 = fadd fast float %10248, %10226
  %10250 = fmul fast float %10249, 0x3FC5555560000000
  %10251 = fdiv fast float %10227, %10250
  %10252 = fsub fast float %10246, %10251
  %10253 = fsub fast float 1.000000e+00, %10201
  %10254 = fadd fast float %10232, %10219
  %10255 = fmul fast float %10254, 0x3FC5555560000000
  %10256 = fdiv fast float %10233, %10255
  %10257 = fadd fast float %10256, %10253
  %10258 = fmul fast float %10240, %10194
  %10259 = fsub fast float %10115, %10258
  %10260 = fmul fast float %10245, %10194
  %10261 = fadd fast float %10260, %10115
  %10262 = fmul fast float %10257, %10195
  %10263 = fadd fast float %10262, %10116
  %10264 = fmul fast float %10252, %10195
  %10265 = fsub fast float %10116, %10264
  %10266 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %44, float %10259, float %10265, float %10183, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10267 = extractvalue %dx.types.ResRet.f32 %10266, 0
  %10268 = extractvalue %dx.types.ResRet.f32 %10266, 1
  %10269 = extractvalue %dx.types.ResRet.f32 %10266, 2
  %10270 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %44, float %10261, float %10265, float %10183, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10271 = extractvalue %dx.types.ResRet.f32 %10270, 0
  %10272 = extractvalue %dx.types.ResRet.f32 %10270, 1
  %10273 = extractvalue %dx.types.ResRet.f32 %10270, 2
  %10274 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %44, float %10259, float %10263, float %10183, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10275 = extractvalue %dx.types.ResRet.f32 %10274, 0
  %10276 = extractvalue %dx.types.ResRet.f32 %10274, 1
  %10277 = extractvalue %dx.types.ResRet.f32 %10274, 2
  %10278 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %44, float %10261, float %10263, float %10183, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10279 = extractvalue %dx.types.ResRet.f32 %10278, 0
  %10280 = extractvalue %dx.types.ResRet.f32 %10278, 1
  %10281 = extractvalue %dx.types.ResRet.f32 %10278, 2
  %10282 = fsub fast float %10275, %10267
  %10283 = fsub fast float %10276, %10268
  %10284 = fsub fast float %10277, %10269
  %10285 = fmul fast float %10282, %10255
  %10286 = fmul fast float %10283, %10255
  %10287 = fmul fast float %10284, %10255
  %10288 = fadd fast float %10285, %10267
  %10289 = fadd fast float %10286, %10268
  %10290 = fadd fast float %10287, %10269
  %10291 = fsub fast float %10279, %10271
  %10292 = fsub fast float %10280, %10272
  %10293 = fsub fast float %10281, %10273
  %10294 = fmul fast float %10291, %10255
  %10295 = fmul fast float %10292, %10255
  %10296 = fmul fast float %10293, %10255
  %10297 = fsub fast float %10271, %10288
  %10298 = fadd fast float %10297, %10294
  %10299 = fsub fast float %10272, %10289
  %10300 = fadd fast float %10299, %10295
  %10301 = fsub fast float %10273, %10290
  %10302 = fadd fast float %10301, %10296
  %10303 = fmul fast float %10298, %10243
  %10304 = fmul fast float %10300, %10243
  %10305 = fmul fast float %10302, %10243
  %10306 = fadd fast float %10303, %10288
  %10307 = fadd fast float %10304, %10289
  %10308 = fadd fast float %10305, %10290
  %10309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10310 = extractvalue %dx.types.CBufRet.f32 %10309, 1
  %10311 = fmul fast float %10306, %10310
  %10312 = fmul fast float %10307, %10310
  %10313 = fmul fast float %10308, %10310
  br label %10314

; <label>:10314                                   ; preds = %10145, %10102
  %10315 = phi float [ %10185, %10145 ], [ 1.000000e+00, %10102 ]
  %10316 = phi float [ %10186, %10145 ], [ 1.000000e+00, %10102 ]
  %10317 = phi float [ %10187, %10145 ], [ 1.000000e+00, %10102 ]
  %10318 = phi float [ %10311, %10145 ], [ 0.000000e+00, %10102 ]
  %10319 = phi float [ %10312, %10145 ], [ 0.000000e+00, %10102 ]
  %10320 = phi float [ %10313, %10145 ], [ 0.000000e+00, %10102 ]
  %10321 = fmul fast float %10318, %8656
  %10322 = fmul fast float %10319, %8656
  %10323 = fmul fast float %10320, %8656
  %10324 = fmul fast float %10315, %10109
  %10325 = call float @dx.op.dot3.f32(i32 55, float %10315, float %10316, float %10317, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10326 = call float @dx.op.dot3.f32(i32 55, float %10321, float %10322, float %10323, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10327 = select i1 %228, float %10325, float %10315
  %10328 = select i1 %228, float %10325, float %10316
  %10329 = select i1 %228, float 1.000000e+00, float %10317
  %10330 = select i1 %228, float %10326, float %10321
  %10331 = select i1 %228, float 0.000000e+00, float %10322
  %10332 = select i1 %228, float 0.000000e+00, float %10323
  %10333 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %10334 = extractvalue %dx.types.CBufRet.i32 %10333, 3
  %10335 = and i32 %10334, 3
  %10336 = icmp ne i32 %10335, 0
  %10337 = and i32 %10334, 4
  %10338 = icmp ne i32 %10337, 0
  %10339 = and i1 %10336, %10338
  %10340 = and i1 %228, %10339
  br i1 %10340, label %10341, label %10347

; <label>:10341                                   ; preds = %10314
  %10342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %10343 = extractvalue %dx.types.CBufRet.f32 %10342, 1
  %10344 = fadd fast float %10324, -1.000000e+00
  %10345 = fmul fast float %10343, %10344
  %10346 = fadd fast float %10345, 1.000000e+00
  br label %10347

; <label>:10347                                   ; preds = %10341, %10314
  %10348 = phi float [ %10346, %10341 ], [ %10324, %10314 ]
  %10349 = fadd fast float %10106, %10103
  %10350 = fmul fast float %10327, %10349
  %10351 = fadd fast float %10350, %10330
  %10352 = fadd fast float %10107, %10104
  %10353 = fmul fast float %10328, %10352
  %10354 = fadd fast float %10353, %10331
  %10355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10356 = extractvalue %dx.types.CBufRet.f32 %10355, 0
  br i1 %228, label %10357, label %10373

; <label>:10357                                   ; preds = %10347
  %10358 = fadd fast float %10351, %10354
  %10359 = fmul fast float %10356, %10358
  %10360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %10361 = extractvalue %dx.types.CBufRet.f32 %10360, 3
  %10362 = extractvalue %dx.types.CBufRet.f32 %8660, 1
  %10363 = fsub fast float %8665, %8659
  %10364 = fadd fast float %10363, %8666
  %10365 = fsub fast float %10364, %10362
  %10366 = extractvalue %dx.types.CBufRet.f32 %8660, 2
  %10367 = fmul fast float %10365, %10366
  %10368 = call float @dx.op.unary.f32(i32 7, float %10367)  ; Saturate(value)
  %10369 = fsub fast float %10368, %10361
  %10370 = fmul fast float %10369, %10348
  %10371 = fadd fast float %10370, %10361
  %10372 = fmul fast float %10371, %4266
  br label %10399

; <label>:10373                                   ; preds = %10347
  %10374 = fadd fast float %10108, %10105
  %10375 = fmul fast float %10329, %10374
  %10376 = fadd fast float %10375, %10332
  %10377 = fmul fast float %10356, %10351
  %10378 = fmul fast float %10356, %10354
  %10379 = fmul fast float %10356, %10376
  %10380 = call float @dx.op.binary.f32(i32 35, float %10378, float %10379)  ; FMax(a,b)
  %10381 = call float @dx.op.binary.f32(i32 35, float %10377, float %10380)  ; FMax(a,b)
  %10382 = call float @dx.op.binary.f32(i32 35, float %8656, float %8656)  ; FMax(a,b)
  %10383 = call float @dx.op.binary.f32(i32 35, float %8656, float %10382)  ; FMax(a,b)
  %10384 = call float @dx.op.binary.f32(i32 35, float %10381, float %10383)  ; FMax(a,b)
  %10385 = fcmp fast ugt float %10384, 0x3F10000000000000
  br i1 %10385, label %10387, label %10386

; <label>:10386                                   ; preds = %10373
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %10387

; <label>:10387                                   ; preds = %10386, %10373
  %10388 = add i32 %60, 356
  %10389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %10388, i32 undef)  ; BufferLoad(srv,index,wot)
  %10390 = extractvalue %dx.types.ResRet.i32 %10389, 0
  %10391 = and i32 %10390, 32
  %10392 = icmp eq i32 %10391, 0
  br i1 %10392, label %10399, label %10393

; <label>:10393                                   ; preds = %10387
  %10394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %10395 = extractvalue %dx.types.CBufRet.f32 %10394, 0
  %10396 = fmul fast float %10395, 0x3FE99999A0000000
  %10397 = fadd fast float %10395, %10377
  %10398 = fadd fast float %10396, %10379
  br label %10399

; <label>:10399                                   ; preds = %10393, %10387, %10357
  %10400 = phi float [ %4266, %10357 ], [ %8656, %10393 ], [ %8656, %10387 ]
  %10401 = phi float [ %10359, %10357 ], [ %10397, %10393 ], [ %10377, %10387 ]
  %10402 = phi float [ %10372, %10357 ], [ %10378, %10393 ], [ %10378, %10387 ]
  %10403 = phi float [ %4266, %10357 ], [ %10398, %10393 ], [ %10379, %10387 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %10404 = call float @dx.op.binary.f32(i32 36, float %10401, float 3.225500e+04)  ; FMin(a,b)
  %10405 = call float @dx.op.binary.f32(i32 36, float %10402, float 3.225500e+04)  ; FMin(a,b)
  %10406 = call float @dx.op.binary.f32(i32 36, float %10403, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %10404)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %10405)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %10406)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %10407 = call float @dx.op.binary.f32(i32 36, float %8656, float 3.225500e+04)  ; FMin(a,b)
  %10408 = call float @dx.op.binary.f32(i32 36, float %10400, float 3.225500e+04)  ; FMin(a,b)
  %10409 = call float @dx.op.binary.f32(i32 36, float %10400, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %10407)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %10408)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %10409)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!65 = !{[42 x i32] [i32 40, i32 8, i32 119, i32 119, i32 7, i32 119, i32 119, i32 7, i32 7, i32 7, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 119, i32 119, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 119, i32 0, i32 119, i32 119]}
!66 = !{void ()* @ps_main, !"ps_main", !67, !4, !89}
!67 = !{!68, !85, null}
!68 = !{!69, !72, !73, !75, !77, !78, !79, !80, !81, !82, !84}
!69 = !{i32 0, !"SV_Position", i8 9, i8 3, !70, i8 4, i32 1, i8 4, i32 0, i8 0, !71}
!70 = !{i32 0}
!71 = !{i32 3, i32 15}
!72 = !{i32 1, !"COLOR", i8 9, i8 0, !70, i8 2, i32 1, i8 4, i32 1, i8 0, !71}
!73 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !70, i8 2, i32 1, i8 4, i32 2, i8 0, !74}
!74 = !{i32 3, i32 3}
!75 = !{i32 3, !"NORMAL", i8 9, i8 0, !70, i8 2, i32 1, i8 3, i32 3, i8 0, !76}
!76 = !{i32 3, i32 7}
!77 = !{i32 4, !"TANGENT", i8 9, i8 0, !70, i8 2, i32 1, i8 4, i32 4, i8 0, !71}
!78 = !{i32 5, !"AMBIENT_COLOR", i8 9, i8 0, !70, i8 2, i32 1, i8 3, i32 5, i8 0, !76}
!79 = !{i32 6, !"HIGHLIGHT_DIR_VIS", i8 9, i8 0, !70, i8 2, i32 1, i8 4, i32 6, i8 0, !71}
!80 = !{i32 7, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !70, i8 2, i32 1, i8 2, i32 7, i8 0, !74}
!81 = !{i32 8, !"SCEONDARY_NORMAL", i8 9, i8 0, !70, i8 2, i32 1, i8 4, i32 8, i8 0, !71}
!82 = !{i32 9, !"PACKED_TRI_DATA", i8 5, i8 0, !70, i8 1, i32 1, i8 4, i32 9, i8 0, !83}
!83 = !{i32 3, i32 13}
!84 = !{i32 10, !"SV_SampleIndex", i8 5, i8 12, !70, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!85 = !{!86, !87}
!86 = !{i32 0, !"SV_Target", i8 9, i8 16, !70, i8 0, i32 1, i8 4, i32 0, i8 0, !71}
!87 = !{i32 1, !"SV_Target", i8 9, i8 16, !88, i8 0, i32 1, i8 4, i32 1, i8 0, !71}
!88 = !{i32 1}
!89 = !{i32 0, i64 16}
!90 = !{!91, !91, i64 0}
!91 = !{!"float", !92, i64 0}
!92 = !{!"omnipotent char", !93, i64 0}
!93 = !{!"Simple C/C++ TBAA"}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 1}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 1}
!96 = !{!97, !97, i64 0}
!97 = !{!"int", !92, i64 0}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 1}
!99 = distinct !{!99, !100}
!100 = !{!"llvm.loop.unroll.disable"}
!101 = distinct !{!101, !"dx.controlflow.hints", i32 1}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 1}
!103 = distinct !{!103, !"dx.controlflow.hints", i32 1}
!104 = distinct !{!104, !"dx.controlflow.hints", i32 1}
!105 = distinct !{!105, !"dx.controlflow.hints", i32 1}
!106 = !{!107, !109, !111, !113}
!107 = distinct !{!107, !108, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!108 = distinct !{!108, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!109 = distinct !{!109, !110, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!110 = distinct !{!110, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!111 = distinct !{!111, !112, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!112 = distinct !{!112, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!113 = distinct !{!113, !114, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!114 = distinct !{!114, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!115 = distinct !{!115, !"dx.controlflow.hints", i32 1}
!116 = distinct !{!116, !100}
!117 = distinct !{!117, !100}
!118 = distinct !{!118, !"dx.controlflow.hints", i32 1}
!119 = distinct !{!119, !"dx.controlflow.hints", i32 1}
!120 = distinct !{!120, !"dx.controlflow.hints", i32 1}
!121 = distinct !{!121, !"dx.controlflow.hints", i32 1}
!122 = distinct !{!122, !"dx.controlflow.hints", i32 1}
!123 = distinct !{!123, !"dx.controlflow.hints", i32 1}
!124 = distinct !{!124, !"dx.controlflow.hints", i32 1}
!125 = !{!126, !128, !130, !131, !133, !134, !135, !137, !138, !139}
!126 = distinct !{!126, !127, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!127 = distinct !{!127, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!128 = distinct !{!128, !129, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!129 = distinct !{!129, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!130 = distinct !{!130, !129, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!131 = distinct !{!131, !132, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %blendColor"}
!132 = distinct !{!132, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z"}
!133 = distinct !{!133, !132, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %addColor"}
!134 = distinct !{!134, !132, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %thermalExtinction"}
!135 = distinct !{!135, !136, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %blendColor"}
!136 = distinct !{!136, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z"}
!137 = distinct !{!137, !136, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %addColor"}
!138 = distinct !{!138, !136, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %thermalExtinction"}
!139 = distinct !{!139, !140, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!140 = distinct !{!140, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!141 = !{!142}
!142 = distinct !{!142, !143, !"\01?sort@@YAXAIAM00@Z: %c"}
!143 = distinct !{!143, !"\01?sort@@YAXAIAM00@Z"}
!144 = !{!145, !146, !126, !128, !130, !131, !133, !134, !135, !137, !138, !139}
!145 = distinct !{!145, !143, !"\01?sort@@YAXAIAM00@Z: %a"}
!146 = distinct !{!146, !143, !"\01?sort@@YAXAIAM00@Z: %b"}
!147 = !{!146}
!148 = !{!145, !142, !126, !128, !130, !131, !133, !134, !135, !137, !138, !139}
!149 = !{!145}
!150 = !{!146, !142, !126, !128, !130, !131, !133, !134, !135, !137, !138, !139}
!151 = !{!152}
!152 = distinct !{!152, !153, !"\01?sort@@YAXAIAM00@Z: %c"}
!153 = distinct !{!153, !"\01?sort@@YAXAIAM00@Z"}
!154 = !{!155, !156, !126, !128, !130, !131, !133, !134, !135, !137, !138, !139}
!155 = distinct !{!155, !153, !"\01?sort@@YAXAIAM00@Z: %a"}
!156 = distinct !{!156, !153, !"\01?sort@@YAXAIAM00@Z: %b"}
!157 = !{!156}
!158 = !{!155, !152, !126, !128, !130, !131, !133, !134, !135, !137, !138, !139}
!159 = !{!155}
!160 = !{!156, !152, !126, !128, !130, !131, !133, !134, !135, !137, !138, !139}
!161 = distinct !{!161, !"dx.controlflow.hints", i32 1}
!162 = distinct !{!162, !"dx.controlflow.hints", i32 2}
!163 = distinct !{!163, !"dx.controlflow.hints", i32 1}
!164 = distinct !{!164, !"dx.controlflow.hints", i32 1}
!165 = distinct !{!165, !"dx.controlflow.hints", i32 1}
!166 = distinct !{!166, !"dx.controlflow.hints", i32 1}
!167 = distinct !{!167, !"dx.controlflow.hints", i32 1}
!168 = distinct !{!168, !"dx.controlflow.hints", i32 1}
!169 = distinct !{!169, !"dx.controlflow.hints", i32 1}
!170 = distinct !{!170, !"dx.controlflow.hints", i32 1}
!171 = distinct !{!171, !"dx.controlflow.hints", i32 1}

