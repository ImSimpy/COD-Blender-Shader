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
;
; shader hash: 0c5ff56c7dcb2bb48487d20080af0e9d
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
; Number of inputs: 40, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 36, 38, 39 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 36, 38, 39 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 36, 38, 39 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 36, 38, 39 }
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
  %422 = add i32 %60, 492
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
  %698 = add i32 %60, 440
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
  %750 = add i32 %60, 424
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
  %774 = add i32 %60, 376
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
  %797 = add i32 %60, 460
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
  %995 = add i32 %60, 392
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
  %1079 = add i32 %60, 408
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
  %1371 = add i32 %60, 444
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
  %1423 = add i32 %60, 428
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
  %1449 = add i32 %60, 380
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
  %1472 = add i32 %60, 464
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
  %1670 = add i32 %60, 396
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
  %1754 = add i32 %60, 412
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
  %2225 = add i32 %60, 448
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
  %2277 = add i32 %60, 432
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
  %2303 = add i32 %60, 384
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
  %2326 = add i32 %60, 468
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
  %2524 = add i32 %60, 400
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
  %2608 = add i32 %60, 416
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
  %3079 = add i32 %60, 452
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
  %3131 = add i32 %60, 436
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
  %3157 = add i32 %60, 388
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
  %3180 = add i32 %60, 472
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
  %3378 = add i32 %60, 404
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
  %3462 = add i32 %60, 420
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
  %3704 = add i32 %60, 360
  %3705 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %3704, i32 undef)  ; BufferLoad(srv,index,wot)
  %3706 = extractvalue %dx.types.ResRet.i32 %3705, 0
  %3707 = extractvalue %dx.types.ResRet.i32 %3705, 1
  %3708 = bitcast i32 %3706 to float
  %3709 = bitcast i32 %3707 to float
  %3710 = fcmp fast oge float %3708, 0.000000e+00
  %3711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3712 = extractvalue %dx.types.CBufRet.f32 %3711, 0
  %3713 = select i1 %3710, float %3708, float %3712
  %3714 = add i32 %60, 456
  %3715 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %3714, i32 undef)  ; BufferLoad(srv,index,wot)
  %3716 = extractvalue %dx.types.ResRet.i32 %3715, 0
  %3717 = add i32 %3716, 0
  %3718 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3717, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3719 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3718, %dx.types.Handle %101, float %83, float %84, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3720 = extractvalue %dx.types.ResRet.f32 %3719, 0
  %3721 = fmul fast float %3720, %3709
  %3722 = fadd fast float %3721, %3713
  %3723 = call float @dx.op.dot2.f32(i32 54, float %3692, float %3693, float %3692, float %3693)  ; Dot2(ax,ay,bx,by)
  %3724 = fmul fast float %3723, 0x3FE3333340000000
  %3725 = fsub fast float 1.000000e+00, %3724
  %3726 = call float @dx.op.dot3.f32(i32 55, float %3692, float %3693, float %3725, float %3692, float %3693, float %3725)  ; Dot3(ax,ay,az,bx,by,bz)
  %3727 = call float @dx.op.unary.f32(i32 25, float %3726)  ; Rsqrt(value)
  %3728 = fmul fast float %3727, %3692
  %3729 = fmul fast float %3727, %3693
  %3730 = fmul fast float %3725, %3727
  %3731 = fmul fast float %3730, %111
  %3732 = fmul fast float %3730, %112
  %3733 = fmul fast float %3730, %113
  %3734 = fmul fast float %3728, %76
  %3735 = fmul fast float %3728, %77
  %3736 = fmul fast float %3728, %78
  %3737 = fadd fast float %3731, %3734
  %3738 = fadd fast float %3732, %3735
  %3739 = fadd fast float %3733, %3736
  %3740 = fmul fast float %123, %3729
  %3741 = fmul fast float %124, %3729
  %3742 = fmul fast float %125, %3729
  %3743 = fadd fast float %3737, %3740
  %3744 = fadd fast float %3738, %3741
  %3745 = fadd fast float %3739, %3742
  %3746 = call float @dx.op.dot3.f32(i32 55, float %3743, float %3744, float %3745, float %3743, float %3744, float %3745)  ; Dot3(ax,ay,az,bx,by,bz)
  %3747 = call float @dx.op.unary.f32(i32 25, float %3746)  ; Rsqrt(value)
  %3748 = fmul fast float %3743, %3747
  %3749 = fmul fast float %3744, %3747
  %3750 = fmul fast float %3745, %3747
  %3751 = and i32 %62, 1
  %3752 = icmp eq i32 %3751, 0
  br i1 %3752, label %3753, label %4261

; <label>:3753                                    ; preds = %3691
  %3754 = call float @dx.op.unary.f32(i32 83, float %167)  ; DerivCoarseX(value)
  %3755 = call float @dx.op.unary.f32(i32 83, float %168)  ; DerivCoarseX(value)
  %3756 = call float @dx.op.unary.f32(i32 83, float %169)  ; DerivCoarseX(value)
  %3757 = call float @dx.op.unary.f32(i32 84, float %167)  ; DerivCoarseY(value)
  %3758 = call float @dx.op.unary.f32(i32 84, float %168)  ; DerivCoarseY(value)
  %3759 = call float @dx.op.unary.f32(i32 84, float %169)  ; DerivCoarseY(value)
  %3760 = fadd fast float %3754, %167
  %3761 = fadd fast float %3755, %168
  %3762 = fadd fast float %3756, %169
  %3763 = fadd fast float %3757, %167
  %3764 = fadd fast float %3758, %168
  %3765 = fadd fast float %3759, %169
  %3766 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3767 = extractvalue %dx.types.CBufRet.f32 %3766, 0
  %3768 = extractvalue %dx.types.CBufRet.f32 %3766, 1
  %3769 = extractvalue %dx.types.CBufRet.f32 %3766, 2
  %3770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %3771 = extractvalue %dx.types.CBufRet.f32 %3770, 2
  %3772 = extractvalue %dx.types.CBufRet.f32 %3770, 3
  %3773 = fmul fast float %3767, %104
  %3774 = fmul fast float %3773, %3771
  %3775 = fmul fast float %3768, %105
  %3776 = fmul fast float %3775, %3772
  %3777 = fptoui float %3774 to i32
  %3778 = fptoui float %3776 to i32
  %3779 = fadd fast float %3767, -1.000000e+00
  %3780 = fadd fast float %3768, -1.000000e+00
  %3781 = fptoui float %3779 to i32
  %3782 = fptoui float %3780 to i32
  %3783 = call i32 @dx.op.binary.i32(i32 40, i32 %3777, i32 %3781)  ; UMin(a,b)
  %3784 = call i32 @dx.op.binary.i32(i32 40, i32 %3778, i32 %3782)  ; UMin(a,b)
  %3785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3786 = extractvalue %dx.types.CBufRet.f32 %3785, 2
  %3787 = extractvalue %dx.types.CBufRet.f32 %3785, 3
  %3788 = fmul fast float %3786, %92
  %3789 = fsub fast float %3788, %3787
  %3790 = fadd fast float %3769, -1.000000e+00
  %3791 = call float @dx.op.binary.f32(i32 36, float %3789, float %3790)  ; FMin(a,b)
  %3792 = fptoui float %3791 to i32
  %3793 = fptoui float %3767 to i32
  %3794 = fptoui float %3768 to i32
  %3795 = mul i32 %3792, %3794
  %3796 = add i32 %3795, %3784
  %3797 = mul i32 %3796, %3793
  %3798 = add i32 %3797, %3783
  %3799 = shl i32 %3798, 2
  %3800 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %3799, i32 undef)  ; BufferLoad(srv,index,wot)
  %3801 = extractvalue %dx.types.ResRet.i32 %3800, 0
  %3802 = and i32 %3801, 1023
  %3803 = lshr i32 %3801, 10
  %3804 = icmp eq i32 %3802, 0
  br i1 %3804, label %4230, label %3805

; <label>:3805                                    ; preds = %3753
  %3806 = and i32 %3801, 1023
  br label %3807

; <label>:3807                                    ; preds = %3933, %3805
  %3808 = phi i32 [ %3883, %3933 ], [ 0, %3805 ]
  %3809 = phi float [ %3934, %3933 ], [ 0.000000e+00, %3805 ]
  %3810 = phi float [ %3935, %3933 ], [ %3722, %3805 ]
  %3811 = phi float [ %3936, %3933 ], [ %3703, %3805 ]
  %3812 = phi float [ %3937, %3933 ], [ 0.000000e+00, %3805 ]
  %3813 = phi float [ %3938, %3933 ], [ 0.000000e+00, %3805 ]
  %3814 = phi float [ %3939, %3933 ], [ %3697, %3805 ]
  %3815 = phi float [ %3940, %3933 ], [ %3698, %3805 ]
  %3816 = phi float [ %3941, %3933 ], [ %3699, %3805 ]
  %3817 = phi float [ %3942, %3933 ], [ %3748, %3805 ]
  %3818 = phi float [ %3943, %3933 ], [ %3749, %3805 ]
  %3819 = phi float [ %3944, %3933 ], [ %3750, %3805 ]
  %3820 = phi float [ %3945, %3933 ], [ %3702, %3805 ]
  %3821 = phi float [ %3946, %3933 ], [ %3701, %3805 ]
  %3822 = phi float [ %3947, %3933 ], [ 0.000000e+00, %3805 ]
  %3823 = phi float [ %3948, %3933 ], [ %3700, %3805 ]
  %3824 = phi float [ %3949, %3933 ], [ %3694, %3805 ]
  %3825 = phi float [ %3950, %3933 ], [ %3695, %3805 ]
  %3826 = phi float [ %3951, %3933 ], [ %3696, %3805 ]
  %3827 = add nuw nsw i32 %3808, %3803
  %3828 = shl i32 %3827, 2
  %3829 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %3828, i32 undef)  ; BufferLoad(srv,index,wot)
  %3830 = extractvalue %dx.types.ResRet.i32 %3829, 0
  %3831 = shl i32 %3830, 8
  %3832 = or i32 %3831, 48
  %3833 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3832, i32 undef)  ; BufferLoad(srv,index,wot)
  %3834 = extractvalue %dx.types.ResRet.f32 %3833, 0
  %3835 = extractvalue %dx.types.ResRet.f32 %3833, 1
  %3836 = extractvalue %dx.types.ResRet.f32 %3833, 2
  %3837 = extractvalue %dx.types.ResRet.f32 %3833, 3
  %3838 = or i32 %3831, 64
  %3839 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3838, i32 undef)  ; BufferLoad(srv,index,wot)
  %3840 = extractvalue %dx.types.ResRet.i32 %3839, 0
  %3841 = extractvalue %dx.types.ResRet.i32 %3839, 1
  %3842 = or i32 %3831, 80
  %3843 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3842, i32 undef)  ; BufferLoad(srv,index,wot)
  %3844 = extractvalue %dx.types.ResRet.f32 %3843, 2
  %3845 = extractvalue %dx.types.ResRet.f32 %3843, 3
  %3846 = or i32 %3831, 96
  %3847 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3846, i32 undef)  ; BufferLoad(srv,index,wot)
  %3848 = extractvalue %dx.types.ResRet.f32 %3847, 0
  %3849 = extractvalue %dx.types.ResRet.f32 %3847, 1
  %3850 = extractvalue %dx.types.ResRet.f32 %3847, 2
  %3851 = extractvalue %dx.types.ResRet.f32 %3847, 3
  %3852 = or i32 %3831, 112
  %3853 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3852, i32 undef)  ; BufferLoad(srv,index,wot)
  %3854 = extractvalue %dx.types.ResRet.f32 %3853, 2
  %3855 = or i32 %3831, 128
  %3856 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3855, i32 undef)  ; BufferLoad(srv,index,wot)
  %3857 = extractvalue %dx.types.ResRet.f32 %3856, 0
  %3858 = extractvalue %dx.types.ResRet.f32 %3856, 1
  %3859 = extractvalue %dx.types.ResRet.f32 %3856, 2
  %3860 = extractvalue %dx.types.ResRet.f32 %3856, 3
  %3861 = or i32 %3831, 144
  %3862 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3861, i32 undef)  ; BufferLoad(srv,index,wot)
  %3863 = extractvalue %dx.types.ResRet.f32 %3862, 0
  %3864 = extractvalue %dx.types.ResRet.f32 %3862, 1
  %3865 = extractvalue %dx.types.ResRet.f32 %3862, 2
  %3866 = extractvalue %dx.types.ResRet.f32 %3862, 3
  %3867 = or i32 %3831, 160
  %3868 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3867, i32 undef)  ; BufferLoad(srv,index,wot)
  %3869 = extractvalue %dx.types.ResRet.f32 %3868, 0
  %3870 = extractvalue %dx.types.ResRet.f32 %3868, 1
  %3871 = extractvalue %dx.types.ResRet.f32 %3868, 2
  %3872 = extractvalue %dx.types.ResRet.f32 %3868, 3
  %3873 = or i32 %3831, 192
  %3874 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3873, i32 undef)  ; BufferLoad(srv,index,wot)
  %3875 = extractvalue %dx.types.ResRet.i32 %3874, 0
  %3876 = or i32 %3831, 208
  %3877 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3876, i32 undef)  ; BufferLoad(srv,index,wot)
  %3878 = extractvalue %dx.types.ResRet.f32 %3877, 0
  %3879 = or i32 %3831, 248
  %3880 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3879, i32 undef)  ; BufferLoad(srv,index,wot)
  %3881 = extractvalue %dx.types.ResRet.f32 %3880, 0
  %3882 = extractvalue %dx.types.ResRet.f32 %3880, 1
  %3883 = add nuw nsw i32 %3808, 1
  %3884 = bitcast float %3837 to i32
  %3885 = and i32 %3884, 512
  %3886 = icmp eq i32 %3885, 0
  %3887 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3831, i32 undef)  ; BufferLoad(srv,index,wot)
  %3888 = extractvalue %dx.types.ResRet.f32 %3887, 0
  %3889 = extractvalue %dx.types.ResRet.f32 %3887, 1
  %3890 = extractvalue %dx.types.ResRet.f32 %3887, 2
  %3891 = extractvalue %dx.types.ResRet.f32 %3887, 3
  %3892 = call float @dx.op.dot4.f32(i32 56, float %3888, float %3889, float %3890, float %3891, float %167, float %168, float %169, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3893 = or i32 %3831, 16
  %3894 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3893, i32 undef)  ; BufferLoad(srv,index,wot)
  %3895 = extractvalue %dx.types.ResRet.f32 %3894, 0
  %3896 = extractvalue %dx.types.ResRet.f32 %3894, 1
  %3897 = extractvalue %dx.types.ResRet.f32 %3894, 2
  %3898 = extractvalue %dx.types.ResRet.f32 %3894, 3
  %3899 = call float @dx.op.dot4.f32(i32 56, float %3895, float %3896, float %3897, float %3898, float %167, float %168, float %169, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3900 = or i32 %3831, 32
  %3901 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3900, i32 undef)  ; BufferLoad(srv,index,wot)
  %3902 = extractvalue %dx.types.ResRet.f32 %3901, 0
  %3903 = extractvalue %dx.types.ResRet.f32 %3901, 1
  %3904 = extractvalue %dx.types.ResRet.f32 %3901, 2
  %3905 = extractvalue %dx.types.ResRet.f32 %3901, 3
  %3906 = call float @dx.op.dot4.f32(i32 56, float %3902, float %3903, float %3904, float %3905, float %167, float %168, float %169, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3907 = call float @dx.op.unary.f32(i32 27, float %3892)  ; Round_ni(value)
  %3908 = call float @dx.op.unary.f32(i32 6, float %3907)  ; FAbs(value)
  %3909 = call float @dx.op.unary.f32(i32 27, float %3899)  ; Round_ni(value)
  %3910 = call float @dx.op.unary.f32(i32 6, float %3909)  ; FAbs(value)
  %3911 = call float @dx.op.unary.f32(i32 6, float %3906)  ; FAbs(value)
  %3912 = call float @dx.op.unary.f32(i32 27, float %3911)  ; Round_ni(value)
  %3913 = fadd fast float %3910, %3908
  %3914 = fadd fast float %3913, %3912
  %3915 = fcmp fast oeq float %3914, 0.000000e+00
  %3916 = call float @dx.op.dot4.f32(i32 56, float %3888, float %3889, float %3890, float %3891, float %3760, float %3761, float %3762, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3917 = call float @dx.op.dot4.f32(i32 56, float %3895, float %3896, float %3897, float %3898, float %3760, float %3761, float %3762, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3918 = call float @dx.op.dot4.f32(i32 56, float %3888, float %3889, float %3890, float %3891, float %3763, float %3764, float %3765, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3919 = call float @dx.op.dot4.f32(i32 56, float %3895, float %3896, float %3897, float %3898, float %3763, float %3764, float %3765, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3920 = fsub fast float %3916, %3892
  %3921 = fsub fast float %3918, %3892
  %3922 = fsub fast float %3917, %3899
  %3923 = fsub fast float %3919, %3899
  %3924 = call float @dx.op.dot3.f32(i32 55, float %3834, float %3835, float %3836, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %3925 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3926 = extractvalue %dx.types.CBufRet.f32 %3925, 2
  %3927 = fadd fast float %3926, %3924
  %3928 = call float @dx.op.unary.f32(i32 7, float %3927)  ; Saturate(value)
  %3929 = extractvalue %dx.types.CBufRet.f32 %3925, 0
  %3930 = fcmp fast ogt float %3928, %3929
  %3931 = and i1 %3915, %3930
  %3932 = and i1 %3886, %3931
  br i1 %3932, label %3953, label %3933

; <label>:3933                                    ; preds = %4216, %4034, %3953, %3807
  %3934 = phi float [ %3809, %3953 ], [ %4037, %4034 ], [ %4037, %4216 ], [ %3809, %3807 ]
  %3935 = phi float [ %3810, %3953 ], [ %3810, %4034 ], [ %4191, %4216 ], [ %3810, %3807 ]
  %3936 = phi float [ %3811, %3953 ], [ %3811, %4034 ], [ %4189, %4216 ], [ %3811, %3807 ]
  %3937 = phi float [ %3812, %3953 ], [ %3812, %4034 ], [ %4161, %4216 ], [ %3812, %3807 ]
  %3938 = phi float [ %3813, %3953 ], [ %3813, %4034 ], [ %4159, %4216 ], [ %3813, %3807 ]
  %3939 = phi float [ %3814, %3953 ], [ %3814, %4034 ], [ %4226, %4216 ], [ %3814, %3807 ]
  %3940 = phi float [ %3815, %3953 ], [ %3815, %4034 ], [ %4227, %4216 ], [ %3815, %3807 ]
  %3941 = phi float [ %3816, %3953 ], [ %3816, %4034 ], [ %4228, %4216 ], [ %3816, %3807 ]
  %3942 = phi float [ %3817, %3953 ], [ %3817, %4034 ], [ %4140, %4216 ], [ %3817, %3807 ]
  %3943 = phi float [ %3818, %3953 ], [ %3818, %4034 ], [ %4141, %4216 ], [ %3818, %3807 ]
  %3944 = phi float [ %3819, %3953 ], [ %3819, %4034 ], [ %4142, %4216 ], [ %3819, %3807 ]
  %3945 = phi float [ %3820, %3953 ], [ %3820, %4034 ], [ %4169, %4216 ], [ %3820, %3807 ]
  %3946 = phi float [ %3821, %3953 ], [ %3821, %4034 ], [ %4166, %4216 ], [ %3821, %3807 ]
  %3947 = phi float [ %3822, %3953 ], [ %3822, %4034 ], [ %4163, %4216 ], [ %3822, %3807 ]
  %3948 = phi float [ %3823, %3953 ], [ %3823, %4034 ], [ %4157, %4216 ], [ %3823, %3807 ]
  %3949 = phi float [ %3824, %3953 ], [ %3824, %4034 ], [ %4152, %4216 ], [ %3824, %3807 ]
  %3950 = phi float [ %3825, %3953 ], [ %3825, %4034 ], [ %4153, %4216 ], [ %3825, %3807 ]
  %3951 = phi float [ %3826, %3953 ], [ %3826, %4034 ], [ %4154, %4216 ], [ %3826, %3807 ]
  %3952 = icmp eq i32 %3883, %3806
  br i1 %3952, label %4229, label %3807

; <label>:3953                                    ; preds = %3807
  %3954 = extractvalue %dx.types.ResRet.f32 %3853, 3
  %3955 = extractvalue %dx.types.ResRet.f32 %3853, 1
  %3956 = extractvalue %dx.types.ResRet.f32 %3853, 0
  %3957 = extractvalue %dx.types.ResRet.f32 %3843, 1
  %3958 = extractvalue %dx.types.ResRet.f32 %3843, 0
  %3959 = extractvalue %dx.types.ResRet.i32 %3839, 3
  %3960 = extractvalue %dx.types.ResRet.i32 %3839, 2
  %3961 = add i32 %3959, 0
  %3962 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3961, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3963 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3964 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3962, %dx.types.Handle %3963, float %3892, float %3899, float undef, float undef, i32 0, i32 0, i32 undef, float %3920, float %3922, float undef, float %3921, float %3923, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3965 = extractvalue %dx.types.ResRet.f32 %3964, 0
  %3966 = fmul fast float %3965, %3958
  %3967 = fadd fast float %3966, %3957
  %3968 = call float @dx.op.unary.f32(i32 7, float %3967)  ; Saturate(value)
  %3969 = fmul fast float %3892, %3848
  %3970 = call float @dx.op.tertiary.f32(i32 46, float %3849, float %3899, float %3969)  ; FMad(a,b,c)
  %3971 = fadd fast float %3970, %3956
  %3972 = fmul fast float %3892, %3850
  %3973 = call float @dx.op.tertiary.f32(i32 46, float %3851, float %3899, float %3972)  ; FMad(a,b,c)
  %3974 = fadd fast float %3973, %3955
  %3975 = fmul fast float %3920, %3848
  %3976 = call float @dx.op.tertiary.f32(i32 46, float %3849, float %3922, float %3975)  ; FMad(a,b,c)
  %3977 = fmul fast float %3920, %3850
  %3978 = call float @dx.op.tertiary.f32(i32 46, float %3851, float %3922, float %3977)  ; FMad(a,b,c)
  %3979 = fmul fast float %3921, %3848
  %3980 = call float @dx.op.tertiary.f32(i32 46, float %3849, float %3923, float %3979)  ; FMad(a,b,c)
  %3981 = fmul fast float %3921, %3850
  %3982 = call float @dx.op.tertiary.f32(i32 46, float %3851, float %3923, float %3981)  ; FMad(a,b,c)
  %3983 = add i32 %3960, 0
  %3984 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3983, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3985 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3984, %dx.types.Handle %3963, float %3971, float %3974, float undef, float undef, i32 0, i32 0, i32 undef, float %3976, float %3978, float undef, float %3980, float %3982, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3986 = extractvalue %dx.types.ResRet.f32 %3985, 0
  %3987 = and i32 %3884, 1024
  %3988 = icmp ne i32 %3987, 0
  %3989 = fcmp fast ogt float %3986, 0x3FE0101020000000
  %3990 = uitofp i1 %3989 to float
  %3991 = select i1 %3988, float %3990, float %3986
  %3992 = and i32 %3884, 8192
  %3993 = icmp ne i32 %3992, 0
  %3994 = select i1 %3993, float %3954, float 1.000000e+00
  %3995 = fmul fast float %3892, 2.000000e+00
  %3996 = fadd fast float %3995, -1.000000e+00
  %3997 = call float @dx.op.unary.f32(i32 6, float %3996)  ; FAbs(value)
  %3998 = fmul fast float %3997, %3881
  %3999 = fsub fast float %3998, %3881
  %4000 = call float @dx.op.unary.f32(i32 7, float %3999)  ; Saturate(value)
  %4001 = fmul fast float %3899, 2.000000e+00
  %4002 = fadd fast float %4001, -1.000000e+00
  %4003 = call float @dx.op.unary.f32(i32 6, float %4002)  ; FAbs(value)
  %4004 = fmul fast float %4003, %3882
  %4005 = fsub fast float %4004, %3882
  %4006 = call float @dx.op.unary.f32(i32 7, float %4005)  ; Saturate(value)
  %4007 = fmul fast float %3911, %3844
  %4008 = fsub fast float %4007, %3844
  %4009 = call float @dx.op.unary.f32(i32 7, float %4008)  ; Saturate(value)
  %4010 = fmul fast float %3968, %3994
  %4011 = fmul fast float %4010, %3965
  %4012 = fmul fast float %4011, %4000
  %4013 = fmul fast float %4012, %3991
  %4014 = fmul fast float %4013, %4006
  %4015 = fmul fast float %4014, %4009
  %4016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4017 = extractvalue %dx.types.CBufRet.f32 %4016, 1
  %4018 = extractvalue %dx.types.CBufRet.f32 %4016, 0
  %4019 = fsub fast float %3928, %4018
  %4020 = fmul fast float %4019, %4017
  %4021 = call float @dx.op.unary.f32(i32 7, float %4020)  ; Saturate(value)
  %4022 = fmul fast float %4015, %3845
  %4023 = fadd fast float %4015, %3845
  %4024 = fmul fast float %4023, %3854
  %4025 = fsub fast float %4024, %3854
  %4026 = call float @dx.op.unary.f32(i32 7, float %4025)  ; Saturate(value)
  %4027 = and i32 %3884, 128
  %4028 = icmp ne i32 %4027, 0
  %4029 = select i1 %4028, float %4026, float %4022
  %4030 = fmul fast float %4029, %4021
  %4031 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4032 = extractvalue %dx.types.CBufRet.f32 %4031, 0
  %4033 = fcmp fast ugt float %4030, %4032
  br i1 %4033, label %4034, label %3933

; <label>:4034                                    ; preds = %3953
  %4035 = select i1 %3993, float %4030, float 0.000000e+00
  %4036 = fadd fast float %4035, %3809
  %4037 = call float @dx.op.unary.f32(i32 7, float %4036)  ; Saturate(value)
  br i1 %3993, label %3933, label %4038

; <label>:4038                                    ; preds = %4034
  %4039 = and i32 %3884, 4
  %4040 = and i32 %3884, 8
  %4041 = add i32 %3840, 0
  %4042 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4041, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4043 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4044 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4042, %dx.types.Handle %4043, float %3971, float %3974, float undef, float undef, i32 0, i32 0, i32 undef, float %3976, float %3978, float undef, float %3980, float %3982, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4045 = extractvalue %dx.types.ResRet.f32 %4044, 0
  %4046 = extractvalue %dx.types.ResRet.f32 %4044, 1
  %4047 = extractvalue %dx.types.ResRet.f32 %4044, 2
  %4048 = extractvalue %dx.types.ResRet.f32 %4044, 3
  %4049 = bitcast float %3866 to i32
  %4050 = and i32 %4049, 255
  %4051 = uitofp i32 %4050 to float
  %4052 = lshr i32 %4049, 8
  %4053 = and i32 %4052, 255
  %4054 = uitofp i32 %4053 to float
  %4055 = fmul fast float %4048, %4051
  %4056 = fadd fast float %4055, %4054
  %4057 = fmul fast float %4056, 0x3F70101000000000
  %4058 = add i32 %3841, 0
  %4059 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4058, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4060 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4059, %dx.types.Handle %4043, float %3971, float %3974, float undef, float undef, i32 0, i32 0, i32 undef, float %3976, float %3978, float undef, float %3980, float %3982, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4061 = extractvalue %dx.types.ResRet.f32 %4060, 0
  %4062 = extractvalue %dx.types.ResRet.f32 %4060, 1
  %4063 = extractvalue %dx.types.ResRet.f32 %4060, 2
  %4064 = extractvalue %dx.types.ResRet.f32 %4060, 3
  %4065 = bitcast float %3860 to i32
  %4066 = and i32 %4065, 255
  %4067 = uitofp i32 %4066 to float
  %4068 = lshr i32 %4065, 8
  %4069 = and i32 %4068, 255
  %4070 = uitofp i32 %4069 to float
  %4071 = lshr i32 %4065, 16
  %4072 = and i32 %4071, 255
  %4073 = uitofp i32 %4072 to float
  %4074 = fmul fast float %4073, 0x3F70101000000000
  %4075 = fmul fast float %4061, %4067
  %4076 = fadd fast float %4075, %4070
  %4077 = fmul fast float %4076, 0x3F70101000000000
  %4078 = fadd fast float %4062, -5.000000e-01
  %4079 = fadd fast float %4064, -5.000000e-01
  %4080 = fmul fast float %4078, %4074
  %4081 = fmul fast float %4079, %4074
  %4082 = fadd fast float %4080, 5.000000e-01
  %4083 = fadd fast float %4081, 5.000000e-01
  %4084 = fmul fast float %4045, %3869
  %4085 = fmul fast float %4046, %3870
  %4086 = fmul fast float %4047, %3871
  %4087 = fmul fast float %4082, 2.000000e+00
  %4088 = fadd fast float %4087, -1.000000e+00
  %4089 = fmul fast float %4083, 2.000000e+00
  %4090 = fadd fast float %4089, -1.000000e+00
  %4091 = fadd fast float %4088, %4090
  %4092 = fmul fast float %4091, 5.000000e-01
  %4093 = fsub fast float %4088, %4090
  %4094 = fmul fast float %4093, 5.000000e-01
  %4095 = call float @dx.op.unary.f32(i32 6, float %4092)  ; FAbs(value)
  %4096 = fsub fast float 1.000000e+00, %4095
  %4097 = call float @dx.op.unary.f32(i32 6, float %4094)  ; FAbs(value)
  %4098 = fsub fast float %4096, %4097
  %4099 = call float @dx.op.dot3.f32(i32 55, float %4092, float %4094, float %4098, float %4092, float %4094, float %4098)  ; Dot3(ax,ay,az,bx,by,bz)
  %4100 = call float @dx.op.unary.f32(i32 25, float %4099)  ; Rsqrt(value)
  %4101 = fmul fast float %4092, %4100
  %4102 = fmul fast float %4094, %4100
  %4103 = fmul fast float %4100, %4098
  %4104 = fmul fast float %4103, %3834
  %4105 = fmul fast float %4103, %3835
  %4106 = fmul fast float %4103, %3836
  %4107 = fmul fast float %4101, %3857
  %4108 = fmul fast float %4101, %3858
  %4109 = fmul fast float %4101, %3859
  %4110 = fadd fast float %4107, %4104
  %4111 = fadd fast float %4108, %4105
  %4112 = fadd fast float %4109, %4106
  %4113 = fmul fast float %4102, %3863
  %4114 = fmul fast float %4102, %3864
  %4115 = fmul fast float %4102, %3865
  %4116 = fadd fast float %4110, %4113
  %4117 = fadd fast float %4111, %4114
  %4118 = fadd fast float %4112, %4115
  %4119 = call float @dx.op.dot3.f32(i32 55, float %4116, float %4117, float %4118, float %4116, float %4117, float %4118)  ; Dot3(ax,ay,az,bx,by,bz)
  %4120 = call float @dx.op.unary.f32(i32 25, float %4119)  ; Rsqrt(value)
  %4121 = fmul fast float %4116, %4120
  %4122 = fmul fast float %4117, %4120
  %4123 = fmul fast float %4118, %4120
  %4124 = icmp ne i32 %4040, 0
  %4125 = select i1 %4124, float 1.000000e+00, float 0.000000e+00
  %4126 = fmul fast float %4030, %4125
  %4127 = and i32 %3884, 1
  %4128 = icmp eq i32 %4127, 0
  br i1 %4128, label %4129, label %4133

; <label>:4129                                    ; preds = %4038
  %4130 = fsub fast float %4121, %3817
  %4131 = fsub fast float %4122, %3818
  %4132 = fsub fast float %4123, %3819
  br label %4133

; <label>:4133                                    ; preds = %4129, %4038
  %4134 = phi float [ %4130, %4129 ], [ %4121, %4038 ]
  %4135 = phi float [ %4131, %4129 ], [ %4122, %4038 ]
  %4136 = phi float [ %4132, %4129 ], [ %4123, %4038 ]
  %4137 = fmul float %4136, %4126
  %4138 = fmul float %4135, %4126
  %4139 = fmul float %4134, %4126
  %4140 = fadd fast float %4139, %3817
  %4141 = fadd fast float %4138, %3818
  %4142 = fadd fast float %4137, %3819
  %4143 = icmp ne i32 %4039, 0
  %4144 = select i1 %4143, float 1.000000e+00, float 0.000000e+00
  %4145 = fmul fast float %4030, %4144
  %4146 = fsub fast float %4084, %3824
  %4147 = fsub fast float %4085, %3825
  %4148 = fsub fast float %4086, %3826
  %4149 = fmul fast float %4146, %4145
  %4150 = fmul fast float %4147, %4145
  %4151 = fmul fast float %4148, %4145
  %4152 = fadd fast float %4149, %3824
  %4153 = fadd fast float %4150, %3825
  %4154 = fadd fast float %4151, %3826
  %4155 = fsub fast float %4057, %3823
  %4156 = fmul fast float %4155, %4145
  %4157 = fadd fast float %4156, %3823
  %4158 = fmul fast float %4145, %3813
  %4159 = fsub fast float %3813, %4158
  %4160 = fmul fast float %4145, %3812
  %4161 = fsub fast float %3812, %4160
  %4162 = fadd fast float %4030, %3822
  %4163 = call float @dx.op.unary.f32(i32 7, float %4162)  ; Saturate(value)
  %4164 = fsub fast float %4077, %3821
  %4165 = fmul fast float %4164, %4126
  %4166 = fadd fast float %4165, %3821
  %4167 = fsub fast float %4063, %3820
  %4168 = fmul fast float %4167, %4126
  %4169 = fadd fast float %4168, %3820
  %4170 = call float @dx.op.dot3.f32(i32 55, float %4084, float %4085, float %4086, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4172 = extractvalue %dx.types.CBufRet.f32 %4171, 0
  %4173 = extractvalue %dx.types.CBufRet.f32 %4171, 1
  %4174 = fmul fast float %4173, %4170
  %4175 = fadd fast float %4174, %4172
  %4176 = call float @dx.op.unary.f32(i32 7, float %4175)  ; Saturate(value)
  %4177 = bitcast float %3872 to i32
  %4178 = and i32 %4177, 65535
  %4179 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4178)  ; LegacyF16ToF32(value)
  %4180 = lshr i32 %4177, 16
  %4181 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4180)  ; LegacyF16ToF32(value)
  %4182 = fcmp fast oge float %4179, 0.000000e+00
  %4183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4184 = extractvalue %dx.types.CBufRet.f32 %4183, 0
  %4185 = select i1 %4182, float %4179, float %4184
  %4186 = fadd fast float %4185, %4181
  %4187 = fsub fast float %4176, %3811
  %4188 = fmul fast float %4187, %4030
  %4189 = fadd fast float %4188, %3811
  %4190 = fmul fast float %4186, %4030
  %4191 = call float @dx.op.binary.f32(i32 35, float %3810, float %4190)  ; FMax(a,b)
  %4192 = and i32 %3884, 16
  %4193 = icmp eq i32 %4192, 0
  br i1 %4193, label %4216, label %4194

; <label>:4194                                    ; preds = %4133
  %4195 = bitcast float %3878 to i32
  %4196 = add i32 %3875, 0
  %4197 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4196, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4198 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4197, %dx.types.Handle %4043, float %3971, float %3974, float undef, float undef, i32 0, i32 0, i32 undef, float %3976, float %3978, float undef, float %3980, float %3982, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4199 = extractvalue %dx.types.ResRet.f32 %4198, 0
  %4200 = extractvalue %dx.types.ResRet.f32 %4198, 1
  %4201 = extractvalue %dx.types.ResRet.f32 %4198, 2
  %4202 = and i32 %4195, 65535
  %4203 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4202)  ; LegacyF16ToF32(value)
  %4204 = fmul fast float %4199, %3869
  %4205 = fmul fast float %4200, %3870
  %4206 = fmul fast float %4201, %3871
  %4207 = and i32 %3884, 16384
  %4208 = icmp ne i32 %4207, 0
  %4209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4210 = extractvalue %dx.types.CBufRet.f32 %4209, 0
  %4211 = select i1 %4208, float %4210, float 1.000000e+00
  %4212 = fmul fast float %4211, %4203
  %4213 = fmul fast float %4204, %4212
  %4214 = fmul fast float %4205, %4212
  %4215 = fmul fast float %4206, %4212
  br label %4216

; <label>:4216                                    ; preds = %4194, %4133
  %4217 = phi float [ %4213, %4194 ], [ 0.000000e+00, %4133 ]
  %4218 = phi float [ %4214, %4194 ], [ 0.000000e+00, %4133 ]
  %4219 = phi float [ %4215, %4194 ], [ 0.000000e+00, %4133 ]
  %4220 = fsub fast float %4217, %3814
  %4221 = fsub fast float %4218, %3815
  %4222 = fsub fast float %4219, %3816
  %4223 = fmul fast float %4220, %4030
  %4224 = fmul fast float %4221, %4030
  %4225 = fmul fast float %4222, %4030
  %4226 = fadd fast float %4223, %3814
  %4227 = fadd fast float %4224, %3815
  %4228 = fadd fast float %4225, %3816
  br label %3933

; <label>:4229                                    ; preds = %3933
  br label %4230

; <label>:4230                                    ; preds = %4229, %3753
  %4231 = phi float [ 0.000000e+00, %3753 ], [ %3934, %4229 ]
  %4232 = phi float [ %3722, %3753 ], [ %3935, %4229 ]
  %4233 = phi float [ %3703, %3753 ], [ %3936, %4229 ]
  %4234 = phi float [ 0.000000e+00, %3753 ], [ %3937, %4229 ]
  %4235 = phi float [ 0.000000e+00, %3753 ], [ %3938, %4229 ]
  %4236 = phi float [ %3697, %3753 ], [ %3939, %4229 ]
  %4237 = phi float [ %3698, %3753 ], [ %3940, %4229 ]
  %4238 = phi float [ %3699, %3753 ], [ %3941, %4229 ]
  %4239 = phi float [ %3748, %3753 ], [ %3942, %4229 ]
  %4240 = phi float [ %3749, %3753 ], [ %3943, %4229 ]
  %4241 = phi float [ %3750, %3753 ], [ %3944, %4229 ]
  %4242 = phi float [ %3702, %3753 ], [ %3945, %4229 ]
  %4243 = phi float [ %3701, %3753 ], [ %3946, %4229 ]
  %4244 = phi float [ 0.000000e+00, %3753 ], [ %3947, %4229 ]
  %4245 = phi float [ %3700, %3753 ], [ %3948, %4229 ]
  %4246 = phi float [ %3694, %3753 ], [ %3949, %4229 ]
  %4247 = phi float [ %3695, %3753 ], [ %3950, %4229 ]
  %4248 = phi float [ %3696, %3753 ], [ %3951, %4229 ]
  %4249 = call float @dx.op.dot3.f32(i32 55, float %4239, float %4240, float %4241, float %4239, float %4240, float %4241)  ; Dot3(ax,ay,az,bx,by,bz)
  %4250 = call float @dx.op.unary.f32(i32 25, float %4249)  ; Rsqrt(value)
  %4251 = fmul fast float %4250, %4239
  %4252 = fmul fast float %4250, %4240
  %4253 = fmul fast float %4250, %4241
  %4254 = fadd fast float %4244, %1138
  %4255 = call float @dx.op.unary.f32(i32 7, float %4254)  ; Saturate(value)
  %4256 = call float @dx.op.dot3.f32(i32 55, float %4251, float %4252, float %4253, float %4251, float %4252, float %4253)  ; Dot3(ax,ay,az,bx,by,bz)
  %4257 = call float @dx.op.unary.f32(i32 25, float %4256)  ; Rsqrt(value)
  %4258 = fmul fast float %4257, %4251
  %4259 = fmul fast float %4257, %4252
  %4260 = fmul fast float %4257, %4253
  br label %4261

; <label>:4261                                    ; preds = %4230, %3691
  %4262 = phi float [ %4258, %4230 ], [ %3748, %3691 ]
  %4263 = phi float [ %4259, %4230 ], [ %3749, %3691 ]
  %4264 = phi float [ %4260, %4230 ], [ %3750, %3691 ]
  %4265 = phi float [ %4246, %4230 ], [ %3694, %3691 ]
  %4266 = phi float [ %4247, %4230 ], [ %3695, %3691 ]
  %4267 = phi float [ %4248, %4230 ], [ %3696, %3691 ]
  %4268 = phi float [ %4236, %4230 ], [ %3697, %3691 ]
  %4269 = phi float [ %4237, %4230 ], [ %3698, %3691 ]
  %4270 = phi float [ %4238, %4230 ], [ %3699, %3691 ]
  %4271 = phi float [ %4245, %4230 ], [ %3700, %3691 ]
  %4272 = phi float [ %4255, %4230 ], [ %1138, %3691 ]
  %4273 = phi float [ %4243, %4230 ], [ %3701, %3691 ]
  %4274 = phi float [ %4242, %4230 ], [ %3702, %3691 ]
  %4275 = phi float [ %4235, %4230 ], [ 0.000000e+00, %3691 ]
  %4276 = phi float [ %4234, %4230 ], [ 0.000000e+00, %3691 ]
  %4277 = phi float [ %4231, %4230 ], [ 0.000000e+00, %3691 ]
  %4278 = phi float [ %4232, %4230 ], [ %3722, %3691 ]
  %4279 = phi float [ %4233, %4230 ], [ %3703, %3691 ]
  %4280 = fadd fast float %4271, 0xBFB99999A0000000
  %4281 = call float @dx.op.unary.f32(i32 7, float %4280)  ; Saturate(value)
  %4282 = fmul fast float %4281, 0x3FF1C71C80000000
  %4283 = call float @dx.op.binary.f32(i32 36, float %4271, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4284 = fsub fast float 1.000000e+00, %4282
  %4285 = call float @dx.op.unary.f32(i32 7, float %4284)  ; Saturate(value)
  %4286 = fmul fast float %4285, %4265
  %4287 = fmul fast float %4285, %4266
  %4288 = fmul fast float %4285, %4267
  %4289 = call float @dx.op.unary.f32(i32 7, float %4286)  ; Saturate(value)
  %4290 = call float @dx.op.unary.f32(i32 7, float %4287)  ; Saturate(value)
  %4291 = call float @dx.op.unary.f32(i32 7, float %4288)  ; Saturate(value)
  %4292 = fmul fast float %4282, %4265
  %4293 = fmul fast float %4282, %4266
  %4294 = fmul fast float %4282, %4267
  %4295 = fadd fast float %4292, %4283
  %4296 = fadd fast float %4293, %4283
  %4297 = fadd fast float %4294, %4283
  %4298 = call float @dx.op.unary.f32(i32 7, float %4295)  ; Saturate(value)
  %4299 = call float @dx.op.unary.f32(i32 7, float %4296)  ; Saturate(value)
  %4300 = call float @dx.op.unary.f32(i32 7, float %4297)  ; Saturate(value)
  %4301 = call float @dx.op.unary.f32(i32 7, float %4273)  ; Saturate(value)
  %4302 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4303 = extractvalue %dx.types.CBufRet.i32 %4302, 3
  %4304 = and i32 %4303, 8
  %4305 = icmp ne i32 %4304, 0
  %4306 = call float @dx.op.binary.f32(i32 35, float %4289, float %4265)  ; FMax(a,b)
  %4307 = call float @dx.op.binary.f32(i32 35, float %4290, float %4265)  ; FMax(a,b)
  %4308 = call float @dx.op.binary.f32(i32 35, float %4291, float %4265)  ; FMax(a,b)
  %4309 = call float @dx.op.dot3.f32(i32 55, float %4289, float %4290, float %4291, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4310 = select i1 %228, float %4265, float %4289
  %4311 = select i1 %228, float %4309, float %4290
  %4312 = select i1 %228, float 1.000000e+00, float %4291
  %4313 = select i1 %4305, float %4306, float %4310
  %4314 = select i1 %4305, float %4307, float %4311
  %4315 = select i1 %4305, float %4308, float %4312
  %4316 = and i32 %204, 3
  %4317 = select i1 %198, i32 %4316, i32 0
  %4318 = icmp eq i32 %4317, 1
  br i1 %4318, label %4319, label %4395

; <label>:4319                                    ; preds = %4261
  %4320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4321 = extractvalue %dx.types.CBufRet.f32 %4320, 0
  %4322 = extractvalue %dx.types.CBufRet.f32 %4320, 1
  %4323 = fadd fast float %4321, %167
  %4324 = fadd fast float %4322, %168
  %4325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4326 = extractvalue %dx.types.CBufRet.f32 %4325, 0
  %4327 = extractvalue %dx.types.CBufRet.f32 %4325, 1
  %4328 = fsub fast float %4323, %4326
  %4329 = fsub fast float %4324, %4327
  %4330 = fmul fast float %4328, %4328
  %4331 = fmul fast float %4329, %4329
  %4332 = fadd fast float %4330, %4331
  %4333 = call float @dx.op.unary.f32(i32 24, float %4332)  ; Sqrt(value)
  %4334 = extractvalue %dx.types.CBufRet.f32 %4325, 2
  %4335 = fcmp fast olt float %4333, %4334
  br i1 %4335, label %4336, label %4389

; <label>:4336                                    ; preds = %4319
  %4337 = extractvalue %dx.types.CBufRet.f32 %4320, 2
  %4338 = fadd fast float %4337, %169
  %4339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4340 = extractvalue %dx.types.CBufRet.f32 %4339, 0
  %4341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4342 = extractvalue %dx.types.CBufRet.f32 %4341, 0
  %4343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4344 = extractvalue %dx.types.CBufRet.f32 %4343, 0
  %4345 = extractvalue %dx.types.CBufRet.f32 %4339, 1
  %4346 = extractvalue %dx.types.CBufRet.f32 %4341, 1
  %4347 = extractvalue %dx.types.CBufRet.f32 %4343, 1
  %4348 = extractvalue %dx.types.CBufRet.f32 %4339, 3
  %4349 = extractvalue %dx.types.CBufRet.f32 %4341, 3
  %4350 = extractvalue %dx.types.CBufRet.f32 %4343, 3
  %4351 = fadd fast float %4348, %4323
  %4352 = fadd fast float %4349, %4324
  %4353 = fadd fast float %4338, %4350
  %4354 = fmul fast float %4351, %4340
  %4355 = call float @dx.op.tertiary.f32(i32 46, float %4352, float %4342, float %4354)  ; FMad(a,b,c)
  %4356 = call float @dx.op.tertiary.f32(i32 46, float %4353, float %4344, float %4355)  ; FMad(a,b,c)
  %4357 = fmul fast float %4351, %4345
  %4358 = call float @dx.op.tertiary.f32(i32 46, float %4352, float %4346, float %4357)  ; FMad(a,b,c)
  %4359 = call float @dx.op.tertiary.f32(i32 46, float %4353, float %4347, float %4358)  ; FMad(a,b,c)
  %4360 = fsub fast float %4356, %4348
  %4361 = fsub fast float %4359, %4349
  %4362 = fsub fast float %4360, %4326
  %4363 = fadd fast float %4362, %4334
  %4364 = fsub fast float %4361, %4327
  %4365 = fadd fast float %4364, %4334
  %4366 = extractvalue %dx.types.CBufRet.f32 %4325, 3
  %4367 = fmul fast float %4363, %4366
  %4368 = fmul fast float %4365, %4366
  %4369 = call float @dx.op.unary.f32(i32 7, float %4367)  ; Saturate(value)
  %4370 = call float @dx.op.unary.f32(i32 7, float %4368)  ; Saturate(value)
  %4371 = fsub fast float 1.000000e+00, %4369
  %4372 = fsub fast float 1.000000e+00, %4370
  %4373 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %46, float %4371, float %4372, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4374 = extractvalue %dx.types.ResRet.f32 %4373, 0
  %4375 = fcmp fast ugt float %4374, 0.000000e+00
  br i1 %4375, label %4376, label %4389

; <label>:4376                                    ; preds = %4336
  %4377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4378 = extractvalue %dx.types.CBufRet.f32 %4377, 2
  %4379 = fmul fast float %4378, %4374
  %4380 = extractvalue %dx.types.CBufRet.f32 %4377, 3
  %4381 = fadd fast float %4380, %4379
  %4382 = extractvalue %dx.types.CBufRet.f32 %4343, 2
  %4383 = fadd fast float %4381, %4350
  %4384 = fmul fast float %4356, %4344
  %4385 = call float @dx.op.tertiary.f32(i32 46, float %4359, float %4347, float %4384)  ; FMad(a,b,c)
  %4386 = call float @dx.op.tertiary.f32(i32 46, float %4383, float %4382, float %4385)  ; FMad(a,b,c)
  %4387 = fsub fast float %4386, %4350
  %4388 = fsub fast float %4387, %4337
  br label %4389

; <label>:4389                                    ; preds = %4376, %4336, %4319
  %4390 = phi i1 [ true, %4376 ], [ false, %4336 ], [ false, %4319 ]
  %4391 = phi float [ %4388, %4376 ], [ -1.310720e+05, %4336 ], [ -1.310720e+05, %4319 ]
  %4392 = fsub fast float %4391, %169
  %4393 = call float @dx.op.unary.f32(i32 7, float %4392)  ; Saturate(value)
  %4394 = select i1 %4390, float %4393, float 1.000000e+00
  br label %4395

; <label>:4395                                    ; preds = %4389, %4261
  %4396 = phi float [ %4394, %4389 ], [ 0.000000e+00, %4261 ]
  %4397 = icmp eq i32 %4317, 3
  %4398 = select i1 %4397, float 1.000000e+00, float %4396
  %4399 = call float @dx.op.binary.f32(i32 35, float %4277, float %4398)  ; FMax(a,b)
  %4400 = fcmp fast olt float %4398, 1.000000e+00
  br i1 %4400, label %4401, label %5525

; <label>:4401                                    ; preds = %4395
  %4402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4403 = extractvalue %dx.types.CBufRet.f32 %4402, 0
  %4404 = extractvalue %dx.types.CBufRet.f32 %4402, 1
  %4405 = extractvalue %dx.types.CBufRet.f32 %4402, 2
  %4406 = fadd fast float %4403, %167
  %4407 = fadd fast float %4404, %168
  %4408 = fadd fast float %4405, %169
  %4409 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 335)  ; CBufferLoadLegacy(handle,regIndex)
  %4410 = extractvalue %dx.types.CBufRet.i32 %4409, 2
  %4411 = icmp ult i32 %4410, 4
  br i1 %4411, label %4412, label %4463

; <label>:4412                                    ; preds = %4401
  br label %4413

; <label>:4413                                    ; preds = %4458, %4412
  %4414 = phi i32 [ %4459, %4458 ], [ %4410, %4412 ]
  %4415 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 342)  ; CBufferLoadLegacy(handle,regIndex)
  %4416 = extractvalue %dx.types.CBufRet.f32 %4415, 0
  %4417 = extractvalue %dx.types.CBufRet.f32 %4415, 1
  %4418 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 339)  ; CBufferLoadLegacy(handle,regIndex)
  %4419 = extractvalue %dx.types.CBufRet.f32 %4418, 0
  %4420 = fmul fast float %4419, 5.000000e-01
  %4421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 340)  ; CBufferLoadLegacy(handle,regIndex)
  %4422 = extractvalue %dx.types.CBufRet.f32 %4421, 0
  %4423 = extractvalue %dx.types.CBufRet.f32 %4421, 1
  %4424 = extractvalue %dx.types.CBufRet.f32 %4421, 2
  %4425 = extractvalue %dx.types.CBufRet.f32 %4421, 3
  %4426 = getelementptr inbounds [4 x float], [4 x float]* %58, i32 0, i32 0
  store float %4422, float* %4426, align 4
  %4427 = getelementptr inbounds [4 x float], [4 x float]* %58, i32 0, i32 1
  store float %4423, float* %4427, align 4
  %4428 = getelementptr inbounds [4 x float], [4 x float]* %58, i32 0, i32 2
  store float %4424, float* %4428, align 4
  %4429 = getelementptr inbounds [4 x float], [4 x float]* %58, i32 0, i32 3
  store float %4425, float* %4429, align 4
  %4430 = getelementptr inbounds [4 x float], [4 x float]* %58, i32 0, i32 %4414
  %4431 = load float, float* %4430, align 4, !tbaa !88
  %4432 = fmul fast float %4420, %4431
  %4433 = fsub fast float %4406, %4416
  %4434 = fadd fast float %4433, %4432
  %4435 = fsub fast float %4407, %4417
  %4436 = fadd fast float %4435, %4432
  %4437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 341)  ; CBufferLoadLegacy(handle,regIndex)
  %4438 = extractvalue %dx.types.CBufRet.f32 %4437, 0
  %4439 = extractvalue %dx.types.CBufRet.f32 %4437, 1
  %4440 = extractvalue %dx.types.CBufRet.f32 %4437, 2
  %4441 = extractvalue %dx.types.CBufRet.f32 %4437, 3
  %4442 = getelementptr inbounds [4 x float], [4 x float]* %57, i32 0, i32 0
  store float %4438, float* %4442, align 4
  %4443 = getelementptr inbounds [4 x float], [4 x float]* %57, i32 0, i32 1
  store float %4439, float* %4443, align 4
  %4444 = getelementptr inbounds [4 x float], [4 x float]* %57, i32 0, i32 2
  store float %4440, float* %4444, align 4
  %4445 = getelementptr inbounds [4 x float], [4 x float]* %57, i32 0, i32 3
  store float %4441, float* %4445, align 4
  %4446 = getelementptr inbounds [4 x float], [4 x float]* %57, i32 0, i32 %4414
  %4447 = load float, float* %4446, align 4, !tbaa !88
  %4448 = fmul fast float %4434, %4447
  %4449 = fmul fast float %4436, %4447
  %4450 = extractvalue %dx.types.CBufRet.f32 %4418, 1
  %4451 = fmul fast float %4448, %4450
  %4452 = fmul fast float %4449, %4450
  %4453 = call float @dx.op.unary.f32(i32 7, float %4451)  ; Saturate(value)
  %4454 = call float @dx.op.unary.f32(i32 7, float %4452)  ; Saturate(value)
  %4455 = fcmp fast oeq float %4453, %4451
  %4456 = fcmp fast oeq float %4454, %4452
  %4457 = and i1 %4455, %4456
  br i1 %4457, label %4461, label %4458

; <label>:4458                                    ; preds = %4413
  %4459 = add nuw nsw i32 %4414, 1
  %4460 = icmp ult i32 %4459, 4
  br i1 %4460, label %4413, label %4461

; <label>:4461                                    ; preds = %4458, %4413
  %4462 = phi i32 [ %4459, %4458 ], [ %4414, %4413 ]
  br label %4463

; <label>:4463                                    ; preds = %4461, %4401
  %4464 = phi float [ 0.000000e+00, %4401 ], [ %4451, %4461 ]
  %4465 = phi float [ 0.000000e+00, %4401 ], [ %4452, %4461 ]
  %4466 = phi i32 [ %4410, %4401 ], [ %4462, %4461 ]
  %4467 = extractvalue %dx.types.CBufRet.i32 %4409, 1
  %4468 = uitofp i32 %4466 to float
  %4469 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %25, %dx.types.Handle %46, float %4464, float %4465, float %4468, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4470 = extractvalue %dx.types.ResRet.f32 %4469, 0
  %4471 = extractvalue %dx.types.ResRet.f32 %4469, 1
  %4472 = extractvalue %dx.types.ResRet.f32 %4469, 2
  %4473 = extractvalue %dx.types.ResRet.f32 %4469, 3
  %4474 = call float @dx.op.binary.f32(i32 35, float %4471, float %4472)  ; FMax(a,b)
  %4475 = call float @dx.op.binary.f32(i32 35, float %4470, float %4474)  ; FMax(a,b)
  %4476 = call float @dx.op.binary.f32(i32 35, float %4475, float %4473)  ; FMax(a,b)
  %4477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 335)  ; CBufferLoadLegacy(handle,regIndex)
  %4478 = extractvalue %dx.types.CBufRet.f32 %4477, 0
  %4479 = fadd fast float %4478, %4476
  %4480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 339)  ; CBufferLoadLegacy(handle,regIndex)
  %4481 = extractvalue %dx.types.CBufRet.f32 %4480, 3
  %4482 = fadd fast float %4479, %4481
  %4483 = fcmp fast ogt float %4408, %4482
  %4484 = icmp uge i32 %4466, %4467
  %4485 = or i1 %4484, %4483
  %4486 = zext i1 %4485 to i32
  %4487 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4488 = extractvalue %dx.types.CBufRet.i32 %4487, 0
  %4489 = lshr i32 %4488, 21
  %4490 = and i32 %4489, 1
  %4491 = xor i32 %4490, 1
  %4492 = or i32 %4486, %4491
  %4493 = and i32 %4488, 1
  %4494 = xor i32 %4493, 1
  %4495 = or i32 %4492, %4494
  %4496 = icmp eq i32 %4495, 0
  br i1 %4496, label %4497, label %5341, !dx.controlflow.hints !92

; <label>:4497                                    ; preds = %4463
  %4498 = fmul fast float %4464, 2.000000e+00
  %4499 = fmul fast float %4465, 2.000000e+00
  %4500 = fadd fast float %4498, -1.000000e+00
  %4501 = fadd fast float %4499, -1.000000e+00
  %4502 = call float @dx.op.unary.f32(i32 6, float %4500)  ; FAbs(value)
  %4503 = call float @dx.op.unary.f32(i32 6, float %4501)  ; FAbs(value)
  %4504 = extractvalue %dx.types.CBufRet.f32 %4480, 1
  %4505 = fmul fast float %4504, 2.000000e+00
  %4506 = fsub fast float 1.000000e+00, %4505
  %4507 = fcmp fast oge float %4502, %4506
  %4508 = fcmp fast oge float %4503, %4506
  %4509 = or i1 %4507, %4508
  %4510 = add i32 %4466, 1
  %4511 = icmp ult i32 %4510, %4467
  %4512 = and i1 %4511, %4509
  %4513 = extractvalue %dx.types.CBufRet.f32 %4480, 0
  %4514 = fptosi float %4513 to i32
  %4515 = sitofp i32 %4514 to float
  %4516 = fmul fast float %4515, %4464
  %4517 = fmul fast float %4515, %4465
  %4518 = fadd fast float %4516, -5.000000e-01
  %4519 = fadd fast float %4517, -5.000000e-01
  %4520 = fptosi float %4518 to i32
  %4521 = fptosi float %4519 to i32
  %4522 = fadd fast float %4516, 5.000000e-01
  %4523 = fadd fast float %4517, 5.000000e-01
  %4524 = call float @dx.op.unary.f32(i32 22, float %4522)  ; Frc(value)
  %4525 = call float @dx.op.unary.f32(i32 22, float %4523)  ; Frc(value)
  %4526 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 340)  ; CBufferLoadLegacy(handle,regIndex)
  %4527 = extractvalue %dx.types.CBufRet.f32 %4526, 0
  %4528 = extractvalue %dx.types.CBufRet.f32 %4526, 1
  %4529 = extractvalue %dx.types.CBufRet.f32 %4526, 2
  %4530 = extractvalue %dx.types.CBufRet.f32 %4526, 3
  %4531 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 336)  ; CBufferLoadLegacy(handle,regIndex)
  %4532 = extractvalue %dx.types.CBufRet.f32 %4531, 2
  %4533 = fadd fast float %4524, -5.000000e-01
  %4534 = fadd fast float %4525, -5.000000e-01
  %4535 = add i32 %4514, -1
  %4536 = call i32 @dx.op.binary.i32(i32 37, i32 %4520, i32 0)  ; IMax(a,b)
  %4537 = call i32 @dx.op.binary.i32(i32 37, i32 %4521, i32 0)  ; IMax(a,b)
  %4538 = call i32 @dx.op.binary.i32(i32 38, i32 %4536, i32 %4535)  ; IMin(a,b)
  %4539 = call i32 @dx.op.binary.i32(i32 38, i32 %4537, i32 %4535)  ; IMin(a,b)
  %4540 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 337)  ; CBufferLoadLegacy(handle,regIndex)
  %4541 = extractvalue %dx.types.CBufRet.i32 %4540, 0
  %4542 = extractvalue %dx.types.CBufRet.i32 %4540, 1
  %4543 = sub nsw i32 3, %4466
  %4544 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 338)  ; CBufferLoadLegacy(handle,regIndex)
  %4545 = extractvalue %dx.types.CBufRet.i32 %4544, 0
  %4546 = extractvalue %dx.types.CBufRet.i32 %4544, 1
  %4547 = extractvalue %dx.types.CBufRet.i32 %4544, 2
  %4548 = extractvalue %dx.types.CBufRet.i32 %4544, 3
  %4549 = add i32 %4538, 536870912
  %4550 = add i32 %4539, 536870912
  %4551 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 336)  ; CBufferLoadLegacy(handle,regIndex)
  %4552 = extractvalue %dx.types.CBufRet.i32 %4551, 3
  %4553 = add i32 %4520, 1
  %4554 = call i32 @dx.op.binary.i32(i32 37, i32 %4553, i32 0)  ; IMax(a,b)
  %4555 = call i32 @dx.op.binary.i32(i32 38, i32 %4554, i32 %4535)  ; IMin(a,b)
  %4556 = add i32 %4555, 536870912
  %4557 = add i32 %4521, 1
  %4558 = call i32 @dx.op.binary.i32(i32 37, i32 %4557, i32 0)  ; IMax(a,b)
  %4559 = call i32 @dx.op.binary.i32(i32 38, i32 %4558, i32 %4535)  ; IMin(a,b)
  %4560 = add i32 %4559, 536870912
  br i1 %4512, label %4805, label %4561, !dx.controlflow.hints !93

; <label>:4561                                    ; preds = %4497
  %4562 = getelementptr inbounds [4 x float], [4 x float]* %51, i32 0, i32 0
  store float %4527, float* %4562, align 4
  %4563 = getelementptr inbounds [4 x float], [4 x float]* %51, i32 0, i32 1
  store float %4528, float* %4563, align 4
  %4564 = getelementptr inbounds [4 x float], [4 x float]* %51, i32 0, i32 2
  store float %4529, float* %4564, align 4
  %4565 = getelementptr inbounds [4 x float], [4 x float]* %51, i32 0, i32 3
  store float %4530, float* %4565, align 4
  %4566 = getelementptr inbounds [4 x float], [4 x float]* %51, i32 0, i32 %4466
  %4567 = load float, float* %4566, align 4, !tbaa !88
  %4568 = fmul fast float %4532, %4567
  %4569 = call float @dx.op.binary.f32(i32 35, float 1.000000e+00, float %4568)  ; FMax(a,b)
  %4570 = fmul fast float %4569, %4533
  %4571 = fmul fast float %4569, %4534
  %4572 = call float @dx.op.binary.f32(i32 35, float %4570, float -5.000000e-01)  ; FMax(a,b)
  %4573 = call float @dx.op.binary.f32(i32 35, float %4571, float -5.000000e-01)  ; FMax(a,b)
  %4574 = call float @dx.op.binary.f32(i32 36, float %4572, float 5.000000e-01)  ; FMin(a,b)
  %4575 = call float @dx.op.binary.f32(i32 36, float %4573, float 5.000000e-01)  ; FMin(a,b)
  %4576 = fadd fast float %4574, 5.000000e-01
  %4577 = fadd fast float %4575, 5.000000e-01
  %4578 = getelementptr inbounds [4 x i32], [4 x i32]* %52, i32 0, i32 0
  store i32 %4545, i32* %4578, align 4
  %4579 = getelementptr inbounds [4 x i32], [4 x i32]* %52, i32 0, i32 1
  store i32 %4546, i32* %4579, align 4
  %4580 = getelementptr inbounds [4 x i32], [4 x i32]* %52, i32 0, i32 2
  store i32 %4547, i32* %4580, align 4
  %4581 = getelementptr inbounds [4 x i32], [4 x i32]* %52, i32 0, i32 3
  store i32 %4548, i32* %4581, align 4
  %4582 = getelementptr inbounds [4 x i32], [4 x i32]* %52, i32 0, i32 %4543
  %4583 = load i32, i32* %4582, align 4, !tbaa !94
  %4584 = mul i32 %4583, %4541
  %4585 = mul i32 %4583, %4542
  %4586 = add i32 %4549, %4584
  %4587 = add i32 %4550, %4585
  %4588 = and i32 %4586, %4552
  %4589 = and i32 %4587, %4552
  %4590 = fsub fast float %4408, %4478
  %4591 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %4588, i32 %4589, i32 %4466, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4592 = extractvalue %dx.types.ResRet.i32 %4591, 0
  %4593 = extractvalue %dx.types.ResRet.i32 %4591, 1
  %4594 = extractvalue %dx.types.ResRet.i32 %4591, 2
  %4595 = extractvalue %dx.types.ResRet.i32 %4591, 3
  %4596 = and i32 %4592, 65535
  %4597 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4596)  ; LegacyF16ToF32(value)
  %4598 = lshr i32 %4592, 16
  %4599 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4598)  ; LegacyF16ToF32(value)
  %4600 = and i32 %4593, 65535
  %4601 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4600)  ; LegacyF16ToF32(value)
  %4602 = lshr i32 %4593, 16
  %4603 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4602)  ; LegacyF16ToF32(value)
  %4604 = and i32 %4594, 65535
  %4605 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4604)  ; LegacyF16ToF32(value)
  %4606 = lshr i32 %4594, 16
  %4607 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4606)  ; LegacyF16ToF32(value)
  %4608 = and i32 %4595, 65535
  %4609 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4608)  ; LegacyF16ToF32(value)
  %4610 = lshr i32 %4595, 16
  %4611 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4610)  ; LegacyF16ToF32(value)
  %4612 = fsub fast float %4590, %4599
  %4613 = call float @dx.op.binary.f32(i32 35, float %4612, float 0.000000e+00)  ; FMax(a,b)
  %4614 = extractvalue %dx.types.CBufRet.f32 %4480, 2
  %4615 = fmul fast float %4614, %4613
  %4616 = fsub fast float %4597, %4615
  %4617 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4616)  ; FMax(a,b)
  %4618 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4617)  ; FMax(a,b)
  %4619 = fsub fast float %4590, %4603
  %4620 = call float @dx.op.binary.f32(i32 35, float %4619, float 0.000000e+00)  ; FMax(a,b)
  %4621 = fmul fast float %4614, %4620
  %4622 = fsub fast float %4601, %4621
  %4623 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4622)  ; FMax(a,b)
  %4624 = call float @dx.op.binary.f32(i32 35, float %4618, float %4623)  ; FMax(a,b)
  %4625 = fsub fast float %4590, %4607
  %4626 = call float @dx.op.binary.f32(i32 35, float %4625, float 0.000000e+00)  ; FMax(a,b)
  %4627 = fmul fast float %4614, %4626
  %4628 = fsub fast float %4605, %4627
  %4629 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4628)  ; FMax(a,b)
  %4630 = call float @dx.op.binary.f32(i32 35, float %4624, float %4629)  ; FMax(a,b)
  %4631 = fsub fast float %4590, %4611
  %4632 = call float @dx.op.binary.f32(i32 35, float %4631, float 0.000000e+00)  ; FMax(a,b)
  %4633 = fmul fast float %4614, %4632
  %4634 = fsub fast float %4609, %4633
  %4635 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4634)  ; FMax(a,b)
  %4636 = call float @dx.op.binary.f32(i32 35, float %4630, float %4635)  ; FMax(a,b)
  %4637 = fsub fast float 5.000000e-01, %4574
  %4638 = fsub fast float 5.000000e-01, %4575
  %4639 = fmul fast float %4638, %4637
  %4640 = fmul fast float %4639, %4636
  store i32 %4545, i32* %4578, align 4
  store i32 %4546, i32* %4579, align 4
  store i32 %4547, i32* %4580, align 4
  store i32 %4548, i32* %4581, align 4
  %4641 = load i32, i32* %4582, align 4, !tbaa !94
  %4642 = mul i32 %4641, %4541
  %4643 = mul i32 %4641, %4542
  %4644 = add i32 %4556, %4642
  %4645 = add i32 %4550, %4643
  %4646 = and i32 %4644, %4552
  %4647 = and i32 %4645, %4552
  %4648 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %4646, i32 %4647, i32 %4466, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4649 = extractvalue %dx.types.ResRet.i32 %4648, 0
  %4650 = extractvalue %dx.types.ResRet.i32 %4648, 1
  %4651 = extractvalue %dx.types.ResRet.i32 %4648, 2
  %4652 = extractvalue %dx.types.ResRet.i32 %4648, 3
  %4653 = and i32 %4649, 65535
  %4654 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4653)  ; LegacyF16ToF32(value)
  %4655 = lshr i32 %4649, 16
  %4656 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4655)  ; LegacyF16ToF32(value)
  %4657 = and i32 %4650, 65535
  %4658 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4657)  ; LegacyF16ToF32(value)
  %4659 = lshr i32 %4650, 16
  %4660 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4659)  ; LegacyF16ToF32(value)
  %4661 = and i32 %4651, 65535
  %4662 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4661)  ; LegacyF16ToF32(value)
  %4663 = lshr i32 %4651, 16
  %4664 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4663)  ; LegacyF16ToF32(value)
  %4665 = and i32 %4652, 65535
  %4666 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4665)  ; LegacyF16ToF32(value)
  %4667 = lshr i32 %4652, 16
  %4668 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4667)  ; LegacyF16ToF32(value)
  %4669 = fsub fast float %4590, %4656
  %4670 = call float @dx.op.binary.f32(i32 35, float %4669, float 0.000000e+00)  ; FMax(a,b)
  %4671 = fmul fast float %4614, %4670
  %4672 = fsub fast float %4654, %4671
  %4673 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4672)  ; FMax(a,b)
  %4674 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4673)  ; FMax(a,b)
  %4675 = fsub fast float %4590, %4660
  %4676 = call float @dx.op.binary.f32(i32 35, float %4675, float 0.000000e+00)  ; FMax(a,b)
  %4677 = fmul fast float %4614, %4676
  %4678 = fsub fast float %4658, %4677
  %4679 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4678)  ; FMax(a,b)
  %4680 = call float @dx.op.binary.f32(i32 35, float %4674, float %4679)  ; FMax(a,b)
  %4681 = fsub fast float %4590, %4664
  %4682 = call float @dx.op.binary.f32(i32 35, float %4681, float 0.000000e+00)  ; FMax(a,b)
  %4683 = fmul fast float %4614, %4682
  %4684 = fsub fast float %4662, %4683
  %4685 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4684)  ; FMax(a,b)
  %4686 = call float @dx.op.binary.f32(i32 35, float %4680, float %4685)  ; FMax(a,b)
  %4687 = fsub fast float %4590, %4668
  %4688 = call float @dx.op.binary.f32(i32 35, float %4687, float 0.000000e+00)  ; FMax(a,b)
  %4689 = fmul fast float %4614, %4688
  %4690 = fsub fast float %4666, %4689
  %4691 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4690)  ; FMax(a,b)
  %4692 = call float @dx.op.binary.f32(i32 35, float %4686, float %4691)  ; FMax(a,b)
  %4693 = fmul fast float %4638, %4576
  %4694 = fmul fast float %4693, %4692
  store i32 %4545, i32* %4578, align 4
  store i32 %4546, i32* %4579, align 4
  store i32 %4547, i32* %4580, align 4
  store i32 %4548, i32* %4581, align 4
  %4695 = load i32, i32* %4582, align 4, !tbaa !94
  %4696 = mul i32 %4695, %4541
  %4697 = mul i32 %4695, %4542
  %4698 = add i32 %4549, %4696
  %4699 = add i32 %4560, %4697
  %4700 = and i32 %4698, %4552
  %4701 = and i32 %4699, %4552
  %4702 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %4700, i32 %4701, i32 %4466, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4703 = extractvalue %dx.types.ResRet.i32 %4702, 0
  %4704 = extractvalue %dx.types.ResRet.i32 %4702, 1
  %4705 = extractvalue %dx.types.ResRet.i32 %4702, 2
  %4706 = extractvalue %dx.types.ResRet.i32 %4702, 3
  %4707 = and i32 %4703, 65535
  %4708 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4707)  ; LegacyF16ToF32(value)
  %4709 = lshr i32 %4703, 16
  %4710 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4709)  ; LegacyF16ToF32(value)
  %4711 = and i32 %4704, 65535
  %4712 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4711)  ; LegacyF16ToF32(value)
  %4713 = lshr i32 %4704, 16
  %4714 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4713)  ; LegacyF16ToF32(value)
  %4715 = and i32 %4705, 65535
  %4716 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4715)  ; LegacyF16ToF32(value)
  %4717 = lshr i32 %4705, 16
  %4718 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4717)  ; LegacyF16ToF32(value)
  %4719 = and i32 %4706, 65535
  %4720 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4719)  ; LegacyF16ToF32(value)
  %4721 = lshr i32 %4706, 16
  %4722 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4721)  ; LegacyF16ToF32(value)
  %4723 = fsub fast float %4590, %4710
  %4724 = call float @dx.op.binary.f32(i32 35, float %4723, float 0.000000e+00)  ; FMax(a,b)
  %4725 = fmul fast float %4614, %4724
  %4726 = fsub fast float %4708, %4725
  %4727 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4726)  ; FMax(a,b)
  %4728 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4727)  ; FMax(a,b)
  %4729 = fsub fast float %4590, %4714
  %4730 = call float @dx.op.binary.f32(i32 35, float %4729, float 0.000000e+00)  ; FMax(a,b)
  %4731 = fmul fast float %4614, %4730
  %4732 = fsub fast float %4712, %4731
  %4733 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4732)  ; FMax(a,b)
  %4734 = call float @dx.op.binary.f32(i32 35, float %4728, float %4733)  ; FMax(a,b)
  %4735 = fsub fast float %4590, %4718
  %4736 = call float @dx.op.binary.f32(i32 35, float %4735, float 0.000000e+00)  ; FMax(a,b)
  %4737 = fmul fast float %4614, %4736
  %4738 = fsub fast float %4716, %4737
  %4739 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4738)  ; FMax(a,b)
  %4740 = call float @dx.op.binary.f32(i32 35, float %4734, float %4739)  ; FMax(a,b)
  %4741 = fsub fast float %4590, %4722
  %4742 = call float @dx.op.binary.f32(i32 35, float %4741, float 0.000000e+00)  ; FMax(a,b)
  %4743 = fmul fast float %4614, %4742
  %4744 = fsub fast float %4720, %4743
  %4745 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4744)  ; FMax(a,b)
  %4746 = call float @dx.op.binary.f32(i32 35, float %4740, float %4745)  ; FMax(a,b)
  %4747 = fmul fast float %4746, %4637
  store i32 %4545, i32* %4578, align 4
  store i32 %4546, i32* %4579, align 4
  store i32 %4547, i32* %4580, align 4
  store i32 %4548, i32* %4581, align 4
  %4748 = load i32, i32* %4582, align 4, !tbaa !94
  %4749 = mul i32 %4748, %4541
  %4750 = mul i32 %4748, %4542
  %4751 = add i32 %4556, %4749
  %4752 = add i32 %4560, %4750
  %4753 = and i32 %4751, %4552
  %4754 = and i32 %4752, %4552
  %4755 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %4753, i32 %4754, i32 %4466, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4756 = extractvalue %dx.types.ResRet.i32 %4755, 0
  %4757 = extractvalue %dx.types.ResRet.i32 %4755, 1
  %4758 = extractvalue %dx.types.ResRet.i32 %4755, 2
  %4759 = extractvalue %dx.types.ResRet.i32 %4755, 3
  %4760 = and i32 %4756, 65535
  %4761 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4760)  ; LegacyF16ToF32(value)
  %4762 = lshr i32 %4756, 16
  %4763 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4762)  ; LegacyF16ToF32(value)
  %4764 = and i32 %4757, 65535
  %4765 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4764)  ; LegacyF16ToF32(value)
  %4766 = lshr i32 %4757, 16
  %4767 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4766)  ; LegacyF16ToF32(value)
  %4768 = and i32 %4758, 65535
  %4769 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4768)  ; LegacyF16ToF32(value)
  %4770 = lshr i32 %4758, 16
  %4771 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4770)  ; LegacyF16ToF32(value)
  %4772 = and i32 %4759, 65535
  %4773 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4772)  ; LegacyF16ToF32(value)
  %4774 = lshr i32 %4759, 16
  %4775 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4774)  ; LegacyF16ToF32(value)
  %4776 = fsub fast float %4590, %4763
  %4777 = call float @dx.op.binary.f32(i32 35, float %4776, float 0.000000e+00)  ; FMax(a,b)
  %4778 = fmul fast float %4614, %4777
  %4779 = fsub fast float %4761, %4778
  %4780 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4779)  ; FMax(a,b)
  %4781 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4780)  ; FMax(a,b)
  %4782 = fsub fast float %4590, %4767
  %4783 = call float @dx.op.binary.f32(i32 35, float %4782, float 0.000000e+00)  ; FMax(a,b)
  %4784 = fmul fast float %4614, %4783
  %4785 = fsub fast float %4765, %4784
  %4786 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4785)  ; FMax(a,b)
  %4787 = call float @dx.op.binary.f32(i32 35, float %4781, float %4786)  ; FMax(a,b)
  %4788 = fsub fast float %4590, %4771
  %4789 = call float @dx.op.binary.f32(i32 35, float %4788, float 0.000000e+00)  ; FMax(a,b)
  %4790 = fmul fast float %4614, %4789
  %4791 = fsub fast float %4769, %4790
  %4792 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4791)  ; FMax(a,b)
  %4793 = call float @dx.op.binary.f32(i32 35, float %4787, float %4792)  ; FMax(a,b)
  %4794 = fsub fast float %4590, %4775
  %4795 = call float @dx.op.binary.f32(i32 35, float %4794, float 0.000000e+00)  ; FMax(a,b)
  %4796 = fmul fast float %4614, %4795
  %4797 = fsub fast float %4773, %4796
  %4798 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4797)  ; FMax(a,b)
  %4799 = call float @dx.op.binary.f32(i32 35, float %4793, float %4798)  ; FMax(a,b)
  %4800 = fmul fast float %4799, %4576
  %4801 = fadd fast float %4800, %4747
  %4802 = fmul fast float %4801, %4577
  %4803 = fadd fast float %4694, %4640
  %4804 = fadd fast float %4803, %4802
  br label %5341

; <label>:4805                                    ; preds = %4497
  %4806 = getelementptr inbounds [4 x float], [4 x float]* %53, i32 0, i32 0
  store float %4527, float* %4806, align 4
  %4807 = getelementptr inbounds [4 x float], [4 x float]* %53, i32 0, i32 1
  store float %4528, float* %4807, align 4
  %4808 = getelementptr inbounds [4 x float], [4 x float]* %53, i32 0, i32 2
  store float %4529, float* %4808, align 4
  %4809 = getelementptr inbounds [4 x float], [4 x float]* %53, i32 0, i32 3
  store float %4530, float* %4809, align 4
  %4810 = getelementptr inbounds [4 x float], [4 x float]* %53, i32 0, i32 %4466
  %4811 = load float, float* %4810, align 4, !tbaa !88
  %4812 = fmul fast float %4532, %4811
  %4813 = call float @dx.op.binary.f32(i32 35, float 1.000000e+00, float %4812)  ; FMax(a,b)
  %4814 = fmul fast float %4813, %4533
  %4815 = fmul fast float %4813, %4534
  %4816 = call float @dx.op.binary.f32(i32 35, float %4814, float -5.000000e-01)  ; FMax(a,b)
  %4817 = call float @dx.op.binary.f32(i32 35, float %4815, float -5.000000e-01)  ; FMax(a,b)
  %4818 = call float @dx.op.binary.f32(i32 36, float %4816, float 5.000000e-01)  ; FMin(a,b)
  %4819 = call float @dx.op.binary.f32(i32 36, float %4817, float 5.000000e-01)  ; FMin(a,b)
  %4820 = fadd fast float %4818, 5.000000e-01
  %4821 = fadd fast float %4819, 5.000000e-01
  %4822 = getelementptr inbounds [4 x i32], [4 x i32]* %56, i32 0, i32 0
  store i32 %4545, i32* %4822, align 4
  %4823 = getelementptr inbounds [4 x i32], [4 x i32]* %56, i32 0, i32 1
  store i32 %4546, i32* %4823, align 4
  %4824 = getelementptr inbounds [4 x i32], [4 x i32]* %56, i32 0, i32 2
  store i32 %4547, i32* %4824, align 4
  %4825 = getelementptr inbounds [4 x i32], [4 x i32]* %56, i32 0, i32 3
  store i32 %4548, i32* %4825, align 4
  %4826 = getelementptr inbounds [4 x i32], [4 x i32]* %56, i32 0, i32 %4543
  %4827 = load i32, i32* %4826, align 4, !tbaa !94
  %4828 = mul i32 %4827, %4541
  %4829 = mul i32 %4827, %4542
  %4830 = add i32 %4549, %4828
  %4831 = add i32 %4550, %4829
  %4832 = and i32 %4830, %4552
  %4833 = and i32 %4831, %4552
  %4834 = fsub fast float %4408, %4478
  %4835 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %4832, i32 %4833, i32 %4466, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4836 = extractvalue %dx.types.ResRet.i32 %4835, 0
  %4837 = extractvalue %dx.types.ResRet.i32 %4835, 1
  %4838 = extractvalue %dx.types.ResRet.i32 %4835, 2
  %4839 = extractvalue %dx.types.ResRet.i32 %4835, 3
  %4840 = and i32 %4836, 65535
  %4841 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4840)  ; LegacyF16ToF32(value)
  %4842 = lshr i32 %4836, 16
  %4843 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4842)  ; LegacyF16ToF32(value)
  %4844 = and i32 %4837, 65535
  %4845 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4844)  ; LegacyF16ToF32(value)
  %4846 = lshr i32 %4837, 16
  %4847 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4846)  ; LegacyF16ToF32(value)
  %4848 = and i32 %4838, 65535
  %4849 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4848)  ; LegacyF16ToF32(value)
  %4850 = lshr i32 %4838, 16
  %4851 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4850)  ; LegacyF16ToF32(value)
  %4852 = and i32 %4839, 65535
  %4853 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4852)  ; LegacyF16ToF32(value)
  %4854 = lshr i32 %4839, 16
  %4855 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4854)  ; LegacyF16ToF32(value)
  %4856 = fsub fast float %4834, %4843
  %4857 = call float @dx.op.binary.f32(i32 35, float %4856, float 0.000000e+00)  ; FMax(a,b)
  %4858 = extractvalue %dx.types.CBufRet.f32 %4480, 2
  %4859 = fmul fast float %4858, %4857
  %4860 = fsub fast float %4841, %4859
  %4861 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4860)  ; FMax(a,b)
  %4862 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4861)  ; FMax(a,b)
  %4863 = fsub fast float %4834, %4847
  %4864 = call float @dx.op.binary.f32(i32 35, float %4863, float 0.000000e+00)  ; FMax(a,b)
  %4865 = fmul fast float %4858, %4864
  %4866 = fsub fast float %4845, %4865
  %4867 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4866)  ; FMax(a,b)
  %4868 = call float @dx.op.binary.f32(i32 35, float %4862, float %4867)  ; FMax(a,b)
  %4869 = fsub fast float %4834, %4851
  %4870 = call float @dx.op.binary.f32(i32 35, float %4869, float 0.000000e+00)  ; FMax(a,b)
  %4871 = fmul fast float %4858, %4870
  %4872 = fsub fast float %4849, %4871
  %4873 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4872)  ; FMax(a,b)
  %4874 = call float @dx.op.binary.f32(i32 35, float %4868, float %4873)  ; FMax(a,b)
  %4875 = fsub fast float %4834, %4855
  %4876 = call float @dx.op.binary.f32(i32 35, float %4875, float 0.000000e+00)  ; FMax(a,b)
  %4877 = fmul fast float %4858, %4876
  %4878 = fsub fast float %4853, %4877
  %4879 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4878)  ; FMax(a,b)
  %4880 = call float @dx.op.binary.f32(i32 35, float %4874, float %4879)  ; FMax(a,b)
  %4881 = fsub fast float 5.000000e-01, %4818
  %4882 = fsub fast float 5.000000e-01, %4819
  %4883 = fmul fast float %4882, %4881
  %4884 = fmul fast float %4883, %4880
  store i32 %4545, i32* %4822, align 4
  store i32 %4546, i32* %4823, align 4
  store i32 %4547, i32* %4824, align 4
  store i32 %4548, i32* %4825, align 4
  %4885 = load i32, i32* %4826, align 4, !tbaa !94
  %4886 = mul i32 %4885, %4541
  %4887 = mul i32 %4885, %4542
  %4888 = add i32 %4556, %4886
  %4889 = add i32 %4550, %4887
  %4890 = and i32 %4888, %4552
  %4891 = and i32 %4889, %4552
  %4892 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %4890, i32 %4891, i32 %4466, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4893 = extractvalue %dx.types.ResRet.i32 %4892, 0
  %4894 = extractvalue %dx.types.ResRet.i32 %4892, 1
  %4895 = extractvalue %dx.types.ResRet.i32 %4892, 2
  %4896 = extractvalue %dx.types.ResRet.i32 %4892, 3
  %4897 = and i32 %4893, 65535
  %4898 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4897)  ; LegacyF16ToF32(value)
  %4899 = lshr i32 %4893, 16
  %4900 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4899)  ; LegacyF16ToF32(value)
  %4901 = and i32 %4894, 65535
  %4902 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4901)  ; LegacyF16ToF32(value)
  %4903 = lshr i32 %4894, 16
  %4904 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4903)  ; LegacyF16ToF32(value)
  %4905 = and i32 %4895, 65535
  %4906 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4905)  ; LegacyF16ToF32(value)
  %4907 = lshr i32 %4895, 16
  %4908 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4907)  ; LegacyF16ToF32(value)
  %4909 = and i32 %4896, 65535
  %4910 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4909)  ; LegacyF16ToF32(value)
  %4911 = lshr i32 %4896, 16
  %4912 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4911)  ; LegacyF16ToF32(value)
  %4913 = fsub fast float %4834, %4900
  %4914 = call float @dx.op.binary.f32(i32 35, float %4913, float 0.000000e+00)  ; FMax(a,b)
  %4915 = fmul fast float %4858, %4914
  %4916 = fsub fast float %4898, %4915
  %4917 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4916)  ; FMax(a,b)
  %4918 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4917)  ; FMax(a,b)
  %4919 = fsub fast float %4834, %4904
  %4920 = call float @dx.op.binary.f32(i32 35, float %4919, float 0.000000e+00)  ; FMax(a,b)
  %4921 = fmul fast float %4858, %4920
  %4922 = fsub fast float %4902, %4921
  %4923 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4922)  ; FMax(a,b)
  %4924 = call float @dx.op.binary.f32(i32 35, float %4918, float %4923)  ; FMax(a,b)
  %4925 = fsub fast float %4834, %4908
  %4926 = call float @dx.op.binary.f32(i32 35, float %4925, float 0.000000e+00)  ; FMax(a,b)
  %4927 = fmul fast float %4858, %4926
  %4928 = fsub fast float %4906, %4927
  %4929 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4928)  ; FMax(a,b)
  %4930 = call float @dx.op.binary.f32(i32 35, float %4924, float %4929)  ; FMax(a,b)
  %4931 = fsub fast float %4834, %4912
  %4932 = call float @dx.op.binary.f32(i32 35, float %4931, float 0.000000e+00)  ; FMax(a,b)
  %4933 = fmul fast float %4858, %4932
  %4934 = fsub fast float %4910, %4933
  %4935 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4934)  ; FMax(a,b)
  %4936 = call float @dx.op.binary.f32(i32 35, float %4930, float %4935)  ; FMax(a,b)
  %4937 = fmul fast float %4882, %4820
  %4938 = fmul fast float %4937, %4936
  store i32 %4545, i32* %4822, align 4
  store i32 %4546, i32* %4823, align 4
  store i32 %4547, i32* %4824, align 4
  store i32 %4548, i32* %4825, align 4
  %4939 = load i32, i32* %4826, align 4, !tbaa !94
  %4940 = mul i32 %4939, %4541
  %4941 = mul i32 %4939, %4542
  %4942 = add i32 %4549, %4940
  %4943 = add i32 %4560, %4941
  %4944 = and i32 %4942, %4552
  %4945 = and i32 %4943, %4552
  %4946 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %4944, i32 %4945, i32 %4466, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4947 = extractvalue %dx.types.ResRet.i32 %4946, 0
  %4948 = extractvalue %dx.types.ResRet.i32 %4946, 1
  %4949 = extractvalue %dx.types.ResRet.i32 %4946, 2
  %4950 = extractvalue %dx.types.ResRet.i32 %4946, 3
  %4951 = and i32 %4947, 65535
  %4952 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4951)  ; LegacyF16ToF32(value)
  %4953 = lshr i32 %4947, 16
  %4954 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4953)  ; LegacyF16ToF32(value)
  %4955 = and i32 %4948, 65535
  %4956 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4955)  ; LegacyF16ToF32(value)
  %4957 = lshr i32 %4948, 16
  %4958 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4957)  ; LegacyF16ToF32(value)
  %4959 = and i32 %4949, 65535
  %4960 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4959)  ; LegacyF16ToF32(value)
  %4961 = lshr i32 %4949, 16
  %4962 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4961)  ; LegacyF16ToF32(value)
  %4963 = and i32 %4950, 65535
  %4964 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4963)  ; LegacyF16ToF32(value)
  %4965 = lshr i32 %4950, 16
  %4966 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4965)  ; LegacyF16ToF32(value)
  %4967 = fsub fast float %4834, %4954
  %4968 = call float @dx.op.binary.f32(i32 35, float %4967, float 0.000000e+00)  ; FMax(a,b)
  %4969 = fmul fast float %4858, %4968
  %4970 = fsub fast float %4952, %4969
  %4971 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4970)  ; FMax(a,b)
  %4972 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4971)  ; FMax(a,b)
  %4973 = fsub fast float %4834, %4958
  %4974 = call float @dx.op.binary.f32(i32 35, float %4973, float 0.000000e+00)  ; FMax(a,b)
  %4975 = fmul fast float %4858, %4974
  %4976 = fsub fast float %4956, %4975
  %4977 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4976)  ; FMax(a,b)
  %4978 = call float @dx.op.binary.f32(i32 35, float %4972, float %4977)  ; FMax(a,b)
  %4979 = fsub fast float %4834, %4962
  %4980 = call float @dx.op.binary.f32(i32 35, float %4979, float 0.000000e+00)  ; FMax(a,b)
  %4981 = fmul fast float %4858, %4980
  %4982 = fsub fast float %4960, %4981
  %4983 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4982)  ; FMax(a,b)
  %4984 = call float @dx.op.binary.f32(i32 35, float %4978, float %4983)  ; FMax(a,b)
  %4985 = fsub fast float %4834, %4966
  %4986 = call float @dx.op.binary.f32(i32 35, float %4985, float 0.000000e+00)  ; FMax(a,b)
  %4987 = fmul fast float %4858, %4986
  %4988 = fsub fast float %4964, %4987
  %4989 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4988)  ; FMax(a,b)
  %4990 = call float @dx.op.binary.f32(i32 35, float %4984, float %4989)  ; FMax(a,b)
  %4991 = fmul fast float %4990, %4881
  store i32 %4545, i32* %4822, align 4
  store i32 %4546, i32* %4823, align 4
  store i32 %4547, i32* %4824, align 4
  store i32 %4548, i32* %4825, align 4
  %4992 = load i32, i32* %4826, align 4, !tbaa !94
  %4993 = mul i32 %4992, %4541
  %4994 = mul i32 %4992, %4542
  %4995 = add i32 %4556, %4993
  %4996 = add i32 %4560, %4994
  %4997 = and i32 %4995, %4552
  %4998 = and i32 %4996, %4552
  %4999 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %4997, i32 %4998, i32 %4466, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5000 = extractvalue %dx.types.ResRet.i32 %4999, 0
  %5001 = extractvalue %dx.types.ResRet.i32 %4999, 1
  %5002 = extractvalue %dx.types.ResRet.i32 %4999, 2
  %5003 = extractvalue %dx.types.ResRet.i32 %4999, 3
  %5004 = and i32 %5000, 65535
  %5005 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5004)  ; LegacyF16ToF32(value)
  %5006 = lshr i32 %5000, 16
  %5007 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5006)  ; LegacyF16ToF32(value)
  %5008 = and i32 %5001, 65535
  %5009 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5008)  ; LegacyF16ToF32(value)
  %5010 = lshr i32 %5001, 16
  %5011 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5010)  ; LegacyF16ToF32(value)
  %5012 = and i32 %5002, 65535
  %5013 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5012)  ; LegacyF16ToF32(value)
  %5014 = lshr i32 %5002, 16
  %5015 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5014)  ; LegacyF16ToF32(value)
  %5016 = and i32 %5003, 65535
  %5017 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5016)  ; LegacyF16ToF32(value)
  %5018 = lshr i32 %5003, 16
  %5019 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5018)  ; LegacyF16ToF32(value)
  %5020 = fsub fast float %4834, %5007
  %5021 = call float @dx.op.binary.f32(i32 35, float %5020, float 0.000000e+00)  ; FMax(a,b)
  %5022 = fmul fast float %4858, %5021
  %5023 = fsub fast float %5005, %5022
  %5024 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5023)  ; FMax(a,b)
  %5025 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5024)  ; FMax(a,b)
  %5026 = fsub fast float %4834, %5011
  %5027 = call float @dx.op.binary.f32(i32 35, float %5026, float 0.000000e+00)  ; FMax(a,b)
  %5028 = fmul fast float %4858, %5027
  %5029 = fsub fast float %5009, %5028
  %5030 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5029)  ; FMax(a,b)
  %5031 = call float @dx.op.binary.f32(i32 35, float %5025, float %5030)  ; FMax(a,b)
  %5032 = fsub fast float %4834, %5015
  %5033 = call float @dx.op.binary.f32(i32 35, float %5032, float 0.000000e+00)  ; FMax(a,b)
  %5034 = fmul fast float %4858, %5033
  %5035 = fsub fast float %5013, %5034
  %5036 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5035)  ; FMax(a,b)
  %5037 = call float @dx.op.binary.f32(i32 35, float %5031, float %5036)  ; FMax(a,b)
  %5038 = fsub fast float %4834, %5019
  %5039 = call float @dx.op.binary.f32(i32 35, float %5038, float 0.000000e+00)  ; FMax(a,b)
  %5040 = fmul fast float %4858, %5039
  %5041 = fsub fast float %5017, %5040
  %5042 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5041)  ; FMax(a,b)
  %5043 = call float @dx.op.binary.f32(i32 35, float %5037, float %5042)  ; FMax(a,b)
  %5044 = fmul fast float %5043, %4820
  %5045 = fadd fast float %5044, %4991
  %5046 = fmul fast float %5045, %4821
  %5047 = fadd fast float %4938, %4884
  %5048 = fadd fast float %5047, %5046
  %5049 = fmul fast float %4464, 5.000000e-01
  %5050 = fmul fast float %4465, 5.000000e-01
  %5051 = fadd fast float %5049, 2.500000e-01
  %5052 = fadd fast float %5050, 2.500000e-01
  %5053 = fmul fast float %4515, %5051
  %5054 = fmul fast float %4515, %5052
  %5055 = fadd fast float %5053, -5.000000e-01
  %5056 = fadd fast float %5054, -5.000000e-01
  %5057 = fptosi float %5055 to i32
  %5058 = fptosi float %5056 to i32
  %5059 = fadd fast float %5053, 5.000000e-01
  %5060 = fadd fast float %5054, 5.000000e-01
  %5061 = call float @dx.op.unary.f32(i32 22, float %5059)  ; Frc(value)
  %5062 = call float @dx.op.unary.f32(i32 22, float %5060)  ; Frc(value)
  %5063 = getelementptr inbounds [4 x float], [4 x float]* %54, i32 0, i32 0
  store float %4527, float* %5063, align 4
  %5064 = getelementptr inbounds [4 x float], [4 x float]* %54, i32 0, i32 1
  store float %4528, float* %5064, align 4
  %5065 = getelementptr inbounds [4 x float], [4 x float]* %54, i32 0, i32 2
  store float %4529, float* %5065, align 4
  %5066 = getelementptr inbounds [4 x float], [4 x float]* %54, i32 0, i32 3
  store float %4530, float* %5066, align 4
  %5067 = getelementptr inbounds [4 x float], [4 x float]* %54, i32 0, i32 %4510
  %5068 = load float, float* %5067, align 4, !tbaa !88
  %5069 = fmul fast float %4532, %5068
  %5070 = call float @dx.op.binary.f32(i32 35, float 1.000000e+00, float %5069)  ; FMax(a,b)
  %5071 = fadd fast float %5061, -5.000000e-01
  %5072 = fadd fast float %5062, -5.000000e-01
  %5073 = fmul fast float %5070, %5071
  %5074 = fmul fast float %5070, %5072
  %5075 = call float @dx.op.binary.f32(i32 35, float %5073, float -5.000000e-01)  ; FMax(a,b)
  %5076 = call float @dx.op.binary.f32(i32 35, float %5074, float -5.000000e-01)  ; FMax(a,b)
  %5077 = call float @dx.op.binary.f32(i32 36, float %5075, float 5.000000e-01)  ; FMin(a,b)
  %5078 = call float @dx.op.binary.f32(i32 36, float %5076, float 5.000000e-01)  ; FMin(a,b)
  %5079 = fadd fast float %5077, 5.000000e-01
  %5080 = fadd fast float %5078, 5.000000e-01
  %5081 = call i32 @dx.op.binary.i32(i32 37, i32 %5057, i32 0)  ; IMax(a,b)
  %5082 = call i32 @dx.op.binary.i32(i32 37, i32 %5058, i32 0)  ; IMax(a,b)
  %5083 = call i32 @dx.op.binary.i32(i32 38, i32 %5081, i32 %4535)  ; IMin(a,b)
  %5084 = call i32 @dx.op.binary.i32(i32 38, i32 %5082, i32 %4535)  ; IMin(a,b)
  %5085 = sub i32 2, %4466
  %5086 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 0
  store i32 %4545, i32* %5086, align 4
  %5087 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 1
  store i32 %4546, i32* %5087, align 4
  %5088 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 2
  store i32 %4547, i32* %5088, align 4
  %5089 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 3
  store i32 %4548, i32* %5089, align 4
  %5090 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 %5085
  %5091 = load i32, i32* %5090, align 4, !tbaa !94
  %5092 = mul i32 %5091, %4541
  %5093 = mul i32 %5091, %4542
  %5094 = add i32 %5083, 536870912
  %5095 = add i32 %5094, %5092
  %5096 = add i32 %5084, 536870912
  %5097 = add i32 %5096, %5093
  %5098 = and i32 %5095, %4552
  %5099 = and i32 %5097, %4552
  %5100 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %5098, i32 %5099, i32 %4510, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5101 = extractvalue %dx.types.ResRet.i32 %5100, 0
  %5102 = extractvalue %dx.types.ResRet.i32 %5100, 1
  %5103 = extractvalue %dx.types.ResRet.i32 %5100, 2
  %5104 = extractvalue %dx.types.ResRet.i32 %5100, 3
  %5105 = and i32 %5101, 65535
  %5106 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5105)  ; LegacyF16ToF32(value)
  %5107 = lshr i32 %5101, 16
  %5108 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5107)  ; LegacyF16ToF32(value)
  %5109 = and i32 %5102, 65535
  %5110 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5109)  ; LegacyF16ToF32(value)
  %5111 = lshr i32 %5102, 16
  %5112 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5111)  ; LegacyF16ToF32(value)
  %5113 = and i32 %5103, 65535
  %5114 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5113)  ; LegacyF16ToF32(value)
  %5115 = lshr i32 %5103, 16
  %5116 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5115)  ; LegacyF16ToF32(value)
  %5117 = and i32 %5104, 65535
  %5118 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5117)  ; LegacyF16ToF32(value)
  %5119 = lshr i32 %5104, 16
  %5120 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5119)  ; LegacyF16ToF32(value)
  %5121 = fsub fast float %4834, %5108
  %5122 = call float @dx.op.binary.f32(i32 35, float %5121, float 0.000000e+00)  ; FMax(a,b)
  %5123 = fmul fast float %4858, %5122
  %5124 = fsub fast float %5106, %5123
  %5125 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5124)  ; FMax(a,b)
  %5126 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5125)  ; FMax(a,b)
  %5127 = fsub fast float %4834, %5112
  %5128 = call float @dx.op.binary.f32(i32 35, float %5127, float 0.000000e+00)  ; FMax(a,b)
  %5129 = fmul fast float %4858, %5128
  %5130 = fsub fast float %5110, %5129
  %5131 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5130)  ; FMax(a,b)
  %5132 = call float @dx.op.binary.f32(i32 35, float %5126, float %5131)  ; FMax(a,b)
  %5133 = fsub fast float %4834, %5116
  %5134 = call float @dx.op.binary.f32(i32 35, float %5133, float 0.000000e+00)  ; FMax(a,b)
  %5135 = fmul fast float %4858, %5134
  %5136 = fsub fast float %5114, %5135
  %5137 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5136)  ; FMax(a,b)
  %5138 = call float @dx.op.binary.f32(i32 35, float %5132, float %5137)  ; FMax(a,b)
  %5139 = fsub fast float %4834, %5120
  %5140 = call float @dx.op.binary.f32(i32 35, float %5139, float 0.000000e+00)  ; FMax(a,b)
  %5141 = fmul fast float %4858, %5140
  %5142 = fsub fast float %5118, %5141
  %5143 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5142)  ; FMax(a,b)
  %5144 = call float @dx.op.binary.f32(i32 35, float %5138, float %5143)  ; FMax(a,b)
  %5145 = fsub fast float 5.000000e-01, %5077
  %5146 = fsub fast float 5.000000e-01, %5078
  %5147 = fmul fast float %5146, %5145
  %5148 = fmul fast float %5147, %5144
  %5149 = add i32 %5057, 1
  %5150 = call i32 @dx.op.binary.i32(i32 37, i32 %5149, i32 0)  ; IMax(a,b)
  %5151 = call i32 @dx.op.binary.i32(i32 38, i32 %5150, i32 %4535)  ; IMin(a,b)
  store i32 %4545, i32* %5086, align 4
  store i32 %4546, i32* %5087, align 4
  store i32 %4547, i32* %5088, align 4
  store i32 %4548, i32* %5089, align 4
  %5152 = load i32, i32* %5090, align 4, !tbaa !94
  %5153 = mul i32 %5152, %4541
  %5154 = mul i32 %5152, %4542
  %5155 = add i32 %5151, 536870912
  %5156 = add i32 %5155, %5153
  %5157 = add i32 %5096, %5154
  %5158 = and i32 %5156, %4552
  %5159 = and i32 %5157, %4552
  %5160 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %5158, i32 %5159, i32 %4510, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5161 = extractvalue %dx.types.ResRet.i32 %5160, 0
  %5162 = extractvalue %dx.types.ResRet.i32 %5160, 1
  %5163 = extractvalue %dx.types.ResRet.i32 %5160, 2
  %5164 = extractvalue %dx.types.ResRet.i32 %5160, 3
  %5165 = and i32 %5161, 65535
  %5166 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5165)  ; LegacyF16ToF32(value)
  %5167 = lshr i32 %5161, 16
  %5168 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5167)  ; LegacyF16ToF32(value)
  %5169 = and i32 %5162, 65535
  %5170 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5169)  ; LegacyF16ToF32(value)
  %5171 = lshr i32 %5162, 16
  %5172 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5171)  ; LegacyF16ToF32(value)
  %5173 = and i32 %5163, 65535
  %5174 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5173)  ; LegacyF16ToF32(value)
  %5175 = lshr i32 %5163, 16
  %5176 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5175)  ; LegacyF16ToF32(value)
  %5177 = and i32 %5164, 65535
  %5178 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5177)  ; LegacyF16ToF32(value)
  %5179 = lshr i32 %5164, 16
  %5180 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5179)  ; LegacyF16ToF32(value)
  %5181 = fsub fast float %4834, %5168
  %5182 = call float @dx.op.binary.f32(i32 35, float %5181, float 0.000000e+00)  ; FMax(a,b)
  %5183 = fmul fast float %4858, %5182
  %5184 = fsub fast float %5166, %5183
  %5185 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5184)  ; FMax(a,b)
  %5186 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5185)  ; FMax(a,b)
  %5187 = fsub fast float %4834, %5172
  %5188 = call float @dx.op.binary.f32(i32 35, float %5187, float 0.000000e+00)  ; FMax(a,b)
  %5189 = fmul fast float %4858, %5188
  %5190 = fsub fast float %5170, %5189
  %5191 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5190)  ; FMax(a,b)
  %5192 = call float @dx.op.binary.f32(i32 35, float %5186, float %5191)  ; FMax(a,b)
  %5193 = fsub fast float %4834, %5176
  %5194 = call float @dx.op.binary.f32(i32 35, float %5193, float 0.000000e+00)  ; FMax(a,b)
  %5195 = fmul fast float %4858, %5194
  %5196 = fsub fast float %5174, %5195
  %5197 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5196)  ; FMax(a,b)
  %5198 = call float @dx.op.binary.f32(i32 35, float %5192, float %5197)  ; FMax(a,b)
  %5199 = fsub fast float %4834, %5180
  %5200 = call float @dx.op.binary.f32(i32 35, float %5199, float 0.000000e+00)  ; FMax(a,b)
  %5201 = fmul fast float %4858, %5200
  %5202 = fsub fast float %5178, %5201
  %5203 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5202)  ; FMax(a,b)
  %5204 = call float @dx.op.binary.f32(i32 35, float %5198, float %5203)  ; FMax(a,b)
  %5205 = fmul fast float %5146, %5079
  %5206 = fmul fast float %5205, %5204
  %5207 = add i32 %5058, 1
  %5208 = call i32 @dx.op.binary.i32(i32 37, i32 %5207, i32 0)  ; IMax(a,b)
  %5209 = call i32 @dx.op.binary.i32(i32 38, i32 %5208, i32 %4535)  ; IMin(a,b)
  store i32 %4545, i32* %5086, align 4
  store i32 %4546, i32* %5087, align 4
  store i32 %4547, i32* %5088, align 4
  store i32 %4548, i32* %5089, align 4
  %5210 = load i32, i32* %5090, align 4, !tbaa !94
  %5211 = mul i32 %5210, %4541
  %5212 = mul i32 %5210, %4542
  %5213 = add i32 %5094, %5211
  %5214 = add i32 %5209, 536870912
  %5215 = add i32 %5214, %5212
  %5216 = and i32 %5213, %4552
  %5217 = and i32 %5215, %4552
  %5218 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %5216, i32 %5217, i32 %4510, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5219 = extractvalue %dx.types.ResRet.i32 %5218, 0
  %5220 = extractvalue %dx.types.ResRet.i32 %5218, 1
  %5221 = extractvalue %dx.types.ResRet.i32 %5218, 2
  %5222 = extractvalue %dx.types.ResRet.i32 %5218, 3
  %5223 = and i32 %5219, 65535
  %5224 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5223)  ; LegacyF16ToF32(value)
  %5225 = lshr i32 %5219, 16
  %5226 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5225)  ; LegacyF16ToF32(value)
  %5227 = and i32 %5220, 65535
  %5228 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5227)  ; LegacyF16ToF32(value)
  %5229 = lshr i32 %5220, 16
  %5230 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5229)  ; LegacyF16ToF32(value)
  %5231 = and i32 %5221, 65535
  %5232 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5231)  ; LegacyF16ToF32(value)
  %5233 = lshr i32 %5221, 16
  %5234 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5233)  ; LegacyF16ToF32(value)
  %5235 = and i32 %5222, 65535
  %5236 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5235)  ; LegacyF16ToF32(value)
  %5237 = lshr i32 %5222, 16
  %5238 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5237)  ; LegacyF16ToF32(value)
  %5239 = fsub fast float %4834, %5226
  %5240 = call float @dx.op.binary.f32(i32 35, float %5239, float 0.000000e+00)  ; FMax(a,b)
  %5241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 339)  ; CBufferLoadLegacy(handle,regIndex)
  %5242 = extractvalue %dx.types.CBufRet.f32 %5241, 2
  %5243 = fmul fast float %5242, %5240
  %5244 = fsub fast float %5224, %5243
  %5245 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5244)  ; FMax(a,b)
  %5246 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5245)  ; FMax(a,b)
  %5247 = fsub fast float %4834, %5230
  %5248 = call float @dx.op.binary.f32(i32 35, float %5247, float 0.000000e+00)  ; FMax(a,b)
  %5249 = fmul fast float %5242, %5248
  %5250 = fsub fast float %5228, %5249
  %5251 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5250)  ; FMax(a,b)
  %5252 = call float @dx.op.binary.f32(i32 35, float %5246, float %5251)  ; FMax(a,b)
  %5253 = fsub fast float %4834, %5234
  %5254 = call float @dx.op.binary.f32(i32 35, float %5253, float 0.000000e+00)  ; FMax(a,b)
  %5255 = fmul fast float %5242, %5254
  %5256 = fsub fast float %5232, %5255
  %5257 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5256)  ; FMax(a,b)
  %5258 = call float @dx.op.binary.f32(i32 35, float %5252, float %5257)  ; FMax(a,b)
  %5259 = fsub fast float %4834, %5238
  %5260 = call float @dx.op.binary.f32(i32 35, float %5259, float 0.000000e+00)  ; FMax(a,b)
  %5261 = fmul fast float %5242, %5260
  %5262 = fsub fast float %5236, %5261
  %5263 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5262)  ; FMax(a,b)
  %5264 = call float @dx.op.binary.f32(i32 35, float %5258, float %5263)  ; FMax(a,b)
  %5265 = fmul fast float %5264, %5145
  store i32 %4545, i32* %5086, align 4
  store i32 %4546, i32* %5087, align 4
  store i32 %4547, i32* %5088, align 4
  store i32 %4548, i32* %5089, align 4
  %5266 = load i32, i32* %5090, align 4, !tbaa !94
  %5267 = mul i32 %5266, %4541
  %5268 = mul i32 %5266, %4542
  %5269 = add i32 %5155, %5267
  %5270 = add i32 %5214, %5268
  %5271 = and i32 %5269, %4552
  %5272 = and i32 %5270, %4552
  %5273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 335)  ; CBufferLoadLegacy(handle,regIndex)
  %5274 = extractvalue %dx.types.CBufRet.f32 %5273, 0
  %5275 = fsub fast float %4408, %5274
  %5276 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %5271, i32 %5272, i32 %4510, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5277 = extractvalue %dx.types.ResRet.i32 %5276, 0
  %5278 = extractvalue %dx.types.ResRet.i32 %5276, 1
  %5279 = extractvalue %dx.types.ResRet.i32 %5276, 2
  %5280 = extractvalue %dx.types.ResRet.i32 %5276, 3
  %5281 = and i32 %5277, 65535
  %5282 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5281)  ; LegacyF16ToF32(value)
  %5283 = lshr i32 %5277, 16
  %5284 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5283)  ; LegacyF16ToF32(value)
  %5285 = and i32 %5278, 65535
  %5286 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5285)  ; LegacyF16ToF32(value)
  %5287 = lshr i32 %5278, 16
  %5288 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5287)  ; LegacyF16ToF32(value)
  %5289 = and i32 %5279, 65535
  %5290 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5289)  ; LegacyF16ToF32(value)
  %5291 = lshr i32 %5279, 16
  %5292 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5291)  ; LegacyF16ToF32(value)
  %5293 = and i32 %5280, 65535
  %5294 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5293)  ; LegacyF16ToF32(value)
  %5295 = lshr i32 %5280, 16
  %5296 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5295)  ; LegacyF16ToF32(value)
  %5297 = fsub fast float %5275, %5284
  %5298 = call float @dx.op.binary.f32(i32 35, float %5297, float 0.000000e+00)  ; FMax(a,b)
  %5299 = fmul fast float %5242, %5298
  %5300 = fsub fast float %5282, %5299
  %5301 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5300)  ; FMax(a,b)
  %5302 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5301)  ; FMax(a,b)
  %5303 = fsub fast float %5275, %5288
  %5304 = call float @dx.op.binary.f32(i32 35, float %5303, float 0.000000e+00)  ; FMax(a,b)
  %5305 = fmul fast float %5242, %5304
  %5306 = fsub fast float %5286, %5305
  %5307 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5306)  ; FMax(a,b)
  %5308 = call float @dx.op.binary.f32(i32 35, float %5302, float %5307)  ; FMax(a,b)
  %5309 = fsub fast float %5275, %5292
  %5310 = call float @dx.op.binary.f32(i32 35, float %5309, float 0.000000e+00)  ; FMax(a,b)
  %5311 = fmul fast float %5242, %5310
  %5312 = fsub fast float %5290, %5311
  %5313 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5312)  ; FMax(a,b)
  %5314 = call float @dx.op.binary.f32(i32 35, float %5308, float %5313)  ; FMax(a,b)
  %5315 = fsub fast float %5275, %5296
  %5316 = call float @dx.op.binary.f32(i32 35, float %5315, float 0.000000e+00)  ; FMax(a,b)
  %5317 = fmul fast float %5242, %5316
  %5318 = fsub fast float %5294, %5317
  %5319 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5318)  ; FMax(a,b)
  %5320 = call float @dx.op.binary.f32(i32 35, float %5314, float %5319)  ; FMax(a,b)
  %5321 = fmul fast float %5320, %5079
  %5322 = fadd fast float %5321, %5265
  %5323 = fmul fast float %5322, %5080
  %5324 = fadd fast float %5206, %5148
  %5325 = fadd fast float %5324, %5323
  %5326 = call float @dx.op.binary.f32(i32 35, float %4502, float %4503)  ; FMax(a,b)
  %5327 = extractvalue %dx.types.CBufRet.f32 %5241, 1
  %5328 = fmul fast float %5327, 2.000000e+00
  %5329 = fadd fast float %5326, -1.000000e+00
  %5330 = fadd fast float %5329, %5328
  %5331 = fdiv fast float %5330, %5328
  %5332 = call float @dx.op.unary.f32(i32 7, float %5331)  ; Saturate(value)
  %5333 = fmul fast float %5332, 2.000000e+00
  %5334 = fsub fast float 3.000000e+00, %5333
  %5335 = fmul fast float %5332, %5332
  %5336 = fmul fast float %5335, %5334
  %5337 = fmul fast float %5336, %5325
  %5338 = fsub fast float 1.000000e+00, %5336
  %5339 = fmul fast float %5338, %5048
  %5340 = fadd fast float %5339, %5337
  br label %5341

; <label>:5341                                    ; preds = %4805, %4561, %4463
  %5342 = phi float [ 0.000000e+00, %4463 ], [ %5340, %4805 ], [ %4804, %4561 ]
  %5343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5344 = extractvalue %dx.types.CBufRet.f32 %5343, 0
  %5345 = extractvalue %dx.types.CBufRet.f32 %5343, 1
  %5346 = fsub fast float %4406, %5344
  %5347 = fsub fast float %4407, %5345
  %5348 = fmul fast float %5346, %5346
  %5349 = fmul fast float %5347, %5347
  %5350 = fadd fast float %5348, %5349
  %5351 = call float @dx.op.unary.f32(i32 24, float %5350)  ; Sqrt(value)
  %5352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 336)  ; CBufferLoadLegacy(handle,regIndex)
  %5353 = extractvalue %dx.types.CBufRet.f32 %5352, 0
  %5354 = extractvalue %dx.types.CBufRet.f32 %5352, 1
  %5355 = fsub fast float %5354, %5353
  %5356 = fsub fast float %5351, %5353
  %5357 = fdiv fast float %5356, %5355
  %5358 = call float @dx.op.unary.f32(i32 7, float %5357)  ; Saturate(value)
  %5359 = fmul fast float %5358, 2.000000e+00
  %5360 = fsub fast float 3.000000e+00, %5359
  %5361 = fmul fast float %5358, %5358
  %5362 = fmul fast float %5361, %5360
  %5363 = fsub fast float 1.000000e+00, %5362
  %5364 = fmul fast float %5363, %5342
  %5365 = fadd fast float %5364, %4399
  %5366 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 369)  ; CBufferLoadLegacy(handle,regIndex)
  %5367 = extractvalue %dx.types.CBufRet.i32 %5366, 0
  %5368 = and i32 %5367, 7
  %5369 = icmp eq i32 %5368, 0
  br i1 %5369, label %5441, label %5370

; <label>:5370                                    ; preds = %5341
  %5371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5372 = extractvalue %dx.types.CBufRet.f32 %5371, 0
  %5373 = extractvalue %dx.types.CBufRet.f32 %5371, 1
  %5374 = extractvalue %dx.types.CBufRet.f32 %5371, 2
  %5375 = fadd fast float %5372, %167
  %5376 = fadd fast float %5373, %168
  %5377 = fadd fast float %5374, %169
  %5378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 151)  ; CBufferLoadLegacy(handle,regIndex)
  %5379 = extractvalue %dx.types.CBufRet.f32 %5378, 0
  %5380 = extractvalue %dx.types.CBufRet.f32 %5378, 1
  %5381 = extractvalue %dx.types.CBufRet.f32 %5378, 2
  %5382 = extractvalue %dx.types.CBufRet.f32 %5378, 3
  %5383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 152)  ; CBufferLoadLegacy(handle,regIndex)
  %5384 = extractvalue %dx.types.CBufRet.f32 %5383, 0
  %5385 = extractvalue %dx.types.CBufRet.f32 %5383, 1
  %5386 = extractvalue %dx.types.CBufRet.f32 %5383, 2
  %5387 = extractvalue %dx.types.CBufRet.f32 %5383, 3
  %5388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 153)  ; CBufferLoadLegacy(handle,regIndex)
  %5389 = extractvalue %dx.types.CBufRet.f32 %5388, 0
  %5390 = extractvalue %dx.types.CBufRet.f32 %5388, 1
  %5391 = extractvalue %dx.types.CBufRet.f32 %5388, 2
  %5392 = extractvalue %dx.types.CBufRet.f32 %5388, 3
  %5393 = fmul fast float %5375, %5379
  %5394 = call float @dx.op.tertiary.f32(i32 46, float %5376, float %5380, float %5393)  ; FMad(a,b,c)
  %5395 = call float @dx.op.tertiary.f32(i32 46, float %5377, float %5381, float %5394)  ; FMad(a,b,c)
  %5396 = fadd fast float %5395, %5382
  %5397 = fmul fast float %5384, %5375
  %5398 = call float @dx.op.tertiary.f32(i32 46, float %5376, float %5385, float %5397)  ; FMad(a,b,c)
  %5399 = call float @dx.op.tertiary.f32(i32 46, float %5377, float %5386, float %5398)  ; FMad(a,b,c)
  %5400 = fadd fast float %5399, %5387
  %5401 = fmul fast float %5389, %5375
  %5402 = call float @dx.op.tertiary.f32(i32 46, float %5376, float %5390, float %5401)  ; FMad(a,b,c)
  %5403 = call float @dx.op.tertiary.f32(i32 46, float %5377, float %5391, float %5402)  ; FMad(a,b,c)
  %5404 = fadd fast float %5403, %5392
  %5405 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 155)  ; CBufferLoadLegacy(handle,regIndex)
  %5406 = extractvalue %dx.types.CBufRet.f32 %5405, 1
  %5407 = extractvalue %dx.types.CBufRet.f32 %5405, 0
  %5408 = fmul fast float %5407, %239
  %5409 = fadd fast float %5404, %5408
  %5410 = fmul fast float %239, 0x401921FB60000000
  %5411 = call float @dx.op.unary.f32(i32 13, float %5410)  ; Sin(value)
  %5412 = call float @dx.op.unary.f32(i32 12, float %5410)  ; Cos(value)
  %5413 = fmul fast float %5412, %5406
  %5414 = call float @dx.op.tertiary.f32(i32 46, float %5411, float %5406, float 0.000000e+00)  ; FMad(a,b,c)
  %5415 = fmul fast float %5406, %5411
  %5416 = fsub fast float -0.000000e+00, %5415
  %5417 = call float @dx.op.tertiary.f32(i32 46, float %5412, float %5406, float 0.000000e+00)  ; FMad(a,b,c)
  br label %5418

; <label>:5418                                    ; preds = %5418, %5370
  %5419 = phi float [ 0.000000e+00, %5370 ], [ %5433, %5418 ]
  %5420 = phi i32 [ 0, %5370 ], [ %5434, %5418 ]
  %5421 = getelementptr [4 x float], [4 x float]* @PCF_OFFSETS_4.0, i32 0, i32 %5420
  %5422 = getelementptr [4 x float], [4 x float]* @PCF_OFFSETS_4.1, i32 0, i32 %5420
  %5423 = load float, float* %5421, align 4
  %5424 = load float, float* %5422, align 4
  %5425 = fmul fast float %5413, %5423
  %5426 = call float @dx.op.tertiary.f32(i32 46, float %5424, float %5416, float %5425)  ; FMad(a,b,c)
  %5427 = fmul fast float %5423, %5414
  %5428 = call float @dx.op.tertiary.f32(i32 46, float %5424, float %5417, float %5427)  ; FMad(a,b,c)
  %5429 = fadd fast float %5396, %5426
  %5430 = fadd fast float %5400, %5428
  %5431 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %2, %dx.types.Handle %48, float %5429, float %5430, float undef, float undef, i32 0, i32 0, i32 undef, float %5409)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5432 = extractvalue %dx.types.ResRet.f32 %5431, 0
  %5433 = fadd fast float %5432, %5419
  %5434 = add nuw nsw i32 %5420, 1
  %5435 = icmp eq i32 %5434, 4
  br i1 %5435, label %5436, label %5418

; <label>:5436                                    ; preds = %5418
  %5437 = fmul fast float %5433, 2.500000e-01
  %5438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 370)  ; CBufferLoadLegacy(handle,regIndex)
  %5439 = extractvalue %dx.types.CBufRet.f32 %5438, 1
  %5440 = fmul fast float %5439, %5437
  br label %5441

; <label>:5441                                    ; preds = %5436, %5341
  %5442 = phi float [ %5437, %5436 ], [ 0.000000e+00, %5341 ]
  %5443 = phi float [ %5440, %5436 ], [ 0.000000e+00, %5341 ]
  %5444 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 369)  ; CBufferLoadLegacy(handle,regIndex)
  %5445 = extractvalue %dx.types.CBufRet.i32 %5444, 0
  %5446 = and i32 %5445, 7
  %5447 = icmp eq i32 %5446, 0
  br i1 %5447, label %5525, label %5448

; <label>:5448                                    ; preds = %5441
  %5449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 370)  ; CBufferLoadLegacy(handle,regIndex)
  %5450 = extractvalue %dx.types.CBufRet.f32 %5449, 0
  %5451 = fmul fast float %5450, %5442
  %5452 = fadd fast float %5451, %5365
  %5453 = extractvalue %dx.types.CBufRet.f32 %5449, 2
  %5454 = fmul fast float %5453, %5442
  %5455 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 371)  ; CBufferLoadLegacy(handle,regIndex)
  %5456 = extractvalue %dx.types.CBufRet.f32 %5455, 0
  %5457 = fmul fast float %5456, %5442
  %5458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5459 = and i32 %5445, 8
  %5460 = icmp eq i32 %5459, 0
  br i1 %5460, label %5525, label %5461

; <label>:5461                                    ; preds = %5448
  %5462 = extractvalue %dx.types.CBufRet.f32 %5458, 2
  %5463 = fadd fast float %5462, %169
  %5464 = extractvalue %dx.types.CBufRet.f32 %5458, 1
  %5465 = fadd fast float %5464, %168
  %5466 = extractvalue %dx.types.CBufRet.f32 %5458, 0
  %5467 = fadd fast float %5466, %167
  %5468 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 377)  ; CBufferLoadLegacy(handle,regIndex)
  %5469 = extractvalue %dx.types.CBufRet.f32 %5468, 0
  %5470 = extractvalue %dx.types.CBufRet.f32 %5468, 1
  %5471 = extractvalue %dx.types.CBufRet.f32 %5468, 2
  %5472 = fsub fast float %5467, %5469
  %5473 = fsub fast float %5465, %5470
  %5474 = fsub fast float %5463, %5471
  %5475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 378)  ; CBufferLoadLegacy(handle,regIndex)
  %5476 = extractvalue %dx.types.CBufRet.f32 %5475, 0
  %5477 = extractvalue %dx.types.CBufRet.f32 %5475, 1
  %5478 = extractvalue %dx.types.CBufRet.f32 %5475, 2
  %5479 = fmul fast float %5472, %5476
  %5480 = fmul fast float %5473, %5477
  %5481 = fmul fast float %5474, %5478
  %5482 = fcmp fast oge float %5479, 0.000000e+00
  %5483 = fcmp fast oge float %5480, 0.000000e+00
  %5484 = fcmp fast oge float %5481, 0.000000e+00
  %5485 = and i1 %5482, %5483
  %5486 = and i1 %5484, %5485
  %5487 = fcmp fast ole float %5479, 1.000000e+00
  %5488 = fcmp fast ole float %5480, 1.000000e+00
  %5489 = fcmp fast ole float %5481, 1.000000e+00
  %5490 = and i1 %5487, %5488
  %5491 = and i1 %5489, %5490
  %5492 = and i1 %5486, %5491
  br i1 %5492, label %5493, label %5525

; <label>:5493                                    ; preds = %5461
  %5494 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 379)  ; CBufferLoadLegacy(handle,regIndex)
  %5495 = extractvalue %dx.types.CBufRet.i32 %5494, 0
  %5496 = icmp eq i32 %5495, 0
  br i1 %5496, label %5503, label %5497

; <label>:5497                                    ; preds = %5493
  %5498 = add i32 %5495, 0
  %5499 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5498, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5500 = fsub fast float -0.000000e+00, %5480
  %5501 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %5499, %dx.types.Handle %101, float %5479, float %5500, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %5502 = extractvalue %dx.types.ResRet.f32 %5501, 0
  br label %5503

; <label>:5503                                    ; preds = %5497, %5493
  %5504 = phi float [ %5502, %5497 ], [ 1.000000e+00, %5493 ]
  %5505 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 369)  ; CBufferLoadLegacy(handle,regIndex)
  %5506 = extractvalue %dx.types.CBufRet.i32 %5505, 0
  %5507 = and i32 %5506, 32
  %5508 = icmp ne i32 %5507, 0
  %5509 = fmul fast float %5504, %5442
  %5510 = select i1 %5508, float %5504, float %5509
  %5511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 379)  ; CBufferLoadLegacy(handle,regIndex)
  %5512 = extractvalue %dx.types.CBufRet.f32 %5511, 1
  %5513 = fmul fast float %5510, %5512
  %5514 = fadd fast float %5513, %5452
  %5515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 380)  ; CBufferLoadLegacy(handle,regIndex)
  %5516 = extractvalue %dx.types.CBufRet.f32 %5515, 0
  %5517 = fmul fast float %5510, %5516
  %5518 = fadd fast float %5517, %5443
  %5519 = extractvalue %dx.types.CBufRet.f32 %5515, 1
  %5520 = fmul fast float %5510, %5519
  %5521 = fadd fast float %5520, %5454
  %5522 = extractvalue %dx.types.CBufRet.f32 %5515, 2
  %5523 = fmul fast float %5522, %5510
  %5524 = fadd fast float %5523, %5457
  br label %5525

; <label>:5525                                    ; preds = %5503, %5461, %5448, %5441, %4395
  %5526 = phi float [ %5365, %5441 ], [ %4399, %4395 ], [ %5514, %5503 ], [ %5452, %5461 ], [ %5452, %5448 ]
  %5527 = phi float [ %5443, %5441 ], [ 0.000000e+00, %4395 ], [ %5518, %5503 ], [ %5443, %5461 ], [ %5443, %5448 ]
  %5528 = phi float [ 0.000000e+00, %5441 ], [ 0.000000e+00, %4395 ], [ %5521, %5503 ], [ %5454, %5461 ], [ %5454, %5448 ]
  %5529 = phi float [ 0.000000e+00, %5441 ], [ 0.000000e+00, %4395 ], [ %5524, %5503 ], [ %5457, %5461 ], [ %5457, %5448 ]
  %5530 = call float @dx.op.unary.f32(i32 7, float %5526)  ; Saturate(value)
  %5531 = call float @dx.op.unary.f32(i32 7, float %5527)  ; Saturate(value)
  %5532 = call float @dx.op.unary.f32(i32 7, float %5528)  ; Saturate(value)
  %5533 = call float @dx.op.unary.f32(i32 7, float %5529)  ; Saturate(value)
  %5534 = fcmp fast une float %5532, 0.000000e+00
  %5535 = fcmp fast une float %5533, 0.000000e+00
  %5536 = or i1 %5534, %5535
  br i1 %5536, label %5537, label %6103

; <label>:5537                                    ; preds = %5525
  %5538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5539 = extractvalue %dx.types.CBufRet.f32 %5538, 0
  %5540 = extractvalue %dx.types.CBufRet.f32 %5538, 1
  %5541 = extractvalue %dx.types.CBufRet.f32 %5538, 2
  %5542 = fadd fast float %5539, %167
  %5543 = fadd fast float %5540, %168
  %5544 = fadd fast float %5541, %169
  br i1 %5534, label %5545, label %5818

; <label>:5545                                    ; preds = %5537
  %5546 = call float @dx.op.unary.f32(i32 23, float %4274)  ; Log(value)
  %5547 = fmul fast float %5546, 4.000000e+00
  %5548 = call float @dx.op.unary.f32(i32 21, float %5547)  ; Exp(value)
  %5549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %5550 = extractvalue %dx.types.CBufRet.f32 %5549, 0
  %5551 = fmul fast float %5550, %5542
  %5552 = fmul fast float %5550, %5543
  %5553 = fmul fast float %5550, %5544
  %5554 = call float @dx.op.unary.f32(i32 6, float %111)  ; FAbs(value)
  %5555 = call float @dx.op.unary.f32(i32 6, float %112)  ; FAbs(value)
  %5556 = call float @dx.op.unary.f32(i32 6, float %113)  ; FAbs(value)
  %5557 = call float @dx.op.unary.f32(i32 23, float %5554)  ; Log(value)
  %5558 = call float @dx.op.unary.f32(i32 23, float %5555)  ; Log(value)
  %5559 = call float @dx.op.unary.f32(i32 23, float %5556)  ; Log(value)
  %5560 = fmul fast float %5557, 4.000000e+00
  %5561 = fmul fast float %5558, 4.000000e+00
  %5562 = fmul fast float %5559, 4.000000e+00
  %5563 = call float @dx.op.unary.f32(i32 21, float %5560)  ; Exp(value)
  %5564 = call float @dx.op.unary.f32(i32 21, float %5561)  ; Exp(value)
  %5565 = call float @dx.op.unary.f32(i32 21, float %5562)  ; Exp(value)
  %5566 = fadd fast float %5564, %5563
  %5567 = fadd fast float %5566, %5565
  %5568 = fdiv fast float 1.000000e+00, %5567
  %5569 = fmul fast float %5568, %5563
  %5570 = fcmp fast ogt float %111, 0.000000e+00
  %5571 = fcmp fast ogt float %112, 0.000000e+00
  %5572 = fcmp fast ogt float %113, 0.000000e+00
  %5573 = fcmp fast olt float %111, 0.000000e+00
  %5574 = fcmp fast olt float %112, 0.000000e+00
  %5575 = fcmp fast olt float %113, 0.000000e+00
  %5576 = zext i1 %5570 to i32
  %5577 = zext i1 %5571 to i32
  %5578 = zext i1 %5572 to i32
  %5579 = zext i1 %5573 to i32
  %5580 = zext i1 %5574 to i32
  %5581 = zext i1 %5575 to i32
  %5582 = sub nsw i32 %5576, %5579
  %5583 = sub nsw i32 %5577, %5580
  %5584 = sub nsw i32 %5578, %5581
  %5585 = call float @dx.op.unary.f32(i32 83, float %5551)  ; DerivCoarseX(value)
  %5586 = call float @dx.op.unary.f32(i32 83, float %5552)  ; DerivCoarseX(value)
  %5587 = call float @dx.op.unary.f32(i32 83, float %5553)  ; DerivCoarseX(value)
  %5588 = call float @dx.op.unary.f32(i32 84, float %5551)  ; DerivCoarseY(value)
  %5589 = call float @dx.op.unary.f32(i32 84, float %5552)  ; DerivCoarseY(value)
  %5590 = call float @dx.op.unary.f32(i32 84, float %5553)  ; DerivCoarseY(value)
  %5591 = fcmp fast ole float %239, %5569
  %5592 = fmul fast float %5568, %5566
  %5593 = fcmp fast ole float %239, %5592
  %5594 = select i1 %5593, float %5553, float %5551
  %5595 = select i1 %5593, float %5551, float %5552
  %5596 = select i1 %5591, float %5552, float %5594
  %5597 = select i1 %5591, float %5553, float %5595
  %5598 = select i1 %5593, float %5587, float %5585
  %5599 = select i1 %5593, float %5585, float %5586
  %5600 = select i1 %5591, float %5586, float %5598
  %5601 = select i1 %5591, float %5587, float %5599
  %5602 = select i1 %5593, float %5590, float %5588
  %5603 = select i1 %5593, float %5588, float %5589
  %5604 = select i1 %5591, float %5589, float %5602
  %5605 = select i1 %5591, float %5590, float %5603
  %5606 = call float @dx.op.unary.f32(i32 27, float %5596)  ; Round_ni(value)
  %5607 = call float @dx.op.unary.f32(i32 27, float %5597)  ; Round_ni(value)
  %5608 = fptosi float %5606 to i32
  %5609 = fptosi float %5607 to i32
  %5610 = xor i32 %5609, %5608
  %5611 = sitofp i32 %5610 to float
  %5612 = fptosi float %5611 to i32
  %5613 = sitofp i32 %5612 to float
  %5614 = fmul fast float %5613, 0x3FE3C6EF40000000
  %5615 = frem fast float %5606, 2.560000e+02
  %5616 = frem fast float %5607, 2.560000e+02
  %5617 = fptoui float %5615 to i32
  %5618 = fptoui float %5616 to i32
  %5619 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %29, i32 0, i32 %5617, i32 %5618, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5620 = extractvalue %dx.types.ResRet.f32 %5619, 0
  %5621 = extractvalue %dx.types.ResRet.f32 %5619, 1
  %5622 = extractvalue %dx.types.ResRet.f32 %5619, 2
  %5623 = fadd fast float %5620, %5614
  %5624 = fadd fast float %5621, %5614
  %5625 = fadd fast float %5622, %5614
  %5626 = call float @dx.op.unary.f32(i32 22, float %5623)  ; Frc(value)
  %5627 = call float @dx.op.unary.f32(i32 22, float %5624)  ; Frc(value)
  %5628 = call float @dx.op.unary.f32(i32 22, float %5625)  ; Frc(value)
  %5629 = fmul fast float %5628, 0x401921FB60000000
  %5630 = call float @dx.op.unary.f32(i32 13, float %5629)  ; Sin(value)
  %5631 = call float @dx.op.unary.f32(i32 12, float %5629)  ; Cos(value)
  %5632 = fsub fast float -0.000000e+00, %5631
  %5633 = fmul fast float %5631, %5596
  %5634 = call float @dx.op.tertiary.f32(i32 46, float %5630, float %5597, float %5633)  ; FMad(a,b,c)
  %5635 = fmul fast float %5630, %5596
  %5636 = call float @dx.op.tertiary.f32(i32 46, float %5632, float %5597, float %5635)  ; FMad(a,b,c)
  %5637 = fadd fast float %5634, %5626
  %5638 = fadd fast float %5636, %5627
  %5639 = extractvalue %dx.types.CBufRet.f32 %5549, 3
  %5640 = bitcast float %5639 to i32
  %5641 = icmp eq i32 %5640, 0
  br i1 %5641, label %5680, label %5642

; <label>:5642                                    ; preds = %5545
  %5643 = add i32 %5640, 0
  %5644 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5643, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5645 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5644, %dx.types.Handle %101, float %5637, float %5638, float undef, float undef, i32 0, i32 0, i32 undef, float %5600, float %5601, float undef, float %5604, float %5605, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5646 = extractvalue %dx.types.ResRet.f32 %5645, 0
  %5647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %5648 = extractvalue %dx.types.CBufRet.f32 %5647, 1
  %5649 = extractvalue %dx.types.CBufRet.f32 %5647, 2
  %5650 = fsub fast float 1.000000e+00, %5532
  %5651 = call float @dx.op.binary.f32(i32 35, float %5650, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5652 = bitcast float %5532 to i32
  %5653 = sitofp i32 %5652 to float
  %5654 = fadd fast float %5653, 0xC1CFBF8940000000
  %5655 = fmul fast float %5649, %5654
  %5656 = fadd fast float %5655, 0x41CFBF8940000000
  %5657 = fptosi float %5656 to i32
  %5658 = bitcast i32 %5657 to float
  %5659 = bitcast float %5651 to i32
  %5660 = sitofp i32 %5659 to float
  %5661 = fadd fast float %5660, 0xC1CFBF8940000000
  %5662 = fmul fast float %5661, %5649
  %5663 = fadd fast float %5662, 0x41CFBF8940000000
  %5664 = fptosi float %5663 to i32
  %5665 = bitcast i32 %5664 to float
  %5666 = fmul fast float %5658, %5648
  %5667 = fmul fast float %5665, %5648
  %5668 = fsub fast float %5651, %5666
  %5669 = fadd fast float %5667, %5651
  %5670 = call float @dx.op.unary.f32(i32 7, float %5668)  ; Saturate(value)
  %5671 = call float @dx.op.unary.f32(i32 7, float %5669)  ; Saturate(value)
  %5672 = fsub fast float %5646, %5670
  %5673 = fsub fast float %5671, %5670
  %5674 = bitcast float %5673 to i32
  %5675 = sub nsw i32 2129859010, %5674
  %5676 = bitcast i32 %5675 to float
  %5677 = fmul fast float %5676, %5672
  %5678 = call float @dx.op.unary.f32(i32 7, float %5677)  ; Saturate(value)
  %5679 = fcmp fast olt float %5678, 0x3F70101020000000
  br i1 %5679, label %5818, label %5680

; <label>:5680                                    ; preds = %5642, %5545
  %5681 = phi float [ %5678, %5642 ], [ %5532, %5545 ]
  %5682 = fmul fast float %5681, %5548
  %5683 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %5684 = extractvalue %dx.types.CBufRet.i32 %5683, 1
  %5685 = extractvalue %dx.types.CBufRet.i32 %5683, 0
  %5686 = add i32 %5685, 0
  %5687 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5686, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5688 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5687, %dx.types.Handle %100, float %5637, float %5638, float undef, float undef, i32 0, i32 0, i32 undef, float %5600, float %5601, float undef, float %5604, float %5605, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5689 = extractvalue %dx.types.ResRet.f32 %5688, 0
  %5690 = extractvalue %dx.types.ResRet.f32 %5688, 1
  %5691 = extractvalue %dx.types.ResRet.f32 %5688, 2
  %5692 = extractvalue %dx.types.ResRet.f32 %5688, 3
  %5693 = and i32 %5684, 255
  %5694 = uitofp i32 %5693 to float
  %5695 = lshr i32 %5684, 8
  %5696 = and i32 %5695, 255
  %5697 = uitofp i32 %5696 to float
  %5698 = fmul fast float %5692, %5694
  %5699 = fadd fast float %5698, %5697
  %5700 = fmul fast float %5699, 0x3F70101000000000
  %5701 = fadd fast float %5700, 0xBFB99999A0000000
  %5702 = call float @dx.op.unary.f32(i32 7, float %5701)  ; Saturate(value)
  %5703 = fmul fast float %5702, 0x3FF1C71C80000000
  %5704 = call float @dx.op.binary.f32(i32 36, float %5700, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5705 = fsub fast float 1.000000e+00, %5703
  %5706 = call float @dx.op.unary.f32(i32 7, float %5705)  ; Saturate(value)
  %5707 = fmul fast float %5706, %5689
  %5708 = fmul fast float %5706, %5690
  %5709 = fmul fast float %5706, %5691
  %5710 = call float @dx.op.unary.f32(i32 7, float %5707)  ; Saturate(value)
  %5711 = call float @dx.op.unary.f32(i32 7, float %5708)  ; Saturate(value)
  %5712 = call float @dx.op.unary.f32(i32 7, float %5709)  ; Saturate(value)
  %5713 = fmul fast float %5703, %5689
  %5714 = fmul fast float %5703, %5690
  %5715 = fmul fast float %5703, %5691
  %5716 = fadd fast float %5713, %5704
  %5717 = fadd fast float %5714, %5704
  %5718 = fadd fast float %5715, %5704
  %5719 = call float @dx.op.unary.f32(i32 7, float %5716)  ; Saturate(value)
  %5720 = call float @dx.op.unary.f32(i32 7, float %5717)  ; Saturate(value)
  %5721 = call float @dx.op.unary.f32(i32 7, float %5718)  ; Saturate(value)
  %5722 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %5723 = extractvalue %dx.types.CBufRet.i32 %5722, 3
  %5724 = extractvalue %dx.types.CBufRet.i32 %5722, 2
  %5725 = add i32 %5724, 0
  %5726 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5725, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5727 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5726, %dx.types.Handle %100, float %5637, float %5638, float undef, float undef, i32 0, i32 0, i32 undef, float %5600, float %5601, float undef, float %5604, float %5605, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5728 = extractvalue %dx.types.ResRet.f32 %5727, 0
  %5729 = extractvalue %dx.types.ResRet.f32 %5727, 1
  %5730 = extractvalue %dx.types.ResRet.f32 %5727, 2
  %5731 = extractvalue %dx.types.ResRet.f32 %5727, 3
  %5732 = and i32 %5723, 255
  %5733 = uitofp i32 %5732 to float
  %5734 = lshr i32 %5723, 8
  %5735 = and i32 %5734, 255
  %5736 = uitofp i32 %5735 to float
  %5737 = lshr i32 %5723, 16
  %5738 = and i32 %5737, 255
  %5739 = uitofp i32 %5738 to float
  %5740 = fmul fast float %5739, 0x3F70101000000000
  %5741 = fmul fast float %5728, %5733
  %5742 = fadd fast float %5741, %5736
  %5743 = fmul fast float %5742, 0x3F70101000000000
  %5744 = fadd fast float %5729, -5.000000e-01
  %5745 = fadd fast float %5731, -5.000000e-01
  %5746 = fmul fast float %5744, %5740
  %5747 = fmul fast float %5745, %5740
  %5748 = fadd fast float %5746, 5.000000e-01
  %5749 = fadd fast float %5747, 5.000000e-01
  %5750 = fmul fast float %5748, 2.000000e+00
  %5751 = fadd fast float %5750, -1.000000e+00
  %5752 = fmul fast float %5749, 2.000000e+00
  %5753 = fadd fast float %5752, -1.000000e+00
  %5754 = fadd fast float %5751, %5753
  %5755 = fmul fast float %5754, 5.000000e-01
  %5756 = fsub fast float %5751, %5753
  %5757 = fmul fast float %5756, 5.000000e-01
  %5758 = call float @dx.op.unary.f32(i32 6, float %5755)  ; FAbs(value)
  %5759 = fsub fast float 1.000000e+00, %5758
  %5760 = call float @dx.op.unary.f32(i32 6, float %5757)  ; FAbs(value)
  %5761 = fsub fast float %5759, %5760
  %5762 = call float @dx.op.dot3.f32(i32 55, float %5755, float %5757, float %5761, float %5755, float %5757, float %5761)  ; Dot3(ax,ay,az,bx,by,bz)
  %5763 = call float @dx.op.unary.f32(i32 25, float %5762)  ; Rsqrt(value)
  %5764 = fmul fast float %5755, %5763
  %5765 = fmul fast float %5757, %5763
  %5766 = select i1 %5593, i32 %5583, i32 %5584
  %5767 = select i1 %5591, i32 %5582, i32 %5766
  %5768 = sitofp i32 %5767 to float
  %5769 = fmul fast float %5761, %5768
  %5770 = fmul fast float %5769, %5763
  %5771 = select i1 %5593, float %5770, float %5765
  %5772 = select i1 %5593, float %5765, float %5770
  %5773 = select i1 %5591, float %5770, float %5764
  %5774 = select i1 %5591, float %5765, float %5771
  %5775 = select i1 %5591, float %5764, float %5772
  %5776 = fsub fast float %5710, %4313
  %5777 = fsub fast float %5711, %4314
  %5778 = fsub fast float %5712, %4315
  %5779 = fmul fast float %5776, %5682
  %5780 = fmul fast float %5777, %5682
  %5781 = fmul fast float %5778, %5682
  %5782 = fadd fast float %5779, %4313
  %5783 = fadd fast float %5780, %4314
  %5784 = fadd fast float %5781, %4315
  %5785 = fsub fast float %5719, %4298
  %5786 = fsub fast float %5720, %4299
  %5787 = fsub fast float %5721, %4300
  %5788 = fmul fast float %5785, %5682
  %5789 = fmul fast float %5786, %5682
  %5790 = fmul fast float %5787, %5682
  %5791 = fadd fast float %5788, %4298
  %5792 = fadd fast float %5789, %4299
  %5793 = fadd fast float %5790, %4300
  %5794 = fadd fast float %5773, %4262
  %5795 = fadd fast float %5774, %4263
  %5796 = fadd fast float %5775, %4264
  %5797 = call float @dx.op.dot3.f32(i32 55, float %5794, float %5795, float %5796, float %5794, float %5795, float %5796)  ; Dot3(ax,ay,az,bx,by,bz)
  %5798 = call float @dx.op.unary.f32(i32 25, float %5797)  ; Rsqrt(value)
  %5799 = fmul fast float %5794, %5798
  %5800 = fmul fast float %5795, %5798
  %5801 = fmul fast float %5796, %5798
  %5802 = fsub fast float %5799, %4262
  %5803 = fsub fast float %5800, %4263
  %5804 = fsub fast float %5801, %4264
  %5805 = fmul fast float %5802, %5682
  %5806 = fmul fast float %5803, %5682
  %5807 = fmul fast float %5804, %5682
  %5808 = fadd fast float %5805, %4262
  %5809 = fadd fast float %5806, %4263
  %5810 = fadd fast float %5807, %4264
  %5811 = call float @dx.op.binary.f32(i32 36, float %4274, float %5730)  ; FMin(a,b)
  %5812 = fsub fast float %5811, %4274
  %5813 = fmul fast float %5812, %5682
  %5814 = fadd fast float %5813, %4274
  %5815 = fsub fast float %5743, %4301
  %5816 = fmul fast float %5815, %5682
  %5817 = fadd fast float %5816, %4301
  br label %5818

; <label>:5818                                    ; preds = %5680, %5642, %5537
  %5819 = phi float [ %5791, %5680 ], [ %4298, %5642 ], [ %4298, %5537 ]
  %5820 = phi float [ %5792, %5680 ], [ %4299, %5642 ], [ %4299, %5537 ]
  %5821 = phi float [ %5793, %5680 ], [ %4300, %5642 ], [ %4300, %5537 ]
  %5822 = phi float [ %5808, %5680 ], [ %4262, %5642 ], [ %4262, %5537 ]
  %5823 = phi float [ %5809, %5680 ], [ %4263, %5642 ], [ %4263, %5537 ]
  %5824 = phi float [ %5810, %5680 ], [ %4264, %5642 ], [ %4264, %5537 ]
  %5825 = phi float [ %5782, %5680 ], [ %4313, %5642 ], [ %4313, %5537 ]
  %5826 = phi float [ %5783, %5680 ], [ %4314, %5642 ], [ %4314, %5537 ]
  %5827 = phi float [ %5784, %5680 ], [ %4315, %5642 ], [ %4315, %5537 ]
  %5828 = phi float [ %5817, %5680 ], [ %4301, %5642 ], [ %4301, %5537 ]
  %5829 = phi float [ %5814, %5680 ], [ %4274, %5642 ], [ %4274, %5537 ]
  br i1 %5535, label %5830, label %6103

; <label>:5830                                    ; preds = %5818
  %5831 = call float @dx.op.unary.f32(i32 23, float %5829)  ; Log(value)
  %5832 = fmul fast float %5831, 4.000000e+00
  %5833 = call float @dx.op.unary.f32(i32 21, float %5832)  ; Exp(value)
  %5834 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5835 = extractvalue %dx.types.CBufRet.f32 %5834, 0
  %5836 = fmul fast float %5835, %5542
  %5837 = fmul fast float %5835, %5543
  %5838 = fmul fast float %5835, %5544
  %5839 = call float @dx.op.unary.f32(i32 6, float %111)  ; FAbs(value)
  %5840 = call float @dx.op.unary.f32(i32 6, float %112)  ; FAbs(value)
  %5841 = call float @dx.op.unary.f32(i32 6, float %113)  ; FAbs(value)
  %5842 = call float @dx.op.unary.f32(i32 23, float %5839)  ; Log(value)
  %5843 = call float @dx.op.unary.f32(i32 23, float %5840)  ; Log(value)
  %5844 = call float @dx.op.unary.f32(i32 23, float %5841)  ; Log(value)
  %5845 = fmul fast float %5842, 4.000000e+00
  %5846 = fmul fast float %5843, 4.000000e+00
  %5847 = fmul fast float %5844, 4.000000e+00
  %5848 = call float @dx.op.unary.f32(i32 21, float %5845)  ; Exp(value)
  %5849 = call float @dx.op.unary.f32(i32 21, float %5846)  ; Exp(value)
  %5850 = call float @dx.op.unary.f32(i32 21, float %5847)  ; Exp(value)
  %5851 = fadd fast float %5849, %5848
  %5852 = fadd fast float %5851, %5850
  %5853 = fdiv fast float 1.000000e+00, %5852
  %5854 = fmul fast float %5853, %5848
  %5855 = fcmp fast ogt float %111, 0.000000e+00
  %5856 = fcmp fast ogt float %112, 0.000000e+00
  %5857 = fcmp fast ogt float %113, 0.000000e+00
  %5858 = fcmp fast olt float %111, 0.000000e+00
  %5859 = fcmp fast olt float %112, 0.000000e+00
  %5860 = fcmp fast olt float %113, 0.000000e+00
  %5861 = zext i1 %5855 to i32
  %5862 = zext i1 %5856 to i32
  %5863 = zext i1 %5857 to i32
  %5864 = zext i1 %5858 to i32
  %5865 = zext i1 %5859 to i32
  %5866 = zext i1 %5860 to i32
  %5867 = sub nsw i32 %5861, %5864
  %5868 = sub nsw i32 %5862, %5865
  %5869 = sub nsw i32 %5863, %5866
  %5870 = call float @dx.op.unary.f32(i32 83, float %5836)  ; DerivCoarseX(value)
  %5871 = call float @dx.op.unary.f32(i32 83, float %5837)  ; DerivCoarseX(value)
  %5872 = call float @dx.op.unary.f32(i32 83, float %5838)  ; DerivCoarseX(value)
  %5873 = call float @dx.op.unary.f32(i32 84, float %5836)  ; DerivCoarseY(value)
  %5874 = call float @dx.op.unary.f32(i32 84, float %5837)  ; DerivCoarseY(value)
  %5875 = call float @dx.op.unary.f32(i32 84, float %5838)  ; DerivCoarseY(value)
  %5876 = fcmp fast ole float %239, %5854
  %5877 = fmul fast float %5853, %5851
  %5878 = fcmp fast ole float %239, %5877
  %5879 = select i1 %5878, float %5838, float %5836
  %5880 = select i1 %5878, float %5836, float %5837
  %5881 = select i1 %5876, float %5837, float %5879
  %5882 = select i1 %5876, float %5838, float %5880
  %5883 = select i1 %5878, float %5872, float %5870
  %5884 = select i1 %5878, float %5870, float %5871
  %5885 = select i1 %5876, float %5871, float %5883
  %5886 = select i1 %5876, float %5872, float %5884
  %5887 = select i1 %5878, float %5875, float %5873
  %5888 = select i1 %5878, float %5873, float %5874
  %5889 = select i1 %5876, float %5874, float %5887
  %5890 = select i1 %5876, float %5875, float %5888
  %5891 = call float @dx.op.unary.f32(i32 27, float %5881)  ; Round_ni(value)
  %5892 = call float @dx.op.unary.f32(i32 27, float %5882)  ; Round_ni(value)
  %5893 = fptosi float %5891 to i32
  %5894 = fptosi float %5892 to i32
  %5895 = xor i32 %5894, %5893
  %5896 = sitofp i32 %5895 to float
  %5897 = fptosi float %5896 to i32
  %5898 = sitofp i32 %5897 to float
  %5899 = fmul fast float %5898, 0x3FE3C6EF40000000
  %5900 = frem fast float %5891, 2.560000e+02
  %5901 = frem fast float %5892, 2.560000e+02
  %5902 = fptoui float %5900 to i32
  %5903 = fptoui float %5901 to i32
  %5904 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %29, i32 0, i32 %5902, i32 %5903, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5905 = extractvalue %dx.types.ResRet.f32 %5904, 0
  %5906 = extractvalue %dx.types.ResRet.f32 %5904, 1
  %5907 = extractvalue %dx.types.ResRet.f32 %5904, 2
  %5908 = fadd fast float %5905, %5899
  %5909 = fadd fast float %5906, %5899
  %5910 = fadd fast float %5907, %5899
  %5911 = call float @dx.op.unary.f32(i32 22, float %5908)  ; Frc(value)
  %5912 = call float @dx.op.unary.f32(i32 22, float %5909)  ; Frc(value)
  %5913 = call float @dx.op.unary.f32(i32 22, float %5910)  ; Frc(value)
  %5914 = fmul fast float %5913, 0x401921FB60000000
  %5915 = call float @dx.op.unary.f32(i32 13, float %5914)  ; Sin(value)
  %5916 = call float @dx.op.unary.f32(i32 12, float %5914)  ; Cos(value)
  %5917 = fsub fast float -0.000000e+00, %5916
  %5918 = fmul fast float %5916, %5881
  %5919 = call float @dx.op.tertiary.f32(i32 46, float %5915, float %5882, float %5918)  ; FMad(a,b,c)
  %5920 = fmul fast float %5915, %5881
  %5921 = call float @dx.op.tertiary.f32(i32 46, float %5917, float %5882, float %5920)  ; FMad(a,b,c)
  %5922 = fadd fast float %5919, %5911
  %5923 = fadd fast float %5921, %5912
  %5924 = extractvalue %dx.types.CBufRet.f32 %5834, 3
  %5925 = bitcast float %5924 to i32
  %5926 = icmp eq i32 %5925, 0
  br i1 %5926, label %5965, label %5927

; <label>:5927                                    ; preds = %5830
  %5928 = add i32 %5925, 0
  %5929 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5928, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5930 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5929, %dx.types.Handle %101, float %5922, float %5923, float undef, float undef, i32 0, i32 0, i32 undef, float %5885, float %5886, float undef, float %5889, float %5890, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5931 = extractvalue %dx.types.ResRet.f32 %5930, 0
  %5932 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5933 = extractvalue %dx.types.CBufRet.f32 %5932, 1
  %5934 = extractvalue %dx.types.CBufRet.f32 %5932, 2
  %5935 = fsub fast float 1.000000e+00, %5533
  %5936 = call float @dx.op.binary.f32(i32 35, float %5935, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5937 = bitcast float %5533 to i32
  %5938 = sitofp i32 %5937 to float
  %5939 = fadd fast float %5938, 0xC1CFBF8940000000
  %5940 = fmul fast float %5934, %5939
  %5941 = fadd fast float %5940, 0x41CFBF8940000000
  %5942 = fptosi float %5941 to i32
  %5943 = bitcast i32 %5942 to float
  %5944 = bitcast float %5936 to i32
  %5945 = sitofp i32 %5944 to float
  %5946 = fadd fast float %5945, 0xC1CFBF8940000000
  %5947 = fmul fast float %5946, %5934
  %5948 = fadd fast float %5947, 0x41CFBF8940000000
  %5949 = fptosi float %5948 to i32
  %5950 = bitcast i32 %5949 to float
  %5951 = fmul fast float %5943, %5933
  %5952 = fmul fast float %5950, %5933
  %5953 = fsub fast float %5936, %5951
  %5954 = fadd fast float %5952, %5936
  %5955 = call float @dx.op.unary.f32(i32 7, float %5953)  ; Saturate(value)
  %5956 = call float @dx.op.unary.f32(i32 7, float %5954)  ; Saturate(value)
  %5957 = fsub fast float %5931, %5955
  %5958 = fsub fast float %5956, %5955
  %5959 = bitcast float %5958 to i32
  %5960 = sub nsw i32 2129859010, %5959
  %5961 = bitcast i32 %5960 to float
  %5962 = fmul fast float %5961, %5957
  %5963 = call float @dx.op.unary.f32(i32 7, float %5962)  ; Saturate(value)
  %5964 = fcmp fast olt float %5963, 0x3F70101020000000
  br i1 %5964, label %6103, label %5965

; <label>:5965                                    ; preds = %5927, %5830
  %5966 = phi float [ %5963, %5927 ], [ %5533, %5830 ]
  %5967 = fmul fast float %5966, %5833
  %5968 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5969 = extractvalue %dx.types.CBufRet.i32 %5968, 1
  %5970 = extractvalue %dx.types.CBufRet.i32 %5968, 0
  %5971 = add i32 %5970, 0
  %5972 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5971, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5973 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5972, %dx.types.Handle %100, float %5922, float %5923, float undef, float undef, i32 0, i32 0, i32 undef, float %5885, float %5886, float undef, float %5889, float %5890, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5974 = extractvalue %dx.types.ResRet.f32 %5973, 0
  %5975 = extractvalue %dx.types.ResRet.f32 %5973, 1
  %5976 = extractvalue %dx.types.ResRet.f32 %5973, 2
  %5977 = extractvalue %dx.types.ResRet.f32 %5973, 3
  %5978 = and i32 %5969, 255
  %5979 = uitofp i32 %5978 to float
  %5980 = lshr i32 %5969, 8
  %5981 = and i32 %5980, 255
  %5982 = uitofp i32 %5981 to float
  %5983 = fmul fast float %5977, %5979
  %5984 = fadd fast float %5983, %5982
  %5985 = fmul fast float %5984, 0x3F70101000000000
  %5986 = fadd fast float %5985, 0xBFB99999A0000000
  %5987 = call float @dx.op.unary.f32(i32 7, float %5986)  ; Saturate(value)
  %5988 = fmul fast float %5987, 0x3FF1C71C80000000
  %5989 = call float @dx.op.binary.f32(i32 36, float %5985, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5990 = fsub fast float 1.000000e+00, %5988
  %5991 = call float @dx.op.unary.f32(i32 7, float %5990)  ; Saturate(value)
  %5992 = fmul fast float %5991, %5974
  %5993 = fmul fast float %5991, %5975
  %5994 = fmul fast float %5991, %5976
  %5995 = call float @dx.op.unary.f32(i32 7, float %5992)  ; Saturate(value)
  %5996 = call float @dx.op.unary.f32(i32 7, float %5993)  ; Saturate(value)
  %5997 = call float @dx.op.unary.f32(i32 7, float %5994)  ; Saturate(value)
  %5998 = fmul fast float %5988, %5974
  %5999 = fmul fast float %5988, %5975
  %6000 = fmul fast float %5988, %5976
  %6001 = fadd fast float %5998, %5989
  %6002 = fadd fast float %5999, %5989
  %6003 = fadd fast float %6000, %5989
  %6004 = call float @dx.op.unary.f32(i32 7, float %6001)  ; Saturate(value)
  %6005 = call float @dx.op.unary.f32(i32 7, float %6002)  ; Saturate(value)
  %6006 = call float @dx.op.unary.f32(i32 7, float %6003)  ; Saturate(value)
  %6007 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %6008 = extractvalue %dx.types.CBufRet.i32 %6007, 3
  %6009 = extractvalue %dx.types.CBufRet.i32 %6007, 2
  %6010 = add i32 %6009, 0
  %6011 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %6010, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6012 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %6011, %dx.types.Handle %100, float %5922, float %5923, float undef, float undef, i32 0, i32 0, i32 undef, float %5885, float %5886, float undef, float %5889, float %5890, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %6013 = extractvalue %dx.types.ResRet.f32 %6012, 0
  %6014 = extractvalue %dx.types.ResRet.f32 %6012, 1
  %6015 = extractvalue %dx.types.ResRet.f32 %6012, 2
  %6016 = extractvalue %dx.types.ResRet.f32 %6012, 3
  %6017 = and i32 %6008, 255
  %6018 = uitofp i32 %6017 to float
  %6019 = lshr i32 %6008, 8
  %6020 = and i32 %6019, 255
  %6021 = uitofp i32 %6020 to float
  %6022 = lshr i32 %6008, 16
  %6023 = and i32 %6022, 255
  %6024 = uitofp i32 %6023 to float
  %6025 = fmul fast float %6024, 0x3F70101000000000
  %6026 = fmul fast float %6013, %6018
  %6027 = fadd fast float %6026, %6021
  %6028 = fmul fast float %6027, 0x3F70101000000000
  %6029 = fadd fast float %6014, -5.000000e-01
  %6030 = fadd fast float %6016, -5.000000e-01
  %6031 = fmul fast float %6029, %6025
  %6032 = fmul fast float %6030, %6025
  %6033 = fadd fast float %6031, 5.000000e-01
  %6034 = fadd fast float %6032, 5.000000e-01
  %6035 = fmul fast float %6033, 2.000000e+00
  %6036 = fadd fast float %6035, -1.000000e+00
  %6037 = fmul fast float %6034, 2.000000e+00
  %6038 = fadd fast float %6037, -1.000000e+00
  %6039 = fadd fast float %6036, %6038
  %6040 = fmul fast float %6039, 5.000000e-01
  %6041 = fsub fast float %6036, %6038
  %6042 = fmul fast float %6041, 5.000000e-01
  %6043 = call float @dx.op.unary.f32(i32 6, float %6040)  ; FAbs(value)
  %6044 = fsub fast float 1.000000e+00, %6043
  %6045 = call float @dx.op.unary.f32(i32 6, float %6042)  ; FAbs(value)
  %6046 = fsub fast float %6044, %6045
  %6047 = call float @dx.op.dot3.f32(i32 55, float %6040, float %6042, float %6046, float %6040, float %6042, float %6046)  ; Dot3(ax,ay,az,bx,by,bz)
  %6048 = call float @dx.op.unary.f32(i32 25, float %6047)  ; Rsqrt(value)
  %6049 = fmul fast float %6040, %6048
  %6050 = fmul fast float %6042, %6048
  %6051 = select i1 %5878, i32 %5868, i32 %5869
  %6052 = select i1 %5876, i32 %5867, i32 %6051
  %6053 = sitofp i32 %6052 to float
  %6054 = fmul fast float %6046, %6053
  %6055 = fmul fast float %6054, %6048
  %6056 = select i1 %5878, float %6055, float %6050
  %6057 = select i1 %5878, float %6050, float %6055
  %6058 = select i1 %5876, float %6055, float %6049
  %6059 = select i1 %5876, float %6050, float %6056
  %6060 = select i1 %5876, float %6049, float %6057
  %6061 = fsub fast float %5995, %5825
  %6062 = fsub fast float %5996, %5826
  %6063 = fsub fast float %5997, %5827
  %6064 = fmul fast float %6061, %5967
  %6065 = fmul fast float %6062, %5967
  %6066 = fmul fast float %6063, %5967
  %6067 = fadd fast float %6064, %5825
  %6068 = fadd fast float %6065, %5826
  %6069 = fadd fast float %6066, %5827
  %6070 = fsub fast float %6004, %5819
  %6071 = fsub fast float %6005, %5820
  %6072 = fsub fast float %6006, %5821
  %6073 = fmul fast float %6070, %5967
  %6074 = fmul fast float %6071, %5967
  %6075 = fmul fast float %6072, %5967
  %6076 = fadd fast float %6073, %5819
  %6077 = fadd fast float %6074, %5820
  %6078 = fadd fast float %6075, %5821
  %6079 = fadd fast float %6058, %5822
  %6080 = fadd fast float %6059, %5823
  %6081 = fadd fast float %6060, %5824
  %6082 = call float @dx.op.dot3.f32(i32 55, float %6079, float %6080, float %6081, float %6079, float %6080, float %6081)  ; Dot3(ax,ay,az,bx,by,bz)
  %6083 = call float @dx.op.unary.f32(i32 25, float %6082)  ; Rsqrt(value)
  %6084 = fmul fast float %6079, %6083
  %6085 = fmul fast float %6080, %6083
  %6086 = fmul fast float %6081, %6083
  %6087 = fsub fast float %6084, %5822
  %6088 = fsub fast float %6085, %5823
  %6089 = fsub fast float %6086, %5824
  %6090 = fmul fast float %6087, %5967
  %6091 = fmul fast float %6088, %5967
  %6092 = fmul fast float %6089, %5967
  %6093 = fadd fast float %6090, %5822
  %6094 = fadd fast float %6091, %5823
  %6095 = fadd fast float %6092, %5824
  %6096 = call float @dx.op.binary.f32(i32 36, float %5829, float %6015)  ; FMin(a,b)
  %6097 = fsub fast float %6096, %5829
  %6098 = fmul fast float %6097, %5967
  %6099 = fadd fast float %6098, %5829
  %6100 = fsub fast float %6028, %5828
  %6101 = fmul fast float %6100, %5967
  %6102 = fadd fast float %6101, %5828
  br label %6103

; <label>:6103                                    ; preds = %5965, %5927, %5818, %5525
  %6104 = phi float [ %6076, %5965 ], [ %5819, %5927 ], [ %5819, %5818 ], [ %4298, %5525 ]
  %6105 = phi float [ %6077, %5965 ], [ %5820, %5927 ], [ %5820, %5818 ], [ %4299, %5525 ]
  %6106 = phi float [ %6078, %5965 ], [ %5821, %5927 ], [ %5821, %5818 ], [ %4300, %5525 ]
  %6107 = phi float [ %6093, %5965 ], [ %5822, %5927 ], [ %5822, %5818 ], [ %4262, %5525 ]
  %6108 = phi float [ %6094, %5965 ], [ %5823, %5927 ], [ %5823, %5818 ], [ %4263, %5525 ]
  %6109 = phi float [ %6095, %5965 ], [ %5824, %5927 ], [ %5824, %5818 ], [ %4264, %5525 ]
  %6110 = phi float [ %6067, %5965 ], [ %5825, %5927 ], [ %5825, %5818 ], [ %4313, %5525 ]
  %6111 = phi float [ %6068, %5965 ], [ %5826, %5927 ], [ %5826, %5818 ], [ %4314, %5525 ]
  %6112 = phi float [ %6069, %5965 ], [ %5827, %5927 ], [ %5827, %5818 ], [ %4315, %5525 ]
  %6113 = phi float [ %6102, %5965 ], [ %5828, %5927 ], [ %5828, %5818 ], [ %4301, %5525 ]
  %6114 = phi float [ %6099, %5965 ], [ %5829, %5927 ], [ %5829, %5818 ], [ %4274, %5525 ]
  %6115 = fcmp fast une float %5530, 0.000000e+00
  %6116 = call float @dx.op.dot3.f32(i32 55, float %167, float %168, float %169, float %167, float %168, float %169)  ; Dot3(ax,ay,az,bx,by,bz)
  %6117 = call float @dx.op.unary.f32(i32 25, float %6116)  ; Rsqrt(value)
  br i1 %6115, label %6125, label %6118

; <label>:6118                                    ; preds = %6103
  %6119 = fmul fast float %6117, %167
  %6120 = fmul fast float %6117, %168
  %6121 = fmul fast float %6117, %169
  %6122 = fsub fast float -0.000000e+00, %6119
  %6123 = fsub fast float -0.000000e+00, %6120
  %6124 = fsub fast float -0.000000e+00, %6121
  br label %6486

; <label>:6125                                    ; preds = %6103
  %6126 = fmul fast float %167, %6117
  %6127 = fsub fast float -0.000000e+00, %6126
  %6128 = fmul fast float %168, %6117
  %6129 = fsub fast float -0.000000e+00, %6128
  %6130 = fmul fast float %169, %6117
  %6131 = fsub fast float -0.000000e+00, %6130
  %6132 = call float @dx.op.dot3.f32(i32 55, float %6127, float %6129, float %6131, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %6133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6134 = fmul fast float %5530, 2.500000e+00
  %6135 = call float @dx.op.unary.f32(i32 7, float %6134)  ; Saturate(value)
  %6136 = fmul fast float %5530, 0x4013FFFFE0000000
  %6137 = fadd fast float %6136, 0xBFFFFFFFE0000000
  %6138 = call float @dx.op.unary.f32(i32 7, float %6137)  ; Saturate(value)
  %6139 = fmul fast float %5530, 0x4004000020000000
  %6140 = fadd fast float %6139, 0xBFF8000040000000
  %6141 = call float @dx.op.unary.f32(i32 7, float %6140)  ; Saturate(value)
  %6142 = call float @dx.op.unary.f32(i32 7, float %6135)  ; Saturate(value)
  %6143 = fmul fast float %4280, 1.000000e+01
  %6144 = call float @dx.op.unary.f32(i32 7, float %6143)  ; Saturate(value)
  %6145 = fmul fast float %6144, 2.000000e+00
  %6146 = fsub fast float 3.000000e+00, %6145
  %6147 = fmul fast float %6144, %6144
  %6148 = fmul fast float %6147, %6146
  %6149 = fsub fast float 1.000000e+00, %6148
  %6150 = fsub fast float 0x3FE3333340000000, %6113
  %6151 = fmul fast float %6150, 0x400AAAAAA0000000
  %6152 = call float @dx.op.unary.f32(i32 7, float %6151)  ; Saturate(value)
  %6153 = fmul fast float %6149, %6152
  %6154 = fmul fast float %6110, 0x3FEA2B8620000000
  %6155 = fmul fast float %6111, 0x3FEA2B8620000000
  %6156 = fmul fast float %6112, 0x3FEA2B8620000000
  %6157 = fadd fast float %6154, 0x3FC81DFBA0000000
  %6158 = fmul fast float %6157, %6110
  %6159 = fadd fast float %6158, 0x3F910E6020000000
  %6160 = fadd fast float %6155, 0x3FC81DFBA0000000
  %6161 = fmul fast float %6160, %6111
  %6162 = fadd fast float %6161, 0x3F910E6020000000
  %6163 = fadd fast float %6156, 0x3FC81DFBA0000000
  %6164 = fmul fast float %6163, %6112
  %6165 = fadd fast float %6164, 0x3F910E6020000000
  %6166 = call float @dx.op.unary.f32(i32 7, float %6159)  ; Saturate(value)
  %6167 = call float @dx.op.unary.f32(i32 7, float %6162)  ; Saturate(value)
  %6168 = call float @dx.op.unary.f32(i32 7, float %6165)  ; Saturate(value)
  %6169 = fsub fast float %6166, %6110
  %6170 = fsub fast float %6167, %6111
  %6171 = fsub fast float %6168, %6112
  %6172 = fmul fast float %6169, %6142
  %6173 = fmul fast float %6172, %6153
  %6174 = fmul fast float %6170, %6142
  %6175 = fmul fast float %6174, %6153
  %6176 = fmul fast float %6171, %6142
  %6177 = fmul fast float %6176, %6153
  %6178 = fadd fast float %6173, %6110
  %6179 = fadd fast float %6175, %6111
  %6180 = fadd fast float %6177, %6112
  %6181 = fmul fast float %6114, %6114
  %6182 = fmul fast float %6181, %6181
  %6183 = fadd fast float %6138, 1.000000e+00
  %6184 = fsub fast float %6183, %6153
  %6185 = call float @dx.op.unary.f32(i32 7, float %6184)  ; Saturate(value)
  %6186 = call float @dx.op.dot3.f32(i32 55, float %111, float %112, float %113, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6187 = call float @dx.op.unary.f32(i32 7, float %6186)  ; Saturate(value)
  %6188 = fsub fast float 1.000000e+00, %6182
  %6189 = call float @dx.op.binary.f32(i32 36, float %6185, float %6188)  ; FMin(a,b)
  %6190 = call float @dx.op.unary.f32(i32 7, float %6141)  ; Saturate(value)
  %6191 = call float @dx.op.binary.f32(i32 35, float %6189, float %6190)  ; FMax(a,b)
  %6192 = fadd fast float %6187, 0xBFE4CCCCC0000000
  %6193 = fmul fast float %6192, 0x4006DB6DA0000000
  %6194 = call float @dx.op.unary.f32(i32 7, float %6193)  ; Saturate(value)
  %6195 = fmul fast float %6194, 2.000000e+00
  %6196 = fsub fast float 3.000000e+00, %6195
  %6197 = bitcast float %6104 to i32
  %6198 = ashr i32 %6197, 1
  %6199 = add nsw i32 %6198, 532487669
  %6200 = bitcast i32 %6199 to float
  %6201 = fsub fast float 1.000000e+00, %6200
  %6202 = bitcast float %6201 to i32
  %6203 = sub nsw i32 2129859010, %6202
  %6204 = bitcast i32 %6203 to float
  %6205 = fmul fast float %6204, 2.000000e+00
  %6206 = bitcast float %6105 to i32
  %6207 = ashr i32 %6206, 1
  %6208 = add nsw i32 %6207, 532487669
  %6209 = bitcast i32 %6208 to float
  %6210 = fsub fast float 1.000000e+00, %6209
  %6211 = bitcast float %6210 to i32
  %6212 = sub nsw i32 2129859010, %6211
  %6213 = bitcast i32 %6212 to float
  %6214 = fmul fast float %6213, 2.000000e+00
  %6215 = bitcast float %6106 to i32
  %6216 = ashr i32 %6215, 1
  %6217 = add nsw i32 %6216, 532487669
  %6218 = bitcast i32 %6217 to float
  %6219 = fsub fast float 1.000000e+00, %6218
  %6220 = bitcast float %6219 to i32
  %6221 = sub nsw i32 2129859010, %6220
  %6222 = bitcast i32 %6221 to float
  %6223 = fmul fast float %6222, 2.000000e+00
  %6224 = fsub fast float 0x4002A9FBE0000000, %6205
  %6225 = fadd fast float %6205, 0x3FD54FDF00000000
  %6226 = bitcast float %6225 to i32
  %6227 = sub nsw i32 2129859010, %6226
  %6228 = bitcast i32 %6227 to float
  %6229 = fmul fast float %6228, %6224
  %6230 = fmul fast float %6229, %6229
  %6231 = fsub fast float 0x4002A9FBE0000000, %6214
  %6232 = fadd fast float %6214, 0x3FD54FDF00000000
  %6233 = bitcast float %6232 to i32
  %6234 = sub nsw i32 2129859010, %6233
  %6235 = bitcast i32 %6234 to float
  %6236 = fmul fast float %6235, %6231
  %6237 = fmul fast float %6236, %6236
  %6238 = fsub fast float 0x4002A9FBE0000000, %6223
  %6239 = fadd fast float %6223, 0x3FD54FDF00000000
  %6240 = bitcast float %6239 to i32
  %6241 = sub nsw i32 2129859010, %6240
  %6242 = bitcast i32 %6241 to float
  %6243 = fmul fast float %6242, %6238
  %6244 = fmul fast float %6243, %6243
  %6245 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %6230)  ; FMax(a,b)
  %6246 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %6237)  ; FMax(a,b)
  %6247 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %6244)  ; FMax(a,b)
  %6248 = fsub fast float 1.000000e+00, %6132
  %6249 = fadd fast float %6248, %6149
  %6250 = call float @dx.op.unary.f32(i32 7, float %6249)  ; Saturate(value)
  %6251 = fsub fast float 1.000000e+00, %4398
  %6252 = fmul fast float %6191, %6251
  %6253 = fmul fast float %6194, %6194
  %6254 = fmul fast float %6253, %6252
  %6255 = fmul fast float %6254, %6196
  %6256 = fmul fast float %6251, 0xBFE99999A0000000
  %6257 = fmul fast float %6256, %6142
  %6258 = fmul fast float %6257, %6153
  %6259 = fadd fast float %6258, 1.000000e+00
  %6260 = fadd fast float %6113, -1.000000e+00
  %6261 = fmul fast float %6259, %6260
  %6262 = fadd fast float %6261, 1.000000e+00
  %6263 = fsub fast float %6245, %6104
  %6264 = fsub fast float %6246, %6105
  %6265 = fsub fast float %6247, %6106
  %6266 = fmul fast float %6255, %6263
  %6267 = fmul fast float %6255, %6264
  %6268 = fmul fast float %6255, %6265
  %6269 = fadd fast float %6266, %6104
  %6270 = fadd fast float %6267, %6105
  %6271 = fadd fast float %6268, %6106
  %6272 = fsub fast float %111, %6107
  %6273 = fsub fast float %112, %6108
  %6274 = fsub fast float %113, %6109
  %6275 = fmul fast float %6255, %6272
  %6276 = fmul fast float %6255, %6273
  %6277 = fmul fast float %6255, %6274
  %6278 = fadd fast float %6275, %6107
  %6279 = fadd fast float %6276, %6108
  %6280 = fadd fast float %6277, %6109
  %6281 = fmul fast float %6255, %6250
  %6282 = call float @dx.op.unary.f32(i32 7, float %6262)  ; Saturate(value)
  %6283 = fsub fast float 1.000000e+00, %6282
  %6284 = fmul fast float %6281, %6283
  %6285 = fadd fast float %6284, %6282
  %6286 = fsub fast float 1.000000e+00, %6114
  %6287 = fmul fast float %6255, %6286
  %6288 = fadd fast float %6287, %6114
  %6289 = fcmp fast une float %5531, 0.000000e+00
  %6290 = fcmp fast ogt float %6187, 0x3FE4CCCCC0000000
  %6291 = and i1 %6289, %6290
  br i1 %6291, label %6292, label %6478

; <label>:6292                                    ; preds = %6125
  %6293 = extractvalue %dx.types.CBufRet.f32 %6133, 1
  %6294 = fadd fast float %6293, %168
  %6295 = extractvalue %dx.types.CBufRet.f32 %6133, 0
  %6296 = fadd fast float %6295, %167
  %6297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %6298 = extractvalue %dx.types.CBufRet.f32 %6297, 3
  %6299 = fadd fast float %6298, 0x3FC0A3D700000000
  %6300 = fmul fast float %6299, 0x3FF6666660000000
  %6301 = fmul fast float %6298, 0x3FF2978D40000000
  %6302 = fmul fast float %6298, 0x3FF5BA5E40000000
  %6303 = fmul fast float %6298, 0x3FF94FDF40000000
  %6304 = call float @dx.op.unary.f32(i32 6, float %6296)  ; FAbs(value)
  %6305 = call float @dx.op.unary.f32(i32 6, float %6294)  ; FAbs(value)
  %6306 = fmul fast float %6304, 0x3F8EB851E0000000
  %6307 = fmul fast float %6305, 0x3F8EB851E0000000
  %6308 = fmul fast float %5531, 4.000000e+00
  %6309 = call float @dx.op.unary.f32(i32 7, float %6308)  ; Saturate(value)
  %6310 = fadd fast float %6306, 2.500000e-01
  %6311 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %45, float %6310, float %6307, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6312 = extractvalue %dx.types.ResRet.f32 %6311, 0
  %6313 = extractvalue %dx.types.ResRet.f32 %6311, 1
  %6314 = extractvalue %dx.types.ResRet.f32 %6311, 2
  %6315 = extractvalue %dx.types.ResRet.f32 %6311, 3
  %6316 = fmul fast float %6313, 2.000000e+00
  %6317 = fmul fast float %6314, 2.000000e+00
  %6318 = fadd fast float %6316, -1.000000e+00
  %6319 = fadd fast float %6317, -1.000000e+00
  %6320 = fsub fast float 1.000000e+00, %6309
  %6321 = fmul fast float %6320, 8.000000e+00
  %6322 = call float @dx.op.unary.f32(i32 21, float %6321)  ; Exp(value)
  %6323 = fmul fast float %6315, %6322
  %6324 = fadd fast float %6300, -1.000000e+00
  %6325 = fadd fast float %6324, %6315
  %6326 = fadd fast float %6325, %6323
  %6327 = frem fast float %6326, %6322
  %6328 = fcmp fast ole float %6327, 1.000000e+00
  %6329 = call float @dx.op.unary.f32(i32 22, float %6327)  ; Frc(value)
  %6330 = select i1 %6328, float %6329, float 0.000000e+00
  %6331 = fadd fast float %6312, -1.000000e+00
  %6332 = fadd fast float %6331, %6330
  %6333 = fsub fast float 1.000000e+00, %6330
  %6334 = call float @dx.op.unary.f32(i32 7, float %6333)  ; Saturate(value)
  %6335 = fmul fast float %6334, %6312
  %6336 = fmul fast float %6332, 8.000000e+00
  %6337 = call float @dx.op.binary.f32(i32 35, float %6336, float 0.000000e+00)  ; FMax(a,b)
  %6338 = call float @dx.op.binary.f32(i32 36, float %6337, float 4.000000e+00)  ; FMin(a,b)
  %6339 = fmul fast float %6338, 0x400921FB60000000
  %6340 = call float @dx.op.unary.f32(i32 13, float %6339)  ; Sin(value)
  %6341 = fadd fast float %6330, -1.000000e+00
  %6342 = fmul fast float %6335, %6341
  %6343 = fmul fast float %6342, %6340
  %6344 = fmul fast float %6343, %6318
  %6345 = fmul fast float %6343, %6319
  %6346 = fadd fast float %6308, -1.000000e+00
  %6347 = call float @dx.op.unary.f32(i32 7, float %6346)  ; Saturate(value)
  %6348 = fadd fast float %6306, 0xBFE19999A0000000
  %6349 = fadd fast float %6307, 0x3FD3D70A40000000
  %6350 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %45, float %6348, float %6349, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6351 = extractvalue %dx.types.ResRet.f32 %6350, 0
  %6352 = extractvalue %dx.types.ResRet.f32 %6350, 1
  %6353 = extractvalue %dx.types.ResRet.f32 %6350, 2
  %6354 = extractvalue %dx.types.ResRet.f32 %6350, 3
  %6355 = fmul fast float %6352, 2.000000e+00
  %6356 = fmul fast float %6353, 2.000000e+00
  %6357 = fadd fast float %6355, -1.000000e+00
  %6358 = fadd fast float %6356, -1.000000e+00
  %6359 = fsub fast float 1.000000e+00, %6347
  %6360 = fmul fast float %6359, 8.000000e+00
  %6361 = call float @dx.op.unary.f32(i32 21, float %6360)  ; Exp(value)
  %6362 = fmul fast float %6354, %6361
  %6363 = fadd fast float %6301, 0xBFE5B22D00000000
  %6364 = fadd fast float %6363, %6354
  %6365 = fadd fast float %6364, %6362
  %6366 = frem fast float %6365, %6361
  %6367 = fcmp fast ole float %6366, 1.000000e+00
  %6368 = call float @dx.op.unary.f32(i32 22, float %6366)  ; Frc(value)
  %6369 = select i1 %6367, float %6368, float 0.000000e+00
  %6370 = fadd fast float %6351, -1.000000e+00
  %6371 = fadd fast float %6370, %6369
  %6372 = fsub fast float 1.000000e+00, %6369
  %6373 = call float @dx.op.unary.f32(i32 7, float %6372)  ; Saturate(value)
  %6374 = fmul fast float %6373, %6351
  %6375 = fmul fast float %6371, 8.000000e+00
  %6376 = call float @dx.op.binary.f32(i32 35, float %6375, float 0.000000e+00)  ; FMax(a,b)
  %6377 = call float @dx.op.binary.f32(i32 36, float %6376, float 4.000000e+00)  ; FMin(a,b)
  %6378 = fmul fast float %6377, 0x400921FB60000000
  %6379 = call float @dx.op.unary.f32(i32 13, float %6378)  ; Sin(value)
  %6380 = fadd fast float %6369, -1.000000e+00
  %6381 = fmul fast float %6374, %6380
  %6382 = fmul fast float %6381, %6379
  %6383 = fmul fast float %6382, %6357
  %6384 = fmul fast float %6382, %6358
  %6385 = fadd fast float %6308, -2.000000e+00
  %6386 = call float @dx.op.unary.f32(i32 7, float %6385)  ; Saturate(value)
  %6387 = fadd fast float %6306, 0x3FE3333340000000
  %6388 = fadd fast float %6307, 0x3FEB333340000000
  %6389 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %45, float %6387, float %6388, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6390 = extractvalue %dx.types.ResRet.f32 %6389, 0
  %6391 = extractvalue %dx.types.ResRet.f32 %6389, 1
  %6392 = extractvalue %dx.types.ResRet.f32 %6389, 2
  %6393 = extractvalue %dx.types.ResRet.f32 %6389, 3
  %6394 = fmul fast float %6391, 2.000000e+00
  %6395 = fmul fast float %6392, 2.000000e+00
  %6396 = fadd fast float %6394, -1.000000e+00
  %6397 = fadd fast float %6395, -1.000000e+00
  %6398 = fsub fast float 1.000000e+00, %6386
  %6399 = fmul fast float %6398, 8.000000e+00
  %6400 = call float @dx.op.unary.f32(i32 21, float %6399)  ; Exp(value)
  %6401 = fmul fast float %6393, %6400
  %6402 = fadd fast float %6302, 0xBFD5E35400000000
  %6403 = fadd fast float %6402, %6393
  %6404 = fadd fast float %6403, %6401
  %6405 = frem fast float %6404, %6400
  %6406 = fcmp fast ole float %6405, 1.000000e+00
  %6407 = call float @dx.op.unary.f32(i32 22, float %6405)  ; Frc(value)
  %6408 = select i1 %6406, float %6407, float 0.000000e+00
  %6409 = fadd fast float %6390, -1.000000e+00
  %6410 = fadd fast float %6409, %6408
  %6411 = fsub fast float 1.000000e+00, %6408
  %6412 = call float @dx.op.unary.f32(i32 7, float %6411)  ; Saturate(value)
  %6413 = fmul fast float %6412, %6390
  %6414 = fmul fast float %6410, 8.000000e+00
  %6415 = call float @dx.op.binary.f32(i32 35, float %6414, float 0.000000e+00)  ; FMax(a,b)
  %6416 = call float @dx.op.binary.f32(i32 36, float %6415, float 4.000000e+00)  ; FMin(a,b)
  %6417 = fmul fast float %6416, 0x400921FB60000000
  %6418 = call float @dx.op.unary.f32(i32 13, float %6417)  ; Sin(value)
  %6419 = fadd fast float %6408, -1.000000e+00
  %6420 = fmul fast float %6413, %6419
  %6421 = fmul fast float %6420, %6418
  %6422 = fmul fast float %6421, %6396
  %6423 = fmul fast float %6421, %6397
  %6424 = fadd fast float %6308, -3.000000e+00
  %6425 = call float @dx.op.unary.f32(i32 7, float %6424)  ; Saturate(value)
  %6426 = fadd fast float %6306, 5.000000e-01
  %6427 = fadd fast float %6307, -7.500000e-01
  %6428 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %45, float %6426, float %6427, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6429 = extractvalue %dx.types.ResRet.f32 %6428, 0
  %6430 = extractvalue %dx.types.ResRet.f32 %6428, 1
  %6431 = extractvalue %dx.types.ResRet.f32 %6428, 2
  %6432 = extractvalue %dx.types.ResRet.f32 %6428, 3
  %6433 = fmul fast float %6430, 2.000000e+00
  %6434 = fmul fast float %6431, 2.000000e+00
  %6435 = fadd fast float %6433, -1.000000e+00
  %6436 = fadd fast float %6434, -1.000000e+00
  %6437 = fsub fast float 1.000000e+00, %6425
  %6438 = fmul fast float %6437, 8.000000e+00
  %6439 = call float @dx.op.unary.f32(i32 21, float %6438)  ; Exp(value)
  %6440 = fmul fast float %6432, %6439
  %6441 = fadd fast float %6303, 0xBF78938000000000
  %6442 = fadd fast float %6441, %6432
  %6443 = fadd fast float %6442, %6440
  %6444 = frem fast float %6443, %6439
  %6445 = fcmp fast ole float %6444, 1.000000e+00
  %6446 = call float @dx.op.unary.f32(i32 22, float %6444)  ; Frc(value)
  %6447 = select i1 %6445, float %6446, float 0.000000e+00
  %6448 = fadd fast float %6429, -1.000000e+00
  %6449 = fadd fast float %6448, %6447
  %6450 = fsub fast float 1.000000e+00, %6447
  %6451 = call float @dx.op.unary.f32(i32 7, float %6450)  ; Saturate(value)
  %6452 = fmul fast float %6451, %6429
  %6453 = fmul fast float %6449, 8.000000e+00
  %6454 = call float @dx.op.binary.f32(i32 35, float %6453, float 0.000000e+00)  ; FMax(a,b)
  %6455 = call float @dx.op.binary.f32(i32 36, float %6454, float 4.000000e+00)  ; FMin(a,b)
  %6456 = fmul fast float %6455, 0x400921FB60000000
  %6457 = call float @dx.op.unary.f32(i32 13, float %6456)  ; Sin(value)
  %6458 = fadd fast float %6447, -1.000000e+00
  %6459 = fmul fast float %6452, %6458
  %6460 = fmul fast float %6459, %6457
  %6461 = fmul fast float %6460, %6435
  %6462 = fmul fast float %6460, %6436
  %6463 = fadd fast float %6383, %6344
  %6464 = fadd fast float %6384, %6345
  %6465 = fadd fast float %6463, %6422
  %6466 = fadd fast float %6464, %6423
  %6467 = fadd fast float %6465, %6461
  %6468 = fadd fast float %6466, %6462
  %6469 = fmul fast float %6187, 0x4006DB6DA0000000
  %6470 = fadd fast float %6469, 0xBFFDB6DB40000000
  %6471 = call float @dx.op.unary.f32(i32 7, float %6470)  ; Saturate(value)
  %6472 = fmul fast float %6471, %6142
  %6473 = fmul fast float %6472, %6251
  %6474 = fmul fast float %6473, %6467
  %6475 = fmul fast float %6473, %6468
  %6476 = fadd fast float %6474, %6278
  %6477 = fadd fast float %6475, %6279
  br label %6478

; <label>:6478                                    ; preds = %6292, %6125
  %6479 = phi float [ %6278, %6125 ], [ %6476, %6292 ]
  %6480 = phi float [ %6279, %6125 ], [ %6477, %6292 ]
  %6481 = call float @dx.op.dot3.f32(i32 55, float %6479, float %6480, float %6280, float %6479, float %6480, float %6280)  ; Dot3(ax,ay,az,bx,by,bz)
  %6482 = call float @dx.op.unary.f32(i32 25, float %6481)  ; Rsqrt(value)
  %6483 = fmul fast float %6482, %6479
  %6484 = fmul fast float %6482, %6480
  %6485 = fmul fast float %6482, %6280
  br label %6486

; <label>:6486                                    ; preds = %6478, %6118
  %6487 = phi float [ %6124, %6118 ], [ %6131, %6478 ]
  %6488 = phi float [ %6123, %6118 ], [ %6129, %6478 ]
  %6489 = phi float [ %6122, %6118 ], [ %6127, %6478 ]
  %6490 = phi float [ %6121, %6118 ], [ %6130, %6478 ]
  %6491 = phi float [ %6120, %6118 ], [ %6128, %6478 ]
  %6492 = phi float [ %6119, %6118 ], [ %6126, %6478 ]
  %6493 = phi float [ %6104, %6118 ], [ %6269, %6478 ]
  %6494 = phi float [ %6105, %6118 ], [ %6270, %6478 ]
  %6495 = phi float [ %6106, %6118 ], [ %6271, %6478 ]
  %6496 = phi float [ %6107, %6118 ], [ %6483, %6478 ]
  %6497 = phi float [ %6108, %6118 ], [ %6484, %6478 ]
  %6498 = phi float [ %6109, %6118 ], [ %6485, %6478 ]
  %6499 = phi float [ %6110, %6118 ], [ %6178, %6478 ]
  %6500 = phi float [ %6111, %6118 ], [ %6179, %6478 ]
  %6501 = phi float [ %6112, %6118 ], [ %6180, %6478 ]
  %6502 = phi float [ %6113, %6118 ], [ %6285, %6478 ]
  %6503 = phi float [ %6114, %6118 ], [ %6288, %6478 ]
  %6504 = select i1 %228, float 0.000000e+00, float %6495
  %6505 = call float @dx.op.dot3.f32(i32 55, float %6496, float %6497, float %6498, float %6489, float %6488, float %6487)  ; Dot3(ax,ay,az,bx,by,bz)
  %6506 = call float @dx.op.unary.f32(i32 7, float %6505)  ; Saturate(value)
  %6507 = call float @dx.op.dot3.f32(i32 55, float %6492, float %6491, float %6490, float %6496, float %6497, float %6498)  ; Dot3(ax,ay,az,bx,by,bz)
  %6508 = fmul fast float %6507, 2.000000e+00
  %6509 = fmul fast float %6508, %6496
  %6510 = fmul fast float %6508, %6497
  %6511 = fmul fast float %6508, %6498
  %6512 = fsub fast float %6492, %6509
  %6513 = fsub fast float %6491, %6510
  %6514 = fsub fast float %6490, %6511
  %6515 = call float @dx.op.binary.f32(i32 36, float %6503, float 1.000000e+00)  ; FMin(a,b)
  %6516 = fsub fast float 1.000000e+00, %6515
  %6517 = bitcast float %6516 to i32
  %6518 = ashr i32 %6517, 1
  %6519 = add nsw i32 %6518, 532487669
  %6520 = bitcast i32 %6519 to float
  %6521 = fsub fast float 1.000000e+00, %6502
  %6522 = call float @dx.op.binary.f32(i32 35, float %6521, float 0x3F847AE140000000)  ; FMax(a,b)
  %6523 = fmul fast float %6522, %6522
  %6524 = fmul fast float %6523, %6523
  %6525 = call float @dx.op.unary.f32(i32 7, float %6506)  ; Saturate(value)
  %6526 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %46, float %6520, float %6524, float %6525, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6527 = extractvalue %dx.types.ResRet.f32 %6526, 0
  %6528 = fsub fast float 1.000000e+00, %6503
  %6529 = bitcast float %6528 to i32
  %6530 = sub nsw i32 2129859010, %6529
  %6531 = fsub fast float 1.000000e+00, %72
  %6532 = call float @dx.op.dot3.f32(i32 55, float %131, float %132, float %133, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %6533 = call float @dx.op.binary.f32(i32 35, float %6532, float 0x3FA99999A0000000)  ; FMax(a,b)
  %6534 = fdiv fast float %6531, %6533
  %6535 = call float @dx.op.dot3.f32(i32 55, float %6496, float %6497, float %6498, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %6536 = call float @dx.op.unary.f32(i32 7, float %6535)  ; Saturate(value)
  %6537 = fmul fast float %6536, 5.000000e-01
  %6538 = fadd fast float %6537, 5.000000e-01
  %6539 = fmul fast float %6538, %72
  %6540 = call float @dx.op.dot3.f32(i32 55, float %6496, float %6497, float %6498, float %131, float %132, float %133)  ; Dot3(ax,ay,az,bx,by,bz)
  %6541 = call float @dx.op.unary.f32(i32 7, float %6540)  ; Saturate(value)
  %6542 = fmul fast float %6541, %6534
  %6543 = fadd fast float %6539, %6542
  %6544 = fsub fast float 5.000000e-01, %6537
  %6545 = fmul fast float %6544, %6499
  %6546 = fmul fast float %6544, %6500
  %6547 = fmul fast float %6544, %6501
  %6548 = fadd fast float %6543, %6545
  %6549 = fadd fast float %6543, %6546
  %6550 = fadd fast float %6543, %6547
  %6551 = call float @dx.op.dot3.f32(i32 55, float %6512, float %6513, float %6514, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %6552 = call float @dx.op.unary.f32(i32 7, float %6551)  ; Saturate(value)
  %6553 = fmul fast float %6552, 5.000000e-01
  %6554 = fadd fast float %6553, 5.000000e-01
  %6555 = fmul fast float %6554, %72
  %6556 = call float @dx.op.dot3.f32(i32 55, float %6512, float %6513, float %6514, float %131, float %132, float %133)  ; Dot3(ax,ay,az,bx,by,bz)
  %6557 = call float @dx.op.unary.f32(i32 7, float %6556)  ; Saturate(value)
  %6558 = fmul fast float %6557, %6534
  %6559 = fadd fast float %6555, %6558
  %6560 = fsub fast float 5.000000e-01, %6553
  %6561 = fmul fast float %6560, %6499
  %6562 = fmul fast float %6560, %6500
  %6563 = fmul fast float %6560, %6501
  %6564 = fadd fast float %6559, %6561
  %6565 = fadd fast float %6559, %6562
  %6566 = fadd fast float %6559, %6563
  %6567 = call float @dx.op.dot3.f32(i32 55, float %73, float %74, float %75, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6568 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %6569 = extractvalue %dx.types.CBufRet.f32 %6568, 0
  %6570 = call float @dx.op.binary.f32(i32 36, float %6499, float %6569)  ; FMin(a,b)
  %6571 = fmul fast float %6570, %6516
  %6572 = fsub fast float 1.000000e+00, %6571
  %6573 = bitcast float %6572 to i32
  %6574 = sub nsw i32 2129859010, %6573
  %6575 = bitcast i32 %6574 to float
  %6576 = call float @dx.op.binary.f32(i32 36, float %6500, float %6569)  ; FMin(a,b)
  %6577 = fmul fast float %6576, %6516
  %6578 = fsub fast float 1.000000e+00, %6577
  %6579 = bitcast float %6578 to i32
  %6580 = sub nsw i32 2129859010, %6579
  %6581 = bitcast i32 %6580 to float
  %6582 = call float @dx.op.binary.f32(i32 36, float %6501, float %6569)  ; FMin(a,b)
  %6583 = fmul fast float %6582, %6516
  %6584 = fsub fast float 1.000000e+00, %6583
  %6585 = bitcast float %6584 to i32
  %6586 = sub nsw i32 2129859010, %6585
  %6587 = bitcast i32 %6586 to float
  %6588 = fmul fast float %6515, %73
  %6589 = fmul fast float %6588, %6548
  %6590 = fmul fast float %6589, %6575
  %6591 = fmul fast float %6515, %74
  %6592 = fmul fast float %6591, %6549
  %6593 = fmul fast float %6592, %6581
  %6594 = fmul fast float %6515, %75
  %6595 = fmul fast float %6594, %6550
  %6596 = fmul fast float %6595, %6587
  %6597 = call float @dx.op.binary.f32(i32 36, float %6493, float %6569)  ; FMin(a,b)
  %6598 = fmul fast float %6597, %6516
  %6599 = fsub fast float 1.000000e+00, %6598
  %6600 = bitcast float %6599 to i32
  %6601 = sub nsw i32 2129859010, %6600
  %6602 = bitcast i32 %6601 to float
  %6603 = call float @dx.op.binary.f32(i32 36, float %6494, float %6569)  ; FMin(a,b)
  %6604 = fmul fast float %6603, %6516
  %6605 = fsub fast float 1.000000e+00, %6604
  %6606 = bitcast float %6605 to i32
  %6607 = sub nsw i32 2129859010, %6606
  %6608 = bitcast i32 %6607 to float
  %6609 = call float @dx.op.binary.f32(i32 36, float %6504, float %6569)  ; FMin(a,b)
  %6610 = fmul fast float %6609, %6516
  %6611 = fsub fast float 1.000000e+00, %6610
  %6612 = bitcast float %6611 to i32
  %6613 = sub nsw i32 2129859010, %6612
  %6614 = bitcast i32 %6613 to float
  %6615 = fmul fast float %6588, %6564
  %6616 = fmul fast float %6615, %6602
  %6617 = fmul fast float %6591, %6565
  %6618 = fmul fast float %6617, %6608
  %6619 = fmul fast float %6594, %6566
  %6620 = fmul fast float %6619, %6614
  %6621 = call float @dx.op.dot3.f32(i32 55, float %6590, float %6593, float %6596, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6622 = select i1 %228, float 0.000000e+00, float %6590
  %6623 = select i1 %228, float %6621, float %6593
  %6624 = select i1 %228, float 0.000000e+00, float %6596
  %6625 = call float @dx.op.dot3.f32(i32 55, float %6616, float %6618, float %6620, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6626 = select i1 %228, float 0.000000e+00, float %6616
  %6627 = select i1 %228, float %6625, float %6618
  %6628 = select i1 %228, float 0.000000e+00, float %6620
  %6629 = fmul fast float %6506, 9.843750e-01
  %6630 = fmul fast float %6502, 9.843750e-01
  %6631 = fadd fast float %6629, 7.812500e-03
  %6632 = fadd fast float %6630, 7.812500e-03
  %6633 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %41, %dx.types.Handle %46, float %6631, float %6632, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6634 = extractvalue %dx.types.ResRet.f32 %6633, 2
  %6635 = extractvalue %dx.types.ResRet.f32 %6633, 3
  %6636 = fmul fast float %6634, %6493
  %6637 = fmul fast float %6634, %6494
  %6638 = fmul fast float %6634, %6504
  %6639 = fadd fast float %6636, %6635
  %6640 = fadd fast float %6637, %6635
  %6641 = fadd fast float %6638, %6635
  %6642 = fcmp fast ogt float %4275, 0.000000e+00
  br i1 %6642, label %6643, label %6669

; <label>:6643                                    ; preds = %6486
  %6644 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %46, float %4275, float %6506, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6645 = extractvalue %dx.types.ResRet.f32 %6644, 0
  %6646 = extractvalue %dx.types.ResRet.f32 %6644, 1
  %6647 = extractvalue %dx.types.ResRet.f32 %6644, 2
  %6648 = fadd fast float %6645, -5.000000e-01
  %6649 = fadd fast float %6646, -5.000000e-01
  %6650 = fadd fast float %6647, -5.000000e-01
  %6651 = fsub fast float 1.000000e+00, %6493
  %6652 = fsub fast float 1.000000e+00, %6494
  %6653 = fsub fast float 1.000000e+00, %6504
  %6654 = fmul fast float %6493, 4.000000e+00
  %6655 = fmul fast float %6654, %6651
  %6656 = fmul fast float %6655, %6648
  %6657 = fmul fast float %6494, 4.000000e+00
  %6658 = fmul fast float %6657, %6652
  %6659 = fmul fast float %6658, %6649
  %6660 = fmul fast float %6504, 4.000000e+00
  %6661 = fmul fast float %6660, %6653
  %6662 = fmul fast float %6661, %6650
  %6663 = fadd fast float %6656, %6639
  %6664 = fadd fast float %6659, %6640
  %6665 = fadd fast float %6662, %6641
  %6666 = call float @dx.op.unary.f32(i32 7, float %6663)  ; Saturate(value)
  %6667 = call float @dx.op.unary.f32(i32 7, float %6664)  ; Saturate(value)
  %6668 = call float @dx.op.unary.f32(i32 7, float %6665)  ; Saturate(value)
  br label %6669

; <label>:6669                                    ; preds = %6643, %6486
  %6670 = phi float [ %6666, %6643 ], [ %6639, %6486 ]
  %6671 = phi float [ %6667, %6643 ], [ %6640, %6486 ]
  %6672 = phi float [ %6668, %6643 ], [ %6641, %6486 ]
  %6673 = call float @dx.op.binary.f32(i32 35, float %6671, float %6672)  ; FMax(a,b)
  %6674 = call float @dx.op.binary.f32(i32 35, float %6670, float %6673)  ; FMax(a,b)
  %6675 = fsub fast float 1.000000e+00, %6674
  %6676 = fmul fast float %6674, %6502
  %6677 = fadd fast float %6676, %6502
  %6678 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %6679 = extractvalue %dx.types.CBufRet.f32 %6678, 2
  %6680 = extractvalue %dx.types.CBufRet.f32 %6678, 3
  %6681 = fmul fast float %6677, %6679
  %6682 = fadd fast float %6681, %6680
  %6683 = call float @dx.op.unary.f32(i32 7, float %6682)  ; Saturate(value)
  %6684 = fsub fast float 1.000000e+00, %6527
  %6685 = fadd fast float %6684, %6683
  %6686 = call float @dx.op.unary.f32(i32 7, float %6685)  ; Saturate(value)
  %6687 = fcmp fast olt float %6686, 1.000000e+00
  br i1 %6687, label %6688, label %7136

; <label>:6688                                    ; preds = %6669
  %6689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %6690 = extractvalue %dx.types.CBufRet.f32 %6689, 2
  %6691 = extractvalue %dx.types.CBufRet.f32 %6689, 3
  %6692 = fmul fast float %6690, %104
  %6693 = fmul fast float %6691, %105
  %6694 = fptoui float %6692 to i32
  %6695 = fptoui float %6693 to i32
  %6696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6697 = extractvalue %dx.types.CBufRet.f32 %6696, 0
  %6698 = extractvalue %dx.types.CBufRet.f32 %6696, 2
  %6699 = extractvalue %dx.types.CBufRet.f32 %6696, 3
  %6700 = fadd fast float %92, -4.000000e+00
  %6701 = call float @dx.op.binary.f32(i32 35, float %6700, float 0.000000e+00)  ; FMax(a,b)
  %6702 = fadd fast float %6701, %6697
  %6703 = fmul fast float %6702, %6698
  %6704 = call float @dx.op.unary.f32(i32 23, float %6703)  ; Log(value)
  %6705 = fmul fast float %6704, %6699
  %6706 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6707 = extractvalue %dx.types.CBufRet.f32 %6706, 2
  %6708 = fmul fast float %6705, %6707
  %6709 = call float @dx.op.unary.f32(i32 7, float %6708)  ; Saturate(value)
  %6710 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6711 = extractvalue %dx.types.CBufRet.i32 %6710, 1
  %6712 = add i32 %6711, -1
  %6713 = uitofp i32 %6711 to float
  %6714 = fmul fast float %6713, %6709
  %6715 = fptoui float %6714 to i32
  %6716 = call i32 @dx.op.binary.i32(i32 40, i32 %6715, i32 %6712)  ; UMin(a,b)
  %6717 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6718 = extractvalue %dx.types.CBufRet.i32 %6717, 2
  %6719 = extractvalue %dx.types.CBufRet.i32 %6717, 3
  %6720 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6695, i32 %6718, i32 %6694)  ; UMad(a,b,c)
  %6721 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6716, i32 %6719, i32 %6720)  ; UMad(a,b,c)
  %6722 = call float @dx.op.binary.f32(i32 35, float %92, float 0.000000e+00)  ; FMax(a,b)
  %6723 = fptoui float %6722 to i32
  %6724 = lshr i32 %6723, 5
  %6725 = call i32 @dx.op.binary.i32(i32 40, i32 %6724, i32 8191)  ; UMin(a,b)
  br i1 false, label %6726, label %6733

; <label>:6726                                    ; preds = %6688
  %6727 = fadd fast float 0.000000e+00, %6514
  %6728 = call float @dx.op.dot3.f32(i32 55, float %6512, float %6513, float %6727, float %6512, float %6513, float %6727)  ; Dot3(ax,ay,az,bx,by,bz)
  %6729 = call float @dx.op.unary.f32(i32 25, float %6728)  ; Rsqrt(value)
  %6730 = fmul fast float %6729, %6512
  %6731 = fmul fast float %6729, %6513
  %6732 = fmul fast float %6727, %6729
  br label %6733

; <label>:6733                                    ; preds = %6726, %6688
  %6734 = phi float [ %6730, %6726 ], [ %6512, %6688 ]
  %6735 = phi float [ %6731, %6726 ], [ %6513, %6688 ]
  %6736 = phi float [ %6732, %6726 ], [ %6514, %6688 ]
  %6737 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6738 = extractvalue %dx.types.CBufRet.i32 %6737, 2
  %6739 = add nsw i32 %6738, -1
  %6740 = call i32 @dx.op.binary.i32(i32 37, i32 %6739, i32 0)  ; IMax(a,b)
  %6741 = shl i32 %6725, 2
  %6742 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %6741, i32 undef)  ; BufferLoad(srv,index,wot)
  %6743 = extractvalue %dx.types.ResRet.i32 %6742, 0
  %6744 = lshr i32 %6743, 16
  %6745 = and i32 %6743, 65535
  %6746 = lshr i32 %6743, 21
  %6747 = lshr i32 %6745, 5
  %6748 = call i32 @dx.op.binary.i32(i32 40, i32 %6747, i32 %6740)  ; UMin(a,b)
  %6749 = icmp ugt i32 %6746, %6748
  br i1 %6749, label %7112, label %6750

; <label>:6750                                    ; preds = %6733
  br label %6751

; <label>:6751                                    ; preds = %7104, %6750
  %6752 = phi float [ %7105, %7104 ], [ 0.000000e+00, %6750 ]
  %6753 = phi float [ %7106, %7104 ], [ 0.000000e+00, %6750 ]
  %6754 = phi float [ %7107, %7104 ], [ 0.000000e+00, %6750 ]
  %6755 = phi float [ %7108, %7104 ], [ 1.000000e+00, %6750 ]
  %6756 = phi i32 [ %7109, %7104 ], [ %6746, %6750 ]
  %6757 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6758 = extractvalue %dx.types.CBufRet.i32 %6757, 2
  %6759 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6721, i32 %6758, i32 %6756)  ; UMad(a,b,c)
  %6760 = shl i32 %6759, 2
  %6761 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %6760, i32 undef)  ; BufferLoad(srv,index,wot)
  %6762 = extractvalue %dx.types.ResRet.i32 %6761, 0
  %6763 = shl i32 %6756, 5
  %6764 = sub nsw i32 %6744, %6763
  %6765 = call i32 @dx.op.binary.i32(i32 37, i32 %6764, i32 0)  ; IMax(a,b)
  %6766 = call i32 @dx.op.binary.i32(i32 38, i32 %6765, i32 31)  ; IMin(a,b)
  %6767 = sub nsw i32 1, %6744
  %6768 = add nsw i32 %6767, %6745
  %6769 = call i32 @dx.op.binary.i32(i32 37, i32 %6768, i32 0)  ; IMax(a,b)
  %6770 = call i32 @dx.op.binary.i32(i32 38, i32 %6769, i32 32)  ; IMin(a,b)
  %6771 = and i32 %6770, 31
  %6772 = shl i32 -1, %6771
  %6773 = xor i32 %6772, -1
  %6774 = and i32 %6766, 31
  %6775 = shl i32 %6773, %6774
  %6776 = icmp eq i32 %6770, 32
  %6777 = select i1 %6776, i32 -1, i32 %6775
  %6778 = and i32 %6777, %6762
  %6779 = icmp eq i32 %6778, 0
  br i1 %6779, label %7104, label %6780

; <label>:6780                                    ; preds = %6751
  br label %6781

; <label>:6781                                    ; preds = %6887, %6780
  %6782 = phi float [ %6888, %6887 ], [ %6752, %6780 ]
  %6783 = phi float [ %6889, %6887 ], [ %6753, %6780 ]
  %6784 = phi float [ %6890, %6887 ], [ %6754, %6780 ]
  %6785 = phi float [ %6891, %6887 ], [ %6755, %6780 ]
  %6786 = phi i32 [ %6791, %6887 ], [ %6778, %6780 ]
  %6787 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6786)  ; FirstbitLo(value)
  %6788 = add i32 %6787, %6763
  %6789 = and i32 %6787, 31
  %6790 = shl i32 1, %6789
  %6791 = xor i32 %6790, %6786
  %6792 = mul i32 %6788, 72
  %6793 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %6792, i32 undef)  ; BufferLoad(srv,index,wot)
  %6794 = extractvalue %dx.types.ResRet.f32 %6793, 0
  %6795 = extractvalue %dx.types.ResRet.f32 %6793, 1
  %6796 = extractvalue %dx.types.ResRet.f32 %6793, 2
  %6797 = add i32 %6792, 12
  %6798 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %6797, i32 undef)  ; BufferLoad(srv,index,wot)
  %6799 = extractvalue %dx.types.ResRet.i32 %6798, 0
  %6800 = add i32 %6792, 16
  %6801 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %6800, i32 undef)  ; BufferLoad(srv,index,wot)
  %6802 = extractvalue %dx.types.ResRet.f32 %6801, 0
  %6803 = extractvalue %dx.types.ResRet.f32 %6801, 1
  %6804 = extractvalue %dx.types.ResRet.f32 %6801, 2
  %6805 = add i32 %6792, 28
  %6806 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %6805, i32 undef)  ; BufferLoad(srv,index,wot)
  %6807 = extractvalue %dx.types.ResRet.f32 %6806, 0
  %6808 = add i32 %6792, 32
  %6809 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %6808, i32 undef)  ; BufferLoad(srv,index,wot)
  %6810 = extractvalue %dx.types.ResRet.f32 %6809, 0
  %6811 = extractvalue %dx.types.ResRet.f32 %6809, 1
  %6812 = extractvalue %dx.types.ResRet.f32 %6809, 2
  %6813 = extractvalue %dx.types.ResRet.f32 %6809, 3
  %6814 = add i32 %6792, 48
  %6815 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %6814, i32 undef)  ; BufferLoad(srv,index,wot)
  %6816 = extractvalue %dx.types.ResRet.f32 %6815, 0
  %6817 = extractvalue %dx.types.ResRet.f32 %6815, 1
  %6818 = add i32 %6792, 56
  %6819 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %6818, i32 undef)  ; BufferLoad(srv,index,wot)
  %6820 = extractvalue %dx.types.ResRet.f32 %6819, 0
  %6821 = extractvalue %dx.types.ResRet.f32 %6819, 1
  %6822 = add i32 %6792, 64
  %6823 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %6822, i32 undef)  ; BufferLoad(srv,index,wot)
  %6824 = extractvalue %dx.types.ResRet.f32 %6823, 0
  %6825 = extractvalue %dx.types.ResRet.f32 %6823, 1
  %6826 = mul i32 %6788, 60
  %6827 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %6826, i32 undef)  ; BufferLoad(srv,index,wot)
  %6828 = extractvalue %dx.types.ResRet.f32 %6827, 0
  %6829 = extractvalue %dx.types.ResRet.f32 %6827, 1
  %6830 = extractvalue %dx.types.ResRet.f32 %6827, 2
  %6831 = add i32 %6826, 12
  %6832 = add i32 %6826, 48
  %6833 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %6832, i32 undef)  ; BufferLoad(srv,index,wot)
  %6834 = extractvalue %dx.types.ResRet.f32 %6833, 0
  %6835 = extractvalue %dx.types.ResRet.f32 %6833, 1
  %6836 = extractvalue %dx.types.ResRet.f32 %6833, 2
  %6837 = and i32 %6799, 32767
  %6838 = bitcast float %6794 to i32
  %6839 = icmp eq i32 %6838, -1
  %6840 = bitcast float %6795 to i32
  %6841 = and i32 %6799, 32768
  %6842 = icmp ne i32 %6841, 0
  %6843 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6844 = extractvalue %dx.types.CBufRet.f32 %6843, 0
  %6845 = extractvalue %dx.types.CBufRet.f32 %6843, 1
  %6846 = extractvalue %dx.types.CBufRet.f32 %6843, 2
  %6847 = fsub fast float %6828, %6844
  %6848 = fsub fast float %6829, %6845
  %6849 = fsub fast float %6830, %6846
  %6850 = fsub fast float %167, %6847
  %6851 = fsub fast float %168, %6848
  %6852 = fsub fast float %169, %6849
  %6853 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %6831, i32 undef)  ; BufferLoad(srv,index,wot)
  %6854 = extractvalue %dx.types.ResRet.f32 %6853, 0
  %6855 = extractvalue %dx.types.ResRet.f32 %6853, 1
  %6856 = extractvalue %dx.types.ResRet.f32 %6853, 2
  %6857 = call float @dx.op.dot3.f32(i32 55, float %6850, float %6851, float %6852, float %6854, float %6855, float %6856)  ; Dot3(ax,ay,az,bx,by,bz)
  %6858 = add i32 %6826, 24
  %6859 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %6858, i32 undef)  ; BufferLoad(srv,index,wot)
  %6860 = extractvalue %dx.types.ResRet.f32 %6859, 0
  %6861 = extractvalue %dx.types.ResRet.f32 %6859, 1
  %6862 = extractvalue %dx.types.ResRet.f32 %6859, 2
  %6863 = call float @dx.op.dot3.f32(i32 55, float %6850, float %6851, float %6852, float %6860, float %6861, float %6862)  ; Dot3(ax,ay,az,bx,by,bz)
  %6864 = add i32 %6826, 36
  %6865 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %6864, i32 undef)  ; BufferLoad(srv,index,wot)
  %6866 = extractvalue %dx.types.ResRet.f32 %6865, 0
  %6867 = extractvalue %dx.types.ResRet.f32 %6865, 1
  %6868 = extractvalue %dx.types.ResRet.f32 %6865, 2
  %6869 = call float @dx.op.dot3.f32(i32 55, float %6850, float %6851, float %6852, float %6866, float %6867, float %6868)  ; Dot3(ax,ay,az,bx,by,bz)
  %6870 = call float @dx.op.unary.f32(i32 6, float %6857)  ; FAbs(value)
  %6871 = call float @dx.op.unary.f32(i32 6, float %6863)  ; FAbs(value)
  %6872 = call float @dx.op.unary.f32(i32 6, float %6869)  ; FAbs(value)
  %6873 = fsub fast float %6834, %6870
  %6874 = fsub fast float %6835, %6871
  %6875 = fsub fast float %6836, %6872
  %6876 = fmul fast float %6873, %6802
  %6877 = fmul fast float %6874, %6803
  %6878 = fmul fast float %6875, %6804
  %6879 = call float @dx.op.binary.f32(i32 36, float %6877, float %6878)  ; FMin(a,b)
  %6880 = call float @dx.op.binary.f32(i32 36, float %6876, float %6879)  ; FMin(a,b)
  %6881 = call float @dx.op.unary.f32(i32 7, float %6880)  ; Saturate(value)
  %6882 = call float @dx.op.binary.f32(i32 36, float %6785, float %6881)  ; FMin(a,b)
  %6883 = uitofp i1 %6842 to float
  %6884 = fsub fast float 1.000000e+00, %6883
  %6885 = fmul fast float %6882, %6884
  %6886 = fcmp fast ogt float %6885, 0.000000e+00
  br i1 %6886, label %6893, label %6887

; <label>:6887                                    ; preds = %7035, %6781
  %6888 = phi float [ %7099, %7035 ], [ %6782, %6781 ]
  %6889 = phi float [ %7100, %7035 ], [ %6783, %6781 ]
  %6890 = phi float [ %7101, %7035 ], [ %6784, %6781 ]
  %6891 = phi float [ %7102, %7035 ], [ %6785, %6781 ]
  %6892 = icmp eq i32 %6786, %6790
  br i1 %6892, label %7103, label %6781

; <label>:6893                                    ; preds = %6781
  br i1 %6839, label %6951, label %6894

; <label>:6894                                    ; preds = %6893
  %6895 = fsub fast float -0.000000e+00, %6854
  %6896 = fsub fast float -0.000000e+00, %6855
  %6897 = fsub fast float -0.000000e+00, %6856
  %6898 = call float @dx.op.dot3.f32(i32 55, float %6734, float %6735, float %6736, float %6895, float %6896, float %6897)  ; Dot3(ax,ay,az,bx,by,bz)
  %6899 = fsub fast float -0.000000e+00, %6898
  %6900 = call float @dx.op.dot3.f32(i32 55, float %6850, float %6851, float %6852, float %6895, float %6896, float %6897)  ; Dot3(ax,ay,az,bx,by,bz)
  %6901 = fadd fast float %6900, %6817
  %6902 = fadd fast float %6816, %6900
  %6903 = fsub fast float -0.000000e+00, %6902
  %6904 = fcmp ogt float %6898, -0.000000e+00
  %6905 = select i1 %6904, float %6903, float %6901
  %6906 = call float @dx.op.unary.f32(i32 6, float %6899)  ; FAbs(value)
  %6907 = fdiv fast float 1.000000e+00, %6906
  %6908 = fmul fast float %6905, %6907
  %6909 = call float @dx.op.binary.f32(i32 35, float %6908, float 0.000000e+00)  ; FMax(a,b)
  %6910 = fsub fast float -0.000000e+00, %6860
  %6911 = fsub fast float -0.000000e+00, %6861
  %6912 = fsub fast float -0.000000e+00, %6862
  %6913 = call float @dx.op.dot3.f32(i32 55, float %6734, float %6735, float %6736, float %6910, float %6911, float %6912)  ; Dot3(ax,ay,az,bx,by,bz)
  %6914 = fsub fast float -0.000000e+00, %6913
  %6915 = call float @dx.op.dot3.f32(i32 55, float %6850, float %6851, float %6852, float %6910, float %6911, float %6912)  ; Dot3(ax,ay,az,bx,by,bz)
  %6916 = fadd fast float %6915, %6821
  %6917 = fadd fast float %6820, %6915
  %6918 = fsub fast float -0.000000e+00, %6917
  %6919 = fcmp ogt float %6913, -0.000000e+00
  %6920 = select i1 %6919, float %6918, float %6916
  %6921 = call float @dx.op.unary.f32(i32 6, float %6914)  ; FAbs(value)
  %6922 = fdiv fast float 1.000000e+00, %6921
  %6923 = fmul fast float %6920, %6922
  %6924 = call float @dx.op.binary.f32(i32 35, float %6923, float 0.000000e+00)  ; FMax(a,b)
  %6925 = fsub fast float -0.000000e+00, %6866
  %6926 = fsub fast float -0.000000e+00, %6867
  %6927 = fsub fast float -0.000000e+00, %6868
  %6928 = call float @dx.op.dot3.f32(i32 55, float %6734, float %6735, float %6736, float %6925, float %6926, float %6927)  ; Dot3(ax,ay,az,bx,by,bz)
  %6929 = fsub fast float -0.000000e+00, %6928
  %6930 = call float @dx.op.dot3.f32(i32 55, float %6850, float %6851, float %6852, float %6925, float %6926, float %6927)  ; Dot3(ax,ay,az,bx,by,bz)
  %6931 = fadd fast float %6930, %6825
  %6932 = fadd fast float %6824, %6930
  %6933 = fsub fast float -0.000000e+00, %6932
  %6934 = fcmp ogt float %6928, -0.000000e+00
  %6935 = select i1 %6934, float %6933, float %6931
  %6936 = call float @dx.op.unary.f32(i32 6, float %6929)  ; FAbs(value)
  %6937 = fdiv fast float 1.000000e+00, %6936
  %6938 = fmul fast float %6935, %6937
  %6939 = call float @dx.op.binary.f32(i32 35, float %6938, float 0.000000e+00)  ; FMax(a,b)
  %6940 = call float @dx.op.binary.f32(i32 36, float %6924, float %6939)  ; FMin(a,b)
  %6941 = call float @dx.op.binary.f32(i32 36, float %6909, float %6940)  ; FMin(a,b)
  %6942 = fmul fast float %6941, %6734
  %6943 = fmul fast float %6941, %6735
  %6944 = fmul fast float %6941, %6736
  %6945 = fadd fast float %6942, %167
  %6946 = fadd fast float %6943, %168
  %6947 = fadd fast float %6944, %169
  %6948 = fsub fast float %6945, %6794
  %6949 = fsub fast float %6946, %6795
  %6950 = fsub fast float %6947, %6796
  br label %6958

; <label>:6951                                    ; preds = %6893
  %6952 = fmul fast float %6734, 8.096000e+03
  %6953 = fmul fast float %6735, 8.096000e+03
  %6954 = fmul fast float %6736, 8.096000e+03
  %6955 = fadd fast float %6952, %167
  %6956 = fadd fast float %6953, %168
  %6957 = fadd fast float %6954, %169
  br label %6958

; <label>:6958                                    ; preds = %6951, %6894
  %6959 = phi float [ %6734, %6951 ], [ %6948, %6894 ]
  %6960 = phi float [ %6735, %6951 ], [ %6949, %6894 ]
  %6961 = phi float [ %6736, %6951 ], [ %6950, %6894 ]
  %6962 = phi float [ %6955, %6951 ], [ %6945, %6894 ]
  %6963 = phi float [ %6956, %6951 ], [ %6946, %6894 ]
  %6964 = phi float [ %6957, %6951 ], [ %6947, %6894 ]
  %6965 = fcmp fast olt float %6813, 1.000000e+00
  br i1 %6965, label %6966, label %6997, !dx.controlflow.hints !96

; <label>:6966                                    ; preds = %6958
  %6967 = fmul fast float %6961, %6811
  %6968 = fmul fast float %6960, %6812
  %6969 = fsub fast float %6967, %6968
  %6970 = fmul fast float %6959, %6812
  %6971 = fmul fast float %6961, %6810
  %6972 = fsub fast float %6970, %6971
  %6973 = fmul fast float %6960, %6810
  %6974 = fmul fast float %6959, %6811
  %6975 = fsub fast float %6973, %6974
  %6976 = fmul fast float %6969, 2.000000e+00
  %6977 = fmul fast float %6972, 2.000000e+00
  %6978 = fmul fast float %6975, 2.000000e+00
  %6979 = fmul fast float %6976, %6813
  %6980 = fmul fast float %6977, %6813
  %6981 = fmul fast float %6978, %6813
  %6982 = fmul fast float %6978, %6811
  %6983 = fmul fast float %6977, %6812
  %6984 = fmul fast float %6976, %6812
  %6985 = fmul fast float %6978, %6810
  %6986 = fmul fast float %6977, %6810
  %6987 = fmul fast float %6976, %6811
  %6988 = fadd fast float %6982, %6959
  %6989 = fadd fast float %6988, %6979
  %6990 = fsub fast float %6989, %6983
  %6991 = fsub fast float %6960, %6985
  %6992 = fadd fast float %6991, %6980
  %6993 = fadd fast float %6992, %6984
  %6994 = fadd fast float %6981, %6961
  %6995 = fsub fast float %6994, %6987
  %6996 = fadd fast float %6995, %6986
  br label %6997

; <label>:6997                                    ; preds = %6966, %6958
  %6998 = phi float [ %6990, %6966 ], [ %6959, %6958 ]
  %6999 = phi float [ %6993, %6966 ], [ %6960, %6958 ]
  %7000 = phi float [ %6996, %6966 ], [ %6961, %6958 ]
  br i1 %6839, label %7032, label %7001

; <label>:7001                                    ; preds = %6997
  %7002 = fmul fast float %6502, 0x400187C840000000
  %7003 = fadd fast float %7002, 0xC00EFC2120000000
  %7004 = fmul fast float %7003, %6502
  %7005 = fadd fast float %7004, 0x3FE5D16340000000
  %7006 = fmul fast float %7005, %6502
  %7007 = fadd fast float %7006, 1.000000e+00
  %7008 = call float @dx.op.unary.f32(i32 7, float %7007)  ; Saturate(value)
  %7009 = fsub fast float %6962, %167
  %7010 = fsub fast float %6963, %168
  %7011 = fsub fast float %6964, %169
  %7012 = fsub fast float %6962, %6794
  %7013 = fsub fast float %6963, %6795
  %7014 = fsub fast float %6964, %6796
  %7015 = call float @dx.op.dot3.f32(i32 55, float %7009, float %7010, float %7011, float %7009, float %7010, float %7011)  ; Dot3(ax,ay,az,bx,by,bz)
  %7016 = call float @dx.op.dot3.f32(i32 55, float %7012, float %7013, float %7014, float %7012, float %7013, float %7014)  ; Dot3(ax,ay,az,bx,by,bz)
  %7017 = fadd fast float %7016, 0x3EE4F8B580000000
  %7018 = fdiv fast float %7015, %7017
  %7019 = bitcast float %7018 to i32
  %7020 = ashr i32 %7019, 1
  %7021 = add nsw i32 %7020, 532487669
  %7022 = bitcast i32 %7021 to float
  %7023 = fmul fast float %7022, %7008
  %7024 = call float @dx.op.unary.f32(i32 7, float %7023)  ; Saturate(value)
  %7025 = fmul fast float %7024, 0x4009981AE0000000
  %7026 = fsub fast float 0x40111BBD80000000, %7025
  %7027 = fmul fast float %7026, %7024
  %7028 = fadd fast float %7027, 0xC0009F6020000000
  %7029 = fmul fast float %7028, %7024
  %7030 = fadd fast float %7029, 1.000000e+00
  %7031 = call float @dx.op.unary.f32(i32 7, float %7030)  ; Saturate(value)
  br label %7035

; <label>:7032                                    ; preds = %6997
  %7033 = icmp ne i32 %6840, -1
  %7034 = zext i1 %7033 to i32
  br label %7035

; <label>:7035                                    ; preds = %7032, %7001
  %7036 = phi float [ %6502, %7032 ], [ %7031, %7001 ]
  %7037 = phi i32 [ %7034, %7032 ], [ 0, %7001 ]
  %7038 = fmul float %7036, 5.000000e+00
  %7039 = fsub float 5.000000e+00, %7038
  %7040 = icmp ne i32 %7037, 0
  %7041 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %7042 = extractvalue %dx.types.CBufRet.f32 %7041, 3
  %7043 = fadd fast float %7042, %7039
  %7044 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7043)  ; FMax(a,b)
  %7045 = call float @dx.op.unary.f32(i32 6, float %6998)  ; FAbs(value)
  %7046 = call float @dx.op.unary.f32(i32 6, float %6999)  ; FAbs(value)
  %7047 = fadd fast float %7046, %7045
  %7048 = call float @dx.op.unary.f32(i32 6, float %7000)  ; FAbs(value)
  %7049 = fadd fast float %7047, %7048
  %7050 = fcmp fast oeq float %7049, 0.000000e+00
  %7051 = fdiv fast float 1.000000e+00, %7049
  %7052 = select i1 %7050, float 1.000000e+00, float %7051
  %7053 = fmul fast float %7052, %6998
  %7054 = fmul fast float %7052, %6999
  %7055 = call float @dx.op.unary.f32(i32 6, float %7054)  ; FAbs(value)
  %7056 = call float @dx.op.unary.f32(i32 6, float %7053)  ; FAbs(value)
  %7057 = fsub fast float 1.000000e+00, %7055
  %7058 = fsub fast float 1.000000e+00, %7056
  %7059 = fcmp fast oge float %7053, 0.000000e+00
  %7060 = fcmp fast oge float %7054, 0.000000e+00
  %7061 = select i1 %7059, float 1.000000e+00, float -1.000000e+00
  %7062 = select i1 %7060, float 1.000000e+00, float -1.000000e+00
  %7063 = fcmp fast ole float %7000, 0.000000e+00
  %7064 = fmul fast float %7061, %7057
  %7065 = fmul fast float %7062, %7058
  %7066 = select i1 %7063, float %7064, float %7053
  %7067 = select i1 %7063, float %7065, float %7054
  %7068 = fmul fast float %7066, 5.000000e-01
  %7069 = fmul fast float %7067, 5.000000e-01
  %7070 = fadd fast float %7068, 5.000000e-01
  %7071 = fadd fast float %7069, 5.000000e-01
  %7072 = uitofp i32 %6837 to float
  %7073 = call float @dx.op.binary.f32(i32 36, float %7044, float 3.000000e+00)  ; FMin(a,b)
  %7074 = fadd fast float %7073, 2.000000e+00
  %7075 = call float @dx.op.unary.f32(i32 21, float %7074)  ; Exp(value)
  %7076 = extractvalue %dx.types.CBufRet.f32 %7041, 1
  %7077 = fmul fast float %7076, %7075
  %7078 = fmul fast float %7077, 2.000000e+00
  %7079 = fsub fast float 1.000000e+00, %7078
  %7080 = fmul fast float %7070, %7079
  %7081 = fmul fast float %7071, %7079
  %7082 = fadd fast float %7080, %7077
  %7083 = fadd fast float %7081, %7077
  %7084 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %44, float %7082, float %7083, float %7072, float undef, i32 0, i32 0, i32 undef, float %7044)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7085 = extractvalue %dx.types.ResRet.f32 %7084, 0
  %7086 = extractvalue %dx.types.ResRet.f32 %7084, 1
  %7087 = extractvalue %dx.types.ResRet.f32 %7084, 2
  %7088 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7089 = extractvalue %dx.types.CBufRet.f32 %7088, 3
  %7090 = fmul fast float %7089, %6807
  %7091 = call float @dx.op.binary.f32(i32 36, float %6567, float %7090)  ; FMin(a,b)
  %7092 = select i1 %7040, float %7091, float %7090
  %7093 = fmul fast float %7085, %6885
  %7094 = fmul fast float %7093, %7092
  %7095 = fmul fast float %7086, %6885
  %7096 = fmul fast float %7095, %7092
  %7097 = fmul fast float %7087, %6885
  %7098 = fmul fast float %7097, %7092
  %7099 = fadd fast float %7094, %6782
  %7100 = fadd fast float %7096, %6783
  %7101 = fadd fast float %7098, %6784
  %7102 = fsub fast float %6785, %6885
  br label %6887

; <label>:7103                                    ; preds = %6887
  br label %7104

; <label>:7104                                    ; preds = %7103, %6751
  %7105 = phi float [ %6752, %6751 ], [ %6888, %7103 ]
  %7106 = phi float [ %6753, %6751 ], [ %6889, %7103 ]
  %7107 = phi float [ %6754, %6751 ], [ %6890, %7103 ]
  %7108 = phi float [ %6755, %6751 ], [ %6891, %7103 ]
  %7109 = add i32 %6756, 1
  %7110 = icmp ugt i32 %7109, %6748
  br i1 %7110, label %7111, label %6751, !llvm.loop !97

; <label>:7111                                    ; preds = %7104
  br label %7112

; <label>:7112                                    ; preds = %7111, %6733
  %7113 = phi float [ 0.000000e+00, %6733 ], [ %7105, %7111 ]
  %7114 = phi float [ 0.000000e+00, %6733 ], [ %7106, %7111 ]
  %7115 = phi float [ 0.000000e+00, %6733 ], [ %7107, %7111 ]
  %7116 = call float @dx.op.dot3.f32(i32 55, float %7113, float %7114, float %7115, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7117 = select i1 %228, float 0.000000e+00, float %7113
  %7118 = select i1 %228, float %7116, float %7114
  %7119 = select i1 %228, float 0.000000e+00, float %7115
  %7120 = fcmp fast olt float %6686, 0.000000e+00
  %7121 = call float @dx.op.unary.f32(i32 6, float %6686)  ; FAbs(value)
  %7122 = fmul fast float %7121, %6626
  %7123 = fmul fast float %7121, %6627
  %7124 = fmul fast float %7121, %6628
  %7125 = select i1 %7120, float %6626, float %7122
  %7126 = select i1 %7120, float %6627, float %7123
  %7127 = select i1 %7120, float %6628, float %7124
  %7128 = fsub fast float 1.000000e+00, %7121
  %7129 = call float @dx.op.unary.f32(i32 7, float %7128)  ; Saturate(value)
  %7130 = fmul fast float %7129, %7117
  %7131 = fmul fast float %7129, %7118
  %7132 = fmul fast float %7129, %7119
  %7133 = fadd fast float %7125, %7130
  %7134 = fadd fast float %7126, %7131
  %7135 = fadd fast float %7127, %7132
  br label %7136

; <label>:7136                                    ; preds = %7112, %6669
  %7137 = phi float [ %6626, %6669 ], [ %7133, %7112 ]
  %7138 = phi float [ %6627, %6669 ], [ %7134, %7112 ]
  %7139 = phi float [ %6628, %6669 ], [ %7135, %7112 ]
  %7140 = fmul fast float %6675, %6622
  %7141 = fmul fast float %6675, %6623
  %7142 = fmul fast float %6675, %6624
  %7143 = call float @dx.op.dot3.f32(i32 55, float %6499, float %6500, float %6501, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7144 = fcmp fast ogt float %7143, 0x3E7FF19E20000000
  %7145 = fdiv fast float 1.000000e+00, %7143
  %7146 = select i1 %7144, float %7145, float 0.000000e+00
  %7147 = fmul fast float %7146, %6499
  %7148 = fmul fast float %7146, %6500
  %7149 = fmul fast float %7146, %6501
  %7150 = fadd fast float %7147, -1.000000e+00
  %7151 = fadd fast float %7148, -1.000000e+00
  %7152 = fadd fast float %7149, -1.000000e+00
  %7153 = fmul fast float %7150, 5.000000e-01
  %7154 = fmul fast float %7151, 5.000000e-01
  %7155 = fmul fast float %7152, 5.000000e-01
  %7156 = fadd fast float %7153, 1.000000e+00
  %7157 = fadd fast float %7154, 1.000000e+00
  %7158 = fadd fast float %7155, 1.000000e+00
  %7159 = fmul fast float %7137, %6670
  %7160 = fmul fast float %7138, %6671
  %7161 = fmul fast float %7139, %6672
  %7162 = fsub fast float 1.000000e+00, %6506
  %7163 = bitcast float %7162 to i32
  %7164 = sitofp i32 %7163 to float
  %7165 = fmul fast float %7164, 5.000000e+00
  %7166 = fadd fast float %7165, 0xC1EFBF8940000000
  %7167 = fptosi float %7166 to i32
  %7168 = bitcast i32 %7167 to float
  %7169 = fmul fast float %7168, %4276
  %7170 = fmul fast float %6622, %7169
  %7171 = fmul fast float %7170, %6675
  %7172 = fmul fast float %7171, %7156
  %7173 = fmul fast float %6623, %7169
  %7174 = fmul fast float %7173, %6675
  %7175 = fmul fast float %7174, %7157
  %7176 = fmul fast float %6624, %7169
  %7177 = fmul fast float %7176, %6675
  %7178 = fmul fast float %7177, %7158
  %7179 = fmul fast float %7140, %4272
  %7180 = fmul fast float %7141, %4272
  %7181 = fmul fast float %7142, %4272
  %7182 = fadd fast float %7159, %4268
  %7183 = fadd fast float %7182, %7172
  %7184 = fmul fast float %7183, %4272
  %7185 = fadd fast float %7160, %4269
  %7186 = fadd fast float %7185, %7175
  %7187 = fmul fast float %7186, %4272
  %7188 = fadd fast float %7161, %4270
  %7189 = fadd fast float %7188, %7178
  %7190 = fmul fast float %7189, %4272
  %7191 = bitcast i32 %6530 to float
  %7192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %7193 = extractvalue %dx.types.CBufRet.f32 %7192, 3
  %7194 = fcmp fast oeq float %7193, 0.000000e+00
  br i1 %7194, label %8661, label %7195

; <label>:7195                                    ; preds = %7136
  %7196 = extractvalue %dx.types.CBufRet.f32 %7192, 0
  %7197 = extractvalue %dx.types.CBufRet.f32 %7192, 1
  %7198 = extractvalue %dx.types.CBufRet.f32 %7192, 2
  %7199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %7200 = extractvalue %dx.types.CBufRet.f32 %7199, 0
  %7201 = extractvalue %dx.types.CBufRet.f32 %7199, 1
  %7202 = extractvalue %dx.types.CBufRet.f32 %7199, 2
  %7203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %7204 = extractvalue %dx.types.CBufRet.f32 %7203, 0
  %7205 = extractvalue %dx.types.CBufRet.f32 %7203, 1
  %7206 = call float @dx.op.dot3.f32(i32 55, float %7200, float %7201, float %7202, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7207 = select i1 %228, float %7204, float %7200
  %7208 = select i1 %228, float %7206, float %7201
  %7209 = select i1 %228, float %7205, float %7202
  %7210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %7211 = extractvalue %dx.types.CBufRet.f32 %7210, 2
  %7212 = fmul fast float %7211, %111
  %7213 = fmul fast float %7211, %112
  %7214 = fmul fast float %7211, %113
  %7215 = fadd fast float %7212, %167
  %7216 = fadd fast float %7213, %168
  %7217 = fadd fast float %7214, %169
  %7218 = fcmp fast olt float %7193, 0.000000e+00
  br i1 %7218, label %8314, label %7219

; <label>:7219                                    ; preds = %7195
  %7220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7221 = extractvalue %dx.types.CBufRet.f32 %7220, 0
  %7222 = extractvalue %dx.types.CBufRet.f32 %7220, 1
  %7223 = extractvalue %dx.types.CBufRet.f32 %7220, 2
  %7224 = extractvalue %dx.types.CBufRet.f32 %7220, 3
  %7225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7226 = extractvalue %dx.types.CBufRet.f32 %7225, 0
  %7227 = extractvalue %dx.types.CBufRet.f32 %7225, 1
  %7228 = extractvalue %dx.types.CBufRet.f32 %7225, 2
  %7229 = extractvalue %dx.types.CBufRet.f32 %7225, 3
  %7230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7231 = extractvalue %dx.types.CBufRet.f32 %7230, 0
  %7232 = extractvalue %dx.types.CBufRet.f32 %7230, 1
  %7233 = extractvalue %dx.types.CBufRet.f32 %7230, 2
  %7234 = extractvalue %dx.types.CBufRet.f32 %7230, 3
  %7235 = fmul fast float %7221, %7215
  %7236 = call float @dx.op.tertiary.f32(i32 46, float %7216, float %7222, float %7235)  ; FMad(a,b,c)
  %7237 = call float @dx.op.tertiary.f32(i32 46, float %7217, float %7223, float %7236)  ; FMad(a,b,c)
  %7238 = fadd fast float %7237, %7224
  %7239 = fmul fast float %7226, %7215
  %7240 = call float @dx.op.tertiary.f32(i32 46, float %7216, float %7227, float %7239)  ; FMad(a,b,c)
  %7241 = call float @dx.op.tertiary.f32(i32 46, float %7217, float %7228, float %7240)  ; FMad(a,b,c)
  %7242 = fadd fast float %7241, %7229
  %7243 = fmul fast float %7231, %7215
  %7244 = call float @dx.op.tertiary.f32(i32 46, float %7216, float %7232, float %7243)  ; FMad(a,b,c)
  %7245 = call float @dx.op.tertiary.f32(i32 46, float %7217, float %7233, float %7244)  ; FMad(a,b,c)
  %7246 = fadd fast float %7245, %7234
  %7247 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %7248 = extractvalue %dx.types.CBufRet.f32 %7247, 0
  %7249 = extractvalue %dx.types.CBufRet.f32 %7247, 1
  %7250 = extractvalue %dx.types.CBufRet.f32 %7247, 3
  %7251 = fmul fast float %7250, %7238
  %7252 = fmul fast float %7250, %7242
  %7253 = fadd fast float %7251, %7248
  %7254 = fadd fast float %7252, %7249
  %7255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %7256 = extractvalue %dx.types.CBufRet.f32 %7255, 0
  %7257 = extractvalue %dx.types.CBufRet.f32 %7255, 1
  %7258 = extractvalue %dx.types.CBufRet.f32 %7255, 3
  %7259 = fmul fast float %7258, %7238
  %7260 = fmul fast float %7258, %7242
  %7261 = fadd fast float %7259, %7256
  %7262 = fadd fast float %7260, %7257
  %7263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %7264 = extractvalue %dx.types.CBufRet.f32 %7263, 1
  %7265 = fsub fast float %7264, %7246
  %7266 = extractvalue %dx.types.CBufRet.f32 %7263, 2
  %7267 = fmul fast float %7265, %7266
  %7268 = fsub fast float 1.000000e+00, %7267
  %7269 = call float @dx.op.unary.f32(i32 7, float %7268)  ; Saturate(value)
  %7270 = extractvalue %dx.types.CBufRet.f32 %7255, 2
  %7271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7272 = extractvalue %dx.types.CBufRet.f32 %7271, 2
  %7273 = fadd fast float %7272, %7270
  %7274 = fcmp fast ogt float %7273, 0.000000e+00
  br i1 %7274, label %7275, label %7299

; <label>:7275                                    ; preds = %7219
  %7276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %7277 = extractvalue %dx.types.CBufRet.f32 %7276, 0
  %7278 = extractvalue %dx.types.CBufRet.f32 %7276, 1
  %7279 = fsub fast float %7261, %7277
  %7280 = fsub fast float %7262, %7278
  %7281 = fcmp fast olt float %7279, 0.000000e+00
  %7282 = fcmp fast olt float %7280, 0.000000e+00
  %7283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %7284 = extractvalue %dx.types.CBufRet.f32 %7283, 0
  %7285 = extractvalue %dx.types.CBufRet.f32 %7283, 1
  %7286 = extractvalue %dx.types.CBufRet.f32 %7283, 2
  %7287 = extractvalue %dx.types.CBufRet.f32 %7283, 3
  %7288 = select i1 %7281, float %7284, float %7286
  %7289 = select i1 %7282, float %7285, float %7287
  %7290 = fmul fast float %7288, %7279
  %7291 = fmul fast float %7289, %7280
  %7292 = call float @dx.op.unary.f32(i32 6, float %7290)  ; FAbs(value)
  %7293 = call float @dx.op.unary.f32(i32 6, float %7291)  ; FAbs(value)
  %7294 = extractvalue %dx.types.CBufRet.f32 %7210, 0
  %7295 = call float @dx.op.binary.f32(i32 35, float %7292, float %7293)  ; FMax(a,b)
  %7296 = fsub fast float %7294, %7295
  %7297 = call float @dx.op.unary.f32(i32 7, float %7296)  ; Saturate(value)
  %7298 = fmul fast float %7297, %7269
  br label %7299

; <label>:7299                                    ; preds = %7275, %7219
  %7300 = phi float [ %7298, %7275 ], [ 0.000000e+00, %7219 ]
  %7301 = extractvalue %dx.types.CBufRet.f32 %7247, 2
  %7302 = extractvalue %dx.types.CBufRet.f32 %7271, 1
  %7303 = fadd fast float %7302, %7301
  %7304 = fcmp fast ogt float %7303, 0.000000e+00
  %7305 = extractvalue %dx.types.CBufRet.f32 %7210, 0
  br i1 %7304, label %7306, label %7329

; <label>:7306                                    ; preds = %7299
  %7307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %7308 = extractvalue %dx.types.CBufRet.f32 %7307, 0
  %7309 = extractvalue %dx.types.CBufRet.f32 %7307, 1
  %7310 = fsub fast float %7253, %7308
  %7311 = fsub fast float %7254, %7309
  %7312 = fcmp fast olt float %7310, 0.000000e+00
  %7313 = fcmp fast olt float %7311, 0.000000e+00
  %7314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %7315 = extractvalue %dx.types.CBufRet.f32 %7314, 0
  %7316 = extractvalue %dx.types.CBufRet.f32 %7314, 1
  %7317 = extractvalue %dx.types.CBufRet.f32 %7314, 2
  %7318 = extractvalue %dx.types.CBufRet.f32 %7314, 3
  %7319 = select i1 %7312, float %7315, float %7317
  %7320 = select i1 %7313, float %7316, float %7318
  %7321 = fmul fast float %7319, %7310
  %7322 = fmul fast float %7320, %7311
  %7323 = call float @dx.op.unary.f32(i32 6, float %7321)  ; FAbs(value)
  %7324 = call float @dx.op.unary.f32(i32 6, float %7322)  ; FAbs(value)
  %7325 = call float @dx.op.binary.f32(i32 35, float %7323, float %7324)  ; FMax(a,b)
  %7326 = fsub fast float %7305, %7325
  %7327 = call float @dx.op.unary.f32(i32 7, float %7326)  ; Saturate(value)
  %7328 = fmul fast float %7327, %7269
  br label %7329

; <label>:7329                                    ; preds = %7306, %7299
  %7330 = phi float [ %7328, %7306 ], [ 0.000000e+00, %7299 ]
  %7331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %7332 = extractvalue %dx.types.CBufRet.f32 %7331, 1
  %7333 = call float @dx.op.unary.f32(i32 7, float %7332)  ; Saturate(value)
  %7334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %7335 = extractvalue %dx.types.CBufRet.f32 %7334, 0
  %7336 = extractvalue %dx.types.CBufRet.f32 %7334, 1
  %7337 = fsub fast float %7238, %7335
  %7338 = fsub fast float %7242, %7336
  %7339 = fcmp fast olt float %7337, 0.000000e+00
  %7340 = fcmp fast olt float %7338, 0.000000e+00
  %7341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %7342 = extractvalue %dx.types.CBufRet.f32 %7341, 0
  %7343 = extractvalue %dx.types.CBufRet.f32 %7341, 1
  %7344 = extractvalue %dx.types.CBufRet.f32 %7341, 2
  %7345 = extractvalue %dx.types.CBufRet.f32 %7341, 3
  %7346 = select i1 %7339, float %7342, float %7344
  %7347 = select i1 %7340, float %7343, float %7345
  %7348 = fmul fast float %7346, %7337
  %7349 = fmul fast float %7347, %7338
  %7350 = call float @dx.op.unary.f32(i32 6, float %7348)  ; FAbs(value)
  %7351 = call float @dx.op.unary.f32(i32 6, float %7349)  ; FAbs(value)
  %7352 = call float @dx.op.binary.f32(i32 35, float %7350, float %7351)  ; FMax(a,b)
  %7353 = fsub fast float %7305, %7352
  %7354 = call float @dx.op.unary.f32(i32 7, float %7353)  ; Saturate(value)
  %7355 = call float @dx.op.binary.f32(i32 36, float %7354, float %7333)  ; FMin(a,b)
  %7356 = fmul fast float %7355, %7269
  %7357 = fsub fast float %7330, %7356
  %7358 = fsub fast float %7300, %7330
  %7359 = fsub fast float %7358, %7356
  %7360 = call float @dx.op.binary.f32(i32 35, float %7330, float %7300)  ; FMax(a,b)
  %7361 = call float @dx.op.binary.f32(i32 35, float %7356, float %7360)  ; FMax(a,b)
  %7362 = fcmp fast olt float %7361, 1.000000e+00
  br i1 %7362, label %7363, label %7761, !dx.controlflow.hints !99

; <label>:7363                                    ; preds = %7329
  %7364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %7365 = extractvalue %dx.types.CBufRet.f32 %7364, 0
  %7366 = fcmp fast une float %7365, 0.000000e+00
  br i1 %7366, label %7367, label %7761, !dx.controlflow.hints !100

; <label>:7367                                    ; preds = %7363
  %7368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %7369 = extractvalue %dx.types.CBufRet.f32 %7368, 0
  %7370 = extractvalue %dx.types.CBufRet.f32 %7368, 1
  %7371 = extractvalue %dx.types.CBufRet.f32 %7368, 2
  %7372 = extractvalue %dx.types.CBufRet.f32 %7368, 3
  %7373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %7374 = extractvalue %dx.types.CBufRet.f32 %7373, 0
  %7375 = extractvalue %dx.types.CBufRet.f32 %7373, 1
  %7376 = extractvalue %dx.types.CBufRet.f32 %7373, 2
  %7377 = extractvalue %dx.types.CBufRet.f32 %7373, 3
  %7378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %7379 = extractvalue %dx.types.CBufRet.f32 %7378, 0
  %7380 = extractvalue %dx.types.CBufRet.f32 %7378, 1
  %7381 = extractvalue %dx.types.CBufRet.f32 %7378, 2
  %7382 = extractvalue %dx.types.CBufRet.f32 %7378, 3
  %7383 = fmul fast float %7369, %7215
  %7384 = call float @dx.op.tertiary.f32(i32 46, float %7216, float %7370, float %7383)  ; FMad(a,b,c)
  %7385 = call float @dx.op.tertiary.f32(i32 46, float %7217, float %7371, float %7384)  ; FMad(a,b,c)
  %7386 = fadd fast float %7385, %7372
  %7387 = fmul fast float %7374, %7215
  %7388 = call float @dx.op.tertiary.f32(i32 46, float %7216, float %7375, float %7387)  ; FMad(a,b,c)
  %7389 = call float @dx.op.tertiary.f32(i32 46, float %7217, float %7376, float %7388)  ; FMad(a,b,c)
  %7390 = fadd fast float %7389, %7377
  %7391 = fmul fast float %7379, %7215
  %7392 = call float @dx.op.tertiary.f32(i32 46, float %7216, float %7380, float %7391)  ; FMad(a,b,c)
  %7393 = call float @dx.op.tertiary.f32(i32 46, float %7217, float %7381, float %7392)  ; FMad(a,b,c)
  %7394 = fadd fast float %7393, %7382
  %7395 = fcmp fast oge float %7386, 1.000000e+00
  %7396 = fcmp fast oge float %7390, 1.000000e+00
  %7397 = or i1 %7395, %7396
  %7398 = fcmp fast olt float %7386, 0.000000e+00
  %7399 = fcmp fast olt float %7390, 0.000000e+00
  %7400 = or i1 %7398, %7399
  %7401 = or i1 %7397, %7400
  br i1 %7401, label %7761, label %7402, !dx.controlflow.hints !101

; <label>:7402                                    ; preds = %7367
  %7403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %7404 = extractvalue %dx.types.CBufRet.f32 %7403, 0
  %7405 = extractvalue %dx.types.CBufRet.f32 %7403, 1
  %7406 = extractvalue %dx.types.CBufRet.f32 %7403, 2
  %7407 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %7408 = extractvalue %dx.types.CBufRet.i32 %7407, 2
  %7409 = uitofp i32 %7408 to float
  %7410 = extractvalue %dx.types.CBufRet.i32 %7407, 3
  %7411 = uitofp i32 %7410 to float
  %7412 = extractvalue %dx.types.CBufRet.f32 %7403, 3
  %7413 = fmul fast float %7412, 2.000000e+00
  %7414 = fsub fast float %7386, %7404
  %7415 = fsub fast float %7390, %7405
  %7416 = fmul fast float %7413, %7414
  %7417 = fmul fast float %7413, %7415
  %7418 = fdiv fast float 1.000000e+00, %7198
  %7419 = fmul fast float %7417, %7418
  %7420 = call float @dx.op.unary.f32(i32 6, float %7419)  ; FAbs(value)
  %7421 = fmul fast float %7406, %7217
  %7422 = fmul fast float %7421, %7413
  %7423 = call float @dx.op.unary.f32(i32 6, float %7422)  ; FAbs(value)
  %7424 = call float @dx.op.unary.f32(i32 6, float %7416)  ; FAbs(value)
  %7425 = call float @dx.op.binary.f32(i32 35, float %7423, float %7420)  ; FMax(a,b)
  %7426 = call float @dx.op.binary.f32(i32 35, float %7424, float %7425)  ; FMax(a,b)
  %7427 = fmul fast float %7426, 2.000000e+00
  %7428 = call float @dx.op.unary.f32(i32 23, float %7427)  ; Log(value)
  %7429 = call float @dx.op.binary.f32(i32 35, float %7428, float %7409)  ; FMax(a,b)
  %7430 = call float @dx.op.unary.f32(i32 22, float %7429)  ; Frc(value)
  %7431 = fadd fast float %7430, 0xBFEA666660000000
  %7432 = fmul fast float %7431, 8.000000e+00
  %7433 = call float @dx.op.unary.f32(i32 7, float %7432)  ; Saturate(value)
  %7434 = call float @dx.op.unary.f32(i32 27, float %7429)  ; Round_ni(value)
  %7435 = fadd fast float %7434, %7433
  %7436 = call float @dx.op.binary.f32(i32 36, float %7435, float %7411)  ; FMin(a,b)
  %7437 = call float @dx.op.unary.f32(i32 27, float %7436)  ; Round_ni(value)
  %7438 = fsub fast float -0.000000e+00, %7437
  %7439 = call float @dx.op.unary.f32(i32 21, float %7438)  ; Exp(value)
  %7440 = fmul fast float %7439, %7413
  %7441 = fmul fast float %7440, %7386
  %7442 = fmul fast float %7440, %7390
  %7443 = fmul fast float %7441, 2.500000e-01
  %7444 = fmul fast float %7442, 2.500000e-01
  %7445 = fadd fast float %7443, 5.000000e-01
  %7446 = fadd fast float %7444, 5.000000e-01
  %7447 = fsub fast float %7411, %7409
  %7448 = fptoui float %7447 to i32
  %7449 = add i32 %7448, 320
  %7450 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 %7449)  ; CBufferLoadLegacy(handle,regIndex)
  %7451 = extractvalue %dx.types.CBufRet.f32 %7450, 0
  %7452 = extractvalue %dx.types.CBufRet.f32 %7450, 1
  %7453 = fcmp fast une float %7436, %7411
  %7454 = fsub fast float %7386, %7451
  %7455 = fsub fast float %7390, %7452
  %7456 = call float @dx.op.unary.f32(i32 6, float %7454)  ; FAbs(value)
  %7457 = call float @dx.op.unary.f32(i32 6, float %7455)  ; FAbs(value)
  %7458 = fmul fast float %7456, %7440
  %7459 = fmul fast float %7457, %7440
  %7460 = fcmp fast olt float %7458, 1.000000e+00
  %7461 = fcmp fast olt float %7459, 1.000000e+00
  %7462 = and i1 %7460, %7461
  %7463 = or i1 %7453, %7462
  br i1 %7463, label %7464, label %7761, !dx.controlflow.hints !102

; <label>:7464                                    ; preds = %7402
  %7465 = fmul fast float %7442, 5.000000e-01
  %7466 = fmul fast float %7441, 5.000000e-01
  %7467 = fadd fast float %7465, 5.000000e-01
  %7468 = fadd fast float %7466, 5.000000e-01
  %7469 = sitofp i32 %7408 to float
  %7470 = fsub fast float %7436, %7469
  %7471 = call float @dx.op.unary.f32(i32 27, float %7470)  ; Round_ni(value)
  %7472 = call float @dx.op.unary.f32(i32 22, float %7436)  ; Frc(value)
  %7473 = call float @dx.op.unary.f32(i32 22, float %7468)  ; Frc(value)
  %7474 = call float @dx.op.unary.f32(i32 22, float %7467)  ; Frc(value)
  %7475 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %45, float %7473, float %7474, float %7471, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7476 = extractvalue %dx.types.ResRet.f32 %7475, 0
  %7477 = extractvalue %dx.types.ResRet.f32 %7475, 1
  %7478 = extractvalue %dx.types.ResRet.f32 %7475, 2
  %7479 = extractvalue %dx.types.ResRet.f32 %7475, 3
  %7480 = fcmp fast ogt float %7472, 0.000000e+00
  br i1 %7480, label %7481, label %7502, !dx.controlflow.hints !103

; <label>:7481                                    ; preds = %7464
  %7482 = fadd fast float %7471, 1.000000e+00
  %7483 = call float @dx.op.unary.f32(i32 22, float %7445)  ; Frc(value)
  %7484 = call float @dx.op.unary.f32(i32 22, float %7446)  ; Frc(value)
  %7485 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %45, float %7483, float %7484, float %7482, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7486 = extractvalue %dx.types.ResRet.f32 %7485, 0
  %7487 = extractvalue %dx.types.ResRet.f32 %7485, 1
  %7488 = extractvalue %dx.types.ResRet.f32 %7485, 2
  %7489 = extractvalue %dx.types.ResRet.f32 %7485, 3
  %7490 = fsub fast float %7486, %7476
  %7491 = fsub fast float %7487, %7477
  %7492 = fsub fast float %7488, %7478
  %7493 = fsub fast float %7489, %7479
  %7494 = fmul fast float %7490, %7472
  %7495 = fmul fast float %7491, %7472
  %7496 = fmul fast float %7492, %7472
  %7497 = fmul fast float %7493, %7472
  %7498 = fadd fast float %7494, %7476
  %7499 = fadd fast float %7495, %7477
  %7500 = fadd fast float %7496, %7478
  %7501 = fadd fast float %7497, %7479
  br label %7502

; <label>:7502                                    ; preds = %7481, %7464
  %7503 = phi float [ %7498, %7481 ], [ %7476, %7464 ]
  %7504 = phi float [ %7499, %7481 ], [ %7477, %7464 ]
  %7505 = phi float [ %7500, %7481 ], [ %7478, %7464 ]
  %7506 = phi float [ %7501, %7481 ], [ %7479, %7464 ]
  %7507 = fadd fast float %7503, -5.000000e-01
  %7508 = fadd fast float %7505, -5.000000e-01
  %7509 = fmul fast float %7507, 0xBFD5555560000000
  %7510 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %7508, float %7509)  ; FMad(a,b,c)
  %7511 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %7504, float 0.000000e+00)  ; FMad(a,b,c)
  %7512 = fadd fast float %7511, %7506
  %7513 = fmul fast float %7507, -7.500000e-01
  %7514 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %7508, float %7513)  ; FMad(a,b,c)
  %7515 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %7504, float 0.000000e+00)  ; FMad(a,b,c)
  %7516 = fadd fast float %7515, %7506
  %7517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %7518 = extractvalue %dx.types.CBufRet.f32 %7517, 0
  %7519 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %7520 = extractvalue %dx.types.CBufRet.f32 %7519, 0
  %7521 = extractvalue %dx.types.CBufRet.f32 %7519, 1
  %7522 = extractvalue %dx.types.CBufRet.f32 %7519, 2
  %7523 = extractvalue %dx.types.CBufRet.f32 %7519, 3
  %7524 = fsub fast float %7520, %7510
  %7525 = fsub fast float %7521, %7512
  %7526 = fsub fast float %7522, %7514
  %7527 = fsub fast float %7523, %7516
  %7528 = fmul fast float %7524, %7518
  %7529 = fmul fast float %7525, %7518
  %7530 = fmul fast float %7526, %7518
  %7531 = fmul fast float %7527, %7518
  %7532 = fadd fast float %7528, %7510
  %7533 = fadd fast float %7529, %7512
  %7534 = fadd fast float %7530, %7514
  %7535 = fadd fast float %7531, %7516
  %7536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %7537 = extractvalue %dx.types.ResRet.i32 %7536, 0
  %7538 = and i32 %7537, 536870911
  %7539 = uitofp i32 %7538 to float
  %7540 = fmul fast float %7539, %7386
  %7541 = fmul fast float %7539, %7390
  %7542 = fptoui float %7540 to i32
  %7543 = fptoui float %7541 to i32
  %7544 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %7545 = extractvalue %dx.types.ResRet.i32 %7544, 0
  %7546 = and i32 %7545, 31
  %7547 = lshr i32 %7542, %7546
  %7548 = lshr i32 %7543, %7546
  %7549 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %7550 = extractvalue %dx.types.ResRet.i32 %7549, 0
  %7551 = and i32 %7550, 31
  %7552 = shl i32 1, %7551
  %7553 = call i32 @dx.op.binary.i32(i32 40, i32 %7552, i32 4)  ; UMin(a,b)
  %7554 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %7555 = extractvalue %dx.types.ResRet.i32 %7554, 0
  %7556 = extractvalue %dx.types.ResRet.i32 %7554, 1
  %7557 = icmp eq i32 %7553, 0
  br i1 %7557, label %7599, label %7558

; <label>:7558                                    ; preds = %7502
  br label %7559

; <label>:7559                                    ; preds = %7587, %7558
  %7560 = phi i32 [ %7590, %7587 ], [ 0, %7558 ]
  %7561 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %7562 = extractvalue %dx.types.ResRet.i32 %7561, 0
  %7563 = lshr i32 %7562, 16
  %7564 = and i32 %7563, 31
  %7565 = shl i32 %7548, %7564
  %7566 = add i32 %7565, %7547
  %7567 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %7568 = extractvalue %dx.types.ResRet.i32 %7567, 0
  %7569 = and i32 %7568, 31
  %7570 = shl i32 %7566, %7569
  %7571 = add i32 %7570, %7560
  %7572 = shl i32 %7571, 2
  %7573 = add i32 %7572, 32
  %7574 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7573, i32 undef)  ; BufferLoad(srv,index,wot)
  %7575 = extractvalue %dx.types.ResRet.i32 %7574, 0
  %7576 = icmp slt i32 %7575, 0
  %7577 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 %7560
  %7578 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 %7560
  %7579 = bitcast float* %7577 to i32*
  %7580 = bitcast float* %7578 to i32*
  br i1 %7576, label %7581, label %7587

; <label>:7581                                    ; preds = %7559
  %7582 = and i32 %7575, 1073741823
  %7583 = add nuw nsw i32 %7582, 20
  %7584 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7583, i32 undef)  ; BufferLoad(srv,index,wot)
  %7585 = extractvalue %dx.types.ResRet.i32 %7584, 0
  %7586 = extractvalue %dx.types.ResRet.i32 %7584, 1
  br label %7587

; <label>:7587                                    ; preds = %7581, %7559
  %7588 = phi i32 [ %7585, %7581 ], [ %7555, %7559 ]
  %7589 = phi i32 [ %7586, %7581 ], [ %7556, %7559 ]
  store i32 %7588, i32* %7579, align 4
  store i32 %7589, i32* %7580, align 4
  %7590 = add nuw i32 %7560, 1
  %7591 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %7592 = extractvalue %dx.types.CBufRet.i32 %7591, 2
  %7593 = icmp eq i32 %7592, 0
  %7594 = icmp ugt i32 %7575, -1073741825
  %7595 = and i1 %7594, %7593
  %7596 = icmp ult i32 %7590, %7553
  %7597 = and i1 %7595, %7596
  br i1 %7597, label %7559, label %7598

; <label>:7598                                    ; preds = %7587
  br label %7599

; <label>:7599                                    ; preds = %7598, %7502
  %7600 = phi i32 [ 0, %7502 ], [ %7590, %7598 ]
  %7601 = extractvalue %dx.types.CBufRet.f32 %7364, 2
  %7602 = fptoui float %7601 to i32
  %7603 = icmp eq i32 %7602, 0
  br i1 %7603, label %7655, label %7604

; <label>:7604                                    ; preds = %7599
  br label %7605

; <label>:7605                                    ; preds = %7650, %7604
  %7606 = phi i32 [ %7651, %7650 ], [ %7600, %7604 ]
  %7607 = phi i32 [ %7652, %7650 ], [ 0, %7604 ]
  %7608 = lshr i32 %7607, 2
  %7609 = and i32 %7607, 3
  %7610 = add nuw nsw i32 %7608, 83
  %7611 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 %7610)  ; CBufferLoadLegacy(handle,regIndex)
  %7612 = extractvalue %dx.types.CBufRet.i32 %7611, 0
  %7613 = extractvalue %dx.types.CBufRet.i32 %7611, 1
  %7614 = extractvalue %dx.types.CBufRet.i32 %7611, 2
  %7615 = extractvalue %dx.types.CBufRet.i32 %7611, 3
  %7616 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 0
  store i32 %7612, i32* %7616, align 4
  %7617 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 1
  store i32 %7613, i32* %7617, align 4
  %7618 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 2
  store i32 %7614, i32* %7618, align 4
  %7619 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 3
  store i32 %7615, i32* %7619, align 4
  %7620 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 %7609
  %7621 = load i32, i32* %7620, align 4, !tbaa !94, !noalias !104
  %7622 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %7623 = extractvalue %dx.types.ResRet.i32 %7622, 0
  %7624 = lshr i32 %7623, 16
  %7625 = and i32 %7624, 31
  %7626 = shl i32 %7548, %7625
  %7627 = add i32 %7626, %7547
  %7628 = shl i32 %7627, 2
  %7629 = add i32 %7628, %7621
  %7630 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7629, i32 undef)  ; BufferLoad(srv,index,wot)
  %7631 = extractvalue %dx.types.ResRet.i32 %7630, 0
  %7632 = icmp eq i32 %7631, 0
  br i1 %7632, label %7650, label %7633

; <label>:7633                                    ; preds = %7605
  %7634 = icmp slt i32 %7631, 0
  %7635 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 %7606
  %7636 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 %7606
  %7637 = bitcast float* %7635 to i32*
  %7638 = bitcast float* %7636 to i32*
  br i1 %7634, label %7639, label %7646

; <label>:7639                                    ; preds = %7633
  %7640 = and i32 %7631, 1073741823
  %7641 = add i32 %7621, 20
  %7642 = add i32 %7641, %7640
  %7643 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7642, i32 undef)  ; BufferLoad(srv,index,wot)
  %7644 = extractvalue %dx.types.ResRet.i32 %7643, 0
  %7645 = extractvalue %dx.types.ResRet.i32 %7643, 1
  br label %7646

; <label>:7646                                    ; preds = %7639, %7633
  %7647 = phi i32 [ %7644, %7639 ], [ %7555, %7633 ]
  %7648 = phi i32 [ %7645, %7639 ], [ %7556, %7633 ]
  store i32 %7647, i32* %7637, align 4
  store i32 %7648, i32* %7638, align 4
  %7649 = add i32 %7606, 1
  br label %7650

; <label>:7650                                    ; preds = %7646, %7605
  %7651 = phi i32 [ %7606, %7605 ], [ %7649, %7646 ]
  %7652 = add nuw i32 %7607, 1
  %7653 = icmp eq i32 %7652, %7602
  br i1 %7653, label %7654, label %7605

; <label>:7654                                    ; preds = %7650
  br label %7655

; <label>:7655                                    ; preds = %7654, %7599
  %7656 = phi i32 [ %7600, %7599 ], [ %7651, %7654 ]
  %7657 = icmp eq i32 %7656, 1
  %7658 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 0
  %7659 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 0
  br i1 %7657, label %7660, label %7663

; <label>:7660                                    ; preds = %7655
  %7661 = load float, float* %7658, align 4
  %7662 = load float, float* %7659, align 4
  br label %7690

; <label>:7663                                    ; preds = %7655
  %7664 = load float, float* %7658, align 4
  %7665 = load float, float* %7659, align 4
  %7666 = fdiv fast float 1.000000e+00, %7665
  %7667 = fsub fast float %7664, %7666
  %7668 = icmp ugt i32 %7656, 1
  br i1 %7668, label %7669, label %7685

; <label>:7669                                    ; preds = %7663
  br label %7670

; <label>:7670                                    ; preds = %7670, %7669
  %7671 = phi float [ %7680, %7670 ], [ %7667, %7669 ]
  %7672 = phi float [ %7681, %7670 ], [ %7664, %7669 ]
  %7673 = phi i32 [ %7682, %7670 ], [ 1, %7669 ]
  %7674 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 %7673
  %7675 = load float, float* %7674, align 4
  %7676 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 %7673
  %7677 = load float, float* %7676, align 4
  %7678 = fdiv fast float 1.000000e+00, %7677
  %7679 = fsub fast float %7675, %7678
  %7680 = call float @dx.op.binary.f32(i32 36, float %7671, float %7679)  ; FMin(a,b)
  %7681 = call float @dx.op.binary.f32(i32 35, float %7672, float %7675)  ; FMax(a,b)
  %7682 = add nuw i32 %7673, 1
  %7683 = icmp eq i32 %7682, %7656
  br i1 %7683, label %7684, label %7670

; <label>:7684                                    ; preds = %7670
  br label %7685

; <label>:7685                                    ; preds = %7684, %7663
  %7686 = phi float [ %7667, %7663 ], [ %7680, %7684 ]
  %7687 = phi float [ %7664, %7663 ], [ %7681, %7684 ]
  %7688 = fsub fast float %7687, %7686
  %7689 = fdiv fast float 1.000000e+00, %7688
  br label %7690

; <label>:7690                                    ; preds = %7685, %7660
  %7691 = phi float [ %7661, %7660 ], [ %7687, %7685 ]
  %7692 = phi float [ %7662, %7660 ], [ %7689, %7685 ]
  %7693 = fadd fast float %7394, %7691
  %7694 = fmul fast float %7693, %7692
  %7695 = call float @dx.op.unary.f32(i32 7, float %7694)  ; Saturate(value)
  %7696 = fmul fast float %7695, 2.000000e+00
  %7697 = fsub fast float 1.000000e+00, %7696
  %7698 = fmul fast float %7532, %7532
  %7699 = fsub fast float %7533, %7698
  %7700 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %7699)  ; FMax(a,b)
  %7701 = fdiv fast float 1.000000e+00, %7700
  %7702 = fmul fast float %7533, %7532
  %7703 = fsub fast float %7534, %7702
  %7704 = fsub fast float %7697, %7532
  %7705 = fmul fast float %7697, %7697
  %7706 = fsub fast float %7705, %7533
  %7707 = fmul fast float %7701, %7703
  %7708 = fmul fast float %7707, %7704
  %7709 = fsub fast float %7706, %7708
  %7710 = fmul fast float %7533, %7533
  %7711 = fsub fast float %7535, %7710
  %7712 = fmul fast float %7703, %7703
  %7713 = fmul fast float %7712, %7701
  %7714 = fsub fast float %7711, %7713
  %7715 = fdiv fast float %7709, %7714
  %7716 = fmul fast float %7715, %7703
  %7717 = fsub fast float %7704, %7716
  %7718 = fmul fast float %7717, %7701
  %7719 = fmul fast float %7718, %7532
  %7720 = fsub fast float 1.000000e+00, %7719
  %7721 = fmul fast float %7715, %7533
  %7722 = fsub fast float %7720, %7721
  %7723 = fmul fast float %7718, %7718
  %7724 = fmul fast float %7715, 4.000000e+00
  %7725 = fmul fast float %7724, %7722
  %7726 = fsub fast float %7723, %7725
  %7727 = call float @dx.op.unary.f32(i32 24, float %7726)  ; Sqrt(value)
  %7728 = fcmp fast oge float %7718, 0.000000e+00
  %7729 = fsub fast float -0.000000e+00, %7727
  %7730 = select i1 %7728, float %7729, float %7727
  %7731 = fsub fast float %7730, %7718
  %7732 = fdiv fast float %7731, %7715
  %7733 = fdiv fast float %7722, %7731
  %7734 = fmul fast float %7732, 5.000000e-01
  %7735 = fmul fast float %7733, 2.000000e+00
  %7736 = select i1 %7728, float %7734, float %7735
  %7737 = select i1 %7728, float %7735, float %7734
  %7738 = call float @dx.op.binary.f32(i32 35, float %7736, float %7737)  ; FMax(a,b)
  %7739 = call float @dx.op.binary.f32(i32 36, float %7736, float %7737)  ; FMin(a,b)
  %7740 = fcmp fast ogt float %7697, %7738
  %7741 = fsub fast float %7697, %7739
  %7742 = fsub fast float %7697, %7738
  %7743 = fsub fast float %7738, %7739
  %7744 = select i1 %7740, float %7742, float %7743
  %7745 = fmul float %7741, %7744
  %7746 = select i1 %7740, float %7739, float %7697
  %7747 = fcmp fast ogt float %7697, %7739
  %7748 = fmul fast float %7746, %7738
  %7749 = fadd fast float %7746, %7738
  %7750 = fmul fast float %7749, %7532
  %7751 = fadd fast float %7748, %7533
  %7752 = fsub fast float %7751, %7750
  %7753 = fdiv fast float %7752, %7745
  %7754 = select i1 %7747, float %7753, float 0.000000e+00
  %7755 = fsub fast float 1.000000e+00, %7754
  %7756 = select i1 %7740, float %7755, float %7754
  %7757 = call float @dx.op.unary.f32(i32 7, float %7756)  ; Saturate(value)
  %7758 = extractvalue %dx.types.CBufRet.f32 %7517, 3
  %7759 = fmul fast float %7758, %7757
  %7760 = fsub fast float 1.000000e+00, %7759
  br label %7761

; <label>:7761                                    ; preds = %7690, %7402, %7367, %7363, %7329
  %7762 = phi float [ 1.000000e+00, %7329 ], [ %7760, %7690 ], [ 1.000000e+00, %7367 ], [ 1.000000e+00, %7402 ], [ 1.000000e+00, %7363 ]
  %7763 = fcmp fast ogt float %7359, 0.000000e+00
  br i1 %7763, label %7764, label %7926, !dx.controlflow.hints !113

; <label>:7764                                    ; preds = %7761
  %7765 = fadd fast float %7272, %7246
  %7766 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7767 = extractvalue %dx.types.CBufRet.f32 %7766, 2
  %7768 = extractvalue %dx.types.CBufRet.f32 %7766, 3
  %7769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7770 = extractvalue %dx.types.CBufRet.f32 %7769, 2
  %7771 = call float @dx.op.binary.f32(i32 35, float %7765, float 0.000000e+00)  ; FMax(a,b)
  %7772 = fadd fast float %7771, 0x3F10000000000000
  %7773 = fcmp fast oeq float %7770, 0.000000e+00
  br i1 %7773, label %7774, label %7841

; <label>:7774                                    ; preds = %7764
  %7775 = extractvalue %dx.types.CBufRet.f32 %7766, 1
  %7776 = extractvalue %dx.types.CBufRet.f32 %7766, 0
  %7777 = fmul fast float %7776, %7261
  %7778 = fmul fast float %7775, %7262
  %7779 = fadd fast float %7777, 5.000000e-01
  %7780 = call float @dx.op.unary.f32(i32 27, float %7779)  ; Round_ni(value)
  %7781 = fadd fast float %7778, 5.000000e-01
  %7782 = call float @dx.op.unary.f32(i32 27, float %7781)  ; Round_ni(value)
  %7783 = fsub fast float %7779, %7780
  %7784 = fsub fast float %7781, %7782
  %7785 = fadd fast float %7780, -5.000000e-01
  %7786 = fadd fast float %7782, -5.000000e-01
  %7787 = fmul fast float %7783, 2.000000e+00
  %7788 = fsub fast float 3.000000e+00, %7787
  %7789 = fadd fast float %7787, 1.000000e+00
  %7790 = fsub fast float 2.000000e+00, %7783
  %7791 = bitcast float %7788 to i32
  %7792 = sub nsw i32 2129859010, %7791
  %7793 = bitcast i32 %7792 to float
  %7794 = fmul fast float %7793, %7790
  %7795 = fadd fast float %7794, -1.000000e+00
  %7796 = bitcast float %7789 to i32
  %7797 = sub nsw i32 2129859010, %7796
  %7798 = bitcast i32 %7797 to float
  %7799 = fmul fast float %7798, %7783
  %7800 = fadd fast float %7799, 1.000000e+00
  %7801 = fmul fast float %7784, 2.000000e+00
  %7802 = fsub fast float 3.000000e+00, %7801
  %7803 = fadd fast float %7801, 1.000000e+00
  %7804 = fsub fast float 2.000000e+00, %7784
  %7805 = bitcast float %7802 to i32
  %7806 = sub nsw i32 2129859010, %7805
  %7807 = bitcast i32 %7806 to float
  %7808 = fmul fast float %7807, %7804
  %7809 = fadd fast float %7808, -1.000000e+00
  %7810 = bitcast float %7803 to i32
  %7811 = sub nsw i32 2129859010, %7810
  %7812 = bitcast i32 %7811 to float
  %7813 = fmul fast float %7812, %7784
  %7814 = fadd fast float %7813, 1.000000e+00
  %7815 = fadd fast float %7795, %7785
  %7816 = fmul fast float %7815, %7767
  %7817 = fadd fast float %7809, %7786
  %7818 = fmul fast float %7817, %7768
  %7819 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %48, float %7816, float %7818, float undef, float undef, i32 0, i32 0, i32 undef, float %7772)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7820 = extractvalue %dx.types.ResRet.f32 %7819, 0
  %7821 = fmul fast float %7820, %7788
  %7822 = fadd fast float %7800, %7785
  %7823 = fmul fast float %7822, %7767
  %7824 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %48, float %7823, float %7818, float undef, float undef, i32 0, i32 0, i32 undef, float %7772)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7825 = extractvalue %dx.types.ResRet.f32 %7824, 0
  %7826 = fmul fast float %7825, %7789
  %7827 = fadd fast float %7814, %7786
  %7828 = fmul fast float %7827, %7768
  %7829 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %48, float %7816, float %7828, float undef, float undef, i32 0, i32 0, i32 undef, float %7772)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7830 = extractvalue %dx.types.ResRet.f32 %7829, 0
  %7831 = fmul fast float %7830, %7788
  %7832 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %48, float %7823, float %7828, float undef, float undef, i32 0, i32 0, i32 undef, float %7772)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7833 = extractvalue %dx.types.ResRet.f32 %7832, 0
  %7834 = fmul fast float %7833, %7789
  %7835 = fadd fast float %7834, %7831
  %7836 = fmul fast float %7835, %7803
  %7837 = fadd fast float %7826, %7821
  %7838 = fmul fast float %7837, %7802
  %7839 = fadd fast float %7838, %7836
  %7840 = fmul fast float %7839, 6.250000e-02
  br label %7926

; <label>:7841                                    ; preds = %7764
  %7842 = fmul fast float %239, 0x401921FB60000000
  %7843 = call float @dx.op.unary.f32(i32 13, float %7842)  ; Sin(value)
  %7844 = call float @dx.op.unary.f32(i32 12, float %7842)  ; Cos(value)
  %7845 = fsub fast float -0.000000e+00, %7843
  br label %7846

; <label>:7846                                    ; preds = %7895, %7841
  %7847 = phi float [ 0.000000e+00, %7841 ], [ %7890, %7895 ]
  %7848 = phi float [ 0.000000e+00, %7841 ], [ %7892, %7895 ]
  %7849 = phi i32 [ 0, %7841 ], [ %7896, %7895 ]
  %7850 = mul i32 %7849, 2
  %7851 = add i32 0, %7850
  %7852 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7851
  %7853 = load float, float* %7852, align 4
  %7854 = mul i32 %7849, 2
  %7855 = add i32 1, %7854
  %7856 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7855
  %7857 = load float, float* %7856, align 4
  %7858 = fmul fast float %7853, %7844
  %7859 = call float @dx.op.tertiary.f32(i32 46, float %7857, float %7845, float %7858)  ; FMad(a,b,c)
  %7860 = fmul fast float %7853, %7843
  %7861 = call float @dx.op.tertiary.f32(i32 46, float %7857, float %7844, float %7860)  ; FMad(a,b,c)
  %7862 = fmul fast float %7859, %7770
  %7863 = fmul fast float %7861, %7770
  %7864 = fadd fast float %7862, %7261
  %7865 = fadd fast float %7863, %7262
  %7866 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %47, float %7864, float %7865, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7867 = extractvalue %dx.types.ResRet.f32 %7866, 0
  %7868 = extractvalue %dx.types.ResRet.f32 %7866, 1
  %7869 = extractvalue %dx.types.ResRet.f32 %7866, 2
  %7870 = extractvalue %dx.types.ResRet.f32 %7866, 3
  %7871 = getelementptr inbounds [4 x float], [4 x float]* %97, i32 0, i32 0
  store float %7867, float* %7871, align 4
  %7872 = getelementptr inbounds [4 x float], [4 x float]* %97, i32 0, i32 1
  store float %7868, float* %7872, align 4
  %7873 = getelementptr inbounds [4 x float], [4 x float]* %97, i32 0, i32 2
  store float %7869, float* %7873, align 4
  %7874 = getelementptr inbounds [4 x float], [4 x float]* %97, i32 0, i32 3
  store float %7870, float* %7874, align 4
  %7875 = fsub fast float %7867, %7772
  %7876 = fcmp fast olt float %7875, 0.000000e+00
  %7877 = select i1 %7876, float 0.000000e+00, float 1.000000e+00
  %7878 = fadd fast float %7877, %7847
  %7879 = fmul fast float %7877, %7875
  %7880 = fadd fast float %7879, %7848
  br label %7881

; <label>:7881                                    ; preds = %7881, %7846
  %7882 = phi i32 [ 1, %7846 ], [ %7893, %7881 ]
  %7883 = phi float [ %7880, %7846 ], [ %7892, %7881 ]
  %7884 = phi float [ %7878, %7846 ], [ %7890, %7881 ]
  %7885 = getelementptr [4 x float], [4 x float]* %97, i32 0, i32 %7882
  %7886 = load float, float* %7885, align 4, !tbaa !88, !noalias !104
  %7887 = fsub fast float %7886, %7772
  %7888 = fcmp fast olt float %7887, 0.000000e+00
  %7889 = select i1 %7888, float 0.000000e+00, float 1.000000e+00
  %7890 = fadd fast float %7889, %7884
  %7891 = fmul fast float %7889, %7887
  %7892 = fadd fast float %7891, %7883
  %7893 = add nuw nsw i32 %7882, 1
  %7894 = icmp eq i32 %7893, 4
  br i1 %7894, label %7895, label %7881, !llvm.loop !114

; <label>:7895                                    ; preds = %7881
  %7896 = add nuw nsw i32 %7849, 1
  %7897 = icmp eq i32 %7896, 8
  br i1 %7897, label %7898, label %7846, !llvm.loop !115

; <label>:7898                                    ; preds = %7895
  %7899 = fdiv fast float 1.000000e+00, %7890
  %7900 = fmul fast float %7899, %7892
  %7901 = fdiv fast float 1.000000e+00, %7772
  %7902 = fmul fast float %7900, %7901
  %7903 = call float @dx.op.unary.f32(i32 7, float %7902)  ; Saturate(value)
  %7904 = call float @dx.op.binary.f32(i32 35, float %7903, float 0.000000e+00)  ; FMax(a,b)
  %7905 = fmul fast float %7890, 3.125000e-02
  %7906 = call float @dx.op.unary.f32(i32 7, float %7905)  ; Saturate(value)
  %7907 = fmul fast float %7906, 2.000000e+00
  %7908 = fadd fast float %7907, -1.000000e+00
  %7909 = fcmp fast ogt float %7908, 0.000000e+00
  %7910 = fcmp fast olt float %7908, 0.000000e+00
  %7911 = zext i1 %7909 to i32
  %7912 = zext i1 %7910 to i32
  %7913 = sub nsw i32 %7911, %7912
  %7914 = sitofp i32 %7913 to float
  %7915 = fmul fast float %7914, %7908
  %7916 = fsub fast float 1.000000e+00, %7915
  %7917 = fmul fast float %7916, %7916
  %7918 = fmul fast float %7917, %7916
  %7919 = fsub fast float %7916, %7918
  %7920 = fmul fast float %7919, %7904
  %7921 = fsub fast float 1.000000e+00, %7918
  %7922 = fsub fast float %7921, %7920
  %7923 = fmul fast float %7914, 5.000000e-01
  %7924 = fmul fast float %7923, %7922
  %7925 = fsub fast float 5.000000e-01, %7924
  br label %7926

; <label>:7926                                    ; preds = %7898, %7774, %7761
  %7927 = phi float [ 1.000000e+00, %7761 ], [ %7840, %7774 ], [ %7925, %7898 ]
  %7928 = fcmp fast ogt float %7357, 0.000000e+00
  br i1 %7928, label %7929, label %8093, !dx.controlflow.hints !116

; <label>:7929                                    ; preds = %7926
  %7930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7931 = extractvalue %dx.types.CBufRet.f32 %7930, 1
  %7932 = fadd fast float %7931, %7246
  %7933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7934 = extractvalue %dx.types.CBufRet.f32 %7933, 2
  %7935 = extractvalue %dx.types.CBufRet.f32 %7933, 3
  %7936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7937 = extractvalue %dx.types.CBufRet.f32 %7936, 1
  %7938 = call float @dx.op.binary.f32(i32 35, float %7932, float 0.000000e+00)  ; FMax(a,b)
  %7939 = fadd fast float %7938, 0x3F10000000000000
  %7940 = fcmp fast oeq float %7937, 0.000000e+00
  br i1 %7940, label %7941, label %8008

; <label>:7941                                    ; preds = %7929
  %7942 = extractvalue %dx.types.CBufRet.f32 %7933, 1
  %7943 = extractvalue %dx.types.CBufRet.f32 %7933, 0
  %7944 = fmul fast float %7943, %7253
  %7945 = fmul fast float %7942, %7254
  %7946 = fadd fast float %7944, 5.000000e-01
  %7947 = call float @dx.op.unary.f32(i32 27, float %7946)  ; Round_ni(value)
  %7948 = fadd fast float %7945, 5.000000e-01
  %7949 = call float @dx.op.unary.f32(i32 27, float %7948)  ; Round_ni(value)
  %7950 = fsub fast float %7946, %7947
  %7951 = fsub fast float %7948, %7949
  %7952 = fadd fast float %7947, -5.000000e-01
  %7953 = fadd fast float %7949, -5.000000e-01
  %7954 = fmul fast float %7950, 2.000000e+00
  %7955 = fsub fast float 3.000000e+00, %7954
  %7956 = fadd fast float %7954, 1.000000e+00
  %7957 = fsub fast float 2.000000e+00, %7950
  %7958 = bitcast float %7955 to i32
  %7959 = sub nsw i32 2129859010, %7958
  %7960 = bitcast i32 %7959 to float
  %7961 = fmul fast float %7960, %7957
  %7962 = fadd fast float %7961, -1.000000e+00
  %7963 = bitcast float %7956 to i32
  %7964 = sub nsw i32 2129859010, %7963
  %7965 = bitcast i32 %7964 to float
  %7966 = fmul fast float %7965, %7950
  %7967 = fadd fast float %7966, 1.000000e+00
  %7968 = fmul fast float %7951, 2.000000e+00
  %7969 = fsub fast float 3.000000e+00, %7968
  %7970 = fadd fast float %7968, 1.000000e+00
  %7971 = fsub fast float 2.000000e+00, %7951
  %7972 = bitcast float %7969 to i32
  %7973 = sub nsw i32 2129859010, %7972
  %7974 = bitcast i32 %7973 to float
  %7975 = fmul fast float %7974, %7971
  %7976 = fadd fast float %7975, -1.000000e+00
  %7977 = bitcast float %7970 to i32
  %7978 = sub nsw i32 2129859010, %7977
  %7979 = bitcast i32 %7978 to float
  %7980 = fmul fast float %7979, %7951
  %7981 = fadd fast float %7980, 1.000000e+00
  %7982 = fadd fast float %7962, %7952
  %7983 = fmul fast float %7982, %7934
  %7984 = fadd fast float %7976, %7953
  %7985 = fmul fast float %7984, %7935
  %7986 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %48, float %7983, float %7985, float undef, float undef, i32 0, i32 0, i32 undef, float %7939)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7987 = extractvalue %dx.types.ResRet.f32 %7986, 0
  %7988 = fmul fast float %7987, %7955
  %7989 = fadd fast float %7967, %7952
  %7990 = fmul fast float %7989, %7934
  %7991 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %48, float %7990, float %7985, float undef, float undef, i32 0, i32 0, i32 undef, float %7939)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7992 = extractvalue %dx.types.ResRet.f32 %7991, 0
  %7993 = fmul fast float %7992, %7956
  %7994 = fadd fast float %7981, %7953
  %7995 = fmul fast float %7994, %7935
  %7996 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %48, float %7983, float %7995, float undef, float undef, i32 0, i32 0, i32 undef, float %7939)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7997 = extractvalue %dx.types.ResRet.f32 %7996, 0
  %7998 = fmul fast float %7997, %7955
  %7999 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %48, float %7990, float %7995, float undef, float undef, i32 0, i32 0, i32 undef, float %7939)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %8000 = extractvalue %dx.types.ResRet.f32 %7999, 0
  %8001 = fmul fast float %8000, %7956
  %8002 = fadd fast float %8001, %7998
  %8003 = fmul fast float %8002, %7970
  %8004 = fadd fast float %7993, %7988
  %8005 = fmul fast float %8004, %7969
  %8006 = fadd fast float %8005, %8003
  %8007 = fmul fast float %8006, 6.250000e-02
  br label %8093

; <label>:8008                                    ; preds = %7929
  %8009 = fmul fast float %239, 0x401921FB60000000
  %8010 = call float @dx.op.unary.f32(i32 13, float %8009)  ; Sin(value)
  %8011 = call float @dx.op.unary.f32(i32 12, float %8009)  ; Cos(value)
  %8012 = fsub fast float -0.000000e+00, %8010
  br label %8013

; <label>:8013                                    ; preds = %8062, %8008
  %8014 = phi float [ 0.000000e+00, %8008 ], [ %8057, %8062 ]
  %8015 = phi float [ 0.000000e+00, %8008 ], [ %8059, %8062 ]
  %8016 = phi i32 [ 0, %8008 ], [ %8063, %8062 ]
  %8017 = mul i32 %8016, 2
  %8018 = add i32 0, %8017
  %8019 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8018
  %8020 = load float, float* %8019, align 4
  %8021 = mul i32 %8016, 2
  %8022 = add i32 1, %8021
  %8023 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8022
  %8024 = load float, float* %8023, align 4
  %8025 = fmul fast float %8020, %8011
  %8026 = call float @dx.op.tertiary.f32(i32 46, float %8024, float %8012, float %8025)  ; FMad(a,b,c)
  %8027 = fmul fast float %8020, %8010
  %8028 = call float @dx.op.tertiary.f32(i32 46, float %8024, float %8011, float %8027)  ; FMad(a,b,c)
  %8029 = fmul fast float %8026, %7937
  %8030 = fmul fast float %8028, %7937
  %8031 = fadd fast float %8029, %7253
  %8032 = fadd fast float %8030, %7254
  %8033 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %47, float %8031, float %8032, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8034 = extractvalue %dx.types.ResRet.f32 %8033, 0
  %8035 = extractvalue %dx.types.ResRet.f32 %8033, 1
  %8036 = extractvalue %dx.types.ResRet.f32 %8033, 2
  %8037 = extractvalue %dx.types.ResRet.f32 %8033, 3
  %8038 = getelementptr inbounds [4 x float], [4 x float]* %96, i32 0, i32 0
  store float %8034, float* %8038, align 4
  %8039 = getelementptr inbounds [4 x float], [4 x float]* %96, i32 0, i32 1
  store float %8035, float* %8039, align 4
  %8040 = getelementptr inbounds [4 x float], [4 x float]* %96, i32 0, i32 2
  store float %8036, float* %8040, align 4
  %8041 = getelementptr inbounds [4 x float], [4 x float]* %96, i32 0, i32 3
  store float %8037, float* %8041, align 4
  %8042 = fsub fast float %8034, %7939
  %8043 = fcmp fast olt float %8042, 0.000000e+00
  %8044 = select i1 %8043, float 0.000000e+00, float 1.000000e+00
  %8045 = fadd fast float %8044, %8014
  %8046 = fmul fast float %8044, %8042
  %8047 = fadd fast float %8046, %8015
  br label %8048

; <label>:8048                                    ; preds = %8048, %8013
  %8049 = phi i32 [ 1, %8013 ], [ %8060, %8048 ]
  %8050 = phi float [ %8047, %8013 ], [ %8059, %8048 ]
  %8051 = phi float [ %8045, %8013 ], [ %8057, %8048 ]
  %8052 = getelementptr [4 x float], [4 x float]* %96, i32 0, i32 %8049
  %8053 = load float, float* %8052, align 4, !tbaa !88, !noalias !104
  %8054 = fsub fast float %8053, %7939
  %8055 = fcmp fast olt float %8054, 0.000000e+00
  %8056 = select i1 %8055, float 0.000000e+00, float 1.000000e+00
  %8057 = fadd fast float %8056, %8051
  %8058 = fmul fast float %8056, %8054
  %8059 = fadd fast float %8058, %8050
  %8060 = add nuw nsw i32 %8049, 1
  %8061 = icmp eq i32 %8060, 4
  br i1 %8061, label %8062, label %8048, !llvm.loop !114

; <label>:8062                                    ; preds = %8048
  %8063 = add nuw nsw i32 %8016, 1
  %8064 = icmp eq i32 %8063, 8
  br i1 %8064, label %8065, label %8013, !llvm.loop !115

; <label>:8065                                    ; preds = %8062
  %8066 = fdiv fast float 1.000000e+00, %8057
  %8067 = fmul fast float %8066, %8059
  %8068 = fdiv fast float 1.000000e+00, %7939
  %8069 = fmul fast float %8067, %8068
  %8070 = call float @dx.op.unary.f32(i32 7, float %8069)  ; Saturate(value)
  %8071 = call float @dx.op.binary.f32(i32 35, float %8070, float 0.000000e+00)  ; FMax(a,b)
  %8072 = fmul fast float %8057, 3.125000e-02
  %8073 = call float @dx.op.unary.f32(i32 7, float %8072)  ; Saturate(value)
  %8074 = fmul fast float %8073, 2.000000e+00
  %8075 = fadd fast float %8074, -1.000000e+00
  %8076 = fcmp fast ogt float %8075, 0.000000e+00
  %8077 = fcmp fast olt float %8075, 0.000000e+00
  %8078 = zext i1 %8076 to i32
  %8079 = zext i1 %8077 to i32
  %8080 = sub nsw i32 %8078, %8079
  %8081 = sitofp i32 %8080 to float
  %8082 = fmul fast float %8081, %8075
  %8083 = fsub fast float 1.000000e+00, %8082
  %8084 = fmul fast float %8083, %8083
  %8085 = fmul fast float %8084, %8083
  %8086 = fsub fast float %8083, %8085
  %8087 = fmul fast float %8086, %8071
  %8088 = fsub fast float 1.000000e+00, %8085
  %8089 = fsub fast float %8088, %8087
  %8090 = fmul fast float %8081, 5.000000e-01
  %8091 = fmul fast float %8090, %8089
  %8092 = fsub fast float 5.000000e-01, %8091
  br label %8093

; <label>:8093                                    ; preds = %8065, %7941, %7926
  %8094 = phi float [ 1.000000e+00, %7926 ], [ %8007, %7941 ], [ %8092, %8065 ]
  %8095 = fcmp fast ogt float %7356, 0.000000e+00
  br i1 %8095, label %8096, label %8260, !dx.controlflow.hints !117

; <label>:8096                                    ; preds = %8093
  %8097 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %8098 = extractvalue %dx.types.CBufRet.f32 %8097, 0
  %8099 = fadd fast float %8098, %7246
  %8100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %8101 = extractvalue %dx.types.CBufRet.f32 %8100, 2
  %8102 = extractvalue %dx.types.CBufRet.f32 %8100, 3
  %8103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %8104 = extractvalue %dx.types.CBufRet.f32 %8103, 0
  %8105 = call float @dx.op.binary.f32(i32 35, float %8099, float 0.000000e+00)  ; FMax(a,b)
  %8106 = fadd fast float %8105, 0x3F10000000000000
  %8107 = fcmp fast oeq float %8104, 0.000000e+00
  br i1 %8107, label %8108, label %8175

; <label>:8108                                    ; preds = %8096
  %8109 = extractvalue %dx.types.CBufRet.f32 %8100, 1
  %8110 = extractvalue %dx.types.CBufRet.f32 %8100, 0
  %8111 = fmul fast float %8110, %7238
  %8112 = fmul fast float %8109, %7242
  %8113 = fadd fast float %8111, 5.000000e-01
  %8114 = call float @dx.op.unary.f32(i32 27, float %8113)  ; Round_ni(value)
  %8115 = fadd fast float %8112, 5.000000e-01
  %8116 = call float @dx.op.unary.f32(i32 27, float %8115)  ; Round_ni(value)
  %8117 = fsub fast float %8113, %8114
  %8118 = fsub fast float %8115, %8116
  %8119 = fadd fast float %8114, -5.000000e-01
  %8120 = fadd fast float %8116, -5.000000e-01
  %8121 = fmul fast float %8117, 2.000000e+00
  %8122 = fsub fast float 3.000000e+00, %8121
  %8123 = fadd fast float %8121, 1.000000e+00
  %8124 = fsub fast float 2.000000e+00, %8117
  %8125 = bitcast float %8122 to i32
  %8126 = sub nsw i32 2129859010, %8125
  %8127 = bitcast i32 %8126 to float
  %8128 = fmul fast float %8127, %8124
  %8129 = fadd fast float %8128, -1.000000e+00
  %8130 = bitcast float %8123 to i32
  %8131 = sub nsw i32 2129859010, %8130
  %8132 = bitcast i32 %8131 to float
  %8133 = fmul fast float %8132, %8117
  %8134 = fadd fast float %8133, 1.000000e+00
  %8135 = fmul fast float %8118, 2.000000e+00
  %8136 = fsub fast float 3.000000e+00, %8135
  %8137 = fadd fast float %8135, 1.000000e+00
  %8138 = fsub fast float 2.000000e+00, %8118
  %8139 = bitcast float %8136 to i32
  %8140 = sub nsw i32 2129859010, %8139
  %8141 = bitcast i32 %8140 to float
  %8142 = fmul fast float %8141, %8138
  %8143 = fadd fast float %8142, -1.000000e+00
  %8144 = bitcast float %8137 to i32
  %8145 = sub nsw i32 2129859010, %8144
  %8146 = bitcast i32 %8145 to float
  %8147 = fmul fast float %8146, %8118
  %8148 = fadd fast float %8147, 1.000000e+00
  %8149 = fadd fast float %8129, %8119
  %8150 = fmul fast float %8149, %8101
  %8151 = fadd fast float %8143, %8120
  %8152 = fmul fast float %8151, %8102
  %8153 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %48, float %8150, float %8152, float undef, float undef, i32 0, i32 0, i32 undef, float %8106)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %8154 = extractvalue %dx.types.ResRet.f32 %8153, 0
  %8155 = fmul fast float %8154, %8122
  %8156 = fadd fast float %8134, %8119
  %8157 = fmul fast float %8156, %8101
  %8158 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %48, float %8157, float %8152, float undef, float undef, i32 0, i32 0, i32 undef, float %8106)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %8159 = extractvalue %dx.types.ResRet.f32 %8158, 0
  %8160 = fmul fast float %8159, %8123
  %8161 = fadd fast float %8148, %8120
  %8162 = fmul fast float %8161, %8102
  %8163 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %48, float %8150, float %8162, float undef, float undef, i32 0, i32 0, i32 undef, float %8106)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %8164 = extractvalue %dx.types.ResRet.f32 %8163, 0
  %8165 = fmul fast float %8164, %8122
  %8166 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %48, float %8157, float %8162, float undef, float undef, i32 0, i32 0, i32 undef, float %8106)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %8167 = extractvalue %dx.types.ResRet.f32 %8166, 0
  %8168 = fmul fast float %8167, %8123
  %8169 = fadd fast float %8168, %8165
  %8170 = fmul fast float %8169, %8137
  %8171 = fadd fast float %8160, %8155
  %8172 = fmul fast float %8171, %8136
  %8173 = fadd fast float %8172, %8170
  %8174 = fmul fast float %8173, 6.250000e-02
  br label %8260

; <label>:8175                                    ; preds = %8096
  %8176 = fmul fast float %239, 0x401921FB60000000
  %8177 = call float @dx.op.unary.f32(i32 13, float %8176)  ; Sin(value)
  %8178 = call float @dx.op.unary.f32(i32 12, float %8176)  ; Cos(value)
  %8179 = fsub fast float -0.000000e+00, %8177
  br label %8180

; <label>:8180                                    ; preds = %8229, %8175
  %8181 = phi float [ 0.000000e+00, %8175 ], [ %8224, %8229 ]
  %8182 = phi float [ 0.000000e+00, %8175 ], [ %8226, %8229 ]
  %8183 = phi i32 [ 0, %8175 ], [ %8230, %8229 ]
  %8184 = mul i32 %8183, 2
  %8185 = add i32 0, %8184
  %8186 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8185
  %8187 = load float, float* %8186, align 4
  %8188 = mul i32 %8183, 2
  %8189 = add i32 1, %8188
  %8190 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8189
  %8191 = load float, float* %8190, align 4
  %8192 = fmul fast float %8187, %8178
  %8193 = call float @dx.op.tertiary.f32(i32 46, float %8191, float %8179, float %8192)  ; FMad(a,b,c)
  %8194 = fmul fast float %8187, %8177
  %8195 = call float @dx.op.tertiary.f32(i32 46, float %8191, float %8178, float %8194)  ; FMad(a,b,c)
  %8196 = fmul fast float %8193, %8104
  %8197 = fmul fast float %8195, %8104
  %8198 = fadd fast float %8196, %7238
  %8199 = fadd fast float %8197, %7242
  %8200 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %47, float %8198, float %8199, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8201 = extractvalue %dx.types.ResRet.f32 %8200, 0
  %8202 = extractvalue %dx.types.ResRet.f32 %8200, 1
  %8203 = extractvalue %dx.types.ResRet.f32 %8200, 2
  %8204 = extractvalue %dx.types.ResRet.f32 %8200, 3
  %8205 = getelementptr inbounds [4 x float], [4 x float]* %95, i32 0, i32 0
  store float %8201, float* %8205, align 4
  %8206 = getelementptr inbounds [4 x float], [4 x float]* %95, i32 0, i32 1
  store float %8202, float* %8206, align 4
  %8207 = getelementptr inbounds [4 x float], [4 x float]* %95, i32 0, i32 2
  store float %8203, float* %8207, align 4
  %8208 = getelementptr inbounds [4 x float], [4 x float]* %95, i32 0, i32 3
  store float %8204, float* %8208, align 4
  %8209 = fsub fast float %8201, %8106
  %8210 = fcmp fast olt float %8209, 0.000000e+00
  %8211 = select i1 %8210, float 0.000000e+00, float 1.000000e+00
  %8212 = fadd fast float %8211, %8181
  %8213 = fmul fast float %8211, %8209
  %8214 = fadd fast float %8213, %8182
  br label %8215

; <label>:8215                                    ; preds = %8215, %8180
  %8216 = phi i32 [ 1, %8180 ], [ %8227, %8215 ]
  %8217 = phi float [ %8214, %8180 ], [ %8226, %8215 ]
  %8218 = phi float [ %8212, %8180 ], [ %8224, %8215 ]
  %8219 = getelementptr [4 x float], [4 x float]* %95, i32 0, i32 %8216
  %8220 = load float, float* %8219, align 4, !tbaa !88, !noalias !104
  %8221 = fsub fast float %8220, %8106
  %8222 = fcmp fast olt float %8221, 0.000000e+00
  %8223 = select i1 %8222, float 0.000000e+00, float 1.000000e+00
  %8224 = fadd fast float %8223, %8218
  %8225 = fmul fast float %8223, %8221
  %8226 = fadd fast float %8225, %8217
  %8227 = add nuw nsw i32 %8216, 1
  %8228 = icmp eq i32 %8227, 4
  br i1 %8228, label %8229, label %8215, !llvm.loop !114

; <label>:8229                                    ; preds = %8215
  %8230 = add nuw nsw i32 %8183, 1
  %8231 = icmp eq i32 %8230, 8
  br i1 %8231, label %8232, label %8180, !llvm.loop !115

; <label>:8232                                    ; preds = %8229
  %8233 = fdiv fast float 1.000000e+00, %8224
  %8234 = fmul fast float %8233, %8226
  %8235 = fdiv fast float 1.000000e+00, %8106
  %8236 = fmul fast float %8234, %8235
  %8237 = call float @dx.op.unary.f32(i32 7, float %8236)  ; Saturate(value)
  %8238 = call float @dx.op.binary.f32(i32 35, float %8237, float 0.000000e+00)  ; FMax(a,b)
  %8239 = fmul fast float %8224, 3.125000e-02
  %8240 = call float @dx.op.unary.f32(i32 7, float %8239)  ; Saturate(value)
  %8241 = fmul fast float %8240, 2.000000e+00
  %8242 = fadd fast float %8241, -1.000000e+00
  %8243 = fcmp fast ogt float %8242, 0.000000e+00
  %8244 = fcmp fast olt float %8242, 0.000000e+00
  %8245 = zext i1 %8243 to i32
  %8246 = zext i1 %8244 to i32
  %8247 = sub nsw i32 %8245, %8246
  %8248 = sitofp i32 %8247 to float
  %8249 = fmul fast float %8248, %8242
  %8250 = fsub fast float 1.000000e+00, %8249
  %8251 = fmul fast float %8250, %8250
  %8252 = fmul fast float %8251, %8250
  %8253 = fsub fast float %8250, %8252
  %8254 = fmul fast float %8253, %8238
  %8255 = fsub fast float 1.000000e+00, %8252
  %8256 = fsub fast float %8255, %8254
  %8257 = fmul fast float %8248, 5.000000e-01
  %8258 = fmul fast float %8257, %8256
  %8259 = fsub fast float 5.000000e-01, %8258
  br label %8260

; <label>:8260                                    ; preds = %8232, %8108, %8093
  %8261 = phi float [ 1.000000e+00, %8093 ], [ %8174, %8108 ], [ %8259, %8232 ]
  %8262 = fsub fast float %7927, %7762
  %8263 = fmul fast float %8262, %7300
  %8264 = fadd fast float %8263, %7762
  %8265 = fsub fast float %8094, %8264
  %8266 = fmul fast float %8265, %7330
  %8267 = fadd fast float %8266, %8264
  %8268 = fsub fast float %8261, %8267
  %8269 = fmul fast float %8268, %7356
  %8270 = fadd fast float %8269, %8267
  %8271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %8272 = extractvalue %dx.types.CBufRet.f32 %8271, 2
  %8273 = fcmp fast ogt float %8272, 0.000000e+00
  br i1 %8273, label %8274, label %8314, !dx.controlflow.hints !118

; <label>:8274                                    ; preds = %8260
  %8275 = fcmp fast ugt float %8272, 0.000000e+00
  br i1 %8275, label %8276, label %8311

; <label>:8276                                    ; preds = %8274
  %8277 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %8278 = extractvalue %dx.types.CBufRet.f32 %8277, 0
  %8279 = extractvalue %dx.types.CBufRet.f32 %8277, 1
  %8280 = extractvalue %dx.types.CBufRet.f32 %8277, 2
  %8281 = extractvalue %dx.types.CBufRet.f32 %8277, 3
  %8282 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %8283 = extractvalue %dx.types.CBufRet.f32 %8282, 0
  %8284 = extractvalue %dx.types.CBufRet.f32 %8282, 1
  %8285 = extractvalue %dx.types.CBufRet.f32 %8282, 2
  %8286 = extractvalue %dx.types.CBufRet.f32 %8282, 3
  %8287 = extractvalue %dx.types.CBufRet.f32 %8271, 0
  %8288 = extractvalue %dx.types.CBufRet.f32 %8271, 1
  %8289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %8290 = extractvalue %dx.types.CBufRet.f32 %8289, 0
  %8291 = extractvalue %dx.types.CBufRet.f32 %8289, 1
  %8292 = extractvalue %dx.types.CBufRet.f32 %8289, 2
  %8293 = fadd fast float %8290, %7215
  %8294 = fadd fast float %8291, %7216
  %8295 = fadd fast float %8292, %7217
  %8296 = fmul fast float %8293, %8278
  %8297 = call float @dx.op.tertiary.f32(i32 46, float %8279, float %8294, float %8296)  ; FMad(a,b,c)
  %8298 = call float @dx.op.tertiary.f32(i32 46, float %8280, float %8295, float %8297)  ; FMad(a,b,c)
  %8299 = fadd fast float %8298, %8281
  %8300 = fmul fast float %8293, %8283
  %8301 = call float @dx.op.tertiary.f32(i32 46, float %8284, float %8294, float %8300)  ; FMad(a,b,c)
  %8302 = call float @dx.op.tertiary.f32(i32 46, float %8285, float %8295, float %8301)  ; FMad(a,b,c)
  %8303 = fadd fast float %8302, %8286
  %8304 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %43, float %8299, float %8303, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %8305 = extractvalue %dx.types.ResRet.f32 %8304, 0
  %8306 = fmul fast float %8305, %8288
  %8307 = fadd fast float %8306, %8287
  %8308 = call float @dx.op.unary.f32(i32 7, float %8307)  ; Saturate(value)
  %8309 = fmul fast float %8308, %8272
  %8310 = fsub fast float 1.000000e+00, %8309
  br label %8311

; <label>:8311                                    ; preds = %8276, %8274
  %8312 = phi float [ %8310, %8276 ], [ 1.000000e+00, %8274 ]
  %8313 = fmul fast float %8312, %8270
  br label %8314

; <label>:8314                                    ; preds = %8311, %8260, %7195
  %8315 = phi float [ 1.000000e+00, %7195 ], [ %8313, %8311 ], [ %8270, %8260 ]
  %8316 = call float @dx.op.binary.f32(i32 36, float %8315, float %8315)  ; FMin(a,b)
  %8317 = call float @dx.op.binary.f32(i32 36, float %8315, float %8316)  ; FMin(a,b)
  %8318 = fcmp fast ogt float %8317, 0.000000e+00
  br i1 %8318, label %8319, label %8485, !dx.controlflow.hints !119

; <label>:8319                                    ; preds = %8314
  %8320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %8321 = extractvalue %dx.types.CBufRet.f32 %8320, 0
  %8322 = extractvalue %dx.types.CBufRet.f32 %8320, 1
  %8323 = extractvalue %dx.types.CBufRet.f32 %8320, 2
  %8324 = extractvalue %dx.types.CBufRet.f32 %8320, 3
  %8325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %8326 = extractvalue %dx.types.CBufRet.f32 %8325, 0
  %8327 = extractvalue %dx.types.CBufRet.f32 %8325, 1
  %8328 = extractvalue %dx.types.CBufRet.f32 %8325, 2
  %8329 = extractvalue %dx.types.CBufRet.f32 %8325, 3
  %8330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %8331 = extractvalue %dx.types.CBufRet.f32 %8330, 0
  %8332 = extractvalue %dx.types.CBufRet.f32 %8330, 1
  %8333 = extractvalue %dx.types.CBufRet.f32 %8330, 2
  %8334 = extractvalue %dx.types.CBufRet.f32 %8330, 3
  %8335 = fmul fast float %8321, %7215
  %8336 = call float @dx.op.tertiary.f32(i32 46, float %7216, float %8322, float %8335)  ; FMad(a,b,c)
  %8337 = call float @dx.op.tertiary.f32(i32 46, float %7217, float %8323, float %8336)  ; FMad(a,b,c)
  %8338 = fadd fast float %8337, %8324
  %8339 = fmul fast float %8326, %7215
  %8340 = call float @dx.op.tertiary.f32(i32 46, float %7216, float %8327, float %8339)  ; FMad(a,b,c)
  %8341 = call float @dx.op.tertiary.f32(i32 46, float %7217, float %8328, float %8340)  ; FMad(a,b,c)
  %8342 = fadd fast float %8341, %8329
  %8343 = fmul fast float %8331, %7215
  %8344 = call float @dx.op.tertiary.f32(i32 46, float %7216, float %8332, float %8343)  ; FMad(a,b,c)
  %8345 = call float @dx.op.tertiary.f32(i32 46, float %7217, float %8333, float %8344)  ; FMad(a,b,c)
  %8346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %8347 = extractvalue %dx.types.CBufRet.f32 %8346, 0
  %8348 = extractvalue %dx.types.CBufRet.f32 %8346, 1
  %8349 = extractvalue %dx.types.CBufRet.f32 %8346, 3
  %8350 = fmul fast float %8349, %8338
  %8351 = fmul fast float %8349, %8342
  %8352 = fadd fast float %8350, %8347
  %8353 = fadd fast float %8351, %8348
  %8354 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %8355 = extractvalue %dx.types.CBufRet.f32 %8354, 0
  %8356 = extractvalue %dx.types.CBufRet.f32 %8354, 1
  %8357 = fsub fast float %8352, %8355
  %8358 = fsub fast float %8353, %8356
  %8359 = fcmp fast olt float %8357, 0.000000e+00
  %8360 = fcmp fast olt float %8358, 0.000000e+00
  %8361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %8362 = extractvalue %dx.types.CBufRet.f32 %8361, 0
  %8363 = extractvalue %dx.types.CBufRet.f32 %8361, 1
  %8364 = extractvalue %dx.types.CBufRet.f32 %8361, 2
  %8365 = extractvalue %dx.types.CBufRet.f32 %8361, 3
  %8366 = select i1 %8359, float %8362, float %8364
  %8367 = select i1 %8360, float %8363, float %8365
  %8368 = fmul fast float %8366, %8357
  %8369 = fmul fast float %8367, %8358
  %8370 = call float @dx.op.unary.f32(i32 6, float %8368)  ; FAbs(value)
  %8371 = call float @dx.op.unary.f32(i32 6, float %8369)  ; FAbs(value)
  %8372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %8373 = extractvalue %dx.types.CBufRet.f32 %8372, 0
  %8374 = call float @dx.op.binary.f32(i32 35, float %8370, float %8371)  ; FMax(a,b)
  %8375 = fsub fast float %8373, %8374
  %8376 = call float @dx.op.unary.f32(i32 7, float %8375)  ; Saturate(value)
  %8377 = fcmp fast ogt float %8376, 0.000000e+00
  br i1 %8377, label %8378, label %8419, !dx.controlflow.hints !120

; <label>:8378                                    ; preds = %8319
  %8379 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %46, float %8352, float %8353, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8380 = extractvalue %dx.types.ResRet.f32 %8379, 1
  %8381 = fcmp fast ogt float %8380, 0.000000e+00
  br i1 %8381, label %8382, label %8414

; <label>:8382                                    ; preds = %8378
  %8383 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %46, float %8352, float %8353, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8384 = extractvalue %dx.types.ResRet.f32 %8383, 0
  %8385 = extractvalue %dx.types.ResRet.f32 %8383, 1
  %8386 = extractvalue %dx.types.ResRet.f32 %8383, 2
  %8387 = extractvalue %dx.types.ResRet.f32 %8383, 3
  %8388 = fsub fast float 1.000000e+00, %8334
  %8389 = fsub fast float %8388, %8345
  %8390 = fmul fast float %8389, 0x400921FB60000000
  %8391 = fadd fast float %8390, 0x3FF921FB60000000
  %8392 = call float @dx.op.unary.f32(i32 13, float %8391)  ; Sin(value)
  %8393 = fadd fast float %8392, -1.000000e+00
  %8394 = fmul fast float %8393, 0x3FD45F3060000000
  %8395 = fmul fast float %8389, 0x401921FB60000000
  %8396 = fadd fast float %8395, 0x400921FB60000000
  %8397 = call float @dx.op.unary.f32(i32 13, float %8396)  ; Sin(value)
  %8398 = fadd fast float %8397, 0x3E7777A5C0000000
  %8399 = fmul fast float %8398, 0x3FC45F3060000000
  %8400 = fmul fast float %8389, 0x4022D97C80000000
  %8401 = fadd fast float %8400, 0x4012D97C80000000
  %8402 = call float @dx.op.unary.f32(i32 13, float %8401)  ; Sin(value)
  %8403 = fadd fast float %8402, 1.000000e+00
  %8404 = fmul fast float %8403, 0x3FBB2995E0000000
  %8405 = fmul fast float %8389, 0x402921FB60000000
  %8406 = fadd fast float %8405, 0x401921FB60000000
  %8407 = call float @dx.op.unary.f32(i32 13, float %8406)  ; Sin(value)
  %8408 = fadd fast float %8407, 0xBE8777A5C0000000
  %8409 = fmul fast float %8408, 0x3FB45F3060000000
  %8410 = call float @dx.op.dot4.f32(i32 56, float %8384, float %8385, float %8386, float %8387, float %8394, float %8399, float %8404, float %8409)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %8411 = fmul fast float %8410, 0xBFF7154760000000
  %8412 = call float @dx.op.unary.f32(i32 21, float %8411)  ; Exp(value)
  %8413 = call float @dx.op.unary.f32(i32 7, float %8412)  ; Saturate(value)
  br label %8414

; <label>:8414                                    ; preds = %8382, %8378
  %8415 = phi float [ %8413, %8382 ], [ 1.000000e+00, %8378 ]
  %8416 = fadd fast float %8415, -1.000000e+00
  %8417 = fmul fast float %8416, %8376
  %8418 = fadd fast float %8417, 1.000000e+00
  br label %8419

; <label>:8419                                    ; preds = %8414, %8319
  %8420 = phi float [ %8418, %8414 ], [ 1.000000e+00, %8319 ]
  %8421 = fmul fast float %8420, %8315
  %8422 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %8423 = extractvalue %dx.types.CBufRet.f32 %8422, 0
  %8424 = extractvalue %dx.types.CBufRet.f32 %8422, 1
  %8425 = extractvalue %dx.types.CBufRet.f32 %8422, 2
  %8426 = fadd fast float %8423, %167
  %8427 = fadd fast float %8424, %168
  %8428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %8429 = extractvalue %dx.types.CBufRet.f32 %8428, 1
  %8430 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %8431 = extractvalue %dx.types.CBufRet.f32 %8430, 0
  %8432 = extractvalue %dx.types.CBufRet.f32 %8430, 1
  %8433 = extractvalue %dx.types.CBufRet.f32 %8430, 2
  %8434 = fsub fast float -0.000000e+00, %8426
  %8435 = fsub fast float -0.000000e+00, %8427
  %8436 = fsub fast float -0.000000e+00, %169
  %8437 = fsub fast float %8436, %8425
  %8438 = fadd fast float %8437, %8429
  %8439 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8434, float %8435, float %8438)  ; Dot3(ax,ay,az,bx,by,bz)
  %8440 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8431, float %8432, float %8433)  ; Dot3(ax,ay,az,bx,by,bz)
  %8441 = fdiv fast float 1.000000e+00, %8440
  %8442 = fmul fast float %8441, %8439
  %8443 = fmul fast float %8431, %8442
  %8444 = fmul fast float %8432, %8442
  %8445 = fadd fast float %8443, %8426
  %8446 = fadd fast float %8444, %8427
  %8447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %8448 = extractvalue %dx.types.CBufRet.f32 %8447, 0
  %8449 = extractvalue %dx.types.CBufRet.f32 %8447, 1
  %8450 = fsub fast float %8445, %8448
  %8451 = fsub fast float %8446, %8449
  %8452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %8453 = extractvalue %dx.types.CBufRet.f32 %8452, 2
  %8454 = extractvalue %dx.types.CBufRet.f32 %8452, 3
  %8455 = fmul fast float %8450, %8453
  %8456 = fmul fast float %8451, %8454
  %8457 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %8458 = extractvalue %dx.types.CBufRet.i32 %8457, 3
  %8459 = icmp eq i32 %8458, 0
  br i1 %8459, label %8465, label %8460

; <label>:8460                                    ; preds = %8419
  %8461 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %45, float %8455, float %8456, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8462 = extractvalue %dx.types.ResRet.f32 %8461, 0
  %8463 = extractvalue %dx.types.ResRet.f32 %8461, 1
  %8464 = extractvalue %dx.types.ResRet.f32 %8461, 2
  br label %8470

; <label>:8465                                    ; preds = %8419
  %8466 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %46, float %8455, float %8456, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8467 = extractvalue %dx.types.ResRet.f32 %8466, 0
  %8468 = extractvalue %dx.types.ResRet.f32 %8466, 1
  %8469 = extractvalue %dx.types.ResRet.f32 %8466, 2
  br label %8470

; <label>:8470                                    ; preds = %8465, %8460
  %8471 = phi float [ %8462, %8460 ], [ %8467, %8465 ]
  %8472 = phi float [ %8463, %8460 ], [ %8468, %8465 ]
  %8473 = phi float [ %8464, %8460 ], [ %8469, %8465 ]
  %8474 = extractvalue %dx.types.CBufRet.f32 %8428, 2
  %8475 = fmul fast float %8474, %8471
  %8476 = extractvalue %dx.types.CBufRet.f32 %8428, 0
  %8477 = fsub fast float %8442, %8476
  %8478 = fsub fast float %8477, %8475
  %8479 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8478)  ; FMax(a,b)
  %8480 = fmul fast float %8479, %8472
  %8481 = call float @dx.op.binary.f32(i32 36, float %8473, float %8480)  ; FMin(a,b)
  %8482 = fmul fast float %8481, 0xBFF7154760000000
  %8483 = call float @dx.op.unary.f32(i32 21, float %8482)  ; Exp(value)
  %8484 = fmul fast float %8421, %8483
  br label %8485

; <label>:8485                                    ; preds = %8470, %8314
  %8486 = phi float [ %8484, %8470 ], [ %8315, %8314 ]
  %8487 = call float @dx.op.binary.f32(i32 36, float %8486, float %8486)  ; FMin(a,b)
  %8488 = call float @dx.op.binary.f32(i32 36, float %8486, float %8487)  ; FMin(a,b)
  %8489 = fcmp fast ogt float %8488, 0.000000e+00
  br i1 %8489, label %8490, label %8661, !dx.controlflow.hints !121

; <label>:8490                                    ; preds = %8485
  %8491 = fmul fast float %8486, %7207
  %8492 = fmul fast float %8486, %7208
  %8493 = fmul fast float %8486, %7209
  %8494 = fsub fast float %7196, %6492
  %8495 = fsub fast float %7197, %6491
  %8496 = fsub fast float %7198, %6490
  %8497 = call float @dx.op.dot3.f32(i32 55, float %8494, float %8495, float %8496, float %8494, float %8495, float %8496)  ; Dot3(ax,ay,az,bx,by,bz)
  %8498 = call float @dx.op.unary.f32(i32 25, float %8497)  ; Rsqrt(value)
  %8499 = fmul fast float %8498, %8494
  %8500 = fmul fast float %8498, %8495
  %8501 = fmul fast float %8498, %8496
  %8502 = call float @dx.op.dot3.f32(i32 55, float %7196, float %7197, float %7198, float %6496, float %6497, float %6498)  ; Dot3(ax,ay,az,bx,by,bz)
  %8503 = call float @dx.op.dot3.f32(i32 55, float %6489, float %6488, float %6487, float %8499, float %8500, float %8501)  ; Dot3(ax,ay,az,bx,by,bz)
  %8504 = call float @dx.op.unary.f32(i32 7, float %8502)  ; Saturate(value)
  %8505 = fmul fast float %8504, %8504
  %8506 = fmul fast float %8505, %7191
  %8507 = call float @dx.op.unary.f32(i32 7, float %8506)  ; Saturate(value)
  %8508 = fmul fast float %8507, %8504
  %8509 = call float @dx.op.dot3.f32(i32 55, float %6496, float %6497, float %6498, float %8499, float %8500, float %8501)  ; Dot3(ax,ay,az,bx,by,bz)
  %8510 = fmul fast float %8509, %8509
  %8511 = call float @dx.op.unary.f32(i32 6, float %8502)  ; FAbs(value)
  %8512 = fsub fast float 1.000000e+00, %6524
  %8513 = fmul fast float %6506, %6506
  %8514 = fmul fast float %8513, %8512
  %8515 = fadd fast float %8514, %6524
  %8516 = bitcast float %8515 to i32
  %8517 = ashr i32 %8516, 1
  %8518 = add nsw i32 %8517, 532487669
  %8519 = bitcast i32 %8518 to float
  %8520 = fadd fast float %8519, %6506
  %8521 = fmul fast float %6524, %8510
  %8522 = fsub fast float 1.000000e+00, %8510
  %8523 = fadd fast float %8522, %8521
  %8524 = fmul fast float %8511, %8511
  %8525 = fmul fast float %8524, %8512
  %8526 = fadd fast float %8525, %6524
  %8527 = bitcast float %8526 to i32
  %8528 = ashr i32 %8527, 1
  %8529 = add nsw i32 %8528, 532487669
  %8530 = bitcast i32 %8529 to float
  %8531 = fadd fast float %8530, %8511
  %8532 = fmul fast float %8523, %8523
  %8533 = fmul fast float %8532, %8520
  %8534 = fmul fast float %8533, %8531
  %8535 = fdiv fast float 0x3FF0A00000000000, %8534
  %8536 = fmul fast float %8535, %6524
  %8537 = call float @dx.op.unary.f32(i32 6, float %8503)  ; FAbs(value)
  %8538 = fsub fast float 1.000000e+00, %8537
  %8539 = bitcast float %8538 to i32
  %8540 = sitofp i32 %8539 to float
  %8541 = fmul fast float %8540, 5.000000e+00
  %8542 = fadd fast float %8541, 0xC1EFBF8940000000
  %8543 = fptosi float %8542 to i32
  %8544 = bitcast i32 %8543 to float
  %8545 = fsub fast float 1.000000e+00, %6493
  %8546 = fsub fast float 1.000000e+00, %6494
  %8547 = fsub fast float 1.000000e+00, %6504
  %8548 = fmul fast float %8544, %8545
  %8549 = fmul fast float %8544, %8546
  %8550 = fmul fast float %8544, %8547
  %8551 = fadd fast float %8548, %6493
  %8552 = fadd fast float %8549, %6494
  %8553 = fadd fast float %8550, %6504
  br i1 %6642, label %8554, label %8577

; <label>:8554                                    ; preds = %8490
  %8555 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %46, float %4275, float %8537, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8556 = extractvalue %dx.types.ResRet.f32 %8555, 0
  %8557 = extractvalue %dx.types.ResRet.f32 %8555, 1
  %8558 = extractvalue %dx.types.ResRet.f32 %8555, 2
  %8559 = fadd fast float %8556, -5.000000e-01
  %8560 = fadd fast float %8557, -5.000000e-01
  %8561 = fadd fast float %8558, -5.000000e-01
  %8562 = fmul fast float %6493, 4.000000e+00
  %8563 = fmul fast float %8562, %8545
  %8564 = fmul fast float %8563, %8559
  %8565 = fmul fast float %6494, 4.000000e+00
  %8566 = fmul fast float %8565, %8546
  %8567 = fmul fast float %8566, %8560
  %8568 = fmul fast float %6504, 4.000000e+00
  %8569 = fmul fast float %8568, %8547
  %8570 = fmul fast float %8569, %8561
  %8571 = fadd fast float %8564, %8551
  %8572 = fadd fast float %8567, %8552
  %8573 = fadd fast float %8570, %8553
  %8574 = call float @dx.op.unary.f32(i32 7, float %8571)  ; Saturate(value)
  %8575 = call float @dx.op.unary.f32(i32 7, float %8572)  ; Saturate(value)
  %8576 = call float @dx.op.unary.f32(i32 7, float %8573)  ; Saturate(value)
  br label %8577

; <label>:8577                                    ; preds = %8554, %8490
  %8578 = phi float [ %8574, %8554 ], [ %8551, %8490 ]
  %8579 = phi float [ %8575, %8554 ], [ %8552, %8490 ]
  %8580 = phi float [ %8576, %8554 ], [ %8553, %8490 ]
  %8581 = fmul fast float %8502, 9.843750e-01
  %8582 = fadd fast float %8581, 7.812500e-03
  %8583 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %41, %dx.types.Handle %46, float %8582, float %6632, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8584 = extractvalue %dx.types.ResRet.f32 %8583, 2
  %8585 = extractvalue %dx.types.ResRet.f32 %8583, 3
  %8586 = fmul fast float %8584, %6493
  %8587 = fmul fast float %8584, %6494
  %8588 = fmul fast float %8584, %6504
  %8589 = fadd fast float %8586, %8585
  %8590 = fadd fast float %8587, %8585
  %8591 = fadd fast float %8588, %8585
  br i1 %6642, label %8592, label %8615

; <label>:8592                                    ; preds = %8577
  %8593 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %46, float %4275, float %8502, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8594 = extractvalue %dx.types.ResRet.f32 %8593, 0
  %8595 = extractvalue %dx.types.ResRet.f32 %8593, 1
  %8596 = extractvalue %dx.types.ResRet.f32 %8593, 2
  %8597 = fadd fast float %8594, -5.000000e-01
  %8598 = fadd fast float %8595, -5.000000e-01
  %8599 = fadd fast float %8596, -5.000000e-01
  %8600 = fmul fast float %6493, 4.000000e+00
  %8601 = fmul fast float %8600, %8545
  %8602 = fmul fast float %8601, %8597
  %8603 = fmul fast float %6494, 4.000000e+00
  %8604 = fmul fast float %8603, %8546
  %8605 = fmul fast float %8604, %8598
  %8606 = fmul fast float %6504, 4.000000e+00
  %8607 = fmul fast float %8606, %8547
  %8608 = fmul fast float %8607, %8599
  %8609 = fadd fast float %8602, %8589
  %8610 = fadd fast float %8605, %8590
  %8611 = fadd fast float %8608, %8591
  %8612 = call float @dx.op.unary.f32(i32 7, float %8609)  ; Saturate(value)
  %8613 = call float @dx.op.unary.f32(i32 7, float %8610)  ; Saturate(value)
  %8614 = call float @dx.op.unary.f32(i32 7, float %8611)  ; Saturate(value)
  br label %8615

; <label>:8615                                    ; preds = %8592, %8577
  %8616 = phi float [ %8612, %8592 ], [ %8589, %8577 ]
  %8617 = phi float [ %8613, %8592 ], [ %8590, %8577 ]
  %8618 = phi float [ %8614, %8592 ], [ %8591, %8577 ]
  %8619 = call float @dx.op.binary.f32(i32 35, float %8617, float %8618)  ; FMax(a,b)
  %8620 = call float @dx.op.binary.f32(i32 35, float %8616, float %8619)  ; FMax(a,b)
  %8621 = fsub fast float 1.000000e+00, %8620
  %8622 = fmul fast float %8578, %8536
  %8623 = fmul fast float %8579, %8536
  %8624 = fmul fast float %8580, %8536
  %8625 = fsub fast float 1.000000e+00, %8503
  %8626 = bitcast float %8625 to i32
  %8627 = sitofp i32 %8626 to float
  %8628 = fmul fast float %8627, 5.000000e+00
  %8629 = fadd fast float %8628, 0xC1EFBF8940000000
  %8630 = fptosi float %8629 to i32
  %8631 = bitcast i32 %8630 to float
  %8632 = fmul fast float %8631, %4276
  %8633 = fmul fast float %8621, %8632
  %8634 = fmul fast float %8633, %7156
  %8635 = fmul fast float %8633, %7157
  %8636 = fmul fast float %8633, %7158
  %8637 = fadd fast float %8634, %8622
  %8638 = fadd fast float %8635, %8623
  %8639 = fadd fast float %8636, %8624
  %8640 = fmul fast float %8508, %8491
  %8641 = fmul fast float %8640, %8621
  %8642 = fmul fast float %8508, %8492
  %8643 = fmul fast float %8642, %8621
  %8644 = fmul fast float %8508, %8493
  %8645 = fmul fast float %8644, %8621
  %8646 = fmul fast float %8640, %8637
  %8647 = fmul fast float %8642, %8638
  %8648 = fmul fast float %8644, %8639
  %8649 = fadd fast float %8641, %7140
  %8650 = fmul fast float %8649, %4272
  %8651 = fadd fast float %8643, %7141
  %8652 = fmul fast float %8651, %4272
  %8653 = fadd fast float %8645, %7142
  %8654 = fmul fast float %8653, %4272
  %8655 = fadd fast float %8646, %7183
  %8656 = fmul fast float %8655, %4272
  %8657 = fadd fast float %8647, %7186
  %8658 = fmul fast float %8657, %4272
  %8659 = fadd fast float %8648, %7189
  %8660 = fmul fast float %8659, %4272
  br label %8661

; <label>:8661                                    ; preds = %8615, %8485, %7136
  %8662 = phi float [ %7184, %7136 ], [ %7184, %8485 ], [ %8656, %8615 ]
  %8663 = phi float [ %7187, %7136 ], [ %7187, %8485 ], [ %8658, %8615 ]
  %8664 = phi float [ %7190, %7136 ], [ %7190, %8485 ], [ %8660, %8615 ]
  %8665 = phi float [ %7179, %7136 ], [ %7179, %8485 ], [ %8650, %8615 ]
  %8666 = phi float [ %7180, %7136 ], [ %7180, %8485 ], [ %8652, %8615 ]
  %8667 = phi float [ %7181, %7136 ], [ %7181, %8485 ], [ %8654, %8615 ]
  %8668 = fmul fast float %4272, %4272
  %8669 = fsub fast float 1.000000e+00, %8668
  %8670 = call float @dx.op.dot3.f32(i32 55, float %8669, float %8669, float %8669, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8671 = fsub fast float 1.000000e+00, %8670
  %8672 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8673 = extractvalue %dx.types.CBufRet.f32 %8672, 0
  %8674 = fmul fast float %8673, %7162
  %8675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8676 = extractvalue %dx.types.CBufRet.f32 %8675, 3
  %8677 = fsub fast float 1.000000e+00, %4279
  %8678 = call float @dx.op.unary.f32(i32 7, float %8677)  ; Saturate(value)
  %8679 = fadd fast float %8667, %4278
  %8680 = fmul fast float %8679, %4279
  %8681 = fmul fast float %8678, %8676
  %8682 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %8683 = extractvalue %dx.types.CBufRet.f32 %8682, 3
  %8684 = fmul fast float %8665, %6499
  %8685 = fmul fast float %8666, %6500
  %8686 = fmul fast float %8667, %6501
  %8687 = fcmp fast ogt float %92, %189
  %8688 = and i1 %8687, %4318
  %8689 = or i1 %4397, %8688
  %8690 = icmp eq i32 %4317, 2
  %8691 = fcmp fast ole float %92, %189
  %8692 = and i1 %8691, %8690
  %8693 = or i1 %8692, %8689
  br i1 %8688, label %8694, label %8951

; <label>:8694                                    ; preds = %8661
  %8695 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %8696 = extractvalue %dx.types.CBufRet.f32 %8695, 2
  %8697 = extractvalue %dx.types.CBufRet.f32 %8695, 3
  %8698 = fmul fast float %8696, %104
  %8699 = fmul fast float %8697, %105
  %8700 = call float @dx.op.unary.f32(i32 7, float %8698)  ; Saturate(value)
  %8701 = call float @dx.op.unary.f32(i32 7, float %8699)  ; Saturate(value)
  %8702 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %46, float %8700, float %8701, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8703 = extractvalue %dx.types.ResRet.f32 %8702, 0
  %8704 = extractvalue %dx.types.ResRet.f32 %8702, 1
  %8705 = extractvalue %dx.types.ResRet.f32 %8702, 2
  %8706 = extractvalue %dx.types.ResRet.f32 %8702, 3
  %8707 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %46, float %8700, float %8701, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8708 = extractvalue %dx.types.ResRet.f32 %8707, 0
  %8709 = extractvalue %dx.types.ResRet.f32 %8707, 1
  %8710 = extractvalue %dx.types.ResRet.f32 %8707, 2
  %8711 = extractvalue %dx.types.ResRet.f32 %8707, 3
  %8712 = call float @dx.op.binary.f32(i32 35, float %8704, float %8705)  ; FMax(a,b)
  %8713 = call float @dx.op.binary.f32(i32 35, float %8703, float %8712)  ; FMax(a,b)
  %8714 = call float @dx.op.binary.f32(i32 35, float %8713, float %8706)  ; FMax(a,b)
  %8715 = call float @dx.op.binary.f32(i32 36, float %8709, float %8710)  ; FMin(a,b)
  %8716 = call float @dx.op.binary.f32(i32 36, float %8708, float %8715)  ; FMin(a,b)
  %8717 = call float @dx.op.binary.f32(i32 36, float %8716, float %8711)  ; FMin(a,b)
  %8718 = fmul fast float %8714, 2.550000e+02
  %8719 = fadd fast float %8718, 0x3F70101020000000
  %8720 = fptoui float %8719 to i32
  %8721 = fmul fast float %8717, 2.550000e+02
  %8722 = fadd fast float %8721, 0x3F70101020000000
  %8723 = fptoui float %8722 to i32
  %8724 = icmp ult i32 %8720, %8723
  br i1 %8724, label %8725, label %8893

; <label>:8725                                    ; preds = %8694
  %8726 = fcmp fast ogt float %91, 9.843750e-01
  %8727 = fadd fast float %92, -4.000000e+00
  %8728 = select i1 %8726, float -4.000000e+00, float %8727
  %8729 = call float @dx.op.binary.f32(i32 35, float %8728, float 0.000000e+00)  ; FMax(a,b)
  %8730 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8731 = extractvalue %dx.types.CBufRet.f32 %8730, 0
  %8732 = fadd fast float %8731, %8729
  %8733 = extractvalue %dx.types.CBufRet.f32 %8730, 2
  %8734 = fmul fast float %8732, %8733
  %8735 = call float @dx.op.unary.f32(i32 23, float %8734)  ; Log(value)
  %8736 = extractvalue %dx.types.CBufRet.f32 %8730, 3
  %8737 = fmul fast float %8736, %8735
  %8738 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8739 = extractvalue %dx.types.CBufRet.f32 %8738, 2
  %8740 = fmul fast float %8737, %8739
  %8741 = call float @dx.op.unary.f32(i32 7, float %8740)  ; Saturate(value)
  %8742 = uitofp i32 %8720 to float
  %8743 = uitofp i32 %8723 to float
  %8744 = fadd fast float %8742, 5.000000e-01
  %8745 = fadd fast float %8743, 5.000000e-01
  %8746 = fmul fast float %8739, %8744
  %8747 = fmul fast float %8739, %8745
  %8748 = fadd fast float %8746, 0x3F0FFB4800000000
  %8749 = fadd fast float %8747, 0xBF0FFB4800000000
  %8750 = call float @dx.op.binary.f32(i32 35, float %8741, float %8748)  ; FMax(a,b)
  %8751 = call float @dx.op.binary.f32(i32 36, float %8750, float %8749)  ; FMin(a,b)
  %8752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8753 = extractvalue %dx.types.CBufRet.f32 %8752, 1
  %8754 = extractvalue %dx.types.CBufRet.f32 %8752, 2
  %8755 = extractvalue %dx.types.CBufRet.f32 %8752, 0
  %8756 = fmul fast float %8753, %8751
  %8757 = fadd fast float %8755, %8756
  %8758 = fadd fast float %8755, %8754
  %8759 = fsub fast float %8753, %8754
  %8760 = fadd fast float %8759, %8755
  %8761 = call float @dx.op.binary.f32(i32 35, float %8757, float %8758)  ; FMax(a,b)
  %8762 = call float @dx.op.binary.f32(i32 36, float %8761, float %8760)  ; FMin(a,b)
  %8763 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %44, float %8700, float %8701, float %8762, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8764 = extractvalue %dx.types.ResRet.f32 %8763, 0
  %8765 = extractvalue %dx.types.ResRet.f32 %8763, 1
  %8766 = extractvalue %dx.types.ResRet.f32 %8763, 2
  %8767 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8768 = extractvalue %dx.types.CBufRet.i32 %8767, 0
  %8769 = extractvalue %dx.types.CBufRet.i32 %8767, 1
  %8770 = uitofp i32 %8768 to float
  %8771 = uitofp i32 %8769 to float
  %8772 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8773 = extractvalue %dx.types.CBufRet.f32 %8772, 0
  %8774 = extractvalue %dx.types.CBufRet.f32 %8772, 1
  %8775 = fmul fast float %8770, %8700
  %8776 = fmul fast float %8771, %8701
  %8777 = fadd fast float %8775, -5.000000e-01
  %8778 = fadd fast float %8776, -5.000000e-01
  %8779 = call float @dx.op.unary.f32(i32 22, float %8777)  ; Frc(value)
  %8780 = call float @dx.op.unary.f32(i32 22, float %8778)  ; Frc(value)
  %8781 = fmul fast float %8779, %8779
  %8782 = fmul fast float %8781, %8779
  %8783 = fsub fast float 3.000000e+00, %8779
  %8784 = fmul fast float %8781, %8783
  %8785 = fmul fast float %8779, 3.000000e+00
  %8786 = fmul fast float %8782, 3.000000e+00
  %8787 = fmul fast float %8781, 6.000000e+00
  %8788 = fsub fast float %8786, %8787
  %8789 = fadd fast float %8788, 4.000000e+00
  %8790 = fmul fast float %8789, 0x3FC5555560000000
  %8791 = fmul fast float %8782, -3.000000e+00
  %8792 = fadd fast float %8781, %8779
  %8793 = fmul fast float %8792, 3.000000e+00
  %8794 = fadd fast float %8791, 1.000000e+00
  %8795 = fadd fast float %8794, %8793
  %8796 = fmul fast float %8782, 0x3FC5555560000000
  %8797 = fmul fast float %8780, %8780
  %8798 = fmul fast float %8797, %8780
  %8799 = fsub fast float 3.000000e+00, %8780
  %8800 = fmul fast float %8797, %8799
  %8801 = fmul fast float %8780, 3.000000e+00
  %8802 = fmul fast float %8798, 3.000000e+00
  %8803 = fmul fast float %8797, 6.000000e+00
  %8804 = fsub fast float %8802, %8803
  %8805 = fadd fast float %8804, 4.000000e+00
  %8806 = fmul fast float %8805, 0x3FC5555560000000
  %8807 = fmul fast float %8798, -3.000000e+00
  %8808 = fadd fast float %8797, %8780
  %8809 = fmul fast float %8808, 3.000000e+00
  %8810 = fadd fast float %8807, 1.000000e+00
  %8811 = fadd fast float %8810, %8809
  %8812 = fmul fast float %8798, 0x3FC5555560000000
  %8813 = fadd fast float %8779, 1.000000e+00
  %8814 = fsub fast float 1.000000e+00, %8785
  %8815 = fadd fast float %8814, %8784
  %8816 = fadd fast float %8815, %8789
  %8817 = fmul fast float %8816, 0x3FC5555560000000
  %8818 = fdiv fast float %8790, %8817
  %8819 = fsub fast float %8813, %8818
  %8820 = fsub fast float 1.000000e+00, %8779
  %8821 = fadd fast float %8795, %8782
  %8822 = fmul fast float %8821, 0x3FC5555560000000
  %8823 = fdiv fast float %8796, %8822
  %8824 = fadd fast float %8820, %8823
  %8825 = fadd fast float %8780, 1.000000e+00
  %8826 = fsub fast float 1.000000e+00, %8801
  %8827 = fadd fast float %8826, %8800
  %8828 = fadd fast float %8827, %8805
  %8829 = fmul fast float %8828, 0x3FC5555560000000
  %8830 = fdiv fast float %8806, %8829
  %8831 = fsub fast float %8825, %8830
  %8832 = fsub fast float 1.000000e+00, %8780
  %8833 = fadd fast float %8811, %8798
  %8834 = fmul fast float %8833, 0x3FC5555560000000
  %8835 = fdiv fast float %8812, %8834
  %8836 = fadd fast float %8835, %8832
  %8837 = fmul fast float %8819, %8773
  %8838 = fsub fast float %8700, %8837
  %8839 = fmul fast float %8824, %8773
  %8840 = fadd fast float %8839, %8700
  %8841 = fmul fast float %8836, %8774
  %8842 = fadd fast float %8841, %8701
  %8843 = fmul fast float %8831, %8774
  %8844 = fsub fast float %8701, %8843
  %8845 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %44, float %8838, float %8844, float %8762, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8846 = extractvalue %dx.types.ResRet.f32 %8845, 0
  %8847 = extractvalue %dx.types.ResRet.f32 %8845, 1
  %8848 = extractvalue %dx.types.ResRet.f32 %8845, 2
  %8849 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %44, float %8840, float %8844, float %8762, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8850 = extractvalue %dx.types.ResRet.f32 %8849, 0
  %8851 = extractvalue %dx.types.ResRet.f32 %8849, 1
  %8852 = extractvalue %dx.types.ResRet.f32 %8849, 2
  %8853 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %44, float %8838, float %8842, float %8762, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8854 = extractvalue %dx.types.ResRet.f32 %8853, 0
  %8855 = extractvalue %dx.types.ResRet.f32 %8853, 1
  %8856 = extractvalue %dx.types.ResRet.f32 %8853, 2
  %8857 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %44, float %8840, float %8842, float %8762, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8858 = extractvalue %dx.types.ResRet.f32 %8857, 0
  %8859 = extractvalue %dx.types.ResRet.f32 %8857, 1
  %8860 = extractvalue %dx.types.ResRet.f32 %8857, 2
  %8861 = fsub fast float %8854, %8846
  %8862 = fsub fast float %8855, %8847
  %8863 = fsub fast float %8856, %8848
  %8864 = fmul fast float %8861, %8834
  %8865 = fmul fast float %8862, %8834
  %8866 = fmul fast float %8863, %8834
  %8867 = fadd fast float %8864, %8846
  %8868 = fadd fast float %8865, %8847
  %8869 = fadd fast float %8866, %8848
  %8870 = fsub fast float %8858, %8850
  %8871 = fsub fast float %8859, %8851
  %8872 = fsub fast float %8860, %8852
  %8873 = fmul fast float %8870, %8834
  %8874 = fmul fast float %8871, %8834
  %8875 = fmul fast float %8872, %8834
  %8876 = fsub fast float %8850, %8867
  %8877 = fadd fast float %8876, %8873
  %8878 = fsub fast float %8851, %8868
  %8879 = fadd fast float %8878, %8874
  %8880 = fsub fast float %8852, %8869
  %8881 = fadd fast float %8880, %8875
  %8882 = fmul fast float %8877, %8822
  %8883 = fmul fast float %8879, %8822
  %8884 = fmul fast float %8881, %8822
  %8885 = fadd fast float %8882, %8867
  %8886 = fadd fast float %8883, %8868
  %8887 = fadd fast float %8884, %8869
  %8888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8889 = extractvalue %dx.types.CBufRet.f32 %8888, 1
  %8890 = fmul fast float %8885, %8889
  %8891 = fmul fast float %8886, %8889
  %8892 = fmul fast float %8887, %8889
  br label %8893

; <label>:8893                                    ; preds = %8725, %8694
  %8894 = phi float [ %8764, %8725 ], [ 1.000000e+00, %8694 ]
  %8895 = phi float [ %8765, %8725 ], [ 1.000000e+00, %8694 ]
  %8896 = phi float [ %8766, %8725 ], [ 1.000000e+00, %8694 ]
  %8897 = phi float [ %8890, %8725 ], [ 0.000000e+00, %8694 ]
  %8898 = phi float [ %8891, %8725 ], [ 0.000000e+00, %8694 ]
  %8899 = phi float [ %8892, %8725 ], [ 0.000000e+00, %8694 ]
  %8900 = fmul fast float %8897, %8671
  %8901 = fmul fast float %8898, %8671
  %8902 = fmul fast float %8899, %8671
  %8903 = call float @dx.op.dot3.f32(i32 55, float %8894, float %8895, float %8896, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8904 = call float @dx.op.dot3.f32(i32 55, float %8900, float %8901, float %8902, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8905 = select i1 %228, float %8903, float %8894
  %8906 = select i1 %228, float %8903, float %8895
  %8907 = select i1 %228, float 1.000000e+00, float %8896
  %8908 = select i1 %228, float %8904, float %8900
  %8909 = select i1 %228, float 0.000000e+00, float %8901
  %8910 = select i1 %228, float 0.000000e+00, float %8902
  %8911 = fmul fast float %8905, %8684
  %8912 = fmul fast float %8906, %8685
  %8913 = fmul fast float %8907, %8686
  %8914 = fadd fast float %8911, %8908
  %8915 = fadd fast float %8912, %8909
  %8916 = fadd fast float %8910, %8913
  %8917 = fmul fast float %8905, %8662
  %8918 = fmul fast float %8906, %8663
  %8919 = fmul fast float %8907, %8664
  %8920 = fmul fast float %137, %8696
  %8921 = fmul fast float %139, %8697
  %8922 = fsub fast float 1.000000e+00, %8920
  %8923 = fsub fast float 1.000000e+00, %8921
  %8924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8925 = extractvalue %dx.types.CBufRet.f32 %8924, 0
  %8926 = extractvalue %dx.types.CBufRet.f32 %8924, 1
  %8927 = extractvalue %dx.types.CBufRet.f32 %8924, 2
  %8928 = fmul fast float %8922, %8925
  %8929 = fmul fast float %8922, %8926
  %8930 = fmul fast float %8922, %8927
  %8931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8932 = extractvalue %dx.types.CBufRet.f32 %8931, 0
  %8933 = extractvalue %dx.types.CBufRet.f32 %8931, 1
  %8934 = extractvalue %dx.types.CBufRet.f32 %8931, 2
  %8935 = fmul fast float %8923, %8932
  %8936 = fmul fast float %8923, %8933
  %8937 = fmul fast float %8923, %8934
  %8938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8939 = extractvalue %dx.types.CBufRet.f32 %8938, 0
  %8940 = extractvalue %dx.types.CBufRet.f32 %8938, 1
  %8941 = extractvalue %dx.types.CBufRet.f32 %8938, 2
  %8942 = fadd fast float %8935, %8939
  %8943 = fadd fast float %8942, %8928
  %8944 = fadd fast float %8936, %8940
  %8945 = fadd fast float %8944, %8929
  %8946 = fadd fast float %8937, %8941
  %8947 = fadd fast float %8946, %8930
  %8948 = fmul fast float %8943, %189
  %8949 = fmul fast float %8945, %189
  %8950 = fmul fast float %8947, %189
  br label %8951

; <label>:8951                                    ; preds = %8893, %8661
  %8952 = phi float [ %8948, %8893 ], [ %167, %8661 ]
  %8953 = phi float [ %8949, %8893 ], [ %168, %8661 ]
  %8954 = phi float [ %8950, %8893 ], [ %169, %8661 ]
  %8955 = phi float [ %189, %8893 ], [ %92, %8661 ]
  %8956 = phi float [ %8914, %8893 ], [ %8684, %8661 ]
  %8957 = phi float [ %8915, %8893 ], [ %8685, %8661 ]
  %8958 = phi float [ %8916, %8893 ], [ %8686, %8661 ]
  %8959 = phi float [ %8917, %8893 ], [ %8662, %8661 ]
  %8960 = phi float [ %8918, %8893 ], [ %8663, %8661 ]
  %8961 = phi float [ %8919, %8893 ], [ %8664, %8661 ]
  %8962 = phi float [ %8894, %8893 ], [ 1.000000e+00, %8661 ]
  br i1 %8693, label %10117, label %8963

; <label>:8963                                    ; preds = %8951
  %8964 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8965 = extractvalue %dx.types.CBufRet.f32 %8964, 0
  %8966 = extractvalue %dx.types.CBufRet.f32 %8964, 1
  %8967 = extractvalue %dx.types.CBufRet.f32 %8964, 2
  %8968 = extractvalue %dx.types.CBufRet.f32 %8964, 3
  %8969 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8970 = extractvalue %dx.types.CBufRet.f32 %8969, 0
  %8971 = extractvalue %dx.types.CBufRet.f32 %8969, 1
  %8972 = extractvalue %dx.types.CBufRet.f32 %8969, 2
  %8973 = extractvalue %dx.types.CBufRet.f32 %8969, 3
  %8974 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8975 = extractvalue %dx.types.CBufRet.f32 %8974, 0
  %8976 = extractvalue %dx.types.CBufRet.f32 %8974, 1
  %8977 = extractvalue %dx.types.CBufRet.f32 %8974, 2
  %8978 = extractvalue %dx.types.CBufRet.f32 %8974, 3
  %8979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8980 = extractvalue %dx.types.CBufRet.f32 %8979, 0
  %8981 = extractvalue %dx.types.CBufRet.f32 %8979, 1
  %8982 = extractvalue %dx.types.CBufRet.f32 %8979, 2
  %8983 = extractvalue %dx.types.CBufRet.f32 %8979, 3
  %8984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8985 = extractvalue %dx.types.CBufRet.f32 %8984, 3
  %8986 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8987 = extractvalue %dx.types.CBufRet.f32 %8986, 3
  %8988 = extractvalue %dx.types.CBufRet.f32 %8986, 0
  %8989 = extractvalue %dx.types.CBufRet.f32 %8986, 1
  %8990 = extractvalue %dx.types.CBufRet.f32 %8986, 2
  %8991 = fcmp fast olt float %8990, -5.000000e-01
  %8992 = call float @dx.op.dot3.f32(i32 55, float %8952, float %8953, float %8954, float %8952, float %8953, float %8954)  ; Dot3(ax,ay,az,bx,by,bz)
  %8993 = call float @dx.op.unary.f32(i32 25, float %8992)  ; Rsqrt(value)
  %8994 = fmul fast float %8993, %8992
  %8995 = fmul fast float %8993, %8952
  %8996 = fmul fast float %8993, %8953
  %8997 = fmul fast float %8993, %8954
  %8998 = fadd fast float %8994, %8968
  %8999 = call float @dx.op.dot3.f32(i32 55, float %8995, float %8996, float %8997, float %8965, float %8966, float %8967)  ; Dot3(ax,ay,az,bx,by,bz)
  %9000 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %9001 = extractvalue %dx.types.CBufRet.i32 %9000, 1
  %9002 = and i32 %9001, 1
  %9003 = icmp ne i32 %9002, 0
  %9004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %9005 = extractvalue %dx.types.CBufRet.f32 %9004, 2
  %9006 = fcmp fast ogt float %9005, 0.000000e+00
  %9007 = and i1 %9003, %9006
  br i1 %9007, label %9008, label %9414, !dx.controlflow.hints !122

; <label>:9008                                    ; preds = %8963
  %9009 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %9010 = extractvalue %dx.types.CBufRet.f32 %9009, 3
  %9011 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %9012 = extractvalue %dx.types.CBufRet.f32 %9011, 2
  %9013 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9014 = extractvalue %dx.types.CBufRet.f32 %9013, 2
  %9015 = fsub fast float %9012, %9014
  %9016 = and i32 %9001, 2
  %9017 = extractvalue %dx.types.CBufRet.i32 %9000, 0
  %9018 = call i32 @dx.op.binary.i32(i32 40, i32 %9017, i32 3)  ; UMin(a,b)
  %9019 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %9020 = extractvalue %dx.types.CBufRet.f32 %9019, 0
  %9021 = extractvalue %dx.types.CBufRet.f32 %9019, 1
  %9022 = extractvalue %dx.types.CBufRet.f32 %9013, 0
  %9023 = extractvalue %dx.types.CBufRet.f32 %9013, 1
  %9024 = fsub fast float %9020, %9022
  %9025 = fsub fast float %9021, %9023
  %9026 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %9027 = extractvalue %dx.types.CBufRet.f32 %9026, 0
  %9028 = fcmp fast ogt float %9027, 0.000000e+00
  %9029 = fsub fast float -0.000000e+00, %9024
  %9030 = fsub fast float -0.000000e+00, %9025
  %9031 = call float @dx.op.dot2.f32(i32 54, float %8995, float %8996, float %8995, float %8996)  ; Dot2(ax,ay,bx,by)
  %9032 = call float @dx.op.dot2.f32(i32 54, float %8995, float %8996, float %9029, float %9030)  ; Dot2(ax,ay,bx,by)
  %9033 = fmul fast float %9032, 2.000000e+00
  %9034 = call float @dx.op.dot2.f32(i32 54, float %9029, float %9030, float %9029, float %9030)  ; Dot2(ax,ay,bx,by)
  %9035 = fmul fast float %9027, %9027
  %9036 = fsub fast float %9034, %9035
  %9037 = fmul fast float %9033, %9033
  %9038 = fmul fast float %9031, 4.000000e+00
  %9039 = fmul fast float %9038, %9036
  %9040 = fsub fast float %9037, %9039
  %9041 = fcmp fast ogt float %9040, 0.000000e+00
  br i1 %9041, label %9042, label %9057

; <label>:9042                                    ; preds = %9008
  %9043 = fcmp fast ogt float %9033, 0.000000e+00
  %9044 = call float @dx.op.unary.f32(i32 24, float %9040)  ; Sqrt(value)
  %9045 = fsub fast float -0.000000e+00, %9044
  %9046 = select i1 %9043, float %9044, float %9045
  %9047 = fadd fast float %9046, %9033
  %9048 = fmul float %9047, -5.000000e-01
  %9049 = fdiv fast float %9048, %9031
  %9050 = call float @dx.op.binary.f32(i32 35, float %9049, float 0.000000e+00)  ; FMax(a,b)
  %9051 = call float @dx.op.binary.f32(i32 36, float %8994, float %9050)  ; FMin(a,b)
  %9052 = fdiv fast float %9036, %9048
  %9053 = call float @dx.op.binary.f32(i32 35, float %9052, float 0.000000e+00)  ; FMax(a,b)
  %9054 = call float @dx.op.binary.f32(i32 36, float %8994, float %9053)  ; FMin(a,b)
  %9055 = call float @dx.op.binary.f32(i32 36, float %9051, float %9054)  ; FMin(a,b)
  %9056 = call float @dx.op.binary.f32(i32 35, float %9051, float %9054)  ; FMax(a,b)
  br label %9057

; <label>:9057                                    ; preds = %9042, %9008
  %9058 = phi float [ %9056, %9042 ], [ -1.000000e+00, %9008 ]
  %9059 = phi float [ %9055, %9042 ], [ -1.000000e+00, %9008 ]
  %9060 = phi i1 [ true, %9042 ], [ false, %9008 ]
  %9061 = and i1 %9028, %9060
  br i1 %9061, label %9062, label %9064

; <label>:9062                                    ; preds = %9057
  %9063 = fcmp fast oeq float %9059, %9058
  br i1 %9063, label %9367, label %9065

; <label>:9064                                    ; preds = %9057
  br i1 %9028, label %9367, label %9065

; <label>:9065                                    ; preds = %9064, %9062
  %9066 = phi float [ %8994, %9064 ], [ %9058, %9062 ]
  %9067 = phi float [ 0.000000e+00, %9064 ], [ %9059, %9062 ]
  %9068 = icmp ne i32 %9016, 0
  %9069 = fmul fast float %9066, %8997
  %9070 = fadd fast float %9069, %9010
  %9071 = fmul fast float %9070, %9066
  %9072 = select i1 %9068, float 0.000000e+00, float %9071
  %9073 = fcmp fast oeq float %8997, 0.000000e+00
  %9074 = fdiv fast float %9015, %8997
  %9075 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9074)  ; FMax(a,b)
  %9076 = select i1 %9073, float %9066, float %9075
  %9077 = call float @dx.op.binary.f32(i32 36, float %9066, float %9076)  ; FMin(a,b)
  %9078 = fcmp fast ogt float %8997, 0.000000e+00
  %9079 = fcmp fast olt float %9015, 0.000000e+00
  br i1 %9078, label %9080, label %9137

; <label>:9080                                    ; preds = %9065
  %9081 = icmp eq i32 %9016, 0
  br i1 %9079, label %9082, label %9126

; <label>:9082                                    ; preds = %9080
  %9083 = select i1 %9081, float %9066, float 0.000000e+00
  %9084 = fsub fast float -0.000000e+00, %9083
  %9085 = call float @dx.op.unary.f32(i32 6, float %9084)  ; FAbs(value)
  %9086 = fmul fast float %9083, %8997
  %9087 = fadd fast float %9086, %9010
  %9088 = fmul fast float %9085, %9087
  %9089 = fsub fast float %9072, %9088
  %9090 = fsub fast float %9066, %9085
  %9091 = select i1 %9081, float %9090, float 0.000000e+00
  %9092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9093 = extractvalue %dx.types.CBufRet.f32 %9092, 0
  %9094 = extractvalue %dx.types.CBufRet.f32 %9092, 1
  %9095 = extractvalue %dx.types.CBufRet.f32 %9092, 2
  %9096 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9097 = extractvalue %dx.types.CBufRet.f32 %9096, 0
  %9098 = extractvalue %dx.types.CBufRet.f32 %9096, 1
  %9099 = extractvalue %dx.types.CBufRet.f32 %9096, 2
  %9100 = extractvalue %dx.types.CBufRet.f32 %9096, 3
  %9101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9102 = extractvalue %dx.types.CBufRet.f32 %9101, 3
  %9103 = call float @dx.op.binary.f32(i32 36, float %9089, float %9102)  ; FMin(a,b)
  %9104 = fmul fast float %9100, %9091
  %9105 = call float @dx.op.unary.f32(i32 7, float %9104)  ; Saturate(value)
  %9106 = fsub fast float %9097, %9093
  %9107 = fsub fast float %9098, %9094
  %9108 = fsub fast float %9099, %9095
  %9109 = fmul fast float %9105, %9106
  %9110 = fmul fast float %9105, %9107
  %9111 = fmul fast float %9105, %9108
  %9112 = fadd fast float %9109, %9093
  %9113 = fadd fast float %9110, %9094
  %9114 = fadd fast float %9111, %9095
  %9115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9116 = extractvalue %dx.types.CBufRet.f32 %9115, 0
  %9117 = extractvalue %dx.types.CBufRet.f32 %9115, 1
  %9118 = fadd fast float %9117, %9116
  %9119 = call float @dx.op.unary.f32(i32 7, float %9118)  ; Saturate(value)
  %9120 = extractvalue %dx.types.CBufRet.f32 %9115, 2
  %9121 = extractvalue %dx.types.CBufRet.f32 %9115, 3
  %9122 = fadd fast float %9121, %9120
  %9123 = call float @dx.op.unary.f32(i32 7, float %9122)  ; Saturate(value)
  %9124 = fmul fast float %9119, %9103
  %9125 = fmul fast float %9124, %9123
  br label %9367

; <label>:9126                                    ; preds = %9080
  br i1 %9081, label %9127, label %9148

; <label>:9127                                    ; preds = %9126
  %9128 = call float @dx.op.binary.f32(i32 36, float %9077, float %9067)  ; FMin(a,b)
  %9129 = fsub fast float %9077, %9128
  %9130 = fsub fast float %9129, %9066
  %9131 = call float @dx.op.unary.f32(i32 6, float %9130)  ; FAbs(value)
  %9132 = fadd fast float %9129, %9066
  %9133 = fmul fast float %9132, %8997
  %9134 = fadd fast float %9133, %9010
  %9135 = fmul fast float %9134, %9131
  %9136 = fsub fast float %9072, %9135
  br label %9148

; <label>:9137                                    ; preds = %9065
  br i1 %9079, label %9138, label %9148

; <label>:9138                                    ; preds = %9137
  %9139 = call float @dx.op.binary.f32(i32 35, float %9067, float %9077)  ; FMax(a,b)
  %9140 = icmp eq i32 %9016, 0
  %9141 = select i1 %9140, float %9077, float 0.000000e+00
  %9142 = fsub fast float -0.000000e+00, %9141
  %9143 = call float @dx.op.unary.f32(i32 6, float %9142)  ; FAbs(value)
  %9144 = fmul fast float %9141, %8997
  %9145 = fadd fast float %9144, %9010
  %9146 = fmul fast float %9143, %9145
  %9147 = fsub fast float %9072, %9146
  br label %9148

; <label>:9148                                    ; preds = %9138, %9137, %9127, %9126
  %9149 = phi float [ %9067, %9126 ], [ %9067, %9127 ], [ %9139, %9138 ], [ %9067, %9137 ]
  %9150 = phi float [ 0.000000e+00, %9126 ], [ %9131, %9127 ], [ %9143, %9138 ], [ 0.000000e+00, %9137 ]
  %9151 = phi float [ %9072, %9126 ], [ %9136, %9127 ], [ %9147, %9138 ], [ %9072, %9137 ]
  %9152 = phi float [ %9077, %9126 ], [ %9077, %9127 ], [ %9066, %9138 ], [ %9066, %9137 ]
  %9153 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 0
  store float -1.000000e+00, float* %9153, align 4, !tbaa !88, !noalias !123
  %9154 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 1
  store float -1.000000e+00, float* %9154, align 4, !tbaa !88, !noalias !123
  %9155 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 2
  store float -1.000000e+00, float* %9155, align 4, !tbaa !88, !noalias !123
  %9156 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 0
  store float -1.000000e+00, float* %9156, align 4, !tbaa !88, !noalias !123
  %9157 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 1
  store float -1.000000e+00, float* %9157, align 4, !tbaa !88, !noalias !123
  %9158 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 2
  store float -1.000000e+00, float* %9158, align 4, !tbaa !88, !noalias !123
  %9159 = icmp sgt i32 %9018, 0
  br i1 %9159, label %9160, label %9221

; <label>:9160                                    ; preds = %9148
  br label %9161

; <label>:9161                                    ; preds = %9210, %9160
  %9162 = phi i32 [ %9211, %9210 ], [ 0, %9160 ]
  %9163 = phi i32 [ %9212, %9210 ], [ 0, %9160 ]
  %9164 = add nuw i32 %9163, 171
  %9165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 %9164)  ; CBufferLoadLegacy(handle,regIndex)
  %9166 = extractvalue %dx.types.CBufRet.f32 %9165, 0
  %9167 = extractvalue %dx.types.CBufRet.f32 %9165, 1
  %9168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9169 = extractvalue %dx.types.CBufRet.f32 %9168, 0
  %9170 = extractvalue %dx.types.CBufRet.f32 %9168, 1
  %9171 = fsub fast float %9166, %9169
  %9172 = fsub fast float %9167, %9170
  %9173 = extractvalue %dx.types.CBufRet.f32 %9165, 2
  %9174 = fsub fast float -0.000000e+00, %9171
  %9175 = fsub fast float -0.000000e+00, %9172
  %9176 = call float @dx.op.dot2.f32(i32 54, float %8995, float %8996, float %9174, float %9175)  ; Dot2(ax,ay,bx,by)
  %9177 = fmul fast float %9176, 2.000000e+00
  %9178 = call float @dx.op.dot2.f32(i32 54, float %9174, float %9175, float %9174, float %9175)  ; Dot2(ax,ay,bx,by)
  %9179 = fmul fast float %9173, %9173
  %9180 = fsub fast float %9178, %9179
  %9181 = fmul fast float %9177, %9177
  %9182 = fmul fast float %9038, %9180
  %9183 = fsub fast float %9181, %9182
  %9184 = fcmp fast ogt float %9183, 0.000000e+00
  br i1 %9184, label %9185, label %9200

; <label>:9185                                    ; preds = %9161
  %9186 = fcmp fast ogt float %9177, 0.000000e+00
  %9187 = call float @dx.op.unary.f32(i32 24, float %9183)  ; Sqrt(value)
  %9188 = fsub fast float -0.000000e+00, %9187
  %9189 = select i1 %9186, float %9187, float %9188
  %9190 = fadd fast float %9189, %9177
  %9191 = fmul float %9190, -5.000000e-01
  %9192 = fdiv fast float %9191, %9031
  %9193 = call float @dx.op.binary.f32(i32 35, float %9192, float 0.000000e+00)  ; FMax(a,b)
  %9194 = call float @dx.op.binary.f32(i32 36, float %9066, float %9193)  ; FMin(a,b)
  %9195 = fdiv fast float %9180, %9191
  %9196 = call float @dx.op.binary.f32(i32 35, float %9195, float 0.000000e+00)  ; FMax(a,b)
  %9197 = call float @dx.op.binary.f32(i32 36, float %9066, float %9196)  ; FMin(a,b)
  %9198 = call float @dx.op.binary.f32(i32 36, float %9194, float %9197)  ; FMin(a,b)
  %9199 = call float @dx.op.binary.f32(i32 35, float %9194, float %9197)  ; FMax(a,b)
  br label %9200

; <label>:9200                                    ; preds = %9185, %9161
  %9201 = phi float [ %9199, %9185 ], [ -1.000000e+00, %9161 ]
  %9202 = phi float [ %9198, %9185 ], [ -1.000000e+00, %9161 ]
  %9203 = phi i1 [ true, %9185 ], [ false, %9161 ]
  br i1 %9203, label %9204, label %9210

; <label>:9204                                    ; preds = %9200
  %9205 = call float @dx.op.binary.f32(i32 35, float %9149, float %9202)  ; FMax(a,b)
  %9206 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 %9163
  store float %9205, float* %9206, align 4, !tbaa !88, !noalias !123
  %9207 = call float @dx.op.binary.f32(i32 35, float %9149, float %9201)  ; FMax(a,b)
  %9208 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 %9163
  store float %9207, float* %9208, align 4, !tbaa !88, !noalias !123
  %9209 = add nsw i32 %9162, 1
  br label %9210

; <label>:9210                                    ; preds = %9204, %9200
  %9211 = phi i32 [ %9209, %9204 ], [ %9162, %9200 ]
  %9212 = add nuw nsw i32 %9163, 1
  %9213 = icmp eq i32 %9212, %9018
  br i1 %9213, label %9214, label %9161

; <label>:9214                                    ; preds = %9210
  %9215 = load float, float* %9155, align 4, !tbaa !88, !alias.scope !139, !noalias !142
  %9216 = load float, float* %9154, align 4, !tbaa !88, !alias.scope !145, !noalias !146
  %9217 = load float, float* %9153, align 4, !tbaa !88, !alias.scope !147, !noalias !148
  %9218 = load float, float* %9158, align 4, !tbaa !88, !alias.scope !149, !noalias !152
  %9219 = load float, float* %9157, align 4, !tbaa !88, !alias.scope !155, !noalias !156
  %9220 = load float, float* %9156, align 4, !tbaa !88, !alias.scope !157, !noalias !158
  br label %9221

; <label>:9221                                    ; preds = %9214, %9148
  %9222 = phi float [ -1.000000e+00, %9148 ], [ %9220, %9214 ]
  %9223 = phi float [ -1.000000e+00, %9148 ], [ %9219, %9214 ]
  %9224 = phi float [ -1.000000e+00, %9148 ], [ %9218, %9214 ]
  %9225 = phi float [ -1.000000e+00, %9148 ], [ %9217, %9214 ]
  %9226 = phi float [ -1.000000e+00, %9148 ], [ %9216, %9214 ]
  %9227 = phi float [ -1.000000e+00, %9148 ], [ %9215, %9214 ]
  %9228 = phi i32 [ 0, %9148 ], [ %9211, %9214 ]
  %9229 = call float @dx.op.binary.f32(i32 36, float %9226, float %9227)  ; FMin(a,b)
  %9230 = call float @dx.op.binary.f32(i32 36, float %9225, float %9229)  ; FMin(a,b)
  %9231 = call float @dx.op.binary.f32(i32 35, float %9225, float %9226)  ; FMax(a,b)
  %9232 = call float @dx.op.binary.f32(i32 36, float %9231, float %9227)  ; FMin(a,b)
  %9233 = call float @dx.op.binary.f32(i32 36, float %9225, float %9226)  ; FMin(a,b)
  %9234 = call float @dx.op.binary.f32(i32 35, float %9233, float %9232)  ; FMax(a,b)
  %9235 = call float @dx.op.binary.f32(i32 35, float %9226, float %9227)  ; FMax(a,b)
  %9236 = call float @dx.op.binary.f32(i32 35, float %9225, float %9235)  ; FMax(a,b)
  store float %9230, float* %9153, align 4, !tbaa !88, !alias.scope !147, !noalias !148
  store float %9234, float* %9154, align 4, !tbaa !88, !alias.scope !145, !noalias !146
  store float %9236, float* %9155, align 4, !tbaa !88, !alias.scope !139, !noalias !142
  %9237 = call float @dx.op.binary.f32(i32 36, float %9223, float %9224)  ; FMin(a,b)
  %9238 = call float @dx.op.binary.f32(i32 36, float %9222, float %9237)  ; FMin(a,b)
  %9239 = call float @dx.op.binary.f32(i32 35, float %9222, float %9223)  ; FMax(a,b)
  %9240 = call float @dx.op.binary.f32(i32 36, float %9239, float %9224)  ; FMin(a,b)
  %9241 = call float @dx.op.binary.f32(i32 36, float %9222, float %9223)  ; FMin(a,b)
  %9242 = call float @dx.op.binary.f32(i32 35, float %9241, float %9240)  ; FMax(a,b)
  %9243 = call float @dx.op.binary.f32(i32 35, float %9223, float %9224)  ; FMax(a,b)
  %9244 = call float @dx.op.binary.f32(i32 35, float %9222, float %9243)  ; FMax(a,b)
  store float %9238, float* %9156, align 4, !tbaa !88, !alias.scope !157, !noalias !158
  store float %9242, float* %9157, align 4, !tbaa !88, !alias.scope !155, !noalias !156
  store float %9244, float* %9158, align 4, !tbaa !88, !alias.scope !149, !noalias !152
  %9245 = sub nsw i32 3, %9228
  %9246 = icmp sgt i32 %9245, 2
  br i1 %9246, label %9247, label %9285

; <label>:9247                                    ; preds = %9221
  %9248 = icmp eq i32 %9016, 0
  %9249 = fsub fast float %9066, %9150
  %9250 = select i1 %9248, float %9249, float %9150
  %9251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9252 = extractvalue %dx.types.CBufRet.f32 %9251, 0
  %9253 = extractvalue %dx.types.CBufRet.f32 %9251, 1
  %9254 = extractvalue %dx.types.CBufRet.f32 %9251, 2
  %9255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9256 = extractvalue %dx.types.CBufRet.f32 %9255, 0
  %9257 = extractvalue %dx.types.CBufRet.f32 %9255, 1
  %9258 = extractvalue %dx.types.CBufRet.f32 %9255, 2
  %9259 = extractvalue %dx.types.CBufRet.f32 %9255, 3
  %9260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9261 = extractvalue %dx.types.CBufRet.f32 %9260, 3
  %9262 = call float @dx.op.binary.f32(i32 36, float %9151, float %9261)  ; FMin(a,b)
  %9263 = fmul fast float %9259, %9250
  %9264 = call float @dx.op.unary.f32(i32 7, float %9263)  ; Saturate(value)
  %9265 = fsub fast float %9256, %9252
  %9266 = fsub fast float %9257, %9253
  %9267 = fsub fast float %9258, %9254
  %9268 = fmul fast float %9264, %9265
  %9269 = fmul fast float %9264, %9266
  %9270 = fmul fast float %9264, %9267
  %9271 = fadd fast float %9268, %9252
  %9272 = fadd fast float %9269, %9253
  %9273 = fadd fast float %9270, %9254
  %9274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9275 = extractvalue %dx.types.CBufRet.f32 %9274, 0
  %9276 = extractvalue %dx.types.CBufRet.f32 %9274, 1
  %9277 = fadd fast float %9276, %9275
  %9278 = call float @dx.op.unary.f32(i32 7, float %9277)  ; Saturate(value)
  %9279 = extractvalue %dx.types.CBufRet.f32 %9274, 2
  %9280 = extractvalue %dx.types.CBufRet.f32 %9274, 3
  %9281 = fadd fast float %9280, %9279
  %9282 = call float @dx.op.unary.f32(i32 7, float %9281)  ; Saturate(value)
  %9283 = fmul fast float %9278, %9262
  %9284 = fmul fast float %9283, %9282
  br label %9367

; <label>:9285                                    ; preds = %9221
  %9286 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 %9245
  %9287 = load float, float* %9286, align 4, !tbaa !88, !noalias !123
  %9288 = fcmp fast olt float %9287, %9152
  %9289 = icmp sgt i32 %9228, 0
  %9290 = and i1 %9289, %9288
  br i1 %9290, label %9291, label %9328

; <label>:9291                                    ; preds = %9285
  br label %9292

; <label>:9292                                    ; preds = %9321, %9291
  %9293 = phi float [ %9322, %9321 ], [ %9150, %9291 ]
  %9294 = phi float [ %9323, %9321 ], [ %9151, %9291 ]
  %9295 = phi float [ %9303, %9321 ], [ %9287, %9291 ]
  %9296 = phi i32 [ %9300, %9321 ], [ %9245, %9291 ]
  %9297 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 %9296
  %9298 = load float, float* %9297, align 4, !tbaa !88, !noalias !123
  %9299 = icmp slt i32 %9296, 2
  %9300 = add nsw i32 %9296, 1
  %9301 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 %9300
  %9302 = load float, float* %9301, align 4, !tbaa !88, !noalias !123
  %9303 = select i1 %9299, float %9302, float %9066
  %9304 = call float @dx.op.binary.f32(i32 36, float %9303, float %9298)  ; FMin(a,b)
  %9305 = call float @dx.op.binary.f32(i32 36, float %9152, float %9304)  ; FMin(a,b)
  %9306 = icmp eq i32 %9016, 0
  %9307 = fadd fast float %9305, %9295
  %9308 = fmul fast float %9307, %8997
  %9309 = fadd fast float %9308, %9010
  br i1 %9306, label %9315, label %9310

; <label>:9310                                    ; preds = %9292
  %9311 = fsub fast float %9305, %9295
  %9312 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9311)  ; FMax(a,b)
  %9313 = fmul fast float %9312, %9309
  %9314 = fadd fast float %9313, %9294
  br label %9321

; <label>:9315                                    ; preds = %9292
  %9316 = fsub fast float %9295, %9305
  %9317 = call float @dx.op.unary.f32(i32 6, float %9316)  ; FAbs(value)
  %9318 = fadd fast float %9317, %9293
  %9319 = fmul fast float %9317, %9309
  %9320 = fsub fast float %9294, %9319
  br label %9321

; <label>:9321                                    ; preds = %9315, %9310
  %9322 = phi float [ %9312, %9310 ], [ %9318, %9315 ]
  %9323 = phi float [ %9314, %9310 ], [ %9320, %9315 ]
  %9324 = fcmp fast olt float %9303, %9152
  %9325 = icmp slt i32 %9300, 3
  %9326 = and i1 %9325, %9324
  br i1 %9326, label %9292, label %9327

; <label>:9327                                    ; preds = %9321
  br label %9328

; <label>:9328                                    ; preds = %9327, %9285
  %9329 = phi float [ %9150, %9285 ], [ %9322, %9327 ]
  %9330 = phi float [ %9151, %9285 ], [ %9323, %9327 ]
  %9331 = fsub fast float %9066, %9329
  %9332 = select i1 %9068, float %9329, float %9331
  %9333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9334 = extractvalue %dx.types.CBufRet.f32 %9333, 0
  %9335 = extractvalue %dx.types.CBufRet.f32 %9333, 1
  %9336 = extractvalue %dx.types.CBufRet.f32 %9333, 2
  %9337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9338 = extractvalue %dx.types.CBufRet.f32 %9337, 0
  %9339 = extractvalue %dx.types.CBufRet.f32 %9337, 1
  %9340 = extractvalue %dx.types.CBufRet.f32 %9337, 2
  %9341 = extractvalue %dx.types.CBufRet.f32 %9337, 3
  %9342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9343 = extractvalue %dx.types.CBufRet.f32 %9342, 3
  %9344 = call float @dx.op.binary.f32(i32 36, float %9330, float %9343)  ; FMin(a,b)
  %9345 = fmul fast float %9341, %9332
  %9346 = call float @dx.op.unary.f32(i32 7, float %9345)  ; Saturate(value)
  %9347 = fsub fast float %9338, %9334
  %9348 = fsub fast float %9339, %9335
  %9349 = fsub fast float %9340, %9336
  %9350 = fmul fast float %9346, %9347
  %9351 = fmul fast float %9346, %9348
  %9352 = fmul fast float %9346, %9349
  %9353 = fadd fast float %9350, %9334
  %9354 = fadd fast float %9351, %9335
  %9355 = fadd fast float %9352, %9336
  %9356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9357 = extractvalue %dx.types.CBufRet.f32 %9356, 0
  %9358 = extractvalue %dx.types.CBufRet.f32 %9356, 1
  %9359 = fadd fast float %9358, %9357
  %9360 = call float @dx.op.unary.f32(i32 7, float %9359)  ; Saturate(value)
  %9361 = extractvalue %dx.types.CBufRet.f32 %9356, 2
  %9362 = extractvalue %dx.types.CBufRet.f32 %9356, 3
  %9363 = fadd fast float %9362, %9361
  %9364 = call float @dx.op.unary.f32(i32 7, float %9363)  ; Saturate(value)
  %9365 = fmul fast float %9360, %9344
  %9366 = fmul fast float %9365, %9364
  br label %9367

; <label>:9367                                    ; preds = %9328, %9247, %9082, %9064, %9062
  %9368 = phi float [ %9091, %9082 ], [ %9250, %9247 ], [ %9332, %9328 ], [ 0.000000e+00, %9062 ], [ 0.000000e+00, %9064 ]
  %9369 = phi float [ %9125, %9082 ], [ %9284, %9247 ], [ %9366, %9328 ], [ 0.000000e+00, %9062 ], [ 0.000000e+00, %9064 ]
  %9370 = phi float [ %9112, %9082 ], [ %9271, %9247 ], [ %9353, %9328 ], [ 0.000000e+00, %9062 ], [ 0.000000e+00, %9064 ]
  %9371 = phi float [ %9113, %9082 ], [ %9272, %9247 ], [ %9354, %9328 ], [ 0.000000e+00, %9062 ], [ 0.000000e+00, %9064 ]
  %9372 = phi float [ %9114, %9082 ], [ %9273, %9247 ], [ %9355, %9328 ], [ 0.000000e+00, %9062 ], [ 0.000000e+00, %9064 ]
  %9373 = fmul fast float %9005, %9369
  %9374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9375 = extractvalue %dx.types.CBufRet.f32 %9374, 2
  %9376 = fsub fast float %9012, %9375
  %9377 = fcmp fast olt float %9373, -2.000000e+01
  %9378 = call float @dx.op.unary.f32(i32 21, float %9373)  ; Exp(value)
  %9379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9380 = extractvalue %dx.types.CBufRet.f32 %9379, 2
  %9381 = extractvalue %dx.types.CBufRet.f32 %9379, 3
  %9382 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %9383 = extractvalue %dx.types.CBufRet.f32 %9382, 2
  %9384 = fmul fast float %9381, %9376
  %9385 = call float @dx.op.unary.f32(i32 7, float %9384)  ; Saturate(value)
  %9386 = fsub fast float 1.000000e+00, %9385
  %9387 = fmul fast float %8997, 5.000000e-01
  %9388 = fadd fast float %9387, 5.000000e-01
  %9389 = call float @dx.op.unary.f32(i32 7, float %9388)  ; Saturate(value)
  %9390 = fsub fast float 1.000000e+00, %9389
  %9391 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9386)  ; FMax(a,b)
  %9392 = fdiv fast float %9390, %9391
  %9393 = fsub fast float %9376, %8954
  %9394 = call float @dx.op.unary.f32(i32 6, float %9393)  ; FAbs(value)
  %9395 = fmul fast float %9394, %9380
  %9396 = call float @dx.op.unary.f32(i32 7, float %9392)  ; Saturate(value)
  %9397 = fsub fast float 1.000000e+00, %9395
  %9398 = fmul fast float %9397, %9396
  %9399 = fadd fast float %9398, %9395
  %9400 = fmul fast float %9383, %9376
  %9401 = call float @dx.op.unary.f32(i32 7, float %9400)  ; Saturate(value)
  %9402 = fsub fast float 1.000000e+00, %9399
  %9403 = fmul fast float %9402, %9401
  %9404 = fadd fast float %9403, %9399
  %9405 = call float @dx.op.unary.f32(i32 7, float %9404)  ; Saturate(value)
  %9406 = fadd fast float %9378, -1.000000e+00
  %9407 = select i1 %9377, float -1.000000e+00, float %9406
  %9408 = fmul fast float %9405, %9407
  %9409 = fadd fast float %9408, 1.000000e+00
  %9410 = fsub fast float -0.000000e+00, %9408
  %9411 = fmul fast float %9370, %9410
  %9412 = fmul fast float %9371, %9410
  %9413 = fmul fast float %9372, %9410
  br label %9414

; <label>:9414                                    ; preds = %9367, %8963
  %9415 = phi float [ %9368, %9367 ], [ 0.000000e+00, %8963 ]
  %9416 = phi float [ %9409, %9367 ], [ 1.000000e+00, %8963 ]
  %9417 = phi float [ %9411, %9367 ], [ 0.000000e+00, %8963 ]
  %9418 = phi float [ %9412, %9367 ], [ 0.000000e+00, %8963 ]
  %9419 = phi float [ %9413, %9367 ], [ 0.000000e+00, %8963 ]
  %9420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9421 = extractvalue %dx.types.CBufRet.f32 %9420, 1
  %9422 = fsub fast float 1.000000e+00, %9416
  %9423 = fmul fast float %9422, %8998
  %9424 = fmul fast float %9423, %9421
  %9425 = fsub fast float %8998, %9424
  br i1 %8991, label %9426, label %9455, !dx.controlflow.hints !159

; <label>:9426                                    ; preds = %9414
  %9427 = fmul fast float %8999, %8988
  %9428 = fadd fast float %9427, %8989
  %9429 = call float @dx.op.unary.f32(i32 7, float %9428)  ; Saturate(value)
  %9430 = fmul fast float %8970, %9425
  %9431 = fsub fast float -0.000000e+00, %9430
  %9432 = fmul fast float %8971, %9425
  %9433 = fsub fast float -0.000000e+00, %9432
  %9434 = call float @dx.op.unary.f32(i32 21, float %9431)  ; Exp(value)
  %9435 = call float @dx.op.unary.f32(i32 21, float %9433)  ; Exp(value)
  %9436 = call float @dx.op.binary.f32(i32 35, float %8978, float %9434)  ; FMax(a,b)
  %9437 = call float @dx.op.binary.f32(i32 35, float %8978, float %9435)  ; FMax(a,b)
  %9438 = fsub fast float %9437, %9436
  %9439 = fmul fast float %9438, %9429
  %9440 = fadd fast float %9439, %9436
  %9441 = call float @dx.op.unary.f32(i32 7, float %9440)  ; Saturate(value)
  %9442 = fsub fast float %8975, %8980
  %9443 = fsub fast float %8976, %8981
  %9444 = fsub fast float %8977, %8982
  %9445 = fmul fast float %9429, %9442
  %9446 = fmul fast float %9429, %9443
  %9447 = fmul fast float %9429, %9444
  %9448 = fadd fast float %9445, %8980
  %9449 = fadd fast float %9446, %8981
  %9450 = fadd fast float %9447, %8982
  %9451 = fsub fast float 1.000000e+00, %9441
  %9452 = fmul fast float %9451, %9448
  %9453 = fmul fast float %9451, %9449
  %9454 = fmul fast float %9451, %9450
  br label %9514

; <label>:9455                                    ; preds = %9414
  %9456 = fmul fast float %9425, %8987
  %9457 = call float @dx.op.unary.f32(i32 7, float %9456)  ; Saturate(value)
  %9458 = fsub fast float 2.000000e+00, %9457
  %9459 = fmul fast float %9457, 9.921875e-01
  %9460 = fmul fast float %9459, %9458
  %9461 = fadd fast float %9460, 3.906250e-03
  %9462 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %46, float %9461, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9463 = extractvalue %dx.types.ResRet.f32 %9462, 0
  %9464 = fsub fast float %9457, %9463
  %9465 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9464)  ; FMax(a,b)
  %9466 = fmul fast float %8973, %8954
  %9467 = call float @dx.op.unary.f32(i32 6, float %9466)  ; FAbs(value)
  %9468 = fcmp fast ogt float %9467, 0x3EB0C6F7A0000000
  br i1 %9468, label %9469, label %9475, !dx.controlflow.hints !160

; <label>:9469                                    ; preds = %9455
  %9470 = fmul fast float %9466, 0xBFF7154760000000
  %9471 = call float @dx.op.unary.f32(i32 21, float %9470)  ; Exp(value)
  %9472 = fsub fast float 1.000000e+00, %9471
  %9473 = fdiv fast float %9472, %9466
  %9474 = fmul fast float %9473, %8983
  br label %9475

; <label>:9475                                    ; preds = %9469, %9455
  %9476 = phi float [ %9474, %9469 ], [ %8983, %9455 ]
  %9477 = fadd fast float %9476, %8985
  %9478 = fmul fast float %9477, %9465
  %9479 = fmul fast float %8970, %9478
  %9480 = fsub fast float -0.000000e+00, %9479
  %9481 = fmul fast float %8971, %9478
  %9482 = fsub fast float -0.000000e+00, %9481
  %9483 = fmul fast float %8972, %9478
  %9484 = fsub fast float -0.000000e+00, %9483
  %9485 = call float @dx.op.unary.f32(i32 21, float %9480)  ; Exp(value)
  %9486 = call float @dx.op.unary.f32(i32 21, float %9482)  ; Exp(value)
  %9487 = call float @dx.op.unary.f32(i32 21, float %9484)  ; Exp(value)
  %9488 = fmul fast float %8999, %8999
  %9489 = fadd fast float %9488, 1.000000e+00
  %9490 = fmul fast float %9489, 0x3FAE8EC8A0000000
  %9491 = fmul fast float %9490, %8980
  %9492 = fmul fast float %9490, %8981
  %9493 = fmul fast float %9490, %8982
  %9494 = fmul fast float %8999, %8978
  %9495 = fsub fast float 1.000000e+00, %9494
  %9496 = fmul fast float %8978, %8978
  %9497 = fsub fast float 1.000000e+00, %9496
  %9498 = fmul fast float %9497, 0x3FB45F3060000000
  %9499 = fmul fast float %9495, %9495
  %9500 = fdiv fast float 1.000000e+00, %9499
  %9501 = fmul fast float %9498, %9500
  %9502 = fmul fast float %9501, %8975
  %9503 = fmul fast float %9501, %8976
  %9504 = fmul fast float %9501, %8977
  %9505 = fadd fast float %9502, %9491
  %9506 = fadd fast float %9503, %9492
  %9507 = fadd fast float %9504, %9493
  %9508 = fsub fast float 1.000000e+00, %9485
  %9509 = fsub fast float 1.000000e+00, %9486
  %9510 = fsub fast float 1.000000e+00, %9487
  %9511 = fmul fast float %9505, %9508
  %9512 = fmul fast float %9506, %9509
  %9513 = fmul fast float %9507, %9510
  br label %9514

; <label>:9514                                    ; preds = %9475, %9426
  %9515 = phi float [ %9452, %9426 ], [ %9511, %9475 ]
  %9516 = phi float [ %9453, %9426 ], [ %9512, %9475 ]
  %9517 = phi float [ %9454, %9426 ], [ %9513, %9475 ]
  %9518 = phi float [ %9441, %9426 ], [ %9485, %9475 ]
  %9519 = phi float [ %9441, %9426 ], [ %9486, %9475 ]
  %9520 = phi float [ %9441, %9426 ], [ %9487, %9475 ]
  br i1 %9007, label %9521, label %9719, !dx.controlflow.hints !161

; <label>:9521                                    ; preds = %9514
  %9522 = extractvalue %dx.types.CBufRet.f32 %9420, 0
  %9523 = fmul fast float %9522, %9422
  %9524 = fsub fast float %9417, %9515
  %9525 = fsub fast float %9418, %9516
  %9526 = fsub fast float %9419, %9517
  %9527 = fmul fast float %9523, %9524
  %9528 = fmul fast float %9523, %9525
  %9529 = fmul fast float %9523, %9526
  %9530 = fadd fast float %9527, %9515
  %9531 = fadd fast float %9528, %9516
  %9532 = fadd fast float %9529, %9517
  %9533 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9518)  ; FMax(a,b)
  %9534 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9519)  ; FMax(a,b)
  %9535 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9520)  ; FMax(a,b)
  %9536 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9416)  ; FMax(a,b)
  %9537 = call float @dx.op.binary.f32(i32 35, float %9415, float %9425)  ; FMax(a,b)
  %9538 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9537)  ; FMax(a,b)
  %9539 = fdiv fast float %9415, %9538
  %9540 = call float @dx.op.unary.f32(i32 7, float %9539)  ; Saturate(value)
  %9541 = fdiv fast float %9425, %9538
  %9542 = call float @dx.op.unary.f32(i32 7, float %9541)  ; Saturate(value)
  %9543 = fcmp fast une float %9536, 1.000000e+00
  br i1 %9543, label %9544, label %9557, !dx.controlflow.hints !162

; <label>:9544                                    ; preds = %9521
  %9545 = call float @dx.op.unary.f32(i32 23, float %9536)  ; Log(value)
  %9546 = fmul fast float %9545, 0x3FE62E4300000000
  %9547 = fmul fast float %9417, %9546
  %9548 = fsub fast float -0.000000e+00, %9547
  %9549 = fmul fast float %9418, %9546
  %9550 = fsub fast float -0.000000e+00, %9549
  %9551 = fmul fast float %9419, %9546
  %9552 = fsub fast float -0.000000e+00, %9551
  %9553 = fsub fast float 1.000000e+00, %9536
  %9554 = fdiv fast float %9548, %9553
  %9555 = fdiv fast float %9550, %9553
  %9556 = fdiv fast float %9552, %9553
  br label %9557

; <label>:9557                                    ; preds = %9544, %9521
  %9558 = phi float [ %9554, %9544 ], [ %9417, %9521 ]
  %9559 = phi float [ %9555, %9544 ], [ %9418, %9521 ]
  %9560 = phi float [ %9556, %9544 ], [ %9419, %9521 ]
  %9561 = phi float [ %9546, %9544 ], [ 0.000000e+00, %9521 ]
  %9562 = fcmp fast une float %9533, 1.000000e+00
  br i1 %9562, label %9563, label %9570, !dx.controlflow.hints !163

; <label>:9563                                    ; preds = %9557
  %9564 = call float @dx.op.unary.f32(i32 23, float %9533)  ; Log(value)
  %9565 = fmul fast float %9564, 0x3FE62E4300000000
  %9566 = fmul fast float %9530, %9565
  %9567 = fsub fast float -0.000000e+00, %9566
  %9568 = fsub fast float 1.000000e+00, %9533
  %9569 = fdiv fast float %9567, %9568
  br label %9570

; <label>:9570                                    ; preds = %9563, %9557
  %9571 = phi float [ %9569, %9563 ], [ %9530, %9557 ]
  %9572 = phi float [ %9565, %9563 ], [ 0.000000e+00, %9557 ]
  %9573 = fcmp fast une float %9534, 1.000000e+00
  br i1 %9573, label %9574, label %9581, !dx.controlflow.hints !163

; <label>:9574                                    ; preds = %9570
  %9575 = call float @dx.op.unary.f32(i32 23, float %9534)  ; Log(value)
  %9576 = fmul fast float %9575, 0x3FE62E4300000000
  %9577 = fmul fast float %9531, %9576
  %9578 = fsub fast float -0.000000e+00, %9577
  %9579 = fsub fast float 1.000000e+00, %9534
  %9580 = fdiv fast float %9578, %9579
  br label %9581

; <label>:9581                                    ; preds = %9574, %9570
  %9582 = phi float [ %9580, %9574 ], [ %9531, %9570 ]
  %9583 = phi float [ %9576, %9574 ], [ 0.000000e+00, %9570 ]
  %9584 = fcmp fast une float %9535, 1.000000e+00
  br i1 %9584, label %9585, label %9592, !dx.controlflow.hints !163

; <label>:9585                                    ; preds = %9581
  %9586 = call float @dx.op.unary.f32(i32 23, float %9535)  ; Log(value)
  %9587 = fmul fast float %9586, 0x3FE62E4300000000
  %9588 = fmul fast float %9532, %9587
  %9589 = fsub fast float -0.000000e+00, %9588
  %9590 = fsub fast float 1.000000e+00, %9535
  %9591 = fdiv fast float %9589, %9590
  br label %9592

; <label>:9592                                    ; preds = %9585, %9581
  %9593 = phi float [ %9591, %9585 ], [ %9532, %9581 ]
  %9594 = phi float [ %9587, %9585 ], [ 0.000000e+00, %9581 ]
  %9595 = fmul fast float %9558, %9542
  %9596 = fmul fast float %9559, %9542
  %9597 = fmul fast float %9560, %9542
  %9598 = fmul fast float %9561, %9542
  %9599 = fmul fast float %9571, %9540
  %9600 = fmul fast float %9582, %9540
  %9601 = fmul fast float %9593, %9540
  %9602 = fmul fast float %9572, %9540
  %9603 = fmul fast float %9583, %9540
  %9604 = fmul fast float %9594, %9540
  %9605 = fadd fast float %9599, %9595
  %9606 = fadd fast float %9600, %9596
  %9607 = fadd fast float %9601, %9597
  %9608 = fadd fast float %9602, %9598
  %9609 = fadd fast float %9603, %9598
  %9610 = fadd fast float %9604, %9598
  %9611 = fcmp fast une float %9608, 0.000000e+00
  br i1 %9611, label %9612, label %9619, !dx.controlflow.hints !164

; <label>:9612                                    ; preds = %9592
  %9613 = fmul fast float %9608, 0x3FF7154760000000
  %9614 = call float @dx.op.unary.f32(i32 21, float %9613)  ; Exp(value)
  %9615 = fsub fast float 1.000000e+00, %9614
  %9616 = fmul fast float %9605, %9615
  %9617 = fsub fast float -0.000000e+00, %9616
  %9618 = fdiv fast float %9617, %9608
  br label %9619

; <label>:9619                                    ; preds = %9612, %9592
  %9620 = phi float [ %9614, %9612 ], [ 1.000000e+00, %9592 ]
  %9621 = phi float [ %9618, %9612 ], [ %9605, %9592 ]
  %9622 = fcmp fast une float %9609, 0.000000e+00
  br i1 %9622, label %9623, label %9630, !dx.controlflow.hints !164

; <label>:9623                                    ; preds = %9619
  %9624 = fmul fast float %9609, 0x3FF7154760000000
  %9625 = call float @dx.op.unary.f32(i32 21, float %9624)  ; Exp(value)
  %9626 = fsub fast float 1.000000e+00, %9625
  %9627 = fmul fast float %9606, %9626
  %9628 = fsub fast float -0.000000e+00, %9627
  %9629 = fdiv fast float %9628, %9609
  br label %9630

; <label>:9630                                    ; preds = %9623, %9619
  %9631 = phi float [ %9625, %9623 ], [ 1.000000e+00, %9619 ]
  %9632 = phi float [ %9629, %9623 ], [ %9606, %9619 ]
  %9633 = fcmp fast une float %9610, 0.000000e+00
  br i1 %9633, label %9634, label %9641, !dx.controlflow.hints !164

; <label>:9634                                    ; preds = %9630
  %9635 = fmul fast float %9610, 0x3FF7154760000000
  %9636 = call float @dx.op.unary.f32(i32 21, float %9635)  ; Exp(value)
  %9637 = fsub fast float 1.000000e+00, %9636
  %9638 = fmul fast float %9607, %9637
  %9639 = fsub fast float -0.000000e+00, %9638
  %9640 = fdiv fast float %9639, %9610
  br label %9641

; <label>:9641                                    ; preds = %9634, %9630
  %9642 = phi float [ %9636, %9634 ], [ 1.000000e+00, %9630 ]
  %9643 = phi float [ %9640, %9634 ], [ %9607, %9630 ]
  %9644 = fcmp fast ogt float %9540, %9542
  br i1 %9644, label %9645, label %9665

; <label>:9645                                    ; preds = %9641
  %9646 = fsub fast float 1.000000e+00, %9542
  %9647 = fmul fast float %9558, %9646
  %9648 = fmul fast float %9559, %9646
  %9649 = fmul fast float %9560, %9646
  %9650 = fmul fast float %9561, %9646
  %9651 = fcmp fast une float %9650, 0.000000e+00
  br i1 %9651, label %9652, label %9703, !dx.controlflow.hints !165

; <label>:9652                                    ; preds = %9645
  %9653 = fmul fast float %9650, 0x3FF7154760000000
  %9654 = call float @dx.op.unary.f32(i32 21, float %9653)  ; Exp(value)
  %9655 = fsub fast float 1.000000e+00, %9654
  %9656 = fmul fast float %9647, %9655
  %9657 = fsub fast float -0.000000e+00, %9656
  %9658 = fmul fast float %9648, %9655
  %9659 = fsub fast float -0.000000e+00, %9658
  %9660 = fmul fast float %9649, %9655
  %9661 = fsub fast float -0.000000e+00, %9660
  %9662 = fdiv fast float %9657, %9650
  %9663 = fdiv fast float %9659, %9650
  %9664 = fdiv fast float %9661, %9650
  br label %9703

; <label>:9665                                    ; preds = %9641
  %9666 = fsub fast float 1.000000e+00, %9540
  %9667 = fmul fast float %9571, %9666
  %9668 = fmul fast float %9582, %9666
  %9669 = fmul fast float %9593, %9666
  %9670 = fmul fast float %9572, %9666
  %9671 = fmul fast float %9583, %9666
  %9672 = fmul fast float %9594, %9666
  %9673 = fcmp fast une float %9670, 0.000000e+00
  br i1 %9673, label %9674, label %9681, !dx.controlflow.hints !164

; <label>:9674                                    ; preds = %9665
  %9675 = fmul fast float %9670, 0x3FF7154760000000
  %9676 = call float @dx.op.unary.f32(i32 21, float %9675)  ; Exp(value)
  %9677 = fsub fast float 1.000000e+00, %9676
  %9678 = fmul fast float %9667, %9677
  %9679 = fsub fast float -0.000000e+00, %9678
  %9680 = fdiv fast float %9679, %9670
  br label %9681

; <label>:9681                                    ; preds = %9674, %9665
  %9682 = phi float [ %9680, %9674 ], [ %9667, %9665 ]
  %9683 = phi float [ %9676, %9674 ], [ 1.000000e+00, %9665 ]
  %9684 = fcmp fast une float %9671, 0.000000e+00
  br i1 %9684, label %9685, label %9692, !dx.controlflow.hints !164

; <label>:9685                                    ; preds = %9681
  %9686 = fmul fast float %9671, 0x3FF7154760000000
  %9687 = call float @dx.op.unary.f32(i32 21, float %9686)  ; Exp(value)
  %9688 = fsub fast float 1.000000e+00, %9687
  %9689 = fmul fast float %9668, %9688
  %9690 = fsub fast float -0.000000e+00, %9689
  %9691 = fdiv fast float %9690, %9671
  br label %9692

; <label>:9692                                    ; preds = %9685, %9681
  %9693 = phi float [ %9691, %9685 ], [ %9668, %9681 ]
  %9694 = phi float [ %9687, %9685 ], [ 1.000000e+00, %9681 ]
  %9695 = fcmp fast une float %9672, 0.000000e+00
  br i1 %9695, label %9696, label %9703, !dx.controlflow.hints !164

; <label>:9696                                    ; preds = %9692
  %9697 = fmul fast float %9672, 0x3FF7154760000000
  %9698 = call float @dx.op.unary.f32(i32 21, float %9697)  ; Exp(value)
  %9699 = fsub fast float 1.000000e+00, %9698
  %9700 = fmul fast float %9669, %9699
  %9701 = fsub fast float -0.000000e+00, %9700
  %9702 = fdiv fast float %9701, %9672
  br label %9703

; <label>:9703                                    ; preds = %9696, %9692, %9652, %9645
  %9704 = phi float [ %9702, %9696 ], [ %9664, %9652 ], [ %9649, %9645 ], [ %9669, %9692 ]
  %9705 = phi float [ %9693, %9696 ], [ %9663, %9652 ], [ %9648, %9645 ], [ %9693, %9692 ]
  %9706 = phi float [ %9682, %9696 ], [ %9662, %9652 ], [ %9647, %9645 ], [ %9682, %9692 ]
  %9707 = phi float [ %9698, %9696 ], [ %9654, %9652 ], [ 1.000000e+00, %9645 ], [ 1.000000e+00, %9692 ]
  %9708 = phi float [ %9694, %9696 ], [ %9654, %9652 ], [ 1.000000e+00, %9645 ], [ %9694, %9692 ]
  %9709 = phi float [ %9683, %9696 ], [ %9654, %9652 ], [ 1.000000e+00, %9645 ], [ %9683, %9692 ]
  %9710 = fmul fast float %9709, %9621
  %9711 = fmul fast float %9708, %9632
  %9712 = fmul fast float %9707, %9643
  %9713 = fadd fast float %9710, %9706
  %9714 = fadd fast float %9711, %9705
  %9715 = fadd fast float %9712, %9704
  %9716 = fmul fast float %9709, %9620
  %9717 = fmul fast float %9708, %9631
  %9718 = fmul fast float %9707, %9642
  br label %9719

; <label>:9719                                    ; preds = %9703, %9514
  %9720 = phi float [ %9718, %9703 ], [ %9520, %9514 ]
  %9721 = phi float [ %9717, %9703 ], [ %9519, %9514 ]
  %9722 = phi float [ %9716, %9703 ], [ %9518, %9514 ]
  %9723 = phi float [ %9715, %9703 ], [ %9517, %9514 ]
  %9724 = phi float [ %9714, %9703 ], [ %9516, %9514 ]
  %9725 = phi float [ %9713, %9703 ], [ %9515, %9514 ]
  %9726 = fmul fast float %9725, %8671
  %9727 = fmul fast float %9724, %8671
  %9728 = fmul fast float %9723, %8671
  %9729 = fmul fast float %9722, %8962
  %9730 = call float @dx.op.dot3.f32(i32 55, float %9722, float %9721, float %9720, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9731 = call float @dx.op.dot3.f32(i32 55, float %9726, float %9727, float %9728, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9732 = select i1 %228, float %9730, float %9722
  %9733 = select i1 %228, float %9730, float %9721
  %9734 = select i1 %228, float 1.000000e+00, float %9720
  %9735 = select i1 %228, float %9731, float %9726
  %9736 = select i1 %228, float 0.000000e+00, float %9727
  %9737 = select i1 %228, float 0.000000e+00, float %9728
  %9738 = fmul fast float %9732, %8956
  %9739 = fmul fast float %9733, %8957
  %9740 = fmul fast float %9734, %8958
  %9741 = fadd fast float %9738, %9735
  %9742 = fadd fast float %9739, %9736
  %9743 = fadd fast float %9737, %9740
  %9744 = fmul fast float %9732, %8959
  %9745 = fmul fast float %9733, %8960
  %9746 = fmul fast float %9734, %8961
  %9747 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9748 = extractvalue %dx.types.CBufRet.i32 %9747, 0
  %9749 = icmp eq i32 %9748, 0
  br i1 %9749, label %10117, label %9750, !dx.controlflow.hints !166

; <label>:9750                                    ; preds = %9719
  %9751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %9752 = extractvalue %dx.types.CBufRet.f32 %9751, 2
  %9753 = extractvalue %dx.types.CBufRet.f32 %9751, 3
  %9754 = fmul fast float %9752, %104
  %9755 = fmul fast float %9753, %105
  %9756 = fmul fast float %9754, 2.000000e+00
  %9757 = fmul fast float %9755, 2.000000e+00
  %9758 = fsub fast float 1.000000e+00, %9756
  %9759 = fsub fast float 1.000000e+00, %9757
  %9760 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9761 = extractvalue %dx.types.CBufRet.f32 %9760, 0
  %9762 = extractvalue %dx.types.CBufRet.f32 %9760, 1
  %9763 = extractvalue %dx.types.CBufRet.f32 %9760, 2
  %9764 = fmul fast float %9758, %9761
  %9765 = fmul fast float %9758, %9762
  %9766 = fmul fast float %9758, %9763
  %9767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9768 = extractvalue %dx.types.CBufRet.f32 %9767, 0
  %9769 = extractvalue %dx.types.CBufRet.f32 %9767, 1
  %9770 = extractvalue %dx.types.CBufRet.f32 %9767, 2
  %9771 = fmul fast float %9759, %9768
  %9772 = fmul fast float %9759, %9769
  %9773 = fmul fast float %9759, %9770
  %9774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9775 = extractvalue %dx.types.CBufRet.f32 %9774, 0
  %9776 = extractvalue %dx.types.CBufRet.f32 %9774, 1
  %9777 = extractvalue %dx.types.CBufRet.f32 %9774, 2
  %9778 = fadd fast float %9771, %9775
  %9779 = fadd fast float %9778, %9764
  %9780 = fadd fast float %9772, %9776
  %9781 = fadd fast float %9780, %9765
  %9782 = fadd fast float %9773, %9777
  %9783 = fadd fast float %9782, %9766
  %9784 = fmul fast float %9779, %8955
  %9785 = fmul fast float %9781, %8955
  %9786 = fmul fast float %9783, %8955
  %9787 = fmul fast float %9784, %9784
  %9788 = fmul fast float %9785, %9785
  %9789 = fadd fast float %9787, %9788
  %9790 = fmul fast float %9786, %9786
  %9791 = fadd fast float %9789, %9790
  %9792 = call float @dx.op.unary.f32(i32 24, float %9791)  ; Sqrt(value)
  %9793 = extractvalue %dx.types.CBufRet.f32 %8682, 0
  %9794 = fsub fast float %9792, %9793
  %9795 = extractvalue %dx.types.CBufRet.f32 %8682, 2
  %9796 = fmul fast float %9794, %9795
  %9797 = call float @dx.op.unary.f32(i32 7, float %9796)  ; Saturate(value)
  %9798 = fadd fast float %9797, -5.000000e-01
  %9799 = fmul fast float %9798, 2.000000e+00
  %9800 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9801 = extractvalue %dx.types.CBufRet.f32 %9800, 2
  %9802 = call float @dx.op.binary.f32(i32 36, float %9801, float %9799)  ; FMin(a,b)
  %9803 = fsub fast float -0.000000e+00, %9801
  %9804 = fcmp fast ogt float %9802, %9803
  br i1 %9804, label %9805, label %10117, !dx.controlflow.hints !167

; <label>:9805                                    ; preds = %9750
  %9806 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9807 = extractvalue %dx.types.CBufRet.f32 %9806, 3
  %9808 = fcmp fast ogt float %9807, 0.000000e+00
  br i1 %9808, label %9809, label %9884, !dx.controlflow.hints !168

; <label>:9809                                    ; preds = %9805
  %9810 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %28, i32 0)  ; GetDimensions(handle,mipLevel)
  %9811 = extractvalue %dx.types.Dimensions %9810, 0
  %9812 = sitofp i32 %9811 to float
  %9813 = extractvalue %dx.types.Dimensions %9810, 1
  %9814 = sitofp i32 %9813 to float
  %9815 = fmul fast float %9754, %9812
  %9816 = fmul fast float %9755, %9814
  %9817 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9818 = extractvalue %dx.types.CBufRet.f32 %9817, 1
  %9819 = fsub fast float -0.000000e+00, %9818
  %9820 = fptoui float %9819 to i32
  %9821 = fptoui float %9815 to i32
  %9822 = fptoui float %9816 to i32
  %9823 = and i32 %9820, 31
  %9824 = lshr i32 %9821, %9823
  %9825 = lshr i32 %9822, %9823
  %9826 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %28, i32 %9820, i32 %9824, i32 %9825, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9827 = extractvalue %dx.types.ResRet.f32 %9826, 0
  %9828 = fcmp fast olt float %9827, -1.000000e+00
  %9829 = fcmp fast ogt float %9827, -1.000000e+00
  %9830 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9831 = extractvalue %dx.types.CBufRet.f32 %9830, 1
  %9832 = select i1 %9829, float %9831, float 1.000000e+00
  %9833 = fadd fast float %9827, 1.000000e+00
  %9834 = fmul fast float %9832, %9833
  %9835 = call float @dx.op.unary.f32(i32 6, float %9834)  ; FAbs(value)
  %9836 = extractvalue %dx.types.CBufRet.f32 %9830, 3
  %9837 = fcmp fast oge float %9835, %9836
  %9838 = select i1 %9837, float 0x4197782600000000, float %9835
  %9839 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9840 = extractvalue %dx.types.CBufRet.f32 %9839, 0
  %9841 = extractvalue %dx.types.CBufRet.f32 %9839, 1
  %9842 = extractvalue %dx.types.CBufRet.f32 %9839, 2
  %9843 = select i1 %9828, float %9840, float %9761
  %9844 = select i1 %9828, float %9841, float %9762
  %9845 = select i1 %9828, float %9842, float %9763
  %9846 = fmul fast float %9843, %9758
  %9847 = fmul fast float %9844, %9758
  %9848 = fmul fast float %9845, %9758
  %9849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9850 = extractvalue %dx.types.CBufRet.f32 %9849, 0
  %9851 = extractvalue %dx.types.CBufRet.f32 %9849, 1
  %9852 = extractvalue %dx.types.CBufRet.f32 %9849, 2
  %9853 = select i1 %9828, float %9850, float %9768
  %9854 = select i1 %9828, float %9851, float %9769
  %9855 = select i1 %9828, float %9852, float %9770
  %9856 = fmul fast float %9853, %9759
  %9857 = fmul fast float %9854, %9759
  %9858 = fmul fast float %9855, %9759
  %9859 = fadd fast float %9856, %9846
  %9860 = fadd fast float %9857, %9847
  %9861 = fadd fast float %9858, %9848
  %9862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9863 = extractvalue %dx.types.CBufRet.f32 %9862, 0
  %9864 = extractvalue %dx.types.CBufRet.f32 %9862, 1
  %9865 = extractvalue %dx.types.CBufRet.f32 %9862, 2
  %9866 = select i1 %9828, float %9863, float %9775
  %9867 = select i1 %9828, float %9864, float %9776
  %9868 = select i1 %9828, float %9865, float %9777
  %9869 = fadd fast float %9859, %9866
  %9870 = fadd fast float %9860, %9867
  %9871 = fadd fast float %9861, %9868
  %9872 = fmul fast float %9869, %9838
  %9873 = fmul fast float %9870, %9838
  %9874 = fmul fast float %9871, %9838
  %9875 = fmul fast float %9872, %9872
  %9876 = fmul fast float %9873, %9873
  %9877 = fadd fast float %9875, %9876
  %9878 = fmul fast float %9874, %9874
  %9879 = fadd fast float %9877, %9878
  %9880 = call float @dx.op.unary.f32(i32 24, float %9879)  ; Sqrt(value)
  %9881 = fsub fast float %9880, %9793
  %9882 = fmul fast float %9881, %9795
  %9883 = call float @dx.op.unary.f32(i32 7, float %9882)  ; Saturate(value)
  br label %9884

; <label>:9884                                    ; preds = %9809, %9805
  %9885 = phi float [ %9883, %9809 ], [ 1.000000e+00, %9805 ]
  %9886 = fmul fast float %9802, 5.000000e-01
  %9887 = fadd fast float %9886, 5.000000e-01
  %9888 = call float @dx.op.unary.f32(i32 22, float %9887)  ; Frc(value)
  %9889 = call float @dx.op.unary.f32(i32 27, float %9888)  ; Round_ni(value)
  %9890 = call float @dx.op.unary.f32(i32 22, float %9888)  ; Frc(value)
  %9891 = fmul fast float %9890, 2.000000e+00
  %9892 = fadd fast float %9891, -1.000000e+00
  %9893 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %46, float %9754, float %9755, float %9889, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9894 = extractvalue %dx.types.ResRet.f32 %9893, 0
  %9895 = extractvalue %dx.types.ResRet.f32 %9893, 1
  %9896 = extractvalue %dx.types.ResRet.f32 %9893, 2
  %9897 = extractvalue %dx.types.ResRet.f32 %9893, 3
  %9898 = fadd fast float %9894, -5.000000e-01
  %9899 = fadd fast float %9896, -5.000000e-01
  %9900 = fmul fast float %9898, 0xBFD5555560000000
  %9901 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9899, float %9900)  ; FMad(a,b,c)
  %9902 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9895, float 0.000000e+00)  ; FMad(a,b,c)
  %9903 = fadd fast float %9902, %9897
  %9904 = fmul fast float %9898, -7.500000e-01
  %9905 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9899, float %9904)  ; FMad(a,b,c)
  %9906 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9895, float 0.000000e+00)  ; FMad(a,b,c)
  %9907 = fadd fast float %9906, %9897
  %9908 = call float @dx.op.binary.f32(i32 35, float %9901, float -1.000000e+00)  ; FMax(a,b)
  %9909 = call float @dx.op.binary.f32(i32 35, float %9903, float -1.000000e+00)  ; FMax(a,b)
  %9910 = call float @dx.op.binary.f32(i32 35, float %9905, float -1.000000e+00)  ; FMax(a,b)
  %9911 = call float @dx.op.binary.f32(i32 35, float %9907, float -1.000000e+00)  ; FMax(a,b)
  %9912 = call float @dx.op.binary.f32(i32 36, float %9908, float 1.000000e+00)  ; FMin(a,b)
  %9913 = call float @dx.op.binary.f32(i32 36, float %9909, float 1.000000e+00)  ; FMin(a,b)
  %9914 = call float @dx.op.binary.f32(i32 36, float %9910, float 1.000000e+00)  ; FMin(a,b)
  %9915 = call float @dx.op.binary.f32(i32 36, float %9911, float 1.000000e+00)  ; FMin(a,b)
  %9916 = fcmp fast olt float %9912, 0x3FEFFF8020000000
  br i1 %9916, label %9917, label %10032, !dx.controlflow.hints !169

; <label>:9917                                    ; preds = %9884
  %9918 = extractvalue %dx.types.CBufRet.f32 %9800, 3
  %9919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9920 = extractvalue %dx.types.CBufRet.f32 %9919, 0
  %9921 = extractvalue %dx.types.CBufRet.f32 %9919, 1
  %9922 = extractvalue %dx.types.CBufRet.f32 %9919, 2
  %9923 = extractvalue %dx.types.CBufRet.f32 %9919, 3
  %9924 = fsub fast float %9920, %9912
  %9925 = fsub fast float %9921, %9913
  %9926 = fsub fast float %9922, %9914
  %9927 = fsub fast float %9923, %9915
  %9928 = fmul fast float %9924, %9918
  %9929 = fmul fast float %9925, %9918
  %9930 = fmul fast float %9926, %9918
  %9931 = fmul fast float %9927, %9918
  %9932 = fadd fast float %9928, %9912
  %9933 = fadd fast float %9929, %9913
  %9934 = fsub fast float -0.000000e+00, %9933
  %9935 = fadd fast float %9930, %9914
  %9936 = fadd fast float %9931, %9915
  %9937 = fmul fast float %9932, %9932
  %9938 = fsub fast float %9933, %9937
  %9939 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9938)  ; FMax(a,b)
  %9940 = fdiv fast float 1.000000e+00, %9939
  %9941 = fmul fast float %9933, %9932
  %9942 = fsub fast float %9935, %9941
  %9943 = fsub fast float %9892, %9932
  %9944 = fmul fast float %9892, %9892
  %9945 = fsub fast float %9944, %9933
  %9946 = fmul fast float %9943, %9940
  %9947 = fmul fast float %9946, %9942
  %9948 = fsub fast float %9945, %9947
  %9949 = fmul fast float %9933, %9933
  %9950 = fsub fast float %9936, %9949
  %9951 = fmul fast float %9942, %9942
  %9952 = fmul fast float %9951, %9940
  %9953 = fsub fast float %9950, %9952
  %9954 = fdiv fast float %9948, %9953
  %9955 = fmul fast float %9942, %9954
  %9956 = fsub fast float %9943, %9955
  %9957 = fmul fast float %9956, %9940
  %9958 = fmul fast float %9957, %9932
  %9959 = fsub fast float 1.000000e+00, %9958
  %9960 = fmul fast float %9933, %9954
  %9961 = fsub fast float %9959, %9960
  %9962 = fmul fast float %9957, %9957
  %9963 = fmul fast float %9954, 4.000000e+00
  %9964 = fmul fast float %9963, %9961
  %9965 = fsub fast float %9962, %9964
  %9966 = call float @dx.op.unary.f32(i32 24, float %9965)  ; Sqrt(value)
  %9967 = fcmp fast oge float %9957, 0.000000e+00
  %9968 = fsub fast float -0.000000e+00, %9966
  %9969 = select i1 %9967, float %9968, float %9966
  %9970 = fsub fast float %9969, %9957
  %9971 = fdiv fast float %9970, %9954
  %9972 = fdiv fast float %9961, %9970
  %9973 = fmul fast float %9971, 5.000000e-01
  %9974 = fmul fast float %9972, 2.000000e+00
  %9975 = select i1 %9967, float %9973, float %9974
  %9976 = select i1 %9967, float %9974, float %9973
  %9977 = call float @dx.op.binary.f32(i32 35, float %9975, float %9976)  ; FMax(a,b)
  %9978 = call float @dx.op.binary.f32(i32 36, float %9975, float %9976)  ; FMin(a,b)
  %9979 = fcmp fast ogt float %9892, %9978
  br i1 %9979, label %9980, label %9990

; <label>:9980                                    ; preds = %9917
  %9981 = fsub fast float %9892, %9978
  %9982 = fsub fast float %9977, %9978
  %9983 = fmul fast float %9981, %9982
  %9984 = fmul fast float %9977, %9892
  %9985 = fadd fast float %9977, %9892
  %9986 = fmul fast float %9985, %9932
  %9987 = fadd fast float %9984, %9933
  %9988 = fsub fast float %9987, %9986
  %9989 = fdiv fast float %9988, %9983
  br label %9990

; <label>:9990                                    ; preds = %9980, %9917
  %9991 = phi float [ %9989, %9980 ], [ 0.000000e+00, %9917 ]
  %9992 = fcmp fast ogt float %9892, %9977
  %9993 = fsub fast float %9892, %9977
  br i1 %9992, label %9994, label %10004

; <label>:9994                                    ; preds = %9990
  %9995 = fsub fast float %9977, %9978
  %9996 = fmul fast float %9995, %9993
  %9997 = fmul fast float %9978, %9892
  %9998 = fadd fast float %9978, %9892
  %9999 = fmul fast float %9998, %9932
  %10000 = fsub fast float %9934, %9997
  %10001 = fadd fast float %10000, %9999
  %10002 = fdiv fast float %10001, %9996
  %10003 = fadd fast float %10002, %9991
  br label %10004

; <label>:10004                                   ; preds = %9994, %9990
  %10005 = phi float [ %10003, %9994 ], [ %9991, %9990 ]
  %10006 = fsub fast float %9892, %9978
  %10007 = fmul fast float %10006, %9993
  %10008 = fmul fast float %9978, %9977
  %10009 = fadd fast float %9978, %9977
  %10010 = fmul fast float %10009, %9932
  %10011 = fadd fast float %10008, %9933
  %10012 = fsub fast float %10011, %10010
  %10013 = fdiv fast float %10012, %10007
  %10014 = call float @dx.op.unary.f32(i32 7, float %10005)  ; Saturate(value)
  %10015 = fcmp fast oeq float %8683, 0.000000e+00
  %10016 = extractvalue %dx.types.CBufRet.f32 %9800, 0
  %10017 = fcmp fast oeq float %10016, 0.000000e+00
  %10018 = or i1 %10015, %10017
  %10019 = fmul fast float %10016, 2.000000e+00
  %10020 = fadd fast float %9801, %9802
  %10021 = fdiv fast float %10020, %10019
  %10022 = call float @dx.op.unary.f32(i32 7, float %10021)  ; Saturate(value)
  %10023 = fmul fast float %10022, 2.000000e+00
  %10024 = fsub fast float 3.000000e+00, %10023
  %10025 = fmul fast float %10022, %10022
  %10026 = fmul fast float %10025, %10024
  %10027 = select i1 %10018, float 1.000000e+00, float %10026
  %10028 = fmul fast float %10013, %8683
  %10029 = fadd fast float %10014, %10028
  %10030 = call float @dx.op.unary.f32(i32 7, float %10029)  ; Saturate(value)
  %10031 = fmul fast float %10027, %10030
  br label %10032

; <label>:10032                                   ; preds = %10004, %9884
  %10033 = phi float [ %10031, %10004 ], [ 0.000000e+00, %9884 ]
  %10034 = fsub fast float 1.000000e+00, %10033
  %10035 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %46, float %9754, float %9755, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10036 = extractvalue %dx.types.ResRet.f32 %10035, 0
  %10037 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %10038 = extractvalue %dx.types.CBufRet.i32 %10037, 2
  %10039 = icmp eq i32 %10038, 0
  br i1 %10039, label %10045, label %10040

; <label>:10040                                   ; preds = %10032
  %10041 = call float @dx.op.unary.f32(i32 7, float %10033)  ; Saturate(value)
  %10042 = fadd fast float %10036, -1.000000e+00
  %10043 = fmul fast float %10041, %10042
  %10044 = fadd fast float %10043, 1.000000e+00
  br label %10045

; <label>:10045                                   ; preds = %10040, %10032
  %10046 = phi float [ %10044, %10040 ], [ %10034, %10032 ]
  br i1 %9808, label %10047, label %10065

; <label>:10047                                   ; preds = %10045
  %10048 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %10049 = extractvalue %dx.types.CBufRet.f32 %10048, 1
  %10050 = fsub fast float %9885, %10049
  %10051 = call float @dx.op.unary.f32(i32 7, float %10050)  ; Saturate(value)
  %10052 = fsub fast float %9885, %9807
  %10053 = call float @dx.op.unary.f32(i32 7, float %10052)  ; Saturate(value)
  %10054 = fsub fast float %10051, %10053
  %10055 = fsub fast float %9887, %10053
  %10056 = fdiv fast float %10055, %10054
  %10057 = call float @dx.op.unary.f32(i32 7, float %10056)  ; Saturate(value)
  %10058 = fmul fast float %10057, 2.000000e+00
  %10059 = fsub fast float 3.000000e+00, %10058
  %10060 = fsub fast float %10036, %10046
  %10061 = fmul fast float %10057, %10057
  %10062 = fmul fast float %10061, %10060
  %10063 = fmul fast float %10062, %10059
  %10064 = fadd fast float %10063, %10046
  br label %10065

; <label>:10065                                   ; preds = %10047, %10045
  %10066 = phi float [ %10064, %10047 ], [ %10046, %10045 ]
  %10067 = call float @dx.op.binary.f32(i32 35, float %10036, float %10066)  ; FMax(a,b)
  %10068 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %10069 = extractvalue %dx.types.CBufRet.i32 %10068, 2
  %10070 = and i32 %10069, 1
  %10071 = icmp eq i32 %10070, 0
  %10072 = fcmp fast une float %10067, 1.000000e+00
  %10073 = and i1 %10072, %10071
  br i1 %10073, label %10074, label %10093

; <label>:10074                                   ; preds = %10065
  %10075 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %46, float %9754, float %9755, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10076 = extractvalue %dx.types.ResRet.f32 %10075, 0
  %10077 = extractvalue %dx.types.ResRet.f32 %10075, 1
  %10078 = extractvalue %dx.types.ResRet.f32 %10075, 2
  %10079 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10080 = extractvalue %dx.types.CBufRet.f32 %10079, 1
  %10081 = fmul fast float %10080, %10076
  %10082 = fmul fast float %10080, %10077
  %10083 = fmul fast float %10080, %10078
  %10084 = fcmp fast ogt float %10036, 0x3FEFFF2E40000000
  %10085 = fsub fast float 1.000000e+00, %10067
  %10086 = fsub fast float 1.000000e+00, %10036
  %10087 = fdiv fast float %10085, %10086
  %10088 = call float @dx.op.unary.f32(i32 7, float %10087)  ; Saturate(value)
  %10089 = select i1 %10084, float 0.000000e+00, float %10088
  %10090 = fmul fast float %10081, %10089
  %10091 = fmul fast float %10082, %10089
  %10092 = fmul fast float %10083, %10089
  br label %10093

; <label>:10093                                   ; preds = %10074, %10065
  %10094 = phi float [ 0.000000e+00, %10065 ], [ %10090, %10074 ]
  %10095 = phi float [ 0.000000e+00, %10065 ], [ %10091, %10074 ]
  %10096 = phi float [ 0.000000e+00, %10065 ], [ %10092, %10074 ]
  %10097 = fmul fast float %10094, %8671
  %10098 = fmul fast float %10095, %8671
  %10099 = fmul fast float %10096, %8671
  %10100 = fmul fast float %10067, %9729
  %10101 = call float @dx.op.dot3.f32(i32 55, float %10067, float %10067, float %10067, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10102 = call float @dx.op.dot3.f32(i32 55, float %10097, float %10098, float %10099, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10103 = select i1 %228, float %10101, float %10067
  %10104 = select i1 %228, float 1.000000e+00, float %10067
  %10105 = select i1 %228, float %10102, float %10097
  %10106 = select i1 %228, float 0.000000e+00, float %10098
  %10107 = select i1 %228, float 0.000000e+00, float %10099
  %10108 = fmul fast float %10103, %9741
  %10109 = fmul fast float %10103, %9742
  %10110 = fmul fast float %10104, %9743
  %10111 = fadd fast float %10108, %10105
  %10112 = fadd fast float %10109, %10106
  %10113 = fadd fast float %10107, %10110
  %10114 = fmul fast float %10103, %9744
  %10115 = fmul fast float %10103, %9745
  %10116 = fmul fast float %10104, %9746
  br label %10117

; <label>:10117                                   ; preds = %10093, %9750, %9719, %8951
  %10118 = phi float [ %8956, %8951 ], [ %9741, %9719 ], [ %10111, %10093 ], [ %9741, %9750 ]
  %10119 = phi float [ %8957, %8951 ], [ %9742, %9719 ], [ %10112, %10093 ], [ %9742, %9750 ]
  %10120 = phi float [ %8958, %8951 ], [ %9743, %9719 ], [ %10113, %10093 ], [ %9743, %9750 ]
  %10121 = phi float [ %8959, %8951 ], [ %9744, %9719 ], [ %10114, %10093 ], [ %9744, %9750 ]
  %10122 = phi float [ %8960, %8951 ], [ %9745, %9719 ], [ %10115, %10093 ], [ %9745, %9750 ]
  %10123 = phi float [ %8961, %8951 ], [ %9746, %9719 ], [ %10116, %10093 ], [ %9746, %9750 ]
  %10124 = phi float [ %8962, %8951 ], [ %9729, %9719 ], [ %10100, %10093 ], [ %9729, %9750 ]
  %10125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %10126 = extractvalue %dx.types.CBufRet.f32 %10125, 2
  %10127 = extractvalue %dx.types.CBufRet.f32 %10125, 3
  %10128 = fmul fast float %10126, %104
  %10129 = fmul fast float %10127, %105
  %10130 = call float @dx.op.unary.f32(i32 7, float %10128)  ; Saturate(value)
  %10131 = call float @dx.op.unary.f32(i32 7, float %10129)  ; Saturate(value)
  %10132 = select i1 %8693, i32 2, i32 0
  %10133 = or i32 %10132, 1
  %10134 = uitofp i32 %10133 to float
  %10135 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %46, float %10130, float %10131, float %10134, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10136 = extractvalue %dx.types.ResRet.f32 %10135, 0
  %10137 = extractvalue %dx.types.ResRet.f32 %10135, 1
  %10138 = extractvalue %dx.types.ResRet.f32 %10135, 2
  %10139 = extractvalue %dx.types.ResRet.f32 %10135, 3
  %10140 = add nuw nsw i32 %10132, 2
  %10141 = uitofp i32 %10140 to float
  %10142 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %46, float %10130, float %10131, float %10141, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10143 = extractvalue %dx.types.ResRet.f32 %10142, 0
  %10144 = extractvalue %dx.types.ResRet.f32 %10142, 1
  %10145 = extractvalue %dx.types.ResRet.f32 %10142, 2
  %10146 = extractvalue %dx.types.ResRet.f32 %10142, 3
  %10147 = call float @dx.op.binary.f32(i32 35, float %10137, float %10138)  ; FMax(a,b)
  %10148 = call float @dx.op.binary.f32(i32 35, float %10136, float %10147)  ; FMax(a,b)
  %10149 = call float @dx.op.binary.f32(i32 35, float %10148, float %10139)  ; FMax(a,b)
  %10150 = call float @dx.op.binary.f32(i32 36, float %10144, float %10145)  ; FMin(a,b)
  %10151 = call float @dx.op.binary.f32(i32 36, float %10143, float %10150)  ; FMin(a,b)
  %10152 = call float @dx.op.binary.f32(i32 36, float %10151, float %10146)  ; FMin(a,b)
  %10153 = fmul fast float %10149, 2.550000e+02
  %10154 = fadd fast float %10153, 0x3F70101020000000
  %10155 = fptoui float %10154 to i32
  %10156 = fmul fast float %10152, 2.550000e+02
  %10157 = fadd fast float %10156, 0x3F70101020000000
  %10158 = fptoui float %10157 to i32
  %10159 = icmp ult i32 %10155, %10158
  br i1 %10159, label %10160, label %10329

; <label>:10160                                   ; preds = %10117
  %10161 = fcmp fast ogt float %91, 9.843750e-01
  %10162 = fadd fast float %8955, -4.000000e+00
  %10163 = select i1 %10161, float -4.000000e+00, float %10162
  %10164 = call float @dx.op.binary.f32(i32 35, float %10163, float 0.000000e+00)  ; FMax(a,b)
  %10165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %10166 = extractvalue %dx.types.CBufRet.f32 %10165, 0
  %10167 = fadd fast float %10166, %10164
  %10168 = extractvalue %dx.types.CBufRet.f32 %10165, 2
  %10169 = fmul fast float %10167, %10168
  %10170 = call float @dx.op.unary.f32(i32 23, float %10169)  ; Log(value)
  %10171 = extractvalue %dx.types.CBufRet.f32 %10165, 3
  %10172 = fmul fast float %10171, %10170
  %10173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %10174 = extractvalue %dx.types.CBufRet.f32 %10173, 2
  %10175 = fmul fast float %10172, %10174
  %10176 = call float @dx.op.unary.f32(i32 7, float %10175)  ; Saturate(value)
  %10177 = uitofp i32 %10155 to float
  %10178 = uitofp i32 %10158 to float
  %10179 = fadd fast float %10177, 5.000000e-01
  %10180 = fadd fast float %10178, 5.000000e-01
  %10181 = fmul fast float %10174, %10179
  %10182 = fmul fast float %10174, %10180
  %10183 = fadd fast float %10181, 0x3F0FFB4800000000
  %10184 = fadd fast float %10182, 0xBF0FFB4800000000
  %10185 = call float @dx.op.binary.f32(i32 35, float %10176, float %10183)  ; FMax(a,b)
  %10186 = call float @dx.op.binary.f32(i32 36, float %10185, float %10184)  ; FMin(a,b)
  %10187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %10188 = extractvalue %dx.types.CBufRet.f32 %10187, 1
  %10189 = extractvalue %dx.types.CBufRet.f32 %10187, 2
  %10190 = extractvalue %dx.types.CBufRet.f32 %10187, 0
  %10191 = select i1 %8693, float %10190, float 0.000000e+00
  %10192 = fmul fast float %10188, %10186
  %10193 = fadd fast float %10191, %10192
  %10194 = fadd fast float %10191, %10189
  %10195 = fsub fast float %10188, %10189
  %10196 = fadd fast float %10195, %10191
  %10197 = call float @dx.op.binary.f32(i32 35, float %10193, float %10194)  ; FMax(a,b)
  %10198 = call float @dx.op.binary.f32(i32 36, float %10197, float %10196)  ; FMin(a,b)
  %10199 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %44, float %10130, float %10131, float %10198, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10200 = extractvalue %dx.types.ResRet.f32 %10199, 0
  %10201 = extractvalue %dx.types.ResRet.f32 %10199, 1
  %10202 = extractvalue %dx.types.ResRet.f32 %10199, 2
  %10203 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %10204 = extractvalue %dx.types.CBufRet.i32 %10203, 0
  %10205 = extractvalue %dx.types.CBufRet.i32 %10203, 1
  %10206 = uitofp i32 %10204 to float
  %10207 = uitofp i32 %10205 to float
  %10208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %10209 = extractvalue %dx.types.CBufRet.f32 %10208, 0
  %10210 = extractvalue %dx.types.CBufRet.f32 %10208, 1
  %10211 = fmul fast float %10206, %10130
  %10212 = fmul fast float %10207, %10131
  %10213 = fadd fast float %10211, -5.000000e-01
  %10214 = fadd fast float %10212, -5.000000e-01
  %10215 = call float @dx.op.unary.f32(i32 22, float %10213)  ; Frc(value)
  %10216 = call float @dx.op.unary.f32(i32 22, float %10214)  ; Frc(value)
  %10217 = fmul fast float %10215, %10215
  %10218 = fmul fast float %10217, %10215
  %10219 = fsub fast float 3.000000e+00, %10215
  %10220 = fmul fast float %10217, %10219
  %10221 = fmul fast float %10215, 3.000000e+00
  %10222 = fmul fast float %10218, 3.000000e+00
  %10223 = fmul fast float %10217, 6.000000e+00
  %10224 = fsub fast float %10222, %10223
  %10225 = fadd fast float %10224, 4.000000e+00
  %10226 = fmul fast float %10225, 0x3FC5555560000000
  %10227 = fmul fast float %10218, -3.000000e+00
  %10228 = fadd fast float %10217, %10215
  %10229 = fmul fast float %10228, 3.000000e+00
  %10230 = fadd fast float %10227, 1.000000e+00
  %10231 = fadd fast float %10230, %10229
  %10232 = fmul fast float %10218, 0x3FC5555560000000
  %10233 = fmul fast float %10216, %10216
  %10234 = fmul fast float %10233, %10216
  %10235 = fsub fast float 3.000000e+00, %10216
  %10236 = fmul fast float %10233, %10235
  %10237 = fmul fast float %10216, 3.000000e+00
  %10238 = fmul fast float %10234, 3.000000e+00
  %10239 = fmul fast float %10233, 6.000000e+00
  %10240 = fsub fast float %10238, %10239
  %10241 = fadd fast float %10240, 4.000000e+00
  %10242 = fmul fast float %10241, 0x3FC5555560000000
  %10243 = fmul fast float %10234, -3.000000e+00
  %10244 = fadd fast float %10233, %10216
  %10245 = fmul fast float %10244, 3.000000e+00
  %10246 = fadd fast float %10243, 1.000000e+00
  %10247 = fadd fast float %10246, %10245
  %10248 = fmul fast float %10234, 0x3FC5555560000000
  %10249 = fadd fast float %10215, 1.000000e+00
  %10250 = fsub fast float 1.000000e+00, %10221
  %10251 = fadd fast float %10250, %10220
  %10252 = fadd fast float %10251, %10225
  %10253 = fmul fast float %10252, 0x3FC5555560000000
  %10254 = fdiv fast float %10226, %10253
  %10255 = fsub fast float %10249, %10254
  %10256 = fsub fast float 1.000000e+00, %10215
  %10257 = fadd fast float %10231, %10218
  %10258 = fmul fast float %10257, 0x3FC5555560000000
  %10259 = fdiv fast float %10232, %10258
  %10260 = fadd fast float %10256, %10259
  %10261 = fadd fast float %10216, 1.000000e+00
  %10262 = fsub fast float 1.000000e+00, %10237
  %10263 = fadd fast float %10262, %10236
  %10264 = fadd fast float %10263, %10241
  %10265 = fmul fast float %10264, 0x3FC5555560000000
  %10266 = fdiv fast float %10242, %10265
  %10267 = fsub fast float %10261, %10266
  %10268 = fsub fast float 1.000000e+00, %10216
  %10269 = fadd fast float %10247, %10234
  %10270 = fmul fast float %10269, 0x3FC5555560000000
  %10271 = fdiv fast float %10248, %10270
  %10272 = fadd fast float %10271, %10268
  %10273 = fmul fast float %10255, %10209
  %10274 = fsub fast float %10130, %10273
  %10275 = fmul fast float %10260, %10209
  %10276 = fadd fast float %10275, %10130
  %10277 = fmul fast float %10272, %10210
  %10278 = fadd fast float %10277, %10131
  %10279 = fmul fast float %10267, %10210
  %10280 = fsub fast float %10131, %10279
  %10281 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %44, float %10274, float %10280, float %10198, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10282 = extractvalue %dx.types.ResRet.f32 %10281, 0
  %10283 = extractvalue %dx.types.ResRet.f32 %10281, 1
  %10284 = extractvalue %dx.types.ResRet.f32 %10281, 2
  %10285 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %44, float %10276, float %10280, float %10198, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10286 = extractvalue %dx.types.ResRet.f32 %10285, 0
  %10287 = extractvalue %dx.types.ResRet.f32 %10285, 1
  %10288 = extractvalue %dx.types.ResRet.f32 %10285, 2
  %10289 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %44, float %10274, float %10278, float %10198, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10290 = extractvalue %dx.types.ResRet.f32 %10289, 0
  %10291 = extractvalue %dx.types.ResRet.f32 %10289, 1
  %10292 = extractvalue %dx.types.ResRet.f32 %10289, 2
  %10293 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %44, float %10276, float %10278, float %10198, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10294 = extractvalue %dx.types.ResRet.f32 %10293, 0
  %10295 = extractvalue %dx.types.ResRet.f32 %10293, 1
  %10296 = extractvalue %dx.types.ResRet.f32 %10293, 2
  %10297 = fsub fast float %10290, %10282
  %10298 = fsub fast float %10291, %10283
  %10299 = fsub fast float %10292, %10284
  %10300 = fmul fast float %10297, %10270
  %10301 = fmul fast float %10298, %10270
  %10302 = fmul fast float %10299, %10270
  %10303 = fadd fast float %10300, %10282
  %10304 = fadd fast float %10301, %10283
  %10305 = fadd fast float %10302, %10284
  %10306 = fsub fast float %10294, %10286
  %10307 = fsub fast float %10295, %10287
  %10308 = fsub fast float %10296, %10288
  %10309 = fmul fast float %10306, %10270
  %10310 = fmul fast float %10307, %10270
  %10311 = fmul fast float %10308, %10270
  %10312 = fsub fast float %10286, %10303
  %10313 = fadd fast float %10312, %10309
  %10314 = fsub fast float %10287, %10304
  %10315 = fadd fast float %10314, %10310
  %10316 = fsub fast float %10288, %10305
  %10317 = fadd fast float %10316, %10311
  %10318 = fmul fast float %10313, %10258
  %10319 = fmul fast float %10315, %10258
  %10320 = fmul fast float %10317, %10258
  %10321 = fadd fast float %10318, %10303
  %10322 = fadd fast float %10319, %10304
  %10323 = fadd fast float %10320, %10305
  %10324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10325 = extractvalue %dx.types.CBufRet.f32 %10324, 1
  %10326 = fmul fast float %10321, %10325
  %10327 = fmul fast float %10322, %10325
  %10328 = fmul fast float %10323, %10325
  br label %10329

; <label>:10329                                   ; preds = %10160, %10117
  %10330 = phi float [ %10200, %10160 ], [ 1.000000e+00, %10117 ]
  %10331 = phi float [ %10201, %10160 ], [ 1.000000e+00, %10117 ]
  %10332 = phi float [ %10202, %10160 ], [ 1.000000e+00, %10117 ]
  %10333 = phi float [ %10326, %10160 ], [ 0.000000e+00, %10117 ]
  %10334 = phi float [ %10327, %10160 ], [ 0.000000e+00, %10117 ]
  %10335 = phi float [ %10328, %10160 ], [ 0.000000e+00, %10117 ]
  %10336 = fmul fast float %10333, %8671
  %10337 = fmul fast float %10334, %8671
  %10338 = fmul fast float %10335, %8671
  %10339 = fmul fast float %10330, %10124
  %10340 = call float @dx.op.dot3.f32(i32 55, float %10330, float %10331, float %10332, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10341 = call float @dx.op.dot3.f32(i32 55, float %10336, float %10337, float %10338, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10342 = select i1 %228, float %10340, float %10330
  %10343 = select i1 %228, float %10340, float %10331
  %10344 = select i1 %228, float 1.000000e+00, float %10332
  %10345 = select i1 %228, float %10341, float %10336
  %10346 = select i1 %228, float 0.000000e+00, float %10337
  %10347 = select i1 %228, float 0.000000e+00, float %10338
  %10348 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %10349 = extractvalue %dx.types.CBufRet.i32 %10348, 3
  %10350 = and i32 %10349, 3
  %10351 = icmp ne i32 %10350, 0
  %10352 = and i32 %10349, 4
  %10353 = icmp ne i32 %10352, 0
  %10354 = and i1 %10351, %10353
  %10355 = and i1 %228, %10354
  br i1 %10355, label %10356, label %10362

; <label>:10356                                   ; preds = %10329
  %10357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %10358 = extractvalue %dx.types.CBufRet.f32 %10357, 1
  %10359 = fadd fast float %10339, -1.000000e+00
  %10360 = fmul fast float %10358, %10359
  %10361 = fadd fast float %10360, 1.000000e+00
  br label %10362

; <label>:10362                                   ; preds = %10356, %10329
  %10363 = phi float [ %10361, %10356 ], [ %10339, %10329 ]
  %10364 = fadd fast float %10121, %10118
  %10365 = fmul fast float %10342, %10364
  %10366 = fadd fast float %10365, %10345
  %10367 = fadd fast float %10122, %10119
  %10368 = fmul fast float %10343, %10367
  %10369 = fadd fast float %10368, %10346
  %10370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10371 = extractvalue %dx.types.CBufRet.f32 %10370, 0
  br i1 %228, label %10372, label %10395

; <label>:10372                                   ; preds = %10362
  %10373 = fadd fast float %10366, %10369
  %10374 = fmul fast float %10371, %10373
  %10375 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %10376 = extractvalue %dx.types.CBufRet.f32 %10375, 3
  %10377 = extractvalue %dx.types.CBufRet.f32 %8675, 1
  %10378 = fsub fast float %8680, %8674
  %10379 = fadd fast float %10378, %8681
  %10380 = fsub fast float %10379, %10377
  %10381 = extractvalue %dx.types.CBufRet.f32 %8675, 2
  %10382 = fmul fast float %10380, %10381
  %10383 = call float @dx.op.unary.f32(i32 7, float %10382)  ; Saturate(value)
  %10384 = fsub fast float %10383, %10376
  %10385 = fmul fast float %10384, %10363
  %10386 = fadd fast float %10385, %10376
  %10387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %10388 = extractvalue %dx.types.CBufRet.f32 %10387, 0
  %10389 = fsub fast float %10386, %10388
  %10390 = fmul fast float %10389, 1.000000e+01
  %10391 = call float @dx.op.unary.f32(i32 7, float %10390)  ; Saturate(value)
  %10392 = fmul fast float %10391, %8670
  %10393 = fadd fast float %10392, %8671
  %10394 = fmul fast float %10393, %10386
  br label %10419

; <label>:10395                                   ; preds = %10362
  %10396 = fadd fast float %10123, %10120
  %10397 = fmul fast float %10344, %10396
  %10398 = fadd fast float %10397, %10347
  %10399 = fmul fast float %10371, %10366
  %10400 = fmul fast float %10371, %10369
  %10401 = fmul fast float %10371, %10398
  %10402 = call float @dx.op.binary.f32(i32 35, float %10400, float %10401)  ; FMax(a,b)
  %10403 = call float @dx.op.binary.f32(i32 35, float %10399, float %10402)  ; FMax(a,b)
  %10404 = call float @dx.op.binary.f32(i32 35, float %10403, float %8671)  ; FMax(a,b)
  %10405 = fcmp fast ugt float %10404, 0x3F10000000000000
  br i1 %10405, label %10407, label %10406

; <label>:10406                                   ; preds = %10395
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %10407

; <label>:10407                                   ; preds = %10406, %10395
  %10408 = add i32 %60, 356
  %10409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %10408, i32 undef)  ; BufferLoad(srv,index,wot)
  %10410 = extractvalue %dx.types.ResRet.i32 %10409, 0
  %10411 = and i32 %10410, 32
  %10412 = icmp eq i32 %10411, 0
  br i1 %10412, label %10419, label %10413

; <label>:10413                                   ; preds = %10407
  %10414 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %10415 = extractvalue %dx.types.CBufRet.f32 %10414, 0
  %10416 = fmul fast float %10415, 0x3FE99999A0000000
  %10417 = fadd fast float %10415, %10399
  %10418 = fadd fast float %10416, %10401
  br label %10419

; <label>:10419                                   ; preds = %10413, %10407, %10372
  %10420 = phi float [ %10374, %10372 ], [ %10417, %10413 ], [ %10399, %10407 ]
  %10421 = phi float [ %10394, %10372 ], [ %10400, %10413 ], [ %10400, %10407 ]
  %10422 = phi float [ %10393, %10372 ], [ %10418, %10413 ], [ %10401, %10407 ]
  %10423 = phi float [ %10393, %10372 ], [ %8671, %10413 ], [ %8671, %10407 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %10424 = call float @dx.op.binary.f32(i32 36, float %10420, float 3.225500e+04)  ; FMin(a,b)
  %10425 = call float @dx.op.binary.f32(i32 36, float %10421, float 3.225500e+04)  ; FMin(a,b)
  %10426 = call float @dx.op.binary.f32(i32 36, float %10422, float 3.225500e+04)  ; FMin(a,b)
  %10427 = call float @dx.op.binary.f32(i32 36, float %10423, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %10424)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %10425)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %10426)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %10427)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #2

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
!65 = !{[42 x i32] [i32 40, i32 4, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 7, i32 7, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15]}
!66 = !{void ()* @ps_main, !"ps_main", !67, !4, !87}
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
!85 = !{!86}
!86 = !{i32 0, !"SV_Target", i8 9, i8 16, !70, i8 0, i32 1, i8 4, i32 0, i8 0, !71}
!87 = !{i32 0, i64 16}
!88 = !{!89, !89, i64 0}
!89 = !{!"float", !90, i64 0}
!90 = !{!"omnipotent char", !91, i64 0}
!91 = !{!"Simple C/C++ TBAA"}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 1}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 1}
!94 = !{!95, !95, i64 0}
!95 = !{!"int", !90, i64 0}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 1}
!97 = distinct !{!97, !98}
!98 = !{!"llvm.loop.unroll.disable"}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 1}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 1}
!101 = distinct !{!101, !"dx.controlflow.hints", i32 1}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 1}
!103 = distinct !{!103, !"dx.controlflow.hints", i32 1}
!104 = !{!105, !107, !109, !111}
!105 = distinct !{!105, !106, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!106 = distinct !{!106, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!107 = distinct !{!107, !108, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!108 = distinct !{!108, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!109 = distinct !{!109, !110, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!110 = distinct !{!110, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!111 = distinct !{!111, !112, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!112 = distinct !{!112, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!113 = distinct !{!113, !"dx.controlflow.hints", i32 1}
!114 = distinct !{!114, !98}
!115 = distinct !{!115, !98}
!116 = distinct !{!116, !"dx.controlflow.hints", i32 1}
!117 = distinct !{!117, !"dx.controlflow.hints", i32 1}
!118 = distinct !{!118, !"dx.controlflow.hints", i32 1}
!119 = distinct !{!119, !"dx.controlflow.hints", i32 1}
!120 = distinct !{!120, !"dx.controlflow.hints", i32 1}
!121 = distinct !{!121, !"dx.controlflow.hints", i32 1}
!122 = distinct !{!122, !"dx.controlflow.hints", i32 1}
!123 = !{!124, !126, !128, !129, !131, !132, !133, !135, !136, !137}
!124 = distinct !{!124, !125, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!125 = distinct !{!125, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!126 = distinct !{!126, !127, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!127 = distinct !{!127, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!128 = distinct !{!128, !127, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!129 = distinct !{!129, !130, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!130 = distinct !{!130, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!131 = distinct !{!131, !130, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!132 = distinct !{!132, !130, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!133 = distinct !{!133, !134, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!134 = distinct !{!134, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!135 = distinct !{!135, !134, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!136 = distinct !{!136, !134, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!137 = distinct !{!137, !138, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!138 = distinct !{!138, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!139 = !{!140}
!140 = distinct !{!140, !141, !"\01?sort@@YAXAIAM00@Z: %c"}
!141 = distinct !{!141, !"\01?sort@@YAXAIAM00@Z"}
!142 = !{!143, !144, !124, !126, !128, !129, !131, !132, !133, !135, !136, !137}
!143 = distinct !{!143, !141, !"\01?sort@@YAXAIAM00@Z: %a"}
!144 = distinct !{!144, !141, !"\01?sort@@YAXAIAM00@Z: %b"}
!145 = !{!144}
!146 = !{!143, !140, !124, !126, !128, !129, !131, !132, !133, !135, !136, !137}
!147 = !{!143}
!148 = !{!144, !140, !124, !126, !128, !129, !131, !132, !133, !135, !136, !137}
!149 = !{!150}
!150 = distinct !{!150, !151, !"\01?sort@@YAXAIAM00@Z: %c"}
!151 = distinct !{!151, !"\01?sort@@YAXAIAM00@Z"}
!152 = !{!153, !154, !124, !126, !128, !129, !131, !132, !133, !135, !136, !137}
!153 = distinct !{!153, !151, !"\01?sort@@YAXAIAM00@Z: %a"}
!154 = distinct !{!154, !151, !"\01?sort@@YAXAIAM00@Z: %b"}
!155 = !{!154}
!156 = !{!153, !150, !124, !126, !128, !129, !131, !132, !133, !135, !136, !137}
!157 = !{!153}
!158 = !{!154, !150, !124, !126, !128, !129, !131, !132, !133, !135, !136, !137}
!159 = distinct !{!159, !"dx.controlflow.hints", i32 1}
!160 = distinct !{!160, !"dx.controlflow.hints", i32 2}
!161 = distinct !{!161, !"dx.controlflow.hints", i32 1}
!162 = distinct !{!162, !"dx.controlflow.hints", i32 1}
!163 = distinct !{!163, !"dx.controlflow.hints", i32 1}
!164 = distinct !{!164, !"dx.controlflow.hints", i32 1}
!165 = distinct !{!165, !"dx.controlflow.hints", i32 1}
!166 = distinct !{!166, !"dx.controlflow.hints", i32 1}
!167 = distinct !{!167, !"dx.controlflow.hints", i32 1}
!168 = distinct !{!168, !"dx.controlflow.hints", i32 1}
!169 = distinct !{!169, !"dx.controlflow.hints", i32 1}

