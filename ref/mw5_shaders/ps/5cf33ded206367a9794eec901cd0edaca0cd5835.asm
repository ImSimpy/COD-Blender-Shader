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
; shader hash: 03e00fea74c0b936833adc886d02d69b
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
;                                   texture     f32     2darray      T2      t0,space6unbounded
;                                   texture     f32          3d      T3      t0,space7unbounded
;                                   texture    byte         r/o      T4     t37,space1     1
;                                   texture     f32          2d      T5     t33,space2     1
;                                   texture    byte         r/o      T6      t3,space1     1
;                                   texture    byte         r/o      T7      t4,space1     1
;                                   texture    byte         r/o      T8      t5,space1     1
;                                   texture    byte         r/o      T9      t6,space1     1
;                                   texture     f32          2d     T10     t69,space2     1
;                                   texture    byte         r/o     T11     t49,space1     1
;                                   texture    byte         r/o     T12     t50,space1     1
;                                   texture    byte         r/o     T13     t51,space1     1
;                                   texture    byte         r/o     T14     t52,space1     1
;                                   texture    byte         r/o     T15     t16,space1     1
;                                   texture    byte         r/o     T16     t17,space1     1
;                                   texture     f32          2d     T17     t37,space2     1
;                                   texture     f32          2d     T18             t0     1
;                                   texture     f32          2d     T19     t58,space2     1
;                                   texture     f32          2d     T20     t59,space2     1
;                                   texture     f32          2d     T21     t60,space2     1
;                                   texture    byte         r/o     T22     t45,space1     1
;                                   texture    byte         r/o     T23     t46,space1     1
;                                   texture    byte         r/o     T24     t47,space1     1
;                                   texture    byte         r/o     T25     t48,space1     1
;                                   texture     f32          2d     T26     t57,space2     1
;                                   texture    byte         r/o     T27     t69,space1     1
;                                   texture     u32          2d     T28     t56,space2     1
;                                   texture     f32     2darray     T29     t35,space2     1
;                                   texture     f32          2d     T30     t34,space2     1
;                                   texture     f32          3d     T31     t31,space2     1
;                                   texture    byte         r/o     T32     t10,space1     1
;                                   texture    byte         r/o     T33      t1,space1     1
;                                   texture     f32          1d     T34     t32,space2     1
;                                   texture     f32     2darray     T35      t8,space2     1
;                                   texture     f32          2d     T36      t2,space2     1
;                                   texture     f32          2d     T37      t3,space2     1
;                                   texture     f32          2d     T38      t4,space2     1
;                                   textureunorm_f32     2darray     T39     t80,space2     1
;                                   texture    byte         r/o     T40     t67,space1     1
;                                   texture     f32          2d     T41      t7,space2     1
;                                   texture     f32          2d     T42      t6,space2     1
;                                   texture     f32          2d     T43      t5,space2     1
;                                   texture     f32          2d     T44     t38,space2     1
;                                   texture    byte         r/o     T45     t12,space1     1
;                                   texture    byte         r/o     T46     t13,space1     1
;                                   texture     f32          1d     T47     t30,space2     1
;                                   texture     f32          3d     T48     t44,space2     1
;                                   texture     f32          3d     T49     t45,space2     1
;                                   texture     f32     2darray     T50     t47,space2     1
;                                   textureunorm_f32     2darray     T51     t85,space2     1
;                                   texture     f32          2d     T52     t83,space2     1
;                                   texture     f32          2d     T53     t86,space2     1
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
%"class.Texture2DArray<vector<float, 4> >" = type { <4 x float>, %"class.Texture2DArray<vector<float, 4> >::mips_type" }
%"class.Texture2DArray<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.Texture2D<unsigned int>" = type { i32, %"class.Texture2D<unsigned int>::mips_type" }
%"class.Texture2D<unsigned int>::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 3> >" = type { <3 x float>, %"class.Texture2D<vector<float, 3> >::mips_type" }
%"class.Texture2D<vector<float, 3> >::mips_type" = type { i32 }
%"class.Texture3D<float>" = type { float, %"class.Texture3D<float>::mips_type" }
%"class.Texture3D<float>::mips_type" = type { i32 }
%"class.Texture1D<float>" = type { float, %"class.Texture1D<float>::mips_type" }
%"class.Texture1D<float>::mips_type" = type { i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
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
%hostlayout.stable = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }
%struct.SamplerComparisonState = type { i32 }

@PCF_OFFSETS_8.v.1dim = internal constant [16 x float] [float 0xBFE6A09020000000, float 0x3FE6A09020000000, float 0.000000e+00, float -8.750000e-01, float 0x3FE0F837C0000000, float 0x3FE0F837C0000000, float -6.250000e-01, float 0.000000e+00, float 0x3FD6A161E0000000, float 0xBFD6A161E0000000, float 0.000000e+00, float 3.750000e-01, float 0xBFC6A161E0000000, float 0xBFC6A161E0000000, float 1.250000e-01, float 0.000000e+00], align 4

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 53, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 52, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 51, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 50, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 49, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 48, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 47, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 46, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 45, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 44, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 43, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 42, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 41, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 40, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 39, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 38, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 51, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 50, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 49, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %49 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %50 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %51 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %52 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %53 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %54 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %55 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %56 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %57 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %58 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
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
  %107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
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
  %131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %132 = extractvalue %dx.types.CBufRet.f32 %131, 2
  %133 = extractvalue %dx.types.CBufRet.f32 %131, 3
  %134 = fmul fast float %109, 2.000000e+00
  %135 = fmul fast float %134, %132
  %136 = fmul fast float %110, 2.000000e+00
  %137 = fmul fast float %136, %133
  %138 = fsub fast float 1.000000e+00, %135
  %139 = fsub fast float 1.000000e+00, %137
  %140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %141 = extractvalue %dx.types.CBufRet.f32 %140, 0
  %142 = extractvalue %dx.types.CBufRet.f32 %140, 1
  %143 = extractvalue %dx.types.CBufRet.f32 %140, 2
  %144 = fmul fast float %138, %141
  %145 = fmul fast float %138, %142
  %146 = fmul fast float %138, %143
  %147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %148 = extractvalue %dx.types.CBufRet.f32 %147, 0
  %149 = extractvalue %dx.types.CBufRet.f32 %147, 1
  %150 = extractvalue %dx.types.CBufRet.f32 %147, 2
  %151 = fmul fast float %139, %148
  %152 = fmul fast float %139, %149
  %153 = fmul fast float %139, %150
  %154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
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
  %171 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %169, i32 %170, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %172 = extractvalue %dx.types.ResRet.i32 %171, 0
  %173 = lshr i32 %172, 18
  %174 = uitofp i32 %173 to float
  %175 = fmul fast float %174, 0x3F4C00EBA0000000
  %176 = call float @dx.op.unary.f32(i32 21, float %175)  ; Exp(value)
  %177 = fadd fast float %176, -1.000000e+00
  %178 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %26, i32 0)  ; GetDimensions(handle,mipLevel)
  %179 = extractvalue %dx.types.Dimensions %178, 0
  %180 = sitofp i32 %179 to float
  %181 = extractvalue %dx.types.Dimensions %178, 1
  %182 = sitofp i32 %181 to float
  %183 = fcmp fast oge float %167, %180
  %184 = fcmp fast oge float %168, %182
  %185 = or i1 %183, %184
  %186 = select i1 %185, float 0x4197782600000000, float %177
  %187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %188 = extractvalue %dx.types.CBufRet.f32 %187, 2
  %189 = extractvalue %dx.types.CBufRet.f32 %187, 3
  %190 = fmul fast float %188, %109
  %191 = fmul fast float %189, %110
  %192 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %193 = extractvalue %dx.types.ResRet.i32 %192, 0
  %194 = and i32 %193, 114688
  %195 = icmp ne i32 %194, 0
  %196 = select i1 %195, float %190, float 0.000000e+00
  %197 = select i1 %195, float %191, float 0.000000e+00
  %198 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %55, float %196, float %197, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %199 = extractvalue %dx.types.ResRet.f32 %198, 0
  %200 = fmul fast float %199, 2.550000e+02
  %201 = fptoui float %200 to i32
  %202 = select i1 %195, i32 %201, i32 0
  %203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %204 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %205 = extractvalue %dx.types.CBufRet.i32 %204, 3
  %206 = and i32 %205, 3
  %207 = icmp ne i32 %206, 0
  %208 = and i32 %205, 4
  %209 = icmp ne i32 %208, 0
  %210 = and i1 %207, %209
  br i1 %210, label %211, label %222

; <label>:211                                     ; preds = %0
  %212 = extractvalue %dx.types.CBufRet.f32 %203, 3
  %213 = fmul fast float %212, %110
  %214 = extractvalue %dx.types.CBufRet.f32 %203, 2
  %215 = fmul fast float %214, %109
  %216 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %54, float %215, float %213, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %217 = extractvalue %dx.types.ResRet.f32 %216, 0
  %218 = fsub fast float 1.000000e+00, %217
  %219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %220 = extractvalue %dx.types.CBufRet.f32 %219, 0
  %221 = fcmp fast olt float %218, %220
  br label %225

; <label>:222                                     ; preds = %0
  %223 = icmp eq i32 %208, 0
  %224 = and i1 %207, %223
  br label %225

; <label>:225                                     ; preds = %222, %211
  %226 = phi i1 [ %221, %211 ], [ %224, %222 ]
  %227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %228 = extractvalue %dx.types.CBufRet.f32 %227, 2
  %229 = fmul fast float %228, 0x3FE3C6EF40000000
  %230 = frem fast float %109, 2.560000e+02
  %231 = frem fast float %110, 2.560000e+02
  %232 = fptoui float %230 to i32
  %233 = fptoui float %231 to i32
  %234 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %37, i32 0, i32 %232, i32 %233, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %235 = extractvalue %dx.types.ResRet.f32 %234, 0
  %236 = fadd fast float %235, %229
  %237 = call float @dx.op.unary.f32(i32 22, float %236)  ; Frc(value)
  %238 = add i32 %60, 156
  %239 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %238, i32 undef)  ; BufferLoad(srv,index,wot)
  %240 = extractvalue %dx.types.ResRet.i32 %239, 0
  %241 = shl i32 %240, 4
  %242 = and i32 %241, 32752
  %243 = call float @dx.op.legacyF16ToF32(i32 131, i32 %242)  ; LegacyF16ToF32(value)
  %244 = lshr i32 %240, 7
  %245 = and i32 %244, 32752
  %246 = call float @dx.op.legacyF16ToF32(i32 131, i32 %245)  ; LegacyF16ToF32(value)
  %247 = lshr i32 %240, 22
  %248 = shl nuw nsw i32 %247, 5
  %249 = call float @dx.op.legacyF16ToF32(i32 131, i32 %248)  ; LegacyF16ToF32(value)
  %250 = add i32 %60, 216
  %251 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %250, i32 undef)  ; BufferLoad(srv,index,wot)
  %252 = extractvalue %dx.types.ResRet.i32 %251, 0
  %253 = and i32 %252, 255
  %254 = uitofp i32 %253 to float
  %255 = fmul fast float %254, 0x3F70101020000000
  %256 = lshr i32 %252, 8
  %257 = and i32 %256, 255
  %258 = uitofp i32 %257 to float
  %259 = fmul fast float %258, 0x3F70101020000000
  %260 = lshr i32 %252, 16
  %261 = and i32 %260, 255
  %262 = uitofp i32 %261 to float
  %263 = fmul fast float %262, 0x3F70101020000000
  %264 = add i32 %60, 36
  %265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %264, i32 undef)  ; BufferLoad(srv,index,wot)
  %266 = extractvalue %dx.types.ResRet.i32 %265, 0
  %267 = and i32 %266, 65535
  %268 = call float @dx.op.legacyF16ToF32(i32 131, i32 %267)  ; LegacyF16ToF32(value)
  %269 = lshr i32 %266, 16
  %270 = call float @dx.op.legacyF16ToF32(i32 131, i32 %269)  ; LegacyF16ToF32(value)
  %271 = add i32 %60, 288
  %272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %271, i32 undef)  ; BufferLoad(srv,index,wot)
  %273 = extractvalue %dx.types.ResRet.i32 %272, 0
  %274 = and i32 %273, 65535
  %275 = call float @dx.op.legacyF16ToF32(i32 131, i32 %274)  ; LegacyF16ToF32(value)
  %276 = lshr i32 %273, 16
  %277 = call float @dx.op.legacyF16ToF32(i32 131, i32 %276)  ; LegacyF16ToF32(value)
  %278 = fmul fast float %275, 0x3F50624DE0000000
  %279 = fmul fast float %277, 0x3F50624DE0000000
  %280 = add i32 %60, 172
  %281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %280, i32 undef)  ; BufferLoad(srv,index,wot)
  %282 = extractvalue %dx.types.ResRet.i32 %281, 0
  %283 = shl i32 %282, 4
  %284 = and i32 %283, 32752
  %285 = call float @dx.op.legacyF16ToF32(i32 131, i32 %284)  ; LegacyF16ToF32(value)
  %286 = lshr i32 %282, 7
  %287 = and i32 %286, 32752
  %288 = call float @dx.op.legacyF16ToF32(i32 131, i32 %287)  ; LegacyF16ToF32(value)
  %289 = lshr i32 %282, 22
  %290 = shl nuw nsw i32 %289, 5
  %291 = call float @dx.op.legacyF16ToF32(i32 131, i32 %290)  ; LegacyF16ToF32(value)
  %292 = add i32 %60, 232
  %293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %292, i32 undef)  ; BufferLoad(srv,index,wot)
  %294 = extractvalue %dx.types.ResRet.i32 %293, 0
  %295 = and i32 %294, 255
  %296 = uitofp i32 %295 to float
  %297 = fmul fast float %296, 0x3F70101020000000
  %298 = lshr i32 %294, 8
  %299 = and i32 %298, 255
  %300 = uitofp i32 %299 to float
  %301 = fmul fast float %300, 0x3F70101020000000
  %302 = lshr i32 %294, 16
  %303 = and i32 %302, 255
  %304 = uitofp i32 %303 to float
  %305 = fmul fast float %304, 0x3F70101020000000
  %306 = add i32 %60, 52
  %307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %306, i32 undef)  ; BufferLoad(srv,index,wot)
  %308 = extractvalue %dx.types.ResRet.i32 %307, 0
  %309 = and i32 %308, 65535
  %310 = call float @dx.op.legacyF16ToF32(i32 131, i32 %309)  ; LegacyF16ToF32(value)
  %311 = lshr i32 %308, 16
  %312 = call float @dx.op.legacyF16ToF32(i32 131, i32 %311)  ; LegacyF16ToF32(value)
  %313 = add i32 %60, 304
  %314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %313, i32 undef)  ; BufferLoad(srv,index,wot)
  %315 = extractvalue %dx.types.ResRet.i32 %314, 0
  %316 = and i32 %315, 65535
  %317 = call float @dx.op.legacyF16ToF32(i32 131, i32 %316)  ; LegacyF16ToF32(value)
  %318 = lshr i32 %315, 16
  %319 = call float @dx.op.legacyF16ToF32(i32 131, i32 %318)  ; LegacyF16ToF32(value)
  %320 = fmul fast float %317, 0x3F50624DE0000000
  %321 = fmul fast float %319, 0x3F50624DE0000000
  %322 = add i32 %60, 188
  %323 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %322, i32 undef)  ; BufferLoad(srv,index,wot)
  %324 = extractvalue %dx.types.ResRet.i32 %323, 0
  %325 = shl i32 %324, 4
  %326 = and i32 %325, 32752
  %327 = call float @dx.op.legacyF16ToF32(i32 131, i32 %326)  ; LegacyF16ToF32(value)
  %328 = lshr i32 %324, 7
  %329 = and i32 %328, 32752
  %330 = call float @dx.op.legacyF16ToF32(i32 131, i32 %329)  ; LegacyF16ToF32(value)
  %331 = lshr i32 %324, 22
  %332 = shl nuw nsw i32 %331, 5
  %333 = call float @dx.op.legacyF16ToF32(i32 131, i32 %332)  ; LegacyF16ToF32(value)
  %334 = add i32 %60, 248
  %335 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %334, i32 undef)  ; BufferLoad(srv,index,wot)
  %336 = extractvalue %dx.types.ResRet.i32 %335, 0
  %337 = and i32 %336, 255
  %338 = uitofp i32 %337 to float
  %339 = fmul fast float %338, 0x3F70101020000000
  %340 = lshr i32 %336, 8
  %341 = and i32 %340, 255
  %342 = uitofp i32 %341 to float
  %343 = fmul fast float %342, 0x3F70101020000000
  %344 = lshr i32 %336, 16
  %345 = and i32 %344, 255
  %346 = uitofp i32 %345 to float
  %347 = fmul fast float %346, 0x3F70101020000000
  %348 = add i32 %60, 68
  %349 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %348, i32 undef)  ; BufferLoad(srv,index,wot)
  %350 = extractvalue %dx.types.ResRet.i32 %349, 0
  %351 = and i32 %350, 65535
  %352 = call float @dx.op.legacyF16ToF32(i32 131, i32 %351)  ; LegacyF16ToF32(value)
  %353 = lshr i32 %350, 16
  %354 = call float @dx.op.legacyF16ToF32(i32 131, i32 %353)  ; LegacyF16ToF32(value)
  %355 = add i32 %60, 320
  %356 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %355, i32 undef)  ; BufferLoad(srv,index,wot)
  %357 = extractvalue %dx.types.ResRet.i32 %356, 0
  %358 = and i32 %357, 65535
  %359 = call float @dx.op.legacyF16ToF32(i32 131, i32 %358)  ; LegacyF16ToF32(value)
  %360 = lshr i32 %357, 16
  %361 = call float @dx.op.legacyF16ToF32(i32 131, i32 %360)  ; LegacyF16ToF32(value)
  %362 = fmul fast float %359, 0x3F50624DE0000000
  %363 = fmul fast float %361, 0x3F50624DE0000000
  %364 = add i32 %60, 204
  %365 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %364, i32 undef)  ; BufferLoad(srv,index,wot)
  %366 = extractvalue %dx.types.ResRet.i32 %365, 0
  %367 = shl i32 %366, 4
  %368 = and i32 %367, 32752
  %369 = call float @dx.op.legacyF16ToF32(i32 131, i32 %368)  ; LegacyF16ToF32(value)
  %370 = lshr i32 %366, 7
  %371 = and i32 %370, 32752
  %372 = call float @dx.op.legacyF16ToF32(i32 131, i32 %371)  ; LegacyF16ToF32(value)
  %373 = lshr i32 %366, 22
  %374 = shl nuw nsw i32 %373, 5
  %375 = call float @dx.op.legacyF16ToF32(i32 131, i32 %374)  ; LegacyF16ToF32(value)
  %376 = add i32 %60, 264
  %377 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %376, i32 undef)  ; BufferLoad(srv,index,wot)
  %378 = extractvalue %dx.types.ResRet.i32 %377, 0
  %379 = and i32 %378, 255
  %380 = uitofp i32 %379 to float
  %381 = fmul fast float %380, 0x3F70101020000000
  %382 = lshr i32 %378, 8
  %383 = and i32 %382, 255
  %384 = uitofp i32 %383 to float
  %385 = fmul fast float %384, 0x3F70101020000000
  %386 = lshr i32 %378, 16
  %387 = and i32 %386, 255
  %388 = uitofp i32 %387 to float
  %389 = fmul fast float %388, 0x3F70101020000000
  %390 = add i32 %60, 84
  %391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %390, i32 undef)  ; BufferLoad(srv,index,wot)
  %392 = extractvalue %dx.types.ResRet.i32 %391, 0
  %393 = and i32 %392, 65535
  %394 = call float @dx.op.legacyF16ToF32(i32 131, i32 %393)  ; LegacyF16ToF32(value)
  %395 = lshr i32 %392, 16
  %396 = call float @dx.op.legacyF16ToF32(i32 131, i32 %395)  ; LegacyF16ToF32(value)
  %397 = add i32 %60, 336
  %398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %397, i32 undef)  ; BufferLoad(srv,index,wot)
  %399 = extractvalue %dx.types.ResRet.i32 %398, 0
  %400 = and i32 %399, 65535
  %401 = call float @dx.op.legacyF16ToF32(i32 131, i32 %400)  ; LegacyF16ToF32(value)
  %402 = lshr i32 %399, 16
  %403 = call float @dx.op.legacyF16ToF32(i32 131, i32 %402)  ; LegacyF16ToF32(value)
  %404 = fmul fast float %401, 0x3F50624DE0000000
  %405 = fmul fast float %403, 0x3F50624DE0000000
  %406 = add i32 %60, 348
  %407 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %406, i32 undef)  ; BufferLoad(srv,index,wot)
  %408 = extractvalue %dx.types.ResRet.i32 %407, 0
  %409 = and i32 %408, 32
  %410 = icmp eq i32 %409, 0
  %411 = and i32 %408, 64
  %412 = icmp eq i32 %411, 0
  %413 = and i32 %408, 128
  %414 = icmp eq i32 %413, 0
  %415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %406, i32 undef)  ; BufferLoad(srv,index,wot)
  %416 = extractvalue %dx.types.ResRet.i32 %415, 0
  %417 = and i32 %416, 2
  %418 = icmp eq i32 %417, 0
  br i1 %418, label %434, label %419

; <label>:419                                     ; preds = %225
  %420 = add i32 %60, 488
  %421 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %420, i32 undef)  ; BufferLoad(srv,index,wot)
  %422 = extractvalue %dx.types.ResRet.i32 %421, 0
  %423 = add i32 %422, 0
  %424 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %423, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %425 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %424, %dx.types.Handle %106, float %88, float %89, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %426 = extractvalue %dx.types.ResRet.f32 %425, 0
  %427 = extractvalue %dx.types.ResRet.f32 %425, 1
  %428 = extractvalue %dx.types.ResRet.f32 %425, 2
  %429 = extractvalue %dx.types.ResRet.f32 %425, 3
  %430 = fmul fast float %429, %90
  %431 = fmul fast float %426, %91
  %432 = fmul fast float %427, %92
  %433 = fmul fast float %428, %93
  br label %434

; <label>:434                                     ; preds = %419, %225
  %435 = phi float [ %93, %225 ], [ %433, %419 ]
  %436 = phi float [ %92, %225 ], [ %432, %419 ]
  %437 = phi float [ %91, %225 ], [ %431, %419 ]
  %438 = phi float [ %90, %225 ], [ %430, %419 ]
  %439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %406, i32 undef)  ; BufferLoad(srv,index,wot)
  %440 = extractvalue %dx.types.ResRet.i32 %439, 0
  %441 = and i32 %440, 2
  %442 = icmp eq i32 %441, 0
  br i1 %442, label %462, label %443

; <label>:443                                     ; preds = %434
  %444 = add i32 %60, 44
  %445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %444, i32 undef)  ; BufferLoad(srv,index,wot)
  %446 = extractvalue %dx.types.ResRet.i32 %445, 0
  %447 = and i32 %446, 1
  %448 = icmp ne i32 %447, 0
  %449 = select i1 %448, float %437, float 1.000000e+00
  %450 = add i32 %60, 60
  %451 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %450, i32 undef)  ; BufferLoad(srv,index,wot)
  %452 = extractvalue %dx.types.ResRet.i32 %451, 0
  %453 = and i32 %452, 1
  %454 = icmp ne i32 %453, 0
  %455 = select i1 %454, float %436, float 1.000000e+00
  %456 = add i32 %60, 76
  %457 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %456, i32 undef)  ; BufferLoad(srv,index,wot)
  %458 = extractvalue %dx.types.ResRet.i32 %457, 0
  %459 = and i32 %458, 1
  %460 = icmp ne i32 %459, 0
  %461 = select i1 %460, float %435, float 1.000000e+00
  br label %462

; <label>:462                                     ; preds = %443, %434
  %463 = phi float [ %435, %434 ], [ %461, %443 ]
  %464 = phi float [ %436, %434 ], [ %455, %443 ]
  %465 = phi float [ %437, %434 ], [ %449, %443 ]
  %466 = lshr i32 %440, 20
  %467 = and i32 %466, 3
  %468 = add nuw nsw i32 %467, 1
  %469 = add i32 %60, 24
  %470 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %469, i32 undef)  ; BufferLoad(srv,index,wot)
  %471 = extractvalue %dx.types.ResRet.i32 %470, 0
  %472 = add i32 %60, 28
  %473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %472, i32 undef)  ; BufferLoad(srv,index,wot)
  %474 = extractvalue %dx.types.ResRet.i32 %473, 0
  %475 = or i32 %474, %471
  %476 = icmp eq i32 %475, 0
  br i1 %476, label %1237, label %477

; <label>:477                                     ; preds = %462
  %478 = and i32 %471, 262144
  %479 = icmp ne i32 %478, 0
  %480 = select i1 %479, float %63, float 1.000000e+00
  %481 = select i1 %479, float %64, float 0.000000e+00
  %482 = select i1 %479, float %65, float 0.000000e+00
  %483 = select i1 %479, float %66, float 1.000000e+00
  %484 = select i1 %479, float %67, float %88
  %485 = select i1 %479, float %68, float %89
  %486 = add i32 %60, 284
  %487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %486, i32 undef)  ; BufferLoad(srv,index,wot)
  %488 = extractvalue %dx.types.ResRet.i32 %487, 0
  %489 = lshr i32 %488, 16
  %490 = call float @dx.op.legacyF16ToF32(i32 131, i32 %489)  ; LegacyF16ToF32(value)
  %491 = fmul fast float %490, 0x3F50624DE0000000
  %492 = add i32 %60, 88
  %493 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %492, i32 undef)  ; BufferLoad(srv,index,wot)
  %494 = extractvalue %dx.types.ResRet.i32 %493, 0
  %495 = lshr i32 %494, 16
  %496 = and i32 %495, 255
  %497 = lshr i32 %494, 24
  %498 = add i32 %60, 292
  %499 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %498, i32 undef)  ; BufferLoad(srv,index,wot)
  %500 = extractvalue %dx.types.ResRet.i32 %499, 0
  %501 = and i32 %500, 65535
  %502 = call float @dx.op.legacyF16ToF32(i32 131, i32 %501)  ; LegacyF16ToF32(value)
  %503 = lshr i32 %500, 16
  %504 = call float @dx.op.legacyF16ToF32(i32 131, i32 %503)  ; LegacyF16ToF32(value)
  %505 = add i32 %60, 32
  %506 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %505, i32 undef)  ; BufferLoad(srv,index,wot)
  %507 = extractvalue %dx.types.ResRet.i32 %506, 0
  %508 = lshr i32 %507, 22
  %509 = shl nuw nsw i32 %508, 5
  %510 = call float @dx.op.legacyF16ToF32(i32 131, i32 %509)  ; LegacyF16ToF32(value)
  %511 = shl i32 %507, 4
  %512 = and i32 %511, 32752
  %513 = call float @dx.op.legacyF16ToF32(i32 131, i32 %512)  ; LegacyF16ToF32(value)
  %514 = lshr i32 %507, 7
  %515 = and i32 %514, 32752
  %516 = call float @dx.op.legacyF16ToF32(i32 131, i32 %515)  ; LegacyF16ToF32(value)
  %517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %518 = extractvalue %dx.types.CBufRet.f32 %517, 3
  %519 = fmul fast float %518, 1.000000e+03
  %520 = fmul fast float %278, %519
  %521 = call float @dx.op.unary.f32(i32 22, float %520)  ; Frc(value)
  %522 = fadd fast float %521, %268
  %523 = fmul fast float %279, %519
  %524 = call float @dx.op.unary.f32(i32 22, float %523)  ; Frc(value)
  %525 = fadd fast float %524, %270
  %526 = fmul fast float %491, %519
  %527 = call float @dx.op.unary.f32(i32 22, float %526)  ; Frc(value)
  %528 = fmul fast float %527, 0x401921FB60000000
  %529 = fadd fast float %528, %510
  %530 = call float @dx.op.unary.f32(i32 13, float %529)  ; Sin(value)
  %531 = call float @dx.op.unary.f32(i32 12, float %529)  ; Cos(value)
  %532 = fsub fast float -0.000000e+00, %530
  %533 = fadd fast float %484, -5.000000e-01
  %534 = fadd fast float %485, -5.000000e-01
  %535 = fmul fast float %502, %533
  %536 = fmul fast float %504, %534
  %537 = fadd fast float %535, 5.000000e-01
  %538 = fadd fast float %536, 5.000000e-01
  %539 = fmul fast float %513, %537
  %540 = fmul fast float %516, %538
  %541 = fmul fast float %531, %539
  %542 = call float @dx.op.tertiary.f32(i32 46, float %532, float %540, float %541)  ; FMad(a,b,c)
  %543 = fmul fast float %530, %539
  %544 = call float @dx.op.tertiary.f32(i32 46, float %531, float %540, float %543)  ; FMad(a,b,c)
  %545 = fadd fast float %522, %542
  %546 = fadd fast float %525, %544
  %547 = icmp ugt i32 %496, 1
  %548 = icmp ugt i32 %494, 33554431
  %549 = or i1 %548, %547
  br i1 %549, label %550, label %575

; <label>:550                                     ; preds = %477
  %551 = add i32 %60, 228
  %552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %551, i32 undef)  ; BufferLoad(srv,index,wot)
  %553 = extractvalue %dx.types.ResRet.i32 %552, 0
  %554 = lshr i32 %553, 16
  %555 = call float @dx.op.legacyF16ToF32(i32 131, i32 %554)  ; LegacyF16ToF32(value)
  %556 = fmul fast float %518, %555
  %557 = call float @dx.op.unary.f32(i32 22, float %556)  ; Frc(value)
  %558 = mul nuw nsw i32 %496, %497
  %559 = uitofp i32 %558 to float
  %560 = fmul fast float %557, %559
  %561 = call float @dx.op.unary.f32(i32 27, float %560)  ; Round_ni(value)
  %562 = fptoui float %561 to i32
  %563 = urem i32 %562, %496
  %564 = udiv i32 %562, %497
  %565 = call float @dx.op.unary.f32(i32 22, float %545)  ; Frc(value)
  %566 = call float @dx.op.unary.f32(i32 22, float %546)  ; Frc(value)
  %567 = uitofp i32 %563 to float
  %568 = uitofp i32 %564 to float
  %569 = fadd fast float %565, %567
  %570 = fadd fast float %566, %568
  %571 = uitofp i32 %496 to float
  %572 = uitofp i32 %497 to float
  %573 = fdiv fast float %569, %571
  %574 = fdiv fast float %570, %572
  br label %575

; <label>:575                                     ; preds = %550, %477
  %576 = phi float [ %573, %550 ], [ %545, %477 ]
  %577 = phi float [ %574, %550 ], [ %546, %477 ]
  %578 = and i32 %471, 16777216
  %579 = icmp eq i32 %578, 0
  br i1 %579, label %689, label %580

; <label>:580                                     ; preds = %575
  %581 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %582 = extractvalue %dx.types.CBufRet.f32 %581, 0
  %583 = extractvalue %dx.types.CBufRet.f32 %581, 1
  %584 = extractvalue %dx.types.CBufRet.f32 %581, 2
  %585 = fadd fast float %582, %164
  %586 = fadd fast float %583, %165
  %587 = fadd fast float %584, %166
  %588 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %589 = extractvalue %dx.types.CBufRet.f32 %588, 0
  %590 = call float @dx.op.unary.f32(i32 7, float %589)  ; Saturate(value)
  %591 = icmp eq i32 %61, 65535
  br i1 %591, label %686, label %592

; <label>:592                                     ; preds = %580
  %593 = lshr i32 %61, 1
  %594 = shl i32 %593, 2
  %595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %594, i32 undef)  ; BufferLoad(srv,index,wot)
  %596 = extractvalue %dx.types.ResRet.i32 %595, 0
  %597 = and i32 %61, 1
  %598 = icmp ne i32 %597, 0
  %599 = lshr i32 %596, 16
  %600 = and i32 %596, 65535
  %601 = select i1 %598, i32 %599, i32 %600
  %602 = icmp eq i32 %601, 65535
  br i1 %602, label %682, label %603

; <label>:603                                     ; preds = %592
  %604 = mul nuw nsw i32 %601, 40
  %605 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %604, i32 undef)  ; BufferLoad(srv,index,wot)
  %606 = extractvalue %dx.types.ResRet.f32 %605, 0
  %607 = extractvalue %dx.types.ResRet.f32 %605, 1
  %608 = extractvalue %dx.types.ResRet.f32 %605, 2
  %609 = add nuw nsw i32 %604, 12
  %610 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %609, i32 undef)  ; BufferLoad(srv,index,wot)
  %611 = extractvalue %dx.types.ResRet.f32 %610, 0
  %612 = extractvalue %dx.types.ResRet.f32 %610, 1
  %613 = extractvalue %dx.types.ResRet.f32 %610, 2
  %614 = add nuw nsw i32 %604, 24
  %615 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %614, i32 undef)  ; BufferLoad(srv,index,wot)
  %616 = extractvalue %dx.types.ResRet.f32 %615, 0
  %617 = extractvalue %dx.types.ResRet.f32 %615, 1
  %618 = extractvalue %dx.types.ResRet.f32 %615, 2
  %619 = add nuw nsw i32 %604, 36
  %620 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %619, i32 undef)  ; BufferLoad(srv,index,wot)
  %621 = extractvalue %dx.types.ResRet.f32 %620, 0
  %622 = fsub fast float %585, %606
  %623 = fsub fast float %586, %607
  %624 = fsub fast float %587, %608
  %625 = fmul fast float %621, %622
  %626 = fmul fast float %621, %623
  %627 = fmul fast float %621, %624
  %628 = call float @dx.op.unary.f32(i32 27, float %625)  ; Round_ni(value)
  %629 = call float @dx.op.unary.f32(i32 27, float %626)  ; Round_ni(value)
  %630 = call float @dx.op.unary.f32(i32 27, float %627)  ; Round_ni(value)
  %631 = fadd fast float %628, 5.000000e-01
  %632 = fadd fast float %629, 5.000000e-01
  %633 = fadd fast float %630, 5.000000e-01
  %634 = fmul fast float %631, %611
  %635 = fmul fast float %632, %612
  %636 = fmul fast float %633, %613
  %637 = shl i32 %61, 2
  %638 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %637, i32 undef)  ; BufferLoad(srv,index,wot)
  %639 = extractvalue %dx.types.ResRet.i32 %638, 0
  %640 = add i32 %639, 0
  %641 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %640, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %642 = call float @dx.op.unary.f32(i32 22, float %634)  ; Frc(value)
  %643 = call float @dx.op.unary.f32(i32 22, float %635)  ; Frc(value)
  %644 = call float @dx.op.unary.f32(i32 22, float %636)  ; Frc(value)
  %645 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %641, %dx.types.Handle %55, float %642, float %643, float %644, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %646 = extractvalue %dx.types.ResRet.f32 %645, 0
  %647 = extractvalue %dx.types.ResRet.f32 %645, 1
  %648 = extractvalue %dx.types.ResRet.f32 %645, 2
  %649 = fmul fast float %646, 1.023000e+03
  %650 = fmul fast float %647, 1.023000e+03
  %651 = fmul fast float %648, 1.023000e+03
  %652 = fadd fast float %649, 5.000000e-01
  %653 = fadd fast float %650, 5.000000e-01
  %654 = fadd fast float %651, 5.000000e-01
  %655 = call float @dx.op.unary.f32(i32 27, float %652)  ; Round_ni(value)
  %656 = call float @dx.op.unary.f32(i32 27, float %653)  ; Round_ni(value)
  %657 = call float @dx.op.unary.f32(i32 27, float %654)  ; Round_ni(value)
  %658 = fsub fast float %625, %628
  %659 = fsub fast float %626, %629
  %660 = fsub fast float %627, %630
  %661 = fmul fast float %658, 7.500000e-01
  %662 = fmul fast float %659, 7.500000e-01
  %663 = fmul fast float %660, 7.500000e-01
  %664 = fadd fast float %628, 1.250000e-01
  %665 = fadd fast float %664, %661
  %666 = fadd fast float %665, %655
  %667 = fadd fast float %629, 1.250000e-01
  %668 = fadd fast float %667, %662
  %669 = fadd fast float %668, %656
  %670 = fadd fast float %630, 1.250000e-01
  %671 = fadd fast float %670, %663
  %672 = fadd fast float %671, %657
  %673 = fmul fast float %666, %616
  %674 = fmul fast float %669, %617
  %675 = fmul fast float %672, %618
  %676 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %637, i32 undef)  ; BufferLoad(srv,index,wot)
  %677 = extractvalue %dx.types.ResRet.i32 %676, 0
  %678 = add i32 %677, 0
  %679 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %678, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %680 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %679, %dx.types.Handle %53, float %673, float %674, float %675, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %681 = extractvalue %dx.types.ResRet.f32 %680, 0
  br label %682

; <label>:682                                     ; preds = %603, %592
  %683 = phi float [ %681, %603 ], [ -1.000000e+00, %592 ]
  %684 = fadd fast float %683, %590
  %685 = call float @dx.op.unary.f32(i32 7, float %684)  ; Saturate(value)
  br label %686

; <label>:686                                     ; preds = %682, %580
  %687 = phi float [ %685, %682 ], [ %590, %580 ]
  %688 = fmul fast float %687, %438
  br label %689

; <label>:689                                     ; preds = %686, %575
  %690 = phi float [ %688, %686 ], [ %438, %575 ]
  %691 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %469, i32 undef)  ; BufferLoad(srv,index,wot)
  %692 = extractvalue %dx.types.ResRet.i32 %691, 0
  %693 = and i32 %692, 256
  %694 = icmp eq i32 %693, 0
  br i1 %694, label %741, label %695

; <label>:695                                     ; preds = %689
  %696 = add i32 %60, 424
  %697 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %696, i32 undef)  ; BufferLoad(srv,index,wot)
  %698 = extractvalue %dx.types.ResRet.i32 %697, 0
  %699 = add i32 %698, 0
  %700 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %699, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %701 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %700, %dx.types.Handle %106, float %576, float %577, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %702 = extractvalue %dx.types.ResRet.f32 %701, 0
  %703 = add i32 %60, 100
  %704 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %703, i32 undef)  ; BufferLoad(srv,index,wot)
  %705 = extractvalue %dx.types.ResRet.i32 %704, 0
  %706 = shl i32 %705, 4
  %707 = and i32 %706, 32752
  %708 = call float @dx.op.legacyF16ToF32(i32 131, i32 %707)  ; LegacyF16ToF32(value)
  %709 = lshr i32 %705, 7
  %710 = and i32 %709, 32752
  %711 = call float @dx.op.legacyF16ToF32(i32 131, i32 %710)  ; LegacyF16ToF32(value)
  %712 = fsub fast float 1.000000e+00, %690
  %713 = call float @dx.op.binary.f32(i32 35, float %712, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %714 = bitcast float %690 to i32
  %715 = sitofp i32 %714 to float
  %716 = fadd fast float %715, 0xC1CFBF8940000000
  %717 = fmul fast float %711, %716
  %718 = fadd fast float %717, 0x41CFBF8940000000
  %719 = fptosi float %718 to i32
  %720 = bitcast i32 %719 to float
  %721 = bitcast float %713 to i32
  %722 = sitofp i32 %721 to float
  %723 = fadd fast float %722, 0xC1CFBF8940000000
  %724 = fmul fast float %723, %711
  %725 = fadd fast float %724, 0x41CFBF8940000000
  %726 = fptosi float %725 to i32
  %727 = bitcast i32 %726 to float
  %728 = fmul fast float %720, %708
  %729 = fmul fast float %727, %708
  %730 = fsub fast float %713, %728
  %731 = fadd fast float %729, %713
  %732 = call float @dx.op.unary.f32(i32 7, float %730)  ; Saturate(value)
  %733 = call float @dx.op.unary.f32(i32 7, float %731)  ; Saturate(value)
  %734 = fsub fast float %702, %732
  %735 = fsub fast float %733, %732
  %736 = bitcast float %735 to i32
  %737 = sub nsw i32 2129859010, %736
  %738 = bitcast i32 %737 to float
  %739 = fmul fast float %738, %734
  %740 = call float @dx.op.unary.f32(i32 7, float %739)  ; Saturate(value)
  br label %741

; <label>:741                                     ; preds = %695, %689
  %742 = phi float [ %740, %695 ], [ %690, %689 ]
  %743 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %469, i32 undef)  ; BufferLoad(srv,index,wot)
  %744 = extractvalue %dx.types.ResRet.i32 %743, 0
  %745 = and i32 %744, 128
  %746 = icmp eq i32 %745, 0
  br i1 %746, label %763, label %747

; <label>:747                                     ; preds = %741
  %748 = add i32 %60, 408
  %749 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %748, i32 undef)  ; BufferLoad(srv,index,wot)
  %750 = extractvalue %dx.types.ResRet.i32 %749, 0
  %751 = add i32 %750, 0
  %752 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %751, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %753 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %752, %dx.types.Handle %106, float %576, float %577, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %754 = extractvalue %dx.types.ResRet.f32 %753, 0
  %755 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %469, i32 undef)  ; BufferLoad(srv,index,wot)
  %756 = extractvalue %dx.types.ResRet.i32 %755, 0
  %757 = and i32 %756, 524288
  %758 = icmp ne i32 %757, 0
  %759 = fcmp fast ogt float %754, 0x3FE0101020000000
  %760 = select i1 %759, float 1.000000e+00, float 0.000000e+00
  %761 = select i1 %758, float %760, float %754
  %762 = fmul fast float %761, %742
  br label %763

; <label>:763                                     ; preds = %747, %741
  %764 = phi float [ %762, %747 ], [ %742, %741 ]
  %765 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %469, i32 undef)  ; BufferLoad(srv,index,wot)
  %766 = extractvalue %dx.types.ResRet.i32 %765, 0
  %767 = and i32 %766, 16
  %768 = icmp eq i32 %767, 0
  br i1 %768, label %967, label %769

; <label>:769                                     ; preds = %763
  %770 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %492, i32 undef)  ; BufferLoad(srv,index,wot)
  %771 = extractvalue %dx.types.ResRet.i32 %770, 0
  %772 = add i32 %60, 360
  %773 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %772, i32 undef)  ; BufferLoad(srv,index,wot)
  %774 = extractvalue %dx.types.ResRet.i32 %773, 0
  %775 = add i32 %774, 0
  %776 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %775, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %777 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %776, %dx.types.Handle %105, float %576, float %577, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %778 = extractvalue %dx.types.ResRet.f32 %777, 0
  %779 = extractvalue %dx.types.ResRet.f32 %777, 1
  %780 = extractvalue %dx.types.ResRet.f32 %777, 2
  %781 = extractvalue %dx.types.ResRet.f32 %777, 3
  %782 = and i32 %771, 255
  %783 = uitofp i32 %782 to float
  %784 = lshr i32 %771, 8
  %785 = and i32 %784, 255
  %786 = uitofp i32 %785 to float
  %787 = fmul fast float %781, %783
  %788 = fadd fast float %787, %786
  %789 = fmul fast float %788, 0x3F70101000000000
  %790 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %469, i32 undef)  ; BufferLoad(srv,index,wot)
  %791 = extractvalue %dx.types.ResRet.i32 %790, 0
  %792 = and i32 %791, 512
  %793 = icmp eq i32 %792, 0
  br i1 %793, label %802, label %794

; <label>:794                                     ; preds = %769
  %795 = add i32 %60, 440
  %796 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %795, i32 undef)  ; BufferLoad(srv,index,wot)
  %797 = extractvalue %dx.types.ResRet.i32 %796, 0
  %798 = add i32 %797, 0
  %799 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %798, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %800 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %799, %dx.types.Handle %106, float %576, float %577, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %801 = extractvalue %dx.types.ResRet.f32 %800, 0
  br label %802

; <label>:802                                     ; preds = %794, %769
  %803 = phi float [ %801, %794 ], [ 1.000000e+00, %769 ]
  %804 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %469, i32 undef)  ; BufferLoad(srv,index,wot)
  %805 = extractvalue %dx.types.ResRet.i32 %804, 0
  %806 = and i32 %805, 33554432
  %807 = icmp eq i32 %806, 0
  br i1 %807, label %914, label %808

; <label>:808                                     ; preds = %802
  %809 = add i32 %60, 224
  %810 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %809, i32 undef)  ; BufferLoad(srv,index,wot)
  %811 = extractvalue %dx.types.ResRet.i32 %810, 0
  %812 = and i32 %811, 65535
  %813 = call float @dx.op.legacyF16ToF32(i32 131, i32 %812)  ; LegacyF16ToF32(value)
  %814 = lshr i32 %811, 16
  %815 = call float @dx.op.legacyF16ToF32(i32 131, i32 %814)  ; LegacyF16ToF32(value)
  %816 = add i32 %60, 228
  %817 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %816, i32 undef)  ; BufferLoad(srv,index,wot)
  %818 = extractvalue %dx.types.ResRet.i32 %817, 0
  %819 = and i32 %818, 65535
  %820 = call float @dx.op.legacyF16ToF32(i32 131, i32 %819)  ; LegacyF16ToF32(value)
  %821 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %250, i32 undef)  ; BufferLoad(srv,index,wot)
  %822 = extractvalue %dx.types.ResRet.i32 %821, 0
  %823 = lshr i32 %822, 24
  %824 = uitofp i32 %823 to float
  %825 = fmul fast float %824, 0x3F70101020000000
  %826 = and i32 %822, 255
  %827 = uitofp i32 %826 to float
  %828 = fmul fast float %827, 0x3F70101020000000
  %829 = lshr i32 %822, 8
  %830 = and i32 %829, 255
  %831 = uitofp i32 %830 to float
  %832 = fmul fast float %831, 0x3F70101020000000
  %833 = lshr i32 %822, 16
  %834 = and i32 %833, 255
  %835 = uitofp i32 %834 to float
  %836 = fmul fast float %835, 0x3F70101020000000
  %837 = add i32 %60, 220
  %838 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %837, i32 undef)  ; BufferLoad(srv,index,wot)
  %839 = extractvalue %dx.types.ResRet.i32 %838, 0
  %840 = lshr i32 %839, 24
  %841 = uitofp i32 %840 to float
  %842 = fmul fast float %841, 0x3F70101020000000
  %843 = and i32 %839, 255
  %844 = uitofp i32 %843 to float
  %845 = fmul fast float %844, 0x3F70101020000000
  %846 = lshr i32 %839, 8
  %847 = and i32 %846, 255
  %848 = uitofp i32 %847 to float
  %849 = fmul fast float %848, 0x3F70101020000000
  %850 = lshr i32 %839, 16
  %851 = and i32 %850, 255
  %852 = uitofp i32 %851 to float
  %853 = fmul fast float %852, 0x3F70101020000000
  %854 = bitcast float %778 to i32
  %855 = ashr i32 %854, 1
  %856 = sub nsw i32 1597463174, %855
  %857 = bitcast i32 %856 to float
  %858 = fmul fast float %778, 5.000000e-01
  %859 = fmul fast float %857, %857
  %860 = fmul fast float %859, %858
  %861 = fsub fast float 1.500000e+00, %860
  %862 = fmul fast float %857, %778
  %863 = fmul fast float %862, %861
  %864 = bitcast float %779 to i32
  %865 = ashr i32 %864, 1
  %866 = sub nsw i32 1597463174, %865
  %867 = bitcast i32 %866 to float
  %868 = fmul fast float %779, 5.000000e-01
  %869 = fmul fast float %867, %867
  %870 = fmul fast float %869, %868
  %871 = fsub fast float 1.500000e+00, %870
  %872 = fmul fast float %867, %779
  %873 = fmul fast float %872, %871
  %874 = bitcast float %780 to i32
  %875 = ashr i32 %874, 1
  %876 = sub nsw i32 1597463174, %875
  %877 = bitcast i32 %876 to float
  %878 = fmul fast float %780, 5.000000e-01
  %879 = fmul fast float %877, %877
  %880 = fmul fast float %879, %878
  %881 = fsub fast float 1.500000e+00, %880
  %882 = fmul fast float %877, %780
  %883 = fmul fast float %882, %881
  %884 = fsub fast float %863, %845
  %885 = fsub fast float %873, %849
  %886 = fsub fast float %883, %853
  %887 = fmul fast float %884, %813
  %888 = fmul fast float %885, %815
  %889 = fmul fast float %886, %820
  %890 = fadd fast float %887, %828
  %891 = fadd fast float %888, %832
  %892 = fadd fast float %889, %836
  %893 = call float @dx.op.unary.f32(i32 7, float %890)  ; Saturate(value)
  %894 = call float @dx.op.unary.f32(i32 7, float %891)  ; Saturate(value)
  %895 = call float @dx.op.unary.f32(i32 7, float %892)  ; Saturate(value)
  %896 = fmul fast float %893, %893
  %897 = fmul fast float %894, %894
  %898 = fmul fast float %895, %895
  %899 = fsub fast float %896, %778
  %900 = fsub fast float %897, %779
  %901 = fsub fast float %898, %780
  %902 = fmul fast float %899, %803
  %903 = fmul fast float %900, %803
  %904 = fmul fast float %901, %803
  %905 = fadd fast float %902, %778
  %906 = fadd fast float %903, %779
  %907 = fadd fast float %904, %780
  %908 = fadd fast float %825, %789
  %909 = fsub fast float %908, %842
  %910 = call float @dx.op.unary.f32(i32 7, float %909)  ; Saturate(value)
  %911 = fsub fast float %910, %789
  %912 = fmul fast float %911, %803
  %913 = fadd fast float %912, %789
  br label %967

; <label>:914                                     ; preds = %802
  %915 = and i32 %805, 134217728
  %916 = icmp eq i32 %915, 0
  br i1 %916, label %951, label %917

; <label>:917                                     ; preds = %914
  %918 = call float @dx.op.unary.f32(i32 24, float %255)  ; Sqrt(value)
  %919 = call float @dx.op.unary.f32(i32 24, float %259)  ; Sqrt(value)
  %920 = call float @dx.op.unary.f32(i32 24, float %263)  ; Sqrt(value)
  %921 = fadd fast float %918, -5.000000e-01
  %922 = fadd fast float %919, -5.000000e-01
  %923 = fadd fast float %920, -5.000000e-01
  %924 = fmul fast float %921, %803
  %925 = fmul fast float %922, %803
  %926 = fmul fast float %923, %803
  %927 = fadd fast float %924, 5.000000e-01
  %928 = fadd fast float %925, 5.000000e-01
  %929 = fadd fast float %926, 5.000000e-01
  %930 = call float @dx.op.unary.f32(i32 24, float %778)  ; Sqrt(value)
  %931 = call float @dx.op.unary.f32(i32 24, float %779)  ; Sqrt(value)
  %932 = call float @dx.op.unary.f32(i32 24, float %780)  ; Sqrt(value)
  %933 = fmul fast float %927, 2.000000e+00
  %934 = fsub fast float 1.000000e+00, %933
  %935 = fmul fast float %934, %930
  %936 = fadd fast float %935, %933
  %937 = fmul fast float %936, %930
  %938 = fmul fast float %928, 2.000000e+00
  %939 = fsub fast float 1.000000e+00, %938
  %940 = fmul fast float %939, %931
  %941 = fadd fast float %940, %938
  %942 = fmul fast float %941, %931
  %943 = fmul fast float %929, 2.000000e+00
  %944 = fsub fast float 1.000000e+00, %943
  %945 = fmul fast float %944, %932
  %946 = fadd fast float %945, %943
  %947 = fmul fast float %946, %932
  %948 = fmul fast float %937, %937
  %949 = fmul fast float %942, %942
  %950 = fmul fast float %947, %947
  br label %967

; <label>:951                                     ; preds = %914
  %952 = fmul fast float %255, %255
  %953 = fmul fast float %259, %259
  %954 = fmul fast float %263, %263
  %955 = fadd fast float %952, -1.000000e+00
  %956 = fadd fast float %953, -1.000000e+00
  %957 = fadd fast float %954, -1.000000e+00
  %958 = fmul fast float %803, %955
  %959 = fmul fast float %803, %956
  %960 = fmul fast float %803, %957
  %961 = fadd fast float %958, 1.000000e+00
  %962 = fadd fast float %959, 1.000000e+00
  %963 = fadd fast float %960, 1.000000e+00
  %964 = fmul fast float %961, %778
  %965 = fmul fast float %962, %779
  %966 = fmul fast float %963, %780
  br label %967

; <label>:967                                     ; preds = %951, %917, %808, %763
  %968 = phi float [ %913, %808 ], [ %789, %917 ], [ %789, %951 ], [ 0x3FA23C0BE0000000, %763 ]
  %969 = phi float [ %905, %808 ], [ %948, %917 ], [ %964, %951 ], [ 1.000000e+00, %763 ]
  %970 = phi float [ %906, %808 ], [ %949, %917 ], [ %965, %951 ], [ 1.000000e+00, %763 ]
  %971 = phi float [ %907, %808 ], [ %950, %917 ], [ %966, %951 ], [ 1.000000e+00, %763 ]
  %972 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %973 = extractvalue %dx.types.CBufRet.i32 %972, 1
  %974 = and i32 %973, 1
  %975 = icmp ne i32 %974, 0
  %976 = add i32 %60, 356
  %977 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %976, i32 undef)  ; BufferLoad(srv,index,wot)
  %978 = extractvalue %dx.types.ResRet.i32 %977, 0
  %979 = and i32 %978, 32
  %980 = icmp ne i32 %979, 0
  %981 = and i1 %975, %980
  %982 = select i1 %981, float 1.000000e+00, float %969
  %983 = select i1 %981, float 0x3FD3333340000000, float %970
  %984 = select i1 %981, float 0x3FD3333340000000, float %971
  %985 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %469, i32 undef)  ; BufferLoad(srv,index,wot)
  %986 = extractvalue %dx.types.ResRet.i32 %985, 0
  %987 = and i32 %986, 32
  %988 = icmp eq i32 %987, 0
  br i1 %988, label %1061, label %989

; <label>:989                                     ; preds = %967
  %990 = add i32 %60, 92
  %991 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %990, i32 undef)  ; BufferLoad(srv,index,wot)
  %992 = extractvalue %dx.types.ResRet.i32 %991, 0
  %993 = add i32 %60, 376
  %994 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %993, i32 undef)  ; BufferLoad(srv,index,wot)
  %995 = extractvalue %dx.types.ResRet.i32 %994, 0
  %996 = add i32 %995, 0
  %997 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %996, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %998 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %997, %dx.types.Handle %105, float %576, float %577, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %999 = extractvalue %dx.types.ResRet.f32 %998, 0
  %1000 = extractvalue %dx.types.ResRet.f32 %998, 1
  %1001 = extractvalue %dx.types.ResRet.f32 %998, 2
  %1002 = extractvalue %dx.types.ResRet.f32 %998, 3
  %1003 = and i32 %992, 255
  %1004 = uitofp i32 %1003 to float
  %1005 = lshr i32 %992, 8
  %1006 = and i32 %1005, 255
  %1007 = uitofp i32 %1006 to float
  %1008 = lshr i32 %992, 16
  %1009 = and i32 %1008, 255
  %1010 = uitofp i32 %1009 to float
  %1011 = fmul fast float %1010, 0x3F70101000000000
  %1012 = fmul fast float %999, %1004
  %1013 = fadd fast float %1012, %1007
  %1014 = fmul fast float %1013, 0x3F70101000000000
  %1015 = fadd fast float %1000, -5.000000e-01
  %1016 = fadd fast float %1002, -5.000000e-01
  %1017 = fmul fast float %1015, %1011
  %1018 = fmul fast float %1016, %1011
  %1019 = fadd fast float %1017, 5.000000e-01
  %1020 = fadd fast float %1018, 5.000000e-01
  %1021 = fmul fast float %1019, 2.000000e+00
  %1022 = fadd fast float %1021, -1.000000e+00
  %1023 = fmul fast float %1020, 2.000000e+00
  %1024 = fadd fast float %1023, -1.000000e+00
  %1025 = fadd fast float %1022, %1024
  %1026 = fmul fast float %1025, 5.000000e-01
  %1027 = fsub fast float %1022, %1024
  %1028 = fmul fast float %1027, 5.000000e-01
  %1029 = call float @dx.op.unary.f32(i32 6, float %1026)  ; FAbs(value)
  %1030 = fsub fast float 1.000000e+00, %1029
  %1031 = call float @dx.op.unary.f32(i32 6, float %1028)  ; FAbs(value)
  %1032 = fsub fast float %1030, %1031
  %1033 = call float @dx.op.dot3.f32(i32 55, float %1026, float %1028, float %1032, float %1026, float %1028, float %1032)  ; Dot3(ax,ay,az,bx,by,bz)
  %1034 = call float @dx.op.unary.f32(i32 25, float %1033)  ; Rsqrt(value)
  %1035 = fmul fast float %1026, %1034
  %1036 = fmul fast float %1028, %1034
  %1037 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %469, i32 undef)  ; BufferLoad(srv,index,wot)
  %1038 = extractvalue %dx.types.ResRet.i32 %1037, 0
  %1039 = and i32 %1038, 67108864
  %1040 = icmp eq i32 %1039, 0
  br i1 %1040, label %1057, label %1041

; <label>:1041                                    ; preds = %989
  %1042 = add i32 %60, 280
  %1043 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1042, i32 undef)  ; BufferLoad(srv,index,wot)
  %1044 = extractvalue %dx.types.ResRet.i32 %1043, 0
  %1045 = and i32 %1044, 65535
  %1046 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1045)  ; LegacyF16ToF32(value)
  %1047 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %486, i32 undef)  ; BufferLoad(srv,index,wot)
  %1048 = extractvalue %dx.types.ResRet.i32 %1047, 0
  %1049 = and i32 %1048, 65535
  %1050 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1049)  ; LegacyF16ToF32(value)
  %1051 = lshr i32 %1044, 16
  %1052 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1051)  ; LegacyF16ToF32(value)
  %1053 = fsub fast float %1014, %1052
  %1054 = fmul fast float %1053, %1046
  %1055 = fadd fast float %1054, %1050
  %1056 = call float @dx.op.unary.f32(i32 7, float %1055)  ; Saturate(value)
  br label %1057

; <label>:1057                                    ; preds = %1041, %989
  %1058 = phi float [ %1056, %1041 ], [ %1014, %989 ]
  %1059 = call float @dx.op.dot2.f32(i32 54, float %1035, float %1036, float %480, float %481)  ; Dot2(ax,ay,bx,by)
  %1060 = call float @dx.op.dot2.f32(i32 54, float %1035, float %1036, float %482, float %483)  ; Dot2(ax,ay,bx,by)
  br label %1061

; <label>:1061                                    ; preds = %1057, %967
  %1062 = phi float [ %1058, %1057 ], [ 0x3FD6666660000000, %967 ]
  %1063 = phi float [ %1059, %1057 ], [ 0.000000e+00, %967 ]
  %1064 = phi float [ %1060, %1057 ], [ 0.000000e+00, %967 ]
  %1065 = phi float [ %1001, %1057 ], [ 1.000000e+00, %967 ]
  %1066 = add i32 %60, 160
  %1067 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1066, i32 undef)  ; BufferLoad(srv,index,wot)
  %1068 = extractvalue %dx.types.ResRet.i32 %1067, 0
  %1069 = lshr i32 %1068, 22
  %1070 = shl nuw nsw i32 %1069, 5
  %1071 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1070)  ; LegacyF16ToF32(value)
  %1072 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %469, i32 undef)  ; BufferLoad(srv,index,wot)
  %1073 = extractvalue %dx.types.ResRet.i32 %1072, 0
  %1074 = and i32 %1073, 64
  %1075 = icmp eq i32 %1074, 0
  br i1 %1075, label %1109, label %1076

; <label>:1076                                    ; preds = %1061
  %1077 = add i32 %60, 392
  %1078 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1077, i32 undef)  ; BufferLoad(srv,index,wot)
  %1079 = extractvalue %dx.types.ResRet.i32 %1078, 0
  %1080 = add i32 %1079, 0
  %1081 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1080, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1082 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %469, i32 undef)  ; BufferLoad(srv,index,wot)
  %1083 = extractvalue %dx.types.ResRet.i32 %1082, 0
  %1084 = and i32 %1083, 131072
  %1085 = icmp eq i32 %1084, 0
  %1086 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1081, %dx.types.Handle %105, float %576, float %577, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1087 = extractvalue %dx.types.ResRet.f32 %1086, 0
  %1088 = extractvalue %dx.types.ResRet.f32 %1086, 1
  %1089 = extractvalue %dx.types.ResRet.f32 %1086, 2
  %1090 = fmul fast float %1087, %243
  %1091 = fmul fast float %1088, %246
  %1092 = fmul fast float %1089, %249
  br i1 %1085, label %1099, label %1093

; <label>:1093                                    ; preds = %1076
  %1094 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1095 = extractvalue %dx.types.CBufRet.f32 %1094, 0
  %1096 = fmul fast float %1095, %1090
  %1097 = fmul fast float %1095, %1091
  %1098 = fmul fast float %1095, %1092
  br label %1099

; <label>:1099                                    ; preds = %1093, %1076
  %1100 = phi float [ %1096, %1093 ], [ %1090, %1076 ]
  %1101 = phi float [ %1097, %1093 ], [ %1091, %1076 ]
  %1102 = phi float [ %1098, %1093 ], [ %1092, %1076 ]
  %1103 = fmul fast float %1100, %1071
  %1104 = select i1 %226, float %1103, float %1100
  %1105 = call float @dx.op.dot3.f32(i32 55, float %1104, float %1101, float %1102, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1106 = select i1 %226, float 0.000000e+00, float %1100
  %1107 = select i1 %226, float %1105, float %1101
  %1108 = select i1 %226, float 0.000000e+00, float %1102
  br label %1109

; <label>:1109                                    ; preds = %1099, %1061
  %1110 = phi float [ %1106, %1099 ], [ 0.000000e+00, %1061 ]
  %1111 = phi float [ %1107, %1099 ], [ 0.000000e+00, %1061 ]
  %1112 = phi float [ %1108, %1099 ], [ 0.000000e+00, %1061 ]
  %1113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %469, i32 undef)  ; BufferLoad(srv,index,wot)
  %1114 = extractvalue %dx.types.ResRet.i32 %1113, 0
  %1115 = and i32 %1114, 1024
  %1116 = icmp eq i32 %1115, 0
  br i1 %1116, label %1147, label %1117

; <label>:1117                                    ; preds = %1109
  %1118 = add i32 %60, 152
  %1119 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1118, i32 undef)  ; BufferLoad(srv,index,wot)
  %1120 = extractvalue %dx.types.ResRet.i32 %1119, 0
  %1121 = and i32 %1120, 255
  %1122 = uitofp i32 %1121 to float
  %1123 = fmul fast float %1122, 0x3F70101020000000
  %1124 = lshr i32 %1120, 8
  %1125 = and i32 %1124, 255
  %1126 = uitofp i32 %1125 to float
  %1127 = fmul fast float %1126, 0x3F70101020000000
  %1128 = lshr i32 %1120, 16
  %1129 = and i32 %1128, 255
  %1130 = uitofp i32 %1129 to float
  %1131 = fmul fast float %1130, 0x3F70101020000000
  %1132 = fmul fast float %1123, %1123
  %1133 = fmul fast float %1127, %1127
  %1134 = fmul fast float %1131, %1131
  %1135 = add i32 %60, 456
  %1136 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1135, i32 undef)  ; BufferLoad(srv,index,wot)
  %1137 = extractvalue %dx.types.ResRet.i32 %1136, 0
  %1138 = add i32 %1137, 0
  %1139 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1138, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1140 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1139, %dx.types.Handle %106, float %576, float %577, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1141 = extractvalue %dx.types.ResRet.f32 %1140, 0
  %1142 = extractvalue %dx.types.ResRet.f32 %1140, 1
  %1143 = extractvalue %dx.types.ResRet.f32 %1140, 2
  %1144 = fmul fast float %1132, %1141
  %1145 = fmul fast float %1133, %1142
  %1146 = fmul fast float %1134, %1143
  br label %1147

; <label>:1147                                    ; preds = %1117, %1109
  %1148 = phi float [ %1144, %1117 ], [ 0.000000e+00, %1109 ]
  %1149 = phi float [ %1145, %1117 ], [ 0.000000e+00, %1109 ]
  %1150 = phi float [ %1146, %1117 ], [ 0.000000e+00, %1109 ]
  %1151 = fcmp fast ogt float %1148, 0.000000e+00
  %1152 = fcmp fast ogt float %1149, 0.000000e+00
  %1153 = fcmp fast ogt float %1150, 0.000000e+00
  %1154 = call float @dx.op.unary.f32(i32 23, float %1148)  ; Log(value)
  %1155 = call float @dx.op.unary.f32(i32 23, float %1149)  ; Log(value)
  %1156 = call float @dx.op.unary.f32(i32 23, float %1150)  ; Log(value)
  %1157 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1066, i32 undef)  ; BufferLoad(srv,index,wot)
  %1158 = extractvalue %dx.types.ResRet.i32 %1157, 0
  %1159 = lshr i32 %1158, 7
  %1160 = and i32 %1159, 32752
  %1161 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1160)  ; LegacyF16ToF32(value)
  %1162 = fmul fast float %1154, 0xBFE62E4300000000
  %1163 = fmul fast float %1162, %1161
  %1164 = fmul fast float %1155, 0xBFE62E4300000000
  %1165 = fmul fast float %1164, %1161
  %1166 = fmul fast float %1156, 0xBFE62E4300000000
  %1167 = fmul fast float %1166, %1161
  %1168 = select i1 %1151, float %1163, float 1.270000e+02
  %1169 = select i1 %1152, float %1165, float 1.270000e+02
  %1170 = select i1 %1153, float %1167, float 1.270000e+02
  %1171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %469, i32 undef)  ; BufferLoad(srv,index,wot)
  %1172 = extractvalue %dx.types.ResRet.i32 %1171, 0
  %1173 = and i32 %1172, 10240
  %1174 = icmp eq i32 %1173, 0
  br i1 %1174, label %1219, label %1175

; <label>:1175                                    ; preds = %1147
  %1176 = add i32 %60, 472
  %1177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1176, i32 undef)  ; BufferLoad(srv,index,wot)
  %1178 = extractvalue %dx.types.ResRet.i32 %1177, 0
  %1179 = add i32 %1178, 0
  %1180 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1179, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1181 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1180, %dx.types.Handle %106, float %576, float %577, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1182 = extractvalue %dx.types.ResRet.f32 %1181, 1
  %1183 = extractvalue %dx.types.ResRet.f32 %1181, 3
  %1184 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %469, i32 undef)  ; BufferLoad(srv,index,wot)
  %1185 = extractvalue %dx.types.ResRet.i32 %1184, 0
  %1186 = and i32 %1185, 1048576
  %1187 = icmp ne i32 %1186, 0
  %1188 = and i32 %1185, 8192
  %1189 = icmp eq i32 %1188, 0
  br i1 %1189, label %1205, label %1190

; <label>:1190                                    ; preds = %1175
  %1191 = extractvalue %dx.types.ResRet.f32 %1181, 2
  %1192 = select i1 %1187, float %1191, float %1182
  %1193 = extractvalue %dx.types.ResRet.f32 %1181, 0
  %1194 = select i1 %1187, float %1193, float %1182
  %1195 = add i32 %60, 96
  %1196 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1195, i32 undef)  ; BufferLoad(srv,index,wot)
  %1197 = extractvalue %dx.types.ResRet.i32 %1196, 0
  %1198 = lshr i32 %1197, 16
  %1199 = and i32 %1198, 255
  %1200 = uitofp i32 %1199 to float
  %1201 = fmul fast float %1200, 0x3F80101020000000
  %1202 = fmul fast float %1201, %1194
  %1203 = fmul fast float %1201, %1182
  %1204 = fmul fast float %1201, %1192
  br label %1205

; <label>:1205                                    ; preds = %1190, %1175
  %1206 = phi float [ %1202, %1190 ], [ 0.000000e+00, %1175 ]
  %1207 = phi float [ %1203, %1190 ], [ 0.000000e+00, %1175 ]
  %1208 = phi float [ %1204, %1190 ], [ 0.000000e+00, %1175 ]
  %1209 = and i32 %1185, 2048
  %1210 = icmp eq i32 %1209, 0
  br i1 %1210, label %1219, label %1211

; <label>:1211                                    ; preds = %1205
  %1212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1066, i32 undef)  ; BufferLoad(srv,index,wot)
  %1213 = extractvalue %dx.types.ResRet.i32 %1212, 0
  %1214 = shl i32 %1213, 4
  %1215 = and i32 %1214, 32752
  %1216 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1215)  ; LegacyF16ToF32(value)
  %1217 = fmul fast float %1216, %1183
  %1218 = call float @dx.op.binary.f32(i32 35, float %1217, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1219

; <label>:1219                                    ; preds = %1211, %1205, %1147
  %1220 = phi float [ %1206, %1211 ], [ %1206, %1205 ], [ 0.000000e+00, %1147 ]
  %1221 = phi float [ %1207, %1211 ], [ %1207, %1205 ], [ 0.000000e+00, %1147 ]
  %1222 = phi float [ %1208, %1211 ], [ %1208, %1205 ], [ 0.000000e+00, %1147 ]
  %1223 = phi float [ %1218, %1211 ], [ 0x3F70101020000000, %1205 ], [ 0x3F70101020000000, %1147 ]
  %1224 = add i32 %60, 96
  %1225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1224, i32 undef)  ; BufferLoad(srv,index,wot)
  %1226 = extractvalue %dx.types.ResRet.i32 %1225, 0
  %1227 = and i32 %1226, 255
  %1228 = uitofp i32 %1227 to float
  %1229 = lshr i32 %1226, 8
  %1230 = and i32 %1229, 255
  %1231 = uitofp i32 %1230 to float
  %1232 = call float @dx.op.dot3.f32(i32 55, float %982, float %983, float %984, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1233 = fmul fast float %1231, %1232
  %1234 = fadd fast float %1233, %1228
  %1235 = fmul fast float %1234, 0x3F70101020000000
  %1236 = call float @dx.op.unary.f32(i32 7, float %1235)  ; Saturate(value)
  br label %1237

; <label>:1237                                    ; preds = %1219, %462
  %1238 = phi float [ 0.000000e+00, %462 ], [ %1063, %1219 ]
  %1239 = phi float [ 0.000000e+00, %462 ], [ %1064, %1219 ]
  %1240 = phi float [ 0.000000e+00, %462 ], [ %982, %1219 ]
  %1241 = phi float [ 0.000000e+00, %462 ], [ %983, %1219 ]
  %1242 = phi float [ 0.000000e+00, %462 ], [ %984, %1219 ]
  %1243 = phi float [ 0.000000e+00, %462 ], [ %1110, %1219 ]
  %1244 = phi float [ 0.000000e+00, %462 ], [ %1111, %1219 ]
  %1245 = phi float [ 0.000000e+00, %462 ], [ %1112, %1219 ]
  %1246 = phi float [ 0.000000e+00, %462 ], [ %1220, %1219 ]
  %1247 = phi float [ 0.000000e+00, %462 ], [ %1221, %1219 ]
  %1248 = phi float [ 0.000000e+00, %462 ], [ %1222, %1219 ]
  %1249 = phi float [ 0.000000e+00, %462 ], [ %1168, %1219 ]
  %1250 = phi float [ 0.000000e+00, %462 ], [ %1169, %1219 ]
  %1251 = phi float [ 0.000000e+00, %462 ], [ %1170, %1219 ]
  %1252 = phi float [ 0.000000e+00, %462 ], [ %968, %1219 ]
  %1253 = phi float [ 0.000000e+00, %462 ], [ %764, %1219 ]
  %1254 = phi float [ 0.000000e+00, %462 ], [ %1062, %1219 ]
  %1255 = phi float [ 0.000000e+00, %462 ], [ %1065, %1219 ]
  %1256 = phi float [ 0.000000e+00, %462 ], [ %1223, %1219 ]
  %1257 = phi float [ 0.000000e+00, %462 ], [ %1236, %1219 ]
  br i1 %410, label %2295, label %1258

; <label>:1258                                    ; preds = %1237
  %1259 = icmp ult i32 %468, 2
  %1260 = add i32 %60, 40
  %1261 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1260, i32 undef)  ; BufferLoad(srv,index,wot)
  %1262 = extractvalue %dx.types.ResRet.i32 %1261, 0
  %1263 = add i32 %60, 44
  %1264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1263, i32 undef)  ; BufferLoad(srv,index,wot)
  %1265 = extractvalue %dx.types.ResRet.i32 %1264, 0
  %1266 = or i32 %1265, %1262
  %1267 = icmp eq i32 %1266, 0
  br i1 %1267, label %2295, label %1268

; <label>:1268                                    ; preds = %1258
  %1269 = and i32 %1262, 262144
  %1270 = icmp ne i32 %1269, 0
  %1271 = select i1 %1270, float %63, float 1.000000e+00
  %1272 = select i1 %1270, float %64, float 0.000000e+00
  %1273 = select i1 %1270, float %65, float 0.000000e+00
  %1274 = select i1 %1270, float %66, float 1.000000e+00
  %1275 = select i1 %1270, float %67, float %88
  %1276 = select i1 %1270, float %68, float %89
  %1277 = add i32 %60, 300
  %1278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1277, i32 undef)  ; BufferLoad(srv,index,wot)
  %1279 = extractvalue %dx.types.ResRet.i32 %1278, 0
  %1280 = lshr i32 %1279, 16
  %1281 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1280)  ; LegacyF16ToF32(value)
  %1282 = fmul fast float %1281, 0x3F50624DE0000000
  %1283 = add i32 %60, 104
  %1284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1283, i32 undef)  ; BufferLoad(srv,index,wot)
  %1285 = extractvalue %dx.types.ResRet.i32 %1284, 0
  %1286 = lshr i32 %1285, 16
  %1287 = and i32 %1286, 255
  %1288 = lshr i32 %1285, 24
  %1289 = add i32 %60, 308
  %1290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1289, i32 undef)  ; BufferLoad(srv,index,wot)
  %1291 = extractvalue %dx.types.ResRet.i32 %1290, 0
  %1292 = and i32 %1291, 65535
  %1293 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1292)  ; LegacyF16ToF32(value)
  %1294 = lshr i32 %1291, 16
  %1295 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1294)  ; LegacyF16ToF32(value)
  %1296 = add i32 %60, 48
  %1297 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1296, i32 undef)  ; BufferLoad(srv,index,wot)
  %1298 = extractvalue %dx.types.ResRet.i32 %1297, 0
  %1299 = lshr i32 %1298, 22
  %1300 = shl nuw nsw i32 %1299, 5
  %1301 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1300)  ; LegacyF16ToF32(value)
  %1302 = shl i32 %1298, 4
  %1303 = and i32 %1302, 32752
  %1304 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1303)  ; LegacyF16ToF32(value)
  %1305 = lshr i32 %1298, 7
  %1306 = and i32 %1305, 32752
  %1307 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1306)  ; LegacyF16ToF32(value)
  %1308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1309 = extractvalue %dx.types.CBufRet.f32 %1308, 3
  %1310 = fmul fast float %1309, 1.000000e+03
  %1311 = fmul fast float %320, %1310
  %1312 = call float @dx.op.unary.f32(i32 22, float %1311)  ; Frc(value)
  %1313 = fadd fast float %1312, %310
  %1314 = fmul fast float %321, %1310
  %1315 = call float @dx.op.unary.f32(i32 22, float %1314)  ; Frc(value)
  %1316 = fadd fast float %1315, %312
  %1317 = fmul fast float %1282, %1310
  %1318 = call float @dx.op.unary.f32(i32 22, float %1317)  ; Frc(value)
  %1319 = fmul fast float %1318, 0x401921FB60000000
  %1320 = fadd fast float %1319, %1301
  %1321 = call float @dx.op.unary.f32(i32 13, float %1320)  ; Sin(value)
  %1322 = call float @dx.op.unary.f32(i32 12, float %1320)  ; Cos(value)
  %1323 = fsub fast float -0.000000e+00, %1321
  %1324 = fadd fast float %1275, -5.000000e-01
  %1325 = fadd fast float %1276, -5.000000e-01
  %1326 = fmul fast float %1293, %1324
  %1327 = fmul fast float %1295, %1325
  %1328 = fadd fast float %1326, 5.000000e-01
  %1329 = fadd fast float %1327, 5.000000e-01
  %1330 = fmul fast float %1304, %1328
  %1331 = fmul fast float %1307, %1329
  %1332 = fmul fast float %1322, %1330
  %1333 = call float @dx.op.tertiary.f32(i32 46, float %1323, float %1331, float %1332)  ; FMad(a,b,c)
  %1334 = fmul fast float %1321, %1330
  %1335 = call float @dx.op.tertiary.f32(i32 46, float %1322, float %1331, float %1334)  ; FMad(a,b,c)
  %1336 = fadd fast float %1313, %1333
  %1337 = fadd fast float %1316, %1335
  %1338 = icmp ugt i32 %1287, 1
  %1339 = icmp ugt i32 %1285, 33554431
  %1340 = or i1 %1339, %1338
  br i1 %1340, label %1341, label %1366

; <label>:1341                                    ; preds = %1268
  %1342 = add i32 %60, 244
  %1343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1342, i32 undef)  ; BufferLoad(srv,index,wot)
  %1344 = extractvalue %dx.types.ResRet.i32 %1343, 0
  %1345 = lshr i32 %1344, 16
  %1346 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1345)  ; LegacyF16ToF32(value)
  %1347 = fmul fast float %1309, %1346
  %1348 = call float @dx.op.unary.f32(i32 22, float %1347)  ; Frc(value)
  %1349 = mul nuw nsw i32 %1287, %1288
  %1350 = uitofp i32 %1349 to float
  %1351 = fmul fast float %1348, %1350
  %1352 = call float @dx.op.unary.f32(i32 27, float %1351)  ; Round_ni(value)
  %1353 = fptoui float %1352 to i32
  %1354 = urem i32 %1353, %1287
  %1355 = udiv i32 %1353, %1288
  %1356 = call float @dx.op.unary.f32(i32 22, float %1336)  ; Frc(value)
  %1357 = call float @dx.op.unary.f32(i32 22, float %1337)  ; Frc(value)
  %1358 = uitofp i32 %1354 to float
  %1359 = uitofp i32 %1355 to float
  %1360 = fadd fast float %1356, %1358
  %1361 = fadd fast float %1357, %1359
  %1362 = uitofp i32 %1287 to float
  %1363 = uitofp i32 %1288 to float
  %1364 = fdiv fast float %1360, %1362
  %1365 = fdiv fast float %1361, %1363
  br label %1366

; <label>:1366                                    ; preds = %1341, %1268
  %1367 = phi float [ %1364, %1341 ], [ %1336, %1268 ]
  %1368 = phi float [ %1365, %1341 ], [ %1337, %1268 ]
  %1369 = and i32 %1262, 16777216
  %1370 = icmp eq i32 %1369, 0
  br i1 %1370, label %1480, label %1371

; <label>:1371                                    ; preds = %1366
  %1372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1373 = extractvalue %dx.types.CBufRet.f32 %1372, 0
  %1374 = extractvalue %dx.types.CBufRet.f32 %1372, 1
  %1375 = extractvalue %dx.types.CBufRet.f32 %1372, 2
  %1376 = fadd fast float %1373, %164
  %1377 = fadd fast float %1374, %165
  %1378 = fadd fast float %1375, %166
  %1379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1380 = extractvalue %dx.types.CBufRet.f32 %1379, 0
  %1381 = call float @dx.op.unary.f32(i32 7, float %1380)  ; Saturate(value)
  %1382 = icmp eq i32 %61, 65535
  br i1 %1382, label %1477, label %1383

; <label>:1383                                    ; preds = %1371
  %1384 = lshr i32 %61, 1
  %1385 = shl i32 %1384, 2
  %1386 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1385, i32 undef)  ; BufferLoad(srv,index,wot)
  %1387 = extractvalue %dx.types.ResRet.i32 %1386, 0
  %1388 = and i32 %61, 1
  %1389 = icmp ne i32 %1388, 0
  %1390 = lshr i32 %1387, 16
  %1391 = and i32 %1387, 65535
  %1392 = select i1 %1389, i32 %1390, i32 %1391
  %1393 = icmp eq i32 %1392, 65535
  br i1 %1393, label %1473, label %1394

; <label>:1394                                    ; preds = %1383
  %1395 = mul nuw nsw i32 %1392, 40
  %1396 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1395, i32 undef)  ; BufferLoad(srv,index,wot)
  %1397 = extractvalue %dx.types.ResRet.f32 %1396, 0
  %1398 = extractvalue %dx.types.ResRet.f32 %1396, 1
  %1399 = extractvalue %dx.types.ResRet.f32 %1396, 2
  %1400 = add nuw nsw i32 %1395, 12
  %1401 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1400, i32 undef)  ; BufferLoad(srv,index,wot)
  %1402 = extractvalue %dx.types.ResRet.f32 %1401, 0
  %1403 = extractvalue %dx.types.ResRet.f32 %1401, 1
  %1404 = extractvalue %dx.types.ResRet.f32 %1401, 2
  %1405 = add nuw nsw i32 %1395, 24
  %1406 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1405, i32 undef)  ; BufferLoad(srv,index,wot)
  %1407 = extractvalue %dx.types.ResRet.f32 %1406, 0
  %1408 = extractvalue %dx.types.ResRet.f32 %1406, 1
  %1409 = extractvalue %dx.types.ResRet.f32 %1406, 2
  %1410 = add nuw nsw i32 %1395, 36
  %1411 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1410, i32 undef)  ; BufferLoad(srv,index,wot)
  %1412 = extractvalue %dx.types.ResRet.f32 %1411, 0
  %1413 = fsub fast float %1376, %1397
  %1414 = fsub fast float %1377, %1398
  %1415 = fsub fast float %1378, %1399
  %1416 = fmul fast float %1412, %1413
  %1417 = fmul fast float %1412, %1414
  %1418 = fmul fast float %1412, %1415
  %1419 = call float @dx.op.unary.f32(i32 27, float %1416)  ; Round_ni(value)
  %1420 = call float @dx.op.unary.f32(i32 27, float %1417)  ; Round_ni(value)
  %1421 = call float @dx.op.unary.f32(i32 27, float %1418)  ; Round_ni(value)
  %1422 = fadd fast float %1419, 5.000000e-01
  %1423 = fadd fast float %1420, 5.000000e-01
  %1424 = fadd fast float %1421, 5.000000e-01
  %1425 = fmul fast float %1422, %1402
  %1426 = fmul fast float %1423, %1403
  %1427 = fmul fast float %1424, %1404
  %1428 = shl i32 %61, 2
  %1429 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1428, i32 undef)  ; BufferLoad(srv,index,wot)
  %1430 = extractvalue %dx.types.ResRet.i32 %1429, 0
  %1431 = add i32 %1430, 0
  %1432 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1431, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1433 = call float @dx.op.unary.f32(i32 22, float %1425)  ; Frc(value)
  %1434 = call float @dx.op.unary.f32(i32 22, float %1426)  ; Frc(value)
  %1435 = call float @dx.op.unary.f32(i32 22, float %1427)  ; Frc(value)
  %1436 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1432, %dx.types.Handle %55, float %1433, float %1434, float %1435, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1437 = extractvalue %dx.types.ResRet.f32 %1436, 0
  %1438 = extractvalue %dx.types.ResRet.f32 %1436, 1
  %1439 = extractvalue %dx.types.ResRet.f32 %1436, 2
  %1440 = fmul fast float %1437, 1.023000e+03
  %1441 = fmul fast float %1438, 1.023000e+03
  %1442 = fmul fast float %1439, 1.023000e+03
  %1443 = fadd fast float %1440, 5.000000e-01
  %1444 = fadd fast float %1441, 5.000000e-01
  %1445 = fadd fast float %1442, 5.000000e-01
  %1446 = call float @dx.op.unary.f32(i32 27, float %1443)  ; Round_ni(value)
  %1447 = call float @dx.op.unary.f32(i32 27, float %1444)  ; Round_ni(value)
  %1448 = call float @dx.op.unary.f32(i32 27, float %1445)  ; Round_ni(value)
  %1449 = fsub fast float %1416, %1419
  %1450 = fsub fast float %1417, %1420
  %1451 = fsub fast float %1418, %1421
  %1452 = fmul fast float %1449, 7.500000e-01
  %1453 = fmul fast float %1450, 7.500000e-01
  %1454 = fmul fast float %1451, 7.500000e-01
  %1455 = fadd fast float %1419, 1.250000e-01
  %1456 = fadd fast float %1455, %1452
  %1457 = fadd fast float %1456, %1446
  %1458 = fadd fast float %1420, 1.250000e-01
  %1459 = fadd fast float %1458, %1453
  %1460 = fadd fast float %1459, %1447
  %1461 = fadd fast float %1421, 1.250000e-01
  %1462 = fadd fast float %1461, %1454
  %1463 = fadd fast float %1462, %1448
  %1464 = fmul fast float %1457, %1407
  %1465 = fmul fast float %1460, %1408
  %1466 = fmul fast float %1463, %1409
  %1467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1428, i32 undef)  ; BufferLoad(srv,index,wot)
  %1468 = extractvalue %dx.types.ResRet.i32 %1467, 0
  %1469 = add i32 %1468, 0
  %1470 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1469, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1471 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1470, %dx.types.Handle %53, float %1464, float %1465, float %1466, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1472 = extractvalue %dx.types.ResRet.f32 %1471, 0
  br label %1473

; <label>:1473                                    ; preds = %1394, %1383
  %1474 = phi float [ %1472, %1394 ], [ -1.000000e+00, %1383 ]
  %1475 = fadd fast float %1474, %1381
  %1476 = call float @dx.op.unary.f32(i32 7, float %1475)  ; Saturate(value)
  br label %1477

; <label>:1477                                    ; preds = %1473, %1371
  %1478 = phi float [ %1476, %1473 ], [ %1381, %1371 ]
  %1479 = fmul fast float %1478, %465
  br label %1480

; <label>:1480                                    ; preds = %1477, %1366
  %1481 = phi float [ %1479, %1477 ], [ %465, %1366 ]
  %1482 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1260, i32 undef)  ; BufferLoad(srv,index,wot)
  %1483 = extractvalue %dx.types.ResRet.i32 %1482, 0
  %1484 = and i32 %1483, 256
  %1485 = icmp eq i32 %1484, 0
  br i1 %1485, label %1532, label %1486

; <label>:1486                                    ; preds = %1480
  %1487 = add i32 %60, 428
  %1488 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1487, i32 undef)  ; BufferLoad(srv,index,wot)
  %1489 = extractvalue %dx.types.ResRet.i32 %1488, 0
  %1490 = add i32 %1489, 0
  %1491 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1490, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1492 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1491, %dx.types.Handle %106, float %1367, float %1368, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1493 = extractvalue %dx.types.ResRet.f32 %1492, 0
  %1494 = add i32 %60, 116
  %1495 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1494, i32 undef)  ; BufferLoad(srv,index,wot)
  %1496 = extractvalue %dx.types.ResRet.i32 %1495, 0
  %1497 = shl i32 %1496, 4
  %1498 = and i32 %1497, 32752
  %1499 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1498)  ; LegacyF16ToF32(value)
  %1500 = lshr i32 %1496, 7
  %1501 = and i32 %1500, 32752
  %1502 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1501)  ; LegacyF16ToF32(value)
  %1503 = fsub fast float 1.000000e+00, %1481
  %1504 = call float @dx.op.binary.f32(i32 35, float %1503, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1505 = bitcast float %1481 to i32
  %1506 = sitofp i32 %1505 to float
  %1507 = fadd fast float %1506, 0xC1CFBF8940000000
  %1508 = fmul fast float %1502, %1507
  %1509 = fadd fast float %1508, 0x41CFBF8940000000
  %1510 = fptosi float %1509 to i32
  %1511 = bitcast i32 %1510 to float
  %1512 = bitcast float %1504 to i32
  %1513 = sitofp i32 %1512 to float
  %1514 = fadd fast float %1513, 0xC1CFBF8940000000
  %1515 = fmul fast float %1514, %1502
  %1516 = fadd fast float %1515, 0x41CFBF8940000000
  %1517 = fptosi float %1516 to i32
  %1518 = bitcast i32 %1517 to float
  %1519 = fmul fast float %1511, %1499
  %1520 = fmul fast float %1518, %1499
  %1521 = fsub fast float %1504, %1519
  %1522 = fadd fast float %1520, %1504
  %1523 = call float @dx.op.unary.f32(i32 7, float %1521)  ; Saturate(value)
  %1524 = call float @dx.op.unary.f32(i32 7, float %1522)  ; Saturate(value)
  %1525 = fsub fast float %1493, %1523
  %1526 = fsub fast float %1524, %1523
  %1527 = bitcast float %1526 to i32
  %1528 = sub nsw i32 2129859010, %1527
  %1529 = bitcast i32 %1528 to float
  %1530 = fmul fast float %1529, %1525
  %1531 = call float @dx.op.unary.f32(i32 7, float %1530)  ; Saturate(value)
  br label %1532

; <label>:1532                                    ; preds = %1486, %1480
  %1533 = phi float [ %1531, %1486 ], [ %1481, %1480 ]
  %1534 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1260, i32 undef)  ; BufferLoad(srv,index,wot)
  %1535 = extractvalue %dx.types.ResRet.i32 %1534, 0
  %1536 = and i32 %1535, 128
  %1537 = icmp eq i32 %1536, 0
  br i1 %1537, label %1554, label %1538

; <label>:1538                                    ; preds = %1532
  %1539 = add i32 %60, 412
  %1540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1539, i32 undef)  ; BufferLoad(srv,index,wot)
  %1541 = extractvalue %dx.types.ResRet.i32 %1540, 0
  %1542 = add i32 %1541, 0
  %1543 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1542, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1544 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1543, %dx.types.Handle %106, float %1367, float %1368, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1545 = extractvalue %dx.types.ResRet.f32 %1544, 0
  %1546 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1260, i32 undef)  ; BufferLoad(srv,index,wot)
  %1547 = extractvalue %dx.types.ResRet.i32 %1546, 0
  %1548 = and i32 %1547, 524288
  %1549 = icmp ne i32 %1548, 0
  %1550 = fcmp fast ogt float %1545, 0x3FE0101020000000
  %1551 = select i1 %1550, float 1.000000e+00, float 0.000000e+00
  %1552 = select i1 %1549, float %1551, float %1545
  %1553 = fmul fast float %1552, %1533
  br label %1554

; <label>:1554                                    ; preds = %1538, %1532
  %1555 = phi float [ %1553, %1538 ], [ %1533, %1532 ]
  %1556 = fcmp fast ult float %1555, 0x3F70101020000000
  br i1 %1556, label %2295, label %1557

; <label>:1557                                    ; preds = %1554
  %1558 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1260, i32 undef)  ; BufferLoad(srv,index,wot)
  %1559 = extractvalue %dx.types.ResRet.i32 %1558, 0
  %1560 = and i32 %1559, 16
  %1561 = icmp eq i32 %1560, 0
  br i1 %1561, label %1760, label %1562

; <label>:1562                                    ; preds = %1557
  %1563 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1283, i32 undef)  ; BufferLoad(srv,index,wot)
  %1564 = extractvalue %dx.types.ResRet.i32 %1563, 0
  %1565 = add i32 %60, 364
  %1566 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1565, i32 undef)  ; BufferLoad(srv,index,wot)
  %1567 = extractvalue %dx.types.ResRet.i32 %1566, 0
  %1568 = add i32 %1567, 0
  %1569 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1568, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1570 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1569, %dx.types.Handle %105, float %1367, float %1368, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1571 = extractvalue %dx.types.ResRet.f32 %1570, 0
  %1572 = extractvalue %dx.types.ResRet.f32 %1570, 1
  %1573 = extractvalue %dx.types.ResRet.f32 %1570, 2
  %1574 = extractvalue %dx.types.ResRet.f32 %1570, 3
  %1575 = and i32 %1564, 255
  %1576 = uitofp i32 %1575 to float
  %1577 = lshr i32 %1564, 8
  %1578 = and i32 %1577, 255
  %1579 = uitofp i32 %1578 to float
  %1580 = fmul fast float %1574, %1576
  %1581 = fadd fast float %1580, %1579
  %1582 = fmul fast float %1581, 0x3F70101000000000
  %1583 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1260, i32 undef)  ; BufferLoad(srv,index,wot)
  %1584 = extractvalue %dx.types.ResRet.i32 %1583, 0
  %1585 = and i32 %1584, 512
  %1586 = icmp eq i32 %1585, 0
  br i1 %1586, label %1595, label %1587

; <label>:1587                                    ; preds = %1562
  %1588 = add i32 %60, 444
  %1589 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1588, i32 undef)  ; BufferLoad(srv,index,wot)
  %1590 = extractvalue %dx.types.ResRet.i32 %1589, 0
  %1591 = add i32 %1590, 0
  %1592 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1591, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1593 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1592, %dx.types.Handle %106, float %1367, float %1368, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1594 = extractvalue %dx.types.ResRet.f32 %1593, 0
  br label %1595

; <label>:1595                                    ; preds = %1587, %1562
  %1596 = phi float [ %1594, %1587 ], [ 1.000000e+00, %1562 ]
  %1597 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1260, i32 undef)  ; BufferLoad(srv,index,wot)
  %1598 = extractvalue %dx.types.ResRet.i32 %1597, 0
  %1599 = and i32 %1598, 33554432
  %1600 = icmp eq i32 %1599, 0
  br i1 %1600, label %1707, label %1601

; <label>:1601                                    ; preds = %1595
  %1602 = add i32 %60, 240
  %1603 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1602, i32 undef)  ; BufferLoad(srv,index,wot)
  %1604 = extractvalue %dx.types.ResRet.i32 %1603, 0
  %1605 = and i32 %1604, 65535
  %1606 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1605)  ; LegacyF16ToF32(value)
  %1607 = lshr i32 %1604, 16
  %1608 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1607)  ; LegacyF16ToF32(value)
  %1609 = add i32 %60, 244
  %1610 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1609, i32 undef)  ; BufferLoad(srv,index,wot)
  %1611 = extractvalue %dx.types.ResRet.i32 %1610, 0
  %1612 = and i32 %1611, 65535
  %1613 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1612)  ; LegacyF16ToF32(value)
  %1614 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %292, i32 undef)  ; BufferLoad(srv,index,wot)
  %1615 = extractvalue %dx.types.ResRet.i32 %1614, 0
  %1616 = lshr i32 %1615, 24
  %1617 = uitofp i32 %1616 to float
  %1618 = fmul fast float %1617, 0x3F70101020000000
  %1619 = and i32 %1615, 255
  %1620 = uitofp i32 %1619 to float
  %1621 = fmul fast float %1620, 0x3F70101020000000
  %1622 = lshr i32 %1615, 8
  %1623 = and i32 %1622, 255
  %1624 = uitofp i32 %1623 to float
  %1625 = fmul fast float %1624, 0x3F70101020000000
  %1626 = lshr i32 %1615, 16
  %1627 = and i32 %1626, 255
  %1628 = uitofp i32 %1627 to float
  %1629 = fmul fast float %1628, 0x3F70101020000000
  %1630 = add i32 %60, 236
  %1631 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1630, i32 undef)  ; BufferLoad(srv,index,wot)
  %1632 = extractvalue %dx.types.ResRet.i32 %1631, 0
  %1633 = lshr i32 %1632, 24
  %1634 = uitofp i32 %1633 to float
  %1635 = fmul fast float %1634, 0x3F70101020000000
  %1636 = and i32 %1632, 255
  %1637 = uitofp i32 %1636 to float
  %1638 = fmul fast float %1637, 0x3F70101020000000
  %1639 = lshr i32 %1632, 8
  %1640 = and i32 %1639, 255
  %1641 = uitofp i32 %1640 to float
  %1642 = fmul fast float %1641, 0x3F70101020000000
  %1643 = lshr i32 %1632, 16
  %1644 = and i32 %1643, 255
  %1645 = uitofp i32 %1644 to float
  %1646 = fmul fast float %1645, 0x3F70101020000000
  %1647 = bitcast float %1571 to i32
  %1648 = ashr i32 %1647, 1
  %1649 = sub nsw i32 1597463174, %1648
  %1650 = bitcast i32 %1649 to float
  %1651 = fmul fast float %1571, 5.000000e-01
  %1652 = fmul fast float %1650, %1650
  %1653 = fmul fast float %1652, %1651
  %1654 = fsub fast float 1.500000e+00, %1653
  %1655 = fmul fast float %1650, %1571
  %1656 = fmul fast float %1655, %1654
  %1657 = bitcast float %1572 to i32
  %1658 = ashr i32 %1657, 1
  %1659 = sub nsw i32 1597463174, %1658
  %1660 = bitcast i32 %1659 to float
  %1661 = fmul fast float %1572, 5.000000e-01
  %1662 = fmul fast float %1660, %1660
  %1663 = fmul fast float %1662, %1661
  %1664 = fsub fast float 1.500000e+00, %1663
  %1665 = fmul fast float %1660, %1572
  %1666 = fmul fast float %1665, %1664
  %1667 = bitcast float %1573 to i32
  %1668 = ashr i32 %1667, 1
  %1669 = sub nsw i32 1597463174, %1668
  %1670 = bitcast i32 %1669 to float
  %1671 = fmul fast float %1573, 5.000000e-01
  %1672 = fmul fast float %1670, %1670
  %1673 = fmul fast float %1672, %1671
  %1674 = fsub fast float 1.500000e+00, %1673
  %1675 = fmul fast float %1670, %1573
  %1676 = fmul fast float %1675, %1674
  %1677 = fsub fast float %1656, %1638
  %1678 = fsub fast float %1666, %1642
  %1679 = fsub fast float %1676, %1646
  %1680 = fmul fast float %1677, %1606
  %1681 = fmul fast float %1678, %1608
  %1682 = fmul fast float %1679, %1613
  %1683 = fadd fast float %1680, %1621
  %1684 = fadd fast float %1681, %1625
  %1685 = fadd fast float %1682, %1629
  %1686 = call float @dx.op.unary.f32(i32 7, float %1683)  ; Saturate(value)
  %1687 = call float @dx.op.unary.f32(i32 7, float %1684)  ; Saturate(value)
  %1688 = call float @dx.op.unary.f32(i32 7, float %1685)  ; Saturate(value)
  %1689 = fmul fast float %1686, %1686
  %1690 = fmul fast float %1687, %1687
  %1691 = fmul fast float %1688, %1688
  %1692 = fsub fast float %1689, %1571
  %1693 = fsub fast float %1690, %1572
  %1694 = fsub fast float %1691, %1573
  %1695 = fmul fast float %1692, %1596
  %1696 = fmul fast float %1693, %1596
  %1697 = fmul fast float %1694, %1596
  %1698 = fadd fast float %1695, %1571
  %1699 = fadd fast float %1696, %1572
  %1700 = fadd fast float %1697, %1573
  %1701 = fadd fast float %1618, %1582
  %1702 = fsub fast float %1701, %1635
  %1703 = call float @dx.op.unary.f32(i32 7, float %1702)  ; Saturate(value)
  %1704 = fsub fast float %1703, %1582
  %1705 = fmul fast float %1704, %1596
  %1706 = fadd fast float %1705, %1582
  br label %1760

; <label>:1707                                    ; preds = %1595
  %1708 = and i32 %1598, 134217728
  %1709 = icmp eq i32 %1708, 0
  br i1 %1709, label %1744, label %1710

; <label>:1710                                    ; preds = %1707
  %1711 = call float @dx.op.unary.f32(i32 24, float %297)  ; Sqrt(value)
  %1712 = call float @dx.op.unary.f32(i32 24, float %301)  ; Sqrt(value)
  %1713 = call float @dx.op.unary.f32(i32 24, float %305)  ; Sqrt(value)
  %1714 = fadd fast float %1711, -5.000000e-01
  %1715 = fadd fast float %1712, -5.000000e-01
  %1716 = fadd fast float %1713, -5.000000e-01
  %1717 = fmul fast float %1714, %1596
  %1718 = fmul fast float %1715, %1596
  %1719 = fmul fast float %1716, %1596
  %1720 = fadd fast float %1717, 5.000000e-01
  %1721 = fadd fast float %1718, 5.000000e-01
  %1722 = fadd fast float %1719, 5.000000e-01
  %1723 = call float @dx.op.unary.f32(i32 24, float %1571)  ; Sqrt(value)
  %1724 = call float @dx.op.unary.f32(i32 24, float %1572)  ; Sqrt(value)
  %1725 = call float @dx.op.unary.f32(i32 24, float %1573)  ; Sqrt(value)
  %1726 = fmul fast float %1720, 2.000000e+00
  %1727 = fsub fast float 1.000000e+00, %1726
  %1728 = fmul fast float %1727, %1723
  %1729 = fadd fast float %1728, %1726
  %1730 = fmul fast float %1729, %1723
  %1731 = fmul fast float %1721, 2.000000e+00
  %1732 = fsub fast float 1.000000e+00, %1731
  %1733 = fmul fast float %1732, %1724
  %1734 = fadd fast float %1733, %1731
  %1735 = fmul fast float %1734, %1724
  %1736 = fmul fast float %1722, 2.000000e+00
  %1737 = fsub fast float 1.000000e+00, %1736
  %1738 = fmul fast float %1737, %1725
  %1739 = fadd fast float %1738, %1736
  %1740 = fmul fast float %1739, %1725
  %1741 = fmul fast float %1730, %1730
  %1742 = fmul fast float %1735, %1735
  %1743 = fmul fast float %1740, %1740
  br label %1760

; <label>:1744                                    ; preds = %1707
  %1745 = fmul fast float %297, %297
  %1746 = fmul fast float %301, %301
  %1747 = fmul fast float %305, %305
  %1748 = fadd fast float %1745, -1.000000e+00
  %1749 = fadd fast float %1746, -1.000000e+00
  %1750 = fadd fast float %1747, -1.000000e+00
  %1751 = fmul fast float %1596, %1748
  %1752 = fmul fast float %1596, %1749
  %1753 = fmul fast float %1596, %1750
  %1754 = fadd fast float %1751, 1.000000e+00
  %1755 = fadd fast float %1752, 1.000000e+00
  %1756 = fadd fast float %1753, 1.000000e+00
  %1757 = fmul fast float %1754, %1571
  %1758 = fmul fast float %1755, %1572
  %1759 = fmul fast float %1756, %1573
  br label %1760

; <label>:1760                                    ; preds = %1744, %1710, %1601, %1557
  %1761 = phi float [ %1706, %1601 ], [ %1582, %1710 ], [ %1582, %1744 ], [ 0x3FA23C0BE0000000, %1557 ]
  %1762 = phi float [ %1698, %1601 ], [ %1741, %1710 ], [ %1757, %1744 ], [ 1.000000e+00, %1557 ]
  %1763 = phi float [ %1699, %1601 ], [ %1742, %1710 ], [ %1758, %1744 ], [ 1.000000e+00, %1557 ]
  %1764 = phi float [ %1700, %1601 ], [ %1743, %1710 ], [ %1759, %1744 ], [ 1.000000e+00, %1557 ]
  %1765 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1766 = extractvalue %dx.types.CBufRet.i32 %1765, 1
  %1767 = and i32 %1766, 1
  %1768 = icmp ne i32 %1767, 0
  %1769 = add i32 %60, 356
  %1770 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1769, i32 undef)  ; BufferLoad(srv,index,wot)
  %1771 = extractvalue %dx.types.ResRet.i32 %1770, 0
  %1772 = and i32 %1771, 32
  %1773 = icmp ne i32 %1772, 0
  %1774 = and i1 %1768, %1773
  %1775 = select i1 %1774, float 1.000000e+00, float %1762
  %1776 = select i1 %1774, float 0x3FD3333340000000, float %1763
  %1777 = select i1 %1774, float 0x3FD3333340000000, float %1764
  %1778 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1260, i32 undef)  ; BufferLoad(srv,index,wot)
  %1779 = extractvalue %dx.types.ResRet.i32 %1778, 0
  %1780 = and i32 %1779, 32
  %1781 = icmp eq i32 %1780, 0
  br i1 %1781, label %1854, label %1782

; <label>:1782                                    ; preds = %1760
  %1783 = add i32 %60, 108
  %1784 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1783, i32 undef)  ; BufferLoad(srv,index,wot)
  %1785 = extractvalue %dx.types.ResRet.i32 %1784, 0
  %1786 = add i32 %60, 380
  %1787 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1786, i32 undef)  ; BufferLoad(srv,index,wot)
  %1788 = extractvalue %dx.types.ResRet.i32 %1787, 0
  %1789 = add i32 %1788, 0
  %1790 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1789, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1791 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1790, %dx.types.Handle %105, float %1367, float %1368, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1792 = extractvalue %dx.types.ResRet.f32 %1791, 0
  %1793 = extractvalue %dx.types.ResRet.f32 %1791, 1
  %1794 = extractvalue %dx.types.ResRet.f32 %1791, 2
  %1795 = extractvalue %dx.types.ResRet.f32 %1791, 3
  %1796 = and i32 %1785, 255
  %1797 = uitofp i32 %1796 to float
  %1798 = lshr i32 %1785, 8
  %1799 = and i32 %1798, 255
  %1800 = uitofp i32 %1799 to float
  %1801 = lshr i32 %1785, 16
  %1802 = and i32 %1801, 255
  %1803 = uitofp i32 %1802 to float
  %1804 = fmul fast float %1803, 0x3F70101000000000
  %1805 = fmul fast float %1792, %1797
  %1806 = fadd fast float %1805, %1800
  %1807 = fmul fast float %1806, 0x3F70101000000000
  %1808 = fadd fast float %1793, -5.000000e-01
  %1809 = fadd fast float %1795, -5.000000e-01
  %1810 = fmul fast float %1808, %1804
  %1811 = fmul fast float %1809, %1804
  %1812 = fadd fast float %1810, 5.000000e-01
  %1813 = fadd fast float %1811, 5.000000e-01
  %1814 = fmul fast float %1812, 2.000000e+00
  %1815 = fadd fast float %1814, -1.000000e+00
  %1816 = fmul fast float %1813, 2.000000e+00
  %1817 = fadd fast float %1816, -1.000000e+00
  %1818 = fadd fast float %1815, %1817
  %1819 = fmul fast float %1818, 5.000000e-01
  %1820 = fsub fast float %1815, %1817
  %1821 = fmul fast float %1820, 5.000000e-01
  %1822 = call float @dx.op.unary.f32(i32 6, float %1819)  ; FAbs(value)
  %1823 = fsub fast float 1.000000e+00, %1822
  %1824 = call float @dx.op.unary.f32(i32 6, float %1821)  ; FAbs(value)
  %1825 = fsub fast float %1823, %1824
  %1826 = call float @dx.op.dot3.f32(i32 55, float %1819, float %1821, float %1825, float %1819, float %1821, float %1825)  ; Dot3(ax,ay,az,bx,by,bz)
  %1827 = call float @dx.op.unary.f32(i32 25, float %1826)  ; Rsqrt(value)
  %1828 = fmul fast float %1819, %1827
  %1829 = fmul fast float %1821, %1827
  %1830 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1260, i32 undef)  ; BufferLoad(srv,index,wot)
  %1831 = extractvalue %dx.types.ResRet.i32 %1830, 0
  %1832 = and i32 %1831, 67108864
  %1833 = icmp eq i32 %1832, 0
  br i1 %1833, label %1850, label %1834

; <label>:1834                                    ; preds = %1782
  %1835 = add i32 %60, 296
  %1836 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1835, i32 undef)  ; BufferLoad(srv,index,wot)
  %1837 = extractvalue %dx.types.ResRet.i32 %1836, 0
  %1838 = and i32 %1837, 65535
  %1839 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1838)  ; LegacyF16ToF32(value)
  %1840 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1277, i32 undef)  ; BufferLoad(srv,index,wot)
  %1841 = extractvalue %dx.types.ResRet.i32 %1840, 0
  %1842 = and i32 %1841, 65535
  %1843 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1842)  ; LegacyF16ToF32(value)
  %1844 = lshr i32 %1837, 16
  %1845 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1844)  ; LegacyF16ToF32(value)
  %1846 = fsub fast float %1807, %1845
  %1847 = fmul fast float %1846, %1839
  %1848 = fadd fast float %1847, %1843
  %1849 = call float @dx.op.unary.f32(i32 7, float %1848)  ; Saturate(value)
  br label %1850

; <label>:1850                                    ; preds = %1834, %1782
  %1851 = phi float [ %1849, %1834 ], [ %1807, %1782 ]
  %1852 = call float @dx.op.dot2.f32(i32 54, float %1828, float %1829, float %1271, float %1272)  ; Dot2(ax,ay,bx,by)
  %1853 = call float @dx.op.dot2.f32(i32 54, float %1828, float %1829, float %1273, float %1274)  ; Dot2(ax,ay,bx,by)
  br label %1854

; <label>:1854                                    ; preds = %1850, %1760
  %1855 = phi float [ %1851, %1850 ], [ 0x3FD6666660000000, %1760 ]
  %1856 = phi float [ %1852, %1850 ], [ 0.000000e+00, %1760 ]
  %1857 = phi float [ %1853, %1850 ], [ 0.000000e+00, %1760 ]
  %1858 = phi float [ %1794, %1850 ], [ 1.000000e+00, %1760 ]
  %1859 = add i32 %60, 176
  %1860 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1859, i32 undef)  ; BufferLoad(srv,index,wot)
  %1861 = extractvalue %dx.types.ResRet.i32 %1860, 0
  %1862 = lshr i32 %1861, 22
  %1863 = shl nuw nsw i32 %1862, 5
  %1864 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1863)  ; LegacyF16ToF32(value)
  %1865 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1260, i32 undef)  ; BufferLoad(srv,index,wot)
  %1866 = extractvalue %dx.types.ResRet.i32 %1865, 0
  %1867 = and i32 %1866, 64
  %1868 = icmp eq i32 %1867, 0
  br i1 %1868, label %1902, label %1869

; <label>:1869                                    ; preds = %1854
  %1870 = add i32 %60, 396
  %1871 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1870, i32 undef)  ; BufferLoad(srv,index,wot)
  %1872 = extractvalue %dx.types.ResRet.i32 %1871, 0
  %1873 = add i32 %1872, 0
  %1874 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1873, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1875 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1260, i32 undef)  ; BufferLoad(srv,index,wot)
  %1876 = extractvalue %dx.types.ResRet.i32 %1875, 0
  %1877 = and i32 %1876, 131072
  %1878 = icmp eq i32 %1877, 0
  %1879 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1874, %dx.types.Handle %105, float %1367, float %1368, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1880 = extractvalue %dx.types.ResRet.f32 %1879, 0
  %1881 = extractvalue %dx.types.ResRet.f32 %1879, 1
  %1882 = extractvalue %dx.types.ResRet.f32 %1879, 2
  %1883 = fmul fast float %1880, %285
  %1884 = fmul fast float %1881, %288
  %1885 = fmul fast float %1882, %291
  br i1 %1878, label %1892, label %1886

; <label>:1886                                    ; preds = %1869
  %1887 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1888 = extractvalue %dx.types.CBufRet.f32 %1887, 0
  %1889 = fmul fast float %1888, %1883
  %1890 = fmul fast float %1888, %1884
  %1891 = fmul fast float %1888, %1885
  br label %1892

; <label>:1892                                    ; preds = %1886, %1869
  %1893 = phi float [ %1889, %1886 ], [ %1883, %1869 ]
  %1894 = phi float [ %1890, %1886 ], [ %1884, %1869 ]
  %1895 = phi float [ %1891, %1886 ], [ %1885, %1869 ]
  %1896 = fmul fast float %1893, %1864
  %1897 = select i1 %226, float %1896, float %1893
  %1898 = call float @dx.op.dot3.f32(i32 55, float %1897, float %1894, float %1895, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1899 = select i1 %226, float 0.000000e+00, float %1893
  %1900 = select i1 %226, float %1898, float %1894
  %1901 = select i1 %226, float 0.000000e+00, float %1895
  br label %1902

; <label>:1902                                    ; preds = %1892, %1854
  %1903 = phi float [ %1899, %1892 ], [ 0.000000e+00, %1854 ]
  %1904 = phi float [ %1900, %1892 ], [ 0.000000e+00, %1854 ]
  %1905 = phi float [ %1901, %1892 ], [ 0.000000e+00, %1854 ]
  %1906 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1260, i32 undef)  ; BufferLoad(srv,index,wot)
  %1907 = extractvalue %dx.types.ResRet.i32 %1906, 0
  %1908 = and i32 %1907, 1024
  %1909 = icmp eq i32 %1908, 0
  br i1 %1909, label %1940, label %1910

; <label>:1910                                    ; preds = %1902
  %1911 = add i32 %60, 168
  %1912 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1911, i32 undef)  ; BufferLoad(srv,index,wot)
  %1913 = extractvalue %dx.types.ResRet.i32 %1912, 0
  %1914 = and i32 %1913, 255
  %1915 = uitofp i32 %1914 to float
  %1916 = fmul fast float %1915, 0x3F70101020000000
  %1917 = lshr i32 %1913, 8
  %1918 = and i32 %1917, 255
  %1919 = uitofp i32 %1918 to float
  %1920 = fmul fast float %1919, 0x3F70101020000000
  %1921 = lshr i32 %1913, 16
  %1922 = and i32 %1921, 255
  %1923 = uitofp i32 %1922 to float
  %1924 = fmul fast float %1923, 0x3F70101020000000
  %1925 = fmul fast float %1916, %1916
  %1926 = fmul fast float %1920, %1920
  %1927 = fmul fast float %1924, %1924
  %1928 = add i32 %60, 460
  %1929 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1928, i32 undef)  ; BufferLoad(srv,index,wot)
  %1930 = extractvalue %dx.types.ResRet.i32 %1929, 0
  %1931 = add i32 %1930, 0
  %1932 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1931, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1933 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1932, %dx.types.Handle %106, float %1367, float %1368, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1934 = extractvalue %dx.types.ResRet.f32 %1933, 0
  %1935 = extractvalue %dx.types.ResRet.f32 %1933, 1
  %1936 = extractvalue %dx.types.ResRet.f32 %1933, 2
  %1937 = fmul fast float %1925, %1934
  %1938 = fmul fast float %1926, %1935
  %1939 = fmul fast float %1927, %1936
  br label %1940

; <label>:1940                                    ; preds = %1910, %1902
  %1941 = phi float [ %1937, %1910 ], [ 0.000000e+00, %1902 ]
  %1942 = phi float [ %1938, %1910 ], [ 0.000000e+00, %1902 ]
  %1943 = phi float [ %1939, %1910 ], [ 0.000000e+00, %1902 ]
  %1944 = fcmp fast ogt float %1941, 0.000000e+00
  %1945 = fcmp fast ogt float %1942, 0.000000e+00
  %1946 = fcmp fast ogt float %1943, 0.000000e+00
  %1947 = call float @dx.op.unary.f32(i32 23, float %1941)  ; Log(value)
  %1948 = call float @dx.op.unary.f32(i32 23, float %1942)  ; Log(value)
  %1949 = call float @dx.op.unary.f32(i32 23, float %1943)  ; Log(value)
  %1950 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1859, i32 undef)  ; BufferLoad(srv,index,wot)
  %1951 = extractvalue %dx.types.ResRet.i32 %1950, 0
  %1952 = lshr i32 %1951, 7
  %1953 = and i32 %1952, 32752
  %1954 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1953)  ; LegacyF16ToF32(value)
  %1955 = fmul fast float %1947, 0xBFE62E4300000000
  %1956 = fmul fast float %1955, %1954
  %1957 = fmul fast float %1948, 0xBFE62E4300000000
  %1958 = fmul fast float %1957, %1954
  %1959 = fmul fast float %1949, 0xBFE62E4300000000
  %1960 = fmul fast float %1959, %1954
  %1961 = select i1 %1944, float %1956, float 1.270000e+02
  %1962 = select i1 %1945, float %1958, float 1.270000e+02
  %1963 = select i1 %1946, float %1960, float 1.270000e+02
  %1964 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1260, i32 undef)  ; BufferLoad(srv,index,wot)
  %1965 = extractvalue %dx.types.ResRet.i32 %1964, 0
  %1966 = and i32 %1965, 10240
  %1967 = icmp eq i32 %1966, 0
  br i1 %1967, label %2012, label %1968

; <label>:1968                                    ; preds = %1940
  %1969 = add i32 %60, 476
  %1970 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1969, i32 undef)  ; BufferLoad(srv,index,wot)
  %1971 = extractvalue %dx.types.ResRet.i32 %1970, 0
  %1972 = add i32 %1971, 0
  %1973 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1972, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1974 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1973, %dx.types.Handle %106, float %1367, float %1368, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1975 = extractvalue %dx.types.ResRet.f32 %1974, 1
  %1976 = extractvalue %dx.types.ResRet.f32 %1974, 3
  %1977 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1260, i32 undef)  ; BufferLoad(srv,index,wot)
  %1978 = extractvalue %dx.types.ResRet.i32 %1977, 0
  %1979 = and i32 %1978, 1048576
  %1980 = icmp ne i32 %1979, 0
  %1981 = and i32 %1978, 8192
  %1982 = icmp eq i32 %1981, 0
  br i1 %1982, label %1998, label %1983

; <label>:1983                                    ; preds = %1968
  %1984 = extractvalue %dx.types.ResRet.f32 %1974, 2
  %1985 = select i1 %1980, float %1984, float %1975
  %1986 = extractvalue %dx.types.ResRet.f32 %1974, 0
  %1987 = select i1 %1980, float %1986, float %1975
  %1988 = add i32 %60, 112
  %1989 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1988, i32 undef)  ; BufferLoad(srv,index,wot)
  %1990 = extractvalue %dx.types.ResRet.i32 %1989, 0
  %1991 = lshr i32 %1990, 16
  %1992 = and i32 %1991, 255
  %1993 = uitofp i32 %1992 to float
  %1994 = fmul fast float %1993, 0x3F80101020000000
  %1995 = fmul fast float %1994, %1987
  %1996 = fmul fast float %1994, %1975
  %1997 = fmul fast float %1994, %1985
  br label %1998

; <label>:1998                                    ; preds = %1983, %1968
  %1999 = phi float [ %1995, %1983 ], [ 0.000000e+00, %1968 ]
  %2000 = phi float [ %1996, %1983 ], [ 0.000000e+00, %1968 ]
  %2001 = phi float [ %1997, %1983 ], [ 0.000000e+00, %1968 ]
  %2002 = and i32 %1978, 2048
  %2003 = icmp eq i32 %2002, 0
  br i1 %2003, label %2012, label %2004

; <label>:2004                                    ; preds = %1998
  %2005 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1859, i32 undef)  ; BufferLoad(srv,index,wot)
  %2006 = extractvalue %dx.types.ResRet.i32 %2005, 0
  %2007 = shl i32 %2006, 4
  %2008 = and i32 %2007, 32752
  %2009 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2008)  ; LegacyF16ToF32(value)
  %2010 = fmul fast float %2009, %1976
  %2011 = call float @dx.op.binary.f32(i32 35, float %2010, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2012

; <label>:2012                                    ; preds = %2004, %1998, %1940
  %2013 = phi float [ %1999, %2004 ], [ %1999, %1998 ], [ 0.000000e+00, %1940 ]
  %2014 = phi float [ %2000, %2004 ], [ %2000, %1998 ], [ 0.000000e+00, %1940 ]
  %2015 = phi float [ %2001, %2004 ], [ %2001, %1998 ], [ 0.000000e+00, %1940 ]
  %2016 = phi float [ %2011, %2004 ], [ 0x3F70101020000000, %1998 ], [ 0x3F70101020000000, %1940 ]
  %2017 = add i32 %60, 112
  %2018 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2017, i32 undef)  ; BufferLoad(srv,index,wot)
  %2019 = extractvalue %dx.types.ResRet.i32 %2018, 0
  %2020 = and i32 %2019, 255
  %2021 = uitofp i32 %2020 to float
  %2022 = lshr i32 %2019, 8
  %2023 = and i32 %2022, 255
  %2024 = uitofp i32 %2023 to float
  %2025 = call float @dx.op.dot3.f32(i32 55, float %1775, float %1776, float %1777, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2026 = fmul fast float %2024, %2025
  %2027 = fadd fast float %2026, %2021
  %2028 = fmul fast float %2027, 0x3F70101020000000
  %2029 = call float @dx.op.unary.f32(i32 7, float %2028)  ; Saturate(value)
  br i1 %1259, label %2030, label %2065

; <label>:2030                                    ; preds = %2012
  %2031 = fmul fast float %2016, 2.000000e+00
  %2032 = fcmp fast olt float %1961, 1.270000e+02
  %2033 = fcmp fast olt float %1962, 1.270000e+02
  %2034 = fcmp fast olt float %1963, 1.270000e+02
  %2035 = fmul fast float %1961, 0xBFF7154760000000
  %2036 = fmul fast float %2035, %2031
  %2037 = fmul fast float %1962, 0xBFF7154760000000
  %2038 = fmul fast float %2037, %2031
  %2039 = fmul fast float %1963, 0xBFF7154760000000
  %2040 = fmul fast float %2039, %2031
  %2041 = call float @dx.op.unary.f32(i32 21, float %2036)  ; Exp(value)
  %2042 = call float @dx.op.unary.f32(i32 21, float %2038)  ; Exp(value)
  %2043 = call float @dx.op.unary.f32(i32 21, float %2040)  ; Exp(value)
  %2044 = call float @dx.op.unary.f32(i32 7, float %2041)  ; Saturate(value)
  %2045 = call float @dx.op.unary.f32(i32 7, float %2042)  ; Saturate(value)
  %2046 = call float @dx.op.unary.f32(i32 7, float %2043)  ; Saturate(value)
  %2047 = fadd fast float %2044, -1.000000e+00
  %2048 = select i1 %2032, float %2047, float -1.000000e+00
  %2049 = fadd fast float %2045, -1.000000e+00
  %2050 = select i1 %2033, float %2049, float -1.000000e+00
  %2051 = fadd fast float %2046, -1.000000e+00
  %2052 = select i1 %2034, float %2051, float -1.000000e+00
  %2053 = fmul fast float %2048, %1555
  %2054 = fmul fast float %2050, %1555
  %2055 = fmul fast float %2052, %1555
  %2056 = fadd fast float %2053, 1.000000e+00
  %2057 = fadd fast float %2054, 1.000000e+00
  %2058 = fadd fast float %2055, 1.000000e+00
  %2059 = fmul fast float %2056, %1240
  %2060 = fmul fast float %2057, %1241
  %2061 = fmul fast float %2058, %1242
  %2062 = fmul fast float %2056, %1243
  %2063 = fmul fast float %2057, %1244
  %2064 = fmul fast float %2058, %1245
  br label %2065

; <label>:2065                                    ; preds = %2030, %2012
  %2066 = phi float [ %2059, %2030 ], [ %1240, %2012 ]
  %2067 = phi float [ %2060, %2030 ], [ %1241, %2012 ]
  %2068 = phi float [ %2061, %2030 ], [ %1242, %2012 ]
  %2069 = phi float [ %2062, %2030 ], [ %1243, %2012 ]
  %2070 = phi float [ %2063, %2030 ], [ %1244, %2012 ]
  %2071 = phi float [ %2064, %2030 ], [ %1245, %2012 ]
  %2072 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1260, i32 undef)  ; BufferLoad(srv,index,wot)
  %2073 = extractvalue %dx.types.ResRet.i32 %2072, 0
  %2074 = and i32 %2073, 3
  %2075 = icmp eq i32 %2074, 3
  br i1 %2075, label %2154, label %2076

; <label>:2076                                    ; preds = %2065
  %2077 = and i32 %2073, 16
  %2078 = icmp ne i32 %2077, 0
  %2079 = select i1 %2078, float %1555, float 0.000000e+00
  %2080 = icmp eq i32 %2074, 0
  br i1 %2080, label %2081, label %2109

; <label>:2081                                    ; preds = %2076
  %2082 = and i32 %2073, 64
  %2083 = icmp ne i32 %2082, 0
  %2084 = select i1 %2083, float %1555, float 0.000000e+00
  %2085 = fsub fast float %1775, %2066
  %2086 = fsub fast float %1776, %2067
  %2087 = fsub fast float %1777, %2068
  %2088 = fmul fast float %2079, %2085
  %2089 = fmul fast float %2079, %2086
  %2090 = fmul fast float %2079, %2087
  %2091 = fadd fast float %2088, %2066
  %2092 = fadd fast float %2089, %2067
  %2093 = fadd fast float %2090, %2068
  %2094 = fsub fast float %1761, %1252
  %2095 = fmul fast float %2079, %2094
  %2096 = fadd fast float %2095, %1252
  %2097 = fsub fast float %1903, %2069
  %2098 = fsub fast float %1904, %2070
  %2099 = fsub fast float %1905, %2071
  %2100 = fmul fast float %2084, %2097
  %2101 = fmul fast float %2084, %2098
  %2102 = fmul fast float %2084, %2099
  %2103 = fadd fast float %2100, %2069
  %2104 = fadd fast float %2101, %2070
  %2105 = fadd fast float %2102, %2071
  %2106 = fsub fast float %2029, %1257
  %2107 = fmul fast float %2079, %2106
  %2108 = fadd fast float %2107, %1257
  br label %2154

; <label>:2109                                    ; preds = %2076
  %2110 = icmp eq i32 %2074, 1
  br i1 %2110, label %2111, label %2124

; <label>:2111                                    ; preds = %2109
  %2112 = fadd fast float %1775, -1.000000e+00
  %2113 = fadd fast float %1776, -1.000000e+00
  %2114 = fadd fast float %1777, -1.000000e+00
  %2115 = fmul fast float %2079, %2112
  %2116 = fmul fast float %2079, %2113
  %2117 = fmul fast float %2079, %2114
  %2118 = fadd fast float %2115, 1.000000e+00
  %2119 = fadd fast float %2116, 1.000000e+00
  %2120 = fadd fast float %2117, 1.000000e+00
  %2121 = fmul fast float %2118, %2066
  %2122 = fmul fast float %2119, %2067
  %2123 = fmul fast float %2120, %2068
  br label %2154

; <label>:2124                                    ; preds = %2109
  %2125 = icmp eq i32 %2074, 2
  br i1 %2125, label %2126, label %2154

; <label>:2126                                    ; preds = %2124
  %2127 = call float @dx.op.unary.f32(i32 24, float %1775)  ; Sqrt(value)
  %2128 = call float @dx.op.unary.f32(i32 24, float %1776)  ; Sqrt(value)
  %2129 = call float @dx.op.unary.f32(i32 24, float %1777)  ; Sqrt(value)
  %2130 = fadd fast float %2127, -5.000000e-01
  %2131 = fadd fast float %2128, -5.000000e-01
  %2132 = fadd fast float %2129, -5.000000e-01
  %2133 = fmul fast float %2130, %2079
  %2134 = fmul fast float %2131, %2079
  %2135 = fmul fast float %2132, %2079
  %2136 = fadd fast float %2133, 5.000000e-01
  %2137 = fadd fast float %2134, 5.000000e-01
  %2138 = fadd fast float %2135, 5.000000e-01
  %2139 = fmul fast float %2136, 2.000000e+00
  %2140 = fsub fast float 1.000000e+00, %2139
  %2141 = fmul fast float %2140, %2066
  %2142 = fadd fast float %2141, %2139
  %2143 = fmul fast float %2142, %2066
  %2144 = fmul fast float %2137, 2.000000e+00
  %2145 = fsub fast float 1.000000e+00, %2144
  %2146 = fmul fast float %2145, %2067
  %2147 = fadd fast float %2146, %2144
  %2148 = fmul fast float %2147, %2067
  %2149 = fmul fast float %2138, 2.000000e+00
  %2150 = fsub fast float 1.000000e+00, %2149
  %2151 = fmul fast float %2150, %2068
  %2152 = fadd fast float %2151, %2149
  %2153 = fmul fast float %2152, %2068
  br label %2154

; <label>:2154                                    ; preds = %2126, %2124, %2111, %2081, %2065
  %2155 = phi float [ %2066, %2065 ], [ %2143, %2126 ], [ %2066, %2124 ], [ %2121, %2111 ], [ %2091, %2081 ]
  %2156 = phi float [ %2067, %2065 ], [ %2148, %2126 ], [ %2067, %2124 ], [ %2122, %2111 ], [ %2092, %2081 ]
  %2157 = phi float [ %2068, %2065 ], [ %2153, %2126 ], [ %2068, %2124 ], [ %2123, %2111 ], [ %2093, %2081 ]
  %2158 = phi float [ %2069, %2065 ], [ %2069, %2126 ], [ %2069, %2124 ], [ %2069, %2111 ], [ %2103, %2081 ]
  %2159 = phi float [ %2070, %2065 ], [ %2070, %2126 ], [ %2070, %2124 ], [ %2070, %2111 ], [ %2104, %2081 ]
  %2160 = phi float [ %2071, %2065 ], [ %2071, %2126 ], [ %2071, %2124 ], [ %2071, %2111 ], [ %2105, %2081 ]
  %2161 = phi float [ %1252, %2065 ], [ %1252, %2126 ], [ %1252, %2124 ], [ %1252, %2111 ], [ %2096, %2081 ]
  %2162 = phi float [ %1257, %2065 ], [ %1257, %2126 ], [ %1257, %2124 ], [ %1257, %2111 ], [ %2108, %2081 ]
  %2163 = and i32 %2073, 12
  %2164 = icmp eq i32 %2163, 12
  br i1 %2164, label %2295, label %2165

; <label>:2165                                    ; preds = %2154
  %2166 = and i32 %2073, 2097184
  %2167 = icmp eq i32 %2166, 2097184
  %2168 = select i1 %2167, float %1555, float 0.000000e+00
  %2169 = and i32 %2073, 4194336
  %2170 = icmp eq i32 %2169, 4194336
  %2171 = select i1 %2170, float %1555, float 0.000000e+00
  %2172 = and i32 %2073, 8388640
  %2173 = icmp eq i32 %2172, 8388640
  %2174 = select i1 %2173, float %1555, float 0.000000e+00
  %2175 = and i32 %2073, 1024
  %2176 = icmp ne i32 %2175, 0
  %2177 = select i1 %2176, float %1555, float 0.000000e+00
  %2178 = and i32 %2073, 2048
  %2179 = icmp ne i32 %2178, 0
  %2180 = select i1 %2179, float %1555, float 0.000000e+00
  %2181 = and i32 %2073, 8192
  %2182 = icmp ne i32 %2181, 0
  %2183 = select i1 %2182, float %1555, float 0.000000e+00
  %2184 = icmp eq i32 %2163, 0
  br i1 %2184, label %2185, label %2219

; <label>:2185                                    ; preds = %2165
  %2186 = fsub fast float %1856, %1238
  %2187 = fsub fast float %1857, %1239
  %2188 = fmul fast float %2168, %2186
  %2189 = fmul fast float %2168, %2187
  %2190 = fadd fast float %2188, %1238
  %2191 = fadd fast float %2189, %1239
  %2192 = fsub fast float %1858, %1255
  %2193 = fmul fast float %2171, %2192
  %2194 = fadd fast float %2193, %1255
  %2195 = fsub fast float %1855, %1254
  %2196 = fmul fast float %2174, %2195
  %2197 = fadd fast float %2196, %1254
  %2198 = fsub fast float %1961, %1249
  %2199 = fsub fast float %1962, %1250
  %2200 = fsub fast float %1963, %1251
  %2201 = fmul fast float %2177, %2198
  %2202 = fmul fast float %2177, %2199
  %2203 = fmul fast float %2177, %2200
  %2204 = fadd fast float %2201, %1249
  %2205 = fadd fast float %2202, %1250
  %2206 = fadd fast float %2203, %1251
  %2207 = fsub fast float %2016, %1256
  %2208 = fmul fast float %2180, %2207
  %2209 = fadd fast float %2208, %1256
  %2210 = fsub fast float %2013, %1246
  %2211 = fsub fast float %2014, %1247
  %2212 = fsub fast float %2015, %1248
  %2213 = fmul fast float %2183, %2210
  %2214 = fmul fast float %2183, %2211
  %2215 = fmul fast float %2183, %2212
  %2216 = fadd fast float %2213, %1246
  %2217 = fadd fast float %2214, %1247
  %2218 = fadd fast float %2215, %1248
  br label %2295

; <label>:2219                                    ; preds = %2165
  %2220 = icmp eq i32 %2163, 4
  br i1 %2220, label %2221, label %2267

; <label>:2221                                    ; preds = %2219
  %2222 = fmul fast float %2168, %1856
  %2223 = fmul fast float %2168, %1857
  %2224 = fadd fast float %2222, %1238
  %2225 = fadd fast float %2223, %1239
  %2226 = call float @dx.op.binary.f32(i32 36, float %1255, float %1858)  ; FMin(a,b)
  %2227 = fsub fast float %2226, %1255
  %2228 = fmul fast float %2227, %2171
  %2229 = fadd fast float %2228, %1255
  %2230 = fadd fast float %1855, %1254
  %2231 = fmul fast float %2230, 0x3FF337FAE0000000
  %2232 = fmul fast float %1254, %1254
  %2233 = fmul fast float %1855, %1855
  %2234 = fadd fast float %2233, %2232
  %2235 = fmul fast float %2234, 0x3FE5152B00000000
  %2236 = fmul fast float %1254, 0xBFCC1F85E0000000
  %2237 = fmul fast float %2236, %1855
  %2238 = fadd fast float %2237, 0xBFE1363700000000
  %2239 = fadd fast float %2238, %2231
  %2240 = fsub fast float %2239, %2235
  %2241 = fmul fast float %2230, 0x3FBA6F0D00000000
  %2242 = fmul fast float %2234, 0x3FD0432880000000
  %2243 = fmul fast float %1254, 0xBFEF110800000000
  %2244 = fmul fast float %2243, %1855
  %2245 = fadd fast float %2244, 1.000000e+00
  %2246 = fsub fast float %2245, %2241
  %2247 = fadd fast float %2246, %2242
  %2248 = fdiv fast float %2240, %2247
  %2249 = call float @dx.op.unary.f32(i32 7, float %2248)  ; Saturate(value)
  %2250 = fsub fast float %2249, %1254
  %2251 = fmul fast float %2250, %2174
  %2252 = fadd fast float %2251, %1254
  %2253 = fmul fast float %2177, %1961
  %2254 = fmul fast float %2177, %1962
  %2255 = fmul fast float %2177, %1963
  %2256 = fadd fast float %2253, %1249
  %2257 = fadd fast float %2254, %1250
  %2258 = fadd fast float %2255, %1251
  %2259 = fmul fast float %2180, %2016
  %2260 = fadd fast float %2259, %1256
  %2261 = fmul fast float %2183, %2013
  %2262 = fmul fast float %2183, %2014
  %2263 = fmul fast float %2183, %2015
  %2264 = fadd fast float %2261, %1246
  %2265 = fadd fast float %2262, %1247
  %2266 = fadd fast float %2263, %1248
  br label %2295

; <label>:2267                                    ; preds = %2219
  %2268 = icmp eq i32 %2163, 8
  br i1 %2268, label %2269, label %2295

; <label>:2269                                    ; preds = %2267
  %2270 = fmul fast float %2168, %1856
  %2271 = fmul fast float %2168, %1857
  %2272 = fadd fast float %2270, %1238
  %2273 = fadd fast float %2271, %1239
  %2274 = call float @dx.op.binary.f32(i32 36, float %1255, float %1858)  ; FMin(a,b)
  %2275 = fsub fast float %2274, %1255
  %2276 = fmul fast float %2275, %2171
  %2277 = fadd fast float %2276, %1255
  %2278 = fsub fast float %1855, %1254
  %2279 = fmul fast float %2174, %2278
  %2280 = fadd fast float %2279, %1254
  %2281 = fmul fast float %2177, %1961
  %2282 = fmul fast float %2177, %1962
  %2283 = fmul fast float %2177, %1963
  %2284 = fadd fast float %2281, %1249
  %2285 = fadd fast float %2282, %1250
  %2286 = fadd fast float %2283, %1251
  %2287 = fmul fast float %2180, %2016
  %2288 = fadd fast float %2287, %1256
  %2289 = fmul fast float %2183, %2013
  %2290 = fmul fast float %2183, %2014
  %2291 = fmul fast float %2183, %2015
  %2292 = fadd fast float %2289, %1246
  %2293 = fadd fast float %2290, %1247
  %2294 = fadd fast float %2291, %1248
  br label %2295

; <label>:2295                                    ; preds = %2269, %2267, %2221, %2185, %2154, %1554, %1258, %1237
  %2296 = phi float [ %1238, %2154 ], [ %1238, %1554 ], [ %1238, %1237 ], [ %2272, %2269 ], [ %1238, %2267 ], [ %2224, %2221 ], [ %2190, %2185 ], [ %1238, %1258 ]
  %2297 = phi float [ %1239, %2154 ], [ %1239, %1554 ], [ %1239, %1237 ], [ %2273, %2269 ], [ %1239, %2267 ], [ %2225, %2221 ], [ %2191, %2185 ], [ %1239, %1258 ]
  %2298 = phi float [ %2155, %2154 ], [ %1240, %1554 ], [ %1240, %1237 ], [ %2155, %2269 ], [ %2155, %2267 ], [ %2155, %2221 ], [ %2155, %2185 ], [ %1240, %1258 ]
  %2299 = phi float [ %2156, %2154 ], [ %1241, %1554 ], [ %1241, %1237 ], [ %2156, %2269 ], [ %2156, %2267 ], [ %2156, %2221 ], [ %2156, %2185 ], [ %1241, %1258 ]
  %2300 = phi float [ %2157, %2154 ], [ %1242, %1554 ], [ %1242, %1237 ], [ %2157, %2269 ], [ %2157, %2267 ], [ %2157, %2221 ], [ %2157, %2185 ], [ %1242, %1258 ]
  %2301 = phi float [ %2158, %2154 ], [ %1243, %1554 ], [ %1243, %1237 ], [ %2158, %2269 ], [ %2158, %2267 ], [ %2158, %2221 ], [ %2158, %2185 ], [ %1243, %1258 ]
  %2302 = phi float [ %2159, %2154 ], [ %1244, %1554 ], [ %1244, %1237 ], [ %2159, %2269 ], [ %2159, %2267 ], [ %2159, %2221 ], [ %2159, %2185 ], [ %1244, %1258 ]
  %2303 = phi float [ %2160, %2154 ], [ %1245, %1554 ], [ %1245, %1237 ], [ %2160, %2269 ], [ %2160, %2267 ], [ %2160, %2221 ], [ %2160, %2185 ], [ %1245, %1258 ]
  %2304 = phi float [ %1246, %2154 ], [ %1246, %1554 ], [ %1246, %1237 ], [ %2292, %2269 ], [ %1246, %2267 ], [ %2264, %2221 ], [ %2216, %2185 ], [ %1246, %1258 ]
  %2305 = phi float [ %1247, %2154 ], [ %1247, %1554 ], [ %1247, %1237 ], [ %2293, %2269 ], [ %1247, %2267 ], [ %2265, %2221 ], [ %2217, %2185 ], [ %1247, %1258 ]
  %2306 = phi float [ %1248, %2154 ], [ %1248, %1554 ], [ %1248, %1237 ], [ %2294, %2269 ], [ %1248, %2267 ], [ %2266, %2221 ], [ %2218, %2185 ], [ %1248, %1258 ]
  %2307 = phi float [ %1249, %2154 ], [ %1249, %1554 ], [ %1249, %1237 ], [ %2284, %2269 ], [ %1249, %2267 ], [ %2256, %2221 ], [ %2204, %2185 ], [ %1249, %1258 ]
  %2308 = phi float [ %1250, %2154 ], [ %1250, %1554 ], [ %1250, %1237 ], [ %2285, %2269 ], [ %1250, %2267 ], [ %2257, %2221 ], [ %2205, %2185 ], [ %1250, %1258 ]
  %2309 = phi float [ %1251, %2154 ], [ %1251, %1554 ], [ %1251, %1237 ], [ %2286, %2269 ], [ %1251, %2267 ], [ %2258, %2221 ], [ %2206, %2185 ], [ %1251, %1258 ]
  %2310 = phi float [ %2161, %2154 ], [ %1252, %1554 ], [ %1252, %1237 ], [ %2161, %2269 ], [ %2161, %2267 ], [ %2161, %2221 ], [ %2161, %2185 ], [ %1252, %1258 ]
  %2311 = phi float [ %1254, %2154 ], [ %1254, %1554 ], [ %1254, %1237 ], [ %2280, %2269 ], [ %1254, %2267 ], [ %2252, %2221 ], [ %2197, %2185 ], [ %1254, %1258 ]
  %2312 = phi float [ %1255, %2154 ], [ %1255, %1554 ], [ %1255, %1237 ], [ %2277, %2269 ], [ %1255, %2267 ], [ %2229, %2221 ], [ %2194, %2185 ], [ %1255, %1258 ]
  %2313 = phi float [ %1256, %2154 ], [ %1256, %1554 ], [ %1256, %1237 ], [ %2288, %2269 ], [ %1256, %2267 ], [ %2260, %2221 ], [ %2209, %2185 ], [ %1256, %1258 ]
  %2314 = phi float [ %2162, %2154 ], [ %1257, %1554 ], [ %1257, %1237 ], [ %2162, %2269 ], [ %2162, %2267 ], [ %2162, %2221 ], [ %2162, %2185 ], [ %1257, %1258 ]
  br i1 %412, label %3352, label %2315

; <label>:2315                                    ; preds = %2295
  %2316 = icmp ult i32 %468, 3
  %2317 = add i32 %60, 56
  %2318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2317, i32 undef)  ; BufferLoad(srv,index,wot)
  %2319 = extractvalue %dx.types.ResRet.i32 %2318, 0
  %2320 = add i32 %60, 60
  %2321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2320, i32 undef)  ; BufferLoad(srv,index,wot)
  %2322 = extractvalue %dx.types.ResRet.i32 %2321, 0
  %2323 = or i32 %2322, %2319
  %2324 = icmp eq i32 %2323, 0
  br i1 %2324, label %3352, label %2325

; <label>:2325                                    ; preds = %2315
  %2326 = and i32 %2319, 262144
  %2327 = icmp ne i32 %2326, 0
  %2328 = select i1 %2327, float %63, float 1.000000e+00
  %2329 = select i1 %2327, float %64, float 0.000000e+00
  %2330 = select i1 %2327, float %65, float 0.000000e+00
  %2331 = select i1 %2327, float %66, float 1.000000e+00
  %2332 = select i1 %2327, float %67, float %88
  %2333 = select i1 %2327, float %68, float %89
  %2334 = add i32 %60, 316
  %2335 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2334, i32 undef)  ; BufferLoad(srv,index,wot)
  %2336 = extractvalue %dx.types.ResRet.i32 %2335, 0
  %2337 = lshr i32 %2336, 16
  %2338 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2337)  ; LegacyF16ToF32(value)
  %2339 = fmul fast float %2338, 0x3F50624DE0000000
  %2340 = add i32 %60, 120
  %2341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2340, i32 undef)  ; BufferLoad(srv,index,wot)
  %2342 = extractvalue %dx.types.ResRet.i32 %2341, 0
  %2343 = lshr i32 %2342, 16
  %2344 = and i32 %2343, 255
  %2345 = lshr i32 %2342, 24
  %2346 = add i32 %60, 324
  %2347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2346, i32 undef)  ; BufferLoad(srv,index,wot)
  %2348 = extractvalue %dx.types.ResRet.i32 %2347, 0
  %2349 = and i32 %2348, 65535
  %2350 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2349)  ; LegacyF16ToF32(value)
  %2351 = lshr i32 %2348, 16
  %2352 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2351)  ; LegacyF16ToF32(value)
  %2353 = add i32 %60, 64
  %2354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2353, i32 undef)  ; BufferLoad(srv,index,wot)
  %2355 = extractvalue %dx.types.ResRet.i32 %2354, 0
  %2356 = lshr i32 %2355, 22
  %2357 = shl nuw nsw i32 %2356, 5
  %2358 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2357)  ; LegacyF16ToF32(value)
  %2359 = shl i32 %2355, 4
  %2360 = and i32 %2359, 32752
  %2361 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2360)  ; LegacyF16ToF32(value)
  %2362 = lshr i32 %2355, 7
  %2363 = and i32 %2362, 32752
  %2364 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2363)  ; LegacyF16ToF32(value)
  %2365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2366 = extractvalue %dx.types.CBufRet.f32 %2365, 3
  %2367 = fmul fast float %2366, 1.000000e+03
  %2368 = fmul fast float %362, %2367
  %2369 = call float @dx.op.unary.f32(i32 22, float %2368)  ; Frc(value)
  %2370 = fadd fast float %2369, %352
  %2371 = fmul fast float %363, %2367
  %2372 = call float @dx.op.unary.f32(i32 22, float %2371)  ; Frc(value)
  %2373 = fadd fast float %2372, %354
  %2374 = fmul fast float %2339, %2367
  %2375 = call float @dx.op.unary.f32(i32 22, float %2374)  ; Frc(value)
  %2376 = fmul fast float %2375, 0x401921FB60000000
  %2377 = fadd fast float %2376, %2358
  %2378 = call float @dx.op.unary.f32(i32 13, float %2377)  ; Sin(value)
  %2379 = call float @dx.op.unary.f32(i32 12, float %2377)  ; Cos(value)
  %2380 = fsub fast float -0.000000e+00, %2378
  %2381 = fadd fast float %2332, -5.000000e-01
  %2382 = fadd fast float %2333, -5.000000e-01
  %2383 = fmul fast float %2350, %2381
  %2384 = fmul fast float %2352, %2382
  %2385 = fadd fast float %2383, 5.000000e-01
  %2386 = fadd fast float %2384, 5.000000e-01
  %2387 = fmul fast float %2361, %2385
  %2388 = fmul fast float %2364, %2386
  %2389 = fmul fast float %2379, %2387
  %2390 = call float @dx.op.tertiary.f32(i32 46, float %2380, float %2388, float %2389)  ; FMad(a,b,c)
  %2391 = fmul fast float %2378, %2387
  %2392 = call float @dx.op.tertiary.f32(i32 46, float %2379, float %2388, float %2391)  ; FMad(a,b,c)
  %2393 = fadd fast float %2370, %2390
  %2394 = fadd fast float %2373, %2392
  %2395 = icmp ugt i32 %2344, 1
  %2396 = icmp ugt i32 %2342, 33554431
  %2397 = or i1 %2396, %2395
  br i1 %2397, label %2398, label %2423

; <label>:2398                                    ; preds = %2325
  %2399 = add i32 %60, 260
  %2400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2399, i32 undef)  ; BufferLoad(srv,index,wot)
  %2401 = extractvalue %dx.types.ResRet.i32 %2400, 0
  %2402 = lshr i32 %2401, 16
  %2403 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2402)  ; LegacyF16ToF32(value)
  %2404 = fmul fast float %2366, %2403
  %2405 = call float @dx.op.unary.f32(i32 22, float %2404)  ; Frc(value)
  %2406 = mul nuw nsw i32 %2344, %2345
  %2407 = uitofp i32 %2406 to float
  %2408 = fmul fast float %2405, %2407
  %2409 = call float @dx.op.unary.f32(i32 27, float %2408)  ; Round_ni(value)
  %2410 = fptoui float %2409 to i32
  %2411 = urem i32 %2410, %2344
  %2412 = udiv i32 %2410, %2345
  %2413 = call float @dx.op.unary.f32(i32 22, float %2393)  ; Frc(value)
  %2414 = call float @dx.op.unary.f32(i32 22, float %2394)  ; Frc(value)
  %2415 = uitofp i32 %2411 to float
  %2416 = uitofp i32 %2412 to float
  %2417 = fadd fast float %2413, %2415
  %2418 = fadd fast float %2414, %2416
  %2419 = uitofp i32 %2344 to float
  %2420 = uitofp i32 %2345 to float
  %2421 = fdiv fast float %2417, %2419
  %2422 = fdiv fast float %2418, %2420
  br label %2423

; <label>:2423                                    ; preds = %2398, %2325
  %2424 = phi float [ %2421, %2398 ], [ %2393, %2325 ]
  %2425 = phi float [ %2422, %2398 ], [ %2394, %2325 ]
  %2426 = and i32 %2319, 16777216
  %2427 = icmp eq i32 %2426, 0
  br i1 %2427, label %2537, label %2428

; <label>:2428                                    ; preds = %2423
  %2429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2430 = extractvalue %dx.types.CBufRet.f32 %2429, 0
  %2431 = extractvalue %dx.types.CBufRet.f32 %2429, 1
  %2432 = extractvalue %dx.types.CBufRet.f32 %2429, 2
  %2433 = fadd fast float %2430, %164
  %2434 = fadd fast float %2431, %165
  %2435 = fadd fast float %2432, %166
  %2436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2437 = extractvalue %dx.types.CBufRet.f32 %2436, 0
  %2438 = call float @dx.op.unary.f32(i32 7, float %2437)  ; Saturate(value)
  %2439 = icmp eq i32 %61, 65535
  br i1 %2439, label %2534, label %2440

; <label>:2440                                    ; preds = %2428
  %2441 = lshr i32 %61, 1
  %2442 = shl i32 %2441, 2
  %2443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2442, i32 undef)  ; BufferLoad(srv,index,wot)
  %2444 = extractvalue %dx.types.ResRet.i32 %2443, 0
  %2445 = and i32 %61, 1
  %2446 = icmp ne i32 %2445, 0
  %2447 = lshr i32 %2444, 16
  %2448 = and i32 %2444, 65535
  %2449 = select i1 %2446, i32 %2447, i32 %2448
  %2450 = icmp eq i32 %2449, 65535
  br i1 %2450, label %2530, label %2451

; <label>:2451                                    ; preds = %2440
  %2452 = mul nuw nsw i32 %2449, 40
  %2453 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %2452, i32 undef)  ; BufferLoad(srv,index,wot)
  %2454 = extractvalue %dx.types.ResRet.f32 %2453, 0
  %2455 = extractvalue %dx.types.ResRet.f32 %2453, 1
  %2456 = extractvalue %dx.types.ResRet.f32 %2453, 2
  %2457 = add nuw nsw i32 %2452, 12
  %2458 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %2457, i32 undef)  ; BufferLoad(srv,index,wot)
  %2459 = extractvalue %dx.types.ResRet.f32 %2458, 0
  %2460 = extractvalue %dx.types.ResRet.f32 %2458, 1
  %2461 = extractvalue %dx.types.ResRet.f32 %2458, 2
  %2462 = add nuw nsw i32 %2452, 24
  %2463 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %2462, i32 undef)  ; BufferLoad(srv,index,wot)
  %2464 = extractvalue %dx.types.ResRet.f32 %2463, 0
  %2465 = extractvalue %dx.types.ResRet.f32 %2463, 1
  %2466 = extractvalue %dx.types.ResRet.f32 %2463, 2
  %2467 = add nuw nsw i32 %2452, 36
  %2468 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %2467, i32 undef)  ; BufferLoad(srv,index,wot)
  %2469 = extractvalue %dx.types.ResRet.f32 %2468, 0
  %2470 = fsub fast float %2433, %2454
  %2471 = fsub fast float %2434, %2455
  %2472 = fsub fast float %2435, %2456
  %2473 = fmul fast float %2469, %2470
  %2474 = fmul fast float %2469, %2471
  %2475 = fmul fast float %2469, %2472
  %2476 = call float @dx.op.unary.f32(i32 27, float %2473)  ; Round_ni(value)
  %2477 = call float @dx.op.unary.f32(i32 27, float %2474)  ; Round_ni(value)
  %2478 = call float @dx.op.unary.f32(i32 27, float %2475)  ; Round_ni(value)
  %2479 = fadd fast float %2476, 5.000000e-01
  %2480 = fadd fast float %2477, 5.000000e-01
  %2481 = fadd fast float %2478, 5.000000e-01
  %2482 = fmul fast float %2479, %2459
  %2483 = fmul fast float %2480, %2460
  %2484 = fmul fast float %2481, %2461
  %2485 = shl i32 %61, 2
  %2486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2485, i32 undef)  ; BufferLoad(srv,index,wot)
  %2487 = extractvalue %dx.types.ResRet.i32 %2486, 0
  %2488 = add i32 %2487, 0
  %2489 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2488, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2490 = call float @dx.op.unary.f32(i32 22, float %2482)  ; Frc(value)
  %2491 = call float @dx.op.unary.f32(i32 22, float %2483)  ; Frc(value)
  %2492 = call float @dx.op.unary.f32(i32 22, float %2484)  ; Frc(value)
  %2493 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2489, %dx.types.Handle %55, float %2490, float %2491, float %2492, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2494 = extractvalue %dx.types.ResRet.f32 %2493, 0
  %2495 = extractvalue %dx.types.ResRet.f32 %2493, 1
  %2496 = extractvalue %dx.types.ResRet.f32 %2493, 2
  %2497 = fmul fast float %2494, 1.023000e+03
  %2498 = fmul fast float %2495, 1.023000e+03
  %2499 = fmul fast float %2496, 1.023000e+03
  %2500 = fadd fast float %2497, 5.000000e-01
  %2501 = fadd fast float %2498, 5.000000e-01
  %2502 = fadd fast float %2499, 5.000000e-01
  %2503 = call float @dx.op.unary.f32(i32 27, float %2500)  ; Round_ni(value)
  %2504 = call float @dx.op.unary.f32(i32 27, float %2501)  ; Round_ni(value)
  %2505 = call float @dx.op.unary.f32(i32 27, float %2502)  ; Round_ni(value)
  %2506 = fsub fast float %2473, %2476
  %2507 = fsub fast float %2474, %2477
  %2508 = fsub fast float %2475, %2478
  %2509 = fmul fast float %2506, 7.500000e-01
  %2510 = fmul fast float %2507, 7.500000e-01
  %2511 = fmul fast float %2508, 7.500000e-01
  %2512 = fadd fast float %2476, 1.250000e-01
  %2513 = fadd fast float %2512, %2509
  %2514 = fadd fast float %2513, %2503
  %2515 = fadd fast float %2477, 1.250000e-01
  %2516 = fadd fast float %2515, %2510
  %2517 = fadd fast float %2516, %2504
  %2518 = fadd fast float %2478, 1.250000e-01
  %2519 = fadd fast float %2518, %2511
  %2520 = fadd fast float %2519, %2505
  %2521 = fmul fast float %2514, %2464
  %2522 = fmul fast float %2517, %2465
  %2523 = fmul fast float %2520, %2466
  %2524 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2485, i32 undef)  ; BufferLoad(srv,index,wot)
  %2525 = extractvalue %dx.types.ResRet.i32 %2524, 0
  %2526 = add i32 %2525, 0
  %2527 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2526, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2528 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2527, %dx.types.Handle %53, float %2521, float %2522, float %2523, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2529 = extractvalue %dx.types.ResRet.f32 %2528, 0
  br label %2530

; <label>:2530                                    ; preds = %2451, %2440
  %2531 = phi float [ %2529, %2451 ], [ -1.000000e+00, %2440 ]
  %2532 = fadd fast float %2531, %2438
  %2533 = call float @dx.op.unary.f32(i32 7, float %2532)  ; Saturate(value)
  br label %2534

; <label>:2534                                    ; preds = %2530, %2428
  %2535 = phi float [ %2533, %2530 ], [ %2438, %2428 ]
  %2536 = fmul fast float %2535, %464
  br label %2537

; <label>:2537                                    ; preds = %2534, %2423
  %2538 = phi float [ %2536, %2534 ], [ %464, %2423 ]
  %2539 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2317, i32 undef)  ; BufferLoad(srv,index,wot)
  %2540 = extractvalue %dx.types.ResRet.i32 %2539, 0
  %2541 = and i32 %2540, 256
  %2542 = icmp eq i32 %2541, 0
  br i1 %2542, label %2589, label %2543

; <label>:2543                                    ; preds = %2537
  %2544 = add i32 %60, 432
  %2545 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2544, i32 undef)  ; BufferLoad(srv,index,wot)
  %2546 = extractvalue %dx.types.ResRet.i32 %2545, 0
  %2547 = add i32 %2546, 0
  %2548 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2547, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2549 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2548, %dx.types.Handle %106, float %2424, float %2425, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2550 = extractvalue %dx.types.ResRet.f32 %2549, 0
  %2551 = add i32 %60, 132
  %2552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2551, i32 undef)  ; BufferLoad(srv,index,wot)
  %2553 = extractvalue %dx.types.ResRet.i32 %2552, 0
  %2554 = shl i32 %2553, 4
  %2555 = and i32 %2554, 32752
  %2556 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2555)  ; LegacyF16ToF32(value)
  %2557 = lshr i32 %2553, 7
  %2558 = and i32 %2557, 32752
  %2559 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2558)  ; LegacyF16ToF32(value)
  %2560 = fsub fast float 1.000000e+00, %2538
  %2561 = call float @dx.op.binary.f32(i32 35, float %2560, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2562 = bitcast float %2538 to i32
  %2563 = sitofp i32 %2562 to float
  %2564 = fadd fast float %2563, 0xC1CFBF8940000000
  %2565 = fmul fast float %2559, %2564
  %2566 = fadd fast float %2565, 0x41CFBF8940000000
  %2567 = fptosi float %2566 to i32
  %2568 = bitcast i32 %2567 to float
  %2569 = bitcast float %2561 to i32
  %2570 = sitofp i32 %2569 to float
  %2571 = fadd fast float %2570, 0xC1CFBF8940000000
  %2572 = fmul fast float %2571, %2559
  %2573 = fadd fast float %2572, 0x41CFBF8940000000
  %2574 = fptosi float %2573 to i32
  %2575 = bitcast i32 %2574 to float
  %2576 = fmul fast float %2568, %2556
  %2577 = fmul fast float %2575, %2556
  %2578 = fsub fast float %2561, %2576
  %2579 = fadd fast float %2577, %2561
  %2580 = call float @dx.op.unary.f32(i32 7, float %2578)  ; Saturate(value)
  %2581 = call float @dx.op.unary.f32(i32 7, float %2579)  ; Saturate(value)
  %2582 = fsub fast float %2550, %2580
  %2583 = fsub fast float %2581, %2580
  %2584 = bitcast float %2583 to i32
  %2585 = sub nsw i32 2129859010, %2584
  %2586 = bitcast i32 %2585 to float
  %2587 = fmul fast float %2586, %2582
  %2588 = call float @dx.op.unary.f32(i32 7, float %2587)  ; Saturate(value)
  br label %2589

; <label>:2589                                    ; preds = %2543, %2537
  %2590 = phi float [ %2588, %2543 ], [ %2538, %2537 ]
  %2591 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2317, i32 undef)  ; BufferLoad(srv,index,wot)
  %2592 = extractvalue %dx.types.ResRet.i32 %2591, 0
  %2593 = and i32 %2592, 128
  %2594 = icmp eq i32 %2593, 0
  br i1 %2594, label %2611, label %2595

; <label>:2595                                    ; preds = %2589
  %2596 = add i32 %60, 416
  %2597 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2596, i32 undef)  ; BufferLoad(srv,index,wot)
  %2598 = extractvalue %dx.types.ResRet.i32 %2597, 0
  %2599 = add i32 %2598, 0
  %2600 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2599, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2601 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2600, %dx.types.Handle %106, float %2424, float %2425, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2602 = extractvalue %dx.types.ResRet.f32 %2601, 0
  %2603 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2317, i32 undef)  ; BufferLoad(srv,index,wot)
  %2604 = extractvalue %dx.types.ResRet.i32 %2603, 0
  %2605 = and i32 %2604, 524288
  %2606 = icmp ne i32 %2605, 0
  %2607 = fcmp fast ogt float %2602, 0x3FE0101020000000
  %2608 = select i1 %2607, float 1.000000e+00, float 0.000000e+00
  %2609 = select i1 %2606, float %2608, float %2602
  %2610 = fmul fast float %2609, %2590
  br label %2611

; <label>:2611                                    ; preds = %2595, %2589
  %2612 = phi float [ %2610, %2595 ], [ %2590, %2589 ]
  %2613 = fcmp fast ult float %2612, 0x3F70101020000000
  br i1 %2613, label %3352, label %2614

; <label>:2614                                    ; preds = %2611
  %2615 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2317, i32 undef)  ; BufferLoad(srv,index,wot)
  %2616 = extractvalue %dx.types.ResRet.i32 %2615, 0
  %2617 = and i32 %2616, 16
  %2618 = icmp eq i32 %2617, 0
  br i1 %2618, label %2817, label %2619

; <label>:2619                                    ; preds = %2614
  %2620 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2340, i32 undef)  ; BufferLoad(srv,index,wot)
  %2621 = extractvalue %dx.types.ResRet.i32 %2620, 0
  %2622 = add i32 %60, 368
  %2623 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2622, i32 undef)  ; BufferLoad(srv,index,wot)
  %2624 = extractvalue %dx.types.ResRet.i32 %2623, 0
  %2625 = add i32 %2624, 0
  %2626 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2625, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2627 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2626, %dx.types.Handle %105, float %2424, float %2425, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2628 = extractvalue %dx.types.ResRet.f32 %2627, 0
  %2629 = extractvalue %dx.types.ResRet.f32 %2627, 1
  %2630 = extractvalue %dx.types.ResRet.f32 %2627, 2
  %2631 = extractvalue %dx.types.ResRet.f32 %2627, 3
  %2632 = and i32 %2621, 255
  %2633 = uitofp i32 %2632 to float
  %2634 = lshr i32 %2621, 8
  %2635 = and i32 %2634, 255
  %2636 = uitofp i32 %2635 to float
  %2637 = fmul fast float %2631, %2633
  %2638 = fadd fast float %2637, %2636
  %2639 = fmul fast float %2638, 0x3F70101000000000
  %2640 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2317, i32 undef)  ; BufferLoad(srv,index,wot)
  %2641 = extractvalue %dx.types.ResRet.i32 %2640, 0
  %2642 = and i32 %2641, 512
  %2643 = icmp eq i32 %2642, 0
  br i1 %2643, label %2652, label %2644

; <label>:2644                                    ; preds = %2619
  %2645 = add i32 %60, 448
  %2646 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2645, i32 undef)  ; BufferLoad(srv,index,wot)
  %2647 = extractvalue %dx.types.ResRet.i32 %2646, 0
  %2648 = add i32 %2647, 0
  %2649 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2648, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2650 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2649, %dx.types.Handle %106, float %2424, float %2425, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2651 = extractvalue %dx.types.ResRet.f32 %2650, 0
  br label %2652

; <label>:2652                                    ; preds = %2644, %2619
  %2653 = phi float [ %2651, %2644 ], [ 1.000000e+00, %2619 ]
  %2654 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2317, i32 undef)  ; BufferLoad(srv,index,wot)
  %2655 = extractvalue %dx.types.ResRet.i32 %2654, 0
  %2656 = and i32 %2655, 33554432
  %2657 = icmp eq i32 %2656, 0
  br i1 %2657, label %2764, label %2658

; <label>:2658                                    ; preds = %2652
  %2659 = add i32 %60, 256
  %2660 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2659, i32 undef)  ; BufferLoad(srv,index,wot)
  %2661 = extractvalue %dx.types.ResRet.i32 %2660, 0
  %2662 = and i32 %2661, 65535
  %2663 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2662)  ; LegacyF16ToF32(value)
  %2664 = lshr i32 %2661, 16
  %2665 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2664)  ; LegacyF16ToF32(value)
  %2666 = add i32 %60, 260
  %2667 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2666, i32 undef)  ; BufferLoad(srv,index,wot)
  %2668 = extractvalue %dx.types.ResRet.i32 %2667, 0
  %2669 = and i32 %2668, 65535
  %2670 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2669)  ; LegacyF16ToF32(value)
  %2671 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %334, i32 undef)  ; BufferLoad(srv,index,wot)
  %2672 = extractvalue %dx.types.ResRet.i32 %2671, 0
  %2673 = lshr i32 %2672, 24
  %2674 = uitofp i32 %2673 to float
  %2675 = fmul fast float %2674, 0x3F70101020000000
  %2676 = and i32 %2672, 255
  %2677 = uitofp i32 %2676 to float
  %2678 = fmul fast float %2677, 0x3F70101020000000
  %2679 = lshr i32 %2672, 8
  %2680 = and i32 %2679, 255
  %2681 = uitofp i32 %2680 to float
  %2682 = fmul fast float %2681, 0x3F70101020000000
  %2683 = lshr i32 %2672, 16
  %2684 = and i32 %2683, 255
  %2685 = uitofp i32 %2684 to float
  %2686 = fmul fast float %2685, 0x3F70101020000000
  %2687 = add i32 %60, 252
  %2688 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2687, i32 undef)  ; BufferLoad(srv,index,wot)
  %2689 = extractvalue %dx.types.ResRet.i32 %2688, 0
  %2690 = lshr i32 %2689, 24
  %2691 = uitofp i32 %2690 to float
  %2692 = fmul fast float %2691, 0x3F70101020000000
  %2693 = and i32 %2689, 255
  %2694 = uitofp i32 %2693 to float
  %2695 = fmul fast float %2694, 0x3F70101020000000
  %2696 = lshr i32 %2689, 8
  %2697 = and i32 %2696, 255
  %2698 = uitofp i32 %2697 to float
  %2699 = fmul fast float %2698, 0x3F70101020000000
  %2700 = lshr i32 %2689, 16
  %2701 = and i32 %2700, 255
  %2702 = uitofp i32 %2701 to float
  %2703 = fmul fast float %2702, 0x3F70101020000000
  %2704 = bitcast float %2628 to i32
  %2705 = ashr i32 %2704, 1
  %2706 = sub nsw i32 1597463174, %2705
  %2707 = bitcast i32 %2706 to float
  %2708 = fmul fast float %2628, 5.000000e-01
  %2709 = fmul fast float %2707, %2707
  %2710 = fmul fast float %2709, %2708
  %2711 = fsub fast float 1.500000e+00, %2710
  %2712 = fmul fast float %2707, %2628
  %2713 = fmul fast float %2712, %2711
  %2714 = bitcast float %2629 to i32
  %2715 = ashr i32 %2714, 1
  %2716 = sub nsw i32 1597463174, %2715
  %2717 = bitcast i32 %2716 to float
  %2718 = fmul fast float %2629, 5.000000e-01
  %2719 = fmul fast float %2717, %2717
  %2720 = fmul fast float %2719, %2718
  %2721 = fsub fast float 1.500000e+00, %2720
  %2722 = fmul fast float %2717, %2629
  %2723 = fmul fast float %2722, %2721
  %2724 = bitcast float %2630 to i32
  %2725 = ashr i32 %2724, 1
  %2726 = sub nsw i32 1597463174, %2725
  %2727 = bitcast i32 %2726 to float
  %2728 = fmul fast float %2630, 5.000000e-01
  %2729 = fmul fast float %2727, %2727
  %2730 = fmul fast float %2729, %2728
  %2731 = fsub fast float 1.500000e+00, %2730
  %2732 = fmul fast float %2727, %2630
  %2733 = fmul fast float %2732, %2731
  %2734 = fsub fast float %2713, %2695
  %2735 = fsub fast float %2723, %2699
  %2736 = fsub fast float %2733, %2703
  %2737 = fmul fast float %2734, %2663
  %2738 = fmul fast float %2735, %2665
  %2739 = fmul fast float %2736, %2670
  %2740 = fadd fast float %2737, %2678
  %2741 = fadd fast float %2738, %2682
  %2742 = fadd fast float %2739, %2686
  %2743 = call float @dx.op.unary.f32(i32 7, float %2740)  ; Saturate(value)
  %2744 = call float @dx.op.unary.f32(i32 7, float %2741)  ; Saturate(value)
  %2745 = call float @dx.op.unary.f32(i32 7, float %2742)  ; Saturate(value)
  %2746 = fmul fast float %2743, %2743
  %2747 = fmul fast float %2744, %2744
  %2748 = fmul fast float %2745, %2745
  %2749 = fsub fast float %2746, %2628
  %2750 = fsub fast float %2747, %2629
  %2751 = fsub fast float %2748, %2630
  %2752 = fmul fast float %2749, %2653
  %2753 = fmul fast float %2750, %2653
  %2754 = fmul fast float %2751, %2653
  %2755 = fadd fast float %2752, %2628
  %2756 = fadd fast float %2753, %2629
  %2757 = fadd fast float %2754, %2630
  %2758 = fadd fast float %2675, %2639
  %2759 = fsub fast float %2758, %2692
  %2760 = call float @dx.op.unary.f32(i32 7, float %2759)  ; Saturate(value)
  %2761 = fsub fast float %2760, %2639
  %2762 = fmul fast float %2761, %2653
  %2763 = fadd fast float %2762, %2639
  br label %2817

; <label>:2764                                    ; preds = %2652
  %2765 = and i32 %2655, 134217728
  %2766 = icmp eq i32 %2765, 0
  br i1 %2766, label %2801, label %2767

; <label>:2767                                    ; preds = %2764
  %2768 = call float @dx.op.unary.f32(i32 24, float %339)  ; Sqrt(value)
  %2769 = call float @dx.op.unary.f32(i32 24, float %343)  ; Sqrt(value)
  %2770 = call float @dx.op.unary.f32(i32 24, float %347)  ; Sqrt(value)
  %2771 = fadd fast float %2768, -5.000000e-01
  %2772 = fadd fast float %2769, -5.000000e-01
  %2773 = fadd fast float %2770, -5.000000e-01
  %2774 = fmul fast float %2771, %2653
  %2775 = fmul fast float %2772, %2653
  %2776 = fmul fast float %2773, %2653
  %2777 = fadd fast float %2774, 5.000000e-01
  %2778 = fadd fast float %2775, 5.000000e-01
  %2779 = fadd fast float %2776, 5.000000e-01
  %2780 = call float @dx.op.unary.f32(i32 24, float %2628)  ; Sqrt(value)
  %2781 = call float @dx.op.unary.f32(i32 24, float %2629)  ; Sqrt(value)
  %2782 = call float @dx.op.unary.f32(i32 24, float %2630)  ; Sqrt(value)
  %2783 = fmul fast float %2777, 2.000000e+00
  %2784 = fsub fast float 1.000000e+00, %2783
  %2785 = fmul fast float %2784, %2780
  %2786 = fadd fast float %2785, %2783
  %2787 = fmul fast float %2786, %2780
  %2788 = fmul fast float %2778, 2.000000e+00
  %2789 = fsub fast float 1.000000e+00, %2788
  %2790 = fmul fast float %2789, %2781
  %2791 = fadd fast float %2790, %2788
  %2792 = fmul fast float %2791, %2781
  %2793 = fmul fast float %2779, 2.000000e+00
  %2794 = fsub fast float 1.000000e+00, %2793
  %2795 = fmul fast float %2794, %2782
  %2796 = fadd fast float %2795, %2793
  %2797 = fmul fast float %2796, %2782
  %2798 = fmul fast float %2787, %2787
  %2799 = fmul fast float %2792, %2792
  %2800 = fmul fast float %2797, %2797
  br label %2817

; <label>:2801                                    ; preds = %2764
  %2802 = fmul fast float %339, %339
  %2803 = fmul fast float %343, %343
  %2804 = fmul fast float %347, %347
  %2805 = fadd fast float %2802, -1.000000e+00
  %2806 = fadd fast float %2803, -1.000000e+00
  %2807 = fadd fast float %2804, -1.000000e+00
  %2808 = fmul fast float %2653, %2805
  %2809 = fmul fast float %2653, %2806
  %2810 = fmul fast float %2653, %2807
  %2811 = fadd fast float %2808, 1.000000e+00
  %2812 = fadd fast float %2809, 1.000000e+00
  %2813 = fadd fast float %2810, 1.000000e+00
  %2814 = fmul fast float %2811, %2628
  %2815 = fmul fast float %2812, %2629
  %2816 = fmul fast float %2813, %2630
  br label %2817

; <label>:2817                                    ; preds = %2801, %2767, %2658, %2614
  %2818 = phi float [ %2763, %2658 ], [ %2639, %2767 ], [ %2639, %2801 ], [ 0x3FA23C0BE0000000, %2614 ]
  %2819 = phi float [ %2755, %2658 ], [ %2798, %2767 ], [ %2814, %2801 ], [ 1.000000e+00, %2614 ]
  %2820 = phi float [ %2756, %2658 ], [ %2799, %2767 ], [ %2815, %2801 ], [ 1.000000e+00, %2614 ]
  %2821 = phi float [ %2757, %2658 ], [ %2800, %2767 ], [ %2816, %2801 ], [ 1.000000e+00, %2614 ]
  %2822 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2823 = extractvalue %dx.types.CBufRet.i32 %2822, 1
  %2824 = and i32 %2823, 1
  %2825 = icmp ne i32 %2824, 0
  %2826 = add i32 %60, 356
  %2827 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2826, i32 undef)  ; BufferLoad(srv,index,wot)
  %2828 = extractvalue %dx.types.ResRet.i32 %2827, 0
  %2829 = and i32 %2828, 32
  %2830 = icmp ne i32 %2829, 0
  %2831 = and i1 %2825, %2830
  %2832 = select i1 %2831, float 1.000000e+00, float %2819
  %2833 = select i1 %2831, float 0x3FD3333340000000, float %2820
  %2834 = select i1 %2831, float 0x3FD3333340000000, float %2821
  %2835 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2317, i32 undef)  ; BufferLoad(srv,index,wot)
  %2836 = extractvalue %dx.types.ResRet.i32 %2835, 0
  %2837 = and i32 %2836, 32
  %2838 = icmp eq i32 %2837, 0
  br i1 %2838, label %2911, label %2839

; <label>:2839                                    ; preds = %2817
  %2840 = add i32 %60, 124
  %2841 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2840, i32 undef)  ; BufferLoad(srv,index,wot)
  %2842 = extractvalue %dx.types.ResRet.i32 %2841, 0
  %2843 = add i32 %60, 384
  %2844 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2843, i32 undef)  ; BufferLoad(srv,index,wot)
  %2845 = extractvalue %dx.types.ResRet.i32 %2844, 0
  %2846 = add i32 %2845, 0
  %2847 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2846, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2848 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2847, %dx.types.Handle %105, float %2424, float %2425, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2849 = extractvalue %dx.types.ResRet.f32 %2848, 0
  %2850 = extractvalue %dx.types.ResRet.f32 %2848, 1
  %2851 = extractvalue %dx.types.ResRet.f32 %2848, 2
  %2852 = extractvalue %dx.types.ResRet.f32 %2848, 3
  %2853 = and i32 %2842, 255
  %2854 = uitofp i32 %2853 to float
  %2855 = lshr i32 %2842, 8
  %2856 = and i32 %2855, 255
  %2857 = uitofp i32 %2856 to float
  %2858 = lshr i32 %2842, 16
  %2859 = and i32 %2858, 255
  %2860 = uitofp i32 %2859 to float
  %2861 = fmul fast float %2860, 0x3F70101000000000
  %2862 = fmul fast float %2849, %2854
  %2863 = fadd fast float %2862, %2857
  %2864 = fmul fast float %2863, 0x3F70101000000000
  %2865 = fadd fast float %2850, -5.000000e-01
  %2866 = fadd fast float %2852, -5.000000e-01
  %2867 = fmul fast float %2865, %2861
  %2868 = fmul fast float %2866, %2861
  %2869 = fadd fast float %2867, 5.000000e-01
  %2870 = fadd fast float %2868, 5.000000e-01
  %2871 = fmul fast float %2869, 2.000000e+00
  %2872 = fadd fast float %2871, -1.000000e+00
  %2873 = fmul fast float %2870, 2.000000e+00
  %2874 = fadd fast float %2873, -1.000000e+00
  %2875 = fadd fast float %2872, %2874
  %2876 = fmul fast float %2875, 5.000000e-01
  %2877 = fsub fast float %2872, %2874
  %2878 = fmul fast float %2877, 5.000000e-01
  %2879 = call float @dx.op.unary.f32(i32 6, float %2876)  ; FAbs(value)
  %2880 = fsub fast float 1.000000e+00, %2879
  %2881 = call float @dx.op.unary.f32(i32 6, float %2878)  ; FAbs(value)
  %2882 = fsub fast float %2880, %2881
  %2883 = call float @dx.op.dot3.f32(i32 55, float %2876, float %2878, float %2882, float %2876, float %2878, float %2882)  ; Dot3(ax,ay,az,bx,by,bz)
  %2884 = call float @dx.op.unary.f32(i32 25, float %2883)  ; Rsqrt(value)
  %2885 = fmul fast float %2876, %2884
  %2886 = fmul fast float %2878, %2884
  %2887 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2317, i32 undef)  ; BufferLoad(srv,index,wot)
  %2888 = extractvalue %dx.types.ResRet.i32 %2887, 0
  %2889 = and i32 %2888, 67108864
  %2890 = icmp eq i32 %2889, 0
  br i1 %2890, label %2907, label %2891

; <label>:2891                                    ; preds = %2839
  %2892 = add i32 %60, 312
  %2893 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2892, i32 undef)  ; BufferLoad(srv,index,wot)
  %2894 = extractvalue %dx.types.ResRet.i32 %2893, 0
  %2895 = and i32 %2894, 65535
  %2896 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2895)  ; LegacyF16ToF32(value)
  %2897 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2334, i32 undef)  ; BufferLoad(srv,index,wot)
  %2898 = extractvalue %dx.types.ResRet.i32 %2897, 0
  %2899 = and i32 %2898, 65535
  %2900 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2899)  ; LegacyF16ToF32(value)
  %2901 = lshr i32 %2894, 16
  %2902 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2901)  ; LegacyF16ToF32(value)
  %2903 = fsub fast float %2864, %2902
  %2904 = fmul fast float %2903, %2896
  %2905 = fadd fast float %2904, %2900
  %2906 = call float @dx.op.unary.f32(i32 7, float %2905)  ; Saturate(value)
  br label %2907

; <label>:2907                                    ; preds = %2891, %2839
  %2908 = phi float [ %2906, %2891 ], [ %2864, %2839 ]
  %2909 = call float @dx.op.dot2.f32(i32 54, float %2885, float %2886, float %2328, float %2329)  ; Dot2(ax,ay,bx,by)
  %2910 = call float @dx.op.dot2.f32(i32 54, float %2885, float %2886, float %2330, float %2331)  ; Dot2(ax,ay,bx,by)
  br label %2911

; <label>:2911                                    ; preds = %2907, %2817
  %2912 = phi float [ %2908, %2907 ], [ 0x3FD6666660000000, %2817 ]
  %2913 = phi float [ %2909, %2907 ], [ 0.000000e+00, %2817 ]
  %2914 = phi float [ %2910, %2907 ], [ 0.000000e+00, %2817 ]
  %2915 = phi float [ %2851, %2907 ], [ 1.000000e+00, %2817 ]
  %2916 = add i32 %60, 192
  %2917 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2916, i32 undef)  ; BufferLoad(srv,index,wot)
  %2918 = extractvalue %dx.types.ResRet.i32 %2917, 0
  %2919 = lshr i32 %2918, 22
  %2920 = shl nuw nsw i32 %2919, 5
  %2921 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2920)  ; LegacyF16ToF32(value)
  %2922 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2317, i32 undef)  ; BufferLoad(srv,index,wot)
  %2923 = extractvalue %dx.types.ResRet.i32 %2922, 0
  %2924 = and i32 %2923, 64
  %2925 = icmp eq i32 %2924, 0
  br i1 %2925, label %2959, label %2926

; <label>:2926                                    ; preds = %2911
  %2927 = add i32 %60, 400
  %2928 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2927, i32 undef)  ; BufferLoad(srv,index,wot)
  %2929 = extractvalue %dx.types.ResRet.i32 %2928, 0
  %2930 = add i32 %2929, 0
  %2931 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2930, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2932 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2317, i32 undef)  ; BufferLoad(srv,index,wot)
  %2933 = extractvalue %dx.types.ResRet.i32 %2932, 0
  %2934 = and i32 %2933, 131072
  %2935 = icmp eq i32 %2934, 0
  %2936 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2931, %dx.types.Handle %105, float %2424, float %2425, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2937 = extractvalue %dx.types.ResRet.f32 %2936, 0
  %2938 = extractvalue %dx.types.ResRet.f32 %2936, 1
  %2939 = extractvalue %dx.types.ResRet.f32 %2936, 2
  %2940 = fmul fast float %2937, %327
  %2941 = fmul fast float %2938, %330
  %2942 = fmul fast float %2939, %333
  br i1 %2935, label %2949, label %2943

; <label>:2943                                    ; preds = %2926
  %2944 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2945 = extractvalue %dx.types.CBufRet.f32 %2944, 0
  %2946 = fmul fast float %2945, %2940
  %2947 = fmul fast float %2945, %2941
  %2948 = fmul fast float %2945, %2942
  br label %2949

; <label>:2949                                    ; preds = %2943, %2926
  %2950 = phi float [ %2946, %2943 ], [ %2940, %2926 ]
  %2951 = phi float [ %2947, %2943 ], [ %2941, %2926 ]
  %2952 = phi float [ %2948, %2943 ], [ %2942, %2926 ]
  %2953 = fmul fast float %2950, %2921
  %2954 = select i1 %226, float %2953, float %2950
  %2955 = call float @dx.op.dot3.f32(i32 55, float %2954, float %2951, float %2952, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2956 = select i1 %226, float 0.000000e+00, float %2950
  %2957 = select i1 %226, float %2955, float %2951
  %2958 = select i1 %226, float 0.000000e+00, float %2952
  br label %2959

; <label>:2959                                    ; preds = %2949, %2911
  %2960 = phi float [ %2956, %2949 ], [ 0.000000e+00, %2911 ]
  %2961 = phi float [ %2957, %2949 ], [ 0.000000e+00, %2911 ]
  %2962 = phi float [ %2958, %2949 ], [ 0.000000e+00, %2911 ]
  %2963 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2317, i32 undef)  ; BufferLoad(srv,index,wot)
  %2964 = extractvalue %dx.types.ResRet.i32 %2963, 0
  %2965 = and i32 %2964, 1024
  %2966 = icmp eq i32 %2965, 0
  br i1 %2966, label %2997, label %2967

; <label>:2967                                    ; preds = %2959
  %2968 = add i32 %60, 184
  %2969 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2968, i32 undef)  ; BufferLoad(srv,index,wot)
  %2970 = extractvalue %dx.types.ResRet.i32 %2969, 0
  %2971 = and i32 %2970, 255
  %2972 = uitofp i32 %2971 to float
  %2973 = fmul fast float %2972, 0x3F70101020000000
  %2974 = lshr i32 %2970, 8
  %2975 = and i32 %2974, 255
  %2976 = uitofp i32 %2975 to float
  %2977 = fmul fast float %2976, 0x3F70101020000000
  %2978 = lshr i32 %2970, 16
  %2979 = and i32 %2978, 255
  %2980 = uitofp i32 %2979 to float
  %2981 = fmul fast float %2980, 0x3F70101020000000
  %2982 = fmul fast float %2973, %2973
  %2983 = fmul fast float %2977, %2977
  %2984 = fmul fast float %2981, %2981
  %2985 = add i32 %60, 464
  %2986 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2985, i32 undef)  ; BufferLoad(srv,index,wot)
  %2987 = extractvalue %dx.types.ResRet.i32 %2986, 0
  %2988 = add i32 %2987, 0
  %2989 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2988, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2990 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2989, %dx.types.Handle %106, float %2424, float %2425, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2991 = extractvalue %dx.types.ResRet.f32 %2990, 0
  %2992 = extractvalue %dx.types.ResRet.f32 %2990, 1
  %2993 = extractvalue %dx.types.ResRet.f32 %2990, 2
  %2994 = fmul fast float %2982, %2991
  %2995 = fmul fast float %2983, %2992
  %2996 = fmul fast float %2984, %2993
  br label %2997

; <label>:2997                                    ; preds = %2967, %2959
  %2998 = phi float [ %2994, %2967 ], [ 0.000000e+00, %2959 ]
  %2999 = phi float [ %2995, %2967 ], [ 0.000000e+00, %2959 ]
  %3000 = phi float [ %2996, %2967 ], [ 0.000000e+00, %2959 ]
  %3001 = fcmp fast ogt float %2998, 0.000000e+00
  %3002 = fcmp fast ogt float %2999, 0.000000e+00
  %3003 = fcmp fast ogt float %3000, 0.000000e+00
  %3004 = call float @dx.op.unary.f32(i32 23, float %2998)  ; Log(value)
  %3005 = call float @dx.op.unary.f32(i32 23, float %2999)  ; Log(value)
  %3006 = call float @dx.op.unary.f32(i32 23, float %3000)  ; Log(value)
  %3007 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2916, i32 undef)  ; BufferLoad(srv,index,wot)
  %3008 = extractvalue %dx.types.ResRet.i32 %3007, 0
  %3009 = lshr i32 %3008, 7
  %3010 = and i32 %3009, 32752
  %3011 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3010)  ; LegacyF16ToF32(value)
  %3012 = fmul fast float %3004, 0xBFE62E4300000000
  %3013 = fmul fast float %3012, %3011
  %3014 = fmul fast float %3005, 0xBFE62E4300000000
  %3015 = fmul fast float %3014, %3011
  %3016 = fmul fast float %3006, 0xBFE62E4300000000
  %3017 = fmul fast float %3016, %3011
  %3018 = select i1 %3001, float %3013, float 1.270000e+02
  %3019 = select i1 %3002, float %3015, float 1.270000e+02
  %3020 = select i1 %3003, float %3017, float 1.270000e+02
  %3021 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2317, i32 undef)  ; BufferLoad(srv,index,wot)
  %3022 = extractvalue %dx.types.ResRet.i32 %3021, 0
  %3023 = and i32 %3022, 10240
  %3024 = icmp eq i32 %3023, 0
  br i1 %3024, label %3069, label %3025

; <label>:3025                                    ; preds = %2997
  %3026 = add i32 %60, 480
  %3027 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3026, i32 undef)  ; BufferLoad(srv,index,wot)
  %3028 = extractvalue %dx.types.ResRet.i32 %3027, 0
  %3029 = add i32 %3028, 0
  %3030 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3029, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3031 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3030, %dx.types.Handle %106, float %2424, float %2425, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3032 = extractvalue %dx.types.ResRet.f32 %3031, 1
  %3033 = extractvalue %dx.types.ResRet.f32 %3031, 3
  %3034 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2317, i32 undef)  ; BufferLoad(srv,index,wot)
  %3035 = extractvalue %dx.types.ResRet.i32 %3034, 0
  %3036 = and i32 %3035, 1048576
  %3037 = icmp ne i32 %3036, 0
  %3038 = and i32 %3035, 8192
  %3039 = icmp eq i32 %3038, 0
  br i1 %3039, label %3055, label %3040

; <label>:3040                                    ; preds = %3025
  %3041 = extractvalue %dx.types.ResRet.f32 %3031, 2
  %3042 = select i1 %3037, float %3041, float %3032
  %3043 = extractvalue %dx.types.ResRet.f32 %3031, 0
  %3044 = select i1 %3037, float %3043, float %3032
  %3045 = add i32 %60, 128
  %3046 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3045, i32 undef)  ; BufferLoad(srv,index,wot)
  %3047 = extractvalue %dx.types.ResRet.i32 %3046, 0
  %3048 = lshr i32 %3047, 16
  %3049 = and i32 %3048, 255
  %3050 = uitofp i32 %3049 to float
  %3051 = fmul fast float %3050, 0x3F80101020000000
  %3052 = fmul fast float %3051, %3044
  %3053 = fmul fast float %3051, %3032
  %3054 = fmul fast float %3051, %3042
  br label %3055

; <label>:3055                                    ; preds = %3040, %3025
  %3056 = phi float [ %3052, %3040 ], [ 0.000000e+00, %3025 ]
  %3057 = phi float [ %3053, %3040 ], [ 0.000000e+00, %3025 ]
  %3058 = phi float [ %3054, %3040 ], [ 0.000000e+00, %3025 ]
  %3059 = and i32 %3035, 2048
  %3060 = icmp eq i32 %3059, 0
  br i1 %3060, label %3069, label %3061

; <label>:3061                                    ; preds = %3055
  %3062 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2916, i32 undef)  ; BufferLoad(srv,index,wot)
  %3063 = extractvalue %dx.types.ResRet.i32 %3062, 0
  %3064 = shl i32 %3063, 4
  %3065 = and i32 %3064, 32752
  %3066 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3065)  ; LegacyF16ToF32(value)
  %3067 = fmul fast float %3066, %3033
  %3068 = call float @dx.op.binary.f32(i32 35, float %3067, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3069

; <label>:3069                                    ; preds = %3061, %3055, %2997
  %3070 = phi float [ %3056, %3061 ], [ %3056, %3055 ], [ 0.000000e+00, %2997 ]
  %3071 = phi float [ %3057, %3061 ], [ %3057, %3055 ], [ 0.000000e+00, %2997 ]
  %3072 = phi float [ %3058, %3061 ], [ %3058, %3055 ], [ 0.000000e+00, %2997 ]
  %3073 = phi float [ %3068, %3061 ], [ 0x3F70101020000000, %3055 ], [ 0x3F70101020000000, %2997 ]
  %3074 = add i32 %60, 128
  %3075 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3074, i32 undef)  ; BufferLoad(srv,index,wot)
  %3076 = extractvalue %dx.types.ResRet.i32 %3075, 0
  %3077 = and i32 %3076, 255
  %3078 = uitofp i32 %3077 to float
  %3079 = lshr i32 %3076, 8
  %3080 = and i32 %3079, 255
  %3081 = uitofp i32 %3080 to float
  %3082 = call float @dx.op.dot3.f32(i32 55, float %2832, float %2833, float %2834, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3083 = fmul fast float %3081, %3082
  %3084 = fadd fast float %3083, %3078
  %3085 = fmul fast float %3084, 0x3F70101020000000
  %3086 = call float @dx.op.unary.f32(i32 7, float %3085)  ; Saturate(value)
  br i1 %2316, label %3087, label %3122

; <label>:3087                                    ; preds = %3069
  %3088 = fmul fast float %3073, 2.000000e+00
  %3089 = fcmp fast olt float %3018, 1.270000e+02
  %3090 = fcmp fast olt float %3019, 1.270000e+02
  %3091 = fcmp fast olt float %3020, 1.270000e+02
  %3092 = fmul fast float %3018, 0xBFF7154760000000
  %3093 = fmul fast float %3092, %3088
  %3094 = fmul fast float %3019, 0xBFF7154760000000
  %3095 = fmul fast float %3094, %3088
  %3096 = fmul fast float %3020, 0xBFF7154760000000
  %3097 = fmul fast float %3096, %3088
  %3098 = call float @dx.op.unary.f32(i32 21, float %3093)  ; Exp(value)
  %3099 = call float @dx.op.unary.f32(i32 21, float %3095)  ; Exp(value)
  %3100 = call float @dx.op.unary.f32(i32 21, float %3097)  ; Exp(value)
  %3101 = call float @dx.op.unary.f32(i32 7, float %3098)  ; Saturate(value)
  %3102 = call float @dx.op.unary.f32(i32 7, float %3099)  ; Saturate(value)
  %3103 = call float @dx.op.unary.f32(i32 7, float %3100)  ; Saturate(value)
  %3104 = fadd fast float %3101, -1.000000e+00
  %3105 = select i1 %3089, float %3104, float -1.000000e+00
  %3106 = fadd fast float %3102, -1.000000e+00
  %3107 = select i1 %3090, float %3106, float -1.000000e+00
  %3108 = fadd fast float %3103, -1.000000e+00
  %3109 = select i1 %3091, float %3108, float -1.000000e+00
  %3110 = fmul fast float %3105, %2612
  %3111 = fmul fast float %3107, %2612
  %3112 = fmul fast float %3109, %2612
  %3113 = fadd fast float %3110, 1.000000e+00
  %3114 = fadd fast float %3111, 1.000000e+00
  %3115 = fadd fast float %3112, 1.000000e+00
  %3116 = fmul fast float %3113, %2298
  %3117 = fmul fast float %3114, %2299
  %3118 = fmul fast float %3115, %2300
  %3119 = fmul fast float %3113, %2301
  %3120 = fmul fast float %3114, %2302
  %3121 = fmul fast float %3115, %2303
  br label %3122

; <label>:3122                                    ; preds = %3087, %3069
  %3123 = phi float [ %3116, %3087 ], [ %2298, %3069 ]
  %3124 = phi float [ %3117, %3087 ], [ %2299, %3069 ]
  %3125 = phi float [ %3118, %3087 ], [ %2300, %3069 ]
  %3126 = phi float [ %3119, %3087 ], [ %2301, %3069 ]
  %3127 = phi float [ %3120, %3087 ], [ %2302, %3069 ]
  %3128 = phi float [ %3121, %3087 ], [ %2303, %3069 ]
  %3129 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2317, i32 undef)  ; BufferLoad(srv,index,wot)
  %3130 = extractvalue %dx.types.ResRet.i32 %3129, 0
  %3131 = and i32 %3130, 3
  %3132 = icmp eq i32 %3131, 3
  br i1 %3132, label %3211, label %3133

; <label>:3133                                    ; preds = %3122
  %3134 = and i32 %3130, 16
  %3135 = icmp ne i32 %3134, 0
  %3136 = select i1 %3135, float %2612, float 0.000000e+00
  %3137 = icmp eq i32 %3131, 0
  br i1 %3137, label %3138, label %3166

; <label>:3138                                    ; preds = %3133
  %3139 = and i32 %3130, 64
  %3140 = icmp ne i32 %3139, 0
  %3141 = select i1 %3140, float %2612, float 0.000000e+00
  %3142 = fsub fast float %2832, %3123
  %3143 = fsub fast float %2833, %3124
  %3144 = fsub fast float %2834, %3125
  %3145 = fmul fast float %3136, %3142
  %3146 = fmul fast float %3136, %3143
  %3147 = fmul fast float %3136, %3144
  %3148 = fadd fast float %3145, %3123
  %3149 = fadd fast float %3146, %3124
  %3150 = fadd fast float %3147, %3125
  %3151 = fsub fast float %2818, %2310
  %3152 = fmul fast float %3136, %3151
  %3153 = fadd fast float %3152, %2310
  %3154 = fsub fast float %2960, %3126
  %3155 = fsub fast float %2961, %3127
  %3156 = fsub fast float %2962, %3128
  %3157 = fmul fast float %3141, %3154
  %3158 = fmul fast float %3141, %3155
  %3159 = fmul fast float %3141, %3156
  %3160 = fadd fast float %3157, %3126
  %3161 = fadd fast float %3158, %3127
  %3162 = fadd fast float %3159, %3128
  %3163 = fsub fast float %3086, %2314
  %3164 = fmul fast float %3136, %3163
  %3165 = fadd fast float %3164, %2314
  br label %3211

; <label>:3166                                    ; preds = %3133
  %3167 = icmp eq i32 %3131, 1
  br i1 %3167, label %3168, label %3181

; <label>:3168                                    ; preds = %3166
  %3169 = fadd fast float %2832, -1.000000e+00
  %3170 = fadd fast float %2833, -1.000000e+00
  %3171 = fadd fast float %2834, -1.000000e+00
  %3172 = fmul fast float %3136, %3169
  %3173 = fmul fast float %3136, %3170
  %3174 = fmul fast float %3136, %3171
  %3175 = fadd fast float %3172, 1.000000e+00
  %3176 = fadd fast float %3173, 1.000000e+00
  %3177 = fadd fast float %3174, 1.000000e+00
  %3178 = fmul fast float %3175, %3123
  %3179 = fmul fast float %3176, %3124
  %3180 = fmul fast float %3177, %3125
  br label %3211

; <label>:3181                                    ; preds = %3166
  %3182 = icmp eq i32 %3131, 2
  br i1 %3182, label %3183, label %3211

; <label>:3183                                    ; preds = %3181
  %3184 = call float @dx.op.unary.f32(i32 24, float %2832)  ; Sqrt(value)
  %3185 = call float @dx.op.unary.f32(i32 24, float %2833)  ; Sqrt(value)
  %3186 = call float @dx.op.unary.f32(i32 24, float %2834)  ; Sqrt(value)
  %3187 = fadd fast float %3184, -5.000000e-01
  %3188 = fadd fast float %3185, -5.000000e-01
  %3189 = fadd fast float %3186, -5.000000e-01
  %3190 = fmul fast float %3187, %3136
  %3191 = fmul fast float %3188, %3136
  %3192 = fmul fast float %3189, %3136
  %3193 = fadd fast float %3190, 5.000000e-01
  %3194 = fadd fast float %3191, 5.000000e-01
  %3195 = fadd fast float %3192, 5.000000e-01
  %3196 = fmul fast float %3193, 2.000000e+00
  %3197 = fsub fast float 1.000000e+00, %3196
  %3198 = fmul fast float %3197, %3123
  %3199 = fadd fast float %3198, %3196
  %3200 = fmul fast float %3199, %3123
  %3201 = fmul fast float %3194, 2.000000e+00
  %3202 = fsub fast float 1.000000e+00, %3201
  %3203 = fmul fast float %3202, %3124
  %3204 = fadd fast float %3203, %3201
  %3205 = fmul fast float %3204, %3124
  %3206 = fmul fast float %3195, 2.000000e+00
  %3207 = fsub fast float 1.000000e+00, %3206
  %3208 = fmul fast float %3207, %3125
  %3209 = fadd fast float %3208, %3206
  %3210 = fmul fast float %3209, %3125
  br label %3211

; <label>:3211                                    ; preds = %3183, %3181, %3168, %3138, %3122
  %3212 = phi float [ %3123, %3122 ], [ %3200, %3183 ], [ %3123, %3181 ], [ %3178, %3168 ], [ %3148, %3138 ]
  %3213 = phi float [ %3124, %3122 ], [ %3205, %3183 ], [ %3124, %3181 ], [ %3179, %3168 ], [ %3149, %3138 ]
  %3214 = phi float [ %3125, %3122 ], [ %3210, %3183 ], [ %3125, %3181 ], [ %3180, %3168 ], [ %3150, %3138 ]
  %3215 = phi float [ %3126, %3122 ], [ %3126, %3183 ], [ %3126, %3181 ], [ %3126, %3168 ], [ %3160, %3138 ]
  %3216 = phi float [ %3127, %3122 ], [ %3127, %3183 ], [ %3127, %3181 ], [ %3127, %3168 ], [ %3161, %3138 ]
  %3217 = phi float [ %3128, %3122 ], [ %3128, %3183 ], [ %3128, %3181 ], [ %3128, %3168 ], [ %3162, %3138 ]
  %3218 = phi float [ %2310, %3122 ], [ %2310, %3183 ], [ %2310, %3181 ], [ %2310, %3168 ], [ %3153, %3138 ]
  %3219 = phi float [ %2314, %3122 ], [ %2314, %3183 ], [ %2314, %3181 ], [ %2314, %3168 ], [ %3165, %3138 ]
  %3220 = and i32 %3130, 12
  %3221 = icmp eq i32 %3220, 12
  br i1 %3221, label %3352, label %3222

; <label>:3222                                    ; preds = %3211
  %3223 = and i32 %3130, 2097184
  %3224 = icmp eq i32 %3223, 2097184
  %3225 = select i1 %3224, float %2612, float 0.000000e+00
  %3226 = and i32 %3130, 4194336
  %3227 = icmp eq i32 %3226, 4194336
  %3228 = select i1 %3227, float %2612, float 0.000000e+00
  %3229 = and i32 %3130, 8388640
  %3230 = icmp eq i32 %3229, 8388640
  %3231 = select i1 %3230, float %2612, float 0.000000e+00
  %3232 = and i32 %3130, 1024
  %3233 = icmp ne i32 %3232, 0
  %3234 = select i1 %3233, float %2612, float 0.000000e+00
  %3235 = and i32 %3130, 2048
  %3236 = icmp ne i32 %3235, 0
  %3237 = select i1 %3236, float %2612, float 0.000000e+00
  %3238 = and i32 %3130, 8192
  %3239 = icmp ne i32 %3238, 0
  %3240 = select i1 %3239, float %2612, float 0.000000e+00
  %3241 = icmp eq i32 %3220, 0
  br i1 %3241, label %3242, label %3276

; <label>:3242                                    ; preds = %3222
  %3243 = fsub fast float %2913, %2296
  %3244 = fsub fast float %2914, %2297
  %3245 = fmul fast float %3225, %3243
  %3246 = fmul fast float %3225, %3244
  %3247 = fadd fast float %3245, %2296
  %3248 = fadd fast float %3246, %2297
  %3249 = fsub fast float %2915, %2312
  %3250 = fmul fast float %3228, %3249
  %3251 = fadd fast float %3250, %2312
  %3252 = fsub fast float %2912, %2311
  %3253 = fmul fast float %3231, %3252
  %3254 = fadd fast float %3253, %2311
  %3255 = fsub fast float %3018, %2307
  %3256 = fsub fast float %3019, %2308
  %3257 = fsub fast float %3020, %2309
  %3258 = fmul fast float %3234, %3255
  %3259 = fmul fast float %3234, %3256
  %3260 = fmul fast float %3234, %3257
  %3261 = fadd fast float %3258, %2307
  %3262 = fadd fast float %3259, %2308
  %3263 = fadd fast float %3260, %2309
  %3264 = fsub fast float %3073, %2313
  %3265 = fmul fast float %3237, %3264
  %3266 = fadd fast float %3265, %2313
  %3267 = fsub fast float %3070, %2304
  %3268 = fsub fast float %3071, %2305
  %3269 = fsub fast float %3072, %2306
  %3270 = fmul fast float %3240, %3267
  %3271 = fmul fast float %3240, %3268
  %3272 = fmul fast float %3240, %3269
  %3273 = fadd fast float %3270, %2304
  %3274 = fadd fast float %3271, %2305
  %3275 = fadd fast float %3272, %2306
  br label %3352

; <label>:3276                                    ; preds = %3222
  %3277 = icmp eq i32 %3220, 4
  br i1 %3277, label %3278, label %3324

; <label>:3278                                    ; preds = %3276
  %3279 = fmul fast float %3225, %2913
  %3280 = fmul fast float %3225, %2914
  %3281 = fadd fast float %3279, %2296
  %3282 = fadd fast float %3280, %2297
  %3283 = call float @dx.op.binary.f32(i32 36, float %2312, float %2915)  ; FMin(a,b)
  %3284 = fsub fast float %3283, %2312
  %3285 = fmul fast float %3284, %3228
  %3286 = fadd fast float %3285, %2312
  %3287 = fadd fast float %2912, %2311
  %3288 = fmul fast float %3287, 0x3FF337FAE0000000
  %3289 = fmul fast float %2311, %2311
  %3290 = fmul fast float %2912, %2912
  %3291 = fadd fast float %3290, %3289
  %3292 = fmul fast float %3291, 0x3FE5152B00000000
  %3293 = fmul fast float %2311, 0xBFCC1F85E0000000
  %3294 = fmul fast float %3293, %2912
  %3295 = fadd fast float %3294, 0xBFE1363700000000
  %3296 = fadd fast float %3295, %3288
  %3297 = fsub fast float %3296, %3292
  %3298 = fmul fast float %3287, 0x3FBA6F0D00000000
  %3299 = fmul fast float %3291, 0x3FD0432880000000
  %3300 = fmul fast float %2311, 0xBFEF110800000000
  %3301 = fmul fast float %3300, %2912
  %3302 = fadd fast float %3301, 1.000000e+00
  %3303 = fsub fast float %3302, %3298
  %3304 = fadd fast float %3303, %3299
  %3305 = fdiv fast float %3297, %3304
  %3306 = call float @dx.op.unary.f32(i32 7, float %3305)  ; Saturate(value)
  %3307 = fsub fast float %3306, %2311
  %3308 = fmul fast float %3307, %3231
  %3309 = fadd fast float %3308, %2311
  %3310 = fmul fast float %3234, %3018
  %3311 = fmul fast float %3234, %3019
  %3312 = fmul fast float %3234, %3020
  %3313 = fadd fast float %3310, %2307
  %3314 = fadd fast float %3311, %2308
  %3315 = fadd fast float %3312, %2309
  %3316 = fmul fast float %3237, %3073
  %3317 = fadd fast float %3316, %2313
  %3318 = fmul fast float %3240, %3070
  %3319 = fmul fast float %3240, %3071
  %3320 = fmul fast float %3240, %3072
  %3321 = fadd fast float %3318, %2304
  %3322 = fadd fast float %3319, %2305
  %3323 = fadd fast float %3320, %2306
  br label %3352

; <label>:3324                                    ; preds = %3276
  %3325 = icmp eq i32 %3220, 8
  br i1 %3325, label %3326, label %3352

; <label>:3326                                    ; preds = %3324
  %3327 = fmul fast float %3225, %2913
  %3328 = fmul fast float %3225, %2914
  %3329 = fadd fast float %3327, %2296
  %3330 = fadd fast float %3328, %2297
  %3331 = call float @dx.op.binary.f32(i32 36, float %2312, float %2915)  ; FMin(a,b)
  %3332 = fsub fast float %3331, %2312
  %3333 = fmul fast float %3332, %3228
  %3334 = fadd fast float %3333, %2312
  %3335 = fsub fast float %2912, %2311
  %3336 = fmul fast float %3231, %3335
  %3337 = fadd fast float %3336, %2311
  %3338 = fmul fast float %3234, %3018
  %3339 = fmul fast float %3234, %3019
  %3340 = fmul fast float %3234, %3020
  %3341 = fadd fast float %3338, %2307
  %3342 = fadd fast float %3339, %2308
  %3343 = fadd fast float %3340, %2309
  %3344 = fmul fast float %3237, %3073
  %3345 = fadd fast float %3344, %2313
  %3346 = fmul fast float %3240, %3070
  %3347 = fmul fast float %3240, %3071
  %3348 = fmul fast float %3240, %3072
  %3349 = fadd fast float %3346, %2304
  %3350 = fadd fast float %3347, %2305
  %3351 = fadd fast float %3348, %2306
  br label %3352

; <label>:3352                                    ; preds = %3326, %3324, %3278, %3242, %3211, %2611, %2315, %2295
  %3353 = phi float [ %2296, %3211 ], [ %2296, %2611 ], [ %2296, %2295 ], [ %3329, %3326 ], [ %2296, %3324 ], [ %3281, %3278 ], [ %3247, %3242 ], [ %2296, %2315 ]
  %3354 = phi float [ %2297, %3211 ], [ %2297, %2611 ], [ %2297, %2295 ], [ %3330, %3326 ], [ %2297, %3324 ], [ %3282, %3278 ], [ %3248, %3242 ], [ %2297, %2315 ]
  %3355 = phi float [ %3212, %3211 ], [ %2298, %2611 ], [ %2298, %2295 ], [ %3212, %3326 ], [ %3212, %3324 ], [ %3212, %3278 ], [ %3212, %3242 ], [ %2298, %2315 ]
  %3356 = phi float [ %3213, %3211 ], [ %2299, %2611 ], [ %2299, %2295 ], [ %3213, %3326 ], [ %3213, %3324 ], [ %3213, %3278 ], [ %3213, %3242 ], [ %2299, %2315 ]
  %3357 = phi float [ %3214, %3211 ], [ %2300, %2611 ], [ %2300, %2295 ], [ %3214, %3326 ], [ %3214, %3324 ], [ %3214, %3278 ], [ %3214, %3242 ], [ %2300, %2315 ]
  %3358 = phi float [ %3215, %3211 ], [ %2301, %2611 ], [ %2301, %2295 ], [ %3215, %3326 ], [ %3215, %3324 ], [ %3215, %3278 ], [ %3215, %3242 ], [ %2301, %2315 ]
  %3359 = phi float [ %3216, %3211 ], [ %2302, %2611 ], [ %2302, %2295 ], [ %3216, %3326 ], [ %3216, %3324 ], [ %3216, %3278 ], [ %3216, %3242 ], [ %2302, %2315 ]
  %3360 = phi float [ %3217, %3211 ], [ %2303, %2611 ], [ %2303, %2295 ], [ %3217, %3326 ], [ %3217, %3324 ], [ %3217, %3278 ], [ %3217, %3242 ], [ %2303, %2315 ]
  %3361 = phi float [ %2304, %3211 ], [ %2304, %2611 ], [ %2304, %2295 ], [ %3349, %3326 ], [ %2304, %3324 ], [ %3321, %3278 ], [ %3273, %3242 ], [ %2304, %2315 ]
  %3362 = phi float [ %2305, %3211 ], [ %2305, %2611 ], [ %2305, %2295 ], [ %3350, %3326 ], [ %2305, %3324 ], [ %3322, %3278 ], [ %3274, %3242 ], [ %2305, %2315 ]
  %3363 = phi float [ %2306, %3211 ], [ %2306, %2611 ], [ %2306, %2295 ], [ %3351, %3326 ], [ %2306, %3324 ], [ %3323, %3278 ], [ %3275, %3242 ], [ %2306, %2315 ]
  %3364 = phi float [ %2307, %3211 ], [ %2307, %2611 ], [ %2307, %2295 ], [ %3341, %3326 ], [ %2307, %3324 ], [ %3313, %3278 ], [ %3261, %3242 ], [ %2307, %2315 ]
  %3365 = phi float [ %2308, %3211 ], [ %2308, %2611 ], [ %2308, %2295 ], [ %3342, %3326 ], [ %2308, %3324 ], [ %3314, %3278 ], [ %3262, %3242 ], [ %2308, %2315 ]
  %3366 = phi float [ %2309, %3211 ], [ %2309, %2611 ], [ %2309, %2295 ], [ %3343, %3326 ], [ %2309, %3324 ], [ %3315, %3278 ], [ %3263, %3242 ], [ %2309, %2315 ]
  %3367 = phi float [ %3218, %3211 ], [ %2310, %2611 ], [ %2310, %2295 ], [ %3218, %3326 ], [ %3218, %3324 ], [ %3218, %3278 ], [ %3218, %3242 ], [ %2310, %2315 ]
  %3368 = phi float [ %2311, %3211 ], [ %2311, %2611 ], [ %2311, %2295 ], [ %3337, %3326 ], [ %2311, %3324 ], [ %3309, %3278 ], [ %3254, %3242 ], [ %2311, %2315 ]
  %3369 = phi float [ %2312, %3211 ], [ %2312, %2611 ], [ %2312, %2295 ], [ %3334, %3326 ], [ %2312, %3324 ], [ %3286, %3278 ], [ %3251, %3242 ], [ %2312, %2315 ]
  %3370 = phi float [ %2313, %3211 ], [ %2313, %2611 ], [ %2313, %2295 ], [ %3345, %3326 ], [ %2313, %3324 ], [ %3317, %3278 ], [ %3266, %3242 ], [ %2313, %2315 ]
  %3371 = phi float [ %3219, %3211 ], [ %2314, %2611 ], [ %2314, %2295 ], [ %3219, %3326 ], [ %3219, %3324 ], [ %3219, %3278 ], [ %3219, %3242 ], [ %2314, %2315 ]
  br i1 %414, label %4409, label %3372

; <label>:3372                                    ; preds = %3352
  %3373 = icmp ult i32 %468, 4
  %3374 = add i32 %60, 72
  %3375 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3374, i32 undef)  ; BufferLoad(srv,index,wot)
  %3376 = extractvalue %dx.types.ResRet.i32 %3375, 0
  %3377 = add i32 %60, 76
  %3378 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3377, i32 undef)  ; BufferLoad(srv,index,wot)
  %3379 = extractvalue %dx.types.ResRet.i32 %3378, 0
  %3380 = or i32 %3379, %3376
  %3381 = icmp eq i32 %3380, 0
  br i1 %3381, label %4409, label %3382

; <label>:3382                                    ; preds = %3372
  %3383 = and i32 %3376, 262144
  %3384 = icmp ne i32 %3383, 0
  %3385 = select i1 %3384, float %63, float 1.000000e+00
  %3386 = select i1 %3384, float %64, float 0.000000e+00
  %3387 = select i1 %3384, float %65, float 0.000000e+00
  %3388 = select i1 %3384, float %66, float 1.000000e+00
  %3389 = select i1 %3384, float %67, float %88
  %3390 = select i1 %3384, float %68, float %89
  %3391 = add i32 %60, 332
  %3392 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3391, i32 undef)  ; BufferLoad(srv,index,wot)
  %3393 = extractvalue %dx.types.ResRet.i32 %3392, 0
  %3394 = lshr i32 %3393, 16
  %3395 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3394)  ; LegacyF16ToF32(value)
  %3396 = fmul fast float %3395, 0x3F50624DE0000000
  %3397 = add i32 %60, 136
  %3398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3397, i32 undef)  ; BufferLoad(srv,index,wot)
  %3399 = extractvalue %dx.types.ResRet.i32 %3398, 0
  %3400 = lshr i32 %3399, 16
  %3401 = and i32 %3400, 255
  %3402 = lshr i32 %3399, 24
  %3403 = add i32 %60, 340
  %3404 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3403, i32 undef)  ; BufferLoad(srv,index,wot)
  %3405 = extractvalue %dx.types.ResRet.i32 %3404, 0
  %3406 = and i32 %3405, 65535
  %3407 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3406)  ; LegacyF16ToF32(value)
  %3408 = lshr i32 %3405, 16
  %3409 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3408)  ; LegacyF16ToF32(value)
  %3410 = add i32 %60, 80
  %3411 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3410, i32 undef)  ; BufferLoad(srv,index,wot)
  %3412 = extractvalue %dx.types.ResRet.i32 %3411, 0
  %3413 = lshr i32 %3412, 22
  %3414 = shl nuw nsw i32 %3413, 5
  %3415 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3414)  ; LegacyF16ToF32(value)
  %3416 = shl i32 %3412, 4
  %3417 = and i32 %3416, 32752
  %3418 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3417)  ; LegacyF16ToF32(value)
  %3419 = lshr i32 %3412, 7
  %3420 = and i32 %3419, 32752
  %3421 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3420)  ; LegacyF16ToF32(value)
  %3422 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3423 = extractvalue %dx.types.CBufRet.f32 %3422, 3
  %3424 = fmul fast float %3423, 1.000000e+03
  %3425 = fmul fast float %404, %3424
  %3426 = call float @dx.op.unary.f32(i32 22, float %3425)  ; Frc(value)
  %3427 = fadd fast float %3426, %394
  %3428 = fmul fast float %405, %3424
  %3429 = call float @dx.op.unary.f32(i32 22, float %3428)  ; Frc(value)
  %3430 = fadd fast float %3429, %396
  %3431 = fmul fast float %3396, %3424
  %3432 = call float @dx.op.unary.f32(i32 22, float %3431)  ; Frc(value)
  %3433 = fmul fast float %3432, 0x401921FB60000000
  %3434 = fadd fast float %3433, %3415
  %3435 = call float @dx.op.unary.f32(i32 13, float %3434)  ; Sin(value)
  %3436 = call float @dx.op.unary.f32(i32 12, float %3434)  ; Cos(value)
  %3437 = fsub fast float -0.000000e+00, %3435
  %3438 = fadd fast float %3389, -5.000000e-01
  %3439 = fadd fast float %3390, -5.000000e-01
  %3440 = fmul fast float %3407, %3438
  %3441 = fmul fast float %3409, %3439
  %3442 = fadd fast float %3440, 5.000000e-01
  %3443 = fadd fast float %3441, 5.000000e-01
  %3444 = fmul fast float %3418, %3442
  %3445 = fmul fast float %3421, %3443
  %3446 = fmul fast float %3436, %3444
  %3447 = call float @dx.op.tertiary.f32(i32 46, float %3437, float %3445, float %3446)  ; FMad(a,b,c)
  %3448 = fmul fast float %3435, %3444
  %3449 = call float @dx.op.tertiary.f32(i32 46, float %3436, float %3445, float %3448)  ; FMad(a,b,c)
  %3450 = fadd fast float %3427, %3447
  %3451 = fadd fast float %3430, %3449
  %3452 = icmp ugt i32 %3401, 1
  %3453 = icmp ugt i32 %3399, 33554431
  %3454 = or i1 %3453, %3452
  br i1 %3454, label %3455, label %3480

; <label>:3455                                    ; preds = %3382
  %3456 = add i32 %60, 276
  %3457 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3456, i32 undef)  ; BufferLoad(srv,index,wot)
  %3458 = extractvalue %dx.types.ResRet.i32 %3457, 0
  %3459 = lshr i32 %3458, 16
  %3460 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3459)  ; LegacyF16ToF32(value)
  %3461 = fmul fast float %3423, %3460
  %3462 = call float @dx.op.unary.f32(i32 22, float %3461)  ; Frc(value)
  %3463 = mul nuw nsw i32 %3401, %3402
  %3464 = uitofp i32 %3463 to float
  %3465 = fmul fast float %3462, %3464
  %3466 = call float @dx.op.unary.f32(i32 27, float %3465)  ; Round_ni(value)
  %3467 = fptoui float %3466 to i32
  %3468 = urem i32 %3467, %3401
  %3469 = udiv i32 %3467, %3402
  %3470 = call float @dx.op.unary.f32(i32 22, float %3450)  ; Frc(value)
  %3471 = call float @dx.op.unary.f32(i32 22, float %3451)  ; Frc(value)
  %3472 = uitofp i32 %3468 to float
  %3473 = uitofp i32 %3469 to float
  %3474 = fadd fast float %3470, %3472
  %3475 = fadd fast float %3471, %3473
  %3476 = uitofp i32 %3401 to float
  %3477 = uitofp i32 %3402 to float
  %3478 = fdiv fast float %3474, %3476
  %3479 = fdiv fast float %3475, %3477
  br label %3480

; <label>:3480                                    ; preds = %3455, %3382
  %3481 = phi float [ %3478, %3455 ], [ %3450, %3382 ]
  %3482 = phi float [ %3479, %3455 ], [ %3451, %3382 ]
  %3483 = and i32 %3376, 16777216
  %3484 = icmp eq i32 %3483, 0
  br i1 %3484, label %3594, label %3485

; <label>:3485                                    ; preds = %3480
  %3486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3487 = extractvalue %dx.types.CBufRet.f32 %3486, 0
  %3488 = extractvalue %dx.types.CBufRet.f32 %3486, 1
  %3489 = extractvalue %dx.types.CBufRet.f32 %3486, 2
  %3490 = fadd fast float %3487, %164
  %3491 = fadd fast float %3488, %165
  %3492 = fadd fast float %3489, %166
  %3493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %3494 = extractvalue %dx.types.CBufRet.f32 %3493, 0
  %3495 = call float @dx.op.unary.f32(i32 7, float %3494)  ; Saturate(value)
  %3496 = icmp eq i32 %61, 65535
  br i1 %3496, label %3591, label %3497

; <label>:3497                                    ; preds = %3485
  %3498 = lshr i32 %61, 1
  %3499 = shl i32 %3498, 2
  %3500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %3499, i32 undef)  ; BufferLoad(srv,index,wot)
  %3501 = extractvalue %dx.types.ResRet.i32 %3500, 0
  %3502 = and i32 %61, 1
  %3503 = icmp ne i32 %3502, 0
  %3504 = lshr i32 %3501, 16
  %3505 = and i32 %3501, 65535
  %3506 = select i1 %3503, i32 %3504, i32 %3505
  %3507 = icmp eq i32 %3506, 65535
  br i1 %3507, label %3587, label %3508

; <label>:3508                                    ; preds = %3497
  %3509 = mul nuw nsw i32 %3506, 40
  %3510 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %3509, i32 undef)  ; BufferLoad(srv,index,wot)
  %3511 = extractvalue %dx.types.ResRet.f32 %3510, 0
  %3512 = extractvalue %dx.types.ResRet.f32 %3510, 1
  %3513 = extractvalue %dx.types.ResRet.f32 %3510, 2
  %3514 = add nuw nsw i32 %3509, 12
  %3515 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %3514, i32 undef)  ; BufferLoad(srv,index,wot)
  %3516 = extractvalue %dx.types.ResRet.f32 %3515, 0
  %3517 = extractvalue %dx.types.ResRet.f32 %3515, 1
  %3518 = extractvalue %dx.types.ResRet.f32 %3515, 2
  %3519 = add nuw nsw i32 %3509, 24
  %3520 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %3519, i32 undef)  ; BufferLoad(srv,index,wot)
  %3521 = extractvalue %dx.types.ResRet.f32 %3520, 0
  %3522 = extractvalue %dx.types.ResRet.f32 %3520, 1
  %3523 = extractvalue %dx.types.ResRet.f32 %3520, 2
  %3524 = add nuw nsw i32 %3509, 36
  %3525 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %3524, i32 undef)  ; BufferLoad(srv,index,wot)
  %3526 = extractvalue %dx.types.ResRet.f32 %3525, 0
  %3527 = fsub fast float %3490, %3511
  %3528 = fsub fast float %3491, %3512
  %3529 = fsub fast float %3492, %3513
  %3530 = fmul fast float %3526, %3527
  %3531 = fmul fast float %3526, %3528
  %3532 = fmul fast float %3526, %3529
  %3533 = call float @dx.op.unary.f32(i32 27, float %3530)  ; Round_ni(value)
  %3534 = call float @dx.op.unary.f32(i32 27, float %3531)  ; Round_ni(value)
  %3535 = call float @dx.op.unary.f32(i32 27, float %3532)  ; Round_ni(value)
  %3536 = fadd fast float %3533, 5.000000e-01
  %3537 = fadd fast float %3534, 5.000000e-01
  %3538 = fadd fast float %3535, 5.000000e-01
  %3539 = fmul fast float %3536, %3516
  %3540 = fmul fast float %3537, %3517
  %3541 = fmul fast float %3538, %3518
  %3542 = shl i32 %61, 2
  %3543 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3542, i32 undef)  ; BufferLoad(srv,index,wot)
  %3544 = extractvalue %dx.types.ResRet.i32 %3543, 0
  %3545 = add i32 %3544, 0
  %3546 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3545, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3547 = call float @dx.op.unary.f32(i32 22, float %3539)  ; Frc(value)
  %3548 = call float @dx.op.unary.f32(i32 22, float %3540)  ; Frc(value)
  %3549 = call float @dx.op.unary.f32(i32 22, float %3541)  ; Frc(value)
  %3550 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3546, %dx.types.Handle %55, float %3547, float %3548, float %3549, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3551 = extractvalue %dx.types.ResRet.f32 %3550, 0
  %3552 = extractvalue %dx.types.ResRet.f32 %3550, 1
  %3553 = extractvalue %dx.types.ResRet.f32 %3550, 2
  %3554 = fmul fast float %3551, 1.023000e+03
  %3555 = fmul fast float %3552, 1.023000e+03
  %3556 = fmul fast float %3553, 1.023000e+03
  %3557 = fadd fast float %3554, 5.000000e-01
  %3558 = fadd fast float %3555, 5.000000e-01
  %3559 = fadd fast float %3556, 5.000000e-01
  %3560 = call float @dx.op.unary.f32(i32 27, float %3557)  ; Round_ni(value)
  %3561 = call float @dx.op.unary.f32(i32 27, float %3558)  ; Round_ni(value)
  %3562 = call float @dx.op.unary.f32(i32 27, float %3559)  ; Round_ni(value)
  %3563 = fsub fast float %3530, %3533
  %3564 = fsub fast float %3531, %3534
  %3565 = fsub fast float %3532, %3535
  %3566 = fmul fast float %3563, 7.500000e-01
  %3567 = fmul fast float %3564, 7.500000e-01
  %3568 = fmul fast float %3565, 7.500000e-01
  %3569 = fadd fast float %3533, 1.250000e-01
  %3570 = fadd fast float %3569, %3566
  %3571 = fadd fast float %3570, %3560
  %3572 = fadd fast float %3534, 1.250000e-01
  %3573 = fadd fast float %3572, %3567
  %3574 = fadd fast float %3573, %3561
  %3575 = fadd fast float %3535, 1.250000e-01
  %3576 = fadd fast float %3575, %3568
  %3577 = fadd fast float %3576, %3562
  %3578 = fmul fast float %3571, %3521
  %3579 = fmul fast float %3574, %3522
  %3580 = fmul fast float %3577, %3523
  %3581 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3542, i32 undef)  ; BufferLoad(srv,index,wot)
  %3582 = extractvalue %dx.types.ResRet.i32 %3581, 0
  %3583 = add i32 %3582, 0
  %3584 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3583, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3585 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3584, %dx.types.Handle %53, float %3578, float %3579, float %3580, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3586 = extractvalue %dx.types.ResRet.f32 %3585, 0
  br label %3587

; <label>:3587                                    ; preds = %3508, %3497
  %3588 = phi float [ %3586, %3508 ], [ -1.000000e+00, %3497 ]
  %3589 = fadd fast float %3588, %3495
  %3590 = call float @dx.op.unary.f32(i32 7, float %3589)  ; Saturate(value)
  br label %3591

; <label>:3591                                    ; preds = %3587, %3485
  %3592 = phi float [ %3590, %3587 ], [ %3495, %3485 ]
  %3593 = fmul fast float %3592, %463
  br label %3594

; <label>:3594                                    ; preds = %3591, %3480
  %3595 = phi float [ %3593, %3591 ], [ %463, %3480 ]
  %3596 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3374, i32 undef)  ; BufferLoad(srv,index,wot)
  %3597 = extractvalue %dx.types.ResRet.i32 %3596, 0
  %3598 = and i32 %3597, 256
  %3599 = icmp eq i32 %3598, 0
  br i1 %3599, label %3646, label %3600

; <label>:3600                                    ; preds = %3594
  %3601 = add i32 %60, 436
  %3602 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3601, i32 undef)  ; BufferLoad(srv,index,wot)
  %3603 = extractvalue %dx.types.ResRet.i32 %3602, 0
  %3604 = add i32 %3603, 0
  %3605 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3604, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3606 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3605, %dx.types.Handle %106, float %3481, float %3482, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3607 = extractvalue %dx.types.ResRet.f32 %3606, 0
  %3608 = add i32 %60, 148
  %3609 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3608, i32 undef)  ; BufferLoad(srv,index,wot)
  %3610 = extractvalue %dx.types.ResRet.i32 %3609, 0
  %3611 = shl i32 %3610, 4
  %3612 = and i32 %3611, 32752
  %3613 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3612)  ; LegacyF16ToF32(value)
  %3614 = lshr i32 %3610, 7
  %3615 = and i32 %3614, 32752
  %3616 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3615)  ; LegacyF16ToF32(value)
  %3617 = fsub fast float 1.000000e+00, %3595
  %3618 = call float @dx.op.binary.f32(i32 35, float %3617, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3619 = bitcast float %3595 to i32
  %3620 = sitofp i32 %3619 to float
  %3621 = fadd fast float %3620, 0xC1CFBF8940000000
  %3622 = fmul fast float %3616, %3621
  %3623 = fadd fast float %3622, 0x41CFBF8940000000
  %3624 = fptosi float %3623 to i32
  %3625 = bitcast i32 %3624 to float
  %3626 = bitcast float %3618 to i32
  %3627 = sitofp i32 %3626 to float
  %3628 = fadd fast float %3627, 0xC1CFBF8940000000
  %3629 = fmul fast float %3628, %3616
  %3630 = fadd fast float %3629, 0x41CFBF8940000000
  %3631 = fptosi float %3630 to i32
  %3632 = bitcast i32 %3631 to float
  %3633 = fmul fast float %3625, %3613
  %3634 = fmul fast float %3632, %3613
  %3635 = fsub fast float %3618, %3633
  %3636 = fadd fast float %3634, %3618
  %3637 = call float @dx.op.unary.f32(i32 7, float %3635)  ; Saturate(value)
  %3638 = call float @dx.op.unary.f32(i32 7, float %3636)  ; Saturate(value)
  %3639 = fsub fast float %3607, %3637
  %3640 = fsub fast float %3638, %3637
  %3641 = bitcast float %3640 to i32
  %3642 = sub nsw i32 2129859010, %3641
  %3643 = bitcast i32 %3642 to float
  %3644 = fmul fast float %3643, %3639
  %3645 = call float @dx.op.unary.f32(i32 7, float %3644)  ; Saturate(value)
  br label %3646

; <label>:3646                                    ; preds = %3600, %3594
  %3647 = phi float [ %3645, %3600 ], [ %3595, %3594 ]
  %3648 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3374, i32 undef)  ; BufferLoad(srv,index,wot)
  %3649 = extractvalue %dx.types.ResRet.i32 %3648, 0
  %3650 = and i32 %3649, 128
  %3651 = icmp eq i32 %3650, 0
  br i1 %3651, label %3668, label %3652

; <label>:3652                                    ; preds = %3646
  %3653 = add i32 %60, 420
  %3654 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3653, i32 undef)  ; BufferLoad(srv,index,wot)
  %3655 = extractvalue %dx.types.ResRet.i32 %3654, 0
  %3656 = add i32 %3655, 0
  %3657 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3656, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3658 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3657, %dx.types.Handle %106, float %3481, float %3482, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3659 = extractvalue %dx.types.ResRet.f32 %3658, 0
  %3660 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3374, i32 undef)  ; BufferLoad(srv,index,wot)
  %3661 = extractvalue %dx.types.ResRet.i32 %3660, 0
  %3662 = and i32 %3661, 524288
  %3663 = icmp ne i32 %3662, 0
  %3664 = fcmp fast ogt float %3659, 0x3FE0101020000000
  %3665 = select i1 %3664, float 1.000000e+00, float 0.000000e+00
  %3666 = select i1 %3663, float %3665, float %3659
  %3667 = fmul fast float %3666, %3647
  br label %3668

; <label>:3668                                    ; preds = %3652, %3646
  %3669 = phi float [ %3667, %3652 ], [ %3647, %3646 ]
  %3670 = fcmp fast ult float %3669, 0x3F70101020000000
  br i1 %3670, label %4409, label %3671

; <label>:3671                                    ; preds = %3668
  %3672 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3374, i32 undef)  ; BufferLoad(srv,index,wot)
  %3673 = extractvalue %dx.types.ResRet.i32 %3672, 0
  %3674 = and i32 %3673, 16
  %3675 = icmp eq i32 %3674, 0
  br i1 %3675, label %3874, label %3676

; <label>:3676                                    ; preds = %3671
  %3677 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3397, i32 undef)  ; BufferLoad(srv,index,wot)
  %3678 = extractvalue %dx.types.ResRet.i32 %3677, 0
  %3679 = add i32 %60, 372
  %3680 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3679, i32 undef)  ; BufferLoad(srv,index,wot)
  %3681 = extractvalue %dx.types.ResRet.i32 %3680, 0
  %3682 = add i32 %3681, 0
  %3683 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3682, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3684 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3683, %dx.types.Handle %105, float %3481, float %3482, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3685 = extractvalue %dx.types.ResRet.f32 %3684, 0
  %3686 = extractvalue %dx.types.ResRet.f32 %3684, 1
  %3687 = extractvalue %dx.types.ResRet.f32 %3684, 2
  %3688 = extractvalue %dx.types.ResRet.f32 %3684, 3
  %3689 = and i32 %3678, 255
  %3690 = uitofp i32 %3689 to float
  %3691 = lshr i32 %3678, 8
  %3692 = and i32 %3691, 255
  %3693 = uitofp i32 %3692 to float
  %3694 = fmul fast float %3688, %3690
  %3695 = fadd fast float %3694, %3693
  %3696 = fmul fast float %3695, 0x3F70101000000000
  %3697 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3374, i32 undef)  ; BufferLoad(srv,index,wot)
  %3698 = extractvalue %dx.types.ResRet.i32 %3697, 0
  %3699 = and i32 %3698, 512
  %3700 = icmp eq i32 %3699, 0
  br i1 %3700, label %3709, label %3701

; <label>:3701                                    ; preds = %3676
  %3702 = add i32 %60, 452
  %3703 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3702, i32 undef)  ; BufferLoad(srv,index,wot)
  %3704 = extractvalue %dx.types.ResRet.i32 %3703, 0
  %3705 = add i32 %3704, 0
  %3706 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3705, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3707 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3706, %dx.types.Handle %106, float %3481, float %3482, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3708 = extractvalue %dx.types.ResRet.f32 %3707, 0
  br label %3709

; <label>:3709                                    ; preds = %3701, %3676
  %3710 = phi float [ %3708, %3701 ], [ 1.000000e+00, %3676 ]
  %3711 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3374, i32 undef)  ; BufferLoad(srv,index,wot)
  %3712 = extractvalue %dx.types.ResRet.i32 %3711, 0
  %3713 = and i32 %3712, 33554432
  %3714 = icmp eq i32 %3713, 0
  br i1 %3714, label %3821, label %3715

; <label>:3715                                    ; preds = %3709
  %3716 = add i32 %60, 272
  %3717 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3716, i32 undef)  ; BufferLoad(srv,index,wot)
  %3718 = extractvalue %dx.types.ResRet.i32 %3717, 0
  %3719 = and i32 %3718, 65535
  %3720 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3719)  ; LegacyF16ToF32(value)
  %3721 = lshr i32 %3718, 16
  %3722 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3721)  ; LegacyF16ToF32(value)
  %3723 = add i32 %60, 276
  %3724 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3723, i32 undef)  ; BufferLoad(srv,index,wot)
  %3725 = extractvalue %dx.types.ResRet.i32 %3724, 0
  %3726 = and i32 %3725, 65535
  %3727 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3726)  ; LegacyF16ToF32(value)
  %3728 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %376, i32 undef)  ; BufferLoad(srv,index,wot)
  %3729 = extractvalue %dx.types.ResRet.i32 %3728, 0
  %3730 = lshr i32 %3729, 24
  %3731 = uitofp i32 %3730 to float
  %3732 = fmul fast float %3731, 0x3F70101020000000
  %3733 = and i32 %3729, 255
  %3734 = uitofp i32 %3733 to float
  %3735 = fmul fast float %3734, 0x3F70101020000000
  %3736 = lshr i32 %3729, 8
  %3737 = and i32 %3736, 255
  %3738 = uitofp i32 %3737 to float
  %3739 = fmul fast float %3738, 0x3F70101020000000
  %3740 = lshr i32 %3729, 16
  %3741 = and i32 %3740, 255
  %3742 = uitofp i32 %3741 to float
  %3743 = fmul fast float %3742, 0x3F70101020000000
  %3744 = add i32 %60, 268
  %3745 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3744, i32 undef)  ; BufferLoad(srv,index,wot)
  %3746 = extractvalue %dx.types.ResRet.i32 %3745, 0
  %3747 = lshr i32 %3746, 24
  %3748 = uitofp i32 %3747 to float
  %3749 = fmul fast float %3748, 0x3F70101020000000
  %3750 = and i32 %3746, 255
  %3751 = uitofp i32 %3750 to float
  %3752 = fmul fast float %3751, 0x3F70101020000000
  %3753 = lshr i32 %3746, 8
  %3754 = and i32 %3753, 255
  %3755 = uitofp i32 %3754 to float
  %3756 = fmul fast float %3755, 0x3F70101020000000
  %3757 = lshr i32 %3746, 16
  %3758 = and i32 %3757, 255
  %3759 = uitofp i32 %3758 to float
  %3760 = fmul fast float %3759, 0x3F70101020000000
  %3761 = bitcast float %3685 to i32
  %3762 = ashr i32 %3761, 1
  %3763 = sub nsw i32 1597463174, %3762
  %3764 = bitcast i32 %3763 to float
  %3765 = fmul fast float %3685, 5.000000e-01
  %3766 = fmul fast float %3764, %3764
  %3767 = fmul fast float %3766, %3765
  %3768 = fsub fast float 1.500000e+00, %3767
  %3769 = fmul fast float %3764, %3685
  %3770 = fmul fast float %3769, %3768
  %3771 = bitcast float %3686 to i32
  %3772 = ashr i32 %3771, 1
  %3773 = sub nsw i32 1597463174, %3772
  %3774 = bitcast i32 %3773 to float
  %3775 = fmul fast float %3686, 5.000000e-01
  %3776 = fmul fast float %3774, %3774
  %3777 = fmul fast float %3776, %3775
  %3778 = fsub fast float 1.500000e+00, %3777
  %3779 = fmul fast float %3774, %3686
  %3780 = fmul fast float %3779, %3778
  %3781 = bitcast float %3687 to i32
  %3782 = ashr i32 %3781, 1
  %3783 = sub nsw i32 1597463174, %3782
  %3784 = bitcast i32 %3783 to float
  %3785 = fmul fast float %3687, 5.000000e-01
  %3786 = fmul fast float %3784, %3784
  %3787 = fmul fast float %3786, %3785
  %3788 = fsub fast float 1.500000e+00, %3787
  %3789 = fmul fast float %3784, %3687
  %3790 = fmul fast float %3789, %3788
  %3791 = fsub fast float %3770, %3752
  %3792 = fsub fast float %3780, %3756
  %3793 = fsub fast float %3790, %3760
  %3794 = fmul fast float %3791, %3720
  %3795 = fmul fast float %3792, %3722
  %3796 = fmul fast float %3793, %3727
  %3797 = fadd fast float %3794, %3735
  %3798 = fadd fast float %3795, %3739
  %3799 = fadd fast float %3796, %3743
  %3800 = call float @dx.op.unary.f32(i32 7, float %3797)  ; Saturate(value)
  %3801 = call float @dx.op.unary.f32(i32 7, float %3798)  ; Saturate(value)
  %3802 = call float @dx.op.unary.f32(i32 7, float %3799)  ; Saturate(value)
  %3803 = fmul fast float %3800, %3800
  %3804 = fmul fast float %3801, %3801
  %3805 = fmul fast float %3802, %3802
  %3806 = fsub fast float %3803, %3685
  %3807 = fsub fast float %3804, %3686
  %3808 = fsub fast float %3805, %3687
  %3809 = fmul fast float %3806, %3710
  %3810 = fmul fast float %3807, %3710
  %3811 = fmul fast float %3808, %3710
  %3812 = fadd fast float %3809, %3685
  %3813 = fadd fast float %3810, %3686
  %3814 = fadd fast float %3811, %3687
  %3815 = fadd fast float %3732, %3696
  %3816 = fsub fast float %3815, %3749
  %3817 = call float @dx.op.unary.f32(i32 7, float %3816)  ; Saturate(value)
  %3818 = fsub fast float %3817, %3696
  %3819 = fmul fast float %3818, %3710
  %3820 = fadd fast float %3819, %3696
  br label %3874

; <label>:3821                                    ; preds = %3709
  %3822 = and i32 %3712, 134217728
  %3823 = icmp eq i32 %3822, 0
  br i1 %3823, label %3858, label %3824

; <label>:3824                                    ; preds = %3821
  %3825 = call float @dx.op.unary.f32(i32 24, float %381)  ; Sqrt(value)
  %3826 = call float @dx.op.unary.f32(i32 24, float %385)  ; Sqrt(value)
  %3827 = call float @dx.op.unary.f32(i32 24, float %389)  ; Sqrt(value)
  %3828 = fadd fast float %3825, -5.000000e-01
  %3829 = fadd fast float %3826, -5.000000e-01
  %3830 = fadd fast float %3827, -5.000000e-01
  %3831 = fmul fast float %3828, %3710
  %3832 = fmul fast float %3829, %3710
  %3833 = fmul fast float %3830, %3710
  %3834 = fadd fast float %3831, 5.000000e-01
  %3835 = fadd fast float %3832, 5.000000e-01
  %3836 = fadd fast float %3833, 5.000000e-01
  %3837 = call float @dx.op.unary.f32(i32 24, float %3685)  ; Sqrt(value)
  %3838 = call float @dx.op.unary.f32(i32 24, float %3686)  ; Sqrt(value)
  %3839 = call float @dx.op.unary.f32(i32 24, float %3687)  ; Sqrt(value)
  %3840 = fmul fast float %3834, 2.000000e+00
  %3841 = fsub fast float 1.000000e+00, %3840
  %3842 = fmul fast float %3841, %3837
  %3843 = fadd fast float %3842, %3840
  %3844 = fmul fast float %3843, %3837
  %3845 = fmul fast float %3835, 2.000000e+00
  %3846 = fsub fast float 1.000000e+00, %3845
  %3847 = fmul fast float %3846, %3838
  %3848 = fadd fast float %3847, %3845
  %3849 = fmul fast float %3848, %3838
  %3850 = fmul fast float %3836, 2.000000e+00
  %3851 = fsub fast float 1.000000e+00, %3850
  %3852 = fmul fast float %3851, %3839
  %3853 = fadd fast float %3852, %3850
  %3854 = fmul fast float %3853, %3839
  %3855 = fmul fast float %3844, %3844
  %3856 = fmul fast float %3849, %3849
  %3857 = fmul fast float %3854, %3854
  br label %3874

; <label>:3858                                    ; preds = %3821
  %3859 = fmul fast float %381, %381
  %3860 = fmul fast float %385, %385
  %3861 = fmul fast float %389, %389
  %3862 = fadd fast float %3859, -1.000000e+00
  %3863 = fadd fast float %3860, -1.000000e+00
  %3864 = fadd fast float %3861, -1.000000e+00
  %3865 = fmul fast float %3710, %3862
  %3866 = fmul fast float %3710, %3863
  %3867 = fmul fast float %3710, %3864
  %3868 = fadd fast float %3865, 1.000000e+00
  %3869 = fadd fast float %3866, 1.000000e+00
  %3870 = fadd fast float %3867, 1.000000e+00
  %3871 = fmul fast float %3868, %3685
  %3872 = fmul fast float %3869, %3686
  %3873 = fmul fast float %3870, %3687
  br label %3874

; <label>:3874                                    ; preds = %3858, %3824, %3715, %3671
  %3875 = phi float [ %3820, %3715 ], [ %3696, %3824 ], [ %3696, %3858 ], [ 0x3FA23C0BE0000000, %3671 ]
  %3876 = phi float [ %3812, %3715 ], [ %3855, %3824 ], [ %3871, %3858 ], [ 1.000000e+00, %3671 ]
  %3877 = phi float [ %3813, %3715 ], [ %3856, %3824 ], [ %3872, %3858 ], [ 1.000000e+00, %3671 ]
  %3878 = phi float [ %3814, %3715 ], [ %3857, %3824 ], [ %3873, %3858 ], [ 1.000000e+00, %3671 ]
  %3879 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3880 = extractvalue %dx.types.CBufRet.i32 %3879, 1
  %3881 = and i32 %3880, 1
  %3882 = icmp ne i32 %3881, 0
  %3883 = add i32 %60, 356
  %3884 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3883, i32 undef)  ; BufferLoad(srv,index,wot)
  %3885 = extractvalue %dx.types.ResRet.i32 %3884, 0
  %3886 = and i32 %3885, 32
  %3887 = icmp ne i32 %3886, 0
  %3888 = and i1 %3882, %3887
  %3889 = select i1 %3888, float 1.000000e+00, float %3876
  %3890 = select i1 %3888, float 0x3FD3333340000000, float %3877
  %3891 = select i1 %3888, float 0x3FD3333340000000, float %3878
  %3892 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3374, i32 undef)  ; BufferLoad(srv,index,wot)
  %3893 = extractvalue %dx.types.ResRet.i32 %3892, 0
  %3894 = and i32 %3893, 32
  %3895 = icmp eq i32 %3894, 0
  br i1 %3895, label %3968, label %3896

; <label>:3896                                    ; preds = %3874
  %3897 = add i32 %60, 140
  %3898 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3897, i32 undef)  ; BufferLoad(srv,index,wot)
  %3899 = extractvalue %dx.types.ResRet.i32 %3898, 0
  %3900 = add i32 %60, 388
  %3901 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3900, i32 undef)  ; BufferLoad(srv,index,wot)
  %3902 = extractvalue %dx.types.ResRet.i32 %3901, 0
  %3903 = add i32 %3902, 0
  %3904 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3903, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3905 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3904, %dx.types.Handle %105, float %3481, float %3482, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3906 = extractvalue %dx.types.ResRet.f32 %3905, 0
  %3907 = extractvalue %dx.types.ResRet.f32 %3905, 1
  %3908 = extractvalue %dx.types.ResRet.f32 %3905, 2
  %3909 = extractvalue %dx.types.ResRet.f32 %3905, 3
  %3910 = and i32 %3899, 255
  %3911 = uitofp i32 %3910 to float
  %3912 = lshr i32 %3899, 8
  %3913 = and i32 %3912, 255
  %3914 = uitofp i32 %3913 to float
  %3915 = lshr i32 %3899, 16
  %3916 = and i32 %3915, 255
  %3917 = uitofp i32 %3916 to float
  %3918 = fmul fast float %3917, 0x3F70101000000000
  %3919 = fmul fast float %3906, %3911
  %3920 = fadd fast float %3919, %3914
  %3921 = fmul fast float %3920, 0x3F70101000000000
  %3922 = fadd fast float %3907, -5.000000e-01
  %3923 = fadd fast float %3909, -5.000000e-01
  %3924 = fmul fast float %3922, %3918
  %3925 = fmul fast float %3923, %3918
  %3926 = fadd fast float %3924, 5.000000e-01
  %3927 = fadd fast float %3925, 5.000000e-01
  %3928 = fmul fast float %3926, 2.000000e+00
  %3929 = fadd fast float %3928, -1.000000e+00
  %3930 = fmul fast float %3927, 2.000000e+00
  %3931 = fadd fast float %3930, -1.000000e+00
  %3932 = fadd fast float %3929, %3931
  %3933 = fmul fast float %3932, 5.000000e-01
  %3934 = fsub fast float %3929, %3931
  %3935 = fmul fast float %3934, 5.000000e-01
  %3936 = call float @dx.op.unary.f32(i32 6, float %3933)  ; FAbs(value)
  %3937 = fsub fast float 1.000000e+00, %3936
  %3938 = call float @dx.op.unary.f32(i32 6, float %3935)  ; FAbs(value)
  %3939 = fsub fast float %3937, %3938
  %3940 = call float @dx.op.dot3.f32(i32 55, float %3933, float %3935, float %3939, float %3933, float %3935, float %3939)  ; Dot3(ax,ay,az,bx,by,bz)
  %3941 = call float @dx.op.unary.f32(i32 25, float %3940)  ; Rsqrt(value)
  %3942 = fmul fast float %3933, %3941
  %3943 = fmul fast float %3935, %3941
  %3944 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3374, i32 undef)  ; BufferLoad(srv,index,wot)
  %3945 = extractvalue %dx.types.ResRet.i32 %3944, 0
  %3946 = and i32 %3945, 67108864
  %3947 = icmp eq i32 %3946, 0
  br i1 %3947, label %3964, label %3948

; <label>:3948                                    ; preds = %3896
  %3949 = add i32 %60, 328
  %3950 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3949, i32 undef)  ; BufferLoad(srv,index,wot)
  %3951 = extractvalue %dx.types.ResRet.i32 %3950, 0
  %3952 = and i32 %3951, 65535
  %3953 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3952)  ; LegacyF16ToF32(value)
  %3954 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3391, i32 undef)  ; BufferLoad(srv,index,wot)
  %3955 = extractvalue %dx.types.ResRet.i32 %3954, 0
  %3956 = and i32 %3955, 65535
  %3957 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3956)  ; LegacyF16ToF32(value)
  %3958 = lshr i32 %3951, 16
  %3959 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3958)  ; LegacyF16ToF32(value)
  %3960 = fsub fast float %3921, %3959
  %3961 = fmul fast float %3960, %3953
  %3962 = fadd fast float %3961, %3957
  %3963 = call float @dx.op.unary.f32(i32 7, float %3962)  ; Saturate(value)
  br label %3964

; <label>:3964                                    ; preds = %3948, %3896
  %3965 = phi float [ %3963, %3948 ], [ %3921, %3896 ]
  %3966 = call float @dx.op.dot2.f32(i32 54, float %3942, float %3943, float %3385, float %3386)  ; Dot2(ax,ay,bx,by)
  %3967 = call float @dx.op.dot2.f32(i32 54, float %3942, float %3943, float %3387, float %3388)  ; Dot2(ax,ay,bx,by)
  br label %3968

; <label>:3968                                    ; preds = %3964, %3874
  %3969 = phi float [ %3965, %3964 ], [ 0x3FD6666660000000, %3874 ]
  %3970 = phi float [ %3966, %3964 ], [ 0.000000e+00, %3874 ]
  %3971 = phi float [ %3967, %3964 ], [ 0.000000e+00, %3874 ]
  %3972 = phi float [ %3908, %3964 ], [ 1.000000e+00, %3874 ]
  %3973 = add i32 %60, 208
  %3974 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3973, i32 undef)  ; BufferLoad(srv,index,wot)
  %3975 = extractvalue %dx.types.ResRet.i32 %3974, 0
  %3976 = lshr i32 %3975, 22
  %3977 = shl nuw nsw i32 %3976, 5
  %3978 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3977)  ; LegacyF16ToF32(value)
  %3979 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3374, i32 undef)  ; BufferLoad(srv,index,wot)
  %3980 = extractvalue %dx.types.ResRet.i32 %3979, 0
  %3981 = and i32 %3980, 64
  %3982 = icmp eq i32 %3981, 0
  br i1 %3982, label %4016, label %3983

; <label>:3983                                    ; preds = %3968
  %3984 = add i32 %60, 404
  %3985 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3984, i32 undef)  ; BufferLoad(srv,index,wot)
  %3986 = extractvalue %dx.types.ResRet.i32 %3985, 0
  %3987 = add i32 %3986, 0
  %3988 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3987, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3989 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3374, i32 undef)  ; BufferLoad(srv,index,wot)
  %3990 = extractvalue %dx.types.ResRet.i32 %3989, 0
  %3991 = and i32 %3990, 131072
  %3992 = icmp eq i32 %3991, 0
  %3993 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3988, %dx.types.Handle %105, float %3481, float %3482, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3994 = extractvalue %dx.types.ResRet.f32 %3993, 0
  %3995 = extractvalue %dx.types.ResRet.f32 %3993, 1
  %3996 = extractvalue %dx.types.ResRet.f32 %3993, 2
  %3997 = fmul fast float %3994, %369
  %3998 = fmul fast float %3995, %372
  %3999 = fmul fast float %3996, %375
  br i1 %3992, label %4006, label %4000

; <label>:4000                                    ; preds = %3983
  %4001 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4002 = extractvalue %dx.types.CBufRet.f32 %4001, 0
  %4003 = fmul fast float %4002, %3997
  %4004 = fmul fast float %4002, %3998
  %4005 = fmul fast float %4002, %3999
  br label %4006

; <label>:4006                                    ; preds = %4000, %3983
  %4007 = phi float [ %4003, %4000 ], [ %3997, %3983 ]
  %4008 = phi float [ %4004, %4000 ], [ %3998, %3983 ]
  %4009 = phi float [ %4005, %4000 ], [ %3999, %3983 ]
  %4010 = fmul fast float %4007, %3978
  %4011 = select i1 %226, float %4010, float %4007
  %4012 = call float @dx.op.dot3.f32(i32 55, float %4011, float %4008, float %4009, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4013 = select i1 %226, float 0.000000e+00, float %4007
  %4014 = select i1 %226, float %4012, float %4008
  %4015 = select i1 %226, float 0.000000e+00, float %4009
  br label %4016

; <label>:4016                                    ; preds = %4006, %3968
  %4017 = phi float [ %4013, %4006 ], [ 0.000000e+00, %3968 ]
  %4018 = phi float [ %4014, %4006 ], [ 0.000000e+00, %3968 ]
  %4019 = phi float [ %4015, %4006 ], [ 0.000000e+00, %3968 ]
  %4020 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3374, i32 undef)  ; BufferLoad(srv,index,wot)
  %4021 = extractvalue %dx.types.ResRet.i32 %4020, 0
  %4022 = and i32 %4021, 1024
  %4023 = icmp eq i32 %4022, 0
  br i1 %4023, label %4054, label %4024

; <label>:4024                                    ; preds = %4016
  %4025 = add i32 %60, 200
  %4026 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %4025, i32 undef)  ; BufferLoad(srv,index,wot)
  %4027 = extractvalue %dx.types.ResRet.i32 %4026, 0
  %4028 = and i32 %4027, 255
  %4029 = uitofp i32 %4028 to float
  %4030 = fmul fast float %4029, 0x3F70101020000000
  %4031 = lshr i32 %4027, 8
  %4032 = and i32 %4031, 255
  %4033 = uitofp i32 %4032 to float
  %4034 = fmul fast float %4033, 0x3F70101020000000
  %4035 = lshr i32 %4027, 16
  %4036 = and i32 %4035, 255
  %4037 = uitofp i32 %4036 to float
  %4038 = fmul fast float %4037, 0x3F70101020000000
  %4039 = fmul fast float %4030, %4030
  %4040 = fmul fast float %4034, %4034
  %4041 = fmul fast float %4038, %4038
  %4042 = add i32 %60, 468
  %4043 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %4042, i32 undef)  ; BufferLoad(srv,index,wot)
  %4044 = extractvalue %dx.types.ResRet.i32 %4043, 0
  %4045 = add i32 %4044, 0
  %4046 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4045, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4047 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4046, %dx.types.Handle %106, float %3481, float %3482, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4048 = extractvalue %dx.types.ResRet.f32 %4047, 0
  %4049 = extractvalue %dx.types.ResRet.f32 %4047, 1
  %4050 = extractvalue %dx.types.ResRet.f32 %4047, 2
  %4051 = fmul fast float %4039, %4048
  %4052 = fmul fast float %4040, %4049
  %4053 = fmul fast float %4041, %4050
  br label %4054

; <label>:4054                                    ; preds = %4024, %4016
  %4055 = phi float [ %4051, %4024 ], [ 0.000000e+00, %4016 ]
  %4056 = phi float [ %4052, %4024 ], [ 0.000000e+00, %4016 ]
  %4057 = phi float [ %4053, %4024 ], [ 0.000000e+00, %4016 ]
  %4058 = fcmp fast ogt float %4055, 0.000000e+00
  %4059 = fcmp fast ogt float %4056, 0.000000e+00
  %4060 = fcmp fast ogt float %4057, 0.000000e+00
  %4061 = call float @dx.op.unary.f32(i32 23, float %4055)  ; Log(value)
  %4062 = call float @dx.op.unary.f32(i32 23, float %4056)  ; Log(value)
  %4063 = call float @dx.op.unary.f32(i32 23, float %4057)  ; Log(value)
  %4064 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3973, i32 undef)  ; BufferLoad(srv,index,wot)
  %4065 = extractvalue %dx.types.ResRet.i32 %4064, 0
  %4066 = lshr i32 %4065, 7
  %4067 = and i32 %4066, 32752
  %4068 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4067)  ; LegacyF16ToF32(value)
  %4069 = fmul fast float %4061, 0xBFE62E4300000000
  %4070 = fmul fast float %4069, %4068
  %4071 = fmul fast float %4062, 0xBFE62E4300000000
  %4072 = fmul fast float %4071, %4068
  %4073 = fmul fast float %4063, 0xBFE62E4300000000
  %4074 = fmul fast float %4073, %4068
  %4075 = select i1 %4058, float %4070, float 1.270000e+02
  %4076 = select i1 %4059, float %4072, float 1.270000e+02
  %4077 = select i1 %4060, float %4074, float 1.270000e+02
  %4078 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3374, i32 undef)  ; BufferLoad(srv,index,wot)
  %4079 = extractvalue %dx.types.ResRet.i32 %4078, 0
  %4080 = and i32 %4079, 10240
  %4081 = icmp eq i32 %4080, 0
  br i1 %4081, label %4126, label %4082

; <label>:4082                                    ; preds = %4054
  %4083 = add i32 %60, 484
  %4084 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %4083, i32 undef)  ; BufferLoad(srv,index,wot)
  %4085 = extractvalue %dx.types.ResRet.i32 %4084, 0
  %4086 = add i32 %4085, 0
  %4087 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4086, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4088 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4087, %dx.types.Handle %106, float %3481, float %3482, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4089 = extractvalue %dx.types.ResRet.f32 %4088, 1
  %4090 = extractvalue %dx.types.ResRet.f32 %4088, 3
  %4091 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3374, i32 undef)  ; BufferLoad(srv,index,wot)
  %4092 = extractvalue %dx.types.ResRet.i32 %4091, 0
  %4093 = and i32 %4092, 1048576
  %4094 = icmp ne i32 %4093, 0
  %4095 = and i32 %4092, 8192
  %4096 = icmp eq i32 %4095, 0
  br i1 %4096, label %4112, label %4097

; <label>:4097                                    ; preds = %4082
  %4098 = extractvalue %dx.types.ResRet.f32 %4088, 2
  %4099 = select i1 %4094, float %4098, float %4089
  %4100 = extractvalue %dx.types.ResRet.f32 %4088, 0
  %4101 = select i1 %4094, float %4100, float %4089
  %4102 = add i32 %60, 144
  %4103 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %4102, i32 undef)  ; BufferLoad(srv,index,wot)
  %4104 = extractvalue %dx.types.ResRet.i32 %4103, 0
  %4105 = lshr i32 %4104, 16
  %4106 = and i32 %4105, 255
  %4107 = uitofp i32 %4106 to float
  %4108 = fmul fast float %4107, 0x3F80101020000000
  %4109 = fmul fast float %4108, %4101
  %4110 = fmul fast float %4108, %4089
  %4111 = fmul fast float %4108, %4099
  br label %4112

; <label>:4112                                    ; preds = %4097, %4082
  %4113 = phi float [ %4109, %4097 ], [ 0.000000e+00, %4082 ]
  %4114 = phi float [ %4110, %4097 ], [ 0.000000e+00, %4082 ]
  %4115 = phi float [ %4111, %4097 ], [ 0.000000e+00, %4082 ]
  %4116 = and i32 %4092, 2048
  %4117 = icmp eq i32 %4116, 0
  br i1 %4117, label %4126, label %4118

; <label>:4118                                    ; preds = %4112
  %4119 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3973, i32 undef)  ; BufferLoad(srv,index,wot)
  %4120 = extractvalue %dx.types.ResRet.i32 %4119, 0
  %4121 = shl i32 %4120, 4
  %4122 = and i32 %4121, 32752
  %4123 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4122)  ; LegacyF16ToF32(value)
  %4124 = fmul fast float %4123, %4090
  %4125 = call float @dx.op.binary.f32(i32 35, float %4124, float 0x3F70101020000000)  ; FMax(a,b)
  br label %4126

; <label>:4126                                    ; preds = %4118, %4112, %4054
  %4127 = phi float [ %4113, %4118 ], [ %4113, %4112 ], [ 0.000000e+00, %4054 ]
  %4128 = phi float [ %4114, %4118 ], [ %4114, %4112 ], [ 0.000000e+00, %4054 ]
  %4129 = phi float [ %4115, %4118 ], [ %4115, %4112 ], [ 0.000000e+00, %4054 ]
  %4130 = phi float [ %4125, %4118 ], [ 0x3F70101020000000, %4112 ], [ 0x3F70101020000000, %4054 ]
  %4131 = add i32 %60, 144
  %4132 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %4131, i32 undef)  ; BufferLoad(srv,index,wot)
  %4133 = extractvalue %dx.types.ResRet.i32 %4132, 0
  %4134 = and i32 %4133, 255
  %4135 = uitofp i32 %4134 to float
  %4136 = lshr i32 %4133, 8
  %4137 = and i32 %4136, 255
  %4138 = uitofp i32 %4137 to float
  %4139 = call float @dx.op.dot3.f32(i32 55, float %3889, float %3890, float %3891, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4140 = fmul fast float %4138, %4139
  %4141 = fadd fast float %4140, %4135
  %4142 = fmul fast float %4141, 0x3F70101020000000
  %4143 = call float @dx.op.unary.f32(i32 7, float %4142)  ; Saturate(value)
  br i1 %3373, label %4144, label %4179

; <label>:4144                                    ; preds = %4126
  %4145 = fmul fast float %4130, 2.000000e+00
  %4146 = fcmp fast olt float %4075, 1.270000e+02
  %4147 = fcmp fast olt float %4076, 1.270000e+02
  %4148 = fcmp fast olt float %4077, 1.270000e+02
  %4149 = fmul fast float %4075, 0xBFF7154760000000
  %4150 = fmul fast float %4149, %4145
  %4151 = fmul fast float %4076, 0xBFF7154760000000
  %4152 = fmul fast float %4151, %4145
  %4153 = fmul fast float %4077, 0xBFF7154760000000
  %4154 = fmul fast float %4153, %4145
  %4155 = call float @dx.op.unary.f32(i32 21, float %4150)  ; Exp(value)
  %4156 = call float @dx.op.unary.f32(i32 21, float %4152)  ; Exp(value)
  %4157 = call float @dx.op.unary.f32(i32 21, float %4154)  ; Exp(value)
  %4158 = call float @dx.op.unary.f32(i32 7, float %4155)  ; Saturate(value)
  %4159 = call float @dx.op.unary.f32(i32 7, float %4156)  ; Saturate(value)
  %4160 = call float @dx.op.unary.f32(i32 7, float %4157)  ; Saturate(value)
  %4161 = fadd fast float %4158, -1.000000e+00
  %4162 = select i1 %4146, float %4161, float -1.000000e+00
  %4163 = fadd fast float %4159, -1.000000e+00
  %4164 = select i1 %4147, float %4163, float -1.000000e+00
  %4165 = fadd fast float %4160, -1.000000e+00
  %4166 = select i1 %4148, float %4165, float -1.000000e+00
  %4167 = fmul fast float %4162, %3669
  %4168 = fmul fast float %4164, %3669
  %4169 = fmul fast float %4166, %3669
  %4170 = fadd fast float %4167, 1.000000e+00
  %4171 = fadd fast float %4168, 1.000000e+00
  %4172 = fadd fast float %4169, 1.000000e+00
  %4173 = fmul fast float %4170, %3355
  %4174 = fmul fast float %4171, %3356
  %4175 = fmul fast float %4172, %3357
  %4176 = fmul fast float %4170, %3358
  %4177 = fmul fast float %4171, %3359
  %4178 = fmul fast float %4172, %3360
  br label %4179

; <label>:4179                                    ; preds = %4144, %4126
  %4180 = phi float [ %4173, %4144 ], [ %3355, %4126 ]
  %4181 = phi float [ %4174, %4144 ], [ %3356, %4126 ]
  %4182 = phi float [ %4175, %4144 ], [ %3357, %4126 ]
  %4183 = phi float [ %4176, %4144 ], [ %3358, %4126 ]
  %4184 = phi float [ %4177, %4144 ], [ %3359, %4126 ]
  %4185 = phi float [ %4178, %4144 ], [ %3360, %4126 ]
  %4186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3374, i32 undef)  ; BufferLoad(srv,index,wot)
  %4187 = extractvalue %dx.types.ResRet.i32 %4186, 0
  %4188 = and i32 %4187, 3
  %4189 = icmp eq i32 %4188, 3
  br i1 %4189, label %4268, label %4190

; <label>:4190                                    ; preds = %4179
  %4191 = and i32 %4187, 16
  %4192 = icmp ne i32 %4191, 0
  %4193 = select i1 %4192, float %3669, float 0.000000e+00
  %4194 = icmp eq i32 %4188, 0
  br i1 %4194, label %4195, label %4223

; <label>:4195                                    ; preds = %4190
  %4196 = and i32 %4187, 64
  %4197 = icmp ne i32 %4196, 0
  %4198 = select i1 %4197, float %3669, float 0.000000e+00
  %4199 = fsub fast float %3889, %4180
  %4200 = fsub fast float %3890, %4181
  %4201 = fsub fast float %3891, %4182
  %4202 = fmul fast float %4193, %4199
  %4203 = fmul fast float %4193, %4200
  %4204 = fmul fast float %4193, %4201
  %4205 = fadd fast float %4202, %4180
  %4206 = fadd fast float %4203, %4181
  %4207 = fadd fast float %4204, %4182
  %4208 = fsub fast float %3875, %3367
  %4209 = fmul fast float %4193, %4208
  %4210 = fadd fast float %4209, %3367
  %4211 = fsub fast float %4017, %4183
  %4212 = fsub fast float %4018, %4184
  %4213 = fsub fast float %4019, %4185
  %4214 = fmul fast float %4198, %4211
  %4215 = fmul fast float %4198, %4212
  %4216 = fmul fast float %4198, %4213
  %4217 = fadd fast float %4214, %4183
  %4218 = fadd fast float %4215, %4184
  %4219 = fadd fast float %4216, %4185
  %4220 = fsub fast float %4143, %3371
  %4221 = fmul fast float %4193, %4220
  %4222 = fadd fast float %4221, %3371
  br label %4268

; <label>:4223                                    ; preds = %4190
  %4224 = icmp eq i32 %4188, 1
  br i1 %4224, label %4225, label %4238

; <label>:4225                                    ; preds = %4223
  %4226 = fadd fast float %3889, -1.000000e+00
  %4227 = fadd fast float %3890, -1.000000e+00
  %4228 = fadd fast float %3891, -1.000000e+00
  %4229 = fmul fast float %4193, %4226
  %4230 = fmul fast float %4193, %4227
  %4231 = fmul fast float %4193, %4228
  %4232 = fadd fast float %4229, 1.000000e+00
  %4233 = fadd fast float %4230, 1.000000e+00
  %4234 = fadd fast float %4231, 1.000000e+00
  %4235 = fmul fast float %4232, %4180
  %4236 = fmul fast float %4233, %4181
  %4237 = fmul fast float %4234, %4182
  br label %4268

; <label>:4238                                    ; preds = %4223
  %4239 = icmp eq i32 %4188, 2
  br i1 %4239, label %4240, label %4268

; <label>:4240                                    ; preds = %4238
  %4241 = call float @dx.op.unary.f32(i32 24, float %3889)  ; Sqrt(value)
  %4242 = call float @dx.op.unary.f32(i32 24, float %3890)  ; Sqrt(value)
  %4243 = call float @dx.op.unary.f32(i32 24, float %3891)  ; Sqrt(value)
  %4244 = fadd fast float %4241, -5.000000e-01
  %4245 = fadd fast float %4242, -5.000000e-01
  %4246 = fadd fast float %4243, -5.000000e-01
  %4247 = fmul fast float %4244, %4193
  %4248 = fmul fast float %4245, %4193
  %4249 = fmul fast float %4246, %4193
  %4250 = fadd fast float %4247, 5.000000e-01
  %4251 = fadd fast float %4248, 5.000000e-01
  %4252 = fadd fast float %4249, 5.000000e-01
  %4253 = fmul fast float %4250, 2.000000e+00
  %4254 = fsub fast float 1.000000e+00, %4253
  %4255 = fmul fast float %4254, %4180
  %4256 = fadd fast float %4255, %4253
  %4257 = fmul fast float %4256, %4180
  %4258 = fmul fast float %4251, 2.000000e+00
  %4259 = fsub fast float 1.000000e+00, %4258
  %4260 = fmul fast float %4259, %4181
  %4261 = fadd fast float %4260, %4258
  %4262 = fmul fast float %4261, %4181
  %4263 = fmul fast float %4252, 2.000000e+00
  %4264 = fsub fast float 1.000000e+00, %4263
  %4265 = fmul fast float %4264, %4182
  %4266 = fadd fast float %4265, %4263
  %4267 = fmul fast float %4266, %4182
  br label %4268

; <label>:4268                                    ; preds = %4240, %4238, %4225, %4195, %4179
  %4269 = phi float [ %4180, %4179 ], [ %4257, %4240 ], [ %4180, %4238 ], [ %4235, %4225 ], [ %4205, %4195 ]
  %4270 = phi float [ %4181, %4179 ], [ %4262, %4240 ], [ %4181, %4238 ], [ %4236, %4225 ], [ %4206, %4195 ]
  %4271 = phi float [ %4182, %4179 ], [ %4267, %4240 ], [ %4182, %4238 ], [ %4237, %4225 ], [ %4207, %4195 ]
  %4272 = phi float [ %4183, %4179 ], [ %4183, %4240 ], [ %4183, %4238 ], [ %4183, %4225 ], [ %4217, %4195 ]
  %4273 = phi float [ %4184, %4179 ], [ %4184, %4240 ], [ %4184, %4238 ], [ %4184, %4225 ], [ %4218, %4195 ]
  %4274 = phi float [ %4185, %4179 ], [ %4185, %4240 ], [ %4185, %4238 ], [ %4185, %4225 ], [ %4219, %4195 ]
  %4275 = phi float [ %3367, %4179 ], [ %3367, %4240 ], [ %3367, %4238 ], [ %3367, %4225 ], [ %4210, %4195 ]
  %4276 = phi float [ %3371, %4179 ], [ %3371, %4240 ], [ %3371, %4238 ], [ %3371, %4225 ], [ %4222, %4195 ]
  %4277 = and i32 %4187, 12
  %4278 = icmp eq i32 %4277, 12
  br i1 %4278, label %4409, label %4279

; <label>:4279                                    ; preds = %4268
  %4280 = and i32 %4187, 2097184
  %4281 = icmp eq i32 %4280, 2097184
  %4282 = select i1 %4281, float %3669, float 0.000000e+00
  %4283 = and i32 %4187, 4194336
  %4284 = icmp eq i32 %4283, 4194336
  %4285 = select i1 %4284, float %3669, float 0.000000e+00
  %4286 = and i32 %4187, 8388640
  %4287 = icmp eq i32 %4286, 8388640
  %4288 = select i1 %4287, float %3669, float 0.000000e+00
  %4289 = and i32 %4187, 1024
  %4290 = icmp ne i32 %4289, 0
  %4291 = select i1 %4290, float %3669, float 0.000000e+00
  %4292 = and i32 %4187, 2048
  %4293 = icmp ne i32 %4292, 0
  %4294 = select i1 %4293, float %3669, float 0.000000e+00
  %4295 = and i32 %4187, 8192
  %4296 = icmp ne i32 %4295, 0
  %4297 = select i1 %4296, float %3669, float 0.000000e+00
  %4298 = icmp eq i32 %4277, 0
  br i1 %4298, label %4299, label %4333

; <label>:4299                                    ; preds = %4279
  %4300 = fsub fast float %3970, %3353
  %4301 = fsub fast float %3971, %3354
  %4302 = fmul fast float %4282, %4300
  %4303 = fmul fast float %4282, %4301
  %4304 = fadd fast float %4302, %3353
  %4305 = fadd fast float %4303, %3354
  %4306 = fsub fast float %3972, %3369
  %4307 = fmul fast float %4285, %4306
  %4308 = fadd fast float %4307, %3369
  %4309 = fsub fast float %3969, %3368
  %4310 = fmul fast float %4288, %4309
  %4311 = fadd fast float %4310, %3368
  %4312 = fsub fast float %4075, %3364
  %4313 = fsub fast float %4076, %3365
  %4314 = fsub fast float %4077, %3366
  %4315 = fmul fast float %4291, %4312
  %4316 = fmul fast float %4291, %4313
  %4317 = fmul fast float %4291, %4314
  %4318 = fadd fast float %4315, %3364
  %4319 = fadd fast float %4316, %3365
  %4320 = fadd fast float %4317, %3366
  %4321 = fsub fast float %4130, %3370
  %4322 = fmul fast float %4294, %4321
  %4323 = fadd fast float %4322, %3370
  %4324 = fsub fast float %4127, %3361
  %4325 = fsub fast float %4128, %3362
  %4326 = fsub fast float %4129, %3363
  %4327 = fmul fast float %4297, %4324
  %4328 = fmul fast float %4297, %4325
  %4329 = fmul fast float %4297, %4326
  %4330 = fadd fast float %4327, %3361
  %4331 = fadd fast float %4328, %3362
  %4332 = fadd fast float %4329, %3363
  br label %4409

; <label>:4333                                    ; preds = %4279
  %4334 = icmp eq i32 %4277, 4
  br i1 %4334, label %4335, label %4381

; <label>:4335                                    ; preds = %4333
  %4336 = fmul fast float %4282, %3970
  %4337 = fmul fast float %4282, %3971
  %4338 = fadd fast float %4336, %3353
  %4339 = fadd fast float %4337, %3354
  %4340 = call float @dx.op.binary.f32(i32 36, float %3369, float %3972)  ; FMin(a,b)
  %4341 = fsub fast float %4340, %3369
  %4342 = fmul fast float %4341, %4285
  %4343 = fadd fast float %4342, %3369
  %4344 = fadd fast float %3969, %3368
  %4345 = fmul fast float %4344, 0x3FF337FAE0000000
  %4346 = fmul fast float %3368, %3368
  %4347 = fmul fast float %3969, %3969
  %4348 = fadd fast float %4347, %4346
  %4349 = fmul fast float %4348, 0x3FE5152B00000000
  %4350 = fmul fast float %3368, 0xBFCC1F85E0000000
  %4351 = fmul fast float %4350, %3969
  %4352 = fadd fast float %4351, 0xBFE1363700000000
  %4353 = fadd fast float %4352, %4345
  %4354 = fsub fast float %4353, %4349
  %4355 = fmul fast float %4344, 0x3FBA6F0D00000000
  %4356 = fmul fast float %4348, 0x3FD0432880000000
  %4357 = fmul fast float %3368, 0xBFEF110800000000
  %4358 = fmul fast float %4357, %3969
  %4359 = fadd fast float %4358, 1.000000e+00
  %4360 = fsub fast float %4359, %4355
  %4361 = fadd fast float %4360, %4356
  %4362 = fdiv fast float %4354, %4361
  %4363 = call float @dx.op.unary.f32(i32 7, float %4362)  ; Saturate(value)
  %4364 = fsub fast float %4363, %3368
  %4365 = fmul fast float %4364, %4288
  %4366 = fadd fast float %4365, %3368
  %4367 = fmul fast float %4291, %4075
  %4368 = fmul fast float %4291, %4076
  %4369 = fmul fast float %4291, %4077
  %4370 = fadd fast float %4367, %3364
  %4371 = fadd fast float %4368, %3365
  %4372 = fadd fast float %4369, %3366
  %4373 = fmul fast float %4294, %4130
  %4374 = fadd fast float %4373, %3370
  %4375 = fmul fast float %4297, %4127
  %4376 = fmul fast float %4297, %4128
  %4377 = fmul fast float %4297, %4129
  %4378 = fadd fast float %4375, %3361
  %4379 = fadd fast float %4376, %3362
  %4380 = fadd fast float %4377, %3363
  br label %4409

; <label>:4381                                    ; preds = %4333
  %4382 = icmp eq i32 %4277, 8
  br i1 %4382, label %4383, label %4409

; <label>:4383                                    ; preds = %4381
  %4384 = fmul fast float %4282, %3970
  %4385 = fmul fast float %4282, %3971
  %4386 = fadd fast float %4384, %3353
  %4387 = fadd fast float %4385, %3354
  %4388 = call float @dx.op.binary.f32(i32 36, float %3369, float %3972)  ; FMin(a,b)
  %4389 = fsub fast float %4388, %3369
  %4390 = fmul fast float %4389, %4285
  %4391 = fadd fast float %4390, %3369
  %4392 = fsub fast float %3969, %3368
  %4393 = fmul fast float %4288, %4392
  %4394 = fadd fast float %4393, %3368
  %4395 = fmul fast float %4291, %4075
  %4396 = fmul fast float %4291, %4076
  %4397 = fmul fast float %4291, %4077
  %4398 = fadd fast float %4395, %3364
  %4399 = fadd fast float %4396, %3365
  %4400 = fadd fast float %4397, %3366
  %4401 = fmul fast float %4294, %4130
  %4402 = fadd fast float %4401, %3370
  %4403 = fmul fast float %4297, %4127
  %4404 = fmul fast float %4297, %4128
  %4405 = fmul fast float %4297, %4129
  %4406 = fadd fast float %4403, %3361
  %4407 = fadd fast float %4404, %3362
  %4408 = fadd fast float %4405, %3363
  br label %4409

; <label>:4409                                    ; preds = %4383, %4381, %4335, %4299, %4268, %3668, %3372, %3352
  %4410 = phi float [ %3353, %4268 ], [ %3353, %3668 ], [ %3353, %3352 ], [ %3353, %3372 ], [ %4304, %4299 ], [ %4338, %4335 ], [ %3353, %4381 ], [ %4386, %4383 ]
  %4411 = phi float [ %3354, %4268 ], [ %3354, %3668 ], [ %3354, %3352 ], [ %3354, %3372 ], [ %4305, %4299 ], [ %4339, %4335 ], [ %3354, %4381 ], [ %4387, %4383 ]
  %4412 = phi float [ %4269, %4268 ], [ %3355, %3668 ], [ %3355, %3352 ], [ %3355, %3372 ], [ %4269, %4299 ], [ %4269, %4335 ], [ %4269, %4381 ], [ %4269, %4383 ]
  %4413 = phi float [ %4270, %4268 ], [ %3356, %3668 ], [ %3356, %3352 ], [ %3356, %3372 ], [ %4270, %4299 ], [ %4270, %4335 ], [ %4270, %4381 ], [ %4270, %4383 ]
  %4414 = phi float [ %4271, %4268 ], [ %3357, %3668 ], [ %3357, %3352 ], [ %3357, %3372 ], [ %4271, %4299 ], [ %4271, %4335 ], [ %4271, %4381 ], [ %4271, %4383 ]
  %4415 = phi float [ %4272, %4268 ], [ %3358, %3668 ], [ %3358, %3352 ], [ %3358, %3372 ], [ %4272, %4299 ], [ %4272, %4335 ], [ %4272, %4381 ], [ %4272, %4383 ]
  %4416 = phi float [ %4273, %4268 ], [ %3359, %3668 ], [ %3359, %3352 ], [ %3359, %3372 ], [ %4273, %4299 ], [ %4273, %4335 ], [ %4273, %4381 ], [ %4273, %4383 ]
  %4417 = phi float [ %4274, %4268 ], [ %3360, %3668 ], [ %3360, %3352 ], [ %3360, %3372 ], [ %4274, %4299 ], [ %4274, %4335 ], [ %4274, %4381 ], [ %4274, %4383 ]
  %4418 = phi float [ %3361, %4268 ], [ %3361, %3668 ], [ %3361, %3352 ], [ %3361, %3372 ], [ %4330, %4299 ], [ %4378, %4335 ], [ %3361, %4381 ], [ %4406, %4383 ]
  %4419 = phi float [ %3362, %4268 ], [ %3362, %3668 ], [ %3362, %3352 ], [ %3362, %3372 ], [ %4331, %4299 ], [ %4379, %4335 ], [ %3362, %4381 ], [ %4407, %4383 ]
  %4420 = phi float [ %3363, %4268 ], [ %3363, %3668 ], [ %3363, %3352 ], [ %3363, %3372 ], [ %4332, %4299 ], [ %4380, %4335 ], [ %3363, %4381 ], [ %4408, %4383 ]
  %4421 = phi float [ %3364, %4268 ], [ %3364, %3668 ], [ %3364, %3352 ], [ %3364, %3372 ], [ %4318, %4299 ], [ %4370, %4335 ], [ %3364, %4381 ], [ %4398, %4383 ]
  %4422 = phi float [ %3365, %4268 ], [ %3365, %3668 ], [ %3365, %3352 ], [ %3365, %3372 ], [ %4319, %4299 ], [ %4371, %4335 ], [ %3365, %4381 ], [ %4399, %4383 ]
  %4423 = phi float [ %3366, %4268 ], [ %3366, %3668 ], [ %3366, %3352 ], [ %3366, %3372 ], [ %4320, %4299 ], [ %4372, %4335 ], [ %3366, %4381 ], [ %4400, %4383 ]
  %4424 = phi float [ %4275, %4268 ], [ %3367, %3668 ], [ %3367, %3352 ], [ %3367, %3372 ], [ %4275, %4299 ], [ %4275, %4335 ], [ %4275, %4381 ], [ %4275, %4383 ]
  %4425 = phi float [ %3368, %4268 ], [ %3368, %3668 ], [ %3368, %3352 ], [ %3368, %3372 ], [ %4311, %4299 ], [ %4366, %4335 ], [ %3368, %4381 ], [ %4394, %4383 ]
  %4426 = phi float [ %3369, %4268 ], [ %3369, %3668 ], [ %3369, %3352 ], [ %3369, %3372 ], [ %4308, %4299 ], [ %4343, %4335 ], [ %3369, %4381 ], [ %4391, %4383 ]
  %4427 = phi float [ %3370, %4268 ], [ %3370, %3668 ], [ %3370, %3352 ], [ %3370, %3372 ], [ %4323, %4299 ], [ %4374, %4335 ], [ %3370, %4381 ], [ %4402, %4383 ]
  %4428 = phi float [ %4276, %4268 ], [ %3371, %3668 ], [ %3371, %3352 ], [ %3371, %3372 ], [ %4276, %4299 ], [ %4276, %4335 ], [ %4276, %4381 ], [ %4276, %4383 ]
  %4429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4430 = extractvalue %dx.types.CBufRet.f32 %4429, 0
  %4431 = call float @dx.op.dot2.f32(i32 54, float %4410, float %4411, float %4410, float %4411)  ; Dot2(ax,ay,bx,by)
  %4432 = fmul fast float %4431, 0x3FE3333340000000
  %4433 = fsub fast float 1.000000e+00, %4432
  %4434 = call float @dx.op.dot3.f32(i32 55, float %4410, float %4411, float %4433, float %4410, float %4411, float %4433)  ; Dot3(ax,ay,az,bx,by,bz)
  %4435 = call float @dx.op.unary.f32(i32 25, float %4434)  ; Rsqrt(value)
  %4436 = fmul fast float %4435, %4410
  %4437 = fmul fast float %4435, %4411
  %4438 = fmul fast float %4433, %4435
  %4439 = fmul fast float %4438, %116
  %4440 = fmul fast float %4438, %117
  %4441 = fmul fast float %4438, %118
  %4442 = fmul fast float %4436, %81
  %4443 = fmul fast float %4436, %82
  %4444 = fmul fast float %4436, %83
  %4445 = fadd fast float %4439, %4442
  %4446 = fadd fast float %4440, %4443
  %4447 = fadd fast float %4441, %4444
  %4448 = fmul fast float %128, %4437
  %4449 = fmul fast float %129, %4437
  %4450 = fmul fast float %130, %4437
  %4451 = fadd fast float %4445, %4448
  %4452 = fadd fast float %4446, %4449
  %4453 = fadd fast float %4447, %4450
  %4454 = call float @dx.op.dot3.f32(i32 55, float %4451, float %4452, float %4453, float %4451, float %4452, float %4453)  ; Dot3(ax,ay,az,bx,by,bz)
  %4455 = call float @dx.op.unary.f32(i32 25, float %4454)  ; Rsqrt(value)
  %4456 = fmul fast float %4451, %4455
  %4457 = fmul fast float %4452, %4455
  %4458 = fmul fast float %4453, %4455
  %4459 = and i32 %62, 1
  %4460 = icmp eq i32 %4459, 0
  br i1 %4460, label %4461, label %5057

; <label>:4461                                    ; preds = %4409
  %4462 = call float @dx.op.unary.f32(i32 83, float %164)  ; DerivCoarseX(value)
  %4463 = call float @dx.op.unary.f32(i32 83, float %165)  ; DerivCoarseX(value)
  %4464 = call float @dx.op.unary.f32(i32 83, float %166)  ; DerivCoarseX(value)
  %4465 = call float @dx.op.unary.f32(i32 84, float %164)  ; DerivCoarseY(value)
  %4466 = call float @dx.op.unary.f32(i32 84, float %165)  ; DerivCoarseY(value)
  %4467 = call float @dx.op.unary.f32(i32 84, float %166)  ; DerivCoarseY(value)
  %4468 = fadd fast float %4462, %164
  %4469 = fadd fast float %4463, %165
  %4470 = fadd fast float %4464, %166
  %4471 = fadd fast float %4465, %164
  %4472 = fadd fast float %4466, %165
  %4473 = fadd fast float %4467, %166
  %4474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %4475 = extractvalue %dx.types.CBufRet.f32 %4474, 0
  %4476 = extractvalue %dx.types.CBufRet.f32 %4474, 1
  %4477 = extractvalue %dx.types.CBufRet.f32 %4474, 2
  %4478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %4479 = extractvalue %dx.types.CBufRet.f32 %4478, 2
  %4480 = extractvalue %dx.types.CBufRet.f32 %4478, 3
  %4481 = fmul fast float %4475, %109
  %4482 = fmul fast float %4481, %4479
  %4483 = fmul fast float %4476, %110
  %4484 = fmul fast float %4483, %4480
  %4485 = fptoui float %4482 to i32
  %4486 = fptoui float %4484 to i32
  %4487 = fadd fast float %4475, -1.000000e+00
  %4488 = fadd fast float %4476, -1.000000e+00
  %4489 = fptoui float %4487 to i32
  %4490 = fptoui float %4488 to i32
  %4491 = call i32 @dx.op.binary.i32(i32 40, i32 %4485, i32 %4489)  ; UMin(a,b)
  %4492 = call i32 @dx.op.binary.i32(i32 40, i32 %4486, i32 %4490)  ; UMin(a,b)
  %4493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4494 = extractvalue %dx.types.CBufRet.f32 %4493, 2
  %4495 = extractvalue %dx.types.CBufRet.f32 %4493, 3
  %4496 = fmul fast float %4494, %97
  %4497 = fsub fast float %4496, %4495
  %4498 = fadd fast float %4477, -1.000000e+00
  %4499 = call float @dx.op.binary.f32(i32 36, float %4497, float %4498)  ; FMin(a,b)
  %4500 = fptoui float %4499 to i32
  %4501 = fptoui float %4475 to i32
  %4502 = fptoui float %4476 to i32
  %4503 = mul i32 %4500, %4502
  %4504 = add i32 %4503, %4492
  %4505 = mul i32 %4504, %4501
  %4506 = add i32 %4505, %4491
  %4507 = shl i32 %4506, 2
  %4508 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %4507, i32 undef)  ; BufferLoad(srv,index,wot)
  %4509 = extractvalue %dx.types.ResRet.i32 %4508, 0
  %4510 = and i32 %4509, 1023
  %4511 = lshr i32 %4509, 10
  %4512 = icmp eq i32 %4510, 0
  br i1 %4512, label %5019, label %4513

; <label>:4513                                    ; preds = %4461
  %4514 = and i32 %4509, 1023
  br label %4515

; <label>:4515                                    ; preds = %4648, %4513
  %4516 = phi i32 [ %4598, %4648 ], [ 0, %4513 ]
  %4517 = phi float [ %4649, %4648 ], [ 0.000000e+00, %4513 ]
  %4518 = phi float [ %4650, %4648 ], [ %1253, %4513 ]
  %4519 = phi float [ %4651, %4648 ], [ %4430, %4513 ]
  %4520 = phi float [ %4652, %4648 ], [ %4428, %4513 ]
  %4521 = phi float [ %4653, %4648 ], [ %4421, %4513 ]
  %4522 = phi float [ %4654, %4648 ], [ %4422, %4513 ]
  %4523 = phi float [ %4655, %4648 ], [ %4423, %4513 ]
  %4524 = phi float [ %4656, %4648 ], [ 0.000000e+00, %4513 ]
  %4525 = phi float [ %4657, %4648 ], [ 0.000000e+00, %4513 ]
  %4526 = phi float [ %4658, %4648 ], [ %4418, %4513 ]
  %4527 = phi float [ %4659, %4648 ], [ %4419, %4513 ]
  %4528 = phi float [ %4660, %4648 ], [ %4420, %4513 ]
  %4529 = phi float [ %4661, %4648 ], [ %4415, %4513 ]
  %4530 = phi float [ %4662, %4648 ], [ %4416, %4513 ]
  %4531 = phi float [ %4663, %4648 ], [ %4417, %4513 ]
  %4532 = phi float [ %4664, %4648 ], [ %4456, %4513 ]
  %4533 = phi float [ %4665, %4648 ], [ %4457, %4513 ]
  %4534 = phi float [ %4666, %4648 ], [ %4458, %4513 ]
  %4535 = phi float [ %4667, %4648 ], [ %4426, %4513 ]
  %4536 = phi float [ %4668, %4648 ], [ %4425, %4513 ]
  %4537 = phi float [ %4669, %4648 ], [ 0.000000e+00, %4513 ]
  %4538 = phi float [ %4670, %4648 ], [ %4424, %4513 ]
  %4539 = phi float [ %4671, %4648 ], [ %4412, %4513 ]
  %4540 = phi float [ %4672, %4648 ], [ %4413, %4513 ]
  %4541 = phi float [ %4673, %4648 ], [ %4414, %4513 ]
  %4542 = add nuw nsw i32 %4516, %4511
  %4543 = shl i32 %4542, 2
  %4544 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %4543, i32 undef)  ; BufferLoad(srv,index,wot)
  %4545 = extractvalue %dx.types.ResRet.i32 %4544, 0
  %4546 = shl i32 %4545, 8
  %4547 = or i32 %4546, 48
  %4548 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4547, i32 undef)  ; BufferLoad(srv,index,wot)
  %4549 = extractvalue %dx.types.ResRet.f32 %4548, 0
  %4550 = extractvalue %dx.types.ResRet.f32 %4548, 1
  %4551 = extractvalue %dx.types.ResRet.f32 %4548, 2
  %4552 = extractvalue %dx.types.ResRet.f32 %4548, 3
  %4553 = or i32 %4546, 64
  %4554 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4553, i32 undef)  ; BufferLoad(srv,index,wot)
  %4555 = extractvalue %dx.types.ResRet.i32 %4554, 0
  %4556 = extractvalue %dx.types.ResRet.i32 %4554, 1
  %4557 = or i32 %4546, 80
  %4558 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4557, i32 undef)  ; BufferLoad(srv,index,wot)
  %4559 = extractvalue %dx.types.ResRet.f32 %4558, 2
  %4560 = extractvalue %dx.types.ResRet.f32 %4558, 3
  %4561 = or i32 %4546, 96
  %4562 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4561, i32 undef)  ; BufferLoad(srv,index,wot)
  %4563 = extractvalue %dx.types.ResRet.f32 %4562, 0
  %4564 = extractvalue %dx.types.ResRet.f32 %4562, 1
  %4565 = extractvalue %dx.types.ResRet.f32 %4562, 2
  %4566 = extractvalue %dx.types.ResRet.f32 %4562, 3
  %4567 = or i32 %4546, 112
  %4568 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4567, i32 undef)  ; BufferLoad(srv,index,wot)
  %4569 = extractvalue %dx.types.ResRet.f32 %4568, 2
  %4570 = or i32 %4546, 128
  %4571 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4570, i32 undef)  ; BufferLoad(srv,index,wot)
  %4572 = extractvalue %dx.types.ResRet.f32 %4571, 0
  %4573 = extractvalue %dx.types.ResRet.f32 %4571, 1
  %4574 = extractvalue %dx.types.ResRet.f32 %4571, 2
  %4575 = extractvalue %dx.types.ResRet.f32 %4571, 3
  %4576 = or i32 %4546, 144
  %4577 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4576, i32 undef)  ; BufferLoad(srv,index,wot)
  %4578 = extractvalue %dx.types.ResRet.f32 %4577, 0
  %4579 = extractvalue %dx.types.ResRet.f32 %4577, 1
  %4580 = extractvalue %dx.types.ResRet.f32 %4577, 2
  %4581 = extractvalue %dx.types.ResRet.f32 %4577, 3
  %4582 = or i32 %4546, 160
  %4583 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4582, i32 undef)  ; BufferLoad(srv,index,wot)
  %4584 = extractvalue %dx.types.ResRet.f32 %4583, 0
  %4585 = extractvalue %dx.types.ResRet.f32 %4583, 1
  %4586 = extractvalue %dx.types.ResRet.f32 %4583, 2
  %4587 = extractvalue %dx.types.ResRet.f32 %4583, 3
  %4588 = or i32 %4546, 192
  %4589 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4588, i32 undef)  ; BufferLoad(srv,index,wot)
  %4590 = extractvalue %dx.types.ResRet.i32 %4589, 0
  %4591 = or i32 %4546, 208
  %4592 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4591, i32 undef)  ; BufferLoad(srv,index,wot)
  %4593 = extractvalue %dx.types.ResRet.f32 %4592, 0
  %4594 = or i32 %4546, 248
  %4595 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4594, i32 undef)  ; BufferLoad(srv,index,wot)
  %4596 = extractvalue %dx.types.ResRet.f32 %4595, 0
  %4597 = extractvalue %dx.types.ResRet.f32 %4595, 1
  %4598 = add nuw nsw i32 %4516, 1
  %4599 = bitcast float %4552 to i32
  %4600 = and i32 %4599, 512
  %4601 = icmp eq i32 %4600, 0
  %4602 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4546, i32 undef)  ; BufferLoad(srv,index,wot)
  %4603 = extractvalue %dx.types.ResRet.f32 %4602, 0
  %4604 = extractvalue %dx.types.ResRet.f32 %4602, 1
  %4605 = extractvalue %dx.types.ResRet.f32 %4602, 2
  %4606 = extractvalue %dx.types.ResRet.f32 %4602, 3
  %4607 = call float @dx.op.dot4.f32(i32 56, float %4603, float %4604, float %4605, float %4606, float %164, float %165, float %166, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4608 = or i32 %4546, 16
  %4609 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4608, i32 undef)  ; BufferLoad(srv,index,wot)
  %4610 = extractvalue %dx.types.ResRet.f32 %4609, 0
  %4611 = extractvalue %dx.types.ResRet.f32 %4609, 1
  %4612 = extractvalue %dx.types.ResRet.f32 %4609, 2
  %4613 = extractvalue %dx.types.ResRet.f32 %4609, 3
  %4614 = call float @dx.op.dot4.f32(i32 56, float %4610, float %4611, float %4612, float %4613, float %164, float %165, float %166, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4615 = or i32 %4546, 32
  %4616 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4615, i32 undef)  ; BufferLoad(srv,index,wot)
  %4617 = extractvalue %dx.types.ResRet.f32 %4616, 0
  %4618 = extractvalue %dx.types.ResRet.f32 %4616, 1
  %4619 = extractvalue %dx.types.ResRet.f32 %4616, 2
  %4620 = extractvalue %dx.types.ResRet.f32 %4616, 3
  %4621 = call float @dx.op.dot4.f32(i32 56, float %4617, float %4618, float %4619, float %4620, float %164, float %165, float %166, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4622 = call float @dx.op.unary.f32(i32 27, float %4607)  ; Round_ni(value)
  %4623 = call float @dx.op.unary.f32(i32 6, float %4622)  ; FAbs(value)
  %4624 = call float @dx.op.unary.f32(i32 27, float %4614)  ; Round_ni(value)
  %4625 = call float @dx.op.unary.f32(i32 6, float %4624)  ; FAbs(value)
  %4626 = call float @dx.op.unary.f32(i32 6, float %4621)  ; FAbs(value)
  %4627 = call float @dx.op.unary.f32(i32 27, float %4626)  ; Round_ni(value)
  %4628 = fadd fast float %4625, %4623
  %4629 = fadd fast float %4628, %4627
  %4630 = fcmp fast oeq float %4629, 0.000000e+00
  %4631 = call float @dx.op.dot4.f32(i32 56, float %4603, float %4604, float %4605, float %4606, float %4468, float %4469, float %4470, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4632 = call float @dx.op.dot4.f32(i32 56, float %4610, float %4611, float %4612, float %4613, float %4468, float %4469, float %4470, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4633 = call float @dx.op.dot4.f32(i32 56, float %4603, float %4604, float %4605, float %4606, float %4471, float %4472, float %4473, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4634 = call float @dx.op.dot4.f32(i32 56, float %4610, float %4611, float %4612, float %4613, float %4471, float %4472, float %4473, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4635 = fsub fast float %4631, %4607
  %4636 = fsub fast float %4633, %4607
  %4637 = fsub fast float %4632, %4614
  %4638 = fsub fast float %4634, %4614
  %4639 = call float @dx.op.dot3.f32(i32 55, float %4549, float %4550, float %4551, float %116, float %117, float %118)  ; Dot3(ax,ay,az,bx,by,bz)
  %4640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4641 = extractvalue %dx.types.CBufRet.f32 %4640, 2
  %4642 = fadd fast float %4641, %4639
  %4643 = call float @dx.op.unary.f32(i32 7, float %4642)  ; Saturate(value)
  %4644 = extractvalue %dx.types.CBufRet.f32 %4640, 0
  %4645 = fcmp fast ogt float %4643, %4644
  %4646 = and i1 %4630, %4645
  %4647 = and i1 %4601, %4646
  br i1 %4647, label %4675, label %4648

; <label>:4648                                    ; preds = %5005, %4756, %4675, %4515
  %4649 = phi float [ %4517, %4675 ], [ %4759, %4756 ], [ %4759, %5005 ], [ %4517, %4515 ]
  %4650 = phi float [ %4518, %4675 ], [ %4518, %4756 ], [ %4981, %5005 ], [ %4518, %4515 ]
  %4651 = phi float [ %4519, %4675 ], [ %4519, %4756 ], [ %4980, %5005 ], [ %4519, %4515 ]
  %4652 = phi float [ %4520, %4675 ], [ %4520, %4756 ], [ %4978, %5005 ], [ %4520, %4515 ]
  %4653 = phi float [ %4521, %4675 ], [ %4521, %4756 ], [ %4956, %5005 ], [ %4521, %4515 ]
  %4654 = phi float [ %4522, %4675 ], [ %4522, %4756 ], [ %4957, %5005 ], [ %4522, %4515 ]
  %4655 = phi float [ %4523, %4675 ], [ %4523, %4756 ], [ %4958, %5005 ], [ %4523, %4515 ]
  %4656 = phi float [ %4524, %4675 ], [ %4524, %4756 ], [ %4883, %5005 ], [ %4524, %4515 ]
  %4657 = phi float [ %4525, %4675 ], [ %4525, %4756 ], [ %4881, %5005 ], [ %4525, %4515 ]
  %4658 = phi float [ %4526, %4675 ], [ %4526, %4756 ], [ %4926, %5005 ], [ %4526, %4515 ]
  %4659 = phi float [ %4527, %4675 ], [ %4527, %4756 ], [ %4927, %5005 ], [ %4527, %4515 ]
  %4660 = phi float [ %4528, %4675 ], [ %4528, %4756 ], [ %4928, %5005 ], [ %4528, %4515 ]
  %4661 = phi float [ %4529, %4675 ], [ %4529, %4756 ], [ %5015, %5005 ], [ %4529, %4515 ]
  %4662 = phi float [ %4530, %4675 ], [ %4530, %4756 ], [ %5016, %5005 ], [ %4530, %4515 ]
  %4663 = phi float [ %4531, %4675 ], [ %4531, %4756 ], [ %5017, %5005 ], [ %4531, %4515 ]
  %4664 = phi float [ %4532, %4675 ], [ %4532, %4756 ], [ %4862, %5005 ], [ %4532, %4515 ]
  %4665 = phi float [ %4533, %4675 ], [ %4533, %4756 ], [ %4863, %5005 ], [ %4533, %4515 ]
  %4666 = phi float [ %4534, %4675 ], [ %4534, %4756 ], [ %4864, %5005 ], [ %4534, %4515 ]
  %4667 = phi float [ %4535, %4675 ], [ %4535, %4756 ], [ %4936, %5005 ], [ %4535, %4515 ]
  %4668 = phi float [ %4536, %4675 ], [ %4536, %4756 ], [ %4933, %5005 ], [ %4536, %4515 ]
  %4669 = phi float [ %4537, %4675 ], [ %4537, %4756 ], [ %4930, %5005 ], [ %4537, %4515 ]
  %4670 = phi float [ %4538, %4675 ], [ %4538, %4756 ], [ %4879, %5005 ], [ %4538, %4515 ]
  %4671 = phi float [ %4539, %4675 ], [ %4539, %4756 ], [ %4874, %5005 ], [ %4539, %4515 ]
  %4672 = phi float [ %4540, %4675 ], [ %4540, %4756 ], [ %4875, %5005 ], [ %4540, %4515 ]
  %4673 = phi float [ %4541, %4675 ], [ %4541, %4756 ], [ %4876, %5005 ], [ %4541, %4515 ]
  %4674 = icmp eq i32 %4598, %4514
  br i1 %4674, label %5018, label %4515

; <label>:4675                                    ; preds = %4515
  %4676 = extractvalue %dx.types.ResRet.f32 %4568, 3
  %4677 = extractvalue %dx.types.ResRet.f32 %4568, 1
  %4678 = extractvalue %dx.types.ResRet.f32 %4568, 0
  %4679 = extractvalue %dx.types.ResRet.f32 %4558, 1
  %4680 = extractvalue %dx.types.ResRet.f32 %4558, 0
  %4681 = extractvalue %dx.types.ResRet.i32 %4554, 3
  %4682 = extractvalue %dx.types.ResRet.i32 %4554, 2
  %4683 = add i32 %4681, 0
  %4684 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4683, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4685 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4686 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4684, %dx.types.Handle %4685, float %4607, float %4614, float undef, float undef, i32 0, i32 0, i32 undef, float %4635, float %4637, float undef, float %4636, float %4638, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4687 = extractvalue %dx.types.ResRet.f32 %4686, 0
  %4688 = fmul fast float %4687, %4680
  %4689 = fadd fast float %4688, %4679
  %4690 = call float @dx.op.unary.f32(i32 7, float %4689)  ; Saturate(value)
  %4691 = fmul fast float %4607, %4563
  %4692 = call float @dx.op.tertiary.f32(i32 46, float %4564, float %4614, float %4691)  ; FMad(a,b,c)
  %4693 = fadd fast float %4692, %4678
  %4694 = fmul fast float %4607, %4565
  %4695 = call float @dx.op.tertiary.f32(i32 46, float %4566, float %4614, float %4694)  ; FMad(a,b,c)
  %4696 = fadd fast float %4695, %4677
  %4697 = fmul fast float %4635, %4563
  %4698 = call float @dx.op.tertiary.f32(i32 46, float %4564, float %4637, float %4697)  ; FMad(a,b,c)
  %4699 = fmul fast float %4635, %4565
  %4700 = call float @dx.op.tertiary.f32(i32 46, float %4566, float %4637, float %4699)  ; FMad(a,b,c)
  %4701 = fmul fast float %4636, %4563
  %4702 = call float @dx.op.tertiary.f32(i32 46, float %4564, float %4638, float %4701)  ; FMad(a,b,c)
  %4703 = fmul fast float %4636, %4565
  %4704 = call float @dx.op.tertiary.f32(i32 46, float %4566, float %4638, float %4703)  ; FMad(a,b,c)
  %4705 = add i32 %4682, 0
  %4706 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4705, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4707 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4706, %dx.types.Handle %4685, float %4693, float %4696, float undef, float undef, i32 0, i32 0, i32 undef, float %4698, float %4700, float undef, float %4702, float %4704, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4708 = extractvalue %dx.types.ResRet.f32 %4707, 0
  %4709 = and i32 %4599, 1024
  %4710 = icmp ne i32 %4709, 0
  %4711 = fcmp fast ogt float %4708, 0x3FE0101020000000
  %4712 = uitofp i1 %4711 to float
  %4713 = select i1 %4710, float %4712, float %4708
  %4714 = and i32 %4599, 8192
  %4715 = icmp ne i32 %4714, 0
  %4716 = select i1 %4715, float %4676, float 1.000000e+00
  %4717 = fmul fast float %4607, 2.000000e+00
  %4718 = fadd fast float %4717, -1.000000e+00
  %4719 = call float @dx.op.unary.f32(i32 6, float %4718)  ; FAbs(value)
  %4720 = fmul fast float %4719, %4596
  %4721 = fsub fast float %4720, %4596
  %4722 = call float @dx.op.unary.f32(i32 7, float %4721)  ; Saturate(value)
  %4723 = fmul fast float %4614, 2.000000e+00
  %4724 = fadd fast float %4723, -1.000000e+00
  %4725 = call float @dx.op.unary.f32(i32 6, float %4724)  ; FAbs(value)
  %4726 = fmul fast float %4725, %4597
  %4727 = fsub fast float %4726, %4597
  %4728 = call float @dx.op.unary.f32(i32 7, float %4727)  ; Saturate(value)
  %4729 = fmul fast float %4626, %4559
  %4730 = fsub fast float %4729, %4559
  %4731 = call float @dx.op.unary.f32(i32 7, float %4730)  ; Saturate(value)
  %4732 = fmul fast float %4690, %4716
  %4733 = fmul fast float %4732, %4687
  %4734 = fmul fast float %4733, %4722
  %4735 = fmul fast float %4734, %4713
  %4736 = fmul fast float %4735, %4728
  %4737 = fmul fast float %4736, %4731
  %4738 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4739 = extractvalue %dx.types.CBufRet.f32 %4738, 1
  %4740 = extractvalue %dx.types.CBufRet.f32 %4738, 0
  %4741 = fsub fast float %4643, %4740
  %4742 = fmul fast float %4741, %4739
  %4743 = call float @dx.op.unary.f32(i32 7, float %4742)  ; Saturate(value)
  %4744 = fmul fast float %4737, %4560
  %4745 = fadd fast float %4737, %4560
  %4746 = fmul fast float %4745, %4569
  %4747 = fsub fast float %4746, %4569
  %4748 = call float @dx.op.unary.f32(i32 7, float %4747)  ; Saturate(value)
  %4749 = and i32 %4599, 128
  %4750 = icmp ne i32 %4749, 0
  %4751 = select i1 %4750, float %4748, float %4744
  %4752 = fmul fast float %4751, %4743
  %4753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4754 = extractvalue %dx.types.CBufRet.f32 %4753, 0
  %4755 = fcmp fast ugt float %4752, %4754
  br i1 %4755, label %4756, label %4648

; <label>:4756                                    ; preds = %4675
  %4757 = select i1 %4715, float %4752, float 0.000000e+00
  %4758 = fadd fast float %4757, %4517
  %4759 = call float @dx.op.unary.f32(i32 7, float %4758)  ; Saturate(value)
  br i1 %4715, label %4648, label %4760

; <label>:4760                                    ; preds = %4756
  %4761 = and i32 %4599, 4
  %4762 = and i32 %4599, 8
  %4763 = add i32 %4555, 0
  %4764 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4763, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4765 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4766 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4764, %dx.types.Handle %4765, float %4693, float %4696, float undef, float undef, i32 0, i32 0, i32 undef, float %4698, float %4700, float undef, float %4702, float %4704, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4767 = extractvalue %dx.types.ResRet.f32 %4766, 0
  %4768 = extractvalue %dx.types.ResRet.f32 %4766, 1
  %4769 = extractvalue %dx.types.ResRet.f32 %4766, 2
  %4770 = extractvalue %dx.types.ResRet.f32 %4766, 3
  %4771 = bitcast float %4581 to i32
  %4772 = and i32 %4771, 255
  %4773 = uitofp i32 %4772 to float
  %4774 = lshr i32 %4771, 8
  %4775 = and i32 %4774, 255
  %4776 = uitofp i32 %4775 to float
  %4777 = fmul fast float %4770, %4773
  %4778 = fadd fast float %4777, %4776
  %4779 = fmul fast float %4778, 0x3F70101000000000
  %4780 = add i32 %4556, 0
  %4781 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4780, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4782 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4781, %dx.types.Handle %4765, float %4693, float %4696, float undef, float undef, i32 0, i32 0, i32 undef, float %4698, float %4700, float undef, float %4702, float %4704, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4783 = extractvalue %dx.types.ResRet.f32 %4782, 0
  %4784 = extractvalue %dx.types.ResRet.f32 %4782, 1
  %4785 = extractvalue %dx.types.ResRet.f32 %4782, 2
  %4786 = extractvalue %dx.types.ResRet.f32 %4782, 3
  %4787 = bitcast float %4575 to i32
  %4788 = and i32 %4787, 255
  %4789 = uitofp i32 %4788 to float
  %4790 = lshr i32 %4787, 8
  %4791 = and i32 %4790, 255
  %4792 = uitofp i32 %4791 to float
  %4793 = lshr i32 %4787, 16
  %4794 = and i32 %4793, 255
  %4795 = uitofp i32 %4794 to float
  %4796 = fmul fast float %4795, 0x3F70101000000000
  %4797 = fmul fast float %4783, %4789
  %4798 = fadd fast float %4797, %4792
  %4799 = fmul fast float %4798, 0x3F70101000000000
  %4800 = fadd fast float %4784, -5.000000e-01
  %4801 = fadd fast float %4786, -5.000000e-01
  %4802 = fmul fast float %4800, %4796
  %4803 = fmul fast float %4801, %4796
  %4804 = fadd fast float %4802, 5.000000e-01
  %4805 = fadd fast float %4803, 5.000000e-01
  %4806 = fmul fast float %4767, %4584
  %4807 = fmul fast float %4768, %4585
  %4808 = fmul fast float %4769, %4586
  %4809 = fmul fast float %4804, 2.000000e+00
  %4810 = fadd fast float %4809, -1.000000e+00
  %4811 = fmul fast float %4805, 2.000000e+00
  %4812 = fadd fast float %4811, -1.000000e+00
  %4813 = fadd fast float %4810, %4812
  %4814 = fmul fast float %4813, 5.000000e-01
  %4815 = fsub fast float %4810, %4812
  %4816 = fmul fast float %4815, 5.000000e-01
  %4817 = call float @dx.op.unary.f32(i32 6, float %4814)  ; FAbs(value)
  %4818 = fsub fast float 1.000000e+00, %4817
  %4819 = call float @dx.op.unary.f32(i32 6, float %4816)  ; FAbs(value)
  %4820 = fsub fast float %4818, %4819
  %4821 = call float @dx.op.dot3.f32(i32 55, float %4814, float %4816, float %4820, float %4814, float %4816, float %4820)  ; Dot3(ax,ay,az,bx,by,bz)
  %4822 = call float @dx.op.unary.f32(i32 25, float %4821)  ; Rsqrt(value)
  %4823 = fmul fast float %4814, %4822
  %4824 = fmul fast float %4816, %4822
  %4825 = fmul fast float %4822, %4820
  %4826 = fmul fast float %4825, %4549
  %4827 = fmul fast float %4825, %4550
  %4828 = fmul fast float %4825, %4551
  %4829 = fmul fast float %4823, %4572
  %4830 = fmul fast float %4823, %4573
  %4831 = fmul fast float %4823, %4574
  %4832 = fadd fast float %4829, %4826
  %4833 = fadd fast float %4830, %4827
  %4834 = fadd fast float %4831, %4828
  %4835 = fmul fast float %4824, %4578
  %4836 = fmul fast float %4824, %4579
  %4837 = fmul fast float %4824, %4580
  %4838 = fadd fast float %4832, %4835
  %4839 = fadd fast float %4833, %4836
  %4840 = fadd fast float %4834, %4837
  %4841 = call float @dx.op.dot3.f32(i32 55, float %4838, float %4839, float %4840, float %4838, float %4839, float %4840)  ; Dot3(ax,ay,az,bx,by,bz)
  %4842 = call float @dx.op.unary.f32(i32 25, float %4841)  ; Rsqrt(value)
  %4843 = fmul fast float %4838, %4842
  %4844 = fmul fast float %4839, %4842
  %4845 = fmul fast float %4840, %4842
  %4846 = icmp ne i32 %4762, 0
  %4847 = select i1 %4846, float 1.000000e+00, float 0.000000e+00
  %4848 = fmul fast float %4752, %4847
  %4849 = and i32 %4599, 1
  %4850 = icmp eq i32 %4849, 0
  br i1 %4850, label %4851, label %4855

; <label>:4851                                    ; preds = %4760
  %4852 = fsub fast float %4843, %4532
  %4853 = fsub fast float %4844, %4533
  %4854 = fsub fast float %4845, %4534
  br label %4855

; <label>:4855                                    ; preds = %4851, %4760
  %4856 = phi float [ %4852, %4851 ], [ %4843, %4760 ]
  %4857 = phi float [ %4853, %4851 ], [ %4844, %4760 ]
  %4858 = phi float [ %4854, %4851 ], [ %4845, %4760 ]
  %4859 = fmul float %4858, %4848
  %4860 = fmul float %4857, %4848
  %4861 = fmul float %4856, %4848
  %4862 = fadd fast float %4861, %4532
  %4863 = fadd fast float %4860, %4533
  %4864 = fadd fast float %4859, %4534
  %4865 = icmp ne i32 %4761, 0
  %4866 = select i1 %4865, float 1.000000e+00, float 0.000000e+00
  %4867 = fmul fast float %4752, %4866
  %4868 = fsub fast float %4806, %4539
  %4869 = fsub fast float %4807, %4540
  %4870 = fsub fast float %4808, %4541
  %4871 = fmul fast float %4868, %4867
  %4872 = fmul fast float %4869, %4867
  %4873 = fmul fast float %4870, %4867
  %4874 = fadd fast float %4871, %4539
  %4875 = fadd fast float %4872, %4540
  %4876 = fadd fast float %4873, %4541
  %4877 = fsub fast float %4779, %4538
  %4878 = fmul fast float %4877, %4867
  %4879 = fadd fast float %4878, %4538
  %4880 = fmul fast float %4867, %4525
  %4881 = fsub fast float %4525, %4880
  %4882 = fmul fast float %4867, %4524
  %4883 = fsub fast float %4524, %4882
  %4884 = bitcast float %4593 to i32
  %4885 = lshr i32 %4884, 16
  %4886 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4885)  ; LegacyF16ToF32(value)
  %4887 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %406, i32 undef)  ; BufferLoad(srv,index,wot)
  %4888 = extractvalue %dx.types.ResRet.i32 %4887, 0
  %4889 = and i32 %4888, 1
  %4890 = icmp eq i32 %4889, 0
  br i1 %4890, label %4891, label %4916

; <label>:4891                                    ; preds = %4855
  %4892 = fadd fast float %4779, 0xBFB99999A0000000
  %4893 = call float @dx.op.unary.f32(i32 7, float %4892)  ; Saturate(value)
  %4894 = fmul fast float %4893, 0x3FF1C71C80000000
  %4895 = fsub fast float 1.000000e+00, %4894
  %4896 = call float @dx.op.unary.f32(i32 7, float %4895)  ; Saturate(value)
  %4897 = fmul fast float %4896, %4806
  %4898 = fmul fast float %4896, %4807
  %4899 = fmul fast float %4896, %4808
  %4900 = call float @dx.op.unary.f32(i32 7, float %4897)  ; Saturate(value)
  %4901 = call float @dx.op.unary.f32(i32 7, float %4898)  ; Saturate(value)
  %4902 = call float @dx.op.unary.f32(i32 7, float %4899)  ; Saturate(value)
  %4903 = call float @dx.op.binary.f32(i32 35, float %4901, float %4902)  ; FMax(a,b)
  %4904 = call float @dx.op.binary.f32(i32 35, float %4900, float %4903)  ; FMax(a,b)
  %4905 = fcmp fast ogt float %4904, 0.000000e+00
  %4906 = bitcast float %4904 to i32
  %4907 = sub nsw i32 2129859010, %4906
  %4908 = bitcast i32 %4907 to float
  %4909 = select i1 %4905, float %4908, float 0.000000e+00
  %4910 = fmul fast float %4900, %4886
  %4911 = fmul fast float %4901, %4886
  %4912 = fmul fast float %4902, %4886
  %4913 = fmul fast float %4910, %4909
  %4914 = fmul fast float %4911, %4909
  %4915 = fmul fast float %4912, %4909
  br label %4916

; <label>:4916                                    ; preds = %4891, %4855
  %4917 = phi float [ %4886, %4855 ], [ %4913, %4891 ]
  %4918 = phi float [ %4886, %4855 ], [ %4914, %4891 ]
  %4919 = phi float [ %4886, %4855 ], [ %4915, %4891 ]
  %4920 = fsub fast float %4917, %4526
  %4921 = fsub fast float %4918, %4527
  %4922 = fsub fast float %4919, %4528
  %4923 = fmul fast float %4920, %4867
  %4924 = fmul fast float %4921, %4867
  %4925 = fmul fast float %4922, %4867
  %4926 = fadd fast float %4923, %4526
  %4927 = fadd fast float %4924, %4527
  %4928 = fadd fast float %4925, %4528
  %4929 = fadd fast float %4752, %4537
  %4930 = call float @dx.op.unary.f32(i32 7, float %4929)  ; Saturate(value)
  %4931 = fsub fast float %4799, %4536
  %4932 = fmul fast float %4931, %4848
  %4933 = fadd fast float %4932, %4536
  %4934 = fsub fast float %4785, %4535
  %4935 = fmul fast float %4934, %4848
  %4936 = fadd fast float %4935, %4535
  br i1 %4850, label %4945, label %4937

; <label>:4937                                    ; preds = %4916
  %4938 = and i32 %4599, 32768
  %4939 = icmp eq i32 %4938, 0
  br i1 %4939, label %4955, label %4940

; <label>:4940                                    ; preds = %4937
  %4941 = fmul fast float %4848, 1.270000e+02
  %4942 = fadd fast float %4941, %4521
  %4943 = fadd fast float %4941, %4522
  %4944 = fadd fast float %4941, %4523
  br label %4955

; <label>:4945                                    ; preds = %4916
  %4946 = fsub fast float 1.270000e+02, %4521
  %4947 = fsub fast float 1.270000e+02, %4522
  %4948 = fsub fast float 1.270000e+02, %4523
  %4949 = fmul fast float %4848, %4946
  %4950 = fmul fast float %4848, %4947
  %4951 = fmul fast float %4848, %4948
  %4952 = fadd fast float %4949, %4521
  %4953 = fadd fast float %4950, %4522
  %4954 = fadd fast float %4951, %4523
  br label %4955

; <label>:4955                                    ; preds = %4945, %4940, %4937
  %4956 = phi float [ %4942, %4940 ], [ %4521, %4937 ], [ %4952, %4945 ]
  %4957 = phi float [ %4943, %4940 ], [ %4522, %4937 ], [ %4953, %4945 ]
  %4958 = phi float [ %4944, %4940 ], [ %4523, %4937 ], [ %4954, %4945 ]
  %4959 = call float @dx.op.dot3.f32(i32 55, float %4806, float %4807, float %4808, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4961 = extractvalue %dx.types.CBufRet.f32 %4960, 0
  %4962 = extractvalue %dx.types.CBufRet.f32 %4960, 1
  %4963 = fmul fast float %4962, %4959
  %4964 = fadd fast float %4963, %4961
  %4965 = call float @dx.op.unary.f32(i32 7, float %4964)  ; Saturate(value)
  %4966 = bitcast float %4587 to i32
  %4967 = and i32 %4966, 65535
  %4968 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4967)  ; LegacyF16ToF32(value)
  %4969 = lshr i32 %4966, 16
  %4970 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4969)  ; LegacyF16ToF32(value)
  %4971 = fcmp fast oge float %4968, 0.000000e+00
  %4972 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4973 = extractvalue %dx.types.CBufRet.f32 %4972, 0
  %4974 = select i1 %4971, float %4968, float %4973
  %4975 = fadd fast float %4974, %4970
  %4976 = fsub fast float %4965, %4520
  %4977 = fmul fast float %4976, %4752
  %4978 = fadd fast float %4977, %4520
  %4979 = fmul fast float %4975, %4752
  %4980 = call float @dx.op.binary.f32(i32 35, float %4519, float %4979)  ; FMax(a,b)
  %4981 = call float @dx.op.binary.f32(i32 35, float %4518, float %4752)  ; FMax(a,b)
  %4982 = and i32 %4599, 16
  %4983 = icmp eq i32 %4982, 0
  br i1 %4983, label %5005, label %4984

; <label>:4984                                    ; preds = %4955
  %4985 = add i32 %4590, 0
  %4986 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4985, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4987 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4986, %dx.types.Handle %4765, float %4693, float %4696, float undef, float undef, i32 0, i32 0, i32 undef, float %4698, float %4700, float undef, float %4702, float %4704, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4988 = extractvalue %dx.types.ResRet.f32 %4987, 0
  %4989 = extractvalue %dx.types.ResRet.f32 %4987, 1
  %4990 = extractvalue %dx.types.ResRet.f32 %4987, 2
  %4991 = and i32 %4884, 65535
  %4992 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4991)  ; LegacyF16ToF32(value)
  %4993 = fmul fast float %4988, %4584
  %4994 = fmul fast float %4989, %4585
  %4995 = fmul fast float %4990, %4586
  %4996 = and i32 %4599, 16384
  %4997 = icmp ne i32 %4996, 0
  %4998 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4999 = extractvalue %dx.types.CBufRet.f32 %4998, 0
  %5000 = select i1 %4997, float %4999, float 1.000000e+00
  %5001 = fmul fast float %5000, %4992
  %5002 = fmul fast float %4993, %5001
  %5003 = fmul fast float %4994, %5001
  %5004 = fmul fast float %4995, %5001
  br label %5005

; <label>:5005                                    ; preds = %4984, %4955
  %5006 = phi float [ %5002, %4984 ], [ 0.000000e+00, %4955 ]
  %5007 = phi float [ %5003, %4984 ], [ 0.000000e+00, %4955 ]
  %5008 = phi float [ %5004, %4984 ], [ 0.000000e+00, %4955 ]
  %5009 = fsub fast float %5006, %4529
  %5010 = fsub fast float %5007, %4530
  %5011 = fsub fast float %5008, %4531
  %5012 = fmul fast float %5009, %4752
  %5013 = fmul fast float %5010, %4752
  %5014 = fmul fast float %5011, %4752
  %5015 = fadd fast float %5012, %4529
  %5016 = fadd fast float %5013, %4530
  %5017 = fadd fast float %5014, %4531
  br label %4648

; <label>:5018                                    ; preds = %4648
  br label %5019

; <label>:5019                                    ; preds = %5018, %4461
  %5020 = phi float [ 0.000000e+00, %4461 ], [ %4649, %5018 ]
  %5021 = phi float [ %1253, %4461 ], [ %4650, %5018 ]
  %5022 = phi float [ %4430, %4461 ], [ %4651, %5018 ]
  %5023 = phi float [ %4428, %4461 ], [ %4652, %5018 ]
  %5024 = phi float [ %4421, %4461 ], [ %4653, %5018 ]
  %5025 = phi float [ %4422, %4461 ], [ %4654, %5018 ]
  %5026 = phi float [ %4423, %4461 ], [ %4655, %5018 ]
  %5027 = phi float [ 0.000000e+00, %4461 ], [ %4656, %5018 ]
  %5028 = phi float [ 0.000000e+00, %4461 ], [ %4657, %5018 ]
  %5029 = phi float [ %4418, %4461 ], [ %4658, %5018 ]
  %5030 = phi float [ %4419, %4461 ], [ %4659, %5018 ]
  %5031 = phi float [ %4420, %4461 ], [ %4660, %5018 ]
  %5032 = phi float [ %4415, %4461 ], [ %4661, %5018 ]
  %5033 = phi float [ %4416, %4461 ], [ %4662, %5018 ]
  %5034 = phi float [ %4417, %4461 ], [ %4663, %5018 ]
  %5035 = phi float [ %4456, %4461 ], [ %4664, %5018 ]
  %5036 = phi float [ %4457, %4461 ], [ %4665, %5018 ]
  %5037 = phi float [ %4458, %4461 ], [ %4666, %5018 ]
  %5038 = phi float [ %4426, %4461 ], [ %4667, %5018 ]
  %5039 = phi float [ %4425, %4461 ], [ %4668, %5018 ]
  %5040 = phi float [ 0.000000e+00, %4461 ], [ %4669, %5018 ]
  %5041 = phi float [ %4424, %4461 ], [ %4670, %5018 ]
  %5042 = phi float [ %4412, %4461 ], [ %4671, %5018 ]
  %5043 = phi float [ %4413, %4461 ], [ %4672, %5018 ]
  %5044 = phi float [ %4414, %4461 ], [ %4673, %5018 ]
  %5045 = call float @dx.op.dot3.f32(i32 55, float %5035, float %5036, float %5037, float %5035, float %5036, float %5037)  ; Dot3(ax,ay,az,bx,by,bz)
  %5046 = call float @dx.op.unary.f32(i32 25, float %5045)  ; Rsqrt(value)
  %5047 = fmul fast float %5046, %5035
  %5048 = fmul fast float %5046, %5036
  %5049 = fmul fast float %5046, %5037
  %5050 = fadd fast float %5040, %1253
  %5051 = call float @dx.op.unary.f32(i32 7, float %5050)  ; Saturate(value)
  %5052 = call float @dx.op.dot3.f32(i32 55, float %5047, float %5048, float %5049, float %5047, float %5048, float %5049)  ; Dot3(ax,ay,az,bx,by,bz)
  %5053 = call float @dx.op.unary.f32(i32 25, float %5052)  ; Rsqrt(value)
  %5054 = fmul fast float %5053, %5047
  %5055 = fmul fast float %5053, %5048
  %5056 = fmul fast float %5053, %5049
  br label %5057

; <label>:5057                                    ; preds = %5019, %4409
  %5058 = phi float [ %5054, %5019 ], [ %4456, %4409 ]
  %5059 = phi float [ %5055, %5019 ], [ %4457, %4409 ]
  %5060 = phi float [ %5056, %5019 ], [ %4458, %4409 ]
  %5061 = phi float [ %5042, %5019 ], [ %4412, %4409 ]
  %5062 = phi float [ %5043, %5019 ], [ %4413, %4409 ]
  %5063 = phi float [ %5044, %5019 ], [ %4414, %4409 ]
  %5064 = phi float [ %5029, %5019 ], [ %4418, %4409 ]
  %5065 = phi float [ %5030, %5019 ], [ %4419, %4409 ]
  %5066 = phi float [ %5031, %5019 ], [ %4420, %4409 ]
  %5067 = phi float [ %5032, %5019 ], [ %4415, %4409 ]
  %5068 = phi float [ %5033, %5019 ], [ %4416, %4409 ]
  %5069 = phi float [ %5034, %5019 ], [ %4417, %4409 ]
  %5070 = phi float [ %5024, %5019 ], [ %4421, %4409 ]
  %5071 = phi float [ %5025, %5019 ], [ %4422, %4409 ]
  %5072 = phi float [ %5026, %5019 ], [ %4423, %4409 ]
  %5073 = phi float [ %5041, %5019 ], [ %4424, %4409 ]
  %5074 = phi float [ %5051, %5019 ], [ %1253, %4409 ]
  %5075 = phi float [ %5039, %5019 ], [ %4425, %4409 ]
  %5076 = phi float [ %5038, %5019 ], [ %4426, %4409 ]
  %5077 = phi float [ %5028, %5019 ], [ 0.000000e+00, %4409 ]
  %5078 = phi float [ %5027, %5019 ], [ 0.000000e+00, %4409 ]
  %5079 = phi float [ %5020, %5019 ], [ 0.000000e+00, %4409 ]
  %5080 = phi float [ %5022, %5019 ], [ %4430, %4409 ]
  %5081 = phi float [ %5021, %5019 ], [ %1253, %4409 ]
  %5082 = phi float [ %5023, %5019 ], [ %4428, %4409 ]
  %5083 = fadd fast float %5073, 0xBFB99999A0000000
  %5084 = call float @dx.op.unary.f32(i32 7, float %5083)  ; Saturate(value)
  %5085 = fmul fast float %5084, 0x3FF1C71C80000000
  %5086 = call float @dx.op.binary.f32(i32 36, float %5073, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5087 = fsub fast float 1.000000e+00, %5085
  %5088 = call float @dx.op.unary.f32(i32 7, float %5087)  ; Saturate(value)
  %5089 = fmul fast float %5088, %5061
  %5090 = fmul fast float %5088, %5062
  %5091 = fmul fast float %5088, %5063
  %5092 = call float @dx.op.unary.f32(i32 7, float %5089)  ; Saturate(value)
  %5093 = call float @dx.op.unary.f32(i32 7, float %5090)  ; Saturate(value)
  %5094 = call float @dx.op.unary.f32(i32 7, float %5091)  ; Saturate(value)
  %5095 = fmul fast float %5085, %5061
  %5096 = fmul fast float %5085, %5062
  %5097 = fmul fast float %5085, %5063
  %5098 = fadd fast float %5095, %5086
  %5099 = fadd fast float %5096, %5086
  %5100 = fadd fast float %5097, %5086
  %5101 = call float @dx.op.unary.f32(i32 7, float %5098)  ; Saturate(value)
  %5102 = call float @dx.op.unary.f32(i32 7, float %5099)  ; Saturate(value)
  %5103 = call float @dx.op.unary.f32(i32 7, float %5100)  ; Saturate(value)
  %5104 = call float @dx.op.unary.f32(i32 7, float %5075)  ; Saturate(value)
  %5105 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %406, i32 undef)  ; BufferLoad(srv,index,wot)
  %5106 = extractvalue %dx.types.ResRet.i32 %5105, 0
  %5107 = and i32 %5106, 1
  %5108 = icmp eq i32 %5107, 0
  br i1 %5108, label %5123, label %5109

; <label>:5109                                    ; preds = %5057
  %5110 = call float @dx.op.binary.f32(i32 35, float %5093, float %5094)  ; FMax(a,b)
  %5111 = call float @dx.op.binary.f32(i32 35, float %5092, float %5110)  ; FMax(a,b)
  %5112 = fcmp fast ogt float %5111, 0.000000e+00
  %5113 = bitcast float %5111 to i32
  %5114 = sub nsw i32 2129859010, %5113
  %5115 = bitcast i32 %5114 to float
  %5116 = select i1 %5112, float %5115, float 0.000000e+00
  %5117 = fmul fast float %5092, %5064
  %5118 = fmul fast float %5093, %5065
  %5119 = fmul fast float %5094, %5066
  %5120 = fmul fast float %5117, %5116
  %5121 = fmul fast float %5118, %5116
  %5122 = fmul fast float %5119, %5116
  br label %5123

; <label>:5123                                    ; preds = %5109, %5057
  %5124 = phi float [ %5120, %5109 ], [ %5064, %5057 ]
  %5125 = phi float [ %5121, %5109 ], [ %5065, %5057 ]
  %5126 = phi float [ %5122, %5109 ], [ %5066, %5057 ]
  %5127 = call float @dx.op.binary.f32(i32 36, float %5070, float 1.270000e+02)  ; FMin(a,b)
  %5128 = call float @dx.op.binary.f32(i32 36, float %5071, float 1.270000e+02)  ; FMin(a,b)
  %5129 = call float @dx.op.binary.f32(i32 36, float %5072, float 1.270000e+02)  ; FMin(a,b)
  %5130 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5131 = extractvalue %dx.types.CBufRet.i32 %5130, 3
  %5132 = and i32 %5131, 8
  %5133 = icmp ne i32 %5132, 0
  %5134 = call float @dx.op.binary.f32(i32 35, float %5092, float %5061)  ; FMax(a,b)
  %5135 = call float @dx.op.binary.f32(i32 35, float %5093, float %5061)  ; FMax(a,b)
  %5136 = call float @dx.op.binary.f32(i32 35, float %5094, float %5061)  ; FMax(a,b)
  %5137 = call float @dx.op.dot3.f32(i32 55, float %5092, float %5093, float %5094, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5138 = select i1 %226, float %5061, float %5092
  %5139 = select i1 %226, float %5137, float %5093
  %5140 = select i1 %226, float 1.000000e+00, float %5094
  %5141 = select i1 %5133, float %5134, float %5138
  %5142 = select i1 %5133, float %5135, float %5139
  %5143 = select i1 %5133, float %5136, float %5140
  %5144 = call float @dx.op.dot3.f32(i32 55, float %5124, float %5125, float %5126, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5145 = select i1 %226, float %5144, float %5124
  %5146 = select i1 %226, float %5144, float %5125
  %5147 = select i1 %226, float %5144, float %5126
  %5148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5149 = extractvalue %dx.types.CBufRet.f32 %5148, 0
  %5150 = extractvalue %dx.types.CBufRet.f32 %5148, 1
  %5151 = extractvalue %dx.types.CBufRet.f32 %5148, 2
  %5152 = fadd fast float %5149, %164
  %5153 = fadd fast float %5150, %165
  %5154 = fadd fast float %5151, %166
  %5155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %5156 = extractvalue %dx.types.CBufRet.f32 %5155, 0
  %5157 = extractvalue %dx.types.CBufRet.f32 %5155, 1
  %5158 = fsub fast float %5152, %5156
  %5159 = fsub fast float %5153, %5157
  %5160 = fmul fast float %5158, %5158
  %5161 = fmul fast float %5159, %5159
  %5162 = fadd fast float %5160, %5161
  %5163 = call float @dx.op.unary.f32(i32 24, float %5162)  ; Sqrt(value)
  %5164 = extractvalue %dx.types.CBufRet.f32 %5155, 2
  %5165 = fcmp fast olt float %5163, %5164
  br i1 %5165, label %5166, label %5233

; <label>:5166                                    ; preds = %5123
  %5167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5168 = extractvalue %dx.types.CBufRet.f32 %5167, 0
  %5169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5170 = extractvalue %dx.types.CBufRet.f32 %5169, 0
  %5171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5172 = extractvalue %dx.types.CBufRet.f32 %5171, 0
  %5173 = extractvalue %dx.types.CBufRet.f32 %5167, 1
  %5174 = extractvalue %dx.types.CBufRet.f32 %5169, 1
  %5175 = extractvalue %dx.types.CBufRet.f32 %5171, 1
  %5176 = extractvalue %dx.types.CBufRet.f32 %5167, 3
  %5177 = extractvalue %dx.types.CBufRet.f32 %5169, 3
  %5178 = extractvalue %dx.types.CBufRet.f32 %5171, 3
  %5179 = fadd fast float %5176, %5152
  %5180 = fadd fast float %5177, %5153
  %5181 = fadd fast float %5178, %5154
  %5182 = fmul fast float %5179, %5168
  %5183 = call float @dx.op.tertiary.f32(i32 46, float %5180, float %5170, float %5182)  ; FMad(a,b,c)
  %5184 = call float @dx.op.tertiary.f32(i32 46, float %5181, float %5172, float %5183)  ; FMad(a,b,c)
  %5185 = fmul fast float %5179, %5173
  %5186 = call float @dx.op.tertiary.f32(i32 46, float %5180, float %5174, float %5185)  ; FMad(a,b,c)
  %5187 = call float @dx.op.tertiary.f32(i32 46, float %5181, float %5175, float %5186)  ; FMad(a,b,c)
  %5188 = fsub fast float %5184, %5176
  %5189 = fsub fast float %5187, %5177
  %5190 = fsub fast float %5188, %5156
  %5191 = fadd fast float %5190, %5164
  %5192 = fsub fast float %5189, %5157
  %5193 = fadd fast float %5192, %5164
  %5194 = extractvalue %dx.types.CBufRet.f32 %5155, 3
  %5195 = fmul fast float %5191, %5194
  %5196 = fmul fast float %5193, %5194
  %5197 = call float @dx.op.unary.f32(i32 7, float %5195)  ; Saturate(value)
  %5198 = call float @dx.op.unary.f32(i32 7, float %5196)  ; Saturate(value)
  %5199 = fsub fast float 1.000000e+00, %5197
  %5200 = fsub fast float 1.000000e+00, %5198
  %5201 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %54, float %5199, float %5200, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5202 = extractvalue %dx.types.ResRet.f32 %5201, 0
  %5203 = fcmp fast ugt float %5202, 0.000000e+00
  br i1 %5203, label %5204, label %5507

; <label>:5204                                    ; preds = %5166
  %5205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5206 = extractvalue %dx.types.CBufRet.f32 %5205, 2
  %5207 = fmul fast float %5206, %5202
  %5208 = extractvalue %dx.types.CBufRet.f32 %5205, 3
  %5209 = fadd fast float %5208, %5207
  %5210 = extractvalue %dx.types.CBufRet.f32 %5171, 2
  %5211 = fadd fast float %5209, %5178
  %5212 = fmul fast float %5184, %5172
  %5213 = call float @dx.op.tertiary.f32(i32 46, float %5187, float %5175, float %5212)  ; FMad(a,b,c)
  %5214 = call float @dx.op.tertiary.f32(i32 46, float %5211, float %5210, float %5213)  ; FMad(a,b,c)
  %5215 = fsub fast float %5214, %5178
  %5216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5217 = extractvalue %dx.types.CBufRet.f32 %5216, 2
  %5218 = fsub fast float %5215, %5217
  %5219 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %54, float %5199, float %5200, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5220 = extractvalue %dx.types.ResRet.f32 %5219, 0
  %5221 = extractvalue %dx.types.ResRet.f32 %5219, 1
  %5222 = extractvalue %dx.types.ResRet.f32 %5219, 2
  %5223 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %54, float %5199, float %5200, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5224 = extractvalue %dx.types.ResRet.f32 %5223, 0
  %5225 = extractvalue %dx.types.ResRet.f32 %5223, 1
  %5226 = extractvalue %dx.types.ResRet.f32 %5223, 2
  %5227 = fadd fast float %5224, %5220
  %5228 = fmul fast float %5227, 0x3F847AE140000000
  %5229 = fadd fast float %5225, %5221
  %5230 = fmul fast float %5229, 0x3F847AE140000000
  %5231 = fadd fast float %5226, %5222
  %5232 = fmul fast float %5231, 0x3F847AE140000000
  br label %5507

; <label>:5233                                    ; preds = %5123
  %5234 = and i32 %202, 1
  %5235 = icmp eq i32 %5234, 0
  br i1 %5235, label %5507, label %5236

; <label>:5236                                    ; preds = %5233
  %5237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5238 = extractvalue %dx.types.CBufRet.f32 %5237, 0
  %5239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5240 = extractvalue %dx.types.CBufRet.f32 %5239, 0
  %5241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5242 = extractvalue %dx.types.CBufRet.f32 %5241, 0
  %5243 = extractvalue %dx.types.CBufRet.f32 %5237, 1
  %5244 = extractvalue %dx.types.CBufRet.f32 %5239, 1
  %5245 = extractvalue %dx.types.CBufRet.f32 %5241, 1
  %5246 = extractvalue %dx.types.CBufRet.f32 %5237, 3
  %5247 = extractvalue %dx.types.CBufRet.f32 %5239, 3
  %5248 = extractvalue %dx.types.CBufRet.f32 %5241, 3
  %5249 = fadd fast float %5246, %5152
  %5250 = fadd fast float %5247, %5153
  %5251 = fadd fast float %5248, %5154
  %5252 = fmul fast float %5249, %5238
  %5253 = call float @dx.op.tertiary.f32(i32 46, float %5250, float %5240, float %5252)  ; FMad(a,b,c)
  %5254 = call float @dx.op.tertiary.f32(i32 46, float %5251, float %5242, float %5253)  ; FMad(a,b,c)
  %5255 = fmul fast float %5249, %5243
  %5256 = call float @dx.op.tertiary.f32(i32 46, float %5250, float %5244, float %5255)  ; FMad(a,b,c)
  %5257 = call float @dx.op.tertiary.f32(i32 46, float %5251, float %5245, float %5256)  ; FMad(a,b,c)
  %5258 = fsub fast float %5254, %5246
  %5259 = fsub fast float %5257, %5247
  %5260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %5261 = extractvalue %dx.types.CBufRet.f32 %5260, 0
  %5262 = extractvalue %dx.types.CBufRet.f32 %5260, 1
  %5263 = extractvalue %dx.types.CBufRet.f32 %5260, 2
  %5264 = extractvalue %dx.types.CBufRet.f32 %5260, 3
  %5265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %5266 = extractvalue %dx.types.CBufRet.f32 %5265, 3
  %5267 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %5268 = extractvalue %dx.types.CBufRet.i32 %5267, 0
  %5269 = extractvalue %dx.types.CBufRet.i32 %5267, 1
  %5270 = udiv i32 %5269, %5268
  %5271 = fsub fast float %5258, %5261
  %5272 = fsub fast float %5259, %5262
  %5273 = call float @dx.op.binary.f32(i32 35, float %5271, float 0.000000e+00)  ; FMax(a,b)
  %5274 = call float @dx.op.binary.f32(i32 35, float %5272, float 0.000000e+00)  ; FMax(a,b)
  %5275 = call float @dx.op.binary.f32(i32 36, float %5273, float %5263)  ; FMin(a,b)
  %5276 = call float @dx.op.binary.f32(i32 36, float %5274, float %5264)  ; FMin(a,b)
  %5277 = add i32 %5268, -1
  %5278 = add i32 %5270, -1
  %5279 = fmul fast float %5275, %5266
  %5280 = fmul fast float %5276, %5266
  %5281 = fptoui float %5279 to i32
  %5282 = fptoui float %5280 to i32
  %5283 = call i32 @dx.op.binary.i32(i32 40, i32 %5281, i32 %5277)  ; UMin(a,b)
  %5284 = call i32 @dx.op.binary.i32(i32 40, i32 %5282, i32 %5278)  ; UMin(a,b)
  %5285 = mul i32 %5284, %5268
  %5286 = add i32 %5285, %5283
  %5287 = shl i32 %5286, 2
  %5288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %5287, i32 undef)  ; BufferLoad(srv,index,wot)
  %5289 = extractvalue %dx.types.ResRet.i32 %5288, 0
  %5290 = icmp eq i32 %5289, -1
  br i1 %5290, label %5507, label %5291

; <label>:5291                                    ; preds = %5236
  %5292 = mul i32 %5289, 148
  %5293 = add i32 %5292, 4
  %5294 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5293, i32 undef)  ; BufferLoad(srv,index,wot)
  %5295 = extractvalue %dx.types.ResRet.f32 %5294, 0
  %5296 = add i32 %5292, 8
  %5297 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5296, i32 undef)  ; BufferLoad(srv,index,wot)
  %5298 = extractvalue %dx.types.ResRet.f32 %5297, 0
  %5299 = add i32 %5292, 36
  %5300 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5299, i32 undef)  ; BufferLoad(srv,index,wot)
  %5301 = extractvalue %dx.types.ResRet.f32 %5300, 0
  %5302 = add i32 %5292, 60
  %5303 = add i32 %5292, 92
  %5304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5303, i32 undef)  ; BufferLoad(srv,index,wot)
  %5305 = extractvalue %dx.types.ResRet.i32 %5304, 0
  %5306 = add i32 %5292, 116
  %5307 = fsub fast float %5258, %5295
  %5308 = fsub fast float %5259, %5298
  %5309 = fmul fast float %5266, %5307
  %5310 = fmul fast float %5266, %5308
  %5311 = call float @dx.op.unary.f32(i32 7, float %5309)  ; Saturate(value)
  %5312 = call float @dx.op.unary.f32(i32 7, float %5310)  ; Saturate(value)
  %5313 = fsub fast float 1.000000e+00, %5312
  %5314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5315 = extractvalue %dx.types.CBufRet.f32 %5314, 2
  %5316 = call float @dx.op.unary.f32(i32 83, float %5311)  ; DerivCoarseX(value)
  %5317 = call float @dx.op.unary.f32(i32 83, float %5313)  ; DerivCoarseX(value)
  %5318 = call float @dx.op.unary.f32(i32 84, float %5311)  ; DerivCoarseY(value)
  %5319 = call float @dx.op.unary.f32(i32 84, float %5313)  ; DerivCoarseY(value)
  %5320 = fmul fast float %5316, %5315
  %5321 = fmul fast float %5317, %5315
  %5322 = fmul fast float %5318, %5315
  %5323 = fmul fast float %5319, %5315
  %5324 = call float @dx.op.dot2.f32(i32 54, float %5322, float %5323, float %5322, float %5323)  ; Dot2(ax,ay,bx,by)
  %5325 = call float @dx.op.dot2.f32(i32 54, float %5320, float %5321, float %5320, float %5321)  ; Dot2(ax,ay,bx,by)
  %5326 = call float @dx.op.binary.f32(i32 35, float %5325, float %5324)  ; FMax(a,b)
  %5327 = call float @dx.op.unary.f32(i32 23, float %5326)  ; Log(value)
  %5328 = fmul fast float %5327, 5.000000e-01
  %5329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5330 = extractvalue %dx.types.CBufRet.f32 %5329, 1
  %5331 = fadd fast float %5330, %5328
  %5332 = call float @dx.op.binary.f32(i32 35, float %5331, float 0.000000e+00)  ; FMax(a,b)
  %5333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %5334 = extractvalue %dx.types.CBufRet.f32 %5333, 3
  %5335 = fadd fast float %5334, %5332
  %5336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %5337 = extractvalue %dx.types.CBufRet.f32 %5336, 3
  %5338 = fadd fast float %5335, %5337
  %5339 = add i32 %5305, 0
  %5340 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5339, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5341 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5340, i32 0)  ; GetDimensions(handle,mipLevel)
  %5342 = extractvalue %dx.types.Dimensions %5341, 0
  %5343 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5342)  ; FirstbitLo(value)
  %5344 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5345 = extractvalue %dx.types.CBufRet.i32 %5344, 1
  %5346 = sub nsw i32 %5345, %5343
  %5347 = sitofp i32 %5346 to float
  %5348 = fsub fast float %5338, %5347
  %5349 = call float @dx.op.binary.f32(i32 35, float %5348, float 0.000000e+00)  ; FMax(a,b)
  %5350 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5340, %dx.types.Handle %52, float %5311, float %5313, float %5301, float undef, i32 0, i32 0, i32 undef, float %5349)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5351 = extractvalue %dx.types.ResRet.f32 %5350, 0
  %5352 = fcmp ule float %5351, 0x3FE0101020000000
  %5353 = extractvalue %dx.types.CBufRet.i32 %5344, 0
  %5354 = and i32 %5353, 128
  %5355 = icmp ne i32 %5354, 0
  %5356 = and i1 %5352, %5355
  br i1 %5356, label %5507, label %5357

; <label>:5357                                    ; preds = %5291
  %5358 = add i32 %5292, 20
  %5359 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5358, i32 undef)  ; BufferLoad(srv,index,wot)
  %5360 = extractvalue %dx.types.ResRet.f32 %5359, 0
  %5361 = add i32 %5292, 24
  %5362 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5361, i32 undef)  ; BufferLoad(srv,index,wot)
  %5363 = extractvalue %dx.types.ResRet.f32 %5362, 0
  %5364 = add i32 %5292, 40
  %5365 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5364, i32 undef)  ; BufferLoad(srv,index,wot)
  %5366 = extractvalue %dx.types.ResRet.f32 %5365, 0
  %5367 = add i32 %5292, 96
  %5368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5367, i32 undef)  ; BufferLoad(srv,index,wot)
  %5369 = extractvalue %dx.types.ResRet.i32 %5368, 0
  %5370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5371 = extractvalue %dx.types.CBufRet.f32 %5370, 2
  %5372 = fmul fast float %5371, %5311
  %5373 = fmul fast float %5371, %5313
  %5374 = extractvalue %dx.types.CBufRet.f32 %5370, 3
  %5375 = fadd fast float %5372, %5374
  %5376 = fadd fast float %5373, %5374
  %5377 = add i32 %5369, 0
  %5378 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5377, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5379 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5378, i32 0)  ; GetDimensions(handle,mipLevel)
  %5380 = extractvalue %dx.types.Dimensions %5379, 0
  %5381 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5380)  ; FirstbitLo(value)
  %5382 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5383 = extractvalue %dx.types.CBufRet.i32 %5382, 1
  %5384 = sub nsw i32 %5383, %5381
  %5385 = sitofp i32 %5384 to float
  %5386 = fsub fast float %5335, %5385
  %5387 = call float @dx.op.binary.f32(i32 35, float %5386, float 0.000000e+00)  ; FMax(a,b)
  %5388 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5378, %dx.types.Handle %52, float %5375, float %5376, float %5366, float undef, i32 0, i32 0, i32 undef, float %5387)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5389 = extractvalue %dx.types.ResRet.f32 %5388, 0
  %5390 = fmul fast float %5389, %5360
  %5391 = fadd fast float %5390, %5363
  %5392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5393 = extractvalue %dx.types.CBufRet.f32 %5392, 0
  %5394 = extractvalue %dx.types.CBufRet.f32 %5392, 1
  %5395 = extractvalue %dx.types.CBufRet.f32 %5392, 2
  %5396 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5397 = extractvalue %dx.types.CBufRet.f32 %5396, 3
  %5398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5399 = extractvalue %dx.types.CBufRet.f32 %5398, 3
  %5400 = extractvalue %dx.types.CBufRet.f32 %5392, 3
  %5401 = fadd fast float %5397, %5258
  %5402 = fadd fast float %5399, %5259
  %5403 = fadd fast float %5391, %5400
  %5404 = fmul fast float %5401, %5393
  %5405 = call float @dx.op.tertiary.f32(i32 46, float %5402, float %5394, float %5404)  ; FMad(a,b,c)
  %5406 = call float @dx.op.tertiary.f32(i32 46, float %5403, float %5395, float %5405)  ; FMad(a,b,c)
  %5407 = fsub fast float %5406, %5400
  %5408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5409 = extractvalue %dx.types.CBufRet.f32 %5408, 2
  %5410 = fsub fast float %5407, %5409
  %5411 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5412 = extractvalue %dx.types.CBufRet.i32 %5411, 0
  %5413 = call i32 @dx.op.binary.i32(i32 40, i32 %5289, i32 %5412)  ; UMin(a,b)
  %5414 = mul i32 %5413, 36
  %5415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %5414, i32 undef)  ; BufferLoad(srv,index,wot)
  %5416 = extractvalue %dx.types.ResRet.i32 %5415, 0
  %5417 = add i32 %5414, 4
  %5418 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5419 = extractvalue %dx.types.CBufRet.f32 %5418, 0
  %5420 = fmul fast float %5419, %5311
  %5421 = fmul fast float %5419, %5313
  %5422 = extractvalue %dx.types.CBufRet.f32 %5418, 1
  %5423 = fadd fast float %5420, %5422
  %5424 = fadd fast float %5421, %5422
  %5425 = icmp eq i32 %5416, 0
  br i1 %5425, label %5494, label %5426

; <label>:5426                                    ; preds = %5357
  br label %5427

; <label>:5427                                    ; preds = %5484, %5426
  %5428 = phi float [ %5485, %5484 ], [ 0.000000e+00, %5426 ]
  %5429 = phi float [ %5486, %5484 ], [ 0.000000e+00, %5426 ]
  %5430 = phi float [ %5487, %5484 ], [ 0.000000e+00, %5426 ]
  %5431 = phi float [ %5488, %5484 ], [ 0.000000e+00, %5426 ]
  %5432 = phi float [ %5489, %5484 ], [ 0.000000e+00, %5426 ]
  %5433 = phi float [ %5490, %5484 ], [ 0.000000e+00, %5426 ]
  %5434 = phi i32 [ %5491, %5484 ], [ 0, %5426 ]
  %5435 = shl i32 %5434, 2
  %5436 = add i32 %5302, %5435
  %5437 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5436, i32 undef)  ; BufferLoad(srv,index,wot)
  %5438 = extractvalue %dx.types.ResRet.f32 %5437, 0
  %5439 = add i32 %5306, %5435
  %5440 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5439, i32 undef)  ; BufferLoad(srv,index,wot)
  %5441 = extractvalue %dx.types.ResRet.i32 %5440, 0
  %5442 = add i32 %5441, 0
  %5443 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5442, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5444 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5443, i32 0)  ; GetDimensions(handle,mipLevel)
  %5445 = extractvalue %dx.types.Dimensions %5444, 0
  %5446 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5445)  ; FirstbitLo(value)
  %5447 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5448 = extractvalue %dx.types.CBufRet.i32 %5447, 1
  %5449 = sub nsw i32 %5448, %5446
  %5450 = sitofp i32 %5449 to float
  %5451 = fsub fast float %5335, %5450
  %5452 = call float @dx.op.binary.f32(i32 35, float %5451, float 0.000000e+00)  ; FMax(a,b)
  %5453 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5443, %dx.types.Handle %52, float %5423, float %5424, float %5438, float undef, i32 0, i32 0, i32 undef, float %5452)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5454 = extractvalue %dx.types.ResRet.f32 %5453, 0
  %5455 = fcmp fast ogt float %5454, 0.000000e+00
  br i1 %5455, label %5456, label %5484

; <label>:5456                                    ; preds = %5427
  %5457 = add i32 %5417, %5435
  %5458 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %5457, i32 undef)  ; BufferLoad(srv,index,wot)
  %5459 = extractvalue %dx.types.ResRet.i32 %5458, 0
  %5460 = and i32 %5459, 32767
  %5461 = mul nuw nsw i32 %5460, 928
  %5462 = add nuw nsw i32 %5461, 48
  %5463 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %5462, i32 undef)  ; BufferLoad(srv,index,wot)
  %5464 = extractvalue %dx.types.ResRet.f32 %5463, 0
  %5465 = extractvalue %dx.types.ResRet.f32 %5463, 1
  %5466 = extractvalue %dx.types.ResRet.f32 %5463, 2
  %5467 = add nuw nsw i32 %5461, 60
  %5468 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %5467, i32 undef)  ; BufferLoad(srv,index,wot)
  %5469 = extractvalue %dx.types.ResRet.f32 %5468, 0
  %5470 = extractvalue %dx.types.ResRet.f32 %5468, 1
  %5471 = extractvalue %dx.types.ResRet.f32 %5468, 2
  %5472 = fmul fast float %5464, %5454
  %5473 = fmul fast float %5465, %5454
  %5474 = fmul fast float %5466, %5454
  %5475 = fadd fast float %5472, %5428
  %5476 = fadd fast float %5473, %5429
  %5477 = fadd fast float %5474, %5430
  %5478 = fmul fast float %5469, %5454
  %5479 = fmul fast float %5470, %5454
  %5480 = fmul fast float %5471, %5454
  %5481 = fadd fast float %5478, %5431
  %5482 = fadd fast float %5479, %5432
  %5483 = fadd fast float %5480, %5433
  br label %5484

; <label>:5484                                    ; preds = %5456, %5427
  %5485 = phi float [ %5475, %5456 ], [ %5428, %5427 ]
  %5486 = phi float [ %5476, %5456 ], [ %5429, %5427 ]
  %5487 = phi float [ %5477, %5456 ], [ %5430, %5427 ]
  %5488 = phi float [ %5481, %5456 ], [ %5431, %5427 ]
  %5489 = phi float [ %5482, %5456 ], [ %5432, %5427 ]
  %5490 = phi float [ %5483, %5456 ], [ %5433, %5427 ]
  %5491 = add nuw i32 %5434, 1
  %5492 = icmp eq i32 %5491, %5416
  br i1 %5492, label %5493, label %5427

; <label>:5493                                    ; preds = %5484
  br label %5494

; <label>:5494                                    ; preds = %5493, %5357
  %5495 = phi float [ 0.000000e+00, %5357 ], [ %5485, %5493 ]
  %5496 = phi float [ 0.000000e+00, %5357 ], [ %5486, %5493 ]
  %5497 = phi float [ 0.000000e+00, %5357 ], [ %5487, %5493 ]
  %5498 = phi float [ 0.000000e+00, %5357 ], [ %5488, %5493 ]
  %5499 = phi float [ 0.000000e+00, %5357 ], [ %5489, %5493 ]
  %5500 = phi float [ 0.000000e+00, %5357 ], [ %5490, %5493 ]
  %5501 = fadd fast float %5498, %5495
  %5502 = fmul fast float %5501, 0x3F847AE140000000
  %5503 = fadd fast float %5499, %5496
  %5504 = fmul fast float %5503, 0x3F847AE140000000
  %5505 = fadd fast float %5500, %5497
  %5506 = fmul fast float %5505, 0x3F847AE140000000
  br label %5507

; <label>:5507                                    ; preds = %5494, %5291, %5236, %5233, %5204, %5166
  %5508 = phi float [ %5228, %5204 ], [ 0.000000e+00, %5166 ], [ %5502, %5494 ], [ 0.000000e+00, %5236 ], [ 0.000000e+00, %5291 ], [ 0.000000e+00, %5233 ]
  %5509 = phi float [ %5230, %5204 ], [ 0.000000e+00, %5166 ], [ %5504, %5494 ], [ 0.000000e+00, %5236 ], [ 0.000000e+00, %5291 ], [ 0.000000e+00, %5233 ]
  %5510 = phi float [ %5232, %5204 ], [ 0.000000e+00, %5166 ], [ %5506, %5494 ], [ 0.000000e+00, %5236 ], [ 0.000000e+00, %5291 ], [ 0.000000e+00, %5233 ]
  %5511 = phi float [ %5218, %5204 ], [ -1.310720e+05, %5166 ], [ %5410, %5494 ], [ -1.310720e+05, %5236 ], [ -1.310720e+05, %5291 ], [ -1.310720e+05, %5233 ]
  %5512 = phi i1 [ true, %5204 ], [ false, %5166 ], [ true, %5494 ], [ false, %5236 ], [ false, %5291 ], [ false, %5233 ]
  %5513 = and i32 %202, 3
  %5514 = icmp eq i32 %5513, 1
  %5515 = select i1 %5514, float 1.000000e+00, float 0.000000e+00
  %5516 = fsub fast float %5511, %166
  %5517 = call float @dx.op.unary.f32(i32 7, float %5516)  ; Saturate(value)
  %5518 = select i1 %5512, float %5517, float 1.000000e+00
  %5519 = fmul fast float %5518, %5515
  %5520 = icmp eq i32 %5513, 3
  %5521 = select i1 %5520, float 1.000000e+00, float %5519
  %5522 = call float @dx.op.binary.f32(i32 35, float %5079, float %5521)  ; FMax(a,b)
  %5523 = call float @dx.op.unary.f32(i32 7, float %5522)  ; Saturate(value)
  %5524 = fcmp fast une float %5523, 0.000000e+00
  %5525 = call float @dx.op.dot3.f32(i32 55, float %164, float %165, float %166, float %164, float %165, float %166)  ; Dot3(ax,ay,az,bx,by,bz)
  %5526 = call float @dx.op.unary.f32(i32 25, float %5525)  ; Rsqrt(value)
  br i1 %5524, label %5534, label %5527

; <label>:5527                                    ; preds = %5507
  %5528 = fmul fast float %5526, %164
  %5529 = fmul fast float %5526, %165
  %5530 = fmul fast float %5526, %166
  %5531 = fsub fast float -0.000000e+00, %5528
  %5532 = fsub fast float -0.000000e+00, %5529
  %5533 = fsub fast float -0.000000e+00, %5530
  br label %5702

; <label>:5534                                    ; preds = %5507
  %5535 = fmul fast float %164, %5526
  %5536 = fsub fast float -0.000000e+00, %5535
  %5537 = fmul fast float %165, %5526
  %5538 = fsub fast float -0.000000e+00, %5537
  %5539 = fmul fast float %166, %5526
  %5540 = fsub fast float -0.000000e+00, %5539
  %5541 = call float @dx.op.dot3.f32(i32 55, float %5536, float %5538, float %5540, float %116, float %117, float %118)  ; Dot3(ax,ay,az,bx,by,bz)
  %5542 = fmul fast float %5523, 2.500000e+00
  %5543 = call float @dx.op.unary.f32(i32 7, float %5542)  ; Saturate(value)
  %5544 = fmul fast float %5523, 0x4013FFFFE0000000
  %5545 = fadd fast float %5544, 0xBFFFFFFFE0000000
  %5546 = call float @dx.op.unary.f32(i32 7, float %5545)  ; Saturate(value)
  %5547 = fmul fast float %5523, 0x4004000020000000
  %5548 = fadd fast float %5547, 0xBFF8000040000000
  %5549 = call float @dx.op.unary.f32(i32 7, float %5548)  ; Saturate(value)
  %5550 = call float @dx.op.unary.f32(i32 7, float %5543)  ; Saturate(value)
  %5551 = fmul fast float %5083, 1.000000e+01
  %5552 = call float @dx.op.unary.f32(i32 7, float %5551)  ; Saturate(value)
  %5553 = fmul fast float %5552, 2.000000e+00
  %5554 = fsub fast float 3.000000e+00, %5553
  %5555 = fmul fast float %5552, %5552
  %5556 = fmul fast float %5555, %5554
  %5557 = fsub fast float 1.000000e+00, %5556
  %5558 = fsub fast float 0x3FE3333340000000, %5104
  %5559 = fmul fast float %5558, 0x400AAAAAA0000000
  %5560 = call float @dx.op.unary.f32(i32 7, float %5559)  ; Saturate(value)
  %5561 = fmul fast float %5557, %5560
  %5562 = fmul fast float %5141, 0x3FEA2B8620000000
  %5563 = fmul fast float %5142, 0x3FEA2B8620000000
  %5564 = fmul fast float %5143, 0x3FEA2B8620000000
  %5565 = fadd fast float %5562, 0x3FC81DFBA0000000
  %5566 = fmul fast float %5565, %5141
  %5567 = fadd fast float %5566, 0x3F910E6020000000
  %5568 = fadd fast float %5563, 0x3FC81DFBA0000000
  %5569 = fmul fast float %5568, %5142
  %5570 = fadd fast float %5569, 0x3F910E6020000000
  %5571 = fadd fast float %5564, 0x3FC81DFBA0000000
  %5572 = fmul fast float %5571, %5143
  %5573 = fadd fast float %5572, 0x3F910E6020000000
  %5574 = call float @dx.op.unary.f32(i32 7, float %5567)  ; Saturate(value)
  %5575 = call float @dx.op.unary.f32(i32 7, float %5570)  ; Saturate(value)
  %5576 = call float @dx.op.unary.f32(i32 7, float %5573)  ; Saturate(value)
  %5577 = fsub fast float %5574, %5141
  %5578 = fsub fast float %5575, %5142
  %5579 = fsub fast float %5576, %5143
  %5580 = fmul fast float %5577, %5550
  %5581 = fmul fast float %5580, %5561
  %5582 = fmul fast float %5578, %5550
  %5583 = fmul fast float %5582, %5561
  %5584 = fmul fast float %5579, %5550
  %5585 = fmul fast float %5584, %5561
  %5586 = fadd fast float %5581, %5141
  %5587 = fadd fast float %5583, %5142
  %5588 = fadd fast float %5585, %5143
  %5589 = fmul fast float %5076, %5076
  %5590 = fmul fast float %5589, %5589
  %5591 = fadd fast float %5546, 1.000000e+00
  %5592 = fsub fast float %5591, %5561
  %5593 = call float @dx.op.unary.f32(i32 7, float %5592)  ; Saturate(value)
  %5594 = call float @dx.op.dot3.f32(i32 55, float %116, float %117, float %118, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5595 = call float @dx.op.unary.f32(i32 7, float %5594)  ; Saturate(value)
  %5596 = fsub fast float 1.000000e+00, %5590
  %5597 = call float @dx.op.binary.f32(i32 36, float %5593, float %5596)  ; FMin(a,b)
  %5598 = call float @dx.op.unary.f32(i32 7, float %5549)  ; Saturate(value)
  %5599 = call float @dx.op.binary.f32(i32 35, float %5597, float %5598)  ; FMax(a,b)
  %5600 = fadd fast float %5595, 0xBFE4CCCCC0000000
  %5601 = fmul fast float %5600, 0x4006DB6DA0000000
  %5602 = call float @dx.op.unary.f32(i32 7, float %5601)  ; Saturate(value)
  %5603 = fmul fast float %5602, 2.000000e+00
  %5604 = fsub fast float 3.000000e+00, %5603
  %5605 = bitcast float %5101 to i32
  %5606 = ashr i32 %5605, 1
  %5607 = add nsw i32 %5606, 532487669
  %5608 = bitcast i32 %5607 to float
  %5609 = fsub fast float 1.000000e+00, %5608
  %5610 = bitcast float %5609 to i32
  %5611 = sub nsw i32 2129859010, %5610
  %5612 = bitcast i32 %5611 to float
  %5613 = fmul fast float %5612, 2.000000e+00
  %5614 = bitcast float %5102 to i32
  %5615 = ashr i32 %5614, 1
  %5616 = add nsw i32 %5615, 532487669
  %5617 = bitcast i32 %5616 to float
  %5618 = fsub fast float 1.000000e+00, %5617
  %5619 = bitcast float %5618 to i32
  %5620 = sub nsw i32 2129859010, %5619
  %5621 = bitcast i32 %5620 to float
  %5622 = fmul fast float %5621, 2.000000e+00
  %5623 = bitcast float %5103 to i32
  %5624 = ashr i32 %5623, 1
  %5625 = add nsw i32 %5624, 532487669
  %5626 = bitcast i32 %5625 to float
  %5627 = fsub fast float 1.000000e+00, %5626
  %5628 = bitcast float %5627 to i32
  %5629 = sub nsw i32 2129859010, %5628
  %5630 = bitcast i32 %5629 to float
  %5631 = fmul fast float %5630, 2.000000e+00
  %5632 = fsub fast float 0x4002A9FBE0000000, %5613
  %5633 = fadd fast float %5613, 0x3FD54FDF00000000
  %5634 = bitcast float %5633 to i32
  %5635 = sub nsw i32 2129859010, %5634
  %5636 = bitcast i32 %5635 to float
  %5637 = fmul fast float %5636, %5632
  %5638 = fmul fast float %5637, %5637
  %5639 = fsub fast float 0x4002A9FBE0000000, %5622
  %5640 = fadd fast float %5622, 0x3FD54FDF00000000
  %5641 = bitcast float %5640 to i32
  %5642 = sub nsw i32 2129859010, %5641
  %5643 = bitcast i32 %5642 to float
  %5644 = fmul fast float %5643, %5639
  %5645 = fmul fast float %5644, %5644
  %5646 = fsub fast float 0x4002A9FBE0000000, %5631
  %5647 = fadd fast float %5631, 0x3FD54FDF00000000
  %5648 = bitcast float %5647 to i32
  %5649 = sub nsw i32 2129859010, %5648
  %5650 = bitcast i32 %5649 to float
  %5651 = fmul fast float %5650, %5646
  %5652 = fmul fast float %5651, %5651
  %5653 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5638)  ; FMax(a,b)
  %5654 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5645)  ; FMax(a,b)
  %5655 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5652)  ; FMax(a,b)
  %5656 = fsub fast float 1.000000e+00, %5541
  %5657 = fadd fast float %5656, %5557
  %5658 = call float @dx.op.unary.f32(i32 7, float %5657)  ; Saturate(value)
  %5659 = fsub fast float 1.000000e+00, %5521
  %5660 = fmul fast float %5599, %5659
  %5661 = fmul fast float %5602, %5602
  %5662 = fmul fast float %5661, %5660
  %5663 = fmul fast float %5662, %5604
  %5664 = fmul fast float %5659, 0xBFE99999A0000000
  %5665 = fmul fast float %5664, %5550
  %5666 = fmul fast float %5665, %5561
  %5667 = fadd fast float %5666, 1.000000e+00
  %5668 = fadd fast float %5104, -1.000000e+00
  %5669 = fmul fast float %5667, %5668
  %5670 = fadd fast float %5669, 1.000000e+00
  %5671 = fsub fast float %5653, %5101
  %5672 = fsub fast float %5654, %5102
  %5673 = fsub fast float %5655, %5103
  %5674 = fmul fast float %5663, %5671
  %5675 = fmul fast float %5663, %5672
  %5676 = fmul fast float %5663, %5673
  %5677 = fadd fast float %5674, %5101
  %5678 = fadd fast float %5675, %5102
  %5679 = fadd fast float %5676, %5103
  %5680 = fsub fast float %116, %5058
  %5681 = fsub fast float %117, %5059
  %5682 = fsub fast float %118, %5060
  %5683 = fmul fast float %5663, %5680
  %5684 = fmul fast float %5663, %5681
  %5685 = fmul fast float %5663, %5682
  %5686 = fadd fast float %5683, %5058
  %5687 = fadd fast float %5684, %5059
  %5688 = fadd fast float %5685, %5060
  %5689 = fmul fast float %5663, %5658
  %5690 = call float @dx.op.unary.f32(i32 7, float %5670)  ; Saturate(value)
  %5691 = fsub fast float 1.000000e+00, %5690
  %5692 = fmul fast float %5689, %5691
  %5693 = fadd fast float %5692, %5690
  %5694 = fsub fast float 1.000000e+00, %5076
  %5695 = fmul fast float %5663, %5694
  %5696 = fadd fast float %5695, %5076
  %5697 = call float @dx.op.dot3.f32(i32 55, float %5686, float %5687, float %5688, float %5686, float %5687, float %5688)  ; Dot3(ax,ay,az,bx,by,bz)
  %5698 = call float @dx.op.unary.f32(i32 25, float %5697)  ; Rsqrt(value)
  %5699 = fmul fast float %5686, %5698
  %5700 = fmul fast float %5687, %5698
  %5701 = fmul fast float %5688, %5698
  br label %5702

; <label>:5702                                    ; preds = %5534, %5527
  %5703 = phi float [ %5533, %5527 ], [ %5540, %5534 ]
  %5704 = phi float [ %5532, %5527 ], [ %5538, %5534 ]
  %5705 = phi float [ %5531, %5527 ], [ %5536, %5534 ]
  %5706 = phi float [ %5530, %5527 ], [ %5539, %5534 ]
  %5707 = phi float [ %5529, %5527 ], [ %5537, %5534 ]
  %5708 = phi float [ %5528, %5527 ], [ %5535, %5534 ]
  %5709 = phi float [ %5141, %5527 ], [ %5586, %5534 ]
  %5710 = phi float [ %5142, %5527 ], [ %5587, %5534 ]
  %5711 = phi float [ %5143, %5527 ], [ %5588, %5534 ]
  %5712 = phi float [ %5101, %5527 ], [ %5677, %5534 ]
  %5713 = phi float [ %5102, %5527 ], [ %5678, %5534 ]
  %5714 = phi float [ %5103, %5527 ], [ %5679, %5534 ]
  %5715 = phi float [ %5058, %5527 ], [ %5699, %5534 ]
  %5716 = phi float [ %5059, %5527 ], [ %5700, %5534 ]
  %5717 = phi float [ %5060, %5527 ], [ %5701, %5534 ]
  %5718 = phi float [ %5104, %5527 ], [ %5693, %5534 ]
  %5719 = phi float [ %5076, %5527 ], [ %5696, %5534 ]
  %5720 = fsub fast float -0.000000e+00, %166
  %5721 = select i1 %226, float 0.000000e+00, float %5714
  %5722 = call float @dx.op.dot3.f32(i32 55, float %5715, float %5716, float %5717, float %5705, float %5704, float %5703)  ; Dot3(ax,ay,az,bx,by,bz)
  %5723 = call float @dx.op.unary.f32(i32 7, float %5722)  ; Saturate(value)
  %5724 = call float @dx.op.dot3.f32(i32 55, float %5708, float %5707, float %5706, float %5715, float %5716, float %5717)  ; Dot3(ax,ay,az,bx,by,bz)
  %5725 = fmul fast float %5724, 2.000000e+00
  %5726 = fmul fast float %5725, %5715
  %5727 = fmul fast float %5725, %5716
  %5728 = fmul fast float %5725, %5717
  %5729 = fsub fast float %5708, %5726
  %5730 = fsub fast float %5707, %5727
  %5731 = fsub fast float %5706, %5728
  %5732 = call float @dx.op.binary.f32(i32 36, float %5719, float 1.000000e+00)  ; FMin(a,b)
  %5733 = fsub fast float 1.000000e+00, %5732
  %5734 = bitcast float %5733 to i32
  %5735 = ashr i32 %5734, 1
  %5736 = add nsw i32 %5735, 532487669
  %5737 = bitcast i32 %5736 to float
  %5738 = fsub fast float 1.000000e+00, %5718
  %5739 = call float @dx.op.binary.f32(i32 35, float %5738, float 0x3F847AE140000000)  ; FMax(a,b)
  %5740 = fmul fast float %5739, %5739
  %5741 = fmul fast float %5740, %5740
  %5742 = call float @dx.op.unary.f32(i32 7, float %5723)  ; Saturate(value)
  %5743 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %54, float %5737, float %5741, float %5742, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5744 = extractvalue %dx.types.ResRet.f32 %5743, 0
  %5745 = fsub fast float 1.000000e+00, %5719
  %5746 = bitcast float %5745 to i32
  %5747 = sub nsw i32 2129859010, %5746
  %5748 = bitcast i32 %5747 to float
  %5749 = call float @dx.op.dot3.f32(i32 55, float %77, float %73, float %69, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5750 = fmul fast float %5749, 0x3FD20DD760000000
  %5751 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %77)  ; FMax(a,b)
  %5752 = call float @dx.op.dot3.f32(i32 55, float %78, float %79, float %80, float %78, float %79, float %80)  ; Dot3(ax,ay,az,bx,by,bz)
  %5753 = fcmp fast oeq float %5752, 0.000000e+00
  %5754 = fcmp fast oeq float %5751, 0.000000e+00
  %5755 = or i1 %5754, %5753
  br i1 %5755, label %5785, label %5756

; <label>:5756                                    ; preds = %5702
  %5757 = fsub fast float -0.000000e+00, %80
  %5758 = fsub fast float -0.000000e+00, %78
  %5759 = call float @dx.op.unary.f32(i32 24, float %5752)  ; Sqrt(value)
  %5760 = fdiv fast float %5759, %5751
  %5761 = fcmp fast ogt float %5760, 0x3FFB6F8900000000
  %5762 = select i1 %5761, float 0x3FFB6F8900000000, float %5760
  %5763 = fmul fast float %5762, 0x3FE8A23460000000
  %5764 = call float @dx.op.unary.f32(i32 7, float %5763)  ; Saturate(value)
  %5765 = call float @dx.op.binary.f32(i32 35, float %5762, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5766 = fmul fast float %5764, %5751
  %5767 = fmul fast float %5765, 0x3FF279A740000000
  %5768 = fadd fast float %5767, -1.000000e+00
  %5769 = call float @dx.op.dot3.f32(i32 55, float %5757, float %5758, float %79, float %5757, float %5758, float %79)  ; Dot3(ax,ay,az,bx,by,bz)
  %5770 = call float @dx.op.unary.f32(i32 25, float %5769)  ; Rsqrt(value)
  %5771 = fmul fast float %5770, %5757
  %5772 = fmul fast float %5770, %5758
  %5773 = fmul fast float %5770, %79
  %5774 = fmul fast float %5768, %5768
  %5775 = fsub fast float 1.000000e+00, %5774
  %5776 = fmul fast float %5765, 0x40005F8BE0000000
  %5777 = fsub fast float 0x400C5BF8A0000000, %5776
  %5778 = fdiv fast float %5766, %5777
  %5779 = fmul fast float %5778, 0x3FEE31C3C0000000
  %5780 = fmul fast float %5779, %5775
  %5781 = fmul fast float %5765, 0x3FDACB7480000000
  %5782 = fadd fast float %5781, 0xBFD7347680000000
  %5783 = fmul fast float %5782, %5778
  %5784 = fmul fast float %5783, %5775
  br label %5785

; <label>:5785                                    ; preds = %5756, %5702
  %5786 = phi float [ %5771, %5756 ], [ 0.000000e+00, %5702 ]
  %5787 = phi float [ %5772, %5756 ], [ 0.000000e+00, %5702 ]
  %5788 = phi float [ %5773, %5756 ], [ 0.000000e+00, %5702 ]
  %5789 = phi float [ %5780, %5756 ], [ 0.000000e+00, %5702 ]
  %5790 = phi float [ %5784, %5756 ], [ 0.000000e+00, %5702 ]
  %5791 = call float @dx.op.dot3.f32(i32 55, float %5786, float %5787, float %5788, float %5715, float %5716, float %5717)  ; Dot3(ax,ay,az,bx,by,bz)
  %5792 = fmul fast float %5791, 0x3FDF454380000000
  %5793 = fmul fast float %5791, %5791
  %5794 = fmul fast float %5793, 0x3FEE471020000000
  %5795 = fadd fast float %5794, 0xBFD42F6020000000
  %5796 = fmul fast float %5751, 0x3FD20DD760000000
  %5797 = fmul fast float %5795, %5790
  %5798 = fadd fast float %5797, %5796
  %5799 = fmul fast float %5792, %5789
  %5800 = fadd fast float %5798, %5799
  %5801 = fsub fast float %5798, %5799
  %5802 = call float @dx.op.dot3.f32(i32 55, float %5786, float %5787, float %5788, float %5729, float %5730, float %5731)  ; Dot3(ax,ay,az,bx,by,bz)
  %5803 = fmul fast float %5802, 0x3FDF454380000000
  %5804 = fmul fast float %5802, %5802
  %5805 = fmul fast float %5804, 0x3FEE471020000000
  %5806 = fadd fast float %5805, 0xBFD42F6020000000
  %5807 = call float @dx.op.dot3.f32(i32 55, float %5751, float %5789, float %5790, float 0x3FD20DD760000000, float %5803, float %5806)  ; Dot3(ax,ay,az,bx,by,bz)
  %5808 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %73)  ; FMax(a,b)
  %5809 = call float @dx.op.dot3.f32(i32 55, float %74, float %75, float %76, float %74, float %75, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %5810 = fcmp fast oeq float %5809, 0.000000e+00
  %5811 = fcmp fast oeq float %5808, 0.000000e+00
  %5812 = or i1 %5811, %5810
  br i1 %5812, label %5842, label %5813

; <label>:5813                                    ; preds = %5785
  %5814 = fsub fast float -0.000000e+00, %76
  %5815 = fsub fast float -0.000000e+00, %74
  %5816 = call float @dx.op.unary.f32(i32 24, float %5809)  ; Sqrt(value)
  %5817 = fdiv fast float %5816, %5808
  %5818 = fcmp fast ogt float %5817, 0x3FFB6F8900000000
  %5819 = select i1 %5818, float 0x3FFB6F8900000000, float %5817
  %5820 = fmul fast float %5819, 0x3FE8A23460000000
  %5821 = call float @dx.op.unary.f32(i32 7, float %5820)  ; Saturate(value)
  %5822 = call float @dx.op.binary.f32(i32 35, float %5819, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5823 = fmul fast float %5821, %5808
  %5824 = fmul fast float %5822, 0x3FF279A740000000
  %5825 = fadd fast float %5824, -1.000000e+00
  %5826 = call float @dx.op.dot3.f32(i32 55, float %5814, float %5815, float %75, float %5814, float %5815, float %75)  ; Dot3(ax,ay,az,bx,by,bz)
  %5827 = call float @dx.op.unary.f32(i32 25, float %5826)  ; Rsqrt(value)
  %5828 = fmul fast float %5827, %5814
  %5829 = fmul fast float %5827, %5815
  %5830 = fmul fast float %5827, %75
  %5831 = fmul fast float %5825, %5825
  %5832 = fsub fast float 1.000000e+00, %5831
  %5833 = fmul fast float %5822, 0x40005F8BE0000000
  %5834 = fsub fast float 0x400C5BF8A0000000, %5833
  %5835 = fdiv fast float %5823, %5834
  %5836 = fmul fast float %5835, 0x3FEE31C3C0000000
  %5837 = fmul fast float %5836, %5832
  %5838 = fmul fast float %5822, 0x3FDACB7480000000
  %5839 = fadd fast float %5838, 0xBFD7347680000000
  %5840 = fmul fast float %5839, %5835
  %5841 = fmul fast float %5840, %5832
  br label %5842

; <label>:5842                                    ; preds = %5813, %5785
  %5843 = phi float [ %5828, %5813 ], [ 0.000000e+00, %5785 ]
  %5844 = phi float [ %5829, %5813 ], [ 0.000000e+00, %5785 ]
  %5845 = phi float [ %5830, %5813 ], [ 0.000000e+00, %5785 ]
  %5846 = phi float [ %5837, %5813 ], [ 0.000000e+00, %5785 ]
  %5847 = phi float [ %5841, %5813 ], [ 0.000000e+00, %5785 ]
  %5848 = call float @dx.op.dot3.f32(i32 55, float %5843, float %5844, float %5845, float %5715, float %5716, float %5717)  ; Dot3(ax,ay,az,bx,by,bz)
  %5849 = fmul fast float %5848, 0x3FDF454380000000
  %5850 = fmul fast float %5848, %5848
  %5851 = fmul fast float %5850, 0x3FEE471020000000
  %5852 = fadd fast float %5851, 0xBFD42F6020000000
  %5853 = fmul fast float %5808, 0x3FD20DD760000000
  %5854 = fmul fast float %5852, %5847
  %5855 = fadd fast float %5854, %5853
  %5856 = fmul fast float %5849, %5846
  %5857 = fadd fast float %5855, %5856
  %5858 = fsub fast float %5855, %5856
  %5859 = call float @dx.op.dot3.f32(i32 55, float %5843, float %5844, float %5845, float %5729, float %5730, float %5731)  ; Dot3(ax,ay,az,bx,by,bz)
  %5860 = fmul fast float %5859, 0x3FDF454380000000
  %5861 = fmul fast float %5859, %5859
  %5862 = fmul fast float %5861, 0x3FEE471020000000
  %5863 = fadd fast float %5862, 0xBFD42F6020000000
  %5864 = call float @dx.op.dot3.f32(i32 55, float %5808, float %5846, float %5847, float 0x3FD20DD760000000, float %5860, float %5863)  ; Dot3(ax,ay,az,bx,by,bz)
  %5865 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %69)  ; FMax(a,b)
  %5866 = call float @dx.op.dot3.f32(i32 55, float %70, float %71, float %72, float %70, float %71, float %72)  ; Dot3(ax,ay,az,bx,by,bz)
  %5867 = fcmp fast oeq float %5866, 0.000000e+00
  %5868 = fcmp fast oeq float %5865, 0.000000e+00
  %5869 = or i1 %5868, %5867
  br i1 %5869, label %5899, label %5870

; <label>:5870                                    ; preds = %5842
  %5871 = fsub fast float -0.000000e+00, %72
  %5872 = fsub fast float -0.000000e+00, %70
  %5873 = call float @dx.op.unary.f32(i32 24, float %5866)  ; Sqrt(value)
  %5874 = fdiv fast float %5873, %5865
  %5875 = fcmp fast ogt float %5874, 0x3FFB6F8900000000
  %5876 = select i1 %5875, float 0x3FFB6F8900000000, float %5874
  %5877 = fmul fast float %5876, 0x3FE8A23460000000
  %5878 = call float @dx.op.unary.f32(i32 7, float %5877)  ; Saturate(value)
  %5879 = call float @dx.op.binary.f32(i32 35, float %5876, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5880 = fmul fast float %5878, %5865
  %5881 = fmul fast float %5879, 0x3FF279A740000000
  %5882 = fadd fast float %5881, -1.000000e+00
  %5883 = call float @dx.op.dot3.f32(i32 55, float %5871, float %5872, float %71, float %5871, float %5872, float %71)  ; Dot3(ax,ay,az,bx,by,bz)
  %5884 = call float @dx.op.unary.f32(i32 25, float %5883)  ; Rsqrt(value)
  %5885 = fmul fast float %5884, %5871
  %5886 = fmul fast float %5884, %5872
  %5887 = fmul fast float %5884, %71
  %5888 = fmul fast float %5882, %5882
  %5889 = fsub fast float 1.000000e+00, %5888
  %5890 = fmul fast float %5879, 0x40005F8BE0000000
  %5891 = fsub fast float 0x400C5BF8A0000000, %5890
  %5892 = fdiv fast float %5880, %5891
  %5893 = fmul fast float %5892, 0x3FEE31C3C0000000
  %5894 = fmul fast float %5893, %5889
  %5895 = fmul fast float %5879, 0x3FDACB7480000000
  %5896 = fadd fast float %5895, 0xBFD7347680000000
  %5897 = fmul fast float %5896, %5892
  %5898 = fmul fast float %5897, %5889
  br label %5899

; <label>:5899                                    ; preds = %5870, %5842
  %5900 = phi float [ %5885, %5870 ], [ 0.000000e+00, %5842 ]
  %5901 = phi float [ %5886, %5870 ], [ 0.000000e+00, %5842 ]
  %5902 = phi float [ %5887, %5870 ], [ 0.000000e+00, %5842 ]
  %5903 = phi float [ %5894, %5870 ], [ 0.000000e+00, %5842 ]
  %5904 = phi float [ %5898, %5870 ], [ 0.000000e+00, %5842 ]
  %5905 = call float @dx.op.dot3.f32(i32 55, float %5900, float %5901, float %5902, float %5715, float %5716, float %5717)  ; Dot3(ax,ay,az,bx,by,bz)
  %5906 = fmul fast float %5905, 0x3FDF454380000000
  %5907 = fmul fast float %5905, %5905
  %5908 = fmul fast float %5907, 0x3FEE471020000000
  %5909 = fadd fast float %5908, 0xBFD42F6020000000
  %5910 = fmul fast float %5865, 0x3FD20DD760000000
  %5911 = fmul fast float %5909, %5904
  %5912 = fadd fast float %5911, %5910
  %5913 = fmul fast float %5906, %5903
  %5914 = fadd fast float %5912, %5913
  %5915 = fsub fast float %5912, %5913
  %5916 = call float @dx.op.dot3.f32(i32 55, float %5900, float %5901, float %5902, float %5729, float %5730, float %5731)  ; Dot3(ax,ay,az,bx,by,bz)
  %5917 = fmul fast float %5916, 0x3FDF454380000000
  %5918 = fmul fast float %5916, %5916
  %5919 = fmul fast float %5918, 0x3FEE471020000000
  %5920 = fadd fast float %5919, 0xBFD42F6020000000
  %5921 = call float @dx.op.dot3.f32(i32 55, float %5865, float %5903, float %5904, float 0x3FD20DD760000000, float %5917, float %5920)  ; Dot3(ax,ay,az,bx,by,bz)
  %5922 = call float @dx.op.binary.f32(i32 35, float %5800, float 0.000000e+00)  ; FMax(a,b)
  %5923 = call float @dx.op.binary.f32(i32 35, float %5857, float 0.000000e+00)  ; FMax(a,b)
  %5924 = call float @dx.op.binary.f32(i32 35, float %5914, float 0.000000e+00)  ; FMax(a,b)
  %5925 = call float @dx.op.binary.f32(i32 35, float %5801, float 0.000000e+00)  ; FMax(a,b)
  %5926 = call float @dx.op.binary.f32(i32 35, float %5858, float 0.000000e+00)  ; FMax(a,b)
  %5927 = call float @dx.op.binary.f32(i32 35, float %5915, float 0.000000e+00)  ; FMax(a,b)
  %5928 = call float @dx.op.binary.f32(i32 35, float %5807, float 0.000000e+00)  ; FMax(a,b)
  %5929 = call float @dx.op.binary.f32(i32 35, float %5864, float 0.000000e+00)  ; FMax(a,b)
  %5930 = call float @dx.op.binary.f32(i32 35, float %5921, float 0.000000e+00)  ; FMax(a,b)
  %5931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5932 = extractvalue %dx.types.CBufRet.f32 %5931, 0
  %5933 = call float @dx.op.binary.f32(i32 36, float %5709, float %5932)  ; FMin(a,b)
  %5934 = fmul fast float %5933, %5733
  %5935 = fsub fast float 1.000000e+00, %5934
  %5936 = bitcast float %5935 to i32
  %5937 = sub nsw i32 2129859010, %5936
  %5938 = bitcast i32 %5937 to float
  %5939 = call float @dx.op.binary.f32(i32 36, float %5710, float %5932)  ; FMin(a,b)
  %5940 = fmul fast float %5939, %5733
  %5941 = fsub fast float 1.000000e+00, %5940
  %5942 = bitcast float %5941 to i32
  %5943 = sub nsw i32 2129859010, %5942
  %5944 = bitcast i32 %5943 to float
  %5945 = call float @dx.op.binary.f32(i32 36, float %5711, float %5932)  ; FMin(a,b)
  %5946 = fmul fast float %5945, %5733
  %5947 = fsub fast float 1.000000e+00, %5946
  %5948 = bitcast float %5947 to i32
  %5949 = sub nsw i32 2129859010, %5948
  %5950 = bitcast i32 %5949 to float
  %5951 = fmul fast float %5922, %5732
  %5952 = fmul fast float %5951, %5938
  %5953 = fmul fast float %5923, %5732
  %5954 = fmul fast float %5953, %5944
  %5955 = fmul fast float %5924, %5732
  %5956 = fmul fast float %5955, %5950
  %5957 = call float @dx.op.binary.f32(i32 36, float %5712, float %5932)  ; FMin(a,b)
  %5958 = fmul fast float %5957, %5733
  %5959 = fsub fast float 1.000000e+00, %5958
  %5960 = bitcast float %5959 to i32
  %5961 = sub nsw i32 2129859010, %5960
  %5962 = bitcast i32 %5961 to float
  %5963 = call float @dx.op.binary.f32(i32 36, float %5713, float %5932)  ; FMin(a,b)
  %5964 = fmul fast float %5963, %5733
  %5965 = fsub fast float 1.000000e+00, %5964
  %5966 = bitcast float %5965 to i32
  %5967 = sub nsw i32 2129859010, %5966
  %5968 = bitcast i32 %5967 to float
  %5969 = call float @dx.op.binary.f32(i32 36, float %5721, float %5932)  ; FMin(a,b)
  %5970 = fmul fast float %5969, %5733
  %5971 = fsub fast float 1.000000e+00, %5970
  %5972 = bitcast float %5971 to i32
  %5973 = sub nsw i32 2129859010, %5972
  %5974 = bitcast i32 %5973 to float
  %5975 = fmul fast float %5928, %5732
  %5976 = fmul fast float %5975, %5962
  %5977 = fmul fast float %5929, %5732
  %5978 = fmul fast float %5977, %5968
  %5979 = fmul fast float %5930, %5732
  %5980 = fmul fast float %5979, %5974
  %5981 = call float @dx.op.dot3.f32(i32 55, float %5952, float %5954, float %5956, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5982 = select i1 %226, float 0.000000e+00, float %5952
  %5983 = select i1 %226, float %5981, float %5954
  %5984 = select i1 %226, float 0.000000e+00, float %5956
  %5985 = call float @dx.op.dot3.f32(i32 55, float %5925, float %5926, float %5927, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5986 = select i1 %226, float 0.000000e+00, float %5925
  %5987 = select i1 %226, float %5985, float %5926
  %5988 = select i1 %226, float 0.000000e+00, float %5927
  %5989 = call float @dx.op.dot3.f32(i32 55, float %5976, float %5978, float %5980, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5990 = select i1 %226, float 0.000000e+00, float %5976
  %5991 = select i1 %226, float %5989, float %5978
  %5992 = select i1 %226, float 0.000000e+00, float %5980
  %5993 = fmul fast float %4427, %4427
  %5994 = call float @dx.op.unary.f32(i32 7, float %5993)  ; Saturate(value)
  %5995 = fmul fast float %5723, 9.843750e-01
  %5996 = fmul fast float %5718, 9.843750e-01
  %5997 = fadd fast float %5995, 7.812500e-03
  %5998 = fadd fast float %5996, 7.812500e-03
  %5999 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %5997, float %5998, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6000 = extractvalue %dx.types.ResRet.f32 %5999, 0
  %6001 = extractvalue %dx.types.ResRet.f32 %5999, 1
  %6002 = extractvalue %dx.types.ResRet.f32 %5999, 2
  %6003 = extractvalue %dx.types.ResRet.f32 %5999, 3
  %6004 = fsub fast float 1.000000e+00, %5994
  %6005 = fsub fast float %6002, %6000
  %6006 = fsub fast float %6003, %6001
  %6007 = fmul fast float %6005, %6004
  %6008 = fmul fast float %6006, %6004
  %6009 = fadd fast float %6007, %6000
  %6010 = fadd fast float %6008, %6001
  %6011 = fmul fast float %6009, %5712
  %6012 = fmul fast float %6009, %5713
  %6013 = fmul fast float %6009, %5721
  %6014 = fadd fast float %6011, %6010
  %6015 = fadd fast float %6012, %6010
  %6016 = fadd fast float %6013, %6010
  %6017 = fcmp fast ogt float %5077, 0.000000e+00
  br i1 %6017, label %6018, label %6044

; <label>:6018                                    ; preds = %5899
  %6019 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %5077, float %5723, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6020 = extractvalue %dx.types.ResRet.f32 %6019, 0
  %6021 = extractvalue %dx.types.ResRet.f32 %6019, 1
  %6022 = extractvalue %dx.types.ResRet.f32 %6019, 2
  %6023 = fadd fast float %6020, -5.000000e-01
  %6024 = fadd fast float %6021, -5.000000e-01
  %6025 = fadd fast float %6022, -5.000000e-01
  %6026 = fsub fast float 1.000000e+00, %5712
  %6027 = fsub fast float 1.000000e+00, %5713
  %6028 = fsub fast float 1.000000e+00, %5721
  %6029 = fmul fast float %5712, 4.000000e+00
  %6030 = fmul fast float %6029, %6026
  %6031 = fmul fast float %6030, %6023
  %6032 = fmul fast float %5713, 4.000000e+00
  %6033 = fmul fast float %6032, %6027
  %6034 = fmul fast float %6033, %6024
  %6035 = fmul fast float %5721, 4.000000e+00
  %6036 = fmul fast float %6035, %6028
  %6037 = fmul fast float %6036, %6025
  %6038 = fadd fast float %6031, %6014
  %6039 = fadd fast float %6034, %6015
  %6040 = fadd fast float %6037, %6016
  %6041 = call float @dx.op.unary.f32(i32 7, float %6038)  ; Saturate(value)
  %6042 = call float @dx.op.unary.f32(i32 7, float %6039)  ; Saturate(value)
  %6043 = call float @dx.op.unary.f32(i32 7, float %6040)  ; Saturate(value)
  br label %6044

; <label>:6044                                    ; preds = %6018, %5899
  %6045 = phi float [ %6041, %6018 ], [ %6014, %5899 ]
  %6046 = phi float [ %6042, %6018 ], [ %6015, %5899 ]
  %6047 = phi float [ %6043, %6018 ], [ %6016, %5899 ]
  %6048 = call float @dx.op.binary.f32(i32 35, float %6046, float %6047)  ; FMax(a,b)
  %6049 = call float @dx.op.binary.f32(i32 35, float %6045, float %6048)  ; FMax(a,b)
  %6050 = fsub fast float 1.000000e+00, %6049
  %6051 = fmul fast float %6049, %5718
  %6052 = fadd fast float %6051, %5718
  %6053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %6054 = extractvalue %dx.types.CBufRet.f32 %6053, 2
  %6055 = extractvalue %dx.types.CBufRet.f32 %6053, 3
  %6056 = fmul fast float %6052, %6054
  %6057 = fadd fast float %6056, %6055
  %6058 = call float @dx.op.unary.f32(i32 7, float %6057)  ; Saturate(value)
  %6059 = fsub fast float 1.000000e+00, %5744
  %6060 = fadd fast float %6059, %6058
  %6061 = call float @dx.op.unary.f32(i32 7, float %6060)  ; Saturate(value)
  %6062 = fcmp fast olt float %6061, 1.000000e+00
  br i1 %6062, label %6063, label %6539

; <label>:6063                                    ; preds = %6044
  %6064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %6065 = extractvalue %dx.types.CBufRet.f32 %6064, 2
  %6066 = extractvalue %dx.types.CBufRet.f32 %6064, 3
  %6067 = fmul fast float %6065, %109
  %6068 = fmul fast float %6066, %110
  %6069 = fptoui float %6067 to i32
  %6070 = fptoui float %6068 to i32
  %6071 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6072 = extractvalue %dx.types.CBufRet.f32 %6071, 0
  %6073 = extractvalue %dx.types.CBufRet.f32 %6071, 2
  %6074 = extractvalue %dx.types.CBufRet.f32 %6071, 3
  %6075 = fadd fast float %97, -4.000000e+00
  %6076 = call float @dx.op.binary.f32(i32 35, float %6075, float 0.000000e+00)  ; FMax(a,b)
  %6077 = fadd fast float %6076, %6072
  %6078 = fmul fast float %6077, %6073
  %6079 = call float @dx.op.unary.f32(i32 23, float %6078)  ; Log(value)
  %6080 = fmul fast float %6079, %6074
  %6081 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6082 = extractvalue %dx.types.CBufRet.f32 %6081, 2
  %6083 = fmul fast float %6080, %6082
  %6084 = call float @dx.op.unary.f32(i32 7, float %6083)  ; Saturate(value)
  %6085 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6086 = extractvalue %dx.types.CBufRet.i32 %6085, 1
  %6087 = add i32 %6086, -1
  %6088 = uitofp i32 %6086 to float
  %6089 = fmul fast float %6088, %6084
  %6090 = fptoui float %6089 to i32
  %6091 = call i32 @dx.op.binary.i32(i32 40, i32 %6090, i32 %6087)  ; UMin(a,b)
  %6092 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6093 = extractvalue %dx.types.CBufRet.i32 %6092, 2
  %6094 = extractvalue %dx.types.CBufRet.i32 %6092, 3
  %6095 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6070, i32 %6093, i32 %6069)  ; UMad(a,b,c)
  %6096 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6091, i32 %6094, i32 %6095)  ; UMad(a,b,c)
  %6097 = call float @dx.op.binary.f32(i32 35, float %97, float 0.000000e+00)  ; FMax(a,b)
  %6098 = fptoui float %6097 to i32
  %6099 = lshr i32 %6098, 5
  %6100 = call i32 @dx.op.binary.i32(i32 40, i32 %6099, i32 8191)  ; UMin(a,b)
  %6101 = fsub fast float %5511, %166
  %6102 = call float @dx.op.unary.f32(i32 7, float %6101)  ; Saturate(value)
  %6103 = fcmp fast ogt float %6102, 0.000000e+00
  %6104 = fcmp fast ogt float %5731, 0.000000e+00
  %6105 = and i1 %6104, %6103
  br i1 %6105, label %6106, label %6135

; <label>:6106                                    ; preds = %6063
  %6107 = call float @dx.op.dot3.f32(i32 55, float %5729, float %5730, float %5731, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6108 = call float @dx.op.binary.f32(i32 35, float %6107, float -1.000000e+00)  ; FMax(a,b)
  %6109 = call float @dx.op.binary.f32(i32 36, float %6108, float 1.000000e+00)  ; FMin(a,b)
  %6110 = fmul fast float %6109, %6109
  %6111 = fsub fast float 1.000000e+00, %6110
  %6112 = fmul fast float %6111, 0x3FFC6E2300000000
  %6113 = fsub fast float 1.000000e+00, %6112
  %6114 = fcmp fast ogt float %6113, 0.000000e+00
  %6115 = call float @dx.op.unary.f32(i32 24, float %6113)  ; Sqrt(value)
  %6116 = fsub fast float 1.000000e+00, %6115
  %6117 = call float @dx.op.unary.f32(i32 23, float %6116)  ; Log(value)
  %6118 = fmul fast float %6117, 5.000000e+00
  %6119 = call float @dx.op.unary.f32(i32 21, float %6118)  ; Exp(value)
  %6120 = fmul fast float %6119, 0x3FEF591A60000000
  %6121 = fadd fast float %6120, 0x3F94DCB540000000
  %6122 = select i1 %6114, float %6121, float 1.000000e+00
  %6123 = fcmp fast oge float %6122, 1.000000e+00
  %6124 = fmul fast float %6107, 2.000000e+00
  %6125 = fadd fast float %6124, %5731
  %6126 = select i1 %6123, float %6125, float %5731
  %6127 = fsub fast float %6126, %5731
  %6128 = fmul fast float %6127, %6102
  %6129 = fadd fast float %6128, %5731
  %6130 = call float @dx.op.dot3.f32(i32 55, float %5729, float %5730, float %6129, float %5729, float %5730, float %6129)  ; Dot3(ax,ay,az,bx,by,bz)
  %6131 = call float @dx.op.unary.f32(i32 25, float %6130)  ; Rsqrt(value)
  %6132 = fmul fast float %6131, %5729
  %6133 = fmul fast float %6131, %5730
  %6134 = fmul fast float %6129, %6131
  br label %6135

; <label>:6135                                    ; preds = %6106, %6063
  %6136 = phi float [ %6132, %6106 ], [ %5729, %6063 ]
  %6137 = phi float [ %6133, %6106 ], [ %5730, %6063 ]
  %6138 = phi float [ %6134, %6106 ], [ %5731, %6063 ]
  %6139 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6140 = extractvalue %dx.types.CBufRet.i32 %6139, 2
  %6141 = add nsw i32 %6140, -1
  %6142 = call i32 @dx.op.binary.i32(i32 37, i32 %6141, i32 0)  ; IMax(a,b)
  %6143 = shl i32 %6100, 2
  %6144 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %6143, i32 undef)  ; BufferLoad(srv,index,wot)
  %6145 = extractvalue %dx.types.ResRet.i32 %6144, 0
  %6146 = lshr i32 %6145, 16
  %6147 = and i32 %6145, 65535
  %6148 = lshr i32 %6145, 21
  %6149 = lshr i32 %6147, 5
  %6150 = call i32 @dx.op.binary.i32(i32 40, i32 %6149, i32 %6142)  ; UMin(a,b)
  %6151 = icmp ugt i32 %6148, %6150
  br i1 %6151, label %6515, label %6152

; <label>:6152                                    ; preds = %6135
  br label %6153

; <label>:6153                                    ; preds = %6507, %6152
  %6154 = phi float [ %6508, %6507 ], [ 0.000000e+00, %6152 ]
  %6155 = phi float [ %6509, %6507 ], [ 0.000000e+00, %6152 ]
  %6156 = phi float [ %6510, %6507 ], [ 0.000000e+00, %6152 ]
  %6157 = phi float [ %6511, %6507 ], [ 1.000000e+00, %6152 ]
  %6158 = phi i32 [ %6512, %6507 ], [ %6148, %6152 ]
  %6159 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6160 = extractvalue %dx.types.CBufRet.i32 %6159, 2
  %6161 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6096, i32 %6160, i32 %6158)  ; UMad(a,b,c)
  %6162 = shl i32 %6161, 2
  %6163 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %6162, i32 undef)  ; BufferLoad(srv,index,wot)
  %6164 = extractvalue %dx.types.ResRet.i32 %6163, 0
  %6165 = shl i32 %6158, 5
  %6166 = sub nsw i32 %6146, %6165
  %6167 = call i32 @dx.op.binary.i32(i32 37, i32 %6166, i32 0)  ; IMax(a,b)
  %6168 = call i32 @dx.op.binary.i32(i32 38, i32 %6167, i32 31)  ; IMin(a,b)
  %6169 = sub nsw i32 1, %6146
  %6170 = add nsw i32 %6169, %6147
  %6171 = call i32 @dx.op.binary.i32(i32 37, i32 %6170, i32 0)  ; IMax(a,b)
  %6172 = call i32 @dx.op.binary.i32(i32 38, i32 %6171, i32 32)  ; IMin(a,b)
  %6173 = and i32 %6172, 31
  %6174 = shl i32 -1, %6173
  %6175 = xor i32 %6174, -1
  %6176 = and i32 %6168, 31
  %6177 = shl i32 %6175, %6176
  %6178 = icmp eq i32 %6172, 32
  %6179 = select i1 %6178, i32 -1, i32 %6177
  %6180 = and i32 %6179, %6164
  %6181 = icmp eq i32 %6180, 0
  br i1 %6181, label %6507, label %6182

; <label>:6182                                    ; preds = %6153
  br label %6183

; <label>:6183                                    ; preds = %6290, %6182
  %6184 = phi float [ %6291, %6290 ], [ %6154, %6182 ]
  %6185 = phi float [ %6292, %6290 ], [ %6155, %6182 ]
  %6186 = phi float [ %6293, %6290 ], [ %6156, %6182 ]
  %6187 = phi float [ %6294, %6290 ], [ %6157, %6182 ]
  %6188 = phi i32 [ %6193, %6290 ], [ %6180, %6182 ]
  %6189 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6188)  ; FirstbitLo(value)
  %6190 = add i32 %6189, %6165
  %6191 = and i32 %6189, 31
  %6192 = shl i32 1, %6191
  %6193 = xor i32 %6192, %6188
  %6194 = mul i32 %6190, 72
  %6195 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6194, i32 undef)  ; BufferLoad(srv,index,wot)
  %6196 = extractvalue %dx.types.ResRet.f32 %6195, 0
  %6197 = extractvalue %dx.types.ResRet.f32 %6195, 1
  %6198 = extractvalue %dx.types.ResRet.f32 %6195, 2
  %6199 = add i32 %6194, 12
  %6200 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %6199, i32 undef)  ; BufferLoad(srv,index,wot)
  %6201 = extractvalue %dx.types.ResRet.i32 %6200, 0
  %6202 = add i32 %6194, 16
  %6203 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6202, i32 undef)  ; BufferLoad(srv,index,wot)
  %6204 = extractvalue %dx.types.ResRet.f32 %6203, 0
  %6205 = extractvalue %dx.types.ResRet.f32 %6203, 1
  %6206 = extractvalue %dx.types.ResRet.f32 %6203, 2
  %6207 = add i32 %6194, 28
  %6208 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6207, i32 undef)  ; BufferLoad(srv,index,wot)
  %6209 = extractvalue %dx.types.ResRet.f32 %6208, 0
  %6210 = add i32 %6194, 32
  %6211 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6210, i32 undef)  ; BufferLoad(srv,index,wot)
  %6212 = extractvalue %dx.types.ResRet.f32 %6211, 0
  %6213 = extractvalue %dx.types.ResRet.f32 %6211, 1
  %6214 = extractvalue %dx.types.ResRet.f32 %6211, 2
  %6215 = extractvalue %dx.types.ResRet.f32 %6211, 3
  %6216 = add i32 %6194, 48
  %6217 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6216, i32 undef)  ; BufferLoad(srv,index,wot)
  %6218 = extractvalue %dx.types.ResRet.f32 %6217, 0
  %6219 = extractvalue %dx.types.ResRet.f32 %6217, 1
  %6220 = add i32 %6194, 56
  %6221 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6220, i32 undef)  ; BufferLoad(srv,index,wot)
  %6222 = extractvalue %dx.types.ResRet.f32 %6221, 0
  %6223 = extractvalue %dx.types.ResRet.f32 %6221, 1
  %6224 = add i32 %6194, 64
  %6225 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6224, i32 undef)  ; BufferLoad(srv,index,wot)
  %6226 = extractvalue %dx.types.ResRet.f32 %6225, 0
  %6227 = extractvalue %dx.types.ResRet.f32 %6225, 1
  %6228 = mul i32 %6190, 60
  %6229 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %6228, i32 undef)  ; BufferLoad(srv,index,wot)
  %6230 = extractvalue %dx.types.ResRet.f32 %6229, 0
  %6231 = extractvalue %dx.types.ResRet.f32 %6229, 1
  %6232 = extractvalue %dx.types.ResRet.f32 %6229, 2
  %6233 = add i32 %6228, 12
  %6234 = add i32 %6228, 48
  %6235 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %6234, i32 undef)  ; BufferLoad(srv,index,wot)
  %6236 = extractvalue %dx.types.ResRet.f32 %6235, 0
  %6237 = extractvalue %dx.types.ResRet.f32 %6235, 1
  %6238 = extractvalue %dx.types.ResRet.f32 %6235, 2
  %6239 = and i32 %6201, 32767
  %6240 = bitcast float %6196 to i32
  %6241 = icmp eq i32 %6240, -1
  %6242 = bitcast float %6197 to i32
  %6243 = and i32 %6201, 32768
  %6244 = icmp ne i32 %6243, 0
  %6245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6246 = extractvalue %dx.types.CBufRet.f32 %6245, 0
  %6247 = extractvalue %dx.types.CBufRet.f32 %6245, 1
  %6248 = extractvalue %dx.types.CBufRet.f32 %6245, 2
  %6249 = fsub fast float %6230, %6246
  %6250 = fsub fast float %6231, %6247
  %6251 = fsub fast float %6232, %6248
  %6252 = fsub fast float %164, %6249
  %6253 = fsub fast float %165, %6250
  %6254 = fsub fast float %166, %6251
  %6255 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %6233, i32 undef)  ; BufferLoad(srv,index,wot)
  %6256 = extractvalue %dx.types.ResRet.f32 %6255, 0
  %6257 = extractvalue %dx.types.ResRet.f32 %6255, 1
  %6258 = extractvalue %dx.types.ResRet.f32 %6255, 2
  %6259 = call float @dx.op.dot3.f32(i32 55, float %6252, float %6253, float %6254, float %6256, float %6257, float %6258)  ; Dot3(ax,ay,az,bx,by,bz)
  %6260 = add i32 %6228, 24
  %6261 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %6260, i32 undef)  ; BufferLoad(srv,index,wot)
  %6262 = extractvalue %dx.types.ResRet.f32 %6261, 0
  %6263 = extractvalue %dx.types.ResRet.f32 %6261, 1
  %6264 = extractvalue %dx.types.ResRet.f32 %6261, 2
  %6265 = call float @dx.op.dot3.f32(i32 55, float %6252, float %6253, float %6254, float %6262, float %6263, float %6264)  ; Dot3(ax,ay,az,bx,by,bz)
  %6266 = add i32 %6228, 36
  %6267 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %6266, i32 undef)  ; BufferLoad(srv,index,wot)
  %6268 = extractvalue %dx.types.ResRet.f32 %6267, 0
  %6269 = extractvalue %dx.types.ResRet.f32 %6267, 1
  %6270 = extractvalue %dx.types.ResRet.f32 %6267, 2
  %6271 = call float @dx.op.dot3.f32(i32 55, float %6252, float %6253, float %6254, float %6268, float %6269, float %6270)  ; Dot3(ax,ay,az,bx,by,bz)
  %6272 = call float @dx.op.unary.f32(i32 6, float %6259)  ; FAbs(value)
  %6273 = call float @dx.op.unary.f32(i32 6, float %6265)  ; FAbs(value)
  %6274 = call float @dx.op.unary.f32(i32 6, float %6271)  ; FAbs(value)
  %6275 = fsub fast float %6236, %6272
  %6276 = fsub fast float %6237, %6273
  %6277 = fsub fast float %6238, %6274
  %6278 = fmul fast float %6275, %6204
  %6279 = fmul fast float %6276, %6205
  %6280 = fmul fast float %6277, %6206
  %6281 = call float @dx.op.binary.f32(i32 36, float %6279, float %6280)  ; FMin(a,b)
  %6282 = call float @dx.op.binary.f32(i32 36, float %6278, float %6281)  ; FMin(a,b)
  %6283 = call float @dx.op.unary.f32(i32 7, float %6282)  ; Saturate(value)
  %6284 = call float @dx.op.binary.f32(i32 36, float %6187, float %6283)  ; FMin(a,b)
  %6285 = uitofp i1 %6244 to float
  %6286 = fadd fast float %6102, 1.000000e+00
  %6287 = fsub fast float %6286, %6285
  %6288 = fmul fast float %6284, %6287
  %6289 = fcmp fast ogt float %6288, 0.000000e+00
  br i1 %6289, label %6296, label %6290

; <label>:6290                                    ; preds = %6438, %6183
  %6291 = phi float [ %6502, %6438 ], [ %6184, %6183 ]
  %6292 = phi float [ %6503, %6438 ], [ %6185, %6183 ]
  %6293 = phi float [ %6504, %6438 ], [ %6186, %6183 ]
  %6294 = phi float [ %6505, %6438 ], [ %6187, %6183 ]
  %6295 = icmp eq i32 %6188, %6192
  br i1 %6295, label %6506, label %6183

; <label>:6296                                    ; preds = %6183
  br i1 %6241, label %6354, label %6297

; <label>:6297                                    ; preds = %6296
  %6298 = fsub fast float -0.000000e+00, %6256
  %6299 = fsub fast float -0.000000e+00, %6257
  %6300 = fsub fast float -0.000000e+00, %6258
  %6301 = call float @dx.op.dot3.f32(i32 55, float %6136, float %6137, float %6138, float %6298, float %6299, float %6300)  ; Dot3(ax,ay,az,bx,by,bz)
  %6302 = fsub fast float -0.000000e+00, %6301
  %6303 = call float @dx.op.dot3.f32(i32 55, float %6252, float %6253, float %6254, float %6298, float %6299, float %6300)  ; Dot3(ax,ay,az,bx,by,bz)
  %6304 = fadd fast float %6303, %6219
  %6305 = fadd fast float %6218, %6303
  %6306 = fsub fast float -0.000000e+00, %6305
  %6307 = fcmp ogt float %6301, -0.000000e+00
  %6308 = select i1 %6307, float %6306, float %6304
  %6309 = call float @dx.op.unary.f32(i32 6, float %6302)  ; FAbs(value)
  %6310 = fdiv fast float 1.000000e+00, %6309
  %6311 = fmul fast float %6308, %6310
  %6312 = call float @dx.op.binary.f32(i32 35, float %6311, float 0.000000e+00)  ; FMax(a,b)
  %6313 = fsub fast float -0.000000e+00, %6262
  %6314 = fsub fast float -0.000000e+00, %6263
  %6315 = fsub fast float -0.000000e+00, %6264
  %6316 = call float @dx.op.dot3.f32(i32 55, float %6136, float %6137, float %6138, float %6313, float %6314, float %6315)  ; Dot3(ax,ay,az,bx,by,bz)
  %6317 = fsub fast float -0.000000e+00, %6316
  %6318 = call float @dx.op.dot3.f32(i32 55, float %6252, float %6253, float %6254, float %6313, float %6314, float %6315)  ; Dot3(ax,ay,az,bx,by,bz)
  %6319 = fadd fast float %6318, %6223
  %6320 = fadd fast float %6222, %6318
  %6321 = fsub fast float -0.000000e+00, %6320
  %6322 = fcmp ogt float %6316, -0.000000e+00
  %6323 = select i1 %6322, float %6321, float %6319
  %6324 = call float @dx.op.unary.f32(i32 6, float %6317)  ; FAbs(value)
  %6325 = fdiv fast float 1.000000e+00, %6324
  %6326 = fmul fast float %6323, %6325
  %6327 = call float @dx.op.binary.f32(i32 35, float %6326, float 0.000000e+00)  ; FMax(a,b)
  %6328 = fsub fast float -0.000000e+00, %6268
  %6329 = fsub fast float -0.000000e+00, %6269
  %6330 = fsub fast float -0.000000e+00, %6270
  %6331 = call float @dx.op.dot3.f32(i32 55, float %6136, float %6137, float %6138, float %6328, float %6329, float %6330)  ; Dot3(ax,ay,az,bx,by,bz)
  %6332 = fsub fast float -0.000000e+00, %6331
  %6333 = call float @dx.op.dot3.f32(i32 55, float %6252, float %6253, float %6254, float %6328, float %6329, float %6330)  ; Dot3(ax,ay,az,bx,by,bz)
  %6334 = fadd fast float %6333, %6227
  %6335 = fadd fast float %6226, %6333
  %6336 = fsub fast float -0.000000e+00, %6335
  %6337 = fcmp ogt float %6331, -0.000000e+00
  %6338 = select i1 %6337, float %6336, float %6334
  %6339 = call float @dx.op.unary.f32(i32 6, float %6332)  ; FAbs(value)
  %6340 = fdiv fast float 1.000000e+00, %6339
  %6341 = fmul fast float %6338, %6340
  %6342 = call float @dx.op.binary.f32(i32 35, float %6341, float 0.000000e+00)  ; FMax(a,b)
  %6343 = call float @dx.op.binary.f32(i32 36, float %6327, float %6342)  ; FMin(a,b)
  %6344 = call float @dx.op.binary.f32(i32 36, float %6312, float %6343)  ; FMin(a,b)
  %6345 = fmul fast float %6344, %6136
  %6346 = fmul fast float %6344, %6137
  %6347 = fmul fast float %6344, %6138
  %6348 = fadd fast float %6345, %164
  %6349 = fadd fast float %6346, %165
  %6350 = fadd fast float %6347, %166
  %6351 = fsub fast float %6348, %6196
  %6352 = fsub fast float %6349, %6197
  %6353 = fsub fast float %6350, %6198
  br label %6361

; <label>:6354                                    ; preds = %6296
  %6355 = fmul fast float %6136, 8.096000e+03
  %6356 = fmul fast float %6137, 8.096000e+03
  %6357 = fmul fast float %6138, 8.096000e+03
  %6358 = fadd fast float %6355, %164
  %6359 = fadd fast float %6356, %165
  %6360 = fadd fast float %6357, %166
  br label %6361

; <label>:6361                                    ; preds = %6354, %6297
  %6362 = phi float [ %6136, %6354 ], [ %6351, %6297 ]
  %6363 = phi float [ %6137, %6354 ], [ %6352, %6297 ]
  %6364 = phi float [ %6138, %6354 ], [ %6353, %6297 ]
  %6365 = phi float [ %6358, %6354 ], [ %6348, %6297 ]
  %6366 = phi float [ %6359, %6354 ], [ %6349, %6297 ]
  %6367 = phi float [ %6360, %6354 ], [ %6350, %6297 ]
  %6368 = fcmp fast olt float %6215, 1.000000e+00
  br i1 %6368, label %6369, label %6400, !dx.controlflow.hints !98

; <label>:6369                                    ; preds = %6361
  %6370 = fmul fast float %6364, %6213
  %6371 = fmul fast float %6363, %6214
  %6372 = fsub fast float %6370, %6371
  %6373 = fmul fast float %6362, %6214
  %6374 = fmul fast float %6364, %6212
  %6375 = fsub fast float %6373, %6374
  %6376 = fmul fast float %6363, %6212
  %6377 = fmul fast float %6362, %6213
  %6378 = fsub fast float %6376, %6377
  %6379 = fmul fast float %6372, 2.000000e+00
  %6380 = fmul fast float %6375, 2.000000e+00
  %6381 = fmul fast float %6378, 2.000000e+00
  %6382 = fmul fast float %6379, %6215
  %6383 = fmul fast float %6380, %6215
  %6384 = fmul fast float %6381, %6215
  %6385 = fmul fast float %6381, %6213
  %6386 = fmul fast float %6380, %6214
  %6387 = fmul fast float %6379, %6214
  %6388 = fmul fast float %6381, %6212
  %6389 = fmul fast float %6380, %6212
  %6390 = fmul fast float %6379, %6213
  %6391 = fadd fast float %6385, %6362
  %6392 = fadd fast float %6391, %6382
  %6393 = fsub fast float %6392, %6386
  %6394 = fsub fast float %6363, %6388
  %6395 = fadd fast float %6394, %6383
  %6396 = fadd fast float %6395, %6387
  %6397 = fadd fast float %6384, %6364
  %6398 = fsub fast float %6397, %6390
  %6399 = fadd fast float %6398, %6389
  br label %6400

; <label>:6400                                    ; preds = %6369, %6361
  %6401 = phi float [ %6393, %6369 ], [ %6362, %6361 ]
  %6402 = phi float [ %6396, %6369 ], [ %6363, %6361 ]
  %6403 = phi float [ %6399, %6369 ], [ %6364, %6361 ]
  br i1 %6241, label %6435, label %6404

; <label>:6404                                    ; preds = %6400
  %6405 = fmul fast float %5718, 0x400187C840000000
  %6406 = fadd fast float %6405, 0xC00EFC2120000000
  %6407 = fmul fast float %6406, %5718
  %6408 = fadd fast float %6407, 0x3FE5D16340000000
  %6409 = fmul fast float %6408, %5718
  %6410 = fadd fast float %6409, 1.000000e+00
  %6411 = call float @dx.op.unary.f32(i32 7, float %6410)  ; Saturate(value)
  %6412 = fsub fast float %6365, %164
  %6413 = fsub fast float %6366, %165
  %6414 = fsub fast float %6367, %166
  %6415 = fsub fast float %6365, %6196
  %6416 = fsub fast float %6366, %6197
  %6417 = fsub fast float %6367, %6198
  %6418 = call float @dx.op.dot3.f32(i32 55, float %6412, float %6413, float %6414, float %6412, float %6413, float %6414)  ; Dot3(ax,ay,az,bx,by,bz)
  %6419 = call float @dx.op.dot3.f32(i32 55, float %6415, float %6416, float %6417, float %6415, float %6416, float %6417)  ; Dot3(ax,ay,az,bx,by,bz)
  %6420 = fadd fast float %6419, 0x3EE4F8B580000000
  %6421 = fdiv fast float %6418, %6420
  %6422 = bitcast float %6421 to i32
  %6423 = ashr i32 %6422, 1
  %6424 = add nsw i32 %6423, 532487669
  %6425 = bitcast i32 %6424 to float
  %6426 = fmul fast float %6425, %6411
  %6427 = call float @dx.op.unary.f32(i32 7, float %6426)  ; Saturate(value)
  %6428 = fmul fast float %6427, 0x4009981AE0000000
  %6429 = fsub fast float 0x40111BBD80000000, %6428
  %6430 = fmul fast float %6429, %6427
  %6431 = fadd fast float %6430, 0xC0009F6020000000
  %6432 = fmul fast float %6431, %6427
  %6433 = fadd fast float %6432, 1.000000e+00
  %6434 = call float @dx.op.unary.f32(i32 7, float %6433)  ; Saturate(value)
  br label %6438

; <label>:6435                                    ; preds = %6400
  %6436 = icmp ne i32 %6242, -1
  %6437 = zext i1 %6436 to i32
  br label %6438

; <label>:6438                                    ; preds = %6435, %6404
  %6439 = phi float [ %5718, %6435 ], [ %6434, %6404 ]
  %6440 = phi i32 [ %6437, %6435 ], [ 0, %6404 ]
  %6441 = fmul float %6439, 5.000000e+00
  %6442 = fsub float 5.000000e+00, %6441
  %6443 = icmp ne i32 %6440, 0
  %6444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %6445 = extractvalue %dx.types.CBufRet.f32 %6444, 3
  %6446 = fadd fast float %6445, %6442
  %6447 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6446)  ; FMax(a,b)
  %6448 = call float @dx.op.unary.f32(i32 6, float %6401)  ; FAbs(value)
  %6449 = call float @dx.op.unary.f32(i32 6, float %6402)  ; FAbs(value)
  %6450 = fadd fast float %6449, %6448
  %6451 = call float @dx.op.unary.f32(i32 6, float %6403)  ; FAbs(value)
  %6452 = fadd fast float %6450, %6451
  %6453 = fcmp fast oeq float %6452, 0.000000e+00
  %6454 = fdiv fast float 1.000000e+00, %6452
  %6455 = select i1 %6453, float 1.000000e+00, float %6454
  %6456 = fmul fast float %6455, %6401
  %6457 = fmul fast float %6455, %6402
  %6458 = call float @dx.op.unary.f32(i32 6, float %6457)  ; FAbs(value)
  %6459 = call float @dx.op.unary.f32(i32 6, float %6456)  ; FAbs(value)
  %6460 = fsub fast float 1.000000e+00, %6458
  %6461 = fsub fast float 1.000000e+00, %6459
  %6462 = fcmp fast oge float %6456, 0.000000e+00
  %6463 = fcmp fast oge float %6457, 0.000000e+00
  %6464 = select i1 %6462, float 1.000000e+00, float -1.000000e+00
  %6465 = select i1 %6463, float 1.000000e+00, float -1.000000e+00
  %6466 = fcmp fast ole float %6403, 0.000000e+00
  %6467 = fmul fast float %6464, %6460
  %6468 = fmul fast float %6465, %6461
  %6469 = select i1 %6466, float %6467, float %6456
  %6470 = select i1 %6466, float %6468, float %6457
  %6471 = fmul fast float %6469, 5.000000e-01
  %6472 = fmul fast float %6470, 5.000000e-01
  %6473 = fadd fast float %6471, 5.000000e-01
  %6474 = fadd fast float %6472, 5.000000e-01
  %6475 = uitofp i32 %6239 to float
  %6476 = call float @dx.op.binary.f32(i32 36, float %6447, float 3.000000e+00)  ; FMin(a,b)
  %6477 = fadd fast float %6476, 2.000000e+00
  %6478 = call float @dx.op.unary.f32(i32 21, float %6477)  ; Exp(value)
  %6479 = extractvalue %dx.types.CBufRet.f32 %6444, 1
  %6480 = fmul fast float %6479, %6478
  %6481 = fmul fast float %6480, 2.000000e+00
  %6482 = fsub fast float 1.000000e+00, %6481
  %6483 = fmul fast float %6473, %6482
  %6484 = fmul fast float %6474, %6482
  %6485 = fadd fast float %6483, %6480
  %6486 = fadd fast float %6484, %6480
  %6487 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %52, float %6485, float %6486, float %6475, float undef, i32 0, i32 0, i32 undef, float %6447)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6488 = extractvalue %dx.types.ResRet.f32 %6487, 0
  %6489 = extractvalue %dx.types.ResRet.f32 %6487, 1
  %6490 = extractvalue %dx.types.ResRet.f32 %6487, 2
  %6491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6492 = extractvalue %dx.types.CBufRet.f32 %6491, 3
  %6493 = fmul fast float %6492, %6209
  %6494 = call float @dx.op.binary.f32(i32 36, float %5750, float %6493)  ; FMin(a,b)
  %6495 = select i1 %6443, float %6494, float %6493
  %6496 = fmul fast float %6488, %6288
  %6497 = fmul fast float %6496, %6495
  %6498 = fmul fast float %6489, %6288
  %6499 = fmul fast float %6498, %6495
  %6500 = fmul fast float %6490, %6288
  %6501 = fmul fast float %6500, %6495
  %6502 = fadd fast float %6497, %6184
  %6503 = fadd fast float %6499, %6185
  %6504 = fadd fast float %6501, %6186
  %6505 = fsub fast float %6187, %6288
  br label %6290

; <label>:6506                                    ; preds = %6290
  br label %6507

; <label>:6507                                    ; preds = %6506, %6153
  %6508 = phi float [ %6154, %6153 ], [ %6291, %6506 ]
  %6509 = phi float [ %6155, %6153 ], [ %6292, %6506 ]
  %6510 = phi float [ %6156, %6153 ], [ %6293, %6506 ]
  %6511 = phi float [ %6157, %6153 ], [ %6294, %6506 ]
  %6512 = add i32 %6158, 1
  %6513 = icmp ugt i32 %6512, %6150
  br i1 %6513, label %6514, label %6153, !llvm.loop !99

; <label>:6514                                    ; preds = %6507
  br label %6515

; <label>:6515                                    ; preds = %6514, %6135
  %6516 = phi float [ 0.000000e+00, %6135 ], [ %6508, %6514 ]
  %6517 = phi float [ 0.000000e+00, %6135 ], [ %6509, %6514 ]
  %6518 = phi float [ 0.000000e+00, %6135 ], [ %6510, %6514 ]
  %6519 = call float @dx.op.dot3.f32(i32 55, float %6516, float %6517, float %6518, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6520 = select i1 %226, float 0.000000e+00, float %6516
  %6521 = select i1 %226, float %6519, float %6517
  %6522 = select i1 %226, float 0.000000e+00, float %6518
  %6523 = fcmp fast olt float %6061, 0.000000e+00
  %6524 = call float @dx.op.unary.f32(i32 6, float %6061)  ; FAbs(value)
  %6525 = fmul fast float %6524, %5990
  %6526 = fmul fast float %6524, %5991
  %6527 = fmul fast float %6524, %5992
  %6528 = select i1 %6523, float %5990, float %6525
  %6529 = select i1 %6523, float %5991, float %6526
  %6530 = select i1 %6523, float %5992, float %6527
  %6531 = fsub fast float 1.000000e+00, %6524
  %6532 = call float @dx.op.unary.f32(i32 7, float %6531)  ; Saturate(value)
  %6533 = fmul fast float %6532, %6520
  %6534 = fmul fast float %6532, %6521
  %6535 = fmul fast float %6532, %6522
  %6536 = fadd fast float %6528, %6533
  %6537 = fadd fast float %6529, %6534
  %6538 = fadd fast float %6530, %6535
  br label %6539

; <label>:6539                                    ; preds = %6515, %6044
  %6540 = phi float [ %5990, %6044 ], [ %6536, %6515 ]
  %6541 = phi float [ %5991, %6044 ], [ %6537, %6515 ]
  %6542 = phi float [ %5992, %6044 ], [ %6538, %6515 ]
  %6543 = call float @dx.op.dot3.f32(i32 55, float %5709, float %5710, float %5711, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6544 = fcmp fast ogt float %6543, 0x3E7FF19E20000000
  %6545 = fdiv fast float 1.000000e+00, %6543
  %6546 = select i1 %6544, float %6545, float 0.000000e+00
  %6547 = fmul fast float %6546, %5709
  %6548 = fmul fast float %6546, %5710
  %6549 = fmul fast float %6546, %5711
  %6550 = fadd fast float %6547, -1.000000e+00
  %6551 = fadd fast float %6548, -1.000000e+00
  %6552 = fadd fast float %6549, -1.000000e+00
  %6553 = fmul fast float %6550, 5.000000e-01
  %6554 = fmul fast float %6551, 5.000000e-01
  %6555 = fmul fast float %6552, 5.000000e-01
  %6556 = fadd fast float %6553, 1.000000e+00
  %6557 = fadd fast float %6554, 1.000000e+00
  %6558 = fadd fast float %6555, 1.000000e+00
  %6559 = call float @dx.op.binary.f32(i32 35, float %5723, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6560 = fdiv fast float %4427, %6559
  %6561 = fcmp fast olt float %5127, 1.270000e+02
  %6562 = fcmp fast olt float %5128, 1.270000e+02
  %6563 = fcmp fast olt float %5129, 1.270000e+02
  %6564 = fmul fast float %5127, 0xBFF7154760000000
  %6565 = fmul fast float %6564, %6560
  %6566 = fmul fast float %5128, 0xBFF7154760000000
  %6567 = fmul fast float %6566, %6560
  %6568 = fmul fast float %5129, 0xBFF7154760000000
  %6569 = fmul fast float %6568, %6560
  %6570 = call float @dx.op.unary.f32(i32 21, float %6565)  ; Exp(value)
  %6571 = call float @dx.op.unary.f32(i32 21, float %6567)  ; Exp(value)
  %6572 = call float @dx.op.unary.f32(i32 21, float %6569)  ; Exp(value)
  %6573 = call float @dx.op.unary.f32(i32 7, float %6570)  ; Saturate(value)
  %6574 = call float @dx.op.unary.f32(i32 7, float %6571)  ; Saturate(value)
  %6575 = call float @dx.op.unary.f32(i32 7, float %6572)  ; Saturate(value)
  %6576 = select i1 %6561, float %6573, float 0.000000e+00
  %6577 = select i1 %6562, float %6574, float 0.000000e+00
  %6578 = select i1 %6563, float %6575, float 0.000000e+00
  %6579 = fmul fast float %6576, %6050
  %6580 = fmul fast float %6577, %6050
  %6581 = fmul fast float %6578, %6050
  %6582 = fadd fast float %6579, -1.000000e+00
  %6583 = fadd fast float %6580, -1.000000e+00
  %6584 = fadd fast float %6581, -1.000000e+00
  %6585 = fmul fast float %6582, %5074
  %6586 = fmul fast float %6583, %5074
  %6587 = fmul fast float %6584, %5074
  %6588 = fmul fast float %6540, %6045
  %6589 = fmul fast float %6541, %6046
  %6590 = fmul fast float %6542, %6047
  %6591 = fsub fast float 1.000000e+00, %5723
  %6592 = bitcast float %6591 to i32
  %6593 = sitofp i32 %6592 to float
  %6594 = fmul fast float %6593, 5.000000e+00
  %6595 = fadd fast float %6594, 0xC1EFBF8940000000
  %6596 = fptosi float %6595 to i32
  %6597 = bitcast i32 %6596 to float
  %6598 = fmul fast float %6597, %5078
  %6599 = fmul fast float %5982, %6598
  %6600 = fmul fast float %6599, %6050
  %6601 = fmul fast float %6600, %6556
  %6602 = fmul fast float %5983, %6598
  %6603 = fmul fast float %6602, %6050
  %6604 = fmul fast float %6603, %6557
  %6605 = fmul fast float %5984, %6598
  %6606 = fmul fast float %6605, %6050
  %6607 = fmul fast float %6606, %6558
  %6608 = fadd fast float %6588, %5067
  %6609 = fadd fast float %6608, %6601
  %6610 = fmul fast float %6609, %5074
  %6611 = fadd fast float %6589, %5068
  %6612 = fadd fast float %6611, %6604
  %6613 = fmul fast float %6612, %5074
  %6614 = fadd fast float %6590, %5069
  %6615 = fadd fast float %6614, %6607
  %6616 = fmul fast float %6615, %5074
  %6617 = fmul fast float %5713, 0x4012D0A400000000
  %6618 = fadd fast float %6587, 1.000000e+00
  %6619 = fadd fast float %6586, 1.000000e+00
  %6620 = fadd fast float %6585, 1.000000e+00
  %6621 = fmul fast float %6050, %5984
  %6622 = fmul fast float %6050, %5983
  %6623 = fmul fast float %6050, %5982
  %6624 = fmul fast float %5738, %5074
  %6625 = fsub fast float 1.000000e+00, %6624
  %6626 = call float @dx.op.unary.f32(i32 7, float %6625)  ; Saturate(value)
  %6627 = fsub fast float 1.000000e+00, %6626
  %6628 = fadd fast float %6617, 0x3FDB6377A0000000
  %6629 = fmul fast float %6627, %6628
  %6630 = call float @dx.op.dot3.f32(i32 55, float %5145, float %5146, float %5147, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6631 = fadd fast float %6629, %6630
  %6632 = call float @dx.op.unary.f32(i32 7, float %6631)  ; Saturate(value)
  %6633 = call float @dx.op.binary.f32(i32 35, float %6632, float 0x3F847AE140000000)  ; FMax(a,b)
  %6634 = fmul fast float %6633, %6633
  %6635 = fmul fast float %6634, %6634
  %6636 = fmul fast float %6635, 0xC00A935000000000
  %6637 = call float @dx.op.unary.f32(i32 21, float %6636)  ; Exp(value)
  %6638 = fsub fast float 1.000000e+00, %6637
  %6639 = fmul fast float %6620, %5986
  %6640 = fmul fast float %6639, %6638
  %6641 = fmul fast float %6619, %5987
  %6642 = fmul fast float %6641, %6638
  %6643 = fmul fast float %6618, %5988
  %6644 = fmul fast float %6643, %6638
  %6645 = fadd fast float %6640, %6623
  %6646 = fmul fast float %6645, %5074
  %6647 = fadd fast float %6642, %6622
  %6648 = fmul fast float %6647, %5074
  %6649 = fadd fast float %6644, %6621
  %6650 = fmul fast float %6649, %5074
  %6651 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6652 = extractvalue %dx.types.CBufRet.f32 %6651, 3
  %6653 = fcmp fast oeq float %6652, 0.000000e+00
  br i1 %6653, label %8331, label %6654

; <label>:6654                                    ; preds = %6539
  %6655 = extractvalue %dx.types.CBufRet.f32 %6651, 0
  %6656 = extractvalue %dx.types.CBufRet.f32 %6651, 1
  %6657 = extractvalue %dx.types.CBufRet.f32 %6651, 2
  %6658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6659 = extractvalue %dx.types.CBufRet.f32 %6658, 0
  %6660 = extractvalue %dx.types.CBufRet.f32 %6658, 1
  %6661 = extractvalue %dx.types.CBufRet.f32 %6658, 2
  %6662 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6663 = extractvalue %dx.types.CBufRet.f32 %6662, 0
  %6664 = extractvalue %dx.types.CBufRet.f32 %6662, 1
  %6665 = call float @dx.op.dot3.f32(i32 55, float %6659, float %6660, float %6661, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6666 = select i1 %226, float %6663, float %6659
  %6667 = select i1 %226, float %6665, float %6660
  %6668 = select i1 %226, float %6664, float %6661
  %6669 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6670 = extractvalue %dx.types.CBufRet.f32 %6669, 2
  %6671 = fmul fast float %6670, %116
  %6672 = fmul fast float %6670, %117
  %6673 = fmul fast float %6670, %118
  %6674 = fadd fast float %6671, %164
  %6675 = fadd fast float %6672, %165
  %6676 = fadd fast float %6673, %166
  %6677 = fcmp fast olt float %6652, 0.000000e+00
  br i1 %6677, label %7773, label %6678

; <label>:6678                                    ; preds = %6654
  %6679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6680 = extractvalue %dx.types.CBufRet.f32 %6679, 0
  %6681 = extractvalue %dx.types.CBufRet.f32 %6679, 1
  %6682 = extractvalue %dx.types.CBufRet.f32 %6679, 2
  %6683 = extractvalue %dx.types.CBufRet.f32 %6679, 3
  %6684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6685 = extractvalue %dx.types.CBufRet.f32 %6684, 0
  %6686 = extractvalue %dx.types.CBufRet.f32 %6684, 1
  %6687 = extractvalue %dx.types.CBufRet.f32 %6684, 2
  %6688 = extractvalue %dx.types.CBufRet.f32 %6684, 3
  %6689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6690 = extractvalue %dx.types.CBufRet.f32 %6689, 0
  %6691 = extractvalue %dx.types.CBufRet.f32 %6689, 1
  %6692 = extractvalue %dx.types.CBufRet.f32 %6689, 2
  %6693 = extractvalue %dx.types.CBufRet.f32 %6689, 3
  %6694 = fmul fast float %6680, %6674
  %6695 = call float @dx.op.tertiary.f32(i32 46, float %6675, float %6681, float %6694)  ; FMad(a,b,c)
  %6696 = call float @dx.op.tertiary.f32(i32 46, float %6676, float %6682, float %6695)  ; FMad(a,b,c)
  %6697 = fadd fast float %6696, %6683
  %6698 = fmul fast float %6685, %6674
  %6699 = call float @dx.op.tertiary.f32(i32 46, float %6675, float %6686, float %6698)  ; FMad(a,b,c)
  %6700 = call float @dx.op.tertiary.f32(i32 46, float %6676, float %6687, float %6699)  ; FMad(a,b,c)
  %6701 = fadd fast float %6700, %6688
  %6702 = fmul fast float %6690, %6674
  %6703 = call float @dx.op.tertiary.f32(i32 46, float %6675, float %6691, float %6702)  ; FMad(a,b,c)
  %6704 = call float @dx.op.tertiary.f32(i32 46, float %6676, float %6692, float %6703)  ; FMad(a,b,c)
  %6705 = fadd fast float %6704, %6693
  %6706 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6707 = extractvalue %dx.types.CBufRet.f32 %6706, 0
  %6708 = extractvalue %dx.types.CBufRet.f32 %6706, 1
  %6709 = extractvalue %dx.types.CBufRet.f32 %6706, 3
  %6710 = fmul fast float %6709, %6697
  %6711 = fmul fast float %6709, %6701
  %6712 = fadd fast float %6710, %6707
  %6713 = fadd fast float %6711, %6708
  %6714 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6715 = extractvalue %dx.types.CBufRet.f32 %6714, 0
  %6716 = extractvalue %dx.types.CBufRet.f32 %6714, 1
  %6717 = extractvalue %dx.types.CBufRet.f32 %6714, 3
  %6718 = fmul fast float %6717, %6697
  %6719 = fmul fast float %6717, %6701
  %6720 = fadd fast float %6718, %6715
  %6721 = fadd fast float %6719, %6716
  %6722 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6723 = extractvalue %dx.types.CBufRet.f32 %6722, 1
  %6724 = fsub fast float %6723, %6705
  %6725 = extractvalue %dx.types.CBufRet.f32 %6722, 2
  %6726 = fmul fast float %6724, %6725
  %6727 = fsub fast float 1.000000e+00, %6726
  %6728 = call float @dx.op.unary.f32(i32 7, float %6727)  ; Saturate(value)
  %6729 = extractvalue %dx.types.CBufRet.f32 %6714, 2
  %6730 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6731 = extractvalue %dx.types.CBufRet.f32 %6730, 2
  %6732 = fadd fast float %6731, %6729
  %6733 = fcmp fast ogt float %6732, 0.000000e+00
  br i1 %6733, label %6734, label %6758

; <label>:6734                                    ; preds = %6678
  %6735 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6736 = extractvalue %dx.types.CBufRet.f32 %6735, 0
  %6737 = extractvalue %dx.types.CBufRet.f32 %6735, 1
  %6738 = fsub fast float %6720, %6736
  %6739 = fsub fast float %6721, %6737
  %6740 = fcmp fast olt float %6738, 0.000000e+00
  %6741 = fcmp fast olt float %6739, 0.000000e+00
  %6742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6743 = extractvalue %dx.types.CBufRet.f32 %6742, 0
  %6744 = extractvalue %dx.types.CBufRet.f32 %6742, 1
  %6745 = extractvalue %dx.types.CBufRet.f32 %6742, 2
  %6746 = extractvalue %dx.types.CBufRet.f32 %6742, 3
  %6747 = select i1 %6740, float %6743, float %6745
  %6748 = select i1 %6741, float %6744, float %6746
  %6749 = fmul fast float %6747, %6738
  %6750 = fmul fast float %6748, %6739
  %6751 = call float @dx.op.unary.f32(i32 6, float %6749)  ; FAbs(value)
  %6752 = call float @dx.op.unary.f32(i32 6, float %6750)  ; FAbs(value)
  %6753 = extractvalue %dx.types.CBufRet.f32 %6669, 0
  %6754 = call float @dx.op.binary.f32(i32 35, float %6751, float %6752)  ; FMax(a,b)
  %6755 = fsub fast float %6753, %6754
  %6756 = call float @dx.op.unary.f32(i32 7, float %6755)  ; Saturate(value)
  %6757 = fmul fast float %6756, %6728
  br label %6758

; <label>:6758                                    ; preds = %6734, %6678
  %6759 = phi float [ %6757, %6734 ], [ 0.000000e+00, %6678 ]
  %6760 = extractvalue %dx.types.CBufRet.f32 %6706, 2
  %6761 = extractvalue %dx.types.CBufRet.f32 %6730, 1
  %6762 = fadd fast float %6761, %6760
  %6763 = fcmp fast ogt float %6762, 0.000000e+00
  %6764 = extractvalue %dx.types.CBufRet.f32 %6669, 0
  br i1 %6763, label %6765, label %6788

; <label>:6765                                    ; preds = %6758
  %6766 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6767 = extractvalue %dx.types.CBufRet.f32 %6766, 0
  %6768 = extractvalue %dx.types.CBufRet.f32 %6766, 1
  %6769 = fsub fast float %6712, %6767
  %6770 = fsub fast float %6713, %6768
  %6771 = fcmp fast olt float %6769, 0.000000e+00
  %6772 = fcmp fast olt float %6770, 0.000000e+00
  %6773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6774 = extractvalue %dx.types.CBufRet.f32 %6773, 0
  %6775 = extractvalue %dx.types.CBufRet.f32 %6773, 1
  %6776 = extractvalue %dx.types.CBufRet.f32 %6773, 2
  %6777 = extractvalue %dx.types.CBufRet.f32 %6773, 3
  %6778 = select i1 %6771, float %6774, float %6776
  %6779 = select i1 %6772, float %6775, float %6777
  %6780 = fmul fast float %6778, %6769
  %6781 = fmul fast float %6779, %6770
  %6782 = call float @dx.op.unary.f32(i32 6, float %6780)  ; FAbs(value)
  %6783 = call float @dx.op.unary.f32(i32 6, float %6781)  ; FAbs(value)
  %6784 = call float @dx.op.binary.f32(i32 35, float %6782, float %6783)  ; FMax(a,b)
  %6785 = fsub fast float %6764, %6784
  %6786 = call float @dx.op.unary.f32(i32 7, float %6785)  ; Saturate(value)
  %6787 = fmul fast float %6786, %6728
  br label %6788

; <label>:6788                                    ; preds = %6765, %6758
  %6789 = phi float [ %6787, %6765 ], [ 0.000000e+00, %6758 ]
  %6790 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6791 = extractvalue %dx.types.CBufRet.f32 %6790, 1
  %6792 = call float @dx.op.unary.f32(i32 7, float %6791)  ; Saturate(value)
  %6793 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6794 = extractvalue %dx.types.CBufRet.f32 %6793, 0
  %6795 = extractvalue %dx.types.CBufRet.f32 %6793, 1
  %6796 = fsub fast float %6697, %6794
  %6797 = fsub fast float %6701, %6795
  %6798 = fcmp fast olt float %6796, 0.000000e+00
  %6799 = fcmp fast olt float %6797, 0.000000e+00
  %6800 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6801 = extractvalue %dx.types.CBufRet.f32 %6800, 0
  %6802 = extractvalue %dx.types.CBufRet.f32 %6800, 1
  %6803 = extractvalue %dx.types.CBufRet.f32 %6800, 2
  %6804 = extractvalue %dx.types.CBufRet.f32 %6800, 3
  %6805 = select i1 %6798, float %6801, float %6803
  %6806 = select i1 %6799, float %6802, float %6804
  %6807 = fmul fast float %6805, %6796
  %6808 = fmul fast float %6806, %6797
  %6809 = call float @dx.op.unary.f32(i32 6, float %6807)  ; FAbs(value)
  %6810 = call float @dx.op.unary.f32(i32 6, float %6808)  ; FAbs(value)
  %6811 = call float @dx.op.binary.f32(i32 35, float %6809, float %6810)  ; FMax(a,b)
  %6812 = fsub fast float %6764, %6811
  %6813 = call float @dx.op.unary.f32(i32 7, float %6812)  ; Saturate(value)
  %6814 = call float @dx.op.binary.f32(i32 36, float %6813, float %6792)  ; FMin(a,b)
  %6815 = fmul fast float %6814, %6728
  %6816 = fsub fast float %6789, %6815
  %6817 = fsub fast float %6759, %6789
  %6818 = fsub fast float %6817, %6815
  %6819 = call float @dx.op.binary.f32(i32 35, float %6789, float %6759)  ; FMax(a,b)
  %6820 = call float @dx.op.binary.f32(i32 35, float %6815, float %6819)  ; FMax(a,b)
  %6821 = fcmp fast olt float %6820, 1.000000e+00
  br i1 %6821, label %6822, label %7220, !dx.controlflow.hints !101

; <label>:6822                                    ; preds = %6788
  %6823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6824 = extractvalue %dx.types.CBufRet.f32 %6823, 0
  %6825 = fcmp fast une float %6824, 0.000000e+00
  br i1 %6825, label %6826, label %7220, !dx.controlflow.hints !102

; <label>:6826                                    ; preds = %6822
  %6827 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6828 = extractvalue %dx.types.CBufRet.f32 %6827, 0
  %6829 = extractvalue %dx.types.CBufRet.f32 %6827, 1
  %6830 = extractvalue %dx.types.CBufRet.f32 %6827, 2
  %6831 = extractvalue %dx.types.CBufRet.f32 %6827, 3
  %6832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6833 = extractvalue %dx.types.CBufRet.f32 %6832, 0
  %6834 = extractvalue %dx.types.CBufRet.f32 %6832, 1
  %6835 = extractvalue %dx.types.CBufRet.f32 %6832, 2
  %6836 = extractvalue %dx.types.CBufRet.f32 %6832, 3
  %6837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6838 = extractvalue %dx.types.CBufRet.f32 %6837, 0
  %6839 = extractvalue %dx.types.CBufRet.f32 %6837, 1
  %6840 = extractvalue %dx.types.CBufRet.f32 %6837, 2
  %6841 = extractvalue %dx.types.CBufRet.f32 %6837, 3
  %6842 = fmul fast float %6828, %6674
  %6843 = call float @dx.op.tertiary.f32(i32 46, float %6675, float %6829, float %6842)  ; FMad(a,b,c)
  %6844 = call float @dx.op.tertiary.f32(i32 46, float %6676, float %6830, float %6843)  ; FMad(a,b,c)
  %6845 = fadd fast float %6844, %6831
  %6846 = fmul fast float %6833, %6674
  %6847 = call float @dx.op.tertiary.f32(i32 46, float %6675, float %6834, float %6846)  ; FMad(a,b,c)
  %6848 = call float @dx.op.tertiary.f32(i32 46, float %6676, float %6835, float %6847)  ; FMad(a,b,c)
  %6849 = fadd fast float %6848, %6836
  %6850 = fmul fast float %6838, %6674
  %6851 = call float @dx.op.tertiary.f32(i32 46, float %6675, float %6839, float %6850)  ; FMad(a,b,c)
  %6852 = call float @dx.op.tertiary.f32(i32 46, float %6676, float %6840, float %6851)  ; FMad(a,b,c)
  %6853 = fadd fast float %6852, %6841
  %6854 = fcmp fast oge float %6845, 1.000000e+00
  %6855 = fcmp fast oge float %6849, 1.000000e+00
  %6856 = or i1 %6854, %6855
  %6857 = fcmp fast olt float %6845, 0.000000e+00
  %6858 = fcmp fast olt float %6849, 0.000000e+00
  %6859 = or i1 %6857, %6858
  %6860 = or i1 %6856, %6859
  br i1 %6860, label %7220, label %6861, !dx.controlflow.hints !103

; <label>:6861                                    ; preds = %6826
  %6862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6863 = extractvalue %dx.types.CBufRet.f32 %6862, 0
  %6864 = extractvalue %dx.types.CBufRet.f32 %6862, 1
  %6865 = extractvalue %dx.types.CBufRet.f32 %6862, 2
  %6866 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6867 = extractvalue %dx.types.CBufRet.i32 %6866, 2
  %6868 = uitofp i32 %6867 to float
  %6869 = extractvalue %dx.types.CBufRet.i32 %6866, 3
  %6870 = uitofp i32 %6869 to float
  %6871 = extractvalue %dx.types.CBufRet.f32 %6862, 3
  %6872 = fmul fast float %6871, 2.000000e+00
  %6873 = fsub fast float %6845, %6863
  %6874 = fsub fast float %6849, %6864
  %6875 = fmul fast float %6872, %6873
  %6876 = fmul fast float %6872, %6874
  %6877 = fdiv fast float 1.000000e+00, %6657
  %6878 = fmul fast float %6876, %6877
  %6879 = call float @dx.op.unary.f32(i32 6, float %6878)  ; FAbs(value)
  %6880 = fmul fast float %6865, %6676
  %6881 = fmul fast float %6880, %6872
  %6882 = call float @dx.op.unary.f32(i32 6, float %6881)  ; FAbs(value)
  %6883 = call float @dx.op.unary.f32(i32 6, float %6875)  ; FAbs(value)
  %6884 = call float @dx.op.binary.f32(i32 35, float %6882, float %6879)  ; FMax(a,b)
  %6885 = call float @dx.op.binary.f32(i32 35, float %6883, float %6884)  ; FMax(a,b)
  %6886 = fmul fast float %6885, 2.000000e+00
  %6887 = call float @dx.op.unary.f32(i32 23, float %6886)  ; Log(value)
  %6888 = call float @dx.op.binary.f32(i32 35, float %6887, float %6868)  ; FMax(a,b)
  %6889 = call float @dx.op.unary.f32(i32 22, float %6888)  ; Frc(value)
  %6890 = fadd fast float %6889, 0xBFEA666660000000
  %6891 = fmul fast float %6890, 8.000000e+00
  %6892 = call float @dx.op.unary.f32(i32 7, float %6891)  ; Saturate(value)
  %6893 = call float @dx.op.unary.f32(i32 27, float %6888)  ; Round_ni(value)
  %6894 = fadd fast float %6893, %6892
  %6895 = call float @dx.op.binary.f32(i32 36, float %6894, float %6870)  ; FMin(a,b)
  %6896 = call float @dx.op.unary.f32(i32 27, float %6895)  ; Round_ni(value)
  %6897 = fsub fast float -0.000000e+00, %6896
  %6898 = call float @dx.op.unary.f32(i32 21, float %6897)  ; Exp(value)
  %6899 = fmul fast float %6898, %6872
  %6900 = fmul fast float %6899, %6845
  %6901 = fmul fast float %6899, %6849
  %6902 = fmul fast float %6900, 2.500000e-01
  %6903 = fmul fast float %6901, 2.500000e-01
  %6904 = fadd fast float %6902, 5.000000e-01
  %6905 = fadd fast float %6903, 5.000000e-01
  %6906 = fsub fast float %6870, %6868
  %6907 = fptoui float %6906 to i32
  %6908 = add i32 %6907, 320
  %6909 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 %6908)  ; CBufferLoadLegacy(handle,regIndex)
  %6910 = extractvalue %dx.types.CBufRet.f32 %6909, 0
  %6911 = extractvalue %dx.types.CBufRet.f32 %6909, 1
  %6912 = fcmp fast une float %6895, %6870
  %6913 = fsub fast float %6845, %6910
  %6914 = fsub fast float %6849, %6911
  %6915 = call float @dx.op.unary.f32(i32 6, float %6913)  ; FAbs(value)
  %6916 = call float @dx.op.unary.f32(i32 6, float %6914)  ; FAbs(value)
  %6917 = fmul fast float %6915, %6899
  %6918 = fmul fast float %6916, %6899
  %6919 = fcmp fast olt float %6917, 1.000000e+00
  %6920 = fcmp fast olt float %6918, 1.000000e+00
  %6921 = and i1 %6919, %6920
  %6922 = or i1 %6912, %6921
  br i1 %6922, label %6923, label %7220, !dx.controlflow.hints !104

; <label>:6923                                    ; preds = %6861
  %6924 = fmul fast float %6901, 5.000000e-01
  %6925 = fmul fast float %6900, 5.000000e-01
  %6926 = fadd fast float %6924, 5.000000e-01
  %6927 = fadd fast float %6925, 5.000000e-01
  %6928 = sitofp i32 %6867 to float
  %6929 = fsub fast float %6895, %6928
  %6930 = call float @dx.op.unary.f32(i32 27, float %6929)  ; Round_ni(value)
  %6931 = call float @dx.op.unary.f32(i32 22, float %6895)  ; Frc(value)
  %6932 = call float @dx.op.unary.f32(i32 22, float %6927)  ; Frc(value)
  %6933 = call float @dx.op.unary.f32(i32 22, float %6926)  ; Frc(value)
  %6934 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %53, float %6932, float %6933, float %6930, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6935 = extractvalue %dx.types.ResRet.f32 %6934, 0
  %6936 = extractvalue %dx.types.ResRet.f32 %6934, 1
  %6937 = extractvalue %dx.types.ResRet.f32 %6934, 2
  %6938 = extractvalue %dx.types.ResRet.f32 %6934, 3
  %6939 = fcmp fast ogt float %6931, 0.000000e+00
  br i1 %6939, label %6940, label %6961, !dx.controlflow.hints !105

; <label>:6940                                    ; preds = %6923
  %6941 = fadd fast float %6930, 1.000000e+00
  %6942 = call float @dx.op.unary.f32(i32 22, float %6904)  ; Frc(value)
  %6943 = call float @dx.op.unary.f32(i32 22, float %6905)  ; Frc(value)
  %6944 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %53, float %6942, float %6943, float %6941, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6945 = extractvalue %dx.types.ResRet.f32 %6944, 0
  %6946 = extractvalue %dx.types.ResRet.f32 %6944, 1
  %6947 = extractvalue %dx.types.ResRet.f32 %6944, 2
  %6948 = extractvalue %dx.types.ResRet.f32 %6944, 3
  %6949 = fsub fast float %6945, %6935
  %6950 = fsub fast float %6946, %6936
  %6951 = fsub fast float %6947, %6937
  %6952 = fsub fast float %6948, %6938
  %6953 = fmul fast float %6949, %6931
  %6954 = fmul fast float %6950, %6931
  %6955 = fmul fast float %6951, %6931
  %6956 = fmul fast float %6952, %6931
  %6957 = fadd fast float %6953, %6935
  %6958 = fadd fast float %6954, %6936
  %6959 = fadd fast float %6955, %6937
  %6960 = fadd fast float %6956, %6938
  br label %6961

; <label>:6961                                    ; preds = %6940, %6923
  %6962 = phi float [ %6957, %6940 ], [ %6935, %6923 ]
  %6963 = phi float [ %6958, %6940 ], [ %6936, %6923 ]
  %6964 = phi float [ %6959, %6940 ], [ %6937, %6923 ]
  %6965 = phi float [ %6960, %6940 ], [ %6938, %6923 ]
  %6966 = fadd fast float %6962, -5.000000e-01
  %6967 = fadd fast float %6964, -5.000000e-01
  %6968 = fmul fast float %6966, 0xBFD5555560000000
  %6969 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6967, float %6968)  ; FMad(a,b,c)
  %6970 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6963, float 0.000000e+00)  ; FMad(a,b,c)
  %6971 = fadd fast float %6970, %6965
  %6972 = fmul fast float %6966, -7.500000e-01
  %6973 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6967, float %6972)  ; FMad(a,b,c)
  %6974 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6963, float 0.000000e+00)  ; FMad(a,b,c)
  %6975 = fadd fast float %6974, %6965
  %6976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6977 = extractvalue %dx.types.CBufRet.f32 %6976, 0
  %6978 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6979 = extractvalue %dx.types.CBufRet.f32 %6978, 0
  %6980 = extractvalue %dx.types.CBufRet.f32 %6978, 1
  %6981 = extractvalue %dx.types.CBufRet.f32 %6978, 2
  %6982 = extractvalue %dx.types.CBufRet.f32 %6978, 3
  %6983 = fsub fast float %6979, %6969
  %6984 = fsub fast float %6980, %6971
  %6985 = fsub fast float %6981, %6973
  %6986 = fsub fast float %6982, %6975
  %6987 = fmul fast float %6983, %6977
  %6988 = fmul fast float %6984, %6977
  %6989 = fmul fast float %6985, %6977
  %6990 = fmul fast float %6986, %6977
  %6991 = fadd fast float %6987, %6969
  %6992 = fadd fast float %6988, %6971
  %6993 = fadd fast float %6989, %6973
  %6994 = fadd fast float %6990, %6975
  %6995 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6996 = extractvalue %dx.types.ResRet.i32 %6995, 0
  %6997 = and i32 %6996, 536870911
  %6998 = uitofp i32 %6997 to float
  %6999 = fmul fast float %6998, %6845
  %7000 = fmul fast float %6998, %6849
  %7001 = fptoui float %6999 to i32
  %7002 = fptoui float %7000 to i32
  %7003 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %7004 = extractvalue %dx.types.ResRet.i32 %7003, 0
  %7005 = and i32 %7004, 31
  %7006 = lshr i32 %7001, %7005
  %7007 = lshr i32 %7002, %7005
  %7008 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %7009 = extractvalue %dx.types.ResRet.i32 %7008, 0
  %7010 = and i32 %7009, 31
  %7011 = shl i32 1, %7010
  %7012 = call i32 @dx.op.binary.i32(i32 40, i32 %7011, i32 4)  ; UMin(a,b)
  %7013 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %7014 = extractvalue %dx.types.ResRet.i32 %7013, 0
  %7015 = extractvalue %dx.types.ResRet.i32 %7013, 1
  %7016 = icmp eq i32 %7012, 0
  br i1 %7016, label %7058, label %7017

; <label>:7017                                    ; preds = %6961
  br label %7018

; <label>:7018                                    ; preds = %7046, %7017
  %7019 = phi i32 [ %7049, %7046 ], [ 0, %7017 ]
  %7020 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %7021 = extractvalue %dx.types.ResRet.i32 %7020, 0
  %7022 = lshr i32 %7021, 16
  %7023 = and i32 %7022, 31
  %7024 = shl i32 %7007, %7023
  %7025 = add i32 %7024, %7006
  %7026 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %7027 = extractvalue %dx.types.ResRet.i32 %7026, 0
  %7028 = and i32 %7027, 31
  %7029 = shl i32 %7025, %7028
  %7030 = add i32 %7029, %7019
  %7031 = shl i32 %7030, 2
  %7032 = add i32 %7031, 32
  %7033 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7032, i32 undef)  ; BufferLoad(srv,index,wot)
  %7034 = extractvalue %dx.types.ResRet.i32 %7033, 0
  %7035 = icmp slt i32 %7034, 0
  %7036 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 %7019
  %7037 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 %7019
  %7038 = bitcast float* %7036 to i32*
  %7039 = bitcast float* %7037 to i32*
  br i1 %7035, label %7040, label %7046

; <label>:7040                                    ; preds = %7018
  %7041 = and i32 %7034, 1073741823
  %7042 = add nuw nsw i32 %7041, 20
  %7043 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7042, i32 undef)  ; BufferLoad(srv,index,wot)
  %7044 = extractvalue %dx.types.ResRet.i32 %7043, 0
  %7045 = extractvalue %dx.types.ResRet.i32 %7043, 1
  br label %7046

; <label>:7046                                    ; preds = %7040, %7018
  %7047 = phi i32 [ %7044, %7040 ], [ %7014, %7018 ]
  %7048 = phi i32 [ %7045, %7040 ], [ %7015, %7018 ]
  store i32 %7047, i32* %7038, align 4
  store i32 %7048, i32* %7039, align 4
  %7049 = add nuw i32 %7019, 1
  %7050 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %7051 = extractvalue %dx.types.CBufRet.i32 %7050, 2
  %7052 = icmp eq i32 %7051, 0
  %7053 = icmp ugt i32 %7034, -1073741825
  %7054 = and i1 %7053, %7052
  %7055 = icmp ult i32 %7049, %7012
  %7056 = and i1 %7054, %7055
  br i1 %7056, label %7018, label %7057

; <label>:7057                                    ; preds = %7046
  br label %7058

; <label>:7058                                    ; preds = %7057, %6961
  %7059 = phi i32 [ 0, %6961 ], [ %7049, %7057 ]
  %7060 = extractvalue %dx.types.CBufRet.f32 %6823, 2
  %7061 = fptoui float %7060 to i32
  %7062 = icmp eq i32 %7061, 0
  br i1 %7062, label %7114, label %7063

; <label>:7063                                    ; preds = %7058
  br label %7064

; <label>:7064                                    ; preds = %7109, %7063
  %7065 = phi i32 [ %7110, %7109 ], [ %7059, %7063 ]
  %7066 = phi i32 [ %7111, %7109 ], [ 0, %7063 ]
  %7067 = lshr i32 %7066, 2
  %7068 = and i32 %7066, 3
  %7069 = add nuw nsw i32 %7067, 83
  %7070 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 %7069)  ; CBufferLoadLegacy(handle,regIndex)
  %7071 = extractvalue %dx.types.CBufRet.i32 %7070, 0
  %7072 = extractvalue %dx.types.CBufRet.i32 %7070, 1
  %7073 = extractvalue %dx.types.CBufRet.i32 %7070, 2
  %7074 = extractvalue %dx.types.CBufRet.i32 %7070, 3
  %7075 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 0
  store i32 %7071, i32* %7075, align 4
  %7076 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 1
  store i32 %7072, i32* %7076, align 4
  %7077 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 2
  store i32 %7073, i32* %7077, align 4
  %7078 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 3
  store i32 %7074, i32* %7078, align 4
  %7079 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 %7068
  %7080 = load i32, i32* %7079, align 4, !tbaa !106, !noalias !110
  %7081 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %7082 = extractvalue %dx.types.ResRet.i32 %7081, 0
  %7083 = lshr i32 %7082, 16
  %7084 = and i32 %7083, 31
  %7085 = shl i32 %7007, %7084
  %7086 = add i32 %7085, %7006
  %7087 = shl i32 %7086, 2
  %7088 = add i32 %7087, %7080
  %7089 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7088, i32 undef)  ; BufferLoad(srv,index,wot)
  %7090 = extractvalue %dx.types.ResRet.i32 %7089, 0
  %7091 = icmp eq i32 %7090, 0
  br i1 %7091, label %7109, label %7092

; <label>:7092                                    ; preds = %7064
  %7093 = icmp slt i32 %7090, 0
  %7094 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 %7065
  %7095 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 %7065
  %7096 = bitcast float* %7094 to i32*
  %7097 = bitcast float* %7095 to i32*
  br i1 %7093, label %7098, label %7105

; <label>:7098                                    ; preds = %7092
  %7099 = and i32 %7090, 1073741823
  %7100 = add i32 %7080, 20
  %7101 = add i32 %7100, %7099
  %7102 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7101, i32 undef)  ; BufferLoad(srv,index,wot)
  %7103 = extractvalue %dx.types.ResRet.i32 %7102, 0
  %7104 = extractvalue %dx.types.ResRet.i32 %7102, 1
  br label %7105

; <label>:7105                                    ; preds = %7098, %7092
  %7106 = phi i32 [ %7103, %7098 ], [ %7014, %7092 ]
  %7107 = phi i32 [ %7104, %7098 ], [ %7015, %7092 ]
  store i32 %7106, i32* %7096, align 4
  store i32 %7107, i32* %7097, align 4
  %7108 = add i32 %7065, 1
  br label %7109

; <label>:7109                                    ; preds = %7105, %7064
  %7110 = phi i32 [ %7065, %7064 ], [ %7108, %7105 ]
  %7111 = add nuw i32 %7066, 1
  %7112 = icmp eq i32 %7111, %7061
  br i1 %7112, label %7113, label %7064

; <label>:7113                                    ; preds = %7109
  br label %7114

; <label>:7114                                    ; preds = %7113, %7058
  %7115 = phi i32 [ %7059, %7058 ], [ %7110, %7113 ]
  %7116 = icmp eq i32 %7115, 1
  %7117 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 0
  %7118 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 0
  br i1 %7116, label %7119, label %7122

; <label>:7119                                    ; preds = %7114
  %7120 = load float, float* %7117, align 4
  %7121 = load float, float* %7118, align 4
  br label %7149

; <label>:7122                                    ; preds = %7114
  %7123 = load float, float* %7117, align 4
  %7124 = load float, float* %7118, align 4
  %7125 = fdiv fast float 1.000000e+00, %7124
  %7126 = fsub fast float %7123, %7125
  %7127 = icmp ugt i32 %7115, 1
  br i1 %7127, label %7128, label %7144

; <label>:7128                                    ; preds = %7122
  br label %7129

; <label>:7129                                    ; preds = %7129, %7128
  %7130 = phi float [ %7139, %7129 ], [ %7126, %7128 ]
  %7131 = phi float [ %7140, %7129 ], [ %7123, %7128 ]
  %7132 = phi i32 [ %7141, %7129 ], [ 1, %7128 ]
  %7133 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 %7132
  %7134 = load float, float* %7133, align 4
  %7135 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 %7132
  %7136 = load float, float* %7135, align 4
  %7137 = fdiv fast float 1.000000e+00, %7136
  %7138 = fsub fast float %7134, %7137
  %7139 = call float @dx.op.binary.f32(i32 36, float %7130, float %7138)  ; FMin(a,b)
  %7140 = call float @dx.op.binary.f32(i32 35, float %7131, float %7134)  ; FMax(a,b)
  %7141 = add nuw i32 %7132, 1
  %7142 = icmp eq i32 %7141, %7115
  br i1 %7142, label %7143, label %7129

; <label>:7143                                    ; preds = %7129
  br label %7144

; <label>:7144                                    ; preds = %7143, %7122
  %7145 = phi float [ %7126, %7122 ], [ %7139, %7143 ]
  %7146 = phi float [ %7123, %7122 ], [ %7140, %7143 ]
  %7147 = fsub fast float %7146, %7145
  %7148 = fdiv fast float 1.000000e+00, %7147
  br label %7149

; <label>:7149                                    ; preds = %7144, %7119
  %7150 = phi float [ %7120, %7119 ], [ %7146, %7144 ]
  %7151 = phi float [ %7121, %7119 ], [ %7148, %7144 ]
  %7152 = fadd fast float %6853, %7150
  %7153 = fmul fast float %7152, %7151
  %7154 = call float @dx.op.unary.f32(i32 7, float %7153)  ; Saturate(value)
  %7155 = fmul fast float %7154, 2.000000e+00
  %7156 = fsub fast float 1.000000e+00, %7155
  %7157 = fmul fast float %6991, %6991
  %7158 = fsub fast float %6992, %7157
  %7159 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %7158)  ; FMax(a,b)
  %7160 = fdiv fast float 1.000000e+00, %7159
  %7161 = fmul fast float %6992, %6991
  %7162 = fsub fast float %6993, %7161
  %7163 = fsub fast float %7156, %6991
  %7164 = fmul fast float %7156, %7156
  %7165 = fsub fast float %7164, %6992
  %7166 = fmul fast float %7160, %7162
  %7167 = fmul fast float %7166, %7163
  %7168 = fsub fast float %7165, %7167
  %7169 = fmul fast float %6992, %6992
  %7170 = fsub fast float %6994, %7169
  %7171 = fmul fast float %7162, %7162
  %7172 = fmul fast float %7171, %7160
  %7173 = fsub fast float %7170, %7172
  %7174 = fdiv fast float %7168, %7173
  %7175 = fmul fast float %7174, %7162
  %7176 = fsub fast float %7163, %7175
  %7177 = fmul fast float %7176, %7160
  %7178 = fmul fast float %7177, %6991
  %7179 = fsub fast float 1.000000e+00, %7178
  %7180 = fmul fast float %7174, %6992
  %7181 = fsub fast float %7179, %7180
  %7182 = fmul fast float %7177, %7177
  %7183 = fmul fast float %7174, 4.000000e+00
  %7184 = fmul fast float %7183, %7181
  %7185 = fsub fast float %7182, %7184
  %7186 = call float @dx.op.unary.f32(i32 24, float %7185)  ; Sqrt(value)
  %7187 = fcmp fast oge float %7177, 0.000000e+00
  %7188 = fsub fast float -0.000000e+00, %7186
  %7189 = select i1 %7187, float %7188, float %7186
  %7190 = fsub fast float %7189, %7177
  %7191 = fdiv fast float %7190, %7174
  %7192 = fdiv fast float %7181, %7190
  %7193 = fmul fast float %7191, 5.000000e-01
  %7194 = fmul fast float %7192, 2.000000e+00
  %7195 = select i1 %7187, float %7193, float %7194
  %7196 = select i1 %7187, float %7194, float %7193
  %7197 = call float @dx.op.binary.f32(i32 35, float %7195, float %7196)  ; FMax(a,b)
  %7198 = call float @dx.op.binary.f32(i32 36, float %7195, float %7196)  ; FMin(a,b)
  %7199 = fcmp fast ogt float %7156, %7197
  %7200 = fsub fast float %7156, %7198
  %7201 = fsub fast float %7156, %7197
  %7202 = fsub fast float %7197, %7198
  %7203 = select i1 %7199, float %7201, float %7202
  %7204 = fmul float %7200, %7203
  %7205 = select i1 %7199, float %7198, float %7156
  %7206 = fcmp fast ogt float %7156, %7198
  %7207 = fmul fast float %7205, %7197
  %7208 = fadd fast float %7205, %7197
  %7209 = fmul fast float %7208, %6991
  %7210 = fadd fast float %7207, %6992
  %7211 = fsub fast float %7210, %7209
  %7212 = fdiv fast float %7211, %7204
  %7213 = select i1 %7206, float %7212, float 0.000000e+00
  %7214 = fsub fast float 1.000000e+00, %7213
  %7215 = select i1 %7199, float %7214, float %7213
  %7216 = call float @dx.op.unary.f32(i32 7, float %7215)  ; Saturate(value)
  %7217 = extractvalue %dx.types.CBufRet.f32 %6976, 3
  %7218 = fmul fast float %7217, %7216
  %7219 = fsub fast float 1.000000e+00, %7218
  br label %7220

; <label>:7220                                    ; preds = %7149, %6861, %6826, %6822, %6788
  %7221 = phi float [ 1.000000e+00, %6788 ], [ %7219, %7149 ], [ 1.000000e+00, %6826 ], [ 1.000000e+00, %6861 ], [ 1.000000e+00, %6822 ]
  %7222 = fcmp fast ogt float %6818, 0.000000e+00
  br i1 %7222, label %7223, label %7385, !dx.controlflow.hints !119

; <label>:7223                                    ; preds = %7220
  %7224 = fadd fast float %6731, %6705
  %7225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7226 = extractvalue %dx.types.CBufRet.f32 %7225, 2
  %7227 = extractvalue %dx.types.CBufRet.f32 %7225, 3
  %7228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7229 = extractvalue %dx.types.CBufRet.f32 %7228, 2
  %7230 = call float @dx.op.binary.f32(i32 35, float %7224, float 0.000000e+00)  ; FMax(a,b)
  %7231 = fadd fast float %7230, 0x3F10000000000000
  %7232 = fcmp fast oeq float %7229, 0.000000e+00
  br i1 %7232, label %7233, label %7300

; <label>:7233                                    ; preds = %7223
  %7234 = extractvalue %dx.types.CBufRet.f32 %7225, 1
  %7235 = extractvalue %dx.types.CBufRet.f32 %7225, 0
  %7236 = fmul fast float %7235, %6720
  %7237 = fmul fast float %7234, %6721
  %7238 = fadd fast float %7236, 5.000000e-01
  %7239 = call float @dx.op.unary.f32(i32 27, float %7238)  ; Round_ni(value)
  %7240 = fadd fast float %7237, 5.000000e-01
  %7241 = call float @dx.op.unary.f32(i32 27, float %7240)  ; Round_ni(value)
  %7242 = fsub fast float %7238, %7239
  %7243 = fsub fast float %7240, %7241
  %7244 = fadd fast float %7239, -5.000000e-01
  %7245 = fadd fast float %7241, -5.000000e-01
  %7246 = fmul fast float %7242, 2.000000e+00
  %7247 = fsub fast float 3.000000e+00, %7246
  %7248 = fadd fast float %7246, 1.000000e+00
  %7249 = fsub fast float 2.000000e+00, %7242
  %7250 = bitcast float %7247 to i32
  %7251 = sub nsw i32 2129859010, %7250
  %7252 = bitcast i32 %7251 to float
  %7253 = fmul fast float %7252, %7249
  %7254 = fadd fast float %7253, -1.000000e+00
  %7255 = bitcast float %7248 to i32
  %7256 = sub nsw i32 2129859010, %7255
  %7257 = bitcast i32 %7256 to float
  %7258 = fmul fast float %7257, %7242
  %7259 = fadd fast float %7258, 1.000000e+00
  %7260 = fmul fast float %7243, 2.000000e+00
  %7261 = fsub fast float 3.000000e+00, %7260
  %7262 = fadd fast float %7260, 1.000000e+00
  %7263 = fsub fast float 2.000000e+00, %7243
  %7264 = bitcast float %7261 to i32
  %7265 = sub nsw i32 2129859010, %7264
  %7266 = bitcast i32 %7265 to float
  %7267 = fmul fast float %7266, %7263
  %7268 = fadd fast float %7267, -1.000000e+00
  %7269 = bitcast float %7262 to i32
  %7270 = sub nsw i32 2129859010, %7269
  %7271 = bitcast i32 %7270 to float
  %7272 = fmul fast float %7271, %7243
  %7273 = fadd fast float %7272, 1.000000e+00
  %7274 = fadd fast float %7254, %7244
  %7275 = fmul fast float %7274, %7226
  %7276 = fadd fast float %7268, %7245
  %7277 = fmul fast float %7276, %7227
  %7278 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %7275, float %7277, float undef, float undef, i32 0, i32 0, i32 undef, float %7231)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7279 = extractvalue %dx.types.ResRet.f32 %7278, 0
  %7280 = fmul fast float %7279, %7247
  %7281 = fadd fast float %7259, %7244
  %7282 = fmul fast float %7281, %7226
  %7283 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %7282, float %7277, float undef, float undef, i32 0, i32 0, i32 undef, float %7231)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7284 = extractvalue %dx.types.ResRet.f32 %7283, 0
  %7285 = fmul fast float %7284, %7248
  %7286 = fadd fast float %7273, %7245
  %7287 = fmul fast float %7286, %7227
  %7288 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %7275, float %7287, float undef, float undef, i32 0, i32 0, i32 undef, float %7231)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7289 = extractvalue %dx.types.ResRet.f32 %7288, 0
  %7290 = fmul fast float %7289, %7247
  %7291 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %7282, float %7287, float undef, float undef, i32 0, i32 0, i32 undef, float %7231)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7292 = extractvalue %dx.types.ResRet.f32 %7291, 0
  %7293 = fmul fast float %7292, %7248
  %7294 = fadd fast float %7293, %7290
  %7295 = fmul fast float %7294, %7262
  %7296 = fadd fast float %7285, %7280
  %7297 = fmul fast float %7296, %7261
  %7298 = fadd fast float %7297, %7295
  %7299 = fmul fast float %7298, 6.250000e-02
  br label %7385

; <label>:7300                                    ; preds = %7223
  %7301 = fmul fast float %237, 0x401921FB60000000
  %7302 = call float @dx.op.unary.f32(i32 13, float %7301)  ; Sin(value)
  %7303 = call float @dx.op.unary.f32(i32 12, float %7301)  ; Cos(value)
  %7304 = fsub fast float -0.000000e+00, %7302
  br label %7305

; <label>:7305                                    ; preds = %7354, %7300
  %7306 = phi float [ 0.000000e+00, %7300 ], [ %7349, %7354 ]
  %7307 = phi float [ 0.000000e+00, %7300 ], [ %7351, %7354 ]
  %7308 = phi i32 [ 0, %7300 ], [ %7355, %7354 ]
  %7309 = mul i32 %7308, 2
  %7310 = add i32 0, %7309
  %7311 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7310
  %7312 = load float, float* %7311, align 4
  %7313 = mul i32 %7308, 2
  %7314 = add i32 1, %7313
  %7315 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7314
  %7316 = load float, float* %7315, align 4
  %7317 = fmul fast float %7312, %7303
  %7318 = call float @dx.op.tertiary.f32(i32 46, float %7316, float %7304, float %7317)  ; FMad(a,b,c)
  %7319 = fmul fast float %7312, %7302
  %7320 = call float @dx.op.tertiary.f32(i32 46, float %7316, float %7303, float %7319)  ; FMad(a,b,c)
  %7321 = fmul fast float %7318, %7229
  %7322 = fmul fast float %7320, %7229
  %7323 = fadd fast float %7321, %6720
  %7324 = fadd fast float %7322, %6721
  %7325 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %55, float %7323, float %7324, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7326 = extractvalue %dx.types.ResRet.f32 %7325, 0
  %7327 = extractvalue %dx.types.ResRet.f32 %7325, 1
  %7328 = extractvalue %dx.types.ResRet.f32 %7325, 2
  %7329 = extractvalue %dx.types.ResRet.f32 %7325, 3
  %7330 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 0
  store float %7326, float* %7330, align 4
  %7331 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 1
  store float %7327, float* %7331, align 4
  %7332 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 2
  store float %7328, float* %7332, align 4
  %7333 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 3
  store float %7329, float* %7333, align 4
  %7334 = fsub fast float %7326, %7231
  %7335 = fcmp fast olt float %7334, 0.000000e+00
  %7336 = select i1 %7335, float 0.000000e+00, float 1.000000e+00
  %7337 = fadd fast float %7336, %7306
  %7338 = fmul fast float %7336, %7334
  %7339 = fadd fast float %7338, %7307
  br label %7340

; <label>:7340                                    ; preds = %7340, %7305
  %7341 = phi i32 [ 1, %7305 ], [ %7352, %7340 ]
  %7342 = phi float [ %7339, %7305 ], [ %7351, %7340 ]
  %7343 = phi float [ %7337, %7305 ], [ %7349, %7340 ]
  %7344 = getelementptr [4 x float], [4 x float]* %102, i32 0, i32 %7341
  %7345 = load float, float* %7344, align 4, !tbaa !120, !noalias !110
  %7346 = fsub fast float %7345, %7231
  %7347 = fcmp fast olt float %7346, 0.000000e+00
  %7348 = select i1 %7347, float 0.000000e+00, float 1.000000e+00
  %7349 = fadd fast float %7348, %7343
  %7350 = fmul fast float %7348, %7346
  %7351 = fadd fast float %7350, %7342
  %7352 = add nuw nsw i32 %7341, 1
  %7353 = icmp eq i32 %7352, 4
  br i1 %7353, label %7354, label %7340, !llvm.loop !122

; <label>:7354                                    ; preds = %7340
  %7355 = add nuw nsw i32 %7308, 1
  %7356 = icmp eq i32 %7355, 8
  br i1 %7356, label %7357, label %7305, !llvm.loop !123

; <label>:7357                                    ; preds = %7354
  %7358 = fdiv fast float 1.000000e+00, %7349
  %7359 = fmul fast float %7358, %7351
  %7360 = fdiv fast float 1.000000e+00, %7231
  %7361 = fmul fast float %7359, %7360
  %7362 = call float @dx.op.unary.f32(i32 7, float %7361)  ; Saturate(value)
  %7363 = call float @dx.op.binary.f32(i32 35, float %7362, float 0.000000e+00)  ; FMax(a,b)
  %7364 = fmul fast float %7349, 3.125000e-02
  %7365 = call float @dx.op.unary.f32(i32 7, float %7364)  ; Saturate(value)
  %7366 = fmul fast float %7365, 2.000000e+00
  %7367 = fadd fast float %7366, -1.000000e+00
  %7368 = fcmp fast ogt float %7367, 0.000000e+00
  %7369 = fcmp fast olt float %7367, 0.000000e+00
  %7370 = zext i1 %7368 to i32
  %7371 = zext i1 %7369 to i32
  %7372 = sub nsw i32 %7370, %7371
  %7373 = sitofp i32 %7372 to float
  %7374 = fmul fast float %7373, %7367
  %7375 = fsub fast float 1.000000e+00, %7374
  %7376 = fmul fast float %7375, %7375
  %7377 = fmul fast float %7376, %7375
  %7378 = fsub fast float %7375, %7377
  %7379 = fmul fast float %7378, %7363
  %7380 = fsub fast float 1.000000e+00, %7377
  %7381 = fsub fast float %7380, %7379
  %7382 = fmul fast float %7373, 5.000000e-01
  %7383 = fmul fast float %7382, %7381
  %7384 = fsub fast float 5.000000e-01, %7383
  br label %7385

; <label>:7385                                    ; preds = %7357, %7233, %7220
  %7386 = phi float [ 1.000000e+00, %7220 ], [ %7299, %7233 ], [ %7384, %7357 ]
  %7387 = fcmp fast ogt float %6816, 0.000000e+00
  br i1 %7387, label %7388, label %7552, !dx.controlflow.hints !124

; <label>:7388                                    ; preds = %7385
  %7389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7390 = extractvalue %dx.types.CBufRet.f32 %7389, 1
  %7391 = fadd fast float %7390, %6705
  %7392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7393 = extractvalue %dx.types.CBufRet.f32 %7392, 2
  %7394 = extractvalue %dx.types.CBufRet.f32 %7392, 3
  %7395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7396 = extractvalue %dx.types.CBufRet.f32 %7395, 1
  %7397 = call float @dx.op.binary.f32(i32 35, float %7391, float 0.000000e+00)  ; FMax(a,b)
  %7398 = fadd fast float %7397, 0x3F10000000000000
  %7399 = fcmp fast oeq float %7396, 0.000000e+00
  br i1 %7399, label %7400, label %7467

; <label>:7400                                    ; preds = %7388
  %7401 = extractvalue %dx.types.CBufRet.f32 %7392, 1
  %7402 = extractvalue %dx.types.CBufRet.f32 %7392, 0
  %7403 = fmul fast float %7402, %6712
  %7404 = fmul fast float %7401, %6713
  %7405 = fadd fast float %7403, 5.000000e-01
  %7406 = call float @dx.op.unary.f32(i32 27, float %7405)  ; Round_ni(value)
  %7407 = fadd fast float %7404, 5.000000e-01
  %7408 = call float @dx.op.unary.f32(i32 27, float %7407)  ; Round_ni(value)
  %7409 = fsub fast float %7405, %7406
  %7410 = fsub fast float %7407, %7408
  %7411 = fadd fast float %7406, -5.000000e-01
  %7412 = fadd fast float %7408, -5.000000e-01
  %7413 = fmul fast float %7409, 2.000000e+00
  %7414 = fsub fast float 3.000000e+00, %7413
  %7415 = fadd fast float %7413, 1.000000e+00
  %7416 = fsub fast float 2.000000e+00, %7409
  %7417 = bitcast float %7414 to i32
  %7418 = sub nsw i32 2129859010, %7417
  %7419 = bitcast i32 %7418 to float
  %7420 = fmul fast float %7419, %7416
  %7421 = fadd fast float %7420, -1.000000e+00
  %7422 = bitcast float %7415 to i32
  %7423 = sub nsw i32 2129859010, %7422
  %7424 = bitcast i32 %7423 to float
  %7425 = fmul fast float %7424, %7409
  %7426 = fadd fast float %7425, 1.000000e+00
  %7427 = fmul fast float %7410, 2.000000e+00
  %7428 = fsub fast float 3.000000e+00, %7427
  %7429 = fadd fast float %7427, 1.000000e+00
  %7430 = fsub fast float 2.000000e+00, %7410
  %7431 = bitcast float %7428 to i32
  %7432 = sub nsw i32 2129859010, %7431
  %7433 = bitcast i32 %7432 to float
  %7434 = fmul fast float %7433, %7430
  %7435 = fadd fast float %7434, -1.000000e+00
  %7436 = bitcast float %7429 to i32
  %7437 = sub nsw i32 2129859010, %7436
  %7438 = bitcast i32 %7437 to float
  %7439 = fmul fast float %7438, %7410
  %7440 = fadd fast float %7439, 1.000000e+00
  %7441 = fadd fast float %7421, %7411
  %7442 = fmul fast float %7441, %7393
  %7443 = fadd fast float %7435, %7412
  %7444 = fmul fast float %7443, %7394
  %7445 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %7442, float %7444, float undef, float undef, i32 0, i32 0, i32 undef, float %7398)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7446 = extractvalue %dx.types.ResRet.f32 %7445, 0
  %7447 = fmul fast float %7446, %7414
  %7448 = fadd fast float %7426, %7411
  %7449 = fmul fast float %7448, %7393
  %7450 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %7449, float %7444, float undef, float undef, i32 0, i32 0, i32 undef, float %7398)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7451 = extractvalue %dx.types.ResRet.f32 %7450, 0
  %7452 = fmul fast float %7451, %7415
  %7453 = fadd fast float %7440, %7412
  %7454 = fmul fast float %7453, %7394
  %7455 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %7442, float %7454, float undef, float undef, i32 0, i32 0, i32 undef, float %7398)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7456 = extractvalue %dx.types.ResRet.f32 %7455, 0
  %7457 = fmul fast float %7456, %7414
  %7458 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %7449, float %7454, float undef, float undef, i32 0, i32 0, i32 undef, float %7398)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7459 = extractvalue %dx.types.ResRet.f32 %7458, 0
  %7460 = fmul fast float %7459, %7415
  %7461 = fadd fast float %7460, %7457
  %7462 = fmul fast float %7461, %7429
  %7463 = fadd fast float %7452, %7447
  %7464 = fmul fast float %7463, %7428
  %7465 = fadd fast float %7464, %7462
  %7466 = fmul fast float %7465, 6.250000e-02
  br label %7552

; <label>:7467                                    ; preds = %7388
  %7468 = fmul fast float %237, 0x401921FB60000000
  %7469 = call float @dx.op.unary.f32(i32 13, float %7468)  ; Sin(value)
  %7470 = call float @dx.op.unary.f32(i32 12, float %7468)  ; Cos(value)
  %7471 = fsub fast float -0.000000e+00, %7469
  br label %7472

; <label>:7472                                    ; preds = %7521, %7467
  %7473 = phi float [ 0.000000e+00, %7467 ], [ %7516, %7521 ]
  %7474 = phi float [ 0.000000e+00, %7467 ], [ %7518, %7521 ]
  %7475 = phi i32 [ 0, %7467 ], [ %7522, %7521 ]
  %7476 = mul i32 %7475, 2
  %7477 = add i32 0, %7476
  %7478 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7477
  %7479 = load float, float* %7478, align 4
  %7480 = mul i32 %7475, 2
  %7481 = add i32 1, %7480
  %7482 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7481
  %7483 = load float, float* %7482, align 4
  %7484 = fmul fast float %7479, %7470
  %7485 = call float @dx.op.tertiary.f32(i32 46, float %7483, float %7471, float %7484)  ; FMad(a,b,c)
  %7486 = fmul fast float %7479, %7469
  %7487 = call float @dx.op.tertiary.f32(i32 46, float %7483, float %7470, float %7486)  ; FMad(a,b,c)
  %7488 = fmul fast float %7485, %7396
  %7489 = fmul fast float %7487, %7396
  %7490 = fadd fast float %7488, %6712
  %7491 = fadd fast float %7489, %6713
  %7492 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %55, float %7490, float %7491, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7493 = extractvalue %dx.types.ResRet.f32 %7492, 0
  %7494 = extractvalue %dx.types.ResRet.f32 %7492, 1
  %7495 = extractvalue %dx.types.ResRet.f32 %7492, 2
  %7496 = extractvalue %dx.types.ResRet.f32 %7492, 3
  %7497 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 0
  store float %7493, float* %7497, align 4
  %7498 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 1
  store float %7494, float* %7498, align 4
  %7499 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 2
  store float %7495, float* %7499, align 4
  %7500 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 3
  store float %7496, float* %7500, align 4
  %7501 = fsub fast float %7493, %7398
  %7502 = fcmp fast olt float %7501, 0.000000e+00
  %7503 = select i1 %7502, float 0.000000e+00, float 1.000000e+00
  %7504 = fadd fast float %7503, %7473
  %7505 = fmul fast float %7503, %7501
  %7506 = fadd fast float %7505, %7474
  br label %7507

; <label>:7507                                    ; preds = %7507, %7472
  %7508 = phi i32 [ 1, %7472 ], [ %7519, %7507 ]
  %7509 = phi float [ %7506, %7472 ], [ %7518, %7507 ]
  %7510 = phi float [ %7504, %7472 ], [ %7516, %7507 ]
  %7511 = getelementptr [4 x float], [4 x float]* %101, i32 0, i32 %7508
  %7512 = load float, float* %7511, align 4, !tbaa !120, !noalias !110
  %7513 = fsub fast float %7512, %7398
  %7514 = fcmp fast olt float %7513, 0.000000e+00
  %7515 = select i1 %7514, float 0.000000e+00, float 1.000000e+00
  %7516 = fadd fast float %7515, %7510
  %7517 = fmul fast float %7515, %7513
  %7518 = fadd fast float %7517, %7509
  %7519 = add nuw nsw i32 %7508, 1
  %7520 = icmp eq i32 %7519, 4
  br i1 %7520, label %7521, label %7507, !llvm.loop !122

; <label>:7521                                    ; preds = %7507
  %7522 = add nuw nsw i32 %7475, 1
  %7523 = icmp eq i32 %7522, 8
  br i1 %7523, label %7524, label %7472, !llvm.loop !123

; <label>:7524                                    ; preds = %7521
  %7525 = fdiv fast float 1.000000e+00, %7516
  %7526 = fmul fast float %7525, %7518
  %7527 = fdiv fast float 1.000000e+00, %7398
  %7528 = fmul fast float %7526, %7527
  %7529 = call float @dx.op.unary.f32(i32 7, float %7528)  ; Saturate(value)
  %7530 = call float @dx.op.binary.f32(i32 35, float %7529, float 0.000000e+00)  ; FMax(a,b)
  %7531 = fmul fast float %7516, 3.125000e-02
  %7532 = call float @dx.op.unary.f32(i32 7, float %7531)  ; Saturate(value)
  %7533 = fmul fast float %7532, 2.000000e+00
  %7534 = fadd fast float %7533, -1.000000e+00
  %7535 = fcmp fast ogt float %7534, 0.000000e+00
  %7536 = fcmp fast olt float %7534, 0.000000e+00
  %7537 = zext i1 %7535 to i32
  %7538 = zext i1 %7536 to i32
  %7539 = sub nsw i32 %7537, %7538
  %7540 = sitofp i32 %7539 to float
  %7541 = fmul fast float %7540, %7534
  %7542 = fsub fast float 1.000000e+00, %7541
  %7543 = fmul fast float %7542, %7542
  %7544 = fmul fast float %7543, %7542
  %7545 = fsub fast float %7542, %7544
  %7546 = fmul fast float %7545, %7530
  %7547 = fsub fast float 1.000000e+00, %7544
  %7548 = fsub fast float %7547, %7546
  %7549 = fmul fast float %7540, 5.000000e-01
  %7550 = fmul fast float %7549, %7548
  %7551 = fsub fast float 5.000000e-01, %7550
  br label %7552

; <label>:7552                                    ; preds = %7524, %7400, %7385
  %7553 = phi float [ 1.000000e+00, %7385 ], [ %7466, %7400 ], [ %7551, %7524 ]
  %7554 = fcmp fast ogt float %6815, 0.000000e+00
  br i1 %7554, label %7555, label %7719, !dx.controlflow.hints !125

; <label>:7555                                    ; preds = %7552
  %7556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7557 = extractvalue %dx.types.CBufRet.f32 %7556, 0
  %7558 = fadd fast float %7557, %6705
  %7559 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7560 = extractvalue %dx.types.CBufRet.f32 %7559, 2
  %7561 = extractvalue %dx.types.CBufRet.f32 %7559, 3
  %7562 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7563 = extractvalue %dx.types.CBufRet.f32 %7562, 0
  %7564 = call float @dx.op.binary.f32(i32 35, float %7558, float 0.000000e+00)  ; FMax(a,b)
  %7565 = fadd fast float %7564, 0x3F10000000000000
  %7566 = fcmp fast oeq float %7563, 0.000000e+00
  br i1 %7566, label %7567, label %7634

; <label>:7567                                    ; preds = %7555
  %7568 = extractvalue %dx.types.CBufRet.f32 %7559, 1
  %7569 = extractvalue %dx.types.CBufRet.f32 %7559, 0
  %7570 = fmul fast float %7569, %6697
  %7571 = fmul fast float %7568, %6701
  %7572 = fadd fast float %7570, 5.000000e-01
  %7573 = call float @dx.op.unary.f32(i32 27, float %7572)  ; Round_ni(value)
  %7574 = fadd fast float %7571, 5.000000e-01
  %7575 = call float @dx.op.unary.f32(i32 27, float %7574)  ; Round_ni(value)
  %7576 = fsub fast float %7572, %7573
  %7577 = fsub fast float %7574, %7575
  %7578 = fadd fast float %7573, -5.000000e-01
  %7579 = fadd fast float %7575, -5.000000e-01
  %7580 = fmul fast float %7576, 2.000000e+00
  %7581 = fsub fast float 3.000000e+00, %7580
  %7582 = fadd fast float %7580, 1.000000e+00
  %7583 = fsub fast float 2.000000e+00, %7576
  %7584 = bitcast float %7581 to i32
  %7585 = sub nsw i32 2129859010, %7584
  %7586 = bitcast i32 %7585 to float
  %7587 = fmul fast float %7586, %7583
  %7588 = fadd fast float %7587, -1.000000e+00
  %7589 = bitcast float %7582 to i32
  %7590 = sub nsw i32 2129859010, %7589
  %7591 = bitcast i32 %7590 to float
  %7592 = fmul fast float %7591, %7576
  %7593 = fadd fast float %7592, 1.000000e+00
  %7594 = fmul fast float %7577, 2.000000e+00
  %7595 = fsub fast float 3.000000e+00, %7594
  %7596 = fadd fast float %7594, 1.000000e+00
  %7597 = fsub fast float 2.000000e+00, %7577
  %7598 = bitcast float %7595 to i32
  %7599 = sub nsw i32 2129859010, %7598
  %7600 = bitcast i32 %7599 to float
  %7601 = fmul fast float %7600, %7597
  %7602 = fadd fast float %7601, -1.000000e+00
  %7603 = bitcast float %7596 to i32
  %7604 = sub nsw i32 2129859010, %7603
  %7605 = bitcast i32 %7604 to float
  %7606 = fmul fast float %7605, %7577
  %7607 = fadd fast float %7606, 1.000000e+00
  %7608 = fadd fast float %7588, %7578
  %7609 = fmul fast float %7608, %7560
  %7610 = fadd fast float %7602, %7579
  %7611 = fmul fast float %7610, %7561
  %7612 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7609, float %7611, float undef, float undef, i32 0, i32 0, i32 undef, float %7565)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7613 = extractvalue %dx.types.ResRet.f32 %7612, 0
  %7614 = fmul fast float %7613, %7581
  %7615 = fadd fast float %7593, %7578
  %7616 = fmul fast float %7615, %7560
  %7617 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7616, float %7611, float undef, float undef, i32 0, i32 0, i32 undef, float %7565)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7618 = extractvalue %dx.types.ResRet.f32 %7617, 0
  %7619 = fmul fast float %7618, %7582
  %7620 = fadd fast float %7607, %7579
  %7621 = fmul fast float %7620, %7561
  %7622 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7609, float %7621, float undef, float undef, i32 0, i32 0, i32 undef, float %7565)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7623 = extractvalue %dx.types.ResRet.f32 %7622, 0
  %7624 = fmul fast float %7623, %7581
  %7625 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7616, float %7621, float undef, float undef, i32 0, i32 0, i32 undef, float %7565)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7626 = extractvalue %dx.types.ResRet.f32 %7625, 0
  %7627 = fmul fast float %7626, %7582
  %7628 = fadd fast float %7627, %7624
  %7629 = fmul fast float %7628, %7596
  %7630 = fadd fast float %7619, %7614
  %7631 = fmul fast float %7630, %7595
  %7632 = fadd fast float %7631, %7629
  %7633 = fmul fast float %7632, 6.250000e-02
  br label %7719

; <label>:7634                                    ; preds = %7555
  %7635 = fmul fast float %237, 0x401921FB60000000
  %7636 = call float @dx.op.unary.f32(i32 13, float %7635)  ; Sin(value)
  %7637 = call float @dx.op.unary.f32(i32 12, float %7635)  ; Cos(value)
  %7638 = fsub fast float -0.000000e+00, %7636
  br label %7639

; <label>:7639                                    ; preds = %7688, %7634
  %7640 = phi float [ 0.000000e+00, %7634 ], [ %7683, %7688 ]
  %7641 = phi float [ 0.000000e+00, %7634 ], [ %7685, %7688 ]
  %7642 = phi i32 [ 0, %7634 ], [ %7689, %7688 ]
  %7643 = mul i32 %7642, 2
  %7644 = add i32 0, %7643
  %7645 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7644
  %7646 = load float, float* %7645, align 4
  %7647 = mul i32 %7642, 2
  %7648 = add i32 1, %7647
  %7649 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7648
  %7650 = load float, float* %7649, align 4
  %7651 = fmul fast float %7646, %7637
  %7652 = call float @dx.op.tertiary.f32(i32 46, float %7650, float %7638, float %7651)  ; FMad(a,b,c)
  %7653 = fmul fast float %7646, %7636
  %7654 = call float @dx.op.tertiary.f32(i32 46, float %7650, float %7637, float %7653)  ; FMad(a,b,c)
  %7655 = fmul fast float %7652, %7563
  %7656 = fmul fast float %7654, %7563
  %7657 = fadd fast float %7655, %6697
  %7658 = fadd fast float %7656, %6701
  %7659 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %55, float %7657, float %7658, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7660 = extractvalue %dx.types.ResRet.f32 %7659, 0
  %7661 = extractvalue %dx.types.ResRet.f32 %7659, 1
  %7662 = extractvalue %dx.types.ResRet.f32 %7659, 2
  %7663 = extractvalue %dx.types.ResRet.f32 %7659, 3
  %7664 = getelementptr inbounds [4 x float], [4 x float]* %100, i32 0, i32 0
  store float %7660, float* %7664, align 4
  %7665 = getelementptr inbounds [4 x float], [4 x float]* %100, i32 0, i32 1
  store float %7661, float* %7665, align 4
  %7666 = getelementptr inbounds [4 x float], [4 x float]* %100, i32 0, i32 2
  store float %7662, float* %7666, align 4
  %7667 = getelementptr inbounds [4 x float], [4 x float]* %100, i32 0, i32 3
  store float %7663, float* %7667, align 4
  %7668 = fsub fast float %7660, %7565
  %7669 = fcmp fast olt float %7668, 0.000000e+00
  %7670 = select i1 %7669, float 0.000000e+00, float 1.000000e+00
  %7671 = fadd fast float %7670, %7640
  %7672 = fmul fast float %7670, %7668
  %7673 = fadd fast float %7672, %7641
  br label %7674

; <label>:7674                                    ; preds = %7674, %7639
  %7675 = phi i32 [ 1, %7639 ], [ %7686, %7674 ]
  %7676 = phi float [ %7673, %7639 ], [ %7685, %7674 ]
  %7677 = phi float [ %7671, %7639 ], [ %7683, %7674 ]
  %7678 = getelementptr [4 x float], [4 x float]* %100, i32 0, i32 %7675
  %7679 = load float, float* %7678, align 4, !tbaa !120, !noalias !110
  %7680 = fsub fast float %7679, %7565
  %7681 = fcmp fast olt float %7680, 0.000000e+00
  %7682 = select i1 %7681, float 0.000000e+00, float 1.000000e+00
  %7683 = fadd fast float %7682, %7677
  %7684 = fmul fast float %7682, %7680
  %7685 = fadd fast float %7684, %7676
  %7686 = add nuw nsw i32 %7675, 1
  %7687 = icmp eq i32 %7686, 4
  br i1 %7687, label %7688, label %7674, !llvm.loop !122

; <label>:7688                                    ; preds = %7674
  %7689 = add nuw nsw i32 %7642, 1
  %7690 = icmp eq i32 %7689, 8
  br i1 %7690, label %7691, label %7639, !llvm.loop !123

; <label>:7691                                    ; preds = %7688
  %7692 = fdiv fast float 1.000000e+00, %7683
  %7693 = fmul fast float %7692, %7685
  %7694 = fdiv fast float 1.000000e+00, %7565
  %7695 = fmul fast float %7693, %7694
  %7696 = call float @dx.op.unary.f32(i32 7, float %7695)  ; Saturate(value)
  %7697 = call float @dx.op.binary.f32(i32 35, float %7696, float 0.000000e+00)  ; FMax(a,b)
  %7698 = fmul fast float %7683, 3.125000e-02
  %7699 = call float @dx.op.unary.f32(i32 7, float %7698)  ; Saturate(value)
  %7700 = fmul fast float %7699, 2.000000e+00
  %7701 = fadd fast float %7700, -1.000000e+00
  %7702 = fcmp fast ogt float %7701, 0.000000e+00
  %7703 = fcmp fast olt float %7701, 0.000000e+00
  %7704 = zext i1 %7702 to i32
  %7705 = zext i1 %7703 to i32
  %7706 = sub nsw i32 %7704, %7705
  %7707 = sitofp i32 %7706 to float
  %7708 = fmul fast float %7707, %7701
  %7709 = fsub fast float 1.000000e+00, %7708
  %7710 = fmul fast float %7709, %7709
  %7711 = fmul fast float %7710, %7709
  %7712 = fsub fast float %7709, %7711
  %7713 = fmul fast float %7712, %7697
  %7714 = fsub fast float 1.000000e+00, %7711
  %7715 = fsub fast float %7714, %7713
  %7716 = fmul fast float %7707, 5.000000e-01
  %7717 = fmul fast float %7716, %7715
  %7718 = fsub fast float 5.000000e-01, %7717
  br label %7719

; <label>:7719                                    ; preds = %7691, %7567, %7552
  %7720 = phi float [ 1.000000e+00, %7552 ], [ %7633, %7567 ], [ %7718, %7691 ]
  %7721 = fsub fast float %7386, %7221
  %7722 = fmul fast float %7721, %6759
  %7723 = fadd fast float %7722, %7221
  %7724 = fsub fast float %7553, %7723
  %7725 = fmul fast float %7724, %6789
  %7726 = fadd fast float %7725, %7723
  %7727 = fsub fast float %7720, %7726
  %7728 = fmul fast float %7727, %6815
  %7729 = fadd fast float %7728, %7726
  %7730 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %7731 = extractvalue %dx.types.CBufRet.f32 %7730, 2
  %7732 = fcmp fast ogt float %7731, 0.000000e+00
  br i1 %7732, label %7733, label %7773, !dx.controlflow.hints !126

; <label>:7733                                    ; preds = %7719
  %7734 = fcmp fast ugt float %7731, 0.000000e+00
  br i1 %7734, label %7735, label %7770

; <label>:7735                                    ; preds = %7733
  %7736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %7737 = extractvalue %dx.types.CBufRet.f32 %7736, 0
  %7738 = extractvalue %dx.types.CBufRet.f32 %7736, 1
  %7739 = extractvalue %dx.types.CBufRet.f32 %7736, 2
  %7740 = extractvalue %dx.types.CBufRet.f32 %7736, 3
  %7741 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %7742 = extractvalue %dx.types.CBufRet.f32 %7741, 0
  %7743 = extractvalue %dx.types.CBufRet.f32 %7741, 1
  %7744 = extractvalue %dx.types.CBufRet.f32 %7741, 2
  %7745 = extractvalue %dx.types.CBufRet.f32 %7741, 3
  %7746 = extractvalue %dx.types.CBufRet.f32 %7730, 0
  %7747 = extractvalue %dx.types.CBufRet.f32 %7730, 1
  %7748 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %7749 = extractvalue %dx.types.CBufRet.f32 %7748, 0
  %7750 = extractvalue %dx.types.CBufRet.f32 %7748, 1
  %7751 = extractvalue %dx.types.CBufRet.f32 %7748, 2
  %7752 = fadd fast float %7749, %6674
  %7753 = fadd fast float %7750, %6675
  %7754 = fadd fast float %7751, %6676
  %7755 = fmul fast float %7752, %7737
  %7756 = call float @dx.op.tertiary.f32(i32 46, float %7738, float %7753, float %7755)  ; FMad(a,b,c)
  %7757 = call float @dx.op.tertiary.f32(i32 46, float %7739, float %7754, float %7756)  ; FMad(a,b,c)
  %7758 = fadd fast float %7757, %7740
  %7759 = fmul fast float %7752, %7742
  %7760 = call float @dx.op.tertiary.f32(i32 46, float %7743, float %7753, float %7759)  ; FMad(a,b,c)
  %7761 = call float @dx.op.tertiary.f32(i32 46, float %7744, float %7754, float %7760)  ; FMad(a,b,c)
  %7762 = fadd fast float %7761, %7745
  %7763 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %51, float %7758, float %7762, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %7764 = extractvalue %dx.types.ResRet.f32 %7763, 0
  %7765 = fmul fast float %7764, %7747
  %7766 = fadd fast float %7765, %7746
  %7767 = call float @dx.op.unary.f32(i32 7, float %7766)  ; Saturate(value)
  %7768 = fmul fast float %7767, %7731
  %7769 = fsub fast float 1.000000e+00, %7768
  br label %7770

; <label>:7770                                    ; preds = %7735, %7733
  %7771 = phi float [ %7769, %7735 ], [ 1.000000e+00, %7733 ]
  %7772 = fmul fast float %7771, %7729
  br label %7773

; <label>:7773                                    ; preds = %7770, %7719, %6654
  %7774 = phi float [ 1.000000e+00, %6654 ], [ %7772, %7770 ], [ %7729, %7719 ]
  %7775 = call float @dx.op.binary.f32(i32 36, float %7774, float %7774)  ; FMin(a,b)
  %7776 = call float @dx.op.binary.f32(i32 36, float %7774, float %7775)  ; FMin(a,b)
  %7777 = fcmp fast ogt float %7776, 0.000000e+00
  br i1 %7777, label %7778, label %7943, !dx.controlflow.hints !127

; <label>:7778                                    ; preds = %7773
  %7779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7780 = extractvalue %dx.types.CBufRet.f32 %7779, 0
  %7781 = extractvalue %dx.types.CBufRet.f32 %7779, 1
  %7782 = extractvalue %dx.types.CBufRet.f32 %7779, 2
  %7783 = extractvalue %dx.types.CBufRet.f32 %7779, 3
  %7784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7785 = extractvalue %dx.types.CBufRet.f32 %7784, 0
  %7786 = extractvalue %dx.types.CBufRet.f32 %7784, 1
  %7787 = extractvalue %dx.types.CBufRet.f32 %7784, 2
  %7788 = extractvalue %dx.types.CBufRet.f32 %7784, 3
  %7789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7790 = extractvalue %dx.types.CBufRet.f32 %7789, 0
  %7791 = extractvalue %dx.types.CBufRet.f32 %7789, 1
  %7792 = extractvalue %dx.types.CBufRet.f32 %7789, 2
  %7793 = extractvalue %dx.types.CBufRet.f32 %7789, 3
  %7794 = fmul fast float %7780, %6674
  %7795 = call float @dx.op.tertiary.f32(i32 46, float %6675, float %7781, float %7794)  ; FMad(a,b,c)
  %7796 = call float @dx.op.tertiary.f32(i32 46, float %6676, float %7782, float %7795)  ; FMad(a,b,c)
  %7797 = fadd fast float %7796, %7783
  %7798 = fmul fast float %7785, %6674
  %7799 = call float @dx.op.tertiary.f32(i32 46, float %6675, float %7786, float %7798)  ; FMad(a,b,c)
  %7800 = call float @dx.op.tertiary.f32(i32 46, float %6676, float %7787, float %7799)  ; FMad(a,b,c)
  %7801 = fadd fast float %7800, %7788
  %7802 = fmul fast float %7790, %6674
  %7803 = call float @dx.op.tertiary.f32(i32 46, float %6675, float %7791, float %7802)  ; FMad(a,b,c)
  %7804 = call float @dx.op.tertiary.f32(i32 46, float %6676, float %7792, float %7803)  ; FMad(a,b,c)
  %7805 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %7806 = extractvalue %dx.types.CBufRet.f32 %7805, 0
  %7807 = extractvalue %dx.types.CBufRet.f32 %7805, 1
  %7808 = extractvalue %dx.types.CBufRet.f32 %7805, 3
  %7809 = fmul fast float %7808, %7797
  %7810 = fmul fast float %7808, %7801
  %7811 = fadd fast float %7809, %7806
  %7812 = fadd fast float %7810, %7807
  %7813 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %7814 = extractvalue %dx.types.CBufRet.f32 %7813, 0
  %7815 = extractvalue %dx.types.CBufRet.f32 %7813, 1
  %7816 = fsub fast float %7811, %7814
  %7817 = fsub fast float %7812, %7815
  %7818 = fcmp fast olt float %7816, 0.000000e+00
  %7819 = fcmp fast olt float %7817, 0.000000e+00
  %7820 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %7821 = extractvalue %dx.types.CBufRet.f32 %7820, 0
  %7822 = extractvalue %dx.types.CBufRet.f32 %7820, 1
  %7823 = extractvalue %dx.types.CBufRet.f32 %7820, 2
  %7824 = extractvalue %dx.types.CBufRet.f32 %7820, 3
  %7825 = select i1 %7818, float %7821, float %7823
  %7826 = select i1 %7819, float %7822, float %7824
  %7827 = fmul fast float %7825, %7816
  %7828 = fmul fast float %7826, %7817
  %7829 = call float @dx.op.unary.f32(i32 6, float %7827)  ; FAbs(value)
  %7830 = call float @dx.op.unary.f32(i32 6, float %7828)  ; FAbs(value)
  %7831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %7832 = extractvalue %dx.types.CBufRet.f32 %7831, 0
  %7833 = call float @dx.op.binary.f32(i32 35, float %7829, float %7830)  ; FMax(a,b)
  %7834 = fsub fast float %7832, %7833
  %7835 = call float @dx.op.unary.f32(i32 7, float %7834)  ; Saturate(value)
  %7836 = fcmp fast ogt float %7835, 0.000000e+00
  br i1 %7836, label %7837, label %7878, !dx.controlflow.hints !128

; <label>:7837                                    ; preds = %7778
  %7838 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %54, float %7811, float %7812, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7839 = extractvalue %dx.types.ResRet.f32 %7838, 1
  %7840 = fcmp fast ogt float %7839, 0.000000e+00
  br i1 %7840, label %7841, label %7873

; <label>:7841                                    ; preds = %7837
  %7842 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %54, float %7811, float %7812, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7843 = extractvalue %dx.types.ResRet.f32 %7842, 0
  %7844 = extractvalue %dx.types.ResRet.f32 %7842, 1
  %7845 = extractvalue %dx.types.ResRet.f32 %7842, 2
  %7846 = extractvalue %dx.types.ResRet.f32 %7842, 3
  %7847 = fsub fast float 1.000000e+00, %7793
  %7848 = fsub fast float %7847, %7804
  %7849 = fmul fast float %7848, 0x400921FB60000000
  %7850 = fadd fast float %7849, 0x3FF921FB60000000
  %7851 = call float @dx.op.unary.f32(i32 13, float %7850)  ; Sin(value)
  %7852 = fadd fast float %7851, -1.000000e+00
  %7853 = fmul fast float %7852, 0x3FD45F3060000000
  %7854 = fmul fast float %7848, 0x401921FB60000000
  %7855 = fadd fast float %7854, 0x400921FB60000000
  %7856 = call float @dx.op.unary.f32(i32 13, float %7855)  ; Sin(value)
  %7857 = fadd fast float %7856, 0x3E7777A5C0000000
  %7858 = fmul fast float %7857, 0x3FC45F3060000000
  %7859 = fmul fast float %7848, 0x4022D97C80000000
  %7860 = fadd fast float %7859, 0x4012D97C80000000
  %7861 = call float @dx.op.unary.f32(i32 13, float %7860)  ; Sin(value)
  %7862 = fadd fast float %7861, 1.000000e+00
  %7863 = fmul fast float %7862, 0x3FBB2995E0000000
  %7864 = fmul fast float %7848, 0x402921FB60000000
  %7865 = fadd fast float %7864, 0x401921FB60000000
  %7866 = call float @dx.op.unary.f32(i32 13, float %7865)  ; Sin(value)
  %7867 = fadd fast float %7866, 0xBE8777A5C0000000
  %7868 = fmul fast float %7867, 0x3FB45F3060000000
  %7869 = call float @dx.op.dot4.f32(i32 56, float %7843, float %7844, float %7845, float %7846, float %7853, float %7858, float %7863, float %7868)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7870 = fmul fast float %7869, 0xBFF7154760000000
  %7871 = call float @dx.op.unary.f32(i32 21, float %7870)  ; Exp(value)
  %7872 = call float @dx.op.unary.f32(i32 7, float %7871)  ; Saturate(value)
  br label %7873

; <label>:7873                                    ; preds = %7841, %7837
  %7874 = phi float [ %7872, %7841 ], [ 1.000000e+00, %7837 ]
  %7875 = fadd fast float %7874, -1.000000e+00
  %7876 = fmul fast float %7875, %7835
  %7877 = fadd fast float %7876, 1.000000e+00
  br label %7878

; <label>:7878                                    ; preds = %7873, %7778
  %7879 = phi float [ %7877, %7873 ], [ 1.000000e+00, %7778 ]
  %7880 = fmul fast float %7879, %7774
  %7881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %7882 = extractvalue %dx.types.CBufRet.f32 %7881, 0
  %7883 = extractvalue %dx.types.CBufRet.f32 %7881, 1
  %7884 = extractvalue %dx.types.CBufRet.f32 %7881, 2
  %7885 = fadd fast float %7882, %164
  %7886 = fadd fast float %7883, %165
  %7887 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7888 = extractvalue %dx.types.CBufRet.f32 %7887, 1
  %7889 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %7890 = extractvalue %dx.types.CBufRet.f32 %7889, 0
  %7891 = extractvalue %dx.types.CBufRet.f32 %7889, 1
  %7892 = extractvalue %dx.types.CBufRet.f32 %7889, 2
  %7893 = fsub fast float -0.000000e+00, %7885
  %7894 = fsub fast float -0.000000e+00, %7886
  %7895 = fsub fast float %5720, %7884
  %7896 = fadd fast float %7895, %7888
  %7897 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7893, float %7894, float %7896)  ; Dot3(ax,ay,az,bx,by,bz)
  %7898 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7890, float %7891, float %7892)  ; Dot3(ax,ay,az,bx,by,bz)
  %7899 = fdiv fast float 1.000000e+00, %7898
  %7900 = fmul fast float %7899, %7897
  %7901 = fmul fast float %7890, %7900
  %7902 = fmul fast float %7891, %7900
  %7903 = fadd fast float %7901, %7885
  %7904 = fadd fast float %7902, %7886
  %7905 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7906 = extractvalue %dx.types.CBufRet.f32 %7905, 0
  %7907 = extractvalue %dx.types.CBufRet.f32 %7905, 1
  %7908 = fsub fast float %7903, %7906
  %7909 = fsub fast float %7904, %7907
  %7910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7911 = extractvalue %dx.types.CBufRet.f32 %7910, 2
  %7912 = extractvalue %dx.types.CBufRet.f32 %7910, 3
  %7913 = fmul fast float %7908, %7911
  %7914 = fmul fast float %7909, %7912
  %7915 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7916 = extractvalue %dx.types.CBufRet.i32 %7915, 3
  %7917 = icmp eq i32 %7916, 0
  br i1 %7917, label %7923, label %7918

; <label>:7918                                    ; preds = %7878
  %7919 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %53, float %7913, float %7914, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7920 = extractvalue %dx.types.ResRet.f32 %7919, 0
  %7921 = extractvalue %dx.types.ResRet.f32 %7919, 1
  %7922 = extractvalue %dx.types.ResRet.f32 %7919, 2
  br label %7928

; <label>:7923                                    ; preds = %7878
  %7924 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %54, float %7913, float %7914, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7925 = extractvalue %dx.types.ResRet.f32 %7924, 0
  %7926 = extractvalue %dx.types.ResRet.f32 %7924, 1
  %7927 = extractvalue %dx.types.ResRet.f32 %7924, 2
  br label %7928

; <label>:7928                                    ; preds = %7923, %7918
  %7929 = phi float [ %7920, %7918 ], [ %7925, %7923 ]
  %7930 = phi float [ %7921, %7918 ], [ %7926, %7923 ]
  %7931 = phi float [ %7922, %7918 ], [ %7927, %7923 ]
  %7932 = extractvalue %dx.types.CBufRet.f32 %7887, 2
  %7933 = fmul fast float %7932, %7929
  %7934 = extractvalue %dx.types.CBufRet.f32 %7887, 0
  %7935 = fsub fast float %7900, %7934
  %7936 = fsub fast float %7935, %7933
  %7937 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7936)  ; FMax(a,b)
  %7938 = fmul fast float %7937, %7930
  %7939 = call float @dx.op.binary.f32(i32 36, float %7931, float %7938)  ; FMin(a,b)
  %7940 = fmul fast float %7939, 0xBFF7154760000000
  %7941 = call float @dx.op.unary.f32(i32 21, float %7940)  ; Exp(value)
  %7942 = fmul fast float %7880, %7941
  br label %7943

; <label>:7943                                    ; preds = %7928, %7773
  %7944 = phi float [ %7942, %7928 ], [ %7774, %7773 ]
  %7945 = call float @dx.op.binary.f32(i32 36, float %7944, float %7944)  ; FMin(a,b)
  %7946 = call float @dx.op.binary.f32(i32 36, float %7944, float %7945)  ; FMin(a,b)
  %7947 = fcmp fast ogt float %7946, 0.000000e+00
  br i1 %7947, label %7948, label %8331, !dx.controlflow.hints !129

; <label>:7948                                    ; preds = %7943
  %7949 = fmul fast float %7944, %6666
  %7950 = fmul fast float %7944, %6667
  %7951 = fmul fast float %7944, %6668
  %7952 = fsub fast float %166, %5511
  %7953 = fcmp fast ogt float %7952, 0.000000e+00
  %7954 = fmul fast float %6655, 5.120000e+02
  %7955 = fmul fast float %6656, 5.120000e+02
  %7956 = fmul fast float %6657, 5.120000e+02
  %7957 = fadd fast float %7956, %166
  %7958 = fsub fast float %5511, %7957
  %7959 = fmul fast float %7958, 2.000000e+00
  %7960 = fadd fast float %7959, %7957
  %7961 = select i1 %7953, float %7960, float %7957
  %7962 = fsub fast float %7961, %166
  %7963 = call float @dx.op.dot3.f32(i32 55, float %7954, float %7955, float %7962, float %7954, float %7955, float %7962)  ; Dot3(ax,ay,az,bx,by,bz)
  %7964 = call float @dx.op.unary.f32(i32 25, float %7963)  ; Rsqrt(value)
  %7965 = fmul fast float %7964, %7954
  %7966 = fmul fast float %7964, %7955
  %7967 = fmul fast float %7964, %7962
  %7968 = fsub fast float %5511, %166
  %7969 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7968)  ; Dot3(ax,ay,az,bx,by,bz)
  %7970 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7965, float %7966, float %7967)  ; Dot3(ax,ay,az,bx,by,bz)
  %7971 = fdiv fast float 1.000000e+00, %7970
  %7972 = fmul fast float %7971, %7969
  %7973 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7952, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7974 = fcmp fast ogt float %7973, 0.000000e+00
  %7975 = fcmp fast olt float %7973, 0.000000e+00
  %7976 = zext i1 %7974 to i32
  %7977 = zext i1 %7975 to i32
  %7978 = sub nsw i32 %7976, %7977
  %7979 = sitofp i32 %7978 to float
  %7980 = fsub fast float %7961, %5511
  %7981 = call float @dx.op.dot3.f32(i32 55, float %7954, float %7955, float %7980, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7982 = fcmp fast ogt float %7981, 0.000000e+00
  %7983 = fcmp fast olt float %7981, 0.000000e+00
  %7984 = zext i1 %7982 to i32
  %7985 = zext i1 %7983 to i32
  %7986 = sub nsw i32 %7984, %7985
  %7987 = sitofp i32 %7986 to float
  %7988 = fcmp fast une float %7979, %7987
  br i1 %7988, label %7989, label %7999

; <label>:7989                                    ; preds = %7948
  %7990 = fmul fast float %7972, %7967
  %7991 = fmul fast float %7972, %7966
  %7992 = fmul fast float %7972, %7965
  %7993 = fmul fast float %7992, %7992
  %7994 = fmul fast float %7991, %7991
  %7995 = fadd fast float %7993, %7994
  %7996 = fmul fast float %7990, %7990
  %7997 = fadd fast float %7995, %7996
  %7998 = call float @dx.op.unary.f32(i32 24, float %7997)  ; Sqrt(value)
  br label %8009

; <label>:7999                                    ; preds = %7948
  %8000 = icmp slt i32 %7978, 0
  br i1 %8000, label %8001, label %8009

; <label>:8001                                    ; preds = %7999
  %8002 = fsub fast float %166, %7961
  %8003 = fmul fast float %7954, %7954
  %8004 = fmul fast float %7955, %7955
  %8005 = fadd fast float %8003, %8004
  %8006 = fmul fast float %8002, %8002
  %8007 = fadd fast float %8005, %8006
  %8008 = call float @dx.op.unary.f32(i32 24, float %8007)  ; Sqrt(value)
  br label %8009

; <label>:8009                                    ; preds = %8001, %7999, %7989
  %8010 = phi float [ %7998, %7989 ], [ %8008, %8001 ], [ 0.000000e+00, %7999 ]
  %8011 = fsub fast float -0.000000e+00, %8010
  %8012 = select i1 %7953, float -0.000000e+00, float %8011
  %8013 = fmul fast float %5508, 0x3FF7154760000000
  %8014 = fmul fast float %8013, %8012
  %8015 = fmul fast float %5509, 0x3FF7154760000000
  %8016 = fmul fast float %8015, %8012
  %8017 = fmul fast float %5510, 0x3FF7154760000000
  %8018 = fmul fast float %8017, %8012
  %8019 = call float @dx.op.unary.f32(i32 21, float %8014)  ; Exp(value)
  %8020 = call float @dx.op.unary.f32(i32 21, float %8016)  ; Exp(value)
  %8021 = call float @dx.op.unary.f32(i32 21, float %8018)  ; Exp(value)
  %8022 = call float @dx.op.unary.f32(i32 7, float %8019)  ; Saturate(value)
  %8023 = call float @dx.op.unary.f32(i32 7, float %8020)  ; Saturate(value)
  %8024 = call float @dx.op.unary.f32(i32 7, float %8021)  ; Saturate(value)
  %8025 = fmul fast float %7949, %8022
  %8026 = fmul fast float %7950, %8023
  %8027 = fmul fast float %7951, %8024
  %8028 = fsub fast float %6655, %5708
  %8029 = fsub fast float %6656, %5707
  %8030 = fsub fast float %6657, %5706
  %8031 = call float @dx.op.dot3.f32(i32 55, float %8028, float %8029, float %8030, float %8028, float %8029, float %8030)  ; Dot3(ax,ay,az,bx,by,bz)
  %8032 = call float @dx.op.unary.f32(i32 25, float %8031)  ; Rsqrt(value)
  %8033 = fmul fast float %8032, %8028
  %8034 = fmul fast float %8032, %8029
  %8035 = fmul fast float %8032, %8030
  %8036 = call float @dx.op.dot3.f32(i32 55, float %6655, float %6656, float %6657, float %5715, float %5716, float %5717)  ; Dot3(ax,ay,az,bx,by,bz)
  %8037 = call float @dx.op.dot3.f32(i32 55, float %5705, float %5704, float %5703, float %8033, float %8034, float %8035)  ; Dot3(ax,ay,az,bx,by,bz)
  %8038 = call float @dx.op.unary.f32(i32 7, float %8036)  ; Saturate(value)
  %8039 = fmul fast float %8038, %8038
  %8040 = fmul fast float %8039, %5748
  %8041 = call float @dx.op.unary.f32(i32 7, float %8040)  ; Saturate(value)
  %8042 = fmul fast float %8041, %8038
  %8043 = call float @dx.op.dot3.f32(i32 55, float %5715, float %5716, float %5717, float %8033, float %8034, float %8035)  ; Dot3(ax,ay,az,bx,by,bz)
  %8044 = fmul fast float %8043, %8043
  %8045 = call float @dx.op.unary.f32(i32 6, float %8036)  ; FAbs(value)
  %8046 = fsub fast float 1.000000e+00, %5741
  %8047 = fmul fast float %5723, %5723
  %8048 = fmul fast float %8047, %8046
  %8049 = fadd fast float %8048, %5741
  %8050 = bitcast float %8049 to i32
  %8051 = ashr i32 %8050, 1
  %8052 = add nsw i32 %8051, 532487669
  %8053 = bitcast i32 %8052 to float
  %8054 = fadd fast float %8053, %5723
  %8055 = fmul fast float %5741, %8044
  %8056 = fsub fast float 1.000000e+00, %8044
  %8057 = fadd fast float %8056, %8055
  %8058 = fmul fast float %8045, %8045
  %8059 = fmul fast float %8058, %8046
  %8060 = fadd fast float %8059, %5741
  %8061 = bitcast float %8060 to i32
  %8062 = ashr i32 %8061, 1
  %8063 = add nsw i32 %8062, 532487669
  %8064 = bitcast i32 %8063 to float
  %8065 = fadd fast float %8064, %8045
  %8066 = fmul fast float %8057, %8057
  %8067 = fmul fast float %8066, %8054
  %8068 = fmul fast float %8067, %8065
  %8069 = fdiv fast float 0x3FF0A00000000000, %8068
  %8070 = fmul fast float %8069, %5741
  %8071 = fmul fast float %5994, 0x3FF9999980000000
  %8072 = fsub fast float 5.000000e+00, %8071
  %8073 = call float @dx.op.unary.f32(i32 6, float %8037)  ; FAbs(value)
  %8074 = fsub fast float 1.000000e+00, %8073
  %8075 = fmul fast float %5994, 0x41D9660740000000
  %8076 = fadd fast float %8075, 0xC1EFBF8940000000
  %8077 = bitcast float %8074 to i32
  %8078 = sitofp i32 %8077 to float
  %8079 = fmul fast float %8078, %8072
  %8080 = fadd fast float %8076, %8079
  %8081 = fptosi float %8080 to i32
  %8082 = bitcast i32 %8081 to float
  %8083 = fsub fast float 1.000000e+00, %5712
  %8084 = fsub fast float 1.000000e+00, %5713
  %8085 = fsub fast float 1.000000e+00, %5721
  %8086 = fmul fast float %8082, %8083
  %8087 = fmul fast float %8082, %8084
  %8088 = fmul fast float %8082, %8085
  %8089 = fadd fast float %8086, %5712
  %8090 = fadd fast float %8087, %5713
  %8091 = fadd fast float %8088, %5721
  br i1 %6017, label %8092, label %8115

; <label>:8092                                    ; preds = %8009
  %8093 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %5077, float %8073, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8094 = extractvalue %dx.types.ResRet.f32 %8093, 0
  %8095 = extractvalue %dx.types.ResRet.f32 %8093, 1
  %8096 = extractvalue %dx.types.ResRet.f32 %8093, 2
  %8097 = fadd fast float %8094, -5.000000e-01
  %8098 = fadd fast float %8095, -5.000000e-01
  %8099 = fadd fast float %8096, -5.000000e-01
  %8100 = fmul fast float %5712, 4.000000e+00
  %8101 = fmul fast float %8100, %8083
  %8102 = fmul fast float %8101, %8097
  %8103 = fmul fast float %5713, 4.000000e+00
  %8104 = fmul fast float %8103, %8084
  %8105 = fmul fast float %8104, %8098
  %8106 = fmul fast float %5721, 4.000000e+00
  %8107 = fmul fast float %8106, %8085
  %8108 = fmul fast float %8107, %8099
  %8109 = fadd fast float %8102, %8089
  %8110 = fadd fast float %8105, %8090
  %8111 = fadd fast float %8108, %8091
  %8112 = call float @dx.op.unary.f32(i32 7, float %8109)  ; Saturate(value)
  %8113 = call float @dx.op.unary.f32(i32 7, float %8110)  ; Saturate(value)
  %8114 = call float @dx.op.unary.f32(i32 7, float %8111)  ; Saturate(value)
  br label %8115

; <label>:8115                                    ; preds = %8092, %8009
  %8116 = phi float [ %8112, %8092 ], [ %8089, %8009 ]
  %8117 = phi float [ %8113, %8092 ], [ %8090, %8009 ]
  %8118 = phi float [ %8114, %8092 ], [ %8091, %8009 ]
  %8119 = fmul fast float %8036, 9.843750e-01
  %8120 = fadd fast float %8119, 7.812500e-03
  %8121 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %8120, float %5998, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8122 = extractvalue %dx.types.ResRet.f32 %8121, 0
  %8123 = extractvalue %dx.types.ResRet.f32 %8121, 1
  %8124 = extractvalue %dx.types.ResRet.f32 %8121, 2
  %8125 = extractvalue %dx.types.ResRet.f32 %8121, 3
  %8126 = fsub fast float %8124, %8122
  %8127 = fsub fast float %8125, %8123
  %8128 = fmul fast float %8126, %6004
  %8129 = fmul fast float %8127, %6004
  %8130 = fadd fast float %8128, %8122
  %8131 = fadd fast float %8129, %8123
  %8132 = fmul fast float %8130, %5712
  %8133 = fmul fast float %8130, %5713
  %8134 = fmul fast float %8130, %5721
  %8135 = fadd fast float %8132, %8131
  %8136 = fadd fast float %8133, %8131
  %8137 = fadd fast float %8134, %8131
  br i1 %6017, label %8138, label %8161

; <label>:8138                                    ; preds = %8115
  %8139 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %5077, float %8036, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8140 = extractvalue %dx.types.ResRet.f32 %8139, 0
  %8141 = extractvalue %dx.types.ResRet.f32 %8139, 1
  %8142 = extractvalue %dx.types.ResRet.f32 %8139, 2
  %8143 = fadd fast float %8140, -5.000000e-01
  %8144 = fadd fast float %8141, -5.000000e-01
  %8145 = fadd fast float %8142, -5.000000e-01
  %8146 = fmul fast float %5712, 4.000000e+00
  %8147 = fmul fast float %8146, %8083
  %8148 = fmul fast float %8147, %8143
  %8149 = fmul fast float %5713, 4.000000e+00
  %8150 = fmul fast float %8149, %8084
  %8151 = fmul fast float %8150, %8144
  %8152 = fmul fast float %5721, 4.000000e+00
  %8153 = fmul fast float %8152, %8085
  %8154 = fmul fast float %8153, %8145
  %8155 = fadd fast float %8148, %8135
  %8156 = fadd fast float %8151, %8136
  %8157 = fadd fast float %8154, %8137
  %8158 = call float @dx.op.unary.f32(i32 7, float %8155)  ; Saturate(value)
  %8159 = call float @dx.op.unary.f32(i32 7, float %8156)  ; Saturate(value)
  %8160 = call float @dx.op.unary.f32(i32 7, float %8157)  ; Saturate(value)
  br label %8161

; <label>:8161                                    ; preds = %8138, %8115
  %8162 = phi float [ %8158, %8138 ], [ %8135, %8115 ]
  %8163 = phi float [ %8159, %8138 ], [ %8136, %8115 ]
  %8164 = phi float [ %8160, %8138 ], [ %8137, %8115 ]
  %8165 = call float @dx.op.binary.f32(i32 35, float %8163, float %8164)  ; FMax(a,b)
  %8166 = call float @dx.op.binary.f32(i32 35, float %8162, float %8165)  ; FMax(a,b)
  %8167 = fsub fast float 1.000000e+00, %8166
  %8168 = call float @dx.op.binary.f32(i32 35, float %8045, float 0x3F50624DE0000000)  ; FMax(a,b)
  %8169 = fdiv fast float %4427, %8168
  %8170 = fmul fast float %6564, %8169
  %8171 = fmul fast float %6566, %8169
  %8172 = fmul fast float %6568, %8169
  %8173 = call float @dx.op.unary.f32(i32 21, float %8170)  ; Exp(value)
  %8174 = call float @dx.op.unary.f32(i32 21, float %8171)  ; Exp(value)
  %8175 = call float @dx.op.unary.f32(i32 21, float %8172)  ; Exp(value)
  %8176 = call float @dx.op.unary.f32(i32 7, float %8173)  ; Saturate(value)
  %8177 = call float @dx.op.unary.f32(i32 7, float %8174)  ; Saturate(value)
  %8178 = call float @dx.op.unary.f32(i32 7, float %8175)  ; Saturate(value)
  %8179 = select i1 %6561, float %8176, float 0.000000e+00
  %8180 = select i1 %6562, float %8177, float 0.000000e+00
  %8181 = select i1 %6563, float %8178, float 0.000000e+00
  %8182 = fsub fast float -0.000000e+00, %5715
  %8183 = fsub fast float -0.000000e+00, %5716
  %8184 = fsub fast float -0.000000e+00, %5717
  %8185 = call float @dx.op.dot3.f32(i32 55, float %6655, float %6656, float %6657, float %8182, float %8183, float %8184)  ; Dot3(ax,ay,az,bx,by,bz)
  %8186 = call float @dx.op.unary.f32(i32 7, float %8185)  ; Saturate(value)
  %8187 = fmul fast float %8186, 9.843750e-01
  %8188 = fadd fast float %8187, 7.812500e-03
  %8189 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %8188, float %5998, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8190 = extractvalue %dx.types.ResRet.f32 %8189, 0
  %8191 = extractvalue %dx.types.ResRet.f32 %8189, 1
  %8192 = extractvalue %dx.types.ResRet.f32 %8189, 2
  %8193 = extractvalue %dx.types.ResRet.f32 %8189, 3
  %8194 = fsub fast float %8192, %8190
  %8195 = fsub fast float %8193, %8191
  %8196 = fmul fast float %8194, %6004
  %8197 = fmul fast float %8195, %6004
  %8198 = fadd fast float %8196, %8190
  %8199 = fadd fast float %8197, %8191
  %8200 = fmul fast float %8198, %5712
  %8201 = fmul fast float %8198, %5713
  %8202 = fmul fast float %8198, %5721
  %8203 = fadd fast float %8200, %8199
  %8204 = fadd fast float %8201, %8199
  %8205 = fadd fast float %8202, %8199
  br i1 %6017, label %8206, label %8229

; <label>:8206                                    ; preds = %8161
  %8207 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %5077, float %8186, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8208 = extractvalue %dx.types.ResRet.f32 %8207, 0
  %8209 = extractvalue %dx.types.ResRet.f32 %8207, 1
  %8210 = extractvalue %dx.types.ResRet.f32 %8207, 2
  %8211 = fadd fast float %8208, -5.000000e-01
  %8212 = fadd fast float %8209, -5.000000e-01
  %8213 = fadd fast float %8210, -5.000000e-01
  %8214 = fmul fast float %5712, 4.000000e+00
  %8215 = fmul fast float %8214, %8083
  %8216 = fmul fast float %8215, %8211
  %8217 = fmul fast float %5713, 4.000000e+00
  %8218 = fmul fast float %8217, %8084
  %8219 = fmul fast float %8218, %8212
  %8220 = fmul fast float %5721, 4.000000e+00
  %8221 = fmul fast float %8220, %8085
  %8222 = fmul fast float %8221, %8213
  %8223 = fadd fast float %8216, %8203
  %8224 = fadd fast float %8219, %8204
  %8225 = fadd fast float %8222, %8205
  %8226 = call float @dx.op.unary.f32(i32 7, float %8223)  ; Saturate(value)
  %8227 = call float @dx.op.unary.f32(i32 7, float %8224)  ; Saturate(value)
  %8228 = call float @dx.op.unary.f32(i32 7, float %8225)  ; Saturate(value)
  br label %8229

; <label>:8229                                    ; preds = %8206, %8161
  %8230 = phi float [ %8226, %8206 ], [ %8203, %8161 ]
  %8231 = phi float [ %8227, %8206 ], [ %8204, %8161 ]
  %8232 = phi float [ %8228, %8206 ], [ %8205, %8161 ]
  %8233 = call float @dx.op.binary.f32(i32 35, float %8231, float %8232)  ; FMax(a,b)
  %8234 = call float @dx.op.binary.f32(i32 35, float %8230, float %8233)  ; FMax(a,b)
  %8235 = fsub fast float 1.000000e+00, %8234
  %8236 = fmul fast float %5738, %6628
  %8237 = fadd fast float %6630, %8236
  %8238 = call float @dx.op.unary.f32(i32 7, float %8237)  ; Saturate(value)
  %8239 = fsub fast float %6655, %5729
  %8240 = fsub fast float %6656, %5730
  %8241 = fsub fast float %6657, %5731
  %8242 = call float @dx.op.dot3.f32(i32 55, float %8239, float %8240, float %8241, float %8239, float %8240, float %8241)  ; Dot3(ax,ay,az,bx,by,bz)
  %8243 = call float @dx.op.unary.f32(i32 25, float %8242)  ; Rsqrt(value)
  %8244 = fmul fast float %8243, %8239
  %8245 = fmul fast float %8243, %8240
  %8246 = fmul fast float %8243, %8241
  %8247 = call float @dx.op.dot3.f32(i32 55, float %8182, float %8183, float %8184, float %8244, float %8245, float %8246)  ; Dot3(ax,ay,az,bx,by,bz)
  %8248 = fmul fast float %8247, %8247
  %8249 = call float @dx.op.unary.f32(i32 6, float %8186)  ; FAbs(value)
  %8250 = call float @dx.op.binary.f32(i32 35, float %8238, float 0x3F847AE140000000)  ; FMax(a,b)
  %8251 = fmul fast float %8250, %8250
  %8252 = fmul fast float %8251, %8251
  %8253 = fsub fast float 1.000000e+00, %8252
  %8254 = fmul fast float %8047, %8253
  %8255 = fadd fast float %8254, %8252
  %8256 = bitcast float %8255 to i32
  %8257 = ashr i32 %8256, 1
  %8258 = add nsw i32 %8257, 532487669
  %8259 = bitcast i32 %8258 to float
  %8260 = fadd fast float %8259, %5723
  %8261 = fmul fast float %8252, %8248
  %8262 = fsub fast float 1.000000e+00, %8248
  %8263 = fadd fast float %8262, %8261
  %8264 = fmul fast float %8249, %8249
  %8265 = fmul fast float %8264, %8253
  %8266 = fadd fast float %8265, %8252
  %8267 = bitcast float %8266 to i32
  %8268 = ashr i32 %8267, 1
  %8269 = add nsw i32 %8268, 532487669
  %8270 = bitcast i32 %8269 to float
  %8271 = fadd fast float %8270, %8249
  %8272 = fmul fast float %8263, %8263
  %8273 = fmul fast float %8272, %8260
  %8274 = fmul fast float %8273, %8271
  %8275 = fdiv fast float 0x3FF0A00000000000, %8274
  %8276 = fmul fast float %8275, %8252
  %8277 = fmul fast float %8186, %8179
  %8278 = fmul fast float %8186, %8180
  %8279 = fmul fast float %8186, %8181
  %8280 = fmul fast float %8277, %8235
  %8281 = fmul fast float %8280, %8276
  %8282 = fmul fast float %8278, %8235
  %8283 = fmul fast float %8282, %8276
  %8284 = fmul fast float %8279, %8235
  %8285 = fmul fast float %8284, %8276
  %8286 = fmul fast float %8116, %8070
  %8287 = fmul fast float %8117, %8070
  %8288 = fmul fast float %8118, %8070
  %8289 = fsub fast float 1.000000e+00, %8037
  %8290 = bitcast float %8289 to i32
  %8291 = sitofp i32 %8290 to float
  %8292 = fmul fast float %8291, 5.000000e+00
  %8293 = fadd fast float %8292, 0xC1EFBF8940000000
  %8294 = fptosi float %8293 to i32
  %8295 = bitcast i32 %8294 to float
  %8296 = fmul fast float %8295, %5078
  %8297 = fmul fast float %8167, %8296
  %8298 = fmul fast float %8297, %6556
  %8299 = fmul fast float %8297, %6557
  %8300 = fmul fast float %8297, %6558
  %8301 = fadd fast float %8298, %8286
  %8302 = fadd fast float %8299, %8287
  %8303 = fadd fast float %8300, %8288
  %8304 = fmul fast float %8301, %8042
  %8305 = fmul fast float %8302, %8042
  %8306 = fmul fast float %8303, %8042
  %8307 = fmul fast float %8042, %8025
  %8308 = fmul fast float %8307, %8167
  %8309 = fmul fast float %8042, %8026
  %8310 = fmul fast float %8309, %8167
  %8311 = fmul fast float %8042, %8027
  %8312 = fmul fast float %8311, %8167
  %8313 = fadd fast float %8304, %8281
  %8314 = fadd fast float %8305, %8283
  %8315 = fadd fast float %8306, %8285
  %8316 = fmul fast float %8313, %8025
  %8317 = fmul fast float %8314, %8026
  %8318 = fmul fast float %8315, %8027
  %8319 = fadd fast float %8308, %6645
  %8320 = fmul fast float %8319, %5074
  %8321 = fadd fast float %8310, %6647
  %8322 = fmul fast float %8321, %5074
  %8323 = fadd fast float %8312, %6649
  %8324 = fmul fast float %8323, %5074
  %8325 = fadd fast float %8316, %6609
  %8326 = fmul fast float %8325, %5074
  %8327 = fadd fast float %8317, %6612
  %8328 = fmul fast float %8327, %5074
  %8329 = fadd fast float %8318, %6615
  %8330 = fmul fast float %8329, %5074
  br label %8331

; <label>:8331                                    ; preds = %8229, %7943, %6539
  %8332 = phi float [ %6610, %6539 ], [ %6610, %7943 ], [ %8326, %8229 ]
  %8333 = phi float [ %6613, %6539 ], [ %6613, %7943 ], [ %8328, %8229 ]
  %8334 = phi float [ %6616, %6539 ], [ %6616, %7943 ], [ %8330, %8229 ]
  %8335 = phi float [ %6646, %6539 ], [ %6646, %7943 ], [ %8320, %8229 ]
  %8336 = phi float [ %6648, %6539 ], [ %6648, %7943 ], [ %8322, %8229 ]
  %8337 = phi float [ %6650, %6539 ], [ %6650, %7943 ], [ %8324, %8229 ]
  %8338 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %8339 = extractvalue %dx.types.CBufRet.i32 %8338, 0
  %8340 = icmp eq i32 %8339, 0
  br i1 %8340, label %9158, label %8341

; <label>:8341                                    ; preds = %8331
  %8342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %8343 = extractvalue %dx.types.CBufRet.f32 %8342, 2
  %8344 = extractvalue %dx.types.CBufRet.f32 %8342, 3
  %8345 = fmul fast float %8343, %109
  %8346 = fmul fast float %8344, %110
  %8347 = fptoui float %8345 to i32
  %8348 = fptoui float %8346 to i32
  %8349 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8350 = extractvalue %dx.types.CBufRet.f32 %8349, 0
  %8351 = extractvalue %dx.types.CBufRet.f32 %8349, 2
  %8352 = extractvalue %dx.types.CBufRet.f32 %8349, 3
  %8353 = fadd fast float %97, -4.000000e+00
  %8354 = call float @dx.op.binary.f32(i32 35, float %8353, float 0.000000e+00)  ; FMax(a,b)
  %8355 = fadd fast float %8354, %8350
  %8356 = fmul fast float %8355, %8351
  %8357 = call float @dx.op.unary.f32(i32 23, float %8356)  ; Log(value)
  %8358 = fmul fast float %8357, %8352
  %8359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8360 = extractvalue %dx.types.CBufRet.f32 %8359, 2
  %8361 = fmul fast float %8358, %8360
  %8362 = call float @dx.op.unary.f32(i32 7, float %8361)  ; Saturate(value)
  %8363 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8364 = extractvalue %dx.types.CBufRet.i32 %8363, 1
  %8365 = add i32 %8364, -1
  %8366 = uitofp i32 %8364 to float
  %8367 = fmul fast float %8366, %8362
  %8368 = fptoui float %8367 to i32
  %8369 = call i32 @dx.op.binary.i32(i32 40, i32 %8368, i32 %8365)  ; UMin(a,b)
  %8370 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %8371 = extractvalue %dx.types.CBufRet.i32 %8370, 2
  %8372 = extractvalue %dx.types.CBufRet.i32 %8370, 3
  %8373 = call i32 @dx.op.tertiary.i32(i32 49, i32 %8348, i32 %8371, i32 %8347)  ; UMad(a,b,c)
  %8374 = call i32 @dx.op.tertiary.i32(i32 49, i32 %8369, i32 %8372, i32 %8373)  ; UMad(a,b,c)
  %8375 = add nsw i32 %8339, -1
  %8376 = call i32 @dx.op.binary.i32(i32 37, i32 %8375, i32 0)  ; IMax(a,b)
  %8377 = call float @dx.op.binary.f32(i32 35, float %97, float 0.000000e+00)  ; FMax(a,b)
  %8378 = fptoui float %8377 to i32
  %8379 = lshr i32 %8378, 5
  %8380 = call i32 @dx.op.binary.i32(i32 40, i32 %8379, i32 8191)  ; UMin(a,b)
  %8381 = shl i32 %8380, 2
  %8382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %8381, i32 undef)  ; BufferLoad(srv,index,wot)
  %8383 = extractvalue %dx.types.ResRet.i32 %8382, 0
  %8384 = lshr i32 %8383, 16
  %8385 = and i32 %8383, 65535
  %8386 = lshr i32 %8383, 21
  %8387 = lshr i32 %8385, 5
  %8388 = call i32 @dx.op.binary.i32(i32 40, i32 %8387, i32 %8376)  ; UMin(a,b)
  %8389 = icmp ugt i32 %8386, %8388
  br i1 %8389, label %9158, label %8390

; <label>:8390                                    ; preds = %8341
  br label %8391

; <label>:8391                                    ; preds = %9148, %8390
  %8392 = phi i32 [ %9155, %9148 ], [ %8386, %8390 ]
  %8393 = phi float [ %9149, %9148 ], [ %8332, %8390 ]
  %8394 = phi float [ %9150, %9148 ], [ %8333, %8390 ]
  %8395 = phi float [ %9151, %9148 ], [ %8334, %8390 ]
  %8396 = phi float [ %9152, %9148 ], [ %8335, %8390 ]
  %8397 = phi float [ %9153, %9148 ], [ %8336, %8390 ]
  %8398 = phi float [ %9154, %9148 ], [ %8337, %8390 ]
  %8399 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %8400 = extractvalue %dx.types.CBufRet.i32 %8399, 0
  %8401 = call i32 @dx.op.tertiary.i32(i32 49, i32 %8374, i32 %8400, i32 %8392)  ; UMad(a,b,c)
  %8402 = shl i32 %8401, 2
  %8403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %8402, i32 undef)  ; BufferLoad(srv,index,wot)
  %8404 = extractvalue %dx.types.ResRet.i32 %8403, 0
  %8405 = shl i32 %8392, 5
  %8406 = sub nsw i32 %8384, %8405
  %8407 = call i32 @dx.op.binary.i32(i32 37, i32 %8406, i32 0)  ; IMax(a,b)
  %8408 = call i32 @dx.op.binary.i32(i32 38, i32 %8407, i32 31)  ; IMin(a,b)
  %8409 = sub nsw i32 1, %8384
  %8410 = add nsw i32 %8409, %8385
  %8411 = call i32 @dx.op.binary.i32(i32 37, i32 %8410, i32 0)  ; IMax(a,b)
  %8412 = call i32 @dx.op.binary.i32(i32 38, i32 %8411, i32 32)  ; IMin(a,b)
  %8413 = and i32 %8412, 31
  %8414 = shl i32 -1, %8413
  %8415 = xor i32 %8414, -1
  %8416 = and i32 %8408, 31
  %8417 = shl i32 %8415, %8416
  %8418 = icmp eq i32 %8412, 32
  %8419 = select i1 %8418, i32 -1, i32 %8417
  %8420 = and i32 %8419, %8404
  %8421 = icmp eq i32 %8420, 0
  br i1 %8421, label %9148, label %8422

; <label>:8422                                    ; preds = %8391
  br label %8423

; <label>:8423                                    ; preds = %8558, %8422
  %8424 = phi i32 [ %8435, %8558 ], [ %8420, %8422 ]
  %8425 = phi float [ %8559, %8558 ], [ %8393, %8422 ]
  %8426 = phi float [ %8560, %8558 ], [ %8394, %8422 ]
  %8427 = phi float [ %8561, %8558 ], [ %8395, %8422 ]
  %8428 = phi float [ %8562, %8558 ], [ %8396, %8422 ]
  %8429 = phi float [ %8563, %8558 ], [ %8397, %8422 ]
  %8430 = phi float [ %8564, %8558 ], [ %8398, %8422 ]
  %8431 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %8424)  ; FirstbitLo(value)
  %8432 = add i32 %8431, %8405
  %8433 = and i32 %8431, 31
  %8434 = shl i32 1, %8433
  %8435 = xor i32 %8434, %8424
  %8436 = mul i32 %8432, 112
  %8437 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8436, i32 undef)  ; BufferLoad(srv,index,wot)
  %8438 = extractvalue %dx.types.ResRet.f32 %8437, 0
  %8439 = extractvalue %dx.types.ResRet.f32 %8437, 1
  %8440 = extractvalue %dx.types.ResRet.f32 %8437, 2
  %8441 = or i32 %8436, 12
  %8442 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8441, i32 undef)  ; BufferLoad(srv,index,wot)
  %8443 = extractvalue %dx.types.ResRet.f32 %8442, 0
  %8444 = add i32 %8436, 16
  %8445 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8444, i32 undef)  ; BufferLoad(srv,index,wot)
  %8446 = extractvalue %dx.types.ResRet.f32 %8445, 0
  %8447 = extractvalue %dx.types.ResRet.f32 %8445, 1
  %8448 = extractvalue %dx.types.ResRet.f32 %8445, 2
  %8449 = add i32 %8436, 28
  %8450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %8449, i32 undef)  ; BufferLoad(srv,index,wot)
  %8451 = extractvalue %dx.types.ResRet.i32 %8450, 0
  %8452 = add i32 %8436, 44
  %8453 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8452, i32 undef)  ; BufferLoad(srv,index,wot)
  %8454 = extractvalue %dx.types.ResRet.f32 %8453, 0
  %8455 = add i32 %8436, 48
  %8456 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8455, i32 undef)  ; BufferLoad(srv,index,wot)
  %8457 = extractvalue %dx.types.ResRet.f32 %8456, 0
  %8458 = extractvalue %dx.types.ResRet.f32 %8456, 1
  %8459 = extractvalue %dx.types.ResRet.f32 %8456, 2
  %8460 = extractvalue %dx.types.ResRet.f32 %8456, 3
  %8461 = add i32 %8436, 64
  %8462 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8461, i32 undef)  ; BufferLoad(srv,index,wot)
  %8463 = extractvalue %dx.types.ResRet.f32 %8462, 0
  %8464 = extractvalue %dx.types.ResRet.f32 %8462, 1
  %8465 = extractvalue %dx.types.ResRet.f32 %8462, 2
  %8466 = extractvalue %dx.types.ResRet.f32 %8462, 3
  %8467 = add i32 %8436, 80
  %8468 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8467, i32 undef)  ; BufferLoad(srv,index,wot)
  %8469 = extractvalue %dx.types.ResRet.f32 %8468, 1
  %8470 = extractvalue %dx.types.ResRet.f32 %8468, 2
  %8471 = add i32 %8436, 92
  %8472 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %8471, i32 undef)  ; BufferLoad(srv,index,wot)
  %8473 = extractvalue %dx.types.ResRet.i32 %8472, 0
  %8474 = call float @dx.op.dot3.f32(i32 55, float %8438, float %8439, float %8440, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8475 = select i1 %226, float %8469, float %8438
  %8476 = select i1 %226, float %8474, float %8439
  %8477 = select i1 %226, float %8470, float %8440
  %8478 = and i32 %8473, 65535
  %8479 = uitofp i32 %8478 to float
  %8480 = lshr i32 %8473, 16
  %8481 = uitofp i32 %8480 to float
  %8482 = and i32 %8451, 65535
  %8483 = and i32 %8451, 50331648
  %8484 = icmp slt i32 %8451, 0
  %8485 = icmp eq i32 %8483, 33554432
  %8486 = fsub fast float %8457, %164
  %8487 = fsub fast float %8458, %165
  %8488 = fsub fast float %8459, %166
  %8489 = call float @dx.op.dot3.f32(i32 55, float %8486, float %8487, float %8488, float %8486, float %8487, float %8488)  ; Dot3(ax,ay,az,bx,by,bz)
  %8490 = call float @dx.op.unary.f32(i32 24, float %8489)  ; Sqrt(value)
  %8491 = fdiv fast float 1.000000e+00, %8490
  %8492 = fmul fast float %8491, %8486
  %8493 = fmul fast float %8491, %8487
  %8494 = fmul fast float %8491, %8488
  %8495 = fadd fast float %8490, %8443
  %8496 = fdiv fast float 1.000000e+00, %8495
  %8497 = fmul float %8454, %8496
  %8498 = fmul float %8497, %8497
  %8499 = call float @dx.op.unary.f32(i32 7, float %8498)  ; Saturate(value)
  br i1 %8485, label %8500, label %8521

; <label>:8500                                    ; preds = %8423
  %8501 = fmul fast float %8465, %8446
  %8502 = fmul fast float %8465, %8447
  %8503 = fmul fast float %8465, %8448
  %8504 = fadd fast float %8486, %8501
  %8505 = fadd fast float %8487, %8502
  %8506 = fadd fast float %8488, %8503
  %8507 = call float @dx.op.dot3.f32(i32 55, float %8504, float %8505, float %8506, float %8504, float %8505, float %8506)  ; Dot3(ax,ay,az,bx,by,bz)
  %8508 = call float @dx.op.unary.f32(i32 25, float %8507)  ; Rsqrt(value)
  %8509 = fmul fast float %8508, %8504
  %8510 = fmul fast float %8508, %8505
  %8511 = fmul fast float %8508, %8506
  %8512 = fsub fast float %164, %8457
  %8513 = fsub fast float %165, %8458
  %8514 = fsub fast float %166, %8459
  %8515 = fsub fast float -0.000000e+00, %8512
  %8516 = fsub fast float -0.000000e+00, %8513
  %8517 = fsub fast float -0.000000e+00, %8514
  %8518 = call float @dx.op.dot3.f32(i32 55, float %8515, float %8516, float %8517, float %8446, float %8447, float %8448)  ; Dot3(ax,ay,az,bx,by,bz)
  %8519 = fcmp fast ogt float %8518, 0.000000e+00
  %8520 = uitofp i1 %8519 to float
  br label %8521

; <label>:8521                                    ; preds = %8500, %8423
  %8522 = phi float [ %8520, %8500 ], [ 1.000000e+00, %8423 ]
  %8523 = phi float [ %8509, %8500 ], [ %8492, %8423 ]
  %8524 = phi float [ %8510, %8500 ], [ %8493, %8423 ]
  %8525 = phi float [ %8511, %8500 ], [ %8494, %8423 ]
  %8526 = call float @dx.op.dot3.f32(i32 55, float %8446, float %8447, float %8448, float %8523, float %8524, float %8525)  ; Dot3(ax,ay,az,bx,by,bz)
  %8527 = fmul fast float %8526, %8526
  %8528 = call float @dx.op.unary.f32(i32 7, float %8527)  ; Saturate(value)
  %8529 = fsub fast float 1.000000e+00, %8528
  %8530 = fmul fast float %8529, 5.000000e-01
  %8531 = fcmp fast ogt float %8526, 0.000000e+00
  %8532 = fsub fast float 1.000000e+00, %8530
  %8533 = select i1 %8531, float %8530, float %8532
  %8534 = fmul fast float %8533, %8481
  %8535 = fadd fast float %8534, %8479
  %8536 = fmul fast float %8535, 0x3EF0001000000000
  %8537 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %54, float %8536, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8538 = extractvalue %dx.types.ResRet.f32 %8537, 0
  %8539 = fmul fast float %8526, %8463
  %8540 = fadd fast float %8539, %8464
  %8541 = call float @dx.op.unary.f32(i32 7, float %8540)  ; Saturate(value)
  %8542 = select i1 %8485, float 1.000000e+00, float %8541
  %8543 = select i1 %8485, float %8541, float 1.000000e+00
  %8544 = fmul fast float %8490, %8460
  %8545 = fsub fast float 1.000000e+00, %8544
  %8546 = fmul fast float %8545, %8466
  %8547 = call float @dx.op.unary.f32(i32 7, float %8546)  ; Saturate(value)
  %8548 = fmul fast float %8547, %8543
  %8549 = fmul fast float %8548, 2.000000e+00
  %8550 = fsub fast float 3.000000e+00, %8549
  %8551 = fmul fast float %8538, %8522
  %8552 = fmul fast float %8548, %8548
  %8553 = fmul fast float %8552, %8551
  %8554 = fmul fast float %8553, %8550
  %8555 = call float @dx.op.binary.f32(i32 36, float %8554, float %8554)  ; FMin(a,b)
  %8556 = call float @dx.op.binary.f32(i32 36, float %8554, float %8555)  ; FMin(a,b)
  %8557 = fcmp fast ogt float %8556, 0.000000e+00
  br i1 %8557, label %8566, label %8558, !dx.controlflow.hints !130

; <label>:8558                                    ; preds = %9101, %8712, %8521
  %8559 = phi float [ %8425, %8712 ], [ %8425, %8521 ], [ %9144, %9101 ]
  %8560 = phi float [ %8426, %8712 ], [ %8426, %8521 ], [ %9145, %9101 ]
  %8561 = phi float [ %8427, %8712 ], [ %8427, %8521 ], [ %9146, %9101 ]
  %8562 = phi float [ %8428, %8712 ], [ %8428, %8521 ], [ %9138, %9101 ]
  %8563 = phi float [ %8429, %8712 ], [ %8429, %8521 ], [ %9139, %9101 ]
  %8564 = phi float [ %8430, %8712 ], [ %8430, %8521 ], [ %9140, %9101 ]
  %8565 = icmp eq i32 %8424, %8434
  br i1 %8565, label %9147, label %8423

; <label>:8566                                    ; preds = %8521
  %8567 = icmp eq i32 %8482, 255
  br i1 %8567, label %8712, label %8568, !dx.controlflow.hints !131

; <label>:8568                                    ; preds = %8566
  %8569 = mul nuw nsw i32 %8482, 176
  %8570 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8569, i32 undef)  ; BufferLoad(srv,index,wot)
  %8571 = extractvalue %dx.types.ResRet.f32 %8570, 0
  %8572 = extractvalue %dx.types.ResRet.f32 %8570, 1
  %8573 = extractvalue %dx.types.ResRet.f32 %8570, 2
  %8574 = extractvalue %dx.types.ResRet.f32 %8570, 3
  %8575 = add nuw nsw i32 %8569, 16
  %8576 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8575, i32 undef)  ; BufferLoad(srv,index,wot)
  %8577 = extractvalue %dx.types.ResRet.f32 %8576, 0
  %8578 = extractvalue %dx.types.ResRet.f32 %8576, 1
  %8579 = add nuw nsw i32 %8569, 32
  %8580 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8579, i32 undef)  ; BufferLoad(srv,index,wot)
  %8581 = extractvalue %dx.types.ResRet.f32 %8580, 0
  %8582 = extractvalue %dx.types.ResRet.f32 %8580, 1
  %8583 = extractvalue %dx.types.ResRet.f32 %8580, 2
  %8584 = add nuw nsw i32 %8569, 48
  %8585 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8584, i32 undef)  ; BufferLoad(srv,index,wot)
  %8586 = extractvalue %dx.types.ResRet.f32 %8585, 0
  %8587 = extractvalue %dx.types.ResRet.f32 %8585, 1
  %8588 = extractvalue %dx.types.ResRet.f32 %8585, 2
  %8589 = extractvalue %dx.types.ResRet.f32 %8585, 3
  %8590 = add nuw nsw i32 %8569, 64
  %8591 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8590, i32 undef)  ; BufferLoad(srv,index,wot)
  %8592 = extractvalue %dx.types.ResRet.f32 %8591, 0
  %8593 = extractvalue %dx.types.ResRet.f32 %8591, 1
  %8594 = extractvalue %dx.types.ResRet.f32 %8591, 2
  %8595 = extractvalue %dx.types.ResRet.f32 %8591, 3
  %8596 = add nuw nsw i32 %8569, 80
  %8597 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8596, i32 undef)  ; BufferLoad(srv,index,wot)
  %8598 = extractvalue %dx.types.ResRet.f32 %8597, 0
  %8599 = extractvalue %dx.types.ResRet.f32 %8597, 1
  %8600 = extractvalue %dx.types.ResRet.f32 %8597, 2
  %8601 = extractvalue %dx.types.ResRet.f32 %8597, 3
  %8602 = add nuw nsw i32 %8569, 96
  %8603 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8602, i32 undef)  ; BufferLoad(srv,index,wot)
  %8604 = extractvalue %dx.types.ResRet.f32 %8603, 0
  %8605 = extractvalue %dx.types.ResRet.f32 %8603, 1
  %8606 = extractvalue %dx.types.ResRet.f32 %8603, 2
  %8607 = extractvalue %dx.types.ResRet.f32 %8603, 3
  %8608 = bitcast float %8578 to i32
  %8609 = fmul fast float %8583, %116
  %8610 = fmul fast float %8583, %117
  %8611 = fmul fast float %8583, %118
  %8612 = fadd fast float %8609, %164
  %8613 = fadd fast float %8610, %165
  %8614 = fadd fast float %8611, %166
  %8615 = fmul fast float %8612, %8586
  %8616 = call float @dx.op.tertiary.f32(i32 46, float %8613, float %8592, float %8615)  ; FMad(a,b,c)
  %8617 = call float @dx.op.tertiary.f32(i32 46, float %8614, float %8598, float %8616)  ; FMad(a,b,c)
  %8618 = fadd fast float %8617, %8604
  %8619 = fmul fast float %8612, %8587
  %8620 = call float @dx.op.tertiary.f32(i32 46, float %8613, float %8593, float %8619)  ; FMad(a,b,c)
  %8621 = call float @dx.op.tertiary.f32(i32 46, float %8614, float %8599, float %8620)  ; FMad(a,b,c)
  %8622 = fadd fast float %8621, %8605
  %8623 = fmul fast float %8612, %8588
  %8624 = call float @dx.op.tertiary.f32(i32 46, float %8613, float %8594, float %8623)  ; FMad(a,b,c)
  %8625 = call float @dx.op.tertiary.f32(i32 46, float %8614, float %8600, float %8624)  ; FMad(a,b,c)
  %8626 = fadd fast float %8625, %8606
  %8627 = fmul fast float %8612, %8589
  %8628 = call float @dx.op.tertiary.f32(i32 46, float %8613, float %8595, float %8627)  ; FMad(a,b,c)
  %8629 = call float @dx.op.tertiary.f32(i32 46, float %8614, float %8601, float %8628)  ; FMad(a,b,c)
  %8630 = fadd fast float %8629, %8607
  %8631 = fdiv fast float %8618, %8630
  %8632 = fdiv fast float %8622, %8630
  %8633 = fdiv fast float %8626, %8630
  %8634 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %8633)  ; FMax(a,b)
  %8635 = fmul fast float %237, 0x401921FB60000000
  %8636 = call float @dx.op.unary.f32(i32 13, float %8635)  ; Sin(value)
  %8637 = call float @dx.op.unary.f32(i32 12, float %8635)  ; Cos(value)
  %8638 = fmul fast float %8637, %8582
  %8639 = call float @dx.op.tertiary.f32(i32 46, float %8636, float %8582, float 0.000000e+00)  ; FMad(a,b,c)
  %8640 = fmul fast float %8582, %8636
  %8641 = fsub fast float -0.000000e+00, %8640
  %8642 = call float @dx.op.tertiary.f32(i32 46, float %8637, float %8582, float 0.000000e+00)  ; FMad(a,b,c)
  br label %8643

; <label>:8643                                    ; preds = %8643, %8568
  %8644 = phi float [ 0.000000e+00, %8568 ], [ %8676, %8643 ]
  %8645 = phi float [ 0.000000e+00, %8568 ], [ %8678, %8643 ]
  %8646 = phi i32 [ 0, %8568 ], [ %8679, %8643 ]
  %8647 = mul i32 %8646, 2
  %8648 = add i32 0, %8647
  %8649 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8648
  %8650 = load float, float* %8649, align 4
  %8651 = mul i32 %8646, 2
  %8652 = add i32 1, %8651
  %8653 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8652
  %8654 = load float, float* %8653, align 4
  %8655 = fmul fast float %8638, %8650
  %8656 = call float @dx.op.tertiary.f32(i32 46, float %8654, float %8641, float %8655)  ; FMad(a,b,c)
  %8657 = fmul fast float %8650, %8639
  %8658 = call float @dx.op.tertiary.f32(i32 46, float %8654, float %8642, float %8657)  ; FMad(a,b,c)
  %8659 = fadd fast float %8656, %8631
  %8660 = fadd fast float %8658, %8632
  %8661 = fmul fast float %8659, %8577
  %8662 = fmul fast float %8660, %8577
  %8663 = call float @dx.op.binary.f32(i32 35, float %8661, float %8573)  ; FMax(a,b)
  %8664 = call float @dx.op.binary.f32(i32 35, float %8662, float %8573)  ; FMax(a,b)
  %8665 = call float @dx.op.binary.f32(i32 36, float %8663, float %8574)  ; FMin(a,b)
  %8666 = call float @dx.op.binary.f32(i32 36, float %8664, float %8574)  ; FMin(a,b)
  %8667 = fadd fast float %8665, %8571
  %8668 = fadd fast float %8666, %8572
  %8669 = uitofp i32 %8608 to float
  %8670 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %55, float %8667, float %8668, float %8669, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8671 = extractvalue %dx.types.ResRet.f32 %8670, 0
  %8672 = fsub fast float %8671, %8634
  %8673 = fsub fast float %8672, %8581
  %8674 = fcmp fast ogt float %8673, 0.000000e+00
  %8675 = select i1 %8674, float 1.000000e+00, float 0.000000e+00
  %8676 = fadd fast float %8675, %8644
  %8677 = select i1 %8674, float %8673, float 0.000000e+00
  %8678 = fadd fast float %8677, %8645
  %8679 = add nuw nsw i32 %8646, 1
  %8680 = icmp eq i32 %8679, 8
  br i1 %8680, label %8681, label %8643

; <label>:8681                                    ; preds = %8643
  %8682 = fdiv fast float 1.000000e+00, %8676
  %8683 = fmul fast float %8682, %8678
  %8684 = fdiv fast float 1.000000e+00, %8634
  %8685 = fmul fast float %8683, %8684
  %8686 = call float @dx.op.unary.f32(i32 7, float %8685)  ; Saturate(value)
  %8687 = call float @dx.op.binary.f32(i32 35, float %8686, float 0.000000e+00)  ; FMax(a,b)
  %8688 = fmul fast float %8676, 1.250000e-01
  %8689 = call float @dx.op.unary.f32(i32 7, float %8688)  ; Saturate(value)
  %8690 = fmul fast float %8689, 2.000000e+00
  %8691 = fadd fast float %8690, -1.000000e+00
  %8692 = fcmp fast ogt float %8691, 0.000000e+00
  %8693 = fcmp fast olt float %8691, 0.000000e+00
  %8694 = zext i1 %8692 to i32
  %8695 = zext i1 %8693 to i32
  %8696 = sub nsw i32 %8694, %8695
  %8697 = sitofp i32 %8696 to float
  %8698 = fmul fast float %8697, %8691
  %8699 = fsub fast float 1.000000e+00, %8698
  %8700 = fmul fast float %8699, %8699
  %8701 = fmul fast float %8700, %8699
  %8702 = fsub fast float %8699, %8701
  %8703 = fmul fast float %8702, %8687
  %8704 = fsub fast float 1.000000e+00, %8701
  %8705 = fsub fast float %8704, %8703
  %8706 = fmul fast float %8697, 5.000000e-01
  %8707 = fmul fast float %8706, %8705
  %8708 = fsub fast float -5.000000e-01, %8707
  %8709 = fmul fast float %8708, %8542
  %8710 = fadd fast float %8709, 1.000000e+00
  %8711 = fmul fast float %8710, %8554
  br label %8712

; <label>:8712                                    ; preds = %8681, %8566
  %8713 = phi float [ %8711, %8681 ], [ %8554, %8566 ]
  %8714 = call float @dx.op.binary.f32(i32 36, float %8713, float %8713)  ; FMin(a,b)
  %8715 = call float @dx.op.binary.f32(i32 36, float %8713, float %8714)  ; FMin(a,b)
  %8716 = fcmp fast ogt float %8715, 0.000000e+00
  br i1 %8716, label %8717, label %8558, !dx.controlflow.hints !132

; <label>:8717                                    ; preds = %8712
  %8718 = fmul fast float %8713, %8475
  %8719 = fmul fast float %8713, %8476
  %8720 = fmul fast float %8713, %8477
  %8721 = fsub fast float %8459, %5511
  %8722 = fcmp fast ogt float %8721, 0.000000e+00
  %8723 = fsub fast float %166, %5511
  %8724 = fcmp fast ogt float %8723, 0.000000e+00
  %8725 = xor i1 %8724, %8722
  %8726 = fsub fast float %5511, %8459
  %8727 = fmul fast float %8726, 2.000000e+00
  %8728 = fadd fast float %8727, %8459
  %8729 = select i1 %8725, float %8459, float %8728
  %8730 = fsub fast float %8729, %166
  %8731 = call float @dx.op.dot3.f32(i32 55, float %8486, float %8487, float %8730, float %8486, float %8487, float %8730)  ; Dot3(ax,ay,az,bx,by,bz)
  %8732 = call float @dx.op.unary.f32(i32 25, float %8731)  ; Rsqrt(value)
  %8733 = fmul fast float %8732, %8486
  %8734 = fmul fast float %8732, %8487
  %8735 = fmul fast float %8732, %8730
  %8736 = fsub fast float %5511, %166
  %8737 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %8736)  ; Dot3(ax,ay,az,bx,by,bz)
  %8738 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8733, float %8734, float %8735)  ; Dot3(ax,ay,az,bx,by,bz)
  %8739 = fdiv fast float 1.000000e+00, %8738
  %8740 = fmul fast float %8739, %8737
  %8741 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %8723, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8742 = fcmp fast ogt float %8741, 0.000000e+00
  %8743 = fcmp fast olt float %8741, 0.000000e+00
  %8744 = zext i1 %8742 to i32
  %8745 = zext i1 %8743 to i32
  %8746 = sub nsw i32 %8744, %8745
  %8747 = sitofp i32 %8746 to float
  %8748 = fsub fast float %8729, %5511
  %8749 = call float @dx.op.dot3.f32(i32 55, float %8486, float %8487, float %8748, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8750 = fcmp fast ogt float %8749, 0.000000e+00
  %8751 = fcmp fast olt float %8749, 0.000000e+00
  %8752 = zext i1 %8750 to i32
  %8753 = zext i1 %8751 to i32
  %8754 = sub nsw i32 %8752, %8753
  %8755 = sitofp i32 %8754 to float
  %8756 = fcmp fast une float %8747, %8755
  br i1 %8756, label %8757, label %8767

; <label>:8757                                    ; preds = %8717
  %8758 = fmul fast float %8740, %8735
  %8759 = fmul fast float %8740, %8734
  %8760 = fmul fast float %8740, %8733
  %8761 = fmul fast float %8760, %8760
  %8762 = fmul fast float %8759, %8759
  %8763 = fadd fast float %8761, %8762
  %8764 = fmul fast float %8758, %8758
  %8765 = fadd fast float %8763, %8764
  %8766 = call float @dx.op.unary.f32(i32 24, float %8765)  ; Sqrt(value)
  br label %8779

; <label>:8767                                    ; preds = %8717
  %8768 = icmp slt i32 %8746, 0
  br i1 %8768, label %8769, label %8779

; <label>:8769                                    ; preds = %8767
  %8770 = fsub fast float %164, %8457
  %8771 = fsub fast float %165, %8458
  %8772 = fsub fast float %166, %8729
  %8773 = fmul fast float %8770, %8770
  %8774 = fmul fast float %8771, %8771
  %8775 = fadd fast float %8773, %8774
  %8776 = fmul fast float %8772, %8772
  %8777 = fadd fast float %8775, %8776
  %8778 = call float @dx.op.unary.f32(i32 24, float %8777)  ; Sqrt(value)
  br label %8779

; <label>:8779                                    ; preds = %8769, %8767, %8757
  %8780 = phi float [ %8766, %8757 ], [ %8778, %8769 ], [ 0.000000e+00, %8767 ]
  %8781 = and i1 %8724, %8722
  %8782 = fsub fast float -0.000000e+00, %8780
  %8783 = select i1 %8781, float -0.000000e+00, float %8782
  %8784 = fmul fast float %5508, 0x3FF7154760000000
  %8785 = fmul fast float %8784, %8783
  %8786 = fmul fast float %5509, 0x3FF7154760000000
  %8787 = fmul fast float %8786, %8783
  %8788 = fmul fast float %5510, 0x3FF7154760000000
  %8789 = fmul fast float %8788, %8783
  %8790 = call float @dx.op.unary.f32(i32 21, float %8785)  ; Exp(value)
  %8791 = call float @dx.op.unary.f32(i32 21, float %8787)  ; Exp(value)
  %8792 = call float @dx.op.unary.f32(i32 21, float %8789)  ; Exp(value)
  %8793 = call float @dx.op.unary.f32(i32 7, float %8790)  ; Saturate(value)
  %8794 = call float @dx.op.unary.f32(i32 7, float %8791)  ; Saturate(value)
  %8795 = call float @dx.op.unary.f32(i32 7, float %8792)  ; Saturate(value)
  %8796 = fmul fast float %8718, %8793
  %8797 = fmul fast float %8719, %8794
  %8798 = fmul fast float %8720, %8795
  %8799 = fsub fast float %8492, %5708
  %8800 = fsub fast float %8493, %5707
  %8801 = fsub fast float %8494, %5706
  %8802 = call float @dx.op.dot3.f32(i32 55, float %8799, float %8800, float %8801, float %8799, float %8800, float %8801)  ; Dot3(ax,ay,az,bx,by,bz)
  %8803 = call float @dx.op.unary.f32(i32 25, float %8802)  ; Rsqrt(value)
  %8804 = fmul fast float %8803, %8799
  %8805 = fmul fast float %8803, %8800
  %8806 = fmul fast float %8803, %8801
  %8807 = call float @dx.op.dot3.f32(i32 55, float %8492, float %8493, float %8494, float %5715, float %5716, float %5717)  ; Dot3(ax,ay,az,bx,by,bz)
  %8808 = call float @dx.op.dot3.f32(i32 55, float %5705, float %5704, float %5703, float %8804, float %8805, float %8806)  ; Dot3(ax,ay,az,bx,by,bz)
  %8809 = call float @dx.op.unary.f32(i32 7, float %8807)  ; Saturate(value)
  %8810 = fmul fast float %8809, %8499
  %8811 = fmul fast float %8809, %8809
  %8812 = fmul fast float %8811, %5748
  %8813 = call float @dx.op.unary.f32(i32 7, float %8812)  ; Saturate(value)
  %8814 = fmul fast float %8810, %8813
  %8815 = bitcast float %8489 to i32
  %8816 = ashr i32 %8815, 1
  %8817 = sub nsw i32 1597463007, %8816
  %8818 = bitcast i32 %8817 to float
  %8819 = fmul fast float %8818, %8486
  %8820 = fmul fast float %8818, %8487
  %8821 = fmul fast float %8818, %8488
  %8822 = fsub fast float %8819, %5708
  %8823 = fsub fast float %8820, %5707
  %8824 = fsub fast float %8821, %5706
  %8825 = call float @dx.op.dot3.f32(i32 55, float %8822, float %8823, float %8824, float %8822, float %8823, float %8824)  ; Dot3(ax,ay,az,bx,by,bz)
  %8826 = call float @dx.op.unary.f32(i32 25, float %8825)  ; Rsqrt(value)
  %8827 = fmul fast float %8822, %8826
  %8828 = fmul fast float %8823, %8826
  %8829 = fmul fast float %8824, %8826
  %8830 = call float @dx.op.dot3.f32(i32 55, float %5715, float %5716, float %5717, float %8827, float %8828, float %8829)  ; Dot3(ax,ay,az,bx,by,bz)
  %8831 = fmul fast float %8830, %8830
  %8832 = call float @dx.op.unary.f32(i32 6, float %8807)  ; FAbs(value)
  %8833 = fsub fast float 1.000000e+00, %5741
  %8834 = fmul fast float %5723, %5723
  %8835 = fmul fast float %8834, %8833
  %8836 = fadd fast float %8835, %5741
  %8837 = bitcast float %8836 to i32
  %8838 = ashr i32 %8837, 1
  %8839 = add nsw i32 %8838, 532487669
  %8840 = bitcast i32 %8839 to float
  %8841 = fadd fast float %8840, %5723
  %8842 = fmul fast float %5741, %8831
  %8843 = fsub fast float 1.000000e+00, %8831
  %8844 = fadd fast float %8843, %8842
  %8845 = fmul fast float %8832, %8832
  %8846 = fmul fast float %8845, %8833
  %8847 = fadd fast float %8846, %5741
  %8848 = bitcast float %8847 to i32
  %8849 = ashr i32 %8848, 1
  %8850 = add nsw i32 %8849, 532487669
  %8851 = bitcast i32 %8850 to float
  %8852 = fadd fast float %8851, %8832
  %8853 = fmul fast float %8844, %8844
  %8854 = fmul fast float %8853, %8841
  %8855 = fmul fast float %8854, %8852
  %8856 = fdiv fast float 1.000000e+00, %8855
  %8857 = bitcast float %5741 to i32
  %8858 = sitofp i32 %8857 to float
  %8859 = fmul fast float %8858, 0x3FE7F73180000000
  %8860 = fadd fast float %8859, 0x41AFE27C40000000
  %8861 = fptosi float %8860 to i32
  %8862 = bitcast i32 %8861 to float
  %8863 = fmul fast float %8454, 0x3FD80E9D60000000
  %8864 = fmul fast float %8863, %8818
  %8865 = fadd fast float %8862, %8864
  %8866 = bitcast float %8865 to i32
  %8867 = sub nsw i32 2129859010, %8866
  %8868 = bitcast i32 %8867 to float
  %8869 = fmul fast float %5741, %8856
  %8870 = fmul fast float %8869, %8862
  %8871 = fmul fast float %8870, %8868
  %8872 = fmul fast float %5994, 0x3FF9999980000000
  %8873 = fsub fast float 5.000000e+00, %8872
  %8874 = call float @dx.op.unary.f32(i32 6, float %8808)  ; FAbs(value)
  %8875 = fsub fast float 1.000000e+00, %8874
  %8876 = fmul fast float %5994, 0x41D9660740000000
  %8877 = fadd fast float %8876, 0xC1EFBF8940000000
  %8878 = bitcast float %8875 to i32
  %8879 = sitofp i32 %8878 to float
  %8880 = fmul fast float %8879, %8873
  %8881 = fadd fast float %8877, %8880
  %8882 = fptosi float %8881 to i32
  %8883 = bitcast i32 %8882 to float
  %8884 = fsub fast float 1.000000e+00, %5712
  %8885 = fsub fast float 1.000000e+00, %5713
  %8886 = fsub fast float 1.000000e+00, %5721
  %8887 = fmul fast float %8883, %8884
  %8888 = fmul fast float %8883, %8885
  %8889 = fmul fast float %8883, %8886
  %8890 = fadd fast float %8887, %5712
  %8891 = fadd fast float %8888, %5713
  %8892 = fadd fast float %8889, %5721
  br i1 %6017, label %8893, label %8916

; <label>:8893                                    ; preds = %8779
  %8894 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %5077, float %8874, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8895 = extractvalue %dx.types.ResRet.f32 %8894, 0
  %8896 = extractvalue %dx.types.ResRet.f32 %8894, 1
  %8897 = extractvalue %dx.types.ResRet.f32 %8894, 2
  %8898 = fadd fast float %8895, -5.000000e-01
  %8899 = fadd fast float %8896, -5.000000e-01
  %8900 = fadd fast float %8897, -5.000000e-01
  %8901 = fmul fast float %5712, 4.000000e+00
  %8902 = fmul fast float %8901, %8884
  %8903 = fmul fast float %8902, %8898
  %8904 = fmul fast float %5713, 4.000000e+00
  %8905 = fmul fast float %8904, %8885
  %8906 = fmul fast float %8905, %8899
  %8907 = fmul fast float %5721, 4.000000e+00
  %8908 = fmul fast float %8907, %8886
  %8909 = fmul fast float %8908, %8900
  %8910 = fadd fast float %8903, %8890
  %8911 = fadd fast float %8906, %8891
  %8912 = fadd fast float %8909, %8892
  %8913 = call float @dx.op.unary.f32(i32 7, float %8910)  ; Saturate(value)
  %8914 = call float @dx.op.unary.f32(i32 7, float %8911)  ; Saturate(value)
  %8915 = call float @dx.op.unary.f32(i32 7, float %8912)  ; Saturate(value)
  br label %8916

; <label>:8916                                    ; preds = %8893, %8779
  %8917 = phi float [ %8913, %8893 ], [ %8890, %8779 ]
  %8918 = phi float [ %8914, %8893 ], [ %8891, %8779 ]
  %8919 = phi float [ %8915, %8893 ], [ %8892, %8779 ]
  %8920 = fmul fast float %8807, 9.843750e-01
  %8921 = fadd fast float %8920, 7.812500e-03
  %8922 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %8921, float %5998, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8923 = extractvalue %dx.types.ResRet.f32 %8922, 0
  %8924 = extractvalue %dx.types.ResRet.f32 %8922, 1
  %8925 = extractvalue %dx.types.ResRet.f32 %8922, 2
  %8926 = extractvalue %dx.types.ResRet.f32 %8922, 3
  %8927 = fsub fast float %8925, %8923
  %8928 = fsub fast float %8926, %8924
  %8929 = fmul fast float %8927, %6004
  %8930 = fmul fast float %8928, %6004
  %8931 = fadd fast float %8929, %8923
  %8932 = fadd fast float %8930, %8924
  %8933 = fmul fast float %8931, %5712
  %8934 = fmul fast float %8931, %5713
  %8935 = fmul fast float %8931, %5721
  %8936 = fadd fast float %8933, %8932
  %8937 = fadd fast float %8934, %8932
  %8938 = fadd fast float %8935, %8932
  br i1 %6017, label %8939, label %8962

; <label>:8939                                    ; preds = %8916
  %8940 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %5077, float %8807, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8941 = extractvalue %dx.types.ResRet.f32 %8940, 0
  %8942 = extractvalue %dx.types.ResRet.f32 %8940, 1
  %8943 = extractvalue %dx.types.ResRet.f32 %8940, 2
  %8944 = fadd fast float %8941, -5.000000e-01
  %8945 = fadd fast float %8942, -5.000000e-01
  %8946 = fadd fast float %8943, -5.000000e-01
  %8947 = fmul fast float %5712, 4.000000e+00
  %8948 = fmul fast float %8947, %8884
  %8949 = fmul fast float %8948, %8944
  %8950 = fmul fast float %5713, 4.000000e+00
  %8951 = fmul fast float %8950, %8885
  %8952 = fmul fast float %8951, %8945
  %8953 = fmul fast float %5721, 4.000000e+00
  %8954 = fmul fast float %8953, %8886
  %8955 = fmul fast float %8954, %8946
  %8956 = fadd fast float %8949, %8936
  %8957 = fadd fast float %8952, %8937
  %8958 = fadd fast float %8955, %8938
  %8959 = call float @dx.op.unary.f32(i32 7, float %8956)  ; Saturate(value)
  %8960 = call float @dx.op.unary.f32(i32 7, float %8957)  ; Saturate(value)
  %8961 = call float @dx.op.unary.f32(i32 7, float %8958)  ; Saturate(value)
  br label %8962

; <label>:8962                                    ; preds = %8939, %8916
  %8963 = phi float [ %8959, %8939 ], [ %8936, %8916 ]
  %8964 = phi float [ %8960, %8939 ], [ %8937, %8916 ]
  %8965 = phi float [ %8961, %8939 ], [ %8938, %8916 ]
  %8966 = call float @dx.op.binary.f32(i32 35, float %8964, float %8965)  ; FMax(a,b)
  %8967 = call float @dx.op.binary.f32(i32 35, float %8963, float %8966)  ; FMax(a,b)
  %8968 = fsub fast float 1.000000e+00, %8967
  %8969 = call float @dx.op.binary.f32(i32 35, float %8832, float 0x3F50624DE0000000)  ; FMax(a,b)
  %8970 = fdiv fast float %4427, %8969
  %8971 = fmul fast float %6564, %8970
  %8972 = fmul fast float %6566, %8970
  %8973 = fmul fast float %6568, %8970
  %8974 = call float @dx.op.unary.f32(i32 21, float %8971)  ; Exp(value)
  %8975 = call float @dx.op.unary.f32(i32 21, float %8972)  ; Exp(value)
  %8976 = call float @dx.op.unary.f32(i32 21, float %8973)  ; Exp(value)
  %8977 = call float @dx.op.unary.f32(i32 7, float %8974)  ; Saturate(value)
  %8978 = call float @dx.op.unary.f32(i32 7, float %8975)  ; Saturate(value)
  %8979 = call float @dx.op.unary.f32(i32 7, float %8976)  ; Saturate(value)
  %8980 = select i1 %6561, float %8977, float 0.000000e+00
  %8981 = select i1 %6562, float %8978, float 0.000000e+00
  %8982 = select i1 %6563, float %8979, float 0.000000e+00
  %8983 = fsub fast float -0.000000e+00, %5715
  %8984 = fsub fast float -0.000000e+00, %5716
  %8985 = fsub fast float -0.000000e+00, %5717
  %8986 = call float @dx.op.dot3.f32(i32 55, float %8492, float %8493, float %8494, float %8983, float %8984, float %8985)  ; Dot3(ax,ay,az,bx,by,bz)
  %8987 = call float @dx.op.unary.f32(i32 7, float %8986)  ; Saturate(value)
  %8988 = fmul fast float %8987, %8499
  %8989 = fmul fast float %8987, 9.843750e-01
  %8990 = fadd fast float %8989, 7.812500e-03
  %8991 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %8990, float %5998, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8992 = extractvalue %dx.types.ResRet.f32 %8991, 0
  %8993 = extractvalue %dx.types.ResRet.f32 %8991, 1
  %8994 = extractvalue %dx.types.ResRet.f32 %8991, 2
  %8995 = extractvalue %dx.types.ResRet.f32 %8991, 3
  %8996 = fsub fast float %8994, %8992
  %8997 = fsub fast float %8995, %8993
  %8998 = fmul fast float %8996, %6004
  %8999 = fmul fast float %8997, %6004
  %9000 = fadd fast float %8998, %8992
  %9001 = fadd fast float %8999, %8993
  %9002 = fmul fast float %9000, %5712
  %9003 = fmul fast float %9000, %5713
  %9004 = fmul fast float %9000, %5721
  %9005 = fadd fast float %9002, %9001
  %9006 = fadd fast float %9003, %9001
  %9007 = fadd fast float %9004, %9001
  br i1 %6017, label %9008, label %9031

; <label>:9008                                    ; preds = %8962
  %9009 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %5077, float %8987, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9010 = extractvalue %dx.types.ResRet.f32 %9009, 0
  %9011 = extractvalue %dx.types.ResRet.f32 %9009, 1
  %9012 = extractvalue %dx.types.ResRet.f32 %9009, 2
  %9013 = fadd fast float %9010, -5.000000e-01
  %9014 = fadd fast float %9011, -5.000000e-01
  %9015 = fadd fast float %9012, -5.000000e-01
  %9016 = fmul fast float %5712, 4.000000e+00
  %9017 = fmul fast float %9016, %8884
  %9018 = fmul fast float %9017, %9013
  %9019 = fmul fast float %5713, 4.000000e+00
  %9020 = fmul fast float %9019, %8885
  %9021 = fmul fast float %9020, %9014
  %9022 = fmul fast float %5721, 4.000000e+00
  %9023 = fmul fast float %9022, %8886
  %9024 = fmul fast float %9023, %9015
  %9025 = fadd fast float %9018, %9005
  %9026 = fadd fast float %9021, %9006
  %9027 = fadd fast float %9024, %9007
  %9028 = call float @dx.op.unary.f32(i32 7, float %9025)  ; Saturate(value)
  %9029 = call float @dx.op.unary.f32(i32 7, float %9026)  ; Saturate(value)
  %9030 = call float @dx.op.unary.f32(i32 7, float %9027)  ; Saturate(value)
  br label %9031

; <label>:9031                                    ; preds = %9008, %8962
  %9032 = phi float [ %9028, %9008 ], [ %9005, %8962 ]
  %9033 = phi float [ %9029, %9008 ], [ %9006, %8962 ]
  %9034 = phi float [ %9030, %9008 ], [ %9007, %8962 ]
  %9035 = call float @dx.op.binary.f32(i32 35, float %9033, float %9034)  ; FMax(a,b)
  %9036 = call float @dx.op.binary.f32(i32 35, float %9032, float %9035)  ; FMax(a,b)
  %9037 = fsub fast float 1.000000e+00, %9036
  %9038 = fmul fast float %5738, %6628
  %9039 = fadd fast float %6630, %9038
  %9040 = call float @dx.op.unary.f32(i32 7, float %9039)  ; Saturate(value)
  %9041 = fsub fast float %8819, %5729
  %9042 = fsub fast float %8820, %5730
  %9043 = fsub fast float %8821, %5731
  %9044 = call float @dx.op.dot3.f32(i32 55, float %9041, float %9042, float %9043, float %9041, float %9042, float %9043)  ; Dot3(ax,ay,az,bx,by,bz)
  %9045 = call float @dx.op.unary.f32(i32 25, float %9044)  ; Rsqrt(value)
  %9046 = fmul fast float %9041, %9045
  %9047 = fmul fast float %9042, %9045
  %9048 = fmul fast float %9043, %9045
  %9049 = call float @dx.op.dot3.f32(i32 55, float %8983, float %8984, float %8985, float %9046, float %9047, float %9048)  ; Dot3(ax,ay,az,bx,by,bz)
  %9050 = fmul fast float %9049, %9049
  %9051 = call float @dx.op.unary.f32(i32 6, float %8987)  ; FAbs(value)
  %9052 = call float @dx.op.binary.f32(i32 35, float %9040, float 0x3F847AE140000000)  ; FMax(a,b)
  %9053 = fmul fast float %9052, %9052
  %9054 = fmul fast float %9053, %9053
  %9055 = fsub fast float 1.000000e+00, %9054
  %9056 = fmul fast float %8834, %9055
  %9057 = fadd fast float %9056, %9054
  %9058 = bitcast float %9057 to i32
  %9059 = ashr i32 %9058, 1
  %9060 = add nsw i32 %9059, 532487669
  %9061 = bitcast i32 %9060 to float
  %9062 = fadd fast float %9061, %5723
  %9063 = fmul fast float %9054, %9050
  %9064 = fsub fast float 1.000000e+00, %9050
  %9065 = fadd fast float %9064, %9063
  %9066 = fmul fast float %9051, %9051
  %9067 = fmul fast float %9066, %9055
  %9068 = fadd fast float %9067, %9054
  %9069 = bitcast float %9068 to i32
  %9070 = ashr i32 %9069, 1
  %9071 = add nsw i32 %9070, 532487669
  %9072 = bitcast i32 %9071 to float
  %9073 = fadd fast float %9072, %9051
  %9074 = fmul fast float %9065, %9065
  %9075 = fmul fast float %9074, %9062
  %9076 = fmul fast float %9075, %9073
  %9077 = fdiv fast float 1.000000e+00, %9076
  %9078 = bitcast float %9054 to i32
  %9079 = sitofp i32 %9078 to float
  %9080 = fmul fast float %9079, 0x3FE7F73180000000
  %9081 = fadd fast float %9080, 0x41AFE27C40000000
  %9082 = fptosi float %9081 to i32
  %9083 = bitcast i32 %9082 to float
  %9084 = fadd fast float %9083, %8864
  %9085 = bitcast float %9084 to i32
  %9086 = sub nsw i32 2129859010, %9085
  %9087 = bitcast i32 %9086 to float
  %9088 = fmul fast float %9054, %9077
  %9089 = fmul fast float %9088, %9083
  %9090 = fmul fast float %9089, %9087
  br i1 %8484, label %9091, label %9101

; <label>:9091                                    ; preds = %9031
  %9092 = fmul fast float %8988, %8980
  %9093 = fmul fast float %8988, %8981
  %9094 = fmul fast float %8988, %8982
  %9095 = fmul fast float %9092, %9037
  %9096 = fmul fast float %9095, %9090
  %9097 = fmul fast float %9093, %9037
  %9098 = fmul fast float %9097, %9090
  %9099 = fmul fast float %9094, %9037
  %9100 = fmul fast float %9099, %9090
  br label %9101

; <label>:9101                                    ; preds = %9091, %9031
  %9102 = phi float [ %9096, %9091 ], [ 0.000000e+00, %9031 ]
  %9103 = phi float [ %9098, %9091 ], [ 0.000000e+00, %9031 ]
  %9104 = phi float [ %9100, %9091 ], [ 0.000000e+00, %9031 ]
  %9105 = fmul fast float %8917, %8871
  %9106 = fmul fast float %8918, %8871
  %9107 = fmul fast float %8919, %8871
  %9108 = fsub fast float 1.000000e+00, %8808
  %9109 = bitcast float %9108 to i32
  %9110 = sitofp i32 %9109 to float
  %9111 = fmul fast float %9110, 5.000000e+00
  %9112 = fadd fast float %9111, 0xC1EFBF8940000000
  %9113 = fptosi float %9112 to i32
  %9114 = bitcast i32 %9113 to float
  %9115 = fmul fast float %9114, %5078
  %9116 = fmul fast float %8968, %9115
  %9117 = fmul fast float %9116, %6556
  %9118 = fmul fast float %9116, %6557
  %9119 = fmul fast float %9116, %6558
  %9120 = fadd fast float %9117, %9105
  %9121 = fadd fast float %9118, %9106
  %9122 = fadd fast float %9119, %9107
  %9123 = fmul fast float %9120, %8814
  %9124 = fmul fast float %9121, %8814
  %9125 = fmul fast float %9122, %8814
  %9126 = fadd fast float %9123, %9102
  %9127 = fadd fast float %9124, %9103
  %9128 = fadd fast float %9125, %9104
  %9129 = fmul fast float %8796, %5074
  %9130 = fmul fast float %9129, %8814
  %9131 = fmul fast float %9130, %8968
  %9132 = fmul fast float %8797, %5074
  %9133 = fmul fast float %9132, %8814
  %9134 = fmul fast float %9133, %8968
  %9135 = fmul fast float %8798, %5074
  %9136 = fmul fast float %9135, %8814
  %9137 = fmul fast float %9136, %8968
  %9138 = fadd fast float %9131, %8428
  %9139 = fadd fast float %9134, %8429
  %9140 = fadd fast float %9137, %8430
  %9141 = fmul fast float %9129, %9126
  %9142 = fmul fast float %9132, %9127
  %9143 = fmul fast float %9135, %9128
  %9144 = fadd fast float %9141, %8425
  %9145 = fadd fast float %9142, %8426
  %9146 = fadd fast float %9143, %8427
  br label %8558

; <label>:9147                                    ; preds = %8558
  br label %9148

; <label>:9148                                    ; preds = %9147, %8391
  %9149 = phi float [ %8393, %8391 ], [ %8559, %9147 ]
  %9150 = phi float [ %8394, %8391 ], [ %8560, %9147 ]
  %9151 = phi float [ %8395, %8391 ], [ %8561, %9147 ]
  %9152 = phi float [ %8396, %8391 ], [ %8562, %9147 ]
  %9153 = phi float [ %8397, %8391 ], [ %8563, %9147 ]
  %9154 = phi float [ %8398, %8391 ], [ %8564, %9147 ]
  %9155 = add i32 %8392, 1
  %9156 = icmp ugt i32 %9155, %8388
  br i1 %9156, label %9157, label %8391

; <label>:9157                                    ; preds = %9148
  br label %9158

; <label>:9158                                    ; preds = %9157, %8341, %8331
  %9159 = phi float [ %8332, %8331 ], [ %8332, %8341 ], [ %9149, %9157 ]
  %9160 = phi float [ %8333, %8331 ], [ %8333, %8341 ], [ %9150, %9157 ]
  %9161 = phi float [ %8334, %8331 ], [ %8334, %8341 ], [ %9151, %9157 ]
  %9162 = phi float [ %8335, %8331 ], [ %8335, %8341 ], [ %9152, %9157 ]
  %9163 = phi float [ %8336, %8331 ], [ %8336, %8341 ], [ %9153, %9157 ]
  %9164 = phi float [ %8337, %8331 ], [ %8337, %8341 ], [ %9154, %9157 ]
  %9165 = fmul fast float %6585, %5074
  %9166 = fmul fast float %6586, %5074
  %9167 = fmul fast float %6587, %5074
  %9168 = fadd fast float %9165, 1.000000e+00
  %9169 = fadd fast float %9166, 1.000000e+00
  %9170 = fadd fast float %9167, 1.000000e+00
  %9171 = call float @dx.op.dot3.f32(i32 55, float %9168, float %9169, float %9170, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9172 = fsub fast float 1.000000e+00, %9171
  %9173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9174 = extractvalue %dx.types.CBufRet.f32 %9173, 0
  %9175 = fmul fast float %9174, %6591
  %9176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %9177 = extractvalue %dx.types.CBufRet.f32 %9176, 3
  %9178 = fsub fast float 1.000000e+00, %5082
  %9179 = call float @dx.op.unary.f32(i32 7, float %9178)  ; Saturate(value)
  %9180 = fadd fast float %9164, %5080
  %9181 = fmul fast float %9180, %5082
  %9182 = fmul fast float %9179, %9177
  %9183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %9184 = extractvalue %dx.types.CBufRet.f32 %9183, 3
  %9185 = fmul fast float %9162, %5709
  %9186 = fmul fast float %9163, %5710
  %9187 = fmul fast float %9164, %5711
  %9188 = fcmp fast ogt float %97, %186
  %9189 = and i1 %9188, %5514
  %9190 = or i1 %5520, %9189
  %9191 = icmp eq i32 %5513, 2
  %9192 = fcmp fast ole float %97, %186
  %9193 = and i1 %9192, %9191
  %9194 = or i1 %9193, %9190
  br i1 %9189, label %9195, label %9452

; <label>:9195                                    ; preds = %9158
  %9196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %9197 = extractvalue %dx.types.CBufRet.f32 %9196, 2
  %9198 = extractvalue %dx.types.CBufRet.f32 %9196, 3
  %9199 = fmul fast float %9197, %109
  %9200 = fmul fast float %9198, %110
  %9201 = call float @dx.op.unary.f32(i32 7, float %9199)  ; Saturate(value)
  %9202 = call float @dx.op.unary.f32(i32 7, float %9200)  ; Saturate(value)
  %9203 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %9201, float %9202, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9204 = extractvalue %dx.types.ResRet.f32 %9203, 0
  %9205 = extractvalue %dx.types.ResRet.f32 %9203, 1
  %9206 = extractvalue %dx.types.ResRet.f32 %9203, 2
  %9207 = extractvalue %dx.types.ResRet.f32 %9203, 3
  %9208 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %9201, float %9202, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9209 = extractvalue %dx.types.ResRet.f32 %9208, 0
  %9210 = extractvalue %dx.types.ResRet.f32 %9208, 1
  %9211 = extractvalue %dx.types.ResRet.f32 %9208, 2
  %9212 = extractvalue %dx.types.ResRet.f32 %9208, 3
  %9213 = call float @dx.op.binary.f32(i32 35, float %9205, float %9206)  ; FMax(a,b)
  %9214 = call float @dx.op.binary.f32(i32 35, float %9204, float %9213)  ; FMax(a,b)
  %9215 = call float @dx.op.binary.f32(i32 35, float %9214, float %9207)  ; FMax(a,b)
  %9216 = call float @dx.op.binary.f32(i32 36, float %9210, float %9211)  ; FMin(a,b)
  %9217 = call float @dx.op.binary.f32(i32 36, float %9209, float %9216)  ; FMin(a,b)
  %9218 = call float @dx.op.binary.f32(i32 36, float %9217, float %9212)  ; FMin(a,b)
  %9219 = fmul fast float %9215, 2.550000e+02
  %9220 = fadd fast float %9219, 0x3F70101020000000
  %9221 = fptoui float %9220 to i32
  %9222 = fmul fast float %9218, 2.550000e+02
  %9223 = fadd fast float %9222, 0x3F70101020000000
  %9224 = fptoui float %9223 to i32
  %9225 = icmp ult i32 %9221, %9224
  br i1 %9225, label %9226, label %9394

; <label>:9226                                    ; preds = %9195
  %9227 = fcmp fast ogt float %96, 9.843750e-01
  %9228 = fadd fast float %97, -4.000000e+00
  %9229 = select i1 %9227, float -4.000000e+00, float %9228
  %9230 = call float @dx.op.binary.f32(i32 35, float %9229, float 0.000000e+00)  ; FMax(a,b)
  %9231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9232 = extractvalue %dx.types.CBufRet.f32 %9231, 0
  %9233 = fadd fast float %9232, %9230
  %9234 = extractvalue %dx.types.CBufRet.f32 %9231, 2
  %9235 = fmul fast float %9233, %9234
  %9236 = call float @dx.op.unary.f32(i32 23, float %9235)  ; Log(value)
  %9237 = extractvalue %dx.types.CBufRet.f32 %9231, 3
  %9238 = fmul fast float %9237, %9236
  %9239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9240 = extractvalue %dx.types.CBufRet.f32 %9239, 2
  %9241 = fmul fast float %9238, %9240
  %9242 = call float @dx.op.unary.f32(i32 7, float %9241)  ; Saturate(value)
  %9243 = uitofp i32 %9221 to float
  %9244 = uitofp i32 %9224 to float
  %9245 = fadd fast float %9243, 5.000000e-01
  %9246 = fadd fast float %9244, 5.000000e-01
  %9247 = fmul fast float %9240, %9245
  %9248 = fmul fast float %9240, %9246
  %9249 = fadd fast float %9247, 0x3F0FFB4800000000
  %9250 = fadd fast float %9248, 0xBF0FFB4800000000
  %9251 = call float @dx.op.binary.f32(i32 35, float %9242, float %9249)  ; FMax(a,b)
  %9252 = call float @dx.op.binary.f32(i32 36, float %9251, float %9250)  ; FMin(a,b)
  %9253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9254 = extractvalue %dx.types.CBufRet.f32 %9253, 1
  %9255 = extractvalue %dx.types.CBufRet.f32 %9253, 2
  %9256 = extractvalue %dx.types.CBufRet.f32 %9253, 0
  %9257 = fmul fast float %9254, %9252
  %9258 = fadd fast float %9256, %9257
  %9259 = fadd fast float %9256, %9255
  %9260 = fsub fast float %9254, %9255
  %9261 = fadd fast float %9260, %9256
  %9262 = call float @dx.op.binary.f32(i32 35, float %9258, float %9259)  ; FMax(a,b)
  %9263 = call float @dx.op.binary.f32(i32 36, float %9262, float %9261)  ; FMin(a,b)
  %9264 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %52, float %9201, float %9202, float %9263, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9265 = extractvalue %dx.types.ResRet.f32 %9264, 0
  %9266 = extractvalue %dx.types.ResRet.f32 %9264, 1
  %9267 = extractvalue %dx.types.ResRet.f32 %9264, 2
  %9268 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9269 = extractvalue %dx.types.CBufRet.i32 %9268, 0
  %9270 = extractvalue %dx.types.CBufRet.i32 %9268, 1
  %9271 = uitofp i32 %9269 to float
  %9272 = uitofp i32 %9270 to float
  %9273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9274 = extractvalue %dx.types.CBufRet.f32 %9273, 0
  %9275 = extractvalue %dx.types.CBufRet.f32 %9273, 1
  %9276 = fmul fast float %9271, %9201
  %9277 = fmul fast float %9272, %9202
  %9278 = fadd fast float %9276, -5.000000e-01
  %9279 = fadd fast float %9277, -5.000000e-01
  %9280 = call float @dx.op.unary.f32(i32 22, float %9278)  ; Frc(value)
  %9281 = call float @dx.op.unary.f32(i32 22, float %9279)  ; Frc(value)
  %9282 = fmul fast float %9280, %9280
  %9283 = fmul fast float %9282, %9280
  %9284 = fsub fast float 3.000000e+00, %9280
  %9285 = fmul fast float %9282, %9284
  %9286 = fmul fast float %9280, 3.000000e+00
  %9287 = fmul fast float %9283, 3.000000e+00
  %9288 = fmul fast float %9282, 6.000000e+00
  %9289 = fsub fast float %9287, %9288
  %9290 = fadd fast float %9289, 4.000000e+00
  %9291 = fmul fast float %9290, 0x3FC5555560000000
  %9292 = fmul fast float %9283, -3.000000e+00
  %9293 = fadd fast float %9282, %9280
  %9294 = fmul fast float %9293, 3.000000e+00
  %9295 = fadd fast float %9292, 1.000000e+00
  %9296 = fadd fast float %9295, %9294
  %9297 = fmul fast float %9283, 0x3FC5555560000000
  %9298 = fmul fast float %9281, %9281
  %9299 = fmul fast float %9298, %9281
  %9300 = fsub fast float 3.000000e+00, %9281
  %9301 = fmul fast float %9298, %9300
  %9302 = fmul fast float %9281, 3.000000e+00
  %9303 = fmul fast float %9299, 3.000000e+00
  %9304 = fmul fast float %9298, 6.000000e+00
  %9305 = fsub fast float %9303, %9304
  %9306 = fadd fast float %9305, 4.000000e+00
  %9307 = fmul fast float %9306, 0x3FC5555560000000
  %9308 = fmul fast float %9299, -3.000000e+00
  %9309 = fadd fast float %9298, %9281
  %9310 = fmul fast float %9309, 3.000000e+00
  %9311 = fadd fast float %9308, 1.000000e+00
  %9312 = fadd fast float %9311, %9310
  %9313 = fmul fast float %9299, 0x3FC5555560000000
  %9314 = fadd fast float %9280, 1.000000e+00
  %9315 = fsub fast float 1.000000e+00, %9286
  %9316 = fadd fast float %9315, %9285
  %9317 = fadd fast float %9316, %9290
  %9318 = fmul fast float %9317, 0x3FC5555560000000
  %9319 = fdiv fast float %9291, %9318
  %9320 = fsub fast float %9314, %9319
  %9321 = fsub fast float 1.000000e+00, %9280
  %9322 = fadd fast float %9296, %9283
  %9323 = fmul fast float %9322, 0x3FC5555560000000
  %9324 = fdiv fast float %9297, %9323
  %9325 = fadd fast float %9321, %9324
  %9326 = fadd fast float %9281, 1.000000e+00
  %9327 = fsub fast float 1.000000e+00, %9302
  %9328 = fadd fast float %9327, %9301
  %9329 = fadd fast float %9328, %9306
  %9330 = fmul fast float %9329, 0x3FC5555560000000
  %9331 = fdiv fast float %9307, %9330
  %9332 = fsub fast float %9326, %9331
  %9333 = fsub fast float 1.000000e+00, %9281
  %9334 = fadd fast float %9312, %9299
  %9335 = fmul fast float %9334, 0x3FC5555560000000
  %9336 = fdiv fast float %9313, %9335
  %9337 = fadd fast float %9336, %9333
  %9338 = fmul fast float %9320, %9274
  %9339 = fsub fast float %9201, %9338
  %9340 = fmul fast float %9325, %9274
  %9341 = fadd fast float %9340, %9201
  %9342 = fmul fast float %9337, %9275
  %9343 = fadd fast float %9342, %9202
  %9344 = fmul fast float %9332, %9275
  %9345 = fsub fast float %9202, %9344
  %9346 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9339, float %9345, float %9263, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9347 = extractvalue %dx.types.ResRet.f32 %9346, 0
  %9348 = extractvalue %dx.types.ResRet.f32 %9346, 1
  %9349 = extractvalue %dx.types.ResRet.f32 %9346, 2
  %9350 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9341, float %9345, float %9263, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9351 = extractvalue %dx.types.ResRet.f32 %9350, 0
  %9352 = extractvalue %dx.types.ResRet.f32 %9350, 1
  %9353 = extractvalue %dx.types.ResRet.f32 %9350, 2
  %9354 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9339, float %9343, float %9263, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9355 = extractvalue %dx.types.ResRet.f32 %9354, 0
  %9356 = extractvalue %dx.types.ResRet.f32 %9354, 1
  %9357 = extractvalue %dx.types.ResRet.f32 %9354, 2
  %9358 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9341, float %9343, float %9263, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9359 = extractvalue %dx.types.ResRet.f32 %9358, 0
  %9360 = extractvalue %dx.types.ResRet.f32 %9358, 1
  %9361 = extractvalue %dx.types.ResRet.f32 %9358, 2
  %9362 = fsub fast float %9355, %9347
  %9363 = fsub fast float %9356, %9348
  %9364 = fsub fast float %9357, %9349
  %9365 = fmul fast float %9362, %9335
  %9366 = fmul fast float %9363, %9335
  %9367 = fmul fast float %9364, %9335
  %9368 = fadd fast float %9365, %9347
  %9369 = fadd fast float %9366, %9348
  %9370 = fadd fast float %9367, %9349
  %9371 = fsub fast float %9359, %9351
  %9372 = fsub fast float %9360, %9352
  %9373 = fsub fast float %9361, %9353
  %9374 = fmul fast float %9371, %9335
  %9375 = fmul fast float %9372, %9335
  %9376 = fmul fast float %9373, %9335
  %9377 = fsub fast float %9351, %9368
  %9378 = fadd fast float %9377, %9374
  %9379 = fsub fast float %9352, %9369
  %9380 = fadd fast float %9379, %9375
  %9381 = fsub fast float %9353, %9370
  %9382 = fadd fast float %9381, %9376
  %9383 = fmul fast float %9378, %9323
  %9384 = fmul fast float %9380, %9323
  %9385 = fmul fast float %9382, %9323
  %9386 = fadd fast float %9383, %9368
  %9387 = fadd fast float %9384, %9369
  %9388 = fadd fast float %9385, %9370
  %9389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9390 = extractvalue %dx.types.CBufRet.f32 %9389, 1
  %9391 = fmul fast float %9386, %9390
  %9392 = fmul fast float %9387, %9390
  %9393 = fmul fast float %9388, %9390
  br label %9394

; <label>:9394                                    ; preds = %9226, %9195
  %9395 = phi float [ %9265, %9226 ], [ 1.000000e+00, %9195 ]
  %9396 = phi float [ %9266, %9226 ], [ 1.000000e+00, %9195 ]
  %9397 = phi float [ %9267, %9226 ], [ 1.000000e+00, %9195 ]
  %9398 = phi float [ %9391, %9226 ], [ 0.000000e+00, %9195 ]
  %9399 = phi float [ %9392, %9226 ], [ 0.000000e+00, %9195 ]
  %9400 = phi float [ %9393, %9226 ], [ 0.000000e+00, %9195 ]
  %9401 = fmul fast float %9398, %9172
  %9402 = fmul fast float %9399, %9172
  %9403 = fmul fast float %9400, %9172
  %9404 = call float @dx.op.dot3.f32(i32 55, float %9395, float %9396, float %9397, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9405 = call float @dx.op.dot3.f32(i32 55, float %9401, float %9402, float %9403, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9406 = select i1 %226, float %9404, float %9395
  %9407 = select i1 %226, float %9404, float %9396
  %9408 = select i1 %226, float 1.000000e+00, float %9397
  %9409 = select i1 %226, float %9405, float %9401
  %9410 = select i1 %226, float 0.000000e+00, float %9402
  %9411 = select i1 %226, float 0.000000e+00, float %9403
  %9412 = fmul fast float %9406, %9185
  %9413 = fmul fast float %9407, %9186
  %9414 = fmul fast float %9408, %9187
  %9415 = fadd fast float %9412, %9409
  %9416 = fadd fast float %9413, %9410
  %9417 = fadd fast float %9411, %9414
  %9418 = fmul fast float %9406, %9159
  %9419 = fmul fast float %9407, %9160
  %9420 = fmul fast float %9408, %9161
  %9421 = fmul fast float %134, %9197
  %9422 = fmul fast float %136, %9198
  %9423 = fsub fast float 1.000000e+00, %9421
  %9424 = fsub fast float 1.000000e+00, %9422
  %9425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9426 = extractvalue %dx.types.CBufRet.f32 %9425, 0
  %9427 = extractvalue %dx.types.CBufRet.f32 %9425, 1
  %9428 = extractvalue %dx.types.CBufRet.f32 %9425, 2
  %9429 = fmul fast float %9423, %9426
  %9430 = fmul fast float %9423, %9427
  %9431 = fmul fast float %9423, %9428
  %9432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9433 = extractvalue %dx.types.CBufRet.f32 %9432, 0
  %9434 = extractvalue %dx.types.CBufRet.f32 %9432, 1
  %9435 = extractvalue %dx.types.CBufRet.f32 %9432, 2
  %9436 = fmul fast float %9424, %9433
  %9437 = fmul fast float %9424, %9434
  %9438 = fmul fast float %9424, %9435
  %9439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9440 = extractvalue %dx.types.CBufRet.f32 %9439, 0
  %9441 = extractvalue %dx.types.CBufRet.f32 %9439, 1
  %9442 = extractvalue %dx.types.CBufRet.f32 %9439, 2
  %9443 = fadd fast float %9436, %9440
  %9444 = fadd fast float %9443, %9429
  %9445 = fadd fast float %9437, %9441
  %9446 = fadd fast float %9445, %9430
  %9447 = fadd fast float %9438, %9442
  %9448 = fadd fast float %9447, %9431
  %9449 = fmul fast float %9444, %186
  %9450 = fmul fast float %9446, %186
  %9451 = fmul fast float %9448, %186
  br label %9452

; <label>:9452                                    ; preds = %9394, %9158
  %9453 = phi float [ %9449, %9394 ], [ %164, %9158 ]
  %9454 = phi float [ %9450, %9394 ], [ %165, %9158 ]
  %9455 = phi float [ %9451, %9394 ], [ %166, %9158 ]
  %9456 = phi float [ %186, %9394 ], [ %97, %9158 ]
  %9457 = phi float [ %9415, %9394 ], [ %9185, %9158 ]
  %9458 = phi float [ %9416, %9394 ], [ %9186, %9158 ]
  %9459 = phi float [ %9417, %9394 ], [ %9187, %9158 ]
  %9460 = phi float [ %9418, %9394 ], [ %9159, %9158 ]
  %9461 = phi float [ %9419, %9394 ], [ %9160, %9158 ]
  %9462 = phi float [ %9420, %9394 ], [ %9161, %9158 ]
  %9463 = phi float [ %9395, %9394 ], [ 1.000000e+00, %9158 ]
  br i1 %9194, label %10618, label %9464

; <label>:9464                                    ; preds = %9452
  %9465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %9466 = extractvalue %dx.types.CBufRet.f32 %9465, 0
  %9467 = extractvalue %dx.types.CBufRet.f32 %9465, 1
  %9468 = extractvalue %dx.types.CBufRet.f32 %9465, 2
  %9469 = extractvalue %dx.types.CBufRet.f32 %9465, 3
  %9470 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %9471 = extractvalue %dx.types.CBufRet.f32 %9470, 0
  %9472 = extractvalue %dx.types.CBufRet.f32 %9470, 1
  %9473 = extractvalue %dx.types.CBufRet.f32 %9470, 2
  %9474 = extractvalue %dx.types.CBufRet.f32 %9470, 3
  %9475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %9476 = extractvalue %dx.types.CBufRet.f32 %9475, 0
  %9477 = extractvalue %dx.types.CBufRet.f32 %9475, 1
  %9478 = extractvalue %dx.types.CBufRet.f32 %9475, 2
  %9479 = extractvalue %dx.types.CBufRet.f32 %9475, 3
  %9480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %9481 = extractvalue %dx.types.CBufRet.f32 %9480, 0
  %9482 = extractvalue %dx.types.CBufRet.f32 %9480, 1
  %9483 = extractvalue %dx.types.CBufRet.f32 %9480, 2
  %9484 = extractvalue %dx.types.CBufRet.f32 %9480, 3
  %9485 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %9486 = extractvalue %dx.types.CBufRet.f32 %9485, 3
  %9487 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %9488 = extractvalue %dx.types.CBufRet.f32 %9487, 3
  %9489 = extractvalue %dx.types.CBufRet.f32 %9487, 0
  %9490 = extractvalue %dx.types.CBufRet.f32 %9487, 1
  %9491 = extractvalue %dx.types.CBufRet.f32 %9487, 2
  %9492 = fcmp fast olt float %9491, -5.000000e-01
  %9493 = call float @dx.op.dot3.f32(i32 55, float %9453, float %9454, float %9455, float %9453, float %9454, float %9455)  ; Dot3(ax,ay,az,bx,by,bz)
  %9494 = call float @dx.op.unary.f32(i32 25, float %9493)  ; Rsqrt(value)
  %9495 = fmul fast float %9494, %9493
  %9496 = fmul fast float %9494, %9453
  %9497 = fmul fast float %9494, %9454
  %9498 = fmul fast float %9494, %9455
  %9499 = fadd fast float %9495, %9469
  %9500 = call float @dx.op.dot3.f32(i32 55, float %9496, float %9497, float %9498, float %9466, float %9467, float %9468)  ; Dot3(ax,ay,az,bx,by,bz)
  %9501 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %9502 = extractvalue %dx.types.CBufRet.i32 %9501, 1
  %9503 = and i32 %9502, 1
  %9504 = icmp ne i32 %9503, 0
  %9505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %9506 = extractvalue %dx.types.CBufRet.f32 %9505, 2
  %9507 = fcmp fast ogt float %9506, 0.000000e+00
  %9508 = and i1 %9504, %9507
  br i1 %9508, label %9509, label %9915, !dx.controlflow.hints !133

; <label>:9509                                    ; preds = %9464
  %9510 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %9511 = extractvalue %dx.types.CBufRet.f32 %9510, 3
  %9512 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %9513 = extractvalue %dx.types.CBufRet.f32 %9512, 2
  %9514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9515 = extractvalue %dx.types.CBufRet.f32 %9514, 2
  %9516 = fsub fast float %9513, %9515
  %9517 = and i32 %9502, 2
  %9518 = extractvalue %dx.types.CBufRet.i32 %9501, 0
  %9519 = call i32 @dx.op.binary.i32(i32 40, i32 %9518, i32 3)  ; UMin(a,b)
  %9520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %9521 = extractvalue %dx.types.CBufRet.f32 %9520, 0
  %9522 = extractvalue %dx.types.CBufRet.f32 %9520, 1
  %9523 = extractvalue %dx.types.CBufRet.f32 %9514, 0
  %9524 = extractvalue %dx.types.CBufRet.f32 %9514, 1
  %9525 = fsub fast float %9521, %9523
  %9526 = fsub fast float %9522, %9524
  %9527 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %9528 = extractvalue %dx.types.CBufRet.f32 %9527, 0
  %9529 = fcmp fast ogt float %9528, 0.000000e+00
  %9530 = fsub fast float -0.000000e+00, %9525
  %9531 = fsub fast float -0.000000e+00, %9526
  %9532 = call float @dx.op.dot2.f32(i32 54, float %9496, float %9497, float %9496, float %9497)  ; Dot2(ax,ay,bx,by)
  %9533 = call float @dx.op.dot2.f32(i32 54, float %9496, float %9497, float %9530, float %9531)  ; Dot2(ax,ay,bx,by)
  %9534 = fmul fast float %9533, 2.000000e+00
  %9535 = call float @dx.op.dot2.f32(i32 54, float %9530, float %9531, float %9530, float %9531)  ; Dot2(ax,ay,bx,by)
  %9536 = fmul fast float %9528, %9528
  %9537 = fsub fast float %9535, %9536
  %9538 = fmul fast float %9534, %9534
  %9539 = fmul fast float %9532, 4.000000e+00
  %9540 = fmul fast float %9539, %9537
  %9541 = fsub fast float %9538, %9540
  %9542 = fcmp fast ogt float %9541, 0.000000e+00
  br i1 %9542, label %9543, label %9558

; <label>:9543                                    ; preds = %9509
  %9544 = fcmp fast ogt float %9534, 0.000000e+00
  %9545 = call float @dx.op.unary.f32(i32 24, float %9541)  ; Sqrt(value)
  %9546 = fsub fast float -0.000000e+00, %9545
  %9547 = select i1 %9544, float %9545, float %9546
  %9548 = fadd fast float %9547, %9534
  %9549 = fmul float %9548, -5.000000e-01
  %9550 = fdiv fast float %9549, %9532
  %9551 = call float @dx.op.binary.f32(i32 35, float %9550, float 0.000000e+00)  ; FMax(a,b)
  %9552 = call float @dx.op.binary.f32(i32 36, float %9495, float %9551)  ; FMin(a,b)
  %9553 = fdiv fast float %9537, %9549
  %9554 = call float @dx.op.binary.f32(i32 35, float %9553, float 0.000000e+00)  ; FMax(a,b)
  %9555 = call float @dx.op.binary.f32(i32 36, float %9495, float %9554)  ; FMin(a,b)
  %9556 = call float @dx.op.binary.f32(i32 36, float %9552, float %9555)  ; FMin(a,b)
  %9557 = call float @dx.op.binary.f32(i32 35, float %9552, float %9555)  ; FMax(a,b)
  br label %9558

; <label>:9558                                    ; preds = %9543, %9509
  %9559 = phi float [ %9557, %9543 ], [ -1.000000e+00, %9509 ]
  %9560 = phi float [ %9556, %9543 ], [ -1.000000e+00, %9509 ]
  %9561 = phi i1 [ true, %9543 ], [ false, %9509 ]
  %9562 = and i1 %9529, %9561
  br i1 %9562, label %9563, label %9565

; <label>:9563                                    ; preds = %9558
  %9564 = fcmp fast oeq float %9560, %9559
  br i1 %9564, label %9868, label %9566

; <label>:9565                                    ; preds = %9558
  br i1 %9529, label %9868, label %9566

; <label>:9566                                    ; preds = %9565, %9563
  %9567 = phi float [ %9495, %9565 ], [ %9559, %9563 ]
  %9568 = phi float [ 0.000000e+00, %9565 ], [ %9560, %9563 ]
  %9569 = icmp ne i32 %9517, 0
  %9570 = fmul fast float %9567, %9498
  %9571 = fadd fast float %9570, %9511
  %9572 = fmul fast float %9571, %9567
  %9573 = select i1 %9569, float 0.000000e+00, float %9572
  %9574 = fcmp fast oeq float %9498, 0.000000e+00
  %9575 = fdiv fast float %9516, %9498
  %9576 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9575)  ; FMax(a,b)
  %9577 = select i1 %9574, float %9567, float %9576
  %9578 = call float @dx.op.binary.f32(i32 36, float %9567, float %9577)  ; FMin(a,b)
  %9579 = fcmp fast ogt float %9498, 0.000000e+00
  %9580 = fcmp fast olt float %9516, 0.000000e+00
  br i1 %9579, label %9581, label %9638

; <label>:9581                                    ; preds = %9566
  %9582 = icmp eq i32 %9517, 0
  br i1 %9580, label %9583, label %9627

; <label>:9583                                    ; preds = %9581
  %9584 = select i1 %9582, float %9567, float 0.000000e+00
  %9585 = fsub fast float -0.000000e+00, %9584
  %9586 = call float @dx.op.unary.f32(i32 6, float %9585)  ; FAbs(value)
  %9587 = fmul fast float %9584, %9498
  %9588 = fadd fast float %9587, %9511
  %9589 = fmul fast float %9586, %9588
  %9590 = fsub fast float %9573, %9589
  %9591 = fsub fast float %9567, %9586
  %9592 = select i1 %9582, float %9591, float 0.000000e+00
  %9593 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9594 = extractvalue %dx.types.CBufRet.f32 %9593, 0
  %9595 = extractvalue %dx.types.CBufRet.f32 %9593, 1
  %9596 = extractvalue %dx.types.CBufRet.f32 %9593, 2
  %9597 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9598 = extractvalue %dx.types.CBufRet.f32 %9597, 0
  %9599 = extractvalue %dx.types.CBufRet.f32 %9597, 1
  %9600 = extractvalue %dx.types.CBufRet.f32 %9597, 2
  %9601 = extractvalue %dx.types.CBufRet.f32 %9597, 3
  %9602 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9603 = extractvalue %dx.types.CBufRet.f32 %9602, 3
  %9604 = call float @dx.op.binary.f32(i32 36, float %9590, float %9603)  ; FMin(a,b)
  %9605 = fmul fast float %9601, %9592
  %9606 = call float @dx.op.unary.f32(i32 7, float %9605)  ; Saturate(value)
  %9607 = fsub fast float %9598, %9594
  %9608 = fsub fast float %9599, %9595
  %9609 = fsub fast float %9600, %9596
  %9610 = fmul fast float %9606, %9607
  %9611 = fmul fast float %9606, %9608
  %9612 = fmul fast float %9606, %9609
  %9613 = fadd fast float %9610, %9594
  %9614 = fadd fast float %9611, %9595
  %9615 = fadd fast float %9612, %9596
  %9616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9617 = extractvalue %dx.types.CBufRet.f32 %9616, 0
  %9618 = extractvalue %dx.types.CBufRet.f32 %9616, 1
  %9619 = fadd fast float %9618, %9617
  %9620 = call float @dx.op.unary.f32(i32 7, float %9619)  ; Saturate(value)
  %9621 = extractvalue %dx.types.CBufRet.f32 %9616, 2
  %9622 = extractvalue %dx.types.CBufRet.f32 %9616, 3
  %9623 = fadd fast float %9622, %9621
  %9624 = call float @dx.op.unary.f32(i32 7, float %9623)  ; Saturate(value)
  %9625 = fmul fast float %9620, %9604
  %9626 = fmul fast float %9625, %9624
  br label %9868

; <label>:9627                                    ; preds = %9581
  br i1 %9582, label %9628, label %9649

; <label>:9628                                    ; preds = %9627
  %9629 = call float @dx.op.binary.f32(i32 36, float %9578, float %9568)  ; FMin(a,b)
  %9630 = fsub fast float %9578, %9629
  %9631 = fsub fast float %9630, %9567
  %9632 = call float @dx.op.unary.f32(i32 6, float %9631)  ; FAbs(value)
  %9633 = fadd fast float %9630, %9567
  %9634 = fmul fast float %9633, %9498
  %9635 = fadd fast float %9634, %9511
  %9636 = fmul fast float %9635, %9632
  %9637 = fsub fast float %9573, %9636
  br label %9649

; <label>:9638                                    ; preds = %9566
  br i1 %9580, label %9639, label %9649

; <label>:9639                                    ; preds = %9638
  %9640 = call float @dx.op.binary.f32(i32 35, float %9568, float %9578)  ; FMax(a,b)
  %9641 = icmp eq i32 %9517, 0
  %9642 = select i1 %9641, float %9578, float 0.000000e+00
  %9643 = fsub fast float -0.000000e+00, %9642
  %9644 = call float @dx.op.unary.f32(i32 6, float %9643)  ; FAbs(value)
  %9645 = fmul fast float %9642, %9498
  %9646 = fadd fast float %9645, %9511
  %9647 = fmul fast float %9644, %9646
  %9648 = fsub fast float %9573, %9647
  br label %9649

; <label>:9649                                    ; preds = %9639, %9638, %9628, %9627
  %9650 = phi float [ %9568, %9627 ], [ %9568, %9628 ], [ %9640, %9639 ], [ %9568, %9638 ]
  %9651 = phi float [ 0.000000e+00, %9627 ], [ %9632, %9628 ], [ %9644, %9639 ], [ 0.000000e+00, %9638 ]
  %9652 = phi float [ %9573, %9627 ], [ %9637, %9628 ], [ %9648, %9639 ], [ %9573, %9638 ]
  %9653 = phi float [ %9578, %9627 ], [ %9578, %9628 ], [ %9567, %9639 ], [ %9567, %9638 ]
  %9654 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 0
  store float -1.000000e+00, float* %9654, align 4, !tbaa !120, !noalias !134
  %9655 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 1
  store float -1.000000e+00, float* %9655, align 4, !tbaa !120, !noalias !134
  %9656 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 2
  store float -1.000000e+00, float* %9656, align 4, !tbaa !120, !noalias !134
  %9657 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 0
  store float -1.000000e+00, float* %9657, align 4, !tbaa !120, !noalias !134
  %9658 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 1
  store float -1.000000e+00, float* %9658, align 4, !tbaa !120, !noalias !134
  %9659 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 2
  store float -1.000000e+00, float* %9659, align 4, !tbaa !120, !noalias !134
  %9660 = icmp sgt i32 %9519, 0
  br i1 %9660, label %9661, label %9722

; <label>:9661                                    ; preds = %9649
  br label %9662

; <label>:9662                                    ; preds = %9711, %9661
  %9663 = phi i32 [ %9712, %9711 ], [ 0, %9661 ]
  %9664 = phi i32 [ %9713, %9711 ], [ 0, %9661 ]
  %9665 = add nuw i32 %9664, 171
  %9666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 %9665)  ; CBufferLoadLegacy(handle,regIndex)
  %9667 = extractvalue %dx.types.CBufRet.f32 %9666, 0
  %9668 = extractvalue %dx.types.CBufRet.f32 %9666, 1
  %9669 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9670 = extractvalue %dx.types.CBufRet.f32 %9669, 0
  %9671 = extractvalue %dx.types.CBufRet.f32 %9669, 1
  %9672 = fsub fast float %9667, %9670
  %9673 = fsub fast float %9668, %9671
  %9674 = extractvalue %dx.types.CBufRet.f32 %9666, 2
  %9675 = fsub fast float -0.000000e+00, %9672
  %9676 = fsub fast float -0.000000e+00, %9673
  %9677 = call float @dx.op.dot2.f32(i32 54, float %9496, float %9497, float %9675, float %9676)  ; Dot2(ax,ay,bx,by)
  %9678 = fmul fast float %9677, 2.000000e+00
  %9679 = call float @dx.op.dot2.f32(i32 54, float %9675, float %9676, float %9675, float %9676)  ; Dot2(ax,ay,bx,by)
  %9680 = fmul fast float %9674, %9674
  %9681 = fsub fast float %9679, %9680
  %9682 = fmul fast float %9678, %9678
  %9683 = fmul fast float %9539, %9681
  %9684 = fsub fast float %9682, %9683
  %9685 = fcmp fast ogt float %9684, 0.000000e+00
  br i1 %9685, label %9686, label %9701

; <label>:9686                                    ; preds = %9662
  %9687 = fcmp fast ogt float %9678, 0.000000e+00
  %9688 = call float @dx.op.unary.f32(i32 24, float %9684)  ; Sqrt(value)
  %9689 = fsub fast float -0.000000e+00, %9688
  %9690 = select i1 %9687, float %9688, float %9689
  %9691 = fadd fast float %9690, %9678
  %9692 = fmul float %9691, -5.000000e-01
  %9693 = fdiv fast float %9692, %9532
  %9694 = call float @dx.op.binary.f32(i32 35, float %9693, float 0.000000e+00)  ; FMax(a,b)
  %9695 = call float @dx.op.binary.f32(i32 36, float %9567, float %9694)  ; FMin(a,b)
  %9696 = fdiv fast float %9681, %9692
  %9697 = call float @dx.op.binary.f32(i32 35, float %9696, float 0.000000e+00)  ; FMax(a,b)
  %9698 = call float @dx.op.binary.f32(i32 36, float %9567, float %9697)  ; FMin(a,b)
  %9699 = call float @dx.op.binary.f32(i32 36, float %9695, float %9698)  ; FMin(a,b)
  %9700 = call float @dx.op.binary.f32(i32 35, float %9695, float %9698)  ; FMax(a,b)
  br label %9701

; <label>:9701                                    ; preds = %9686, %9662
  %9702 = phi float [ %9700, %9686 ], [ -1.000000e+00, %9662 ]
  %9703 = phi float [ %9699, %9686 ], [ -1.000000e+00, %9662 ]
  %9704 = phi i1 [ true, %9686 ], [ false, %9662 ]
  br i1 %9704, label %9705, label %9711

; <label>:9705                                    ; preds = %9701
  %9706 = call float @dx.op.binary.f32(i32 35, float %9650, float %9703)  ; FMax(a,b)
  %9707 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 %9664
  store float %9706, float* %9707, align 4, !tbaa !120, !noalias !134
  %9708 = call float @dx.op.binary.f32(i32 35, float %9650, float %9702)  ; FMax(a,b)
  %9709 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 %9664
  store float %9708, float* %9709, align 4, !tbaa !120, !noalias !134
  %9710 = add nsw i32 %9663, 1
  br label %9711

; <label>:9711                                    ; preds = %9705, %9701
  %9712 = phi i32 [ %9710, %9705 ], [ %9663, %9701 ]
  %9713 = add nuw nsw i32 %9664, 1
  %9714 = icmp eq i32 %9713, %9519
  br i1 %9714, label %9715, label %9662

; <label>:9715                                    ; preds = %9711
  %9716 = load float, float* %9656, align 4, !tbaa !120, !alias.scope !150, !noalias !153
  %9717 = load float, float* %9655, align 4, !tbaa !120, !alias.scope !156, !noalias !157
  %9718 = load float, float* %9654, align 4, !tbaa !120, !alias.scope !158, !noalias !159
  %9719 = load float, float* %9659, align 4, !tbaa !120, !alias.scope !160, !noalias !163
  %9720 = load float, float* %9658, align 4, !tbaa !120, !alias.scope !166, !noalias !167
  %9721 = load float, float* %9657, align 4, !tbaa !120, !alias.scope !168, !noalias !169
  br label %9722

; <label>:9722                                    ; preds = %9715, %9649
  %9723 = phi float [ -1.000000e+00, %9649 ], [ %9721, %9715 ]
  %9724 = phi float [ -1.000000e+00, %9649 ], [ %9720, %9715 ]
  %9725 = phi float [ -1.000000e+00, %9649 ], [ %9719, %9715 ]
  %9726 = phi float [ -1.000000e+00, %9649 ], [ %9718, %9715 ]
  %9727 = phi float [ -1.000000e+00, %9649 ], [ %9717, %9715 ]
  %9728 = phi float [ -1.000000e+00, %9649 ], [ %9716, %9715 ]
  %9729 = phi i32 [ 0, %9649 ], [ %9712, %9715 ]
  %9730 = call float @dx.op.binary.f32(i32 36, float %9727, float %9728)  ; FMin(a,b)
  %9731 = call float @dx.op.binary.f32(i32 36, float %9726, float %9730)  ; FMin(a,b)
  %9732 = call float @dx.op.binary.f32(i32 35, float %9726, float %9727)  ; FMax(a,b)
  %9733 = call float @dx.op.binary.f32(i32 36, float %9732, float %9728)  ; FMin(a,b)
  %9734 = call float @dx.op.binary.f32(i32 36, float %9726, float %9727)  ; FMin(a,b)
  %9735 = call float @dx.op.binary.f32(i32 35, float %9734, float %9733)  ; FMax(a,b)
  %9736 = call float @dx.op.binary.f32(i32 35, float %9727, float %9728)  ; FMax(a,b)
  %9737 = call float @dx.op.binary.f32(i32 35, float %9726, float %9736)  ; FMax(a,b)
  store float %9731, float* %9654, align 4, !tbaa !120, !alias.scope !158, !noalias !159
  store float %9735, float* %9655, align 4, !tbaa !120, !alias.scope !156, !noalias !157
  store float %9737, float* %9656, align 4, !tbaa !120, !alias.scope !150, !noalias !153
  %9738 = call float @dx.op.binary.f32(i32 36, float %9724, float %9725)  ; FMin(a,b)
  %9739 = call float @dx.op.binary.f32(i32 36, float %9723, float %9738)  ; FMin(a,b)
  %9740 = call float @dx.op.binary.f32(i32 35, float %9723, float %9724)  ; FMax(a,b)
  %9741 = call float @dx.op.binary.f32(i32 36, float %9740, float %9725)  ; FMin(a,b)
  %9742 = call float @dx.op.binary.f32(i32 36, float %9723, float %9724)  ; FMin(a,b)
  %9743 = call float @dx.op.binary.f32(i32 35, float %9742, float %9741)  ; FMax(a,b)
  %9744 = call float @dx.op.binary.f32(i32 35, float %9724, float %9725)  ; FMax(a,b)
  %9745 = call float @dx.op.binary.f32(i32 35, float %9723, float %9744)  ; FMax(a,b)
  store float %9739, float* %9657, align 4, !tbaa !120, !alias.scope !168, !noalias !169
  store float %9743, float* %9658, align 4, !tbaa !120, !alias.scope !166, !noalias !167
  store float %9745, float* %9659, align 4, !tbaa !120, !alias.scope !160, !noalias !163
  %9746 = sub nsw i32 3, %9729
  %9747 = icmp sgt i32 %9746, 2
  br i1 %9747, label %9748, label %9786

; <label>:9748                                    ; preds = %9722
  %9749 = icmp eq i32 %9517, 0
  %9750 = fsub fast float %9567, %9651
  %9751 = select i1 %9749, float %9750, float %9651
  %9752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9753 = extractvalue %dx.types.CBufRet.f32 %9752, 0
  %9754 = extractvalue %dx.types.CBufRet.f32 %9752, 1
  %9755 = extractvalue %dx.types.CBufRet.f32 %9752, 2
  %9756 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9757 = extractvalue %dx.types.CBufRet.f32 %9756, 0
  %9758 = extractvalue %dx.types.CBufRet.f32 %9756, 1
  %9759 = extractvalue %dx.types.CBufRet.f32 %9756, 2
  %9760 = extractvalue %dx.types.CBufRet.f32 %9756, 3
  %9761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9762 = extractvalue %dx.types.CBufRet.f32 %9761, 3
  %9763 = call float @dx.op.binary.f32(i32 36, float %9652, float %9762)  ; FMin(a,b)
  %9764 = fmul fast float %9760, %9751
  %9765 = call float @dx.op.unary.f32(i32 7, float %9764)  ; Saturate(value)
  %9766 = fsub fast float %9757, %9753
  %9767 = fsub fast float %9758, %9754
  %9768 = fsub fast float %9759, %9755
  %9769 = fmul fast float %9765, %9766
  %9770 = fmul fast float %9765, %9767
  %9771 = fmul fast float %9765, %9768
  %9772 = fadd fast float %9769, %9753
  %9773 = fadd fast float %9770, %9754
  %9774 = fadd fast float %9771, %9755
  %9775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9776 = extractvalue %dx.types.CBufRet.f32 %9775, 0
  %9777 = extractvalue %dx.types.CBufRet.f32 %9775, 1
  %9778 = fadd fast float %9777, %9776
  %9779 = call float @dx.op.unary.f32(i32 7, float %9778)  ; Saturate(value)
  %9780 = extractvalue %dx.types.CBufRet.f32 %9775, 2
  %9781 = extractvalue %dx.types.CBufRet.f32 %9775, 3
  %9782 = fadd fast float %9781, %9780
  %9783 = call float @dx.op.unary.f32(i32 7, float %9782)  ; Saturate(value)
  %9784 = fmul fast float %9779, %9763
  %9785 = fmul fast float %9784, %9783
  br label %9868

; <label>:9786                                    ; preds = %9722
  %9787 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 %9746
  %9788 = load float, float* %9787, align 4, !tbaa !120, !noalias !134
  %9789 = fcmp fast olt float %9788, %9653
  %9790 = icmp sgt i32 %9729, 0
  %9791 = and i1 %9790, %9789
  br i1 %9791, label %9792, label %9829

; <label>:9792                                    ; preds = %9786
  br label %9793

; <label>:9793                                    ; preds = %9822, %9792
  %9794 = phi float [ %9823, %9822 ], [ %9651, %9792 ]
  %9795 = phi float [ %9824, %9822 ], [ %9652, %9792 ]
  %9796 = phi float [ %9804, %9822 ], [ %9788, %9792 ]
  %9797 = phi i32 [ %9801, %9822 ], [ %9746, %9792 ]
  %9798 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 %9797
  %9799 = load float, float* %9798, align 4, !tbaa !120, !noalias !134
  %9800 = icmp slt i32 %9797, 2
  %9801 = add nsw i32 %9797, 1
  %9802 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 %9801
  %9803 = load float, float* %9802, align 4, !tbaa !120, !noalias !134
  %9804 = select i1 %9800, float %9803, float %9567
  %9805 = call float @dx.op.binary.f32(i32 36, float %9804, float %9799)  ; FMin(a,b)
  %9806 = call float @dx.op.binary.f32(i32 36, float %9653, float %9805)  ; FMin(a,b)
  %9807 = icmp eq i32 %9517, 0
  %9808 = fadd fast float %9806, %9796
  %9809 = fmul fast float %9808, %9498
  %9810 = fadd fast float %9809, %9511
  br i1 %9807, label %9816, label %9811

; <label>:9811                                    ; preds = %9793
  %9812 = fsub fast float %9806, %9796
  %9813 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9812)  ; FMax(a,b)
  %9814 = fmul fast float %9813, %9810
  %9815 = fadd fast float %9814, %9795
  br label %9822

; <label>:9816                                    ; preds = %9793
  %9817 = fsub fast float %9796, %9806
  %9818 = call float @dx.op.unary.f32(i32 6, float %9817)  ; FAbs(value)
  %9819 = fadd fast float %9818, %9794
  %9820 = fmul fast float %9818, %9810
  %9821 = fsub fast float %9795, %9820
  br label %9822

; <label>:9822                                    ; preds = %9816, %9811
  %9823 = phi float [ %9813, %9811 ], [ %9819, %9816 ]
  %9824 = phi float [ %9815, %9811 ], [ %9821, %9816 ]
  %9825 = fcmp fast olt float %9804, %9653
  %9826 = icmp slt i32 %9801, 3
  %9827 = and i1 %9826, %9825
  br i1 %9827, label %9793, label %9828

; <label>:9828                                    ; preds = %9822
  br label %9829

; <label>:9829                                    ; preds = %9828, %9786
  %9830 = phi float [ %9651, %9786 ], [ %9823, %9828 ]
  %9831 = phi float [ %9652, %9786 ], [ %9824, %9828 ]
  %9832 = fsub fast float %9567, %9830
  %9833 = select i1 %9569, float %9830, float %9832
  %9834 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9835 = extractvalue %dx.types.CBufRet.f32 %9834, 0
  %9836 = extractvalue %dx.types.CBufRet.f32 %9834, 1
  %9837 = extractvalue %dx.types.CBufRet.f32 %9834, 2
  %9838 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9839 = extractvalue %dx.types.CBufRet.f32 %9838, 0
  %9840 = extractvalue %dx.types.CBufRet.f32 %9838, 1
  %9841 = extractvalue %dx.types.CBufRet.f32 %9838, 2
  %9842 = extractvalue %dx.types.CBufRet.f32 %9838, 3
  %9843 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9844 = extractvalue %dx.types.CBufRet.f32 %9843, 3
  %9845 = call float @dx.op.binary.f32(i32 36, float %9831, float %9844)  ; FMin(a,b)
  %9846 = fmul fast float %9842, %9833
  %9847 = call float @dx.op.unary.f32(i32 7, float %9846)  ; Saturate(value)
  %9848 = fsub fast float %9839, %9835
  %9849 = fsub fast float %9840, %9836
  %9850 = fsub fast float %9841, %9837
  %9851 = fmul fast float %9847, %9848
  %9852 = fmul fast float %9847, %9849
  %9853 = fmul fast float %9847, %9850
  %9854 = fadd fast float %9851, %9835
  %9855 = fadd fast float %9852, %9836
  %9856 = fadd fast float %9853, %9837
  %9857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9858 = extractvalue %dx.types.CBufRet.f32 %9857, 0
  %9859 = extractvalue %dx.types.CBufRet.f32 %9857, 1
  %9860 = fadd fast float %9859, %9858
  %9861 = call float @dx.op.unary.f32(i32 7, float %9860)  ; Saturate(value)
  %9862 = extractvalue %dx.types.CBufRet.f32 %9857, 2
  %9863 = extractvalue %dx.types.CBufRet.f32 %9857, 3
  %9864 = fadd fast float %9863, %9862
  %9865 = call float @dx.op.unary.f32(i32 7, float %9864)  ; Saturate(value)
  %9866 = fmul fast float %9861, %9845
  %9867 = fmul fast float %9866, %9865
  br label %9868

; <label>:9868                                    ; preds = %9829, %9748, %9583, %9565, %9563
  %9869 = phi float [ %9592, %9583 ], [ %9751, %9748 ], [ %9833, %9829 ], [ 0.000000e+00, %9563 ], [ 0.000000e+00, %9565 ]
  %9870 = phi float [ %9626, %9583 ], [ %9785, %9748 ], [ %9867, %9829 ], [ 0.000000e+00, %9563 ], [ 0.000000e+00, %9565 ]
  %9871 = phi float [ %9613, %9583 ], [ %9772, %9748 ], [ %9854, %9829 ], [ 0.000000e+00, %9563 ], [ 0.000000e+00, %9565 ]
  %9872 = phi float [ %9614, %9583 ], [ %9773, %9748 ], [ %9855, %9829 ], [ 0.000000e+00, %9563 ], [ 0.000000e+00, %9565 ]
  %9873 = phi float [ %9615, %9583 ], [ %9774, %9748 ], [ %9856, %9829 ], [ 0.000000e+00, %9563 ], [ 0.000000e+00, %9565 ]
  %9874 = fmul fast float %9506, %9870
  %9875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9876 = extractvalue %dx.types.CBufRet.f32 %9875, 2
  %9877 = fsub fast float %9513, %9876
  %9878 = fcmp fast olt float %9874, -2.000000e+01
  %9879 = call float @dx.op.unary.f32(i32 21, float %9874)  ; Exp(value)
  %9880 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9881 = extractvalue %dx.types.CBufRet.f32 %9880, 2
  %9882 = extractvalue %dx.types.CBufRet.f32 %9880, 3
  %9883 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %9884 = extractvalue %dx.types.CBufRet.f32 %9883, 2
  %9885 = fmul fast float %9882, %9877
  %9886 = call float @dx.op.unary.f32(i32 7, float %9885)  ; Saturate(value)
  %9887 = fsub fast float 1.000000e+00, %9886
  %9888 = fmul fast float %9498, 5.000000e-01
  %9889 = fadd fast float %9888, 5.000000e-01
  %9890 = call float @dx.op.unary.f32(i32 7, float %9889)  ; Saturate(value)
  %9891 = fsub fast float 1.000000e+00, %9890
  %9892 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9887)  ; FMax(a,b)
  %9893 = fdiv fast float %9891, %9892
  %9894 = fsub fast float %9877, %9455
  %9895 = call float @dx.op.unary.f32(i32 6, float %9894)  ; FAbs(value)
  %9896 = fmul fast float %9895, %9881
  %9897 = call float @dx.op.unary.f32(i32 7, float %9893)  ; Saturate(value)
  %9898 = fsub fast float 1.000000e+00, %9896
  %9899 = fmul fast float %9898, %9897
  %9900 = fadd fast float %9899, %9896
  %9901 = fmul fast float %9884, %9877
  %9902 = call float @dx.op.unary.f32(i32 7, float %9901)  ; Saturate(value)
  %9903 = fsub fast float 1.000000e+00, %9900
  %9904 = fmul fast float %9903, %9902
  %9905 = fadd fast float %9904, %9900
  %9906 = call float @dx.op.unary.f32(i32 7, float %9905)  ; Saturate(value)
  %9907 = fadd fast float %9879, -1.000000e+00
  %9908 = select i1 %9878, float -1.000000e+00, float %9907
  %9909 = fmul fast float %9906, %9908
  %9910 = fadd fast float %9909, 1.000000e+00
  %9911 = fsub fast float -0.000000e+00, %9909
  %9912 = fmul fast float %9871, %9911
  %9913 = fmul fast float %9872, %9911
  %9914 = fmul fast float %9873, %9911
  br label %9915

; <label>:9915                                    ; preds = %9868, %9464
  %9916 = phi float [ %9869, %9868 ], [ 0.000000e+00, %9464 ]
  %9917 = phi float [ %9910, %9868 ], [ 1.000000e+00, %9464 ]
  %9918 = phi float [ %9912, %9868 ], [ 0.000000e+00, %9464 ]
  %9919 = phi float [ %9913, %9868 ], [ 0.000000e+00, %9464 ]
  %9920 = phi float [ %9914, %9868 ], [ 0.000000e+00, %9464 ]
  %9921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9922 = extractvalue %dx.types.CBufRet.f32 %9921, 1
  %9923 = fsub fast float 1.000000e+00, %9917
  %9924 = fmul fast float %9923, %9499
  %9925 = fmul fast float %9924, %9922
  %9926 = fsub fast float %9499, %9925
  br i1 %9492, label %9927, label %9956, !dx.controlflow.hints !170

; <label>:9927                                    ; preds = %9915
  %9928 = fmul fast float %9500, %9489
  %9929 = fadd fast float %9928, %9490
  %9930 = call float @dx.op.unary.f32(i32 7, float %9929)  ; Saturate(value)
  %9931 = fmul fast float %9471, %9926
  %9932 = fsub fast float -0.000000e+00, %9931
  %9933 = fmul fast float %9472, %9926
  %9934 = fsub fast float -0.000000e+00, %9933
  %9935 = call float @dx.op.unary.f32(i32 21, float %9932)  ; Exp(value)
  %9936 = call float @dx.op.unary.f32(i32 21, float %9934)  ; Exp(value)
  %9937 = call float @dx.op.binary.f32(i32 35, float %9479, float %9935)  ; FMax(a,b)
  %9938 = call float @dx.op.binary.f32(i32 35, float %9479, float %9936)  ; FMax(a,b)
  %9939 = fsub fast float %9938, %9937
  %9940 = fmul fast float %9939, %9930
  %9941 = fadd fast float %9940, %9937
  %9942 = call float @dx.op.unary.f32(i32 7, float %9941)  ; Saturate(value)
  %9943 = fsub fast float %9476, %9481
  %9944 = fsub fast float %9477, %9482
  %9945 = fsub fast float %9478, %9483
  %9946 = fmul fast float %9930, %9943
  %9947 = fmul fast float %9930, %9944
  %9948 = fmul fast float %9930, %9945
  %9949 = fadd fast float %9946, %9481
  %9950 = fadd fast float %9947, %9482
  %9951 = fadd fast float %9948, %9483
  %9952 = fsub fast float 1.000000e+00, %9942
  %9953 = fmul fast float %9952, %9949
  %9954 = fmul fast float %9952, %9950
  %9955 = fmul fast float %9952, %9951
  br label %10015

; <label>:9956                                    ; preds = %9915
  %9957 = fmul fast float %9926, %9488
  %9958 = call float @dx.op.unary.f32(i32 7, float %9957)  ; Saturate(value)
  %9959 = fsub fast float 2.000000e+00, %9958
  %9960 = fmul fast float %9958, 9.921875e-01
  %9961 = fmul fast float %9960, %9959
  %9962 = fadd fast float %9961, 3.906250e-03
  %9963 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %54, float %9962, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9964 = extractvalue %dx.types.ResRet.f32 %9963, 0
  %9965 = fsub fast float %9958, %9964
  %9966 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9965)  ; FMax(a,b)
  %9967 = fmul fast float %9474, %9455
  %9968 = call float @dx.op.unary.f32(i32 6, float %9967)  ; FAbs(value)
  %9969 = fcmp fast ogt float %9968, 0x3EB0C6F7A0000000
  br i1 %9969, label %9970, label %9976, !dx.controlflow.hints !171

; <label>:9970                                    ; preds = %9956
  %9971 = fmul fast float %9967, 0xBFF7154760000000
  %9972 = call float @dx.op.unary.f32(i32 21, float %9971)  ; Exp(value)
  %9973 = fsub fast float 1.000000e+00, %9972
  %9974 = fdiv fast float %9973, %9967
  %9975 = fmul fast float %9974, %9484
  br label %9976

; <label>:9976                                    ; preds = %9970, %9956
  %9977 = phi float [ %9975, %9970 ], [ %9484, %9956 ]
  %9978 = fadd fast float %9977, %9486
  %9979 = fmul fast float %9978, %9966
  %9980 = fmul fast float %9471, %9979
  %9981 = fsub fast float -0.000000e+00, %9980
  %9982 = fmul fast float %9472, %9979
  %9983 = fsub fast float -0.000000e+00, %9982
  %9984 = fmul fast float %9473, %9979
  %9985 = fsub fast float -0.000000e+00, %9984
  %9986 = call float @dx.op.unary.f32(i32 21, float %9981)  ; Exp(value)
  %9987 = call float @dx.op.unary.f32(i32 21, float %9983)  ; Exp(value)
  %9988 = call float @dx.op.unary.f32(i32 21, float %9985)  ; Exp(value)
  %9989 = fmul fast float %9500, %9500
  %9990 = fadd fast float %9989, 1.000000e+00
  %9991 = fmul fast float %9990, 0x3FAE8EC8A0000000
  %9992 = fmul fast float %9991, %9481
  %9993 = fmul fast float %9991, %9482
  %9994 = fmul fast float %9991, %9483
  %9995 = fmul fast float %9500, %9479
  %9996 = fsub fast float 1.000000e+00, %9995
  %9997 = fmul fast float %9479, %9479
  %9998 = fsub fast float 1.000000e+00, %9997
  %9999 = fmul fast float %9998, 0x3FB45F3060000000
  %10000 = fmul fast float %9996, %9996
  %10001 = fdiv fast float 1.000000e+00, %10000
  %10002 = fmul fast float %9999, %10001
  %10003 = fmul fast float %10002, %9476
  %10004 = fmul fast float %10002, %9477
  %10005 = fmul fast float %10002, %9478
  %10006 = fadd fast float %10003, %9992
  %10007 = fadd fast float %10004, %9993
  %10008 = fadd fast float %10005, %9994
  %10009 = fsub fast float 1.000000e+00, %9986
  %10010 = fsub fast float 1.000000e+00, %9987
  %10011 = fsub fast float 1.000000e+00, %9988
  %10012 = fmul fast float %10006, %10009
  %10013 = fmul fast float %10007, %10010
  %10014 = fmul fast float %10008, %10011
  br label %10015

; <label>:10015                                   ; preds = %9976, %9927
  %10016 = phi float [ %9953, %9927 ], [ %10012, %9976 ]
  %10017 = phi float [ %9954, %9927 ], [ %10013, %9976 ]
  %10018 = phi float [ %9955, %9927 ], [ %10014, %9976 ]
  %10019 = phi float [ %9942, %9927 ], [ %9986, %9976 ]
  %10020 = phi float [ %9942, %9927 ], [ %9987, %9976 ]
  %10021 = phi float [ %9942, %9927 ], [ %9988, %9976 ]
  br i1 %9508, label %10022, label %10220, !dx.controlflow.hints !172

; <label>:10022                                   ; preds = %10015
  %10023 = extractvalue %dx.types.CBufRet.f32 %9921, 0
  %10024 = fmul fast float %10023, %9923
  %10025 = fsub fast float %9918, %10016
  %10026 = fsub fast float %9919, %10017
  %10027 = fsub fast float %9920, %10018
  %10028 = fmul fast float %10024, %10025
  %10029 = fmul fast float %10024, %10026
  %10030 = fmul fast float %10024, %10027
  %10031 = fadd fast float %10028, %10016
  %10032 = fadd fast float %10029, %10017
  %10033 = fadd fast float %10030, %10018
  %10034 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %10019)  ; FMax(a,b)
  %10035 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %10020)  ; FMax(a,b)
  %10036 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %10021)  ; FMax(a,b)
  %10037 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9917)  ; FMax(a,b)
  %10038 = call float @dx.op.binary.f32(i32 35, float %9916, float %9926)  ; FMax(a,b)
  %10039 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %10038)  ; FMax(a,b)
  %10040 = fdiv fast float %9916, %10039
  %10041 = call float @dx.op.unary.f32(i32 7, float %10040)  ; Saturate(value)
  %10042 = fdiv fast float %9926, %10039
  %10043 = call float @dx.op.unary.f32(i32 7, float %10042)  ; Saturate(value)
  %10044 = fcmp fast une float %10037, 1.000000e+00
  br i1 %10044, label %10045, label %10058, !dx.controlflow.hints !173

; <label>:10045                                   ; preds = %10022
  %10046 = call float @dx.op.unary.f32(i32 23, float %10037)  ; Log(value)
  %10047 = fmul fast float %10046, 0x3FE62E4300000000
  %10048 = fmul fast float %9918, %10047
  %10049 = fsub fast float -0.000000e+00, %10048
  %10050 = fmul fast float %9919, %10047
  %10051 = fsub fast float -0.000000e+00, %10050
  %10052 = fmul fast float %9920, %10047
  %10053 = fsub fast float -0.000000e+00, %10052
  %10054 = fsub fast float 1.000000e+00, %10037
  %10055 = fdiv fast float %10049, %10054
  %10056 = fdiv fast float %10051, %10054
  %10057 = fdiv fast float %10053, %10054
  br label %10058

; <label>:10058                                   ; preds = %10045, %10022
  %10059 = phi float [ %10055, %10045 ], [ %9918, %10022 ]
  %10060 = phi float [ %10056, %10045 ], [ %9919, %10022 ]
  %10061 = phi float [ %10057, %10045 ], [ %9920, %10022 ]
  %10062 = phi float [ %10047, %10045 ], [ 0.000000e+00, %10022 ]
  %10063 = fcmp fast une float %10034, 1.000000e+00
  br i1 %10063, label %10064, label %10071, !dx.controlflow.hints !174

; <label>:10064                                   ; preds = %10058
  %10065 = call float @dx.op.unary.f32(i32 23, float %10034)  ; Log(value)
  %10066 = fmul fast float %10065, 0x3FE62E4300000000
  %10067 = fmul fast float %10031, %10066
  %10068 = fsub fast float -0.000000e+00, %10067
  %10069 = fsub fast float 1.000000e+00, %10034
  %10070 = fdiv fast float %10068, %10069
  br label %10071

; <label>:10071                                   ; preds = %10064, %10058
  %10072 = phi float [ %10070, %10064 ], [ %10031, %10058 ]
  %10073 = phi float [ %10066, %10064 ], [ 0.000000e+00, %10058 ]
  %10074 = fcmp fast une float %10035, 1.000000e+00
  br i1 %10074, label %10075, label %10082, !dx.controlflow.hints !174

; <label>:10075                                   ; preds = %10071
  %10076 = call float @dx.op.unary.f32(i32 23, float %10035)  ; Log(value)
  %10077 = fmul fast float %10076, 0x3FE62E4300000000
  %10078 = fmul fast float %10032, %10077
  %10079 = fsub fast float -0.000000e+00, %10078
  %10080 = fsub fast float 1.000000e+00, %10035
  %10081 = fdiv fast float %10079, %10080
  br label %10082

; <label>:10082                                   ; preds = %10075, %10071
  %10083 = phi float [ %10081, %10075 ], [ %10032, %10071 ]
  %10084 = phi float [ %10077, %10075 ], [ 0.000000e+00, %10071 ]
  %10085 = fcmp fast une float %10036, 1.000000e+00
  br i1 %10085, label %10086, label %10093, !dx.controlflow.hints !174

; <label>:10086                                   ; preds = %10082
  %10087 = call float @dx.op.unary.f32(i32 23, float %10036)  ; Log(value)
  %10088 = fmul fast float %10087, 0x3FE62E4300000000
  %10089 = fmul fast float %10033, %10088
  %10090 = fsub fast float -0.000000e+00, %10089
  %10091 = fsub fast float 1.000000e+00, %10036
  %10092 = fdiv fast float %10090, %10091
  br label %10093

; <label>:10093                                   ; preds = %10086, %10082
  %10094 = phi float [ %10092, %10086 ], [ %10033, %10082 ]
  %10095 = phi float [ %10088, %10086 ], [ 0.000000e+00, %10082 ]
  %10096 = fmul fast float %10059, %10043
  %10097 = fmul fast float %10060, %10043
  %10098 = fmul fast float %10061, %10043
  %10099 = fmul fast float %10062, %10043
  %10100 = fmul fast float %10072, %10041
  %10101 = fmul fast float %10083, %10041
  %10102 = fmul fast float %10094, %10041
  %10103 = fmul fast float %10073, %10041
  %10104 = fmul fast float %10084, %10041
  %10105 = fmul fast float %10095, %10041
  %10106 = fadd fast float %10100, %10096
  %10107 = fadd fast float %10101, %10097
  %10108 = fadd fast float %10102, %10098
  %10109 = fadd fast float %10103, %10099
  %10110 = fadd fast float %10104, %10099
  %10111 = fadd fast float %10105, %10099
  %10112 = fcmp fast une float %10109, 0.000000e+00
  br i1 %10112, label %10113, label %10120, !dx.controlflow.hints !175

; <label>:10113                                   ; preds = %10093
  %10114 = fmul fast float %10109, 0x3FF7154760000000
  %10115 = call float @dx.op.unary.f32(i32 21, float %10114)  ; Exp(value)
  %10116 = fsub fast float 1.000000e+00, %10115
  %10117 = fmul fast float %10106, %10116
  %10118 = fsub fast float -0.000000e+00, %10117
  %10119 = fdiv fast float %10118, %10109
  br label %10120

; <label>:10120                                   ; preds = %10113, %10093
  %10121 = phi float [ %10115, %10113 ], [ 1.000000e+00, %10093 ]
  %10122 = phi float [ %10119, %10113 ], [ %10106, %10093 ]
  %10123 = fcmp fast une float %10110, 0.000000e+00
  br i1 %10123, label %10124, label %10131, !dx.controlflow.hints !175

; <label>:10124                                   ; preds = %10120
  %10125 = fmul fast float %10110, 0x3FF7154760000000
  %10126 = call float @dx.op.unary.f32(i32 21, float %10125)  ; Exp(value)
  %10127 = fsub fast float 1.000000e+00, %10126
  %10128 = fmul fast float %10107, %10127
  %10129 = fsub fast float -0.000000e+00, %10128
  %10130 = fdiv fast float %10129, %10110
  br label %10131

; <label>:10131                                   ; preds = %10124, %10120
  %10132 = phi float [ %10126, %10124 ], [ 1.000000e+00, %10120 ]
  %10133 = phi float [ %10130, %10124 ], [ %10107, %10120 ]
  %10134 = fcmp fast une float %10111, 0.000000e+00
  br i1 %10134, label %10135, label %10142, !dx.controlflow.hints !175

; <label>:10135                                   ; preds = %10131
  %10136 = fmul fast float %10111, 0x3FF7154760000000
  %10137 = call float @dx.op.unary.f32(i32 21, float %10136)  ; Exp(value)
  %10138 = fsub fast float 1.000000e+00, %10137
  %10139 = fmul fast float %10108, %10138
  %10140 = fsub fast float -0.000000e+00, %10139
  %10141 = fdiv fast float %10140, %10111
  br label %10142

; <label>:10142                                   ; preds = %10135, %10131
  %10143 = phi float [ %10137, %10135 ], [ 1.000000e+00, %10131 ]
  %10144 = phi float [ %10141, %10135 ], [ %10108, %10131 ]
  %10145 = fcmp fast ogt float %10041, %10043
  br i1 %10145, label %10146, label %10166

; <label>:10146                                   ; preds = %10142
  %10147 = fsub fast float 1.000000e+00, %10043
  %10148 = fmul fast float %10059, %10147
  %10149 = fmul fast float %10060, %10147
  %10150 = fmul fast float %10061, %10147
  %10151 = fmul fast float %10062, %10147
  %10152 = fcmp fast une float %10151, 0.000000e+00
  br i1 %10152, label %10153, label %10204, !dx.controlflow.hints !176

; <label>:10153                                   ; preds = %10146
  %10154 = fmul fast float %10151, 0x3FF7154760000000
  %10155 = call float @dx.op.unary.f32(i32 21, float %10154)  ; Exp(value)
  %10156 = fsub fast float 1.000000e+00, %10155
  %10157 = fmul fast float %10148, %10156
  %10158 = fsub fast float -0.000000e+00, %10157
  %10159 = fmul fast float %10149, %10156
  %10160 = fsub fast float -0.000000e+00, %10159
  %10161 = fmul fast float %10150, %10156
  %10162 = fsub fast float -0.000000e+00, %10161
  %10163 = fdiv fast float %10158, %10151
  %10164 = fdiv fast float %10160, %10151
  %10165 = fdiv fast float %10162, %10151
  br label %10204

; <label>:10166                                   ; preds = %10142
  %10167 = fsub fast float 1.000000e+00, %10041
  %10168 = fmul fast float %10072, %10167
  %10169 = fmul fast float %10083, %10167
  %10170 = fmul fast float %10094, %10167
  %10171 = fmul fast float %10073, %10167
  %10172 = fmul fast float %10084, %10167
  %10173 = fmul fast float %10095, %10167
  %10174 = fcmp fast une float %10171, 0.000000e+00
  br i1 %10174, label %10175, label %10182, !dx.controlflow.hints !175

; <label>:10175                                   ; preds = %10166
  %10176 = fmul fast float %10171, 0x3FF7154760000000
  %10177 = call float @dx.op.unary.f32(i32 21, float %10176)  ; Exp(value)
  %10178 = fsub fast float 1.000000e+00, %10177
  %10179 = fmul fast float %10168, %10178
  %10180 = fsub fast float -0.000000e+00, %10179
  %10181 = fdiv fast float %10180, %10171
  br label %10182

; <label>:10182                                   ; preds = %10175, %10166
  %10183 = phi float [ %10181, %10175 ], [ %10168, %10166 ]
  %10184 = phi float [ %10177, %10175 ], [ 1.000000e+00, %10166 ]
  %10185 = fcmp fast une float %10172, 0.000000e+00
  br i1 %10185, label %10186, label %10193, !dx.controlflow.hints !175

; <label>:10186                                   ; preds = %10182
  %10187 = fmul fast float %10172, 0x3FF7154760000000
  %10188 = call float @dx.op.unary.f32(i32 21, float %10187)  ; Exp(value)
  %10189 = fsub fast float 1.000000e+00, %10188
  %10190 = fmul fast float %10169, %10189
  %10191 = fsub fast float -0.000000e+00, %10190
  %10192 = fdiv fast float %10191, %10172
  br label %10193

; <label>:10193                                   ; preds = %10186, %10182
  %10194 = phi float [ %10192, %10186 ], [ %10169, %10182 ]
  %10195 = phi float [ %10188, %10186 ], [ 1.000000e+00, %10182 ]
  %10196 = fcmp fast une float %10173, 0.000000e+00
  br i1 %10196, label %10197, label %10204, !dx.controlflow.hints !175

; <label>:10197                                   ; preds = %10193
  %10198 = fmul fast float %10173, 0x3FF7154760000000
  %10199 = call float @dx.op.unary.f32(i32 21, float %10198)  ; Exp(value)
  %10200 = fsub fast float 1.000000e+00, %10199
  %10201 = fmul fast float %10170, %10200
  %10202 = fsub fast float -0.000000e+00, %10201
  %10203 = fdiv fast float %10202, %10173
  br label %10204

; <label>:10204                                   ; preds = %10197, %10193, %10153, %10146
  %10205 = phi float [ %10203, %10197 ], [ %10165, %10153 ], [ %10150, %10146 ], [ %10170, %10193 ]
  %10206 = phi float [ %10194, %10197 ], [ %10164, %10153 ], [ %10149, %10146 ], [ %10194, %10193 ]
  %10207 = phi float [ %10183, %10197 ], [ %10163, %10153 ], [ %10148, %10146 ], [ %10183, %10193 ]
  %10208 = phi float [ %10199, %10197 ], [ %10155, %10153 ], [ 1.000000e+00, %10146 ], [ 1.000000e+00, %10193 ]
  %10209 = phi float [ %10195, %10197 ], [ %10155, %10153 ], [ 1.000000e+00, %10146 ], [ %10195, %10193 ]
  %10210 = phi float [ %10184, %10197 ], [ %10155, %10153 ], [ 1.000000e+00, %10146 ], [ %10184, %10193 ]
  %10211 = fmul fast float %10210, %10122
  %10212 = fmul fast float %10209, %10133
  %10213 = fmul fast float %10208, %10144
  %10214 = fadd fast float %10211, %10207
  %10215 = fadd fast float %10212, %10206
  %10216 = fadd fast float %10213, %10205
  %10217 = fmul fast float %10210, %10121
  %10218 = fmul fast float %10209, %10132
  %10219 = fmul fast float %10208, %10143
  br label %10220

; <label>:10220                                   ; preds = %10204, %10015
  %10221 = phi float [ %10219, %10204 ], [ %10021, %10015 ]
  %10222 = phi float [ %10218, %10204 ], [ %10020, %10015 ]
  %10223 = phi float [ %10217, %10204 ], [ %10019, %10015 ]
  %10224 = phi float [ %10216, %10204 ], [ %10018, %10015 ]
  %10225 = phi float [ %10215, %10204 ], [ %10017, %10015 ]
  %10226 = phi float [ %10214, %10204 ], [ %10016, %10015 ]
  %10227 = fmul fast float %10226, %9172
  %10228 = fmul fast float %10225, %9172
  %10229 = fmul fast float %10224, %9172
  %10230 = fmul fast float %10223, %9463
  %10231 = call float @dx.op.dot3.f32(i32 55, float %10223, float %10222, float %10221, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10232 = call float @dx.op.dot3.f32(i32 55, float %10227, float %10228, float %10229, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10233 = select i1 %226, float %10231, float %10223
  %10234 = select i1 %226, float %10231, float %10222
  %10235 = select i1 %226, float 1.000000e+00, float %10221
  %10236 = select i1 %226, float %10232, float %10227
  %10237 = select i1 %226, float 0.000000e+00, float %10228
  %10238 = select i1 %226, float 0.000000e+00, float %10229
  %10239 = fmul fast float %10233, %9457
  %10240 = fmul fast float %10234, %9458
  %10241 = fmul fast float %10235, %9459
  %10242 = fadd fast float %10239, %10236
  %10243 = fadd fast float %10240, %10237
  %10244 = fadd fast float %10238, %10241
  %10245 = fmul fast float %10233, %9460
  %10246 = fmul fast float %10234, %9461
  %10247 = fmul fast float %10235, %9462
  %10248 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %10249 = extractvalue %dx.types.CBufRet.i32 %10248, 0
  %10250 = icmp eq i32 %10249, 0
  br i1 %10250, label %10618, label %10251, !dx.controlflow.hints !177

; <label>:10251                                   ; preds = %10220
  %10252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %10253 = extractvalue %dx.types.CBufRet.f32 %10252, 2
  %10254 = extractvalue %dx.types.CBufRet.f32 %10252, 3
  %10255 = fmul fast float %10253, %109
  %10256 = fmul fast float %10254, %110
  %10257 = fmul fast float %10255, 2.000000e+00
  %10258 = fmul fast float %10256, 2.000000e+00
  %10259 = fsub fast float 1.000000e+00, %10257
  %10260 = fsub fast float 1.000000e+00, %10258
  %10261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %10262 = extractvalue %dx.types.CBufRet.f32 %10261, 0
  %10263 = extractvalue %dx.types.CBufRet.f32 %10261, 1
  %10264 = extractvalue %dx.types.CBufRet.f32 %10261, 2
  %10265 = fmul fast float %10259, %10262
  %10266 = fmul fast float %10259, %10263
  %10267 = fmul fast float %10259, %10264
  %10268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %10269 = extractvalue %dx.types.CBufRet.f32 %10268, 0
  %10270 = extractvalue %dx.types.CBufRet.f32 %10268, 1
  %10271 = extractvalue %dx.types.CBufRet.f32 %10268, 2
  %10272 = fmul fast float %10260, %10269
  %10273 = fmul fast float %10260, %10270
  %10274 = fmul fast float %10260, %10271
  %10275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %10276 = extractvalue %dx.types.CBufRet.f32 %10275, 0
  %10277 = extractvalue %dx.types.CBufRet.f32 %10275, 1
  %10278 = extractvalue %dx.types.CBufRet.f32 %10275, 2
  %10279 = fadd fast float %10272, %10276
  %10280 = fadd fast float %10279, %10265
  %10281 = fadd fast float %10273, %10277
  %10282 = fadd fast float %10281, %10266
  %10283 = fadd fast float %10274, %10278
  %10284 = fadd fast float %10283, %10267
  %10285 = fmul fast float %10280, %9456
  %10286 = fmul fast float %10282, %9456
  %10287 = fmul fast float %10284, %9456
  %10288 = fmul fast float %10285, %10285
  %10289 = fmul fast float %10286, %10286
  %10290 = fadd fast float %10288, %10289
  %10291 = fmul fast float %10287, %10287
  %10292 = fadd fast float %10290, %10291
  %10293 = call float @dx.op.unary.f32(i32 24, float %10292)  ; Sqrt(value)
  %10294 = extractvalue %dx.types.CBufRet.f32 %9183, 0
  %10295 = fsub fast float %10293, %10294
  %10296 = extractvalue %dx.types.CBufRet.f32 %9183, 2
  %10297 = fmul fast float %10295, %10296
  %10298 = call float @dx.op.unary.f32(i32 7, float %10297)  ; Saturate(value)
  %10299 = fadd fast float %10298, -5.000000e-01
  %10300 = fmul fast float %10299, 2.000000e+00
  %10301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %10302 = extractvalue %dx.types.CBufRet.f32 %10301, 2
  %10303 = call float @dx.op.binary.f32(i32 36, float %10302, float %10300)  ; FMin(a,b)
  %10304 = fsub fast float -0.000000e+00, %10302
  %10305 = fcmp fast ogt float %10303, %10304
  br i1 %10305, label %10306, label %10618, !dx.controlflow.hints !178

; <label>:10306                                   ; preds = %10251
  %10307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %10308 = extractvalue %dx.types.CBufRet.f32 %10307, 3
  %10309 = fcmp fast ogt float %10308, 0.000000e+00
  br i1 %10309, label %10310, label %10385, !dx.controlflow.hints !179

; <label>:10310                                   ; preds = %10306
  %10311 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %36, i32 0)  ; GetDimensions(handle,mipLevel)
  %10312 = extractvalue %dx.types.Dimensions %10311, 0
  %10313 = sitofp i32 %10312 to float
  %10314 = extractvalue %dx.types.Dimensions %10311, 1
  %10315 = sitofp i32 %10314 to float
  %10316 = fmul fast float %10255, %10313
  %10317 = fmul fast float %10256, %10315
  %10318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %10319 = extractvalue %dx.types.CBufRet.f32 %10318, 1
  %10320 = fsub fast float -0.000000e+00, %10319
  %10321 = fptoui float %10320 to i32
  %10322 = fptoui float %10316 to i32
  %10323 = fptoui float %10317 to i32
  %10324 = and i32 %10321, 31
  %10325 = lshr i32 %10322, %10324
  %10326 = lshr i32 %10323, %10324
  %10327 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 %10321, i32 %10325, i32 %10326, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %10328 = extractvalue %dx.types.ResRet.f32 %10327, 0
  %10329 = fcmp fast olt float %10328, -1.000000e+00
  %10330 = fcmp fast ogt float %10328, -1.000000e+00
  %10331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %10332 = extractvalue %dx.types.CBufRet.f32 %10331, 1
  %10333 = select i1 %10330, float %10332, float 1.000000e+00
  %10334 = fadd fast float %10328, 1.000000e+00
  %10335 = fmul fast float %10333, %10334
  %10336 = call float @dx.op.unary.f32(i32 6, float %10335)  ; FAbs(value)
  %10337 = extractvalue %dx.types.CBufRet.f32 %10331, 3
  %10338 = fcmp fast oge float %10336, %10337
  %10339 = select i1 %10338, float 0x4197782600000000, float %10336
  %10340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %10341 = extractvalue %dx.types.CBufRet.f32 %10340, 0
  %10342 = extractvalue %dx.types.CBufRet.f32 %10340, 1
  %10343 = extractvalue %dx.types.CBufRet.f32 %10340, 2
  %10344 = select i1 %10329, float %10341, float %10262
  %10345 = select i1 %10329, float %10342, float %10263
  %10346 = select i1 %10329, float %10343, float %10264
  %10347 = fmul fast float %10344, %10259
  %10348 = fmul fast float %10345, %10259
  %10349 = fmul fast float %10346, %10259
  %10350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %10351 = extractvalue %dx.types.CBufRet.f32 %10350, 0
  %10352 = extractvalue %dx.types.CBufRet.f32 %10350, 1
  %10353 = extractvalue %dx.types.CBufRet.f32 %10350, 2
  %10354 = select i1 %10329, float %10351, float %10269
  %10355 = select i1 %10329, float %10352, float %10270
  %10356 = select i1 %10329, float %10353, float %10271
  %10357 = fmul fast float %10354, %10260
  %10358 = fmul fast float %10355, %10260
  %10359 = fmul fast float %10356, %10260
  %10360 = fadd fast float %10357, %10347
  %10361 = fadd fast float %10358, %10348
  %10362 = fadd fast float %10359, %10349
  %10363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %10364 = extractvalue %dx.types.CBufRet.f32 %10363, 0
  %10365 = extractvalue %dx.types.CBufRet.f32 %10363, 1
  %10366 = extractvalue %dx.types.CBufRet.f32 %10363, 2
  %10367 = select i1 %10329, float %10364, float %10276
  %10368 = select i1 %10329, float %10365, float %10277
  %10369 = select i1 %10329, float %10366, float %10278
  %10370 = fadd fast float %10360, %10367
  %10371 = fadd fast float %10361, %10368
  %10372 = fadd fast float %10362, %10369
  %10373 = fmul fast float %10370, %10339
  %10374 = fmul fast float %10371, %10339
  %10375 = fmul fast float %10372, %10339
  %10376 = fmul fast float %10373, %10373
  %10377 = fmul fast float %10374, %10374
  %10378 = fadd fast float %10376, %10377
  %10379 = fmul fast float %10375, %10375
  %10380 = fadd fast float %10378, %10379
  %10381 = call float @dx.op.unary.f32(i32 24, float %10380)  ; Sqrt(value)
  %10382 = fsub fast float %10381, %10294
  %10383 = fmul fast float %10382, %10296
  %10384 = call float @dx.op.unary.f32(i32 7, float %10383)  ; Saturate(value)
  br label %10385

; <label>:10385                                   ; preds = %10310, %10306
  %10386 = phi float [ %10384, %10310 ], [ 1.000000e+00, %10306 ]
  %10387 = fmul fast float %10303, 5.000000e-01
  %10388 = fadd fast float %10387, 5.000000e-01
  %10389 = call float @dx.op.unary.f32(i32 22, float %10388)  ; Frc(value)
  %10390 = call float @dx.op.unary.f32(i32 27, float %10389)  ; Round_ni(value)
  %10391 = call float @dx.op.unary.f32(i32 22, float %10389)  ; Frc(value)
  %10392 = fmul fast float %10391, 2.000000e+00
  %10393 = fadd fast float %10392, -1.000000e+00
  %10394 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %54, float %10255, float %10256, float %10390, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10395 = extractvalue %dx.types.ResRet.f32 %10394, 0
  %10396 = extractvalue %dx.types.ResRet.f32 %10394, 1
  %10397 = extractvalue %dx.types.ResRet.f32 %10394, 2
  %10398 = extractvalue %dx.types.ResRet.f32 %10394, 3
  %10399 = fadd fast float %10395, -5.000000e-01
  %10400 = fadd fast float %10397, -5.000000e-01
  %10401 = fmul fast float %10399, 0xBFD5555560000000
  %10402 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %10400, float %10401)  ; FMad(a,b,c)
  %10403 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %10396, float 0.000000e+00)  ; FMad(a,b,c)
  %10404 = fadd fast float %10403, %10398
  %10405 = fmul fast float %10399, -7.500000e-01
  %10406 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %10400, float %10405)  ; FMad(a,b,c)
  %10407 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %10396, float 0.000000e+00)  ; FMad(a,b,c)
  %10408 = fadd fast float %10407, %10398
  %10409 = call float @dx.op.binary.f32(i32 35, float %10402, float -1.000000e+00)  ; FMax(a,b)
  %10410 = call float @dx.op.binary.f32(i32 35, float %10404, float -1.000000e+00)  ; FMax(a,b)
  %10411 = call float @dx.op.binary.f32(i32 35, float %10406, float -1.000000e+00)  ; FMax(a,b)
  %10412 = call float @dx.op.binary.f32(i32 35, float %10408, float -1.000000e+00)  ; FMax(a,b)
  %10413 = call float @dx.op.binary.f32(i32 36, float %10409, float 1.000000e+00)  ; FMin(a,b)
  %10414 = call float @dx.op.binary.f32(i32 36, float %10410, float 1.000000e+00)  ; FMin(a,b)
  %10415 = call float @dx.op.binary.f32(i32 36, float %10411, float 1.000000e+00)  ; FMin(a,b)
  %10416 = call float @dx.op.binary.f32(i32 36, float %10412, float 1.000000e+00)  ; FMin(a,b)
  %10417 = fcmp fast olt float %10413, 0x3FEFFF8020000000
  br i1 %10417, label %10418, label %10533, !dx.controlflow.hints !180

; <label>:10418                                   ; preds = %10385
  %10419 = extractvalue %dx.types.CBufRet.f32 %10301, 3
  %10420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %10421 = extractvalue %dx.types.CBufRet.f32 %10420, 0
  %10422 = extractvalue %dx.types.CBufRet.f32 %10420, 1
  %10423 = extractvalue %dx.types.CBufRet.f32 %10420, 2
  %10424 = extractvalue %dx.types.CBufRet.f32 %10420, 3
  %10425 = fsub fast float %10421, %10413
  %10426 = fsub fast float %10422, %10414
  %10427 = fsub fast float %10423, %10415
  %10428 = fsub fast float %10424, %10416
  %10429 = fmul fast float %10425, %10419
  %10430 = fmul fast float %10426, %10419
  %10431 = fmul fast float %10427, %10419
  %10432 = fmul fast float %10428, %10419
  %10433 = fadd fast float %10429, %10413
  %10434 = fadd fast float %10430, %10414
  %10435 = fsub fast float -0.000000e+00, %10434
  %10436 = fadd fast float %10431, %10415
  %10437 = fadd fast float %10432, %10416
  %10438 = fmul fast float %10433, %10433
  %10439 = fsub fast float %10434, %10438
  %10440 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %10439)  ; FMax(a,b)
  %10441 = fdiv fast float 1.000000e+00, %10440
  %10442 = fmul fast float %10434, %10433
  %10443 = fsub fast float %10436, %10442
  %10444 = fsub fast float %10393, %10433
  %10445 = fmul fast float %10393, %10393
  %10446 = fsub fast float %10445, %10434
  %10447 = fmul fast float %10444, %10441
  %10448 = fmul fast float %10447, %10443
  %10449 = fsub fast float %10446, %10448
  %10450 = fmul fast float %10434, %10434
  %10451 = fsub fast float %10437, %10450
  %10452 = fmul fast float %10443, %10443
  %10453 = fmul fast float %10452, %10441
  %10454 = fsub fast float %10451, %10453
  %10455 = fdiv fast float %10449, %10454
  %10456 = fmul fast float %10443, %10455
  %10457 = fsub fast float %10444, %10456
  %10458 = fmul fast float %10457, %10441
  %10459 = fmul fast float %10458, %10433
  %10460 = fsub fast float 1.000000e+00, %10459
  %10461 = fmul fast float %10434, %10455
  %10462 = fsub fast float %10460, %10461
  %10463 = fmul fast float %10458, %10458
  %10464 = fmul fast float %10455, 4.000000e+00
  %10465 = fmul fast float %10464, %10462
  %10466 = fsub fast float %10463, %10465
  %10467 = call float @dx.op.unary.f32(i32 24, float %10466)  ; Sqrt(value)
  %10468 = fcmp fast oge float %10458, 0.000000e+00
  %10469 = fsub fast float -0.000000e+00, %10467
  %10470 = select i1 %10468, float %10469, float %10467
  %10471 = fsub fast float %10470, %10458
  %10472 = fdiv fast float %10471, %10455
  %10473 = fdiv fast float %10462, %10471
  %10474 = fmul fast float %10472, 5.000000e-01
  %10475 = fmul fast float %10473, 2.000000e+00
  %10476 = select i1 %10468, float %10474, float %10475
  %10477 = select i1 %10468, float %10475, float %10474
  %10478 = call float @dx.op.binary.f32(i32 35, float %10476, float %10477)  ; FMax(a,b)
  %10479 = call float @dx.op.binary.f32(i32 36, float %10476, float %10477)  ; FMin(a,b)
  %10480 = fcmp fast ogt float %10393, %10479
  br i1 %10480, label %10481, label %10491

; <label>:10481                                   ; preds = %10418
  %10482 = fsub fast float %10393, %10479
  %10483 = fsub fast float %10478, %10479
  %10484 = fmul fast float %10482, %10483
  %10485 = fmul fast float %10478, %10393
  %10486 = fadd fast float %10478, %10393
  %10487 = fmul fast float %10486, %10433
  %10488 = fadd fast float %10485, %10434
  %10489 = fsub fast float %10488, %10487
  %10490 = fdiv fast float %10489, %10484
  br label %10491

; <label>:10491                                   ; preds = %10481, %10418
  %10492 = phi float [ %10490, %10481 ], [ 0.000000e+00, %10418 ]
  %10493 = fcmp fast ogt float %10393, %10478
  %10494 = fsub fast float %10393, %10478
  br i1 %10493, label %10495, label %10505

; <label>:10495                                   ; preds = %10491
  %10496 = fsub fast float %10478, %10479
  %10497 = fmul fast float %10496, %10494
  %10498 = fmul fast float %10479, %10393
  %10499 = fadd fast float %10479, %10393
  %10500 = fmul fast float %10499, %10433
  %10501 = fsub fast float %10435, %10498
  %10502 = fadd fast float %10501, %10500
  %10503 = fdiv fast float %10502, %10497
  %10504 = fadd fast float %10503, %10492
  br label %10505

; <label>:10505                                   ; preds = %10495, %10491
  %10506 = phi float [ %10504, %10495 ], [ %10492, %10491 ]
  %10507 = fsub fast float %10393, %10479
  %10508 = fmul fast float %10507, %10494
  %10509 = fmul fast float %10479, %10478
  %10510 = fadd fast float %10479, %10478
  %10511 = fmul fast float %10510, %10433
  %10512 = fadd fast float %10509, %10434
  %10513 = fsub fast float %10512, %10511
  %10514 = fdiv fast float %10513, %10508
  %10515 = call float @dx.op.unary.f32(i32 7, float %10506)  ; Saturate(value)
  %10516 = fcmp fast oeq float %9184, 0.000000e+00
  %10517 = extractvalue %dx.types.CBufRet.f32 %10301, 0
  %10518 = fcmp fast oeq float %10517, 0.000000e+00
  %10519 = or i1 %10516, %10518
  %10520 = fmul fast float %10517, 2.000000e+00
  %10521 = fadd fast float %10302, %10303
  %10522 = fdiv fast float %10521, %10520
  %10523 = call float @dx.op.unary.f32(i32 7, float %10522)  ; Saturate(value)
  %10524 = fmul fast float %10523, 2.000000e+00
  %10525 = fsub fast float 3.000000e+00, %10524
  %10526 = fmul fast float %10523, %10523
  %10527 = fmul fast float %10526, %10525
  %10528 = select i1 %10519, float 1.000000e+00, float %10527
  %10529 = fmul fast float %10514, %9184
  %10530 = fadd fast float %10515, %10529
  %10531 = call float @dx.op.unary.f32(i32 7, float %10530)  ; Saturate(value)
  %10532 = fmul fast float %10528, %10531
  br label %10533

; <label>:10533                                   ; preds = %10505, %10385
  %10534 = phi float [ %10532, %10505 ], [ 0.000000e+00, %10385 ]
  %10535 = fsub fast float 1.000000e+00, %10534
  %10536 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %54, float %10255, float %10256, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10537 = extractvalue %dx.types.ResRet.f32 %10536, 0
  %10538 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %10539 = extractvalue %dx.types.CBufRet.i32 %10538, 2
  %10540 = icmp eq i32 %10539, 0
  br i1 %10540, label %10546, label %10541

; <label>:10541                                   ; preds = %10533
  %10542 = call float @dx.op.unary.f32(i32 7, float %10534)  ; Saturate(value)
  %10543 = fadd fast float %10537, -1.000000e+00
  %10544 = fmul fast float %10542, %10543
  %10545 = fadd fast float %10544, 1.000000e+00
  br label %10546

; <label>:10546                                   ; preds = %10541, %10533
  %10547 = phi float [ %10545, %10541 ], [ %10535, %10533 ]
  br i1 %10309, label %10548, label %10566

; <label>:10548                                   ; preds = %10546
  %10549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %10550 = extractvalue %dx.types.CBufRet.f32 %10549, 1
  %10551 = fsub fast float %10386, %10550
  %10552 = call float @dx.op.unary.f32(i32 7, float %10551)  ; Saturate(value)
  %10553 = fsub fast float %10386, %10308
  %10554 = call float @dx.op.unary.f32(i32 7, float %10553)  ; Saturate(value)
  %10555 = fsub fast float %10552, %10554
  %10556 = fsub fast float %10388, %10554
  %10557 = fdiv fast float %10556, %10555
  %10558 = call float @dx.op.unary.f32(i32 7, float %10557)  ; Saturate(value)
  %10559 = fmul fast float %10558, 2.000000e+00
  %10560 = fsub fast float 3.000000e+00, %10559
  %10561 = fsub fast float %10537, %10547
  %10562 = fmul fast float %10558, %10558
  %10563 = fmul fast float %10562, %10561
  %10564 = fmul fast float %10563, %10560
  %10565 = fadd fast float %10564, %10547
  br label %10566

; <label>:10566                                   ; preds = %10548, %10546
  %10567 = phi float [ %10565, %10548 ], [ %10547, %10546 ]
  %10568 = call float @dx.op.binary.f32(i32 35, float %10537, float %10567)  ; FMax(a,b)
  %10569 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %10570 = extractvalue %dx.types.CBufRet.i32 %10569, 2
  %10571 = and i32 %10570, 1
  %10572 = icmp eq i32 %10571, 0
  %10573 = fcmp fast une float %10568, 1.000000e+00
  %10574 = and i1 %10573, %10572
  br i1 %10574, label %10575, label %10594

; <label>:10575                                   ; preds = %10566
  %10576 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %54, float %10255, float %10256, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10577 = extractvalue %dx.types.ResRet.f32 %10576, 0
  %10578 = extractvalue %dx.types.ResRet.f32 %10576, 1
  %10579 = extractvalue %dx.types.ResRet.f32 %10576, 2
  %10580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10581 = extractvalue %dx.types.CBufRet.f32 %10580, 1
  %10582 = fmul fast float %10581, %10577
  %10583 = fmul fast float %10581, %10578
  %10584 = fmul fast float %10581, %10579
  %10585 = fcmp fast ogt float %10537, 0x3FEFFF2E40000000
  %10586 = fsub fast float 1.000000e+00, %10568
  %10587 = fsub fast float 1.000000e+00, %10537
  %10588 = fdiv fast float %10586, %10587
  %10589 = call float @dx.op.unary.f32(i32 7, float %10588)  ; Saturate(value)
  %10590 = select i1 %10585, float 0.000000e+00, float %10589
  %10591 = fmul fast float %10582, %10590
  %10592 = fmul fast float %10583, %10590
  %10593 = fmul fast float %10584, %10590
  br label %10594

; <label>:10594                                   ; preds = %10575, %10566
  %10595 = phi float [ 0.000000e+00, %10566 ], [ %10591, %10575 ]
  %10596 = phi float [ 0.000000e+00, %10566 ], [ %10592, %10575 ]
  %10597 = phi float [ 0.000000e+00, %10566 ], [ %10593, %10575 ]
  %10598 = fmul fast float %10595, %9172
  %10599 = fmul fast float %10596, %9172
  %10600 = fmul fast float %10597, %9172
  %10601 = fmul fast float %10568, %10230
  %10602 = call float @dx.op.dot3.f32(i32 55, float %10568, float %10568, float %10568, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10603 = call float @dx.op.dot3.f32(i32 55, float %10598, float %10599, float %10600, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10604 = select i1 %226, float %10602, float %10568
  %10605 = select i1 %226, float 1.000000e+00, float %10568
  %10606 = select i1 %226, float %10603, float %10598
  %10607 = select i1 %226, float 0.000000e+00, float %10599
  %10608 = select i1 %226, float 0.000000e+00, float %10600
  %10609 = fmul fast float %10604, %10242
  %10610 = fmul fast float %10604, %10243
  %10611 = fmul fast float %10605, %10244
  %10612 = fadd fast float %10609, %10606
  %10613 = fadd fast float %10610, %10607
  %10614 = fadd fast float %10608, %10611
  %10615 = fmul fast float %10604, %10245
  %10616 = fmul fast float %10604, %10246
  %10617 = fmul fast float %10605, %10247
  br label %10618

; <label>:10618                                   ; preds = %10594, %10251, %10220, %9452
  %10619 = phi float [ %9457, %9452 ], [ %10242, %10220 ], [ %10612, %10594 ], [ %10242, %10251 ]
  %10620 = phi float [ %9458, %9452 ], [ %10243, %10220 ], [ %10613, %10594 ], [ %10243, %10251 ]
  %10621 = phi float [ %9459, %9452 ], [ %10244, %10220 ], [ %10614, %10594 ], [ %10244, %10251 ]
  %10622 = phi float [ %9460, %9452 ], [ %10245, %10220 ], [ %10615, %10594 ], [ %10245, %10251 ]
  %10623 = phi float [ %9461, %9452 ], [ %10246, %10220 ], [ %10616, %10594 ], [ %10246, %10251 ]
  %10624 = phi float [ %9462, %9452 ], [ %10247, %10220 ], [ %10617, %10594 ], [ %10247, %10251 ]
  %10625 = phi float [ %9463, %9452 ], [ %10230, %10220 ], [ %10601, %10594 ], [ %10230, %10251 ]
  %10626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %10627 = extractvalue %dx.types.CBufRet.f32 %10626, 2
  %10628 = extractvalue %dx.types.CBufRet.f32 %10626, 3
  %10629 = fmul fast float %10627, %109
  %10630 = fmul fast float %10628, %110
  %10631 = call float @dx.op.unary.f32(i32 7, float %10629)  ; Saturate(value)
  %10632 = call float @dx.op.unary.f32(i32 7, float %10630)  ; Saturate(value)
  %10633 = select i1 %9194, i32 2, i32 0
  %10634 = or i32 %10633, 1
  %10635 = uitofp i32 %10634 to float
  %10636 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %10631, float %10632, float %10635, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10637 = extractvalue %dx.types.ResRet.f32 %10636, 0
  %10638 = extractvalue %dx.types.ResRet.f32 %10636, 1
  %10639 = extractvalue %dx.types.ResRet.f32 %10636, 2
  %10640 = extractvalue %dx.types.ResRet.f32 %10636, 3
  %10641 = add nuw nsw i32 %10633, 2
  %10642 = uitofp i32 %10641 to float
  %10643 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %10631, float %10632, float %10642, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10644 = extractvalue %dx.types.ResRet.f32 %10643, 0
  %10645 = extractvalue %dx.types.ResRet.f32 %10643, 1
  %10646 = extractvalue %dx.types.ResRet.f32 %10643, 2
  %10647 = extractvalue %dx.types.ResRet.f32 %10643, 3
  %10648 = call float @dx.op.binary.f32(i32 35, float %10638, float %10639)  ; FMax(a,b)
  %10649 = call float @dx.op.binary.f32(i32 35, float %10637, float %10648)  ; FMax(a,b)
  %10650 = call float @dx.op.binary.f32(i32 35, float %10649, float %10640)  ; FMax(a,b)
  %10651 = call float @dx.op.binary.f32(i32 36, float %10645, float %10646)  ; FMin(a,b)
  %10652 = call float @dx.op.binary.f32(i32 36, float %10644, float %10651)  ; FMin(a,b)
  %10653 = call float @dx.op.binary.f32(i32 36, float %10652, float %10647)  ; FMin(a,b)
  %10654 = fmul fast float %10650, 2.550000e+02
  %10655 = fadd fast float %10654, 0x3F70101020000000
  %10656 = fptoui float %10655 to i32
  %10657 = fmul fast float %10653, 2.550000e+02
  %10658 = fadd fast float %10657, 0x3F70101020000000
  %10659 = fptoui float %10658 to i32
  %10660 = icmp ult i32 %10656, %10659
  br i1 %10660, label %10661, label %10830

; <label>:10661                                   ; preds = %10618
  %10662 = fcmp fast ogt float %96, 9.843750e-01
  %10663 = fadd fast float %9456, -4.000000e+00
  %10664 = select i1 %10662, float -4.000000e+00, float %10663
  %10665 = call float @dx.op.binary.f32(i32 35, float %10664, float 0.000000e+00)  ; FMax(a,b)
  %10666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %10667 = extractvalue %dx.types.CBufRet.f32 %10666, 0
  %10668 = fadd fast float %10667, %10665
  %10669 = extractvalue %dx.types.CBufRet.f32 %10666, 2
  %10670 = fmul fast float %10668, %10669
  %10671 = call float @dx.op.unary.f32(i32 23, float %10670)  ; Log(value)
  %10672 = extractvalue %dx.types.CBufRet.f32 %10666, 3
  %10673 = fmul fast float %10672, %10671
  %10674 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %10675 = extractvalue %dx.types.CBufRet.f32 %10674, 2
  %10676 = fmul fast float %10673, %10675
  %10677 = call float @dx.op.unary.f32(i32 7, float %10676)  ; Saturate(value)
  %10678 = uitofp i32 %10656 to float
  %10679 = uitofp i32 %10659 to float
  %10680 = fadd fast float %10678, 5.000000e-01
  %10681 = fadd fast float %10679, 5.000000e-01
  %10682 = fmul fast float %10675, %10680
  %10683 = fmul fast float %10675, %10681
  %10684 = fadd fast float %10682, 0x3F0FFB4800000000
  %10685 = fadd fast float %10683, 0xBF0FFB4800000000
  %10686 = call float @dx.op.binary.f32(i32 35, float %10677, float %10684)  ; FMax(a,b)
  %10687 = call float @dx.op.binary.f32(i32 36, float %10686, float %10685)  ; FMin(a,b)
  %10688 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %10689 = extractvalue %dx.types.CBufRet.f32 %10688, 1
  %10690 = extractvalue %dx.types.CBufRet.f32 %10688, 2
  %10691 = extractvalue %dx.types.CBufRet.f32 %10688, 0
  %10692 = select i1 %9194, float %10691, float 0.000000e+00
  %10693 = fmul fast float %10689, %10687
  %10694 = fadd fast float %10692, %10693
  %10695 = fadd fast float %10692, %10690
  %10696 = fsub fast float %10689, %10690
  %10697 = fadd fast float %10696, %10692
  %10698 = call float @dx.op.binary.f32(i32 35, float %10694, float %10695)  ; FMax(a,b)
  %10699 = call float @dx.op.binary.f32(i32 36, float %10698, float %10697)  ; FMin(a,b)
  %10700 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %52, float %10631, float %10632, float %10699, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10701 = extractvalue %dx.types.ResRet.f32 %10700, 0
  %10702 = extractvalue %dx.types.ResRet.f32 %10700, 1
  %10703 = extractvalue %dx.types.ResRet.f32 %10700, 2
  %10704 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %10705 = extractvalue %dx.types.CBufRet.i32 %10704, 0
  %10706 = extractvalue %dx.types.CBufRet.i32 %10704, 1
  %10707 = uitofp i32 %10705 to float
  %10708 = uitofp i32 %10706 to float
  %10709 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %10710 = extractvalue %dx.types.CBufRet.f32 %10709, 0
  %10711 = extractvalue %dx.types.CBufRet.f32 %10709, 1
  %10712 = fmul fast float %10707, %10631
  %10713 = fmul fast float %10708, %10632
  %10714 = fadd fast float %10712, -5.000000e-01
  %10715 = fadd fast float %10713, -5.000000e-01
  %10716 = call float @dx.op.unary.f32(i32 22, float %10714)  ; Frc(value)
  %10717 = call float @dx.op.unary.f32(i32 22, float %10715)  ; Frc(value)
  %10718 = fmul fast float %10716, %10716
  %10719 = fmul fast float %10718, %10716
  %10720 = fsub fast float 3.000000e+00, %10716
  %10721 = fmul fast float %10718, %10720
  %10722 = fmul fast float %10716, 3.000000e+00
  %10723 = fmul fast float %10719, 3.000000e+00
  %10724 = fmul fast float %10718, 6.000000e+00
  %10725 = fsub fast float %10723, %10724
  %10726 = fadd fast float %10725, 4.000000e+00
  %10727 = fmul fast float %10726, 0x3FC5555560000000
  %10728 = fmul fast float %10719, -3.000000e+00
  %10729 = fadd fast float %10718, %10716
  %10730 = fmul fast float %10729, 3.000000e+00
  %10731 = fadd fast float %10728, 1.000000e+00
  %10732 = fadd fast float %10731, %10730
  %10733 = fmul fast float %10719, 0x3FC5555560000000
  %10734 = fmul fast float %10717, %10717
  %10735 = fmul fast float %10734, %10717
  %10736 = fsub fast float 3.000000e+00, %10717
  %10737 = fmul fast float %10734, %10736
  %10738 = fmul fast float %10717, 3.000000e+00
  %10739 = fmul fast float %10735, 3.000000e+00
  %10740 = fmul fast float %10734, 6.000000e+00
  %10741 = fsub fast float %10739, %10740
  %10742 = fadd fast float %10741, 4.000000e+00
  %10743 = fmul fast float %10742, 0x3FC5555560000000
  %10744 = fmul fast float %10735, -3.000000e+00
  %10745 = fadd fast float %10734, %10717
  %10746 = fmul fast float %10745, 3.000000e+00
  %10747 = fadd fast float %10744, 1.000000e+00
  %10748 = fadd fast float %10747, %10746
  %10749 = fmul fast float %10735, 0x3FC5555560000000
  %10750 = fadd fast float %10716, 1.000000e+00
  %10751 = fsub fast float 1.000000e+00, %10722
  %10752 = fadd fast float %10751, %10721
  %10753 = fadd fast float %10752, %10726
  %10754 = fmul fast float %10753, 0x3FC5555560000000
  %10755 = fdiv fast float %10727, %10754
  %10756 = fsub fast float %10750, %10755
  %10757 = fsub fast float 1.000000e+00, %10716
  %10758 = fadd fast float %10732, %10719
  %10759 = fmul fast float %10758, 0x3FC5555560000000
  %10760 = fdiv fast float %10733, %10759
  %10761 = fadd fast float %10757, %10760
  %10762 = fadd fast float %10717, 1.000000e+00
  %10763 = fsub fast float 1.000000e+00, %10738
  %10764 = fadd fast float %10763, %10737
  %10765 = fadd fast float %10764, %10742
  %10766 = fmul fast float %10765, 0x3FC5555560000000
  %10767 = fdiv fast float %10743, %10766
  %10768 = fsub fast float %10762, %10767
  %10769 = fsub fast float 1.000000e+00, %10717
  %10770 = fadd fast float %10748, %10735
  %10771 = fmul fast float %10770, 0x3FC5555560000000
  %10772 = fdiv fast float %10749, %10771
  %10773 = fadd fast float %10772, %10769
  %10774 = fmul fast float %10756, %10710
  %10775 = fsub fast float %10631, %10774
  %10776 = fmul fast float %10761, %10710
  %10777 = fadd fast float %10776, %10631
  %10778 = fmul fast float %10773, %10711
  %10779 = fadd fast float %10778, %10632
  %10780 = fmul fast float %10768, %10711
  %10781 = fsub fast float %10632, %10780
  %10782 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %10775, float %10781, float %10699, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10783 = extractvalue %dx.types.ResRet.f32 %10782, 0
  %10784 = extractvalue %dx.types.ResRet.f32 %10782, 1
  %10785 = extractvalue %dx.types.ResRet.f32 %10782, 2
  %10786 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %10777, float %10781, float %10699, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10787 = extractvalue %dx.types.ResRet.f32 %10786, 0
  %10788 = extractvalue %dx.types.ResRet.f32 %10786, 1
  %10789 = extractvalue %dx.types.ResRet.f32 %10786, 2
  %10790 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %10775, float %10779, float %10699, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10791 = extractvalue %dx.types.ResRet.f32 %10790, 0
  %10792 = extractvalue %dx.types.ResRet.f32 %10790, 1
  %10793 = extractvalue %dx.types.ResRet.f32 %10790, 2
  %10794 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %10777, float %10779, float %10699, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10795 = extractvalue %dx.types.ResRet.f32 %10794, 0
  %10796 = extractvalue %dx.types.ResRet.f32 %10794, 1
  %10797 = extractvalue %dx.types.ResRet.f32 %10794, 2
  %10798 = fsub fast float %10791, %10783
  %10799 = fsub fast float %10792, %10784
  %10800 = fsub fast float %10793, %10785
  %10801 = fmul fast float %10798, %10771
  %10802 = fmul fast float %10799, %10771
  %10803 = fmul fast float %10800, %10771
  %10804 = fadd fast float %10801, %10783
  %10805 = fadd fast float %10802, %10784
  %10806 = fadd fast float %10803, %10785
  %10807 = fsub fast float %10795, %10787
  %10808 = fsub fast float %10796, %10788
  %10809 = fsub fast float %10797, %10789
  %10810 = fmul fast float %10807, %10771
  %10811 = fmul fast float %10808, %10771
  %10812 = fmul fast float %10809, %10771
  %10813 = fsub fast float %10787, %10804
  %10814 = fadd fast float %10813, %10810
  %10815 = fsub fast float %10788, %10805
  %10816 = fadd fast float %10815, %10811
  %10817 = fsub fast float %10789, %10806
  %10818 = fadd fast float %10817, %10812
  %10819 = fmul fast float %10814, %10759
  %10820 = fmul fast float %10816, %10759
  %10821 = fmul fast float %10818, %10759
  %10822 = fadd fast float %10819, %10804
  %10823 = fadd fast float %10820, %10805
  %10824 = fadd fast float %10821, %10806
  %10825 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10826 = extractvalue %dx.types.CBufRet.f32 %10825, 1
  %10827 = fmul fast float %10822, %10826
  %10828 = fmul fast float %10823, %10826
  %10829 = fmul fast float %10824, %10826
  br label %10830

; <label>:10830                                   ; preds = %10661, %10618
  %10831 = phi float [ %10701, %10661 ], [ 1.000000e+00, %10618 ]
  %10832 = phi float [ %10702, %10661 ], [ 1.000000e+00, %10618 ]
  %10833 = phi float [ %10703, %10661 ], [ 1.000000e+00, %10618 ]
  %10834 = phi float [ %10827, %10661 ], [ 0.000000e+00, %10618 ]
  %10835 = phi float [ %10828, %10661 ], [ 0.000000e+00, %10618 ]
  %10836 = phi float [ %10829, %10661 ], [ 0.000000e+00, %10618 ]
  %10837 = fmul fast float %10834, %9172
  %10838 = fmul fast float %10835, %9172
  %10839 = fmul fast float %10836, %9172
  %10840 = fmul fast float %10831, %10625
  %10841 = call float @dx.op.dot3.f32(i32 55, float %10831, float %10832, float %10833, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10842 = call float @dx.op.dot3.f32(i32 55, float %10837, float %10838, float %10839, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10843 = select i1 %226, float %10841, float %10831
  %10844 = select i1 %226, float %10841, float %10832
  %10845 = select i1 %226, float 1.000000e+00, float %10833
  %10846 = select i1 %226, float %10842, float %10837
  %10847 = select i1 %226, float 0.000000e+00, float %10838
  %10848 = select i1 %226, float 0.000000e+00, float %10839
  %10849 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %10850 = extractvalue %dx.types.CBufRet.i32 %10849, 3
  %10851 = and i32 %10850, 3
  %10852 = icmp ne i32 %10851, 0
  %10853 = and i32 %10850, 4
  %10854 = icmp ne i32 %10853, 0
  %10855 = and i1 %10852, %10854
  %10856 = and i1 %226, %10855
  br i1 %10856, label %10857, label %10863

; <label>:10857                                   ; preds = %10830
  %10858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %10859 = extractvalue %dx.types.CBufRet.f32 %10858, 1
  %10860 = fadd fast float %10840, -1.000000e+00
  %10861 = fmul fast float %10859, %10860
  %10862 = fadd fast float %10861, 1.000000e+00
  br label %10863

; <label>:10863                                   ; preds = %10857, %10830
  %10864 = phi float [ %10862, %10857 ], [ %10840, %10830 ]
  %10865 = fadd fast float %10622, %10619
  %10866 = fmul fast float %10843, %10865
  %10867 = fadd fast float %10866, %10846
  %10868 = fadd fast float %10623, %10620
  %10869 = fmul fast float %10844, %10868
  %10870 = fadd fast float %10869, %10847
  %10871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10872 = extractvalue %dx.types.CBufRet.f32 %10871, 0
  br i1 %226, label %10873, label %10897

; <label>:10873                                   ; preds = %10863
  %10874 = fadd fast float %10867, %10870
  %10875 = fmul fast float %10872, %10874
  %10876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %10877 = extractvalue %dx.types.CBufRet.f32 %10876, 3
  %10878 = extractvalue %dx.types.CBufRet.f32 %9176, 1
  %10879 = fsub fast float %9181, %9175
  %10880 = fadd fast float %10879, %9182
  %10881 = fsub fast float %10880, %10878
  %10882 = extractvalue %dx.types.CBufRet.f32 %9176, 2
  %10883 = fmul fast float %10881, %10882
  %10884 = call float @dx.op.unary.f32(i32 7, float %10883)  ; Saturate(value)
  %10885 = fsub fast float %10884, %10877
  %10886 = fmul fast float %10885, %10864
  %10887 = fadd fast float %10886, %10877
  %10888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %10889 = extractvalue %dx.types.CBufRet.f32 %10888, 0
  %10890 = fsub fast float %10887, %10889
  %10891 = fmul fast float %10890, 1.000000e+01
  %10892 = call float @dx.op.unary.f32(i32 7, float %10891)  ; Saturate(value)
  %10893 = fsub fast float %5081, %9172
  %10894 = fmul fast float %10892, %10893
  %10895 = fadd fast float %10894, %9172
  %10896 = fmul fast float %10895, %10887
  br label %10921

; <label>:10897                                   ; preds = %10863
  %10898 = fadd fast float %10624, %10621
  %10899 = fmul fast float %10845, %10898
  %10900 = fadd fast float %10899, %10848
  %10901 = fmul fast float %10872, %10867
  %10902 = fmul fast float %10872, %10870
  %10903 = fmul fast float %10872, %10900
  %10904 = call float @dx.op.binary.f32(i32 35, float %10902, float %10903)  ; FMax(a,b)
  %10905 = call float @dx.op.binary.f32(i32 35, float %10901, float %10904)  ; FMax(a,b)
  %10906 = call float @dx.op.binary.f32(i32 35, float %10905, float %9172)  ; FMax(a,b)
  %10907 = fcmp fast ugt float %10906, 0x3F10000000000000
  br i1 %10907, label %10909, label %10908

; <label>:10908                                   ; preds = %10897
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %10909

; <label>:10909                                   ; preds = %10908, %10897
  %10910 = add i32 %60, 356
  %10911 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %10910, i32 undef)  ; BufferLoad(srv,index,wot)
  %10912 = extractvalue %dx.types.ResRet.i32 %10911, 0
  %10913 = and i32 %10912, 32
  %10914 = icmp eq i32 %10913, 0
  br i1 %10914, label %10921, label %10915

; <label>:10915                                   ; preds = %10909
  %10916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %10917 = extractvalue %dx.types.CBufRet.f32 %10916, 0
  %10918 = fmul fast float %10917, 0x3FE99999A0000000
  %10919 = fadd fast float %10917, %10901
  %10920 = fadd fast float %10918, %10903
  br label %10921

; <label>:10921                                   ; preds = %10915, %10909, %10873
  %10922 = phi float [ %10875, %10873 ], [ %10919, %10915 ], [ %10901, %10909 ]
  %10923 = phi float [ %10896, %10873 ], [ %10902, %10915 ], [ %10902, %10909 ]
  %10924 = phi float [ %10895, %10873 ], [ %10920, %10915 ], [ %10903, %10909 ]
  %10925 = phi float [ %10895, %10873 ], [ %9172, %10915 ], [ %9172, %10909 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %10926 = call float @dx.op.binary.f32(i32 36, float %10922, float 3.225500e+04)  ; FMin(a,b)
  %10927 = call float @dx.op.binary.f32(i32 36, float %10923, float 3.225500e+04)  ; FMin(a,b)
  %10928 = call float @dx.op.binary.f32(i32 36, float %10924, float 3.225500e+04)  ; FMin(a,b)
  %10929 = call float @dx.op.binary.f32(i32 36, float %10925, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %10926)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %10927)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %10928)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %10929)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!dx.viewIdState = !{!74}
!dx.entryPoints = !{!75}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !63, !66}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62}
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
!17 = !{i32 10, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!18 = !{i32 11, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 49, i32 1, i32 11, i32 0, null}
!19 = !{i32 12, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 50, i32 1, i32 11, i32 0, null}
!20 = !{i32 13, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 51, i32 1, i32 11, i32 0, null}
!21 = !{i32 14, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 52, i32 1, i32 11, i32 0, null}
!22 = !{i32 15, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 16, i32 1, i32 11, i32 0, null}
!23 = !{i32 16, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 17, i32 1, i32 11, i32 0, null}
!24 = !{i32 17, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!25 = !{i32 18, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!26 = !{i32 19, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!27 = !{i32 20, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 59, i32 1, i32 2, i32 0, !7}
!28 = !{i32 21, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 60, i32 1, i32 2, i32 0, !7}
!29 = !{i32 22, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 45, i32 1, i32 11, i32 0, null}
!30 = !{i32 23, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 46, i32 1, i32 11, i32 0, null}
!31 = !{i32 24, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 47, i32 1, i32 11, i32 0, null}
!32 = !{i32 25, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 48, i32 1, i32 11, i32 0, null}
!33 = !{i32 26, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!34 = !{i32 27, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!35 = !{i32 28, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 56, i32 1, i32 2, i32 0, !36}
!36 = !{i32 0, i32 5}
!37 = !{i32 29, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 35, i32 1, i32 7, i32 0, !7}
!38 = !{i32 30, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!39 = !{i32 31, %"class.Texture3D<float>"* undef, !"", i32 2, i32 31, i32 1, i32 4, i32 0, !7}
!40 = !{i32 32, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!41 = !{i32 33, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 1, i32 1, i32 11, i32 0, null}
!42 = !{i32 34, %"class.Texture1D<float>"* undef, !"", i32 2, i32 32, i32 1, i32 1, i32 0, !7}
!43 = !{i32 35, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 8, i32 1, i32 7, i32 0, !7}
!44 = !{i32 36, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 2, i32 1, i32 2, i32 0, !7}
!45 = !{i32 37, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 3, i32 1, i32 2, i32 0, !7}
!46 = !{i32 38, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 4, i32 1, i32 2, i32 0, !7}
!47 = !{i32 39, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 80, i32 1, i32 7, i32 0, !48}
!48 = !{i32 0, i32 14}
!49 = !{i32 40, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 67, i32 1, i32 11, i32 0, null}
!50 = !{i32 41, %"class.Texture2D<float>"* undef, !"", i32 2, i32 7, i32 1, i32 2, i32 0, !7}
!51 = !{i32 42, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 6, i32 1, i32 2, i32 0, !7}
!52 = !{i32 43, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 5, i32 1, i32 2, i32 0, !7}
!53 = !{i32 44, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 38, i32 1, i32 2, i32 0, !7}
!54 = !{i32 45, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 12, i32 1, i32 11, i32 0, null}
!55 = !{i32 46, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!56 = !{i32 47, %"class.Texture1D<float>"* undef, !"", i32 2, i32 30, i32 1, i32 1, i32 0, !7}
!57 = !{i32 48, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 44, i32 1, i32 4, i32 0, !7}
!58 = !{i32 49, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!59 = !{i32 50, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!60 = !{i32 51, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !48}
!61 = !{i32 52, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!62 = !{i32 53, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 86, i32 1, i32 2, i32 0, !7}
!63 = !{!64, !65}
!64 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!65 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 128, null}
!66 = !{!67, !68, !69, !70, !71, !72, !73}
!67 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!68 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!69 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!70 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!71 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!72 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!73 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!74 = !{[46 x i32] [i32 44, i32 4, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 7, i32 3, i32 3, i32 3, i32 7, i32 3, i32 3, i32 3, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15]}
!75 = !{void ()* @ps_main, !"ps_main", !76, !4, !97}
!76 = !{!77, !95, null}
!77 = !{!78, !81, !82, !84, !86, !87, !88, !89, !90, !91, !92, !94}
!78 = !{i32 0, !"SV_Position", i8 9, i8 3, !79, i8 4, i32 1, i8 4, i32 0, i8 0, !80}
!79 = !{i32 0}
!80 = !{i32 3, i32 15}
!81 = !{i32 1, !"COLOR", i8 9, i8 0, !79, i8 2, i32 1, i8 4, i32 1, i8 0, !80}
!82 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !79, i8 2, i32 1, i8 4, i32 2, i8 0, !83}
!83 = !{i32 3, i32 3}
!84 = !{i32 3, !"NORMAL", i8 9, i8 0, !79, i8 2, i32 1, i8 3, i32 3, i8 0, !85}
!85 = !{i32 3, i32 7}
!86 = !{i32 4, !"TANGENT", i8 9, i8 0, !79, i8 2, i32 1, i8 4, i32 4, i8 0, !80}
!87 = !{i32 5, !"SH_RED", i8 9, i8 0, !79, i8 2, i32 1, i8 4, i32 5, i8 0, !80}
!88 = !{i32 6, !"SH_GREEN", i8 9, i8 0, !79, i8 2, i32 1, i8 4, i32 6, i8 0, !80}
!89 = !{i32 7, !"SH_BLUE", i8 9, i8 0, !79, i8 2, i32 1, i8 4, i32 7, i8 0, !80}
!90 = !{i32 8, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !79, i8 2, i32 1, i8 2, i32 8, i8 0, !83}
!91 = !{i32 9, !"SCEONDARY_NORMAL", i8 9, i8 0, !79, i8 2, i32 1, i8 4, i32 9, i8 0, !80}
!92 = !{i32 10, !"PACKED_TRI_DATA", i8 5, i8 0, !79, i8 1, i32 1, i8 4, i32 10, i8 0, !93}
!93 = !{i32 3, i32 13}
!94 = !{i32 11, !"SV_SampleIndex", i8 5, i8 12, !79, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!95 = !{!96}
!96 = !{i32 0, !"SV_Target", i8 9, i8 16, !79, i8 0, i32 1, i8 4, i32 0, i8 0, !80}
!97 = !{i32 0, i64 16}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 1}
!99 = distinct !{!99, !100}
!100 = !{!"llvm.loop.unroll.disable"}
!101 = distinct !{!101, !"dx.controlflow.hints", i32 1}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 1}
!103 = distinct !{!103, !"dx.controlflow.hints", i32 1}
!104 = distinct !{!104, !"dx.controlflow.hints", i32 1}
!105 = distinct !{!105, !"dx.controlflow.hints", i32 1}
!106 = !{!107, !107, i64 0}
!107 = !{!"int", !108, i64 0}
!108 = !{!"omnipotent char", !109, i64 0}
!109 = !{!"Simple C/C++ TBAA"}
!110 = !{!111, !113, !115, !117}
!111 = distinct !{!111, !112, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!112 = distinct !{!112, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!113 = distinct !{!113, !114, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!114 = distinct !{!114, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!115 = distinct !{!115, !116, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!116 = distinct !{!116, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!117 = distinct !{!117, !118, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!118 = distinct !{!118, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!119 = distinct !{!119, !"dx.controlflow.hints", i32 1}
!120 = !{!121, !121, i64 0}
!121 = !{!"float", !108, i64 0}
!122 = distinct !{!122, !100}
!123 = distinct !{!123, !100}
!124 = distinct !{!124, !"dx.controlflow.hints", i32 1}
!125 = distinct !{!125, !"dx.controlflow.hints", i32 1}
!126 = distinct !{!126, !"dx.controlflow.hints", i32 1}
!127 = distinct !{!127, !"dx.controlflow.hints", i32 1}
!128 = distinct !{!128, !"dx.controlflow.hints", i32 1}
!129 = distinct !{!129, !"dx.controlflow.hints", i32 1}
!130 = distinct !{!130, !"dx.controlflow.hints", i32 1}
!131 = distinct !{!131, !"dx.controlflow.hints", i32 1}
!132 = distinct !{!132, !"dx.controlflow.hints", i32 1}
!133 = distinct !{!133, !"dx.controlflow.hints", i32 1}
!134 = !{!135, !137, !139, !140, !142, !143, !144, !146, !147, !148}
!135 = distinct !{!135, !136, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!136 = distinct !{!136, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!137 = distinct !{!137, !138, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!138 = distinct !{!138, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!139 = distinct !{!139, !138, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!140 = distinct !{!140, !141, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!141 = distinct !{!141, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!142 = distinct !{!142, !141, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!143 = distinct !{!143, !141, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!144 = distinct !{!144, !145, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!145 = distinct !{!145, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!146 = distinct !{!146, !145, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!147 = distinct !{!147, !145, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!148 = distinct !{!148, !149, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!149 = distinct !{!149, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!150 = !{!151}
!151 = distinct !{!151, !152, !"\01?sort@@YAXAIAM00@Z: %c"}
!152 = distinct !{!152, !"\01?sort@@YAXAIAM00@Z"}
!153 = !{!154, !155, !135, !137, !139, !140, !142, !143, !144, !146, !147, !148}
!154 = distinct !{!154, !152, !"\01?sort@@YAXAIAM00@Z: %a"}
!155 = distinct !{!155, !152, !"\01?sort@@YAXAIAM00@Z: %b"}
!156 = !{!155}
!157 = !{!154, !151, !135, !137, !139, !140, !142, !143, !144, !146, !147, !148}
!158 = !{!154}
!159 = !{!155, !151, !135, !137, !139, !140, !142, !143, !144, !146, !147, !148}
!160 = !{!161}
!161 = distinct !{!161, !162, !"\01?sort@@YAXAIAM00@Z: %c"}
!162 = distinct !{!162, !"\01?sort@@YAXAIAM00@Z"}
!163 = !{!164, !165, !135, !137, !139, !140, !142, !143, !144, !146, !147, !148}
!164 = distinct !{!164, !162, !"\01?sort@@YAXAIAM00@Z: %a"}
!165 = distinct !{!165, !162, !"\01?sort@@YAXAIAM00@Z: %b"}
!166 = !{!165}
!167 = !{!164, !161, !135, !137, !139, !140, !142, !143, !144, !146, !147, !148}
!168 = !{!164}
!169 = !{!165, !161, !135, !137, !139, !140, !142, !143, !144, !146, !147, !148}
!170 = distinct !{!170, !"dx.controlflow.hints", i32 1}
!171 = distinct !{!171, !"dx.controlflow.hints", i32 2}
!172 = distinct !{!172, !"dx.controlflow.hints", i32 1}
!173 = distinct !{!173, !"dx.controlflow.hints", i32 1}
!174 = distinct !{!174, !"dx.controlflow.hints", i32 1}
!175 = distinct !{!175, !"dx.controlflow.hints", i32 1}
!176 = distinct !{!176, !"dx.controlflow.hints", i32 1}
!177 = distinct !{!177, !"dx.controlflow.hints", i32 1}
!178 = distinct !{!178, !"dx.controlflow.hints", i32 1}
!179 = distinct !{!179, !"dx.controlflow.hints", i32 1}
!180 = distinct !{!180, !"dx.controlflow.hints", i32 1}

