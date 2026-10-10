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
; shader hash: d171f3769da44c18751f91a32fa0873a
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
  br i1 %3735, label %3736, label %4244

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
  br i1 %3787, label %4213, label %3788

; <label>:3788                                    ; preds = %3736
  %3789 = and i32 %3784, 1023
  br label %3790

; <label>:3790                                    ; preds = %3916, %3788
  %3791 = phi i32 [ %3866, %3916 ], [ 0, %3788 ]
  %3792 = phi float [ %3917, %3916 ], [ 0.000000e+00, %3788 ]
  %3793 = phi float [ %3918, %3916 ], [ %3705, %3788 ]
  %3794 = phi float [ %3919, %3916 ], [ %3703, %3788 ]
  %3795 = phi float [ %3920, %3916 ], [ 0.000000e+00, %3788 ]
  %3796 = phi float [ %3921, %3916 ], [ 0.000000e+00, %3788 ]
  %3797 = phi float [ %3922, %3916 ], [ %3697, %3788 ]
  %3798 = phi float [ %3923, %3916 ], [ %3698, %3788 ]
  %3799 = phi float [ %3924, %3916 ], [ %3699, %3788 ]
  %3800 = phi float [ %3925, %3916 ], [ %3731, %3788 ]
  %3801 = phi float [ %3926, %3916 ], [ %3732, %3788 ]
  %3802 = phi float [ %3927, %3916 ], [ %3733, %3788 ]
  %3803 = phi float [ %3928, %3916 ], [ %3702, %3788 ]
  %3804 = phi float [ %3929, %3916 ], [ %3701, %3788 ]
  %3805 = phi float [ %3930, %3916 ], [ 0.000000e+00, %3788 ]
  %3806 = phi float [ %3931, %3916 ], [ %3700, %3788 ]
  %3807 = phi float [ %3932, %3916 ], [ %3694, %3788 ]
  %3808 = phi float [ %3933, %3916 ], [ %3695, %3788 ]
  %3809 = phi float [ %3934, %3916 ], [ %3696, %3788 ]
  %3810 = add nuw nsw i32 %3791, %3786
  %3811 = shl i32 %3810, 2
  %3812 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %3811, i32 undef)  ; BufferLoad(srv,index,wot)
  %3813 = extractvalue %dx.types.ResRet.i32 %3812, 0
  %3814 = shl i32 %3813, 8
  %3815 = or i32 %3814, 48
  %3816 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3815, i32 undef)  ; BufferLoad(srv,index,wot)
  %3817 = extractvalue %dx.types.ResRet.f32 %3816, 0
  %3818 = extractvalue %dx.types.ResRet.f32 %3816, 1
  %3819 = extractvalue %dx.types.ResRet.f32 %3816, 2
  %3820 = extractvalue %dx.types.ResRet.f32 %3816, 3
  %3821 = or i32 %3814, 64
  %3822 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3821, i32 undef)  ; BufferLoad(srv,index,wot)
  %3823 = extractvalue %dx.types.ResRet.i32 %3822, 0
  %3824 = extractvalue %dx.types.ResRet.i32 %3822, 1
  %3825 = or i32 %3814, 80
  %3826 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3825, i32 undef)  ; BufferLoad(srv,index,wot)
  %3827 = extractvalue %dx.types.ResRet.f32 %3826, 2
  %3828 = extractvalue %dx.types.ResRet.f32 %3826, 3
  %3829 = or i32 %3814, 96
  %3830 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3829, i32 undef)  ; BufferLoad(srv,index,wot)
  %3831 = extractvalue %dx.types.ResRet.f32 %3830, 0
  %3832 = extractvalue %dx.types.ResRet.f32 %3830, 1
  %3833 = extractvalue %dx.types.ResRet.f32 %3830, 2
  %3834 = extractvalue %dx.types.ResRet.f32 %3830, 3
  %3835 = or i32 %3814, 112
  %3836 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3835, i32 undef)  ; BufferLoad(srv,index,wot)
  %3837 = extractvalue %dx.types.ResRet.f32 %3836, 2
  %3838 = or i32 %3814, 128
  %3839 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3838, i32 undef)  ; BufferLoad(srv,index,wot)
  %3840 = extractvalue %dx.types.ResRet.f32 %3839, 0
  %3841 = extractvalue %dx.types.ResRet.f32 %3839, 1
  %3842 = extractvalue %dx.types.ResRet.f32 %3839, 2
  %3843 = extractvalue %dx.types.ResRet.f32 %3839, 3
  %3844 = or i32 %3814, 144
  %3845 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3844, i32 undef)  ; BufferLoad(srv,index,wot)
  %3846 = extractvalue %dx.types.ResRet.f32 %3845, 0
  %3847 = extractvalue %dx.types.ResRet.f32 %3845, 1
  %3848 = extractvalue %dx.types.ResRet.f32 %3845, 2
  %3849 = extractvalue %dx.types.ResRet.f32 %3845, 3
  %3850 = or i32 %3814, 160
  %3851 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3850, i32 undef)  ; BufferLoad(srv,index,wot)
  %3852 = extractvalue %dx.types.ResRet.f32 %3851, 0
  %3853 = extractvalue %dx.types.ResRet.f32 %3851, 1
  %3854 = extractvalue %dx.types.ResRet.f32 %3851, 2
  %3855 = extractvalue %dx.types.ResRet.f32 %3851, 3
  %3856 = or i32 %3814, 192
  %3857 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3856, i32 undef)  ; BufferLoad(srv,index,wot)
  %3858 = extractvalue %dx.types.ResRet.i32 %3857, 0
  %3859 = or i32 %3814, 208
  %3860 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3859, i32 undef)  ; BufferLoad(srv,index,wot)
  %3861 = extractvalue %dx.types.ResRet.f32 %3860, 0
  %3862 = or i32 %3814, 248
  %3863 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3862, i32 undef)  ; BufferLoad(srv,index,wot)
  %3864 = extractvalue %dx.types.ResRet.f32 %3863, 0
  %3865 = extractvalue %dx.types.ResRet.f32 %3863, 1
  %3866 = add nuw nsw i32 %3791, 1
  %3867 = bitcast float %3820 to i32
  %3868 = and i32 %3867, 512
  %3869 = icmp eq i32 %3868, 0
  %3870 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3814, i32 undef)  ; BufferLoad(srv,index,wot)
  %3871 = extractvalue %dx.types.ResRet.f32 %3870, 0
  %3872 = extractvalue %dx.types.ResRet.f32 %3870, 1
  %3873 = extractvalue %dx.types.ResRet.f32 %3870, 2
  %3874 = extractvalue %dx.types.ResRet.f32 %3870, 3
  %3875 = call float @dx.op.dot4.f32(i32 56, float %3871, float %3872, float %3873, float %3874, float %167, float %168, float %169, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3876 = or i32 %3814, 16
  %3877 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3876, i32 undef)  ; BufferLoad(srv,index,wot)
  %3878 = extractvalue %dx.types.ResRet.f32 %3877, 0
  %3879 = extractvalue %dx.types.ResRet.f32 %3877, 1
  %3880 = extractvalue %dx.types.ResRet.f32 %3877, 2
  %3881 = extractvalue %dx.types.ResRet.f32 %3877, 3
  %3882 = call float @dx.op.dot4.f32(i32 56, float %3878, float %3879, float %3880, float %3881, float %167, float %168, float %169, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3883 = or i32 %3814, 32
  %3884 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3883, i32 undef)  ; BufferLoad(srv,index,wot)
  %3885 = extractvalue %dx.types.ResRet.f32 %3884, 0
  %3886 = extractvalue %dx.types.ResRet.f32 %3884, 1
  %3887 = extractvalue %dx.types.ResRet.f32 %3884, 2
  %3888 = extractvalue %dx.types.ResRet.f32 %3884, 3
  %3889 = call float @dx.op.dot4.f32(i32 56, float %3885, float %3886, float %3887, float %3888, float %167, float %168, float %169, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3890 = call float @dx.op.unary.f32(i32 27, float %3875)  ; Round_ni(value)
  %3891 = call float @dx.op.unary.f32(i32 6, float %3890)  ; FAbs(value)
  %3892 = call float @dx.op.unary.f32(i32 27, float %3882)  ; Round_ni(value)
  %3893 = call float @dx.op.unary.f32(i32 6, float %3892)  ; FAbs(value)
  %3894 = call float @dx.op.unary.f32(i32 6, float %3889)  ; FAbs(value)
  %3895 = call float @dx.op.unary.f32(i32 27, float %3894)  ; Round_ni(value)
  %3896 = fadd fast float %3893, %3891
  %3897 = fadd fast float %3896, %3895
  %3898 = fcmp fast oeq float %3897, 0.000000e+00
  %3899 = call float @dx.op.dot4.f32(i32 56, float %3871, float %3872, float %3873, float %3874, float %3743, float %3744, float %3745, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3900 = call float @dx.op.dot4.f32(i32 56, float %3878, float %3879, float %3880, float %3881, float %3743, float %3744, float %3745, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3901 = call float @dx.op.dot4.f32(i32 56, float %3871, float %3872, float %3873, float %3874, float %3746, float %3747, float %3748, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3902 = call float @dx.op.dot4.f32(i32 56, float %3878, float %3879, float %3880, float %3881, float %3746, float %3747, float %3748, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3903 = fsub fast float %3899, %3875
  %3904 = fsub fast float %3901, %3875
  %3905 = fsub fast float %3900, %3882
  %3906 = fsub fast float %3902, %3882
  %3907 = call float @dx.op.dot3.f32(i32 55, float %3817, float %3818, float %3819, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %3908 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3909 = extractvalue %dx.types.CBufRet.f32 %3908, 2
  %3910 = fadd fast float %3909, %3907
  %3911 = call float @dx.op.unary.f32(i32 7, float %3910)  ; Saturate(value)
  %3912 = extractvalue %dx.types.CBufRet.f32 %3908, 0
  %3913 = fcmp fast ogt float %3911, %3912
  %3914 = and i1 %3898, %3913
  %3915 = and i1 %3869, %3914
  br i1 %3915, label %3936, label %3916

; <label>:3916                                    ; preds = %4199, %4017, %3936, %3790
  %3917 = phi float [ %3792, %3936 ], [ %4020, %4017 ], [ %4020, %4199 ], [ %3792, %3790 ]
  %3918 = phi float [ %3793, %3936 ], [ %3793, %4017 ], [ %4174, %4199 ], [ %3793, %3790 ]
  %3919 = phi float [ %3794, %3936 ], [ %3794, %4017 ], [ %4172, %4199 ], [ %3794, %3790 ]
  %3920 = phi float [ %3795, %3936 ], [ %3795, %4017 ], [ %4144, %4199 ], [ %3795, %3790 ]
  %3921 = phi float [ %3796, %3936 ], [ %3796, %4017 ], [ %4142, %4199 ], [ %3796, %3790 ]
  %3922 = phi float [ %3797, %3936 ], [ %3797, %4017 ], [ %4209, %4199 ], [ %3797, %3790 ]
  %3923 = phi float [ %3798, %3936 ], [ %3798, %4017 ], [ %4210, %4199 ], [ %3798, %3790 ]
  %3924 = phi float [ %3799, %3936 ], [ %3799, %4017 ], [ %4211, %4199 ], [ %3799, %3790 ]
  %3925 = phi float [ %3800, %3936 ], [ %3800, %4017 ], [ %4123, %4199 ], [ %3800, %3790 ]
  %3926 = phi float [ %3801, %3936 ], [ %3801, %4017 ], [ %4124, %4199 ], [ %3801, %3790 ]
  %3927 = phi float [ %3802, %3936 ], [ %3802, %4017 ], [ %4125, %4199 ], [ %3802, %3790 ]
  %3928 = phi float [ %3803, %3936 ], [ %3803, %4017 ], [ %4152, %4199 ], [ %3803, %3790 ]
  %3929 = phi float [ %3804, %3936 ], [ %3804, %4017 ], [ %4149, %4199 ], [ %3804, %3790 ]
  %3930 = phi float [ %3805, %3936 ], [ %3805, %4017 ], [ %4146, %4199 ], [ %3805, %3790 ]
  %3931 = phi float [ %3806, %3936 ], [ %3806, %4017 ], [ %4140, %4199 ], [ %3806, %3790 ]
  %3932 = phi float [ %3807, %3936 ], [ %3807, %4017 ], [ %4135, %4199 ], [ %3807, %3790 ]
  %3933 = phi float [ %3808, %3936 ], [ %3808, %4017 ], [ %4136, %4199 ], [ %3808, %3790 ]
  %3934 = phi float [ %3809, %3936 ], [ %3809, %4017 ], [ %4137, %4199 ], [ %3809, %3790 ]
  %3935 = icmp eq i32 %3866, %3789
  br i1 %3935, label %4212, label %3790

; <label>:3936                                    ; preds = %3790
  %3937 = extractvalue %dx.types.ResRet.f32 %3836, 3
  %3938 = extractvalue %dx.types.ResRet.f32 %3836, 1
  %3939 = extractvalue %dx.types.ResRet.f32 %3836, 0
  %3940 = extractvalue %dx.types.ResRet.f32 %3826, 1
  %3941 = extractvalue %dx.types.ResRet.f32 %3826, 0
  %3942 = extractvalue %dx.types.ResRet.i32 %3822, 3
  %3943 = extractvalue %dx.types.ResRet.i32 %3822, 2
  %3944 = add i32 %3942, 0
  %3945 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3944, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3946 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3947 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3945, %dx.types.Handle %3946, float %3875, float %3882, float undef, float undef, i32 0, i32 0, i32 undef, float %3903, float %3905, float undef, float %3904, float %3906, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3948 = extractvalue %dx.types.ResRet.f32 %3947, 0
  %3949 = fmul fast float %3948, %3941
  %3950 = fadd fast float %3949, %3940
  %3951 = call float @dx.op.unary.f32(i32 7, float %3950)  ; Saturate(value)
  %3952 = fmul fast float %3875, %3831
  %3953 = call float @dx.op.tertiary.f32(i32 46, float %3832, float %3882, float %3952)  ; FMad(a,b,c)
  %3954 = fadd fast float %3953, %3939
  %3955 = fmul fast float %3875, %3833
  %3956 = call float @dx.op.tertiary.f32(i32 46, float %3834, float %3882, float %3955)  ; FMad(a,b,c)
  %3957 = fadd fast float %3956, %3938
  %3958 = fmul fast float %3903, %3831
  %3959 = call float @dx.op.tertiary.f32(i32 46, float %3832, float %3905, float %3958)  ; FMad(a,b,c)
  %3960 = fmul fast float %3903, %3833
  %3961 = call float @dx.op.tertiary.f32(i32 46, float %3834, float %3905, float %3960)  ; FMad(a,b,c)
  %3962 = fmul fast float %3904, %3831
  %3963 = call float @dx.op.tertiary.f32(i32 46, float %3832, float %3906, float %3962)  ; FMad(a,b,c)
  %3964 = fmul fast float %3904, %3833
  %3965 = call float @dx.op.tertiary.f32(i32 46, float %3834, float %3906, float %3964)  ; FMad(a,b,c)
  %3966 = add i32 %3943, 0
  %3967 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3966, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3968 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3967, %dx.types.Handle %3946, float %3954, float %3957, float undef, float undef, i32 0, i32 0, i32 undef, float %3959, float %3961, float undef, float %3963, float %3965, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3969 = extractvalue %dx.types.ResRet.f32 %3968, 0
  %3970 = and i32 %3867, 1024
  %3971 = icmp ne i32 %3970, 0
  %3972 = fcmp fast ogt float %3969, 0x3FE0101020000000
  %3973 = uitofp i1 %3972 to float
  %3974 = select i1 %3971, float %3973, float %3969
  %3975 = and i32 %3867, 8192
  %3976 = icmp ne i32 %3975, 0
  %3977 = select i1 %3976, float %3937, float 1.000000e+00
  %3978 = fmul fast float %3875, 2.000000e+00
  %3979 = fadd fast float %3978, -1.000000e+00
  %3980 = call float @dx.op.unary.f32(i32 6, float %3979)  ; FAbs(value)
  %3981 = fmul fast float %3980, %3864
  %3982 = fsub fast float %3981, %3864
  %3983 = call float @dx.op.unary.f32(i32 7, float %3982)  ; Saturate(value)
  %3984 = fmul fast float %3882, 2.000000e+00
  %3985 = fadd fast float %3984, -1.000000e+00
  %3986 = call float @dx.op.unary.f32(i32 6, float %3985)  ; FAbs(value)
  %3987 = fmul fast float %3986, %3865
  %3988 = fsub fast float %3987, %3865
  %3989 = call float @dx.op.unary.f32(i32 7, float %3988)  ; Saturate(value)
  %3990 = fmul fast float %3894, %3827
  %3991 = fsub fast float %3990, %3827
  %3992 = call float @dx.op.unary.f32(i32 7, float %3991)  ; Saturate(value)
  %3993 = fmul fast float %3951, %3977
  %3994 = fmul fast float %3993, %3948
  %3995 = fmul fast float %3994, %3983
  %3996 = fmul fast float %3995, %3974
  %3997 = fmul fast float %3996, %3989
  %3998 = fmul fast float %3997, %3992
  %3999 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4000 = extractvalue %dx.types.CBufRet.f32 %3999, 1
  %4001 = extractvalue %dx.types.CBufRet.f32 %3999, 0
  %4002 = fsub fast float %3911, %4001
  %4003 = fmul fast float %4002, %4000
  %4004 = call float @dx.op.unary.f32(i32 7, float %4003)  ; Saturate(value)
  %4005 = fmul fast float %3998, %3828
  %4006 = fadd fast float %3998, %3828
  %4007 = fmul fast float %4006, %3837
  %4008 = fsub fast float %4007, %3837
  %4009 = call float @dx.op.unary.f32(i32 7, float %4008)  ; Saturate(value)
  %4010 = and i32 %3867, 128
  %4011 = icmp ne i32 %4010, 0
  %4012 = select i1 %4011, float %4009, float %4005
  %4013 = fmul fast float %4012, %4004
  %4014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4015 = extractvalue %dx.types.CBufRet.f32 %4014, 0
  %4016 = fcmp fast ugt float %4013, %4015
  br i1 %4016, label %4017, label %3916

; <label>:4017                                    ; preds = %3936
  %4018 = select i1 %3976, float %4013, float 0.000000e+00
  %4019 = fadd fast float %4018, %3792
  %4020 = call float @dx.op.unary.f32(i32 7, float %4019)  ; Saturate(value)
  br i1 %3976, label %3916, label %4021

; <label>:4021                                    ; preds = %4017
  %4022 = and i32 %3867, 4
  %4023 = and i32 %3867, 8
  %4024 = add i32 %3823, 0
  %4025 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4024, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4026 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4027 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4025, %dx.types.Handle %4026, float %3954, float %3957, float undef, float undef, i32 0, i32 0, i32 undef, float %3959, float %3961, float undef, float %3963, float %3965, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4028 = extractvalue %dx.types.ResRet.f32 %4027, 0
  %4029 = extractvalue %dx.types.ResRet.f32 %4027, 1
  %4030 = extractvalue %dx.types.ResRet.f32 %4027, 2
  %4031 = extractvalue %dx.types.ResRet.f32 %4027, 3
  %4032 = bitcast float %3849 to i32
  %4033 = and i32 %4032, 255
  %4034 = uitofp i32 %4033 to float
  %4035 = lshr i32 %4032, 8
  %4036 = and i32 %4035, 255
  %4037 = uitofp i32 %4036 to float
  %4038 = fmul fast float %4031, %4034
  %4039 = fadd fast float %4038, %4037
  %4040 = fmul fast float %4039, 0x3F70101000000000
  %4041 = add i32 %3824, 0
  %4042 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4041, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4043 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4042, %dx.types.Handle %4026, float %3954, float %3957, float undef, float undef, i32 0, i32 0, i32 undef, float %3959, float %3961, float undef, float %3963, float %3965, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4044 = extractvalue %dx.types.ResRet.f32 %4043, 0
  %4045 = extractvalue %dx.types.ResRet.f32 %4043, 1
  %4046 = extractvalue %dx.types.ResRet.f32 %4043, 2
  %4047 = extractvalue %dx.types.ResRet.f32 %4043, 3
  %4048 = bitcast float %3843 to i32
  %4049 = and i32 %4048, 255
  %4050 = uitofp i32 %4049 to float
  %4051 = lshr i32 %4048, 8
  %4052 = and i32 %4051, 255
  %4053 = uitofp i32 %4052 to float
  %4054 = lshr i32 %4048, 16
  %4055 = and i32 %4054, 255
  %4056 = uitofp i32 %4055 to float
  %4057 = fmul fast float %4056, 0x3F70101000000000
  %4058 = fmul fast float %4044, %4050
  %4059 = fadd fast float %4058, %4053
  %4060 = fmul fast float %4059, 0x3F70101000000000
  %4061 = fadd fast float %4045, -5.000000e-01
  %4062 = fadd fast float %4047, -5.000000e-01
  %4063 = fmul fast float %4061, %4057
  %4064 = fmul fast float %4062, %4057
  %4065 = fadd fast float %4063, 5.000000e-01
  %4066 = fadd fast float %4064, 5.000000e-01
  %4067 = fmul fast float %4028, %3852
  %4068 = fmul fast float %4029, %3853
  %4069 = fmul fast float %4030, %3854
  %4070 = fmul fast float %4065, 2.000000e+00
  %4071 = fadd fast float %4070, -1.000000e+00
  %4072 = fmul fast float %4066, 2.000000e+00
  %4073 = fadd fast float %4072, -1.000000e+00
  %4074 = fadd fast float %4071, %4073
  %4075 = fmul fast float %4074, 5.000000e-01
  %4076 = fsub fast float %4071, %4073
  %4077 = fmul fast float %4076, 5.000000e-01
  %4078 = call float @dx.op.unary.f32(i32 6, float %4075)  ; FAbs(value)
  %4079 = fsub fast float 1.000000e+00, %4078
  %4080 = call float @dx.op.unary.f32(i32 6, float %4077)  ; FAbs(value)
  %4081 = fsub fast float %4079, %4080
  %4082 = call float @dx.op.dot3.f32(i32 55, float %4075, float %4077, float %4081, float %4075, float %4077, float %4081)  ; Dot3(ax,ay,az,bx,by,bz)
  %4083 = call float @dx.op.unary.f32(i32 25, float %4082)  ; Rsqrt(value)
  %4084 = fmul fast float %4075, %4083
  %4085 = fmul fast float %4077, %4083
  %4086 = fmul fast float %4083, %4081
  %4087 = fmul fast float %4086, %3817
  %4088 = fmul fast float %4086, %3818
  %4089 = fmul fast float %4086, %3819
  %4090 = fmul fast float %4084, %3840
  %4091 = fmul fast float %4084, %3841
  %4092 = fmul fast float %4084, %3842
  %4093 = fadd fast float %4090, %4087
  %4094 = fadd fast float %4091, %4088
  %4095 = fadd fast float %4092, %4089
  %4096 = fmul fast float %4085, %3846
  %4097 = fmul fast float %4085, %3847
  %4098 = fmul fast float %4085, %3848
  %4099 = fadd fast float %4093, %4096
  %4100 = fadd fast float %4094, %4097
  %4101 = fadd fast float %4095, %4098
  %4102 = call float @dx.op.dot3.f32(i32 55, float %4099, float %4100, float %4101, float %4099, float %4100, float %4101)  ; Dot3(ax,ay,az,bx,by,bz)
  %4103 = call float @dx.op.unary.f32(i32 25, float %4102)  ; Rsqrt(value)
  %4104 = fmul fast float %4099, %4103
  %4105 = fmul fast float %4100, %4103
  %4106 = fmul fast float %4101, %4103
  %4107 = icmp ne i32 %4023, 0
  %4108 = select i1 %4107, float 1.000000e+00, float 0.000000e+00
  %4109 = fmul fast float %4013, %4108
  %4110 = and i32 %3867, 1
  %4111 = icmp eq i32 %4110, 0
  br i1 %4111, label %4112, label %4116

; <label>:4112                                    ; preds = %4021
  %4113 = fsub fast float %4104, %3800
  %4114 = fsub fast float %4105, %3801
  %4115 = fsub fast float %4106, %3802
  br label %4116

; <label>:4116                                    ; preds = %4112, %4021
  %4117 = phi float [ %4113, %4112 ], [ %4104, %4021 ]
  %4118 = phi float [ %4114, %4112 ], [ %4105, %4021 ]
  %4119 = phi float [ %4115, %4112 ], [ %4106, %4021 ]
  %4120 = fmul float %4119, %4109
  %4121 = fmul float %4118, %4109
  %4122 = fmul float %4117, %4109
  %4123 = fadd fast float %4122, %3800
  %4124 = fadd fast float %4121, %3801
  %4125 = fadd fast float %4120, %3802
  %4126 = icmp ne i32 %4022, 0
  %4127 = select i1 %4126, float 1.000000e+00, float 0.000000e+00
  %4128 = fmul fast float %4013, %4127
  %4129 = fsub fast float %4067, %3807
  %4130 = fsub fast float %4068, %3808
  %4131 = fsub fast float %4069, %3809
  %4132 = fmul fast float %4129, %4128
  %4133 = fmul fast float %4130, %4128
  %4134 = fmul fast float %4131, %4128
  %4135 = fadd fast float %4132, %3807
  %4136 = fadd fast float %4133, %3808
  %4137 = fadd fast float %4134, %3809
  %4138 = fsub fast float %4040, %3806
  %4139 = fmul fast float %4138, %4128
  %4140 = fadd fast float %4139, %3806
  %4141 = fmul fast float %4128, %3796
  %4142 = fsub fast float %3796, %4141
  %4143 = fmul fast float %4128, %3795
  %4144 = fsub fast float %3795, %4143
  %4145 = fadd fast float %4013, %3805
  %4146 = call float @dx.op.unary.f32(i32 7, float %4145)  ; Saturate(value)
  %4147 = fsub fast float %4060, %3804
  %4148 = fmul fast float %4147, %4109
  %4149 = fadd fast float %4148, %3804
  %4150 = fsub fast float %4046, %3803
  %4151 = fmul fast float %4150, %4109
  %4152 = fadd fast float %4151, %3803
  %4153 = call float @dx.op.dot3.f32(i32 55, float %4067, float %4068, float %4069, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4155 = extractvalue %dx.types.CBufRet.f32 %4154, 0
  %4156 = extractvalue %dx.types.CBufRet.f32 %4154, 1
  %4157 = fmul fast float %4156, %4153
  %4158 = fadd fast float %4157, %4155
  %4159 = call float @dx.op.unary.f32(i32 7, float %4158)  ; Saturate(value)
  %4160 = bitcast float %3855 to i32
  %4161 = and i32 %4160, 65535
  %4162 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4161)  ; LegacyF16ToF32(value)
  %4163 = lshr i32 %4160, 16
  %4164 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4163)  ; LegacyF16ToF32(value)
  %4165 = fcmp fast oge float %4162, 0.000000e+00
  %4166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4167 = extractvalue %dx.types.CBufRet.f32 %4166, 0
  %4168 = select i1 %4165, float %4162, float %4167
  %4169 = fadd fast float %4168, %4164
  %4170 = fsub fast float %4159, %3794
  %4171 = fmul fast float %4170, %4013
  %4172 = fadd fast float %4171, %3794
  %4173 = fmul fast float %4169, %4013
  %4174 = call float @dx.op.binary.f32(i32 35, float %3793, float %4173)  ; FMax(a,b)
  %4175 = and i32 %3867, 16
  %4176 = icmp eq i32 %4175, 0
  br i1 %4176, label %4199, label %4177

; <label>:4177                                    ; preds = %4116
  %4178 = bitcast float %3861 to i32
  %4179 = add i32 %3858, 0
  %4180 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4179, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4181 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4180, %dx.types.Handle %4026, float %3954, float %3957, float undef, float undef, i32 0, i32 0, i32 undef, float %3959, float %3961, float undef, float %3963, float %3965, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4182 = extractvalue %dx.types.ResRet.f32 %4181, 0
  %4183 = extractvalue %dx.types.ResRet.f32 %4181, 1
  %4184 = extractvalue %dx.types.ResRet.f32 %4181, 2
  %4185 = and i32 %4178, 65535
  %4186 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4185)  ; LegacyF16ToF32(value)
  %4187 = fmul fast float %4182, %3852
  %4188 = fmul fast float %4183, %3853
  %4189 = fmul fast float %4184, %3854
  %4190 = and i32 %3867, 16384
  %4191 = icmp ne i32 %4190, 0
  %4192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4193 = extractvalue %dx.types.CBufRet.f32 %4192, 0
  %4194 = select i1 %4191, float %4193, float 1.000000e+00
  %4195 = fmul fast float %4194, %4186
  %4196 = fmul fast float %4187, %4195
  %4197 = fmul fast float %4188, %4195
  %4198 = fmul fast float %4189, %4195
  br label %4199

; <label>:4199                                    ; preds = %4177, %4116
  %4200 = phi float [ %4196, %4177 ], [ 0.000000e+00, %4116 ]
  %4201 = phi float [ %4197, %4177 ], [ 0.000000e+00, %4116 ]
  %4202 = phi float [ %4198, %4177 ], [ 0.000000e+00, %4116 ]
  %4203 = fsub fast float %4200, %3797
  %4204 = fsub fast float %4201, %3798
  %4205 = fsub fast float %4202, %3799
  %4206 = fmul fast float %4203, %4013
  %4207 = fmul fast float %4204, %4013
  %4208 = fmul fast float %4205, %4013
  %4209 = fadd fast float %4206, %3797
  %4210 = fadd fast float %4207, %3798
  %4211 = fadd fast float %4208, %3799
  br label %3916

; <label>:4212                                    ; preds = %3916
  br label %4213

; <label>:4213                                    ; preds = %4212, %3736
  %4214 = phi float [ 0.000000e+00, %3736 ], [ %3917, %4212 ]
  %4215 = phi float [ %3705, %3736 ], [ %3918, %4212 ]
  %4216 = phi float [ %3703, %3736 ], [ %3919, %4212 ]
  %4217 = phi float [ 0.000000e+00, %3736 ], [ %3920, %4212 ]
  %4218 = phi float [ 0.000000e+00, %3736 ], [ %3921, %4212 ]
  %4219 = phi float [ %3697, %3736 ], [ %3922, %4212 ]
  %4220 = phi float [ %3698, %3736 ], [ %3923, %4212 ]
  %4221 = phi float [ %3699, %3736 ], [ %3924, %4212 ]
  %4222 = phi float [ %3731, %3736 ], [ %3925, %4212 ]
  %4223 = phi float [ %3732, %3736 ], [ %3926, %4212 ]
  %4224 = phi float [ %3733, %3736 ], [ %3927, %4212 ]
  %4225 = phi float [ %3702, %3736 ], [ %3928, %4212 ]
  %4226 = phi float [ %3701, %3736 ], [ %3929, %4212 ]
  %4227 = phi float [ 0.000000e+00, %3736 ], [ %3930, %4212 ]
  %4228 = phi float [ %3700, %3736 ], [ %3931, %4212 ]
  %4229 = phi float [ %3694, %3736 ], [ %3932, %4212 ]
  %4230 = phi float [ %3695, %3736 ], [ %3933, %4212 ]
  %4231 = phi float [ %3696, %3736 ], [ %3934, %4212 ]
  %4232 = call float @dx.op.dot3.f32(i32 55, float %4222, float %4223, float %4224, float %4222, float %4223, float %4224)  ; Dot3(ax,ay,az,bx,by,bz)
  %4233 = call float @dx.op.unary.f32(i32 25, float %4232)  ; Rsqrt(value)
  %4234 = fmul fast float %4233, %4222
  %4235 = fmul fast float %4233, %4223
  %4236 = fmul fast float %4233, %4224
  %4237 = fadd fast float %4227, %1138
  %4238 = call float @dx.op.unary.f32(i32 7, float %4237)  ; Saturate(value)
  %4239 = call float @dx.op.dot3.f32(i32 55, float %4234, float %4235, float %4236, float %4234, float %4235, float %4236)  ; Dot3(ax,ay,az,bx,by,bz)
  %4240 = call float @dx.op.unary.f32(i32 25, float %4239)  ; Rsqrt(value)
  %4241 = fmul fast float %4240, %4234
  %4242 = fmul fast float %4240, %4235
  %4243 = fmul fast float %4240, %4236
  br label %4244

; <label>:4244                                    ; preds = %4213, %3691
  %4245 = phi float [ %4241, %4213 ], [ %3731, %3691 ]
  %4246 = phi float [ %4242, %4213 ], [ %3732, %3691 ]
  %4247 = phi float [ %4243, %4213 ], [ %3733, %3691 ]
  %4248 = phi float [ %4229, %4213 ], [ %3694, %3691 ]
  %4249 = phi float [ %4230, %4213 ], [ %3695, %3691 ]
  %4250 = phi float [ %4231, %4213 ], [ %3696, %3691 ]
  %4251 = phi float [ %4219, %4213 ], [ %3697, %3691 ]
  %4252 = phi float [ %4220, %4213 ], [ %3698, %3691 ]
  %4253 = phi float [ %4221, %4213 ], [ %3699, %3691 ]
  %4254 = phi float [ %4228, %4213 ], [ %3700, %3691 ]
  %4255 = phi float [ %4238, %4213 ], [ %1138, %3691 ]
  %4256 = phi float [ %4226, %4213 ], [ %3701, %3691 ]
  %4257 = phi float [ %4225, %4213 ], [ %3702, %3691 ]
  %4258 = phi float [ %4218, %4213 ], [ 0.000000e+00, %3691 ]
  %4259 = phi float [ %4217, %4213 ], [ 0.000000e+00, %3691 ]
  %4260 = phi float [ %4214, %4213 ], [ 0.000000e+00, %3691 ]
  %4261 = phi float [ %4215, %4213 ], [ %3705, %3691 ]
  %4262 = phi float [ %4216, %4213 ], [ %3703, %3691 ]
  %4263 = fadd fast float %4254, 0xBFB99999A0000000
  %4264 = call float @dx.op.unary.f32(i32 7, float %4263)  ; Saturate(value)
  %4265 = fmul fast float %4264, 0x3FF1C71C80000000
  %4266 = call float @dx.op.binary.f32(i32 36, float %4254, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4267 = fsub fast float 1.000000e+00, %4265
  %4268 = call float @dx.op.unary.f32(i32 7, float %4267)  ; Saturate(value)
  %4269 = fmul fast float %4268, %4248
  %4270 = fmul fast float %4268, %4249
  %4271 = fmul fast float %4268, %4250
  %4272 = call float @dx.op.unary.f32(i32 7, float %4269)  ; Saturate(value)
  %4273 = call float @dx.op.unary.f32(i32 7, float %4270)  ; Saturate(value)
  %4274 = call float @dx.op.unary.f32(i32 7, float %4271)  ; Saturate(value)
  %4275 = fmul fast float %4265, %4248
  %4276 = fmul fast float %4265, %4249
  %4277 = fmul fast float %4265, %4250
  %4278 = fadd fast float %4275, %4266
  %4279 = fadd fast float %4276, %4266
  %4280 = fadd fast float %4277, %4266
  %4281 = call float @dx.op.unary.f32(i32 7, float %4278)  ; Saturate(value)
  %4282 = call float @dx.op.unary.f32(i32 7, float %4279)  ; Saturate(value)
  %4283 = call float @dx.op.unary.f32(i32 7, float %4280)  ; Saturate(value)
  %4284 = call float @dx.op.unary.f32(i32 7, float %4256)  ; Saturate(value)
  %4285 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4286 = extractvalue %dx.types.CBufRet.i32 %4285, 3
  %4287 = and i32 %4286, 8
  %4288 = icmp ne i32 %4287, 0
  %4289 = call float @dx.op.binary.f32(i32 35, float %4272, float %4248)  ; FMax(a,b)
  %4290 = call float @dx.op.binary.f32(i32 35, float %4273, float %4248)  ; FMax(a,b)
  %4291 = call float @dx.op.binary.f32(i32 35, float %4274, float %4248)  ; FMax(a,b)
  %4292 = call float @dx.op.dot3.f32(i32 55, float %4272, float %4273, float %4274, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4293 = select i1 %228, float %4248, float %4272
  %4294 = select i1 %228, float %4292, float %4273
  %4295 = select i1 %228, float 1.000000e+00, float %4274
  %4296 = select i1 %4288, float %4289, float %4293
  %4297 = select i1 %4288, float %4290, float %4294
  %4298 = select i1 %4288, float %4291, float %4295
  %4299 = and i32 %204, 3
  %4300 = select i1 %198, i32 %4299, i32 0
  %4301 = icmp eq i32 %4300, 1
  br i1 %4301, label %4302, label %4378

; <label>:4302                                    ; preds = %4244
  %4303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4304 = extractvalue %dx.types.CBufRet.f32 %4303, 0
  %4305 = extractvalue %dx.types.CBufRet.f32 %4303, 1
  %4306 = fadd fast float %4304, %167
  %4307 = fadd fast float %4305, %168
  %4308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4309 = extractvalue %dx.types.CBufRet.f32 %4308, 0
  %4310 = extractvalue %dx.types.CBufRet.f32 %4308, 1
  %4311 = fsub fast float %4306, %4309
  %4312 = fsub fast float %4307, %4310
  %4313 = fmul fast float %4311, %4311
  %4314 = fmul fast float %4312, %4312
  %4315 = fadd fast float %4313, %4314
  %4316 = call float @dx.op.unary.f32(i32 24, float %4315)  ; Sqrt(value)
  %4317 = extractvalue %dx.types.CBufRet.f32 %4308, 2
  %4318 = fcmp fast olt float %4316, %4317
  br i1 %4318, label %4319, label %4372

; <label>:4319                                    ; preds = %4302
  %4320 = extractvalue %dx.types.CBufRet.f32 %4303, 2
  %4321 = fadd fast float %4320, %169
  %4322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4323 = extractvalue %dx.types.CBufRet.f32 %4322, 0
  %4324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4325 = extractvalue %dx.types.CBufRet.f32 %4324, 0
  %4326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4327 = extractvalue %dx.types.CBufRet.f32 %4326, 0
  %4328 = extractvalue %dx.types.CBufRet.f32 %4322, 1
  %4329 = extractvalue %dx.types.CBufRet.f32 %4324, 1
  %4330 = extractvalue %dx.types.CBufRet.f32 %4326, 1
  %4331 = extractvalue %dx.types.CBufRet.f32 %4322, 3
  %4332 = extractvalue %dx.types.CBufRet.f32 %4324, 3
  %4333 = extractvalue %dx.types.CBufRet.f32 %4326, 3
  %4334 = fadd fast float %4331, %4306
  %4335 = fadd fast float %4332, %4307
  %4336 = fadd fast float %4321, %4333
  %4337 = fmul fast float %4334, %4323
  %4338 = call float @dx.op.tertiary.f32(i32 46, float %4335, float %4325, float %4337)  ; FMad(a,b,c)
  %4339 = call float @dx.op.tertiary.f32(i32 46, float %4336, float %4327, float %4338)  ; FMad(a,b,c)
  %4340 = fmul fast float %4334, %4328
  %4341 = call float @dx.op.tertiary.f32(i32 46, float %4335, float %4329, float %4340)  ; FMad(a,b,c)
  %4342 = call float @dx.op.tertiary.f32(i32 46, float %4336, float %4330, float %4341)  ; FMad(a,b,c)
  %4343 = fsub fast float %4339, %4331
  %4344 = fsub fast float %4342, %4332
  %4345 = fsub fast float %4343, %4309
  %4346 = fadd fast float %4345, %4317
  %4347 = fsub fast float %4344, %4310
  %4348 = fadd fast float %4347, %4317
  %4349 = extractvalue %dx.types.CBufRet.f32 %4308, 3
  %4350 = fmul fast float %4346, %4349
  %4351 = fmul fast float %4348, %4349
  %4352 = call float @dx.op.unary.f32(i32 7, float %4350)  ; Saturate(value)
  %4353 = call float @dx.op.unary.f32(i32 7, float %4351)  ; Saturate(value)
  %4354 = fsub fast float 1.000000e+00, %4352
  %4355 = fsub fast float 1.000000e+00, %4353
  %4356 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %46, float %4354, float %4355, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4357 = extractvalue %dx.types.ResRet.f32 %4356, 0
  %4358 = fcmp fast ugt float %4357, 0.000000e+00
  br i1 %4358, label %4359, label %4372

; <label>:4359                                    ; preds = %4319
  %4360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4361 = extractvalue %dx.types.CBufRet.f32 %4360, 2
  %4362 = fmul fast float %4361, %4357
  %4363 = extractvalue %dx.types.CBufRet.f32 %4360, 3
  %4364 = fadd fast float %4363, %4362
  %4365 = extractvalue %dx.types.CBufRet.f32 %4326, 2
  %4366 = fadd fast float %4364, %4333
  %4367 = fmul fast float %4339, %4327
  %4368 = call float @dx.op.tertiary.f32(i32 46, float %4342, float %4330, float %4367)  ; FMad(a,b,c)
  %4369 = call float @dx.op.tertiary.f32(i32 46, float %4366, float %4365, float %4368)  ; FMad(a,b,c)
  %4370 = fsub fast float %4369, %4333
  %4371 = fsub fast float %4370, %4320
  br label %4372

; <label>:4372                                    ; preds = %4359, %4319, %4302
  %4373 = phi i1 [ true, %4359 ], [ false, %4319 ], [ false, %4302 ]
  %4374 = phi float [ %4371, %4359 ], [ -1.310720e+05, %4319 ], [ -1.310720e+05, %4302 ]
  %4375 = fsub fast float %4374, %169
  %4376 = call float @dx.op.unary.f32(i32 7, float %4375)  ; Saturate(value)
  %4377 = select i1 %4373, float %4376, float 1.000000e+00
  br label %4378

; <label>:4378                                    ; preds = %4372, %4244
  %4379 = phi float [ %4377, %4372 ], [ 0.000000e+00, %4244 ]
  %4380 = icmp eq i32 %4300, 3
  %4381 = select i1 %4380, float 1.000000e+00, float %4379
  %4382 = call float @dx.op.binary.f32(i32 35, float %4260, float %4381)  ; FMax(a,b)
  %4383 = fcmp fast olt float %4381, 1.000000e+00
  br i1 %4383, label %4384, label %5508

; <label>:4384                                    ; preds = %4378
  %4385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4386 = extractvalue %dx.types.CBufRet.f32 %4385, 0
  %4387 = extractvalue %dx.types.CBufRet.f32 %4385, 1
  %4388 = extractvalue %dx.types.CBufRet.f32 %4385, 2
  %4389 = fadd fast float %4386, %167
  %4390 = fadd fast float %4387, %168
  %4391 = fadd fast float %4388, %169
  %4392 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 335)  ; CBufferLoadLegacy(handle,regIndex)
  %4393 = extractvalue %dx.types.CBufRet.i32 %4392, 2
  %4394 = icmp ult i32 %4393, 4
  br i1 %4394, label %4395, label %4446

; <label>:4395                                    ; preds = %4384
  br label %4396

; <label>:4396                                    ; preds = %4441, %4395
  %4397 = phi i32 [ %4442, %4441 ], [ %4393, %4395 ]
  %4398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 342)  ; CBufferLoadLegacy(handle,regIndex)
  %4399 = extractvalue %dx.types.CBufRet.f32 %4398, 0
  %4400 = extractvalue %dx.types.CBufRet.f32 %4398, 1
  %4401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 339)  ; CBufferLoadLegacy(handle,regIndex)
  %4402 = extractvalue %dx.types.CBufRet.f32 %4401, 0
  %4403 = fmul fast float %4402, 5.000000e-01
  %4404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 340)  ; CBufferLoadLegacy(handle,regIndex)
  %4405 = extractvalue %dx.types.CBufRet.f32 %4404, 0
  %4406 = extractvalue %dx.types.CBufRet.f32 %4404, 1
  %4407 = extractvalue %dx.types.CBufRet.f32 %4404, 2
  %4408 = extractvalue %dx.types.CBufRet.f32 %4404, 3
  %4409 = getelementptr inbounds [4 x float], [4 x float]* %58, i32 0, i32 0
  store float %4405, float* %4409, align 4
  %4410 = getelementptr inbounds [4 x float], [4 x float]* %58, i32 0, i32 1
  store float %4406, float* %4410, align 4
  %4411 = getelementptr inbounds [4 x float], [4 x float]* %58, i32 0, i32 2
  store float %4407, float* %4411, align 4
  %4412 = getelementptr inbounds [4 x float], [4 x float]* %58, i32 0, i32 3
  store float %4408, float* %4412, align 4
  %4413 = getelementptr inbounds [4 x float], [4 x float]* %58, i32 0, i32 %4397
  %4414 = load float, float* %4413, align 4, !tbaa !88
  %4415 = fmul fast float %4403, %4414
  %4416 = fsub fast float %4389, %4399
  %4417 = fadd fast float %4416, %4415
  %4418 = fsub fast float %4390, %4400
  %4419 = fadd fast float %4418, %4415
  %4420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 341)  ; CBufferLoadLegacy(handle,regIndex)
  %4421 = extractvalue %dx.types.CBufRet.f32 %4420, 0
  %4422 = extractvalue %dx.types.CBufRet.f32 %4420, 1
  %4423 = extractvalue %dx.types.CBufRet.f32 %4420, 2
  %4424 = extractvalue %dx.types.CBufRet.f32 %4420, 3
  %4425 = getelementptr inbounds [4 x float], [4 x float]* %57, i32 0, i32 0
  store float %4421, float* %4425, align 4
  %4426 = getelementptr inbounds [4 x float], [4 x float]* %57, i32 0, i32 1
  store float %4422, float* %4426, align 4
  %4427 = getelementptr inbounds [4 x float], [4 x float]* %57, i32 0, i32 2
  store float %4423, float* %4427, align 4
  %4428 = getelementptr inbounds [4 x float], [4 x float]* %57, i32 0, i32 3
  store float %4424, float* %4428, align 4
  %4429 = getelementptr inbounds [4 x float], [4 x float]* %57, i32 0, i32 %4397
  %4430 = load float, float* %4429, align 4, !tbaa !88
  %4431 = fmul fast float %4417, %4430
  %4432 = fmul fast float %4419, %4430
  %4433 = extractvalue %dx.types.CBufRet.f32 %4401, 1
  %4434 = fmul fast float %4431, %4433
  %4435 = fmul fast float %4432, %4433
  %4436 = call float @dx.op.unary.f32(i32 7, float %4434)  ; Saturate(value)
  %4437 = call float @dx.op.unary.f32(i32 7, float %4435)  ; Saturate(value)
  %4438 = fcmp fast oeq float %4436, %4434
  %4439 = fcmp fast oeq float %4437, %4435
  %4440 = and i1 %4438, %4439
  br i1 %4440, label %4444, label %4441

; <label>:4441                                    ; preds = %4396
  %4442 = add nuw nsw i32 %4397, 1
  %4443 = icmp ult i32 %4442, 4
  br i1 %4443, label %4396, label %4444

; <label>:4444                                    ; preds = %4441, %4396
  %4445 = phi i32 [ %4442, %4441 ], [ %4397, %4396 ]
  br label %4446

; <label>:4446                                    ; preds = %4444, %4384
  %4447 = phi float [ 0.000000e+00, %4384 ], [ %4434, %4444 ]
  %4448 = phi float [ 0.000000e+00, %4384 ], [ %4435, %4444 ]
  %4449 = phi i32 [ %4393, %4384 ], [ %4445, %4444 ]
  %4450 = extractvalue %dx.types.CBufRet.i32 %4392, 1
  %4451 = uitofp i32 %4449 to float
  %4452 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %25, %dx.types.Handle %46, float %4447, float %4448, float %4451, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4453 = extractvalue %dx.types.ResRet.f32 %4452, 0
  %4454 = extractvalue %dx.types.ResRet.f32 %4452, 1
  %4455 = extractvalue %dx.types.ResRet.f32 %4452, 2
  %4456 = extractvalue %dx.types.ResRet.f32 %4452, 3
  %4457 = call float @dx.op.binary.f32(i32 35, float %4454, float %4455)  ; FMax(a,b)
  %4458 = call float @dx.op.binary.f32(i32 35, float %4453, float %4457)  ; FMax(a,b)
  %4459 = call float @dx.op.binary.f32(i32 35, float %4458, float %4456)  ; FMax(a,b)
  %4460 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 335)  ; CBufferLoadLegacy(handle,regIndex)
  %4461 = extractvalue %dx.types.CBufRet.f32 %4460, 0
  %4462 = fadd fast float %4461, %4459
  %4463 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 339)  ; CBufferLoadLegacy(handle,regIndex)
  %4464 = extractvalue %dx.types.CBufRet.f32 %4463, 3
  %4465 = fadd fast float %4462, %4464
  %4466 = fcmp fast ogt float %4391, %4465
  %4467 = icmp uge i32 %4449, %4450
  %4468 = or i1 %4467, %4466
  %4469 = zext i1 %4468 to i32
  %4470 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4471 = extractvalue %dx.types.CBufRet.i32 %4470, 0
  %4472 = lshr i32 %4471, 21
  %4473 = and i32 %4472, 1
  %4474 = xor i32 %4473, 1
  %4475 = or i32 %4469, %4474
  %4476 = and i32 %4471, 1
  %4477 = xor i32 %4476, 1
  %4478 = or i32 %4475, %4477
  %4479 = icmp eq i32 %4478, 0
  br i1 %4479, label %4480, label %5324, !dx.controlflow.hints !92

; <label>:4480                                    ; preds = %4446
  %4481 = fmul fast float %4447, 2.000000e+00
  %4482 = fmul fast float %4448, 2.000000e+00
  %4483 = fadd fast float %4481, -1.000000e+00
  %4484 = fadd fast float %4482, -1.000000e+00
  %4485 = call float @dx.op.unary.f32(i32 6, float %4483)  ; FAbs(value)
  %4486 = call float @dx.op.unary.f32(i32 6, float %4484)  ; FAbs(value)
  %4487 = extractvalue %dx.types.CBufRet.f32 %4463, 1
  %4488 = fmul fast float %4487, 2.000000e+00
  %4489 = fsub fast float 1.000000e+00, %4488
  %4490 = fcmp fast oge float %4485, %4489
  %4491 = fcmp fast oge float %4486, %4489
  %4492 = or i1 %4490, %4491
  %4493 = add i32 %4449, 1
  %4494 = icmp ult i32 %4493, %4450
  %4495 = and i1 %4494, %4492
  %4496 = extractvalue %dx.types.CBufRet.f32 %4463, 0
  %4497 = fptosi float %4496 to i32
  %4498 = sitofp i32 %4497 to float
  %4499 = fmul fast float %4498, %4447
  %4500 = fmul fast float %4498, %4448
  %4501 = fadd fast float %4499, -5.000000e-01
  %4502 = fadd fast float %4500, -5.000000e-01
  %4503 = fptosi float %4501 to i32
  %4504 = fptosi float %4502 to i32
  %4505 = fadd fast float %4499, 5.000000e-01
  %4506 = fadd fast float %4500, 5.000000e-01
  %4507 = call float @dx.op.unary.f32(i32 22, float %4505)  ; Frc(value)
  %4508 = call float @dx.op.unary.f32(i32 22, float %4506)  ; Frc(value)
  %4509 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 340)  ; CBufferLoadLegacy(handle,regIndex)
  %4510 = extractvalue %dx.types.CBufRet.f32 %4509, 0
  %4511 = extractvalue %dx.types.CBufRet.f32 %4509, 1
  %4512 = extractvalue %dx.types.CBufRet.f32 %4509, 2
  %4513 = extractvalue %dx.types.CBufRet.f32 %4509, 3
  %4514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 336)  ; CBufferLoadLegacy(handle,regIndex)
  %4515 = extractvalue %dx.types.CBufRet.f32 %4514, 2
  %4516 = fadd fast float %4507, -5.000000e-01
  %4517 = fadd fast float %4508, -5.000000e-01
  %4518 = add i32 %4497, -1
  %4519 = call i32 @dx.op.binary.i32(i32 37, i32 %4503, i32 0)  ; IMax(a,b)
  %4520 = call i32 @dx.op.binary.i32(i32 37, i32 %4504, i32 0)  ; IMax(a,b)
  %4521 = call i32 @dx.op.binary.i32(i32 38, i32 %4519, i32 %4518)  ; IMin(a,b)
  %4522 = call i32 @dx.op.binary.i32(i32 38, i32 %4520, i32 %4518)  ; IMin(a,b)
  %4523 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 337)  ; CBufferLoadLegacy(handle,regIndex)
  %4524 = extractvalue %dx.types.CBufRet.i32 %4523, 0
  %4525 = extractvalue %dx.types.CBufRet.i32 %4523, 1
  %4526 = sub nsw i32 3, %4449
  %4527 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 338)  ; CBufferLoadLegacy(handle,regIndex)
  %4528 = extractvalue %dx.types.CBufRet.i32 %4527, 0
  %4529 = extractvalue %dx.types.CBufRet.i32 %4527, 1
  %4530 = extractvalue %dx.types.CBufRet.i32 %4527, 2
  %4531 = extractvalue %dx.types.CBufRet.i32 %4527, 3
  %4532 = add i32 %4521, 536870912
  %4533 = add i32 %4522, 536870912
  %4534 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 336)  ; CBufferLoadLegacy(handle,regIndex)
  %4535 = extractvalue %dx.types.CBufRet.i32 %4534, 3
  %4536 = add i32 %4503, 1
  %4537 = call i32 @dx.op.binary.i32(i32 37, i32 %4536, i32 0)  ; IMax(a,b)
  %4538 = call i32 @dx.op.binary.i32(i32 38, i32 %4537, i32 %4518)  ; IMin(a,b)
  %4539 = add i32 %4538, 536870912
  %4540 = add i32 %4504, 1
  %4541 = call i32 @dx.op.binary.i32(i32 37, i32 %4540, i32 0)  ; IMax(a,b)
  %4542 = call i32 @dx.op.binary.i32(i32 38, i32 %4541, i32 %4518)  ; IMin(a,b)
  %4543 = add i32 %4542, 536870912
  br i1 %4495, label %4788, label %4544, !dx.controlflow.hints !93

; <label>:4544                                    ; preds = %4480
  %4545 = getelementptr inbounds [4 x float], [4 x float]* %51, i32 0, i32 0
  store float %4510, float* %4545, align 4
  %4546 = getelementptr inbounds [4 x float], [4 x float]* %51, i32 0, i32 1
  store float %4511, float* %4546, align 4
  %4547 = getelementptr inbounds [4 x float], [4 x float]* %51, i32 0, i32 2
  store float %4512, float* %4547, align 4
  %4548 = getelementptr inbounds [4 x float], [4 x float]* %51, i32 0, i32 3
  store float %4513, float* %4548, align 4
  %4549 = getelementptr inbounds [4 x float], [4 x float]* %51, i32 0, i32 %4449
  %4550 = load float, float* %4549, align 4, !tbaa !88
  %4551 = fmul fast float %4515, %4550
  %4552 = call float @dx.op.binary.f32(i32 35, float 1.000000e+00, float %4551)  ; FMax(a,b)
  %4553 = fmul fast float %4552, %4516
  %4554 = fmul fast float %4552, %4517
  %4555 = call float @dx.op.binary.f32(i32 35, float %4553, float -5.000000e-01)  ; FMax(a,b)
  %4556 = call float @dx.op.binary.f32(i32 35, float %4554, float -5.000000e-01)  ; FMax(a,b)
  %4557 = call float @dx.op.binary.f32(i32 36, float %4555, float 5.000000e-01)  ; FMin(a,b)
  %4558 = call float @dx.op.binary.f32(i32 36, float %4556, float 5.000000e-01)  ; FMin(a,b)
  %4559 = fadd fast float %4557, 5.000000e-01
  %4560 = fadd fast float %4558, 5.000000e-01
  %4561 = getelementptr inbounds [4 x i32], [4 x i32]* %52, i32 0, i32 0
  store i32 %4528, i32* %4561, align 4
  %4562 = getelementptr inbounds [4 x i32], [4 x i32]* %52, i32 0, i32 1
  store i32 %4529, i32* %4562, align 4
  %4563 = getelementptr inbounds [4 x i32], [4 x i32]* %52, i32 0, i32 2
  store i32 %4530, i32* %4563, align 4
  %4564 = getelementptr inbounds [4 x i32], [4 x i32]* %52, i32 0, i32 3
  store i32 %4531, i32* %4564, align 4
  %4565 = getelementptr inbounds [4 x i32], [4 x i32]* %52, i32 0, i32 %4526
  %4566 = load i32, i32* %4565, align 4, !tbaa !94
  %4567 = mul i32 %4566, %4524
  %4568 = mul i32 %4566, %4525
  %4569 = add i32 %4532, %4567
  %4570 = add i32 %4533, %4568
  %4571 = and i32 %4569, %4535
  %4572 = and i32 %4570, %4535
  %4573 = fsub fast float %4391, %4461
  %4574 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %4571, i32 %4572, i32 %4449, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4575 = extractvalue %dx.types.ResRet.i32 %4574, 0
  %4576 = extractvalue %dx.types.ResRet.i32 %4574, 1
  %4577 = extractvalue %dx.types.ResRet.i32 %4574, 2
  %4578 = extractvalue %dx.types.ResRet.i32 %4574, 3
  %4579 = and i32 %4575, 65535
  %4580 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4579)  ; LegacyF16ToF32(value)
  %4581 = lshr i32 %4575, 16
  %4582 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4581)  ; LegacyF16ToF32(value)
  %4583 = and i32 %4576, 65535
  %4584 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4583)  ; LegacyF16ToF32(value)
  %4585 = lshr i32 %4576, 16
  %4586 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4585)  ; LegacyF16ToF32(value)
  %4587 = and i32 %4577, 65535
  %4588 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4587)  ; LegacyF16ToF32(value)
  %4589 = lshr i32 %4577, 16
  %4590 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4589)  ; LegacyF16ToF32(value)
  %4591 = and i32 %4578, 65535
  %4592 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4591)  ; LegacyF16ToF32(value)
  %4593 = lshr i32 %4578, 16
  %4594 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4593)  ; LegacyF16ToF32(value)
  %4595 = fsub fast float %4573, %4582
  %4596 = call float @dx.op.binary.f32(i32 35, float %4595, float 0.000000e+00)  ; FMax(a,b)
  %4597 = extractvalue %dx.types.CBufRet.f32 %4463, 2
  %4598 = fmul fast float %4597, %4596
  %4599 = fsub fast float %4580, %4598
  %4600 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4599)  ; FMax(a,b)
  %4601 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4600)  ; FMax(a,b)
  %4602 = fsub fast float %4573, %4586
  %4603 = call float @dx.op.binary.f32(i32 35, float %4602, float 0.000000e+00)  ; FMax(a,b)
  %4604 = fmul fast float %4597, %4603
  %4605 = fsub fast float %4584, %4604
  %4606 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4605)  ; FMax(a,b)
  %4607 = call float @dx.op.binary.f32(i32 35, float %4601, float %4606)  ; FMax(a,b)
  %4608 = fsub fast float %4573, %4590
  %4609 = call float @dx.op.binary.f32(i32 35, float %4608, float 0.000000e+00)  ; FMax(a,b)
  %4610 = fmul fast float %4597, %4609
  %4611 = fsub fast float %4588, %4610
  %4612 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4611)  ; FMax(a,b)
  %4613 = call float @dx.op.binary.f32(i32 35, float %4607, float %4612)  ; FMax(a,b)
  %4614 = fsub fast float %4573, %4594
  %4615 = call float @dx.op.binary.f32(i32 35, float %4614, float 0.000000e+00)  ; FMax(a,b)
  %4616 = fmul fast float %4597, %4615
  %4617 = fsub fast float %4592, %4616
  %4618 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4617)  ; FMax(a,b)
  %4619 = call float @dx.op.binary.f32(i32 35, float %4613, float %4618)  ; FMax(a,b)
  %4620 = fsub fast float 5.000000e-01, %4557
  %4621 = fsub fast float 5.000000e-01, %4558
  %4622 = fmul fast float %4621, %4620
  %4623 = fmul fast float %4622, %4619
  store i32 %4528, i32* %4561, align 4
  store i32 %4529, i32* %4562, align 4
  store i32 %4530, i32* %4563, align 4
  store i32 %4531, i32* %4564, align 4
  %4624 = load i32, i32* %4565, align 4, !tbaa !94
  %4625 = mul i32 %4624, %4524
  %4626 = mul i32 %4624, %4525
  %4627 = add i32 %4539, %4625
  %4628 = add i32 %4533, %4626
  %4629 = and i32 %4627, %4535
  %4630 = and i32 %4628, %4535
  %4631 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %4629, i32 %4630, i32 %4449, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4632 = extractvalue %dx.types.ResRet.i32 %4631, 0
  %4633 = extractvalue %dx.types.ResRet.i32 %4631, 1
  %4634 = extractvalue %dx.types.ResRet.i32 %4631, 2
  %4635 = extractvalue %dx.types.ResRet.i32 %4631, 3
  %4636 = and i32 %4632, 65535
  %4637 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4636)  ; LegacyF16ToF32(value)
  %4638 = lshr i32 %4632, 16
  %4639 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4638)  ; LegacyF16ToF32(value)
  %4640 = and i32 %4633, 65535
  %4641 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4640)  ; LegacyF16ToF32(value)
  %4642 = lshr i32 %4633, 16
  %4643 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4642)  ; LegacyF16ToF32(value)
  %4644 = and i32 %4634, 65535
  %4645 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4644)  ; LegacyF16ToF32(value)
  %4646 = lshr i32 %4634, 16
  %4647 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4646)  ; LegacyF16ToF32(value)
  %4648 = and i32 %4635, 65535
  %4649 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4648)  ; LegacyF16ToF32(value)
  %4650 = lshr i32 %4635, 16
  %4651 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4650)  ; LegacyF16ToF32(value)
  %4652 = fsub fast float %4573, %4639
  %4653 = call float @dx.op.binary.f32(i32 35, float %4652, float 0.000000e+00)  ; FMax(a,b)
  %4654 = fmul fast float %4597, %4653
  %4655 = fsub fast float %4637, %4654
  %4656 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4655)  ; FMax(a,b)
  %4657 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4656)  ; FMax(a,b)
  %4658 = fsub fast float %4573, %4643
  %4659 = call float @dx.op.binary.f32(i32 35, float %4658, float 0.000000e+00)  ; FMax(a,b)
  %4660 = fmul fast float %4597, %4659
  %4661 = fsub fast float %4641, %4660
  %4662 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4661)  ; FMax(a,b)
  %4663 = call float @dx.op.binary.f32(i32 35, float %4657, float %4662)  ; FMax(a,b)
  %4664 = fsub fast float %4573, %4647
  %4665 = call float @dx.op.binary.f32(i32 35, float %4664, float 0.000000e+00)  ; FMax(a,b)
  %4666 = fmul fast float %4597, %4665
  %4667 = fsub fast float %4645, %4666
  %4668 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4667)  ; FMax(a,b)
  %4669 = call float @dx.op.binary.f32(i32 35, float %4663, float %4668)  ; FMax(a,b)
  %4670 = fsub fast float %4573, %4651
  %4671 = call float @dx.op.binary.f32(i32 35, float %4670, float 0.000000e+00)  ; FMax(a,b)
  %4672 = fmul fast float %4597, %4671
  %4673 = fsub fast float %4649, %4672
  %4674 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4673)  ; FMax(a,b)
  %4675 = call float @dx.op.binary.f32(i32 35, float %4669, float %4674)  ; FMax(a,b)
  %4676 = fmul fast float %4621, %4559
  %4677 = fmul fast float %4676, %4675
  store i32 %4528, i32* %4561, align 4
  store i32 %4529, i32* %4562, align 4
  store i32 %4530, i32* %4563, align 4
  store i32 %4531, i32* %4564, align 4
  %4678 = load i32, i32* %4565, align 4, !tbaa !94
  %4679 = mul i32 %4678, %4524
  %4680 = mul i32 %4678, %4525
  %4681 = add i32 %4532, %4679
  %4682 = add i32 %4543, %4680
  %4683 = and i32 %4681, %4535
  %4684 = and i32 %4682, %4535
  %4685 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %4683, i32 %4684, i32 %4449, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4686 = extractvalue %dx.types.ResRet.i32 %4685, 0
  %4687 = extractvalue %dx.types.ResRet.i32 %4685, 1
  %4688 = extractvalue %dx.types.ResRet.i32 %4685, 2
  %4689 = extractvalue %dx.types.ResRet.i32 %4685, 3
  %4690 = and i32 %4686, 65535
  %4691 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4690)  ; LegacyF16ToF32(value)
  %4692 = lshr i32 %4686, 16
  %4693 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4692)  ; LegacyF16ToF32(value)
  %4694 = and i32 %4687, 65535
  %4695 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4694)  ; LegacyF16ToF32(value)
  %4696 = lshr i32 %4687, 16
  %4697 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4696)  ; LegacyF16ToF32(value)
  %4698 = and i32 %4688, 65535
  %4699 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4698)  ; LegacyF16ToF32(value)
  %4700 = lshr i32 %4688, 16
  %4701 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4700)  ; LegacyF16ToF32(value)
  %4702 = and i32 %4689, 65535
  %4703 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4702)  ; LegacyF16ToF32(value)
  %4704 = lshr i32 %4689, 16
  %4705 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4704)  ; LegacyF16ToF32(value)
  %4706 = fsub fast float %4573, %4693
  %4707 = call float @dx.op.binary.f32(i32 35, float %4706, float 0.000000e+00)  ; FMax(a,b)
  %4708 = fmul fast float %4597, %4707
  %4709 = fsub fast float %4691, %4708
  %4710 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4709)  ; FMax(a,b)
  %4711 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4710)  ; FMax(a,b)
  %4712 = fsub fast float %4573, %4697
  %4713 = call float @dx.op.binary.f32(i32 35, float %4712, float 0.000000e+00)  ; FMax(a,b)
  %4714 = fmul fast float %4597, %4713
  %4715 = fsub fast float %4695, %4714
  %4716 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4715)  ; FMax(a,b)
  %4717 = call float @dx.op.binary.f32(i32 35, float %4711, float %4716)  ; FMax(a,b)
  %4718 = fsub fast float %4573, %4701
  %4719 = call float @dx.op.binary.f32(i32 35, float %4718, float 0.000000e+00)  ; FMax(a,b)
  %4720 = fmul fast float %4597, %4719
  %4721 = fsub fast float %4699, %4720
  %4722 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4721)  ; FMax(a,b)
  %4723 = call float @dx.op.binary.f32(i32 35, float %4717, float %4722)  ; FMax(a,b)
  %4724 = fsub fast float %4573, %4705
  %4725 = call float @dx.op.binary.f32(i32 35, float %4724, float 0.000000e+00)  ; FMax(a,b)
  %4726 = fmul fast float %4597, %4725
  %4727 = fsub fast float %4703, %4726
  %4728 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4727)  ; FMax(a,b)
  %4729 = call float @dx.op.binary.f32(i32 35, float %4723, float %4728)  ; FMax(a,b)
  %4730 = fmul fast float %4729, %4620
  store i32 %4528, i32* %4561, align 4
  store i32 %4529, i32* %4562, align 4
  store i32 %4530, i32* %4563, align 4
  store i32 %4531, i32* %4564, align 4
  %4731 = load i32, i32* %4565, align 4, !tbaa !94
  %4732 = mul i32 %4731, %4524
  %4733 = mul i32 %4731, %4525
  %4734 = add i32 %4539, %4732
  %4735 = add i32 %4543, %4733
  %4736 = and i32 %4734, %4535
  %4737 = and i32 %4735, %4535
  %4738 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %4736, i32 %4737, i32 %4449, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4739 = extractvalue %dx.types.ResRet.i32 %4738, 0
  %4740 = extractvalue %dx.types.ResRet.i32 %4738, 1
  %4741 = extractvalue %dx.types.ResRet.i32 %4738, 2
  %4742 = extractvalue %dx.types.ResRet.i32 %4738, 3
  %4743 = and i32 %4739, 65535
  %4744 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4743)  ; LegacyF16ToF32(value)
  %4745 = lshr i32 %4739, 16
  %4746 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4745)  ; LegacyF16ToF32(value)
  %4747 = and i32 %4740, 65535
  %4748 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4747)  ; LegacyF16ToF32(value)
  %4749 = lshr i32 %4740, 16
  %4750 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4749)  ; LegacyF16ToF32(value)
  %4751 = and i32 %4741, 65535
  %4752 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4751)  ; LegacyF16ToF32(value)
  %4753 = lshr i32 %4741, 16
  %4754 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4753)  ; LegacyF16ToF32(value)
  %4755 = and i32 %4742, 65535
  %4756 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4755)  ; LegacyF16ToF32(value)
  %4757 = lshr i32 %4742, 16
  %4758 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4757)  ; LegacyF16ToF32(value)
  %4759 = fsub fast float %4573, %4746
  %4760 = call float @dx.op.binary.f32(i32 35, float %4759, float 0.000000e+00)  ; FMax(a,b)
  %4761 = fmul fast float %4597, %4760
  %4762 = fsub fast float %4744, %4761
  %4763 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4762)  ; FMax(a,b)
  %4764 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4763)  ; FMax(a,b)
  %4765 = fsub fast float %4573, %4750
  %4766 = call float @dx.op.binary.f32(i32 35, float %4765, float 0.000000e+00)  ; FMax(a,b)
  %4767 = fmul fast float %4597, %4766
  %4768 = fsub fast float %4748, %4767
  %4769 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4768)  ; FMax(a,b)
  %4770 = call float @dx.op.binary.f32(i32 35, float %4764, float %4769)  ; FMax(a,b)
  %4771 = fsub fast float %4573, %4754
  %4772 = call float @dx.op.binary.f32(i32 35, float %4771, float 0.000000e+00)  ; FMax(a,b)
  %4773 = fmul fast float %4597, %4772
  %4774 = fsub fast float %4752, %4773
  %4775 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4774)  ; FMax(a,b)
  %4776 = call float @dx.op.binary.f32(i32 35, float %4770, float %4775)  ; FMax(a,b)
  %4777 = fsub fast float %4573, %4758
  %4778 = call float @dx.op.binary.f32(i32 35, float %4777, float 0.000000e+00)  ; FMax(a,b)
  %4779 = fmul fast float %4597, %4778
  %4780 = fsub fast float %4756, %4779
  %4781 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4780)  ; FMax(a,b)
  %4782 = call float @dx.op.binary.f32(i32 35, float %4776, float %4781)  ; FMax(a,b)
  %4783 = fmul fast float %4782, %4559
  %4784 = fadd fast float %4783, %4730
  %4785 = fmul fast float %4784, %4560
  %4786 = fadd fast float %4677, %4623
  %4787 = fadd fast float %4786, %4785
  br label %5324

; <label>:4788                                    ; preds = %4480
  %4789 = getelementptr inbounds [4 x float], [4 x float]* %53, i32 0, i32 0
  store float %4510, float* %4789, align 4
  %4790 = getelementptr inbounds [4 x float], [4 x float]* %53, i32 0, i32 1
  store float %4511, float* %4790, align 4
  %4791 = getelementptr inbounds [4 x float], [4 x float]* %53, i32 0, i32 2
  store float %4512, float* %4791, align 4
  %4792 = getelementptr inbounds [4 x float], [4 x float]* %53, i32 0, i32 3
  store float %4513, float* %4792, align 4
  %4793 = getelementptr inbounds [4 x float], [4 x float]* %53, i32 0, i32 %4449
  %4794 = load float, float* %4793, align 4, !tbaa !88
  %4795 = fmul fast float %4515, %4794
  %4796 = call float @dx.op.binary.f32(i32 35, float 1.000000e+00, float %4795)  ; FMax(a,b)
  %4797 = fmul fast float %4796, %4516
  %4798 = fmul fast float %4796, %4517
  %4799 = call float @dx.op.binary.f32(i32 35, float %4797, float -5.000000e-01)  ; FMax(a,b)
  %4800 = call float @dx.op.binary.f32(i32 35, float %4798, float -5.000000e-01)  ; FMax(a,b)
  %4801 = call float @dx.op.binary.f32(i32 36, float %4799, float 5.000000e-01)  ; FMin(a,b)
  %4802 = call float @dx.op.binary.f32(i32 36, float %4800, float 5.000000e-01)  ; FMin(a,b)
  %4803 = fadd fast float %4801, 5.000000e-01
  %4804 = fadd fast float %4802, 5.000000e-01
  %4805 = getelementptr inbounds [4 x i32], [4 x i32]* %56, i32 0, i32 0
  store i32 %4528, i32* %4805, align 4
  %4806 = getelementptr inbounds [4 x i32], [4 x i32]* %56, i32 0, i32 1
  store i32 %4529, i32* %4806, align 4
  %4807 = getelementptr inbounds [4 x i32], [4 x i32]* %56, i32 0, i32 2
  store i32 %4530, i32* %4807, align 4
  %4808 = getelementptr inbounds [4 x i32], [4 x i32]* %56, i32 0, i32 3
  store i32 %4531, i32* %4808, align 4
  %4809 = getelementptr inbounds [4 x i32], [4 x i32]* %56, i32 0, i32 %4526
  %4810 = load i32, i32* %4809, align 4, !tbaa !94
  %4811 = mul i32 %4810, %4524
  %4812 = mul i32 %4810, %4525
  %4813 = add i32 %4532, %4811
  %4814 = add i32 %4533, %4812
  %4815 = and i32 %4813, %4535
  %4816 = and i32 %4814, %4535
  %4817 = fsub fast float %4391, %4461
  %4818 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %4815, i32 %4816, i32 %4449, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4819 = extractvalue %dx.types.ResRet.i32 %4818, 0
  %4820 = extractvalue %dx.types.ResRet.i32 %4818, 1
  %4821 = extractvalue %dx.types.ResRet.i32 %4818, 2
  %4822 = extractvalue %dx.types.ResRet.i32 %4818, 3
  %4823 = and i32 %4819, 65535
  %4824 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4823)  ; LegacyF16ToF32(value)
  %4825 = lshr i32 %4819, 16
  %4826 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4825)  ; LegacyF16ToF32(value)
  %4827 = and i32 %4820, 65535
  %4828 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4827)  ; LegacyF16ToF32(value)
  %4829 = lshr i32 %4820, 16
  %4830 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4829)  ; LegacyF16ToF32(value)
  %4831 = and i32 %4821, 65535
  %4832 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4831)  ; LegacyF16ToF32(value)
  %4833 = lshr i32 %4821, 16
  %4834 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4833)  ; LegacyF16ToF32(value)
  %4835 = and i32 %4822, 65535
  %4836 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4835)  ; LegacyF16ToF32(value)
  %4837 = lshr i32 %4822, 16
  %4838 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4837)  ; LegacyF16ToF32(value)
  %4839 = fsub fast float %4817, %4826
  %4840 = call float @dx.op.binary.f32(i32 35, float %4839, float 0.000000e+00)  ; FMax(a,b)
  %4841 = extractvalue %dx.types.CBufRet.f32 %4463, 2
  %4842 = fmul fast float %4841, %4840
  %4843 = fsub fast float %4824, %4842
  %4844 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4843)  ; FMax(a,b)
  %4845 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4844)  ; FMax(a,b)
  %4846 = fsub fast float %4817, %4830
  %4847 = call float @dx.op.binary.f32(i32 35, float %4846, float 0.000000e+00)  ; FMax(a,b)
  %4848 = fmul fast float %4841, %4847
  %4849 = fsub fast float %4828, %4848
  %4850 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4849)  ; FMax(a,b)
  %4851 = call float @dx.op.binary.f32(i32 35, float %4845, float %4850)  ; FMax(a,b)
  %4852 = fsub fast float %4817, %4834
  %4853 = call float @dx.op.binary.f32(i32 35, float %4852, float 0.000000e+00)  ; FMax(a,b)
  %4854 = fmul fast float %4841, %4853
  %4855 = fsub fast float %4832, %4854
  %4856 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4855)  ; FMax(a,b)
  %4857 = call float @dx.op.binary.f32(i32 35, float %4851, float %4856)  ; FMax(a,b)
  %4858 = fsub fast float %4817, %4838
  %4859 = call float @dx.op.binary.f32(i32 35, float %4858, float 0.000000e+00)  ; FMax(a,b)
  %4860 = fmul fast float %4841, %4859
  %4861 = fsub fast float %4836, %4860
  %4862 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4861)  ; FMax(a,b)
  %4863 = call float @dx.op.binary.f32(i32 35, float %4857, float %4862)  ; FMax(a,b)
  %4864 = fsub fast float 5.000000e-01, %4801
  %4865 = fsub fast float 5.000000e-01, %4802
  %4866 = fmul fast float %4865, %4864
  %4867 = fmul fast float %4866, %4863
  store i32 %4528, i32* %4805, align 4
  store i32 %4529, i32* %4806, align 4
  store i32 %4530, i32* %4807, align 4
  store i32 %4531, i32* %4808, align 4
  %4868 = load i32, i32* %4809, align 4, !tbaa !94
  %4869 = mul i32 %4868, %4524
  %4870 = mul i32 %4868, %4525
  %4871 = add i32 %4539, %4869
  %4872 = add i32 %4533, %4870
  %4873 = and i32 %4871, %4535
  %4874 = and i32 %4872, %4535
  %4875 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %4873, i32 %4874, i32 %4449, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4876 = extractvalue %dx.types.ResRet.i32 %4875, 0
  %4877 = extractvalue %dx.types.ResRet.i32 %4875, 1
  %4878 = extractvalue %dx.types.ResRet.i32 %4875, 2
  %4879 = extractvalue %dx.types.ResRet.i32 %4875, 3
  %4880 = and i32 %4876, 65535
  %4881 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4880)  ; LegacyF16ToF32(value)
  %4882 = lshr i32 %4876, 16
  %4883 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4882)  ; LegacyF16ToF32(value)
  %4884 = and i32 %4877, 65535
  %4885 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4884)  ; LegacyF16ToF32(value)
  %4886 = lshr i32 %4877, 16
  %4887 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4886)  ; LegacyF16ToF32(value)
  %4888 = and i32 %4878, 65535
  %4889 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4888)  ; LegacyF16ToF32(value)
  %4890 = lshr i32 %4878, 16
  %4891 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4890)  ; LegacyF16ToF32(value)
  %4892 = and i32 %4879, 65535
  %4893 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4892)  ; LegacyF16ToF32(value)
  %4894 = lshr i32 %4879, 16
  %4895 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4894)  ; LegacyF16ToF32(value)
  %4896 = fsub fast float %4817, %4883
  %4897 = call float @dx.op.binary.f32(i32 35, float %4896, float 0.000000e+00)  ; FMax(a,b)
  %4898 = fmul fast float %4841, %4897
  %4899 = fsub fast float %4881, %4898
  %4900 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4899)  ; FMax(a,b)
  %4901 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4900)  ; FMax(a,b)
  %4902 = fsub fast float %4817, %4887
  %4903 = call float @dx.op.binary.f32(i32 35, float %4902, float 0.000000e+00)  ; FMax(a,b)
  %4904 = fmul fast float %4841, %4903
  %4905 = fsub fast float %4885, %4904
  %4906 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4905)  ; FMax(a,b)
  %4907 = call float @dx.op.binary.f32(i32 35, float %4901, float %4906)  ; FMax(a,b)
  %4908 = fsub fast float %4817, %4891
  %4909 = call float @dx.op.binary.f32(i32 35, float %4908, float 0.000000e+00)  ; FMax(a,b)
  %4910 = fmul fast float %4841, %4909
  %4911 = fsub fast float %4889, %4910
  %4912 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4911)  ; FMax(a,b)
  %4913 = call float @dx.op.binary.f32(i32 35, float %4907, float %4912)  ; FMax(a,b)
  %4914 = fsub fast float %4817, %4895
  %4915 = call float @dx.op.binary.f32(i32 35, float %4914, float 0.000000e+00)  ; FMax(a,b)
  %4916 = fmul fast float %4841, %4915
  %4917 = fsub fast float %4893, %4916
  %4918 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4917)  ; FMax(a,b)
  %4919 = call float @dx.op.binary.f32(i32 35, float %4913, float %4918)  ; FMax(a,b)
  %4920 = fmul fast float %4865, %4803
  %4921 = fmul fast float %4920, %4919
  store i32 %4528, i32* %4805, align 4
  store i32 %4529, i32* %4806, align 4
  store i32 %4530, i32* %4807, align 4
  store i32 %4531, i32* %4808, align 4
  %4922 = load i32, i32* %4809, align 4, !tbaa !94
  %4923 = mul i32 %4922, %4524
  %4924 = mul i32 %4922, %4525
  %4925 = add i32 %4532, %4923
  %4926 = add i32 %4543, %4924
  %4927 = and i32 %4925, %4535
  %4928 = and i32 %4926, %4535
  %4929 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %4927, i32 %4928, i32 %4449, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4930 = extractvalue %dx.types.ResRet.i32 %4929, 0
  %4931 = extractvalue %dx.types.ResRet.i32 %4929, 1
  %4932 = extractvalue %dx.types.ResRet.i32 %4929, 2
  %4933 = extractvalue %dx.types.ResRet.i32 %4929, 3
  %4934 = and i32 %4930, 65535
  %4935 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4934)  ; LegacyF16ToF32(value)
  %4936 = lshr i32 %4930, 16
  %4937 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4936)  ; LegacyF16ToF32(value)
  %4938 = and i32 %4931, 65535
  %4939 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4938)  ; LegacyF16ToF32(value)
  %4940 = lshr i32 %4931, 16
  %4941 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4940)  ; LegacyF16ToF32(value)
  %4942 = and i32 %4932, 65535
  %4943 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4942)  ; LegacyF16ToF32(value)
  %4944 = lshr i32 %4932, 16
  %4945 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4944)  ; LegacyF16ToF32(value)
  %4946 = and i32 %4933, 65535
  %4947 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4946)  ; LegacyF16ToF32(value)
  %4948 = lshr i32 %4933, 16
  %4949 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4948)  ; LegacyF16ToF32(value)
  %4950 = fsub fast float %4817, %4937
  %4951 = call float @dx.op.binary.f32(i32 35, float %4950, float 0.000000e+00)  ; FMax(a,b)
  %4952 = fmul fast float %4841, %4951
  %4953 = fsub fast float %4935, %4952
  %4954 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4953)  ; FMax(a,b)
  %4955 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4954)  ; FMax(a,b)
  %4956 = fsub fast float %4817, %4941
  %4957 = call float @dx.op.binary.f32(i32 35, float %4956, float 0.000000e+00)  ; FMax(a,b)
  %4958 = fmul fast float %4841, %4957
  %4959 = fsub fast float %4939, %4958
  %4960 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4959)  ; FMax(a,b)
  %4961 = call float @dx.op.binary.f32(i32 35, float %4955, float %4960)  ; FMax(a,b)
  %4962 = fsub fast float %4817, %4945
  %4963 = call float @dx.op.binary.f32(i32 35, float %4962, float 0.000000e+00)  ; FMax(a,b)
  %4964 = fmul fast float %4841, %4963
  %4965 = fsub fast float %4943, %4964
  %4966 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4965)  ; FMax(a,b)
  %4967 = call float @dx.op.binary.f32(i32 35, float %4961, float %4966)  ; FMax(a,b)
  %4968 = fsub fast float %4817, %4949
  %4969 = call float @dx.op.binary.f32(i32 35, float %4968, float 0.000000e+00)  ; FMax(a,b)
  %4970 = fmul fast float %4841, %4969
  %4971 = fsub fast float %4947, %4970
  %4972 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4971)  ; FMax(a,b)
  %4973 = call float @dx.op.binary.f32(i32 35, float %4967, float %4972)  ; FMax(a,b)
  %4974 = fmul fast float %4973, %4864
  store i32 %4528, i32* %4805, align 4
  store i32 %4529, i32* %4806, align 4
  store i32 %4530, i32* %4807, align 4
  store i32 %4531, i32* %4808, align 4
  %4975 = load i32, i32* %4809, align 4, !tbaa !94
  %4976 = mul i32 %4975, %4524
  %4977 = mul i32 %4975, %4525
  %4978 = add i32 %4539, %4976
  %4979 = add i32 %4543, %4977
  %4980 = and i32 %4978, %4535
  %4981 = and i32 %4979, %4535
  %4982 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %4980, i32 %4981, i32 %4449, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4983 = extractvalue %dx.types.ResRet.i32 %4982, 0
  %4984 = extractvalue %dx.types.ResRet.i32 %4982, 1
  %4985 = extractvalue %dx.types.ResRet.i32 %4982, 2
  %4986 = extractvalue %dx.types.ResRet.i32 %4982, 3
  %4987 = and i32 %4983, 65535
  %4988 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4987)  ; LegacyF16ToF32(value)
  %4989 = lshr i32 %4983, 16
  %4990 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4989)  ; LegacyF16ToF32(value)
  %4991 = and i32 %4984, 65535
  %4992 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4991)  ; LegacyF16ToF32(value)
  %4993 = lshr i32 %4984, 16
  %4994 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4993)  ; LegacyF16ToF32(value)
  %4995 = and i32 %4985, 65535
  %4996 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4995)  ; LegacyF16ToF32(value)
  %4997 = lshr i32 %4985, 16
  %4998 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4997)  ; LegacyF16ToF32(value)
  %4999 = and i32 %4986, 65535
  %5000 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4999)  ; LegacyF16ToF32(value)
  %5001 = lshr i32 %4986, 16
  %5002 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5001)  ; LegacyF16ToF32(value)
  %5003 = fsub fast float %4817, %4990
  %5004 = call float @dx.op.binary.f32(i32 35, float %5003, float 0.000000e+00)  ; FMax(a,b)
  %5005 = fmul fast float %4841, %5004
  %5006 = fsub fast float %4988, %5005
  %5007 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5006)  ; FMax(a,b)
  %5008 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5007)  ; FMax(a,b)
  %5009 = fsub fast float %4817, %4994
  %5010 = call float @dx.op.binary.f32(i32 35, float %5009, float 0.000000e+00)  ; FMax(a,b)
  %5011 = fmul fast float %4841, %5010
  %5012 = fsub fast float %4992, %5011
  %5013 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5012)  ; FMax(a,b)
  %5014 = call float @dx.op.binary.f32(i32 35, float %5008, float %5013)  ; FMax(a,b)
  %5015 = fsub fast float %4817, %4998
  %5016 = call float @dx.op.binary.f32(i32 35, float %5015, float 0.000000e+00)  ; FMax(a,b)
  %5017 = fmul fast float %4841, %5016
  %5018 = fsub fast float %4996, %5017
  %5019 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5018)  ; FMax(a,b)
  %5020 = call float @dx.op.binary.f32(i32 35, float %5014, float %5019)  ; FMax(a,b)
  %5021 = fsub fast float %4817, %5002
  %5022 = call float @dx.op.binary.f32(i32 35, float %5021, float 0.000000e+00)  ; FMax(a,b)
  %5023 = fmul fast float %4841, %5022
  %5024 = fsub fast float %5000, %5023
  %5025 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5024)  ; FMax(a,b)
  %5026 = call float @dx.op.binary.f32(i32 35, float %5020, float %5025)  ; FMax(a,b)
  %5027 = fmul fast float %5026, %4803
  %5028 = fadd fast float %5027, %4974
  %5029 = fmul fast float %5028, %4804
  %5030 = fadd fast float %4921, %4867
  %5031 = fadd fast float %5030, %5029
  %5032 = fmul fast float %4447, 5.000000e-01
  %5033 = fmul fast float %4448, 5.000000e-01
  %5034 = fadd fast float %5032, 2.500000e-01
  %5035 = fadd fast float %5033, 2.500000e-01
  %5036 = fmul fast float %4498, %5034
  %5037 = fmul fast float %4498, %5035
  %5038 = fadd fast float %5036, -5.000000e-01
  %5039 = fadd fast float %5037, -5.000000e-01
  %5040 = fptosi float %5038 to i32
  %5041 = fptosi float %5039 to i32
  %5042 = fadd fast float %5036, 5.000000e-01
  %5043 = fadd fast float %5037, 5.000000e-01
  %5044 = call float @dx.op.unary.f32(i32 22, float %5042)  ; Frc(value)
  %5045 = call float @dx.op.unary.f32(i32 22, float %5043)  ; Frc(value)
  %5046 = getelementptr inbounds [4 x float], [4 x float]* %54, i32 0, i32 0
  store float %4510, float* %5046, align 4
  %5047 = getelementptr inbounds [4 x float], [4 x float]* %54, i32 0, i32 1
  store float %4511, float* %5047, align 4
  %5048 = getelementptr inbounds [4 x float], [4 x float]* %54, i32 0, i32 2
  store float %4512, float* %5048, align 4
  %5049 = getelementptr inbounds [4 x float], [4 x float]* %54, i32 0, i32 3
  store float %4513, float* %5049, align 4
  %5050 = getelementptr inbounds [4 x float], [4 x float]* %54, i32 0, i32 %4493
  %5051 = load float, float* %5050, align 4, !tbaa !88
  %5052 = fmul fast float %4515, %5051
  %5053 = call float @dx.op.binary.f32(i32 35, float 1.000000e+00, float %5052)  ; FMax(a,b)
  %5054 = fadd fast float %5044, -5.000000e-01
  %5055 = fadd fast float %5045, -5.000000e-01
  %5056 = fmul fast float %5053, %5054
  %5057 = fmul fast float %5053, %5055
  %5058 = call float @dx.op.binary.f32(i32 35, float %5056, float -5.000000e-01)  ; FMax(a,b)
  %5059 = call float @dx.op.binary.f32(i32 35, float %5057, float -5.000000e-01)  ; FMax(a,b)
  %5060 = call float @dx.op.binary.f32(i32 36, float %5058, float 5.000000e-01)  ; FMin(a,b)
  %5061 = call float @dx.op.binary.f32(i32 36, float %5059, float 5.000000e-01)  ; FMin(a,b)
  %5062 = fadd fast float %5060, 5.000000e-01
  %5063 = fadd fast float %5061, 5.000000e-01
  %5064 = call i32 @dx.op.binary.i32(i32 37, i32 %5040, i32 0)  ; IMax(a,b)
  %5065 = call i32 @dx.op.binary.i32(i32 37, i32 %5041, i32 0)  ; IMax(a,b)
  %5066 = call i32 @dx.op.binary.i32(i32 38, i32 %5064, i32 %4518)  ; IMin(a,b)
  %5067 = call i32 @dx.op.binary.i32(i32 38, i32 %5065, i32 %4518)  ; IMin(a,b)
  %5068 = sub i32 2, %4449
  %5069 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 0
  store i32 %4528, i32* %5069, align 4
  %5070 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 1
  store i32 %4529, i32* %5070, align 4
  %5071 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 2
  store i32 %4530, i32* %5071, align 4
  %5072 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 3
  store i32 %4531, i32* %5072, align 4
  %5073 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 %5068
  %5074 = load i32, i32* %5073, align 4, !tbaa !94
  %5075 = mul i32 %5074, %4524
  %5076 = mul i32 %5074, %4525
  %5077 = add i32 %5066, 536870912
  %5078 = add i32 %5077, %5075
  %5079 = add i32 %5067, 536870912
  %5080 = add i32 %5079, %5076
  %5081 = and i32 %5078, %4535
  %5082 = and i32 %5080, %4535
  %5083 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %5081, i32 %5082, i32 %4493, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5084 = extractvalue %dx.types.ResRet.i32 %5083, 0
  %5085 = extractvalue %dx.types.ResRet.i32 %5083, 1
  %5086 = extractvalue %dx.types.ResRet.i32 %5083, 2
  %5087 = extractvalue %dx.types.ResRet.i32 %5083, 3
  %5088 = and i32 %5084, 65535
  %5089 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5088)  ; LegacyF16ToF32(value)
  %5090 = lshr i32 %5084, 16
  %5091 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5090)  ; LegacyF16ToF32(value)
  %5092 = and i32 %5085, 65535
  %5093 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5092)  ; LegacyF16ToF32(value)
  %5094 = lshr i32 %5085, 16
  %5095 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5094)  ; LegacyF16ToF32(value)
  %5096 = and i32 %5086, 65535
  %5097 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5096)  ; LegacyF16ToF32(value)
  %5098 = lshr i32 %5086, 16
  %5099 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5098)  ; LegacyF16ToF32(value)
  %5100 = and i32 %5087, 65535
  %5101 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5100)  ; LegacyF16ToF32(value)
  %5102 = lshr i32 %5087, 16
  %5103 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5102)  ; LegacyF16ToF32(value)
  %5104 = fsub fast float %4817, %5091
  %5105 = call float @dx.op.binary.f32(i32 35, float %5104, float 0.000000e+00)  ; FMax(a,b)
  %5106 = fmul fast float %4841, %5105
  %5107 = fsub fast float %5089, %5106
  %5108 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5107)  ; FMax(a,b)
  %5109 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5108)  ; FMax(a,b)
  %5110 = fsub fast float %4817, %5095
  %5111 = call float @dx.op.binary.f32(i32 35, float %5110, float 0.000000e+00)  ; FMax(a,b)
  %5112 = fmul fast float %4841, %5111
  %5113 = fsub fast float %5093, %5112
  %5114 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5113)  ; FMax(a,b)
  %5115 = call float @dx.op.binary.f32(i32 35, float %5109, float %5114)  ; FMax(a,b)
  %5116 = fsub fast float %4817, %5099
  %5117 = call float @dx.op.binary.f32(i32 35, float %5116, float 0.000000e+00)  ; FMax(a,b)
  %5118 = fmul fast float %4841, %5117
  %5119 = fsub fast float %5097, %5118
  %5120 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5119)  ; FMax(a,b)
  %5121 = call float @dx.op.binary.f32(i32 35, float %5115, float %5120)  ; FMax(a,b)
  %5122 = fsub fast float %4817, %5103
  %5123 = call float @dx.op.binary.f32(i32 35, float %5122, float 0.000000e+00)  ; FMax(a,b)
  %5124 = fmul fast float %4841, %5123
  %5125 = fsub fast float %5101, %5124
  %5126 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5125)  ; FMax(a,b)
  %5127 = call float @dx.op.binary.f32(i32 35, float %5121, float %5126)  ; FMax(a,b)
  %5128 = fsub fast float 5.000000e-01, %5060
  %5129 = fsub fast float 5.000000e-01, %5061
  %5130 = fmul fast float %5129, %5128
  %5131 = fmul fast float %5130, %5127
  %5132 = add i32 %5040, 1
  %5133 = call i32 @dx.op.binary.i32(i32 37, i32 %5132, i32 0)  ; IMax(a,b)
  %5134 = call i32 @dx.op.binary.i32(i32 38, i32 %5133, i32 %4518)  ; IMin(a,b)
  store i32 %4528, i32* %5069, align 4
  store i32 %4529, i32* %5070, align 4
  store i32 %4530, i32* %5071, align 4
  store i32 %4531, i32* %5072, align 4
  %5135 = load i32, i32* %5073, align 4, !tbaa !94
  %5136 = mul i32 %5135, %4524
  %5137 = mul i32 %5135, %4525
  %5138 = add i32 %5134, 536870912
  %5139 = add i32 %5138, %5136
  %5140 = add i32 %5079, %5137
  %5141 = and i32 %5139, %4535
  %5142 = and i32 %5140, %4535
  %5143 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %5141, i32 %5142, i32 %4493, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5144 = extractvalue %dx.types.ResRet.i32 %5143, 0
  %5145 = extractvalue %dx.types.ResRet.i32 %5143, 1
  %5146 = extractvalue %dx.types.ResRet.i32 %5143, 2
  %5147 = extractvalue %dx.types.ResRet.i32 %5143, 3
  %5148 = and i32 %5144, 65535
  %5149 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5148)  ; LegacyF16ToF32(value)
  %5150 = lshr i32 %5144, 16
  %5151 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5150)  ; LegacyF16ToF32(value)
  %5152 = and i32 %5145, 65535
  %5153 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5152)  ; LegacyF16ToF32(value)
  %5154 = lshr i32 %5145, 16
  %5155 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5154)  ; LegacyF16ToF32(value)
  %5156 = and i32 %5146, 65535
  %5157 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5156)  ; LegacyF16ToF32(value)
  %5158 = lshr i32 %5146, 16
  %5159 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5158)  ; LegacyF16ToF32(value)
  %5160 = and i32 %5147, 65535
  %5161 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5160)  ; LegacyF16ToF32(value)
  %5162 = lshr i32 %5147, 16
  %5163 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5162)  ; LegacyF16ToF32(value)
  %5164 = fsub fast float %4817, %5151
  %5165 = call float @dx.op.binary.f32(i32 35, float %5164, float 0.000000e+00)  ; FMax(a,b)
  %5166 = fmul fast float %4841, %5165
  %5167 = fsub fast float %5149, %5166
  %5168 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5167)  ; FMax(a,b)
  %5169 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5168)  ; FMax(a,b)
  %5170 = fsub fast float %4817, %5155
  %5171 = call float @dx.op.binary.f32(i32 35, float %5170, float 0.000000e+00)  ; FMax(a,b)
  %5172 = fmul fast float %4841, %5171
  %5173 = fsub fast float %5153, %5172
  %5174 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5173)  ; FMax(a,b)
  %5175 = call float @dx.op.binary.f32(i32 35, float %5169, float %5174)  ; FMax(a,b)
  %5176 = fsub fast float %4817, %5159
  %5177 = call float @dx.op.binary.f32(i32 35, float %5176, float 0.000000e+00)  ; FMax(a,b)
  %5178 = fmul fast float %4841, %5177
  %5179 = fsub fast float %5157, %5178
  %5180 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5179)  ; FMax(a,b)
  %5181 = call float @dx.op.binary.f32(i32 35, float %5175, float %5180)  ; FMax(a,b)
  %5182 = fsub fast float %4817, %5163
  %5183 = call float @dx.op.binary.f32(i32 35, float %5182, float 0.000000e+00)  ; FMax(a,b)
  %5184 = fmul fast float %4841, %5183
  %5185 = fsub fast float %5161, %5184
  %5186 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5185)  ; FMax(a,b)
  %5187 = call float @dx.op.binary.f32(i32 35, float %5181, float %5186)  ; FMax(a,b)
  %5188 = fmul fast float %5129, %5062
  %5189 = fmul fast float %5188, %5187
  %5190 = add i32 %5041, 1
  %5191 = call i32 @dx.op.binary.i32(i32 37, i32 %5190, i32 0)  ; IMax(a,b)
  %5192 = call i32 @dx.op.binary.i32(i32 38, i32 %5191, i32 %4518)  ; IMin(a,b)
  store i32 %4528, i32* %5069, align 4
  store i32 %4529, i32* %5070, align 4
  store i32 %4530, i32* %5071, align 4
  store i32 %4531, i32* %5072, align 4
  %5193 = load i32, i32* %5073, align 4, !tbaa !94
  %5194 = mul i32 %5193, %4524
  %5195 = mul i32 %5193, %4525
  %5196 = add i32 %5077, %5194
  %5197 = add i32 %5192, 536870912
  %5198 = add i32 %5197, %5195
  %5199 = and i32 %5196, %4535
  %5200 = and i32 %5198, %4535
  %5201 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %5199, i32 %5200, i32 %4493, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5202 = extractvalue %dx.types.ResRet.i32 %5201, 0
  %5203 = extractvalue %dx.types.ResRet.i32 %5201, 1
  %5204 = extractvalue %dx.types.ResRet.i32 %5201, 2
  %5205 = extractvalue %dx.types.ResRet.i32 %5201, 3
  %5206 = and i32 %5202, 65535
  %5207 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5206)  ; LegacyF16ToF32(value)
  %5208 = lshr i32 %5202, 16
  %5209 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5208)  ; LegacyF16ToF32(value)
  %5210 = and i32 %5203, 65535
  %5211 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5210)  ; LegacyF16ToF32(value)
  %5212 = lshr i32 %5203, 16
  %5213 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5212)  ; LegacyF16ToF32(value)
  %5214 = and i32 %5204, 65535
  %5215 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5214)  ; LegacyF16ToF32(value)
  %5216 = lshr i32 %5204, 16
  %5217 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5216)  ; LegacyF16ToF32(value)
  %5218 = and i32 %5205, 65535
  %5219 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5218)  ; LegacyF16ToF32(value)
  %5220 = lshr i32 %5205, 16
  %5221 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5220)  ; LegacyF16ToF32(value)
  %5222 = fsub fast float %4817, %5209
  %5223 = call float @dx.op.binary.f32(i32 35, float %5222, float 0.000000e+00)  ; FMax(a,b)
  %5224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 339)  ; CBufferLoadLegacy(handle,regIndex)
  %5225 = extractvalue %dx.types.CBufRet.f32 %5224, 2
  %5226 = fmul fast float %5225, %5223
  %5227 = fsub fast float %5207, %5226
  %5228 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5227)  ; FMax(a,b)
  %5229 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5228)  ; FMax(a,b)
  %5230 = fsub fast float %4817, %5213
  %5231 = call float @dx.op.binary.f32(i32 35, float %5230, float 0.000000e+00)  ; FMax(a,b)
  %5232 = fmul fast float %5225, %5231
  %5233 = fsub fast float %5211, %5232
  %5234 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5233)  ; FMax(a,b)
  %5235 = call float @dx.op.binary.f32(i32 35, float %5229, float %5234)  ; FMax(a,b)
  %5236 = fsub fast float %4817, %5217
  %5237 = call float @dx.op.binary.f32(i32 35, float %5236, float 0.000000e+00)  ; FMax(a,b)
  %5238 = fmul fast float %5225, %5237
  %5239 = fsub fast float %5215, %5238
  %5240 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5239)  ; FMax(a,b)
  %5241 = call float @dx.op.binary.f32(i32 35, float %5235, float %5240)  ; FMax(a,b)
  %5242 = fsub fast float %4817, %5221
  %5243 = call float @dx.op.binary.f32(i32 35, float %5242, float 0.000000e+00)  ; FMax(a,b)
  %5244 = fmul fast float %5225, %5243
  %5245 = fsub fast float %5219, %5244
  %5246 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5245)  ; FMax(a,b)
  %5247 = call float @dx.op.binary.f32(i32 35, float %5241, float %5246)  ; FMax(a,b)
  %5248 = fmul fast float %5247, %5128
  store i32 %4528, i32* %5069, align 4
  store i32 %4529, i32* %5070, align 4
  store i32 %4530, i32* %5071, align 4
  store i32 %4531, i32* %5072, align 4
  %5249 = load i32, i32* %5073, align 4, !tbaa !94
  %5250 = mul i32 %5249, %4524
  %5251 = mul i32 %5249, %4525
  %5252 = add i32 %5138, %5250
  %5253 = add i32 %5197, %5251
  %5254 = and i32 %5252, %4535
  %5255 = and i32 %5253, %4535
  %5256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 335)  ; CBufferLoadLegacy(handle,regIndex)
  %5257 = extractvalue %dx.types.CBufRet.f32 %5256, 0
  %5258 = fsub fast float %4391, %5257
  %5259 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %5254, i32 %5255, i32 %4493, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5260 = extractvalue %dx.types.ResRet.i32 %5259, 0
  %5261 = extractvalue %dx.types.ResRet.i32 %5259, 1
  %5262 = extractvalue %dx.types.ResRet.i32 %5259, 2
  %5263 = extractvalue %dx.types.ResRet.i32 %5259, 3
  %5264 = and i32 %5260, 65535
  %5265 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5264)  ; LegacyF16ToF32(value)
  %5266 = lshr i32 %5260, 16
  %5267 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5266)  ; LegacyF16ToF32(value)
  %5268 = and i32 %5261, 65535
  %5269 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5268)  ; LegacyF16ToF32(value)
  %5270 = lshr i32 %5261, 16
  %5271 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5270)  ; LegacyF16ToF32(value)
  %5272 = and i32 %5262, 65535
  %5273 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5272)  ; LegacyF16ToF32(value)
  %5274 = lshr i32 %5262, 16
  %5275 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5274)  ; LegacyF16ToF32(value)
  %5276 = and i32 %5263, 65535
  %5277 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5276)  ; LegacyF16ToF32(value)
  %5278 = lshr i32 %5263, 16
  %5279 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5278)  ; LegacyF16ToF32(value)
  %5280 = fsub fast float %5258, %5267
  %5281 = call float @dx.op.binary.f32(i32 35, float %5280, float 0.000000e+00)  ; FMax(a,b)
  %5282 = fmul fast float %5225, %5281
  %5283 = fsub fast float %5265, %5282
  %5284 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5283)  ; FMax(a,b)
  %5285 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5284)  ; FMax(a,b)
  %5286 = fsub fast float %5258, %5271
  %5287 = call float @dx.op.binary.f32(i32 35, float %5286, float 0.000000e+00)  ; FMax(a,b)
  %5288 = fmul fast float %5225, %5287
  %5289 = fsub fast float %5269, %5288
  %5290 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5289)  ; FMax(a,b)
  %5291 = call float @dx.op.binary.f32(i32 35, float %5285, float %5290)  ; FMax(a,b)
  %5292 = fsub fast float %5258, %5275
  %5293 = call float @dx.op.binary.f32(i32 35, float %5292, float 0.000000e+00)  ; FMax(a,b)
  %5294 = fmul fast float %5225, %5293
  %5295 = fsub fast float %5273, %5294
  %5296 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5295)  ; FMax(a,b)
  %5297 = call float @dx.op.binary.f32(i32 35, float %5291, float %5296)  ; FMax(a,b)
  %5298 = fsub fast float %5258, %5279
  %5299 = call float @dx.op.binary.f32(i32 35, float %5298, float 0.000000e+00)  ; FMax(a,b)
  %5300 = fmul fast float %5225, %5299
  %5301 = fsub fast float %5277, %5300
  %5302 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5301)  ; FMax(a,b)
  %5303 = call float @dx.op.binary.f32(i32 35, float %5297, float %5302)  ; FMax(a,b)
  %5304 = fmul fast float %5303, %5062
  %5305 = fadd fast float %5304, %5248
  %5306 = fmul fast float %5305, %5063
  %5307 = fadd fast float %5189, %5131
  %5308 = fadd fast float %5307, %5306
  %5309 = call float @dx.op.binary.f32(i32 35, float %4485, float %4486)  ; FMax(a,b)
  %5310 = extractvalue %dx.types.CBufRet.f32 %5224, 1
  %5311 = fmul fast float %5310, 2.000000e+00
  %5312 = fadd fast float %5309, -1.000000e+00
  %5313 = fadd fast float %5312, %5311
  %5314 = fdiv fast float %5313, %5311
  %5315 = call float @dx.op.unary.f32(i32 7, float %5314)  ; Saturate(value)
  %5316 = fmul fast float %5315, 2.000000e+00
  %5317 = fsub fast float 3.000000e+00, %5316
  %5318 = fmul fast float %5315, %5315
  %5319 = fmul fast float %5318, %5317
  %5320 = fmul fast float %5319, %5308
  %5321 = fsub fast float 1.000000e+00, %5319
  %5322 = fmul fast float %5321, %5031
  %5323 = fadd fast float %5322, %5320
  br label %5324

; <label>:5324                                    ; preds = %4788, %4544, %4446
  %5325 = phi float [ 0.000000e+00, %4446 ], [ %5323, %4788 ], [ %4787, %4544 ]
  %5326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5327 = extractvalue %dx.types.CBufRet.f32 %5326, 0
  %5328 = extractvalue %dx.types.CBufRet.f32 %5326, 1
  %5329 = fsub fast float %4389, %5327
  %5330 = fsub fast float %4390, %5328
  %5331 = fmul fast float %5329, %5329
  %5332 = fmul fast float %5330, %5330
  %5333 = fadd fast float %5331, %5332
  %5334 = call float @dx.op.unary.f32(i32 24, float %5333)  ; Sqrt(value)
  %5335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 336)  ; CBufferLoadLegacy(handle,regIndex)
  %5336 = extractvalue %dx.types.CBufRet.f32 %5335, 0
  %5337 = extractvalue %dx.types.CBufRet.f32 %5335, 1
  %5338 = fsub fast float %5337, %5336
  %5339 = fsub fast float %5334, %5336
  %5340 = fdiv fast float %5339, %5338
  %5341 = call float @dx.op.unary.f32(i32 7, float %5340)  ; Saturate(value)
  %5342 = fmul fast float %5341, 2.000000e+00
  %5343 = fsub fast float 3.000000e+00, %5342
  %5344 = fmul fast float %5341, %5341
  %5345 = fmul fast float %5344, %5343
  %5346 = fsub fast float 1.000000e+00, %5345
  %5347 = fmul fast float %5346, %5325
  %5348 = fadd fast float %5347, %4382
  %5349 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 369)  ; CBufferLoadLegacy(handle,regIndex)
  %5350 = extractvalue %dx.types.CBufRet.i32 %5349, 0
  %5351 = and i32 %5350, 7
  %5352 = icmp eq i32 %5351, 0
  br i1 %5352, label %5424, label %5353

; <label>:5353                                    ; preds = %5324
  %5354 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5355 = extractvalue %dx.types.CBufRet.f32 %5354, 0
  %5356 = extractvalue %dx.types.CBufRet.f32 %5354, 1
  %5357 = extractvalue %dx.types.CBufRet.f32 %5354, 2
  %5358 = fadd fast float %5355, %167
  %5359 = fadd fast float %5356, %168
  %5360 = fadd fast float %5357, %169
  %5361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 151)  ; CBufferLoadLegacy(handle,regIndex)
  %5362 = extractvalue %dx.types.CBufRet.f32 %5361, 0
  %5363 = extractvalue %dx.types.CBufRet.f32 %5361, 1
  %5364 = extractvalue %dx.types.CBufRet.f32 %5361, 2
  %5365 = extractvalue %dx.types.CBufRet.f32 %5361, 3
  %5366 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 152)  ; CBufferLoadLegacy(handle,regIndex)
  %5367 = extractvalue %dx.types.CBufRet.f32 %5366, 0
  %5368 = extractvalue %dx.types.CBufRet.f32 %5366, 1
  %5369 = extractvalue %dx.types.CBufRet.f32 %5366, 2
  %5370 = extractvalue %dx.types.CBufRet.f32 %5366, 3
  %5371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 153)  ; CBufferLoadLegacy(handle,regIndex)
  %5372 = extractvalue %dx.types.CBufRet.f32 %5371, 0
  %5373 = extractvalue %dx.types.CBufRet.f32 %5371, 1
  %5374 = extractvalue %dx.types.CBufRet.f32 %5371, 2
  %5375 = extractvalue %dx.types.CBufRet.f32 %5371, 3
  %5376 = fmul fast float %5358, %5362
  %5377 = call float @dx.op.tertiary.f32(i32 46, float %5359, float %5363, float %5376)  ; FMad(a,b,c)
  %5378 = call float @dx.op.tertiary.f32(i32 46, float %5360, float %5364, float %5377)  ; FMad(a,b,c)
  %5379 = fadd fast float %5378, %5365
  %5380 = fmul fast float %5367, %5358
  %5381 = call float @dx.op.tertiary.f32(i32 46, float %5359, float %5368, float %5380)  ; FMad(a,b,c)
  %5382 = call float @dx.op.tertiary.f32(i32 46, float %5360, float %5369, float %5381)  ; FMad(a,b,c)
  %5383 = fadd fast float %5382, %5370
  %5384 = fmul fast float %5372, %5358
  %5385 = call float @dx.op.tertiary.f32(i32 46, float %5359, float %5373, float %5384)  ; FMad(a,b,c)
  %5386 = call float @dx.op.tertiary.f32(i32 46, float %5360, float %5374, float %5385)  ; FMad(a,b,c)
  %5387 = fadd fast float %5386, %5375
  %5388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 155)  ; CBufferLoadLegacy(handle,regIndex)
  %5389 = extractvalue %dx.types.CBufRet.f32 %5388, 1
  %5390 = extractvalue %dx.types.CBufRet.f32 %5388, 0
  %5391 = fmul fast float %5390, %239
  %5392 = fadd fast float %5387, %5391
  %5393 = fmul fast float %239, 0x401921FB60000000
  %5394 = call float @dx.op.unary.f32(i32 13, float %5393)  ; Sin(value)
  %5395 = call float @dx.op.unary.f32(i32 12, float %5393)  ; Cos(value)
  %5396 = fmul fast float %5395, %5389
  %5397 = call float @dx.op.tertiary.f32(i32 46, float %5394, float %5389, float 0.000000e+00)  ; FMad(a,b,c)
  %5398 = fmul fast float %5389, %5394
  %5399 = fsub fast float -0.000000e+00, %5398
  %5400 = call float @dx.op.tertiary.f32(i32 46, float %5395, float %5389, float 0.000000e+00)  ; FMad(a,b,c)
  br label %5401

; <label>:5401                                    ; preds = %5401, %5353
  %5402 = phi float [ 0.000000e+00, %5353 ], [ %5416, %5401 ]
  %5403 = phi i32 [ 0, %5353 ], [ %5417, %5401 ]
  %5404 = getelementptr [4 x float], [4 x float]* @PCF_OFFSETS_4.0, i32 0, i32 %5403
  %5405 = getelementptr [4 x float], [4 x float]* @PCF_OFFSETS_4.1, i32 0, i32 %5403
  %5406 = load float, float* %5404, align 4
  %5407 = load float, float* %5405, align 4
  %5408 = fmul fast float %5396, %5406
  %5409 = call float @dx.op.tertiary.f32(i32 46, float %5407, float %5399, float %5408)  ; FMad(a,b,c)
  %5410 = fmul fast float %5406, %5397
  %5411 = call float @dx.op.tertiary.f32(i32 46, float %5407, float %5400, float %5410)  ; FMad(a,b,c)
  %5412 = fadd fast float %5379, %5409
  %5413 = fadd fast float %5383, %5411
  %5414 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %2, %dx.types.Handle %48, float %5412, float %5413, float undef, float undef, i32 0, i32 0, i32 undef, float %5392)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5415 = extractvalue %dx.types.ResRet.f32 %5414, 0
  %5416 = fadd fast float %5415, %5402
  %5417 = add nuw nsw i32 %5403, 1
  %5418 = icmp eq i32 %5417, 4
  br i1 %5418, label %5419, label %5401

; <label>:5419                                    ; preds = %5401
  %5420 = fmul fast float %5416, 2.500000e-01
  %5421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 370)  ; CBufferLoadLegacy(handle,regIndex)
  %5422 = extractvalue %dx.types.CBufRet.f32 %5421, 1
  %5423 = fmul fast float %5422, %5420
  br label %5424

; <label>:5424                                    ; preds = %5419, %5324
  %5425 = phi float [ %5420, %5419 ], [ 0.000000e+00, %5324 ]
  %5426 = phi float [ %5423, %5419 ], [ 0.000000e+00, %5324 ]
  %5427 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 369)  ; CBufferLoadLegacy(handle,regIndex)
  %5428 = extractvalue %dx.types.CBufRet.i32 %5427, 0
  %5429 = and i32 %5428, 7
  %5430 = icmp eq i32 %5429, 0
  br i1 %5430, label %5508, label %5431

; <label>:5431                                    ; preds = %5424
  %5432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 370)  ; CBufferLoadLegacy(handle,regIndex)
  %5433 = extractvalue %dx.types.CBufRet.f32 %5432, 0
  %5434 = fmul fast float %5433, %5425
  %5435 = fadd fast float %5434, %5348
  %5436 = extractvalue %dx.types.CBufRet.f32 %5432, 2
  %5437 = fmul fast float %5436, %5425
  %5438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 371)  ; CBufferLoadLegacy(handle,regIndex)
  %5439 = extractvalue %dx.types.CBufRet.f32 %5438, 0
  %5440 = fmul fast float %5439, %5425
  %5441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5442 = and i32 %5428, 8
  %5443 = icmp eq i32 %5442, 0
  br i1 %5443, label %5508, label %5444

; <label>:5444                                    ; preds = %5431
  %5445 = extractvalue %dx.types.CBufRet.f32 %5441, 2
  %5446 = fadd fast float %5445, %169
  %5447 = extractvalue %dx.types.CBufRet.f32 %5441, 1
  %5448 = fadd fast float %5447, %168
  %5449 = extractvalue %dx.types.CBufRet.f32 %5441, 0
  %5450 = fadd fast float %5449, %167
  %5451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 377)  ; CBufferLoadLegacy(handle,regIndex)
  %5452 = extractvalue %dx.types.CBufRet.f32 %5451, 0
  %5453 = extractvalue %dx.types.CBufRet.f32 %5451, 1
  %5454 = extractvalue %dx.types.CBufRet.f32 %5451, 2
  %5455 = fsub fast float %5450, %5452
  %5456 = fsub fast float %5448, %5453
  %5457 = fsub fast float %5446, %5454
  %5458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 378)  ; CBufferLoadLegacy(handle,regIndex)
  %5459 = extractvalue %dx.types.CBufRet.f32 %5458, 0
  %5460 = extractvalue %dx.types.CBufRet.f32 %5458, 1
  %5461 = extractvalue %dx.types.CBufRet.f32 %5458, 2
  %5462 = fmul fast float %5455, %5459
  %5463 = fmul fast float %5456, %5460
  %5464 = fmul fast float %5457, %5461
  %5465 = fcmp fast oge float %5462, 0.000000e+00
  %5466 = fcmp fast oge float %5463, 0.000000e+00
  %5467 = fcmp fast oge float %5464, 0.000000e+00
  %5468 = and i1 %5465, %5466
  %5469 = and i1 %5467, %5468
  %5470 = fcmp fast ole float %5462, 1.000000e+00
  %5471 = fcmp fast ole float %5463, 1.000000e+00
  %5472 = fcmp fast ole float %5464, 1.000000e+00
  %5473 = and i1 %5470, %5471
  %5474 = and i1 %5472, %5473
  %5475 = and i1 %5469, %5474
  br i1 %5475, label %5476, label %5508

; <label>:5476                                    ; preds = %5444
  %5477 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 379)  ; CBufferLoadLegacy(handle,regIndex)
  %5478 = extractvalue %dx.types.CBufRet.i32 %5477, 0
  %5479 = icmp eq i32 %5478, 0
  br i1 %5479, label %5486, label %5480

; <label>:5480                                    ; preds = %5476
  %5481 = add i32 %5478, 0
  %5482 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5481, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5483 = fsub fast float -0.000000e+00, %5463
  %5484 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %5482, %dx.types.Handle %101, float %5462, float %5483, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %5485 = extractvalue %dx.types.ResRet.f32 %5484, 0
  br label %5486

; <label>:5486                                    ; preds = %5480, %5476
  %5487 = phi float [ %5485, %5480 ], [ 1.000000e+00, %5476 ]
  %5488 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 369)  ; CBufferLoadLegacy(handle,regIndex)
  %5489 = extractvalue %dx.types.CBufRet.i32 %5488, 0
  %5490 = and i32 %5489, 32
  %5491 = icmp ne i32 %5490, 0
  %5492 = fmul fast float %5487, %5425
  %5493 = select i1 %5491, float %5487, float %5492
  %5494 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 379)  ; CBufferLoadLegacy(handle,regIndex)
  %5495 = extractvalue %dx.types.CBufRet.f32 %5494, 1
  %5496 = fmul fast float %5493, %5495
  %5497 = fadd fast float %5496, %5435
  %5498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 380)  ; CBufferLoadLegacy(handle,regIndex)
  %5499 = extractvalue %dx.types.CBufRet.f32 %5498, 0
  %5500 = fmul fast float %5493, %5499
  %5501 = fadd fast float %5500, %5426
  %5502 = extractvalue %dx.types.CBufRet.f32 %5498, 1
  %5503 = fmul fast float %5493, %5502
  %5504 = fadd fast float %5503, %5437
  %5505 = extractvalue %dx.types.CBufRet.f32 %5498, 2
  %5506 = fmul fast float %5505, %5493
  %5507 = fadd fast float %5506, %5440
  br label %5508

; <label>:5508                                    ; preds = %5486, %5444, %5431, %5424, %4378
  %5509 = phi float [ %5348, %5424 ], [ %4382, %4378 ], [ %5497, %5486 ], [ %5435, %5444 ], [ %5435, %5431 ]
  %5510 = phi float [ %5426, %5424 ], [ 0.000000e+00, %4378 ], [ %5501, %5486 ], [ %5426, %5444 ], [ %5426, %5431 ]
  %5511 = phi float [ 0.000000e+00, %5424 ], [ 0.000000e+00, %4378 ], [ %5504, %5486 ], [ %5437, %5444 ], [ %5437, %5431 ]
  %5512 = phi float [ 0.000000e+00, %5424 ], [ 0.000000e+00, %4378 ], [ %5507, %5486 ], [ %5440, %5444 ], [ %5440, %5431 ]
  %5513 = call float @dx.op.unary.f32(i32 7, float %5509)  ; Saturate(value)
  %5514 = call float @dx.op.unary.f32(i32 7, float %5510)  ; Saturate(value)
  %5515 = call float @dx.op.unary.f32(i32 7, float %5511)  ; Saturate(value)
  %5516 = call float @dx.op.unary.f32(i32 7, float %5512)  ; Saturate(value)
  %5517 = fcmp fast une float %5515, 0.000000e+00
  %5518 = fcmp fast une float %5516, 0.000000e+00
  %5519 = or i1 %5517, %5518
  br i1 %5519, label %5520, label %6086

; <label>:5520                                    ; preds = %5508
  %5521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5522 = extractvalue %dx.types.CBufRet.f32 %5521, 0
  %5523 = extractvalue %dx.types.CBufRet.f32 %5521, 1
  %5524 = extractvalue %dx.types.CBufRet.f32 %5521, 2
  %5525 = fadd fast float %5522, %167
  %5526 = fadd fast float %5523, %168
  %5527 = fadd fast float %5524, %169
  br i1 %5517, label %5528, label %5801

; <label>:5528                                    ; preds = %5520
  %5529 = call float @dx.op.unary.f32(i32 23, float %4257)  ; Log(value)
  %5530 = fmul fast float %5529, 4.000000e+00
  %5531 = call float @dx.op.unary.f32(i32 21, float %5530)  ; Exp(value)
  %5532 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %5533 = extractvalue %dx.types.CBufRet.f32 %5532, 0
  %5534 = fmul fast float %5533, %5525
  %5535 = fmul fast float %5533, %5526
  %5536 = fmul fast float %5533, %5527
  %5537 = call float @dx.op.unary.f32(i32 6, float %111)  ; FAbs(value)
  %5538 = call float @dx.op.unary.f32(i32 6, float %112)  ; FAbs(value)
  %5539 = call float @dx.op.unary.f32(i32 6, float %113)  ; FAbs(value)
  %5540 = call float @dx.op.unary.f32(i32 23, float %5537)  ; Log(value)
  %5541 = call float @dx.op.unary.f32(i32 23, float %5538)  ; Log(value)
  %5542 = call float @dx.op.unary.f32(i32 23, float %5539)  ; Log(value)
  %5543 = fmul fast float %5540, 4.000000e+00
  %5544 = fmul fast float %5541, 4.000000e+00
  %5545 = fmul fast float %5542, 4.000000e+00
  %5546 = call float @dx.op.unary.f32(i32 21, float %5543)  ; Exp(value)
  %5547 = call float @dx.op.unary.f32(i32 21, float %5544)  ; Exp(value)
  %5548 = call float @dx.op.unary.f32(i32 21, float %5545)  ; Exp(value)
  %5549 = fadd fast float %5547, %5546
  %5550 = fadd fast float %5549, %5548
  %5551 = fdiv fast float 1.000000e+00, %5550
  %5552 = fmul fast float %5551, %5546
  %5553 = fcmp fast ogt float %111, 0.000000e+00
  %5554 = fcmp fast ogt float %112, 0.000000e+00
  %5555 = fcmp fast ogt float %113, 0.000000e+00
  %5556 = fcmp fast olt float %111, 0.000000e+00
  %5557 = fcmp fast olt float %112, 0.000000e+00
  %5558 = fcmp fast olt float %113, 0.000000e+00
  %5559 = zext i1 %5553 to i32
  %5560 = zext i1 %5554 to i32
  %5561 = zext i1 %5555 to i32
  %5562 = zext i1 %5556 to i32
  %5563 = zext i1 %5557 to i32
  %5564 = zext i1 %5558 to i32
  %5565 = sub nsw i32 %5559, %5562
  %5566 = sub nsw i32 %5560, %5563
  %5567 = sub nsw i32 %5561, %5564
  %5568 = call float @dx.op.unary.f32(i32 83, float %5534)  ; DerivCoarseX(value)
  %5569 = call float @dx.op.unary.f32(i32 83, float %5535)  ; DerivCoarseX(value)
  %5570 = call float @dx.op.unary.f32(i32 83, float %5536)  ; DerivCoarseX(value)
  %5571 = call float @dx.op.unary.f32(i32 84, float %5534)  ; DerivCoarseY(value)
  %5572 = call float @dx.op.unary.f32(i32 84, float %5535)  ; DerivCoarseY(value)
  %5573 = call float @dx.op.unary.f32(i32 84, float %5536)  ; DerivCoarseY(value)
  %5574 = fcmp fast ole float %239, %5552
  %5575 = fmul fast float %5551, %5549
  %5576 = fcmp fast ole float %239, %5575
  %5577 = select i1 %5576, float %5536, float %5534
  %5578 = select i1 %5576, float %5534, float %5535
  %5579 = select i1 %5574, float %5535, float %5577
  %5580 = select i1 %5574, float %5536, float %5578
  %5581 = select i1 %5576, float %5570, float %5568
  %5582 = select i1 %5576, float %5568, float %5569
  %5583 = select i1 %5574, float %5569, float %5581
  %5584 = select i1 %5574, float %5570, float %5582
  %5585 = select i1 %5576, float %5573, float %5571
  %5586 = select i1 %5576, float %5571, float %5572
  %5587 = select i1 %5574, float %5572, float %5585
  %5588 = select i1 %5574, float %5573, float %5586
  %5589 = call float @dx.op.unary.f32(i32 27, float %5579)  ; Round_ni(value)
  %5590 = call float @dx.op.unary.f32(i32 27, float %5580)  ; Round_ni(value)
  %5591 = fptosi float %5589 to i32
  %5592 = fptosi float %5590 to i32
  %5593 = xor i32 %5592, %5591
  %5594 = sitofp i32 %5593 to float
  %5595 = fptosi float %5594 to i32
  %5596 = sitofp i32 %5595 to float
  %5597 = fmul fast float %5596, 0x3FE3C6EF40000000
  %5598 = frem fast float %5589, 2.560000e+02
  %5599 = frem fast float %5590, 2.560000e+02
  %5600 = fptoui float %5598 to i32
  %5601 = fptoui float %5599 to i32
  %5602 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %29, i32 0, i32 %5600, i32 %5601, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5603 = extractvalue %dx.types.ResRet.f32 %5602, 0
  %5604 = extractvalue %dx.types.ResRet.f32 %5602, 1
  %5605 = extractvalue %dx.types.ResRet.f32 %5602, 2
  %5606 = fadd fast float %5603, %5597
  %5607 = fadd fast float %5604, %5597
  %5608 = fadd fast float %5605, %5597
  %5609 = call float @dx.op.unary.f32(i32 22, float %5606)  ; Frc(value)
  %5610 = call float @dx.op.unary.f32(i32 22, float %5607)  ; Frc(value)
  %5611 = call float @dx.op.unary.f32(i32 22, float %5608)  ; Frc(value)
  %5612 = fmul fast float %5611, 0x401921FB60000000
  %5613 = call float @dx.op.unary.f32(i32 13, float %5612)  ; Sin(value)
  %5614 = call float @dx.op.unary.f32(i32 12, float %5612)  ; Cos(value)
  %5615 = fsub fast float -0.000000e+00, %5614
  %5616 = fmul fast float %5614, %5579
  %5617 = call float @dx.op.tertiary.f32(i32 46, float %5613, float %5580, float %5616)  ; FMad(a,b,c)
  %5618 = fmul fast float %5613, %5579
  %5619 = call float @dx.op.tertiary.f32(i32 46, float %5615, float %5580, float %5618)  ; FMad(a,b,c)
  %5620 = fadd fast float %5617, %5609
  %5621 = fadd fast float %5619, %5610
  %5622 = extractvalue %dx.types.CBufRet.f32 %5532, 3
  %5623 = bitcast float %5622 to i32
  %5624 = icmp eq i32 %5623, 0
  br i1 %5624, label %5663, label %5625

; <label>:5625                                    ; preds = %5528
  %5626 = add i32 %5623, 0
  %5627 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5626, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5628 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5627, %dx.types.Handle %101, float %5620, float %5621, float undef, float undef, i32 0, i32 0, i32 undef, float %5583, float %5584, float undef, float %5587, float %5588, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5629 = extractvalue %dx.types.ResRet.f32 %5628, 0
  %5630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %5631 = extractvalue %dx.types.CBufRet.f32 %5630, 1
  %5632 = extractvalue %dx.types.CBufRet.f32 %5630, 2
  %5633 = fsub fast float 1.000000e+00, %5515
  %5634 = call float @dx.op.binary.f32(i32 35, float %5633, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5635 = bitcast float %5515 to i32
  %5636 = sitofp i32 %5635 to float
  %5637 = fadd fast float %5636, 0xC1CFBF8940000000
  %5638 = fmul fast float %5632, %5637
  %5639 = fadd fast float %5638, 0x41CFBF8940000000
  %5640 = fptosi float %5639 to i32
  %5641 = bitcast i32 %5640 to float
  %5642 = bitcast float %5634 to i32
  %5643 = sitofp i32 %5642 to float
  %5644 = fadd fast float %5643, 0xC1CFBF8940000000
  %5645 = fmul fast float %5644, %5632
  %5646 = fadd fast float %5645, 0x41CFBF8940000000
  %5647 = fptosi float %5646 to i32
  %5648 = bitcast i32 %5647 to float
  %5649 = fmul fast float %5641, %5631
  %5650 = fmul fast float %5648, %5631
  %5651 = fsub fast float %5634, %5649
  %5652 = fadd fast float %5650, %5634
  %5653 = call float @dx.op.unary.f32(i32 7, float %5651)  ; Saturate(value)
  %5654 = call float @dx.op.unary.f32(i32 7, float %5652)  ; Saturate(value)
  %5655 = fsub fast float %5629, %5653
  %5656 = fsub fast float %5654, %5653
  %5657 = bitcast float %5656 to i32
  %5658 = sub nsw i32 2129859010, %5657
  %5659 = bitcast i32 %5658 to float
  %5660 = fmul fast float %5659, %5655
  %5661 = call float @dx.op.unary.f32(i32 7, float %5660)  ; Saturate(value)
  %5662 = fcmp fast olt float %5661, 0x3F70101020000000
  br i1 %5662, label %5801, label %5663

; <label>:5663                                    ; preds = %5625, %5528
  %5664 = phi float [ %5661, %5625 ], [ %5515, %5528 ]
  %5665 = fmul fast float %5664, %5531
  %5666 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %5667 = extractvalue %dx.types.CBufRet.i32 %5666, 1
  %5668 = extractvalue %dx.types.CBufRet.i32 %5666, 0
  %5669 = add i32 %5668, 0
  %5670 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5669, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5671 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5670, %dx.types.Handle %100, float %5620, float %5621, float undef, float undef, i32 0, i32 0, i32 undef, float %5583, float %5584, float undef, float %5587, float %5588, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5672 = extractvalue %dx.types.ResRet.f32 %5671, 0
  %5673 = extractvalue %dx.types.ResRet.f32 %5671, 1
  %5674 = extractvalue %dx.types.ResRet.f32 %5671, 2
  %5675 = extractvalue %dx.types.ResRet.f32 %5671, 3
  %5676 = and i32 %5667, 255
  %5677 = uitofp i32 %5676 to float
  %5678 = lshr i32 %5667, 8
  %5679 = and i32 %5678, 255
  %5680 = uitofp i32 %5679 to float
  %5681 = fmul fast float %5675, %5677
  %5682 = fadd fast float %5681, %5680
  %5683 = fmul fast float %5682, 0x3F70101000000000
  %5684 = fadd fast float %5683, 0xBFB99999A0000000
  %5685 = call float @dx.op.unary.f32(i32 7, float %5684)  ; Saturate(value)
  %5686 = fmul fast float %5685, 0x3FF1C71C80000000
  %5687 = call float @dx.op.binary.f32(i32 36, float %5683, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5688 = fsub fast float 1.000000e+00, %5686
  %5689 = call float @dx.op.unary.f32(i32 7, float %5688)  ; Saturate(value)
  %5690 = fmul fast float %5689, %5672
  %5691 = fmul fast float %5689, %5673
  %5692 = fmul fast float %5689, %5674
  %5693 = call float @dx.op.unary.f32(i32 7, float %5690)  ; Saturate(value)
  %5694 = call float @dx.op.unary.f32(i32 7, float %5691)  ; Saturate(value)
  %5695 = call float @dx.op.unary.f32(i32 7, float %5692)  ; Saturate(value)
  %5696 = fmul fast float %5686, %5672
  %5697 = fmul fast float %5686, %5673
  %5698 = fmul fast float %5686, %5674
  %5699 = fadd fast float %5696, %5687
  %5700 = fadd fast float %5697, %5687
  %5701 = fadd fast float %5698, %5687
  %5702 = call float @dx.op.unary.f32(i32 7, float %5699)  ; Saturate(value)
  %5703 = call float @dx.op.unary.f32(i32 7, float %5700)  ; Saturate(value)
  %5704 = call float @dx.op.unary.f32(i32 7, float %5701)  ; Saturate(value)
  %5705 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %5706 = extractvalue %dx.types.CBufRet.i32 %5705, 3
  %5707 = extractvalue %dx.types.CBufRet.i32 %5705, 2
  %5708 = add i32 %5707, 0
  %5709 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5708, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5710 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5709, %dx.types.Handle %100, float %5620, float %5621, float undef, float undef, i32 0, i32 0, i32 undef, float %5583, float %5584, float undef, float %5587, float %5588, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5711 = extractvalue %dx.types.ResRet.f32 %5710, 0
  %5712 = extractvalue %dx.types.ResRet.f32 %5710, 1
  %5713 = extractvalue %dx.types.ResRet.f32 %5710, 2
  %5714 = extractvalue %dx.types.ResRet.f32 %5710, 3
  %5715 = and i32 %5706, 255
  %5716 = uitofp i32 %5715 to float
  %5717 = lshr i32 %5706, 8
  %5718 = and i32 %5717, 255
  %5719 = uitofp i32 %5718 to float
  %5720 = lshr i32 %5706, 16
  %5721 = and i32 %5720, 255
  %5722 = uitofp i32 %5721 to float
  %5723 = fmul fast float %5722, 0x3F70101000000000
  %5724 = fmul fast float %5711, %5716
  %5725 = fadd fast float %5724, %5719
  %5726 = fmul fast float %5725, 0x3F70101000000000
  %5727 = fadd fast float %5712, -5.000000e-01
  %5728 = fadd fast float %5714, -5.000000e-01
  %5729 = fmul fast float %5727, %5723
  %5730 = fmul fast float %5728, %5723
  %5731 = fadd fast float %5729, 5.000000e-01
  %5732 = fadd fast float %5730, 5.000000e-01
  %5733 = fmul fast float %5731, 2.000000e+00
  %5734 = fadd fast float %5733, -1.000000e+00
  %5735 = fmul fast float %5732, 2.000000e+00
  %5736 = fadd fast float %5735, -1.000000e+00
  %5737 = fadd fast float %5734, %5736
  %5738 = fmul fast float %5737, 5.000000e-01
  %5739 = fsub fast float %5734, %5736
  %5740 = fmul fast float %5739, 5.000000e-01
  %5741 = call float @dx.op.unary.f32(i32 6, float %5738)  ; FAbs(value)
  %5742 = fsub fast float 1.000000e+00, %5741
  %5743 = call float @dx.op.unary.f32(i32 6, float %5740)  ; FAbs(value)
  %5744 = fsub fast float %5742, %5743
  %5745 = call float @dx.op.dot3.f32(i32 55, float %5738, float %5740, float %5744, float %5738, float %5740, float %5744)  ; Dot3(ax,ay,az,bx,by,bz)
  %5746 = call float @dx.op.unary.f32(i32 25, float %5745)  ; Rsqrt(value)
  %5747 = fmul fast float %5738, %5746
  %5748 = fmul fast float %5740, %5746
  %5749 = select i1 %5576, i32 %5566, i32 %5567
  %5750 = select i1 %5574, i32 %5565, i32 %5749
  %5751 = sitofp i32 %5750 to float
  %5752 = fmul fast float %5744, %5751
  %5753 = fmul fast float %5752, %5746
  %5754 = select i1 %5576, float %5753, float %5748
  %5755 = select i1 %5576, float %5748, float %5753
  %5756 = select i1 %5574, float %5753, float %5747
  %5757 = select i1 %5574, float %5748, float %5754
  %5758 = select i1 %5574, float %5747, float %5755
  %5759 = fsub fast float %5693, %4296
  %5760 = fsub fast float %5694, %4297
  %5761 = fsub fast float %5695, %4298
  %5762 = fmul fast float %5759, %5665
  %5763 = fmul fast float %5760, %5665
  %5764 = fmul fast float %5761, %5665
  %5765 = fadd fast float %5762, %4296
  %5766 = fadd fast float %5763, %4297
  %5767 = fadd fast float %5764, %4298
  %5768 = fsub fast float %5702, %4281
  %5769 = fsub fast float %5703, %4282
  %5770 = fsub fast float %5704, %4283
  %5771 = fmul fast float %5768, %5665
  %5772 = fmul fast float %5769, %5665
  %5773 = fmul fast float %5770, %5665
  %5774 = fadd fast float %5771, %4281
  %5775 = fadd fast float %5772, %4282
  %5776 = fadd fast float %5773, %4283
  %5777 = fadd fast float %5756, %4245
  %5778 = fadd fast float %5757, %4246
  %5779 = fadd fast float %5758, %4247
  %5780 = call float @dx.op.dot3.f32(i32 55, float %5777, float %5778, float %5779, float %5777, float %5778, float %5779)  ; Dot3(ax,ay,az,bx,by,bz)
  %5781 = call float @dx.op.unary.f32(i32 25, float %5780)  ; Rsqrt(value)
  %5782 = fmul fast float %5777, %5781
  %5783 = fmul fast float %5778, %5781
  %5784 = fmul fast float %5779, %5781
  %5785 = fsub fast float %5782, %4245
  %5786 = fsub fast float %5783, %4246
  %5787 = fsub fast float %5784, %4247
  %5788 = fmul fast float %5785, %5665
  %5789 = fmul fast float %5786, %5665
  %5790 = fmul fast float %5787, %5665
  %5791 = fadd fast float %5788, %4245
  %5792 = fadd fast float %5789, %4246
  %5793 = fadd fast float %5790, %4247
  %5794 = call float @dx.op.binary.f32(i32 36, float %4257, float %5713)  ; FMin(a,b)
  %5795 = fsub fast float %5794, %4257
  %5796 = fmul fast float %5795, %5665
  %5797 = fadd fast float %5796, %4257
  %5798 = fsub fast float %5726, %4284
  %5799 = fmul fast float %5798, %5665
  %5800 = fadd fast float %5799, %4284
  br label %5801

; <label>:5801                                    ; preds = %5663, %5625, %5520
  %5802 = phi float [ %5774, %5663 ], [ %4281, %5625 ], [ %4281, %5520 ]
  %5803 = phi float [ %5775, %5663 ], [ %4282, %5625 ], [ %4282, %5520 ]
  %5804 = phi float [ %5776, %5663 ], [ %4283, %5625 ], [ %4283, %5520 ]
  %5805 = phi float [ %5791, %5663 ], [ %4245, %5625 ], [ %4245, %5520 ]
  %5806 = phi float [ %5792, %5663 ], [ %4246, %5625 ], [ %4246, %5520 ]
  %5807 = phi float [ %5793, %5663 ], [ %4247, %5625 ], [ %4247, %5520 ]
  %5808 = phi float [ %5765, %5663 ], [ %4296, %5625 ], [ %4296, %5520 ]
  %5809 = phi float [ %5766, %5663 ], [ %4297, %5625 ], [ %4297, %5520 ]
  %5810 = phi float [ %5767, %5663 ], [ %4298, %5625 ], [ %4298, %5520 ]
  %5811 = phi float [ %5800, %5663 ], [ %4284, %5625 ], [ %4284, %5520 ]
  %5812 = phi float [ %5797, %5663 ], [ %4257, %5625 ], [ %4257, %5520 ]
  br i1 %5518, label %5813, label %6086

; <label>:5813                                    ; preds = %5801
  %5814 = call float @dx.op.unary.f32(i32 23, float %5812)  ; Log(value)
  %5815 = fmul fast float %5814, 4.000000e+00
  %5816 = call float @dx.op.unary.f32(i32 21, float %5815)  ; Exp(value)
  %5817 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5818 = extractvalue %dx.types.CBufRet.f32 %5817, 0
  %5819 = fmul fast float %5818, %5525
  %5820 = fmul fast float %5818, %5526
  %5821 = fmul fast float %5818, %5527
  %5822 = call float @dx.op.unary.f32(i32 6, float %111)  ; FAbs(value)
  %5823 = call float @dx.op.unary.f32(i32 6, float %112)  ; FAbs(value)
  %5824 = call float @dx.op.unary.f32(i32 6, float %113)  ; FAbs(value)
  %5825 = call float @dx.op.unary.f32(i32 23, float %5822)  ; Log(value)
  %5826 = call float @dx.op.unary.f32(i32 23, float %5823)  ; Log(value)
  %5827 = call float @dx.op.unary.f32(i32 23, float %5824)  ; Log(value)
  %5828 = fmul fast float %5825, 4.000000e+00
  %5829 = fmul fast float %5826, 4.000000e+00
  %5830 = fmul fast float %5827, 4.000000e+00
  %5831 = call float @dx.op.unary.f32(i32 21, float %5828)  ; Exp(value)
  %5832 = call float @dx.op.unary.f32(i32 21, float %5829)  ; Exp(value)
  %5833 = call float @dx.op.unary.f32(i32 21, float %5830)  ; Exp(value)
  %5834 = fadd fast float %5832, %5831
  %5835 = fadd fast float %5834, %5833
  %5836 = fdiv fast float 1.000000e+00, %5835
  %5837 = fmul fast float %5836, %5831
  %5838 = fcmp fast ogt float %111, 0.000000e+00
  %5839 = fcmp fast ogt float %112, 0.000000e+00
  %5840 = fcmp fast ogt float %113, 0.000000e+00
  %5841 = fcmp fast olt float %111, 0.000000e+00
  %5842 = fcmp fast olt float %112, 0.000000e+00
  %5843 = fcmp fast olt float %113, 0.000000e+00
  %5844 = zext i1 %5838 to i32
  %5845 = zext i1 %5839 to i32
  %5846 = zext i1 %5840 to i32
  %5847 = zext i1 %5841 to i32
  %5848 = zext i1 %5842 to i32
  %5849 = zext i1 %5843 to i32
  %5850 = sub nsw i32 %5844, %5847
  %5851 = sub nsw i32 %5845, %5848
  %5852 = sub nsw i32 %5846, %5849
  %5853 = call float @dx.op.unary.f32(i32 83, float %5819)  ; DerivCoarseX(value)
  %5854 = call float @dx.op.unary.f32(i32 83, float %5820)  ; DerivCoarseX(value)
  %5855 = call float @dx.op.unary.f32(i32 83, float %5821)  ; DerivCoarseX(value)
  %5856 = call float @dx.op.unary.f32(i32 84, float %5819)  ; DerivCoarseY(value)
  %5857 = call float @dx.op.unary.f32(i32 84, float %5820)  ; DerivCoarseY(value)
  %5858 = call float @dx.op.unary.f32(i32 84, float %5821)  ; DerivCoarseY(value)
  %5859 = fcmp fast ole float %239, %5837
  %5860 = fmul fast float %5836, %5834
  %5861 = fcmp fast ole float %239, %5860
  %5862 = select i1 %5861, float %5821, float %5819
  %5863 = select i1 %5861, float %5819, float %5820
  %5864 = select i1 %5859, float %5820, float %5862
  %5865 = select i1 %5859, float %5821, float %5863
  %5866 = select i1 %5861, float %5855, float %5853
  %5867 = select i1 %5861, float %5853, float %5854
  %5868 = select i1 %5859, float %5854, float %5866
  %5869 = select i1 %5859, float %5855, float %5867
  %5870 = select i1 %5861, float %5858, float %5856
  %5871 = select i1 %5861, float %5856, float %5857
  %5872 = select i1 %5859, float %5857, float %5870
  %5873 = select i1 %5859, float %5858, float %5871
  %5874 = call float @dx.op.unary.f32(i32 27, float %5864)  ; Round_ni(value)
  %5875 = call float @dx.op.unary.f32(i32 27, float %5865)  ; Round_ni(value)
  %5876 = fptosi float %5874 to i32
  %5877 = fptosi float %5875 to i32
  %5878 = xor i32 %5877, %5876
  %5879 = sitofp i32 %5878 to float
  %5880 = fptosi float %5879 to i32
  %5881 = sitofp i32 %5880 to float
  %5882 = fmul fast float %5881, 0x3FE3C6EF40000000
  %5883 = frem fast float %5874, 2.560000e+02
  %5884 = frem fast float %5875, 2.560000e+02
  %5885 = fptoui float %5883 to i32
  %5886 = fptoui float %5884 to i32
  %5887 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %29, i32 0, i32 %5885, i32 %5886, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5888 = extractvalue %dx.types.ResRet.f32 %5887, 0
  %5889 = extractvalue %dx.types.ResRet.f32 %5887, 1
  %5890 = extractvalue %dx.types.ResRet.f32 %5887, 2
  %5891 = fadd fast float %5888, %5882
  %5892 = fadd fast float %5889, %5882
  %5893 = fadd fast float %5890, %5882
  %5894 = call float @dx.op.unary.f32(i32 22, float %5891)  ; Frc(value)
  %5895 = call float @dx.op.unary.f32(i32 22, float %5892)  ; Frc(value)
  %5896 = call float @dx.op.unary.f32(i32 22, float %5893)  ; Frc(value)
  %5897 = fmul fast float %5896, 0x401921FB60000000
  %5898 = call float @dx.op.unary.f32(i32 13, float %5897)  ; Sin(value)
  %5899 = call float @dx.op.unary.f32(i32 12, float %5897)  ; Cos(value)
  %5900 = fsub fast float -0.000000e+00, %5899
  %5901 = fmul fast float %5899, %5864
  %5902 = call float @dx.op.tertiary.f32(i32 46, float %5898, float %5865, float %5901)  ; FMad(a,b,c)
  %5903 = fmul fast float %5898, %5864
  %5904 = call float @dx.op.tertiary.f32(i32 46, float %5900, float %5865, float %5903)  ; FMad(a,b,c)
  %5905 = fadd fast float %5902, %5894
  %5906 = fadd fast float %5904, %5895
  %5907 = extractvalue %dx.types.CBufRet.f32 %5817, 3
  %5908 = bitcast float %5907 to i32
  %5909 = icmp eq i32 %5908, 0
  br i1 %5909, label %5948, label %5910

; <label>:5910                                    ; preds = %5813
  %5911 = add i32 %5908, 0
  %5912 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5911, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5913 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5912, %dx.types.Handle %101, float %5905, float %5906, float undef, float undef, i32 0, i32 0, i32 undef, float %5868, float %5869, float undef, float %5872, float %5873, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5914 = extractvalue %dx.types.ResRet.f32 %5913, 0
  %5915 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5916 = extractvalue %dx.types.CBufRet.f32 %5915, 1
  %5917 = extractvalue %dx.types.CBufRet.f32 %5915, 2
  %5918 = fsub fast float 1.000000e+00, %5516
  %5919 = call float @dx.op.binary.f32(i32 35, float %5918, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5920 = bitcast float %5516 to i32
  %5921 = sitofp i32 %5920 to float
  %5922 = fadd fast float %5921, 0xC1CFBF8940000000
  %5923 = fmul fast float %5917, %5922
  %5924 = fadd fast float %5923, 0x41CFBF8940000000
  %5925 = fptosi float %5924 to i32
  %5926 = bitcast i32 %5925 to float
  %5927 = bitcast float %5919 to i32
  %5928 = sitofp i32 %5927 to float
  %5929 = fadd fast float %5928, 0xC1CFBF8940000000
  %5930 = fmul fast float %5929, %5917
  %5931 = fadd fast float %5930, 0x41CFBF8940000000
  %5932 = fptosi float %5931 to i32
  %5933 = bitcast i32 %5932 to float
  %5934 = fmul fast float %5926, %5916
  %5935 = fmul fast float %5933, %5916
  %5936 = fsub fast float %5919, %5934
  %5937 = fadd fast float %5935, %5919
  %5938 = call float @dx.op.unary.f32(i32 7, float %5936)  ; Saturate(value)
  %5939 = call float @dx.op.unary.f32(i32 7, float %5937)  ; Saturate(value)
  %5940 = fsub fast float %5914, %5938
  %5941 = fsub fast float %5939, %5938
  %5942 = bitcast float %5941 to i32
  %5943 = sub nsw i32 2129859010, %5942
  %5944 = bitcast i32 %5943 to float
  %5945 = fmul fast float %5944, %5940
  %5946 = call float @dx.op.unary.f32(i32 7, float %5945)  ; Saturate(value)
  %5947 = fcmp fast olt float %5946, 0x3F70101020000000
  br i1 %5947, label %6086, label %5948

; <label>:5948                                    ; preds = %5910, %5813
  %5949 = phi float [ %5946, %5910 ], [ %5516, %5813 ]
  %5950 = fmul fast float %5949, %5816
  %5951 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5952 = extractvalue %dx.types.CBufRet.i32 %5951, 1
  %5953 = extractvalue %dx.types.CBufRet.i32 %5951, 0
  %5954 = add i32 %5953, 0
  %5955 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5954, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5956 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5955, %dx.types.Handle %100, float %5905, float %5906, float undef, float undef, i32 0, i32 0, i32 undef, float %5868, float %5869, float undef, float %5872, float %5873, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5957 = extractvalue %dx.types.ResRet.f32 %5956, 0
  %5958 = extractvalue %dx.types.ResRet.f32 %5956, 1
  %5959 = extractvalue %dx.types.ResRet.f32 %5956, 2
  %5960 = extractvalue %dx.types.ResRet.f32 %5956, 3
  %5961 = and i32 %5952, 255
  %5962 = uitofp i32 %5961 to float
  %5963 = lshr i32 %5952, 8
  %5964 = and i32 %5963, 255
  %5965 = uitofp i32 %5964 to float
  %5966 = fmul fast float %5960, %5962
  %5967 = fadd fast float %5966, %5965
  %5968 = fmul fast float %5967, 0x3F70101000000000
  %5969 = fadd fast float %5968, 0xBFB99999A0000000
  %5970 = call float @dx.op.unary.f32(i32 7, float %5969)  ; Saturate(value)
  %5971 = fmul fast float %5970, 0x3FF1C71C80000000
  %5972 = call float @dx.op.binary.f32(i32 36, float %5968, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5973 = fsub fast float 1.000000e+00, %5971
  %5974 = call float @dx.op.unary.f32(i32 7, float %5973)  ; Saturate(value)
  %5975 = fmul fast float %5974, %5957
  %5976 = fmul fast float %5974, %5958
  %5977 = fmul fast float %5974, %5959
  %5978 = call float @dx.op.unary.f32(i32 7, float %5975)  ; Saturate(value)
  %5979 = call float @dx.op.unary.f32(i32 7, float %5976)  ; Saturate(value)
  %5980 = call float @dx.op.unary.f32(i32 7, float %5977)  ; Saturate(value)
  %5981 = fmul fast float %5971, %5957
  %5982 = fmul fast float %5971, %5958
  %5983 = fmul fast float %5971, %5959
  %5984 = fadd fast float %5981, %5972
  %5985 = fadd fast float %5982, %5972
  %5986 = fadd fast float %5983, %5972
  %5987 = call float @dx.op.unary.f32(i32 7, float %5984)  ; Saturate(value)
  %5988 = call float @dx.op.unary.f32(i32 7, float %5985)  ; Saturate(value)
  %5989 = call float @dx.op.unary.f32(i32 7, float %5986)  ; Saturate(value)
  %5990 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5991 = extractvalue %dx.types.CBufRet.i32 %5990, 3
  %5992 = extractvalue %dx.types.CBufRet.i32 %5990, 2
  %5993 = add i32 %5992, 0
  %5994 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5993, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5995 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5994, %dx.types.Handle %100, float %5905, float %5906, float undef, float undef, i32 0, i32 0, i32 undef, float %5868, float %5869, float undef, float %5872, float %5873, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5996 = extractvalue %dx.types.ResRet.f32 %5995, 0
  %5997 = extractvalue %dx.types.ResRet.f32 %5995, 1
  %5998 = extractvalue %dx.types.ResRet.f32 %5995, 2
  %5999 = extractvalue %dx.types.ResRet.f32 %5995, 3
  %6000 = and i32 %5991, 255
  %6001 = uitofp i32 %6000 to float
  %6002 = lshr i32 %5991, 8
  %6003 = and i32 %6002, 255
  %6004 = uitofp i32 %6003 to float
  %6005 = lshr i32 %5991, 16
  %6006 = and i32 %6005, 255
  %6007 = uitofp i32 %6006 to float
  %6008 = fmul fast float %6007, 0x3F70101000000000
  %6009 = fmul fast float %5996, %6001
  %6010 = fadd fast float %6009, %6004
  %6011 = fmul fast float %6010, 0x3F70101000000000
  %6012 = fadd fast float %5997, -5.000000e-01
  %6013 = fadd fast float %5999, -5.000000e-01
  %6014 = fmul fast float %6012, %6008
  %6015 = fmul fast float %6013, %6008
  %6016 = fadd fast float %6014, 5.000000e-01
  %6017 = fadd fast float %6015, 5.000000e-01
  %6018 = fmul fast float %6016, 2.000000e+00
  %6019 = fadd fast float %6018, -1.000000e+00
  %6020 = fmul fast float %6017, 2.000000e+00
  %6021 = fadd fast float %6020, -1.000000e+00
  %6022 = fadd fast float %6019, %6021
  %6023 = fmul fast float %6022, 5.000000e-01
  %6024 = fsub fast float %6019, %6021
  %6025 = fmul fast float %6024, 5.000000e-01
  %6026 = call float @dx.op.unary.f32(i32 6, float %6023)  ; FAbs(value)
  %6027 = fsub fast float 1.000000e+00, %6026
  %6028 = call float @dx.op.unary.f32(i32 6, float %6025)  ; FAbs(value)
  %6029 = fsub fast float %6027, %6028
  %6030 = call float @dx.op.dot3.f32(i32 55, float %6023, float %6025, float %6029, float %6023, float %6025, float %6029)  ; Dot3(ax,ay,az,bx,by,bz)
  %6031 = call float @dx.op.unary.f32(i32 25, float %6030)  ; Rsqrt(value)
  %6032 = fmul fast float %6023, %6031
  %6033 = fmul fast float %6025, %6031
  %6034 = select i1 %5861, i32 %5851, i32 %5852
  %6035 = select i1 %5859, i32 %5850, i32 %6034
  %6036 = sitofp i32 %6035 to float
  %6037 = fmul fast float %6029, %6036
  %6038 = fmul fast float %6037, %6031
  %6039 = select i1 %5861, float %6038, float %6033
  %6040 = select i1 %5861, float %6033, float %6038
  %6041 = select i1 %5859, float %6038, float %6032
  %6042 = select i1 %5859, float %6033, float %6039
  %6043 = select i1 %5859, float %6032, float %6040
  %6044 = fsub fast float %5978, %5808
  %6045 = fsub fast float %5979, %5809
  %6046 = fsub fast float %5980, %5810
  %6047 = fmul fast float %6044, %5950
  %6048 = fmul fast float %6045, %5950
  %6049 = fmul fast float %6046, %5950
  %6050 = fadd fast float %6047, %5808
  %6051 = fadd fast float %6048, %5809
  %6052 = fadd fast float %6049, %5810
  %6053 = fsub fast float %5987, %5802
  %6054 = fsub fast float %5988, %5803
  %6055 = fsub fast float %5989, %5804
  %6056 = fmul fast float %6053, %5950
  %6057 = fmul fast float %6054, %5950
  %6058 = fmul fast float %6055, %5950
  %6059 = fadd fast float %6056, %5802
  %6060 = fadd fast float %6057, %5803
  %6061 = fadd fast float %6058, %5804
  %6062 = fadd fast float %6041, %5805
  %6063 = fadd fast float %6042, %5806
  %6064 = fadd fast float %6043, %5807
  %6065 = call float @dx.op.dot3.f32(i32 55, float %6062, float %6063, float %6064, float %6062, float %6063, float %6064)  ; Dot3(ax,ay,az,bx,by,bz)
  %6066 = call float @dx.op.unary.f32(i32 25, float %6065)  ; Rsqrt(value)
  %6067 = fmul fast float %6062, %6066
  %6068 = fmul fast float %6063, %6066
  %6069 = fmul fast float %6064, %6066
  %6070 = fsub fast float %6067, %5805
  %6071 = fsub fast float %6068, %5806
  %6072 = fsub fast float %6069, %5807
  %6073 = fmul fast float %6070, %5950
  %6074 = fmul fast float %6071, %5950
  %6075 = fmul fast float %6072, %5950
  %6076 = fadd fast float %6073, %5805
  %6077 = fadd fast float %6074, %5806
  %6078 = fadd fast float %6075, %5807
  %6079 = call float @dx.op.binary.f32(i32 36, float %5812, float %5998)  ; FMin(a,b)
  %6080 = fsub fast float %6079, %5812
  %6081 = fmul fast float %6080, %5950
  %6082 = fadd fast float %6081, %5812
  %6083 = fsub fast float %6011, %5811
  %6084 = fmul fast float %6083, %5950
  %6085 = fadd fast float %6084, %5811
  br label %6086

; <label>:6086                                    ; preds = %5948, %5910, %5801, %5508
  %6087 = phi float [ %6059, %5948 ], [ %5802, %5910 ], [ %5802, %5801 ], [ %4281, %5508 ]
  %6088 = phi float [ %6060, %5948 ], [ %5803, %5910 ], [ %5803, %5801 ], [ %4282, %5508 ]
  %6089 = phi float [ %6061, %5948 ], [ %5804, %5910 ], [ %5804, %5801 ], [ %4283, %5508 ]
  %6090 = phi float [ %6076, %5948 ], [ %5805, %5910 ], [ %5805, %5801 ], [ %4245, %5508 ]
  %6091 = phi float [ %6077, %5948 ], [ %5806, %5910 ], [ %5806, %5801 ], [ %4246, %5508 ]
  %6092 = phi float [ %6078, %5948 ], [ %5807, %5910 ], [ %5807, %5801 ], [ %4247, %5508 ]
  %6093 = phi float [ %6050, %5948 ], [ %5808, %5910 ], [ %5808, %5801 ], [ %4296, %5508 ]
  %6094 = phi float [ %6051, %5948 ], [ %5809, %5910 ], [ %5809, %5801 ], [ %4297, %5508 ]
  %6095 = phi float [ %6052, %5948 ], [ %5810, %5910 ], [ %5810, %5801 ], [ %4298, %5508 ]
  %6096 = phi float [ %6085, %5948 ], [ %5811, %5910 ], [ %5811, %5801 ], [ %4284, %5508 ]
  %6097 = phi float [ %6082, %5948 ], [ %5812, %5910 ], [ %5812, %5801 ], [ %4257, %5508 ]
  %6098 = fcmp fast une float %5513, 0.000000e+00
  %6099 = call float @dx.op.dot3.f32(i32 55, float %167, float %168, float %169, float %167, float %168, float %169)  ; Dot3(ax,ay,az,bx,by,bz)
  %6100 = call float @dx.op.unary.f32(i32 25, float %6099)  ; Rsqrt(value)
  br i1 %6098, label %6108, label %6101

; <label>:6101                                    ; preds = %6086
  %6102 = fmul fast float %6100, %167
  %6103 = fmul fast float %6100, %168
  %6104 = fmul fast float %6100, %169
  %6105 = fsub fast float -0.000000e+00, %6102
  %6106 = fsub fast float -0.000000e+00, %6103
  %6107 = fsub fast float -0.000000e+00, %6104
  br label %6469

; <label>:6108                                    ; preds = %6086
  %6109 = fmul fast float %167, %6100
  %6110 = fsub fast float -0.000000e+00, %6109
  %6111 = fmul fast float %168, %6100
  %6112 = fsub fast float -0.000000e+00, %6111
  %6113 = fmul fast float %169, %6100
  %6114 = fsub fast float -0.000000e+00, %6113
  %6115 = call float @dx.op.dot3.f32(i32 55, float %6110, float %6112, float %6114, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %6116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6117 = fmul fast float %5513, 2.500000e+00
  %6118 = call float @dx.op.unary.f32(i32 7, float %6117)  ; Saturate(value)
  %6119 = fmul fast float %5513, 0x4013FFFFE0000000
  %6120 = fadd fast float %6119, 0xBFFFFFFFE0000000
  %6121 = call float @dx.op.unary.f32(i32 7, float %6120)  ; Saturate(value)
  %6122 = fmul fast float %5513, 0x4004000020000000
  %6123 = fadd fast float %6122, 0xBFF8000040000000
  %6124 = call float @dx.op.unary.f32(i32 7, float %6123)  ; Saturate(value)
  %6125 = call float @dx.op.unary.f32(i32 7, float %6118)  ; Saturate(value)
  %6126 = fmul fast float %4263, 1.000000e+01
  %6127 = call float @dx.op.unary.f32(i32 7, float %6126)  ; Saturate(value)
  %6128 = fmul fast float %6127, 2.000000e+00
  %6129 = fsub fast float 3.000000e+00, %6128
  %6130 = fmul fast float %6127, %6127
  %6131 = fmul fast float %6130, %6129
  %6132 = fsub fast float 1.000000e+00, %6131
  %6133 = fsub fast float 0x3FE3333340000000, %6096
  %6134 = fmul fast float %6133, 0x400AAAAAA0000000
  %6135 = call float @dx.op.unary.f32(i32 7, float %6134)  ; Saturate(value)
  %6136 = fmul fast float %6132, %6135
  %6137 = fmul fast float %6093, 0x3FEA2B8620000000
  %6138 = fmul fast float %6094, 0x3FEA2B8620000000
  %6139 = fmul fast float %6095, 0x3FEA2B8620000000
  %6140 = fadd fast float %6137, 0x3FC81DFBA0000000
  %6141 = fmul fast float %6140, %6093
  %6142 = fadd fast float %6141, 0x3F910E6020000000
  %6143 = fadd fast float %6138, 0x3FC81DFBA0000000
  %6144 = fmul fast float %6143, %6094
  %6145 = fadd fast float %6144, 0x3F910E6020000000
  %6146 = fadd fast float %6139, 0x3FC81DFBA0000000
  %6147 = fmul fast float %6146, %6095
  %6148 = fadd fast float %6147, 0x3F910E6020000000
  %6149 = call float @dx.op.unary.f32(i32 7, float %6142)  ; Saturate(value)
  %6150 = call float @dx.op.unary.f32(i32 7, float %6145)  ; Saturate(value)
  %6151 = call float @dx.op.unary.f32(i32 7, float %6148)  ; Saturate(value)
  %6152 = fsub fast float %6149, %6093
  %6153 = fsub fast float %6150, %6094
  %6154 = fsub fast float %6151, %6095
  %6155 = fmul fast float %6152, %6125
  %6156 = fmul fast float %6155, %6136
  %6157 = fmul fast float %6153, %6125
  %6158 = fmul fast float %6157, %6136
  %6159 = fmul fast float %6154, %6125
  %6160 = fmul fast float %6159, %6136
  %6161 = fadd fast float %6156, %6093
  %6162 = fadd fast float %6158, %6094
  %6163 = fadd fast float %6160, %6095
  %6164 = fmul fast float %6097, %6097
  %6165 = fmul fast float %6164, %6164
  %6166 = fadd fast float %6121, 1.000000e+00
  %6167 = fsub fast float %6166, %6136
  %6168 = call float @dx.op.unary.f32(i32 7, float %6167)  ; Saturate(value)
  %6169 = call float @dx.op.dot3.f32(i32 55, float %111, float %112, float %113, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6170 = call float @dx.op.unary.f32(i32 7, float %6169)  ; Saturate(value)
  %6171 = fsub fast float 1.000000e+00, %6165
  %6172 = call float @dx.op.binary.f32(i32 36, float %6168, float %6171)  ; FMin(a,b)
  %6173 = call float @dx.op.unary.f32(i32 7, float %6124)  ; Saturate(value)
  %6174 = call float @dx.op.binary.f32(i32 35, float %6172, float %6173)  ; FMax(a,b)
  %6175 = fadd fast float %6170, 0xBFE4CCCCC0000000
  %6176 = fmul fast float %6175, 0x4006DB6DA0000000
  %6177 = call float @dx.op.unary.f32(i32 7, float %6176)  ; Saturate(value)
  %6178 = fmul fast float %6177, 2.000000e+00
  %6179 = fsub fast float 3.000000e+00, %6178
  %6180 = bitcast float %6087 to i32
  %6181 = ashr i32 %6180, 1
  %6182 = add nsw i32 %6181, 532487669
  %6183 = bitcast i32 %6182 to float
  %6184 = fsub fast float 1.000000e+00, %6183
  %6185 = bitcast float %6184 to i32
  %6186 = sub nsw i32 2129859010, %6185
  %6187 = bitcast i32 %6186 to float
  %6188 = fmul fast float %6187, 2.000000e+00
  %6189 = bitcast float %6088 to i32
  %6190 = ashr i32 %6189, 1
  %6191 = add nsw i32 %6190, 532487669
  %6192 = bitcast i32 %6191 to float
  %6193 = fsub fast float 1.000000e+00, %6192
  %6194 = bitcast float %6193 to i32
  %6195 = sub nsw i32 2129859010, %6194
  %6196 = bitcast i32 %6195 to float
  %6197 = fmul fast float %6196, 2.000000e+00
  %6198 = bitcast float %6089 to i32
  %6199 = ashr i32 %6198, 1
  %6200 = add nsw i32 %6199, 532487669
  %6201 = bitcast i32 %6200 to float
  %6202 = fsub fast float 1.000000e+00, %6201
  %6203 = bitcast float %6202 to i32
  %6204 = sub nsw i32 2129859010, %6203
  %6205 = bitcast i32 %6204 to float
  %6206 = fmul fast float %6205, 2.000000e+00
  %6207 = fsub fast float 0x4002A9FBE0000000, %6188
  %6208 = fadd fast float %6188, 0x3FD54FDF00000000
  %6209 = bitcast float %6208 to i32
  %6210 = sub nsw i32 2129859010, %6209
  %6211 = bitcast i32 %6210 to float
  %6212 = fmul fast float %6211, %6207
  %6213 = fmul fast float %6212, %6212
  %6214 = fsub fast float 0x4002A9FBE0000000, %6197
  %6215 = fadd fast float %6197, 0x3FD54FDF00000000
  %6216 = bitcast float %6215 to i32
  %6217 = sub nsw i32 2129859010, %6216
  %6218 = bitcast i32 %6217 to float
  %6219 = fmul fast float %6218, %6214
  %6220 = fmul fast float %6219, %6219
  %6221 = fsub fast float 0x4002A9FBE0000000, %6206
  %6222 = fadd fast float %6206, 0x3FD54FDF00000000
  %6223 = bitcast float %6222 to i32
  %6224 = sub nsw i32 2129859010, %6223
  %6225 = bitcast i32 %6224 to float
  %6226 = fmul fast float %6225, %6221
  %6227 = fmul fast float %6226, %6226
  %6228 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %6213)  ; FMax(a,b)
  %6229 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %6220)  ; FMax(a,b)
  %6230 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %6227)  ; FMax(a,b)
  %6231 = fsub fast float 1.000000e+00, %6115
  %6232 = fadd fast float %6231, %6132
  %6233 = call float @dx.op.unary.f32(i32 7, float %6232)  ; Saturate(value)
  %6234 = fsub fast float 1.000000e+00, %4381
  %6235 = fmul fast float %6174, %6234
  %6236 = fmul fast float %6177, %6177
  %6237 = fmul fast float %6236, %6235
  %6238 = fmul fast float %6237, %6179
  %6239 = fmul fast float %6234, 0xBFE99999A0000000
  %6240 = fmul fast float %6239, %6125
  %6241 = fmul fast float %6240, %6136
  %6242 = fadd fast float %6241, 1.000000e+00
  %6243 = fadd fast float %6096, -1.000000e+00
  %6244 = fmul fast float %6242, %6243
  %6245 = fadd fast float %6244, 1.000000e+00
  %6246 = fsub fast float %6228, %6087
  %6247 = fsub fast float %6229, %6088
  %6248 = fsub fast float %6230, %6089
  %6249 = fmul fast float %6238, %6246
  %6250 = fmul fast float %6238, %6247
  %6251 = fmul fast float %6238, %6248
  %6252 = fadd fast float %6249, %6087
  %6253 = fadd fast float %6250, %6088
  %6254 = fadd fast float %6251, %6089
  %6255 = fsub fast float %111, %6090
  %6256 = fsub fast float %112, %6091
  %6257 = fsub fast float %113, %6092
  %6258 = fmul fast float %6238, %6255
  %6259 = fmul fast float %6238, %6256
  %6260 = fmul fast float %6238, %6257
  %6261 = fadd fast float %6258, %6090
  %6262 = fadd fast float %6259, %6091
  %6263 = fadd fast float %6260, %6092
  %6264 = fmul fast float %6238, %6233
  %6265 = call float @dx.op.unary.f32(i32 7, float %6245)  ; Saturate(value)
  %6266 = fsub fast float 1.000000e+00, %6265
  %6267 = fmul fast float %6264, %6266
  %6268 = fadd fast float %6267, %6265
  %6269 = fsub fast float 1.000000e+00, %6097
  %6270 = fmul fast float %6238, %6269
  %6271 = fadd fast float %6270, %6097
  %6272 = fcmp fast une float %5514, 0.000000e+00
  %6273 = fcmp fast ogt float %6170, 0x3FE4CCCCC0000000
  %6274 = and i1 %6272, %6273
  br i1 %6274, label %6275, label %6461

; <label>:6275                                    ; preds = %6108
  %6276 = extractvalue %dx.types.CBufRet.f32 %6116, 1
  %6277 = fadd fast float %6276, %168
  %6278 = extractvalue %dx.types.CBufRet.f32 %6116, 0
  %6279 = fadd fast float %6278, %167
  %6280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %6281 = extractvalue %dx.types.CBufRet.f32 %6280, 3
  %6282 = fadd fast float %6281, 0x3FC0A3D700000000
  %6283 = fmul fast float %6282, 0x3FF6666660000000
  %6284 = fmul fast float %6281, 0x3FF2978D40000000
  %6285 = fmul fast float %6281, 0x3FF5BA5E40000000
  %6286 = fmul fast float %6281, 0x3FF94FDF40000000
  %6287 = call float @dx.op.unary.f32(i32 6, float %6279)  ; FAbs(value)
  %6288 = call float @dx.op.unary.f32(i32 6, float %6277)  ; FAbs(value)
  %6289 = fmul fast float %6287, 0x3F8EB851E0000000
  %6290 = fmul fast float %6288, 0x3F8EB851E0000000
  %6291 = fmul fast float %5514, 4.000000e+00
  %6292 = call float @dx.op.unary.f32(i32 7, float %6291)  ; Saturate(value)
  %6293 = fadd fast float %6289, 2.500000e-01
  %6294 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %45, float %6293, float %6290, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6295 = extractvalue %dx.types.ResRet.f32 %6294, 0
  %6296 = extractvalue %dx.types.ResRet.f32 %6294, 1
  %6297 = extractvalue %dx.types.ResRet.f32 %6294, 2
  %6298 = extractvalue %dx.types.ResRet.f32 %6294, 3
  %6299 = fmul fast float %6296, 2.000000e+00
  %6300 = fmul fast float %6297, 2.000000e+00
  %6301 = fadd fast float %6299, -1.000000e+00
  %6302 = fadd fast float %6300, -1.000000e+00
  %6303 = fsub fast float 1.000000e+00, %6292
  %6304 = fmul fast float %6303, 8.000000e+00
  %6305 = call float @dx.op.unary.f32(i32 21, float %6304)  ; Exp(value)
  %6306 = fmul fast float %6298, %6305
  %6307 = fadd fast float %6283, -1.000000e+00
  %6308 = fadd fast float %6307, %6298
  %6309 = fadd fast float %6308, %6306
  %6310 = frem fast float %6309, %6305
  %6311 = fcmp fast ole float %6310, 1.000000e+00
  %6312 = call float @dx.op.unary.f32(i32 22, float %6310)  ; Frc(value)
  %6313 = select i1 %6311, float %6312, float 0.000000e+00
  %6314 = fadd fast float %6295, -1.000000e+00
  %6315 = fadd fast float %6314, %6313
  %6316 = fsub fast float 1.000000e+00, %6313
  %6317 = call float @dx.op.unary.f32(i32 7, float %6316)  ; Saturate(value)
  %6318 = fmul fast float %6317, %6295
  %6319 = fmul fast float %6315, 8.000000e+00
  %6320 = call float @dx.op.binary.f32(i32 35, float %6319, float 0.000000e+00)  ; FMax(a,b)
  %6321 = call float @dx.op.binary.f32(i32 36, float %6320, float 4.000000e+00)  ; FMin(a,b)
  %6322 = fmul fast float %6321, 0x400921FB60000000
  %6323 = call float @dx.op.unary.f32(i32 13, float %6322)  ; Sin(value)
  %6324 = fadd fast float %6313, -1.000000e+00
  %6325 = fmul fast float %6318, %6324
  %6326 = fmul fast float %6325, %6323
  %6327 = fmul fast float %6326, %6301
  %6328 = fmul fast float %6326, %6302
  %6329 = fadd fast float %6291, -1.000000e+00
  %6330 = call float @dx.op.unary.f32(i32 7, float %6329)  ; Saturate(value)
  %6331 = fadd fast float %6289, 0xBFE19999A0000000
  %6332 = fadd fast float %6290, 0x3FD3D70A40000000
  %6333 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %45, float %6331, float %6332, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6334 = extractvalue %dx.types.ResRet.f32 %6333, 0
  %6335 = extractvalue %dx.types.ResRet.f32 %6333, 1
  %6336 = extractvalue %dx.types.ResRet.f32 %6333, 2
  %6337 = extractvalue %dx.types.ResRet.f32 %6333, 3
  %6338 = fmul fast float %6335, 2.000000e+00
  %6339 = fmul fast float %6336, 2.000000e+00
  %6340 = fadd fast float %6338, -1.000000e+00
  %6341 = fadd fast float %6339, -1.000000e+00
  %6342 = fsub fast float 1.000000e+00, %6330
  %6343 = fmul fast float %6342, 8.000000e+00
  %6344 = call float @dx.op.unary.f32(i32 21, float %6343)  ; Exp(value)
  %6345 = fmul fast float %6337, %6344
  %6346 = fadd fast float %6284, 0xBFE5B22D00000000
  %6347 = fadd fast float %6346, %6337
  %6348 = fadd fast float %6347, %6345
  %6349 = frem fast float %6348, %6344
  %6350 = fcmp fast ole float %6349, 1.000000e+00
  %6351 = call float @dx.op.unary.f32(i32 22, float %6349)  ; Frc(value)
  %6352 = select i1 %6350, float %6351, float 0.000000e+00
  %6353 = fadd fast float %6334, -1.000000e+00
  %6354 = fadd fast float %6353, %6352
  %6355 = fsub fast float 1.000000e+00, %6352
  %6356 = call float @dx.op.unary.f32(i32 7, float %6355)  ; Saturate(value)
  %6357 = fmul fast float %6356, %6334
  %6358 = fmul fast float %6354, 8.000000e+00
  %6359 = call float @dx.op.binary.f32(i32 35, float %6358, float 0.000000e+00)  ; FMax(a,b)
  %6360 = call float @dx.op.binary.f32(i32 36, float %6359, float 4.000000e+00)  ; FMin(a,b)
  %6361 = fmul fast float %6360, 0x400921FB60000000
  %6362 = call float @dx.op.unary.f32(i32 13, float %6361)  ; Sin(value)
  %6363 = fadd fast float %6352, -1.000000e+00
  %6364 = fmul fast float %6357, %6363
  %6365 = fmul fast float %6364, %6362
  %6366 = fmul fast float %6365, %6340
  %6367 = fmul fast float %6365, %6341
  %6368 = fadd fast float %6291, -2.000000e+00
  %6369 = call float @dx.op.unary.f32(i32 7, float %6368)  ; Saturate(value)
  %6370 = fadd fast float %6289, 0x3FE3333340000000
  %6371 = fadd fast float %6290, 0x3FEB333340000000
  %6372 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %45, float %6370, float %6371, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6373 = extractvalue %dx.types.ResRet.f32 %6372, 0
  %6374 = extractvalue %dx.types.ResRet.f32 %6372, 1
  %6375 = extractvalue %dx.types.ResRet.f32 %6372, 2
  %6376 = extractvalue %dx.types.ResRet.f32 %6372, 3
  %6377 = fmul fast float %6374, 2.000000e+00
  %6378 = fmul fast float %6375, 2.000000e+00
  %6379 = fadd fast float %6377, -1.000000e+00
  %6380 = fadd fast float %6378, -1.000000e+00
  %6381 = fsub fast float 1.000000e+00, %6369
  %6382 = fmul fast float %6381, 8.000000e+00
  %6383 = call float @dx.op.unary.f32(i32 21, float %6382)  ; Exp(value)
  %6384 = fmul fast float %6376, %6383
  %6385 = fadd fast float %6285, 0xBFD5E35400000000
  %6386 = fadd fast float %6385, %6376
  %6387 = fadd fast float %6386, %6384
  %6388 = frem fast float %6387, %6383
  %6389 = fcmp fast ole float %6388, 1.000000e+00
  %6390 = call float @dx.op.unary.f32(i32 22, float %6388)  ; Frc(value)
  %6391 = select i1 %6389, float %6390, float 0.000000e+00
  %6392 = fadd fast float %6373, -1.000000e+00
  %6393 = fadd fast float %6392, %6391
  %6394 = fsub fast float 1.000000e+00, %6391
  %6395 = call float @dx.op.unary.f32(i32 7, float %6394)  ; Saturate(value)
  %6396 = fmul fast float %6395, %6373
  %6397 = fmul fast float %6393, 8.000000e+00
  %6398 = call float @dx.op.binary.f32(i32 35, float %6397, float 0.000000e+00)  ; FMax(a,b)
  %6399 = call float @dx.op.binary.f32(i32 36, float %6398, float 4.000000e+00)  ; FMin(a,b)
  %6400 = fmul fast float %6399, 0x400921FB60000000
  %6401 = call float @dx.op.unary.f32(i32 13, float %6400)  ; Sin(value)
  %6402 = fadd fast float %6391, -1.000000e+00
  %6403 = fmul fast float %6396, %6402
  %6404 = fmul fast float %6403, %6401
  %6405 = fmul fast float %6404, %6379
  %6406 = fmul fast float %6404, %6380
  %6407 = fadd fast float %6291, -3.000000e+00
  %6408 = call float @dx.op.unary.f32(i32 7, float %6407)  ; Saturate(value)
  %6409 = fadd fast float %6289, 5.000000e-01
  %6410 = fadd fast float %6290, -7.500000e-01
  %6411 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %45, float %6409, float %6410, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6412 = extractvalue %dx.types.ResRet.f32 %6411, 0
  %6413 = extractvalue %dx.types.ResRet.f32 %6411, 1
  %6414 = extractvalue %dx.types.ResRet.f32 %6411, 2
  %6415 = extractvalue %dx.types.ResRet.f32 %6411, 3
  %6416 = fmul fast float %6413, 2.000000e+00
  %6417 = fmul fast float %6414, 2.000000e+00
  %6418 = fadd fast float %6416, -1.000000e+00
  %6419 = fadd fast float %6417, -1.000000e+00
  %6420 = fsub fast float 1.000000e+00, %6408
  %6421 = fmul fast float %6420, 8.000000e+00
  %6422 = call float @dx.op.unary.f32(i32 21, float %6421)  ; Exp(value)
  %6423 = fmul fast float %6415, %6422
  %6424 = fadd fast float %6286, 0xBF78938000000000
  %6425 = fadd fast float %6424, %6415
  %6426 = fadd fast float %6425, %6423
  %6427 = frem fast float %6426, %6422
  %6428 = fcmp fast ole float %6427, 1.000000e+00
  %6429 = call float @dx.op.unary.f32(i32 22, float %6427)  ; Frc(value)
  %6430 = select i1 %6428, float %6429, float 0.000000e+00
  %6431 = fadd fast float %6412, -1.000000e+00
  %6432 = fadd fast float %6431, %6430
  %6433 = fsub fast float 1.000000e+00, %6430
  %6434 = call float @dx.op.unary.f32(i32 7, float %6433)  ; Saturate(value)
  %6435 = fmul fast float %6434, %6412
  %6436 = fmul fast float %6432, 8.000000e+00
  %6437 = call float @dx.op.binary.f32(i32 35, float %6436, float 0.000000e+00)  ; FMax(a,b)
  %6438 = call float @dx.op.binary.f32(i32 36, float %6437, float 4.000000e+00)  ; FMin(a,b)
  %6439 = fmul fast float %6438, 0x400921FB60000000
  %6440 = call float @dx.op.unary.f32(i32 13, float %6439)  ; Sin(value)
  %6441 = fadd fast float %6430, -1.000000e+00
  %6442 = fmul fast float %6435, %6441
  %6443 = fmul fast float %6442, %6440
  %6444 = fmul fast float %6443, %6418
  %6445 = fmul fast float %6443, %6419
  %6446 = fadd fast float %6366, %6327
  %6447 = fadd fast float %6367, %6328
  %6448 = fadd fast float %6446, %6405
  %6449 = fadd fast float %6447, %6406
  %6450 = fadd fast float %6448, %6444
  %6451 = fadd fast float %6449, %6445
  %6452 = fmul fast float %6170, 0x4006DB6DA0000000
  %6453 = fadd fast float %6452, 0xBFFDB6DB40000000
  %6454 = call float @dx.op.unary.f32(i32 7, float %6453)  ; Saturate(value)
  %6455 = fmul fast float %6454, %6125
  %6456 = fmul fast float %6455, %6234
  %6457 = fmul fast float %6456, %6450
  %6458 = fmul fast float %6456, %6451
  %6459 = fadd fast float %6457, %6261
  %6460 = fadd fast float %6458, %6262
  br label %6461

; <label>:6461                                    ; preds = %6275, %6108
  %6462 = phi float [ %6261, %6108 ], [ %6459, %6275 ]
  %6463 = phi float [ %6262, %6108 ], [ %6460, %6275 ]
  %6464 = call float @dx.op.dot3.f32(i32 55, float %6462, float %6463, float %6263, float %6462, float %6463, float %6263)  ; Dot3(ax,ay,az,bx,by,bz)
  %6465 = call float @dx.op.unary.f32(i32 25, float %6464)  ; Rsqrt(value)
  %6466 = fmul fast float %6465, %6462
  %6467 = fmul fast float %6465, %6463
  %6468 = fmul fast float %6465, %6263
  br label %6469

; <label>:6469                                    ; preds = %6461, %6101
  %6470 = phi float [ %6107, %6101 ], [ %6114, %6461 ]
  %6471 = phi float [ %6106, %6101 ], [ %6112, %6461 ]
  %6472 = phi float [ %6105, %6101 ], [ %6110, %6461 ]
  %6473 = phi float [ %6104, %6101 ], [ %6113, %6461 ]
  %6474 = phi float [ %6103, %6101 ], [ %6111, %6461 ]
  %6475 = phi float [ %6102, %6101 ], [ %6109, %6461 ]
  %6476 = phi float [ %6087, %6101 ], [ %6252, %6461 ]
  %6477 = phi float [ %6088, %6101 ], [ %6253, %6461 ]
  %6478 = phi float [ %6089, %6101 ], [ %6254, %6461 ]
  %6479 = phi float [ %6090, %6101 ], [ %6466, %6461 ]
  %6480 = phi float [ %6091, %6101 ], [ %6467, %6461 ]
  %6481 = phi float [ %6092, %6101 ], [ %6468, %6461 ]
  %6482 = phi float [ %6093, %6101 ], [ %6161, %6461 ]
  %6483 = phi float [ %6094, %6101 ], [ %6162, %6461 ]
  %6484 = phi float [ %6095, %6101 ], [ %6163, %6461 ]
  %6485 = phi float [ %6096, %6101 ], [ %6268, %6461 ]
  %6486 = phi float [ %6097, %6101 ], [ %6271, %6461 ]
  %6487 = select i1 %228, float 0.000000e+00, float %6478
  %6488 = call float @dx.op.dot3.f32(i32 55, float %6479, float %6480, float %6481, float %6472, float %6471, float %6470)  ; Dot3(ax,ay,az,bx,by,bz)
  %6489 = call float @dx.op.unary.f32(i32 7, float %6488)  ; Saturate(value)
  %6490 = call float @dx.op.dot3.f32(i32 55, float %6475, float %6474, float %6473, float %6479, float %6480, float %6481)  ; Dot3(ax,ay,az,bx,by,bz)
  %6491 = fmul fast float %6490, 2.000000e+00
  %6492 = fmul fast float %6491, %6479
  %6493 = fmul fast float %6491, %6480
  %6494 = fmul fast float %6491, %6481
  %6495 = fsub fast float %6475, %6492
  %6496 = fsub fast float %6474, %6493
  %6497 = fsub fast float %6473, %6494
  %6498 = call float @dx.op.binary.f32(i32 36, float %6486, float 1.000000e+00)  ; FMin(a,b)
  %6499 = fsub fast float 1.000000e+00, %6498
  %6500 = bitcast float %6499 to i32
  %6501 = ashr i32 %6500, 1
  %6502 = add nsw i32 %6501, 532487669
  %6503 = bitcast i32 %6502 to float
  %6504 = fsub fast float 1.000000e+00, %6485
  %6505 = call float @dx.op.binary.f32(i32 35, float %6504, float 0x3F847AE140000000)  ; FMax(a,b)
  %6506 = fmul fast float %6505, %6505
  %6507 = fmul fast float %6506, %6506
  %6508 = call float @dx.op.unary.f32(i32 7, float %6489)  ; Saturate(value)
  %6509 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %46, float %6503, float %6507, float %6508, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6510 = extractvalue %dx.types.ResRet.f32 %6509, 0
  %6511 = fsub fast float 1.000000e+00, %6486
  %6512 = bitcast float %6511 to i32
  %6513 = sub nsw i32 2129859010, %6512
  %6514 = fsub fast float 1.000000e+00, %72
  %6515 = call float @dx.op.dot3.f32(i32 55, float %131, float %132, float %133, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %6516 = call float @dx.op.binary.f32(i32 35, float %6515, float 0x3FA99999A0000000)  ; FMax(a,b)
  %6517 = fdiv fast float %6514, %6516
  %6518 = call float @dx.op.dot3.f32(i32 55, float %6479, float %6480, float %6481, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %6519 = call float @dx.op.unary.f32(i32 7, float %6518)  ; Saturate(value)
  %6520 = fmul fast float %6519, 5.000000e-01
  %6521 = fadd fast float %6520, 5.000000e-01
  %6522 = fmul fast float %6521, %72
  %6523 = call float @dx.op.dot3.f32(i32 55, float %6479, float %6480, float %6481, float %131, float %132, float %133)  ; Dot3(ax,ay,az,bx,by,bz)
  %6524 = call float @dx.op.unary.f32(i32 7, float %6523)  ; Saturate(value)
  %6525 = fmul fast float %6524, %6517
  %6526 = fadd fast float %6522, %6525
  %6527 = fsub fast float 5.000000e-01, %6520
  %6528 = fmul fast float %6527, %6482
  %6529 = fmul fast float %6527, %6483
  %6530 = fmul fast float %6527, %6484
  %6531 = fadd fast float %6526, %6528
  %6532 = fadd fast float %6526, %6529
  %6533 = fadd fast float %6526, %6530
  %6534 = call float @dx.op.dot3.f32(i32 55, float %6495, float %6496, float %6497, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %6535 = call float @dx.op.unary.f32(i32 7, float %6534)  ; Saturate(value)
  %6536 = fmul fast float %6535, 5.000000e-01
  %6537 = fadd fast float %6536, 5.000000e-01
  %6538 = fmul fast float %6537, %72
  %6539 = call float @dx.op.dot3.f32(i32 55, float %6495, float %6496, float %6497, float %131, float %132, float %133)  ; Dot3(ax,ay,az,bx,by,bz)
  %6540 = call float @dx.op.unary.f32(i32 7, float %6539)  ; Saturate(value)
  %6541 = fmul fast float %6540, %6517
  %6542 = fadd fast float %6538, %6541
  %6543 = fsub fast float 5.000000e-01, %6536
  %6544 = fmul fast float %6543, %6482
  %6545 = fmul fast float %6543, %6483
  %6546 = fmul fast float %6543, %6484
  %6547 = fadd fast float %6542, %6544
  %6548 = fadd fast float %6542, %6545
  %6549 = fadd fast float %6542, %6546
  %6550 = call float @dx.op.dot3.f32(i32 55, float %73, float %74, float %75, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %6552 = extractvalue %dx.types.CBufRet.f32 %6551, 0
  %6553 = call float @dx.op.binary.f32(i32 36, float %6482, float %6552)  ; FMin(a,b)
  %6554 = fmul fast float %6553, %6499
  %6555 = fsub fast float 1.000000e+00, %6554
  %6556 = bitcast float %6555 to i32
  %6557 = sub nsw i32 2129859010, %6556
  %6558 = bitcast i32 %6557 to float
  %6559 = call float @dx.op.binary.f32(i32 36, float %6483, float %6552)  ; FMin(a,b)
  %6560 = fmul fast float %6559, %6499
  %6561 = fsub fast float 1.000000e+00, %6560
  %6562 = bitcast float %6561 to i32
  %6563 = sub nsw i32 2129859010, %6562
  %6564 = bitcast i32 %6563 to float
  %6565 = call float @dx.op.binary.f32(i32 36, float %6484, float %6552)  ; FMin(a,b)
  %6566 = fmul fast float %6565, %6499
  %6567 = fsub fast float 1.000000e+00, %6566
  %6568 = bitcast float %6567 to i32
  %6569 = sub nsw i32 2129859010, %6568
  %6570 = bitcast i32 %6569 to float
  %6571 = fmul fast float %6498, %73
  %6572 = fmul fast float %6571, %6531
  %6573 = fmul fast float %6572, %6558
  %6574 = fmul fast float %6498, %74
  %6575 = fmul fast float %6574, %6532
  %6576 = fmul fast float %6575, %6564
  %6577 = fmul fast float %6498, %75
  %6578 = fmul fast float %6577, %6533
  %6579 = fmul fast float %6578, %6570
  %6580 = call float @dx.op.binary.f32(i32 36, float %6476, float %6552)  ; FMin(a,b)
  %6581 = fmul fast float %6580, %6499
  %6582 = fsub fast float 1.000000e+00, %6581
  %6583 = bitcast float %6582 to i32
  %6584 = sub nsw i32 2129859010, %6583
  %6585 = bitcast i32 %6584 to float
  %6586 = call float @dx.op.binary.f32(i32 36, float %6477, float %6552)  ; FMin(a,b)
  %6587 = fmul fast float %6586, %6499
  %6588 = fsub fast float 1.000000e+00, %6587
  %6589 = bitcast float %6588 to i32
  %6590 = sub nsw i32 2129859010, %6589
  %6591 = bitcast i32 %6590 to float
  %6592 = call float @dx.op.binary.f32(i32 36, float %6487, float %6552)  ; FMin(a,b)
  %6593 = fmul fast float %6592, %6499
  %6594 = fsub fast float 1.000000e+00, %6593
  %6595 = bitcast float %6594 to i32
  %6596 = sub nsw i32 2129859010, %6595
  %6597 = bitcast i32 %6596 to float
  %6598 = fmul fast float %6571, %6547
  %6599 = fmul fast float %6598, %6585
  %6600 = fmul fast float %6574, %6548
  %6601 = fmul fast float %6600, %6591
  %6602 = fmul fast float %6577, %6549
  %6603 = fmul fast float %6602, %6597
  %6604 = call float @dx.op.dot3.f32(i32 55, float %6573, float %6576, float %6579, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6605 = select i1 %228, float 0.000000e+00, float %6573
  %6606 = select i1 %228, float %6604, float %6576
  %6607 = select i1 %228, float 0.000000e+00, float %6579
  %6608 = call float @dx.op.dot3.f32(i32 55, float %6599, float %6601, float %6603, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6609 = select i1 %228, float 0.000000e+00, float %6599
  %6610 = select i1 %228, float %6608, float %6601
  %6611 = select i1 %228, float 0.000000e+00, float %6603
  %6612 = fmul fast float %6489, 9.843750e-01
  %6613 = fmul fast float %6485, 9.843750e-01
  %6614 = fadd fast float %6612, 7.812500e-03
  %6615 = fadd fast float %6613, 7.812500e-03
  %6616 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %41, %dx.types.Handle %46, float %6614, float %6615, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6617 = extractvalue %dx.types.ResRet.f32 %6616, 2
  %6618 = extractvalue %dx.types.ResRet.f32 %6616, 3
  %6619 = fmul fast float %6617, %6476
  %6620 = fmul fast float %6617, %6477
  %6621 = fmul fast float %6617, %6487
  %6622 = fadd fast float %6619, %6618
  %6623 = fadd fast float %6620, %6618
  %6624 = fadd fast float %6621, %6618
  %6625 = fcmp fast ogt float %4258, 0.000000e+00
  br i1 %6625, label %6626, label %6652

; <label>:6626                                    ; preds = %6469
  %6627 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %46, float %4258, float %6489, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6628 = extractvalue %dx.types.ResRet.f32 %6627, 0
  %6629 = extractvalue %dx.types.ResRet.f32 %6627, 1
  %6630 = extractvalue %dx.types.ResRet.f32 %6627, 2
  %6631 = fadd fast float %6628, -5.000000e-01
  %6632 = fadd fast float %6629, -5.000000e-01
  %6633 = fadd fast float %6630, -5.000000e-01
  %6634 = fsub fast float 1.000000e+00, %6476
  %6635 = fsub fast float 1.000000e+00, %6477
  %6636 = fsub fast float 1.000000e+00, %6487
  %6637 = fmul fast float %6476, 4.000000e+00
  %6638 = fmul fast float %6637, %6634
  %6639 = fmul fast float %6638, %6631
  %6640 = fmul fast float %6477, 4.000000e+00
  %6641 = fmul fast float %6640, %6635
  %6642 = fmul fast float %6641, %6632
  %6643 = fmul fast float %6487, 4.000000e+00
  %6644 = fmul fast float %6643, %6636
  %6645 = fmul fast float %6644, %6633
  %6646 = fadd fast float %6639, %6622
  %6647 = fadd fast float %6642, %6623
  %6648 = fadd fast float %6645, %6624
  %6649 = call float @dx.op.unary.f32(i32 7, float %6646)  ; Saturate(value)
  %6650 = call float @dx.op.unary.f32(i32 7, float %6647)  ; Saturate(value)
  %6651 = call float @dx.op.unary.f32(i32 7, float %6648)  ; Saturate(value)
  br label %6652

; <label>:6652                                    ; preds = %6626, %6469
  %6653 = phi float [ %6649, %6626 ], [ %6622, %6469 ]
  %6654 = phi float [ %6650, %6626 ], [ %6623, %6469 ]
  %6655 = phi float [ %6651, %6626 ], [ %6624, %6469 ]
  %6656 = call float @dx.op.binary.f32(i32 35, float %6654, float %6655)  ; FMax(a,b)
  %6657 = call float @dx.op.binary.f32(i32 35, float %6653, float %6656)  ; FMax(a,b)
  %6658 = fsub fast float 1.000000e+00, %6657
  %6659 = fmul fast float %6657, %6485
  %6660 = fadd fast float %6659, %6485
  %6661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %6662 = extractvalue %dx.types.CBufRet.f32 %6661, 2
  %6663 = extractvalue %dx.types.CBufRet.f32 %6661, 3
  %6664 = fmul fast float %6660, %6662
  %6665 = fadd fast float %6664, %6663
  %6666 = call float @dx.op.unary.f32(i32 7, float %6665)  ; Saturate(value)
  %6667 = fsub fast float 1.000000e+00, %6510
  %6668 = fadd fast float %6667, %6666
  %6669 = call float @dx.op.unary.f32(i32 7, float %6668)  ; Saturate(value)
  %6670 = fcmp fast olt float %6669, 1.000000e+00
  br i1 %6670, label %6671, label %7119

; <label>:6671                                    ; preds = %6652
  %6672 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %6673 = extractvalue %dx.types.CBufRet.f32 %6672, 2
  %6674 = extractvalue %dx.types.CBufRet.f32 %6672, 3
  %6675 = fmul fast float %6673, %104
  %6676 = fmul fast float %6674, %105
  %6677 = fptoui float %6675 to i32
  %6678 = fptoui float %6676 to i32
  %6679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6680 = extractvalue %dx.types.CBufRet.f32 %6679, 0
  %6681 = extractvalue %dx.types.CBufRet.f32 %6679, 2
  %6682 = extractvalue %dx.types.CBufRet.f32 %6679, 3
  %6683 = fadd fast float %92, -4.000000e+00
  %6684 = call float @dx.op.binary.f32(i32 35, float %6683, float 0.000000e+00)  ; FMax(a,b)
  %6685 = fadd fast float %6684, %6680
  %6686 = fmul fast float %6685, %6681
  %6687 = call float @dx.op.unary.f32(i32 23, float %6686)  ; Log(value)
  %6688 = fmul fast float %6687, %6682
  %6689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6690 = extractvalue %dx.types.CBufRet.f32 %6689, 2
  %6691 = fmul fast float %6688, %6690
  %6692 = call float @dx.op.unary.f32(i32 7, float %6691)  ; Saturate(value)
  %6693 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6694 = extractvalue %dx.types.CBufRet.i32 %6693, 1
  %6695 = add i32 %6694, -1
  %6696 = uitofp i32 %6694 to float
  %6697 = fmul fast float %6696, %6692
  %6698 = fptoui float %6697 to i32
  %6699 = call i32 @dx.op.binary.i32(i32 40, i32 %6698, i32 %6695)  ; UMin(a,b)
  %6700 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6701 = extractvalue %dx.types.CBufRet.i32 %6700, 2
  %6702 = extractvalue %dx.types.CBufRet.i32 %6700, 3
  %6703 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6678, i32 %6701, i32 %6677)  ; UMad(a,b,c)
  %6704 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6699, i32 %6702, i32 %6703)  ; UMad(a,b,c)
  %6705 = call float @dx.op.binary.f32(i32 35, float %92, float 0.000000e+00)  ; FMax(a,b)
  %6706 = fptoui float %6705 to i32
  %6707 = lshr i32 %6706, 5
  %6708 = call i32 @dx.op.binary.i32(i32 40, i32 %6707, i32 8191)  ; UMin(a,b)
  br i1 false, label %6709, label %6716

; <label>:6709                                    ; preds = %6671
  %6710 = fadd fast float 0.000000e+00, %6497
  %6711 = call float @dx.op.dot3.f32(i32 55, float %6495, float %6496, float %6710, float %6495, float %6496, float %6710)  ; Dot3(ax,ay,az,bx,by,bz)
  %6712 = call float @dx.op.unary.f32(i32 25, float %6711)  ; Rsqrt(value)
  %6713 = fmul fast float %6712, %6495
  %6714 = fmul fast float %6712, %6496
  %6715 = fmul fast float %6710, %6712
  br label %6716

; <label>:6716                                    ; preds = %6709, %6671
  %6717 = phi float [ %6713, %6709 ], [ %6495, %6671 ]
  %6718 = phi float [ %6714, %6709 ], [ %6496, %6671 ]
  %6719 = phi float [ %6715, %6709 ], [ %6497, %6671 ]
  %6720 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6721 = extractvalue %dx.types.CBufRet.i32 %6720, 2
  %6722 = add nsw i32 %6721, -1
  %6723 = call i32 @dx.op.binary.i32(i32 37, i32 %6722, i32 0)  ; IMax(a,b)
  %6724 = shl i32 %6708, 2
  %6725 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %6724, i32 undef)  ; BufferLoad(srv,index,wot)
  %6726 = extractvalue %dx.types.ResRet.i32 %6725, 0
  %6727 = lshr i32 %6726, 16
  %6728 = and i32 %6726, 65535
  %6729 = lshr i32 %6726, 21
  %6730 = lshr i32 %6728, 5
  %6731 = call i32 @dx.op.binary.i32(i32 40, i32 %6730, i32 %6723)  ; UMin(a,b)
  %6732 = icmp ugt i32 %6729, %6731
  br i1 %6732, label %7095, label %6733

; <label>:6733                                    ; preds = %6716
  br label %6734

; <label>:6734                                    ; preds = %7087, %6733
  %6735 = phi float [ %7088, %7087 ], [ 0.000000e+00, %6733 ]
  %6736 = phi float [ %7089, %7087 ], [ 0.000000e+00, %6733 ]
  %6737 = phi float [ %7090, %7087 ], [ 0.000000e+00, %6733 ]
  %6738 = phi float [ %7091, %7087 ], [ 1.000000e+00, %6733 ]
  %6739 = phi i32 [ %7092, %7087 ], [ %6729, %6733 ]
  %6740 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6741 = extractvalue %dx.types.CBufRet.i32 %6740, 2
  %6742 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6704, i32 %6741, i32 %6739)  ; UMad(a,b,c)
  %6743 = shl i32 %6742, 2
  %6744 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %6743, i32 undef)  ; BufferLoad(srv,index,wot)
  %6745 = extractvalue %dx.types.ResRet.i32 %6744, 0
  %6746 = shl i32 %6739, 5
  %6747 = sub nsw i32 %6727, %6746
  %6748 = call i32 @dx.op.binary.i32(i32 37, i32 %6747, i32 0)  ; IMax(a,b)
  %6749 = call i32 @dx.op.binary.i32(i32 38, i32 %6748, i32 31)  ; IMin(a,b)
  %6750 = sub nsw i32 1, %6727
  %6751 = add nsw i32 %6750, %6728
  %6752 = call i32 @dx.op.binary.i32(i32 37, i32 %6751, i32 0)  ; IMax(a,b)
  %6753 = call i32 @dx.op.binary.i32(i32 38, i32 %6752, i32 32)  ; IMin(a,b)
  %6754 = and i32 %6753, 31
  %6755 = shl i32 -1, %6754
  %6756 = xor i32 %6755, -1
  %6757 = and i32 %6749, 31
  %6758 = shl i32 %6756, %6757
  %6759 = icmp eq i32 %6753, 32
  %6760 = select i1 %6759, i32 -1, i32 %6758
  %6761 = and i32 %6760, %6745
  %6762 = icmp eq i32 %6761, 0
  br i1 %6762, label %7087, label %6763

; <label>:6763                                    ; preds = %6734
  br label %6764

; <label>:6764                                    ; preds = %6870, %6763
  %6765 = phi float [ %6871, %6870 ], [ %6735, %6763 ]
  %6766 = phi float [ %6872, %6870 ], [ %6736, %6763 ]
  %6767 = phi float [ %6873, %6870 ], [ %6737, %6763 ]
  %6768 = phi float [ %6874, %6870 ], [ %6738, %6763 ]
  %6769 = phi i32 [ %6774, %6870 ], [ %6761, %6763 ]
  %6770 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6769)  ; FirstbitLo(value)
  %6771 = add i32 %6770, %6746
  %6772 = and i32 %6770, 31
  %6773 = shl i32 1, %6772
  %6774 = xor i32 %6773, %6769
  %6775 = mul i32 %6771, 72
  %6776 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %6775, i32 undef)  ; BufferLoad(srv,index,wot)
  %6777 = extractvalue %dx.types.ResRet.f32 %6776, 0
  %6778 = extractvalue %dx.types.ResRet.f32 %6776, 1
  %6779 = extractvalue %dx.types.ResRet.f32 %6776, 2
  %6780 = add i32 %6775, 12
  %6781 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %6780, i32 undef)  ; BufferLoad(srv,index,wot)
  %6782 = extractvalue %dx.types.ResRet.i32 %6781, 0
  %6783 = add i32 %6775, 16
  %6784 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %6783, i32 undef)  ; BufferLoad(srv,index,wot)
  %6785 = extractvalue %dx.types.ResRet.f32 %6784, 0
  %6786 = extractvalue %dx.types.ResRet.f32 %6784, 1
  %6787 = extractvalue %dx.types.ResRet.f32 %6784, 2
  %6788 = add i32 %6775, 28
  %6789 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %6788, i32 undef)  ; BufferLoad(srv,index,wot)
  %6790 = extractvalue %dx.types.ResRet.f32 %6789, 0
  %6791 = add i32 %6775, 32
  %6792 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %6791, i32 undef)  ; BufferLoad(srv,index,wot)
  %6793 = extractvalue %dx.types.ResRet.f32 %6792, 0
  %6794 = extractvalue %dx.types.ResRet.f32 %6792, 1
  %6795 = extractvalue %dx.types.ResRet.f32 %6792, 2
  %6796 = extractvalue %dx.types.ResRet.f32 %6792, 3
  %6797 = add i32 %6775, 48
  %6798 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %6797, i32 undef)  ; BufferLoad(srv,index,wot)
  %6799 = extractvalue %dx.types.ResRet.f32 %6798, 0
  %6800 = extractvalue %dx.types.ResRet.f32 %6798, 1
  %6801 = add i32 %6775, 56
  %6802 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %6801, i32 undef)  ; BufferLoad(srv,index,wot)
  %6803 = extractvalue %dx.types.ResRet.f32 %6802, 0
  %6804 = extractvalue %dx.types.ResRet.f32 %6802, 1
  %6805 = add i32 %6775, 64
  %6806 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %6805, i32 undef)  ; BufferLoad(srv,index,wot)
  %6807 = extractvalue %dx.types.ResRet.f32 %6806, 0
  %6808 = extractvalue %dx.types.ResRet.f32 %6806, 1
  %6809 = mul i32 %6771, 60
  %6810 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %6809, i32 undef)  ; BufferLoad(srv,index,wot)
  %6811 = extractvalue %dx.types.ResRet.f32 %6810, 0
  %6812 = extractvalue %dx.types.ResRet.f32 %6810, 1
  %6813 = extractvalue %dx.types.ResRet.f32 %6810, 2
  %6814 = add i32 %6809, 12
  %6815 = add i32 %6809, 48
  %6816 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %6815, i32 undef)  ; BufferLoad(srv,index,wot)
  %6817 = extractvalue %dx.types.ResRet.f32 %6816, 0
  %6818 = extractvalue %dx.types.ResRet.f32 %6816, 1
  %6819 = extractvalue %dx.types.ResRet.f32 %6816, 2
  %6820 = and i32 %6782, 32767
  %6821 = bitcast float %6777 to i32
  %6822 = icmp eq i32 %6821, -1
  %6823 = bitcast float %6778 to i32
  %6824 = and i32 %6782, 32768
  %6825 = icmp ne i32 %6824, 0
  %6826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6827 = extractvalue %dx.types.CBufRet.f32 %6826, 0
  %6828 = extractvalue %dx.types.CBufRet.f32 %6826, 1
  %6829 = extractvalue %dx.types.CBufRet.f32 %6826, 2
  %6830 = fsub fast float %6811, %6827
  %6831 = fsub fast float %6812, %6828
  %6832 = fsub fast float %6813, %6829
  %6833 = fsub fast float %167, %6830
  %6834 = fsub fast float %168, %6831
  %6835 = fsub fast float %169, %6832
  %6836 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %6814, i32 undef)  ; BufferLoad(srv,index,wot)
  %6837 = extractvalue %dx.types.ResRet.f32 %6836, 0
  %6838 = extractvalue %dx.types.ResRet.f32 %6836, 1
  %6839 = extractvalue %dx.types.ResRet.f32 %6836, 2
  %6840 = call float @dx.op.dot3.f32(i32 55, float %6833, float %6834, float %6835, float %6837, float %6838, float %6839)  ; Dot3(ax,ay,az,bx,by,bz)
  %6841 = add i32 %6809, 24
  %6842 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %6841, i32 undef)  ; BufferLoad(srv,index,wot)
  %6843 = extractvalue %dx.types.ResRet.f32 %6842, 0
  %6844 = extractvalue %dx.types.ResRet.f32 %6842, 1
  %6845 = extractvalue %dx.types.ResRet.f32 %6842, 2
  %6846 = call float @dx.op.dot3.f32(i32 55, float %6833, float %6834, float %6835, float %6843, float %6844, float %6845)  ; Dot3(ax,ay,az,bx,by,bz)
  %6847 = add i32 %6809, 36
  %6848 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %6847, i32 undef)  ; BufferLoad(srv,index,wot)
  %6849 = extractvalue %dx.types.ResRet.f32 %6848, 0
  %6850 = extractvalue %dx.types.ResRet.f32 %6848, 1
  %6851 = extractvalue %dx.types.ResRet.f32 %6848, 2
  %6852 = call float @dx.op.dot3.f32(i32 55, float %6833, float %6834, float %6835, float %6849, float %6850, float %6851)  ; Dot3(ax,ay,az,bx,by,bz)
  %6853 = call float @dx.op.unary.f32(i32 6, float %6840)  ; FAbs(value)
  %6854 = call float @dx.op.unary.f32(i32 6, float %6846)  ; FAbs(value)
  %6855 = call float @dx.op.unary.f32(i32 6, float %6852)  ; FAbs(value)
  %6856 = fsub fast float %6817, %6853
  %6857 = fsub fast float %6818, %6854
  %6858 = fsub fast float %6819, %6855
  %6859 = fmul fast float %6856, %6785
  %6860 = fmul fast float %6857, %6786
  %6861 = fmul fast float %6858, %6787
  %6862 = call float @dx.op.binary.f32(i32 36, float %6860, float %6861)  ; FMin(a,b)
  %6863 = call float @dx.op.binary.f32(i32 36, float %6859, float %6862)  ; FMin(a,b)
  %6864 = call float @dx.op.unary.f32(i32 7, float %6863)  ; Saturate(value)
  %6865 = call float @dx.op.binary.f32(i32 36, float %6768, float %6864)  ; FMin(a,b)
  %6866 = uitofp i1 %6825 to float
  %6867 = fsub fast float 1.000000e+00, %6866
  %6868 = fmul fast float %6865, %6867
  %6869 = fcmp fast ogt float %6868, 0.000000e+00
  br i1 %6869, label %6876, label %6870

; <label>:6870                                    ; preds = %7018, %6764
  %6871 = phi float [ %7082, %7018 ], [ %6765, %6764 ]
  %6872 = phi float [ %7083, %7018 ], [ %6766, %6764 ]
  %6873 = phi float [ %7084, %7018 ], [ %6767, %6764 ]
  %6874 = phi float [ %7085, %7018 ], [ %6768, %6764 ]
  %6875 = icmp eq i32 %6769, %6773
  br i1 %6875, label %7086, label %6764

; <label>:6876                                    ; preds = %6764
  br i1 %6822, label %6934, label %6877

; <label>:6877                                    ; preds = %6876
  %6878 = fsub fast float -0.000000e+00, %6837
  %6879 = fsub fast float -0.000000e+00, %6838
  %6880 = fsub fast float -0.000000e+00, %6839
  %6881 = call float @dx.op.dot3.f32(i32 55, float %6717, float %6718, float %6719, float %6878, float %6879, float %6880)  ; Dot3(ax,ay,az,bx,by,bz)
  %6882 = fsub fast float -0.000000e+00, %6881
  %6883 = call float @dx.op.dot3.f32(i32 55, float %6833, float %6834, float %6835, float %6878, float %6879, float %6880)  ; Dot3(ax,ay,az,bx,by,bz)
  %6884 = fadd fast float %6883, %6800
  %6885 = fadd fast float %6799, %6883
  %6886 = fsub fast float -0.000000e+00, %6885
  %6887 = fcmp ogt float %6881, -0.000000e+00
  %6888 = select i1 %6887, float %6886, float %6884
  %6889 = call float @dx.op.unary.f32(i32 6, float %6882)  ; FAbs(value)
  %6890 = fdiv fast float 1.000000e+00, %6889
  %6891 = fmul fast float %6888, %6890
  %6892 = call float @dx.op.binary.f32(i32 35, float %6891, float 0.000000e+00)  ; FMax(a,b)
  %6893 = fsub fast float -0.000000e+00, %6843
  %6894 = fsub fast float -0.000000e+00, %6844
  %6895 = fsub fast float -0.000000e+00, %6845
  %6896 = call float @dx.op.dot3.f32(i32 55, float %6717, float %6718, float %6719, float %6893, float %6894, float %6895)  ; Dot3(ax,ay,az,bx,by,bz)
  %6897 = fsub fast float -0.000000e+00, %6896
  %6898 = call float @dx.op.dot3.f32(i32 55, float %6833, float %6834, float %6835, float %6893, float %6894, float %6895)  ; Dot3(ax,ay,az,bx,by,bz)
  %6899 = fadd fast float %6898, %6804
  %6900 = fadd fast float %6803, %6898
  %6901 = fsub fast float -0.000000e+00, %6900
  %6902 = fcmp ogt float %6896, -0.000000e+00
  %6903 = select i1 %6902, float %6901, float %6899
  %6904 = call float @dx.op.unary.f32(i32 6, float %6897)  ; FAbs(value)
  %6905 = fdiv fast float 1.000000e+00, %6904
  %6906 = fmul fast float %6903, %6905
  %6907 = call float @dx.op.binary.f32(i32 35, float %6906, float 0.000000e+00)  ; FMax(a,b)
  %6908 = fsub fast float -0.000000e+00, %6849
  %6909 = fsub fast float -0.000000e+00, %6850
  %6910 = fsub fast float -0.000000e+00, %6851
  %6911 = call float @dx.op.dot3.f32(i32 55, float %6717, float %6718, float %6719, float %6908, float %6909, float %6910)  ; Dot3(ax,ay,az,bx,by,bz)
  %6912 = fsub fast float -0.000000e+00, %6911
  %6913 = call float @dx.op.dot3.f32(i32 55, float %6833, float %6834, float %6835, float %6908, float %6909, float %6910)  ; Dot3(ax,ay,az,bx,by,bz)
  %6914 = fadd fast float %6913, %6808
  %6915 = fadd fast float %6807, %6913
  %6916 = fsub fast float -0.000000e+00, %6915
  %6917 = fcmp ogt float %6911, -0.000000e+00
  %6918 = select i1 %6917, float %6916, float %6914
  %6919 = call float @dx.op.unary.f32(i32 6, float %6912)  ; FAbs(value)
  %6920 = fdiv fast float 1.000000e+00, %6919
  %6921 = fmul fast float %6918, %6920
  %6922 = call float @dx.op.binary.f32(i32 35, float %6921, float 0.000000e+00)  ; FMax(a,b)
  %6923 = call float @dx.op.binary.f32(i32 36, float %6907, float %6922)  ; FMin(a,b)
  %6924 = call float @dx.op.binary.f32(i32 36, float %6892, float %6923)  ; FMin(a,b)
  %6925 = fmul fast float %6924, %6717
  %6926 = fmul fast float %6924, %6718
  %6927 = fmul fast float %6924, %6719
  %6928 = fadd fast float %6925, %167
  %6929 = fadd fast float %6926, %168
  %6930 = fadd fast float %6927, %169
  %6931 = fsub fast float %6928, %6777
  %6932 = fsub fast float %6929, %6778
  %6933 = fsub fast float %6930, %6779
  br label %6941

; <label>:6934                                    ; preds = %6876
  %6935 = fmul fast float %6717, 8.096000e+03
  %6936 = fmul fast float %6718, 8.096000e+03
  %6937 = fmul fast float %6719, 8.096000e+03
  %6938 = fadd fast float %6935, %167
  %6939 = fadd fast float %6936, %168
  %6940 = fadd fast float %6937, %169
  br label %6941

; <label>:6941                                    ; preds = %6934, %6877
  %6942 = phi float [ %6717, %6934 ], [ %6931, %6877 ]
  %6943 = phi float [ %6718, %6934 ], [ %6932, %6877 ]
  %6944 = phi float [ %6719, %6934 ], [ %6933, %6877 ]
  %6945 = phi float [ %6938, %6934 ], [ %6928, %6877 ]
  %6946 = phi float [ %6939, %6934 ], [ %6929, %6877 ]
  %6947 = phi float [ %6940, %6934 ], [ %6930, %6877 ]
  %6948 = fcmp fast olt float %6796, 1.000000e+00
  br i1 %6948, label %6949, label %6980, !dx.controlflow.hints !96

; <label>:6949                                    ; preds = %6941
  %6950 = fmul fast float %6944, %6794
  %6951 = fmul fast float %6943, %6795
  %6952 = fsub fast float %6950, %6951
  %6953 = fmul fast float %6942, %6795
  %6954 = fmul fast float %6944, %6793
  %6955 = fsub fast float %6953, %6954
  %6956 = fmul fast float %6943, %6793
  %6957 = fmul fast float %6942, %6794
  %6958 = fsub fast float %6956, %6957
  %6959 = fmul fast float %6952, 2.000000e+00
  %6960 = fmul fast float %6955, 2.000000e+00
  %6961 = fmul fast float %6958, 2.000000e+00
  %6962 = fmul fast float %6959, %6796
  %6963 = fmul fast float %6960, %6796
  %6964 = fmul fast float %6961, %6796
  %6965 = fmul fast float %6961, %6794
  %6966 = fmul fast float %6960, %6795
  %6967 = fmul fast float %6959, %6795
  %6968 = fmul fast float %6961, %6793
  %6969 = fmul fast float %6960, %6793
  %6970 = fmul fast float %6959, %6794
  %6971 = fadd fast float %6965, %6942
  %6972 = fadd fast float %6971, %6962
  %6973 = fsub fast float %6972, %6966
  %6974 = fsub fast float %6943, %6968
  %6975 = fadd fast float %6974, %6963
  %6976 = fadd fast float %6975, %6967
  %6977 = fadd fast float %6964, %6944
  %6978 = fsub fast float %6977, %6970
  %6979 = fadd fast float %6978, %6969
  br label %6980

; <label>:6980                                    ; preds = %6949, %6941
  %6981 = phi float [ %6973, %6949 ], [ %6942, %6941 ]
  %6982 = phi float [ %6976, %6949 ], [ %6943, %6941 ]
  %6983 = phi float [ %6979, %6949 ], [ %6944, %6941 ]
  br i1 %6822, label %7015, label %6984

; <label>:6984                                    ; preds = %6980
  %6985 = fmul fast float %6485, 0x400187C840000000
  %6986 = fadd fast float %6985, 0xC00EFC2120000000
  %6987 = fmul fast float %6986, %6485
  %6988 = fadd fast float %6987, 0x3FE5D16340000000
  %6989 = fmul fast float %6988, %6485
  %6990 = fadd fast float %6989, 1.000000e+00
  %6991 = call float @dx.op.unary.f32(i32 7, float %6990)  ; Saturate(value)
  %6992 = fsub fast float %6945, %167
  %6993 = fsub fast float %6946, %168
  %6994 = fsub fast float %6947, %169
  %6995 = fsub fast float %6945, %6777
  %6996 = fsub fast float %6946, %6778
  %6997 = fsub fast float %6947, %6779
  %6998 = call float @dx.op.dot3.f32(i32 55, float %6992, float %6993, float %6994, float %6992, float %6993, float %6994)  ; Dot3(ax,ay,az,bx,by,bz)
  %6999 = call float @dx.op.dot3.f32(i32 55, float %6995, float %6996, float %6997, float %6995, float %6996, float %6997)  ; Dot3(ax,ay,az,bx,by,bz)
  %7000 = fadd fast float %6999, 0x3EE4F8B580000000
  %7001 = fdiv fast float %6998, %7000
  %7002 = bitcast float %7001 to i32
  %7003 = ashr i32 %7002, 1
  %7004 = add nsw i32 %7003, 532487669
  %7005 = bitcast i32 %7004 to float
  %7006 = fmul fast float %7005, %6991
  %7007 = call float @dx.op.unary.f32(i32 7, float %7006)  ; Saturate(value)
  %7008 = fmul fast float %7007, 0x4009981AE0000000
  %7009 = fsub fast float 0x40111BBD80000000, %7008
  %7010 = fmul fast float %7009, %7007
  %7011 = fadd fast float %7010, 0xC0009F6020000000
  %7012 = fmul fast float %7011, %7007
  %7013 = fadd fast float %7012, 1.000000e+00
  %7014 = call float @dx.op.unary.f32(i32 7, float %7013)  ; Saturate(value)
  br label %7018

; <label>:7015                                    ; preds = %6980
  %7016 = icmp ne i32 %6823, -1
  %7017 = zext i1 %7016 to i32
  br label %7018

; <label>:7018                                    ; preds = %7015, %6984
  %7019 = phi float [ %6485, %7015 ], [ %7014, %6984 ]
  %7020 = phi i32 [ %7017, %7015 ], [ 0, %6984 ]
  %7021 = fmul float %7019, 5.000000e+00
  %7022 = fsub float 5.000000e+00, %7021
  %7023 = icmp ne i32 %7020, 0
  %7024 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %7025 = extractvalue %dx.types.CBufRet.f32 %7024, 3
  %7026 = fadd fast float %7025, %7022
  %7027 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7026)  ; FMax(a,b)
  %7028 = call float @dx.op.unary.f32(i32 6, float %6981)  ; FAbs(value)
  %7029 = call float @dx.op.unary.f32(i32 6, float %6982)  ; FAbs(value)
  %7030 = fadd fast float %7029, %7028
  %7031 = call float @dx.op.unary.f32(i32 6, float %6983)  ; FAbs(value)
  %7032 = fadd fast float %7030, %7031
  %7033 = fcmp fast oeq float %7032, 0.000000e+00
  %7034 = fdiv fast float 1.000000e+00, %7032
  %7035 = select i1 %7033, float 1.000000e+00, float %7034
  %7036 = fmul fast float %7035, %6981
  %7037 = fmul fast float %7035, %6982
  %7038 = call float @dx.op.unary.f32(i32 6, float %7037)  ; FAbs(value)
  %7039 = call float @dx.op.unary.f32(i32 6, float %7036)  ; FAbs(value)
  %7040 = fsub fast float 1.000000e+00, %7038
  %7041 = fsub fast float 1.000000e+00, %7039
  %7042 = fcmp fast oge float %7036, 0.000000e+00
  %7043 = fcmp fast oge float %7037, 0.000000e+00
  %7044 = select i1 %7042, float 1.000000e+00, float -1.000000e+00
  %7045 = select i1 %7043, float 1.000000e+00, float -1.000000e+00
  %7046 = fcmp fast ole float %6983, 0.000000e+00
  %7047 = fmul fast float %7044, %7040
  %7048 = fmul fast float %7045, %7041
  %7049 = select i1 %7046, float %7047, float %7036
  %7050 = select i1 %7046, float %7048, float %7037
  %7051 = fmul fast float %7049, 5.000000e-01
  %7052 = fmul fast float %7050, 5.000000e-01
  %7053 = fadd fast float %7051, 5.000000e-01
  %7054 = fadd fast float %7052, 5.000000e-01
  %7055 = uitofp i32 %6820 to float
  %7056 = call float @dx.op.binary.f32(i32 36, float %7027, float 3.000000e+00)  ; FMin(a,b)
  %7057 = fadd fast float %7056, 2.000000e+00
  %7058 = call float @dx.op.unary.f32(i32 21, float %7057)  ; Exp(value)
  %7059 = extractvalue %dx.types.CBufRet.f32 %7024, 1
  %7060 = fmul fast float %7059, %7058
  %7061 = fmul fast float %7060, 2.000000e+00
  %7062 = fsub fast float 1.000000e+00, %7061
  %7063 = fmul fast float %7053, %7062
  %7064 = fmul fast float %7054, %7062
  %7065 = fadd fast float %7063, %7060
  %7066 = fadd fast float %7064, %7060
  %7067 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %44, float %7065, float %7066, float %7055, float undef, i32 0, i32 0, i32 undef, float %7027)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7068 = extractvalue %dx.types.ResRet.f32 %7067, 0
  %7069 = extractvalue %dx.types.ResRet.f32 %7067, 1
  %7070 = extractvalue %dx.types.ResRet.f32 %7067, 2
  %7071 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7072 = extractvalue %dx.types.CBufRet.f32 %7071, 3
  %7073 = fmul fast float %7072, %6790
  %7074 = call float @dx.op.binary.f32(i32 36, float %6550, float %7073)  ; FMin(a,b)
  %7075 = select i1 %7023, float %7074, float %7073
  %7076 = fmul fast float %7068, %6868
  %7077 = fmul fast float %7076, %7075
  %7078 = fmul fast float %7069, %6868
  %7079 = fmul fast float %7078, %7075
  %7080 = fmul fast float %7070, %6868
  %7081 = fmul fast float %7080, %7075
  %7082 = fadd fast float %7077, %6765
  %7083 = fadd fast float %7079, %6766
  %7084 = fadd fast float %7081, %6767
  %7085 = fsub fast float %6768, %6868
  br label %6870

; <label>:7086                                    ; preds = %6870
  br label %7087

; <label>:7087                                    ; preds = %7086, %6734
  %7088 = phi float [ %6735, %6734 ], [ %6871, %7086 ]
  %7089 = phi float [ %6736, %6734 ], [ %6872, %7086 ]
  %7090 = phi float [ %6737, %6734 ], [ %6873, %7086 ]
  %7091 = phi float [ %6738, %6734 ], [ %6874, %7086 ]
  %7092 = add i32 %6739, 1
  %7093 = icmp ugt i32 %7092, %6731
  br i1 %7093, label %7094, label %6734, !llvm.loop !97

; <label>:7094                                    ; preds = %7087
  br label %7095

; <label>:7095                                    ; preds = %7094, %6716
  %7096 = phi float [ 0.000000e+00, %6716 ], [ %7088, %7094 ]
  %7097 = phi float [ 0.000000e+00, %6716 ], [ %7089, %7094 ]
  %7098 = phi float [ 0.000000e+00, %6716 ], [ %7090, %7094 ]
  %7099 = call float @dx.op.dot3.f32(i32 55, float %7096, float %7097, float %7098, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7100 = select i1 %228, float 0.000000e+00, float %7096
  %7101 = select i1 %228, float %7099, float %7097
  %7102 = select i1 %228, float 0.000000e+00, float %7098
  %7103 = fcmp fast olt float %6669, 0.000000e+00
  %7104 = call float @dx.op.unary.f32(i32 6, float %6669)  ; FAbs(value)
  %7105 = fmul fast float %7104, %6609
  %7106 = fmul fast float %7104, %6610
  %7107 = fmul fast float %7104, %6611
  %7108 = select i1 %7103, float %6609, float %7105
  %7109 = select i1 %7103, float %6610, float %7106
  %7110 = select i1 %7103, float %6611, float %7107
  %7111 = fsub fast float 1.000000e+00, %7104
  %7112 = call float @dx.op.unary.f32(i32 7, float %7111)  ; Saturate(value)
  %7113 = fmul fast float %7112, %7100
  %7114 = fmul fast float %7112, %7101
  %7115 = fmul fast float %7112, %7102
  %7116 = fadd fast float %7108, %7113
  %7117 = fadd fast float %7109, %7114
  %7118 = fadd fast float %7110, %7115
  br label %7119

; <label>:7119                                    ; preds = %7095, %6652
  %7120 = phi float [ %6609, %6652 ], [ %7116, %7095 ]
  %7121 = phi float [ %6610, %6652 ], [ %7117, %7095 ]
  %7122 = phi float [ %6611, %6652 ], [ %7118, %7095 ]
  %7123 = fmul fast float %6658, %6605
  %7124 = fmul fast float %6658, %6606
  %7125 = fmul fast float %6658, %6607
  %7126 = call float @dx.op.dot3.f32(i32 55, float %6482, float %6483, float %6484, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7127 = fcmp fast ogt float %7126, 0x3E7FF19E20000000
  %7128 = fdiv fast float 1.000000e+00, %7126
  %7129 = select i1 %7127, float %7128, float 0.000000e+00
  %7130 = fmul fast float %7129, %6482
  %7131 = fmul fast float %7129, %6483
  %7132 = fmul fast float %7129, %6484
  %7133 = fadd fast float %7130, -1.000000e+00
  %7134 = fadd fast float %7131, -1.000000e+00
  %7135 = fadd fast float %7132, -1.000000e+00
  %7136 = fmul fast float %7133, 5.000000e-01
  %7137 = fmul fast float %7134, 5.000000e-01
  %7138 = fmul fast float %7135, 5.000000e-01
  %7139 = fadd fast float %7136, 1.000000e+00
  %7140 = fadd fast float %7137, 1.000000e+00
  %7141 = fadd fast float %7138, 1.000000e+00
  %7142 = fmul fast float %7120, %6653
  %7143 = fmul fast float %7121, %6654
  %7144 = fmul fast float %7122, %6655
  %7145 = fsub fast float 1.000000e+00, %6489
  %7146 = bitcast float %7145 to i32
  %7147 = sitofp i32 %7146 to float
  %7148 = fmul fast float %7147, 5.000000e+00
  %7149 = fadd fast float %7148, 0xC1EFBF8940000000
  %7150 = fptosi float %7149 to i32
  %7151 = bitcast i32 %7150 to float
  %7152 = fmul fast float %7151, %4259
  %7153 = fmul fast float %6605, %7152
  %7154 = fmul fast float %7153, %6658
  %7155 = fmul fast float %7154, %7139
  %7156 = fmul fast float %6606, %7152
  %7157 = fmul fast float %7156, %6658
  %7158 = fmul fast float %7157, %7140
  %7159 = fmul fast float %6607, %7152
  %7160 = fmul fast float %7159, %6658
  %7161 = fmul fast float %7160, %7141
  %7162 = fmul fast float %7123, %4255
  %7163 = fmul fast float %7124, %4255
  %7164 = fmul fast float %7125, %4255
  %7165 = fadd fast float %7142, %4251
  %7166 = fadd fast float %7165, %7155
  %7167 = fmul fast float %7166, %4255
  %7168 = fadd fast float %7143, %4252
  %7169 = fadd fast float %7168, %7158
  %7170 = fmul fast float %7169, %4255
  %7171 = fadd fast float %7144, %4253
  %7172 = fadd fast float %7171, %7161
  %7173 = fmul fast float %7172, %4255
  %7174 = bitcast i32 %6513 to float
  %7175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %7176 = extractvalue %dx.types.CBufRet.f32 %7175, 3
  %7177 = fcmp fast oeq float %7176, 0.000000e+00
  br i1 %7177, label %8644, label %7178

; <label>:7178                                    ; preds = %7119
  %7179 = extractvalue %dx.types.CBufRet.f32 %7175, 0
  %7180 = extractvalue %dx.types.CBufRet.f32 %7175, 1
  %7181 = extractvalue %dx.types.CBufRet.f32 %7175, 2
  %7182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %7183 = extractvalue %dx.types.CBufRet.f32 %7182, 0
  %7184 = extractvalue %dx.types.CBufRet.f32 %7182, 1
  %7185 = extractvalue %dx.types.CBufRet.f32 %7182, 2
  %7186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %7187 = extractvalue %dx.types.CBufRet.f32 %7186, 0
  %7188 = extractvalue %dx.types.CBufRet.f32 %7186, 1
  %7189 = call float @dx.op.dot3.f32(i32 55, float %7183, float %7184, float %7185, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7190 = select i1 %228, float %7187, float %7183
  %7191 = select i1 %228, float %7189, float %7184
  %7192 = select i1 %228, float %7188, float %7185
  %7193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %7194 = extractvalue %dx.types.CBufRet.f32 %7193, 2
  %7195 = fmul fast float %7194, %111
  %7196 = fmul fast float %7194, %112
  %7197 = fmul fast float %7194, %113
  %7198 = fadd fast float %7195, %167
  %7199 = fadd fast float %7196, %168
  %7200 = fadd fast float %7197, %169
  %7201 = fcmp fast olt float %7176, 0.000000e+00
  br i1 %7201, label %8297, label %7202

; <label>:7202                                    ; preds = %7178
  %7203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7204 = extractvalue %dx.types.CBufRet.f32 %7203, 0
  %7205 = extractvalue %dx.types.CBufRet.f32 %7203, 1
  %7206 = extractvalue %dx.types.CBufRet.f32 %7203, 2
  %7207 = extractvalue %dx.types.CBufRet.f32 %7203, 3
  %7208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7209 = extractvalue %dx.types.CBufRet.f32 %7208, 0
  %7210 = extractvalue %dx.types.CBufRet.f32 %7208, 1
  %7211 = extractvalue %dx.types.CBufRet.f32 %7208, 2
  %7212 = extractvalue %dx.types.CBufRet.f32 %7208, 3
  %7213 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7214 = extractvalue %dx.types.CBufRet.f32 %7213, 0
  %7215 = extractvalue %dx.types.CBufRet.f32 %7213, 1
  %7216 = extractvalue %dx.types.CBufRet.f32 %7213, 2
  %7217 = extractvalue %dx.types.CBufRet.f32 %7213, 3
  %7218 = fmul fast float %7204, %7198
  %7219 = call float @dx.op.tertiary.f32(i32 46, float %7199, float %7205, float %7218)  ; FMad(a,b,c)
  %7220 = call float @dx.op.tertiary.f32(i32 46, float %7200, float %7206, float %7219)  ; FMad(a,b,c)
  %7221 = fadd fast float %7220, %7207
  %7222 = fmul fast float %7209, %7198
  %7223 = call float @dx.op.tertiary.f32(i32 46, float %7199, float %7210, float %7222)  ; FMad(a,b,c)
  %7224 = call float @dx.op.tertiary.f32(i32 46, float %7200, float %7211, float %7223)  ; FMad(a,b,c)
  %7225 = fadd fast float %7224, %7212
  %7226 = fmul fast float %7214, %7198
  %7227 = call float @dx.op.tertiary.f32(i32 46, float %7199, float %7215, float %7226)  ; FMad(a,b,c)
  %7228 = call float @dx.op.tertiary.f32(i32 46, float %7200, float %7216, float %7227)  ; FMad(a,b,c)
  %7229 = fadd fast float %7228, %7217
  %7230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %7231 = extractvalue %dx.types.CBufRet.f32 %7230, 0
  %7232 = extractvalue %dx.types.CBufRet.f32 %7230, 1
  %7233 = extractvalue %dx.types.CBufRet.f32 %7230, 3
  %7234 = fmul fast float %7233, %7221
  %7235 = fmul fast float %7233, %7225
  %7236 = fadd fast float %7234, %7231
  %7237 = fadd fast float %7235, %7232
  %7238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %7239 = extractvalue %dx.types.CBufRet.f32 %7238, 0
  %7240 = extractvalue %dx.types.CBufRet.f32 %7238, 1
  %7241 = extractvalue %dx.types.CBufRet.f32 %7238, 3
  %7242 = fmul fast float %7241, %7221
  %7243 = fmul fast float %7241, %7225
  %7244 = fadd fast float %7242, %7239
  %7245 = fadd fast float %7243, %7240
  %7246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %7247 = extractvalue %dx.types.CBufRet.f32 %7246, 1
  %7248 = fsub fast float %7247, %7229
  %7249 = extractvalue %dx.types.CBufRet.f32 %7246, 2
  %7250 = fmul fast float %7248, %7249
  %7251 = fsub fast float 1.000000e+00, %7250
  %7252 = call float @dx.op.unary.f32(i32 7, float %7251)  ; Saturate(value)
  %7253 = extractvalue %dx.types.CBufRet.f32 %7238, 2
  %7254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7255 = extractvalue %dx.types.CBufRet.f32 %7254, 2
  %7256 = fadd fast float %7255, %7253
  %7257 = fcmp fast ogt float %7256, 0.000000e+00
  br i1 %7257, label %7258, label %7282

; <label>:7258                                    ; preds = %7202
  %7259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %7260 = extractvalue %dx.types.CBufRet.f32 %7259, 0
  %7261 = extractvalue %dx.types.CBufRet.f32 %7259, 1
  %7262 = fsub fast float %7244, %7260
  %7263 = fsub fast float %7245, %7261
  %7264 = fcmp fast olt float %7262, 0.000000e+00
  %7265 = fcmp fast olt float %7263, 0.000000e+00
  %7266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %7267 = extractvalue %dx.types.CBufRet.f32 %7266, 0
  %7268 = extractvalue %dx.types.CBufRet.f32 %7266, 1
  %7269 = extractvalue %dx.types.CBufRet.f32 %7266, 2
  %7270 = extractvalue %dx.types.CBufRet.f32 %7266, 3
  %7271 = select i1 %7264, float %7267, float %7269
  %7272 = select i1 %7265, float %7268, float %7270
  %7273 = fmul fast float %7271, %7262
  %7274 = fmul fast float %7272, %7263
  %7275 = call float @dx.op.unary.f32(i32 6, float %7273)  ; FAbs(value)
  %7276 = call float @dx.op.unary.f32(i32 6, float %7274)  ; FAbs(value)
  %7277 = extractvalue %dx.types.CBufRet.f32 %7193, 0
  %7278 = call float @dx.op.binary.f32(i32 35, float %7275, float %7276)  ; FMax(a,b)
  %7279 = fsub fast float %7277, %7278
  %7280 = call float @dx.op.unary.f32(i32 7, float %7279)  ; Saturate(value)
  %7281 = fmul fast float %7280, %7252
  br label %7282

; <label>:7282                                    ; preds = %7258, %7202
  %7283 = phi float [ %7281, %7258 ], [ 0.000000e+00, %7202 ]
  %7284 = extractvalue %dx.types.CBufRet.f32 %7230, 2
  %7285 = extractvalue %dx.types.CBufRet.f32 %7254, 1
  %7286 = fadd fast float %7285, %7284
  %7287 = fcmp fast ogt float %7286, 0.000000e+00
  %7288 = extractvalue %dx.types.CBufRet.f32 %7193, 0
  br i1 %7287, label %7289, label %7312

; <label>:7289                                    ; preds = %7282
  %7290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %7291 = extractvalue %dx.types.CBufRet.f32 %7290, 0
  %7292 = extractvalue %dx.types.CBufRet.f32 %7290, 1
  %7293 = fsub fast float %7236, %7291
  %7294 = fsub fast float %7237, %7292
  %7295 = fcmp fast olt float %7293, 0.000000e+00
  %7296 = fcmp fast olt float %7294, 0.000000e+00
  %7297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %7298 = extractvalue %dx.types.CBufRet.f32 %7297, 0
  %7299 = extractvalue %dx.types.CBufRet.f32 %7297, 1
  %7300 = extractvalue %dx.types.CBufRet.f32 %7297, 2
  %7301 = extractvalue %dx.types.CBufRet.f32 %7297, 3
  %7302 = select i1 %7295, float %7298, float %7300
  %7303 = select i1 %7296, float %7299, float %7301
  %7304 = fmul fast float %7302, %7293
  %7305 = fmul fast float %7303, %7294
  %7306 = call float @dx.op.unary.f32(i32 6, float %7304)  ; FAbs(value)
  %7307 = call float @dx.op.unary.f32(i32 6, float %7305)  ; FAbs(value)
  %7308 = call float @dx.op.binary.f32(i32 35, float %7306, float %7307)  ; FMax(a,b)
  %7309 = fsub fast float %7288, %7308
  %7310 = call float @dx.op.unary.f32(i32 7, float %7309)  ; Saturate(value)
  %7311 = fmul fast float %7310, %7252
  br label %7312

; <label>:7312                                    ; preds = %7289, %7282
  %7313 = phi float [ %7311, %7289 ], [ 0.000000e+00, %7282 ]
  %7314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %7315 = extractvalue %dx.types.CBufRet.f32 %7314, 1
  %7316 = call float @dx.op.unary.f32(i32 7, float %7315)  ; Saturate(value)
  %7317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %7318 = extractvalue %dx.types.CBufRet.f32 %7317, 0
  %7319 = extractvalue %dx.types.CBufRet.f32 %7317, 1
  %7320 = fsub fast float %7221, %7318
  %7321 = fsub fast float %7225, %7319
  %7322 = fcmp fast olt float %7320, 0.000000e+00
  %7323 = fcmp fast olt float %7321, 0.000000e+00
  %7324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %7325 = extractvalue %dx.types.CBufRet.f32 %7324, 0
  %7326 = extractvalue %dx.types.CBufRet.f32 %7324, 1
  %7327 = extractvalue %dx.types.CBufRet.f32 %7324, 2
  %7328 = extractvalue %dx.types.CBufRet.f32 %7324, 3
  %7329 = select i1 %7322, float %7325, float %7327
  %7330 = select i1 %7323, float %7326, float %7328
  %7331 = fmul fast float %7329, %7320
  %7332 = fmul fast float %7330, %7321
  %7333 = call float @dx.op.unary.f32(i32 6, float %7331)  ; FAbs(value)
  %7334 = call float @dx.op.unary.f32(i32 6, float %7332)  ; FAbs(value)
  %7335 = call float @dx.op.binary.f32(i32 35, float %7333, float %7334)  ; FMax(a,b)
  %7336 = fsub fast float %7288, %7335
  %7337 = call float @dx.op.unary.f32(i32 7, float %7336)  ; Saturate(value)
  %7338 = call float @dx.op.binary.f32(i32 36, float %7337, float %7316)  ; FMin(a,b)
  %7339 = fmul fast float %7338, %7252
  %7340 = fsub fast float %7313, %7339
  %7341 = fsub fast float %7283, %7313
  %7342 = fsub fast float %7341, %7339
  %7343 = call float @dx.op.binary.f32(i32 35, float %7313, float %7283)  ; FMax(a,b)
  %7344 = call float @dx.op.binary.f32(i32 35, float %7339, float %7343)  ; FMax(a,b)
  %7345 = fcmp fast olt float %7344, 1.000000e+00
  br i1 %7345, label %7346, label %7744, !dx.controlflow.hints !99

; <label>:7346                                    ; preds = %7312
  %7347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %7348 = extractvalue %dx.types.CBufRet.f32 %7347, 0
  %7349 = fcmp fast une float %7348, 0.000000e+00
  br i1 %7349, label %7350, label %7744, !dx.controlflow.hints !100

; <label>:7350                                    ; preds = %7346
  %7351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %7352 = extractvalue %dx.types.CBufRet.f32 %7351, 0
  %7353 = extractvalue %dx.types.CBufRet.f32 %7351, 1
  %7354 = extractvalue %dx.types.CBufRet.f32 %7351, 2
  %7355 = extractvalue %dx.types.CBufRet.f32 %7351, 3
  %7356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %7357 = extractvalue %dx.types.CBufRet.f32 %7356, 0
  %7358 = extractvalue %dx.types.CBufRet.f32 %7356, 1
  %7359 = extractvalue %dx.types.CBufRet.f32 %7356, 2
  %7360 = extractvalue %dx.types.CBufRet.f32 %7356, 3
  %7361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %7362 = extractvalue %dx.types.CBufRet.f32 %7361, 0
  %7363 = extractvalue %dx.types.CBufRet.f32 %7361, 1
  %7364 = extractvalue %dx.types.CBufRet.f32 %7361, 2
  %7365 = extractvalue %dx.types.CBufRet.f32 %7361, 3
  %7366 = fmul fast float %7352, %7198
  %7367 = call float @dx.op.tertiary.f32(i32 46, float %7199, float %7353, float %7366)  ; FMad(a,b,c)
  %7368 = call float @dx.op.tertiary.f32(i32 46, float %7200, float %7354, float %7367)  ; FMad(a,b,c)
  %7369 = fadd fast float %7368, %7355
  %7370 = fmul fast float %7357, %7198
  %7371 = call float @dx.op.tertiary.f32(i32 46, float %7199, float %7358, float %7370)  ; FMad(a,b,c)
  %7372 = call float @dx.op.tertiary.f32(i32 46, float %7200, float %7359, float %7371)  ; FMad(a,b,c)
  %7373 = fadd fast float %7372, %7360
  %7374 = fmul fast float %7362, %7198
  %7375 = call float @dx.op.tertiary.f32(i32 46, float %7199, float %7363, float %7374)  ; FMad(a,b,c)
  %7376 = call float @dx.op.tertiary.f32(i32 46, float %7200, float %7364, float %7375)  ; FMad(a,b,c)
  %7377 = fadd fast float %7376, %7365
  %7378 = fcmp fast oge float %7369, 1.000000e+00
  %7379 = fcmp fast oge float %7373, 1.000000e+00
  %7380 = or i1 %7378, %7379
  %7381 = fcmp fast olt float %7369, 0.000000e+00
  %7382 = fcmp fast olt float %7373, 0.000000e+00
  %7383 = or i1 %7381, %7382
  %7384 = or i1 %7380, %7383
  br i1 %7384, label %7744, label %7385, !dx.controlflow.hints !101

; <label>:7385                                    ; preds = %7350
  %7386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %7387 = extractvalue %dx.types.CBufRet.f32 %7386, 0
  %7388 = extractvalue %dx.types.CBufRet.f32 %7386, 1
  %7389 = extractvalue %dx.types.CBufRet.f32 %7386, 2
  %7390 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %7391 = extractvalue %dx.types.CBufRet.i32 %7390, 2
  %7392 = uitofp i32 %7391 to float
  %7393 = extractvalue %dx.types.CBufRet.i32 %7390, 3
  %7394 = uitofp i32 %7393 to float
  %7395 = extractvalue %dx.types.CBufRet.f32 %7386, 3
  %7396 = fmul fast float %7395, 2.000000e+00
  %7397 = fsub fast float %7369, %7387
  %7398 = fsub fast float %7373, %7388
  %7399 = fmul fast float %7396, %7397
  %7400 = fmul fast float %7396, %7398
  %7401 = fdiv fast float 1.000000e+00, %7181
  %7402 = fmul fast float %7400, %7401
  %7403 = call float @dx.op.unary.f32(i32 6, float %7402)  ; FAbs(value)
  %7404 = fmul fast float %7389, %7200
  %7405 = fmul fast float %7404, %7396
  %7406 = call float @dx.op.unary.f32(i32 6, float %7405)  ; FAbs(value)
  %7407 = call float @dx.op.unary.f32(i32 6, float %7399)  ; FAbs(value)
  %7408 = call float @dx.op.binary.f32(i32 35, float %7406, float %7403)  ; FMax(a,b)
  %7409 = call float @dx.op.binary.f32(i32 35, float %7407, float %7408)  ; FMax(a,b)
  %7410 = fmul fast float %7409, 2.000000e+00
  %7411 = call float @dx.op.unary.f32(i32 23, float %7410)  ; Log(value)
  %7412 = call float @dx.op.binary.f32(i32 35, float %7411, float %7392)  ; FMax(a,b)
  %7413 = call float @dx.op.unary.f32(i32 22, float %7412)  ; Frc(value)
  %7414 = fadd fast float %7413, 0xBFEA666660000000
  %7415 = fmul fast float %7414, 8.000000e+00
  %7416 = call float @dx.op.unary.f32(i32 7, float %7415)  ; Saturate(value)
  %7417 = call float @dx.op.unary.f32(i32 27, float %7412)  ; Round_ni(value)
  %7418 = fadd fast float %7417, %7416
  %7419 = call float @dx.op.binary.f32(i32 36, float %7418, float %7394)  ; FMin(a,b)
  %7420 = call float @dx.op.unary.f32(i32 27, float %7419)  ; Round_ni(value)
  %7421 = fsub fast float -0.000000e+00, %7420
  %7422 = call float @dx.op.unary.f32(i32 21, float %7421)  ; Exp(value)
  %7423 = fmul fast float %7422, %7396
  %7424 = fmul fast float %7423, %7369
  %7425 = fmul fast float %7423, %7373
  %7426 = fmul fast float %7424, 2.500000e-01
  %7427 = fmul fast float %7425, 2.500000e-01
  %7428 = fadd fast float %7426, 5.000000e-01
  %7429 = fadd fast float %7427, 5.000000e-01
  %7430 = fsub fast float %7394, %7392
  %7431 = fptoui float %7430 to i32
  %7432 = add i32 %7431, 320
  %7433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 %7432)  ; CBufferLoadLegacy(handle,regIndex)
  %7434 = extractvalue %dx.types.CBufRet.f32 %7433, 0
  %7435 = extractvalue %dx.types.CBufRet.f32 %7433, 1
  %7436 = fcmp fast une float %7419, %7394
  %7437 = fsub fast float %7369, %7434
  %7438 = fsub fast float %7373, %7435
  %7439 = call float @dx.op.unary.f32(i32 6, float %7437)  ; FAbs(value)
  %7440 = call float @dx.op.unary.f32(i32 6, float %7438)  ; FAbs(value)
  %7441 = fmul fast float %7439, %7423
  %7442 = fmul fast float %7440, %7423
  %7443 = fcmp fast olt float %7441, 1.000000e+00
  %7444 = fcmp fast olt float %7442, 1.000000e+00
  %7445 = and i1 %7443, %7444
  %7446 = or i1 %7436, %7445
  br i1 %7446, label %7447, label %7744, !dx.controlflow.hints !102

; <label>:7447                                    ; preds = %7385
  %7448 = fmul fast float %7425, 5.000000e-01
  %7449 = fmul fast float %7424, 5.000000e-01
  %7450 = fadd fast float %7448, 5.000000e-01
  %7451 = fadd fast float %7449, 5.000000e-01
  %7452 = sitofp i32 %7391 to float
  %7453 = fsub fast float %7419, %7452
  %7454 = call float @dx.op.unary.f32(i32 27, float %7453)  ; Round_ni(value)
  %7455 = call float @dx.op.unary.f32(i32 22, float %7419)  ; Frc(value)
  %7456 = call float @dx.op.unary.f32(i32 22, float %7451)  ; Frc(value)
  %7457 = call float @dx.op.unary.f32(i32 22, float %7450)  ; Frc(value)
  %7458 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %45, float %7456, float %7457, float %7454, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7459 = extractvalue %dx.types.ResRet.f32 %7458, 0
  %7460 = extractvalue %dx.types.ResRet.f32 %7458, 1
  %7461 = extractvalue %dx.types.ResRet.f32 %7458, 2
  %7462 = extractvalue %dx.types.ResRet.f32 %7458, 3
  %7463 = fcmp fast ogt float %7455, 0.000000e+00
  br i1 %7463, label %7464, label %7485, !dx.controlflow.hints !103

; <label>:7464                                    ; preds = %7447
  %7465 = fadd fast float %7454, 1.000000e+00
  %7466 = call float @dx.op.unary.f32(i32 22, float %7428)  ; Frc(value)
  %7467 = call float @dx.op.unary.f32(i32 22, float %7429)  ; Frc(value)
  %7468 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %45, float %7466, float %7467, float %7465, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7469 = extractvalue %dx.types.ResRet.f32 %7468, 0
  %7470 = extractvalue %dx.types.ResRet.f32 %7468, 1
  %7471 = extractvalue %dx.types.ResRet.f32 %7468, 2
  %7472 = extractvalue %dx.types.ResRet.f32 %7468, 3
  %7473 = fsub fast float %7469, %7459
  %7474 = fsub fast float %7470, %7460
  %7475 = fsub fast float %7471, %7461
  %7476 = fsub fast float %7472, %7462
  %7477 = fmul fast float %7473, %7455
  %7478 = fmul fast float %7474, %7455
  %7479 = fmul fast float %7475, %7455
  %7480 = fmul fast float %7476, %7455
  %7481 = fadd fast float %7477, %7459
  %7482 = fadd fast float %7478, %7460
  %7483 = fadd fast float %7479, %7461
  %7484 = fadd fast float %7480, %7462
  br label %7485

; <label>:7485                                    ; preds = %7464, %7447
  %7486 = phi float [ %7481, %7464 ], [ %7459, %7447 ]
  %7487 = phi float [ %7482, %7464 ], [ %7460, %7447 ]
  %7488 = phi float [ %7483, %7464 ], [ %7461, %7447 ]
  %7489 = phi float [ %7484, %7464 ], [ %7462, %7447 ]
  %7490 = fadd fast float %7486, -5.000000e-01
  %7491 = fadd fast float %7488, -5.000000e-01
  %7492 = fmul fast float %7490, 0xBFD5555560000000
  %7493 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %7491, float %7492)  ; FMad(a,b,c)
  %7494 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %7487, float 0.000000e+00)  ; FMad(a,b,c)
  %7495 = fadd fast float %7494, %7489
  %7496 = fmul fast float %7490, -7.500000e-01
  %7497 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %7491, float %7496)  ; FMad(a,b,c)
  %7498 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %7487, float 0.000000e+00)  ; FMad(a,b,c)
  %7499 = fadd fast float %7498, %7489
  %7500 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %7501 = extractvalue %dx.types.CBufRet.f32 %7500, 0
  %7502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %7503 = extractvalue %dx.types.CBufRet.f32 %7502, 0
  %7504 = extractvalue %dx.types.CBufRet.f32 %7502, 1
  %7505 = extractvalue %dx.types.CBufRet.f32 %7502, 2
  %7506 = extractvalue %dx.types.CBufRet.f32 %7502, 3
  %7507 = fsub fast float %7503, %7493
  %7508 = fsub fast float %7504, %7495
  %7509 = fsub fast float %7505, %7497
  %7510 = fsub fast float %7506, %7499
  %7511 = fmul fast float %7507, %7501
  %7512 = fmul fast float %7508, %7501
  %7513 = fmul fast float %7509, %7501
  %7514 = fmul fast float %7510, %7501
  %7515 = fadd fast float %7511, %7493
  %7516 = fadd fast float %7512, %7495
  %7517 = fadd fast float %7513, %7497
  %7518 = fadd fast float %7514, %7499
  %7519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %7520 = extractvalue %dx.types.ResRet.i32 %7519, 0
  %7521 = and i32 %7520, 536870911
  %7522 = uitofp i32 %7521 to float
  %7523 = fmul fast float %7522, %7369
  %7524 = fmul fast float %7522, %7373
  %7525 = fptoui float %7523 to i32
  %7526 = fptoui float %7524 to i32
  %7527 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %7528 = extractvalue %dx.types.ResRet.i32 %7527, 0
  %7529 = and i32 %7528, 31
  %7530 = lshr i32 %7525, %7529
  %7531 = lshr i32 %7526, %7529
  %7532 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %7533 = extractvalue %dx.types.ResRet.i32 %7532, 0
  %7534 = and i32 %7533, 31
  %7535 = shl i32 1, %7534
  %7536 = call i32 @dx.op.binary.i32(i32 40, i32 %7535, i32 4)  ; UMin(a,b)
  %7537 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %7538 = extractvalue %dx.types.ResRet.i32 %7537, 0
  %7539 = extractvalue %dx.types.ResRet.i32 %7537, 1
  %7540 = icmp eq i32 %7536, 0
  br i1 %7540, label %7582, label %7541

; <label>:7541                                    ; preds = %7485
  br label %7542

; <label>:7542                                    ; preds = %7570, %7541
  %7543 = phi i32 [ %7573, %7570 ], [ 0, %7541 ]
  %7544 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %7545 = extractvalue %dx.types.ResRet.i32 %7544, 0
  %7546 = lshr i32 %7545, 16
  %7547 = and i32 %7546, 31
  %7548 = shl i32 %7531, %7547
  %7549 = add i32 %7548, %7530
  %7550 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %7551 = extractvalue %dx.types.ResRet.i32 %7550, 0
  %7552 = and i32 %7551, 31
  %7553 = shl i32 %7549, %7552
  %7554 = add i32 %7553, %7543
  %7555 = shl i32 %7554, 2
  %7556 = add i32 %7555, 32
  %7557 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7556, i32 undef)  ; BufferLoad(srv,index,wot)
  %7558 = extractvalue %dx.types.ResRet.i32 %7557, 0
  %7559 = icmp slt i32 %7558, 0
  %7560 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 %7543
  %7561 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 %7543
  %7562 = bitcast float* %7560 to i32*
  %7563 = bitcast float* %7561 to i32*
  br i1 %7559, label %7564, label %7570

; <label>:7564                                    ; preds = %7542
  %7565 = and i32 %7558, 1073741823
  %7566 = add nuw nsw i32 %7565, 20
  %7567 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7566, i32 undef)  ; BufferLoad(srv,index,wot)
  %7568 = extractvalue %dx.types.ResRet.i32 %7567, 0
  %7569 = extractvalue %dx.types.ResRet.i32 %7567, 1
  br label %7570

; <label>:7570                                    ; preds = %7564, %7542
  %7571 = phi i32 [ %7568, %7564 ], [ %7538, %7542 ]
  %7572 = phi i32 [ %7569, %7564 ], [ %7539, %7542 ]
  store i32 %7571, i32* %7562, align 4
  store i32 %7572, i32* %7563, align 4
  %7573 = add nuw i32 %7543, 1
  %7574 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %7575 = extractvalue %dx.types.CBufRet.i32 %7574, 2
  %7576 = icmp eq i32 %7575, 0
  %7577 = icmp ugt i32 %7558, -1073741825
  %7578 = and i1 %7577, %7576
  %7579 = icmp ult i32 %7573, %7536
  %7580 = and i1 %7578, %7579
  br i1 %7580, label %7542, label %7581

; <label>:7581                                    ; preds = %7570
  br label %7582

; <label>:7582                                    ; preds = %7581, %7485
  %7583 = phi i32 [ 0, %7485 ], [ %7573, %7581 ]
  %7584 = extractvalue %dx.types.CBufRet.f32 %7347, 2
  %7585 = fptoui float %7584 to i32
  %7586 = icmp eq i32 %7585, 0
  br i1 %7586, label %7638, label %7587

; <label>:7587                                    ; preds = %7582
  br label %7588

; <label>:7588                                    ; preds = %7633, %7587
  %7589 = phi i32 [ %7634, %7633 ], [ %7583, %7587 ]
  %7590 = phi i32 [ %7635, %7633 ], [ 0, %7587 ]
  %7591 = lshr i32 %7590, 2
  %7592 = and i32 %7590, 3
  %7593 = add nuw nsw i32 %7591, 83
  %7594 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 %7593)  ; CBufferLoadLegacy(handle,regIndex)
  %7595 = extractvalue %dx.types.CBufRet.i32 %7594, 0
  %7596 = extractvalue %dx.types.CBufRet.i32 %7594, 1
  %7597 = extractvalue %dx.types.CBufRet.i32 %7594, 2
  %7598 = extractvalue %dx.types.CBufRet.i32 %7594, 3
  %7599 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 0
  store i32 %7595, i32* %7599, align 4
  %7600 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 1
  store i32 %7596, i32* %7600, align 4
  %7601 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 2
  store i32 %7597, i32* %7601, align 4
  %7602 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 3
  store i32 %7598, i32* %7602, align 4
  %7603 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 %7592
  %7604 = load i32, i32* %7603, align 4, !tbaa !94, !noalias !104
  %7605 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %7606 = extractvalue %dx.types.ResRet.i32 %7605, 0
  %7607 = lshr i32 %7606, 16
  %7608 = and i32 %7607, 31
  %7609 = shl i32 %7531, %7608
  %7610 = add i32 %7609, %7530
  %7611 = shl i32 %7610, 2
  %7612 = add i32 %7611, %7604
  %7613 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7612, i32 undef)  ; BufferLoad(srv,index,wot)
  %7614 = extractvalue %dx.types.ResRet.i32 %7613, 0
  %7615 = icmp eq i32 %7614, 0
  br i1 %7615, label %7633, label %7616

; <label>:7616                                    ; preds = %7588
  %7617 = icmp slt i32 %7614, 0
  %7618 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 %7589
  %7619 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 %7589
  %7620 = bitcast float* %7618 to i32*
  %7621 = bitcast float* %7619 to i32*
  br i1 %7617, label %7622, label %7629

; <label>:7622                                    ; preds = %7616
  %7623 = and i32 %7614, 1073741823
  %7624 = add i32 %7604, 20
  %7625 = add i32 %7624, %7623
  %7626 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7625, i32 undef)  ; BufferLoad(srv,index,wot)
  %7627 = extractvalue %dx.types.ResRet.i32 %7626, 0
  %7628 = extractvalue %dx.types.ResRet.i32 %7626, 1
  br label %7629

; <label>:7629                                    ; preds = %7622, %7616
  %7630 = phi i32 [ %7627, %7622 ], [ %7538, %7616 ]
  %7631 = phi i32 [ %7628, %7622 ], [ %7539, %7616 ]
  store i32 %7630, i32* %7620, align 4
  store i32 %7631, i32* %7621, align 4
  %7632 = add i32 %7589, 1
  br label %7633

; <label>:7633                                    ; preds = %7629, %7588
  %7634 = phi i32 [ %7589, %7588 ], [ %7632, %7629 ]
  %7635 = add nuw i32 %7590, 1
  %7636 = icmp eq i32 %7635, %7585
  br i1 %7636, label %7637, label %7588

; <label>:7637                                    ; preds = %7633
  br label %7638

; <label>:7638                                    ; preds = %7637, %7582
  %7639 = phi i32 [ %7583, %7582 ], [ %7634, %7637 ]
  %7640 = icmp eq i32 %7639, 1
  %7641 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 0
  %7642 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 0
  br i1 %7640, label %7643, label %7646

; <label>:7643                                    ; preds = %7638
  %7644 = load float, float* %7641, align 4
  %7645 = load float, float* %7642, align 4
  br label %7673

; <label>:7646                                    ; preds = %7638
  %7647 = load float, float* %7641, align 4
  %7648 = load float, float* %7642, align 4
  %7649 = fdiv fast float 1.000000e+00, %7648
  %7650 = fsub fast float %7647, %7649
  %7651 = icmp ugt i32 %7639, 1
  br i1 %7651, label %7652, label %7668

; <label>:7652                                    ; preds = %7646
  br label %7653

; <label>:7653                                    ; preds = %7653, %7652
  %7654 = phi float [ %7663, %7653 ], [ %7650, %7652 ]
  %7655 = phi float [ %7664, %7653 ], [ %7647, %7652 ]
  %7656 = phi i32 [ %7665, %7653 ], [ 1, %7652 ]
  %7657 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 %7656
  %7658 = load float, float* %7657, align 4
  %7659 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 %7656
  %7660 = load float, float* %7659, align 4
  %7661 = fdiv fast float 1.000000e+00, %7660
  %7662 = fsub fast float %7658, %7661
  %7663 = call float @dx.op.binary.f32(i32 36, float %7654, float %7662)  ; FMin(a,b)
  %7664 = call float @dx.op.binary.f32(i32 35, float %7655, float %7658)  ; FMax(a,b)
  %7665 = add nuw i32 %7656, 1
  %7666 = icmp eq i32 %7665, %7639
  br i1 %7666, label %7667, label %7653

; <label>:7667                                    ; preds = %7653
  br label %7668

; <label>:7668                                    ; preds = %7667, %7646
  %7669 = phi float [ %7650, %7646 ], [ %7663, %7667 ]
  %7670 = phi float [ %7647, %7646 ], [ %7664, %7667 ]
  %7671 = fsub fast float %7670, %7669
  %7672 = fdiv fast float 1.000000e+00, %7671
  br label %7673

; <label>:7673                                    ; preds = %7668, %7643
  %7674 = phi float [ %7644, %7643 ], [ %7670, %7668 ]
  %7675 = phi float [ %7645, %7643 ], [ %7672, %7668 ]
  %7676 = fadd fast float %7377, %7674
  %7677 = fmul fast float %7676, %7675
  %7678 = call float @dx.op.unary.f32(i32 7, float %7677)  ; Saturate(value)
  %7679 = fmul fast float %7678, 2.000000e+00
  %7680 = fsub fast float 1.000000e+00, %7679
  %7681 = fmul fast float %7515, %7515
  %7682 = fsub fast float %7516, %7681
  %7683 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %7682)  ; FMax(a,b)
  %7684 = fdiv fast float 1.000000e+00, %7683
  %7685 = fmul fast float %7516, %7515
  %7686 = fsub fast float %7517, %7685
  %7687 = fsub fast float %7680, %7515
  %7688 = fmul fast float %7680, %7680
  %7689 = fsub fast float %7688, %7516
  %7690 = fmul fast float %7684, %7686
  %7691 = fmul fast float %7690, %7687
  %7692 = fsub fast float %7689, %7691
  %7693 = fmul fast float %7516, %7516
  %7694 = fsub fast float %7518, %7693
  %7695 = fmul fast float %7686, %7686
  %7696 = fmul fast float %7695, %7684
  %7697 = fsub fast float %7694, %7696
  %7698 = fdiv fast float %7692, %7697
  %7699 = fmul fast float %7698, %7686
  %7700 = fsub fast float %7687, %7699
  %7701 = fmul fast float %7700, %7684
  %7702 = fmul fast float %7701, %7515
  %7703 = fsub fast float 1.000000e+00, %7702
  %7704 = fmul fast float %7698, %7516
  %7705 = fsub fast float %7703, %7704
  %7706 = fmul fast float %7701, %7701
  %7707 = fmul fast float %7698, 4.000000e+00
  %7708 = fmul fast float %7707, %7705
  %7709 = fsub fast float %7706, %7708
  %7710 = call float @dx.op.unary.f32(i32 24, float %7709)  ; Sqrt(value)
  %7711 = fcmp fast oge float %7701, 0.000000e+00
  %7712 = fsub fast float -0.000000e+00, %7710
  %7713 = select i1 %7711, float %7712, float %7710
  %7714 = fsub fast float %7713, %7701
  %7715 = fdiv fast float %7714, %7698
  %7716 = fdiv fast float %7705, %7714
  %7717 = fmul fast float %7715, 5.000000e-01
  %7718 = fmul fast float %7716, 2.000000e+00
  %7719 = select i1 %7711, float %7717, float %7718
  %7720 = select i1 %7711, float %7718, float %7717
  %7721 = call float @dx.op.binary.f32(i32 35, float %7719, float %7720)  ; FMax(a,b)
  %7722 = call float @dx.op.binary.f32(i32 36, float %7719, float %7720)  ; FMin(a,b)
  %7723 = fcmp fast ogt float %7680, %7721
  %7724 = fsub fast float %7680, %7722
  %7725 = fsub fast float %7680, %7721
  %7726 = fsub fast float %7721, %7722
  %7727 = select i1 %7723, float %7725, float %7726
  %7728 = fmul float %7724, %7727
  %7729 = select i1 %7723, float %7722, float %7680
  %7730 = fcmp fast ogt float %7680, %7722
  %7731 = fmul fast float %7729, %7721
  %7732 = fadd fast float %7729, %7721
  %7733 = fmul fast float %7732, %7515
  %7734 = fadd fast float %7731, %7516
  %7735 = fsub fast float %7734, %7733
  %7736 = fdiv fast float %7735, %7728
  %7737 = select i1 %7730, float %7736, float 0.000000e+00
  %7738 = fsub fast float 1.000000e+00, %7737
  %7739 = select i1 %7723, float %7738, float %7737
  %7740 = call float @dx.op.unary.f32(i32 7, float %7739)  ; Saturate(value)
  %7741 = extractvalue %dx.types.CBufRet.f32 %7500, 3
  %7742 = fmul fast float %7741, %7740
  %7743 = fsub fast float 1.000000e+00, %7742
  br label %7744

; <label>:7744                                    ; preds = %7673, %7385, %7350, %7346, %7312
  %7745 = phi float [ 1.000000e+00, %7312 ], [ %7743, %7673 ], [ 1.000000e+00, %7350 ], [ 1.000000e+00, %7385 ], [ 1.000000e+00, %7346 ]
  %7746 = fcmp fast ogt float %7342, 0.000000e+00
  br i1 %7746, label %7747, label %7909, !dx.controlflow.hints !113

; <label>:7747                                    ; preds = %7744
  %7748 = fadd fast float %7255, %7229
  %7749 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7750 = extractvalue %dx.types.CBufRet.f32 %7749, 2
  %7751 = extractvalue %dx.types.CBufRet.f32 %7749, 3
  %7752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7753 = extractvalue %dx.types.CBufRet.f32 %7752, 2
  %7754 = call float @dx.op.binary.f32(i32 35, float %7748, float 0.000000e+00)  ; FMax(a,b)
  %7755 = fadd fast float %7754, 0x3F10000000000000
  %7756 = fcmp fast oeq float %7753, 0.000000e+00
  br i1 %7756, label %7757, label %7824

; <label>:7757                                    ; preds = %7747
  %7758 = extractvalue %dx.types.CBufRet.f32 %7749, 1
  %7759 = extractvalue %dx.types.CBufRet.f32 %7749, 0
  %7760 = fmul fast float %7759, %7244
  %7761 = fmul fast float %7758, %7245
  %7762 = fadd fast float %7760, 5.000000e-01
  %7763 = call float @dx.op.unary.f32(i32 27, float %7762)  ; Round_ni(value)
  %7764 = fadd fast float %7761, 5.000000e-01
  %7765 = call float @dx.op.unary.f32(i32 27, float %7764)  ; Round_ni(value)
  %7766 = fsub fast float %7762, %7763
  %7767 = fsub fast float %7764, %7765
  %7768 = fadd fast float %7763, -5.000000e-01
  %7769 = fadd fast float %7765, -5.000000e-01
  %7770 = fmul fast float %7766, 2.000000e+00
  %7771 = fsub fast float 3.000000e+00, %7770
  %7772 = fadd fast float %7770, 1.000000e+00
  %7773 = fsub fast float 2.000000e+00, %7766
  %7774 = bitcast float %7771 to i32
  %7775 = sub nsw i32 2129859010, %7774
  %7776 = bitcast i32 %7775 to float
  %7777 = fmul fast float %7776, %7773
  %7778 = fadd fast float %7777, -1.000000e+00
  %7779 = bitcast float %7772 to i32
  %7780 = sub nsw i32 2129859010, %7779
  %7781 = bitcast i32 %7780 to float
  %7782 = fmul fast float %7781, %7766
  %7783 = fadd fast float %7782, 1.000000e+00
  %7784 = fmul fast float %7767, 2.000000e+00
  %7785 = fsub fast float 3.000000e+00, %7784
  %7786 = fadd fast float %7784, 1.000000e+00
  %7787 = fsub fast float 2.000000e+00, %7767
  %7788 = bitcast float %7785 to i32
  %7789 = sub nsw i32 2129859010, %7788
  %7790 = bitcast i32 %7789 to float
  %7791 = fmul fast float %7790, %7787
  %7792 = fadd fast float %7791, -1.000000e+00
  %7793 = bitcast float %7786 to i32
  %7794 = sub nsw i32 2129859010, %7793
  %7795 = bitcast i32 %7794 to float
  %7796 = fmul fast float %7795, %7767
  %7797 = fadd fast float %7796, 1.000000e+00
  %7798 = fadd fast float %7778, %7768
  %7799 = fmul fast float %7798, %7750
  %7800 = fadd fast float %7792, %7769
  %7801 = fmul fast float %7800, %7751
  %7802 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %48, float %7799, float %7801, float undef, float undef, i32 0, i32 0, i32 undef, float %7755)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7803 = extractvalue %dx.types.ResRet.f32 %7802, 0
  %7804 = fmul fast float %7803, %7771
  %7805 = fadd fast float %7783, %7768
  %7806 = fmul fast float %7805, %7750
  %7807 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %48, float %7806, float %7801, float undef, float undef, i32 0, i32 0, i32 undef, float %7755)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7808 = extractvalue %dx.types.ResRet.f32 %7807, 0
  %7809 = fmul fast float %7808, %7772
  %7810 = fadd fast float %7797, %7769
  %7811 = fmul fast float %7810, %7751
  %7812 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %48, float %7799, float %7811, float undef, float undef, i32 0, i32 0, i32 undef, float %7755)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7813 = extractvalue %dx.types.ResRet.f32 %7812, 0
  %7814 = fmul fast float %7813, %7771
  %7815 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %48, float %7806, float %7811, float undef, float undef, i32 0, i32 0, i32 undef, float %7755)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7816 = extractvalue %dx.types.ResRet.f32 %7815, 0
  %7817 = fmul fast float %7816, %7772
  %7818 = fadd fast float %7817, %7814
  %7819 = fmul fast float %7818, %7786
  %7820 = fadd fast float %7809, %7804
  %7821 = fmul fast float %7820, %7785
  %7822 = fadd fast float %7821, %7819
  %7823 = fmul fast float %7822, 6.250000e-02
  br label %7909

; <label>:7824                                    ; preds = %7747
  %7825 = fmul fast float %239, 0x401921FB60000000
  %7826 = call float @dx.op.unary.f32(i32 13, float %7825)  ; Sin(value)
  %7827 = call float @dx.op.unary.f32(i32 12, float %7825)  ; Cos(value)
  %7828 = fsub fast float -0.000000e+00, %7826
  br label %7829

; <label>:7829                                    ; preds = %7878, %7824
  %7830 = phi float [ 0.000000e+00, %7824 ], [ %7873, %7878 ]
  %7831 = phi float [ 0.000000e+00, %7824 ], [ %7875, %7878 ]
  %7832 = phi i32 [ 0, %7824 ], [ %7879, %7878 ]
  %7833 = mul i32 %7832, 2
  %7834 = add i32 0, %7833
  %7835 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7834
  %7836 = load float, float* %7835, align 4
  %7837 = mul i32 %7832, 2
  %7838 = add i32 1, %7837
  %7839 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7838
  %7840 = load float, float* %7839, align 4
  %7841 = fmul fast float %7836, %7827
  %7842 = call float @dx.op.tertiary.f32(i32 46, float %7840, float %7828, float %7841)  ; FMad(a,b,c)
  %7843 = fmul fast float %7836, %7826
  %7844 = call float @dx.op.tertiary.f32(i32 46, float %7840, float %7827, float %7843)  ; FMad(a,b,c)
  %7845 = fmul fast float %7842, %7753
  %7846 = fmul fast float %7844, %7753
  %7847 = fadd fast float %7845, %7244
  %7848 = fadd fast float %7846, %7245
  %7849 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %47, float %7847, float %7848, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7850 = extractvalue %dx.types.ResRet.f32 %7849, 0
  %7851 = extractvalue %dx.types.ResRet.f32 %7849, 1
  %7852 = extractvalue %dx.types.ResRet.f32 %7849, 2
  %7853 = extractvalue %dx.types.ResRet.f32 %7849, 3
  %7854 = getelementptr inbounds [4 x float], [4 x float]* %97, i32 0, i32 0
  store float %7850, float* %7854, align 4
  %7855 = getelementptr inbounds [4 x float], [4 x float]* %97, i32 0, i32 1
  store float %7851, float* %7855, align 4
  %7856 = getelementptr inbounds [4 x float], [4 x float]* %97, i32 0, i32 2
  store float %7852, float* %7856, align 4
  %7857 = getelementptr inbounds [4 x float], [4 x float]* %97, i32 0, i32 3
  store float %7853, float* %7857, align 4
  %7858 = fsub fast float %7850, %7755
  %7859 = fcmp fast olt float %7858, 0.000000e+00
  %7860 = select i1 %7859, float 0.000000e+00, float 1.000000e+00
  %7861 = fadd fast float %7860, %7830
  %7862 = fmul fast float %7860, %7858
  %7863 = fadd fast float %7862, %7831
  br label %7864

; <label>:7864                                    ; preds = %7864, %7829
  %7865 = phi i32 [ 1, %7829 ], [ %7876, %7864 ]
  %7866 = phi float [ %7863, %7829 ], [ %7875, %7864 ]
  %7867 = phi float [ %7861, %7829 ], [ %7873, %7864 ]
  %7868 = getelementptr [4 x float], [4 x float]* %97, i32 0, i32 %7865
  %7869 = load float, float* %7868, align 4, !tbaa !88, !noalias !104
  %7870 = fsub fast float %7869, %7755
  %7871 = fcmp fast olt float %7870, 0.000000e+00
  %7872 = select i1 %7871, float 0.000000e+00, float 1.000000e+00
  %7873 = fadd fast float %7872, %7867
  %7874 = fmul fast float %7872, %7870
  %7875 = fadd fast float %7874, %7866
  %7876 = add nuw nsw i32 %7865, 1
  %7877 = icmp eq i32 %7876, 4
  br i1 %7877, label %7878, label %7864, !llvm.loop !114

; <label>:7878                                    ; preds = %7864
  %7879 = add nuw nsw i32 %7832, 1
  %7880 = icmp eq i32 %7879, 8
  br i1 %7880, label %7881, label %7829, !llvm.loop !115

; <label>:7881                                    ; preds = %7878
  %7882 = fdiv fast float 1.000000e+00, %7873
  %7883 = fmul fast float %7882, %7875
  %7884 = fdiv fast float 1.000000e+00, %7755
  %7885 = fmul fast float %7883, %7884
  %7886 = call float @dx.op.unary.f32(i32 7, float %7885)  ; Saturate(value)
  %7887 = call float @dx.op.binary.f32(i32 35, float %7886, float 0.000000e+00)  ; FMax(a,b)
  %7888 = fmul fast float %7873, 3.125000e-02
  %7889 = call float @dx.op.unary.f32(i32 7, float %7888)  ; Saturate(value)
  %7890 = fmul fast float %7889, 2.000000e+00
  %7891 = fadd fast float %7890, -1.000000e+00
  %7892 = fcmp fast ogt float %7891, 0.000000e+00
  %7893 = fcmp fast olt float %7891, 0.000000e+00
  %7894 = zext i1 %7892 to i32
  %7895 = zext i1 %7893 to i32
  %7896 = sub nsw i32 %7894, %7895
  %7897 = sitofp i32 %7896 to float
  %7898 = fmul fast float %7897, %7891
  %7899 = fsub fast float 1.000000e+00, %7898
  %7900 = fmul fast float %7899, %7899
  %7901 = fmul fast float %7900, %7899
  %7902 = fsub fast float %7899, %7901
  %7903 = fmul fast float %7902, %7887
  %7904 = fsub fast float 1.000000e+00, %7901
  %7905 = fsub fast float %7904, %7903
  %7906 = fmul fast float %7897, 5.000000e-01
  %7907 = fmul fast float %7906, %7905
  %7908 = fsub fast float 5.000000e-01, %7907
  br label %7909

; <label>:7909                                    ; preds = %7881, %7757, %7744
  %7910 = phi float [ 1.000000e+00, %7744 ], [ %7823, %7757 ], [ %7908, %7881 ]
  %7911 = fcmp fast ogt float %7340, 0.000000e+00
  br i1 %7911, label %7912, label %8076, !dx.controlflow.hints !116

; <label>:7912                                    ; preds = %7909
  %7913 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7914 = extractvalue %dx.types.CBufRet.f32 %7913, 1
  %7915 = fadd fast float %7914, %7229
  %7916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7917 = extractvalue %dx.types.CBufRet.f32 %7916, 2
  %7918 = extractvalue %dx.types.CBufRet.f32 %7916, 3
  %7919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7920 = extractvalue %dx.types.CBufRet.f32 %7919, 1
  %7921 = call float @dx.op.binary.f32(i32 35, float %7915, float 0.000000e+00)  ; FMax(a,b)
  %7922 = fadd fast float %7921, 0x3F10000000000000
  %7923 = fcmp fast oeq float %7920, 0.000000e+00
  br i1 %7923, label %7924, label %7991

; <label>:7924                                    ; preds = %7912
  %7925 = extractvalue %dx.types.CBufRet.f32 %7916, 1
  %7926 = extractvalue %dx.types.CBufRet.f32 %7916, 0
  %7927 = fmul fast float %7926, %7236
  %7928 = fmul fast float %7925, %7237
  %7929 = fadd fast float %7927, 5.000000e-01
  %7930 = call float @dx.op.unary.f32(i32 27, float %7929)  ; Round_ni(value)
  %7931 = fadd fast float %7928, 5.000000e-01
  %7932 = call float @dx.op.unary.f32(i32 27, float %7931)  ; Round_ni(value)
  %7933 = fsub fast float %7929, %7930
  %7934 = fsub fast float %7931, %7932
  %7935 = fadd fast float %7930, -5.000000e-01
  %7936 = fadd fast float %7932, -5.000000e-01
  %7937 = fmul fast float %7933, 2.000000e+00
  %7938 = fsub fast float 3.000000e+00, %7937
  %7939 = fadd fast float %7937, 1.000000e+00
  %7940 = fsub fast float 2.000000e+00, %7933
  %7941 = bitcast float %7938 to i32
  %7942 = sub nsw i32 2129859010, %7941
  %7943 = bitcast i32 %7942 to float
  %7944 = fmul fast float %7943, %7940
  %7945 = fadd fast float %7944, -1.000000e+00
  %7946 = bitcast float %7939 to i32
  %7947 = sub nsw i32 2129859010, %7946
  %7948 = bitcast i32 %7947 to float
  %7949 = fmul fast float %7948, %7933
  %7950 = fadd fast float %7949, 1.000000e+00
  %7951 = fmul fast float %7934, 2.000000e+00
  %7952 = fsub fast float 3.000000e+00, %7951
  %7953 = fadd fast float %7951, 1.000000e+00
  %7954 = fsub fast float 2.000000e+00, %7934
  %7955 = bitcast float %7952 to i32
  %7956 = sub nsw i32 2129859010, %7955
  %7957 = bitcast i32 %7956 to float
  %7958 = fmul fast float %7957, %7954
  %7959 = fadd fast float %7958, -1.000000e+00
  %7960 = bitcast float %7953 to i32
  %7961 = sub nsw i32 2129859010, %7960
  %7962 = bitcast i32 %7961 to float
  %7963 = fmul fast float %7962, %7934
  %7964 = fadd fast float %7963, 1.000000e+00
  %7965 = fadd fast float %7945, %7935
  %7966 = fmul fast float %7965, %7917
  %7967 = fadd fast float %7959, %7936
  %7968 = fmul fast float %7967, %7918
  %7969 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %48, float %7966, float %7968, float undef, float undef, i32 0, i32 0, i32 undef, float %7922)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7970 = extractvalue %dx.types.ResRet.f32 %7969, 0
  %7971 = fmul fast float %7970, %7938
  %7972 = fadd fast float %7950, %7935
  %7973 = fmul fast float %7972, %7917
  %7974 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %48, float %7973, float %7968, float undef, float undef, i32 0, i32 0, i32 undef, float %7922)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7975 = extractvalue %dx.types.ResRet.f32 %7974, 0
  %7976 = fmul fast float %7975, %7939
  %7977 = fadd fast float %7964, %7936
  %7978 = fmul fast float %7977, %7918
  %7979 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %48, float %7966, float %7978, float undef, float undef, i32 0, i32 0, i32 undef, float %7922)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7980 = extractvalue %dx.types.ResRet.f32 %7979, 0
  %7981 = fmul fast float %7980, %7938
  %7982 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %48, float %7973, float %7978, float undef, float undef, i32 0, i32 0, i32 undef, float %7922)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7983 = extractvalue %dx.types.ResRet.f32 %7982, 0
  %7984 = fmul fast float %7983, %7939
  %7985 = fadd fast float %7984, %7981
  %7986 = fmul fast float %7985, %7953
  %7987 = fadd fast float %7976, %7971
  %7988 = fmul fast float %7987, %7952
  %7989 = fadd fast float %7988, %7986
  %7990 = fmul fast float %7989, 6.250000e-02
  br label %8076

; <label>:7991                                    ; preds = %7912
  %7992 = fmul fast float %239, 0x401921FB60000000
  %7993 = call float @dx.op.unary.f32(i32 13, float %7992)  ; Sin(value)
  %7994 = call float @dx.op.unary.f32(i32 12, float %7992)  ; Cos(value)
  %7995 = fsub fast float -0.000000e+00, %7993
  br label %7996

; <label>:7996                                    ; preds = %8045, %7991
  %7997 = phi float [ 0.000000e+00, %7991 ], [ %8040, %8045 ]
  %7998 = phi float [ 0.000000e+00, %7991 ], [ %8042, %8045 ]
  %7999 = phi i32 [ 0, %7991 ], [ %8046, %8045 ]
  %8000 = mul i32 %7999, 2
  %8001 = add i32 0, %8000
  %8002 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8001
  %8003 = load float, float* %8002, align 4
  %8004 = mul i32 %7999, 2
  %8005 = add i32 1, %8004
  %8006 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8005
  %8007 = load float, float* %8006, align 4
  %8008 = fmul fast float %8003, %7994
  %8009 = call float @dx.op.tertiary.f32(i32 46, float %8007, float %7995, float %8008)  ; FMad(a,b,c)
  %8010 = fmul fast float %8003, %7993
  %8011 = call float @dx.op.tertiary.f32(i32 46, float %8007, float %7994, float %8010)  ; FMad(a,b,c)
  %8012 = fmul fast float %8009, %7920
  %8013 = fmul fast float %8011, %7920
  %8014 = fadd fast float %8012, %7236
  %8015 = fadd fast float %8013, %7237
  %8016 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %47, float %8014, float %8015, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8017 = extractvalue %dx.types.ResRet.f32 %8016, 0
  %8018 = extractvalue %dx.types.ResRet.f32 %8016, 1
  %8019 = extractvalue %dx.types.ResRet.f32 %8016, 2
  %8020 = extractvalue %dx.types.ResRet.f32 %8016, 3
  %8021 = getelementptr inbounds [4 x float], [4 x float]* %96, i32 0, i32 0
  store float %8017, float* %8021, align 4
  %8022 = getelementptr inbounds [4 x float], [4 x float]* %96, i32 0, i32 1
  store float %8018, float* %8022, align 4
  %8023 = getelementptr inbounds [4 x float], [4 x float]* %96, i32 0, i32 2
  store float %8019, float* %8023, align 4
  %8024 = getelementptr inbounds [4 x float], [4 x float]* %96, i32 0, i32 3
  store float %8020, float* %8024, align 4
  %8025 = fsub fast float %8017, %7922
  %8026 = fcmp fast olt float %8025, 0.000000e+00
  %8027 = select i1 %8026, float 0.000000e+00, float 1.000000e+00
  %8028 = fadd fast float %8027, %7997
  %8029 = fmul fast float %8027, %8025
  %8030 = fadd fast float %8029, %7998
  br label %8031

; <label>:8031                                    ; preds = %8031, %7996
  %8032 = phi i32 [ 1, %7996 ], [ %8043, %8031 ]
  %8033 = phi float [ %8030, %7996 ], [ %8042, %8031 ]
  %8034 = phi float [ %8028, %7996 ], [ %8040, %8031 ]
  %8035 = getelementptr [4 x float], [4 x float]* %96, i32 0, i32 %8032
  %8036 = load float, float* %8035, align 4, !tbaa !88, !noalias !104
  %8037 = fsub fast float %8036, %7922
  %8038 = fcmp fast olt float %8037, 0.000000e+00
  %8039 = select i1 %8038, float 0.000000e+00, float 1.000000e+00
  %8040 = fadd fast float %8039, %8034
  %8041 = fmul fast float %8039, %8037
  %8042 = fadd fast float %8041, %8033
  %8043 = add nuw nsw i32 %8032, 1
  %8044 = icmp eq i32 %8043, 4
  br i1 %8044, label %8045, label %8031, !llvm.loop !114

; <label>:8045                                    ; preds = %8031
  %8046 = add nuw nsw i32 %7999, 1
  %8047 = icmp eq i32 %8046, 8
  br i1 %8047, label %8048, label %7996, !llvm.loop !115

; <label>:8048                                    ; preds = %8045
  %8049 = fdiv fast float 1.000000e+00, %8040
  %8050 = fmul fast float %8049, %8042
  %8051 = fdiv fast float 1.000000e+00, %7922
  %8052 = fmul fast float %8050, %8051
  %8053 = call float @dx.op.unary.f32(i32 7, float %8052)  ; Saturate(value)
  %8054 = call float @dx.op.binary.f32(i32 35, float %8053, float 0.000000e+00)  ; FMax(a,b)
  %8055 = fmul fast float %8040, 3.125000e-02
  %8056 = call float @dx.op.unary.f32(i32 7, float %8055)  ; Saturate(value)
  %8057 = fmul fast float %8056, 2.000000e+00
  %8058 = fadd fast float %8057, -1.000000e+00
  %8059 = fcmp fast ogt float %8058, 0.000000e+00
  %8060 = fcmp fast olt float %8058, 0.000000e+00
  %8061 = zext i1 %8059 to i32
  %8062 = zext i1 %8060 to i32
  %8063 = sub nsw i32 %8061, %8062
  %8064 = sitofp i32 %8063 to float
  %8065 = fmul fast float %8064, %8058
  %8066 = fsub fast float 1.000000e+00, %8065
  %8067 = fmul fast float %8066, %8066
  %8068 = fmul fast float %8067, %8066
  %8069 = fsub fast float %8066, %8068
  %8070 = fmul fast float %8069, %8054
  %8071 = fsub fast float 1.000000e+00, %8068
  %8072 = fsub fast float %8071, %8070
  %8073 = fmul fast float %8064, 5.000000e-01
  %8074 = fmul fast float %8073, %8072
  %8075 = fsub fast float 5.000000e-01, %8074
  br label %8076

; <label>:8076                                    ; preds = %8048, %7924, %7909
  %8077 = phi float [ 1.000000e+00, %7909 ], [ %7990, %7924 ], [ %8075, %8048 ]
  %8078 = fcmp fast ogt float %7339, 0.000000e+00
  br i1 %8078, label %8079, label %8243, !dx.controlflow.hints !117

; <label>:8079                                    ; preds = %8076
  %8080 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %8081 = extractvalue %dx.types.CBufRet.f32 %8080, 0
  %8082 = fadd fast float %8081, %7229
  %8083 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %8084 = extractvalue %dx.types.CBufRet.f32 %8083, 2
  %8085 = extractvalue %dx.types.CBufRet.f32 %8083, 3
  %8086 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %8087 = extractvalue %dx.types.CBufRet.f32 %8086, 0
  %8088 = call float @dx.op.binary.f32(i32 35, float %8082, float 0.000000e+00)  ; FMax(a,b)
  %8089 = fadd fast float %8088, 0x3F10000000000000
  %8090 = fcmp fast oeq float %8087, 0.000000e+00
  br i1 %8090, label %8091, label %8158

; <label>:8091                                    ; preds = %8079
  %8092 = extractvalue %dx.types.CBufRet.f32 %8083, 1
  %8093 = extractvalue %dx.types.CBufRet.f32 %8083, 0
  %8094 = fmul fast float %8093, %7221
  %8095 = fmul fast float %8092, %7225
  %8096 = fadd fast float %8094, 5.000000e-01
  %8097 = call float @dx.op.unary.f32(i32 27, float %8096)  ; Round_ni(value)
  %8098 = fadd fast float %8095, 5.000000e-01
  %8099 = call float @dx.op.unary.f32(i32 27, float %8098)  ; Round_ni(value)
  %8100 = fsub fast float %8096, %8097
  %8101 = fsub fast float %8098, %8099
  %8102 = fadd fast float %8097, -5.000000e-01
  %8103 = fadd fast float %8099, -5.000000e-01
  %8104 = fmul fast float %8100, 2.000000e+00
  %8105 = fsub fast float 3.000000e+00, %8104
  %8106 = fadd fast float %8104, 1.000000e+00
  %8107 = fsub fast float 2.000000e+00, %8100
  %8108 = bitcast float %8105 to i32
  %8109 = sub nsw i32 2129859010, %8108
  %8110 = bitcast i32 %8109 to float
  %8111 = fmul fast float %8110, %8107
  %8112 = fadd fast float %8111, -1.000000e+00
  %8113 = bitcast float %8106 to i32
  %8114 = sub nsw i32 2129859010, %8113
  %8115 = bitcast i32 %8114 to float
  %8116 = fmul fast float %8115, %8100
  %8117 = fadd fast float %8116, 1.000000e+00
  %8118 = fmul fast float %8101, 2.000000e+00
  %8119 = fsub fast float 3.000000e+00, %8118
  %8120 = fadd fast float %8118, 1.000000e+00
  %8121 = fsub fast float 2.000000e+00, %8101
  %8122 = bitcast float %8119 to i32
  %8123 = sub nsw i32 2129859010, %8122
  %8124 = bitcast i32 %8123 to float
  %8125 = fmul fast float %8124, %8121
  %8126 = fadd fast float %8125, -1.000000e+00
  %8127 = bitcast float %8120 to i32
  %8128 = sub nsw i32 2129859010, %8127
  %8129 = bitcast i32 %8128 to float
  %8130 = fmul fast float %8129, %8101
  %8131 = fadd fast float %8130, 1.000000e+00
  %8132 = fadd fast float %8112, %8102
  %8133 = fmul fast float %8132, %8084
  %8134 = fadd fast float %8126, %8103
  %8135 = fmul fast float %8134, %8085
  %8136 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %48, float %8133, float %8135, float undef, float undef, i32 0, i32 0, i32 undef, float %8089)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %8137 = extractvalue %dx.types.ResRet.f32 %8136, 0
  %8138 = fmul fast float %8137, %8105
  %8139 = fadd fast float %8117, %8102
  %8140 = fmul fast float %8139, %8084
  %8141 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %48, float %8140, float %8135, float undef, float undef, i32 0, i32 0, i32 undef, float %8089)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %8142 = extractvalue %dx.types.ResRet.f32 %8141, 0
  %8143 = fmul fast float %8142, %8106
  %8144 = fadd fast float %8131, %8103
  %8145 = fmul fast float %8144, %8085
  %8146 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %48, float %8133, float %8145, float undef, float undef, i32 0, i32 0, i32 undef, float %8089)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %8147 = extractvalue %dx.types.ResRet.f32 %8146, 0
  %8148 = fmul fast float %8147, %8105
  %8149 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %48, float %8140, float %8145, float undef, float undef, i32 0, i32 0, i32 undef, float %8089)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %8150 = extractvalue %dx.types.ResRet.f32 %8149, 0
  %8151 = fmul fast float %8150, %8106
  %8152 = fadd fast float %8151, %8148
  %8153 = fmul fast float %8152, %8120
  %8154 = fadd fast float %8143, %8138
  %8155 = fmul fast float %8154, %8119
  %8156 = fadd fast float %8155, %8153
  %8157 = fmul fast float %8156, 6.250000e-02
  br label %8243

; <label>:8158                                    ; preds = %8079
  %8159 = fmul fast float %239, 0x401921FB60000000
  %8160 = call float @dx.op.unary.f32(i32 13, float %8159)  ; Sin(value)
  %8161 = call float @dx.op.unary.f32(i32 12, float %8159)  ; Cos(value)
  %8162 = fsub fast float -0.000000e+00, %8160
  br label %8163

; <label>:8163                                    ; preds = %8212, %8158
  %8164 = phi float [ 0.000000e+00, %8158 ], [ %8207, %8212 ]
  %8165 = phi float [ 0.000000e+00, %8158 ], [ %8209, %8212 ]
  %8166 = phi i32 [ 0, %8158 ], [ %8213, %8212 ]
  %8167 = mul i32 %8166, 2
  %8168 = add i32 0, %8167
  %8169 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8168
  %8170 = load float, float* %8169, align 4
  %8171 = mul i32 %8166, 2
  %8172 = add i32 1, %8171
  %8173 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8172
  %8174 = load float, float* %8173, align 4
  %8175 = fmul fast float %8170, %8161
  %8176 = call float @dx.op.tertiary.f32(i32 46, float %8174, float %8162, float %8175)  ; FMad(a,b,c)
  %8177 = fmul fast float %8170, %8160
  %8178 = call float @dx.op.tertiary.f32(i32 46, float %8174, float %8161, float %8177)  ; FMad(a,b,c)
  %8179 = fmul fast float %8176, %8087
  %8180 = fmul fast float %8178, %8087
  %8181 = fadd fast float %8179, %7221
  %8182 = fadd fast float %8180, %7225
  %8183 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %47, float %8181, float %8182, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8184 = extractvalue %dx.types.ResRet.f32 %8183, 0
  %8185 = extractvalue %dx.types.ResRet.f32 %8183, 1
  %8186 = extractvalue %dx.types.ResRet.f32 %8183, 2
  %8187 = extractvalue %dx.types.ResRet.f32 %8183, 3
  %8188 = getelementptr inbounds [4 x float], [4 x float]* %95, i32 0, i32 0
  store float %8184, float* %8188, align 4
  %8189 = getelementptr inbounds [4 x float], [4 x float]* %95, i32 0, i32 1
  store float %8185, float* %8189, align 4
  %8190 = getelementptr inbounds [4 x float], [4 x float]* %95, i32 0, i32 2
  store float %8186, float* %8190, align 4
  %8191 = getelementptr inbounds [4 x float], [4 x float]* %95, i32 0, i32 3
  store float %8187, float* %8191, align 4
  %8192 = fsub fast float %8184, %8089
  %8193 = fcmp fast olt float %8192, 0.000000e+00
  %8194 = select i1 %8193, float 0.000000e+00, float 1.000000e+00
  %8195 = fadd fast float %8194, %8164
  %8196 = fmul fast float %8194, %8192
  %8197 = fadd fast float %8196, %8165
  br label %8198

; <label>:8198                                    ; preds = %8198, %8163
  %8199 = phi i32 [ 1, %8163 ], [ %8210, %8198 ]
  %8200 = phi float [ %8197, %8163 ], [ %8209, %8198 ]
  %8201 = phi float [ %8195, %8163 ], [ %8207, %8198 ]
  %8202 = getelementptr [4 x float], [4 x float]* %95, i32 0, i32 %8199
  %8203 = load float, float* %8202, align 4, !tbaa !88, !noalias !104
  %8204 = fsub fast float %8203, %8089
  %8205 = fcmp fast olt float %8204, 0.000000e+00
  %8206 = select i1 %8205, float 0.000000e+00, float 1.000000e+00
  %8207 = fadd fast float %8206, %8201
  %8208 = fmul fast float %8206, %8204
  %8209 = fadd fast float %8208, %8200
  %8210 = add nuw nsw i32 %8199, 1
  %8211 = icmp eq i32 %8210, 4
  br i1 %8211, label %8212, label %8198, !llvm.loop !114

; <label>:8212                                    ; preds = %8198
  %8213 = add nuw nsw i32 %8166, 1
  %8214 = icmp eq i32 %8213, 8
  br i1 %8214, label %8215, label %8163, !llvm.loop !115

; <label>:8215                                    ; preds = %8212
  %8216 = fdiv fast float 1.000000e+00, %8207
  %8217 = fmul fast float %8216, %8209
  %8218 = fdiv fast float 1.000000e+00, %8089
  %8219 = fmul fast float %8217, %8218
  %8220 = call float @dx.op.unary.f32(i32 7, float %8219)  ; Saturate(value)
  %8221 = call float @dx.op.binary.f32(i32 35, float %8220, float 0.000000e+00)  ; FMax(a,b)
  %8222 = fmul fast float %8207, 3.125000e-02
  %8223 = call float @dx.op.unary.f32(i32 7, float %8222)  ; Saturate(value)
  %8224 = fmul fast float %8223, 2.000000e+00
  %8225 = fadd fast float %8224, -1.000000e+00
  %8226 = fcmp fast ogt float %8225, 0.000000e+00
  %8227 = fcmp fast olt float %8225, 0.000000e+00
  %8228 = zext i1 %8226 to i32
  %8229 = zext i1 %8227 to i32
  %8230 = sub nsw i32 %8228, %8229
  %8231 = sitofp i32 %8230 to float
  %8232 = fmul fast float %8231, %8225
  %8233 = fsub fast float 1.000000e+00, %8232
  %8234 = fmul fast float %8233, %8233
  %8235 = fmul fast float %8234, %8233
  %8236 = fsub fast float %8233, %8235
  %8237 = fmul fast float %8236, %8221
  %8238 = fsub fast float 1.000000e+00, %8235
  %8239 = fsub fast float %8238, %8237
  %8240 = fmul fast float %8231, 5.000000e-01
  %8241 = fmul fast float %8240, %8239
  %8242 = fsub fast float 5.000000e-01, %8241
  br label %8243

; <label>:8243                                    ; preds = %8215, %8091, %8076
  %8244 = phi float [ 1.000000e+00, %8076 ], [ %8157, %8091 ], [ %8242, %8215 ]
  %8245 = fsub fast float %7910, %7745
  %8246 = fmul fast float %8245, %7283
  %8247 = fadd fast float %8246, %7745
  %8248 = fsub fast float %8077, %8247
  %8249 = fmul fast float %8248, %7313
  %8250 = fadd fast float %8249, %8247
  %8251 = fsub fast float %8244, %8250
  %8252 = fmul fast float %8251, %7339
  %8253 = fadd fast float %8252, %8250
  %8254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %8255 = extractvalue %dx.types.CBufRet.f32 %8254, 2
  %8256 = fcmp fast ogt float %8255, 0.000000e+00
  br i1 %8256, label %8257, label %8297, !dx.controlflow.hints !118

; <label>:8257                                    ; preds = %8243
  %8258 = fcmp fast ugt float %8255, 0.000000e+00
  br i1 %8258, label %8259, label %8294

; <label>:8259                                    ; preds = %8257
  %8260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %8261 = extractvalue %dx.types.CBufRet.f32 %8260, 0
  %8262 = extractvalue %dx.types.CBufRet.f32 %8260, 1
  %8263 = extractvalue %dx.types.CBufRet.f32 %8260, 2
  %8264 = extractvalue %dx.types.CBufRet.f32 %8260, 3
  %8265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %8266 = extractvalue %dx.types.CBufRet.f32 %8265, 0
  %8267 = extractvalue %dx.types.CBufRet.f32 %8265, 1
  %8268 = extractvalue %dx.types.CBufRet.f32 %8265, 2
  %8269 = extractvalue %dx.types.CBufRet.f32 %8265, 3
  %8270 = extractvalue %dx.types.CBufRet.f32 %8254, 0
  %8271 = extractvalue %dx.types.CBufRet.f32 %8254, 1
  %8272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %8273 = extractvalue %dx.types.CBufRet.f32 %8272, 0
  %8274 = extractvalue %dx.types.CBufRet.f32 %8272, 1
  %8275 = extractvalue %dx.types.CBufRet.f32 %8272, 2
  %8276 = fadd fast float %8273, %7198
  %8277 = fadd fast float %8274, %7199
  %8278 = fadd fast float %8275, %7200
  %8279 = fmul fast float %8276, %8261
  %8280 = call float @dx.op.tertiary.f32(i32 46, float %8262, float %8277, float %8279)  ; FMad(a,b,c)
  %8281 = call float @dx.op.tertiary.f32(i32 46, float %8263, float %8278, float %8280)  ; FMad(a,b,c)
  %8282 = fadd fast float %8281, %8264
  %8283 = fmul fast float %8276, %8266
  %8284 = call float @dx.op.tertiary.f32(i32 46, float %8267, float %8277, float %8283)  ; FMad(a,b,c)
  %8285 = call float @dx.op.tertiary.f32(i32 46, float %8268, float %8278, float %8284)  ; FMad(a,b,c)
  %8286 = fadd fast float %8285, %8269
  %8287 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %43, float %8282, float %8286, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %8288 = extractvalue %dx.types.ResRet.f32 %8287, 0
  %8289 = fmul fast float %8288, %8271
  %8290 = fadd fast float %8289, %8270
  %8291 = call float @dx.op.unary.f32(i32 7, float %8290)  ; Saturate(value)
  %8292 = fmul fast float %8291, %8255
  %8293 = fsub fast float 1.000000e+00, %8292
  br label %8294

; <label>:8294                                    ; preds = %8259, %8257
  %8295 = phi float [ %8293, %8259 ], [ 1.000000e+00, %8257 ]
  %8296 = fmul fast float %8295, %8253
  br label %8297

; <label>:8297                                    ; preds = %8294, %8243, %7178
  %8298 = phi float [ 1.000000e+00, %7178 ], [ %8296, %8294 ], [ %8253, %8243 ]
  %8299 = call float @dx.op.binary.f32(i32 36, float %8298, float %8298)  ; FMin(a,b)
  %8300 = call float @dx.op.binary.f32(i32 36, float %8298, float %8299)  ; FMin(a,b)
  %8301 = fcmp fast ogt float %8300, 0.000000e+00
  br i1 %8301, label %8302, label %8468, !dx.controlflow.hints !119

; <label>:8302                                    ; preds = %8297
  %8303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %8304 = extractvalue %dx.types.CBufRet.f32 %8303, 0
  %8305 = extractvalue %dx.types.CBufRet.f32 %8303, 1
  %8306 = extractvalue %dx.types.CBufRet.f32 %8303, 2
  %8307 = extractvalue %dx.types.CBufRet.f32 %8303, 3
  %8308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %8309 = extractvalue %dx.types.CBufRet.f32 %8308, 0
  %8310 = extractvalue %dx.types.CBufRet.f32 %8308, 1
  %8311 = extractvalue %dx.types.CBufRet.f32 %8308, 2
  %8312 = extractvalue %dx.types.CBufRet.f32 %8308, 3
  %8313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %8314 = extractvalue %dx.types.CBufRet.f32 %8313, 0
  %8315 = extractvalue %dx.types.CBufRet.f32 %8313, 1
  %8316 = extractvalue %dx.types.CBufRet.f32 %8313, 2
  %8317 = extractvalue %dx.types.CBufRet.f32 %8313, 3
  %8318 = fmul fast float %8304, %7198
  %8319 = call float @dx.op.tertiary.f32(i32 46, float %7199, float %8305, float %8318)  ; FMad(a,b,c)
  %8320 = call float @dx.op.tertiary.f32(i32 46, float %7200, float %8306, float %8319)  ; FMad(a,b,c)
  %8321 = fadd fast float %8320, %8307
  %8322 = fmul fast float %8309, %7198
  %8323 = call float @dx.op.tertiary.f32(i32 46, float %7199, float %8310, float %8322)  ; FMad(a,b,c)
  %8324 = call float @dx.op.tertiary.f32(i32 46, float %7200, float %8311, float %8323)  ; FMad(a,b,c)
  %8325 = fadd fast float %8324, %8312
  %8326 = fmul fast float %8314, %7198
  %8327 = call float @dx.op.tertiary.f32(i32 46, float %7199, float %8315, float %8326)  ; FMad(a,b,c)
  %8328 = call float @dx.op.tertiary.f32(i32 46, float %7200, float %8316, float %8327)  ; FMad(a,b,c)
  %8329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %8330 = extractvalue %dx.types.CBufRet.f32 %8329, 0
  %8331 = extractvalue %dx.types.CBufRet.f32 %8329, 1
  %8332 = extractvalue %dx.types.CBufRet.f32 %8329, 3
  %8333 = fmul fast float %8332, %8321
  %8334 = fmul fast float %8332, %8325
  %8335 = fadd fast float %8333, %8330
  %8336 = fadd fast float %8334, %8331
  %8337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %8338 = extractvalue %dx.types.CBufRet.f32 %8337, 0
  %8339 = extractvalue %dx.types.CBufRet.f32 %8337, 1
  %8340 = fsub fast float %8335, %8338
  %8341 = fsub fast float %8336, %8339
  %8342 = fcmp fast olt float %8340, 0.000000e+00
  %8343 = fcmp fast olt float %8341, 0.000000e+00
  %8344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %8345 = extractvalue %dx.types.CBufRet.f32 %8344, 0
  %8346 = extractvalue %dx.types.CBufRet.f32 %8344, 1
  %8347 = extractvalue %dx.types.CBufRet.f32 %8344, 2
  %8348 = extractvalue %dx.types.CBufRet.f32 %8344, 3
  %8349 = select i1 %8342, float %8345, float %8347
  %8350 = select i1 %8343, float %8346, float %8348
  %8351 = fmul fast float %8349, %8340
  %8352 = fmul fast float %8350, %8341
  %8353 = call float @dx.op.unary.f32(i32 6, float %8351)  ; FAbs(value)
  %8354 = call float @dx.op.unary.f32(i32 6, float %8352)  ; FAbs(value)
  %8355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %8356 = extractvalue %dx.types.CBufRet.f32 %8355, 0
  %8357 = call float @dx.op.binary.f32(i32 35, float %8353, float %8354)  ; FMax(a,b)
  %8358 = fsub fast float %8356, %8357
  %8359 = call float @dx.op.unary.f32(i32 7, float %8358)  ; Saturate(value)
  %8360 = fcmp fast ogt float %8359, 0.000000e+00
  br i1 %8360, label %8361, label %8402, !dx.controlflow.hints !120

; <label>:8361                                    ; preds = %8302
  %8362 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %46, float %8335, float %8336, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8363 = extractvalue %dx.types.ResRet.f32 %8362, 1
  %8364 = fcmp fast ogt float %8363, 0.000000e+00
  br i1 %8364, label %8365, label %8397

; <label>:8365                                    ; preds = %8361
  %8366 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %46, float %8335, float %8336, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8367 = extractvalue %dx.types.ResRet.f32 %8366, 0
  %8368 = extractvalue %dx.types.ResRet.f32 %8366, 1
  %8369 = extractvalue %dx.types.ResRet.f32 %8366, 2
  %8370 = extractvalue %dx.types.ResRet.f32 %8366, 3
  %8371 = fsub fast float 1.000000e+00, %8317
  %8372 = fsub fast float %8371, %8328
  %8373 = fmul fast float %8372, 0x400921FB60000000
  %8374 = fadd fast float %8373, 0x3FF921FB60000000
  %8375 = call float @dx.op.unary.f32(i32 13, float %8374)  ; Sin(value)
  %8376 = fadd fast float %8375, -1.000000e+00
  %8377 = fmul fast float %8376, 0x3FD45F3060000000
  %8378 = fmul fast float %8372, 0x401921FB60000000
  %8379 = fadd fast float %8378, 0x400921FB60000000
  %8380 = call float @dx.op.unary.f32(i32 13, float %8379)  ; Sin(value)
  %8381 = fadd fast float %8380, 0x3E7777A5C0000000
  %8382 = fmul fast float %8381, 0x3FC45F3060000000
  %8383 = fmul fast float %8372, 0x4022D97C80000000
  %8384 = fadd fast float %8383, 0x4012D97C80000000
  %8385 = call float @dx.op.unary.f32(i32 13, float %8384)  ; Sin(value)
  %8386 = fadd fast float %8385, 1.000000e+00
  %8387 = fmul fast float %8386, 0x3FBB2995E0000000
  %8388 = fmul fast float %8372, 0x402921FB60000000
  %8389 = fadd fast float %8388, 0x401921FB60000000
  %8390 = call float @dx.op.unary.f32(i32 13, float %8389)  ; Sin(value)
  %8391 = fadd fast float %8390, 0xBE8777A5C0000000
  %8392 = fmul fast float %8391, 0x3FB45F3060000000
  %8393 = call float @dx.op.dot4.f32(i32 56, float %8367, float %8368, float %8369, float %8370, float %8377, float %8382, float %8387, float %8392)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %8394 = fmul fast float %8393, 0xBFF7154760000000
  %8395 = call float @dx.op.unary.f32(i32 21, float %8394)  ; Exp(value)
  %8396 = call float @dx.op.unary.f32(i32 7, float %8395)  ; Saturate(value)
  br label %8397

; <label>:8397                                    ; preds = %8365, %8361
  %8398 = phi float [ %8396, %8365 ], [ 1.000000e+00, %8361 ]
  %8399 = fadd fast float %8398, -1.000000e+00
  %8400 = fmul fast float %8399, %8359
  %8401 = fadd fast float %8400, 1.000000e+00
  br label %8402

; <label>:8402                                    ; preds = %8397, %8302
  %8403 = phi float [ %8401, %8397 ], [ 1.000000e+00, %8302 ]
  %8404 = fmul fast float %8403, %8298
  %8405 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %8406 = extractvalue %dx.types.CBufRet.f32 %8405, 0
  %8407 = extractvalue %dx.types.CBufRet.f32 %8405, 1
  %8408 = extractvalue %dx.types.CBufRet.f32 %8405, 2
  %8409 = fadd fast float %8406, %167
  %8410 = fadd fast float %8407, %168
  %8411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %8412 = extractvalue %dx.types.CBufRet.f32 %8411, 1
  %8413 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %8414 = extractvalue %dx.types.CBufRet.f32 %8413, 0
  %8415 = extractvalue %dx.types.CBufRet.f32 %8413, 1
  %8416 = extractvalue %dx.types.CBufRet.f32 %8413, 2
  %8417 = fsub fast float -0.000000e+00, %8409
  %8418 = fsub fast float -0.000000e+00, %8410
  %8419 = fsub fast float -0.000000e+00, %169
  %8420 = fsub fast float %8419, %8408
  %8421 = fadd fast float %8420, %8412
  %8422 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8417, float %8418, float %8421)  ; Dot3(ax,ay,az,bx,by,bz)
  %8423 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8414, float %8415, float %8416)  ; Dot3(ax,ay,az,bx,by,bz)
  %8424 = fdiv fast float 1.000000e+00, %8423
  %8425 = fmul fast float %8424, %8422
  %8426 = fmul fast float %8414, %8425
  %8427 = fmul fast float %8415, %8425
  %8428 = fadd fast float %8426, %8409
  %8429 = fadd fast float %8427, %8410
  %8430 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %8431 = extractvalue %dx.types.CBufRet.f32 %8430, 0
  %8432 = extractvalue %dx.types.CBufRet.f32 %8430, 1
  %8433 = fsub fast float %8428, %8431
  %8434 = fsub fast float %8429, %8432
  %8435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %8436 = extractvalue %dx.types.CBufRet.f32 %8435, 2
  %8437 = extractvalue %dx.types.CBufRet.f32 %8435, 3
  %8438 = fmul fast float %8433, %8436
  %8439 = fmul fast float %8434, %8437
  %8440 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %8441 = extractvalue %dx.types.CBufRet.i32 %8440, 3
  %8442 = icmp eq i32 %8441, 0
  br i1 %8442, label %8448, label %8443

; <label>:8443                                    ; preds = %8402
  %8444 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %45, float %8438, float %8439, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8445 = extractvalue %dx.types.ResRet.f32 %8444, 0
  %8446 = extractvalue %dx.types.ResRet.f32 %8444, 1
  %8447 = extractvalue %dx.types.ResRet.f32 %8444, 2
  br label %8453

; <label>:8448                                    ; preds = %8402
  %8449 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %46, float %8438, float %8439, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8450 = extractvalue %dx.types.ResRet.f32 %8449, 0
  %8451 = extractvalue %dx.types.ResRet.f32 %8449, 1
  %8452 = extractvalue %dx.types.ResRet.f32 %8449, 2
  br label %8453

; <label>:8453                                    ; preds = %8448, %8443
  %8454 = phi float [ %8445, %8443 ], [ %8450, %8448 ]
  %8455 = phi float [ %8446, %8443 ], [ %8451, %8448 ]
  %8456 = phi float [ %8447, %8443 ], [ %8452, %8448 ]
  %8457 = extractvalue %dx.types.CBufRet.f32 %8411, 2
  %8458 = fmul fast float %8457, %8454
  %8459 = extractvalue %dx.types.CBufRet.f32 %8411, 0
  %8460 = fsub fast float %8425, %8459
  %8461 = fsub fast float %8460, %8458
  %8462 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8461)  ; FMax(a,b)
  %8463 = fmul fast float %8462, %8455
  %8464 = call float @dx.op.binary.f32(i32 36, float %8456, float %8463)  ; FMin(a,b)
  %8465 = fmul fast float %8464, 0xBFF7154760000000
  %8466 = call float @dx.op.unary.f32(i32 21, float %8465)  ; Exp(value)
  %8467 = fmul fast float %8404, %8466
  br label %8468

; <label>:8468                                    ; preds = %8453, %8297
  %8469 = phi float [ %8467, %8453 ], [ %8298, %8297 ]
  %8470 = call float @dx.op.binary.f32(i32 36, float %8469, float %8469)  ; FMin(a,b)
  %8471 = call float @dx.op.binary.f32(i32 36, float %8469, float %8470)  ; FMin(a,b)
  %8472 = fcmp fast ogt float %8471, 0.000000e+00
  br i1 %8472, label %8473, label %8644, !dx.controlflow.hints !121

; <label>:8473                                    ; preds = %8468
  %8474 = fmul fast float %8469, %7190
  %8475 = fmul fast float %8469, %7191
  %8476 = fmul fast float %8469, %7192
  %8477 = fsub fast float %7179, %6475
  %8478 = fsub fast float %7180, %6474
  %8479 = fsub fast float %7181, %6473
  %8480 = call float @dx.op.dot3.f32(i32 55, float %8477, float %8478, float %8479, float %8477, float %8478, float %8479)  ; Dot3(ax,ay,az,bx,by,bz)
  %8481 = call float @dx.op.unary.f32(i32 25, float %8480)  ; Rsqrt(value)
  %8482 = fmul fast float %8481, %8477
  %8483 = fmul fast float %8481, %8478
  %8484 = fmul fast float %8481, %8479
  %8485 = call float @dx.op.dot3.f32(i32 55, float %7179, float %7180, float %7181, float %6479, float %6480, float %6481)  ; Dot3(ax,ay,az,bx,by,bz)
  %8486 = call float @dx.op.dot3.f32(i32 55, float %6472, float %6471, float %6470, float %8482, float %8483, float %8484)  ; Dot3(ax,ay,az,bx,by,bz)
  %8487 = call float @dx.op.unary.f32(i32 7, float %8485)  ; Saturate(value)
  %8488 = fmul fast float %8487, %8487
  %8489 = fmul fast float %8488, %7174
  %8490 = call float @dx.op.unary.f32(i32 7, float %8489)  ; Saturate(value)
  %8491 = fmul fast float %8490, %8487
  %8492 = call float @dx.op.dot3.f32(i32 55, float %6479, float %6480, float %6481, float %8482, float %8483, float %8484)  ; Dot3(ax,ay,az,bx,by,bz)
  %8493 = fmul fast float %8492, %8492
  %8494 = call float @dx.op.unary.f32(i32 6, float %8485)  ; FAbs(value)
  %8495 = fsub fast float 1.000000e+00, %6507
  %8496 = fmul fast float %6489, %6489
  %8497 = fmul fast float %8496, %8495
  %8498 = fadd fast float %8497, %6507
  %8499 = bitcast float %8498 to i32
  %8500 = ashr i32 %8499, 1
  %8501 = add nsw i32 %8500, 532487669
  %8502 = bitcast i32 %8501 to float
  %8503 = fadd fast float %8502, %6489
  %8504 = fmul fast float %6507, %8493
  %8505 = fsub fast float 1.000000e+00, %8493
  %8506 = fadd fast float %8505, %8504
  %8507 = fmul fast float %8494, %8494
  %8508 = fmul fast float %8507, %8495
  %8509 = fadd fast float %8508, %6507
  %8510 = bitcast float %8509 to i32
  %8511 = ashr i32 %8510, 1
  %8512 = add nsw i32 %8511, 532487669
  %8513 = bitcast i32 %8512 to float
  %8514 = fadd fast float %8513, %8494
  %8515 = fmul fast float %8506, %8506
  %8516 = fmul fast float %8515, %8503
  %8517 = fmul fast float %8516, %8514
  %8518 = fdiv fast float 0x3FF0A00000000000, %8517
  %8519 = fmul fast float %8518, %6507
  %8520 = call float @dx.op.unary.f32(i32 6, float %8486)  ; FAbs(value)
  %8521 = fsub fast float 1.000000e+00, %8520
  %8522 = bitcast float %8521 to i32
  %8523 = sitofp i32 %8522 to float
  %8524 = fmul fast float %8523, 5.000000e+00
  %8525 = fadd fast float %8524, 0xC1EFBF8940000000
  %8526 = fptosi float %8525 to i32
  %8527 = bitcast i32 %8526 to float
  %8528 = fsub fast float 1.000000e+00, %6476
  %8529 = fsub fast float 1.000000e+00, %6477
  %8530 = fsub fast float 1.000000e+00, %6487
  %8531 = fmul fast float %8527, %8528
  %8532 = fmul fast float %8527, %8529
  %8533 = fmul fast float %8527, %8530
  %8534 = fadd fast float %8531, %6476
  %8535 = fadd fast float %8532, %6477
  %8536 = fadd fast float %8533, %6487
  br i1 %6625, label %8537, label %8560

; <label>:8537                                    ; preds = %8473
  %8538 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %46, float %4258, float %8520, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8539 = extractvalue %dx.types.ResRet.f32 %8538, 0
  %8540 = extractvalue %dx.types.ResRet.f32 %8538, 1
  %8541 = extractvalue %dx.types.ResRet.f32 %8538, 2
  %8542 = fadd fast float %8539, -5.000000e-01
  %8543 = fadd fast float %8540, -5.000000e-01
  %8544 = fadd fast float %8541, -5.000000e-01
  %8545 = fmul fast float %6476, 4.000000e+00
  %8546 = fmul fast float %8545, %8528
  %8547 = fmul fast float %8546, %8542
  %8548 = fmul fast float %6477, 4.000000e+00
  %8549 = fmul fast float %8548, %8529
  %8550 = fmul fast float %8549, %8543
  %8551 = fmul fast float %6487, 4.000000e+00
  %8552 = fmul fast float %8551, %8530
  %8553 = fmul fast float %8552, %8544
  %8554 = fadd fast float %8547, %8534
  %8555 = fadd fast float %8550, %8535
  %8556 = fadd fast float %8553, %8536
  %8557 = call float @dx.op.unary.f32(i32 7, float %8554)  ; Saturate(value)
  %8558 = call float @dx.op.unary.f32(i32 7, float %8555)  ; Saturate(value)
  %8559 = call float @dx.op.unary.f32(i32 7, float %8556)  ; Saturate(value)
  br label %8560

; <label>:8560                                    ; preds = %8537, %8473
  %8561 = phi float [ %8557, %8537 ], [ %8534, %8473 ]
  %8562 = phi float [ %8558, %8537 ], [ %8535, %8473 ]
  %8563 = phi float [ %8559, %8537 ], [ %8536, %8473 ]
  %8564 = fmul fast float %8485, 9.843750e-01
  %8565 = fadd fast float %8564, 7.812500e-03
  %8566 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %41, %dx.types.Handle %46, float %8565, float %6615, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8567 = extractvalue %dx.types.ResRet.f32 %8566, 2
  %8568 = extractvalue %dx.types.ResRet.f32 %8566, 3
  %8569 = fmul fast float %8567, %6476
  %8570 = fmul fast float %8567, %6477
  %8571 = fmul fast float %8567, %6487
  %8572 = fadd fast float %8569, %8568
  %8573 = fadd fast float %8570, %8568
  %8574 = fadd fast float %8571, %8568
  br i1 %6625, label %8575, label %8598

; <label>:8575                                    ; preds = %8560
  %8576 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %46, float %4258, float %8485, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8577 = extractvalue %dx.types.ResRet.f32 %8576, 0
  %8578 = extractvalue %dx.types.ResRet.f32 %8576, 1
  %8579 = extractvalue %dx.types.ResRet.f32 %8576, 2
  %8580 = fadd fast float %8577, -5.000000e-01
  %8581 = fadd fast float %8578, -5.000000e-01
  %8582 = fadd fast float %8579, -5.000000e-01
  %8583 = fmul fast float %6476, 4.000000e+00
  %8584 = fmul fast float %8583, %8528
  %8585 = fmul fast float %8584, %8580
  %8586 = fmul fast float %6477, 4.000000e+00
  %8587 = fmul fast float %8586, %8529
  %8588 = fmul fast float %8587, %8581
  %8589 = fmul fast float %6487, 4.000000e+00
  %8590 = fmul fast float %8589, %8530
  %8591 = fmul fast float %8590, %8582
  %8592 = fadd fast float %8585, %8572
  %8593 = fadd fast float %8588, %8573
  %8594 = fadd fast float %8591, %8574
  %8595 = call float @dx.op.unary.f32(i32 7, float %8592)  ; Saturate(value)
  %8596 = call float @dx.op.unary.f32(i32 7, float %8593)  ; Saturate(value)
  %8597 = call float @dx.op.unary.f32(i32 7, float %8594)  ; Saturate(value)
  br label %8598

; <label>:8598                                    ; preds = %8575, %8560
  %8599 = phi float [ %8595, %8575 ], [ %8572, %8560 ]
  %8600 = phi float [ %8596, %8575 ], [ %8573, %8560 ]
  %8601 = phi float [ %8597, %8575 ], [ %8574, %8560 ]
  %8602 = call float @dx.op.binary.f32(i32 35, float %8600, float %8601)  ; FMax(a,b)
  %8603 = call float @dx.op.binary.f32(i32 35, float %8599, float %8602)  ; FMax(a,b)
  %8604 = fsub fast float 1.000000e+00, %8603
  %8605 = fmul fast float %8561, %8519
  %8606 = fmul fast float %8562, %8519
  %8607 = fmul fast float %8563, %8519
  %8608 = fsub fast float 1.000000e+00, %8486
  %8609 = bitcast float %8608 to i32
  %8610 = sitofp i32 %8609 to float
  %8611 = fmul fast float %8610, 5.000000e+00
  %8612 = fadd fast float %8611, 0xC1EFBF8940000000
  %8613 = fptosi float %8612 to i32
  %8614 = bitcast i32 %8613 to float
  %8615 = fmul fast float %8614, %4259
  %8616 = fmul fast float %8604, %8615
  %8617 = fmul fast float %8616, %7139
  %8618 = fmul fast float %8616, %7140
  %8619 = fmul fast float %8616, %7141
  %8620 = fadd fast float %8617, %8605
  %8621 = fadd fast float %8618, %8606
  %8622 = fadd fast float %8619, %8607
  %8623 = fmul fast float %8491, %8474
  %8624 = fmul fast float %8623, %8604
  %8625 = fmul fast float %8491, %8475
  %8626 = fmul fast float %8625, %8604
  %8627 = fmul fast float %8491, %8476
  %8628 = fmul fast float %8627, %8604
  %8629 = fmul fast float %8623, %8620
  %8630 = fmul fast float %8625, %8621
  %8631 = fmul fast float %8627, %8622
  %8632 = fadd fast float %8624, %7123
  %8633 = fmul fast float %8632, %4255
  %8634 = fadd fast float %8626, %7124
  %8635 = fmul fast float %8634, %4255
  %8636 = fadd fast float %8628, %7125
  %8637 = fmul fast float %8636, %4255
  %8638 = fadd fast float %8629, %7166
  %8639 = fmul fast float %8638, %4255
  %8640 = fadd fast float %8630, %7169
  %8641 = fmul fast float %8640, %4255
  %8642 = fadd fast float %8631, %7172
  %8643 = fmul fast float %8642, %4255
  br label %8644

; <label>:8644                                    ; preds = %8598, %8468, %7119
  %8645 = phi float [ %7167, %7119 ], [ %7167, %8468 ], [ %8639, %8598 ]
  %8646 = phi float [ %7170, %7119 ], [ %7170, %8468 ], [ %8641, %8598 ]
  %8647 = phi float [ %7173, %7119 ], [ %7173, %8468 ], [ %8643, %8598 ]
  %8648 = phi float [ %7162, %7119 ], [ %7162, %8468 ], [ %8633, %8598 ]
  %8649 = phi float [ %7163, %7119 ], [ %7163, %8468 ], [ %8635, %8598 ]
  %8650 = phi float [ %7164, %7119 ], [ %7164, %8468 ], [ %8637, %8598 ]
  %8651 = fmul fast float %4255, %4255
  %8652 = fsub fast float 1.000000e+00, %8651
  %8653 = call float @dx.op.dot3.f32(i32 55, float %8652, float %8652, float %8652, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8654 = fsub fast float 1.000000e+00, %8653
  %8655 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8656 = extractvalue %dx.types.CBufRet.f32 %8655, 0
  %8657 = fmul fast float %8656, %7145
  %8658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8659 = extractvalue %dx.types.CBufRet.f32 %8658, 3
  %8660 = fsub fast float 1.000000e+00, %4262
  %8661 = call float @dx.op.unary.f32(i32 7, float %8660)  ; Saturate(value)
  %8662 = fadd fast float %8650, %4261
  %8663 = fmul fast float %8662, %4262
  %8664 = fmul fast float %8661, %8659
  %8665 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %8666 = extractvalue %dx.types.CBufRet.f32 %8665, 3
  %8667 = fmul fast float %8648, %6482
  %8668 = fmul fast float %8649, %6483
  %8669 = fmul fast float %8650, %6484
  %8670 = fcmp fast ogt float %92, %189
  %8671 = and i1 %8670, %4301
  %8672 = or i1 %4380, %8671
  %8673 = icmp eq i32 %4300, 2
  %8674 = fcmp fast ole float %92, %189
  %8675 = and i1 %8674, %8673
  %8676 = or i1 %8675, %8672
  br i1 %8671, label %8677, label %8934

; <label>:8677                                    ; preds = %8644
  %8678 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %8679 = extractvalue %dx.types.CBufRet.f32 %8678, 2
  %8680 = extractvalue %dx.types.CBufRet.f32 %8678, 3
  %8681 = fmul fast float %8679, %104
  %8682 = fmul fast float %8680, %105
  %8683 = call float @dx.op.unary.f32(i32 7, float %8681)  ; Saturate(value)
  %8684 = call float @dx.op.unary.f32(i32 7, float %8682)  ; Saturate(value)
  %8685 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %46, float %8683, float %8684, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8686 = extractvalue %dx.types.ResRet.f32 %8685, 0
  %8687 = extractvalue %dx.types.ResRet.f32 %8685, 1
  %8688 = extractvalue %dx.types.ResRet.f32 %8685, 2
  %8689 = extractvalue %dx.types.ResRet.f32 %8685, 3
  %8690 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %46, float %8683, float %8684, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8691 = extractvalue %dx.types.ResRet.f32 %8690, 0
  %8692 = extractvalue %dx.types.ResRet.f32 %8690, 1
  %8693 = extractvalue %dx.types.ResRet.f32 %8690, 2
  %8694 = extractvalue %dx.types.ResRet.f32 %8690, 3
  %8695 = call float @dx.op.binary.f32(i32 35, float %8687, float %8688)  ; FMax(a,b)
  %8696 = call float @dx.op.binary.f32(i32 35, float %8686, float %8695)  ; FMax(a,b)
  %8697 = call float @dx.op.binary.f32(i32 35, float %8696, float %8689)  ; FMax(a,b)
  %8698 = call float @dx.op.binary.f32(i32 36, float %8692, float %8693)  ; FMin(a,b)
  %8699 = call float @dx.op.binary.f32(i32 36, float %8691, float %8698)  ; FMin(a,b)
  %8700 = call float @dx.op.binary.f32(i32 36, float %8699, float %8694)  ; FMin(a,b)
  %8701 = fmul fast float %8697, 2.550000e+02
  %8702 = fadd fast float %8701, 0x3F70101020000000
  %8703 = fptoui float %8702 to i32
  %8704 = fmul fast float %8700, 2.550000e+02
  %8705 = fadd fast float %8704, 0x3F70101020000000
  %8706 = fptoui float %8705 to i32
  %8707 = icmp ult i32 %8703, %8706
  br i1 %8707, label %8708, label %8876

; <label>:8708                                    ; preds = %8677
  %8709 = fcmp fast ogt float %91, 9.843750e-01
  %8710 = fadd fast float %92, -4.000000e+00
  %8711 = select i1 %8709, float -4.000000e+00, float %8710
  %8712 = call float @dx.op.binary.f32(i32 35, float %8711, float 0.000000e+00)  ; FMax(a,b)
  %8713 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8714 = extractvalue %dx.types.CBufRet.f32 %8713, 0
  %8715 = fadd fast float %8714, %8712
  %8716 = extractvalue %dx.types.CBufRet.f32 %8713, 2
  %8717 = fmul fast float %8715, %8716
  %8718 = call float @dx.op.unary.f32(i32 23, float %8717)  ; Log(value)
  %8719 = extractvalue %dx.types.CBufRet.f32 %8713, 3
  %8720 = fmul fast float %8719, %8718
  %8721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8722 = extractvalue %dx.types.CBufRet.f32 %8721, 2
  %8723 = fmul fast float %8720, %8722
  %8724 = call float @dx.op.unary.f32(i32 7, float %8723)  ; Saturate(value)
  %8725 = uitofp i32 %8703 to float
  %8726 = uitofp i32 %8706 to float
  %8727 = fadd fast float %8725, 5.000000e-01
  %8728 = fadd fast float %8726, 5.000000e-01
  %8729 = fmul fast float %8722, %8727
  %8730 = fmul fast float %8722, %8728
  %8731 = fadd fast float %8729, 0x3F0FFB4800000000
  %8732 = fadd fast float %8730, 0xBF0FFB4800000000
  %8733 = call float @dx.op.binary.f32(i32 35, float %8724, float %8731)  ; FMax(a,b)
  %8734 = call float @dx.op.binary.f32(i32 36, float %8733, float %8732)  ; FMin(a,b)
  %8735 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8736 = extractvalue %dx.types.CBufRet.f32 %8735, 1
  %8737 = extractvalue %dx.types.CBufRet.f32 %8735, 2
  %8738 = extractvalue %dx.types.CBufRet.f32 %8735, 0
  %8739 = fmul fast float %8736, %8734
  %8740 = fadd fast float %8738, %8739
  %8741 = fadd fast float %8738, %8737
  %8742 = fsub fast float %8736, %8737
  %8743 = fadd fast float %8742, %8738
  %8744 = call float @dx.op.binary.f32(i32 35, float %8740, float %8741)  ; FMax(a,b)
  %8745 = call float @dx.op.binary.f32(i32 36, float %8744, float %8743)  ; FMin(a,b)
  %8746 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %44, float %8683, float %8684, float %8745, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8747 = extractvalue %dx.types.ResRet.f32 %8746, 0
  %8748 = extractvalue %dx.types.ResRet.f32 %8746, 1
  %8749 = extractvalue %dx.types.ResRet.f32 %8746, 2
  %8750 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8751 = extractvalue %dx.types.CBufRet.i32 %8750, 0
  %8752 = extractvalue %dx.types.CBufRet.i32 %8750, 1
  %8753 = uitofp i32 %8751 to float
  %8754 = uitofp i32 %8752 to float
  %8755 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8756 = extractvalue %dx.types.CBufRet.f32 %8755, 0
  %8757 = extractvalue %dx.types.CBufRet.f32 %8755, 1
  %8758 = fmul fast float %8753, %8683
  %8759 = fmul fast float %8754, %8684
  %8760 = fadd fast float %8758, -5.000000e-01
  %8761 = fadd fast float %8759, -5.000000e-01
  %8762 = call float @dx.op.unary.f32(i32 22, float %8760)  ; Frc(value)
  %8763 = call float @dx.op.unary.f32(i32 22, float %8761)  ; Frc(value)
  %8764 = fmul fast float %8762, %8762
  %8765 = fmul fast float %8764, %8762
  %8766 = fsub fast float 3.000000e+00, %8762
  %8767 = fmul fast float %8764, %8766
  %8768 = fmul fast float %8762, 3.000000e+00
  %8769 = fmul fast float %8765, 3.000000e+00
  %8770 = fmul fast float %8764, 6.000000e+00
  %8771 = fsub fast float %8769, %8770
  %8772 = fadd fast float %8771, 4.000000e+00
  %8773 = fmul fast float %8772, 0x3FC5555560000000
  %8774 = fmul fast float %8765, -3.000000e+00
  %8775 = fadd fast float %8764, %8762
  %8776 = fmul fast float %8775, 3.000000e+00
  %8777 = fadd fast float %8774, 1.000000e+00
  %8778 = fadd fast float %8777, %8776
  %8779 = fmul fast float %8765, 0x3FC5555560000000
  %8780 = fmul fast float %8763, %8763
  %8781 = fmul fast float %8780, %8763
  %8782 = fsub fast float 3.000000e+00, %8763
  %8783 = fmul fast float %8780, %8782
  %8784 = fmul fast float %8763, 3.000000e+00
  %8785 = fmul fast float %8781, 3.000000e+00
  %8786 = fmul fast float %8780, 6.000000e+00
  %8787 = fsub fast float %8785, %8786
  %8788 = fadd fast float %8787, 4.000000e+00
  %8789 = fmul fast float %8788, 0x3FC5555560000000
  %8790 = fmul fast float %8781, -3.000000e+00
  %8791 = fadd fast float %8780, %8763
  %8792 = fmul fast float %8791, 3.000000e+00
  %8793 = fadd fast float %8790, 1.000000e+00
  %8794 = fadd fast float %8793, %8792
  %8795 = fmul fast float %8781, 0x3FC5555560000000
  %8796 = fadd fast float %8762, 1.000000e+00
  %8797 = fsub fast float 1.000000e+00, %8768
  %8798 = fadd fast float %8797, %8767
  %8799 = fadd fast float %8798, %8772
  %8800 = fmul fast float %8799, 0x3FC5555560000000
  %8801 = fdiv fast float %8773, %8800
  %8802 = fsub fast float %8796, %8801
  %8803 = fsub fast float 1.000000e+00, %8762
  %8804 = fadd fast float %8778, %8765
  %8805 = fmul fast float %8804, 0x3FC5555560000000
  %8806 = fdiv fast float %8779, %8805
  %8807 = fadd fast float %8803, %8806
  %8808 = fadd fast float %8763, 1.000000e+00
  %8809 = fsub fast float 1.000000e+00, %8784
  %8810 = fadd fast float %8809, %8783
  %8811 = fadd fast float %8810, %8788
  %8812 = fmul fast float %8811, 0x3FC5555560000000
  %8813 = fdiv fast float %8789, %8812
  %8814 = fsub fast float %8808, %8813
  %8815 = fsub fast float 1.000000e+00, %8763
  %8816 = fadd fast float %8794, %8781
  %8817 = fmul fast float %8816, 0x3FC5555560000000
  %8818 = fdiv fast float %8795, %8817
  %8819 = fadd fast float %8818, %8815
  %8820 = fmul fast float %8802, %8756
  %8821 = fsub fast float %8683, %8820
  %8822 = fmul fast float %8807, %8756
  %8823 = fadd fast float %8822, %8683
  %8824 = fmul fast float %8819, %8757
  %8825 = fadd fast float %8824, %8684
  %8826 = fmul fast float %8814, %8757
  %8827 = fsub fast float %8684, %8826
  %8828 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %44, float %8821, float %8827, float %8745, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8829 = extractvalue %dx.types.ResRet.f32 %8828, 0
  %8830 = extractvalue %dx.types.ResRet.f32 %8828, 1
  %8831 = extractvalue %dx.types.ResRet.f32 %8828, 2
  %8832 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %44, float %8823, float %8827, float %8745, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8833 = extractvalue %dx.types.ResRet.f32 %8832, 0
  %8834 = extractvalue %dx.types.ResRet.f32 %8832, 1
  %8835 = extractvalue %dx.types.ResRet.f32 %8832, 2
  %8836 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %44, float %8821, float %8825, float %8745, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8837 = extractvalue %dx.types.ResRet.f32 %8836, 0
  %8838 = extractvalue %dx.types.ResRet.f32 %8836, 1
  %8839 = extractvalue %dx.types.ResRet.f32 %8836, 2
  %8840 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %44, float %8823, float %8825, float %8745, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8841 = extractvalue %dx.types.ResRet.f32 %8840, 0
  %8842 = extractvalue %dx.types.ResRet.f32 %8840, 1
  %8843 = extractvalue %dx.types.ResRet.f32 %8840, 2
  %8844 = fsub fast float %8837, %8829
  %8845 = fsub fast float %8838, %8830
  %8846 = fsub fast float %8839, %8831
  %8847 = fmul fast float %8844, %8817
  %8848 = fmul fast float %8845, %8817
  %8849 = fmul fast float %8846, %8817
  %8850 = fadd fast float %8847, %8829
  %8851 = fadd fast float %8848, %8830
  %8852 = fadd fast float %8849, %8831
  %8853 = fsub fast float %8841, %8833
  %8854 = fsub fast float %8842, %8834
  %8855 = fsub fast float %8843, %8835
  %8856 = fmul fast float %8853, %8817
  %8857 = fmul fast float %8854, %8817
  %8858 = fmul fast float %8855, %8817
  %8859 = fsub fast float %8833, %8850
  %8860 = fadd fast float %8859, %8856
  %8861 = fsub fast float %8834, %8851
  %8862 = fadd fast float %8861, %8857
  %8863 = fsub fast float %8835, %8852
  %8864 = fadd fast float %8863, %8858
  %8865 = fmul fast float %8860, %8805
  %8866 = fmul fast float %8862, %8805
  %8867 = fmul fast float %8864, %8805
  %8868 = fadd fast float %8865, %8850
  %8869 = fadd fast float %8866, %8851
  %8870 = fadd fast float %8867, %8852
  %8871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8872 = extractvalue %dx.types.CBufRet.f32 %8871, 1
  %8873 = fmul fast float %8868, %8872
  %8874 = fmul fast float %8869, %8872
  %8875 = fmul fast float %8870, %8872
  br label %8876

; <label>:8876                                    ; preds = %8708, %8677
  %8877 = phi float [ %8747, %8708 ], [ 1.000000e+00, %8677 ]
  %8878 = phi float [ %8748, %8708 ], [ 1.000000e+00, %8677 ]
  %8879 = phi float [ %8749, %8708 ], [ 1.000000e+00, %8677 ]
  %8880 = phi float [ %8873, %8708 ], [ 0.000000e+00, %8677 ]
  %8881 = phi float [ %8874, %8708 ], [ 0.000000e+00, %8677 ]
  %8882 = phi float [ %8875, %8708 ], [ 0.000000e+00, %8677 ]
  %8883 = fmul fast float %8880, %8654
  %8884 = fmul fast float %8881, %8654
  %8885 = fmul fast float %8882, %8654
  %8886 = call float @dx.op.dot3.f32(i32 55, float %8877, float %8878, float %8879, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8887 = call float @dx.op.dot3.f32(i32 55, float %8883, float %8884, float %8885, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8888 = select i1 %228, float %8886, float %8877
  %8889 = select i1 %228, float %8886, float %8878
  %8890 = select i1 %228, float 1.000000e+00, float %8879
  %8891 = select i1 %228, float %8887, float %8883
  %8892 = select i1 %228, float 0.000000e+00, float %8884
  %8893 = select i1 %228, float 0.000000e+00, float %8885
  %8894 = fmul fast float %8888, %8667
  %8895 = fmul fast float %8889, %8668
  %8896 = fmul fast float %8890, %8669
  %8897 = fadd fast float %8894, %8891
  %8898 = fadd fast float %8895, %8892
  %8899 = fadd fast float %8893, %8896
  %8900 = fmul fast float %8888, %8645
  %8901 = fmul fast float %8889, %8646
  %8902 = fmul fast float %8890, %8647
  %8903 = fmul fast float %137, %8679
  %8904 = fmul fast float %139, %8680
  %8905 = fsub fast float 1.000000e+00, %8903
  %8906 = fsub fast float 1.000000e+00, %8904
  %8907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8908 = extractvalue %dx.types.CBufRet.f32 %8907, 0
  %8909 = extractvalue %dx.types.CBufRet.f32 %8907, 1
  %8910 = extractvalue %dx.types.CBufRet.f32 %8907, 2
  %8911 = fmul fast float %8905, %8908
  %8912 = fmul fast float %8905, %8909
  %8913 = fmul fast float %8905, %8910
  %8914 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8915 = extractvalue %dx.types.CBufRet.f32 %8914, 0
  %8916 = extractvalue %dx.types.CBufRet.f32 %8914, 1
  %8917 = extractvalue %dx.types.CBufRet.f32 %8914, 2
  %8918 = fmul fast float %8906, %8915
  %8919 = fmul fast float %8906, %8916
  %8920 = fmul fast float %8906, %8917
  %8921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8922 = extractvalue %dx.types.CBufRet.f32 %8921, 0
  %8923 = extractvalue %dx.types.CBufRet.f32 %8921, 1
  %8924 = extractvalue %dx.types.CBufRet.f32 %8921, 2
  %8925 = fadd fast float %8918, %8922
  %8926 = fadd fast float %8925, %8911
  %8927 = fadd fast float %8919, %8923
  %8928 = fadd fast float %8927, %8912
  %8929 = fadd fast float %8920, %8924
  %8930 = fadd fast float %8929, %8913
  %8931 = fmul fast float %8926, %189
  %8932 = fmul fast float %8928, %189
  %8933 = fmul fast float %8930, %189
  br label %8934

; <label>:8934                                    ; preds = %8876, %8644
  %8935 = phi float [ %8931, %8876 ], [ %167, %8644 ]
  %8936 = phi float [ %8932, %8876 ], [ %168, %8644 ]
  %8937 = phi float [ %8933, %8876 ], [ %169, %8644 ]
  %8938 = phi float [ %189, %8876 ], [ %92, %8644 ]
  %8939 = phi float [ %8897, %8876 ], [ %8667, %8644 ]
  %8940 = phi float [ %8898, %8876 ], [ %8668, %8644 ]
  %8941 = phi float [ %8899, %8876 ], [ %8669, %8644 ]
  %8942 = phi float [ %8900, %8876 ], [ %8645, %8644 ]
  %8943 = phi float [ %8901, %8876 ], [ %8646, %8644 ]
  %8944 = phi float [ %8902, %8876 ], [ %8647, %8644 ]
  %8945 = phi float [ %8877, %8876 ], [ 1.000000e+00, %8644 ]
  br i1 %8676, label %10100, label %8946

; <label>:8946                                    ; preds = %8934
  %8947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8948 = extractvalue %dx.types.CBufRet.f32 %8947, 0
  %8949 = extractvalue %dx.types.CBufRet.f32 %8947, 1
  %8950 = extractvalue %dx.types.CBufRet.f32 %8947, 2
  %8951 = extractvalue %dx.types.CBufRet.f32 %8947, 3
  %8952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8953 = extractvalue %dx.types.CBufRet.f32 %8952, 0
  %8954 = extractvalue %dx.types.CBufRet.f32 %8952, 1
  %8955 = extractvalue %dx.types.CBufRet.f32 %8952, 2
  %8956 = extractvalue %dx.types.CBufRet.f32 %8952, 3
  %8957 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8958 = extractvalue %dx.types.CBufRet.f32 %8957, 0
  %8959 = extractvalue %dx.types.CBufRet.f32 %8957, 1
  %8960 = extractvalue %dx.types.CBufRet.f32 %8957, 2
  %8961 = extractvalue %dx.types.CBufRet.f32 %8957, 3
  %8962 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8963 = extractvalue %dx.types.CBufRet.f32 %8962, 0
  %8964 = extractvalue %dx.types.CBufRet.f32 %8962, 1
  %8965 = extractvalue %dx.types.CBufRet.f32 %8962, 2
  %8966 = extractvalue %dx.types.CBufRet.f32 %8962, 3
  %8967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8968 = extractvalue %dx.types.CBufRet.f32 %8967, 3
  %8969 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8970 = extractvalue %dx.types.CBufRet.f32 %8969, 3
  %8971 = extractvalue %dx.types.CBufRet.f32 %8969, 0
  %8972 = extractvalue %dx.types.CBufRet.f32 %8969, 1
  %8973 = extractvalue %dx.types.CBufRet.f32 %8969, 2
  %8974 = fcmp fast olt float %8973, -5.000000e-01
  %8975 = call float @dx.op.dot3.f32(i32 55, float %8935, float %8936, float %8937, float %8935, float %8936, float %8937)  ; Dot3(ax,ay,az,bx,by,bz)
  %8976 = call float @dx.op.unary.f32(i32 25, float %8975)  ; Rsqrt(value)
  %8977 = fmul fast float %8976, %8975
  %8978 = fmul fast float %8976, %8935
  %8979 = fmul fast float %8976, %8936
  %8980 = fmul fast float %8976, %8937
  %8981 = fadd fast float %8977, %8951
  %8982 = call float @dx.op.dot3.f32(i32 55, float %8978, float %8979, float %8980, float %8948, float %8949, float %8950)  ; Dot3(ax,ay,az,bx,by,bz)
  %8983 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8984 = extractvalue %dx.types.CBufRet.i32 %8983, 1
  %8985 = and i32 %8984, 1
  %8986 = icmp ne i32 %8985, 0
  %8987 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8988 = extractvalue %dx.types.CBufRet.f32 %8987, 2
  %8989 = fcmp fast ogt float %8988, 0.000000e+00
  %8990 = and i1 %8986, %8989
  br i1 %8990, label %8991, label %9397, !dx.controlflow.hints !122

; <label>:8991                                    ; preds = %8946
  %8992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8993 = extractvalue %dx.types.CBufRet.f32 %8992, 3
  %8994 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8995 = extractvalue %dx.types.CBufRet.f32 %8994, 2
  %8996 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8997 = extractvalue %dx.types.CBufRet.f32 %8996, 2
  %8998 = fsub fast float %8995, %8997
  %8999 = and i32 %8984, 2
  %9000 = extractvalue %dx.types.CBufRet.i32 %8983, 0
  %9001 = call i32 @dx.op.binary.i32(i32 40, i32 %9000, i32 3)  ; UMin(a,b)
  %9002 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %9003 = extractvalue %dx.types.CBufRet.f32 %9002, 0
  %9004 = extractvalue %dx.types.CBufRet.f32 %9002, 1
  %9005 = extractvalue %dx.types.CBufRet.f32 %8996, 0
  %9006 = extractvalue %dx.types.CBufRet.f32 %8996, 1
  %9007 = fsub fast float %9003, %9005
  %9008 = fsub fast float %9004, %9006
  %9009 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %9010 = extractvalue %dx.types.CBufRet.f32 %9009, 0
  %9011 = fcmp fast ogt float %9010, 0.000000e+00
  %9012 = fsub fast float -0.000000e+00, %9007
  %9013 = fsub fast float -0.000000e+00, %9008
  %9014 = call float @dx.op.dot2.f32(i32 54, float %8978, float %8979, float %8978, float %8979)  ; Dot2(ax,ay,bx,by)
  %9015 = call float @dx.op.dot2.f32(i32 54, float %8978, float %8979, float %9012, float %9013)  ; Dot2(ax,ay,bx,by)
  %9016 = fmul fast float %9015, 2.000000e+00
  %9017 = call float @dx.op.dot2.f32(i32 54, float %9012, float %9013, float %9012, float %9013)  ; Dot2(ax,ay,bx,by)
  %9018 = fmul fast float %9010, %9010
  %9019 = fsub fast float %9017, %9018
  %9020 = fmul fast float %9016, %9016
  %9021 = fmul fast float %9014, 4.000000e+00
  %9022 = fmul fast float %9021, %9019
  %9023 = fsub fast float %9020, %9022
  %9024 = fcmp fast ogt float %9023, 0.000000e+00
  br i1 %9024, label %9025, label %9040

; <label>:9025                                    ; preds = %8991
  %9026 = fcmp fast ogt float %9016, 0.000000e+00
  %9027 = call float @dx.op.unary.f32(i32 24, float %9023)  ; Sqrt(value)
  %9028 = fsub fast float -0.000000e+00, %9027
  %9029 = select i1 %9026, float %9027, float %9028
  %9030 = fadd fast float %9029, %9016
  %9031 = fmul float %9030, -5.000000e-01
  %9032 = fdiv fast float %9031, %9014
  %9033 = call float @dx.op.binary.f32(i32 35, float %9032, float 0.000000e+00)  ; FMax(a,b)
  %9034 = call float @dx.op.binary.f32(i32 36, float %8977, float %9033)  ; FMin(a,b)
  %9035 = fdiv fast float %9019, %9031
  %9036 = call float @dx.op.binary.f32(i32 35, float %9035, float 0.000000e+00)  ; FMax(a,b)
  %9037 = call float @dx.op.binary.f32(i32 36, float %8977, float %9036)  ; FMin(a,b)
  %9038 = call float @dx.op.binary.f32(i32 36, float %9034, float %9037)  ; FMin(a,b)
  %9039 = call float @dx.op.binary.f32(i32 35, float %9034, float %9037)  ; FMax(a,b)
  br label %9040

; <label>:9040                                    ; preds = %9025, %8991
  %9041 = phi float [ %9039, %9025 ], [ -1.000000e+00, %8991 ]
  %9042 = phi float [ %9038, %9025 ], [ -1.000000e+00, %8991 ]
  %9043 = phi i1 [ true, %9025 ], [ false, %8991 ]
  %9044 = and i1 %9011, %9043
  br i1 %9044, label %9045, label %9047

; <label>:9045                                    ; preds = %9040
  %9046 = fcmp fast oeq float %9042, %9041
  br i1 %9046, label %9350, label %9048

; <label>:9047                                    ; preds = %9040
  br i1 %9011, label %9350, label %9048

; <label>:9048                                    ; preds = %9047, %9045
  %9049 = phi float [ %8977, %9047 ], [ %9041, %9045 ]
  %9050 = phi float [ 0.000000e+00, %9047 ], [ %9042, %9045 ]
  %9051 = icmp ne i32 %8999, 0
  %9052 = fmul fast float %9049, %8980
  %9053 = fadd fast float %9052, %8993
  %9054 = fmul fast float %9053, %9049
  %9055 = select i1 %9051, float 0.000000e+00, float %9054
  %9056 = fcmp fast oeq float %8980, 0.000000e+00
  %9057 = fdiv fast float %8998, %8980
  %9058 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9057)  ; FMax(a,b)
  %9059 = select i1 %9056, float %9049, float %9058
  %9060 = call float @dx.op.binary.f32(i32 36, float %9049, float %9059)  ; FMin(a,b)
  %9061 = fcmp fast ogt float %8980, 0.000000e+00
  %9062 = fcmp fast olt float %8998, 0.000000e+00
  br i1 %9061, label %9063, label %9120

; <label>:9063                                    ; preds = %9048
  %9064 = icmp eq i32 %8999, 0
  br i1 %9062, label %9065, label %9109

; <label>:9065                                    ; preds = %9063
  %9066 = select i1 %9064, float %9049, float 0.000000e+00
  %9067 = fsub fast float -0.000000e+00, %9066
  %9068 = call float @dx.op.unary.f32(i32 6, float %9067)  ; FAbs(value)
  %9069 = fmul fast float %9066, %8980
  %9070 = fadd fast float %9069, %8993
  %9071 = fmul fast float %9068, %9070
  %9072 = fsub fast float %9055, %9071
  %9073 = fsub fast float %9049, %9068
  %9074 = select i1 %9064, float %9073, float 0.000000e+00
  %9075 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9076 = extractvalue %dx.types.CBufRet.f32 %9075, 0
  %9077 = extractvalue %dx.types.CBufRet.f32 %9075, 1
  %9078 = extractvalue %dx.types.CBufRet.f32 %9075, 2
  %9079 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9080 = extractvalue %dx.types.CBufRet.f32 %9079, 0
  %9081 = extractvalue %dx.types.CBufRet.f32 %9079, 1
  %9082 = extractvalue %dx.types.CBufRet.f32 %9079, 2
  %9083 = extractvalue %dx.types.CBufRet.f32 %9079, 3
  %9084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9085 = extractvalue %dx.types.CBufRet.f32 %9084, 3
  %9086 = call float @dx.op.binary.f32(i32 36, float %9072, float %9085)  ; FMin(a,b)
  %9087 = fmul fast float %9083, %9074
  %9088 = call float @dx.op.unary.f32(i32 7, float %9087)  ; Saturate(value)
  %9089 = fsub fast float %9080, %9076
  %9090 = fsub fast float %9081, %9077
  %9091 = fsub fast float %9082, %9078
  %9092 = fmul fast float %9088, %9089
  %9093 = fmul fast float %9088, %9090
  %9094 = fmul fast float %9088, %9091
  %9095 = fadd fast float %9092, %9076
  %9096 = fadd fast float %9093, %9077
  %9097 = fadd fast float %9094, %9078
  %9098 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9099 = extractvalue %dx.types.CBufRet.f32 %9098, 0
  %9100 = extractvalue %dx.types.CBufRet.f32 %9098, 1
  %9101 = fadd fast float %9100, %9099
  %9102 = call float @dx.op.unary.f32(i32 7, float %9101)  ; Saturate(value)
  %9103 = extractvalue %dx.types.CBufRet.f32 %9098, 2
  %9104 = extractvalue %dx.types.CBufRet.f32 %9098, 3
  %9105 = fadd fast float %9104, %9103
  %9106 = call float @dx.op.unary.f32(i32 7, float %9105)  ; Saturate(value)
  %9107 = fmul fast float %9102, %9086
  %9108 = fmul fast float %9107, %9106
  br label %9350

; <label>:9109                                    ; preds = %9063
  br i1 %9064, label %9110, label %9131

; <label>:9110                                    ; preds = %9109
  %9111 = call float @dx.op.binary.f32(i32 36, float %9060, float %9050)  ; FMin(a,b)
  %9112 = fsub fast float %9060, %9111
  %9113 = fsub fast float %9112, %9049
  %9114 = call float @dx.op.unary.f32(i32 6, float %9113)  ; FAbs(value)
  %9115 = fadd fast float %9112, %9049
  %9116 = fmul fast float %9115, %8980
  %9117 = fadd fast float %9116, %8993
  %9118 = fmul fast float %9117, %9114
  %9119 = fsub fast float %9055, %9118
  br label %9131

; <label>:9120                                    ; preds = %9048
  br i1 %9062, label %9121, label %9131

; <label>:9121                                    ; preds = %9120
  %9122 = call float @dx.op.binary.f32(i32 35, float %9050, float %9060)  ; FMax(a,b)
  %9123 = icmp eq i32 %8999, 0
  %9124 = select i1 %9123, float %9060, float 0.000000e+00
  %9125 = fsub fast float -0.000000e+00, %9124
  %9126 = call float @dx.op.unary.f32(i32 6, float %9125)  ; FAbs(value)
  %9127 = fmul fast float %9124, %8980
  %9128 = fadd fast float %9127, %8993
  %9129 = fmul fast float %9126, %9128
  %9130 = fsub fast float %9055, %9129
  br label %9131

; <label>:9131                                    ; preds = %9121, %9120, %9110, %9109
  %9132 = phi float [ %9050, %9109 ], [ %9050, %9110 ], [ %9122, %9121 ], [ %9050, %9120 ]
  %9133 = phi float [ 0.000000e+00, %9109 ], [ %9114, %9110 ], [ %9126, %9121 ], [ 0.000000e+00, %9120 ]
  %9134 = phi float [ %9055, %9109 ], [ %9119, %9110 ], [ %9130, %9121 ], [ %9055, %9120 ]
  %9135 = phi float [ %9060, %9109 ], [ %9060, %9110 ], [ %9049, %9121 ], [ %9049, %9120 ]
  %9136 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 0
  store float -1.000000e+00, float* %9136, align 4, !tbaa !88, !noalias !123
  %9137 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 1
  store float -1.000000e+00, float* %9137, align 4, !tbaa !88, !noalias !123
  %9138 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 2
  store float -1.000000e+00, float* %9138, align 4, !tbaa !88, !noalias !123
  %9139 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 0
  store float -1.000000e+00, float* %9139, align 4, !tbaa !88, !noalias !123
  %9140 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 1
  store float -1.000000e+00, float* %9140, align 4, !tbaa !88, !noalias !123
  %9141 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 2
  store float -1.000000e+00, float* %9141, align 4, !tbaa !88, !noalias !123
  %9142 = icmp sgt i32 %9001, 0
  br i1 %9142, label %9143, label %9204

; <label>:9143                                    ; preds = %9131
  br label %9144

; <label>:9144                                    ; preds = %9193, %9143
  %9145 = phi i32 [ %9194, %9193 ], [ 0, %9143 ]
  %9146 = phi i32 [ %9195, %9193 ], [ 0, %9143 ]
  %9147 = add nuw i32 %9146, 171
  %9148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 %9147)  ; CBufferLoadLegacy(handle,regIndex)
  %9149 = extractvalue %dx.types.CBufRet.f32 %9148, 0
  %9150 = extractvalue %dx.types.CBufRet.f32 %9148, 1
  %9151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9152 = extractvalue %dx.types.CBufRet.f32 %9151, 0
  %9153 = extractvalue %dx.types.CBufRet.f32 %9151, 1
  %9154 = fsub fast float %9149, %9152
  %9155 = fsub fast float %9150, %9153
  %9156 = extractvalue %dx.types.CBufRet.f32 %9148, 2
  %9157 = fsub fast float -0.000000e+00, %9154
  %9158 = fsub fast float -0.000000e+00, %9155
  %9159 = call float @dx.op.dot2.f32(i32 54, float %8978, float %8979, float %9157, float %9158)  ; Dot2(ax,ay,bx,by)
  %9160 = fmul fast float %9159, 2.000000e+00
  %9161 = call float @dx.op.dot2.f32(i32 54, float %9157, float %9158, float %9157, float %9158)  ; Dot2(ax,ay,bx,by)
  %9162 = fmul fast float %9156, %9156
  %9163 = fsub fast float %9161, %9162
  %9164 = fmul fast float %9160, %9160
  %9165 = fmul fast float %9021, %9163
  %9166 = fsub fast float %9164, %9165
  %9167 = fcmp fast ogt float %9166, 0.000000e+00
  br i1 %9167, label %9168, label %9183

; <label>:9168                                    ; preds = %9144
  %9169 = fcmp fast ogt float %9160, 0.000000e+00
  %9170 = call float @dx.op.unary.f32(i32 24, float %9166)  ; Sqrt(value)
  %9171 = fsub fast float -0.000000e+00, %9170
  %9172 = select i1 %9169, float %9170, float %9171
  %9173 = fadd fast float %9172, %9160
  %9174 = fmul float %9173, -5.000000e-01
  %9175 = fdiv fast float %9174, %9014
  %9176 = call float @dx.op.binary.f32(i32 35, float %9175, float 0.000000e+00)  ; FMax(a,b)
  %9177 = call float @dx.op.binary.f32(i32 36, float %9049, float %9176)  ; FMin(a,b)
  %9178 = fdiv fast float %9163, %9174
  %9179 = call float @dx.op.binary.f32(i32 35, float %9178, float 0.000000e+00)  ; FMax(a,b)
  %9180 = call float @dx.op.binary.f32(i32 36, float %9049, float %9179)  ; FMin(a,b)
  %9181 = call float @dx.op.binary.f32(i32 36, float %9177, float %9180)  ; FMin(a,b)
  %9182 = call float @dx.op.binary.f32(i32 35, float %9177, float %9180)  ; FMax(a,b)
  br label %9183

; <label>:9183                                    ; preds = %9168, %9144
  %9184 = phi float [ %9182, %9168 ], [ -1.000000e+00, %9144 ]
  %9185 = phi float [ %9181, %9168 ], [ -1.000000e+00, %9144 ]
  %9186 = phi i1 [ true, %9168 ], [ false, %9144 ]
  br i1 %9186, label %9187, label %9193

; <label>:9187                                    ; preds = %9183
  %9188 = call float @dx.op.binary.f32(i32 35, float %9132, float %9185)  ; FMax(a,b)
  %9189 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 %9146
  store float %9188, float* %9189, align 4, !tbaa !88, !noalias !123
  %9190 = call float @dx.op.binary.f32(i32 35, float %9132, float %9184)  ; FMax(a,b)
  %9191 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 %9146
  store float %9190, float* %9191, align 4, !tbaa !88, !noalias !123
  %9192 = add nsw i32 %9145, 1
  br label %9193

; <label>:9193                                    ; preds = %9187, %9183
  %9194 = phi i32 [ %9192, %9187 ], [ %9145, %9183 ]
  %9195 = add nuw nsw i32 %9146, 1
  %9196 = icmp eq i32 %9195, %9001
  br i1 %9196, label %9197, label %9144

; <label>:9197                                    ; preds = %9193
  %9198 = load float, float* %9138, align 4, !tbaa !88, !alias.scope !139, !noalias !142
  %9199 = load float, float* %9137, align 4, !tbaa !88, !alias.scope !145, !noalias !146
  %9200 = load float, float* %9136, align 4, !tbaa !88, !alias.scope !147, !noalias !148
  %9201 = load float, float* %9141, align 4, !tbaa !88, !alias.scope !149, !noalias !152
  %9202 = load float, float* %9140, align 4, !tbaa !88, !alias.scope !155, !noalias !156
  %9203 = load float, float* %9139, align 4, !tbaa !88, !alias.scope !157, !noalias !158
  br label %9204

; <label>:9204                                    ; preds = %9197, %9131
  %9205 = phi float [ -1.000000e+00, %9131 ], [ %9203, %9197 ]
  %9206 = phi float [ -1.000000e+00, %9131 ], [ %9202, %9197 ]
  %9207 = phi float [ -1.000000e+00, %9131 ], [ %9201, %9197 ]
  %9208 = phi float [ -1.000000e+00, %9131 ], [ %9200, %9197 ]
  %9209 = phi float [ -1.000000e+00, %9131 ], [ %9199, %9197 ]
  %9210 = phi float [ -1.000000e+00, %9131 ], [ %9198, %9197 ]
  %9211 = phi i32 [ 0, %9131 ], [ %9194, %9197 ]
  %9212 = call float @dx.op.binary.f32(i32 36, float %9209, float %9210)  ; FMin(a,b)
  %9213 = call float @dx.op.binary.f32(i32 36, float %9208, float %9212)  ; FMin(a,b)
  %9214 = call float @dx.op.binary.f32(i32 35, float %9208, float %9209)  ; FMax(a,b)
  %9215 = call float @dx.op.binary.f32(i32 36, float %9214, float %9210)  ; FMin(a,b)
  %9216 = call float @dx.op.binary.f32(i32 36, float %9208, float %9209)  ; FMin(a,b)
  %9217 = call float @dx.op.binary.f32(i32 35, float %9216, float %9215)  ; FMax(a,b)
  %9218 = call float @dx.op.binary.f32(i32 35, float %9209, float %9210)  ; FMax(a,b)
  %9219 = call float @dx.op.binary.f32(i32 35, float %9208, float %9218)  ; FMax(a,b)
  store float %9213, float* %9136, align 4, !tbaa !88, !alias.scope !147, !noalias !148
  store float %9217, float* %9137, align 4, !tbaa !88, !alias.scope !145, !noalias !146
  store float %9219, float* %9138, align 4, !tbaa !88, !alias.scope !139, !noalias !142
  %9220 = call float @dx.op.binary.f32(i32 36, float %9206, float %9207)  ; FMin(a,b)
  %9221 = call float @dx.op.binary.f32(i32 36, float %9205, float %9220)  ; FMin(a,b)
  %9222 = call float @dx.op.binary.f32(i32 35, float %9205, float %9206)  ; FMax(a,b)
  %9223 = call float @dx.op.binary.f32(i32 36, float %9222, float %9207)  ; FMin(a,b)
  %9224 = call float @dx.op.binary.f32(i32 36, float %9205, float %9206)  ; FMin(a,b)
  %9225 = call float @dx.op.binary.f32(i32 35, float %9224, float %9223)  ; FMax(a,b)
  %9226 = call float @dx.op.binary.f32(i32 35, float %9206, float %9207)  ; FMax(a,b)
  %9227 = call float @dx.op.binary.f32(i32 35, float %9205, float %9226)  ; FMax(a,b)
  store float %9221, float* %9139, align 4, !tbaa !88, !alias.scope !157, !noalias !158
  store float %9225, float* %9140, align 4, !tbaa !88, !alias.scope !155, !noalias !156
  store float %9227, float* %9141, align 4, !tbaa !88, !alias.scope !149, !noalias !152
  %9228 = sub nsw i32 3, %9211
  %9229 = icmp sgt i32 %9228, 2
  br i1 %9229, label %9230, label %9268

; <label>:9230                                    ; preds = %9204
  %9231 = icmp eq i32 %8999, 0
  %9232 = fsub fast float %9049, %9133
  %9233 = select i1 %9231, float %9232, float %9133
  %9234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9235 = extractvalue %dx.types.CBufRet.f32 %9234, 0
  %9236 = extractvalue %dx.types.CBufRet.f32 %9234, 1
  %9237 = extractvalue %dx.types.CBufRet.f32 %9234, 2
  %9238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9239 = extractvalue %dx.types.CBufRet.f32 %9238, 0
  %9240 = extractvalue %dx.types.CBufRet.f32 %9238, 1
  %9241 = extractvalue %dx.types.CBufRet.f32 %9238, 2
  %9242 = extractvalue %dx.types.CBufRet.f32 %9238, 3
  %9243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9244 = extractvalue %dx.types.CBufRet.f32 %9243, 3
  %9245 = call float @dx.op.binary.f32(i32 36, float %9134, float %9244)  ; FMin(a,b)
  %9246 = fmul fast float %9242, %9233
  %9247 = call float @dx.op.unary.f32(i32 7, float %9246)  ; Saturate(value)
  %9248 = fsub fast float %9239, %9235
  %9249 = fsub fast float %9240, %9236
  %9250 = fsub fast float %9241, %9237
  %9251 = fmul fast float %9247, %9248
  %9252 = fmul fast float %9247, %9249
  %9253 = fmul fast float %9247, %9250
  %9254 = fadd fast float %9251, %9235
  %9255 = fadd fast float %9252, %9236
  %9256 = fadd fast float %9253, %9237
  %9257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9258 = extractvalue %dx.types.CBufRet.f32 %9257, 0
  %9259 = extractvalue %dx.types.CBufRet.f32 %9257, 1
  %9260 = fadd fast float %9259, %9258
  %9261 = call float @dx.op.unary.f32(i32 7, float %9260)  ; Saturate(value)
  %9262 = extractvalue %dx.types.CBufRet.f32 %9257, 2
  %9263 = extractvalue %dx.types.CBufRet.f32 %9257, 3
  %9264 = fadd fast float %9263, %9262
  %9265 = call float @dx.op.unary.f32(i32 7, float %9264)  ; Saturate(value)
  %9266 = fmul fast float %9261, %9245
  %9267 = fmul fast float %9266, %9265
  br label %9350

; <label>:9268                                    ; preds = %9204
  %9269 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 %9228
  %9270 = load float, float* %9269, align 4, !tbaa !88, !noalias !123
  %9271 = fcmp fast olt float %9270, %9135
  %9272 = icmp sgt i32 %9211, 0
  %9273 = and i1 %9272, %9271
  br i1 %9273, label %9274, label %9311

; <label>:9274                                    ; preds = %9268
  br label %9275

; <label>:9275                                    ; preds = %9304, %9274
  %9276 = phi float [ %9305, %9304 ], [ %9133, %9274 ]
  %9277 = phi float [ %9306, %9304 ], [ %9134, %9274 ]
  %9278 = phi float [ %9286, %9304 ], [ %9270, %9274 ]
  %9279 = phi i32 [ %9283, %9304 ], [ %9228, %9274 ]
  %9280 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 %9279
  %9281 = load float, float* %9280, align 4, !tbaa !88, !noalias !123
  %9282 = icmp slt i32 %9279, 2
  %9283 = add nsw i32 %9279, 1
  %9284 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 %9283
  %9285 = load float, float* %9284, align 4, !tbaa !88, !noalias !123
  %9286 = select i1 %9282, float %9285, float %9049
  %9287 = call float @dx.op.binary.f32(i32 36, float %9286, float %9281)  ; FMin(a,b)
  %9288 = call float @dx.op.binary.f32(i32 36, float %9135, float %9287)  ; FMin(a,b)
  %9289 = icmp eq i32 %8999, 0
  %9290 = fadd fast float %9288, %9278
  %9291 = fmul fast float %9290, %8980
  %9292 = fadd fast float %9291, %8993
  br i1 %9289, label %9298, label %9293

; <label>:9293                                    ; preds = %9275
  %9294 = fsub fast float %9288, %9278
  %9295 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9294)  ; FMax(a,b)
  %9296 = fmul fast float %9295, %9292
  %9297 = fadd fast float %9296, %9277
  br label %9304

; <label>:9298                                    ; preds = %9275
  %9299 = fsub fast float %9278, %9288
  %9300 = call float @dx.op.unary.f32(i32 6, float %9299)  ; FAbs(value)
  %9301 = fadd fast float %9300, %9276
  %9302 = fmul fast float %9300, %9292
  %9303 = fsub fast float %9277, %9302
  br label %9304

; <label>:9304                                    ; preds = %9298, %9293
  %9305 = phi float [ %9295, %9293 ], [ %9301, %9298 ]
  %9306 = phi float [ %9297, %9293 ], [ %9303, %9298 ]
  %9307 = fcmp fast olt float %9286, %9135
  %9308 = icmp slt i32 %9283, 3
  %9309 = and i1 %9308, %9307
  br i1 %9309, label %9275, label %9310

; <label>:9310                                    ; preds = %9304
  br label %9311

; <label>:9311                                    ; preds = %9310, %9268
  %9312 = phi float [ %9133, %9268 ], [ %9305, %9310 ]
  %9313 = phi float [ %9134, %9268 ], [ %9306, %9310 ]
  %9314 = fsub fast float %9049, %9312
  %9315 = select i1 %9051, float %9312, float %9314
  %9316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9317 = extractvalue %dx.types.CBufRet.f32 %9316, 0
  %9318 = extractvalue %dx.types.CBufRet.f32 %9316, 1
  %9319 = extractvalue %dx.types.CBufRet.f32 %9316, 2
  %9320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9321 = extractvalue %dx.types.CBufRet.f32 %9320, 0
  %9322 = extractvalue %dx.types.CBufRet.f32 %9320, 1
  %9323 = extractvalue %dx.types.CBufRet.f32 %9320, 2
  %9324 = extractvalue %dx.types.CBufRet.f32 %9320, 3
  %9325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9326 = extractvalue %dx.types.CBufRet.f32 %9325, 3
  %9327 = call float @dx.op.binary.f32(i32 36, float %9313, float %9326)  ; FMin(a,b)
  %9328 = fmul fast float %9324, %9315
  %9329 = call float @dx.op.unary.f32(i32 7, float %9328)  ; Saturate(value)
  %9330 = fsub fast float %9321, %9317
  %9331 = fsub fast float %9322, %9318
  %9332 = fsub fast float %9323, %9319
  %9333 = fmul fast float %9329, %9330
  %9334 = fmul fast float %9329, %9331
  %9335 = fmul fast float %9329, %9332
  %9336 = fadd fast float %9333, %9317
  %9337 = fadd fast float %9334, %9318
  %9338 = fadd fast float %9335, %9319
  %9339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9340 = extractvalue %dx.types.CBufRet.f32 %9339, 0
  %9341 = extractvalue %dx.types.CBufRet.f32 %9339, 1
  %9342 = fadd fast float %9341, %9340
  %9343 = call float @dx.op.unary.f32(i32 7, float %9342)  ; Saturate(value)
  %9344 = extractvalue %dx.types.CBufRet.f32 %9339, 2
  %9345 = extractvalue %dx.types.CBufRet.f32 %9339, 3
  %9346 = fadd fast float %9345, %9344
  %9347 = call float @dx.op.unary.f32(i32 7, float %9346)  ; Saturate(value)
  %9348 = fmul fast float %9343, %9327
  %9349 = fmul fast float %9348, %9347
  br label %9350

; <label>:9350                                    ; preds = %9311, %9230, %9065, %9047, %9045
  %9351 = phi float [ %9074, %9065 ], [ %9233, %9230 ], [ %9315, %9311 ], [ 0.000000e+00, %9045 ], [ 0.000000e+00, %9047 ]
  %9352 = phi float [ %9108, %9065 ], [ %9267, %9230 ], [ %9349, %9311 ], [ 0.000000e+00, %9045 ], [ 0.000000e+00, %9047 ]
  %9353 = phi float [ %9095, %9065 ], [ %9254, %9230 ], [ %9336, %9311 ], [ 0.000000e+00, %9045 ], [ 0.000000e+00, %9047 ]
  %9354 = phi float [ %9096, %9065 ], [ %9255, %9230 ], [ %9337, %9311 ], [ 0.000000e+00, %9045 ], [ 0.000000e+00, %9047 ]
  %9355 = phi float [ %9097, %9065 ], [ %9256, %9230 ], [ %9338, %9311 ], [ 0.000000e+00, %9045 ], [ 0.000000e+00, %9047 ]
  %9356 = fmul fast float %8988, %9352
  %9357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9358 = extractvalue %dx.types.CBufRet.f32 %9357, 2
  %9359 = fsub fast float %8995, %9358
  %9360 = fcmp fast olt float %9356, -2.000000e+01
  %9361 = call float @dx.op.unary.f32(i32 21, float %9356)  ; Exp(value)
  %9362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9363 = extractvalue %dx.types.CBufRet.f32 %9362, 2
  %9364 = extractvalue %dx.types.CBufRet.f32 %9362, 3
  %9365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %9366 = extractvalue %dx.types.CBufRet.f32 %9365, 2
  %9367 = fmul fast float %9364, %9359
  %9368 = call float @dx.op.unary.f32(i32 7, float %9367)  ; Saturate(value)
  %9369 = fsub fast float 1.000000e+00, %9368
  %9370 = fmul fast float %8980, 5.000000e-01
  %9371 = fadd fast float %9370, 5.000000e-01
  %9372 = call float @dx.op.unary.f32(i32 7, float %9371)  ; Saturate(value)
  %9373 = fsub fast float 1.000000e+00, %9372
  %9374 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9369)  ; FMax(a,b)
  %9375 = fdiv fast float %9373, %9374
  %9376 = fsub fast float %9359, %8937
  %9377 = call float @dx.op.unary.f32(i32 6, float %9376)  ; FAbs(value)
  %9378 = fmul fast float %9377, %9363
  %9379 = call float @dx.op.unary.f32(i32 7, float %9375)  ; Saturate(value)
  %9380 = fsub fast float 1.000000e+00, %9378
  %9381 = fmul fast float %9380, %9379
  %9382 = fadd fast float %9381, %9378
  %9383 = fmul fast float %9366, %9359
  %9384 = call float @dx.op.unary.f32(i32 7, float %9383)  ; Saturate(value)
  %9385 = fsub fast float 1.000000e+00, %9382
  %9386 = fmul fast float %9385, %9384
  %9387 = fadd fast float %9386, %9382
  %9388 = call float @dx.op.unary.f32(i32 7, float %9387)  ; Saturate(value)
  %9389 = fadd fast float %9361, -1.000000e+00
  %9390 = select i1 %9360, float -1.000000e+00, float %9389
  %9391 = fmul fast float %9388, %9390
  %9392 = fadd fast float %9391, 1.000000e+00
  %9393 = fsub fast float -0.000000e+00, %9391
  %9394 = fmul fast float %9353, %9393
  %9395 = fmul fast float %9354, %9393
  %9396 = fmul fast float %9355, %9393
  br label %9397

; <label>:9397                                    ; preds = %9350, %8946
  %9398 = phi float [ %9351, %9350 ], [ 0.000000e+00, %8946 ]
  %9399 = phi float [ %9392, %9350 ], [ 1.000000e+00, %8946 ]
  %9400 = phi float [ %9394, %9350 ], [ 0.000000e+00, %8946 ]
  %9401 = phi float [ %9395, %9350 ], [ 0.000000e+00, %8946 ]
  %9402 = phi float [ %9396, %9350 ], [ 0.000000e+00, %8946 ]
  %9403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9404 = extractvalue %dx.types.CBufRet.f32 %9403, 1
  %9405 = fsub fast float 1.000000e+00, %9399
  %9406 = fmul fast float %9405, %8981
  %9407 = fmul fast float %9406, %9404
  %9408 = fsub fast float %8981, %9407
  br i1 %8974, label %9409, label %9438, !dx.controlflow.hints !159

; <label>:9409                                    ; preds = %9397
  %9410 = fmul fast float %8982, %8971
  %9411 = fadd fast float %9410, %8972
  %9412 = call float @dx.op.unary.f32(i32 7, float %9411)  ; Saturate(value)
  %9413 = fmul fast float %8953, %9408
  %9414 = fsub fast float -0.000000e+00, %9413
  %9415 = fmul fast float %8954, %9408
  %9416 = fsub fast float -0.000000e+00, %9415
  %9417 = call float @dx.op.unary.f32(i32 21, float %9414)  ; Exp(value)
  %9418 = call float @dx.op.unary.f32(i32 21, float %9416)  ; Exp(value)
  %9419 = call float @dx.op.binary.f32(i32 35, float %8961, float %9417)  ; FMax(a,b)
  %9420 = call float @dx.op.binary.f32(i32 35, float %8961, float %9418)  ; FMax(a,b)
  %9421 = fsub fast float %9420, %9419
  %9422 = fmul fast float %9421, %9412
  %9423 = fadd fast float %9422, %9419
  %9424 = call float @dx.op.unary.f32(i32 7, float %9423)  ; Saturate(value)
  %9425 = fsub fast float %8958, %8963
  %9426 = fsub fast float %8959, %8964
  %9427 = fsub fast float %8960, %8965
  %9428 = fmul fast float %9412, %9425
  %9429 = fmul fast float %9412, %9426
  %9430 = fmul fast float %9412, %9427
  %9431 = fadd fast float %9428, %8963
  %9432 = fadd fast float %9429, %8964
  %9433 = fadd fast float %9430, %8965
  %9434 = fsub fast float 1.000000e+00, %9424
  %9435 = fmul fast float %9434, %9431
  %9436 = fmul fast float %9434, %9432
  %9437 = fmul fast float %9434, %9433
  br label %9497

; <label>:9438                                    ; preds = %9397
  %9439 = fmul fast float %9408, %8970
  %9440 = call float @dx.op.unary.f32(i32 7, float %9439)  ; Saturate(value)
  %9441 = fsub fast float 2.000000e+00, %9440
  %9442 = fmul fast float %9440, 9.921875e-01
  %9443 = fmul fast float %9442, %9441
  %9444 = fadd fast float %9443, 3.906250e-03
  %9445 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %46, float %9444, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9446 = extractvalue %dx.types.ResRet.f32 %9445, 0
  %9447 = fsub fast float %9440, %9446
  %9448 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9447)  ; FMax(a,b)
  %9449 = fmul fast float %8956, %8937
  %9450 = call float @dx.op.unary.f32(i32 6, float %9449)  ; FAbs(value)
  %9451 = fcmp fast ogt float %9450, 0x3EB0C6F7A0000000
  br i1 %9451, label %9452, label %9458, !dx.controlflow.hints !160

; <label>:9452                                    ; preds = %9438
  %9453 = fmul fast float %9449, 0xBFF7154760000000
  %9454 = call float @dx.op.unary.f32(i32 21, float %9453)  ; Exp(value)
  %9455 = fsub fast float 1.000000e+00, %9454
  %9456 = fdiv fast float %9455, %9449
  %9457 = fmul fast float %9456, %8966
  br label %9458

; <label>:9458                                    ; preds = %9452, %9438
  %9459 = phi float [ %9457, %9452 ], [ %8966, %9438 ]
  %9460 = fadd fast float %9459, %8968
  %9461 = fmul fast float %9460, %9448
  %9462 = fmul fast float %8953, %9461
  %9463 = fsub fast float -0.000000e+00, %9462
  %9464 = fmul fast float %8954, %9461
  %9465 = fsub fast float -0.000000e+00, %9464
  %9466 = fmul fast float %8955, %9461
  %9467 = fsub fast float -0.000000e+00, %9466
  %9468 = call float @dx.op.unary.f32(i32 21, float %9463)  ; Exp(value)
  %9469 = call float @dx.op.unary.f32(i32 21, float %9465)  ; Exp(value)
  %9470 = call float @dx.op.unary.f32(i32 21, float %9467)  ; Exp(value)
  %9471 = fmul fast float %8982, %8982
  %9472 = fadd fast float %9471, 1.000000e+00
  %9473 = fmul fast float %9472, 0x3FAE8EC8A0000000
  %9474 = fmul fast float %9473, %8963
  %9475 = fmul fast float %9473, %8964
  %9476 = fmul fast float %9473, %8965
  %9477 = fmul fast float %8982, %8961
  %9478 = fsub fast float 1.000000e+00, %9477
  %9479 = fmul fast float %8961, %8961
  %9480 = fsub fast float 1.000000e+00, %9479
  %9481 = fmul fast float %9480, 0x3FB45F3060000000
  %9482 = fmul fast float %9478, %9478
  %9483 = fdiv fast float 1.000000e+00, %9482
  %9484 = fmul fast float %9481, %9483
  %9485 = fmul fast float %9484, %8958
  %9486 = fmul fast float %9484, %8959
  %9487 = fmul fast float %9484, %8960
  %9488 = fadd fast float %9485, %9474
  %9489 = fadd fast float %9486, %9475
  %9490 = fadd fast float %9487, %9476
  %9491 = fsub fast float 1.000000e+00, %9468
  %9492 = fsub fast float 1.000000e+00, %9469
  %9493 = fsub fast float 1.000000e+00, %9470
  %9494 = fmul fast float %9488, %9491
  %9495 = fmul fast float %9489, %9492
  %9496 = fmul fast float %9490, %9493
  br label %9497

; <label>:9497                                    ; preds = %9458, %9409
  %9498 = phi float [ %9435, %9409 ], [ %9494, %9458 ]
  %9499 = phi float [ %9436, %9409 ], [ %9495, %9458 ]
  %9500 = phi float [ %9437, %9409 ], [ %9496, %9458 ]
  %9501 = phi float [ %9424, %9409 ], [ %9468, %9458 ]
  %9502 = phi float [ %9424, %9409 ], [ %9469, %9458 ]
  %9503 = phi float [ %9424, %9409 ], [ %9470, %9458 ]
  br i1 %8990, label %9504, label %9702, !dx.controlflow.hints !161

; <label>:9504                                    ; preds = %9497
  %9505 = extractvalue %dx.types.CBufRet.f32 %9403, 0
  %9506 = fmul fast float %9505, %9405
  %9507 = fsub fast float %9400, %9498
  %9508 = fsub fast float %9401, %9499
  %9509 = fsub fast float %9402, %9500
  %9510 = fmul fast float %9506, %9507
  %9511 = fmul fast float %9506, %9508
  %9512 = fmul fast float %9506, %9509
  %9513 = fadd fast float %9510, %9498
  %9514 = fadd fast float %9511, %9499
  %9515 = fadd fast float %9512, %9500
  %9516 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9501)  ; FMax(a,b)
  %9517 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9502)  ; FMax(a,b)
  %9518 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9503)  ; FMax(a,b)
  %9519 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9399)  ; FMax(a,b)
  %9520 = call float @dx.op.binary.f32(i32 35, float %9398, float %9408)  ; FMax(a,b)
  %9521 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9520)  ; FMax(a,b)
  %9522 = fdiv fast float %9398, %9521
  %9523 = call float @dx.op.unary.f32(i32 7, float %9522)  ; Saturate(value)
  %9524 = fdiv fast float %9408, %9521
  %9525 = call float @dx.op.unary.f32(i32 7, float %9524)  ; Saturate(value)
  %9526 = fcmp fast une float %9519, 1.000000e+00
  br i1 %9526, label %9527, label %9540, !dx.controlflow.hints !162

; <label>:9527                                    ; preds = %9504
  %9528 = call float @dx.op.unary.f32(i32 23, float %9519)  ; Log(value)
  %9529 = fmul fast float %9528, 0x3FE62E4300000000
  %9530 = fmul fast float %9400, %9529
  %9531 = fsub fast float -0.000000e+00, %9530
  %9532 = fmul fast float %9401, %9529
  %9533 = fsub fast float -0.000000e+00, %9532
  %9534 = fmul fast float %9402, %9529
  %9535 = fsub fast float -0.000000e+00, %9534
  %9536 = fsub fast float 1.000000e+00, %9519
  %9537 = fdiv fast float %9531, %9536
  %9538 = fdiv fast float %9533, %9536
  %9539 = fdiv fast float %9535, %9536
  br label %9540

; <label>:9540                                    ; preds = %9527, %9504
  %9541 = phi float [ %9537, %9527 ], [ %9400, %9504 ]
  %9542 = phi float [ %9538, %9527 ], [ %9401, %9504 ]
  %9543 = phi float [ %9539, %9527 ], [ %9402, %9504 ]
  %9544 = phi float [ %9529, %9527 ], [ 0.000000e+00, %9504 ]
  %9545 = fcmp fast une float %9516, 1.000000e+00
  br i1 %9545, label %9546, label %9553, !dx.controlflow.hints !163

; <label>:9546                                    ; preds = %9540
  %9547 = call float @dx.op.unary.f32(i32 23, float %9516)  ; Log(value)
  %9548 = fmul fast float %9547, 0x3FE62E4300000000
  %9549 = fmul fast float %9513, %9548
  %9550 = fsub fast float -0.000000e+00, %9549
  %9551 = fsub fast float 1.000000e+00, %9516
  %9552 = fdiv fast float %9550, %9551
  br label %9553

; <label>:9553                                    ; preds = %9546, %9540
  %9554 = phi float [ %9552, %9546 ], [ %9513, %9540 ]
  %9555 = phi float [ %9548, %9546 ], [ 0.000000e+00, %9540 ]
  %9556 = fcmp fast une float %9517, 1.000000e+00
  br i1 %9556, label %9557, label %9564, !dx.controlflow.hints !163

; <label>:9557                                    ; preds = %9553
  %9558 = call float @dx.op.unary.f32(i32 23, float %9517)  ; Log(value)
  %9559 = fmul fast float %9558, 0x3FE62E4300000000
  %9560 = fmul fast float %9514, %9559
  %9561 = fsub fast float -0.000000e+00, %9560
  %9562 = fsub fast float 1.000000e+00, %9517
  %9563 = fdiv fast float %9561, %9562
  br label %9564

; <label>:9564                                    ; preds = %9557, %9553
  %9565 = phi float [ %9563, %9557 ], [ %9514, %9553 ]
  %9566 = phi float [ %9559, %9557 ], [ 0.000000e+00, %9553 ]
  %9567 = fcmp fast une float %9518, 1.000000e+00
  br i1 %9567, label %9568, label %9575, !dx.controlflow.hints !163

; <label>:9568                                    ; preds = %9564
  %9569 = call float @dx.op.unary.f32(i32 23, float %9518)  ; Log(value)
  %9570 = fmul fast float %9569, 0x3FE62E4300000000
  %9571 = fmul fast float %9515, %9570
  %9572 = fsub fast float -0.000000e+00, %9571
  %9573 = fsub fast float 1.000000e+00, %9518
  %9574 = fdiv fast float %9572, %9573
  br label %9575

; <label>:9575                                    ; preds = %9568, %9564
  %9576 = phi float [ %9574, %9568 ], [ %9515, %9564 ]
  %9577 = phi float [ %9570, %9568 ], [ 0.000000e+00, %9564 ]
  %9578 = fmul fast float %9541, %9525
  %9579 = fmul fast float %9542, %9525
  %9580 = fmul fast float %9543, %9525
  %9581 = fmul fast float %9544, %9525
  %9582 = fmul fast float %9554, %9523
  %9583 = fmul fast float %9565, %9523
  %9584 = fmul fast float %9576, %9523
  %9585 = fmul fast float %9555, %9523
  %9586 = fmul fast float %9566, %9523
  %9587 = fmul fast float %9577, %9523
  %9588 = fadd fast float %9582, %9578
  %9589 = fadd fast float %9583, %9579
  %9590 = fadd fast float %9584, %9580
  %9591 = fadd fast float %9585, %9581
  %9592 = fadd fast float %9586, %9581
  %9593 = fadd fast float %9587, %9581
  %9594 = fcmp fast une float %9591, 0.000000e+00
  br i1 %9594, label %9595, label %9602, !dx.controlflow.hints !164

; <label>:9595                                    ; preds = %9575
  %9596 = fmul fast float %9591, 0x3FF7154760000000
  %9597 = call float @dx.op.unary.f32(i32 21, float %9596)  ; Exp(value)
  %9598 = fsub fast float 1.000000e+00, %9597
  %9599 = fmul fast float %9588, %9598
  %9600 = fsub fast float -0.000000e+00, %9599
  %9601 = fdiv fast float %9600, %9591
  br label %9602

; <label>:9602                                    ; preds = %9595, %9575
  %9603 = phi float [ %9597, %9595 ], [ 1.000000e+00, %9575 ]
  %9604 = phi float [ %9601, %9595 ], [ %9588, %9575 ]
  %9605 = fcmp fast une float %9592, 0.000000e+00
  br i1 %9605, label %9606, label %9613, !dx.controlflow.hints !164

; <label>:9606                                    ; preds = %9602
  %9607 = fmul fast float %9592, 0x3FF7154760000000
  %9608 = call float @dx.op.unary.f32(i32 21, float %9607)  ; Exp(value)
  %9609 = fsub fast float 1.000000e+00, %9608
  %9610 = fmul fast float %9589, %9609
  %9611 = fsub fast float -0.000000e+00, %9610
  %9612 = fdiv fast float %9611, %9592
  br label %9613

; <label>:9613                                    ; preds = %9606, %9602
  %9614 = phi float [ %9608, %9606 ], [ 1.000000e+00, %9602 ]
  %9615 = phi float [ %9612, %9606 ], [ %9589, %9602 ]
  %9616 = fcmp fast une float %9593, 0.000000e+00
  br i1 %9616, label %9617, label %9624, !dx.controlflow.hints !164

; <label>:9617                                    ; preds = %9613
  %9618 = fmul fast float %9593, 0x3FF7154760000000
  %9619 = call float @dx.op.unary.f32(i32 21, float %9618)  ; Exp(value)
  %9620 = fsub fast float 1.000000e+00, %9619
  %9621 = fmul fast float %9590, %9620
  %9622 = fsub fast float -0.000000e+00, %9621
  %9623 = fdiv fast float %9622, %9593
  br label %9624

; <label>:9624                                    ; preds = %9617, %9613
  %9625 = phi float [ %9619, %9617 ], [ 1.000000e+00, %9613 ]
  %9626 = phi float [ %9623, %9617 ], [ %9590, %9613 ]
  %9627 = fcmp fast ogt float %9523, %9525
  br i1 %9627, label %9628, label %9648

; <label>:9628                                    ; preds = %9624
  %9629 = fsub fast float 1.000000e+00, %9525
  %9630 = fmul fast float %9541, %9629
  %9631 = fmul fast float %9542, %9629
  %9632 = fmul fast float %9543, %9629
  %9633 = fmul fast float %9544, %9629
  %9634 = fcmp fast une float %9633, 0.000000e+00
  br i1 %9634, label %9635, label %9686, !dx.controlflow.hints !165

; <label>:9635                                    ; preds = %9628
  %9636 = fmul fast float %9633, 0x3FF7154760000000
  %9637 = call float @dx.op.unary.f32(i32 21, float %9636)  ; Exp(value)
  %9638 = fsub fast float 1.000000e+00, %9637
  %9639 = fmul fast float %9630, %9638
  %9640 = fsub fast float -0.000000e+00, %9639
  %9641 = fmul fast float %9631, %9638
  %9642 = fsub fast float -0.000000e+00, %9641
  %9643 = fmul fast float %9632, %9638
  %9644 = fsub fast float -0.000000e+00, %9643
  %9645 = fdiv fast float %9640, %9633
  %9646 = fdiv fast float %9642, %9633
  %9647 = fdiv fast float %9644, %9633
  br label %9686

; <label>:9648                                    ; preds = %9624
  %9649 = fsub fast float 1.000000e+00, %9523
  %9650 = fmul fast float %9554, %9649
  %9651 = fmul fast float %9565, %9649
  %9652 = fmul fast float %9576, %9649
  %9653 = fmul fast float %9555, %9649
  %9654 = fmul fast float %9566, %9649
  %9655 = fmul fast float %9577, %9649
  %9656 = fcmp fast une float %9653, 0.000000e+00
  br i1 %9656, label %9657, label %9664, !dx.controlflow.hints !164

; <label>:9657                                    ; preds = %9648
  %9658 = fmul fast float %9653, 0x3FF7154760000000
  %9659 = call float @dx.op.unary.f32(i32 21, float %9658)  ; Exp(value)
  %9660 = fsub fast float 1.000000e+00, %9659
  %9661 = fmul fast float %9650, %9660
  %9662 = fsub fast float -0.000000e+00, %9661
  %9663 = fdiv fast float %9662, %9653
  br label %9664

; <label>:9664                                    ; preds = %9657, %9648
  %9665 = phi float [ %9663, %9657 ], [ %9650, %9648 ]
  %9666 = phi float [ %9659, %9657 ], [ 1.000000e+00, %9648 ]
  %9667 = fcmp fast une float %9654, 0.000000e+00
  br i1 %9667, label %9668, label %9675, !dx.controlflow.hints !164

; <label>:9668                                    ; preds = %9664
  %9669 = fmul fast float %9654, 0x3FF7154760000000
  %9670 = call float @dx.op.unary.f32(i32 21, float %9669)  ; Exp(value)
  %9671 = fsub fast float 1.000000e+00, %9670
  %9672 = fmul fast float %9651, %9671
  %9673 = fsub fast float -0.000000e+00, %9672
  %9674 = fdiv fast float %9673, %9654
  br label %9675

; <label>:9675                                    ; preds = %9668, %9664
  %9676 = phi float [ %9674, %9668 ], [ %9651, %9664 ]
  %9677 = phi float [ %9670, %9668 ], [ 1.000000e+00, %9664 ]
  %9678 = fcmp fast une float %9655, 0.000000e+00
  br i1 %9678, label %9679, label %9686, !dx.controlflow.hints !164

; <label>:9679                                    ; preds = %9675
  %9680 = fmul fast float %9655, 0x3FF7154760000000
  %9681 = call float @dx.op.unary.f32(i32 21, float %9680)  ; Exp(value)
  %9682 = fsub fast float 1.000000e+00, %9681
  %9683 = fmul fast float %9652, %9682
  %9684 = fsub fast float -0.000000e+00, %9683
  %9685 = fdiv fast float %9684, %9655
  br label %9686

; <label>:9686                                    ; preds = %9679, %9675, %9635, %9628
  %9687 = phi float [ %9685, %9679 ], [ %9647, %9635 ], [ %9632, %9628 ], [ %9652, %9675 ]
  %9688 = phi float [ %9676, %9679 ], [ %9646, %9635 ], [ %9631, %9628 ], [ %9676, %9675 ]
  %9689 = phi float [ %9665, %9679 ], [ %9645, %9635 ], [ %9630, %9628 ], [ %9665, %9675 ]
  %9690 = phi float [ %9681, %9679 ], [ %9637, %9635 ], [ 1.000000e+00, %9628 ], [ 1.000000e+00, %9675 ]
  %9691 = phi float [ %9677, %9679 ], [ %9637, %9635 ], [ 1.000000e+00, %9628 ], [ %9677, %9675 ]
  %9692 = phi float [ %9666, %9679 ], [ %9637, %9635 ], [ 1.000000e+00, %9628 ], [ %9666, %9675 ]
  %9693 = fmul fast float %9692, %9604
  %9694 = fmul fast float %9691, %9615
  %9695 = fmul fast float %9690, %9626
  %9696 = fadd fast float %9693, %9689
  %9697 = fadd fast float %9694, %9688
  %9698 = fadd fast float %9695, %9687
  %9699 = fmul fast float %9692, %9603
  %9700 = fmul fast float %9691, %9614
  %9701 = fmul fast float %9690, %9625
  br label %9702

; <label>:9702                                    ; preds = %9686, %9497
  %9703 = phi float [ %9701, %9686 ], [ %9503, %9497 ]
  %9704 = phi float [ %9700, %9686 ], [ %9502, %9497 ]
  %9705 = phi float [ %9699, %9686 ], [ %9501, %9497 ]
  %9706 = phi float [ %9698, %9686 ], [ %9500, %9497 ]
  %9707 = phi float [ %9697, %9686 ], [ %9499, %9497 ]
  %9708 = phi float [ %9696, %9686 ], [ %9498, %9497 ]
  %9709 = fmul fast float %9708, %8654
  %9710 = fmul fast float %9707, %8654
  %9711 = fmul fast float %9706, %8654
  %9712 = fmul fast float %9705, %8945
  %9713 = call float @dx.op.dot3.f32(i32 55, float %9705, float %9704, float %9703, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9714 = call float @dx.op.dot3.f32(i32 55, float %9709, float %9710, float %9711, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9715 = select i1 %228, float %9713, float %9705
  %9716 = select i1 %228, float %9713, float %9704
  %9717 = select i1 %228, float 1.000000e+00, float %9703
  %9718 = select i1 %228, float %9714, float %9709
  %9719 = select i1 %228, float 0.000000e+00, float %9710
  %9720 = select i1 %228, float 0.000000e+00, float %9711
  %9721 = fmul fast float %9715, %8939
  %9722 = fmul fast float %9716, %8940
  %9723 = fmul fast float %9717, %8941
  %9724 = fadd fast float %9721, %9718
  %9725 = fadd fast float %9722, %9719
  %9726 = fadd fast float %9720, %9723
  %9727 = fmul fast float %9715, %8942
  %9728 = fmul fast float %9716, %8943
  %9729 = fmul fast float %9717, %8944
  %9730 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9731 = extractvalue %dx.types.CBufRet.i32 %9730, 0
  %9732 = icmp eq i32 %9731, 0
  br i1 %9732, label %10100, label %9733, !dx.controlflow.hints !166

; <label>:9733                                    ; preds = %9702
  %9734 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %9735 = extractvalue %dx.types.CBufRet.f32 %9734, 2
  %9736 = extractvalue %dx.types.CBufRet.f32 %9734, 3
  %9737 = fmul fast float %9735, %104
  %9738 = fmul fast float %9736, %105
  %9739 = fmul fast float %9737, 2.000000e+00
  %9740 = fmul fast float %9738, 2.000000e+00
  %9741 = fsub fast float 1.000000e+00, %9739
  %9742 = fsub fast float 1.000000e+00, %9740
  %9743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9744 = extractvalue %dx.types.CBufRet.f32 %9743, 0
  %9745 = extractvalue %dx.types.CBufRet.f32 %9743, 1
  %9746 = extractvalue %dx.types.CBufRet.f32 %9743, 2
  %9747 = fmul fast float %9741, %9744
  %9748 = fmul fast float %9741, %9745
  %9749 = fmul fast float %9741, %9746
  %9750 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9751 = extractvalue %dx.types.CBufRet.f32 %9750, 0
  %9752 = extractvalue %dx.types.CBufRet.f32 %9750, 1
  %9753 = extractvalue %dx.types.CBufRet.f32 %9750, 2
  %9754 = fmul fast float %9742, %9751
  %9755 = fmul fast float %9742, %9752
  %9756 = fmul fast float %9742, %9753
  %9757 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9758 = extractvalue %dx.types.CBufRet.f32 %9757, 0
  %9759 = extractvalue %dx.types.CBufRet.f32 %9757, 1
  %9760 = extractvalue %dx.types.CBufRet.f32 %9757, 2
  %9761 = fadd fast float %9754, %9758
  %9762 = fadd fast float %9761, %9747
  %9763 = fadd fast float %9755, %9759
  %9764 = fadd fast float %9763, %9748
  %9765 = fadd fast float %9756, %9760
  %9766 = fadd fast float %9765, %9749
  %9767 = fmul fast float %9762, %8938
  %9768 = fmul fast float %9764, %8938
  %9769 = fmul fast float %9766, %8938
  %9770 = fmul fast float %9767, %9767
  %9771 = fmul fast float %9768, %9768
  %9772 = fadd fast float %9770, %9771
  %9773 = fmul fast float %9769, %9769
  %9774 = fadd fast float %9772, %9773
  %9775 = call float @dx.op.unary.f32(i32 24, float %9774)  ; Sqrt(value)
  %9776 = extractvalue %dx.types.CBufRet.f32 %8665, 0
  %9777 = fsub fast float %9775, %9776
  %9778 = extractvalue %dx.types.CBufRet.f32 %8665, 2
  %9779 = fmul fast float %9777, %9778
  %9780 = call float @dx.op.unary.f32(i32 7, float %9779)  ; Saturate(value)
  %9781 = fadd fast float %9780, -5.000000e-01
  %9782 = fmul fast float %9781, 2.000000e+00
  %9783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9784 = extractvalue %dx.types.CBufRet.f32 %9783, 2
  %9785 = call float @dx.op.binary.f32(i32 36, float %9784, float %9782)  ; FMin(a,b)
  %9786 = fsub fast float -0.000000e+00, %9784
  %9787 = fcmp fast ogt float %9785, %9786
  br i1 %9787, label %9788, label %10100, !dx.controlflow.hints !167

; <label>:9788                                    ; preds = %9733
  %9789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9790 = extractvalue %dx.types.CBufRet.f32 %9789, 3
  %9791 = fcmp fast ogt float %9790, 0.000000e+00
  br i1 %9791, label %9792, label %9867, !dx.controlflow.hints !168

; <label>:9792                                    ; preds = %9788
  %9793 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %28, i32 0)  ; GetDimensions(handle,mipLevel)
  %9794 = extractvalue %dx.types.Dimensions %9793, 0
  %9795 = sitofp i32 %9794 to float
  %9796 = extractvalue %dx.types.Dimensions %9793, 1
  %9797 = sitofp i32 %9796 to float
  %9798 = fmul fast float %9737, %9795
  %9799 = fmul fast float %9738, %9797
  %9800 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9801 = extractvalue %dx.types.CBufRet.f32 %9800, 1
  %9802 = fsub fast float -0.000000e+00, %9801
  %9803 = fptoui float %9802 to i32
  %9804 = fptoui float %9798 to i32
  %9805 = fptoui float %9799 to i32
  %9806 = and i32 %9803, 31
  %9807 = lshr i32 %9804, %9806
  %9808 = lshr i32 %9805, %9806
  %9809 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %28, i32 %9803, i32 %9807, i32 %9808, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9810 = extractvalue %dx.types.ResRet.f32 %9809, 0
  %9811 = fcmp fast olt float %9810, -1.000000e+00
  %9812 = fcmp fast ogt float %9810, -1.000000e+00
  %9813 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9814 = extractvalue %dx.types.CBufRet.f32 %9813, 1
  %9815 = select i1 %9812, float %9814, float 1.000000e+00
  %9816 = fadd fast float %9810, 1.000000e+00
  %9817 = fmul fast float %9815, %9816
  %9818 = call float @dx.op.unary.f32(i32 6, float %9817)  ; FAbs(value)
  %9819 = extractvalue %dx.types.CBufRet.f32 %9813, 3
  %9820 = fcmp fast oge float %9818, %9819
  %9821 = select i1 %9820, float 0x4197782600000000, float %9818
  %9822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9823 = extractvalue %dx.types.CBufRet.f32 %9822, 0
  %9824 = extractvalue %dx.types.CBufRet.f32 %9822, 1
  %9825 = extractvalue %dx.types.CBufRet.f32 %9822, 2
  %9826 = select i1 %9811, float %9823, float %9744
  %9827 = select i1 %9811, float %9824, float %9745
  %9828 = select i1 %9811, float %9825, float %9746
  %9829 = fmul fast float %9826, %9741
  %9830 = fmul fast float %9827, %9741
  %9831 = fmul fast float %9828, %9741
  %9832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9833 = extractvalue %dx.types.CBufRet.f32 %9832, 0
  %9834 = extractvalue %dx.types.CBufRet.f32 %9832, 1
  %9835 = extractvalue %dx.types.CBufRet.f32 %9832, 2
  %9836 = select i1 %9811, float %9833, float %9751
  %9837 = select i1 %9811, float %9834, float %9752
  %9838 = select i1 %9811, float %9835, float %9753
  %9839 = fmul fast float %9836, %9742
  %9840 = fmul fast float %9837, %9742
  %9841 = fmul fast float %9838, %9742
  %9842 = fadd fast float %9839, %9829
  %9843 = fadd fast float %9840, %9830
  %9844 = fadd fast float %9841, %9831
  %9845 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9846 = extractvalue %dx.types.CBufRet.f32 %9845, 0
  %9847 = extractvalue %dx.types.CBufRet.f32 %9845, 1
  %9848 = extractvalue %dx.types.CBufRet.f32 %9845, 2
  %9849 = select i1 %9811, float %9846, float %9758
  %9850 = select i1 %9811, float %9847, float %9759
  %9851 = select i1 %9811, float %9848, float %9760
  %9852 = fadd fast float %9842, %9849
  %9853 = fadd fast float %9843, %9850
  %9854 = fadd fast float %9844, %9851
  %9855 = fmul fast float %9852, %9821
  %9856 = fmul fast float %9853, %9821
  %9857 = fmul fast float %9854, %9821
  %9858 = fmul fast float %9855, %9855
  %9859 = fmul fast float %9856, %9856
  %9860 = fadd fast float %9858, %9859
  %9861 = fmul fast float %9857, %9857
  %9862 = fadd fast float %9860, %9861
  %9863 = call float @dx.op.unary.f32(i32 24, float %9862)  ; Sqrt(value)
  %9864 = fsub fast float %9863, %9776
  %9865 = fmul fast float %9864, %9778
  %9866 = call float @dx.op.unary.f32(i32 7, float %9865)  ; Saturate(value)
  br label %9867

; <label>:9867                                    ; preds = %9792, %9788
  %9868 = phi float [ %9866, %9792 ], [ 1.000000e+00, %9788 ]
  %9869 = fmul fast float %9785, 5.000000e-01
  %9870 = fadd fast float %9869, 5.000000e-01
  %9871 = call float @dx.op.unary.f32(i32 22, float %9870)  ; Frc(value)
  %9872 = call float @dx.op.unary.f32(i32 27, float %9871)  ; Round_ni(value)
  %9873 = call float @dx.op.unary.f32(i32 22, float %9871)  ; Frc(value)
  %9874 = fmul fast float %9873, 2.000000e+00
  %9875 = fadd fast float %9874, -1.000000e+00
  %9876 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %46, float %9737, float %9738, float %9872, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9877 = extractvalue %dx.types.ResRet.f32 %9876, 0
  %9878 = extractvalue %dx.types.ResRet.f32 %9876, 1
  %9879 = extractvalue %dx.types.ResRet.f32 %9876, 2
  %9880 = extractvalue %dx.types.ResRet.f32 %9876, 3
  %9881 = fadd fast float %9877, -5.000000e-01
  %9882 = fadd fast float %9879, -5.000000e-01
  %9883 = fmul fast float %9881, 0xBFD5555560000000
  %9884 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9882, float %9883)  ; FMad(a,b,c)
  %9885 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9878, float 0.000000e+00)  ; FMad(a,b,c)
  %9886 = fadd fast float %9885, %9880
  %9887 = fmul fast float %9881, -7.500000e-01
  %9888 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9882, float %9887)  ; FMad(a,b,c)
  %9889 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9878, float 0.000000e+00)  ; FMad(a,b,c)
  %9890 = fadd fast float %9889, %9880
  %9891 = call float @dx.op.binary.f32(i32 35, float %9884, float -1.000000e+00)  ; FMax(a,b)
  %9892 = call float @dx.op.binary.f32(i32 35, float %9886, float -1.000000e+00)  ; FMax(a,b)
  %9893 = call float @dx.op.binary.f32(i32 35, float %9888, float -1.000000e+00)  ; FMax(a,b)
  %9894 = call float @dx.op.binary.f32(i32 35, float %9890, float -1.000000e+00)  ; FMax(a,b)
  %9895 = call float @dx.op.binary.f32(i32 36, float %9891, float 1.000000e+00)  ; FMin(a,b)
  %9896 = call float @dx.op.binary.f32(i32 36, float %9892, float 1.000000e+00)  ; FMin(a,b)
  %9897 = call float @dx.op.binary.f32(i32 36, float %9893, float 1.000000e+00)  ; FMin(a,b)
  %9898 = call float @dx.op.binary.f32(i32 36, float %9894, float 1.000000e+00)  ; FMin(a,b)
  %9899 = fcmp fast olt float %9895, 0x3FEFFF8020000000
  br i1 %9899, label %9900, label %10015, !dx.controlflow.hints !169

; <label>:9900                                    ; preds = %9867
  %9901 = extractvalue %dx.types.CBufRet.f32 %9783, 3
  %9902 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9903 = extractvalue %dx.types.CBufRet.f32 %9902, 0
  %9904 = extractvalue %dx.types.CBufRet.f32 %9902, 1
  %9905 = extractvalue %dx.types.CBufRet.f32 %9902, 2
  %9906 = extractvalue %dx.types.CBufRet.f32 %9902, 3
  %9907 = fsub fast float %9903, %9895
  %9908 = fsub fast float %9904, %9896
  %9909 = fsub fast float %9905, %9897
  %9910 = fsub fast float %9906, %9898
  %9911 = fmul fast float %9907, %9901
  %9912 = fmul fast float %9908, %9901
  %9913 = fmul fast float %9909, %9901
  %9914 = fmul fast float %9910, %9901
  %9915 = fadd fast float %9911, %9895
  %9916 = fadd fast float %9912, %9896
  %9917 = fsub fast float -0.000000e+00, %9916
  %9918 = fadd fast float %9913, %9897
  %9919 = fadd fast float %9914, %9898
  %9920 = fmul fast float %9915, %9915
  %9921 = fsub fast float %9916, %9920
  %9922 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9921)  ; FMax(a,b)
  %9923 = fdiv fast float 1.000000e+00, %9922
  %9924 = fmul fast float %9916, %9915
  %9925 = fsub fast float %9918, %9924
  %9926 = fsub fast float %9875, %9915
  %9927 = fmul fast float %9875, %9875
  %9928 = fsub fast float %9927, %9916
  %9929 = fmul fast float %9926, %9923
  %9930 = fmul fast float %9929, %9925
  %9931 = fsub fast float %9928, %9930
  %9932 = fmul fast float %9916, %9916
  %9933 = fsub fast float %9919, %9932
  %9934 = fmul fast float %9925, %9925
  %9935 = fmul fast float %9934, %9923
  %9936 = fsub fast float %9933, %9935
  %9937 = fdiv fast float %9931, %9936
  %9938 = fmul fast float %9925, %9937
  %9939 = fsub fast float %9926, %9938
  %9940 = fmul fast float %9939, %9923
  %9941 = fmul fast float %9940, %9915
  %9942 = fsub fast float 1.000000e+00, %9941
  %9943 = fmul fast float %9916, %9937
  %9944 = fsub fast float %9942, %9943
  %9945 = fmul fast float %9940, %9940
  %9946 = fmul fast float %9937, 4.000000e+00
  %9947 = fmul fast float %9946, %9944
  %9948 = fsub fast float %9945, %9947
  %9949 = call float @dx.op.unary.f32(i32 24, float %9948)  ; Sqrt(value)
  %9950 = fcmp fast oge float %9940, 0.000000e+00
  %9951 = fsub fast float -0.000000e+00, %9949
  %9952 = select i1 %9950, float %9951, float %9949
  %9953 = fsub fast float %9952, %9940
  %9954 = fdiv fast float %9953, %9937
  %9955 = fdiv fast float %9944, %9953
  %9956 = fmul fast float %9954, 5.000000e-01
  %9957 = fmul fast float %9955, 2.000000e+00
  %9958 = select i1 %9950, float %9956, float %9957
  %9959 = select i1 %9950, float %9957, float %9956
  %9960 = call float @dx.op.binary.f32(i32 35, float %9958, float %9959)  ; FMax(a,b)
  %9961 = call float @dx.op.binary.f32(i32 36, float %9958, float %9959)  ; FMin(a,b)
  %9962 = fcmp fast ogt float %9875, %9961
  br i1 %9962, label %9963, label %9973

; <label>:9963                                    ; preds = %9900
  %9964 = fsub fast float %9875, %9961
  %9965 = fsub fast float %9960, %9961
  %9966 = fmul fast float %9964, %9965
  %9967 = fmul fast float %9960, %9875
  %9968 = fadd fast float %9960, %9875
  %9969 = fmul fast float %9968, %9915
  %9970 = fadd fast float %9967, %9916
  %9971 = fsub fast float %9970, %9969
  %9972 = fdiv fast float %9971, %9966
  br label %9973

; <label>:9973                                    ; preds = %9963, %9900
  %9974 = phi float [ %9972, %9963 ], [ 0.000000e+00, %9900 ]
  %9975 = fcmp fast ogt float %9875, %9960
  %9976 = fsub fast float %9875, %9960
  br i1 %9975, label %9977, label %9987

; <label>:9977                                    ; preds = %9973
  %9978 = fsub fast float %9960, %9961
  %9979 = fmul fast float %9978, %9976
  %9980 = fmul fast float %9961, %9875
  %9981 = fadd fast float %9961, %9875
  %9982 = fmul fast float %9981, %9915
  %9983 = fsub fast float %9917, %9980
  %9984 = fadd fast float %9983, %9982
  %9985 = fdiv fast float %9984, %9979
  %9986 = fadd fast float %9985, %9974
  br label %9987

; <label>:9987                                    ; preds = %9977, %9973
  %9988 = phi float [ %9986, %9977 ], [ %9974, %9973 ]
  %9989 = fsub fast float %9875, %9961
  %9990 = fmul fast float %9989, %9976
  %9991 = fmul fast float %9961, %9960
  %9992 = fadd fast float %9961, %9960
  %9993 = fmul fast float %9992, %9915
  %9994 = fadd fast float %9991, %9916
  %9995 = fsub fast float %9994, %9993
  %9996 = fdiv fast float %9995, %9990
  %9997 = call float @dx.op.unary.f32(i32 7, float %9988)  ; Saturate(value)
  %9998 = fcmp fast oeq float %8666, 0.000000e+00
  %9999 = extractvalue %dx.types.CBufRet.f32 %9783, 0
  %10000 = fcmp fast oeq float %9999, 0.000000e+00
  %10001 = or i1 %9998, %10000
  %10002 = fmul fast float %9999, 2.000000e+00
  %10003 = fadd fast float %9784, %9785
  %10004 = fdiv fast float %10003, %10002
  %10005 = call float @dx.op.unary.f32(i32 7, float %10004)  ; Saturate(value)
  %10006 = fmul fast float %10005, 2.000000e+00
  %10007 = fsub fast float 3.000000e+00, %10006
  %10008 = fmul fast float %10005, %10005
  %10009 = fmul fast float %10008, %10007
  %10010 = select i1 %10001, float 1.000000e+00, float %10009
  %10011 = fmul fast float %9996, %8666
  %10012 = fadd fast float %9997, %10011
  %10013 = call float @dx.op.unary.f32(i32 7, float %10012)  ; Saturate(value)
  %10014 = fmul fast float %10010, %10013
  br label %10015

; <label>:10015                                   ; preds = %9987, %9867
  %10016 = phi float [ %10014, %9987 ], [ 0.000000e+00, %9867 ]
  %10017 = fsub fast float 1.000000e+00, %10016
  %10018 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %46, float %9737, float %9738, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10019 = extractvalue %dx.types.ResRet.f32 %10018, 0
  %10020 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %10021 = extractvalue %dx.types.CBufRet.i32 %10020, 2
  %10022 = icmp eq i32 %10021, 0
  br i1 %10022, label %10028, label %10023

; <label>:10023                                   ; preds = %10015
  %10024 = call float @dx.op.unary.f32(i32 7, float %10016)  ; Saturate(value)
  %10025 = fadd fast float %10019, -1.000000e+00
  %10026 = fmul fast float %10024, %10025
  %10027 = fadd fast float %10026, 1.000000e+00
  br label %10028

; <label>:10028                                   ; preds = %10023, %10015
  %10029 = phi float [ %10027, %10023 ], [ %10017, %10015 ]
  br i1 %9791, label %10030, label %10048

; <label>:10030                                   ; preds = %10028
  %10031 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %10032 = extractvalue %dx.types.CBufRet.f32 %10031, 1
  %10033 = fsub fast float %9868, %10032
  %10034 = call float @dx.op.unary.f32(i32 7, float %10033)  ; Saturate(value)
  %10035 = fsub fast float %9868, %9790
  %10036 = call float @dx.op.unary.f32(i32 7, float %10035)  ; Saturate(value)
  %10037 = fsub fast float %10034, %10036
  %10038 = fsub fast float %9870, %10036
  %10039 = fdiv fast float %10038, %10037
  %10040 = call float @dx.op.unary.f32(i32 7, float %10039)  ; Saturate(value)
  %10041 = fmul fast float %10040, 2.000000e+00
  %10042 = fsub fast float 3.000000e+00, %10041
  %10043 = fsub fast float %10019, %10029
  %10044 = fmul fast float %10040, %10040
  %10045 = fmul fast float %10044, %10043
  %10046 = fmul fast float %10045, %10042
  %10047 = fadd fast float %10046, %10029
  br label %10048

; <label>:10048                                   ; preds = %10030, %10028
  %10049 = phi float [ %10047, %10030 ], [ %10029, %10028 ]
  %10050 = call float @dx.op.binary.f32(i32 35, float %10019, float %10049)  ; FMax(a,b)
  %10051 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %10052 = extractvalue %dx.types.CBufRet.i32 %10051, 2
  %10053 = and i32 %10052, 1
  %10054 = icmp eq i32 %10053, 0
  %10055 = fcmp fast une float %10050, 1.000000e+00
  %10056 = and i1 %10055, %10054
  br i1 %10056, label %10057, label %10076

; <label>:10057                                   ; preds = %10048
  %10058 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %46, float %9737, float %9738, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10059 = extractvalue %dx.types.ResRet.f32 %10058, 0
  %10060 = extractvalue %dx.types.ResRet.f32 %10058, 1
  %10061 = extractvalue %dx.types.ResRet.f32 %10058, 2
  %10062 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10063 = extractvalue %dx.types.CBufRet.f32 %10062, 1
  %10064 = fmul fast float %10063, %10059
  %10065 = fmul fast float %10063, %10060
  %10066 = fmul fast float %10063, %10061
  %10067 = fcmp fast ogt float %10019, 0x3FEFFF2E40000000
  %10068 = fsub fast float 1.000000e+00, %10050
  %10069 = fsub fast float 1.000000e+00, %10019
  %10070 = fdiv fast float %10068, %10069
  %10071 = call float @dx.op.unary.f32(i32 7, float %10070)  ; Saturate(value)
  %10072 = select i1 %10067, float 0.000000e+00, float %10071
  %10073 = fmul fast float %10064, %10072
  %10074 = fmul fast float %10065, %10072
  %10075 = fmul fast float %10066, %10072
  br label %10076

; <label>:10076                                   ; preds = %10057, %10048
  %10077 = phi float [ 0.000000e+00, %10048 ], [ %10073, %10057 ]
  %10078 = phi float [ 0.000000e+00, %10048 ], [ %10074, %10057 ]
  %10079 = phi float [ 0.000000e+00, %10048 ], [ %10075, %10057 ]
  %10080 = fmul fast float %10077, %8654
  %10081 = fmul fast float %10078, %8654
  %10082 = fmul fast float %10079, %8654
  %10083 = fmul fast float %10050, %9712
  %10084 = call float @dx.op.dot3.f32(i32 55, float %10050, float %10050, float %10050, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10085 = call float @dx.op.dot3.f32(i32 55, float %10080, float %10081, float %10082, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10086 = select i1 %228, float %10084, float %10050
  %10087 = select i1 %228, float 1.000000e+00, float %10050
  %10088 = select i1 %228, float %10085, float %10080
  %10089 = select i1 %228, float 0.000000e+00, float %10081
  %10090 = select i1 %228, float 0.000000e+00, float %10082
  %10091 = fmul fast float %10086, %9724
  %10092 = fmul fast float %10086, %9725
  %10093 = fmul fast float %10087, %9726
  %10094 = fadd fast float %10091, %10088
  %10095 = fadd fast float %10092, %10089
  %10096 = fadd fast float %10090, %10093
  %10097 = fmul fast float %10086, %9727
  %10098 = fmul fast float %10086, %9728
  %10099 = fmul fast float %10087, %9729
  br label %10100

; <label>:10100                                   ; preds = %10076, %9733, %9702, %8934
  %10101 = phi float [ %8939, %8934 ], [ %9724, %9702 ], [ %10094, %10076 ], [ %9724, %9733 ]
  %10102 = phi float [ %8940, %8934 ], [ %9725, %9702 ], [ %10095, %10076 ], [ %9725, %9733 ]
  %10103 = phi float [ %8941, %8934 ], [ %9726, %9702 ], [ %10096, %10076 ], [ %9726, %9733 ]
  %10104 = phi float [ %8942, %8934 ], [ %9727, %9702 ], [ %10097, %10076 ], [ %9727, %9733 ]
  %10105 = phi float [ %8943, %8934 ], [ %9728, %9702 ], [ %10098, %10076 ], [ %9728, %9733 ]
  %10106 = phi float [ %8944, %8934 ], [ %9729, %9702 ], [ %10099, %10076 ], [ %9729, %9733 ]
  %10107 = phi float [ %8945, %8934 ], [ %9712, %9702 ], [ %10083, %10076 ], [ %9712, %9733 ]
  %10108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %10109 = extractvalue %dx.types.CBufRet.f32 %10108, 2
  %10110 = extractvalue %dx.types.CBufRet.f32 %10108, 3
  %10111 = fmul fast float %10109, %104
  %10112 = fmul fast float %10110, %105
  %10113 = call float @dx.op.unary.f32(i32 7, float %10111)  ; Saturate(value)
  %10114 = call float @dx.op.unary.f32(i32 7, float %10112)  ; Saturate(value)
  %10115 = select i1 %8676, i32 2, i32 0
  %10116 = or i32 %10115, 1
  %10117 = uitofp i32 %10116 to float
  %10118 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %46, float %10113, float %10114, float %10117, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10119 = extractvalue %dx.types.ResRet.f32 %10118, 0
  %10120 = extractvalue %dx.types.ResRet.f32 %10118, 1
  %10121 = extractvalue %dx.types.ResRet.f32 %10118, 2
  %10122 = extractvalue %dx.types.ResRet.f32 %10118, 3
  %10123 = add nuw nsw i32 %10115, 2
  %10124 = uitofp i32 %10123 to float
  %10125 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %46, float %10113, float %10114, float %10124, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10126 = extractvalue %dx.types.ResRet.f32 %10125, 0
  %10127 = extractvalue %dx.types.ResRet.f32 %10125, 1
  %10128 = extractvalue %dx.types.ResRet.f32 %10125, 2
  %10129 = extractvalue %dx.types.ResRet.f32 %10125, 3
  %10130 = call float @dx.op.binary.f32(i32 35, float %10120, float %10121)  ; FMax(a,b)
  %10131 = call float @dx.op.binary.f32(i32 35, float %10119, float %10130)  ; FMax(a,b)
  %10132 = call float @dx.op.binary.f32(i32 35, float %10131, float %10122)  ; FMax(a,b)
  %10133 = call float @dx.op.binary.f32(i32 36, float %10127, float %10128)  ; FMin(a,b)
  %10134 = call float @dx.op.binary.f32(i32 36, float %10126, float %10133)  ; FMin(a,b)
  %10135 = call float @dx.op.binary.f32(i32 36, float %10134, float %10129)  ; FMin(a,b)
  %10136 = fmul fast float %10132, 2.550000e+02
  %10137 = fadd fast float %10136, 0x3F70101020000000
  %10138 = fptoui float %10137 to i32
  %10139 = fmul fast float %10135, 2.550000e+02
  %10140 = fadd fast float %10139, 0x3F70101020000000
  %10141 = fptoui float %10140 to i32
  %10142 = icmp ult i32 %10138, %10141
  br i1 %10142, label %10143, label %10312

; <label>:10143                                   ; preds = %10100
  %10144 = fcmp fast ogt float %91, 9.843750e-01
  %10145 = fadd fast float %8938, -4.000000e+00
  %10146 = select i1 %10144, float -4.000000e+00, float %10145
  %10147 = call float @dx.op.binary.f32(i32 35, float %10146, float 0.000000e+00)  ; FMax(a,b)
  %10148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %10149 = extractvalue %dx.types.CBufRet.f32 %10148, 0
  %10150 = fadd fast float %10149, %10147
  %10151 = extractvalue %dx.types.CBufRet.f32 %10148, 2
  %10152 = fmul fast float %10150, %10151
  %10153 = call float @dx.op.unary.f32(i32 23, float %10152)  ; Log(value)
  %10154 = extractvalue %dx.types.CBufRet.f32 %10148, 3
  %10155 = fmul fast float %10154, %10153
  %10156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %10157 = extractvalue %dx.types.CBufRet.f32 %10156, 2
  %10158 = fmul fast float %10155, %10157
  %10159 = call float @dx.op.unary.f32(i32 7, float %10158)  ; Saturate(value)
  %10160 = uitofp i32 %10138 to float
  %10161 = uitofp i32 %10141 to float
  %10162 = fadd fast float %10160, 5.000000e-01
  %10163 = fadd fast float %10161, 5.000000e-01
  %10164 = fmul fast float %10157, %10162
  %10165 = fmul fast float %10157, %10163
  %10166 = fadd fast float %10164, 0x3F0FFB4800000000
  %10167 = fadd fast float %10165, 0xBF0FFB4800000000
  %10168 = call float @dx.op.binary.f32(i32 35, float %10159, float %10166)  ; FMax(a,b)
  %10169 = call float @dx.op.binary.f32(i32 36, float %10168, float %10167)  ; FMin(a,b)
  %10170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %10171 = extractvalue %dx.types.CBufRet.f32 %10170, 1
  %10172 = extractvalue %dx.types.CBufRet.f32 %10170, 2
  %10173 = extractvalue %dx.types.CBufRet.f32 %10170, 0
  %10174 = select i1 %8676, float %10173, float 0.000000e+00
  %10175 = fmul fast float %10171, %10169
  %10176 = fadd fast float %10174, %10175
  %10177 = fadd fast float %10174, %10172
  %10178 = fsub fast float %10171, %10172
  %10179 = fadd fast float %10178, %10174
  %10180 = call float @dx.op.binary.f32(i32 35, float %10176, float %10177)  ; FMax(a,b)
  %10181 = call float @dx.op.binary.f32(i32 36, float %10180, float %10179)  ; FMin(a,b)
  %10182 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %44, float %10113, float %10114, float %10181, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10183 = extractvalue %dx.types.ResRet.f32 %10182, 0
  %10184 = extractvalue %dx.types.ResRet.f32 %10182, 1
  %10185 = extractvalue %dx.types.ResRet.f32 %10182, 2
  %10186 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %10187 = extractvalue %dx.types.CBufRet.i32 %10186, 0
  %10188 = extractvalue %dx.types.CBufRet.i32 %10186, 1
  %10189 = uitofp i32 %10187 to float
  %10190 = uitofp i32 %10188 to float
  %10191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %10192 = extractvalue %dx.types.CBufRet.f32 %10191, 0
  %10193 = extractvalue %dx.types.CBufRet.f32 %10191, 1
  %10194 = fmul fast float %10189, %10113
  %10195 = fmul fast float %10190, %10114
  %10196 = fadd fast float %10194, -5.000000e-01
  %10197 = fadd fast float %10195, -5.000000e-01
  %10198 = call float @dx.op.unary.f32(i32 22, float %10196)  ; Frc(value)
  %10199 = call float @dx.op.unary.f32(i32 22, float %10197)  ; Frc(value)
  %10200 = fmul fast float %10198, %10198
  %10201 = fmul fast float %10200, %10198
  %10202 = fsub fast float 3.000000e+00, %10198
  %10203 = fmul fast float %10200, %10202
  %10204 = fmul fast float %10198, 3.000000e+00
  %10205 = fmul fast float %10201, 3.000000e+00
  %10206 = fmul fast float %10200, 6.000000e+00
  %10207 = fsub fast float %10205, %10206
  %10208 = fadd fast float %10207, 4.000000e+00
  %10209 = fmul fast float %10208, 0x3FC5555560000000
  %10210 = fmul fast float %10201, -3.000000e+00
  %10211 = fadd fast float %10200, %10198
  %10212 = fmul fast float %10211, 3.000000e+00
  %10213 = fadd fast float %10210, 1.000000e+00
  %10214 = fadd fast float %10213, %10212
  %10215 = fmul fast float %10201, 0x3FC5555560000000
  %10216 = fmul fast float %10199, %10199
  %10217 = fmul fast float %10216, %10199
  %10218 = fsub fast float 3.000000e+00, %10199
  %10219 = fmul fast float %10216, %10218
  %10220 = fmul fast float %10199, 3.000000e+00
  %10221 = fmul fast float %10217, 3.000000e+00
  %10222 = fmul fast float %10216, 6.000000e+00
  %10223 = fsub fast float %10221, %10222
  %10224 = fadd fast float %10223, 4.000000e+00
  %10225 = fmul fast float %10224, 0x3FC5555560000000
  %10226 = fmul fast float %10217, -3.000000e+00
  %10227 = fadd fast float %10216, %10199
  %10228 = fmul fast float %10227, 3.000000e+00
  %10229 = fadd fast float %10226, 1.000000e+00
  %10230 = fadd fast float %10229, %10228
  %10231 = fmul fast float %10217, 0x3FC5555560000000
  %10232 = fadd fast float %10198, 1.000000e+00
  %10233 = fsub fast float 1.000000e+00, %10204
  %10234 = fadd fast float %10233, %10203
  %10235 = fadd fast float %10234, %10208
  %10236 = fmul fast float %10235, 0x3FC5555560000000
  %10237 = fdiv fast float %10209, %10236
  %10238 = fsub fast float %10232, %10237
  %10239 = fsub fast float 1.000000e+00, %10198
  %10240 = fadd fast float %10214, %10201
  %10241 = fmul fast float %10240, 0x3FC5555560000000
  %10242 = fdiv fast float %10215, %10241
  %10243 = fadd fast float %10239, %10242
  %10244 = fadd fast float %10199, 1.000000e+00
  %10245 = fsub fast float 1.000000e+00, %10220
  %10246 = fadd fast float %10245, %10219
  %10247 = fadd fast float %10246, %10224
  %10248 = fmul fast float %10247, 0x3FC5555560000000
  %10249 = fdiv fast float %10225, %10248
  %10250 = fsub fast float %10244, %10249
  %10251 = fsub fast float 1.000000e+00, %10199
  %10252 = fadd fast float %10230, %10217
  %10253 = fmul fast float %10252, 0x3FC5555560000000
  %10254 = fdiv fast float %10231, %10253
  %10255 = fadd fast float %10254, %10251
  %10256 = fmul fast float %10238, %10192
  %10257 = fsub fast float %10113, %10256
  %10258 = fmul fast float %10243, %10192
  %10259 = fadd fast float %10258, %10113
  %10260 = fmul fast float %10255, %10193
  %10261 = fadd fast float %10260, %10114
  %10262 = fmul fast float %10250, %10193
  %10263 = fsub fast float %10114, %10262
  %10264 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %44, float %10257, float %10263, float %10181, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10265 = extractvalue %dx.types.ResRet.f32 %10264, 0
  %10266 = extractvalue %dx.types.ResRet.f32 %10264, 1
  %10267 = extractvalue %dx.types.ResRet.f32 %10264, 2
  %10268 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %44, float %10259, float %10263, float %10181, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10269 = extractvalue %dx.types.ResRet.f32 %10268, 0
  %10270 = extractvalue %dx.types.ResRet.f32 %10268, 1
  %10271 = extractvalue %dx.types.ResRet.f32 %10268, 2
  %10272 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %44, float %10257, float %10261, float %10181, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10273 = extractvalue %dx.types.ResRet.f32 %10272, 0
  %10274 = extractvalue %dx.types.ResRet.f32 %10272, 1
  %10275 = extractvalue %dx.types.ResRet.f32 %10272, 2
  %10276 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %44, float %10259, float %10261, float %10181, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10277 = extractvalue %dx.types.ResRet.f32 %10276, 0
  %10278 = extractvalue %dx.types.ResRet.f32 %10276, 1
  %10279 = extractvalue %dx.types.ResRet.f32 %10276, 2
  %10280 = fsub fast float %10273, %10265
  %10281 = fsub fast float %10274, %10266
  %10282 = fsub fast float %10275, %10267
  %10283 = fmul fast float %10280, %10253
  %10284 = fmul fast float %10281, %10253
  %10285 = fmul fast float %10282, %10253
  %10286 = fadd fast float %10283, %10265
  %10287 = fadd fast float %10284, %10266
  %10288 = fadd fast float %10285, %10267
  %10289 = fsub fast float %10277, %10269
  %10290 = fsub fast float %10278, %10270
  %10291 = fsub fast float %10279, %10271
  %10292 = fmul fast float %10289, %10253
  %10293 = fmul fast float %10290, %10253
  %10294 = fmul fast float %10291, %10253
  %10295 = fsub fast float %10269, %10286
  %10296 = fadd fast float %10295, %10292
  %10297 = fsub fast float %10270, %10287
  %10298 = fadd fast float %10297, %10293
  %10299 = fsub fast float %10271, %10288
  %10300 = fadd fast float %10299, %10294
  %10301 = fmul fast float %10296, %10241
  %10302 = fmul fast float %10298, %10241
  %10303 = fmul fast float %10300, %10241
  %10304 = fadd fast float %10301, %10286
  %10305 = fadd fast float %10302, %10287
  %10306 = fadd fast float %10303, %10288
  %10307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10308 = extractvalue %dx.types.CBufRet.f32 %10307, 1
  %10309 = fmul fast float %10304, %10308
  %10310 = fmul fast float %10305, %10308
  %10311 = fmul fast float %10306, %10308
  br label %10312

; <label>:10312                                   ; preds = %10143, %10100
  %10313 = phi float [ %10183, %10143 ], [ 1.000000e+00, %10100 ]
  %10314 = phi float [ %10184, %10143 ], [ 1.000000e+00, %10100 ]
  %10315 = phi float [ %10185, %10143 ], [ 1.000000e+00, %10100 ]
  %10316 = phi float [ %10309, %10143 ], [ 0.000000e+00, %10100 ]
  %10317 = phi float [ %10310, %10143 ], [ 0.000000e+00, %10100 ]
  %10318 = phi float [ %10311, %10143 ], [ 0.000000e+00, %10100 ]
  %10319 = fmul fast float %10316, %8654
  %10320 = fmul fast float %10317, %8654
  %10321 = fmul fast float %10318, %8654
  %10322 = fmul fast float %10313, %10107
  %10323 = call float @dx.op.dot3.f32(i32 55, float %10313, float %10314, float %10315, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10324 = call float @dx.op.dot3.f32(i32 55, float %10319, float %10320, float %10321, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10325 = select i1 %228, float %10323, float %10313
  %10326 = select i1 %228, float %10323, float %10314
  %10327 = select i1 %228, float 1.000000e+00, float %10315
  %10328 = select i1 %228, float %10324, float %10319
  %10329 = select i1 %228, float 0.000000e+00, float %10320
  %10330 = select i1 %228, float 0.000000e+00, float %10321
  %10331 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %10332 = extractvalue %dx.types.CBufRet.i32 %10331, 3
  %10333 = and i32 %10332, 3
  %10334 = icmp ne i32 %10333, 0
  %10335 = and i32 %10332, 4
  %10336 = icmp ne i32 %10335, 0
  %10337 = and i1 %10334, %10336
  %10338 = and i1 %228, %10337
  br i1 %10338, label %10339, label %10345

; <label>:10339                                   ; preds = %10312
  %10340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %10341 = extractvalue %dx.types.CBufRet.f32 %10340, 1
  %10342 = fadd fast float %10322, -1.000000e+00
  %10343 = fmul fast float %10341, %10342
  %10344 = fadd fast float %10343, 1.000000e+00
  br label %10345

; <label>:10345                                   ; preds = %10339, %10312
  %10346 = phi float [ %10344, %10339 ], [ %10322, %10312 ]
  %10347 = fadd fast float %10104, %10101
  %10348 = fmul fast float %10325, %10347
  %10349 = fadd fast float %10348, %10328
  %10350 = fadd fast float %10105, %10102
  %10351 = fmul fast float %10326, %10350
  %10352 = fadd fast float %10351, %10329
  %10353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10354 = extractvalue %dx.types.CBufRet.f32 %10353, 0
  br i1 %228, label %10355, label %10378

; <label>:10355                                   ; preds = %10345
  %10356 = fadd fast float %10349, %10352
  %10357 = fmul fast float %10354, %10356
  %10358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %10359 = extractvalue %dx.types.CBufRet.f32 %10358, 3
  %10360 = extractvalue %dx.types.CBufRet.f32 %8658, 1
  %10361 = fsub fast float %8663, %8657
  %10362 = fadd fast float %10361, %8664
  %10363 = fsub fast float %10362, %10360
  %10364 = extractvalue %dx.types.CBufRet.f32 %8658, 2
  %10365 = fmul fast float %10363, %10364
  %10366 = call float @dx.op.unary.f32(i32 7, float %10365)  ; Saturate(value)
  %10367 = fsub fast float %10366, %10359
  %10368 = fmul fast float %10367, %10346
  %10369 = fadd fast float %10368, %10359
  %10370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %10371 = extractvalue %dx.types.CBufRet.f32 %10370, 0
  %10372 = fsub fast float %10369, %10371
  %10373 = fmul fast float %10372, 1.000000e+01
  %10374 = call float @dx.op.unary.f32(i32 7, float %10373)  ; Saturate(value)
  %10375 = fmul fast float %10374, %8653
  %10376 = fadd fast float %10375, %8654
  %10377 = fmul fast float %10376, %10369
  br label %10402

; <label>:10378                                   ; preds = %10345
  %10379 = fadd fast float %10106, %10103
  %10380 = fmul fast float %10327, %10379
  %10381 = fadd fast float %10380, %10330
  %10382 = fmul fast float %10354, %10349
  %10383 = fmul fast float %10354, %10352
  %10384 = fmul fast float %10354, %10381
  %10385 = call float @dx.op.binary.f32(i32 35, float %10383, float %10384)  ; FMax(a,b)
  %10386 = call float @dx.op.binary.f32(i32 35, float %10382, float %10385)  ; FMax(a,b)
  %10387 = call float @dx.op.binary.f32(i32 35, float %10386, float %8654)  ; FMax(a,b)
  %10388 = fcmp fast ugt float %10387, 0x3F10000000000000
  br i1 %10388, label %10390, label %10389

; <label>:10389                                   ; preds = %10378
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %10390

; <label>:10390                                   ; preds = %10389, %10378
  %10391 = add i32 %60, 356
  %10392 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %10391, i32 undef)  ; BufferLoad(srv,index,wot)
  %10393 = extractvalue %dx.types.ResRet.i32 %10392, 0
  %10394 = and i32 %10393, 32
  %10395 = icmp eq i32 %10394, 0
  br i1 %10395, label %10402, label %10396

; <label>:10396                                   ; preds = %10390
  %10397 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %10398 = extractvalue %dx.types.CBufRet.f32 %10397, 0
  %10399 = fmul fast float %10398, 0x3FE99999A0000000
  %10400 = fadd fast float %10398, %10382
  %10401 = fadd fast float %10399, %10384
  br label %10402

; <label>:10402                                   ; preds = %10396, %10390, %10355
  %10403 = phi float [ %10357, %10355 ], [ %10400, %10396 ], [ %10382, %10390 ]
  %10404 = phi float [ %10377, %10355 ], [ %10383, %10396 ], [ %10383, %10390 ]
  %10405 = phi float [ %10376, %10355 ], [ %10401, %10396 ], [ %10384, %10390 ]
  %10406 = phi float [ %10376, %10355 ], [ %8654, %10396 ], [ %8654, %10390 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %10407 = call float @dx.op.binary.f32(i32 36, float %10403, float 3.225500e+04)  ; FMin(a,b)
  %10408 = call float @dx.op.binary.f32(i32 36, float %10404, float 3.225500e+04)  ; FMin(a,b)
  %10409 = call float @dx.op.binary.f32(i32 36, float %10405, float 3.225500e+04)  ; FMin(a,b)
  %10410 = call float @dx.op.binary.f32(i32 36, float %10406, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %10407)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %10408)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %10409)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %10410)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

