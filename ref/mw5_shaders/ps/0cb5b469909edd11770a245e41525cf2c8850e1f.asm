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
; SV_Target                1   xyzw        1   TARGET   float   xyzw
;
; shader hash: d4ec4700ef532157c31c69bbb0222ad4
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
; Number of inputs: 44, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 43 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 43 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 24, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 43 }
;   output 4 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 32, 33, 36, 37, 38, 39, 40, 42, 43 }
;   output 5 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 32, 33, 36, 37, 38, 39, 40, 42, 43 }
;   output 6 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 32, 33, 36, 37, 38, 39, 40, 42, 43 }
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
  %167 = add i32 %60, 360
  %168 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %167, i32 undef)  ; BufferLoad(srv,index,wot)
  %169 = extractvalue %dx.types.ResRet.i32 %168, 0
  %170 = extractvalue %dx.types.ResRet.i32 %168, 1
  %171 = extractvalue %dx.types.ResRet.i32 %168, 2
  %172 = extractvalue %dx.types.ResRet.i32 %168, 3
  %173 = bitcast i32 %169 to float
  %174 = bitcast i32 %170 to float
  %175 = bitcast i32 %171 to float
  %176 = bitcast i32 %172 to float
  %177 = call float @dx.op.dot3.f32(i32 55, float %116, float %117, float %118, float %116, float %117, float %118)  ; Dot3(ax,ay,az,bx,by,bz)
  %178 = call float @dx.op.unary.f32(i32 25, float %177)  ; Rsqrt(value)
  %179 = fmul fast float %178, %116
  %180 = fmul fast float %178, %117
  %181 = fmul fast float %178, %118
  %182 = call float @dx.op.dot3.f32(i32 55, float %164, float %165, float %166, float %164, float %165, float %166)  ; Dot3(ax,ay,az,bx,by,bz)
  %183 = call float @dx.op.unary.f32(i32 25, float %182)  ; Rsqrt(value)
  %184 = fmul fast float %183, %164
  %185 = fmul fast float %183, %165
  %186 = fmul fast float %183, %166
  %187 = call float @dx.op.dot3.f32(i32 55, float %184, float %185, float %186, float %179, float %180, float %181)  ; Dot3(ax,ay,az,bx,by,bz)
  %188 = fmul fast float %187, %187
  %189 = fmul fast float %188, %175
  %190 = fadd fast float %189, %176
  %191 = call float @dx.op.unary.f32(i32 7, float %190)  ; Saturate(value)
  %192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %193 = extractvalue %dx.types.CBufRet.f32 %192, 3
  %194 = fmul fast float %193, %182
  %195 = fsub fast float %173, %194
  %196 = fmul fast float %195, %174
  %197 = call float @dx.op.unary.f32(i32 7, float %196)  ; Saturate(value)
  %198 = fmul fast float %197, %191
  %199 = fmul fast float %109, 5.000000e-01
  %200 = fmul fast float %110, 5.000000e-01
  %201 = fptosi float %199 to i32
  %202 = fptosi float %200 to i32
  %203 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %201, i32 %202, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %204 = extractvalue %dx.types.ResRet.i32 %203, 0
  %205 = lshr i32 %204, 18
  %206 = uitofp i32 %205 to float
  %207 = fmul fast float %206, 0x3F4C00EBA0000000
  %208 = call float @dx.op.unary.f32(i32 21, float %207)  ; Exp(value)
  %209 = fadd fast float %208, -1.000000e+00
  %210 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %26, i32 0)  ; GetDimensions(handle,mipLevel)
  %211 = extractvalue %dx.types.Dimensions %210, 0
  %212 = sitofp i32 %211 to float
  %213 = extractvalue %dx.types.Dimensions %210, 1
  %214 = sitofp i32 %213 to float
  %215 = fcmp fast oge float %199, %212
  %216 = fcmp fast oge float %200, %214
  %217 = or i1 %215, %216
  %218 = select i1 %217, float 0x4197782600000000, float %209
  %219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %220 = extractvalue %dx.types.CBufRet.f32 %219, 2
  %221 = extractvalue %dx.types.CBufRet.f32 %219, 3
  %222 = fmul fast float %220, %109
  %223 = fmul fast float %221, %110
  %224 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %225 = extractvalue %dx.types.ResRet.i32 %224, 0
  %226 = and i32 %225, 114688
  %227 = icmp ne i32 %226, 0
  %228 = select i1 %227, float %222, float 0.000000e+00
  %229 = select i1 %227, float %223, float 0.000000e+00
  %230 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %55, float %228, float %229, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %231 = extractvalue %dx.types.ResRet.f32 %230, 0
  %232 = fmul fast float %231, 2.550000e+02
  %233 = fptoui float %232 to i32
  %234 = select i1 %227, i32 %233, i32 0
  %235 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %236 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %237 = extractvalue %dx.types.CBufRet.i32 %236, 3
  %238 = and i32 %237, 3
  %239 = icmp ne i32 %238, 0
  %240 = and i32 %237, 4
  %241 = icmp ne i32 %240, 0
  %242 = and i1 %239, %241
  br i1 %242, label %243, label %254

; <label>:243                                     ; preds = %0
  %244 = extractvalue %dx.types.CBufRet.f32 %235, 3
  %245 = fmul fast float %244, %110
  %246 = extractvalue %dx.types.CBufRet.f32 %235, 2
  %247 = fmul fast float %246, %109
  %248 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %54, float %247, float %245, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %249 = extractvalue %dx.types.ResRet.f32 %248, 0
  %250 = fsub fast float 1.000000e+00, %249
  %251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %252 = extractvalue %dx.types.CBufRet.f32 %251, 0
  %253 = fcmp fast olt float %250, %252
  br label %257

; <label>:254                                     ; preds = %0
  %255 = icmp eq i32 %240, 0
  %256 = and i1 %239, %255
  br label %257

; <label>:257                                     ; preds = %254, %243
  %258 = phi i1 [ %253, %243 ], [ %256, %254 ]
  %259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %260 = extractvalue %dx.types.CBufRet.f32 %259, 2
  %261 = fmul fast float %260, 0x3FE3C6EF40000000
  %262 = frem fast float %109, 2.560000e+02
  %263 = frem fast float %110, 2.560000e+02
  %264 = fptoui float %262 to i32
  %265 = fptoui float %263 to i32
  %266 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %37, i32 0, i32 %264, i32 %265, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %267 = extractvalue %dx.types.ResRet.f32 %266, 0
  %268 = fadd fast float %267, %261
  %269 = call float @dx.op.unary.f32(i32 22, float %268)  ; Frc(value)
  %270 = add i32 %60, 156
  %271 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %270, i32 undef)  ; BufferLoad(srv,index,wot)
  %272 = extractvalue %dx.types.ResRet.i32 %271, 0
  %273 = shl i32 %272, 4
  %274 = and i32 %273, 32752
  %275 = call float @dx.op.legacyF16ToF32(i32 131, i32 %274)  ; LegacyF16ToF32(value)
  %276 = lshr i32 %272, 7
  %277 = and i32 %276, 32752
  %278 = call float @dx.op.legacyF16ToF32(i32 131, i32 %277)  ; LegacyF16ToF32(value)
  %279 = lshr i32 %272, 22
  %280 = shl nuw nsw i32 %279, 5
  %281 = call float @dx.op.legacyF16ToF32(i32 131, i32 %280)  ; LegacyF16ToF32(value)
  %282 = add i32 %60, 216
  %283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %282, i32 undef)  ; BufferLoad(srv,index,wot)
  %284 = extractvalue %dx.types.ResRet.i32 %283, 0
  %285 = and i32 %284, 255
  %286 = uitofp i32 %285 to float
  %287 = fmul fast float %286, 0x3F70101020000000
  %288 = lshr i32 %284, 8
  %289 = and i32 %288, 255
  %290 = uitofp i32 %289 to float
  %291 = fmul fast float %290, 0x3F70101020000000
  %292 = lshr i32 %284, 16
  %293 = and i32 %292, 255
  %294 = uitofp i32 %293 to float
  %295 = fmul fast float %294, 0x3F70101020000000
  %296 = add i32 %60, 36
  %297 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %296, i32 undef)  ; BufferLoad(srv,index,wot)
  %298 = extractvalue %dx.types.ResRet.i32 %297, 0
  %299 = and i32 %298, 65535
  %300 = call float @dx.op.legacyF16ToF32(i32 131, i32 %299)  ; LegacyF16ToF32(value)
  %301 = lshr i32 %298, 16
  %302 = call float @dx.op.legacyF16ToF32(i32 131, i32 %301)  ; LegacyF16ToF32(value)
  %303 = add i32 %60, 288
  %304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %303, i32 undef)  ; BufferLoad(srv,index,wot)
  %305 = extractvalue %dx.types.ResRet.i32 %304, 0
  %306 = and i32 %305, 65535
  %307 = call float @dx.op.legacyF16ToF32(i32 131, i32 %306)  ; LegacyF16ToF32(value)
  %308 = lshr i32 %305, 16
  %309 = call float @dx.op.legacyF16ToF32(i32 131, i32 %308)  ; LegacyF16ToF32(value)
  %310 = fmul fast float %307, 0x3F50624DE0000000
  %311 = fmul fast float %309, 0x3F50624DE0000000
  %312 = add i32 %60, 172
  %313 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %312, i32 undef)  ; BufferLoad(srv,index,wot)
  %314 = extractvalue %dx.types.ResRet.i32 %313, 0
  %315 = shl i32 %314, 4
  %316 = and i32 %315, 32752
  %317 = call float @dx.op.legacyF16ToF32(i32 131, i32 %316)  ; LegacyF16ToF32(value)
  %318 = lshr i32 %314, 7
  %319 = and i32 %318, 32752
  %320 = call float @dx.op.legacyF16ToF32(i32 131, i32 %319)  ; LegacyF16ToF32(value)
  %321 = lshr i32 %314, 22
  %322 = shl nuw nsw i32 %321, 5
  %323 = call float @dx.op.legacyF16ToF32(i32 131, i32 %322)  ; LegacyF16ToF32(value)
  %324 = add i32 %60, 232
  %325 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %324, i32 undef)  ; BufferLoad(srv,index,wot)
  %326 = extractvalue %dx.types.ResRet.i32 %325, 0
  %327 = and i32 %326, 255
  %328 = uitofp i32 %327 to float
  %329 = fmul fast float %328, 0x3F70101020000000
  %330 = lshr i32 %326, 8
  %331 = and i32 %330, 255
  %332 = uitofp i32 %331 to float
  %333 = fmul fast float %332, 0x3F70101020000000
  %334 = lshr i32 %326, 16
  %335 = and i32 %334, 255
  %336 = uitofp i32 %335 to float
  %337 = fmul fast float %336, 0x3F70101020000000
  %338 = add i32 %60, 52
  %339 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %338, i32 undef)  ; BufferLoad(srv,index,wot)
  %340 = extractvalue %dx.types.ResRet.i32 %339, 0
  %341 = and i32 %340, 65535
  %342 = call float @dx.op.legacyF16ToF32(i32 131, i32 %341)  ; LegacyF16ToF32(value)
  %343 = lshr i32 %340, 16
  %344 = call float @dx.op.legacyF16ToF32(i32 131, i32 %343)  ; LegacyF16ToF32(value)
  %345 = add i32 %60, 304
  %346 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %345, i32 undef)  ; BufferLoad(srv,index,wot)
  %347 = extractvalue %dx.types.ResRet.i32 %346, 0
  %348 = and i32 %347, 65535
  %349 = call float @dx.op.legacyF16ToF32(i32 131, i32 %348)  ; LegacyF16ToF32(value)
  %350 = lshr i32 %347, 16
  %351 = call float @dx.op.legacyF16ToF32(i32 131, i32 %350)  ; LegacyF16ToF32(value)
  %352 = fmul fast float %349, 0x3F50624DE0000000
  %353 = fmul fast float %351, 0x3F50624DE0000000
  %354 = add i32 %60, 188
  %355 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %354, i32 undef)  ; BufferLoad(srv,index,wot)
  %356 = extractvalue %dx.types.ResRet.i32 %355, 0
  %357 = shl i32 %356, 4
  %358 = and i32 %357, 32752
  %359 = call float @dx.op.legacyF16ToF32(i32 131, i32 %358)  ; LegacyF16ToF32(value)
  %360 = lshr i32 %356, 7
  %361 = and i32 %360, 32752
  %362 = call float @dx.op.legacyF16ToF32(i32 131, i32 %361)  ; LegacyF16ToF32(value)
  %363 = lshr i32 %356, 22
  %364 = shl nuw nsw i32 %363, 5
  %365 = call float @dx.op.legacyF16ToF32(i32 131, i32 %364)  ; LegacyF16ToF32(value)
  %366 = add i32 %60, 248
  %367 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %366, i32 undef)  ; BufferLoad(srv,index,wot)
  %368 = extractvalue %dx.types.ResRet.i32 %367, 0
  %369 = and i32 %368, 255
  %370 = uitofp i32 %369 to float
  %371 = fmul fast float %370, 0x3F70101020000000
  %372 = lshr i32 %368, 8
  %373 = and i32 %372, 255
  %374 = uitofp i32 %373 to float
  %375 = fmul fast float %374, 0x3F70101020000000
  %376 = lshr i32 %368, 16
  %377 = and i32 %376, 255
  %378 = uitofp i32 %377 to float
  %379 = fmul fast float %378, 0x3F70101020000000
  %380 = add i32 %60, 68
  %381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %380, i32 undef)  ; BufferLoad(srv,index,wot)
  %382 = extractvalue %dx.types.ResRet.i32 %381, 0
  %383 = and i32 %382, 65535
  %384 = call float @dx.op.legacyF16ToF32(i32 131, i32 %383)  ; LegacyF16ToF32(value)
  %385 = lshr i32 %382, 16
  %386 = call float @dx.op.legacyF16ToF32(i32 131, i32 %385)  ; LegacyF16ToF32(value)
  %387 = add i32 %60, 320
  %388 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %387, i32 undef)  ; BufferLoad(srv,index,wot)
  %389 = extractvalue %dx.types.ResRet.i32 %388, 0
  %390 = and i32 %389, 65535
  %391 = call float @dx.op.legacyF16ToF32(i32 131, i32 %390)  ; LegacyF16ToF32(value)
  %392 = lshr i32 %389, 16
  %393 = call float @dx.op.legacyF16ToF32(i32 131, i32 %392)  ; LegacyF16ToF32(value)
  %394 = fmul fast float %391, 0x3F50624DE0000000
  %395 = fmul fast float %393, 0x3F50624DE0000000
  %396 = add i32 %60, 204
  %397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %396, i32 undef)  ; BufferLoad(srv,index,wot)
  %398 = extractvalue %dx.types.ResRet.i32 %397, 0
  %399 = shl i32 %398, 4
  %400 = and i32 %399, 32752
  %401 = call float @dx.op.legacyF16ToF32(i32 131, i32 %400)  ; LegacyF16ToF32(value)
  %402 = lshr i32 %398, 7
  %403 = and i32 %402, 32752
  %404 = call float @dx.op.legacyF16ToF32(i32 131, i32 %403)  ; LegacyF16ToF32(value)
  %405 = lshr i32 %398, 22
  %406 = shl nuw nsw i32 %405, 5
  %407 = call float @dx.op.legacyF16ToF32(i32 131, i32 %406)  ; LegacyF16ToF32(value)
  %408 = add i32 %60, 264
  %409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %408, i32 undef)  ; BufferLoad(srv,index,wot)
  %410 = extractvalue %dx.types.ResRet.i32 %409, 0
  %411 = and i32 %410, 255
  %412 = uitofp i32 %411 to float
  %413 = fmul fast float %412, 0x3F70101020000000
  %414 = lshr i32 %410, 8
  %415 = and i32 %414, 255
  %416 = uitofp i32 %415 to float
  %417 = fmul fast float %416, 0x3F70101020000000
  %418 = lshr i32 %410, 16
  %419 = and i32 %418, 255
  %420 = uitofp i32 %419 to float
  %421 = fmul fast float %420, 0x3F70101020000000
  %422 = add i32 %60, 84
  %423 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %422, i32 undef)  ; BufferLoad(srv,index,wot)
  %424 = extractvalue %dx.types.ResRet.i32 %423, 0
  %425 = and i32 %424, 65535
  %426 = call float @dx.op.legacyF16ToF32(i32 131, i32 %425)  ; LegacyF16ToF32(value)
  %427 = lshr i32 %424, 16
  %428 = call float @dx.op.legacyF16ToF32(i32 131, i32 %427)  ; LegacyF16ToF32(value)
  %429 = add i32 %60, 336
  %430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %429, i32 undef)  ; BufferLoad(srv,index,wot)
  %431 = extractvalue %dx.types.ResRet.i32 %430, 0
  %432 = and i32 %431, 65535
  %433 = call float @dx.op.legacyF16ToF32(i32 131, i32 %432)  ; LegacyF16ToF32(value)
  %434 = lshr i32 %431, 16
  %435 = call float @dx.op.legacyF16ToF32(i32 131, i32 %434)  ; LegacyF16ToF32(value)
  %436 = fmul fast float %433, 0x3F50624DE0000000
  %437 = fmul fast float %435, 0x3F50624DE0000000
  %438 = add i32 %60, 348
  %439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %438, i32 undef)  ; BufferLoad(srv,index,wot)
  %440 = extractvalue %dx.types.ResRet.i32 %439, 0
  %441 = and i32 %440, 32
  %442 = icmp eq i32 %441, 0
  %443 = and i32 %440, 64
  %444 = icmp eq i32 %443, 0
  %445 = and i32 %440, 128
  %446 = icmp eq i32 %445, 0
  %447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %438, i32 undef)  ; BufferLoad(srv,index,wot)
  %448 = extractvalue %dx.types.ResRet.i32 %447, 0
  %449 = and i32 %448, 2
  %450 = icmp eq i32 %449, 0
  br i1 %450, label %466, label %451

; <label>:451                                     ; preds = %257
  %452 = add i32 %60, 556
  %453 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %452, i32 undef)  ; BufferLoad(srv,index,wot)
  %454 = extractvalue %dx.types.ResRet.i32 %453, 0
  %455 = add i32 %454, 0
  %456 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %455, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %457 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %456, %dx.types.Handle %106, float %88, float %89, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %458 = extractvalue %dx.types.ResRet.f32 %457, 0
  %459 = extractvalue %dx.types.ResRet.f32 %457, 1
  %460 = extractvalue %dx.types.ResRet.f32 %457, 2
  %461 = extractvalue %dx.types.ResRet.f32 %457, 3
  %462 = fmul fast float %461, %90
  %463 = fmul fast float %458, %91
  %464 = fmul fast float %459, %92
  %465 = fmul fast float %460, %93
  br label %466

; <label>:466                                     ; preds = %451, %257
  %467 = phi float [ %93, %257 ], [ %465, %451 ]
  %468 = phi float [ %92, %257 ], [ %464, %451 ]
  %469 = phi float [ %91, %257 ], [ %463, %451 ]
  %470 = phi float [ %90, %257 ], [ %462, %451 ]
  %471 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %438, i32 undef)  ; BufferLoad(srv,index,wot)
  %472 = extractvalue %dx.types.ResRet.i32 %471, 0
  %473 = and i32 %472, 2
  %474 = icmp eq i32 %473, 0
  br i1 %474, label %494, label %475

; <label>:475                                     ; preds = %466
  %476 = add i32 %60, 44
  %477 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %476, i32 undef)  ; BufferLoad(srv,index,wot)
  %478 = extractvalue %dx.types.ResRet.i32 %477, 0
  %479 = and i32 %478, 1
  %480 = icmp ne i32 %479, 0
  %481 = select i1 %480, float %469, float 1.000000e+00
  %482 = add i32 %60, 60
  %483 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %482, i32 undef)  ; BufferLoad(srv,index,wot)
  %484 = extractvalue %dx.types.ResRet.i32 %483, 0
  %485 = and i32 %484, 1
  %486 = icmp ne i32 %485, 0
  %487 = select i1 %486, float %468, float 1.000000e+00
  %488 = add i32 %60, 76
  %489 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %488, i32 undef)  ; BufferLoad(srv,index,wot)
  %490 = extractvalue %dx.types.ResRet.i32 %489, 0
  %491 = and i32 %490, 1
  %492 = icmp ne i32 %491, 0
  %493 = select i1 %492, float %467, float 1.000000e+00
  br label %494

; <label>:494                                     ; preds = %475, %466
  %495 = phi float [ %467, %466 ], [ %493, %475 ]
  %496 = phi float [ %468, %466 ], [ %487, %475 ]
  %497 = phi float [ %469, %466 ], [ %481, %475 ]
  %498 = lshr i32 %472, 20
  %499 = and i32 %498, 3
  %500 = add nuw nsw i32 %499, 1
  %501 = add i32 %60, 24
  %502 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %501, i32 undef)  ; BufferLoad(srv,index,wot)
  %503 = extractvalue %dx.types.ResRet.i32 %502, 0
  %504 = add i32 %60, 28
  %505 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %504, i32 undef)  ; BufferLoad(srv,index,wot)
  %506 = extractvalue %dx.types.ResRet.i32 %505, 0
  %507 = or i32 %506, %503
  %508 = icmp eq i32 %507, 0
  br i1 %508, label %1269, label %509

; <label>:509                                     ; preds = %494
  %510 = and i32 %503, 262144
  %511 = icmp ne i32 %510, 0
  %512 = select i1 %511, float %63, float 1.000000e+00
  %513 = select i1 %511, float %64, float 0.000000e+00
  %514 = select i1 %511, float %65, float 0.000000e+00
  %515 = select i1 %511, float %66, float 1.000000e+00
  %516 = select i1 %511, float %67, float %88
  %517 = select i1 %511, float %68, float %89
  %518 = add i32 %60, 284
  %519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %518, i32 undef)  ; BufferLoad(srv,index,wot)
  %520 = extractvalue %dx.types.ResRet.i32 %519, 0
  %521 = lshr i32 %520, 16
  %522 = call float @dx.op.legacyF16ToF32(i32 131, i32 %521)  ; LegacyF16ToF32(value)
  %523 = fmul fast float %522, 0x3F50624DE0000000
  %524 = add i32 %60, 88
  %525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %524, i32 undef)  ; BufferLoad(srv,index,wot)
  %526 = extractvalue %dx.types.ResRet.i32 %525, 0
  %527 = lshr i32 %526, 16
  %528 = and i32 %527, 255
  %529 = lshr i32 %526, 24
  %530 = add i32 %60, 292
  %531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %530, i32 undef)  ; BufferLoad(srv,index,wot)
  %532 = extractvalue %dx.types.ResRet.i32 %531, 0
  %533 = and i32 %532, 65535
  %534 = call float @dx.op.legacyF16ToF32(i32 131, i32 %533)  ; LegacyF16ToF32(value)
  %535 = lshr i32 %532, 16
  %536 = call float @dx.op.legacyF16ToF32(i32 131, i32 %535)  ; LegacyF16ToF32(value)
  %537 = add i32 %60, 32
  %538 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %537, i32 undef)  ; BufferLoad(srv,index,wot)
  %539 = extractvalue %dx.types.ResRet.i32 %538, 0
  %540 = lshr i32 %539, 22
  %541 = shl nuw nsw i32 %540, 5
  %542 = call float @dx.op.legacyF16ToF32(i32 131, i32 %541)  ; LegacyF16ToF32(value)
  %543 = shl i32 %539, 4
  %544 = and i32 %543, 32752
  %545 = call float @dx.op.legacyF16ToF32(i32 131, i32 %544)  ; LegacyF16ToF32(value)
  %546 = lshr i32 %539, 7
  %547 = and i32 %546, 32752
  %548 = call float @dx.op.legacyF16ToF32(i32 131, i32 %547)  ; LegacyF16ToF32(value)
  %549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %550 = extractvalue %dx.types.CBufRet.f32 %549, 3
  %551 = fmul fast float %550, 1.000000e+03
  %552 = fmul fast float %310, %551
  %553 = call float @dx.op.unary.f32(i32 22, float %552)  ; Frc(value)
  %554 = fadd fast float %553, %300
  %555 = fmul fast float %311, %551
  %556 = call float @dx.op.unary.f32(i32 22, float %555)  ; Frc(value)
  %557 = fadd fast float %556, %302
  %558 = fmul fast float %523, %551
  %559 = call float @dx.op.unary.f32(i32 22, float %558)  ; Frc(value)
  %560 = fmul fast float %559, 0x401921FB60000000
  %561 = fadd fast float %560, %542
  %562 = call float @dx.op.unary.f32(i32 13, float %561)  ; Sin(value)
  %563 = call float @dx.op.unary.f32(i32 12, float %561)  ; Cos(value)
  %564 = fsub fast float -0.000000e+00, %562
  %565 = fadd fast float %516, -5.000000e-01
  %566 = fadd fast float %517, -5.000000e-01
  %567 = fmul fast float %534, %565
  %568 = fmul fast float %536, %566
  %569 = fadd fast float %567, 5.000000e-01
  %570 = fadd fast float %568, 5.000000e-01
  %571 = fmul fast float %545, %569
  %572 = fmul fast float %548, %570
  %573 = fmul fast float %563, %571
  %574 = call float @dx.op.tertiary.f32(i32 46, float %564, float %572, float %573)  ; FMad(a,b,c)
  %575 = fmul fast float %562, %571
  %576 = call float @dx.op.tertiary.f32(i32 46, float %563, float %572, float %575)  ; FMad(a,b,c)
  %577 = fadd fast float %554, %574
  %578 = fadd fast float %557, %576
  %579 = icmp ugt i32 %528, 1
  %580 = icmp ugt i32 %526, 33554431
  %581 = or i1 %580, %579
  br i1 %581, label %582, label %607

; <label>:582                                     ; preds = %509
  %583 = add i32 %60, 228
  %584 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %583, i32 undef)  ; BufferLoad(srv,index,wot)
  %585 = extractvalue %dx.types.ResRet.i32 %584, 0
  %586 = lshr i32 %585, 16
  %587 = call float @dx.op.legacyF16ToF32(i32 131, i32 %586)  ; LegacyF16ToF32(value)
  %588 = fmul fast float %550, %587
  %589 = call float @dx.op.unary.f32(i32 22, float %588)  ; Frc(value)
  %590 = mul nuw nsw i32 %528, %529
  %591 = uitofp i32 %590 to float
  %592 = fmul fast float %589, %591
  %593 = call float @dx.op.unary.f32(i32 27, float %592)  ; Round_ni(value)
  %594 = fptoui float %593 to i32
  %595 = urem i32 %594, %528
  %596 = udiv i32 %594, %529
  %597 = call float @dx.op.unary.f32(i32 22, float %577)  ; Frc(value)
  %598 = call float @dx.op.unary.f32(i32 22, float %578)  ; Frc(value)
  %599 = uitofp i32 %595 to float
  %600 = uitofp i32 %596 to float
  %601 = fadd fast float %597, %599
  %602 = fadd fast float %598, %600
  %603 = uitofp i32 %528 to float
  %604 = uitofp i32 %529 to float
  %605 = fdiv fast float %601, %603
  %606 = fdiv fast float %602, %604
  br label %607

; <label>:607                                     ; preds = %582, %509
  %608 = phi float [ %605, %582 ], [ %577, %509 ]
  %609 = phi float [ %606, %582 ], [ %578, %509 ]
  %610 = and i32 %503, 16777216
  %611 = icmp eq i32 %610, 0
  br i1 %611, label %721, label %612

; <label>:612                                     ; preds = %607
  %613 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %614 = extractvalue %dx.types.CBufRet.f32 %613, 0
  %615 = extractvalue %dx.types.CBufRet.f32 %613, 1
  %616 = extractvalue %dx.types.CBufRet.f32 %613, 2
  %617 = fadd fast float %614, %164
  %618 = fadd fast float %615, %165
  %619 = fadd fast float %616, %166
  %620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %621 = extractvalue %dx.types.CBufRet.f32 %620, 0
  %622 = call float @dx.op.unary.f32(i32 7, float %621)  ; Saturate(value)
  %623 = icmp eq i32 %61, 65535
  br i1 %623, label %718, label %624

; <label>:624                                     ; preds = %612
  %625 = lshr i32 %61, 1
  %626 = shl i32 %625, 2
  %627 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %626, i32 undef)  ; BufferLoad(srv,index,wot)
  %628 = extractvalue %dx.types.ResRet.i32 %627, 0
  %629 = and i32 %61, 1
  %630 = icmp ne i32 %629, 0
  %631 = lshr i32 %628, 16
  %632 = and i32 %628, 65535
  %633 = select i1 %630, i32 %631, i32 %632
  %634 = icmp eq i32 %633, 65535
  br i1 %634, label %714, label %635

; <label>:635                                     ; preds = %624
  %636 = mul nuw nsw i32 %633, 40
  %637 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %636, i32 undef)  ; BufferLoad(srv,index,wot)
  %638 = extractvalue %dx.types.ResRet.f32 %637, 0
  %639 = extractvalue %dx.types.ResRet.f32 %637, 1
  %640 = extractvalue %dx.types.ResRet.f32 %637, 2
  %641 = add nuw nsw i32 %636, 12
  %642 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %641, i32 undef)  ; BufferLoad(srv,index,wot)
  %643 = extractvalue %dx.types.ResRet.f32 %642, 0
  %644 = extractvalue %dx.types.ResRet.f32 %642, 1
  %645 = extractvalue %dx.types.ResRet.f32 %642, 2
  %646 = add nuw nsw i32 %636, 24
  %647 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %646, i32 undef)  ; BufferLoad(srv,index,wot)
  %648 = extractvalue %dx.types.ResRet.f32 %647, 0
  %649 = extractvalue %dx.types.ResRet.f32 %647, 1
  %650 = extractvalue %dx.types.ResRet.f32 %647, 2
  %651 = add nuw nsw i32 %636, 36
  %652 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %651, i32 undef)  ; BufferLoad(srv,index,wot)
  %653 = extractvalue %dx.types.ResRet.f32 %652, 0
  %654 = fsub fast float %617, %638
  %655 = fsub fast float %618, %639
  %656 = fsub fast float %619, %640
  %657 = fmul fast float %653, %654
  %658 = fmul fast float %653, %655
  %659 = fmul fast float %653, %656
  %660 = call float @dx.op.unary.f32(i32 27, float %657)  ; Round_ni(value)
  %661 = call float @dx.op.unary.f32(i32 27, float %658)  ; Round_ni(value)
  %662 = call float @dx.op.unary.f32(i32 27, float %659)  ; Round_ni(value)
  %663 = fadd fast float %660, 5.000000e-01
  %664 = fadd fast float %661, 5.000000e-01
  %665 = fadd fast float %662, 5.000000e-01
  %666 = fmul fast float %663, %643
  %667 = fmul fast float %664, %644
  %668 = fmul fast float %665, %645
  %669 = shl i32 %61, 2
  %670 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %669, i32 undef)  ; BufferLoad(srv,index,wot)
  %671 = extractvalue %dx.types.ResRet.i32 %670, 0
  %672 = add i32 %671, 0
  %673 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %672, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %674 = call float @dx.op.unary.f32(i32 22, float %666)  ; Frc(value)
  %675 = call float @dx.op.unary.f32(i32 22, float %667)  ; Frc(value)
  %676 = call float @dx.op.unary.f32(i32 22, float %668)  ; Frc(value)
  %677 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %673, %dx.types.Handle %55, float %674, float %675, float %676, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %678 = extractvalue %dx.types.ResRet.f32 %677, 0
  %679 = extractvalue %dx.types.ResRet.f32 %677, 1
  %680 = extractvalue %dx.types.ResRet.f32 %677, 2
  %681 = fmul fast float %678, 1.023000e+03
  %682 = fmul fast float %679, 1.023000e+03
  %683 = fmul fast float %680, 1.023000e+03
  %684 = fadd fast float %681, 5.000000e-01
  %685 = fadd fast float %682, 5.000000e-01
  %686 = fadd fast float %683, 5.000000e-01
  %687 = call float @dx.op.unary.f32(i32 27, float %684)  ; Round_ni(value)
  %688 = call float @dx.op.unary.f32(i32 27, float %685)  ; Round_ni(value)
  %689 = call float @dx.op.unary.f32(i32 27, float %686)  ; Round_ni(value)
  %690 = fsub fast float %657, %660
  %691 = fsub fast float %658, %661
  %692 = fsub fast float %659, %662
  %693 = fmul fast float %690, 7.500000e-01
  %694 = fmul fast float %691, 7.500000e-01
  %695 = fmul fast float %692, 7.500000e-01
  %696 = fadd fast float %660, 1.250000e-01
  %697 = fadd fast float %696, %693
  %698 = fadd fast float %697, %687
  %699 = fadd fast float %661, 1.250000e-01
  %700 = fadd fast float %699, %694
  %701 = fadd fast float %700, %688
  %702 = fadd fast float %662, 1.250000e-01
  %703 = fadd fast float %702, %695
  %704 = fadd fast float %703, %689
  %705 = fmul fast float %698, %648
  %706 = fmul fast float %701, %649
  %707 = fmul fast float %704, %650
  %708 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %669, i32 undef)  ; BufferLoad(srv,index,wot)
  %709 = extractvalue %dx.types.ResRet.i32 %708, 0
  %710 = add i32 %709, 0
  %711 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %710, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %712 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %711, %dx.types.Handle %53, float %705, float %706, float %707, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %713 = extractvalue %dx.types.ResRet.f32 %712, 0
  br label %714

; <label>:714                                     ; preds = %635, %624
  %715 = phi float [ %713, %635 ], [ -1.000000e+00, %624 ]
  %716 = fadd fast float %715, %622
  %717 = call float @dx.op.unary.f32(i32 7, float %716)  ; Saturate(value)
  br label %718

; <label>:718                                     ; preds = %714, %612
  %719 = phi float [ %717, %714 ], [ %622, %612 ]
  %720 = fmul fast float %719, %470
  br label %721

; <label>:721                                     ; preds = %718, %607
  %722 = phi float [ %720, %718 ], [ %470, %607 ]
  %723 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %501, i32 undef)  ; BufferLoad(srv,index,wot)
  %724 = extractvalue %dx.types.ResRet.i32 %723, 0
  %725 = and i32 %724, 256
  %726 = icmp eq i32 %725, 0
  br i1 %726, label %773, label %727

; <label>:727                                     ; preds = %721
  %728 = add i32 %60, 488
  %729 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %728, i32 undef)  ; BufferLoad(srv,index,wot)
  %730 = extractvalue %dx.types.ResRet.i32 %729, 0
  %731 = add i32 %730, 0
  %732 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %731, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %733 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %732, %dx.types.Handle %106, float %608, float %609, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %734 = extractvalue %dx.types.ResRet.f32 %733, 0
  %735 = add i32 %60, 100
  %736 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %735, i32 undef)  ; BufferLoad(srv,index,wot)
  %737 = extractvalue %dx.types.ResRet.i32 %736, 0
  %738 = shl i32 %737, 4
  %739 = and i32 %738, 32752
  %740 = call float @dx.op.legacyF16ToF32(i32 131, i32 %739)  ; LegacyF16ToF32(value)
  %741 = lshr i32 %737, 7
  %742 = and i32 %741, 32752
  %743 = call float @dx.op.legacyF16ToF32(i32 131, i32 %742)  ; LegacyF16ToF32(value)
  %744 = fsub fast float 1.000000e+00, %722
  %745 = call float @dx.op.binary.f32(i32 35, float %744, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %746 = bitcast float %722 to i32
  %747 = sitofp i32 %746 to float
  %748 = fadd fast float %747, 0xC1CFBF8940000000
  %749 = fmul fast float %743, %748
  %750 = fadd fast float %749, 0x41CFBF8940000000
  %751 = fptosi float %750 to i32
  %752 = bitcast i32 %751 to float
  %753 = bitcast float %745 to i32
  %754 = sitofp i32 %753 to float
  %755 = fadd fast float %754, 0xC1CFBF8940000000
  %756 = fmul fast float %755, %743
  %757 = fadd fast float %756, 0x41CFBF8940000000
  %758 = fptosi float %757 to i32
  %759 = bitcast i32 %758 to float
  %760 = fmul fast float %752, %740
  %761 = fmul fast float %759, %740
  %762 = fsub fast float %745, %760
  %763 = fadd fast float %761, %745
  %764 = call float @dx.op.unary.f32(i32 7, float %762)  ; Saturate(value)
  %765 = call float @dx.op.unary.f32(i32 7, float %763)  ; Saturate(value)
  %766 = fsub fast float %734, %764
  %767 = fsub fast float %765, %764
  %768 = bitcast float %767 to i32
  %769 = sub nsw i32 2129859010, %768
  %770 = bitcast i32 %769 to float
  %771 = fmul fast float %770, %766
  %772 = call float @dx.op.unary.f32(i32 7, float %771)  ; Saturate(value)
  br label %773

; <label>:773                                     ; preds = %727, %721
  %774 = phi float [ %772, %727 ], [ %722, %721 ]
  %775 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %501, i32 undef)  ; BufferLoad(srv,index,wot)
  %776 = extractvalue %dx.types.ResRet.i32 %775, 0
  %777 = and i32 %776, 128
  %778 = icmp eq i32 %777, 0
  br i1 %778, label %795, label %779

; <label>:779                                     ; preds = %773
  %780 = add i32 %60, 472
  %781 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %780, i32 undef)  ; BufferLoad(srv,index,wot)
  %782 = extractvalue %dx.types.ResRet.i32 %781, 0
  %783 = add i32 %782, 0
  %784 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %783, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %785 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %784, %dx.types.Handle %106, float %608, float %609, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %786 = extractvalue %dx.types.ResRet.f32 %785, 0
  %787 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %501, i32 undef)  ; BufferLoad(srv,index,wot)
  %788 = extractvalue %dx.types.ResRet.i32 %787, 0
  %789 = and i32 %788, 524288
  %790 = icmp ne i32 %789, 0
  %791 = fcmp fast ogt float %786, 0x3FE0101020000000
  %792 = select i1 %791, float 1.000000e+00, float 0.000000e+00
  %793 = select i1 %790, float %792, float %786
  %794 = fmul fast float %793, %774
  br label %795

; <label>:795                                     ; preds = %779, %773
  %796 = phi float [ %794, %779 ], [ %774, %773 ]
  %797 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %501, i32 undef)  ; BufferLoad(srv,index,wot)
  %798 = extractvalue %dx.types.ResRet.i32 %797, 0
  %799 = and i32 %798, 16
  %800 = icmp eq i32 %799, 0
  br i1 %800, label %999, label %801

; <label>:801                                     ; preds = %795
  %802 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %524, i32 undef)  ; BufferLoad(srv,index,wot)
  %803 = extractvalue %dx.types.ResRet.i32 %802, 0
  %804 = add i32 %60, 424
  %805 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %804, i32 undef)  ; BufferLoad(srv,index,wot)
  %806 = extractvalue %dx.types.ResRet.i32 %805, 0
  %807 = add i32 %806, 0
  %808 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %807, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %809 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %808, %dx.types.Handle %105, float %608, float %609, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %810 = extractvalue %dx.types.ResRet.f32 %809, 0
  %811 = extractvalue %dx.types.ResRet.f32 %809, 1
  %812 = extractvalue %dx.types.ResRet.f32 %809, 2
  %813 = extractvalue %dx.types.ResRet.f32 %809, 3
  %814 = and i32 %803, 255
  %815 = uitofp i32 %814 to float
  %816 = lshr i32 %803, 8
  %817 = and i32 %816, 255
  %818 = uitofp i32 %817 to float
  %819 = fmul fast float %813, %815
  %820 = fadd fast float %819, %818
  %821 = fmul fast float %820, 0x3F70101000000000
  %822 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %501, i32 undef)  ; BufferLoad(srv,index,wot)
  %823 = extractvalue %dx.types.ResRet.i32 %822, 0
  %824 = and i32 %823, 512
  %825 = icmp eq i32 %824, 0
  br i1 %825, label %834, label %826

; <label>:826                                     ; preds = %801
  %827 = add i32 %60, 508
  %828 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %827, i32 undef)  ; BufferLoad(srv,index,wot)
  %829 = extractvalue %dx.types.ResRet.i32 %828, 0
  %830 = add i32 %829, 0
  %831 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %830, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %832 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %831, %dx.types.Handle %106, float %608, float %609, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %833 = extractvalue %dx.types.ResRet.f32 %832, 0
  br label %834

; <label>:834                                     ; preds = %826, %801
  %835 = phi float [ %833, %826 ], [ 1.000000e+00, %801 ]
  %836 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %501, i32 undef)  ; BufferLoad(srv,index,wot)
  %837 = extractvalue %dx.types.ResRet.i32 %836, 0
  %838 = and i32 %837, 33554432
  %839 = icmp eq i32 %838, 0
  br i1 %839, label %946, label %840

; <label>:840                                     ; preds = %834
  %841 = add i32 %60, 224
  %842 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %841, i32 undef)  ; BufferLoad(srv,index,wot)
  %843 = extractvalue %dx.types.ResRet.i32 %842, 0
  %844 = and i32 %843, 65535
  %845 = call float @dx.op.legacyF16ToF32(i32 131, i32 %844)  ; LegacyF16ToF32(value)
  %846 = lshr i32 %843, 16
  %847 = call float @dx.op.legacyF16ToF32(i32 131, i32 %846)  ; LegacyF16ToF32(value)
  %848 = add i32 %60, 228
  %849 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %848, i32 undef)  ; BufferLoad(srv,index,wot)
  %850 = extractvalue %dx.types.ResRet.i32 %849, 0
  %851 = and i32 %850, 65535
  %852 = call float @dx.op.legacyF16ToF32(i32 131, i32 %851)  ; LegacyF16ToF32(value)
  %853 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %282, i32 undef)  ; BufferLoad(srv,index,wot)
  %854 = extractvalue %dx.types.ResRet.i32 %853, 0
  %855 = lshr i32 %854, 24
  %856 = uitofp i32 %855 to float
  %857 = fmul fast float %856, 0x3F70101020000000
  %858 = and i32 %854, 255
  %859 = uitofp i32 %858 to float
  %860 = fmul fast float %859, 0x3F70101020000000
  %861 = lshr i32 %854, 8
  %862 = and i32 %861, 255
  %863 = uitofp i32 %862 to float
  %864 = fmul fast float %863, 0x3F70101020000000
  %865 = lshr i32 %854, 16
  %866 = and i32 %865, 255
  %867 = uitofp i32 %866 to float
  %868 = fmul fast float %867, 0x3F70101020000000
  %869 = add i32 %60, 220
  %870 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %869, i32 undef)  ; BufferLoad(srv,index,wot)
  %871 = extractvalue %dx.types.ResRet.i32 %870, 0
  %872 = lshr i32 %871, 24
  %873 = uitofp i32 %872 to float
  %874 = fmul fast float %873, 0x3F70101020000000
  %875 = and i32 %871, 255
  %876 = uitofp i32 %875 to float
  %877 = fmul fast float %876, 0x3F70101020000000
  %878 = lshr i32 %871, 8
  %879 = and i32 %878, 255
  %880 = uitofp i32 %879 to float
  %881 = fmul fast float %880, 0x3F70101020000000
  %882 = lshr i32 %871, 16
  %883 = and i32 %882, 255
  %884 = uitofp i32 %883 to float
  %885 = fmul fast float %884, 0x3F70101020000000
  %886 = bitcast float %810 to i32
  %887 = ashr i32 %886, 1
  %888 = sub nsw i32 1597463174, %887
  %889 = bitcast i32 %888 to float
  %890 = fmul fast float %810, 5.000000e-01
  %891 = fmul fast float %889, %889
  %892 = fmul fast float %891, %890
  %893 = fsub fast float 1.500000e+00, %892
  %894 = fmul fast float %889, %810
  %895 = fmul fast float %894, %893
  %896 = bitcast float %811 to i32
  %897 = ashr i32 %896, 1
  %898 = sub nsw i32 1597463174, %897
  %899 = bitcast i32 %898 to float
  %900 = fmul fast float %811, 5.000000e-01
  %901 = fmul fast float %899, %899
  %902 = fmul fast float %901, %900
  %903 = fsub fast float 1.500000e+00, %902
  %904 = fmul fast float %899, %811
  %905 = fmul fast float %904, %903
  %906 = bitcast float %812 to i32
  %907 = ashr i32 %906, 1
  %908 = sub nsw i32 1597463174, %907
  %909 = bitcast i32 %908 to float
  %910 = fmul fast float %812, 5.000000e-01
  %911 = fmul fast float %909, %909
  %912 = fmul fast float %911, %910
  %913 = fsub fast float 1.500000e+00, %912
  %914 = fmul fast float %909, %812
  %915 = fmul fast float %914, %913
  %916 = fsub fast float %895, %877
  %917 = fsub fast float %905, %881
  %918 = fsub fast float %915, %885
  %919 = fmul fast float %916, %845
  %920 = fmul fast float %917, %847
  %921 = fmul fast float %918, %852
  %922 = fadd fast float %919, %860
  %923 = fadd fast float %920, %864
  %924 = fadd fast float %921, %868
  %925 = call float @dx.op.unary.f32(i32 7, float %922)  ; Saturate(value)
  %926 = call float @dx.op.unary.f32(i32 7, float %923)  ; Saturate(value)
  %927 = call float @dx.op.unary.f32(i32 7, float %924)  ; Saturate(value)
  %928 = fmul fast float %925, %925
  %929 = fmul fast float %926, %926
  %930 = fmul fast float %927, %927
  %931 = fsub fast float %928, %810
  %932 = fsub fast float %929, %811
  %933 = fsub fast float %930, %812
  %934 = fmul fast float %931, %835
  %935 = fmul fast float %932, %835
  %936 = fmul fast float %933, %835
  %937 = fadd fast float %934, %810
  %938 = fadd fast float %935, %811
  %939 = fadd fast float %936, %812
  %940 = fadd fast float %857, %821
  %941 = fsub fast float %940, %874
  %942 = call float @dx.op.unary.f32(i32 7, float %941)  ; Saturate(value)
  %943 = fsub fast float %942, %821
  %944 = fmul fast float %943, %835
  %945 = fadd fast float %944, %821
  br label %999

; <label>:946                                     ; preds = %834
  %947 = and i32 %837, 134217728
  %948 = icmp eq i32 %947, 0
  br i1 %948, label %983, label %949

; <label>:949                                     ; preds = %946
  %950 = call float @dx.op.unary.f32(i32 24, float %287)  ; Sqrt(value)
  %951 = call float @dx.op.unary.f32(i32 24, float %291)  ; Sqrt(value)
  %952 = call float @dx.op.unary.f32(i32 24, float %295)  ; Sqrt(value)
  %953 = fadd fast float %950, -5.000000e-01
  %954 = fadd fast float %951, -5.000000e-01
  %955 = fadd fast float %952, -5.000000e-01
  %956 = fmul fast float %953, %835
  %957 = fmul fast float %954, %835
  %958 = fmul fast float %955, %835
  %959 = fadd fast float %956, 5.000000e-01
  %960 = fadd fast float %957, 5.000000e-01
  %961 = fadd fast float %958, 5.000000e-01
  %962 = call float @dx.op.unary.f32(i32 24, float %810)  ; Sqrt(value)
  %963 = call float @dx.op.unary.f32(i32 24, float %811)  ; Sqrt(value)
  %964 = call float @dx.op.unary.f32(i32 24, float %812)  ; Sqrt(value)
  %965 = fmul fast float %959, 2.000000e+00
  %966 = fsub fast float 1.000000e+00, %965
  %967 = fmul fast float %966, %962
  %968 = fadd fast float %967, %965
  %969 = fmul fast float %968, %962
  %970 = fmul fast float %960, 2.000000e+00
  %971 = fsub fast float 1.000000e+00, %970
  %972 = fmul fast float %971, %963
  %973 = fadd fast float %972, %970
  %974 = fmul fast float %973, %963
  %975 = fmul fast float %961, 2.000000e+00
  %976 = fsub fast float 1.000000e+00, %975
  %977 = fmul fast float %976, %964
  %978 = fadd fast float %977, %975
  %979 = fmul fast float %978, %964
  %980 = fmul fast float %969, %969
  %981 = fmul fast float %974, %974
  %982 = fmul fast float %979, %979
  br label %999

; <label>:983                                     ; preds = %946
  %984 = fmul fast float %287, %287
  %985 = fmul fast float %291, %291
  %986 = fmul fast float %295, %295
  %987 = fadd fast float %984, -1.000000e+00
  %988 = fadd fast float %985, -1.000000e+00
  %989 = fadd fast float %986, -1.000000e+00
  %990 = fmul fast float %835, %987
  %991 = fmul fast float %835, %988
  %992 = fmul fast float %835, %989
  %993 = fadd fast float %990, 1.000000e+00
  %994 = fadd fast float %991, 1.000000e+00
  %995 = fadd fast float %992, 1.000000e+00
  %996 = fmul fast float %993, %810
  %997 = fmul fast float %994, %811
  %998 = fmul fast float %995, %812
  br label %999

; <label>:999                                     ; preds = %983, %949, %840, %795
  %1000 = phi float [ %945, %840 ], [ %821, %949 ], [ %821, %983 ], [ 0x3FA23C0BE0000000, %795 ]
  %1001 = phi float [ %937, %840 ], [ %980, %949 ], [ %996, %983 ], [ 1.000000e+00, %795 ]
  %1002 = phi float [ %938, %840 ], [ %981, %949 ], [ %997, %983 ], [ 1.000000e+00, %795 ]
  %1003 = phi float [ %939, %840 ], [ %982, %949 ], [ %998, %983 ], [ 1.000000e+00, %795 ]
  %1004 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1005 = extractvalue %dx.types.CBufRet.i32 %1004, 1
  %1006 = and i32 %1005, 1
  %1007 = icmp ne i32 %1006, 0
  %1008 = add i32 %60, 356
  %1009 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1008, i32 undef)  ; BufferLoad(srv,index,wot)
  %1010 = extractvalue %dx.types.ResRet.i32 %1009, 0
  %1011 = and i32 %1010, 32
  %1012 = icmp ne i32 %1011, 0
  %1013 = and i1 %1007, %1012
  %1014 = select i1 %1013, float 1.000000e+00, float %1001
  %1015 = select i1 %1013, float 0x3FD3333340000000, float %1002
  %1016 = select i1 %1013, float 0x3FD3333340000000, float %1003
  %1017 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %501, i32 undef)  ; BufferLoad(srv,index,wot)
  %1018 = extractvalue %dx.types.ResRet.i32 %1017, 0
  %1019 = and i32 %1018, 32
  %1020 = icmp eq i32 %1019, 0
  br i1 %1020, label %1093, label %1021

; <label>:1021                                    ; preds = %999
  %1022 = add i32 %60, 92
  %1023 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1022, i32 undef)  ; BufferLoad(srv,index,wot)
  %1024 = extractvalue %dx.types.ResRet.i32 %1023, 0
  %1025 = add i32 %60, 440
  %1026 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1025, i32 undef)  ; BufferLoad(srv,index,wot)
  %1027 = extractvalue %dx.types.ResRet.i32 %1026, 0
  %1028 = add i32 %1027, 0
  %1029 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1028, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1030 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1029, %dx.types.Handle %105, float %608, float %609, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1031 = extractvalue %dx.types.ResRet.f32 %1030, 0
  %1032 = extractvalue %dx.types.ResRet.f32 %1030, 1
  %1033 = extractvalue %dx.types.ResRet.f32 %1030, 2
  %1034 = extractvalue %dx.types.ResRet.f32 %1030, 3
  %1035 = and i32 %1024, 255
  %1036 = uitofp i32 %1035 to float
  %1037 = lshr i32 %1024, 8
  %1038 = and i32 %1037, 255
  %1039 = uitofp i32 %1038 to float
  %1040 = lshr i32 %1024, 16
  %1041 = and i32 %1040, 255
  %1042 = uitofp i32 %1041 to float
  %1043 = fmul fast float %1042, 0x3F70101000000000
  %1044 = fmul fast float %1031, %1036
  %1045 = fadd fast float %1044, %1039
  %1046 = fmul fast float %1045, 0x3F70101000000000
  %1047 = fadd fast float %1032, -5.000000e-01
  %1048 = fadd fast float %1034, -5.000000e-01
  %1049 = fmul fast float %1047, %1043
  %1050 = fmul fast float %1048, %1043
  %1051 = fadd fast float %1049, 5.000000e-01
  %1052 = fadd fast float %1050, 5.000000e-01
  %1053 = fmul fast float %1051, 2.000000e+00
  %1054 = fadd fast float %1053, -1.000000e+00
  %1055 = fmul fast float %1052, 2.000000e+00
  %1056 = fadd fast float %1055, -1.000000e+00
  %1057 = fadd fast float %1054, %1056
  %1058 = fmul fast float %1057, 5.000000e-01
  %1059 = fsub fast float %1054, %1056
  %1060 = fmul fast float %1059, 5.000000e-01
  %1061 = call float @dx.op.unary.f32(i32 6, float %1058)  ; FAbs(value)
  %1062 = fsub fast float 1.000000e+00, %1061
  %1063 = call float @dx.op.unary.f32(i32 6, float %1060)  ; FAbs(value)
  %1064 = fsub fast float %1062, %1063
  %1065 = call float @dx.op.dot3.f32(i32 55, float %1058, float %1060, float %1064, float %1058, float %1060, float %1064)  ; Dot3(ax,ay,az,bx,by,bz)
  %1066 = call float @dx.op.unary.f32(i32 25, float %1065)  ; Rsqrt(value)
  %1067 = fmul fast float %1058, %1066
  %1068 = fmul fast float %1060, %1066
  %1069 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %501, i32 undef)  ; BufferLoad(srv,index,wot)
  %1070 = extractvalue %dx.types.ResRet.i32 %1069, 0
  %1071 = and i32 %1070, 67108864
  %1072 = icmp eq i32 %1071, 0
  br i1 %1072, label %1089, label %1073

; <label>:1073                                    ; preds = %1021
  %1074 = add i32 %60, 280
  %1075 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1074, i32 undef)  ; BufferLoad(srv,index,wot)
  %1076 = extractvalue %dx.types.ResRet.i32 %1075, 0
  %1077 = and i32 %1076, 65535
  %1078 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1077)  ; LegacyF16ToF32(value)
  %1079 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %518, i32 undef)  ; BufferLoad(srv,index,wot)
  %1080 = extractvalue %dx.types.ResRet.i32 %1079, 0
  %1081 = and i32 %1080, 65535
  %1082 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1081)  ; LegacyF16ToF32(value)
  %1083 = lshr i32 %1076, 16
  %1084 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1083)  ; LegacyF16ToF32(value)
  %1085 = fsub fast float %1046, %1084
  %1086 = fmul fast float %1085, %1078
  %1087 = fadd fast float %1086, %1082
  %1088 = call float @dx.op.unary.f32(i32 7, float %1087)  ; Saturate(value)
  br label %1089

; <label>:1089                                    ; preds = %1073, %1021
  %1090 = phi float [ %1088, %1073 ], [ %1046, %1021 ]
  %1091 = call float @dx.op.dot2.f32(i32 54, float %1067, float %1068, float %512, float %513)  ; Dot2(ax,ay,bx,by)
  %1092 = call float @dx.op.dot2.f32(i32 54, float %1067, float %1068, float %514, float %515)  ; Dot2(ax,ay,bx,by)
  br label %1093

; <label>:1093                                    ; preds = %1089, %999
  %1094 = phi float [ %1090, %1089 ], [ 0x3FD6666660000000, %999 ]
  %1095 = phi float [ %1091, %1089 ], [ 0.000000e+00, %999 ]
  %1096 = phi float [ %1092, %1089 ], [ 0.000000e+00, %999 ]
  %1097 = phi float [ %1033, %1089 ], [ 1.000000e+00, %999 ]
  %1098 = add i32 %60, 160
  %1099 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1098, i32 undef)  ; BufferLoad(srv,index,wot)
  %1100 = extractvalue %dx.types.ResRet.i32 %1099, 0
  %1101 = lshr i32 %1100, 22
  %1102 = shl nuw nsw i32 %1101, 5
  %1103 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1102)  ; LegacyF16ToF32(value)
  %1104 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %501, i32 undef)  ; BufferLoad(srv,index,wot)
  %1105 = extractvalue %dx.types.ResRet.i32 %1104, 0
  %1106 = and i32 %1105, 64
  %1107 = icmp eq i32 %1106, 0
  br i1 %1107, label %1141, label %1108

; <label>:1108                                    ; preds = %1093
  %1109 = add i32 %60, 456
  %1110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1109, i32 undef)  ; BufferLoad(srv,index,wot)
  %1111 = extractvalue %dx.types.ResRet.i32 %1110, 0
  %1112 = add i32 %1111, 0
  %1113 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1112, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1114 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %501, i32 undef)  ; BufferLoad(srv,index,wot)
  %1115 = extractvalue %dx.types.ResRet.i32 %1114, 0
  %1116 = and i32 %1115, 131072
  %1117 = icmp eq i32 %1116, 0
  %1118 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1113, %dx.types.Handle %105, float %608, float %609, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1119 = extractvalue %dx.types.ResRet.f32 %1118, 0
  %1120 = extractvalue %dx.types.ResRet.f32 %1118, 1
  %1121 = extractvalue %dx.types.ResRet.f32 %1118, 2
  %1122 = fmul fast float %1119, %275
  %1123 = fmul fast float %1120, %278
  %1124 = fmul fast float %1121, %281
  br i1 %1117, label %1131, label %1125

; <label>:1125                                    ; preds = %1108
  %1126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1127 = extractvalue %dx.types.CBufRet.f32 %1126, 0
  %1128 = fmul fast float %1127, %1122
  %1129 = fmul fast float %1127, %1123
  %1130 = fmul fast float %1127, %1124
  br label %1131

; <label>:1131                                    ; preds = %1125, %1108
  %1132 = phi float [ %1128, %1125 ], [ %1122, %1108 ]
  %1133 = phi float [ %1129, %1125 ], [ %1123, %1108 ]
  %1134 = phi float [ %1130, %1125 ], [ %1124, %1108 ]
  %1135 = fmul fast float %1132, %1103
  %1136 = select i1 %258, float %1135, float %1132
  %1137 = call float @dx.op.dot3.f32(i32 55, float %1136, float %1133, float %1134, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1138 = select i1 %258, float 0.000000e+00, float %1132
  %1139 = select i1 %258, float %1137, float %1133
  %1140 = select i1 %258, float 0.000000e+00, float %1134
  br label %1141

; <label>:1141                                    ; preds = %1131, %1093
  %1142 = phi float [ %1138, %1131 ], [ 0.000000e+00, %1093 ]
  %1143 = phi float [ %1139, %1131 ], [ 0.000000e+00, %1093 ]
  %1144 = phi float [ %1140, %1131 ], [ 0.000000e+00, %1093 ]
  %1145 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %501, i32 undef)  ; BufferLoad(srv,index,wot)
  %1146 = extractvalue %dx.types.ResRet.i32 %1145, 0
  %1147 = and i32 %1146, 1024
  %1148 = icmp eq i32 %1147, 0
  br i1 %1148, label %1179, label %1149

; <label>:1149                                    ; preds = %1141
  %1150 = add i32 %60, 152
  %1151 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1150, i32 undef)  ; BufferLoad(srv,index,wot)
  %1152 = extractvalue %dx.types.ResRet.i32 %1151, 0
  %1153 = and i32 %1152, 255
  %1154 = uitofp i32 %1153 to float
  %1155 = fmul fast float %1154, 0x3F70101020000000
  %1156 = lshr i32 %1152, 8
  %1157 = and i32 %1156, 255
  %1158 = uitofp i32 %1157 to float
  %1159 = fmul fast float %1158, 0x3F70101020000000
  %1160 = lshr i32 %1152, 16
  %1161 = and i32 %1160, 255
  %1162 = uitofp i32 %1161 to float
  %1163 = fmul fast float %1162, 0x3F70101020000000
  %1164 = fmul fast float %1155, %1155
  %1165 = fmul fast float %1159, %1159
  %1166 = fmul fast float %1163, %1163
  %1167 = add i32 %60, 524
  %1168 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1167, i32 undef)  ; BufferLoad(srv,index,wot)
  %1169 = extractvalue %dx.types.ResRet.i32 %1168, 0
  %1170 = add i32 %1169, 0
  %1171 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1170, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1172 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1171, %dx.types.Handle %106, float %608, float %609, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1173 = extractvalue %dx.types.ResRet.f32 %1172, 0
  %1174 = extractvalue %dx.types.ResRet.f32 %1172, 1
  %1175 = extractvalue %dx.types.ResRet.f32 %1172, 2
  %1176 = fmul fast float %1164, %1173
  %1177 = fmul fast float %1165, %1174
  %1178 = fmul fast float %1166, %1175
  br label %1179

; <label>:1179                                    ; preds = %1149, %1141
  %1180 = phi float [ %1176, %1149 ], [ 0.000000e+00, %1141 ]
  %1181 = phi float [ %1177, %1149 ], [ 0.000000e+00, %1141 ]
  %1182 = phi float [ %1178, %1149 ], [ 0.000000e+00, %1141 ]
  %1183 = fcmp fast ogt float %1180, 0.000000e+00
  %1184 = fcmp fast ogt float %1181, 0.000000e+00
  %1185 = fcmp fast ogt float %1182, 0.000000e+00
  %1186 = call float @dx.op.unary.f32(i32 23, float %1180)  ; Log(value)
  %1187 = call float @dx.op.unary.f32(i32 23, float %1181)  ; Log(value)
  %1188 = call float @dx.op.unary.f32(i32 23, float %1182)  ; Log(value)
  %1189 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1098, i32 undef)  ; BufferLoad(srv,index,wot)
  %1190 = extractvalue %dx.types.ResRet.i32 %1189, 0
  %1191 = lshr i32 %1190, 7
  %1192 = and i32 %1191, 32752
  %1193 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1192)  ; LegacyF16ToF32(value)
  %1194 = fmul fast float %1186, 0xBFE62E4300000000
  %1195 = fmul fast float %1194, %1193
  %1196 = fmul fast float %1187, 0xBFE62E4300000000
  %1197 = fmul fast float %1196, %1193
  %1198 = fmul fast float %1188, 0xBFE62E4300000000
  %1199 = fmul fast float %1198, %1193
  %1200 = select i1 %1183, float %1195, float 1.270000e+02
  %1201 = select i1 %1184, float %1197, float 1.270000e+02
  %1202 = select i1 %1185, float %1199, float 1.270000e+02
  %1203 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %501, i32 undef)  ; BufferLoad(srv,index,wot)
  %1204 = extractvalue %dx.types.ResRet.i32 %1203, 0
  %1205 = and i32 %1204, 10240
  %1206 = icmp eq i32 %1205, 0
  br i1 %1206, label %1251, label %1207

; <label>:1207                                    ; preds = %1179
  %1208 = add i32 %60, 540
  %1209 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1208, i32 undef)  ; BufferLoad(srv,index,wot)
  %1210 = extractvalue %dx.types.ResRet.i32 %1209, 0
  %1211 = add i32 %1210, 0
  %1212 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1211, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1213 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1212, %dx.types.Handle %106, float %608, float %609, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1214 = extractvalue %dx.types.ResRet.f32 %1213, 1
  %1215 = extractvalue %dx.types.ResRet.f32 %1213, 3
  %1216 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %501, i32 undef)  ; BufferLoad(srv,index,wot)
  %1217 = extractvalue %dx.types.ResRet.i32 %1216, 0
  %1218 = and i32 %1217, 1048576
  %1219 = icmp ne i32 %1218, 0
  %1220 = and i32 %1217, 8192
  %1221 = icmp eq i32 %1220, 0
  br i1 %1221, label %1237, label %1222

; <label>:1222                                    ; preds = %1207
  %1223 = extractvalue %dx.types.ResRet.f32 %1213, 2
  %1224 = select i1 %1219, float %1223, float %1214
  %1225 = extractvalue %dx.types.ResRet.f32 %1213, 0
  %1226 = select i1 %1219, float %1225, float %1214
  %1227 = add i32 %60, 96
  %1228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1227, i32 undef)  ; BufferLoad(srv,index,wot)
  %1229 = extractvalue %dx.types.ResRet.i32 %1228, 0
  %1230 = lshr i32 %1229, 16
  %1231 = and i32 %1230, 255
  %1232 = uitofp i32 %1231 to float
  %1233 = fmul fast float %1232, 0x3F80101020000000
  %1234 = fmul fast float %1233, %1226
  %1235 = fmul fast float %1233, %1214
  %1236 = fmul fast float %1233, %1224
  br label %1237

; <label>:1237                                    ; preds = %1222, %1207
  %1238 = phi float [ %1234, %1222 ], [ 0.000000e+00, %1207 ]
  %1239 = phi float [ %1235, %1222 ], [ 0.000000e+00, %1207 ]
  %1240 = phi float [ %1236, %1222 ], [ 0.000000e+00, %1207 ]
  %1241 = and i32 %1217, 2048
  %1242 = icmp eq i32 %1241, 0
  br i1 %1242, label %1251, label %1243

; <label>:1243                                    ; preds = %1237
  %1244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1098, i32 undef)  ; BufferLoad(srv,index,wot)
  %1245 = extractvalue %dx.types.ResRet.i32 %1244, 0
  %1246 = shl i32 %1245, 4
  %1247 = and i32 %1246, 32752
  %1248 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1247)  ; LegacyF16ToF32(value)
  %1249 = fmul fast float %1248, %1215
  %1250 = call float @dx.op.binary.f32(i32 35, float %1249, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1251

; <label>:1251                                    ; preds = %1243, %1237, %1179
  %1252 = phi float [ %1238, %1243 ], [ %1238, %1237 ], [ 0.000000e+00, %1179 ]
  %1253 = phi float [ %1239, %1243 ], [ %1239, %1237 ], [ 0.000000e+00, %1179 ]
  %1254 = phi float [ %1240, %1243 ], [ %1240, %1237 ], [ 0.000000e+00, %1179 ]
  %1255 = phi float [ %1250, %1243 ], [ 0x3F70101020000000, %1237 ], [ 0x3F70101020000000, %1179 ]
  %1256 = add i32 %60, 96
  %1257 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1256, i32 undef)  ; BufferLoad(srv,index,wot)
  %1258 = extractvalue %dx.types.ResRet.i32 %1257, 0
  %1259 = and i32 %1258, 255
  %1260 = uitofp i32 %1259 to float
  %1261 = lshr i32 %1258, 8
  %1262 = and i32 %1261, 255
  %1263 = uitofp i32 %1262 to float
  %1264 = call float @dx.op.dot3.f32(i32 55, float %1014, float %1015, float %1016, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1265 = fmul fast float %1263, %1264
  %1266 = fadd fast float %1265, %1260
  %1267 = fmul fast float %1266, 0x3F70101020000000
  %1268 = call float @dx.op.unary.f32(i32 7, float %1267)  ; Saturate(value)
  br label %1269

; <label>:1269                                    ; preds = %1251, %494
  %1270 = phi float [ 0.000000e+00, %494 ], [ %1095, %1251 ]
  %1271 = phi float [ 0.000000e+00, %494 ], [ %1096, %1251 ]
  %1272 = phi float [ 0.000000e+00, %494 ], [ %1014, %1251 ]
  %1273 = phi float [ 0.000000e+00, %494 ], [ %1015, %1251 ]
  %1274 = phi float [ 0.000000e+00, %494 ], [ %1016, %1251 ]
  %1275 = phi float [ 0.000000e+00, %494 ], [ %1252, %1251 ]
  %1276 = phi float [ 0.000000e+00, %494 ], [ %1253, %1251 ]
  %1277 = phi float [ 0.000000e+00, %494 ], [ %1254, %1251 ]
  %1278 = phi float [ 0.000000e+00, %494 ], [ %1200, %1251 ]
  %1279 = phi float [ 0.000000e+00, %494 ], [ %1201, %1251 ]
  %1280 = phi float [ 0.000000e+00, %494 ], [ %1202, %1251 ]
  %1281 = phi float [ 0.000000e+00, %494 ], [ %1142, %1251 ]
  %1282 = phi float [ 0.000000e+00, %494 ], [ %1143, %1251 ]
  %1283 = phi float [ 0.000000e+00, %494 ], [ %1144, %1251 ]
  %1284 = phi float [ 0.000000e+00, %494 ], [ %1000, %1251 ]
  %1285 = phi float [ 0.000000e+00, %494 ], [ %796, %1251 ]
  %1286 = phi float [ 0.000000e+00, %494 ], [ %1094, %1251 ]
  %1287 = phi float [ 0.000000e+00, %494 ], [ %1097, %1251 ]
  %1288 = phi float [ 0.000000e+00, %494 ], [ %1255, %1251 ]
  %1289 = phi float [ 0.000000e+00, %494 ], [ %1268, %1251 ]
  br i1 %442, label %2327, label %1290

; <label>:1290                                    ; preds = %1269
  %1291 = icmp ult i32 %500, 2
  %1292 = add i32 %60, 40
  %1293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1292, i32 undef)  ; BufferLoad(srv,index,wot)
  %1294 = extractvalue %dx.types.ResRet.i32 %1293, 0
  %1295 = add i32 %60, 44
  %1296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1295, i32 undef)  ; BufferLoad(srv,index,wot)
  %1297 = extractvalue %dx.types.ResRet.i32 %1296, 0
  %1298 = or i32 %1297, %1294
  %1299 = icmp eq i32 %1298, 0
  br i1 %1299, label %2327, label %1300

; <label>:1300                                    ; preds = %1290
  %1301 = and i32 %1294, 262144
  %1302 = icmp ne i32 %1301, 0
  %1303 = select i1 %1302, float %63, float 1.000000e+00
  %1304 = select i1 %1302, float %64, float 0.000000e+00
  %1305 = select i1 %1302, float %65, float 0.000000e+00
  %1306 = select i1 %1302, float %66, float 1.000000e+00
  %1307 = select i1 %1302, float %67, float %88
  %1308 = select i1 %1302, float %68, float %89
  %1309 = add i32 %60, 300
  %1310 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1309, i32 undef)  ; BufferLoad(srv,index,wot)
  %1311 = extractvalue %dx.types.ResRet.i32 %1310, 0
  %1312 = lshr i32 %1311, 16
  %1313 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1312)  ; LegacyF16ToF32(value)
  %1314 = fmul fast float %1313, 0x3F50624DE0000000
  %1315 = add i32 %60, 104
  %1316 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1315, i32 undef)  ; BufferLoad(srv,index,wot)
  %1317 = extractvalue %dx.types.ResRet.i32 %1316, 0
  %1318 = lshr i32 %1317, 16
  %1319 = and i32 %1318, 255
  %1320 = lshr i32 %1317, 24
  %1321 = add i32 %60, 308
  %1322 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1321, i32 undef)  ; BufferLoad(srv,index,wot)
  %1323 = extractvalue %dx.types.ResRet.i32 %1322, 0
  %1324 = and i32 %1323, 65535
  %1325 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1324)  ; LegacyF16ToF32(value)
  %1326 = lshr i32 %1323, 16
  %1327 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1326)  ; LegacyF16ToF32(value)
  %1328 = add i32 %60, 48
  %1329 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1328, i32 undef)  ; BufferLoad(srv,index,wot)
  %1330 = extractvalue %dx.types.ResRet.i32 %1329, 0
  %1331 = lshr i32 %1330, 22
  %1332 = shl nuw nsw i32 %1331, 5
  %1333 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1332)  ; LegacyF16ToF32(value)
  %1334 = shl i32 %1330, 4
  %1335 = and i32 %1334, 32752
  %1336 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1335)  ; LegacyF16ToF32(value)
  %1337 = lshr i32 %1330, 7
  %1338 = and i32 %1337, 32752
  %1339 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1338)  ; LegacyF16ToF32(value)
  %1340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1341 = extractvalue %dx.types.CBufRet.f32 %1340, 3
  %1342 = fmul fast float %1341, 1.000000e+03
  %1343 = fmul fast float %352, %1342
  %1344 = call float @dx.op.unary.f32(i32 22, float %1343)  ; Frc(value)
  %1345 = fadd fast float %1344, %342
  %1346 = fmul fast float %353, %1342
  %1347 = call float @dx.op.unary.f32(i32 22, float %1346)  ; Frc(value)
  %1348 = fadd fast float %1347, %344
  %1349 = fmul fast float %1314, %1342
  %1350 = call float @dx.op.unary.f32(i32 22, float %1349)  ; Frc(value)
  %1351 = fmul fast float %1350, 0x401921FB60000000
  %1352 = fadd fast float %1351, %1333
  %1353 = call float @dx.op.unary.f32(i32 13, float %1352)  ; Sin(value)
  %1354 = call float @dx.op.unary.f32(i32 12, float %1352)  ; Cos(value)
  %1355 = fsub fast float -0.000000e+00, %1353
  %1356 = fadd fast float %1307, -5.000000e-01
  %1357 = fadd fast float %1308, -5.000000e-01
  %1358 = fmul fast float %1325, %1356
  %1359 = fmul fast float %1327, %1357
  %1360 = fadd fast float %1358, 5.000000e-01
  %1361 = fadd fast float %1359, 5.000000e-01
  %1362 = fmul fast float %1336, %1360
  %1363 = fmul fast float %1339, %1361
  %1364 = fmul fast float %1354, %1362
  %1365 = call float @dx.op.tertiary.f32(i32 46, float %1355, float %1363, float %1364)  ; FMad(a,b,c)
  %1366 = fmul fast float %1353, %1362
  %1367 = call float @dx.op.tertiary.f32(i32 46, float %1354, float %1363, float %1366)  ; FMad(a,b,c)
  %1368 = fadd fast float %1345, %1365
  %1369 = fadd fast float %1348, %1367
  %1370 = icmp ugt i32 %1319, 1
  %1371 = icmp ugt i32 %1317, 33554431
  %1372 = or i1 %1371, %1370
  br i1 %1372, label %1373, label %1398

; <label>:1373                                    ; preds = %1300
  %1374 = add i32 %60, 244
  %1375 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1374, i32 undef)  ; BufferLoad(srv,index,wot)
  %1376 = extractvalue %dx.types.ResRet.i32 %1375, 0
  %1377 = lshr i32 %1376, 16
  %1378 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1377)  ; LegacyF16ToF32(value)
  %1379 = fmul fast float %1341, %1378
  %1380 = call float @dx.op.unary.f32(i32 22, float %1379)  ; Frc(value)
  %1381 = mul nuw nsw i32 %1319, %1320
  %1382 = uitofp i32 %1381 to float
  %1383 = fmul fast float %1380, %1382
  %1384 = call float @dx.op.unary.f32(i32 27, float %1383)  ; Round_ni(value)
  %1385 = fptoui float %1384 to i32
  %1386 = urem i32 %1385, %1319
  %1387 = udiv i32 %1385, %1320
  %1388 = call float @dx.op.unary.f32(i32 22, float %1368)  ; Frc(value)
  %1389 = call float @dx.op.unary.f32(i32 22, float %1369)  ; Frc(value)
  %1390 = uitofp i32 %1386 to float
  %1391 = uitofp i32 %1387 to float
  %1392 = fadd fast float %1388, %1390
  %1393 = fadd fast float %1389, %1391
  %1394 = uitofp i32 %1319 to float
  %1395 = uitofp i32 %1320 to float
  %1396 = fdiv fast float %1392, %1394
  %1397 = fdiv fast float %1393, %1395
  br label %1398

; <label>:1398                                    ; preds = %1373, %1300
  %1399 = phi float [ %1396, %1373 ], [ %1368, %1300 ]
  %1400 = phi float [ %1397, %1373 ], [ %1369, %1300 ]
  %1401 = and i32 %1294, 16777216
  %1402 = icmp eq i32 %1401, 0
  br i1 %1402, label %1512, label %1403

; <label>:1403                                    ; preds = %1398
  %1404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1405 = extractvalue %dx.types.CBufRet.f32 %1404, 0
  %1406 = extractvalue %dx.types.CBufRet.f32 %1404, 1
  %1407 = extractvalue %dx.types.CBufRet.f32 %1404, 2
  %1408 = fadd fast float %1405, %164
  %1409 = fadd fast float %1406, %165
  %1410 = fadd fast float %1407, %166
  %1411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1412 = extractvalue %dx.types.CBufRet.f32 %1411, 0
  %1413 = call float @dx.op.unary.f32(i32 7, float %1412)  ; Saturate(value)
  %1414 = icmp eq i32 %61, 65535
  br i1 %1414, label %1509, label %1415

; <label>:1415                                    ; preds = %1403
  %1416 = lshr i32 %61, 1
  %1417 = shl i32 %1416, 2
  %1418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1417, i32 undef)  ; BufferLoad(srv,index,wot)
  %1419 = extractvalue %dx.types.ResRet.i32 %1418, 0
  %1420 = and i32 %61, 1
  %1421 = icmp ne i32 %1420, 0
  %1422 = lshr i32 %1419, 16
  %1423 = and i32 %1419, 65535
  %1424 = select i1 %1421, i32 %1422, i32 %1423
  %1425 = icmp eq i32 %1424, 65535
  br i1 %1425, label %1505, label %1426

; <label>:1426                                    ; preds = %1415
  %1427 = mul nuw nsw i32 %1424, 40
  %1428 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1427, i32 undef)  ; BufferLoad(srv,index,wot)
  %1429 = extractvalue %dx.types.ResRet.f32 %1428, 0
  %1430 = extractvalue %dx.types.ResRet.f32 %1428, 1
  %1431 = extractvalue %dx.types.ResRet.f32 %1428, 2
  %1432 = add nuw nsw i32 %1427, 12
  %1433 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1432, i32 undef)  ; BufferLoad(srv,index,wot)
  %1434 = extractvalue %dx.types.ResRet.f32 %1433, 0
  %1435 = extractvalue %dx.types.ResRet.f32 %1433, 1
  %1436 = extractvalue %dx.types.ResRet.f32 %1433, 2
  %1437 = add nuw nsw i32 %1427, 24
  %1438 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1437, i32 undef)  ; BufferLoad(srv,index,wot)
  %1439 = extractvalue %dx.types.ResRet.f32 %1438, 0
  %1440 = extractvalue %dx.types.ResRet.f32 %1438, 1
  %1441 = extractvalue %dx.types.ResRet.f32 %1438, 2
  %1442 = add nuw nsw i32 %1427, 36
  %1443 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1442, i32 undef)  ; BufferLoad(srv,index,wot)
  %1444 = extractvalue %dx.types.ResRet.f32 %1443, 0
  %1445 = fsub fast float %1408, %1429
  %1446 = fsub fast float %1409, %1430
  %1447 = fsub fast float %1410, %1431
  %1448 = fmul fast float %1444, %1445
  %1449 = fmul fast float %1444, %1446
  %1450 = fmul fast float %1444, %1447
  %1451 = call float @dx.op.unary.f32(i32 27, float %1448)  ; Round_ni(value)
  %1452 = call float @dx.op.unary.f32(i32 27, float %1449)  ; Round_ni(value)
  %1453 = call float @dx.op.unary.f32(i32 27, float %1450)  ; Round_ni(value)
  %1454 = fadd fast float %1451, 5.000000e-01
  %1455 = fadd fast float %1452, 5.000000e-01
  %1456 = fadd fast float %1453, 5.000000e-01
  %1457 = fmul fast float %1454, %1434
  %1458 = fmul fast float %1455, %1435
  %1459 = fmul fast float %1456, %1436
  %1460 = shl i32 %61, 2
  %1461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1460, i32 undef)  ; BufferLoad(srv,index,wot)
  %1462 = extractvalue %dx.types.ResRet.i32 %1461, 0
  %1463 = add i32 %1462, 0
  %1464 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1463, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1465 = call float @dx.op.unary.f32(i32 22, float %1457)  ; Frc(value)
  %1466 = call float @dx.op.unary.f32(i32 22, float %1458)  ; Frc(value)
  %1467 = call float @dx.op.unary.f32(i32 22, float %1459)  ; Frc(value)
  %1468 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1464, %dx.types.Handle %55, float %1465, float %1466, float %1467, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1469 = extractvalue %dx.types.ResRet.f32 %1468, 0
  %1470 = extractvalue %dx.types.ResRet.f32 %1468, 1
  %1471 = extractvalue %dx.types.ResRet.f32 %1468, 2
  %1472 = fmul fast float %1469, 1.023000e+03
  %1473 = fmul fast float %1470, 1.023000e+03
  %1474 = fmul fast float %1471, 1.023000e+03
  %1475 = fadd fast float %1472, 5.000000e-01
  %1476 = fadd fast float %1473, 5.000000e-01
  %1477 = fadd fast float %1474, 5.000000e-01
  %1478 = call float @dx.op.unary.f32(i32 27, float %1475)  ; Round_ni(value)
  %1479 = call float @dx.op.unary.f32(i32 27, float %1476)  ; Round_ni(value)
  %1480 = call float @dx.op.unary.f32(i32 27, float %1477)  ; Round_ni(value)
  %1481 = fsub fast float %1448, %1451
  %1482 = fsub fast float %1449, %1452
  %1483 = fsub fast float %1450, %1453
  %1484 = fmul fast float %1481, 7.500000e-01
  %1485 = fmul fast float %1482, 7.500000e-01
  %1486 = fmul fast float %1483, 7.500000e-01
  %1487 = fadd fast float %1451, 1.250000e-01
  %1488 = fadd fast float %1487, %1484
  %1489 = fadd fast float %1488, %1478
  %1490 = fadd fast float %1452, 1.250000e-01
  %1491 = fadd fast float %1490, %1485
  %1492 = fadd fast float %1491, %1479
  %1493 = fadd fast float %1453, 1.250000e-01
  %1494 = fadd fast float %1493, %1486
  %1495 = fadd fast float %1494, %1480
  %1496 = fmul fast float %1489, %1439
  %1497 = fmul fast float %1492, %1440
  %1498 = fmul fast float %1495, %1441
  %1499 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1460, i32 undef)  ; BufferLoad(srv,index,wot)
  %1500 = extractvalue %dx.types.ResRet.i32 %1499, 0
  %1501 = add i32 %1500, 0
  %1502 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1501, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1503 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1502, %dx.types.Handle %53, float %1496, float %1497, float %1498, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1504 = extractvalue %dx.types.ResRet.f32 %1503, 0
  br label %1505

; <label>:1505                                    ; preds = %1426, %1415
  %1506 = phi float [ %1504, %1426 ], [ -1.000000e+00, %1415 ]
  %1507 = fadd fast float %1506, %1413
  %1508 = call float @dx.op.unary.f32(i32 7, float %1507)  ; Saturate(value)
  br label %1509

; <label>:1509                                    ; preds = %1505, %1403
  %1510 = phi float [ %1508, %1505 ], [ %1413, %1403 ]
  %1511 = fmul fast float %1510, %497
  br label %1512

; <label>:1512                                    ; preds = %1509, %1398
  %1513 = phi float [ %1511, %1509 ], [ %497, %1398 ]
  %1514 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1292, i32 undef)  ; BufferLoad(srv,index,wot)
  %1515 = extractvalue %dx.types.ResRet.i32 %1514, 0
  %1516 = and i32 %1515, 256
  %1517 = icmp eq i32 %1516, 0
  br i1 %1517, label %1564, label %1518

; <label>:1518                                    ; preds = %1512
  %1519 = add i32 %60, 492
  %1520 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1519, i32 undef)  ; BufferLoad(srv,index,wot)
  %1521 = extractvalue %dx.types.ResRet.i32 %1520, 0
  %1522 = add i32 %1521, 0
  %1523 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1522, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1524 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1523, %dx.types.Handle %106, float %1399, float %1400, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1525 = extractvalue %dx.types.ResRet.f32 %1524, 0
  %1526 = add i32 %60, 116
  %1527 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1526, i32 undef)  ; BufferLoad(srv,index,wot)
  %1528 = extractvalue %dx.types.ResRet.i32 %1527, 0
  %1529 = shl i32 %1528, 4
  %1530 = and i32 %1529, 32752
  %1531 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1530)  ; LegacyF16ToF32(value)
  %1532 = lshr i32 %1528, 7
  %1533 = and i32 %1532, 32752
  %1534 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1533)  ; LegacyF16ToF32(value)
  %1535 = fsub fast float 1.000000e+00, %1513
  %1536 = call float @dx.op.binary.f32(i32 35, float %1535, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1537 = bitcast float %1513 to i32
  %1538 = sitofp i32 %1537 to float
  %1539 = fadd fast float %1538, 0xC1CFBF8940000000
  %1540 = fmul fast float %1534, %1539
  %1541 = fadd fast float %1540, 0x41CFBF8940000000
  %1542 = fptosi float %1541 to i32
  %1543 = bitcast i32 %1542 to float
  %1544 = bitcast float %1536 to i32
  %1545 = sitofp i32 %1544 to float
  %1546 = fadd fast float %1545, 0xC1CFBF8940000000
  %1547 = fmul fast float %1546, %1534
  %1548 = fadd fast float %1547, 0x41CFBF8940000000
  %1549 = fptosi float %1548 to i32
  %1550 = bitcast i32 %1549 to float
  %1551 = fmul fast float %1543, %1531
  %1552 = fmul fast float %1550, %1531
  %1553 = fsub fast float %1536, %1551
  %1554 = fadd fast float %1552, %1536
  %1555 = call float @dx.op.unary.f32(i32 7, float %1553)  ; Saturate(value)
  %1556 = call float @dx.op.unary.f32(i32 7, float %1554)  ; Saturate(value)
  %1557 = fsub fast float %1525, %1555
  %1558 = fsub fast float %1556, %1555
  %1559 = bitcast float %1558 to i32
  %1560 = sub nsw i32 2129859010, %1559
  %1561 = bitcast i32 %1560 to float
  %1562 = fmul fast float %1561, %1557
  %1563 = call float @dx.op.unary.f32(i32 7, float %1562)  ; Saturate(value)
  br label %1564

; <label>:1564                                    ; preds = %1518, %1512
  %1565 = phi float [ %1563, %1518 ], [ %1513, %1512 ]
  %1566 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1292, i32 undef)  ; BufferLoad(srv,index,wot)
  %1567 = extractvalue %dx.types.ResRet.i32 %1566, 0
  %1568 = and i32 %1567, 128
  %1569 = icmp eq i32 %1568, 0
  br i1 %1569, label %1586, label %1570

; <label>:1570                                    ; preds = %1564
  %1571 = add i32 %60, 476
  %1572 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1571, i32 undef)  ; BufferLoad(srv,index,wot)
  %1573 = extractvalue %dx.types.ResRet.i32 %1572, 0
  %1574 = add i32 %1573, 0
  %1575 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1574, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1576 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1575, %dx.types.Handle %106, float %1399, float %1400, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1577 = extractvalue %dx.types.ResRet.f32 %1576, 0
  %1578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1292, i32 undef)  ; BufferLoad(srv,index,wot)
  %1579 = extractvalue %dx.types.ResRet.i32 %1578, 0
  %1580 = and i32 %1579, 524288
  %1581 = icmp ne i32 %1580, 0
  %1582 = fcmp fast ogt float %1577, 0x3FE0101020000000
  %1583 = select i1 %1582, float 1.000000e+00, float 0.000000e+00
  %1584 = select i1 %1581, float %1583, float %1577
  %1585 = fmul fast float %1584, %1565
  br label %1586

; <label>:1586                                    ; preds = %1570, %1564
  %1587 = phi float [ %1585, %1570 ], [ %1565, %1564 ]
  %1588 = fcmp fast ult float %1587, 0x3F70101020000000
  br i1 %1588, label %2327, label %1589

; <label>:1589                                    ; preds = %1586
  %1590 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1292, i32 undef)  ; BufferLoad(srv,index,wot)
  %1591 = extractvalue %dx.types.ResRet.i32 %1590, 0
  %1592 = and i32 %1591, 16
  %1593 = icmp eq i32 %1592, 0
  br i1 %1593, label %1792, label %1594

; <label>:1594                                    ; preds = %1589
  %1595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1315, i32 undef)  ; BufferLoad(srv,index,wot)
  %1596 = extractvalue %dx.types.ResRet.i32 %1595, 0
  %1597 = add i32 %60, 428
  %1598 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1597, i32 undef)  ; BufferLoad(srv,index,wot)
  %1599 = extractvalue %dx.types.ResRet.i32 %1598, 0
  %1600 = add i32 %1599, 0
  %1601 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1600, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1602 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1601, %dx.types.Handle %105, float %1399, float %1400, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1603 = extractvalue %dx.types.ResRet.f32 %1602, 0
  %1604 = extractvalue %dx.types.ResRet.f32 %1602, 1
  %1605 = extractvalue %dx.types.ResRet.f32 %1602, 2
  %1606 = extractvalue %dx.types.ResRet.f32 %1602, 3
  %1607 = and i32 %1596, 255
  %1608 = uitofp i32 %1607 to float
  %1609 = lshr i32 %1596, 8
  %1610 = and i32 %1609, 255
  %1611 = uitofp i32 %1610 to float
  %1612 = fmul fast float %1606, %1608
  %1613 = fadd fast float %1612, %1611
  %1614 = fmul fast float %1613, 0x3F70101000000000
  %1615 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1292, i32 undef)  ; BufferLoad(srv,index,wot)
  %1616 = extractvalue %dx.types.ResRet.i32 %1615, 0
  %1617 = and i32 %1616, 512
  %1618 = icmp eq i32 %1617, 0
  br i1 %1618, label %1627, label %1619

; <label>:1619                                    ; preds = %1594
  %1620 = add i32 %60, 512
  %1621 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1620, i32 undef)  ; BufferLoad(srv,index,wot)
  %1622 = extractvalue %dx.types.ResRet.i32 %1621, 0
  %1623 = add i32 %1622, 0
  %1624 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1623, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1625 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1624, %dx.types.Handle %106, float %1399, float %1400, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1626 = extractvalue %dx.types.ResRet.f32 %1625, 0
  br label %1627

; <label>:1627                                    ; preds = %1619, %1594
  %1628 = phi float [ %1626, %1619 ], [ 1.000000e+00, %1594 ]
  %1629 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1292, i32 undef)  ; BufferLoad(srv,index,wot)
  %1630 = extractvalue %dx.types.ResRet.i32 %1629, 0
  %1631 = and i32 %1630, 33554432
  %1632 = icmp eq i32 %1631, 0
  br i1 %1632, label %1739, label %1633

; <label>:1633                                    ; preds = %1627
  %1634 = add i32 %60, 240
  %1635 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1634, i32 undef)  ; BufferLoad(srv,index,wot)
  %1636 = extractvalue %dx.types.ResRet.i32 %1635, 0
  %1637 = and i32 %1636, 65535
  %1638 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1637)  ; LegacyF16ToF32(value)
  %1639 = lshr i32 %1636, 16
  %1640 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1639)  ; LegacyF16ToF32(value)
  %1641 = add i32 %60, 244
  %1642 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1641, i32 undef)  ; BufferLoad(srv,index,wot)
  %1643 = extractvalue %dx.types.ResRet.i32 %1642, 0
  %1644 = and i32 %1643, 65535
  %1645 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1644)  ; LegacyF16ToF32(value)
  %1646 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %324, i32 undef)  ; BufferLoad(srv,index,wot)
  %1647 = extractvalue %dx.types.ResRet.i32 %1646, 0
  %1648 = lshr i32 %1647, 24
  %1649 = uitofp i32 %1648 to float
  %1650 = fmul fast float %1649, 0x3F70101020000000
  %1651 = and i32 %1647, 255
  %1652 = uitofp i32 %1651 to float
  %1653 = fmul fast float %1652, 0x3F70101020000000
  %1654 = lshr i32 %1647, 8
  %1655 = and i32 %1654, 255
  %1656 = uitofp i32 %1655 to float
  %1657 = fmul fast float %1656, 0x3F70101020000000
  %1658 = lshr i32 %1647, 16
  %1659 = and i32 %1658, 255
  %1660 = uitofp i32 %1659 to float
  %1661 = fmul fast float %1660, 0x3F70101020000000
  %1662 = add i32 %60, 236
  %1663 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1662, i32 undef)  ; BufferLoad(srv,index,wot)
  %1664 = extractvalue %dx.types.ResRet.i32 %1663, 0
  %1665 = lshr i32 %1664, 24
  %1666 = uitofp i32 %1665 to float
  %1667 = fmul fast float %1666, 0x3F70101020000000
  %1668 = and i32 %1664, 255
  %1669 = uitofp i32 %1668 to float
  %1670 = fmul fast float %1669, 0x3F70101020000000
  %1671 = lshr i32 %1664, 8
  %1672 = and i32 %1671, 255
  %1673 = uitofp i32 %1672 to float
  %1674 = fmul fast float %1673, 0x3F70101020000000
  %1675 = lshr i32 %1664, 16
  %1676 = and i32 %1675, 255
  %1677 = uitofp i32 %1676 to float
  %1678 = fmul fast float %1677, 0x3F70101020000000
  %1679 = bitcast float %1603 to i32
  %1680 = ashr i32 %1679, 1
  %1681 = sub nsw i32 1597463174, %1680
  %1682 = bitcast i32 %1681 to float
  %1683 = fmul fast float %1603, 5.000000e-01
  %1684 = fmul fast float %1682, %1682
  %1685 = fmul fast float %1684, %1683
  %1686 = fsub fast float 1.500000e+00, %1685
  %1687 = fmul fast float %1682, %1603
  %1688 = fmul fast float %1687, %1686
  %1689 = bitcast float %1604 to i32
  %1690 = ashr i32 %1689, 1
  %1691 = sub nsw i32 1597463174, %1690
  %1692 = bitcast i32 %1691 to float
  %1693 = fmul fast float %1604, 5.000000e-01
  %1694 = fmul fast float %1692, %1692
  %1695 = fmul fast float %1694, %1693
  %1696 = fsub fast float 1.500000e+00, %1695
  %1697 = fmul fast float %1692, %1604
  %1698 = fmul fast float %1697, %1696
  %1699 = bitcast float %1605 to i32
  %1700 = ashr i32 %1699, 1
  %1701 = sub nsw i32 1597463174, %1700
  %1702 = bitcast i32 %1701 to float
  %1703 = fmul fast float %1605, 5.000000e-01
  %1704 = fmul fast float %1702, %1702
  %1705 = fmul fast float %1704, %1703
  %1706 = fsub fast float 1.500000e+00, %1705
  %1707 = fmul fast float %1702, %1605
  %1708 = fmul fast float %1707, %1706
  %1709 = fsub fast float %1688, %1670
  %1710 = fsub fast float %1698, %1674
  %1711 = fsub fast float %1708, %1678
  %1712 = fmul fast float %1709, %1638
  %1713 = fmul fast float %1710, %1640
  %1714 = fmul fast float %1711, %1645
  %1715 = fadd fast float %1712, %1653
  %1716 = fadd fast float %1713, %1657
  %1717 = fadd fast float %1714, %1661
  %1718 = call float @dx.op.unary.f32(i32 7, float %1715)  ; Saturate(value)
  %1719 = call float @dx.op.unary.f32(i32 7, float %1716)  ; Saturate(value)
  %1720 = call float @dx.op.unary.f32(i32 7, float %1717)  ; Saturate(value)
  %1721 = fmul fast float %1718, %1718
  %1722 = fmul fast float %1719, %1719
  %1723 = fmul fast float %1720, %1720
  %1724 = fsub fast float %1721, %1603
  %1725 = fsub fast float %1722, %1604
  %1726 = fsub fast float %1723, %1605
  %1727 = fmul fast float %1724, %1628
  %1728 = fmul fast float %1725, %1628
  %1729 = fmul fast float %1726, %1628
  %1730 = fadd fast float %1727, %1603
  %1731 = fadd fast float %1728, %1604
  %1732 = fadd fast float %1729, %1605
  %1733 = fadd fast float %1650, %1614
  %1734 = fsub fast float %1733, %1667
  %1735 = call float @dx.op.unary.f32(i32 7, float %1734)  ; Saturate(value)
  %1736 = fsub fast float %1735, %1614
  %1737 = fmul fast float %1736, %1628
  %1738 = fadd fast float %1737, %1614
  br label %1792

; <label>:1739                                    ; preds = %1627
  %1740 = and i32 %1630, 134217728
  %1741 = icmp eq i32 %1740, 0
  br i1 %1741, label %1776, label %1742

; <label>:1742                                    ; preds = %1739
  %1743 = call float @dx.op.unary.f32(i32 24, float %329)  ; Sqrt(value)
  %1744 = call float @dx.op.unary.f32(i32 24, float %333)  ; Sqrt(value)
  %1745 = call float @dx.op.unary.f32(i32 24, float %337)  ; Sqrt(value)
  %1746 = fadd fast float %1743, -5.000000e-01
  %1747 = fadd fast float %1744, -5.000000e-01
  %1748 = fadd fast float %1745, -5.000000e-01
  %1749 = fmul fast float %1746, %1628
  %1750 = fmul fast float %1747, %1628
  %1751 = fmul fast float %1748, %1628
  %1752 = fadd fast float %1749, 5.000000e-01
  %1753 = fadd fast float %1750, 5.000000e-01
  %1754 = fadd fast float %1751, 5.000000e-01
  %1755 = call float @dx.op.unary.f32(i32 24, float %1603)  ; Sqrt(value)
  %1756 = call float @dx.op.unary.f32(i32 24, float %1604)  ; Sqrt(value)
  %1757 = call float @dx.op.unary.f32(i32 24, float %1605)  ; Sqrt(value)
  %1758 = fmul fast float %1752, 2.000000e+00
  %1759 = fsub fast float 1.000000e+00, %1758
  %1760 = fmul fast float %1759, %1755
  %1761 = fadd fast float %1760, %1758
  %1762 = fmul fast float %1761, %1755
  %1763 = fmul fast float %1753, 2.000000e+00
  %1764 = fsub fast float 1.000000e+00, %1763
  %1765 = fmul fast float %1764, %1756
  %1766 = fadd fast float %1765, %1763
  %1767 = fmul fast float %1766, %1756
  %1768 = fmul fast float %1754, 2.000000e+00
  %1769 = fsub fast float 1.000000e+00, %1768
  %1770 = fmul fast float %1769, %1757
  %1771 = fadd fast float %1770, %1768
  %1772 = fmul fast float %1771, %1757
  %1773 = fmul fast float %1762, %1762
  %1774 = fmul fast float %1767, %1767
  %1775 = fmul fast float %1772, %1772
  br label %1792

; <label>:1776                                    ; preds = %1739
  %1777 = fmul fast float %329, %329
  %1778 = fmul fast float %333, %333
  %1779 = fmul fast float %337, %337
  %1780 = fadd fast float %1777, -1.000000e+00
  %1781 = fadd fast float %1778, -1.000000e+00
  %1782 = fadd fast float %1779, -1.000000e+00
  %1783 = fmul fast float %1628, %1780
  %1784 = fmul fast float %1628, %1781
  %1785 = fmul fast float %1628, %1782
  %1786 = fadd fast float %1783, 1.000000e+00
  %1787 = fadd fast float %1784, 1.000000e+00
  %1788 = fadd fast float %1785, 1.000000e+00
  %1789 = fmul fast float %1786, %1603
  %1790 = fmul fast float %1787, %1604
  %1791 = fmul fast float %1788, %1605
  br label %1792

; <label>:1792                                    ; preds = %1776, %1742, %1633, %1589
  %1793 = phi float [ %1738, %1633 ], [ %1614, %1742 ], [ %1614, %1776 ], [ 0x3FA23C0BE0000000, %1589 ]
  %1794 = phi float [ %1730, %1633 ], [ %1773, %1742 ], [ %1789, %1776 ], [ 1.000000e+00, %1589 ]
  %1795 = phi float [ %1731, %1633 ], [ %1774, %1742 ], [ %1790, %1776 ], [ 1.000000e+00, %1589 ]
  %1796 = phi float [ %1732, %1633 ], [ %1775, %1742 ], [ %1791, %1776 ], [ 1.000000e+00, %1589 ]
  %1797 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1798 = extractvalue %dx.types.CBufRet.i32 %1797, 1
  %1799 = and i32 %1798, 1
  %1800 = icmp ne i32 %1799, 0
  %1801 = add i32 %60, 356
  %1802 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1801, i32 undef)  ; BufferLoad(srv,index,wot)
  %1803 = extractvalue %dx.types.ResRet.i32 %1802, 0
  %1804 = and i32 %1803, 32
  %1805 = icmp ne i32 %1804, 0
  %1806 = and i1 %1800, %1805
  %1807 = select i1 %1806, float 1.000000e+00, float %1794
  %1808 = select i1 %1806, float 0x3FD3333340000000, float %1795
  %1809 = select i1 %1806, float 0x3FD3333340000000, float %1796
  %1810 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1292, i32 undef)  ; BufferLoad(srv,index,wot)
  %1811 = extractvalue %dx.types.ResRet.i32 %1810, 0
  %1812 = and i32 %1811, 32
  %1813 = icmp eq i32 %1812, 0
  br i1 %1813, label %1886, label %1814

; <label>:1814                                    ; preds = %1792
  %1815 = add i32 %60, 108
  %1816 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1815, i32 undef)  ; BufferLoad(srv,index,wot)
  %1817 = extractvalue %dx.types.ResRet.i32 %1816, 0
  %1818 = add i32 %60, 444
  %1819 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1818, i32 undef)  ; BufferLoad(srv,index,wot)
  %1820 = extractvalue %dx.types.ResRet.i32 %1819, 0
  %1821 = add i32 %1820, 0
  %1822 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1821, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1823 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1822, %dx.types.Handle %105, float %1399, float %1400, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1824 = extractvalue %dx.types.ResRet.f32 %1823, 0
  %1825 = extractvalue %dx.types.ResRet.f32 %1823, 1
  %1826 = extractvalue %dx.types.ResRet.f32 %1823, 2
  %1827 = extractvalue %dx.types.ResRet.f32 %1823, 3
  %1828 = and i32 %1817, 255
  %1829 = uitofp i32 %1828 to float
  %1830 = lshr i32 %1817, 8
  %1831 = and i32 %1830, 255
  %1832 = uitofp i32 %1831 to float
  %1833 = lshr i32 %1817, 16
  %1834 = and i32 %1833, 255
  %1835 = uitofp i32 %1834 to float
  %1836 = fmul fast float %1835, 0x3F70101000000000
  %1837 = fmul fast float %1824, %1829
  %1838 = fadd fast float %1837, %1832
  %1839 = fmul fast float %1838, 0x3F70101000000000
  %1840 = fadd fast float %1825, -5.000000e-01
  %1841 = fadd fast float %1827, -5.000000e-01
  %1842 = fmul fast float %1840, %1836
  %1843 = fmul fast float %1841, %1836
  %1844 = fadd fast float %1842, 5.000000e-01
  %1845 = fadd fast float %1843, 5.000000e-01
  %1846 = fmul fast float %1844, 2.000000e+00
  %1847 = fadd fast float %1846, -1.000000e+00
  %1848 = fmul fast float %1845, 2.000000e+00
  %1849 = fadd fast float %1848, -1.000000e+00
  %1850 = fadd fast float %1847, %1849
  %1851 = fmul fast float %1850, 5.000000e-01
  %1852 = fsub fast float %1847, %1849
  %1853 = fmul fast float %1852, 5.000000e-01
  %1854 = call float @dx.op.unary.f32(i32 6, float %1851)  ; FAbs(value)
  %1855 = fsub fast float 1.000000e+00, %1854
  %1856 = call float @dx.op.unary.f32(i32 6, float %1853)  ; FAbs(value)
  %1857 = fsub fast float %1855, %1856
  %1858 = call float @dx.op.dot3.f32(i32 55, float %1851, float %1853, float %1857, float %1851, float %1853, float %1857)  ; Dot3(ax,ay,az,bx,by,bz)
  %1859 = call float @dx.op.unary.f32(i32 25, float %1858)  ; Rsqrt(value)
  %1860 = fmul fast float %1851, %1859
  %1861 = fmul fast float %1853, %1859
  %1862 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1292, i32 undef)  ; BufferLoad(srv,index,wot)
  %1863 = extractvalue %dx.types.ResRet.i32 %1862, 0
  %1864 = and i32 %1863, 67108864
  %1865 = icmp eq i32 %1864, 0
  br i1 %1865, label %1882, label %1866

; <label>:1866                                    ; preds = %1814
  %1867 = add i32 %60, 296
  %1868 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1867, i32 undef)  ; BufferLoad(srv,index,wot)
  %1869 = extractvalue %dx.types.ResRet.i32 %1868, 0
  %1870 = and i32 %1869, 65535
  %1871 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1870)  ; LegacyF16ToF32(value)
  %1872 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1309, i32 undef)  ; BufferLoad(srv,index,wot)
  %1873 = extractvalue %dx.types.ResRet.i32 %1872, 0
  %1874 = and i32 %1873, 65535
  %1875 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1874)  ; LegacyF16ToF32(value)
  %1876 = lshr i32 %1869, 16
  %1877 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1876)  ; LegacyF16ToF32(value)
  %1878 = fsub fast float %1839, %1877
  %1879 = fmul fast float %1878, %1871
  %1880 = fadd fast float %1879, %1875
  %1881 = call float @dx.op.unary.f32(i32 7, float %1880)  ; Saturate(value)
  br label %1882

; <label>:1882                                    ; preds = %1866, %1814
  %1883 = phi float [ %1881, %1866 ], [ %1839, %1814 ]
  %1884 = call float @dx.op.dot2.f32(i32 54, float %1860, float %1861, float %1303, float %1304)  ; Dot2(ax,ay,bx,by)
  %1885 = call float @dx.op.dot2.f32(i32 54, float %1860, float %1861, float %1305, float %1306)  ; Dot2(ax,ay,bx,by)
  br label %1886

; <label>:1886                                    ; preds = %1882, %1792
  %1887 = phi float [ %1883, %1882 ], [ 0x3FD6666660000000, %1792 ]
  %1888 = phi float [ %1884, %1882 ], [ 0.000000e+00, %1792 ]
  %1889 = phi float [ %1885, %1882 ], [ 0.000000e+00, %1792 ]
  %1890 = phi float [ %1826, %1882 ], [ 1.000000e+00, %1792 ]
  %1891 = add i32 %60, 176
  %1892 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1891, i32 undef)  ; BufferLoad(srv,index,wot)
  %1893 = extractvalue %dx.types.ResRet.i32 %1892, 0
  %1894 = lshr i32 %1893, 22
  %1895 = shl nuw nsw i32 %1894, 5
  %1896 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1895)  ; LegacyF16ToF32(value)
  %1897 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1292, i32 undef)  ; BufferLoad(srv,index,wot)
  %1898 = extractvalue %dx.types.ResRet.i32 %1897, 0
  %1899 = and i32 %1898, 64
  %1900 = icmp eq i32 %1899, 0
  br i1 %1900, label %1934, label %1901

; <label>:1901                                    ; preds = %1886
  %1902 = add i32 %60, 460
  %1903 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1902, i32 undef)  ; BufferLoad(srv,index,wot)
  %1904 = extractvalue %dx.types.ResRet.i32 %1903, 0
  %1905 = add i32 %1904, 0
  %1906 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1905, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1907 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1292, i32 undef)  ; BufferLoad(srv,index,wot)
  %1908 = extractvalue %dx.types.ResRet.i32 %1907, 0
  %1909 = and i32 %1908, 131072
  %1910 = icmp eq i32 %1909, 0
  %1911 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1906, %dx.types.Handle %105, float %1399, float %1400, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1912 = extractvalue %dx.types.ResRet.f32 %1911, 0
  %1913 = extractvalue %dx.types.ResRet.f32 %1911, 1
  %1914 = extractvalue %dx.types.ResRet.f32 %1911, 2
  %1915 = fmul fast float %1912, %317
  %1916 = fmul fast float %1913, %320
  %1917 = fmul fast float %1914, %323
  br i1 %1910, label %1924, label %1918

; <label>:1918                                    ; preds = %1901
  %1919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1920 = extractvalue %dx.types.CBufRet.f32 %1919, 0
  %1921 = fmul fast float %1920, %1915
  %1922 = fmul fast float %1920, %1916
  %1923 = fmul fast float %1920, %1917
  br label %1924

; <label>:1924                                    ; preds = %1918, %1901
  %1925 = phi float [ %1921, %1918 ], [ %1915, %1901 ]
  %1926 = phi float [ %1922, %1918 ], [ %1916, %1901 ]
  %1927 = phi float [ %1923, %1918 ], [ %1917, %1901 ]
  %1928 = fmul fast float %1925, %1896
  %1929 = select i1 %258, float %1928, float %1925
  %1930 = call float @dx.op.dot3.f32(i32 55, float %1929, float %1926, float %1927, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1931 = select i1 %258, float 0.000000e+00, float %1925
  %1932 = select i1 %258, float %1930, float %1926
  %1933 = select i1 %258, float 0.000000e+00, float %1927
  br label %1934

; <label>:1934                                    ; preds = %1924, %1886
  %1935 = phi float [ %1931, %1924 ], [ 0.000000e+00, %1886 ]
  %1936 = phi float [ %1932, %1924 ], [ 0.000000e+00, %1886 ]
  %1937 = phi float [ %1933, %1924 ], [ 0.000000e+00, %1886 ]
  %1938 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1292, i32 undef)  ; BufferLoad(srv,index,wot)
  %1939 = extractvalue %dx.types.ResRet.i32 %1938, 0
  %1940 = and i32 %1939, 1024
  %1941 = icmp eq i32 %1940, 0
  br i1 %1941, label %1972, label %1942

; <label>:1942                                    ; preds = %1934
  %1943 = add i32 %60, 168
  %1944 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1943, i32 undef)  ; BufferLoad(srv,index,wot)
  %1945 = extractvalue %dx.types.ResRet.i32 %1944, 0
  %1946 = and i32 %1945, 255
  %1947 = uitofp i32 %1946 to float
  %1948 = fmul fast float %1947, 0x3F70101020000000
  %1949 = lshr i32 %1945, 8
  %1950 = and i32 %1949, 255
  %1951 = uitofp i32 %1950 to float
  %1952 = fmul fast float %1951, 0x3F70101020000000
  %1953 = lshr i32 %1945, 16
  %1954 = and i32 %1953, 255
  %1955 = uitofp i32 %1954 to float
  %1956 = fmul fast float %1955, 0x3F70101020000000
  %1957 = fmul fast float %1948, %1948
  %1958 = fmul fast float %1952, %1952
  %1959 = fmul fast float %1956, %1956
  %1960 = add i32 %60, 528
  %1961 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1960, i32 undef)  ; BufferLoad(srv,index,wot)
  %1962 = extractvalue %dx.types.ResRet.i32 %1961, 0
  %1963 = add i32 %1962, 0
  %1964 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1963, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1965 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1964, %dx.types.Handle %106, float %1399, float %1400, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1966 = extractvalue %dx.types.ResRet.f32 %1965, 0
  %1967 = extractvalue %dx.types.ResRet.f32 %1965, 1
  %1968 = extractvalue %dx.types.ResRet.f32 %1965, 2
  %1969 = fmul fast float %1957, %1966
  %1970 = fmul fast float %1958, %1967
  %1971 = fmul fast float %1959, %1968
  br label %1972

; <label>:1972                                    ; preds = %1942, %1934
  %1973 = phi float [ %1969, %1942 ], [ 0.000000e+00, %1934 ]
  %1974 = phi float [ %1970, %1942 ], [ 0.000000e+00, %1934 ]
  %1975 = phi float [ %1971, %1942 ], [ 0.000000e+00, %1934 ]
  %1976 = fcmp fast ogt float %1973, 0.000000e+00
  %1977 = fcmp fast ogt float %1974, 0.000000e+00
  %1978 = fcmp fast ogt float %1975, 0.000000e+00
  %1979 = call float @dx.op.unary.f32(i32 23, float %1973)  ; Log(value)
  %1980 = call float @dx.op.unary.f32(i32 23, float %1974)  ; Log(value)
  %1981 = call float @dx.op.unary.f32(i32 23, float %1975)  ; Log(value)
  %1982 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1891, i32 undef)  ; BufferLoad(srv,index,wot)
  %1983 = extractvalue %dx.types.ResRet.i32 %1982, 0
  %1984 = lshr i32 %1983, 7
  %1985 = and i32 %1984, 32752
  %1986 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1985)  ; LegacyF16ToF32(value)
  %1987 = fmul fast float %1979, 0xBFE62E4300000000
  %1988 = fmul fast float %1987, %1986
  %1989 = fmul fast float %1980, 0xBFE62E4300000000
  %1990 = fmul fast float %1989, %1986
  %1991 = fmul fast float %1981, 0xBFE62E4300000000
  %1992 = fmul fast float %1991, %1986
  %1993 = select i1 %1976, float %1988, float 1.270000e+02
  %1994 = select i1 %1977, float %1990, float 1.270000e+02
  %1995 = select i1 %1978, float %1992, float 1.270000e+02
  %1996 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1292, i32 undef)  ; BufferLoad(srv,index,wot)
  %1997 = extractvalue %dx.types.ResRet.i32 %1996, 0
  %1998 = and i32 %1997, 10240
  %1999 = icmp eq i32 %1998, 0
  br i1 %1999, label %2044, label %2000

; <label>:2000                                    ; preds = %1972
  %2001 = add i32 %60, 544
  %2002 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2001, i32 undef)  ; BufferLoad(srv,index,wot)
  %2003 = extractvalue %dx.types.ResRet.i32 %2002, 0
  %2004 = add i32 %2003, 0
  %2005 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2004, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2006 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2005, %dx.types.Handle %106, float %1399, float %1400, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2007 = extractvalue %dx.types.ResRet.f32 %2006, 1
  %2008 = extractvalue %dx.types.ResRet.f32 %2006, 3
  %2009 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1292, i32 undef)  ; BufferLoad(srv,index,wot)
  %2010 = extractvalue %dx.types.ResRet.i32 %2009, 0
  %2011 = and i32 %2010, 1048576
  %2012 = icmp ne i32 %2011, 0
  %2013 = and i32 %2010, 8192
  %2014 = icmp eq i32 %2013, 0
  br i1 %2014, label %2030, label %2015

; <label>:2015                                    ; preds = %2000
  %2016 = extractvalue %dx.types.ResRet.f32 %2006, 2
  %2017 = select i1 %2012, float %2016, float %2007
  %2018 = extractvalue %dx.types.ResRet.f32 %2006, 0
  %2019 = select i1 %2012, float %2018, float %2007
  %2020 = add i32 %60, 112
  %2021 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2020, i32 undef)  ; BufferLoad(srv,index,wot)
  %2022 = extractvalue %dx.types.ResRet.i32 %2021, 0
  %2023 = lshr i32 %2022, 16
  %2024 = and i32 %2023, 255
  %2025 = uitofp i32 %2024 to float
  %2026 = fmul fast float %2025, 0x3F80101020000000
  %2027 = fmul fast float %2026, %2019
  %2028 = fmul fast float %2026, %2007
  %2029 = fmul fast float %2026, %2017
  br label %2030

; <label>:2030                                    ; preds = %2015, %2000
  %2031 = phi float [ %2027, %2015 ], [ 0.000000e+00, %2000 ]
  %2032 = phi float [ %2028, %2015 ], [ 0.000000e+00, %2000 ]
  %2033 = phi float [ %2029, %2015 ], [ 0.000000e+00, %2000 ]
  %2034 = and i32 %2010, 2048
  %2035 = icmp eq i32 %2034, 0
  br i1 %2035, label %2044, label %2036

; <label>:2036                                    ; preds = %2030
  %2037 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1891, i32 undef)  ; BufferLoad(srv,index,wot)
  %2038 = extractvalue %dx.types.ResRet.i32 %2037, 0
  %2039 = shl i32 %2038, 4
  %2040 = and i32 %2039, 32752
  %2041 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2040)  ; LegacyF16ToF32(value)
  %2042 = fmul fast float %2041, %2008
  %2043 = call float @dx.op.binary.f32(i32 35, float %2042, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2044

; <label>:2044                                    ; preds = %2036, %2030, %1972
  %2045 = phi float [ %2031, %2036 ], [ %2031, %2030 ], [ 0.000000e+00, %1972 ]
  %2046 = phi float [ %2032, %2036 ], [ %2032, %2030 ], [ 0.000000e+00, %1972 ]
  %2047 = phi float [ %2033, %2036 ], [ %2033, %2030 ], [ 0.000000e+00, %1972 ]
  %2048 = phi float [ %2043, %2036 ], [ 0x3F70101020000000, %2030 ], [ 0x3F70101020000000, %1972 ]
  %2049 = add i32 %60, 112
  %2050 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2049, i32 undef)  ; BufferLoad(srv,index,wot)
  %2051 = extractvalue %dx.types.ResRet.i32 %2050, 0
  %2052 = and i32 %2051, 255
  %2053 = uitofp i32 %2052 to float
  %2054 = lshr i32 %2051, 8
  %2055 = and i32 %2054, 255
  %2056 = uitofp i32 %2055 to float
  %2057 = call float @dx.op.dot3.f32(i32 55, float %1807, float %1808, float %1809, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2058 = fmul fast float %2056, %2057
  %2059 = fadd fast float %2058, %2053
  %2060 = fmul fast float %2059, 0x3F70101020000000
  %2061 = call float @dx.op.unary.f32(i32 7, float %2060)  ; Saturate(value)
  br i1 %1291, label %2062, label %2097

; <label>:2062                                    ; preds = %2044
  %2063 = fmul fast float %2048, 2.000000e+00
  %2064 = fcmp fast olt float %1993, 1.270000e+02
  %2065 = fcmp fast olt float %1994, 1.270000e+02
  %2066 = fcmp fast olt float %1995, 1.270000e+02
  %2067 = fmul fast float %1993, 0xBFF7154760000000
  %2068 = fmul fast float %2067, %2063
  %2069 = fmul fast float %1994, 0xBFF7154760000000
  %2070 = fmul fast float %2069, %2063
  %2071 = fmul fast float %1995, 0xBFF7154760000000
  %2072 = fmul fast float %2071, %2063
  %2073 = call float @dx.op.unary.f32(i32 21, float %2068)  ; Exp(value)
  %2074 = call float @dx.op.unary.f32(i32 21, float %2070)  ; Exp(value)
  %2075 = call float @dx.op.unary.f32(i32 21, float %2072)  ; Exp(value)
  %2076 = call float @dx.op.unary.f32(i32 7, float %2073)  ; Saturate(value)
  %2077 = call float @dx.op.unary.f32(i32 7, float %2074)  ; Saturate(value)
  %2078 = call float @dx.op.unary.f32(i32 7, float %2075)  ; Saturate(value)
  %2079 = fadd fast float %2076, -1.000000e+00
  %2080 = select i1 %2064, float %2079, float -1.000000e+00
  %2081 = fadd fast float %2077, -1.000000e+00
  %2082 = select i1 %2065, float %2081, float -1.000000e+00
  %2083 = fadd fast float %2078, -1.000000e+00
  %2084 = select i1 %2066, float %2083, float -1.000000e+00
  %2085 = fmul fast float %2080, %1587
  %2086 = fmul fast float %2082, %1587
  %2087 = fmul fast float %2084, %1587
  %2088 = fadd fast float %2085, 1.000000e+00
  %2089 = fadd fast float %2086, 1.000000e+00
  %2090 = fadd fast float %2087, 1.000000e+00
  %2091 = fmul fast float %2088, %1272
  %2092 = fmul fast float %2089, %1273
  %2093 = fmul fast float %2090, %1274
  %2094 = fmul fast float %2088, %1281
  %2095 = fmul fast float %2089, %1282
  %2096 = fmul fast float %2090, %1283
  br label %2097

; <label>:2097                                    ; preds = %2062, %2044
  %2098 = phi float [ %2091, %2062 ], [ %1272, %2044 ]
  %2099 = phi float [ %2092, %2062 ], [ %1273, %2044 ]
  %2100 = phi float [ %2093, %2062 ], [ %1274, %2044 ]
  %2101 = phi float [ %2094, %2062 ], [ %1281, %2044 ]
  %2102 = phi float [ %2095, %2062 ], [ %1282, %2044 ]
  %2103 = phi float [ %2096, %2062 ], [ %1283, %2044 ]
  %2104 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1292, i32 undef)  ; BufferLoad(srv,index,wot)
  %2105 = extractvalue %dx.types.ResRet.i32 %2104, 0
  %2106 = and i32 %2105, 3
  %2107 = icmp eq i32 %2106, 3
  br i1 %2107, label %2186, label %2108

; <label>:2108                                    ; preds = %2097
  %2109 = and i32 %2105, 16
  %2110 = icmp ne i32 %2109, 0
  %2111 = select i1 %2110, float %1587, float 0.000000e+00
  %2112 = icmp eq i32 %2106, 0
  br i1 %2112, label %2113, label %2141

; <label>:2113                                    ; preds = %2108
  %2114 = and i32 %2105, 64
  %2115 = icmp ne i32 %2114, 0
  %2116 = select i1 %2115, float %1587, float 0.000000e+00
  %2117 = fsub fast float %1807, %2098
  %2118 = fsub fast float %1808, %2099
  %2119 = fsub fast float %1809, %2100
  %2120 = fmul fast float %2111, %2117
  %2121 = fmul fast float %2111, %2118
  %2122 = fmul fast float %2111, %2119
  %2123 = fadd fast float %2120, %2098
  %2124 = fadd fast float %2121, %2099
  %2125 = fadd fast float %2122, %2100
  %2126 = fsub fast float %1793, %1284
  %2127 = fmul fast float %2111, %2126
  %2128 = fadd fast float %2127, %1284
  %2129 = fsub fast float %1935, %2101
  %2130 = fsub fast float %1936, %2102
  %2131 = fsub fast float %1937, %2103
  %2132 = fmul fast float %2116, %2129
  %2133 = fmul fast float %2116, %2130
  %2134 = fmul fast float %2116, %2131
  %2135 = fadd fast float %2132, %2101
  %2136 = fadd fast float %2133, %2102
  %2137 = fadd fast float %2134, %2103
  %2138 = fsub fast float %2061, %1289
  %2139 = fmul fast float %2111, %2138
  %2140 = fadd fast float %2139, %1289
  br label %2186

; <label>:2141                                    ; preds = %2108
  %2142 = icmp eq i32 %2106, 1
  br i1 %2142, label %2143, label %2156

; <label>:2143                                    ; preds = %2141
  %2144 = fadd fast float %1807, -1.000000e+00
  %2145 = fadd fast float %1808, -1.000000e+00
  %2146 = fadd fast float %1809, -1.000000e+00
  %2147 = fmul fast float %2111, %2144
  %2148 = fmul fast float %2111, %2145
  %2149 = fmul fast float %2111, %2146
  %2150 = fadd fast float %2147, 1.000000e+00
  %2151 = fadd fast float %2148, 1.000000e+00
  %2152 = fadd fast float %2149, 1.000000e+00
  %2153 = fmul fast float %2150, %2098
  %2154 = fmul fast float %2151, %2099
  %2155 = fmul fast float %2152, %2100
  br label %2186

; <label>:2156                                    ; preds = %2141
  %2157 = icmp eq i32 %2106, 2
  br i1 %2157, label %2158, label %2186

; <label>:2158                                    ; preds = %2156
  %2159 = call float @dx.op.unary.f32(i32 24, float %1807)  ; Sqrt(value)
  %2160 = call float @dx.op.unary.f32(i32 24, float %1808)  ; Sqrt(value)
  %2161 = call float @dx.op.unary.f32(i32 24, float %1809)  ; Sqrt(value)
  %2162 = fadd fast float %2159, -5.000000e-01
  %2163 = fadd fast float %2160, -5.000000e-01
  %2164 = fadd fast float %2161, -5.000000e-01
  %2165 = fmul fast float %2162, %2111
  %2166 = fmul fast float %2163, %2111
  %2167 = fmul fast float %2164, %2111
  %2168 = fadd fast float %2165, 5.000000e-01
  %2169 = fadd fast float %2166, 5.000000e-01
  %2170 = fadd fast float %2167, 5.000000e-01
  %2171 = fmul fast float %2168, 2.000000e+00
  %2172 = fsub fast float 1.000000e+00, %2171
  %2173 = fmul fast float %2172, %2098
  %2174 = fadd fast float %2173, %2171
  %2175 = fmul fast float %2174, %2098
  %2176 = fmul fast float %2169, 2.000000e+00
  %2177 = fsub fast float 1.000000e+00, %2176
  %2178 = fmul fast float %2177, %2099
  %2179 = fadd fast float %2178, %2176
  %2180 = fmul fast float %2179, %2099
  %2181 = fmul fast float %2170, 2.000000e+00
  %2182 = fsub fast float 1.000000e+00, %2181
  %2183 = fmul fast float %2182, %2100
  %2184 = fadd fast float %2183, %2181
  %2185 = fmul fast float %2184, %2100
  br label %2186

; <label>:2186                                    ; preds = %2158, %2156, %2143, %2113, %2097
  %2187 = phi float [ %2098, %2097 ], [ %2175, %2158 ], [ %2098, %2156 ], [ %2153, %2143 ], [ %2123, %2113 ]
  %2188 = phi float [ %2099, %2097 ], [ %2180, %2158 ], [ %2099, %2156 ], [ %2154, %2143 ], [ %2124, %2113 ]
  %2189 = phi float [ %2100, %2097 ], [ %2185, %2158 ], [ %2100, %2156 ], [ %2155, %2143 ], [ %2125, %2113 ]
  %2190 = phi float [ %2101, %2097 ], [ %2101, %2158 ], [ %2101, %2156 ], [ %2101, %2143 ], [ %2135, %2113 ]
  %2191 = phi float [ %2102, %2097 ], [ %2102, %2158 ], [ %2102, %2156 ], [ %2102, %2143 ], [ %2136, %2113 ]
  %2192 = phi float [ %2103, %2097 ], [ %2103, %2158 ], [ %2103, %2156 ], [ %2103, %2143 ], [ %2137, %2113 ]
  %2193 = phi float [ %1284, %2097 ], [ %1284, %2158 ], [ %1284, %2156 ], [ %1284, %2143 ], [ %2128, %2113 ]
  %2194 = phi float [ %1289, %2097 ], [ %1289, %2158 ], [ %1289, %2156 ], [ %1289, %2143 ], [ %2140, %2113 ]
  %2195 = and i32 %2105, 12
  %2196 = icmp eq i32 %2195, 12
  br i1 %2196, label %2327, label %2197

; <label>:2197                                    ; preds = %2186
  %2198 = and i32 %2105, 2097184
  %2199 = icmp eq i32 %2198, 2097184
  %2200 = select i1 %2199, float %1587, float 0.000000e+00
  %2201 = and i32 %2105, 4194336
  %2202 = icmp eq i32 %2201, 4194336
  %2203 = select i1 %2202, float %1587, float 0.000000e+00
  %2204 = and i32 %2105, 8388640
  %2205 = icmp eq i32 %2204, 8388640
  %2206 = select i1 %2205, float %1587, float 0.000000e+00
  %2207 = and i32 %2105, 1024
  %2208 = icmp ne i32 %2207, 0
  %2209 = select i1 %2208, float %1587, float 0.000000e+00
  %2210 = and i32 %2105, 2048
  %2211 = icmp ne i32 %2210, 0
  %2212 = select i1 %2211, float %1587, float 0.000000e+00
  %2213 = and i32 %2105, 8192
  %2214 = icmp ne i32 %2213, 0
  %2215 = select i1 %2214, float %1587, float 0.000000e+00
  %2216 = icmp eq i32 %2195, 0
  br i1 %2216, label %2217, label %2251

; <label>:2217                                    ; preds = %2197
  %2218 = fsub fast float %1888, %1270
  %2219 = fsub fast float %1889, %1271
  %2220 = fmul fast float %2200, %2218
  %2221 = fmul fast float %2200, %2219
  %2222 = fadd fast float %2220, %1270
  %2223 = fadd fast float %2221, %1271
  %2224 = fsub fast float %1890, %1287
  %2225 = fmul fast float %2203, %2224
  %2226 = fadd fast float %2225, %1287
  %2227 = fsub fast float %1887, %1286
  %2228 = fmul fast float %2206, %2227
  %2229 = fadd fast float %2228, %1286
  %2230 = fsub fast float %1993, %1278
  %2231 = fsub fast float %1994, %1279
  %2232 = fsub fast float %1995, %1280
  %2233 = fmul fast float %2209, %2230
  %2234 = fmul fast float %2209, %2231
  %2235 = fmul fast float %2209, %2232
  %2236 = fadd fast float %2233, %1278
  %2237 = fadd fast float %2234, %1279
  %2238 = fadd fast float %2235, %1280
  %2239 = fsub fast float %2048, %1288
  %2240 = fmul fast float %2212, %2239
  %2241 = fadd fast float %2240, %1288
  %2242 = fsub fast float %2045, %1275
  %2243 = fsub fast float %2046, %1276
  %2244 = fsub fast float %2047, %1277
  %2245 = fmul fast float %2215, %2242
  %2246 = fmul fast float %2215, %2243
  %2247 = fmul fast float %2215, %2244
  %2248 = fadd fast float %2245, %1275
  %2249 = fadd fast float %2246, %1276
  %2250 = fadd fast float %2247, %1277
  br label %2327

; <label>:2251                                    ; preds = %2197
  %2252 = icmp eq i32 %2195, 4
  br i1 %2252, label %2253, label %2299

; <label>:2253                                    ; preds = %2251
  %2254 = fmul fast float %2200, %1888
  %2255 = fmul fast float %2200, %1889
  %2256 = fadd fast float %2254, %1270
  %2257 = fadd fast float %2255, %1271
  %2258 = call float @dx.op.binary.f32(i32 36, float %1287, float %1890)  ; FMin(a,b)
  %2259 = fsub fast float %2258, %1287
  %2260 = fmul fast float %2259, %2203
  %2261 = fadd fast float %2260, %1287
  %2262 = fadd fast float %1887, %1286
  %2263 = fmul fast float %2262, 0x3FF337FAE0000000
  %2264 = fmul fast float %1286, %1286
  %2265 = fmul fast float %1887, %1887
  %2266 = fadd fast float %2265, %2264
  %2267 = fmul fast float %2266, 0x3FE5152B00000000
  %2268 = fmul fast float %1286, 0xBFCC1F85E0000000
  %2269 = fmul fast float %2268, %1887
  %2270 = fadd fast float %2269, 0xBFE1363700000000
  %2271 = fadd fast float %2270, %2263
  %2272 = fsub fast float %2271, %2267
  %2273 = fmul fast float %2262, 0x3FBA6F0D00000000
  %2274 = fmul fast float %2266, 0x3FD0432880000000
  %2275 = fmul fast float %1286, 0xBFEF110800000000
  %2276 = fmul fast float %2275, %1887
  %2277 = fadd fast float %2276, 1.000000e+00
  %2278 = fsub fast float %2277, %2273
  %2279 = fadd fast float %2278, %2274
  %2280 = fdiv fast float %2272, %2279
  %2281 = call float @dx.op.unary.f32(i32 7, float %2280)  ; Saturate(value)
  %2282 = fsub fast float %2281, %1286
  %2283 = fmul fast float %2282, %2206
  %2284 = fadd fast float %2283, %1286
  %2285 = fmul fast float %2209, %1993
  %2286 = fmul fast float %2209, %1994
  %2287 = fmul fast float %2209, %1995
  %2288 = fadd fast float %2285, %1278
  %2289 = fadd fast float %2286, %1279
  %2290 = fadd fast float %2287, %1280
  %2291 = fmul fast float %2212, %2048
  %2292 = fadd fast float %2291, %1288
  %2293 = fmul fast float %2215, %2045
  %2294 = fmul fast float %2215, %2046
  %2295 = fmul fast float %2215, %2047
  %2296 = fadd fast float %2293, %1275
  %2297 = fadd fast float %2294, %1276
  %2298 = fadd fast float %2295, %1277
  br label %2327

; <label>:2299                                    ; preds = %2251
  %2300 = icmp eq i32 %2195, 8
  br i1 %2300, label %2301, label %2327

; <label>:2301                                    ; preds = %2299
  %2302 = fmul fast float %2200, %1888
  %2303 = fmul fast float %2200, %1889
  %2304 = fadd fast float %2302, %1270
  %2305 = fadd fast float %2303, %1271
  %2306 = call float @dx.op.binary.f32(i32 36, float %1287, float %1890)  ; FMin(a,b)
  %2307 = fsub fast float %2306, %1287
  %2308 = fmul fast float %2307, %2203
  %2309 = fadd fast float %2308, %1287
  %2310 = fsub fast float %1887, %1286
  %2311 = fmul fast float %2206, %2310
  %2312 = fadd fast float %2311, %1286
  %2313 = fmul fast float %2209, %1993
  %2314 = fmul fast float %2209, %1994
  %2315 = fmul fast float %2209, %1995
  %2316 = fadd fast float %2313, %1278
  %2317 = fadd fast float %2314, %1279
  %2318 = fadd fast float %2315, %1280
  %2319 = fmul fast float %2212, %2048
  %2320 = fadd fast float %2319, %1288
  %2321 = fmul fast float %2215, %2045
  %2322 = fmul fast float %2215, %2046
  %2323 = fmul fast float %2215, %2047
  %2324 = fadd fast float %2321, %1275
  %2325 = fadd fast float %2322, %1276
  %2326 = fadd fast float %2323, %1277
  br label %2327

; <label>:2327                                    ; preds = %2301, %2299, %2253, %2217, %2186, %1586, %1290, %1269
  %2328 = phi float [ %1270, %2186 ], [ %1270, %1586 ], [ %1270, %1269 ], [ %2304, %2301 ], [ %1270, %2299 ], [ %2256, %2253 ], [ %2222, %2217 ], [ %1270, %1290 ]
  %2329 = phi float [ %1271, %2186 ], [ %1271, %1586 ], [ %1271, %1269 ], [ %2305, %2301 ], [ %1271, %2299 ], [ %2257, %2253 ], [ %2223, %2217 ], [ %1271, %1290 ]
  %2330 = phi float [ %2187, %2186 ], [ %1272, %1586 ], [ %1272, %1269 ], [ %2187, %2301 ], [ %2187, %2299 ], [ %2187, %2253 ], [ %2187, %2217 ], [ %1272, %1290 ]
  %2331 = phi float [ %2188, %2186 ], [ %1273, %1586 ], [ %1273, %1269 ], [ %2188, %2301 ], [ %2188, %2299 ], [ %2188, %2253 ], [ %2188, %2217 ], [ %1273, %1290 ]
  %2332 = phi float [ %2189, %2186 ], [ %1274, %1586 ], [ %1274, %1269 ], [ %2189, %2301 ], [ %2189, %2299 ], [ %2189, %2253 ], [ %2189, %2217 ], [ %1274, %1290 ]
  %2333 = phi float [ %1275, %2186 ], [ %1275, %1586 ], [ %1275, %1269 ], [ %2324, %2301 ], [ %1275, %2299 ], [ %2296, %2253 ], [ %2248, %2217 ], [ %1275, %1290 ]
  %2334 = phi float [ %1276, %2186 ], [ %1276, %1586 ], [ %1276, %1269 ], [ %2325, %2301 ], [ %1276, %2299 ], [ %2297, %2253 ], [ %2249, %2217 ], [ %1276, %1290 ]
  %2335 = phi float [ %1277, %2186 ], [ %1277, %1586 ], [ %1277, %1269 ], [ %2326, %2301 ], [ %1277, %2299 ], [ %2298, %2253 ], [ %2250, %2217 ], [ %1277, %1290 ]
  %2336 = phi float [ %1278, %2186 ], [ %1278, %1586 ], [ %1278, %1269 ], [ %2316, %2301 ], [ %1278, %2299 ], [ %2288, %2253 ], [ %2236, %2217 ], [ %1278, %1290 ]
  %2337 = phi float [ %1279, %2186 ], [ %1279, %1586 ], [ %1279, %1269 ], [ %2317, %2301 ], [ %1279, %2299 ], [ %2289, %2253 ], [ %2237, %2217 ], [ %1279, %1290 ]
  %2338 = phi float [ %1280, %2186 ], [ %1280, %1586 ], [ %1280, %1269 ], [ %2318, %2301 ], [ %1280, %2299 ], [ %2290, %2253 ], [ %2238, %2217 ], [ %1280, %1290 ]
  %2339 = phi float [ %2190, %2186 ], [ %1281, %1586 ], [ %1281, %1269 ], [ %2190, %2301 ], [ %2190, %2299 ], [ %2190, %2253 ], [ %2190, %2217 ], [ %1281, %1290 ]
  %2340 = phi float [ %2191, %2186 ], [ %1282, %1586 ], [ %1282, %1269 ], [ %2191, %2301 ], [ %2191, %2299 ], [ %2191, %2253 ], [ %2191, %2217 ], [ %1282, %1290 ]
  %2341 = phi float [ %2192, %2186 ], [ %1283, %1586 ], [ %1283, %1269 ], [ %2192, %2301 ], [ %2192, %2299 ], [ %2192, %2253 ], [ %2192, %2217 ], [ %1283, %1290 ]
  %2342 = phi float [ %2193, %2186 ], [ %1284, %1586 ], [ %1284, %1269 ], [ %2193, %2301 ], [ %2193, %2299 ], [ %2193, %2253 ], [ %2193, %2217 ], [ %1284, %1290 ]
  %2343 = phi float [ %1286, %2186 ], [ %1286, %1586 ], [ %1286, %1269 ], [ %2312, %2301 ], [ %1286, %2299 ], [ %2284, %2253 ], [ %2229, %2217 ], [ %1286, %1290 ]
  %2344 = phi float [ %1287, %2186 ], [ %1287, %1586 ], [ %1287, %1269 ], [ %2309, %2301 ], [ %1287, %2299 ], [ %2261, %2253 ], [ %2226, %2217 ], [ %1287, %1290 ]
  %2345 = phi float [ %1288, %2186 ], [ %1288, %1586 ], [ %1288, %1269 ], [ %2320, %2301 ], [ %1288, %2299 ], [ %2292, %2253 ], [ %2241, %2217 ], [ %1288, %1290 ]
  %2346 = phi float [ %2194, %2186 ], [ %1289, %1586 ], [ %1289, %1269 ], [ %2194, %2301 ], [ %2194, %2299 ], [ %2194, %2253 ], [ %2194, %2217 ], [ %1289, %1290 ]
  br i1 %444, label %3384, label %2347

; <label>:2347                                    ; preds = %2327
  %2348 = icmp ult i32 %500, 3
  %2349 = add i32 %60, 56
  %2350 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2349, i32 undef)  ; BufferLoad(srv,index,wot)
  %2351 = extractvalue %dx.types.ResRet.i32 %2350, 0
  %2352 = add i32 %60, 60
  %2353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2352, i32 undef)  ; BufferLoad(srv,index,wot)
  %2354 = extractvalue %dx.types.ResRet.i32 %2353, 0
  %2355 = or i32 %2354, %2351
  %2356 = icmp eq i32 %2355, 0
  br i1 %2356, label %3384, label %2357

; <label>:2357                                    ; preds = %2347
  %2358 = and i32 %2351, 262144
  %2359 = icmp ne i32 %2358, 0
  %2360 = select i1 %2359, float %63, float 1.000000e+00
  %2361 = select i1 %2359, float %64, float 0.000000e+00
  %2362 = select i1 %2359, float %65, float 0.000000e+00
  %2363 = select i1 %2359, float %66, float 1.000000e+00
  %2364 = select i1 %2359, float %67, float %88
  %2365 = select i1 %2359, float %68, float %89
  %2366 = add i32 %60, 316
  %2367 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2366, i32 undef)  ; BufferLoad(srv,index,wot)
  %2368 = extractvalue %dx.types.ResRet.i32 %2367, 0
  %2369 = lshr i32 %2368, 16
  %2370 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2369)  ; LegacyF16ToF32(value)
  %2371 = fmul fast float %2370, 0x3F50624DE0000000
  %2372 = add i32 %60, 120
  %2373 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2372, i32 undef)  ; BufferLoad(srv,index,wot)
  %2374 = extractvalue %dx.types.ResRet.i32 %2373, 0
  %2375 = lshr i32 %2374, 16
  %2376 = and i32 %2375, 255
  %2377 = lshr i32 %2374, 24
  %2378 = add i32 %60, 324
  %2379 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2378, i32 undef)  ; BufferLoad(srv,index,wot)
  %2380 = extractvalue %dx.types.ResRet.i32 %2379, 0
  %2381 = and i32 %2380, 65535
  %2382 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2381)  ; LegacyF16ToF32(value)
  %2383 = lshr i32 %2380, 16
  %2384 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2383)  ; LegacyF16ToF32(value)
  %2385 = add i32 %60, 64
  %2386 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2385, i32 undef)  ; BufferLoad(srv,index,wot)
  %2387 = extractvalue %dx.types.ResRet.i32 %2386, 0
  %2388 = lshr i32 %2387, 22
  %2389 = shl nuw nsw i32 %2388, 5
  %2390 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2389)  ; LegacyF16ToF32(value)
  %2391 = shl i32 %2387, 4
  %2392 = and i32 %2391, 32752
  %2393 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2392)  ; LegacyF16ToF32(value)
  %2394 = lshr i32 %2387, 7
  %2395 = and i32 %2394, 32752
  %2396 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2395)  ; LegacyF16ToF32(value)
  %2397 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2398 = extractvalue %dx.types.CBufRet.f32 %2397, 3
  %2399 = fmul fast float %2398, 1.000000e+03
  %2400 = fmul fast float %394, %2399
  %2401 = call float @dx.op.unary.f32(i32 22, float %2400)  ; Frc(value)
  %2402 = fadd fast float %2401, %384
  %2403 = fmul fast float %395, %2399
  %2404 = call float @dx.op.unary.f32(i32 22, float %2403)  ; Frc(value)
  %2405 = fadd fast float %2404, %386
  %2406 = fmul fast float %2371, %2399
  %2407 = call float @dx.op.unary.f32(i32 22, float %2406)  ; Frc(value)
  %2408 = fmul fast float %2407, 0x401921FB60000000
  %2409 = fadd fast float %2408, %2390
  %2410 = call float @dx.op.unary.f32(i32 13, float %2409)  ; Sin(value)
  %2411 = call float @dx.op.unary.f32(i32 12, float %2409)  ; Cos(value)
  %2412 = fsub fast float -0.000000e+00, %2410
  %2413 = fadd fast float %2364, -5.000000e-01
  %2414 = fadd fast float %2365, -5.000000e-01
  %2415 = fmul fast float %2382, %2413
  %2416 = fmul fast float %2384, %2414
  %2417 = fadd fast float %2415, 5.000000e-01
  %2418 = fadd fast float %2416, 5.000000e-01
  %2419 = fmul fast float %2393, %2417
  %2420 = fmul fast float %2396, %2418
  %2421 = fmul fast float %2411, %2419
  %2422 = call float @dx.op.tertiary.f32(i32 46, float %2412, float %2420, float %2421)  ; FMad(a,b,c)
  %2423 = fmul fast float %2410, %2419
  %2424 = call float @dx.op.tertiary.f32(i32 46, float %2411, float %2420, float %2423)  ; FMad(a,b,c)
  %2425 = fadd fast float %2402, %2422
  %2426 = fadd fast float %2405, %2424
  %2427 = icmp ugt i32 %2376, 1
  %2428 = icmp ugt i32 %2374, 33554431
  %2429 = or i1 %2428, %2427
  br i1 %2429, label %2430, label %2455

; <label>:2430                                    ; preds = %2357
  %2431 = add i32 %60, 260
  %2432 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2431, i32 undef)  ; BufferLoad(srv,index,wot)
  %2433 = extractvalue %dx.types.ResRet.i32 %2432, 0
  %2434 = lshr i32 %2433, 16
  %2435 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2434)  ; LegacyF16ToF32(value)
  %2436 = fmul fast float %2398, %2435
  %2437 = call float @dx.op.unary.f32(i32 22, float %2436)  ; Frc(value)
  %2438 = mul nuw nsw i32 %2376, %2377
  %2439 = uitofp i32 %2438 to float
  %2440 = fmul fast float %2437, %2439
  %2441 = call float @dx.op.unary.f32(i32 27, float %2440)  ; Round_ni(value)
  %2442 = fptoui float %2441 to i32
  %2443 = urem i32 %2442, %2376
  %2444 = udiv i32 %2442, %2377
  %2445 = call float @dx.op.unary.f32(i32 22, float %2425)  ; Frc(value)
  %2446 = call float @dx.op.unary.f32(i32 22, float %2426)  ; Frc(value)
  %2447 = uitofp i32 %2443 to float
  %2448 = uitofp i32 %2444 to float
  %2449 = fadd fast float %2445, %2447
  %2450 = fadd fast float %2446, %2448
  %2451 = uitofp i32 %2376 to float
  %2452 = uitofp i32 %2377 to float
  %2453 = fdiv fast float %2449, %2451
  %2454 = fdiv fast float %2450, %2452
  br label %2455

; <label>:2455                                    ; preds = %2430, %2357
  %2456 = phi float [ %2453, %2430 ], [ %2425, %2357 ]
  %2457 = phi float [ %2454, %2430 ], [ %2426, %2357 ]
  %2458 = and i32 %2351, 16777216
  %2459 = icmp eq i32 %2458, 0
  br i1 %2459, label %2569, label %2460

; <label>:2460                                    ; preds = %2455
  %2461 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2462 = extractvalue %dx.types.CBufRet.f32 %2461, 0
  %2463 = extractvalue %dx.types.CBufRet.f32 %2461, 1
  %2464 = extractvalue %dx.types.CBufRet.f32 %2461, 2
  %2465 = fadd fast float %2462, %164
  %2466 = fadd fast float %2463, %165
  %2467 = fadd fast float %2464, %166
  %2468 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2469 = extractvalue %dx.types.CBufRet.f32 %2468, 0
  %2470 = call float @dx.op.unary.f32(i32 7, float %2469)  ; Saturate(value)
  %2471 = icmp eq i32 %61, 65535
  br i1 %2471, label %2566, label %2472

; <label>:2472                                    ; preds = %2460
  %2473 = lshr i32 %61, 1
  %2474 = shl i32 %2473, 2
  %2475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2474, i32 undef)  ; BufferLoad(srv,index,wot)
  %2476 = extractvalue %dx.types.ResRet.i32 %2475, 0
  %2477 = and i32 %61, 1
  %2478 = icmp ne i32 %2477, 0
  %2479 = lshr i32 %2476, 16
  %2480 = and i32 %2476, 65535
  %2481 = select i1 %2478, i32 %2479, i32 %2480
  %2482 = icmp eq i32 %2481, 65535
  br i1 %2482, label %2562, label %2483

; <label>:2483                                    ; preds = %2472
  %2484 = mul nuw nsw i32 %2481, 40
  %2485 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %2484, i32 undef)  ; BufferLoad(srv,index,wot)
  %2486 = extractvalue %dx.types.ResRet.f32 %2485, 0
  %2487 = extractvalue %dx.types.ResRet.f32 %2485, 1
  %2488 = extractvalue %dx.types.ResRet.f32 %2485, 2
  %2489 = add nuw nsw i32 %2484, 12
  %2490 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %2489, i32 undef)  ; BufferLoad(srv,index,wot)
  %2491 = extractvalue %dx.types.ResRet.f32 %2490, 0
  %2492 = extractvalue %dx.types.ResRet.f32 %2490, 1
  %2493 = extractvalue %dx.types.ResRet.f32 %2490, 2
  %2494 = add nuw nsw i32 %2484, 24
  %2495 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %2494, i32 undef)  ; BufferLoad(srv,index,wot)
  %2496 = extractvalue %dx.types.ResRet.f32 %2495, 0
  %2497 = extractvalue %dx.types.ResRet.f32 %2495, 1
  %2498 = extractvalue %dx.types.ResRet.f32 %2495, 2
  %2499 = add nuw nsw i32 %2484, 36
  %2500 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %2499, i32 undef)  ; BufferLoad(srv,index,wot)
  %2501 = extractvalue %dx.types.ResRet.f32 %2500, 0
  %2502 = fsub fast float %2465, %2486
  %2503 = fsub fast float %2466, %2487
  %2504 = fsub fast float %2467, %2488
  %2505 = fmul fast float %2501, %2502
  %2506 = fmul fast float %2501, %2503
  %2507 = fmul fast float %2501, %2504
  %2508 = call float @dx.op.unary.f32(i32 27, float %2505)  ; Round_ni(value)
  %2509 = call float @dx.op.unary.f32(i32 27, float %2506)  ; Round_ni(value)
  %2510 = call float @dx.op.unary.f32(i32 27, float %2507)  ; Round_ni(value)
  %2511 = fadd fast float %2508, 5.000000e-01
  %2512 = fadd fast float %2509, 5.000000e-01
  %2513 = fadd fast float %2510, 5.000000e-01
  %2514 = fmul fast float %2511, %2491
  %2515 = fmul fast float %2512, %2492
  %2516 = fmul fast float %2513, %2493
  %2517 = shl i32 %61, 2
  %2518 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2517, i32 undef)  ; BufferLoad(srv,index,wot)
  %2519 = extractvalue %dx.types.ResRet.i32 %2518, 0
  %2520 = add i32 %2519, 0
  %2521 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2520, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2522 = call float @dx.op.unary.f32(i32 22, float %2514)  ; Frc(value)
  %2523 = call float @dx.op.unary.f32(i32 22, float %2515)  ; Frc(value)
  %2524 = call float @dx.op.unary.f32(i32 22, float %2516)  ; Frc(value)
  %2525 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2521, %dx.types.Handle %55, float %2522, float %2523, float %2524, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2526 = extractvalue %dx.types.ResRet.f32 %2525, 0
  %2527 = extractvalue %dx.types.ResRet.f32 %2525, 1
  %2528 = extractvalue %dx.types.ResRet.f32 %2525, 2
  %2529 = fmul fast float %2526, 1.023000e+03
  %2530 = fmul fast float %2527, 1.023000e+03
  %2531 = fmul fast float %2528, 1.023000e+03
  %2532 = fadd fast float %2529, 5.000000e-01
  %2533 = fadd fast float %2530, 5.000000e-01
  %2534 = fadd fast float %2531, 5.000000e-01
  %2535 = call float @dx.op.unary.f32(i32 27, float %2532)  ; Round_ni(value)
  %2536 = call float @dx.op.unary.f32(i32 27, float %2533)  ; Round_ni(value)
  %2537 = call float @dx.op.unary.f32(i32 27, float %2534)  ; Round_ni(value)
  %2538 = fsub fast float %2505, %2508
  %2539 = fsub fast float %2506, %2509
  %2540 = fsub fast float %2507, %2510
  %2541 = fmul fast float %2538, 7.500000e-01
  %2542 = fmul fast float %2539, 7.500000e-01
  %2543 = fmul fast float %2540, 7.500000e-01
  %2544 = fadd fast float %2508, 1.250000e-01
  %2545 = fadd fast float %2544, %2541
  %2546 = fadd fast float %2545, %2535
  %2547 = fadd fast float %2509, 1.250000e-01
  %2548 = fadd fast float %2547, %2542
  %2549 = fadd fast float %2548, %2536
  %2550 = fadd fast float %2510, 1.250000e-01
  %2551 = fadd fast float %2550, %2543
  %2552 = fadd fast float %2551, %2537
  %2553 = fmul fast float %2546, %2496
  %2554 = fmul fast float %2549, %2497
  %2555 = fmul fast float %2552, %2498
  %2556 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2517, i32 undef)  ; BufferLoad(srv,index,wot)
  %2557 = extractvalue %dx.types.ResRet.i32 %2556, 0
  %2558 = add i32 %2557, 0
  %2559 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2558, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2560 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2559, %dx.types.Handle %53, float %2553, float %2554, float %2555, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2561 = extractvalue %dx.types.ResRet.f32 %2560, 0
  br label %2562

; <label>:2562                                    ; preds = %2483, %2472
  %2563 = phi float [ %2561, %2483 ], [ -1.000000e+00, %2472 ]
  %2564 = fadd fast float %2563, %2470
  %2565 = call float @dx.op.unary.f32(i32 7, float %2564)  ; Saturate(value)
  br label %2566

; <label>:2566                                    ; preds = %2562, %2460
  %2567 = phi float [ %2565, %2562 ], [ %2470, %2460 ]
  %2568 = fmul fast float %2567, %496
  br label %2569

; <label>:2569                                    ; preds = %2566, %2455
  %2570 = phi float [ %2568, %2566 ], [ %496, %2455 ]
  %2571 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2349, i32 undef)  ; BufferLoad(srv,index,wot)
  %2572 = extractvalue %dx.types.ResRet.i32 %2571, 0
  %2573 = and i32 %2572, 256
  %2574 = icmp eq i32 %2573, 0
  br i1 %2574, label %2621, label %2575

; <label>:2575                                    ; preds = %2569
  %2576 = add i32 %60, 496
  %2577 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2576, i32 undef)  ; BufferLoad(srv,index,wot)
  %2578 = extractvalue %dx.types.ResRet.i32 %2577, 0
  %2579 = add i32 %2578, 0
  %2580 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2579, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2581 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2580, %dx.types.Handle %106, float %2456, float %2457, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2582 = extractvalue %dx.types.ResRet.f32 %2581, 0
  %2583 = add i32 %60, 132
  %2584 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2583, i32 undef)  ; BufferLoad(srv,index,wot)
  %2585 = extractvalue %dx.types.ResRet.i32 %2584, 0
  %2586 = shl i32 %2585, 4
  %2587 = and i32 %2586, 32752
  %2588 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2587)  ; LegacyF16ToF32(value)
  %2589 = lshr i32 %2585, 7
  %2590 = and i32 %2589, 32752
  %2591 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2590)  ; LegacyF16ToF32(value)
  %2592 = fsub fast float 1.000000e+00, %2570
  %2593 = call float @dx.op.binary.f32(i32 35, float %2592, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2594 = bitcast float %2570 to i32
  %2595 = sitofp i32 %2594 to float
  %2596 = fadd fast float %2595, 0xC1CFBF8940000000
  %2597 = fmul fast float %2591, %2596
  %2598 = fadd fast float %2597, 0x41CFBF8940000000
  %2599 = fptosi float %2598 to i32
  %2600 = bitcast i32 %2599 to float
  %2601 = bitcast float %2593 to i32
  %2602 = sitofp i32 %2601 to float
  %2603 = fadd fast float %2602, 0xC1CFBF8940000000
  %2604 = fmul fast float %2603, %2591
  %2605 = fadd fast float %2604, 0x41CFBF8940000000
  %2606 = fptosi float %2605 to i32
  %2607 = bitcast i32 %2606 to float
  %2608 = fmul fast float %2600, %2588
  %2609 = fmul fast float %2607, %2588
  %2610 = fsub fast float %2593, %2608
  %2611 = fadd fast float %2609, %2593
  %2612 = call float @dx.op.unary.f32(i32 7, float %2610)  ; Saturate(value)
  %2613 = call float @dx.op.unary.f32(i32 7, float %2611)  ; Saturate(value)
  %2614 = fsub fast float %2582, %2612
  %2615 = fsub fast float %2613, %2612
  %2616 = bitcast float %2615 to i32
  %2617 = sub nsw i32 2129859010, %2616
  %2618 = bitcast i32 %2617 to float
  %2619 = fmul fast float %2618, %2614
  %2620 = call float @dx.op.unary.f32(i32 7, float %2619)  ; Saturate(value)
  br label %2621

; <label>:2621                                    ; preds = %2575, %2569
  %2622 = phi float [ %2620, %2575 ], [ %2570, %2569 ]
  %2623 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2349, i32 undef)  ; BufferLoad(srv,index,wot)
  %2624 = extractvalue %dx.types.ResRet.i32 %2623, 0
  %2625 = and i32 %2624, 128
  %2626 = icmp eq i32 %2625, 0
  br i1 %2626, label %2643, label %2627

; <label>:2627                                    ; preds = %2621
  %2628 = add i32 %60, 480
  %2629 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2628, i32 undef)  ; BufferLoad(srv,index,wot)
  %2630 = extractvalue %dx.types.ResRet.i32 %2629, 0
  %2631 = add i32 %2630, 0
  %2632 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2631, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2633 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2632, %dx.types.Handle %106, float %2456, float %2457, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2634 = extractvalue %dx.types.ResRet.f32 %2633, 0
  %2635 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2349, i32 undef)  ; BufferLoad(srv,index,wot)
  %2636 = extractvalue %dx.types.ResRet.i32 %2635, 0
  %2637 = and i32 %2636, 524288
  %2638 = icmp ne i32 %2637, 0
  %2639 = fcmp fast ogt float %2634, 0x3FE0101020000000
  %2640 = select i1 %2639, float 1.000000e+00, float 0.000000e+00
  %2641 = select i1 %2638, float %2640, float %2634
  %2642 = fmul fast float %2641, %2622
  br label %2643

; <label>:2643                                    ; preds = %2627, %2621
  %2644 = phi float [ %2642, %2627 ], [ %2622, %2621 ]
  %2645 = fcmp fast ult float %2644, 0x3F70101020000000
  br i1 %2645, label %3384, label %2646

; <label>:2646                                    ; preds = %2643
  %2647 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2349, i32 undef)  ; BufferLoad(srv,index,wot)
  %2648 = extractvalue %dx.types.ResRet.i32 %2647, 0
  %2649 = and i32 %2648, 16
  %2650 = icmp eq i32 %2649, 0
  br i1 %2650, label %2849, label %2651

; <label>:2651                                    ; preds = %2646
  %2652 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2372, i32 undef)  ; BufferLoad(srv,index,wot)
  %2653 = extractvalue %dx.types.ResRet.i32 %2652, 0
  %2654 = add i32 %60, 432
  %2655 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2654, i32 undef)  ; BufferLoad(srv,index,wot)
  %2656 = extractvalue %dx.types.ResRet.i32 %2655, 0
  %2657 = add i32 %2656, 0
  %2658 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2657, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2659 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2658, %dx.types.Handle %105, float %2456, float %2457, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2660 = extractvalue %dx.types.ResRet.f32 %2659, 0
  %2661 = extractvalue %dx.types.ResRet.f32 %2659, 1
  %2662 = extractvalue %dx.types.ResRet.f32 %2659, 2
  %2663 = extractvalue %dx.types.ResRet.f32 %2659, 3
  %2664 = and i32 %2653, 255
  %2665 = uitofp i32 %2664 to float
  %2666 = lshr i32 %2653, 8
  %2667 = and i32 %2666, 255
  %2668 = uitofp i32 %2667 to float
  %2669 = fmul fast float %2663, %2665
  %2670 = fadd fast float %2669, %2668
  %2671 = fmul fast float %2670, 0x3F70101000000000
  %2672 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2349, i32 undef)  ; BufferLoad(srv,index,wot)
  %2673 = extractvalue %dx.types.ResRet.i32 %2672, 0
  %2674 = and i32 %2673, 512
  %2675 = icmp eq i32 %2674, 0
  br i1 %2675, label %2684, label %2676

; <label>:2676                                    ; preds = %2651
  %2677 = add i32 %60, 516
  %2678 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2677, i32 undef)  ; BufferLoad(srv,index,wot)
  %2679 = extractvalue %dx.types.ResRet.i32 %2678, 0
  %2680 = add i32 %2679, 0
  %2681 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2680, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2682 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2681, %dx.types.Handle %106, float %2456, float %2457, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2683 = extractvalue %dx.types.ResRet.f32 %2682, 0
  br label %2684

; <label>:2684                                    ; preds = %2676, %2651
  %2685 = phi float [ %2683, %2676 ], [ 1.000000e+00, %2651 ]
  %2686 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2349, i32 undef)  ; BufferLoad(srv,index,wot)
  %2687 = extractvalue %dx.types.ResRet.i32 %2686, 0
  %2688 = and i32 %2687, 33554432
  %2689 = icmp eq i32 %2688, 0
  br i1 %2689, label %2796, label %2690

; <label>:2690                                    ; preds = %2684
  %2691 = add i32 %60, 256
  %2692 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2691, i32 undef)  ; BufferLoad(srv,index,wot)
  %2693 = extractvalue %dx.types.ResRet.i32 %2692, 0
  %2694 = and i32 %2693, 65535
  %2695 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2694)  ; LegacyF16ToF32(value)
  %2696 = lshr i32 %2693, 16
  %2697 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2696)  ; LegacyF16ToF32(value)
  %2698 = add i32 %60, 260
  %2699 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2698, i32 undef)  ; BufferLoad(srv,index,wot)
  %2700 = extractvalue %dx.types.ResRet.i32 %2699, 0
  %2701 = and i32 %2700, 65535
  %2702 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2701)  ; LegacyF16ToF32(value)
  %2703 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %366, i32 undef)  ; BufferLoad(srv,index,wot)
  %2704 = extractvalue %dx.types.ResRet.i32 %2703, 0
  %2705 = lshr i32 %2704, 24
  %2706 = uitofp i32 %2705 to float
  %2707 = fmul fast float %2706, 0x3F70101020000000
  %2708 = and i32 %2704, 255
  %2709 = uitofp i32 %2708 to float
  %2710 = fmul fast float %2709, 0x3F70101020000000
  %2711 = lshr i32 %2704, 8
  %2712 = and i32 %2711, 255
  %2713 = uitofp i32 %2712 to float
  %2714 = fmul fast float %2713, 0x3F70101020000000
  %2715 = lshr i32 %2704, 16
  %2716 = and i32 %2715, 255
  %2717 = uitofp i32 %2716 to float
  %2718 = fmul fast float %2717, 0x3F70101020000000
  %2719 = add i32 %60, 252
  %2720 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2719, i32 undef)  ; BufferLoad(srv,index,wot)
  %2721 = extractvalue %dx.types.ResRet.i32 %2720, 0
  %2722 = lshr i32 %2721, 24
  %2723 = uitofp i32 %2722 to float
  %2724 = fmul fast float %2723, 0x3F70101020000000
  %2725 = and i32 %2721, 255
  %2726 = uitofp i32 %2725 to float
  %2727 = fmul fast float %2726, 0x3F70101020000000
  %2728 = lshr i32 %2721, 8
  %2729 = and i32 %2728, 255
  %2730 = uitofp i32 %2729 to float
  %2731 = fmul fast float %2730, 0x3F70101020000000
  %2732 = lshr i32 %2721, 16
  %2733 = and i32 %2732, 255
  %2734 = uitofp i32 %2733 to float
  %2735 = fmul fast float %2734, 0x3F70101020000000
  %2736 = bitcast float %2660 to i32
  %2737 = ashr i32 %2736, 1
  %2738 = sub nsw i32 1597463174, %2737
  %2739 = bitcast i32 %2738 to float
  %2740 = fmul fast float %2660, 5.000000e-01
  %2741 = fmul fast float %2739, %2739
  %2742 = fmul fast float %2741, %2740
  %2743 = fsub fast float 1.500000e+00, %2742
  %2744 = fmul fast float %2739, %2660
  %2745 = fmul fast float %2744, %2743
  %2746 = bitcast float %2661 to i32
  %2747 = ashr i32 %2746, 1
  %2748 = sub nsw i32 1597463174, %2747
  %2749 = bitcast i32 %2748 to float
  %2750 = fmul fast float %2661, 5.000000e-01
  %2751 = fmul fast float %2749, %2749
  %2752 = fmul fast float %2751, %2750
  %2753 = fsub fast float 1.500000e+00, %2752
  %2754 = fmul fast float %2749, %2661
  %2755 = fmul fast float %2754, %2753
  %2756 = bitcast float %2662 to i32
  %2757 = ashr i32 %2756, 1
  %2758 = sub nsw i32 1597463174, %2757
  %2759 = bitcast i32 %2758 to float
  %2760 = fmul fast float %2662, 5.000000e-01
  %2761 = fmul fast float %2759, %2759
  %2762 = fmul fast float %2761, %2760
  %2763 = fsub fast float 1.500000e+00, %2762
  %2764 = fmul fast float %2759, %2662
  %2765 = fmul fast float %2764, %2763
  %2766 = fsub fast float %2745, %2727
  %2767 = fsub fast float %2755, %2731
  %2768 = fsub fast float %2765, %2735
  %2769 = fmul fast float %2766, %2695
  %2770 = fmul fast float %2767, %2697
  %2771 = fmul fast float %2768, %2702
  %2772 = fadd fast float %2769, %2710
  %2773 = fadd fast float %2770, %2714
  %2774 = fadd fast float %2771, %2718
  %2775 = call float @dx.op.unary.f32(i32 7, float %2772)  ; Saturate(value)
  %2776 = call float @dx.op.unary.f32(i32 7, float %2773)  ; Saturate(value)
  %2777 = call float @dx.op.unary.f32(i32 7, float %2774)  ; Saturate(value)
  %2778 = fmul fast float %2775, %2775
  %2779 = fmul fast float %2776, %2776
  %2780 = fmul fast float %2777, %2777
  %2781 = fsub fast float %2778, %2660
  %2782 = fsub fast float %2779, %2661
  %2783 = fsub fast float %2780, %2662
  %2784 = fmul fast float %2781, %2685
  %2785 = fmul fast float %2782, %2685
  %2786 = fmul fast float %2783, %2685
  %2787 = fadd fast float %2784, %2660
  %2788 = fadd fast float %2785, %2661
  %2789 = fadd fast float %2786, %2662
  %2790 = fadd fast float %2707, %2671
  %2791 = fsub fast float %2790, %2724
  %2792 = call float @dx.op.unary.f32(i32 7, float %2791)  ; Saturate(value)
  %2793 = fsub fast float %2792, %2671
  %2794 = fmul fast float %2793, %2685
  %2795 = fadd fast float %2794, %2671
  br label %2849

; <label>:2796                                    ; preds = %2684
  %2797 = and i32 %2687, 134217728
  %2798 = icmp eq i32 %2797, 0
  br i1 %2798, label %2833, label %2799

; <label>:2799                                    ; preds = %2796
  %2800 = call float @dx.op.unary.f32(i32 24, float %371)  ; Sqrt(value)
  %2801 = call float @dx.op.unary.f32(i32 24, float %375)  ; Sqrt(value)
  %2802 = call float @dx.op.unary.f32(i32 24, float %379)  ; Sqrt(value)
  %2803 = fadd fast float %2800, -5.000000e-01
  %2804 = fadd fast float %2801, -5.000000e-01
  %2805 = fadd fast float %2802, -5.000000e-01
  %2806 = fmul fast float %2803, %2685
  %2807 = fmul fast float %2804, %2685
  %2808 = fmul fast float %2805, %2685
  %2809 = fadd fast float %2806, 5.000000e-01
  %2810 = fadd fast float %2807, 5.000000e-01
  %2811 = fadd fast float %2808, 5.000000e-01
  %2812 = call float @dx.op.unary.f32(i32 24, float %2660)  ; Sqrt(value)
  %2813 = call float @dx.op.unary.f32(i32 24, float %2661)  ; Sqrt(value)
  %2814 = call float @dx.op.unary.f32(i32 24, float %2662)  ; Sqrt(value)
  %2815 = fmul fast float %2809, 2.000000e+00
  %2816 = fsub fast float 1.000000e+00, %2815
  %2817 = fmul fast float %2816, %2812
  %2818 = fadd fast float %2817, %2815
  %2819 = fmul fast float %2818, %2812
  %2820 = fmul fast float %2810, 2.000000e+00
  %2821 = fsub fast float 1.000000e+00, %2820
  %2822 = fmul fast float %2821, %2813
  %2823 = fadd fast float %2822, %2820
  %2824 = fmul fast float %2823, %2813
  %2825 = fmul fast float %2811, 2.000000e+00
  %2826 = fsub fast float 1.000000e+00, %2825
  %2827 = fmul fast float %2826, %2814
  %2828 = fadd fast float %2827, %2825
  %2829 = fmul fast float %2828, %2814
  %2830 = fmul fast float %2819, %2819
  %2831 = fmul fast float %2824, %2824
  %2832 = fmul fast float %2829, %2829
  br label %2849

; <label>:2833                                    ; preds = %2796
  %2834 = fmul fast float %371, %371
  %2835 = fmul fast float %375, %375
  %2836 = fmul fast float %379, %379
  %2837 = fadd fast float %2834, -1.000000e+00
  %2838 = fadd fast float %2835, -1.000000e+00
  %2839 = fadd fast float %2836, -1.000000e+00
  %2840 = fmul fast float %2685, %2837
  %2841 = fmul fast float %2685, %2838
  %2842 = fmul fast float %2685, %2839
  %2843 = fadd fast float %2840, 1.000000e+00
  %2844 = fadd fast float %2841, 1.000000e+00
  %2845 = fadd fast float %2842, 1.000000e+00
  %2846 = fmul fast float %2843, %2660
  %2847 = fmul fast float %2844, %2661
  %2848 = fmul fast float %2845, %2662
  br label %2849

; <label>:2849                                    ; preds = %2833, %2799, %2690, %2646
  %2850 = phi float [ %2795, %2690 ], [ %2671, %2799 ], [ %2671, %2833 ], [ 0x3FA23C0BE0000000, %2646 ]
  %2851 = phi float [ %2787, %2690 ], [ %2830, %2799 ], [ %2846, %2833 ], [ 1.000000e+00, %2646 ]
  %2852 = phi float [ %2788, %2690 ], [ %2831, %2799 ], [ %2847, %2833 ], [ 1.000000e+00, %2646 ]
  %2853 = phi float [ %2789, %2690 ], [ %2832, %2799 ], [ %2848, %2833 ], [ 1.000000e+00, %2646 ]
  %2854 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2855 = extractvalue %dx.types.CBufRet.i32 %2854, 1
  %2856 = and i32 %2855, 1
  %2857 = icmp ne i32 %2856, 0
  %2858 = add i32 %60, 356
  %2859 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2858, i32 undef)  ; BufferLoad(srv,index,wot)
  %2860 = extractvalue %dx.types.ResRet.i32 %2859, 0
  %2861 = and i32 %2860, 32
  %2862 = icmp ne i32 %2861, 0
  %2863 = and i1 %2857, %2862
  %2864 = select i1 %2863, float 1.000000e+00, float %2851
  %2865 = select i1 %2863, float 0x3FD3333340000000, float %2852
  %2866 = select i1 %2863, float 0x3FD3333340000000, float %2853
  %2867 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2349, i32 undef)  ; BufferLoad(srv,index,wot)
  %2868 = extractvalue %dx.types.ResRet.i32 %2867, 0
  %2869 = and i32 %2868, 32
  %2870 = icmp eq i32 %2869, 0
  br i1 %2870, label %2943, label %2871

; <label>:2871                                    ; preds = %2849
  %2872 = add i32 %60, 124
  %2873 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2872, i32 undef)  ; BufferLoad(srv,index,wot)
  %2874 = extractvalue %dx.types.ResRet.i32 %2873, 0
  %2875 = add i32 %60, 448
  %2876 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2875, i32 undef)  ; BufferLoad(srv,index,wot)
  %2877 = extractvalue %dx.types.ResRet.i32 %2876, 0
  %2878 = add i32 %2877, 0
  %2879 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2878, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2880 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2879, %dx.types.Handle %105, float %2456, float %2457, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2881 = extractvalue %dx.types.ResRet.f32 %2880, 0
  %2882 = extractvalue %dx.types.ResRet.f32 %2880, 1
  %2883 = extractvalue %dx.types.ResRet.f32 %2880, 2
  %2884 = extractvalue %dx.types.ResRet.f32 %2880, 3
  %2885 = and i32 %2874, 255
  %2886 = uitofp i32 %2885 to float
  %2887 = lshr i32 %2874, 8
  %2888 = and i32 %2887, 255
  %2889 = uitofp i32 %2888 to float
  %2890 = lshr i32 %2874, 16
  %2891 = and i32 %2890, 255
  %2892 = uitofp i32 %2891 to float
  %2893 = fmul fast float %2892, 0x3F70101000000000
  %2894 = fmul fast float %2881, %2886
  %2895 = fadd fast float %2894, %2889
  %2896 = fmul fast float %2895, 0x3F70101000000000
  %2897 = fadd fast float %2882, -5.000000e-01
  %2898 = fadd fast float %2884, -5.000000e-01
  %2899 = fmul fast float %2897, %2893
  %2900 = fmul fast float %2898, %2893
  %2901 = fadd fast float %2899, 5.000000e-01
  %2902 = fadd fast float %2900, 5.000000e-01
  %2903 = fmul fast float %2901, 2.000000e+00
  %2904 = fadd fast float %2903, -1.000000e+00
  %2905 = fmul fast float %2902, 2.000000e+00
  %2906 = fadd fast float %2905, -1.000000e+00
  %2907 = fadd fast float %2904, %2906
  %2908 = fmul fast float %2907, 5.000000e-01
  %2909 = fsub fast float %2904, %2906
  %2910 = fmul fast float %2909, 5.000000e-01
  %2911 = call float @dx.op.unary.f32(i32 6, float %2908)  ; FAbs(value)
  %2912 = fsub fast float 1.000000e+00, %2911
  %2913 = call float @dx.op.unary.f32(i32 6, float %2910)  ; FAbs(value)
  %2914 = fsub fast float %2912, %2913
  %2915 = call float @dx.op.dot3.f32(i32 55, float %2908, float %2910, float %2914, float %2908, float %2910, float %2914)  ; Dot3(ax,ay,az,bx,by,bz)
  %2916 = call float @dx.op.unary.f32(i32 25, float %2915)  ; Rsqrt(value)
  %2917 = fmul fast float %2908, %2916
  %2918 = fmul fast float %2910, %2916
  %2919 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2349, i32 undef)  ; BufferLoad(srv,index,wot)
  %2920 = extractvalue %dx.types.ResRet.i32 %2919, 0
  %2921 = and i32 %2920, 67108864
  %2922 = icmp eq i32 %2921, 0
  br i1 %2922, label %2939, label %2923

; <label>:2923                                    ; preds = %2871
  %2924 = add i32 %60, 312
  %2925 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2924, i32 undef)  ; BufferLoad(srv,index,wot)
  %2926 = extractvalue %dx.types.ResRet.i32 %2925, 0
  %2927 = and i32 %2926, 65535
  %2928 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2927)  ; LegacyF16ToF32(value)
  %2929 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2366, i32 undef)  ; BufferLoad(srv,index,wot)
  %2930 = extractvalue %dx.types.ResRet.i32 %2929, 0
  %2931 = and i32 %2930, 65535
  %2932 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2931)  ; LegacyF16ToF32(value)
  %2933 = lshr i32 %2926, 16
  %2934 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2933)  ; LegacyF16ToF32(value)
  %2935 = fsub fast float %2896, %2934
  %2936 = fmul fast float %2935, %2928
  %2937 = fadd fast float %2936, %2932
  %2938 = call float @dx.op.unary.f32(i32 7, float %2937)  ; Saturate(value)
  br label %2939

; <label>:2939                                    ; preds = %2923, %2871
  %2940 = phi float [ %2938, %2923 ], [ %2896, %2871 ]
  %2941 = call float @dx.op.dot2.f32(i32 54, float %2917, float %2918, float %2360, float %2361)  ; Dot2(ax,ay,bx,by)
  %2942 = call float @dx.op.dot2.f32(i32 54, float %2917, float %2918, float %2362, float %2363)  ; Dot2(ax,ay,bx,by)
  br label %2943

; <label>:2943                                    ; preds = %2939, %2849
  %2944 = phi float [ %2940, %2939 ], [ 0x3FD6666660000000, %2849 ]
  %2945 = phi float [ %2941, %2939 ], [ 0.000000e+00, %2849 ]
  %2946 = phi float [ %2942, %2939 ], [ 0.000000e+00, %2849 ]
  %2947 = phi float [ %2883, %2939 ], [ 1.000000e+00, %2849 ]
  %2948 = add i32 %60, 192
  %2949 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2948, i32 undef)  ; BufferLoad(srv,index,wot)
  %2950 = extractvalue %dx.types.ResRet.i32 %2949, 0
  %2951 = lshr i32 %2950, 22
  %2952 = shl nuw nsw i32 %2951, 5
  %2953 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2952)  ; LegacyF16ToF32(value)
  %2954 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2349, i32 undef)  ; BufferLoad(srv,index,wot)
  %2955 = extractvalue %dx.types.ResRet.i32 %2954, 0
  %2956 = and i32 %2955, 64
  %2957 = icmp eq i32 %2956, 0
  br i1 %2957, label %2991, label %2958

; <label>:2958                                    ; preds = %2943
  %2959 = add i32 %60, 464
  %2960 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2959, i32 undef)  ; BufferLoad(srv,index,wot)
  %2961 = extractvalue %dx.types.ResRet.i32 %2960, 0
  %2962 = add i32 %2961, 0
  %2963 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2962, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2964 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2349, i32 undef)  ; BufferLoad(srv,index,wot)
  %2965 = extractvalue %dx.types.ResRet.i32 %2964, 0
  %2966 = and i32 %2965, 131072
  %2967 = icmp eq i32 %2966, 0
  %2968 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2963, %dx.types.Handle %105, float %2456, float %2457, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2969 = extractvalue %dx.types.ResRet.f32 %2968, 0
  %2970 = extractvalue %dx.types.ResRet.f32 %2968, 1
  %2971 = extractvalue %dx.types.ResRet.f32 %2968, 2
  %2972 = fmul fast float %2969, %359
  %2973 = fmul fast float %2970, %362
  %2974 = fmul fast float %2971, %365
  br i1 %2967, label %2981, label %2975

; <label>:2975                                    ; preds = %2958
  %2976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2977 = extractvalue %dx.types.CBufRet.f32 %2976, 0
  %2978 = fmul fast float %2977, %2972
  %2979 = fmul fast float %2977, %2973
  %2980 = fmul fast float %2977, %2974
  br label %2981

; <label>:2981                                    ; preds = %2975, %2958
  %2982 = phi float [ %2978, %2975 ], [ %2972, %2958 ]
  %2983 = phi float [ %2979, %2975 ], [ %2973, %2958 ]
  %2984 = phi float [ %2980, %2975 ], [ %2974, %2958 ]
  %2985 = fmul fast float %2982, %2953
  %2986 = select i1 %258, float %2985, float %2982
  %2987 = call float @dx.op.dot3.f32(i32 55, float %2986, float %2983, float %2984, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2988 = select i1 %258, float 0.000000e+00, float %2982
  %2989 = select i1 %258, float %2987, float %2983
  %2990 = select i1 %258, float 0.000000e+00, float %2984
  br label %2991

; <label>:2991                                    ; preds = %2981, %2943
  %2992 = phi float [ %2988, %2981 ], [ 0.000000e+00, %2943 ]
  %2993 = phi float [ %2989, %2981 ], [ 0.000000e+00, %2943 ]
  %2994 = phi float [ %2990, %2981 ], [ 0.000000e+00, %2943 ]
  %2995 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2349, i32 undef)  ; BufferLoad(srv,index,wot)
  %2996 = extractvalue %dx.types.ResRet.i32 %2995, 0
  %2997 = and i32 %2996, 1024
  %2998 = icmp eq i32 %2997, 0
  br i1 %2998, label %3029, label %2999

; <label>:2999                                    ; preds = %2991
  %3000 = add i32 %60, 184
  %3001 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3000, i32 undef)  ; BufferLoad(srv,index,wot)
  %3002 = extractvalue %dx.types.ResRet.i32 %3001, 0
  %3003 = and i32 %3002, 255
  %3004 = uitofp i32 %3003 to float
  %3005 = fmul fast float %3004, 0x3F70101020000000
  %3006 = lshr i32 %3002, 8
  %3007 = and i32 %3006, 255
  %3008 = uitofp i32 %3007 to float
  %3009 = fmul fast float %3008, 0x3F70101020000000
  %3010 = lshr i32 %3002, 16
  %3011 = and i32 %3010, 255
  %3012 = uitofp i32 %3011 to float
  %3013 = fmul fast float %3012, 0x3F70101020000000
  %3014 = fmul fast float %3005, %3005
  %3015 = fmul fast float %3009, %3009
  %3016 = fmul fast float %3013, %3013
  %3017 = add i32 %60, 532
  %3018 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3017, i32 undef)  ; BufferLoad(srv,index,wot)
  %3019 = extractvalue %dx.types.ResRet.i32 %3018, 0
  %3020 = add i32 %3019, 0
  %3021 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3020, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3022 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3021, %dx.types.Handle %106, float %2456, float %2457, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3023 = extractvalue %dx.types.ResRet.f32 %3022, 0
  %3024 = extractvalue %dx.types.ResRet.f32 %3022, 1
  %3025 = extractvalue %dx.types.ResRet.f32 %3022, 2
  %3026 = fmul fast float %3014, %3023
  %3027 = fmul fast float %3015, %3024
  %3028 = fmul fast float %3016, %3025
  br label %3029

; <label>:3029                                    ; preds = %2999, %2991
  %3030 = phi float [ %3026, %2999 ], [ 0.000000e+00, %2991 ]
  %3031 = phi float [ %3027, %2999 ], [ 0.000000e+00, %2991 ]
  %3032 = phi float [ %3028, %2999 ], [ 0.000000e+00, %2991 ]
  %3033 = fcmp fast ogt float %3030, 0.000000e+00
  %3034 = fcmp fast ogt float %3031, 0.000000e+00
  %3035 = fcmp fast ogt float %3032, 0.000000e+00
  %3036 = call float @dx.op.unary.f32(i32 23, float %3030)  ; Log(value)
  %3037 = call float @dx.op.unary.f32(i32 23, float %3031)  ; Log(value)
  %3038 = call float @dx.op.unary.f32(i32 23, float %3032)  ; Log(value)
  %3039 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2948, i32 undef)  ; BufferLoad(srv,index,wot)
  %3040 = extractvalue %dx.types.ResRet.i32 %3039, 0
  %3041 = lshr i32 %3040, 7
  %3042 = and i32 %3041, 32752
  %3043 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3042)  ; LegacyF16ToF32(value)
  %3044 = fmul fast float %3036, 0xBFE62E4300000000
  %3045 = fmul fast float %3044, %3043
  %3046 = fmul fast float %3037, 0xBFE62E4300000000
  %3047 = fmul fast float %3046, %3043
  %3048 = fmul fast float %3038, 0xBFE62E4300000000
  %3049 = fmul fast float %3048, %3043
  %3050 = select i1 %3033, float %3045, float 1.270000e+02
  %3051 = select i1 %3034, float %3047, float 1.270000e+02
  %3052 = select i1 %3035, float %3049, float 1.270000e+02
  %3053 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2349, i32 undef)  ; BufferLoad(srv,index,wot)
  %3054 = extractvalue %dx.types.ResRet.i32 %3053, 0
  %3055 = and i32 %3054, 10240
  %3056 = icmp eq i32 %3055, 0
  br i1 %3056, label %3101, label %3057

; <label>:3057                                    ; preds = %3029
  %3058 = add i32 %60, 548
  %3059 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3058, i32 undef)  ; BufferLoad(srv,index,wot)
  %3060 = extractvalue %dx.types.ResRet.i32 %3059, 0
  %3061 = add i32 %3060, 0
  %3062 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3061, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3063 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3062, %dx.types.Handle %106, float %2456, float %2457, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3064 = extractvalue %dx.types.ResRet.f32 %3063, 1
  %3065 = extractvalue %dx.types.ResRet.f32 %3063, 3
  %3066 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2349, i32 undef)  ; BufferLoad(srv,index,wot)
  %3067 = extractvalue %dx.types.ResRet.i32 %3066, 0
  %3068 = and i32 %3067, 1048576
  %3069 = icmp ne i32 %3068, 0
  %3070 = and i32 %3067, 8192
  %3071 = icmp eq i32 %3070, 0
  br i1 %3071, label %3087, label %3072

; <label>:3072                                    ; preds = %3057
  %3073 = extractvalue %dx.types.ResRet.f32 %3063, 2
  %3074 = select i1 %3069, float %3073, float %3064
  %3075 = extractvalue %dx.types.ResRet.f32 %3063, 0
  %3076 = select i1 %3069, float %3075, float %3064
  %3077 = add i32 %60, 128
  %3078 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3077, i32 undef)  ; BufferLoad(srv,index,wot)
  %3079 = extractvalue %dx.types.ResRet.i32 %3078, 0
  %3080 = lshr i32 %3079, 16
  %3081 = and i32 %3080, 255
  %3082 = uitofp i32 %3081 to float
  %3083 = fmul fast float %3082, 0x3F80101020000000
  %3084 = fmul fast float %3083, %3076
  %3085 = fmul fast float %3083, %3064
  %3086 = fmul fast float %3083, %3074
  br label %3087

; <label>:3087                                    ; preds = %3072, %3057
  %3088 = phi float [ %3084, %3072 ], [ 0.000000e+00, %3057 ]
  %3089 = phi float [ %3085, %3072 ], [ 0.000000e+00, %3057 ]
  %3090 = phi float [ %3086, %3072 ], [ 0.000000e+00, %3057 ]
  %3091 = and i32 %3067, 2048
  %3092 = icmp eq i32 %3091, 0
  br i1 %3092, label %3101, label %3093

; <label>:3093                                    ; preds = %3087
  %3094 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2948, i32 undef)  ; BufferLoad(srv,index,wot)
  %3095 = extractvalue %dx.types.ResRet.i32 %3094, 0
  %3096 = shl i32 %3095, 4
  %3097 = and i32 %3096, 32752
  %3098 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3097)  ; LegacyF16ToF32(value)
  %3099 = fmul fast float %3098, %3065
  %3100 = call float @dx.op.binary.f32(i32 35, float %3099, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3101

; <label>:3101                                    ; preds = %3093, %3087, %3029
  %3102 = phi float [ %3088, %3093 ], [ %3088, %3087 ], [ 0.000000e+00, %3029 ]
  %3103 = phi float [ %3089, %3093 ], [ %3089, %3087 ], [ 0.000000e+00, %3029 ]
  %3104 = phi float [ %3090, %3093 ], [ %3090, %3087 ], [ 0.000000e+00, %3029 ]
  %3105 = phi float [ %3100, %3093 ], [ 0x3F70101020000000, %3087 ], [ 0x3F70101020000000, %3029 ]
  %3106 = add i32 %60, 128
  %3107 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3106, i32 undef)  ; BufferLoad(srv,index,wot)
  %3108 = extractvalue %dx.types.ResRet.i32 %3107, 0
  %3109 = and i32 %3108, 255
  %3110 = uitofp i32 %3109 to float
  %3111 = lshr i32 %3108, 8
  %3112 = and i32 %3111, 255
  %3113 = uitofp i32 %3112 to float
  %3114 = call float @dx.op.dot3.f32(i32 55, float %2864, float %2865, float %2866, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3115 = fmul fast float %3113, %3114
  %3116 = fadd fast float %3115, %3110
  %3117 = fmul fast float %3116, 0x3F70101020000000
  %3118 = call float @dx.op.unary.f32(i32 7, float %3117)  ; Saturate(value)
  br i1 %2348, label %3119, label %3154

; <label>:3119                                    ; preds = %3101
  %3120 = fmul fast float %3105, 2.000000e+00
  %3121 = fcmp fast olt float %3050, 1.270000e+02
  %3122 = fcmp fast olt float %3051, 1.270000e+02
  %3123 = fcmp fast olt float %3052, 1.270000e+02
  %3124 = fmul fast float %3050, 0xBFF7154760000000
  %3125 = fmul fast float %3124, %3120
  %3126 = fmul fast float %3051, 0xBFF7154760000000
  %3127 = fmul fast float %3126, %3120
  %3128 = fmul fast float %3052, 0xBFF7154760000000
  %3129 = fmul fast float %3128, %3120
  %3130 = call float @dx.op.unary.f32(i32 21, float %3125)  ; Exp(value)
  %3131 = call float @dx.op.unary.f32(i32 21, float %3127)  ; Exp(value)
  %3132 = call float @dx.op.unary.f32(i32 21, float %3129)  ; Exp(value)
  %3133 = call float @dx.op.unary.f32(i32 7, float %3130)  ; Saturate(value)
  %3134 = call float @dx.op.unary.f32(i32 7, float %3131)  ; Saturate(value)
  %3135 = call float @dx.op.unary.f32(i32 7, float %3132)  ; Saturate(value)
  %3136 = fadd fast float %3133, -1.000000e+00
  %3137 = select i1 %3121, float %3136, float -1.000000e+00
  %3138 = fadd fast float %3134, -1.000000e+00
  %3139 = select i1 %3122, float %3138, float -1.000000e+00
  %3140 = fadd fast float %3135, -1.000000e+00
  %3141 = select i1 %3123, float %3140, float -1.000000e+00
  %3142 = fmul fast float %3137, %2644
  %3143 = fmul fast float %3139, %2644
  %3144 = fmul fast float %3141, %2644
  %3145 = fadd fast float %3142, 1.000000e+00
  %3146 = fadd fast float %3143, 1.000000e+00
  %3147 = fadd fast float %3144, 1.000000e+00
  %3148 = fmul fast float %3145, %2330
  %3149 = fmul fast float %3146, %2331
  %3150 = fmul fast float %3147, %2332
  %3151 = fmul fast float %3145, %2339
  %3152 = fmul fast float %3146, %2340
  %3153 = fmul fast float %3147, %2341
  br label %3154

; <label>:3154                                    ; preds = %3119, %3101
  %3155 = phi float [ %3148, %3119 ], [ %2330, %3101 ]
  %3156 = phi float [ %3149, %3119 ], [ %2331, %3101 ]
  %3157 = phi float [ %3150, %3119 ], [ %2332, %3101 ]
  %3158 = phi float [ %3151, %3119 ], [ %2339, %3101 ]
  %3159 = phi float [ %3152, %3119 ], [ %2340, %3101 ]
  %3160 = phi float [ %3153, %3119 ], [ %2341, %3101 ]
  %3161 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2349, i32 undef)  ; BufferLoad(srv,index,wot)
  %3162 = extractvalue %dx.types.ResRet.i32 %3161, 0
  %3163 = and i32 %3162, 3
  %3164 = icmp eq i32 %3163, 3
  br i1 %3164, label %3243, label %3165

; <label>:3165                                    ; preds = %3154
  %3166 = and i32 %3162, 16
  %3167 = icmp ne i32 %3166, 0
  %3168 = select i1 %3167, float %2644, float 0.000000e+00
  %3169 = icmp eq i32 %3163, 0
  br i1 %3169, label %3170, label %3198

; <label>:3170                                    ; preds = %3165
  %3171 = and i32 %3162, 64
  %3172 = icmp ne i32 %3171, 0
  %3173 = select i1 %3172, float %2644, float 0.000000e+00
  %3174 = fsub fast float %2864, %3155
  %3175 = fsub fast float %2865, %3156
  %3176 = fsub fast float %2866, %3157
  %3177 = fmul fast float %3168, %3174
  %3178 = fmul fast float %3168, %3175
  %3179 = fmul fast float %3168, %3176
  %3180 = fadd fast float %3177, %3155
  %3181 = fadd fast float %3178, %3156
  %3182 = fadd fast float %3179, %3157
  %3183 = fsub fast float %2850, %2342
  %3184 = fmul fast float %3168, %3183
  %3185 = fadd fast float %3184, %2342
  %3186 = fsub fast float %2992, %3158
  %3187 = fsub fast float %2993, %3159
  %3188 = fsub fast float %2994, %3160
  %3189 = fmul fast float %3173, %3186
  %3190 = fmul fast float %3173, %3187
  %3191 = fmul fast float %3173, %3188
  %3192 = fadd fast float %3189, %3158
  %3193 = fadd fast float %3190, %3159
  %3194 = fadd fast float %3191, %3160
  %3195 = fsub fast float %3118, %2346
  %3196 = fmul fast float %3168, %3195
  %3197 = fadd fast float %3196, %2346
  br label %3243

; <label>:3198                                    ; preds = %3165
  %3199 = icmp eq i32 %3163, 1
  br i1 %3199, label %3200, label %3213

; <label>:3200                                    ; preds = %3198
  %3201 = fadd fast float %2864, -1.000000e+00
  %3202 = fadd fast float %2865, -1.000000e+00
  %3203 = fadd fast float %2866, -1.000000e+00
  %3204 = fmul fast float %3168, %3201
  %3205 = fmul fast float %3168, %3202
  %3206 = fmul fast float %3168, %3203
  %3207 = fadd fast float %3204, 1.000000e+00
  %3208 = fadd fast float %3205, 1.000000e+00
  %3209 = fadd fast float %3206, 1.000000e+00
  %3210 = fmul fast float %3207, %3155
  %3211 = fmul fast float %3208, %3156
  %3212 = fmul fast float %3209, %3157
  br label %3243

; <label>:3213                                    ; preds = %3198
  %3214 = icmp eq i32 %3163, 2
  br i1 %3214, label %3215, label %3243

; <label>:3215                                    ; preds = %3213
  %3216 = call float @dx.op.unary.f32(i32 24, float %2864)  ; Sqrt(value)
  %3217 = call float @dx.op.unary.f32(i32 24, float %2865)  ; Sqrt(value)
  %3218 = call float @dx.op.unary.f32(i32 24, float %2866)  ; Sqrt(value)
  %3219 = fadd fast float %3216, -5.000000e-01
  %3220 = fadd fast float %3217, -5.000000e-01
  %3221 = fadd fast float %3218, -5.000000e-01
  %3222 = fmul fast float %3219, %3168
  %3223 = fmul fast float %3220, %3168
  %3224 = fmul fast float %3221, %3168
  %3225 = fadd fast float %3222, 5.000000e-01
  %3226 = fadd fast float %3223, 5.000000e-01
  %3227 = fadd fast float %3224, 5.000000e-01
  %3228 = fmul fast float %3225, 2.000000e+00
  %3229 = fsub fast float 1.000000e+00, %3228
  %3230 = fmul fast float %3229, %3155
  %3231 = fadd fast float %3230, %3228
  %3232 = fmul fast float %3231, %3155
  %3233 = fmul fast float %3226, 2.000000e+00
  %3234 = fsub fast float 1.000000e+00, %3233
  %3235 = fmul fast float %3234, %3156
  %3236 = fadd fast float %3235, %3233
  %3237 = fmul fast float %3236, %3156
  %3238 = fmul fast float %3227, 2.000000e+00
  %3239 = fsub fast float 1.000000e+00, %3238
  %3240 = fmul fast float %3239, %3157
  %3241 = fadd fast float %3240, %3238
  %3242 = fmul fast float %3241, %3157
  br label %3243

; <label>:3243                                    ; preds = %3215, %3213, %3200, %3170, %3154
  %3244 = phi float [ %3155, %3154 ], [ %3232, %3215 ], [ %3155, %3213 ], [ %3210, %3200 ], [ %3180, %3170 ]
  %3245 = phi float [ %3156, %3154 ], [ %3237, %3215 ], [ %3156, %3213 ], [ %3211, %3200 ], [ %3181, %3170 ]
  %3246 = phi float [ %3157, %3154 ], [ %3242, %3215 ], [ %3157, %3213 ], [ %3212, %3200 ], [ %3182, %3170 ]
  %3247 = phi float [ %3158, %3154 ], [ %3158, %3215 ], [ %3158, %3213 ], [ %3158, %3200 ], [ %3192, %3170 ]
  %3248 = phi float [ %3159, %3154 ], [ %3159, %3215 ], [ %3159, %3213 ], [ %3159, %3200 ], [ %3193, %3170 ]
  %3249 = phi float [ %3160, %3154 ], [ %3160, %3215 ], [ %3160, %3213 ], [ %3160, %3200 ], [ %3194, %3170 ]
  %3250 = phi float [ %2342, %3154 ], [ %2342, %3215 ], [ %2342, %3213 ], [ %2342, %3200 ], [ %3185, %3170 ]
  %3251 = phi float [ %2346, %3154 ], [ %2346, %3215 ], [ %2346, %3213 ], [ %2346, %3200 ], [ %3197, %3170 ]
  %3252 = and i32 %3162, 12
  %3253 = icmp eq i32 %3252, 12
  br i1 %3253, label %3384, label %3254

; <label>:3254                                    ; preds = %3243
  %3255 = and i32 %3162, 2097184
  %3256 = icmp eq i32 %3255, 2097184
  %3257 = select i1 %3256, float %2644, float 0.000000e+00
  %3258 = and i32 %3162, 4194336
  %3259 = icmp eq i32 %3258, 4194336
  %3260 = select i1 %3259, float %2644, float 0.000000e+00
  %3261 = and i32 %3162, 8388640
  %3262 = icmp eq i32 %3261, 8388640
  %3263 = select i1 %3262, float %2644, float 0.000000e+00
  %3264 = and i32 %3162, 1024
  %3265 = icmp ne i32 %3264, 0
  %3266 = select i1 %3265, float %2644, float 0.000000e+00
  %3267 = and i32 %3162, 2048
  %3268 = icmp ne i32 %3267, 0
  %3269 = select i1 %3268, float %2644, float 0.000000e+00
  %3270 = and i32 %3162, 8192
  %3271 = icmp ne i32 %3270, 0
  %3272 = select i1 %3271, float %2644, float 0.000000e+00
  %3273 = icmp eq i32 %3252, 0
  br i1 %3273, label %3274, label %3308

; <label>:3274                                    ; preds = %3254
  %3275 = fsub fast float %2945, %2328
  %3276 = fsub fast float %2946, %2329
  %3277 = fmul fast float %3257, %3275
  %3278 = fmul fast float %3257, %3276
  %3279 = fadd fast float %3277, %2328
  %3280 = fadd fast float %3278, %2329
  %3281 = fsub fast float %2947, %2344
  %3282 = fmul fast float %3260, %3281
  %3283 = fadd fast float %3282, %2344
  %3284 = fsub fast float %2944, %2343
  %3285 = fmul fast float %3263, %3284
  %3286 = fadd fast float %3285, %2343
  %3287 = fsub fast float %3050, %2336
  %3288 = fsub fast float %3051, %2337
  %3289 = fsub fast float %3052, %2338
  %3290 = fmul fast float %3266, %3287
  %3291 = fmul fast float %3266, %3288
  %3292 = fmul fast float %3266, %3289
  %3293 = fadd fast float %3290, %2336
  %3294 = fadd fast float %3291, %2337
  %3295 = fadd fast float %3292, %2338
  %3296 = fsub fast float %3105, %2345
  %3297 = fmul fast float %3269, %3296
  %3298 = fadd fast float %3297, %2345
  %3299 = fsub fast float %3102, %2333
  %3300 = fsub fast float %3103, %2334
  %3301 = fsub fast float %3104, %2335
  %3302 = fmul fast float %3272, %3299
  %3303 = fmul fast float %3272, %3300
  %3304 = fmul fast float %3272, %3301
  %3305 = fadd fast float %3302, %2333
  %3306 = fadd fast float %3303, %2334
  %3307 = fadd fast float %3304, %2335
  br label %3384

; <label>:3308                                    ; preds = %3254
  %3309 = icmp eq i32 %3252, 4
  br i1 %3309, label %3310, label %3356

; <label>:3310                                    ; preds = %3308
  %3311 = fmul fast float %3257, %2945
  %3312 = fmul fast float %3257, %2946
  %3313 = fadd fast float %3311, %2328
  %3314 = fadd fast float %3312, %2329
  %3315 = call float @dx.op.binary.f32(i32 36, float %2344, float %2947)  ; FMin(a,b)
  %3316 = fsub fast float %3315, %2344
  %3317 = fmul fast float %3316, %3260
  %3318 = fadd fast float %3317, %2344
  %3319 = fadd fast float %2944, %2343
  %3320 = fmul fast float %3319, 0x3FF337FAE0000000
  %3321 = fmul fast float %2343, %2343
  %3322 = fmul fast float %2944, %2944
  %3323 = fadd fast float %3322, %3321
  %3324 = fmul fast float %3323, 0x3FE5152B00000000
  %3325 = fmul fast float %2343, 0xBFCC1F85E0000000
  %3326 = fmul fast float %3325, %2944
  %3327 = fadd fast float %3326, 0xBFE1363700000000
  %3328 = fadd fast float %3327, %3320
  %3329 = fsub fast float %3328, %3324
  %3330 = fmul fast float %3319, 0x3FBA6F0D00000000
  %3331 = fmul fast float %3323, 0x3FD0432880000000
  %3332 = fmul fast float %2343, 0xBFEF110800000000
  %3333 = fmul fast float %3332, %2944
  %3334 = fadd fast float %3333, 1.000000e+00
  %3335 = fsub fast float %3334, %3330
  %3336 = fadd fast float %3335, %3331
  %3337 = fdiv fast float %3329, %3336
  %3338 = call float @dx.op.unary.f32(i32 7, float %3337)  ; Saturate(value)
  %3339 = fsub fast float %3338, %2343
  %3340 = fmul fast float %3339, %3263
  %3341 = fadd fast float %3340, %2343
  %3342 = fmul fast float %3266, %3050
  %3343 = fmul fast float %3266, %3051
  %3344 = fmul fast float %3266, %3052
  %3345 = fadd fast float %3342, %2336
  %3346 = fadd fast float %3343, %2337
  %3347 = fadd fast float %3344, %2338
  %3348 = fmul fast float %3269, %3105
  %3349 = fadd fast float %3348, %2345
  %3350 = fmul fast float %3272, %3102
  %3351 = fmul fast float %3272, %3103
  %3352 = fmul fast float %3272, %3104
  %3353 = fadd fast float %3350, %2333
  %3354 = fadd fast float %3351, %2334
  %3355 = fadd fast float %3352, %2335
  br label %3384

; <label>:3356                                    ; preds = %3308
  %3357 = icmp eq i32 %3252, 8
  br i1 %3357, label %3358, label %3384

; <label>:3358                                    ; preds = %3356
  %3359 = fmul fast float %3257, %2945
  %3360 = fmul fast float %3257, %2946
  %3361 = fadd fast float %3359, %2328
  %3362 = fadd fast float %3360, %2329
  %3363 = call float @dx.op.binary.f32(i32 36, float %2344, float %2947)  ; FMin(a,b)
  %3364 = fsub fast float %3363, %2344
  %3365 = fmul fast float %3364, %3260
  %3366 = fadd fast float %3365, %2344
  %3367 = fsub fast float %2944, %2343
  %3368 = fmul fast float %3263, %3367
  %3369 = fadd fast float %3368, %2343
  %3370 = fmul fast float %3266, %3050
  %3371 = fmul fast float %3266, %3051
  %3372 = fmul fast float %3266, %3052
  %3373 = fadd fast float %3370, %2336
  %3374 = fadd fast float %3371, %2337
  %3375 = fadd fast float %3372, %2338
  %3376 = fmul fast float %3269, %3105
  %3377 = fadd fast float %3376, %2345
  %3378 = fmul fast float %3272, %3102
  %3379 = fmul fast float %3272, %3103
  %3380 = fmul fast float %3272, %3104
  %3381 = fadd fast float %3378, %2333
  %3382 = fadd fast float %3379, %2334
  %3383 = fadd fast float %3380, %2335
  br label %3384

; <label>:3384                                    ; preds = %3358, %3356, %3310, %3274, %3243, %2643, %2347, %2327
  %3385 = phi float [ %2328, %3243 ], [ %2328, %2643 ], [ %2328, %2327 ], [ %3361, %3358 ], [ %2328, %3356 ], [ %3313, %3310 ], [ %3279, %3274 ], [ %2328, %2347 ]
  %3386 = phi float [ %2329, %3243 ], [ %2329, %2643 ], [ %2329, %2327 ], [ %3362, %3358 ], [ %2329, %3356 ], [ %3314, %3310 ], [ %3280, %3274 ], [ %2329, %2347 ]
  %3387 = phi float [ %3244, %3243 ], [ %2330, %2643 ], [ %2330, %2327 ], [ %3244, %3358 ], [ %3244, %3356 ], [ %3244, %3310 ], [ %3244, %3274 ], [ %2330, %2347 ]
  %3388 = phi float [ %3245, %3243 ], [ %2331, %2643 ], [ %2331, %2327 ], [ %3245, %3358 ], [ %3245, %3356 ], [ %3245, %3310 ], [ %3245, %3274 ], [ %2331, %2347 ]
  %3389 = phi float [ %3246, %3243 ], [ %2332, %2643 ], [ %2332, %2327 ], [ %3246, %3358 ], [ %3246, %3356 ], [ %3246, %3310 ], [ %3246, %3274 ], [ %2332, %2347 ]
  %3390 = phi float [ %2333, %3243 ], [ %2333, %2643 ], [ %2333, %2327 ], [ %3381, %3358 ], [ %2333, %3356 ], [ %3353, %3310 ], [ %3305, %3274 ], [ %2333, %2347 ]
  %3391 = phi float [ %2334, %3243 ], [ %2334, %2643 ], [ %2334, %2327 ], [ %3382, %3358 ], [ %2334, %3356 ], [ %3354, %3310 ], [ %3306, %3274 ], [ %2334, %2347 ]
  %3392 = phi float [ %2335, %3243 ], [ %2335, %2643 ], [ %2335, %2327 ], [ %3383, %3358 ], [ %2335, %3356 ], [ %3355, %3310 ], [ %3307, %3274 ], [ %2335, %2347 ]
  %3393 = phi float [ %2336, %3243 ], [ %2336, %2643 ], [ %2336, %2327 ], [ %3373, %3358 ], [ %2336, %3356 ], [ %3345, %3310 ], [ %3293, %3274 ], [ %2336, %2347 ]
  %3394 = phi float [ %2337, %3243 ], [ %2337, %2643 ], [ %2337, %2327 ], [ %3374, %3358 ], [ %2337, %3356 ], [ %3346, %3310 ], [ %3294, %3274 ], [ %2337, %2347 ]
  %3395 = phi float [ %2338, %3243 ], [ %2338, %2643 ], [ %2338, %2327 ], [ %3375, %3358 ], [ %2338, %3356 ], [ %3347, %3310 ], [ %3295, %3274 ], [ %2338, %2347 ]
  %3396 = phi float [ %3247, %3243 ], [ %2339, %2643 ], [ %2339, %2327 ], [ %3247, %3358 ], [ %3247, %3356 ], [ %3247, %3310 ], [ %3247, %3274 ], [ %2339, %2347 ]
  %3397 = phi float [ %3248, %3243 ], [ %2340, %2643 ], [ %2340, %2327 ], [ %3248, %3358 ], [ %3248, %3356 ], [ %3248, %3310 ], [ %3248, %3274 ], [ %2340, %2347 ]
  %3398 = phi float [ %3249, %3243 ], [ %2341, %2643 ], [ %2341, %2327 ], [ %3249, %3358 ], [ %3249, %3356 ], [ %3249, %3310 ], [ %3249, %3274 ], [ %2341, %2347 ]
  %3399 = phi float [ %3250, %3243 ], [ %2342, %2643 ], [ %2342, %2327 ], [ %3250, %3358 ], [ %3250, %3356 ], [ %3250, %3310 ], [ %3250, %3274 ], [ %2342, %2347 ]
  %3400 = phi float [ %2343, %3243 ], [ %2343, %2643 ], [ %2343, %2327 ], [ %3369, %3358 ], [ %2343, %3356 ], [ %3341, %3310 ], [ %3286, %3274 ], [ %2343, %2347 ]
  %3401 = phi float [ %2344, %3243 ], [ %2344, %2643 ], [ %2344, %2327 ], [ %3366, %3358 ], [ %2344, %3356 ], [ %3318, %3310 ], [ %3283, %3274 ], [ %2344, %2347 ]
  %3402 = phi float [ %2345, %3243 ], [ %2345, %2643 ], [ %2345, %2327 ], [ %3377, %3358 ], [ %2345, %3356 ], [ %3349, %3310 ], [ %3298, %3274 ], [ %2345, %2347 ]
  %3403 = phi float [ %3251, %3243 ], [ %2346, %2643 ], [ %2346, %2327 ], [ %3251, %3358 ], [ %3251, %3356 ], [ %3251, %3310 ], [ %3251, %3274 ], [ %2346, %2347 ]
  br i1 %446, label %4441, label %3404

; <label>:3404                                    ; preds = %3384
  %3405 = icmp ult i32 %500, 4
  %3406 = add i32 %60, 72
  %3407 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3406, i32 undef)  ; BufferLoad(srv,index,wot)
  %3408 = extractvalue %dx.types.ResRet.i32 %3407, 0
  %3409 = add i32 %60, 76
  %3410 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3409, i32 undef)  ; BufferLoad(srv,index,wot)
  %3411 = extractvalue %dx.types.ResRet.i32 %3410, 0
  %3412 = or i32 %3411, %3408
  %3413 = icmp eq i32 %3412, 0
  br i1 %3413, label %4441, label %3414

; <label>:3414                                    ; preds = %3404
  %3415 = and i32 %3408, 262144
  %3416 = icmp ne i32 %3415, 0
  %3417 = select i1 %3416, float %63, float 1.000000e+00
  %3418 = select i1 %3416, float %64, float 0.000000e+00
  %3419 = select i1 %3416, float %65, float 0.000000e+00
  %3420 = select i1 %3416, float %66, float 1.000000e+00
  %3421 = select i1 %3416, float %67, float %88
  %3422 = select i1 %3416, float %68, float %89
  %3423 = add i32 %60, 332
  %3424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3423, i32 undef)  ; BufferLoad(srv,index,wot)
  %3425 = extractvalue %dx.types.ResRet.i32 %3424, 0
  %3426 = lshr i32 %3425, 16
  %3427 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3426)  ; LegacyF16ToF32(value)
  %3428 = fmul fast float %3427, 0x3F50624DE0000000
  %3429 = add i32 %60, 136
  %3430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3429, i32 undef)  ; BufferLoad(srv,index,wot)
  %3431 = extractvalue %dx.types.ResRet.i32 %3430, 0
  %3432 = lshr i32 %3431, 16
  %3433 = and i32 %3432, 255
  %3434 = lshr i32 %3431, 24
  %3435 = add i32 %60, 340
  %3436 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3435, i32 undef)  ; BufferLoad(srv,index,wot)
  %3437 = extractvalue %dx.types.ResRet.i32 %3436, 0
  %3438 = and i32 %3437, 65535
  %3439 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3438)  ; LegacyF16ToF32(value)
  %3440 = lshr i32 %3437, 16
  %3441 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3440)  ; LegacyF16ToF32(value)
  %3442 = add i32 %60, 80
  %3443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3442, i32 undef)  ; BufferLoad(srv,index,wot)
  %3444 = extractvalue %dx.types.ResRet.i32 %3443, 0
  %3445 = lshr i32 %3444, 22
  %3446 = shl nuw nsw i32 %3445, 5
  %3447 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3446)  ; LegacyF16ToF32(value)
  %3448 = shl i32 %3444, 4
  %3449 = and i32 %3448, 32752
  %3450 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3449)  ; LegacyF16ToF32(value)
  %3451 = lshr i32 %3444, 7
  %3452 = and i32 %3451, 32752
  %3453 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3452)  ; LegacyF16ToF32(value)
  %3454 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3455 = extractvalue %dx.types.CBufRet.f32 %3454, 3
  %3456 = fmul fast float %3455, 1.000000e+03
  %3457 = fmul fast float %436, %3456
  %3458 = call float @dx.op.unary.f32(i32 22, float %3457)  ; Frc(value)
  %3459 = fadd fast float %3458, %426
  %3460 = fmul fast float %437, %3456
  %3461 = call float @dx.op.unary.f32(i32 22, float %3460)  ; Frc(value)
  %3462 = fadd fast float %3461, %428
  %3463 = fmul fast float %3428, %3456
  %3464 = call float @dx.op.unary.f32(i32 22, float %3463)  ; Frc(value)
  %3465 = fmul fast float %3464, 0x401921FB60000000
  %3466 = fadd fast float %3465, %3447
  %3467 = call float @dx.op.unary.f32(i32 13, float %3466)  ; Sin(value)
  %3468 = call float @dx.op.unary.f32(i32 12, float %3466)  ; Cos(value)
  %3469 = fsub fast float -0.000000e+00, %3467
  %3470 = fadd fast float %3421, -5.000000e-01
  %3471 = fadd fast float %3422, -5.000000e-01
  %3472 = fmul fast float %3439, %3470
  %3473 = fmul fast float %3441, %3471
  %3474 = fadd fast float %3472, 5.000000e-01
  %3475 = fadd fast float %3473, 5.000000e-01
  %3476 = fmul fast float %3450, %3474
  %3477 = fmul fast float %3453, %3475
  %3478 = fmul fast float %3468, %3476
  %3479 = call float @dx.op.tertiary.f32(i32 46, float %3469, float %3477, float %3478)  ; FMad(a,b,c)
  %3480 = fmul fast float %3467, %3476
  %3481 = call float @dx.op.tertiary.f32(i32 46, float %3468, float %3477, float %3480)  ; FMad(a,b,c)
  %3482 = fadd fast float %3459, %3479
  %3483 = fadd fast float %3462, %3481
  %3484 = icmp ugt i32 %3433, 1
  %3485 = icmp ugt i32 %3431, 33554431
  %3486 = or i1 %3485, %3484
  br i1 %3486, label %3487, label %3512

; <label>:3487                                    ; preds = %3414
  %3488 = add i32 %60, 276
  %3489 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3488, i32 undef)  ; BufferLoad(srv,index,wot)
  %3490 = extractvalue %dx.types.ResRet.i32 %3489, 0
  %3491 = lshr i32 %3490, 16
  %3492 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3491)  ; LegacyF16ToF32(value)
  %3493 = fmul fast float %3455, %3492
  %3494 = call float @dx.op.unary.f32(i32 22, float %3493)  ; Frc(value)
  %3495 = mul nuw nsw i32 %3433, %3434
  %3496 = uitofp i32 %3495 to float
  %3497 = fmul fast float %3494, %3496
  %3498 = call float @dx.op.unary.f32(i32 27, float %3497)  ; Round_ni(value)
  %3499 = fptoui float %3498 to i32
  %3500 = urem i32 %3499, %3433
  %3501 = udiv i32 %3499, %3434
  %3502 = call float @dx.op.unary.f32(i32 22, float %3482)  ; Frc(value)
  %3503 = call float @dx.op.unary.f32(i32 22, float %3483)  ; Frc(value)
  %3504 = uitofp i32 %3500 to float
  %3505 = uitofp i32 %3501 to float
  %3506 = fadd fast float %3502, %3504
  %3507 = fadd fast float %3503, %3505
  %3508 = uitofp i32 %3433 to float
  %3509 = uitofp i32 %3434 to float
  %3510 = fdiv fast float %3506, %3508
  %3511 = fdiv fast float %3507, %3509
  br label %3512

; <label>:3512                                    ; preds = %3487, %3414
  %3513 = phi float [ %3510, %3487 ], [ %3482, %3414 ]
  %3514 = phi float [ %3511, %3487 ], [ %3483, %3414 ]
  %3515 = and i32 %3408, 16777216
  %3516 = icmp eq i32 %3515, 0
  br i1 %3516, label %3626, label %3517

; <label>:3517                                    ; preds = %3512
  %3518 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3519 = extractvalue %dx.types.CBufRet.f32 %3518, 0
  %3520 = extractvalue %dx.types.CBufRet.f32 %3518, 1
  %3521 = extractvalue %dx.types.CBufRet.f32 %3518, 2
  %3522 = fadd fast float %3519, %164
  %3523 = fadd fast float %3520, %165
  %3524 = fadd fast float %3521, %166
  %3525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %3526 = extractvalue %dx.types.CBufRet.f32 %3525, 0
  %3527 = call float @dx.op.unary.f32(i32 7, float %3526)  ; Saturate(value)
  %3528 = icmp eq i32 %61, 65535
  br i1 %3528, label %3623, label %3529

; <label>:3529                                    ; preds = %3517
  %3530 = lshr i32 %61, 1
  %3531 = shl i32 %3530, 2
  %3532 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %3531, i32 undef)  ; BufferLoad(srv,index,wot)
  %3533 = extractvalue %dx.types.ResRet.i32 %3532, 0
  %3534 = and i32 %61, 1
  %3535 = icmp ne i32 %3534, 0
  %3536 = lshr i32 %3533, 16
  %3537 = and i32 %3533, 65535
  %3538 = select i1 %3535, i32 %3536, i32 %3537
  %3539 = icmp eq i32 %3538, 65535
  br i1 %3539, label %3619, label %3540

; <label>:3540                                    ; preds = %3529
  %3541 = mul nuw nsw i32 %3538, 40
  %3542 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %3541, i32 undef)  ; BufferLoad(srv,index,wot)
  %3543 = extractvalue %dx.types.ResRet.f32 %3542, 0
  %3544 = extractvalue %dx.types.ResRet.f32 %3542, 1
  %3545 = extractvalue %dx.types.ResRet.f32 %3542, 2
  %3546 = add nuw nsw i32 %3541, 12
  %3547 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %3546, i32 undef)  ; BufferLoad(srv,index,wot)
  %3548 = extractvalue %dx.types.ResRet.f32 %3547, 0
  %3549 = extractvalue %dx.types.ResRet.f32 %3547, 1
  %3550 = extractvalue %dx.types.ResRet.f32 %3547, 2
  %3551 = add nuw nsw i32 %3541, 24
  %3552 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %3551, i32 undef)  ; BufferLoad(srv,index,wot)
  %3553 = extractvalue %dx.types.ResRet.f32 %3552, 0
  %3554 = extractvalue %dx.types.ResRet.f32 %3552, 1
  %3555 = extractvalue %dx.types.ResRet.f32 %3552, 2
  %3556 = add nuw nsw i32 %3541, 36
  %3557 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %3556, i32 undef)  ; BufferLoad(srv,index,wot)
  %3558 = extractvalue %dx.types.ResRet.f32 %3557, 0
  %3559 = fsub fast float %3522, %3543
  %3560 = fsub fast float %3523, %3544
  %3561 = fsub fast float %3524, %3545
  %3562 = fmul fast float %3558, %3559
  %3563 = fmul fast float %3558, %3560
  %3564 = fmul fast float %3558, %3561
  %3565 = call float @dx.op.unary.f32(i32 27, float %3562)  ; Round_ni(value)
  %3566 = call float @dx.op.unary.f32(i32 27, float %3563)  ; Round_ni(value)
  %3567 = call float @dx.op.unary.f32(i32 27, float %3564)  ; Round_ni(value)
  %3568 = fadd fast float %3565, 5.000000e-01
  %3569 = fadd fast float %3566, 5.000000e-01
  %3570 = fadd fast float %3567, 5.000000e-01
  %3571 = fmul fast float %3568, %3548
  %3572 = fmul fast float %3569, %3549
  %3573 = fmul fast float %3570, %3550
  %3574 = shl i32 %61, 2
  %3575 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3574, i32 undef)  ; BufferLoad(srv,index,wot)
  %3576 = extractvalue %dx.types.ResRet.i32 %3575, 0
  %3577 = add i32 %3576, 0
  %3578 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3577, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3579 = call float @dx.op.unary.f32(i32 22, float %3571)  ; Frc(value)
  %3580 = call float @dx.op.unary.f32(i32 22, float %3572)  ; Frc(value)
  %3581 = call float @dx.op.unary.f32(i32 22, float %3573)  ; Frc(value)
  %3582 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3578, %dx.types.Handle %55, float %3579, float %3580, float %3581, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3583 = extractvalue %dx.types.ResRet.f32 %3582, 0
  %3584 = extractvalue %dx.types.ResRet.f32 %3582, 1
  %3585 = extractvalue %dx.types.ResRet.f32 %3582, 2
  %3586 = fmul fast float %3583, 1.023000e+03
  %3587 = fmul fast float %3584, 1.023000e+03
  %3588 = fmul fast float %3585, 1.023000e+03
  %3589 = fadd fast float %3586, 5.000000e-01
  %3590 = fadd fast float %3587, 5.000000e-01
  %3591 = fadd fast float %3588, 5.000000e-01
  %3592 = call float @dx.op.unary.f32(i32 27, float %3589)  ; Round_ni(value)
  %3593 = call float @dx.op.unary.f32(i32 27, float %3590)  ; Round_ni(value)
  %3594 = call float @dx.op.unary.f32(i32 27, float %3591)  ; Round_ni(value)
  %3595 = fsub fast float %3562, %3565
  %3596 = fsub fast float %3563, %3566
  %3597 = fsub fast float %3564, %3567
  %3598 = fmul fast float %3595, 7.500000e-01
  %3599 = fmul fast float %3596, 7.500000e-01
  %3600 = fmul fast float %3597, 7.500000e-01
  %3601 = fadd fast float %3565, 1.250000e-01
  %3602 = fadd fast float %3601, %3598
  %3603 = fadd fast float %3602, %3592
  %3604 = fadd fast float %3566, 1.250000e-01
  %3605 = fadd fast float %3604, %3599
  %3606 = fadd fast float %3605, %3593
  %3607 = fadd fast float %3567, 1.250000e-01
  %3608 = fadd fast float %3607, %3600
  %3609 = fadd fast float %3608, %3594
  %3610 = fmul fast float %3603, %3553
  %3611 = fmul fast float %3606, %3554
  %3612 = fmul fast float %3609, %3555
  %3613 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3574, i32 undef)  ; BufferLoad(srv,index,wot)
  %3614 = extractvalue %dx.types.ResRet.i32 %3613, 0
  %3615 = add i32 %3614, 0
  %3616 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3615, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3617 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3616, %dx.types.Handle %53, float %3610, float %3611, float %3612, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3618 = extractvalue %dx.types.ResRet.f32 %3617, 0
  br label %3619

; <label>:3619                                    ; preds = %3540, %3529
  %3620 = phi float [ %3618, %3540 ], [ -1.000000e+00, %3529 ]
  %3621 = fadd fast float %3620, %3527
  %3622 = call float @dx.op.unary.f32(i32 7, float %3621)  ; Saturate(value)
  br label %3623

; <label>:3623                                    ; preds = %3619, %3517
  %3624 = phi float [ %3622, %3619 ], [ %3527, %3517 ]
  %3625 = fmul fast float %3624, %495
  br label %3626

; <label>:3626                                    ; preds = %3623, %3512
  %3627 = phi float [ %3625, %3623 ], [ %495, %3512 ]
  %3628 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3406, i32 undef)  ; BufferLoad(srv,index,wot)
  %3629 = extractvalue %dx.types.ResRet.i32 %3628, 0
  %3630 = and i32 %3629, 256
  %3631 = icmp eq i32 %3630, 0
  br i1 %3631, label %3678, label %3632

; <label>:3632                                    ; preds = %3626
  %3633 = add i32 %60, 500
  %3634 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3633, i32 undef)  ; BufferLoad(srv,index,wot)
  %3635 = extractvalue %dx.types.ResRet.i32 %3634, 0
  %3636 = add i32 %3635, 0
  %3637 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3636, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3638 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3637, %dx.types.Handle %106, float %3513, float %3514, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3639 = extractvalue %dx.types.ResRet.f32 %3638, 0
  %3640 = add i32 %60, 148
  %3641 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3640, i32 undef)  ; BufferLoad(srv,index,wot)
  %3642 = extractvalue %dx.types.ResRet.i32 %3641, 0
  %3643 = shl i32 %3642, 4
  %3644 = and i32 %3643, 32752
  %3645 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3644)  ; LegacyF16ToF32(value)
  %3646 = lshr i32 %3642, 7
  %3647 = and i32 %3646, 32752
  %3648 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3647)  ; LegacyF16ToF32(value)
  %3649 = fsub fast float 1.000000e+00, %3627
  %3650 = call float @dx.op.binary.f32(i32 35, float %3649, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3651 = bitcast float %3627 to i32
  %3652 = sitofp i32 %3651 to float
  %3653 = fadd fast float %3652, 0xC1CFBF8940000000
  %3654 = fmul fast float %3648, %3653
  %3655 = fadd fast float %3654, 0x41CFBF8940000000
  %3656 = fptosi float %3655 to i32
  %3657 = bitcast i32 %3656 to float
  %3658 = bitcast float %3650 to i32
  %3659 = sitofp i32 %3658 to float
  %3660 = fadd fast float %3659, 0xC1CFBF8940000000
  %3661 = fmul fast float %3660, %3648
  %3662 = fadd fast float %3661, 0x41CFBF8940000000
  %3663 = fptosi float %3662 to i32
  %3664 = bitcast i32 %3663 to float
  %3665 = fmul fast float %3657, %3645
  %3666 = fmul fast float %3664, %3645
  %3667 = fsub fast float %3650, %3665
  %3668 = fadd fast float %3666, %3650
  %3669 = call float @dx.op.unary.f32(i32 7, float %3667)  ; Saturate(value)
  %3670 = call float @dx.op.unary.f32(i32 7, float %3668)  ; Saturate(value)
  %3671 = fsub fast float %3639, %3669
  %3672 = fsub fast float %3670, %3669
  %3673 = bitcast float %3672 to i32
  %3674 = sub nsw i32 2129859010, %3673
  %3675 = bitcast i32 %3674 to float
  %3676 = fmul fast float %3675, %3671
  %3677 = call float @dx.op.unary.f32(i32 7, float %3676)  ; Saturate(value)
  br label %3678

; <label>:3678                                    ; preds = %3632, %3626
  %3679 = phi float [ %3677, %3632 ], [ %3627, %3626 ]
  %3680 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3406, i32 undef)  ; BufferLoad(srv,index,wot)
  %3681 = extractvalue %dx.types.ResRet.i32 %3680, 0
  %3682 = and i32 %3681, 128
  %3683 = icmp eq i32 %3682, 0
  br i1 %3683, label %3700, label %3684

; <label>:3684                                    ; preds = %3678
  %3685 = add i32 %60, 484
  %3686 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3685, i32 undef)  ; BufferLoad(srv,index,wot)
  %3687 = extractvalue %dx.types.ResRet.i32 %3686, 0
  %3688 = add i32 %3687, 0
  %3689 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3688, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3690 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3689, %dx.types.Handle %106, float %3513, float %3514, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3691 = extractvalue %dx.types.ResRet.f32 %3690, 0
  %3692 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3406, i32 undef)  ; BufferLoad(srv,index,wot)
  %3693 = extractvalue %dx.types.ResRet.i32 %3692, 0
  %3694 = and i32 %3693, 524288
  %3695 = icmp ne i32 %3694, 0
  %3696 = fcmp fast ogt float %3691, 0x3FE0101020000000
  %3697 = select i1 %3696, float 1.000000e+00, float 0.000000e+00
  %3698 = select i1 %3695, float %3697, float %3691
  %3699 = fmul fast float %3698, %3679
  br label %3700

; <label>:3700                                    ; preds = %3684, %3678
  %3701 = phi float [ %3699, %3684 ], [ %3679, %3678 ]
  %3702 = fcmp fast ult float %3701, 0x3F70101020000000
  br i1 %3702, label %4441, label %3703

; <label>:3703                                    ; preds = %3700
  %3704 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3406, i32 undef)  ; BufferLoad(srv,index,wot)
  %3705 = extractvalue %dx.types.ResRet.i32 %3704, 0
  %3706 = and i32 %3705, 16
  %3707 = icmp eq i32 %3706, 0
  br i1 %3707, label %3906, label %3708

; <label>:3708                                    ; preds = %3703
  %3709 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3429, i32 undef)  ; BufferLoad(srv,index,wot)
  %3710 = extractvalue %dx.types.ResRet.i32 %3709, 0
  %3711 = add i32 %60, 436
  %3712 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3711, i32 undef)  ; BufferLoad(srv,index,wot)
  %3713 = extractvalue %dx.types.ResRet.i32 %3712, 0
  %3714 = add i32 %3713, 0
  %3715 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3714, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3716 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3715, %dx.types.Handle %105, float %3513, float %3514, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3717 = extractvalue %dx.types.ResRet.f32 %3716, 0
  %3718 = extractvalue %dx.types.ResRet.f32 %3716, 1
  %3719 = extractvalue %dx.types.ResRet.f32 %3716, 2
  %3720 = extractvalue %dx.types.ResRet.f32 %3716, 3
  %3721 = and i32 %3710, 255
  %3722 = uitofp i32 %3721 to float
  %3723 = lshr i32 %3710, 8
  %3724 = and i32 %3723, 255
  %3725 = uitofp i32 %3724 to float
  %3726 = fmul fast float %3720, %3722
  %3727 = fadd fast float %3726, %3725
  %3728 = fmul fast float %3727, 0x3F70101000000000
  %3729 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3406, i32 undef)  ; BufferLoad(srv,index,wot)
  %3730 = extractvalue %dx.types.ResRet.i32 %3729, 0
  %3731 = and i32 %3730, 512
  %3732 = icmp eq i32 %3731, 0
  br i1 %3732, label %3741, label %3733

; <label>:3733                                    ; preds = %3708
  %3734 = add i32 %60, 520
  %3735 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3734, i32 undef)  ; BufferLoad(srv,index,wot)
  %3736 = extractvalue %dx.types.ResRet.i32 %3735, 0
  %3737 = add i32 %3736, 0
  %3738 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3737, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3739 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3738, %dx.types.Handle %106, float %3513, float %3514, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3740 = extractvalue %dx.types.ResRet.f32 %3739, 0
  br label %3741

; <label>:3741                                    ; preds = %3733, %3708
  %3742 = phi float [ %3740, %3733 ], [ 1.000000e+00, %3708 ]
  %3743 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3406, i32 undef)  ; BufferLoad(srv,index,wot)
  %3744 = extractvalue %dx.types.ResRet.i32 %3743, 0
  %3745 = and i32 %3744, 33554432
  %3746 = icmp eq i32 %3745, 0
  br i1 %3746, label %3853, label %3747

; <label>:3747                                    ; preds = %3741
  %3748 = add i32 %60, 272
  %3749 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3748, i32 undef)  ; BufferLoad(srv,index,wot)
  %3750 = extractvalue %dx.types.ResRet.i32 %3749, 0
  %3751 = and i32 %3750, 65535
  %3752 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3751)  ; LegacyF16ToF32(value)
  %3753 = lshr i32 %3750, 16
  %3754 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3753)  ; LegacyF16ToF32(value)
  %3755 = add i32 %60, 276
  %3756 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3755, i32 undef)  ; BufferLoad(srv,index,wot)
  %3757 = extractvalue %dx.types.ResRet.i32 %3756, 0
  %3758 = and i32 %3757, 65535
  %3759 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3758)  ; LegacyF16ToF32(value)
  %3760 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %408, i32 undef)  ; BufferLoad(srv,index,wot)
  %3761 = extractvalue %dx.types.ResRet.i32 %3760, 0
  %3762 = lshr i32 %3761, 24
  %3763 = uitofp i32 %3762 to float
  %3764 = fmul fast float %3763, 0x3F70101020000000
  %3765 = and i32 %3761, 255
  %3766 = uitofp i32 %3765 to float
  %3767 = fmul fast float %3766, 0x3F70101020000000
  %3768 = lshr i32 %3761, 8
  %3769 = and i32 %3768, 255
  %3770 = uitofp i32 %3769 to float
  %3771 = fmul fast float %3770, 0x3F70101020000000
  %3772 = lshr i32 %3761, 16
  %3773 = and i32 %3772, 255
  %3774 = uitofp i32 %3773 to float
  %3775 = fmul fast float %3774, 0x3F70101020000000
  %3776 = add i32 %60, 268
  %3777 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3776, i32 undef)  ; BufferLoad(srv,index,wot)
  %3778 = extractvalue %dx.types.ResRet.i32 %3777, 0
  %3779 = lshr i32 %3778, 24
  %3780 = uitofp i32 %3779 to float
  %3781 = fmul fast float %3780, 0x3F70101020000000
  %3782 = and i32 %3778, 255
  %3783 = uitofp i32 %3782 to float
  %3784 = fmul fast float %3783, 0x3F70101020000000
  %3785 = lshr i32 %3778, 8
  %3786 = and i32 %3785, 255
  %3787 = uitofp i32 %3786 to float
  %3788 = fmul fast float %3787, 0x3F70101020000000
  %3789 = lshr i32 %3778, 16
  %3790 = and i32 %3789, 255
  %3791 = uitofp i32 %3790 to float
  %3792 = fmul fast float %3791, 0x3F70101020000000
  %3793 = bitcast float %3717 to i32
  %3794 = ashr i32 %3793, 1
  %3795 = sub nsw i32 1597463174, %3794
  %3796 = bitcast i32 %3795 to float
  %3797 = fmul fast float %3717, 5.000000e-01
  %3798 = fmul fast float %3796, %3796
  %3799 = fmul fast float %3798, %3797
  %3800 = fsub fast float 1.500000e+00, %3799
  %3801 = fmul fast float %3796, %3717
  %3802 = fmul fast float %3801, %3800
  %3803 = bitcast float %3718 to i32
  %3804 = ashr i32 %3803, 1
  %3805 = sub nsw i32 1597463174, %3804
  %3806 = bitcast i32 %3805 to float
  %3807 = fmul fast float %3718, 5.000000e-01
  %3808 = fmul fast float %3806, %3806
  %3809 = fmul fast float %3808, %3807
  %3810 = fsub fast float 1.500000e+00, %3809
  %3811 = fmul fast float %3806, %3718
  %3812 = fmul fast float %3811, %3810
  %3813 = bitcast float %3719 to i32
  %3814 = ashr i32 %3813, 1
  %3815 = sub nsw i32 1597463174, %3814
  %3816 = bitcast i32 %3815 to float
  %3817 = fmul fast float %3719, 5.000000e-01
  %3818 = fmul fast float %3816, %3816
  %3819 = fmul fast float %3818, %3817
  %3820 = fsub fast float 1.500000e+00, %3819
  %3821 = fmul fast float %3816, %3719
  %3822 = fmul fast float %3821, %3820
  %3823 = fsub fast float %3802, %3784
  %3824 = fsub fast float %3812, %3788
  %3825 = fsub fast float %3822, %3792
  %3826 = fmul fast float %3823, %3752
  %3827 = fmul fast float %3824, %3754
  %3828 = fmul fast float %3825, %3759
  %3829 = fadd fast float %3826, %3767
  %3830 = fadd fast float %3827, %3771
  %3831 = fadd fast float %3828, %3775
  %3832 = call float @dx.op.unary.f32(i32 7, float %3829)  ; Saturate(value)
  %3833 = call float @dx.op.unary.f32(i32 7, float %3830)  ; Saturate(value)
  %3834 = call float @dx.op.unary.f32(i32 7, float %3831)  ; Saturate(value)
  %3835 = fmul fast float %3832, %3832
  %3836 = fmul fast float %3833, %3833
  %3837 = fmul fast float %3834, %3834
  %3838 = fsub fast float %3835, %3717
  %3839 = fsub fast float %3836, %3718
  %3840 = fsub fast float %3837, %3719
  %3841 = fmul fast float %3838, %3742
  %3842 = fmul fast float %3839, %3742
  %3843 = fmul fast float %3840, %3742
  %3844 = fadd fast float %3841, %3717
  %3845 = fadd fast float %3842, %3718
  %3846 = fadd fast float %3843, %3719
  %3847 = fadd fast float %3764, %3728
  %3848 = fsub fast float %3847, %3781
  %3849 = call float @dx.op.unary.f32(i32 7, float %3848)  ; Saturate(value)
  %3850 = fsub fast float %3849, %3728
  %3851 = fmul fast float %3850, %3742
  %3852 = fadd fast float %3851, %3728
  br label %3906

; <label>:3853                                    ; preds = %3741
  %3854 = and i32 %3744, 134217728
  %3855 = icmp eq i32 %3854, 0
  br i1 %3855, label %3890, label %3856

; <label>:3856                                    ; preds = %3853
  %3857 = call float @dx.op.unary.f32(i32 24, float %413)  ; Sqrt(value)
  %3858 = call float @dx.op.unary.f32(i32 24, float %417)  ; Sqrt(value)
  %3859 = call float @dx.op.unary.f32(i32 24, float %421)  ; Sqrt(value)
  %3860 = fadd fast float %3857, -5.000000e-01
  %3861 = fadd fast float %3858, -5.000000e-01
  %3862 = fadd fast float %3859, -5.000000e-01
  %3863 = fmul fast float %3860, %3742
  %3864 = fmul fast float %3861, %3742
  %3865 = fmul fast float %3862, %3742
  %3866 = fadd fast float %3863, 5.000000e-01
  %3867 = fadd fast float %3864, 5.000000e-01
  %3868 = fadd fast float %3865, 5.000000e-01
  %3869 = call float @dx.op.unary.f32(i32 24, float %3717)  ; Sqrt(value)
  %3870 = call float @dx.op.unary.f32(i32 24, float %3718)  ; Sqrt(value)
  %3871 = call float @dx.op.unary.f32(i32 24, float %3719)  ; Sqrt(value)
  %3872 = fmul fast float %3866, 2.000000e+00
  %3873 = fsub fast float 1.000000e+00, %3872
  %3874 = fmul fast float %3873, %3869
  %3875 = fadd fast float %3874, %3872
  %3876 = fmul fast float %3875, %3869
  %3877 = fmul fast float %3867, 2.000000e+00
  %3878 = fsub fast float 1.000000e+00, %3877
  %3879 = fmul fast float %3878, %3870
  %3880 = fadd fast float %3879, %3877
  %3881 = fmul fast float %3880, %3870
  %3882 = fmul fast float %3868, 2.000000e+00
  %3883 = fsub fast float 1.000000e+00, %3882
  %3884 = fmul fast float %3883, %3871
  %3885 = fadd fast float %3884, %3882
  %3886 = fmul fast float %3885, %3871
  %3887 = fmul fast float %3876, %3876
  %3888 = fmul fast float %3881, %3881
  %3889 = fmul fast float %3886, %3886
  br label %3906

; <label>:3890                                    ; preds = %3853
  %3891 = fmul fast float %413, %413
  %3892 = fmul fast float %417, %417
  %3893 = fmul fast float %421, %421
  %3894 = fadd fast float %3891, -1.000000e+00
  %3895 = fadd fast float %3892, -1.000000e+00
  %3896 = fadd fast float %3893, -1.000000e+00
  %3897 = fmul fast float %3742, %3894
  %3898 = fmul fast float %3742, %3895
  %3899 = fmul fast float %3742, %3896
  %3900 = fadd fast float %3897, 1.000000e+00
  %3901 = fadd fast float %3898, 1.000000e+00
  %3902 = fadd fast float %3899, 1.000000e+00
  %3903 = fmul fast float %3900, %3717
  %3904 = fmul fast float %3901, %3718
  %3905 = fmul fast float %3902, %3719
  br label %3906

; <label>:3906                                    ; preds = %3890, %3856, %3747, %3703
  %3907 = phi float [ %3852, %3747 ], [ %3728, %3856 ], [ %3728, %3890 ], [ 0x3FA23C0BE0000000, %3703 ]
  %3908 = phi float [ %3844, %3747 ], [ %3887, %3856 ], [ %3903, %3890 ], [ 1.000000e+00, %3703 ]
  %3909 = phi float [ %3845, %3747 ], [ %3888, %3856 ], [ %3904, %3890 ], [ 1.000000e+00, %3703 ]
  %3910 = phi float [ %3846, %3747 ], [ %3889, %3856 ], [ %3905, %3890 ], [ 1.000000e+00, %3703 ]
  %3911 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3912 = extractvalue %dx.types.CBufRet.i32 %3911, 1
  %3913 = and i32 %3912, 1
  %3914 = icmp ne i32 %3913, 0
  %3915 = add i32 %60, 356
  %3916 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3915, i32 undef)  ; BufferLoad(srv,index,wot)
  %3917 = extractvalue %dx.types.ResRet.i32 %3916, 0
  %3918 = and i32 %3917, 32
  %3919 = icmp ne i32 %3918, 0
  %3920 = and i1 %3914, %3919
  %3921 = select i1 %3920, float 1.000000e+00, float %3908
  %3922 = select i1 %3920, float 0x3FD3333340000000, float %3909
  %3923 = select i1 %3920, float 0x3FD3333340000000, float %3910
  %3924 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3406, i32 undef)  ; BufferLoad(srv,index,wot)
  %3925 = extractvalue %dx.types.ResRet.i32 %3924, 0
  %3926 = and i32 %3925, 32
  %3927 = icmp eq i32 %3926, 0
  br i1 %3927, label %4000, label %3928

; <label>:3928                                    ; preds = %3906
  %3929 = add i32 %60, 140
  %3930 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3929, i32 undef)  ; BufferLoad(srv,index,wot)
  %3931 = extractvalue %dx.types.ResRet.i32 %3930, 0
  %3932 = add i32 %60, 452
  %3933 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3932, i32 undef)  ; BufferLoad(srv,index,wot)
  %3934 = extractvalue %dx.types.ResRet.i32 %3933, 0
  %3935 = add i32 %3934, 0
  %3936 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3935, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3937 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3936, %dx.types.Handle %105, float %3513, float %3514, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3938 = extractvalue %dx.types.ResRet.f32 %3937, 0
  %3939 = extractvalue %dx.types.ResRet.f32 %3937, 1
  %3940 = extractvalue %dx.types.ResRet.f32 %3937, 2
  %3941 = extractvalue %dx.types.ResRet.f32 %3937, 3
  %3942 = and i32 %3931, 255
  %3943 = uitofp i32 %3942 to float
  %3944 = lshr i32 %3931, 8
  %3945 = and i32 %3944, 255
  %3946 = uitofp i32 %3945 to float
  %3947 = lshr i32 %3931, 16
  %3948 = and i32 %3947, 255
  %3949 = uitofp i32 %3948 to float
  %3950 = fmul fast float %3949, 0x3F70101000000000
  %3951 = fmul fast float %3938, %3943
  %3952 = fadd fast float %3951, %3946
  %3953 = fmul fast float %3952, 0x3F70101000000000
  %3954 = fadd fast float %3939, -5.000000e-01
  %3955 = fadd fast float %3941, -5.000000e-01
  %3956 = fmul fast float %3954, %3950
  %3957 = fmul fast float %3955, %3950
  %3958 = fadd fast float %3956, 5.000000e-01
  %3959 = fadd fast float %3957, 5.000000e-01
  %3960 = fmul fast float %3958, 2.000000e+00
  %3961 = fadd fast float %3960, -1.000000e+00
  %3962 = fmul fast float %3959, 2.000000e+00
  %3963 = fadd fast float %3962, -1.000000e+00
  %3964 = fadd fast float %3961, %3963
  %3965 = fmul fast float %3964, 5.000000e-01
  %3966 = fsub fast float %3961, %3963
  %3967 = fmul fast float %3966, 5.000000e-01
  %3968 = call float @dx.op.unary.f32(i32 6, float %3965)  ; FAbs(value)
  %3969 = fsub fast float 1.000000e+00, %3968
  %3970 = call float @dx.op.unary.f32(i32 6, float %3967)  ; FAbs(value)
  %3971 = fsub fast float %3969, %3970
  %3972 = call float @dx.op.dot3.f32(i32 55, float %3965, float %3967, float %3971, float %3965, float %3967, float %3971)  ; Dot3(ax,ay,az,bx,by,bz)
  %3973 = call float @dx.op.unary.f32(i32 25, float %3972)  ; Rsqrt(value)
  %3974 = fmul fast float %3965, %3973
  %3975 = fmul fast float %3967, %3973
  %3976 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3406, i32 undef)  ; BufferLoad(srv,index,wot)
  %3977 = extractvalue %dx.types.ResRet.i32 %3976, 0
  %3978 = and i32 %3977, 67108864
  %3979 = icmp eq i32 %3978, 0
  br i1 %3979, label %3996, label %3980

; <label>:3980                                    ; preds = %3928
  %3981 = add i32 %60, 328
  %3982 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3981, i32 undef)  ; BufferLoad(srv,index,wot)
  %3983 = extractvalue %dx.types.ResRet.i32 %3982, 0
  %3984 = and i32 %3983, 65535
  %3985 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3984)  ; LegacyF16ToF32(value)
  %3986 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3423, i32 undef)  ; BufferLoad(srv,index,wot)
  %3987 = extractvalue %dx.types.ResRet.i32 %3986, 0
  %3988 = and i32 %3987, 65535
  %3989 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3988)  ; LegacyF16ToF32(value)
  %3990 = lshr i32 %3983, 16
  %3991 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3990)  ; LegacyF16ToF32(value)
  %3992 = fsub fast float %3953, %3991
  %3993 = fmul fast float %3992, %3985
  %3994 = fadd fast float %3993, %3989
  %3995 = call float @dx.op.unary.f32(i32 7, float %3994)  ; Saturate(value)
  br label %3996

; <label>:3996                                    ; preds = %3980, %3928
  %3997 = phi float [ %3995, %3980 ], [ %3953, %3928 ]
  %3998 = call float @dx.op.dot2.f32(i32 54, float %3974, float %3975, float %3417, float %3418)  ; Dot2(ax,ay,bx,by)
  %3999 = call float @dx.op.dot2.f32(i32 54, float %3974, float %3975, float %3419, float %3420)  ; Dot2(ax,ay,bx,by)
  br label %4000

; <label>:4000                                    ; preds = %3996, %3906
  %4001 = phi float [ %3997, %3996 ], [ 0x3FD6666660000000, %3906 ]
  %4002 = phi float [ %3998, %3996 ], [ 0.000000e+00, %3906 ]
  %4003 = phi float [ %3999, %3996 ], [ 0.000000e+00, %3906 ]
  %4004 = phi float [ %3940, %3996 ], [ 1.000000e+00, %3906 ]
  %4005 = add i32 %60, 208
  %4006 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %4005, i32 undef)  ; BufferLoad(srv,index,wot)
  %4007 = extractvalue %dx.types.ResRet.i32 %4006, 0
  %4008 = lshr i32 %4007, 22
  %4009 = shl nuw nsw i32 %4008, 5
  %4010 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4009)  ; LegacyF16ToF32(value)
  %4011 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3406, i32 undef)  ; BufferLoad(srv,index,wot)
  %4012 = extractvalue %dx.types.ResRet.i32 %4011, 0
  %4013 = and i32 %4012, 64
  %4014 = icmp eq i32 %4013, 0
  br i1 %4014, label %4048, label %4015

; <label>:4015                                    ; preds = %4000
  %4016 = add i32 %60, 468
  %4017 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %4016, i32 undef)  ; BufferLoad(srv,index,wot)
  %4018 = extractvalue %dx.types.ResRet.i32 %4017, 0
  %4019 = add i32 %4018, 0
  %4020 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4019, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4021 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3406, i32 undef)  ; BufferLoad(srv,index,wot)
  %4022 = extractvalue %dx.types.ResRet.i32 %4021, 0
  %4023 = and i32 %4022, 131072
  %4024 = icmp eq i32 %4023, 0
  %4025 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4020, %dx.types.Handle %105, float %3513, float %3514, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4026 = extractvalue %dx.types.ResRet.f32 %4025, 0
  %4027 = extractvalue %dx.types.ResRet.f32 %4025, 1
  %4028 = extractvalue %dx.types.ResRet.f32 %4025, 2
  %4029 = fmul fast float %4026, %401
  %4030 = fmul fast float %4027, %404
  %4031 = fmul fast float %4028, %407
  br i1 %4024, label %4038, label %4032

; <label>:4032                                    ; preds = %4015
  %4033 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4034 = extractvalue %dx.types.CBufRet.f32 %4033, 0
  %4035 = fmul fast float %4034, %4029
  %4036 = fmul fast float %4034, %4030
  %4037 = fmul fast float %4034, %4031
  br label %4038

; <label>:4038                                    ; preds = %4032, %4015
  %4039 = phi float [ %4035, %4032 ], [ %4029, %4015 ]
  %4040 = phi float [ %4036, %4032 ], [ %4030, %4015 ]
  %4041 = phi float [ %4037, %4032 ], [ %4031, %4015 ]
  %4042 = fmul fast float %4039, %4010
  %4043 = select i1 %258, float %4042, float %4039
  %4044 = call float @dx.op.dot3.f32(i32 55, float %4043, float %4040, float %4041, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4045 = select i1 %258, float 0.000000e+00, float %4039
  %4046 = select i1 %258, float %4044, float %4040
  %4047 = select i1 %258, float 0.000000e+00, float %4041
  br label %4048

; <label>:4048                                    ; preds = %4038, %4000
  %4049 = phi float [ %4045, %4038 ], [ 0.000000e+00, %4000 ]
  %4050 = phi float [ %4046, %4038 ], [ 0.000000e+00, %4000 ]
  %4051 = phi float [ %4047, %4038 ], [ 0.000000e+00, %4000 ]
  %4052 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3406, i32 undef)  ; BufferLoad(srv,index,wot)
  %4053 = extractvalue %dx.types.ResRet.i32 %4052, 0
  %4054 = and i32 %4053, 1024
  %4055 = icmp eq i32 %4054, 0
  br i1 %4055, label %4086, label %4056

; <label>:4056                                    ; preds = %4048
  %4057 = add i32 %60, 200
  %4058 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %4057, i32 undef)  ; BufferLoad(srv,index,wot)
  %4059 = extractvalue %dx.types.ResRet.i32 %4058, 0
  %4060 = and i32 %4059, 255
  %4061 = uitofp i32 %4060 to float
  %4062 = fmul fast float %4061, 0x3F70101020000000
  %4063 = lshr i32 %4059, 8
  %4064 = and i32 %4063, 255
  %4065 = uitofp i32 %4064 to float
  %4066 = fmul fast float %4065, 0x3F70101020000000
  %4067 = lshr i32 %4059, 16
  %4068 = and i32 %4067, 255
  %4069 = uitofp i32 %4068 to float
  %4070 = fmul fast float %4069, 0x3F70101020000000
  %4071 = fmul fast float %4062, %4062
  %4072 = fmul fast float %4066, %4066
  %4073 = fmul fast float %4070, %4070
  %4074 = add i32 %60, 536
  %4075 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %4074, i32 undef)  ; BufferLoad(srv,index,wot)
  %4076 = extractvalue %dx.types.ResRet.i32 %4075, 0
  %4077 = add i32 %4076, 0
  %4078 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4077, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4079 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4078, %dx.types.Handle %106, float %3513, float %3514, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4080 = extractvalue %dx.types.ResRet.f32 %4079, 0
  %4081 = extractvalue %dx.types.ResRet.f32 %4079, 1
  %4082 = extractvalue %dx.types.ResRet.f32 %4079, 2
  %4083 = fmul fast float %4071, %4080
  %4084 = fmul fast float %4072, %4081
  %4085 = fmul fast float %4073, %4082
  br label %4086

; <label>:4086                                    ; preds = %4056, %4048
  %4087 = phi float [ %4083, %4056 ], [ 0.000000e+00, %4048 ]
  %4088 = phi float [ %4084, %4056 ], [ 0.000000e+00, %4048 ]
  %4089 = phi float [ %4085, %4056 ], [ 0.000000e+00, %4048 ]
  %4090 = fcmp fast ogt float %4087, 0.000000e+00
  %4091 = fcmp fast ogt float %4088, 0.000000e+00
  %4092 = fcmp fast ogt float %4089, 0.000000e+00
  %4093 = call float @dx.op.unary.f32(i32 23, float %4087)  ; Log(value)
  %4094 = call float @dx.op.unary.f32(i32 23, float %4088)  ; Log(value)
  %4095 = call float @dx.op.unary.f32(i32 23, float %4089)  ; Log(value)
  %4096 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %4005, i32 undef)  ; BufferLoad(srv,index,wot)
  %4097 = extractvalue %dx.types.ResRet.i32 %4096, 0
  %4098 = lshr i32 %4097, 7
  %4099 = and i32 %4098, 32752
  %4100 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4099)  ; LegacyF16ToF32(value)
  %4101 = fmul fast float %4093, 0xBFE62E4300000000
  %4102 = fmul fast float %4101, %4100
  %4103 = fmul fast float %4094, 0xBFE62E4300000000
  %4104 = fmul fast float %4103, %4100
  %4105 = fmul fast float %4095, 0xBFE62E4300000000
  %4106 = fmul fast float %4105, %4100
  %4107 = select i1 %4090, float %4102, float 1.270000e+02
  %4108 = select i1 %4091, float %4104, float 1.270000e+02
  %4109 = select i1 %4092, float %4106, float 1.270000e+02
  %4110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3406, i32 undef)  ; BufferLoad(srv,index,wot)
  %4111 = extractvalue %dx.types.ResRet.i32 %4110, 0
  %4112 = and i32 %4111, 10240
  %4113 = icmp eq i32 %4112, 0
  br i1 %4113, label %4158, label %4114

; <label>:4114                                    ; preds = %4086
  %4115 = add i32 %60, 552
  %4116 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %4115, i32 undef)  ; BufferLoad(srv,index,wot)
  %4117 = extractvalue %dx.types.ResRet.i32 %4116, 0
  %4118 = add i32 %4117, 0
  %4119 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4118, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4120 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4119, %dx.types.Handle %106, float %3513, float %3514, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4121 = extractvalue %dx.types.ResRet.f32 %4120, 1
  %4122 = extractvalue %dx.types.ResRet.f32 %4120, 3
  %4123 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3406, i32 undef)  ; BufferLoad(srv,index,wot)
  %4124 = extractvalue %dx.types.ResRet.i32 %4123, 0
  %4125 = and i32 %4124, 1048576
  %4126 = icmp ne i32 %4125, 0
  %4127 = and i32 %4124, 8192
  %4128 = icmp eq i32 %4127, 0
  br i1 %4128, label %4144, label %4129

; <label>:4129                                    ; preds = %4114
  %4130 = extractvalue %dx.types.ResRet.f32 %4120, 2
  %4131 = select i1 %4126, float %4130, float %4121
  %4132 = extractvalue %dx.types.ResRet.f32 %4120, 0
  %4133 = select i1 %4126, float %4132, float %4121
  %4134 = add i32 %60, 144
  %4135 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %4134, i32 undef)  ; BufferLoad(srv,index,wot)
  %4136 = extractvalue %dx.types.ResRet.i32 %4135, 0
  %4137 = lshr i32 %4136, 16
  %4138 = and i32 %4137, 255
  %4139 = uitofp i32 %4138 to float
  %4140 = fmul fast float %4139, 0x3F80101020000000
  %4141 = fmul fast float %4140, %4133
  %4142 = fmul fast float %4140, %4121
  %4143 = fmul fast float %4140, %4131
  br label %4144

; <label>:4144                                    ; preds = %4129, %4114
  %4145 = phi float [ %4141, %4129 ], [ 0.000000e+00, %4114 ]
  %4146 = phi float [ %4142, %4129 ], [ 0.000000e+00, %4114 ]
  %4147 = phi float [ %4143, %4129 ], [ 0.000000e+00, %4114 ]
  %4148 = and i32 %4124, 2048
  %4149 = icmp eq i32 %4148, 0
  br i1 %4149, label %4158, label %4150

; <label>:4150                                    ; preds = %4144
  %4151 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %4005, i32 undef)  ; BufferLoad(srv,index,wot)
  %4152 = extractvalue %dx.types.ResRet.i32 %4151, 0
  %4153 = shl i32 %4152, 4
  %4154 = and i32 %4153, 32752
  %4155 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4154)  ; LegacyF16ToF32(value)
  %4156 = fmul fast float %4155, %4122
  %4157 = call float @dx.op.binary.f32(i32 35, float %4156, float 0x3F70101020000000)  ; FMax(a,b)
  br label %4158

; <label>:4158                                    ; preds = %4150, %4144, %4086
  %4159 = phi float [ %4145, %4150 ], [ %4145, %4144 ], [ 0.000000e+00, %4086 ]
  %4160 = phi float [ %4146, %4150 ], [ %4146, %4144 ], [ 0.000000e+00, %4086 ]
  %4161 = phi float [ %4147, %4150 ], [ %4147, %4144 ], [ 0.000000e+00, %4086 ]
  %4162 = phi float [ %4157, %4150 ], [ 0x3F70101020000000, %4144 ], [ 0x3F70101020000000, %4086 ]
  %4163 = add i32 %60, 144
  %4164 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %4163, i32 undef)  ; BufferLoad(srv,index,wot)
  %4165 = extractvalue %dx.types.ResRet.i32 %4164, 0
  %4166 = and i32 %4165, 255
  %4167 = uitofp i32 %4166 to float
  %4168 = lshr i32 %4165, 8
  %4169 = and i32 %4168, 255
  %4170 = uitofp i32 %4169 to float
  %4171 = call float @dx.op.dot3.f32(i32 55, float %3921, float %3922, float %3923, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4172 = fmul fast float %4170, %4171
  %4173 = fadd fast float %4172, %4167
  %4174 = fmul fast float %4173, 0x3F70101020000000
  %4175 = call float @dx.op.unary.f32(i32 7, float %4174)  ; Saturate(value)
  br i1 %3405, label %4176, label %4211

; <label>:4176                                    ; preds = %4158
  %4177 = fmul fast float %4162, 2.000000e+00
  %4178 = fcmp fast olt float %4107, 1.270000e+02
  %4179 = fcmp fast olt float %4108, 1.270000e+02
  %4180 = fcmp fast olt float %4109, 1.270000e+02
  %4181 = fmul fast float %4107, 0xBFF7154760000000
  %4182 = fmul fast float %4181, %4177
  %4183 = fmul fast float %4108, 0xBFF7154760000000
  %4184 = fmul fast float %4183, %4177
  %4185 = fmul fast float %4109, 0xBFF7154760000000
  %4186 = fmul fast float %4185, %4177
  %4187 = call float @dx.op.unary.f32(i32 21, float %4182)  ; Exp(value)
  %4188 = call float @dx.op.unary.f32(i32 21, float %4184)  ; Exp(value)
  %4189 = call float @dx.op.unary.f32(i32 21, float %4186)  ; Exp(value)
  %4190 = call float @dx.op.unary.f32(i32 7, float %4187)  ; Saturate(value)
  %4191 = call float @dx.op.unary.f32(i32 7, float %4188)  ; Saturate(value)
  %4192 = call float @dx.op.unary.f32(i32 7, float %4189)  ; Saturate(value)
  %4193 = fadd fast float %4190, -1.000000e+00
  %4194 = select i1 %4178, float %4193, float -1.000000e+00
  %4195 = fadd fast float %4191, -1.000000e+00
  %4196 = select i1 %4179, float %4195, float -1.000000e+00
  %4197 = fadd fast float %4192, -1.000000e+00
  %4198 = select i1 %4180, float %4197, float -1.000000e+00
  %4199 = fmul fast float %4194, %3701
  %4200 = fmul fast float %4196, %3701
  %4201 = fmul fast float %4198, %3701
  %4202 = fadd fast float %4199, 1.000000e+00
  %4203 = fadd fast float %4200, 1.000000e+00
  %4204 = fadd fast float %4201, 1.000000e+00
  %4205 = fmul fast float %4202, %3387
  %4206 = fmul fast float %4203, %3388
  %4207 = fmul fast float %4204, %3389
  %4208 = fmul fast float %4202, %3396
  %4209 = fmul fast float %4203, %3397
  %4210 = fmul fast float %4204, %3398
  br label %4211

; <label>:4211                                    ; preds = %4176, %4158
  %4212 = phi float [ %4205, %4176 ], [ %3387, %4158 ]
  %4213 = phi float [ %4206, %4176 ], [ %3388, %4158 ]
  %4214 = phi float [ %4207, %4176 ], [ %3389, %4158 ]
  %4215 = phi float [ %4208, %4176 ], [ %3396, %4158 ]
  %4216 = phi float [ %4209, %4176 ], [ %3397, %4158 ]
  %4217 = phi float [ %4210, %4176 ], [ %3398, %4158 ]
  %4218 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3406, i32 undef)  ; BufferLoad(srv,index,wot)
  %4219 = extractvalue %dx.types.ResRet.i32 %4218, 0
  %4220 = and i32 %4219, 3
  %4221 = icmp eq i32 %4220, 3
  br i1 %4221, label %4300, label %4222

; <label>:4222                                    ; preds = %4211
  %4223 = and i32 %4219, 16
  %4224 = icmp ne i32 %4223, 0
  %4225 = select i1 %4224, float %3701, float 0.000000e+00
  %4226 = icmp eq i32 %4220, 0
  br i1 %4226, label %4227, label %4255

; <label>:4227                                    ; preds = %4222
  %4228 = and i32 %4219, 64
  %4229 = icmp ne i32 %4228, 0
  %4230 = select i1 %4229, float %3701, float 0.000000e+00
  %4231 = fsub fast float %3921, %4212
  %4232 = fsub fast float %3922, %4213
  %4233 = fsub fast float %3923, %4214
  %4234 = fmul fast float %4225, %4231
  %4235 = fmul fast float %4225, %4232
  %4236 = fmul fast float %4225, %4233
  %4237 = fadd fast float %4234, %4212
  %4238 = fadd fast float %4235, %4213
  %4239 = fadd fast float %4236, %4214
  %4240 = fsub fast float %3907, %3399
  %4241 = fmul fast float %4225, %4240
  %4242 = fadd fast float %4241, %3399
  %4243 = fsub fast float %4049, %4215
  %4244 = fsub fast float %4050, %4216
  %4245 = fsub fast float %4051, %4217
  %4246 = fmul fast float %4230, %4243
  %4247 = fmul fast float %4230, %4244
  %4248 = fmul fast float %4230, %4245
  %4249 = fadd fast float %4246, %4215
  %4250 = fadd fast float %4247, %4216
  %4251 = fadd fast float %4248, %4217
  %4252 = fsub fast float %4175, %3403
  %4253 = fmul fast float %4225, %4252
  %4254 = fadd fast float %4253, %3403
  br label %4300

; <label>:4255                                    ; preds = %4222
  %4256 = icmp eq i32 %4220, 1
  br i1 %4256, label %4257, label %4270

; <label>:4257                                    ; preds = %4255
  %4258 = fadd fast float %3921, -1.000000e+00
  %4259 = fadd fast float %3922, -1.000000e+00
  %4260 = fadd fast float %3923, -1.000000e+00
  %4261 = fmul fast float %4225, %4258
  %4262 = fmul fast float %4225, %4259
  %4263 = fmul fast float %4225, %4260
  %4264 = fadd fast float %4261, 1.000000e+00
  %4265 = fadd fast float %4262, 1.000000e+00
  %4266 = fadd fast float %4263, 1.000000e+00
  %4267 = fmul fast float %4264, %4212
  %4268 = fmul fast float %4265, %4213
  %4269 = fmul fast float %4266, %4214
  br label %4300

; <label>:4270                                    ; preds = %4255
  %4271 = icmp eq i32 %4220, 2
  br i1 %4271, label %4272, label %4300

; <label>:4272                                    ; preds = %4270
  %4273 = call float @dx.op.unary.f32(i32 24, float %3921)  ; Sqrt(value)
  %4274 = call float @dx.op.unary.f32(i32 24, float %3922)  ; Sqrt(value)
  %4275 = call float @dx.op.unary.f32(i32 24, float %3923)  ; Sqrt(value)
  %4276 = fadd fast float %4273, -5.000000e-01
  %4277 = fadd fast float %4274, -5.000000e-01
  %4278 = fadd fast float %4275, -5.000000e-01
  %4279 = fmul fast float %4276, %4225
  %4280 = fmul fast float %4277, %4225
  %4281 = fmul fast float %4278, %4225
  %4282 = fadd fast float %4279, 5.000000e-01
  %4283 = fadd fast float %4280, 5.000000e-01
  %4284 = fadd fast float %4281, 5.000000e-01
  %4285 = fmul fast float %4282, 2.000000e+00
  %4286 = fsub fast float 1.000000e+00, %4285
  %4287 = fmul fast float %4286, %4212
  %4288 = fadd fast float %4287, %4285
  %4289 = fmul fast float %4288, %4212
  %4290 = fmul fast float %4283, 2.000000e+00
  %4291 = fsub fast float 1.000000e+00, %4290
  %4292 = fmul fast float %4291, %4213
  %4293 = fadd fast float %4292, %4290
  %4294 = fmul fast float %4293, %4213
  %4295 = fmul fast float %4284, 2.000000e+00
  %4296 = fsub fast float 1.000000e+00, %4295
  %4297 = fmul fast float %4296, %4214
  %4298 = fadd fast float %4297, %4295
  %4299 = fmul fast float %4298, %4214
  br label %4300

; <label>:4300                                    ; preds = %4272, %4270, %4257, %4227, %4211
  %4301 = phi float [ %4212, %4211 ], [ %4289, %4272 ], [ %4212, %4270 ], [ %4267, %4257 ], [ %4237, %4227 ]
  %4302 = phi float [ %4213, %4211 ], [ %4294, %4272 ], [ %4213, %4270 ], [ %4268, %4257 ], [ %4238, %4227 ]
  %4303 = phi float [ %4214, %4211 ], [ %4299, %4272 ], [ %4214, %4270 ], [ %4269, %4257 ], [ %4239, %4227 ]
  %4304 = phi float [ %4215, %4211 ], [ %4215, %4272 ], [ %4215, %4270 ], [ %4215, %4257 ], [ %4249, %4227 ]
  %4305 = phi float [ %4216, %4211 ], [ %4216, %4272 ], [ %4216, %4270 ], [ %4216, %4257 ], [ %4250, %4227 ]
  %4306 = phi float [ %4217, %4211 ], [ %4217, %4272 ], [ %4217, %4270 ], [ %4217, %4257 ], [ %4251, %4227 ]
  %4307 = phi float [ %3399, %4211 ], [ %3399, %4272 ], [ %3399, %4270 ], [ %3399, %4257 ], [ %4242, %4227 ]
  %4308 = phi float [ %3403, %4211 ], [ %3403, %4272 ], [ %3403, %4270 ], [ %3403, %4257 ], [ %4254, %4227 ]
  %4309 = and i32 %4219, 12
  %4310 = icmp eq i32 %4309, 12
  br i1 %4310, label %4441, label %4311

; <label>:4311                                    ; preds = %4300
  %4312 = and i32 %4219, 2097184
  %4313 = icmp eq i32 %4312, 2097184
  %4314 = select i1 %4313, float %3701, float 0.000000e+00
  %4315 = and i32 %4219, 4194336
  %4316 = icmp eq i32 %4315, 4194336
  %4317 = select i1 %4316, float %3701, float 0.000000e+00
  %4318 = and i32 %4219, 8388640
  %4319 = icmp eq i32 %4318, 8388640
  %4320 = select i1 %4319, float %3701, float 0.000000e+00
  %4321 = and i32 %4219, 1024
  %4322 = icmp ne i32 %4321, 0
  %4323 = select i1 %4322, float %3701, float 0.000000e+00
  %4324 = and i32 %4219, 2048
  %4325 = icmp ne i32 %4324, 0
  %4326 = select i1 %4325, float %3701, float 0.000000e+00
  %4327 = and i32 %4219, 8192
  %4328 = icmp ne i32 %4327, 0
  %4329 = select i1 %4328, float %3701, float 0.000000e+00
  %4330 = icmp eq i32 %4309, 0
  br i1 %4330, label %4331, label %4365

; <label>:4331                                    ; preds = %4311
  %4332 = fsub fast float %4002, %3385
  %4333 = fsub fast float %4003, %3386
  %4334 = fmul fast float %4314, %4332
  %4335 = fmul fast float %4314, %4333
  %4336 = fadd fast float %4334, %3385
  %4337 = fadd fast float %4335, %3386
  %4338 = fsub fast float %4004, %3401
  %4339 = fmul fast float %4317, %4338
  %4340 = fadd fast float %4339, %3401
  %4341 = fsub fast float %4001, %3400
  %4342 = fmul fast float %4320, %4341
  %4343 = fadd fast float %4342, %3400
  %4344 = fsub fast float %4107, %3393
  %4345 = fsub fast float %4108, %3394
  %4346 = fsub fast float %4109, %3395
  %4347 = fmul fast float %4323, %4344
  %4348 = fmul fast float %4323, %4345
  %4349 = fmul fast float %4323, %4346
  %4350 = fadd fast float %4347, %3393
  %4351 = fadd fast float %4348, %3394
  %4352 = fadd fast float %4349, %3395
  %4353 = fsub fast float %4162, %3402
  %4354 = fmul fast float %4326, %4353
  %4355 = fadd fast float %4354, %3402
  %4356 = fsub fast float %4159, %3390
  %4357 = fsub fast float %4160, %3391
  %4358 = fsub fast float %4161, %3392
  %4359 = fmul fast float %4329, %4356
  %4360 = fmul fast float %4329, %4357
  %4361 = fmul fast float %4329, %4358
  %4362 = fadd fast float %4359, %3390
  %4363 = fadd fast float %4360, %3391
  %4364 = fadd fast float %4361, %3392
  br label %4441

; <label>:4365                                    ; preds = %4311
  %4366 = icmp eq i32 %4309, 4
  br i1 %4366, label %4367, label %4413

; <label>:4367                                    ; preds = %4365
  %4368 = fmul fast float %4314, %4002
  %4369 = fmul fast float %4314, %4003
  %4370 = fadd fast float %4368, %3385
  %4371 = fadd fast float %4369, %3386
  %4372 = call float @dx.op.binary.f32(i32 36, float %3401, float %4004)  ; FMin(a,b)
  %4373 = fsub fast float %4372, %3401
  %4374 = fmul fast float %4373, %4317
  %4375 = fadd fast float %4374, %3401
  %4376 = fadd fast float %4001, %3400
  %4377 = fmul fast float %4376, 0x3FF337FAE0000000
  %4378 = fmul fast float %3400, %3400
  %4379 = fmul fast float %4001, %4001
  %4380 = fadd fast float %4379, %4378
  %4381 = fmul fast float %4380, 0x3FE5152B00000000
  %4382 = fmul fast float %3400, 0xBFCC1F85E0000000
  %4383 = fmul fast float %4382, %4001
  %4384 = fadd fast float %4383, 0xBFE1363700000000
  %4385 = fadd fast float %4384, %4377
  %4386 = fsub fast float %4385, %4381
  %4387 = fmul fast float %4376, 0x3FBA6F0D00000000
  %4388 = fmul fast float %4380, 0x3FD0432880000000
  %4389 = fmul fast float %3400, 0xBFEF110800000000
  %4390 = fmul fast float %4389, %4001
  %4391 = fadd fast float %4390, 1.000000e+00
  %4392 = fsub fast float %4391, %4387
  %4393 = fadd fast float %4392, %4388
  %4394 = fdiv fast float %4386, %4393
  %4395 = call float @dx.op.unary.f32(i32 7, float %4394)  ; Saturate(value)
  %4396 = fsub fast float %4395, %3400
  %4397 = fmul fast float %4396, %4320
  %4398 = fadd fast float %4397, %3400
  %4399 = fmul fast float %4323, %4107
  %4400 = fmul fast float %4323, %4108
  %4401 = fmul fast float %4323, %4109
  %4402 = fadd fast float %4399, %3393
  %4403 = fadd fast float %4400, %3394
  %4404 = fadd fast float %4401, %3395
  %4405 = fmul fast float %4326, %4162
  %4406 = fadd fast float %4405, %3402
  %4407 = fmul fast float %4329, %4159
  %4408 = fmul fast float %4329, %4160
  %4409 = fmul fast float %4329, %4161
  %4410 = fadd fast float %4407, %3390
  %4411 = fadd fast float %4408, %3391
  %4412 = fadd fast float %4409, %3392
  br label %4441

; <label>:4413                                    ; preds = %4365
  %4414 = icmp eq i32 %4309, 8
  br i1 %4414, label %4415, label %4441

; <label>:4415                                    ; preds = %4413
  %4416 = fmul fast float %4314, %4002
  %4417 = fmul fast float %4314, %4003
  %4418 = fadd fast float %4416, %3385
  %4419 = fadd fast float %4417, %3386
  %4420 = call float @dx.op.binary.f32(i32 36, float %3401, float %4004)  ; FMin(a,b)
  %4421 = fsub fast float %4420, %3401
  %4422 = fmul fast float %4421, %4317
  %4423 = fadd fast float %4422, %3401
  %4424 = fsub fast float %4001, %3400
  %4425 = fmul fast float %4320, %4424
  %4426 = fadd fast float %4425, %3400
  %4427 = fmul fast float %4323, %4107
  %4428 = fmul fast float %4323, %4108
  %4429 = fmul fast float %4323, %4109
  %4430 = fadd fast float %4427, %3393
  %4431 = fadd fast float %4428, %3394
  %4432 = fadd fast float %4429, %3395
  %4433 = fmul fast float %4326, %4162
  %4434 = fadd fast float %4433, %3402
  %4435 = fmul fast float %4329, %4159
  %4436 = fmul fast float %4329, %4160
  %4437 = fmul fast float %4329, %4161
  %4438 = fadd fast float %4435, %3390
  %4439 = fadd fast float %4436, %3391
  %4440 = fadd fast float %4437, %3392
  br label %4441

; <label>:4441                                    ; preds = %4415, %4413, %4367, %4331, %4300, %3700, %3404, %3384
  %4442 = phi float [ %3385, %4300 ], [ %3385, %3700 ], [ %3385, %3384 ], [ %3385, %3404 ], [ %4336, %4331 ], [ %4370, %4367 ], [ %3385, %4413 ], [ %4418, %4415 ]
  %4443 = phi float [ %3386, %4300 ], [ %3386, %3700 ], [ %3386, %3384 ], [ %3386, %3404 ], [ %4337, %4331 ], [ %4371, %4367 ], [ %3386, %4413 ], [ %4419, %4415 ]
  %4444 = phi float [ %4301, %4300 ], [ %3387, %3700 ], [ %3387, %3384 ], [ %3387, %3404 ], [ %4301, %4331 ], [ %4301, %4367 ], [ %4301, %4413 ], [ %4301, %4415 ]
  %4445 = phi float [ %4302, %4300 ], [ %3388, %3700 ], [ %3388, %3384 ], [ %3388, %3404 ], [ %4302, %4331 ], [ %4302, %4367 ], [ %4302, %4413 ], [ %4302, %4415 ]
  %4446 = phi float [ %4303, %4300 ], [ %3389, %3700 ], [ %3389, %3384 ], [ %3389, %3404 ], [ %4303, %4331 ], [ %4303, %4367 ], [ %4303, %4413 ], [ %4303, %4415 ]
  %4447 = phi float [ %3390, %4300 ], [ %3390, %3700 ], [ %3390, %3384 ], [ %3390, %3404 ], [ %4362, %4331 ], [ %4410, %4367 ], [ %3390, %4413 ], [ %4438, %4415 ]
  %4448 = phi float [ %3391, %4300 ], [ %3391, %3700 ], [ %3391, %3384 ], [ %3391, %3404 ], [ %4363, %4331 ], [ %4411, %4367 ], [ %3391, %4413 ], [ %4439, %4415 ]
  %4449 = phi float [ %3392, %4300 ], [ %3392, %3700 ], [ %3392, %3384 ], [ %3392, %3404 ], [ %4364, %4331 ], [ %4412, %4367 ], [ %3392, %4413 ], [ %4440, %4415 ]
  %4450 = phi float [ %3393, %4300 ], [ %3393, %3700 ], [ %3393, %3384 ], [ %3393, %3404 ], [ %4350, %4331 ], [ %4402, %4367 ], [ %3393, %4413 ], [ %4430, %4415 ]
  %4451 = phi float [ %3394, %4300 ], [ %3394, %3700 ], [ %3394, %3384 ], [ %3394, %3404 ], [ %4351, %4331 ], [ %4403, %4367 ], [ %3394, %4413 ], [ %4431, %4415 ]
  %4452 = phi float [ %3395, %4300 ], [ %3395, %3700 ], [ %3395, %3384 ], [ %3395, %3404 ], [ %4352, %4331 ], [ %4404, %4367 ], [ %3395, %4413 ], [ %4432, %4415 ]
  %4453 = phi float [ %4304, %4300 ], [ %3396, %3700 ], [ %3396, %3384 ], [ %3396, %3404 ], [ %4304, %4331 ], [ %4304, %4367 ], [ %4304, %4413 ], [ %4304, %4415 ]
  %4454 = phi float [ %4305, %4300 ], [ %3397, %3700 ], [ %3397, %3384 ], [ %3397, %3404 ], [ %4305, %4331 ], [ %4305, %4367 ], [ %4305, %4413 ], [ %4305, %4415 ]
  %4455 = phi float [ %4306, %4300 ], [ %3398, %3700 ], [ %3398, %3384 ], [ %3398, %3404 ], [ %4306, %4331 ], [ %4306, %4367 ], [ %4306, %4413 ], [ %4306, %4415 ]
  %4456 = phi float [ %4307, %4300 ], [ %3399, %3700 ], [ %3399, %3384 ], [ %3399, %3404 ], [ %4307, %4331 ], [ %4307, %4367 ], [ %4307, %4413 ], [ %4307, %4415 ]
  %4457 = phi float [ %3400, %4300 ], [ %3400, %3700 ], [ %3400, %3384 ], [ %3400, %3404 ], [ %4343, %4331 ], [ %4398, %4367 ], [ %3400, %4413 ], [ %4426, %4415 ]
  %4458 = phi float [ %3401, %4300 ], [ %3401, %3700 ], [ %3401, %3384 ], [ %3401, %3404 ], [ %4340, %4331 ], [ %4375, %4367 ], [ %3401, %4413 ], [ %4423, %4415 ]
  %4459 = phi float [ %3402, %4300 ], [ %3402, %3700 ], [ %3402, %3384 ], [ %3402, %3404 ], [ %4355, %4331 ], [ %4406, %4367 ], [ %3402, %4413 ], [ %4434, %4415 ]
  %4460 = phi float [ %4308, %4300 ], [ %3403, %3700 ], [ %3403, %3384 ], [ %3403, %3404 ], [ %4308, %4331 ], [ %4308, %4367 ], [ %4308, %4413 ], [ %4308, %4415 ]
  %4461 = add i32 %60, 408
  %4462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %4461, i32 undef)  ; BufferLoad(srv,index,wot)
  %4463 = extractvalue %dx.types.ResRet.i32 %4462, 0
  %4464 = extractvalue %dx.types.ResRet.i32 %4462, 1
  %4465 = bitcast i32 %4463 to float
  %4466 = bitcast i32 %4464 to float
  %4467 = fcmp fast oge float %4465, 0.000000e+00
  %4468 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4469 = extractvalue %dx.types.CBufRet.f32 %4468, 0
  %4470 = select i1 %4467, float %4465, float %4469
  %4471 = add i32 %60, 504
  %4472 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %4471, i32 undef)  ; BufferLoad(srv,index,wot)
  %4473 = extractvalue %dx.types.ResRet.i32 %4472, 0
  %4474 = add i32 %4473, 0
  %4475 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4474, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4476 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4475, %dx.types.Handle %106, float %88, float %89, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4477 = extractvalue %dx.types.ResRet.f32 %4476, 0
  %4478 = fmul fast float %4477, %4466
  %4479 = fadd fast float %4478, %4470
  %4480 = call float @dx.op.dot2.f32(i32 54, float %4442, float %4443, float %4442, float %4443)  ; Dot2(ax,ay,bx,by)
  %4481 = fmul fast float %4480, 0x3FE3333340000000
  %4482 = fsub fast float 1.000000e+00, %4481
  %4483 = call float @dx.op.dot3.f32(i32 55, float %4442, float %4443, float %4482, float %4442, float %4443, float %4482)  ; Dot3(ax,ay,az,bx,by,bz)
  %4484 = call float @dx.op.unary.f32(i32 25, float %4483)  ; Rsqrt(value)
  %4485 = fmul fast float %4484, %4442
  %4486 = fmul fast float %4484, %4443
  %4487 = fmul fast float %4482, %4484
  %4488 = fmul fast float %4487, %116
  %4489 = fmul fast float %4487, %117
  %4490 = fmul fast float %4487, %118
  %4491 = fmul fast float %4485, %81
  %4492 = fmul fast float %4485, %82
  %4493 = fmul fast float %4485, %83
  %4494 = fadd fast float %4488, %4491
  %4495 = fadd fast float %4489, %4492
  %4496 = fadd fast float %4490, %4493
  %4497 = fmul fast float %128, %4486
  %4498 = fmul fast float %129, %4486
  %4499 = fmul fast float %130, %4486
  %4500 = fadd fast float %4494, %4497
  %4501 = fadd fast float %4495, %4498
  %4502 = fadd fast float %4496, %4499
  %4503 = call float @dx.op.dot3.f32(i32 55, float %4500, float %4501, float %4502, float %4500, float %4501, float %4502)  ; Dot3(ax,ay,az,bx,by,bz)
  %4504 = call float @dx.op.unary.f32(i32 25, float %4503)  ; Rsqrt(value)
  %4505 = fmul fast float %4500, %4504
  %4506 = fmul fast float %4501, %4504
  %4507 = fmul fast float %4502, %4504
  %4508 = and i32 %62, 1
  %4509 = icmp eq i32 %4508, 0
  br i1 %4509, label %4510, label %5102

; <label>:4510                                    ; preds = %4441
  %4511 = call float @dx.op.unary.f32(i32 83, float %164)  ; DerivCoarseX(value)
  %4512 = call float @dx.op.unary.f32(i32 83, float %165)  ; DerivCoarseX(value)
  %4513 = call float @dx.op.unary.f32(i32 83, float %166)  ; DerivCoarseX(value)
  %4514 = call float @dx.op.unary.f32(i32 84, float %164)  ; DerivCoarseY(value)
  %4515 = call float @dx.op.unary.f32(i32 84, float %165)  ; DerivCoarseY(value)
  %4516 = call float @dx.op.unary.f32(i32 84, float %166)  ; DerivCoarseY(value)
  %4517 = fadd fast float %4511, %164
  %4518 = fadd fast float %4512, %165
  %4519 = fadd fast float %4513, %166
  %4520 = fadd fast float %4514, %164
  %4521 = fadd fast float %4515, %165
  %4522 = fadd fast float %4516, %166
  %4523 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %4524 = extractvalue %dx.types.CBufRet.f32 %4523, 0
  %4525 = extractvalue %dx.types.CBufRet.f32 %4523, 1
  %4526 = extractvalue %dx.types.CBufRet.f32 %4523, 2
  %4527 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %4528 = extractvalue %dx.types.CBufRet.f32 %4527, 2
  %4529 = extractvalue %dx.types.CBufRet.f32 %4527, 3
  %4530 = fmul fast float %4524, %109
  %4531 = fmul fast float %4530, %4528
  %4532 = fmul fast float %4525, %110
  %4533 = fmul fast float %4532, %4529
  %4534 = fptoui float %4531 to i32
  %4535 = fptoui float %4533 to i32
  %4536 = fadd fast float %4524, -1.000000e+00
  %4537 = fadd fast float %4525, -1.000000e+00
  %4538 = fptoui float %4536 to i32
  %4539 = fptoui float %4537 to i32
  %4540 = call i32 @dx.op.binary.i32(i32 40, i32 %4534, i32 %4538)  ; UMin(a,b)
  %4541 = call i32 @dx.op.binary.i32(i32 40, i32 %4535, i32 %4539)  ; UMin(a,b)
  %4542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4543 = extractvalue %dx.types.CBufRet.f32 %4542, 2
  %4544 = extractvalue %dx.types.CBufRet.f32 %4542, 3
  %4545 = fmul fast float %4543, %97
  %4546 = fsub fast float %4545, %4544
  %4547 = fadd fast float %4526, -1.000000e+00
  %4548 = call float @dx.op.binary.f32(i32 36, float %4546, float %4547)  ; FMin(a,b)
  %4549 = fptoui float %4548 to i32
  %4550 = fptoui float %4524 to i32
  %4551 = fptoui float %4525 to i32
  %4552 = mul i32 %4549, %4551
  %4553 = add i32 %4552, %4541
  %4554 = mul i32 %4553, %4550
  %4555 = add i32 %4554, %4540
  %4556 = shl i32 %4555, 2
  %4557 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %4556, i32 undef)  ; BufferLoad(srv,index,wot)
  %4558 = extractvalue %dx.types.ResRet.i32 %4557, 0
  %4559 = and i32 %4558, 1023
  %4560 = lshr i32 %4558, 10
  %4561 = icmp eq i32 %4559, 0
  br i1 %4561, label %5065, label %4562

; <label>:4562                                    ; preds = %4510
  %4563 = and i32 %4558, 1023
  br label %4564

; <label>:4564                                    ; preds = %4696, %4562
  %4565 = phi i32 [ %4646, %4696 ], [ 0, %4562 ]
  %4566 = phi float [ %4697, %4696 ], [ 0.000000e+00, %4562 ]
  %4567 = phi float [ %4698, %4696 ], [ %4479, %4562 ]
  %4568 = phi float [ %4699, %4696 ], [ %4460, %4562 ]
  %4569 = phi float [ %4700, %4696 ], [ %4450, %4562 ]
  %4570 = phi float [ %4701, %4696 ], [ %4451, %4562 ]
  %4571 = phi float [ %4702, %4696 ], [ %4452, %4562 ]
  %4572 = phi float [ %4703, %4696 ], [ 0.000000e+00, %4562 ]
  %4573 = phi float [ %4704, %4696 ], [ 0.000000e+00, %4562 ]
  %4574 = phi float [ %4705, %4696 ], [ %4447, %4562 ]
  %4575 = phi float [ %4706, %4696 ], [ %4448, %4562 ]
  %4576 = phi float [ %4707, %4696 ], [ %4449, %4562 ]
  %4577 = phi float [ %4708, %4696 ], [ %4453, %4562 ]
  %4578 = phi float [ %4709, %4696 ], [ %4454, %4562 ]
  %4579 = phi float [ %4710, %4696 ], [ %4455, %4562 ]
  %4580 = phi float [ %4711, %4696 ], [ %4505, %4562 ]
  %4581 = phi float [ %4712, %4696 ], [ %4506, %4562 ]
  %4582 = phi float [ %4713, %4696 ], [ %4507, %4562 ]
  %4583 = phi float [ %4714, %4696 ], [ %4458, %4562 ]
  %4584 = phi float [ %4715, %4696 ], [ %4457, %4562 ]
  %4585 = phi float [ %4716, %4696 ], [ 0.000000e+00, %4562 ]
  %4586 = phi float [ %4717, %4696 ], [ %4456, %4562 ]
  %4587 = phi float [ %4718, %4696 ], [ %4444, %4562 ]
  %4588 = phi float [ %4719, %4696 ], [ %4445, %4562 ]
  %4589 = phi float [ %4720, %4696 ], [ %4446, %4562 ]
  %4590 = add nuw nsw i32 %4565, %4560
  %4591 = shl i32 %4590, 2
  %4592 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %4591, i32 undef)  ; BufferLoad(srv,index,wot)
  %4593 = extractvalue %dx.types.ResRet.i32 %4592, 0
  %4594 = shl i32 %4593, 8
  %4595 = or i32 %4594, 48
  %4596 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4595, i32 undef)  ; BufferLoad(srv,index,wot)
  %4597 = extractvalue %dx.types.ResRet.f32 %4596, 0
  %4598 = extractvalue %dx.types.ResRet.f32 %4596, 1
  %4599 = extractvalue %dx.types.ResRet.f32 %4596, 2
  %4600 = extractvalue %dx.types.ResRet.f32 %4596, 3
  %4601 = or i32 %4594, 64
  %4602 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4601, i32 undef)  ; BufferLoad(srv,index,wot)
  %4603 = extractvalue %dx.types.ResRet.i32 %4602, 0
  %4604 = extractvalue %dx.types.ResRet.i32 %4602, 1
  %4605 = or i32 %4594, 80
  %4606 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4605, i32 undef)  ; BufferLoad(srv,index,wot)
  %4607 = extractvalue %dx.types.ResRet.f32 %4606, 2
  %4608 = extractvalue %dx.types.ResRet.f32 %4606, 3
  %4609 = or i32 %4594, 96
  %4610 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4609, i32 undef)  ; BufferLoad(srv,index,wot)
  %4611 = extractvalue %dx.types.ResRet.f32 %4610, 0
  %4612 = extractvalue %dx.types.ResRet.f32 %4610, 1
  %4613 = extractvalue %dx.types.ResRet.f32 %4610, 2
  %4614 = extractvalue %dx.types.ResRet.f32 %4610, 3
  %4615 = or i32 %4594, 112
  %4616 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4615, i32 undef)  ; BufferLoad(srv,index,wot)
  %4617 = extractvalue %dx.types.ResRet.f32 %4616, 2
  %4618 = or i32 %4594, 128
  %4619 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4618, i32 undef)  ; BufferLoad(srv,index,wot)
  %4620 = extractvalue %dx.types.ResRet.f32 %4619, 0
  %4621 = extractvalue %dx.types.ResRet.f32 %4619, 1
  %4622 = extractvalue %dx.types.ResRet.f32 %4619, 2
  %4623 = extractvalue %dx.types.ResRet.f32 %4619, 3
  %4624 = or i32 %4594, 144
  %4625 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4624, i32 undef)  ; BufferLoad(srv,index,wot)
  %4626 = extractvalue %dx.types.ResRet.f32 %4625, 0
  %4627 = extractvalue %dx.types.ResRet.f32 %4625, 1
  %4628 = extractvalue %dx.types.ResRet.f32 %4625, 2
  %4629 = extractvalue %dx.types.ResRet.f32 %4625, 3
  %4630 = or i32 %4594, 160
  %4631 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4630, i32 undef)  ; BufferLoad(srv,index,wot)
  %4632 = extractvalue %dx.types.ResRet.f32 %4631, 0
  %4633 = extractvalue %dx.types.ResRet.f32 %4631, 1
  %4634 = extractvalue %dx.types.ResRet.f32 %4631, 2
  %4635 = extractvalue %dx.types.ResRet.f32 %4631, 3
  %4636 = or i32 %4594, 192
  %4637 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4636, i32 undef)  ; BufferLoad(srv,index,wot)
  %4638 = extractvalue %dx.types.ResRet.i32 %4637, 0
  %4639 = or i32 %4594, 208
  %4640 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4639, i32 undef)  ; BufferLoad(srv,index,wot)
  %4641 = extractvalue %dx.types.ResRet.f32 %4640, 0
  %4642 = or i32 %4594, 248
  %4643 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4642, i32 undef)  ; BufferLoad(srv,index,wot)
  %4644 = extractvalue %dx.types.ResRet.f32 %4643, 0
  %4645 = extractvalue %dx.types.ResRet.f32 %4643, 1
  %4646 = add nuw nsw i32 %4565, 1
  %4647 = bitcast float %4600 to i32
  %4648 = and i32 %4647, 512
  %4649 = icmp eq i32 %4648, 0
  %4650 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4594, i32 undef)  ; BufferLoad(srv,index,wot)
  %4651 = extractvalue %dx.types.ResRet.f32 %4650, 0
  %4652 = extractvalue %dx.types.ResRet.f32 %4650, 1
  %4653 = extractvalue %dx.types.ResRet.f32 %4650, 2
  %4654 = extractvalue %dx.types.ResRet.f32 %4650, 3
  %4655 = call float @dx.op.dot4.f32(i32 56, float %4651, float %4652, float %4653, float %4654, float %164, float %165, float %166, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4656 = or i32 %4594, 16
  %4657 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4656, i32 undef)  ; BufferLoad(srv,index,wot)
  %4658 = extractvalue %dx.types.ResRet.f32 %4657, 0
  %4659 = extractvalue %dx.types.ResRet.f32 %4657, 1
  %4660 = extractvalue %dx.types.ResRet.f32 %4657, 2
  %4661 = extractvalue %dx.types.ResRet.f32 %4657, 3
  %4662 = call float @dx.op.dot4.f32(i32 56, float %4658, float %4659, float %4660, float %4661, float %164, float %165, float %166, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4663 = or i32 %4594, 32
  %4664 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4663, i32 undef)  ; BufferLoad(srv,index,wot)
  %4665 = extractvalue %dx.types.ResRet.f32 %4664, 0
  %4666 = extractvalue %dx.types.ResRet.f32 %4664, 1
  %4667 = extractvalue %dx.types.ResRet.f32 %4664, 2
  %4668 = extractvalue %dx.types.ResRet.f32 %4664, 3
  %4669 = call float @dx.op.dot4.f32(i32 56, float %4665, float %4666, float %4667, float %4668, float %164, float %165, float %166, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4670 = call float @dx.op.unary.f32(i32 27, float %4655)  ; Round_ni(value)
  %4671 = call float @dx.op.unary.f32(i32 6, float %4670)  ; FAbs(value)
  %4672 = call float @dx.op.unary.f32(i32 27, float %4662)  ; Round_ni(value)
  %4673 = call float @dx.op.unary.f32(i32 6, float %4672)  ; FAbs(value)
  %4674 = call float @dx.op.unary.f32(i32 6, float %4669)  ; FAbs(value)
  %4675 = call float @dx.op.unary.f32(i32 27, float %4674)  ; Round_ni(value)
  %4676 = fadd fast float %4673, %4671
  %4677 = fadd fast float %4676, %4675
  %4678 = fcmp fast oeq float %4677, 0.000000e+00
  %4679 = call float @dx.op.dot4.f32(i32 56, float %4651, float %4652, float %4653, float %4654, float %4517, float %4518, float %4519, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4680 = call float @dx.op.dot4.f32(i32 56, float %4658, float %4659, float %4660, float %4661, float %4517, float %4518, float %4519, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4681 = call float @dx.op.dot4.f32(i32 56, float %4651, float %4652, float %4653, float %4654, float %4520, float %4521, float %4522, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4682 = call float @dx.op.dot4.f32(i32 56, float %4658, float %4659, float %4660, float %4661, float %4520, float %4521, float %4522, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4683 = fsub fast float %4679, %4655
  %4684 = fsub fast float %4681, %4655
  %4685 = fsub fast float %4680, %4662
  %4686 = fsub fast float %4682, %4662
  %4687 = call float @dx.op.dot3.f32(i32 55, float %4597, float %4598, float %4599, float %116, float %117, float %118)  ; Dot3(ax,ay,az,bx,by,bz)
  %4688 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4689 = extractvalue %dx.types.CBufRet.f32 %4688, 2
  %4690 = fadd fast float %4689, %4687
  %4691 = call float @dx.op.unary.f32(i32 7, float %4690)  ; Saturate(value)
  %4692 = extractvalue %dx.types.CBufRet.f32 %4688, 0
  %4693 = fcmp fast ogt float %4691, %4692
  %4694 = and i1 %4678, %4693
  %4695 = and i1 %4649, %4694
  br i1 %4695, label %4722, label %4696

; <label>:4696                                    ; preds = %5051, %4803, %4722, %4564
  %4697 = phi float [ %4566, %4722 ], [ %4806, %4803 ], [ %4806, %5051 ], [ %4566, %4564 ]
  %4698 = phi float [ %4567, %4722 ], [ %4567, %4803 ], [ %5027, %5051 ], [ %4567, %4564 ]
  %4699 = phi float [ %4568, %4722 ], [ %4568, %4803 ], [ %5025, %5051 ], [ %4568, %4564 ]
  %4700 = phi float [ %4569, %4722 ], [ %4569, %4803 ], [ %5003, %5051 ], [ %4569, %4564 ]
  %4701 = phi float [ %4570, %4722 ], [ %4570, %4803 ], [ %5004, %5051 ], [ %4570, %4564 ]
  %4702 = phi float [ %4571, %4722 ], [ %4571, %4803 ], [ %5005, %5051 ], [ %4571, %4564 ]
  %4703 = phi float [ %4572, %4722 ], [ %4572, %4803 ], [ %4930, %5051 ], [ %4572, %4564 ]
  %4704 = phi float [ %4573, %4722 ], [ %4573, %4803 ], [ %4928, %5051 ], [ %4573, %4564 ]
  %4705 = phi float [ %4574, %4722 ], [ %4574, %4803 ], [ %4973, %5051 ], [ %4574, %4564 ]
  %4706 = phi float [ %4575, %4722 ], [ %4575, %4803 ], [ %4974, %5051 ], [ %4575, %4564 ]
  %4707 = phi float [ %4576, %4722 ], [ %4576, %4803 ], [ %4975, %5051 ], [ %4576, %4564 ]
  %4708 = phi float [ %4577, %4722 ], [ %4577, %4803 ], [ %5061, %5051 ], [ %4577, %4564 ]
  %4709 = phi float [ %4578, %4722 ], [ %4578, %4803 ], [ %5062, %5051 ], [ %4578, %4564 ]
  %4710 = phi float [ %4579, %4722 ], [ %4579, %4803 ], [ %5063, %5051 ], [ %4579, %4564 ]
  %4711 = phi float [ %4580, %4722 ], [ %4580, %4803 ], [ %4909, %5051 ], [ %4580, %4564 ]
  %4712 = phi float [ %4581, %4722 ], [ %4581, %4803 ], [ %4910, %5051 ], [ %4581, %4564 ]
  %4713 = phi float [ %4582, %4722 ], [ %4582, %4803 ], [ %4911, %5051 ], [ %4582, %4564 ]
  %4714 = phi float [ %4583, %4722 ], [ %4583, %4803 ], [ %4983, %5051 ], [ %4583, %4564 ]
  %4715 = phi float [ %4584, %4722 ], [ %4584, %4803 ], [ %4980, %5051 ], [ %4584, %4564 ]
  %4716 = phi float [ %4585, %4722 ], [ %4585, %4803 ], [ %4977, %5051 ], [ %4585, %4564 ]
  %4717 = phi float [ %4586, %4722 ], [ %4586, %4803 ], [ %4926, %5051 ], [ %4586, %4564 ]
  %4718 = phi float [ %4587, %4722 ], [ %4587, %4803 ], [ %4921, %5051 ], [ %4587, %4564 ]
  %4719 = phi float [ %4588, %4722 ], [ %4588, %4803 ], [ %4922, %5051 ], [ %4588, %4564 ]
  %4720 = phi float [ %4589, %4722 ], [ %4589, %4803 ], [ %4923, %5051 ], [ %4589, %4564 ]
  %4721 = icmp eq i32 %4646, %4563
  br i1 %4721, label %5064, label %4564

; <label>:4722                                    ; preds = %4564
  %4723 = extractvalue %dx.types.ResRet.f32 %4616, 3
  %4724 = extractvalue %dx.types.ResRet.f32 %4616, 1
  %4725 = extractvalue %dx.types.ResRet.f32 %4616, 0
  %4726 = extractvalue %dx.types.ResRet.f32 %4606, 1
  %4727 = extractvalue %dx.types.ResRet.f32 %4606, 0
  %4728 = extractvalue %dx.types.ResRet.i32 %4602, 3
  %4729 = extractvalue %dx.types.ResRet.i32 %4602, 2
  %4730 = add i32 %4728, 0
  %4731 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4730, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4732 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4733 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4731, %dx.types.Handle %4732, float %4655, float %4662, float undef, float undef, i32 0, i32 0, i32 undef, float %4683, float %4685, float undef, float %4684, float %4686, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4734 = extractvalue %dx.types.ResRet.f32 %4733, 0
  %4735 = fmul fast float %4734, %4727
  %4736 = fadd fast float %4735, %4726
  %4737 = call float @dx.op.unary.f32(i32 7, float %4736)  ; Saturate(value)
  %4738 = fmul fast float %4655, %4611
  %4739 = call float @dx.op.tertiary.f32(i32 46, float %4612, float %4662, float %4738)  ; FMad(a,b,c)
  %4740 = fadd fast float %4739, %4725
  %4741 = fmul fast float %4655, %4613
  %4742 = call float @dx.op.tertiary.f32(i32 46, float %4614, float %4662, float %4741)  ; FMad(a,b,c)
  %4743 = fadd fast float %4742, %4724
  %4744 = fmul fast float %4683, %4611
  %4745 = call float @dx.op.tertiary.f32(i32 46, float %4612, float %4685, float %4744)  ; FMad(a,b,c)
  %4746 = fmul fast float %4683, %4613
  %4747 = call float @dx.op.tertiary.f32(i32 46, float %4614, float %4685, float %4746)  ; FMad(a,b,c)
  %4748 = fmul fast float %4684, %4611
  %4749 = call float @dx.op.tertiary.f32(i32 46, float %4612, float %4686, float %4748)  ; FMad(a,b,c)
  %4750 = fmul fast float %4684, %4613
  %4751 = call float @dx.op.tertiary.f32(i32 46, float %4614, float %4686, float %4750)  ; FMad(a,b,c)
  %4752 = add i32 %4729, 0
  %4753 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4752, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4754 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4753, %dx.types.Handle %4732, float %4740, float %4743, float undef, float undef, i32 0, i32 0, i32 undef, float %4745, float %4747, float undef, float %4749, float %4751, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4755 = extractvalue %dx.types.ResRet.f32 %4754, 0
  %4756 = and i32 %4647, 1024
  %4757 = icmp ne i32 %4756, 0
  %4758 = fcmp fast ogt float %4755, 0x3FE0101020000000
  %4759 = uitofp i1 %4758 to float
  %4760 = select i1 %4757, float %4759, float %4755
  %4761 = and i32 %4647, 8192
  %4762 = icmp ne i32 %4761, 0
  %4763 = select i1 %4762, float %4723, float 1.000000e+00
  %4764 = fmul fast float %4655, 2.000000e+00
  %4765 = fadd fast float %4764, -1.000000e+00
  %4766 = call float @dx.op.unary.f32(i32 6, float %4765)  ; FAbs(value)
  %4767 = fmul fast float %4766, %4644
  %4768 = fsub fast float %4767, %4644
  %4769 = call float @dx.op.unary.f32(i32 7, float %4768)  ; Saturate(value)
  %4770 = fmul fast float %4662, 2.000000e+00
  %4771 = fadd fast float %4770, -1.000000e+00
  %4772 = call float @dx.op.unary.f32(i32 6, float %4771)  ; FAbs(value)
  %4773 = fmul fast float %4772, %4645
  %4774 = fsub fast float %4773, %4645
  %4775 = call float @dx.op.unary.f32(i32 7, float %4774)  ; Saturate(value)
  %4776 = fmul fast float %4674, %4607
  %4777 = fsub fast float %4776, %4607
  %4778 = call float @dx.op.unary.f32(i32 7, float %4777)  ; Saturate(value)
  %4779 = fmul fast float %4737, %4763
  %4780 = fmul fast float %4779, %4734
  %4781 = fmul fast float %4780, %4769
  %4782 = fmul fast float %4781, %4760
  %4783 = fmul fast float %4782, %4775
  %4784 = fmul fast float %4783, %4778
  %4785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4786 = extractvalue %dx.types.CBufRet.f32 %4785, 1
  %4787 = extractvalue %dx.types.CBufRet.f32 %4785, 0
  %4788 = fsub fast float %4691, %4787
  %4789 = fmul fast float %4788, %4786
  %4790 = call float @dx.op.unary.f32(i32 7, float %4789)  ; Saturate(value)
  %4791 = fmul fast float %4784, %4608
  %4792 = fadd fast float %4784, %4608
  %4793 = fmul fast float %4792, %4617
  %4794 = fsub fast float %4793, %4617
  %4795 = call float @dx.op.unary.f32(i32 7, float %4794)  ; Saturate(value)
  %4796 = and i32 %4647, 128
  %4797 = icmp ne i32 %4796, 0
  %4798 = select i1 %4797, float %4795, float %4791
  %4799 = fmul fast float %4798, %4790
  %4800 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4801 = extractvalue %dx.types.CBufRet.f32 %4800, 0
  %4802 = fcmp fast ugt float %4799, %4801
  br i1 %4802, label %4803, label %4696

; <label>:4803                                    ; preds = %4722
  %4804 = select i1 %4762, float %4799, float 0.000000e+00
  %4805 = fadd fast float %4804, %4566
  %4806 = call float @dx.op.unary.f32(i32 7, float %4805)  ; Saturate(value)
  br i1 %4762, label %4696, label %4807

; <label>:4807                                    ; preds = %4803
  %4808 = and i32 %4647, 4
  %4809 = and i32 %4647, 8
  %4810 = add i32 %4603, 0
  %4811 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4810, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4812 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4813 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4811, %dx.types.Handle %4812, float %4740, float %4743, float undef, float undef, i32 0, i32 0, i32 undef, float %4745, float %4747, float undef, float %4749, float %4751, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4814 = extractvalue %dx.types.ResRet.f32 %4813, 0
  %4815 = extractvalue %dx.types.ResRet.f32 %4813, 1
  %4816 = extractvalue %dx.types.ResRet.f32 %4813, 2
  %4817 = extractvalue %dx.types.ResRet.f32 %4813, 3
  %4818 = bitcast float %4629 to i32
  %4819 = and i32 %4818, 255
  %4820 = uitofp i32 %4819 to float
  %4821 = lshr i32 %4818, 8
  %4822 = and i32 %4821, 255
  %4823 = uitofp i32 %4822 to float
  %4824 = fmul fast float %4817, %4820
  %4825 = fadd fast float %4824, %4823
  %4826 = fmul fast float %4825, 0x3F70101000000000
  %4827 = add i32 %4604, 0
  %4828 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4827, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4829 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4828, %dx.types.Handle %4812, float %4740, float %4743, float undef, float undef, i32 0, i32 0, i32 undef, float %4745, float %4747, float undef, float %4749, float %4751, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4830 = extractvalue %dx.types.ResRet.f32 %4829, 0
  %4831 = extractvalue %dx.types.ResRet.f32 %4829, 1
  %4832 = extractvalue %dx.types.ResRet.f32 %4829, 2
  %4833 = extractvalue %dx.types.ResRet.f32 %4829, 3
  %4834 = bitcast float %4623 to i32
  %4835 = and i32 %4834, 255
  %4836 = uitofp i32 %4835 to float
  %4837 = lshr i32 %4834, 8
  %4838 = and i32 %4837, 255
  %4839 = uitofp i32 %4838 to float
  %4840 = lshr i32 %4834, 16
  %4841 = and i32 %4840, 255
  %4842 = uitofp i32 %4841 to float
  %4843 = fmul fast float %4842, 0x3F70101000000000
  %4844 = fmul fast float %4830, %4836
  %4845 = fadd fast float %4844, %4839
  %4846 = fmul fast float %4845, 0x3F70101000000000
  %4847 = fadd fast float %4831, -5.000000e-01
  %4848 = fadd fast float %4833, -5.000000e-01
  %4849 = fmul fast float %4847, %4843
  %4850 = fmul fast float %4848, %4843
  %4851 = fadd fast float %4849, 5.000000e-01
  %4852 = fadd fast float %4850, 5.000000e-01
  %4853 = fmul fast float %4814, %4632
  %4854 = fmul fast float %4815, %4633
  %4855 = fmul fast float %4816, %4634
  %4856 = fmul fast float %4851, 2.000000e+00
  %4857 = fadd fast float %4856, -1.000000e+00
  %4858 = fmul fast float %4852, 2.000000e+00
  %4859 = fadd fast float %4858, -1.000000e+00
  %4860 = fadd fast float %4857, %4859
  %4861 = fmul fast float %4860, 5.000000e-01
  %4862 = fsub fast float %4857, %4859
  %4863 = fmul fast float %4862, 5.000000e-01
  %4864 = call float @dx.op.unary.f32(i32 6, float %4861)  ; FAbs(value)
  %4865 = fsub fast float 1.000000e+00, %4864
  %4866 = call float @dx.op.unary.f32(i32 6, float %4863)  ; FAbs(value)
  %4867 = fsub fast float %4865, %4866
  %4868 = call float @dx.op.dot3.f32(i32 55, float %4861, float %4863, float %4867, float %4861, float %4863, float %4867)  ; Dot3(ax,ay,az,bx,by,bz)
  %4869 = call float @dx.op.unary.f32(i32 25, float %4868)  ; Rsqrt(value)
  %4870 = fmul fast float %4861, %4869
  %4871 = fmul fast float %4863, %4869
  %4872 = fmul fast float %4869, %4867
  %4873 = fmul fast float %4872, %4597
  %4874 = fmul fast float %4872, %4598
  %4875 = fmul fast float %4872, %4599
  %4876 = fmul fast float %4870, %4620
  %4877 = fmul fast float %4870, %4621
  %4878 = fmul fast float %4870, %4622
  %4879 = fadd fast float %4876, %4873
  %4880 = fadd fast float %4877, %4874
  %4881 = fadd fast float %4878, %4875
  %4882 = fmul fast float %4871, %4626
  %4883 = fmul fast float %4871, %4627
  %4884 = fmul fast float %4871, %4628
  %4885 = fadd fast float %4879, %4882
  %4886 = fadd fast float %4880, %4883
  %4887 = fadd fast float %4881, %4884
  %4888 = call float @dx.op.dot3.f32(i32 55, float %4885, float %4886, float %4887, float %4885, float %4886, float %4887)  ; Dot3(ax,ay,az,bx,by,bz)
  %4889 = call float @dx.op.unary.f32(i32 25, float %4888)  ; Rsqrt(value)
  %4890 = fmul fast float %4885, %4889
  %4891 = fmul fast float %4886, %4889
  %4892 = fmul fast float %4887, %4889
  %4893 = icmp ne i32 %4809, 0
  %4894 = select i1 %4893, float 1.000000e+00, float 0.000000e+00
  %4895 = fmul fast float %4799, %4894
  %4896 = and i32 %4647, 1
  %4897 = icmp eq i32 %4896, 0
  br i1 %4897, label %4898, label %4902

; <label>:4898                                    ; preds = %4807
  %4899 = fsub fast float %4890, %4580
  %4900 = fsub fast float %4891, %4581
  %4901 = fsub fast float %4892, %4582
  br label %4902

; <label>:4902                                    ; preds = %4898, %4807
  %4903 = phi float [ %4899, %4898 ], [ %4890, %4807 ]
  %4904 = phi float [ %4900, %4898 ], [ %4891, %4807 ]
  %4905 = phi float [ %4901, %4898 ], [ %4892, %4807 ]
  %4906 = fmul float %4905, %4895
  %4907 = fmul float %4904, %4895
  %4908 = fmul float %4903, %4895
  %4909 = fadd fast float %4908, %4580
  %4910 = fadd fast float %4907, %4581
  %4911 = fadd fast float %4906, %4582
  %4912 = icmp ne i32 %4808, 0
  %4913 = select i1 %4912, float 1.000000e+00, float 0.000000e+00
  %4914 = fmul fast float %4799, %4913
  %4915 = fsub fast float %4853, %4587
  %4916 = fsub fast float %4854, %4588
  %4917 = fsub fast float %4855, %4589
  %4918 = fmul fast float %4915, %4914
  %4919 = fmul fast float %4916, %4914
  %4920 = fmul fast float %4917, %4914
  %4921 = fadd fast float %4918, %4587
  %4922 = fadd fast float %4919, %4588
  %4923 = fadd fast float %4920, %4589
  %4924 = fsub fast float %4826, %4586
  %4925 = fmul fast float %4924, %4914
  %4926 = fadd fast float %4925, %4586
  %4927 = fmul fast float %4914, %4573
  %4928 = fsub fast float %4573, %4927
  %4929 = fmul fast float %4914, %4572
  %4930 = fsub fast float %4572, %4929
  %4931 = bitcast float %4641 to i32
  %4932 = lshr i32 %4931, 16
  %4933 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4932)  ; LegacyF16ToF32(value)
  %4934 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %438, i32 undef)  ; BufferLoad(srv,index,wot)
  %4935 = extractvalue %dx.types.ResRet.i32 %4934, 0
  %4936 = and i32 %4935, 1
  %4937 = icmp eq i32 %4936, 0
  br i1 %4937, label %4938, label %4963

; <label>:4938                                    ; preds = %4902
  %4939 = fadd fast float %4826, 0xBFB99999A0000000
  %4940 = call float @dx.op.unary.f32(i32 7, float %4939)  ; Saturate(value)
  %4941 = fmul fast float %4940, 0x3FF1C71C80000000
  %4942 = fsub fast float 1.000000e+00, %4941
  %4943 = call float @dx.op.unary.f32(i32 7, float %4942)  ; Saturate(value)
  %4944 = fmul fast float %4943, %4853
  %4945 = fmul fast float %4943, %4854
  %4946 = fmul fast float %4943, %4855
  %4947 = call float @dx.op.unary.f32(i32 7, float %4944)  ; Saturate(value)
  %4948 = call float @dx.op.unary.f32(i32 7, float %4945)  ; Saturate(value)
  %4949 = call float @dx.op.unary.f32(i32 7, float %4946)  ; Saturate(value)
  %4950 = call float @dx.op.binary.f32(i32 35, float %4948, float %4949)  ; FMax(a,b)
  %4951 = call float @dx.op.binary.f32(i32 35, float %4947, float %4950)  ; FMax(a,b)
  %4952 = fcmp fast ogt float %4951, 0.000000e+00
  %4953 = bitcast float %4951 to i32
  %4954 = sub nsw i32 2129859010, %4953
  %4955 = bitcast i32 %4954 to float
  %4956 = select i1 %4952, float %4955, float 0.000000e+00
  %4957 = fmul fast float %4947, %4933
  %4958 = fmul fast float %4948, %4933
  %4959 = fmul fast float %4949, %4933
  %4960 = fmul fast float %4957, %4956
  %4961 = fmul fast float %4958, %4956
  %4962 = fmul fast float %4959, %4956
  br label %4963

; <label>:4963                                    ; preds = %4938, %4902
  %4964 = phi float [ %4933, %4902 ], [ %4960, %4938 ]
  %4965 = phi float [ %4933, %4902 ], [ %4961, %4938 ]
  %4966 = phi float [ %4933, %4902 ], [ %4962, %4938 ]
  %4967 = fsub fast float %4964, %4574
  %4968 = fsub fast float %4965, %4575
  %4969 = fsub fast float %4966, %4576
  %4970 = fmul fast float %4967, %4914
  %4971 = fmul fast float %4968, %4914
  %4972 = fmul fast float %4969, %4914
  %4973 = fadd fast float %4970, %4574
  %4974 = fadd fast float %4971, %4575
  %4975 = fadd fast float %4972, %4576
  %4976 = fadd fast float %4799, %4585
  %4977 = call float @dx.op.unary.f32(i32 7, float %4976)  ; Saturate(value)
  %4978 = fsub fast float %4846, %4584
  %4979 = fmul fast float %4978, %4895
  %4980 = fadd fast float %4979, %4584
  %4981 = fsub fast float %4832, %4583
  %4982 = fmul fast float %4981, %4895
  %4983 = fadd fast float %4982, %4583
  br i1 %4897, label %4992, label %4984

; <label>:4984                                    ; preds = %4963
  %4985 = and i32 %4647, 32768
  %4986 = icmp eq i32 %4985, 0
  br i1 %4986, label %5002, label %4987

; <label>:4987                                    ; preds = %4984
  %4988 = fmul fast float %4895, 1.270000e+02
  %4989 = fadd fast float %4988, %4569
  %4990 = fadd fast float %4988, %4570
  %4991 = fadd fast float %4988, %4571
  br label %5002

; <label>:4992                                    ; preds = %4963
  %4993 = fsub fast float 1.270000e+02, %4569
  %4994 = fsub fast float 1.270000e+02, %4570
  %4995 = fsub fast float 1.270000e+02, %4571
  %4996 = fmul fast float %4895, %4993
  %4997 = fmul fast float %4895, %4994
  %4998 = fmul fast float %4895, %4995
  %4999 = fadd fast float %4996, %4569
  %5000 = fadd fast float %4997, %4570
  %5001 = fadd fast float %4998, %4571
  br label %5002

; <label>:5002                                    ; preds = %4992, %4987, %4984
  %5003 = phi float [ %4989, %4987 ], [ %4569, %4984 ], [ %4999, %4992 ]
  %5004 = phi float [ %4990, %4987 ], [ %4570, %4984 ], [ %5000, %4992 ]
  %5005 = phi float [ %4991, %4987 ], [ %4571, %4984 ], [ %5001, %4992 ]
  %5006 = call float @dx.op.dot3.f32(i32 55, float %4853, float %4854, float %4855, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5007 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %5008 = extractvalue %dx.types.CBufRet.f32 %5007, 0
  %5009 = extractvalue %dx.types.CBufRet.f32 %5007, 1
  %5010 = fmul fast float %5009, %5006
  %5011 = fadd fast float %5010, %5008
  %5012 = call float @dx.op.unary.f32(i32 7, float %5011)  ; Saturate(value)
  %5013 = bitcast float %4635 to i32
  %5014 = and i32 %5013, 65535
  %5015 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5014)  ; LegacyF16ToF32(value)
  %5016 = lshr i32 %5013, 16
  %5017 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5016)  ; LegacyF16ToF32(value)
  %5018 = fcmp fast oge float %5015, 0.000000e+00
  %5019 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5020 = extractvalue %dx.types.CBufRet.f32 %5019, 0
  %5021 = select i1 %5018, float %5015, float %5020
  %5022 = fadd fast float %5021, %5017
  %5023 = fsub fast float %5012, %4568
  %5024 = fmul fast float %5023, %4799
  %5025 = fadd fast float %5024, %4568
  %5026 = fmul fast float %5022, %4799
  %5027 = call float @dx.op.binary.f32(i32 35, float %4567, float %5026)  ; FMax(a,b)
  %5028 = and i32 %4647, 16
  %5029 = icmp eq i32 %5028, 0
  br i1 %5029, label %5051, label %5030

; <label>:5030                                    ; preds = %5002
  %5031 = add i32 %4638, 0
  %5032 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5031, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5033 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5032, %dx.types.Handle %4812, float %4740, float %4743, float undef, float undef, i32 0, i32 0, i32 undef, float %4745, float %4747, float undef, float %4749, float %4751, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5034 = extractvalue %dx.types.ResRet.f32 %5033, 0
  %5035 = extractvalue %dx.types.ResRet.f32 %5033, 1
  %5036 = extractvalue %dx.types.ResRet.f32 %5033, 2
  %5037 = and i32 %4931, 65535
  %5038 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5037)  ; LegacyF16ToF32(value)
  %5039 = fmul fast float %5034, %4632
  %5040 = fmul fast float %5035, %4633
  %5041 = fmul fast float %5036, %4634
  %5042 = and i32 %4647, 16384
  %5043 = icmp ne i32 %5042, 0
  %5044 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5045 = extractvalue %dx.types.CBufRet.f32 %5044, 0
  %5046 = select i1 %5043, float %5045, float 1.000000e+00
  %5047 = fmul fast float %5046, %5038
  %5048 = fmul fast float %5039, %5047
  %5049 = fmul fast float %5040, %5047
  %5050 = fmul fast float %5041, %5047
  br label %5051

; <label>:5051                                    ; preds = %5030, %5002
  %5052 = phi float [ %5048, %5030 ], [ 0.000000e+00, %5002 ]
  %5053 = phi float [ %5049, %5030 ], [ 0.000000e+00, %5002 ]
  %5054 = phi float [ %5050, %5030 ], [ 0.000000e+00, %5002 ]
  %5055 = fsub fast float %5052, %4577
  %5056 = fsub fast float %5053, %4578
  %5057 = fsub fast float %5054, %4579
  %5058 = fmul fast float %5055, %4799
  %5059 = fmul fast float %5056, %4799
  %5060 = fmul fast float %5057, %4799
  %5061 = fadd fast float %5058, %4577
  %5062 = fadd fast float %5059, %4578
  %5063 = fadd fast float %5060, %4579
  br label %4696

; <label>:5064                                    ; preds = %4696
  br label %5065

; <label>:5065                                    ; preds = %5064, %4510
  %5066 = phi float [ 0.000000e+00, %4510 ], [ %4697, %5064 ]
  %5067 = phi float [ %4479, %4510 ], [ %4698, %5064 ]
  %5068 = phi float [ %4460, %4510 ], [ %4699, %5064 ]
  %5069 = phi float [ %4450, %4510 ], [ %4700, %5064 ]
  %5070 = phi float [ %4451, %4510 ], [ %4701, %5064 ]
  %5071 = phi float [ %4452, %4510 ], [ %4702, %5064 ]
  %5072 = phi float [ 0.000000e+00, %4510 ], [ %4703, %5064 ]
  %5073 = phi float [ 0.000000e+00, %4510 ], [ %4704, %5064 ]
  %5074 = phi float [ %4447, %4510 ], [ %4705, %5064 ]
  %5075 = phi float [ %4448, %4510 ], [ %4706, %5064 ]
  %5076 = phi float [ %4449, %4510 ], [ %4707, %5064 ]
  %5077 = phi float [ %4453, %4510 ], [ %4708, %5064 ]
  %5078 = phi float [ %4454, %4510 ], [ %4709, %5064 ]
  %5079 = phi float [ %4455, %4510 ], [ %4710, %5064 ]
  %5080 = phi float [ %4505, %4510 ], [ %4711, %5064 ]
  %5081 = phi float [ %4506, %4510 ], [ %4712, %5064 ]
  %5082 = phi float [ %4507, %4510 ], [ %4713, %5064 ]
  %5083 = phi float [ %4458, %4510 ], [ %4714, %5064 ]
  %5084 = phi float [ %4457, %4510 ], [ %4715, %5064 ]
  %5085 = phi float [ 0.000000e+00, %4510 ], [ %4716, %5064 ]
  %5086 = phi float [ %4456, %4510 ], [ %4717, %5064 ]
  %5087 = phi float [ %4444, %4510 ], [ %4718, %5064 ]
  %5088 = phi float [ %4445, %4510 ], [ %4719, %5064 ]
  %5089 = phi float [ %4446, %4510 ], [ %4720, %5064 ]
  %5090 = call float @dx.op.dot3.f32(i32 55, float %5080, float %5081, float %5082, float %5080, float %5081, float %5082)  ; Dot3(ax,ay,az,bx,by,bz)
  %5091 = call float @dx.op.unary.f32(i32 25, float %5090)  ; Rsqrt(value)
  %5092 = fmul fast float %5091, %5080
  %5093 = fmul fast float %5091, %5081
  %5094 = fmul fast float %5091, %5082
  %5095 = fadd fast float %5085, %1285
  %5096 = call float @dx.op.unary.f32(i32 7, float %5095)  ; Saturate(value)
  %5097 = call float @dx.op.dot3.f32(i32 55, float %5092, float %5093, float %5094, float %5092, float %5093, float %5094)  ; Dot3(ax,ay,az,bx,by,bz)
  %5098 = call float @dx.op.unary.f32(i32 25, float %5097)  ; Rsqrt(value)
  %5099 = fmul fast float %5098, %5092
  %5100 = fmul fast float %5098, %5093
  %5101 = fmul fast float %5098, %5094
  br label %5102

; <label>:5102                                    ; preds = %5065, %4441
  %5103 = phi float [ %5074, %5065 ], [ %4447, %4441 ]
  %5104 = phi float [ %5075, %5065 ], [ %4448, %4441 ]
  %5105 = phi float [ %5076, %5065 ], [ %4449, %4441 ]
  %5106 = phi float [ %5077, %5065 ], [ %4453, %4441 ]
  %5107 = phi float [ %5078, %5065 ], [ %4454, %4441 ]
  %5108 = phi float [ %5079, %5065 ], [ %4455, %4441 ]
  %5109 = phi float [ %5069, %5065 ], [ %4450, %4441 ]
  %5110 = phi float [ %5070, %5065 ], [ %4451, %4441 ]
  %5111 = phi float [ %5071, %5065 ], [ %4452, %4441 ]
  %5112 = phi float [ %5099, %5065 ], [ %4505, %4441 ]
  %5113 = phi float [ %5100, %5065 ], [ %4506, %4441 ]
  %5114 = phi float [ %5101, %5065 ], [ %4507, %4441 ]
  %5115 = phi float [ %5087, %5065 ], [ %4444, %4441 ]
  %5116 = phi float [ %5088, %5065 ], [ %4445, %4441 ]
  %5117 = phi float [ %5089, %5065 ], [ %4446, %4441 ]
  %5118 = phi float [ %5086, %5065 ], [ %4456, %4441 ]
  %5119 = phi float [ %5096, %5065 ], [ %1285, %4441 ]
  %5120 = phi float [ %5084, %5065 ], [ %4457, %4441 ]
  %5121 = phi float [ %5083, %5065 ], [ %4458, %4441 ]
  %5122 = phi float [ %5073, %5065 ], [ 0.000000e+00, %4441 ]
  %5123 = phi float [ %5072, %5065 ], [ 0.000000e+00, %4441 ]
  %5124 = phi float [ %5066, %5065 ], [ 0.000000e+00, %4441 ]
  %5125 = phi float [ %5067, %5065 ], [ %4479, %4441 ]
  %5126 = phi float [ %5068, %5065 ], [ %4460, %4441 ]
  %5127 = add i32 %60, 392
  %5128 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %5127, i32 undef)  ; BufferLoad(srv,index,wot)
  %5129 = extractvalue %dx.types.ResRet.i32 %5128, 0
  %5130 = extractvalue %dx.types.ResRet.i32 %5128, 1
  %5131 = extractvalue %dx.types.ResRet.i32 %5128, 2
  %5132 = extractvalue %dx.types.ResRet.i32 %5128, 3
  %5133 = bitcast i32 %5129 to float
  %5134 = bitcast i32 %5130 to float
  %5135 = bitcast i32 %5131 to float
  %5136 = bitcast i32 %5132 to float
  %5137 = fsub fast float %5115, %5133
  %5138 = fsub fast float %5116, %5134
  %5139 = fsub fast float %5117, %5135
  %5140 = fmul fast float %5137, %198
  %5141 = fmul fast float %5138, %198
  %5142 = fmul fast float %5139, %198
  %5143 = fadd fast float %5140, %5133
  %5144 = fadd fast float %5141, %5134
  %5145 = fadd fast float %5142, %5135
  %5146 = fsub fast float %5119, %5136
  %5147 = fmul fast float %5146, %198
  %5148 = fadd fast float %5147, %5136
  %5149 = fadd fast float %5118, 0xBFB99999A0000000
  %5150 = call float @dx.op.unary.f32(i32 7, float %5149)  ; Saturate(value)
  %5151 = fmul fast float %5150, 0x3FF1C71C80000000
  %5152 = call float @dx.op.binary.f32(i32 36, float %5118, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5153 = fsub fast float 1.000000e+00, %5151
  %5154 = call float @dx.op.unary.f32(i32 7, float %5153)  ; Saturate(value)
  %5155 = fmul fast float %5143, %5154
  %5156 = fmul fast float %5144, %5154
  %5157 = fmul fast float %5145, %5154
  %5158 = call float @dx.op.unary.f32(i32 7, float %5155)  ; Saturate(value)
  %5159 = call float @dx.op.unary.f32(i32 7, float %5156)  ; Saturate(value)
  %5160 = call float @dx.op.unary.f32(i32 7, float %5157)  ; Saturate(value)
  %5161 = fmul fast float %5143, %5151
  %5162 = fmul fast float %5144, %5151
  %5163 = fmul fast float %5145, %5151
  %5164 = fadd fast float %5161, %5152
  %5165 = fadd fast float %5162, %5152
  %5166 = fadd fast float %5163, %5152
  %5167 = call float @dx.op.unary.f32(i32 7, float %5164)  ; Saturate(value)
  %5168 = call float @dx.op.unary.f32(i32 7, float %5165)  ; Saturate(value)
  %5169 = call float @dx.op.unary.f32(i32 7, float %5166)  ; Saturate(value)
  %5170 = call float @dx.op.unary.f32(i32 7, float %5120)  ; Saturate(value)
  %5171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %438, i32 undef)  ; BufferLoad(srv,index,wot)
  %5172 = extractvalue %dx.types.ResRet.i32 %5171, 0
  %5173 = and i32 %5172, 1
  %5174 = icmp eq i32 %5173, 0
  br i1 %5174, label %5189, label %5175

; <label>:5175                                    ; preds = %5102
  %5176 = call float @dx.op.binary.f32(i32 35, float %5159, float %5160)  ; FMax(a,b)
  %5177 = call float @dx.op.binary.f32(i32 35, float %5158, float %5176)  ; FMax(a,b)
  %5178 = fcmp fast ogt float %5177, 0.000000e+00
  %5179 = bitcast float %5177 to i32
  %5180 = sub nsw i32 2129859010, %5179
  %5181 = bitcast i32 %5180 to float
  %5182 = select i1 %5178, float %5181, float 0.000000e+00
  %5183 = fmul fast float %5158, %5103
  %5184 = fmul fast float %5159, %5104
  %5185 = fmul fast float %5160, %5105
  %5186 = fmul fast float %5183, %5182
  %5187 = fmul fast float %5184, %5182
  %5188 = fmul fast float %5185, %5182
  br label %5189

; <label>:5189                                    ; preds = %5175, %5102
  %5190 = phi float [ %5186, %5175 ], [ %5103, %5102 ]
  %5191 = phi float [ %5187, %5175 ], [ %5104, %5102 ]
  %5192 = phi float [ %5188, %5175 ], [ %5105, %5102 ]
  %5193 = call float @dx.op.binary.f32(i32 36, float %5109, float 1.270000e+02)  ; FMin(a,b)
  %5194 = call float @dx.op.binary.f32(i32 36, float %5110, float 1.270000e+02)  ; FMin(a,b)
  %5195 = call float @dx.op.binary.f32(i32 36, float %5111, float 1.270000e+02)  ; FMin(a,b)
  %5196 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5197 = extractvalue %dx.types.CBufRet.i32 %5196, 3
  %5198 = and i32 %5197, 8
  %5199 = icmp ne i32 %5198, 0
  %5200 = call float @dx.op.binary.f32(i32 35, float %5158, float %5143)  ; FMax(a,b)
  %5201 = call float @dx.op.binary.f32(i32 35, float %5159, float %5143)  ; FMax(a,b)
  %5202 = call float @dx.op.binary.f32(i32 35, float %5160, float %5143)  ; FMax(a,b)
  %5203 = call float @dx.op.dot3.f32(i32 55, float %5158, float %5159, float %5160, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5204 = select i1 %258, float %5143, float %5158
  %5205 = select i1 %258, float %5203, float %5159
  %5206 = select i1 %258, float 1.000000e+00, float %5160
  %5207 = select i1 %5199, float %5200, float %5204
  %5208 = select i1 %5199, float %5201, float %5205
  %5209 = select i1 %5199, float %5202, float %5206
  %5210 = call float @dx.op.dot3.f32(i32 55, float %5190, float %5191, float %5192, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5211 = select i1 %258, float %5210, float %5190
  %5212 = select i1 %258, float %5210, float %5191
  %5213 = select i1 %258, float %5210, float %5192
  %5214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5215 = extractvalue %dx.types.CBufRet.f32 %5214, 0
  %5216 = extractvalue %dx.types.CBufRet.f32 %5214, 1
  %5217 = extractvalue %dx.types.CBufRet.f32 %5214, 2
  %5218 = fadd fast float %5215, %164
  %5219 = fadd fast float %5216, %165
  %5220 = fadd fast float %5217, %166
  %5221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %5222 = extractvalue %dx.types.CBufRet.f32 %5221, 0
  %5223 = extractvalue %dx.types.CBufRet.f32 %5221, 1
  %5224 = fsub fast float %5218, %5222
  %5225 = fsub fast float %5219, %5223
  %5226 = fmul fast float %5224, %5224
  %5227 = fmul fast float %5225, %5225
  %5228 = fadd fast float %5226, %5227
  %5229 = call float @dx.op.unary.f32(i32 24, float %5228)  ; Sqrt(value)
  %5230 = extractvalue %dx.types.CBufRet.f32 %5221, 2
  %5231 = fcmp fast olt float %5229, %5230
  br i1 %5231, label %5232, label %5299

; <label>:5232                                    ; preds = %5189
  %5233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5234 = extractvalue %dx.types.CBufRet.f32 %5233, 0
  %5235 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5236 = extractvalue %dx.types.CBufRet.f32 %5235, 0
  %5237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5238 = extractvalue %dx.types.CBufRet.f32 %5237, 0
  %5239 = extractvalue %dx.types.CBufRet.f32 %5233, 1
  %5240 = extractvalue %dx.types.CBufRet.f32 %5235, 1
  %5241 = extractvalue %dx.types.CBufRet.f32 %5237, 1
  %5242 = extractvalue %dx.types.CBufRet.f32 %5233, 3
  %5243 = extractvalue %dx.types.CBufRet.f32 %5235, 3
  %5244 = extractvalue %dx.types.CBufRet.f32 %5237, 3
  %5245 = fadd fast float %5242, %5218
  %5246 = fadd fast float %5243, %5219
  %5247 = fadd fast float %5244, %5220
  %5248 = fmul fast float %5245, %5234
  %5249 = call float @dx.op.tertiary.f32(i32 46, float %5246, float %5236, float %5248)  ; FMad(a,b,c)
  %5250 = call float @dx.op.tertiary.f32(i32 46, float %5247, float %5238, float %5249)  ; FMad(a,b,c)
  %5251 = fmul fast float %5245, %5239
  %5252 = call float @dx.op.tertiary.f32(i32 46, float %5246, float %5240, float %5251)  ; FMad(a,b,c)
  %5253 = call float @dx.op.tertiary.f32(i32 46, float %5247, float %5241, float %5252)  ; FMad(a,b,c)
  %5254 = fsub fast float %5250, %5242
  %5255 = fsub fast float %5253, %5243
  %5256 = fsub fast float %5254, %5222
  %5257 = fadd fast float %5256, %5230
  %5258 = fsub fast float %5255, %5223
  %5259 = fadd fast float %5258, %5230
  %5260 = extractvalue %dx.types.CBufRet.f32 %5221, 3
  %5261 = fmul fast float %5257, %5260
  %5262 = fmul fast float %5259, %5260
  %5263 = call float @dx.op.unary.f32(i32 7, float %5261)  ; Saturate(value)
  %5264 = call float @dx.op.unary.f32(i32 7, float %5262)  ; Saturate(value)
  %5265 = fsub fast float 1.000000e+00, %5263
  %5266 = fsub fast float 1.000000e+00, %5264
  %5267 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %54, float %5265, float %5266, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5268 = extractvalue %dx.types.ResRet.f32 %5267, 0
  %5269 = fcmp fast ugt float %5268, 0.000000e+00
  br i1 %5269, label %5270, label %5573

; <label>:5270                                    ; preds = %5232
  %5271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5272 = extractvalue %dx.types.CBufRet.f32 %5271, 2
  %5273 = fmul fast float %5272, %5268
  %5274 = extractvalue %dx.types.CBufRet.f32 %5271, 3
  %5275 = fadd fast float %5274, %5273
  %5276 = extractvalue %dx.types.CBufRet.f32 %5237, 2
  %5277 = fadd fast float %5275, %5244
  %5278 = fmul fast float %5250, %5238
  %5279 = call float @dx.op.tertiary.f32(i32 46, float %5253, float %5241, float %5278)  ; FMad(a,b,c)
  %5280 = call float @dx.op.tertiary.f32(i32 46, float %5277, float %5276, float %5279)  ; FMad(a,b,c)
  %5281 = fsub fast float %5280, %5244
  %5282 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5283 = extractvalue %dx.types.CBufRet.f32 %5282, 2
  %5284 = fsub fast float %5281, %5283
  %5285 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %54, float %5265, float %5266, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5286 = extractvalue %dx.types.ResRet.f32 %5285, 0
  %5287 = extractvalue %dx.types.ResRet.f32 %5285, 1
  %5288 = extractvalue %dx.types.ResRet.f32 %5285, 2
  %5289 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %54, float %5265, float %5266, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5290 = extractvalue %dx.types.ResRet.f32 %5289, 0
  %5291 = extractvalue %dx.types.ResRet.f32 %5289, 1
  %5292 = extractvalue %dx.types.ResRet.f32 %5289, 2
  %5293 = fadd fast float %5290, %5286
  %5294 = fmul fast float %5293, 0x3F847AE140000000
  %5295 = fadd fast float %5291, %5287
  %5296 = fmul fast float %5295, 0x3F847AE140000000
  %5297 = fadd fast float %5292, %5288
  %5298 = fmul fast float %5297, 0x3F847AE140000000
  br label %5573

; <label>:5299                                    ; preds = %5189
  %5300 = and i32 %234, 1
  %5301 = icmp eq i32 %5300, 0
  br i1 %5301, label %5573, label %5302

; <label>:5302                                    ; preds = %5299
  %5303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5304 = extractvalue %dx.types.CBufRet.f32 %5303, 0
  %5305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5306 = extractvalue %dx.types.CBufRet.f32 %5305, 0
  %5307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5308 = extractvalue %dx.types.CBufRet.f32 %5307, 0
  %5309 = extractvalue %dx.types.CBufRet.f32 %5303, 1
  %5310 = extractvalue %dx.types.CBufRet.f32 %5305, 1
  %5311 = extractvalue %dx.types.CBufRet.f32 %5307, 1
  %5312 = extractvalue %dx.types.CBufRet.f32 %5303, 3
  %5313 = extractvalue %dx.types.CBufRet.f32 %5305, 3
  %5314 = extractvalue %dx.types.CBufRet.f32 %5307, 3
  %5315 = fadd fast float %5312, %5218
  %5316 = fadd fast float %5313, %5219
  %5317 = fadd fast float %5314, %5220
  %5318 = fmul fast float %5315, %5304
  %5319 = call float @dx.op.tertiary.f32(i32 46, float %5316, float %5306, float %5318)  ; FMad(a,b,c)
  %5320 = call float @dx.op.tertiary.f32(i32 46, float %5317, float %5308, float %5319)  ; FMad(a,b,c)
  %5321 = fmul fast float %5315, %5309
  %5322 = call float @dx.op.tertiary.f32(i32 46, float %5316, float %5310, float %5321)  ; FMad(a,b,c)
  %5323 = call float @dx.op.tertiary.f32(i32 46, float %5317, float %5311, float %5322)  ; FMad(a,b,c)
  %5324 = fsub fast float %5320, %5312
  %5325 = fsub fast float %5323, %5313
  %5326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %5327 = extractvalue %dx.types.CBufRet.f32 %5326, 0
  %5328 = extractvalue %dx.types.CBufRet.f32 %5326, 1
  %5329 = extractvalue %dx.types.CBufRet.f32 %5326, 2
  %5330 = extractvalue %dx.types.CBufRet.f32 %5326, 3
  %5331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %5332 = extractvalue %dx.types.CBufRet.f32 %5331, 3
  %5333 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %5334 = extractvalue %dx.types.CBufRet.i32 %5333, 0
  %5335 = extractvalue %dx.types.CBufRet.i32 %5333, 1
  %5336 = udiv i32 %5335, %5334
  %5337 = fsub fast float %5324, %5327
  %5338 = fsub fast float %5325, %5328
  %5339 = call float @dx.op.binary.f32(i32 35, float %5337, float 0.000000e+00)  ; FMax(a,b)
  %5340 = call float @dx.op.binary.f32(i32 35, float %5338, float 0.000000e+00)  ; FMax(a,b)
  %5341 = call float @dx.op.binary.f32(i32 36, float %5339, float %5329)  ; FMin(a,b)
  %5342 = call float @dx.op.binary.f32(i32 36, float %5340, float %5330)  ; FMin(a,b)
  %5343 = add i32 %5334, -1
  %5344 = add i32 %5336, -1
  %5345 = fmul fast float %5341, %5332
  %5346 = fmul fast float %5342, %5332
  %5347 = fptoui float %5345 to i32
  %5348 = fptoui float %5346 to i32
  %5349 = call i32 @dx.op.binary.i32(i32 40, i32 %5347, i32 %5343)  ; UMin(a,b)
  %5350 = call i32 @dx.op.binary.i32(i32 40, i32 %5348, i32 %5344)  ; UMin(a,b)
  %5351 = mul i32 %5350, %5334
  %5352 = add i32 %5351, %5349
  %5353 = shl i32 %5352, 2
  %5354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %5353, i32 undef)  ; BufferLoad(srv,index,wot)
  %5355 = extractvalue %dx.types.ResRet.i32 %5354, 0
  %5356 = icmp eq i32 %5355, -1
  br i1 %5356, label %5573, label %5357

; <label>:5357                                    ; preds = %5302
  %5358 = mul i32 %5355, 148
  %5359 = add i32 %5358, 4
  %5360 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5359, i32 undef)  ; BufferLoad(srv,index,wot)
  %5361 = extractvalue %dx.types.ResRet.f32 %5360, 0
  %5362 = add i32 %5358, 8
  %5363 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5362, i32 undef)  ; BufferLoad(srv,index,wot)
  %5364 = extractvalue %dx.types.ResRet.f32 %5363, 0
  %5365 = add i32 %5358, 36
  %5366 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5365, i32 undef)  ; BufferLoad(srv,index,wot)
  %5367 = extractvalue %dx.types.ResRet.f32 %5366, 0
  %5368 = add i32 %5358, 60
  %5369 = add i32 %5358, 92
  %5370 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5369, i32 undef)  ; BufferLoad(srv,index,wot)
  %5371 = extractvalue %dx.types.ResRet.i32 %5370, 0
  %5372 = add i32 %5358, 116
  %5373 = fsub fast float %5324, %5361
  %5374 = fsub fast float %5325, %5364
  %5375 = fmul fast float %5332, %5373
  %5376 = fmul fast float %5332, %5374
  %5377 = call float @dx.op.unary.f32(i32 7, float %5375)  ; Saturate(value)
  %5378 = call float @dx.op.unary.f32(i32 7, float %5376)  ; Saturate(value)
  %5379 = fsub fast float 1.000000e+00, %5378
  %5380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5381 = extractvalue %dx.types.CBufRet.f32 %5380, 2
  %5382 = call float @dx.op.unary.f32(i32 83, float %5377)  ; DerivCoarseX(value)
  %5383 = call float @dx.op.unary.f32(i32 83, float %5379)  ; DerivCoarseX(value)
  %5384 = call float @dx.op.unary.f32(i32 84, float %5377)  ; DerivCoarseY(value)
  %5385 = call float @dx.op.unary.f32(i32 84, float %5379)  ; DerivCoarseY(value)
  %5386 = fmul fast float %5382, %5381
  %5387 = fmul fast float %5383, %5381
  %5388 = fmul fast float %5384, %5381
  %5389 = fmul fast float %5385, %5381
  %5390 = call float @dx.op.dot2.f32(i32 54, float %5388, float %5389, float %5388, float %5389)  ; Dot2(ax,ay,bx,by)
  %5391 = call float @dx.op.dot2.f32(i32 54, float %5386, float %5387, float %5386, float %5387)  ; Dot2(ax,ay,bx,by)
  %5392 = call float @dx.op.binary.f32(i32 35, float %5391, float %5390)  ; FMax(a,b)
  %5393 = call float @dx.op.unary.f32(i32 23, float %5392)  ; Log(value)
  %5394 = fmul fast float %5393, 5.000000e-01
  %5395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5396 = extractvalue %dx.types.CBufRet.f32 %5395, 1
  %5397 = fadd fast float %5396, %5394
  %5398 = call float @dx.op.binary.f32(i32 35, float %5397, float 0.000000e+00)  ; FMax(a,b)
  %5399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %5400 = extractvalue %dx.types.CBufRet.f32 %5399, 3
  %5401 = fadd fast float %5400, %5398
  %5402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %5403 = extractvalue %dx.types.CBufRet.f32 %5402, 3
  %5404 = fadd fast float %5401, %5403
  %5405 = add i32 %5371, 0
  %5406 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5405, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5407 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5406, i32 0)  ; GetDimensions(handle,mipLevel)
  %5408 = extractvalue %dx.types.Dimensions %5407, 0
  %5409 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5408)  ; FirstbitLo(value)
  %5410 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5411 = extractvalue %dx.types.CBufRet.i32 %5410, 1
  %5412 = sub nsw i32 %5411, %5409
  %5413 = sitofp i32 %5412 to float
  %5414 = fsub fast float %5404, %5413
  %5415 = call float @dx.op.binary.f32(i32 35, float %5414, float 0.000000e+00)  ; FMax(a,b)
  %5416 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5406, %dx.types.Handle %52, float %5377, float %5379, float %5367, float undef, i32 0, i32 0, i32 undef, float %5415)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5417 = extractvalue %dx.types.ResRet.f32 %5416, 0
  %5418 = fcmp ule float %5417, 0x3FE0101020000000
  %5419 = extractvalue %dx.types.CBufRet.i32 %5410, 0
  %5420 = and i32 %5419, 128
  %5421 = icmp ne i32 %5420, 0
  %5422 = and i1 %5418, %5421
  br i1 %5422, label %5573, label %5423

; <label>:5423                                    ; preds = %5357
  %5424 = add i32 %5358, 20
  %5425 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5424, i32 undef)  ; BufferLoad(srv,index,wot)
  %5426 = extractvalue %dx.types.ResRet.f32 %5425, 0
  %5427 = add i32 %5358, 24
  %5428 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5427, i32 undef)  ; BufferLoad(srv,index,wot)
  %5429 = extractvalue %dx.types.ResRet.f32 %5428, 0
  %5430 = add i32 %5358, 40
  %5431 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5430, i32 undef)  ; BufferLoad(srv,index,wot)
  %5432 = extractvalue %dx.types.ResRet.f32 %5431, 0
  %5433 = add i32 %5358, 96
  %5434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5433, i32 undef)  ; BufferLoad(srv,index,wot)
  %5435 = extractvalue %dx.types.ResRet.i32 %5434, 0
  %5436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5437 = extractvalue %dx.types.CBufRet.f32 %5436, 2
  %5438 = fmul fast float %5437, %5377
  %5439 = fmul fast float %5437, %5379
  %5440 = extractvalue %dx.types.CBufRet.f32 %5436, 3
  %5441 = fadd fast float %5438, %5440
  %5442 = fadd fast float %5439, %5440
  %5443 = add i32 %5435, 0
  %5444 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5443, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5445 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5444, i32 0)  ; GetDimensions(handle,mipLevel)
  %5446 = extractvalue %dx.types.Dimensions %5445, 0
  %5447 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5446)  ; FirstbitLo(value)
  %5448 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5449 = extractvalue %dx.types.CBufRet.i32 %5448, 1
  %5450 = sub nsw i32 %5449, %5447
  %5451 = sitofp i32 %5450 to float
  %5452 = fsub fast float %5401, %5451
  %5453 = call float @dx.op.binary.f32(i32 35, float %5452, float 0.000000e+00)  ; FMax(a,b)
  %5454 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5444, %dx.types.Handle %52, float %5441, float %5442, float %5432, float undef, i32 0, i32 0, i32 undef, float %5453)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5455 = extractvalue %dx.types.ResRet.f32 %5454, 0
  %5456 = fmul fast float %5455, %5426
  %5457 = fadd fast float %5456, %5429
  %5458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5459 = extractvalue %dx.types.CBufRet.f32 %5458, 0
  %5460 = extractvalue %dx.types.CBufRet.f32 %5458, 1
  %5461 = extractvalue %dx.types.CBufRet.f32 %5458, 2
  %5462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5463 = extractvalue %dx.types.CBufRet.f32 %5462, 3
  %5464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5465 = extractvalue %dx.types.CBufRet.f32 %5464, 3
  %5466 = extractvalue %dx.types.CBufRet.f32 %5458, 3
  %5467 = fadd fast float %5463, %5324
  %5468 = fadd fast float %5465, %5325
  %5469 = fadd fast float %5457, %5466
  %5470 = fmul fast float %5467, %5459
  %5471 = call float @dx.op.tertiary.f32(i32 46, float %5468, float %5460, float %5470)  ; FMad(a,b,c)
  %5472 = call float @dx.op.tertiary.f32(i32 46, float %5469, float %5461, float %5471)  ; FMad(a,b,c)
  %5473 = fsub fast float %5472, %5466
  %5474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5475 = extractvalue %dx.types.CBufRet.f32 %5474, 2
  %5476 = fsub fast float %5473, %5475
  %5477 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5478 = extractvalue %dx.types.CBufRet.i32 %5477, 0
  %5479 = call i32 @dx.op.binary.i32(i32 40, i32 %5355, i32 %5478)  ; UMin(a,b)
  %5480 = mul i32 %5479, 36
  %5481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %5480, i32 undef)  ; BufferLoad(srv,index,wot)
  %5482 = extractvalue %dx.types.ResRet.i32 %5481, 0
  %5483 = add i32 %5480, 4
  %5484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5485 = extractvalue %dx.types.CBufRet.f32 %5484, 0
  %5486 = fmul fast float %5485, %5377
  %5487 = fmul fast float %5485, %5379
  %5488 = extractvalue %dx.types.CBufRet.f32 %5484, 1
  %5489 = fadd fast float %5486, %5488
  %5490 = fadd fast float %5487, %5488
  %5491 = icmp eq i32 %5482, 0
  br i1 %5491, label %5560, label %5492

; <label>:5492                                    ; preds = %5423
  br label %5493

; <label>:5493                                    ; preds = %5550, %5492
  %5494 = phi float [ %5551, %5550 ], [ 0.000000e+00, %5492 ]
  %5495 = phi float [ %5552, %5550 ], [ 0.000000e+00, %5492 ]
  %5496 = phi float [ %5553, %5550 ], [ 0.000000e+00, %5492 ]
  %5497 = phi float [ %5554, %5550 ], [ 0.000000e+00, %5492 ]
  %5498 = phi float [ %5555, %5550 ], [ 0.000000e+00, %5492 ]
  %5499 = phi float [ %5556, %5550 ], [ 0.000000e+00, %5492 ]
  %5500 = phi i32 [ %5557, %5550 ], [ 0, %5492 ]
  %5501 = shl i32 %5500, 2
  %5502 = add i32 %5368, %5501
  %5503 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5502, i32 undef)  ; BufferLoad(srv,index,wot)
  %5504 = extractvalue %dx.types.ResRet.f32 %5503, 0
  %5505 = add i32 %5372, %5501
  %5506 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5505, i32 undef)  ; BufferLoad(srv,index,wot)
  %5507 = extractvalue %dx.types.ResRet.i32 %5506, 0
  %5508 = add i32 %5507, 0
  %5509 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5508, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5510 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5509, i32 0)  ; GetDimensions(handle,mipLevel)
  %5511 = extractvalue %dx.types.Dimensions %5510, 0
  %5512 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5511)  ; FirstbitLo(value)
  %5513 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5514 = extractvalue %dx.types.CBufRet.i32 %5513, 1
  %5515 = sub nsw i32 %5514, %5512
  %5516 = sitofp i32 %5515 to float
  %5517 = fsub fast float %5401, %5516
  %5518 = call float @dx.op.binary.f32(i32 35, float %5517, float 0.000000e+00)  ; FMax(a,b)
  %5519 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5509, %dx.types.Handle %52, float %5489, float %5490, float %5504, float undef, i32 0, i32 0, i32 undef, float %5518)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5520 = extractvalue %dx.types.ResRet.f32 %5519, 0
  %5521 = fcmp fast ogt float %5520, 0.000000e+00
  br i1 %5521, label %5522, label %5550

; <label>:5522                                    ; preds = %5493
  %5523 = add i32 %5483, %5501
  %5524 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %5523, i32 undef)  ; BufferLoad(srv,index,wot)
  %5525 = extractvalue %dx.types.ResRet.i32 %5524, 0
  %5526 = and i32 %5525, 32767
  %5527 = mul nuw nsw i32 %5526, 928
  %5528 = add nuw nsw i32 %5527, 48
  %5529 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %5528, i32 undef)  ; BufferLoad(srv,index,wot)
  %5530 = extractvalue %dx.types.ResRet.f32 %5529, 0
  %5531 = extractvalue %dx.types.ResRet.f32 %5529, 1
  %5532 = extractvalue %dx.types.ResRet.f32 %5529, 2
  %5533 = add nuw nsw i32 %5527, 60
  %5534 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %5533, i32 undef)  ; BufferLoad(srv,index,wot)
  %5535 = extractvalue %dx.types.ResRet.f32 %5534, 0
  %5536 = extractvalue %dx.types.ResRet.f32 %5534, 1
  %5537 = extractvalue %dx.types.ResRet.f32 %5534, 2
  %5538 = fmul fast float %5530, %5520
  %5539 = fmul fast float %5531, %5520
  %5540 = fmul fast float %5532, %5520
  %5541 = fadd fast float %5538, %5494
  %5542 = fadd fast float %5539, %5495
  %5543 = fadd fast float %5540, %5496
  %5544 = fmul fast float %5535, %5520
  %5545 = fmul fast float %5536, %5520
  %5546 = fmul fast float %5537, %5520
  %5547 = fadd fast float %5544, %5497
  %5548 = fadd fast float %5545, %5498
  %5549 = fadd fast float %5546, %5499
  br label %5550

; <label>:5550                                    ; preds = %5522, %5493
  %5551 = phi float [ %5541, %5522 ], [ %5494, %5493 ]
  %5552 = phi float [ %5542, %5522 ], [ %5495, %5493 ]
  %5553 = phi float [ %5543, %5522 ], [ %5496, %5493 ]
  %5554 = phi float [ %5547, %5522 ], [ %5497, %5493 ]
  %5555 = phi float [ %5548, %5522 ], [ %5498, %5493 ]
  %5556 = phi float [ %5549, %5522 ], [ %5499, %5493 ]
  %5557 = add nuw i32 %5500, 1
  %5558 = icmp eq i32 %5557, %5482
  br i1 %5558, label %5559, label %5493

; <label>:5559                                    ; preds = %5550
  br label %5560

; <label>:5560                                    ; preds = %5559, %5423
  %5561 = phi float [ 0.000000e+00, %5423 ], [ %5551, %5559 ]
  %5562 = phi float [ 0.000000e+00, %5423 ], [ %5552, %5559 ]
  %5563 = phi float [ 0.000000e+00, %5423 ], [ %5553, %5559 ]
  %5564 = phi float [ 0.000000e+00, %5423 ], [ %5554, %5559 ]
  %5565 = phi float [ 0.000000e+00, %5423 ], [ %5555, %5559 ]
  %5566 = phi float [ 0.000000e+00, %5423 ], [ %5556, %5559 ]
  %5567 = fadd fast float %5564, %5561
  %5568 = fmul fast float %5567, 0x3F847AE140000000
  %5569 = fadd fast float %5565, %5562
  %5570 = fmul fast float %5569, 0x3F847AE140000000
  %5571 = fadd fast float %5566, %5563
  %5572 = fmul fast float %5571, 0x3F847AE140000000
  br label %5573

; <label>:5573                                    ; preds = %5560, %5357, %5302, %5299, %5270, %5232
  %5574 = phi float [ %5294, %5270 ], [ 0.000000e+00, %5232 ], [ %5568, %5560 ], [ 0.000000e+00, %5302 ], [ 0.000000e+00, %5357 ], [ 0.000000e+00, %5299 ]
  %5575 = phi float [ %5296, %5270 ], [ 0.000000e+00, %5232 ], [ %5570, %5560 ], [ 0.000000e+00, %5302 ], [ 0.000000e+00, %5357 ], [ 0.000000e+00, %5299 ]
  %5576 = phi float [ %5298, %5270 ], [ 0.000000e+00, %5232 ], [ %5572, %5560 ], [ 0.000000e+00, %5302 ], [ 0.000000e+00, %5357 ], [ 0.000000e+00, %5299 ]
  %5577 = phi float [ %5284, %5270 ], [ -1.310720e+05, %5232 ], [ %5476, %5560 ], [ -1.310720e+05, %5302 ], [ -1.310720e+05, %5357 ], [ -1.310720e+05, %5299 ]
  %5578 = phi i1 [ true, %5270 ], [ false, %5232 ], [ true, %5560 ], [ false, %5302 ], [ false, %5357 ], [ false, %5299 ]
  %5579 = and i32 %234, 3
  %5580 = icmp eq i32 %5579, 1
  %5581 = select i1 %5580, float 1.000000e+00, float 0.000000e+00
  %5582 = fsub fast float %5577, %166
  %5583 = call float @dx.op.unary.f32(i32 7, float %5582)  ; Saturate(value)
  %5584 = select i1 %5578, float %5583, float 1.000000e+00
  %5585 = fmul fast float %5584, %5581
  %5586 = icmp eq i32 %5579, 3
  %5587 = select i1 %5586, float 1.000000e+00, float %5585
  %5588 = call float @dx.op.binary.f32(i32 35, float %5124, float %5587)  ; FMax(a,b)
  %5589 = call float @dx.op.unary.f32(i32 7, float %5588)  ; Saturate(value)
  %5590 = fcmp fast une float %5589, 0.000000e+00
  %5591 = fsub fast float -0.000000e+00, %184
  %5592 = fsub fast float -0.000000e+00, %185
  %5593 = fsub fast float -0.000000e+00, %186
  br i1 %5590, label %5594, label %5756

; <label>:5594                                    ; preds = %5573
  %5595 = call float @dx.op.dot3.f32(i32 55, float %5591, float %5592, float %5593, float %116, float %117, float %118)  ; Dot3(ax,ay,az,bx,by,bz)
  %5596 = fmul fast float %5589, 2.500000e+00
  %5597 = call float @dx.op.unary.f32(i32 7, float %5596)  ; Saturate(value)
  %5598 = fmul fast float %5589, 0x4013FFFFE0000000
  %5599 = fadd fast float %5598, 0xBFFFFFFFE0000000
  %5600 = call float @dx.op.unary.f32(i32 7, float %5599)  ; Saturate(value)
  %5601 = fmul fast float %5589, 0x4004000020000000
  %5602 = fadd fast float %5601, 0xBFF8000040000000
  %5603 = call float @dx.op.unary.f32(i32 7, float %5602)  ; Saturate(value)
  %5604 = call float @dx.op.unary.f32(i32 7, float %5597)  ; Saturate(value)
  %5605 = fmul fast float %5149, 1.000000e+01
  %5606 = call float @dx.op.unary.f32(i32 7, float %5605)  ; Saturate(value)
  %5607 = fmul fast float %5606, 2.000000e+00
  %5608 = fsub fast float 3.000000e+00, %5607
  %5609 = fmul fast float %5606, %5606
  %5610 = fmul fast float %5609, %5608
  %5611 = fsub fast float 1.000000e+00, %5610
  %5612 = fsub fast float 0x3FE3333340000000, %5170
  %5613 = fmul fast float %5612, 0x400AAAAAA0000000
  %5614 = call float @dx.op.unary.f32(i32 7, float %5613)  ; Saturate(value)
  %5615 = fmul fast float %5611, %5614
  %5616 = fmul fast float %5207, 0x3FEA2B8620000000
  %5617 = fmul fast float %5208, 0x3FEA2B8620000000
  %5618 = fmul fast float %5209, 0x3FEA2B8620000000
  %5619 = fadd fast float %5616, 0x3FC81DFBA0000000
  %5620 = fmul fast float %5619, %5207
  %5621 = fadd fast float %5620, 0x3F910E6020000000
  %5622 = fadd fast float %5617, 0x3FC81DFBA0000000
  %5623 = fmul fast float %5622, %5208
  %5624 = fadd fast float %5623, 0x3F910E6020000000
  %5625 = fadd fast float %5618, 0x3FC81DFBA0000000
  %5626 = fmul fast float %5625, %5209
  %5627 = fadd fast float %5626, 0x3F910E6020000000
  %5628 = call float @dx.op.unary.f32(i32 7, float %5621)  ; Saturate(value)
  %5629 = call float @dx.op.unary.f32(i32 7, float %5624)  ; Saturate(value)
  %5630 = call float @dx.op.unary.f32(i32 7, float %5627)  ; Saturate(value)
  %5631 = fsub fast float %5628, %5207
  %5632 = fsub fast float %5629, %5208
  %5633 = fsub fast float %5630, %5209
  %5634 = fmul fast float %5631, %5604
  %5635 = fmul fast float %5634, %5615
  %5636 = fmul fast float %5632, %5604
  %5637 = fmul fast float %5636, %5615
  %5638 = fmul fast float %5633, %5604
  %5639 = fmul fast float %5638, %5615
  %5640 = fadd fast float %5635, %5207
  %5641 = fadd fast float %5637, %5208
  %5642 = fadd fast float %5639, %5209
  %5643 = fmul fast float %5121, %5121
  %5644 = fmul fast float %5643, %5643
  %5645 = fadd fast float %5600, 1.000000e+00
  %5646 = fsub fast float %5645, %5615
  %5647 = call float @dx.op.unary.f32(i32 7, float %5646)  ; Saturate(value)
  %5648 = call float @dx.op.dot3.f32(i32 55, float %116, float %117, float %118, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5649 = call float @dx.op.unary.f32(i32 7, float %5648)  ; Saturate(value)
  %5650 = fsub fast float 1.000000e+00, %5644
  %5651 = call float @dx.op.binary.f32(i32 36, float %5647, float %5650)  ; FMin(a,b)
  %5652 = call float @dx.op.unary.f32(i32 7, float %5603)  ; Saturate(value)
  %5653 = call float @dx.op.binary.f32(i32 35, float %5651, float %5652)  ; FMax(a,b)
  %5654 = fadd fast float %5649, 0xBFE4CCCCC0000000
  %5655 = fmul fast float %5654, 0x4006DB6DA0000000
  %5656 = call float @dx.op.unary.f32(i32 7, float %5655)  ; Saturate(value)
  %5657 = fmul fast float %5656, 2.000000e+00
  %5658 = fsub fast float 3.000000e+00, %5657
  %5659 = bitcast float %5167 to i32
  %5660 = ashr i32 %5659, 1
  %5661 = add nsw i32 %5660, 532487669
  %5662 = bitcast i32 %5661 to float
  %5663 = fsub fast float 1.000000e+00, %5662
  %5664 = bitcast float %5663 to i32
  %5665 = sub nsw i32 2129859010, %5664
  %5666 = bitcast i32 %5665 to float
  %5667 = fmul fast float %5666, 2.000000e+00
  %5668 = bitcast float %5168 to i32
  %5669 = ashr i32 %5668, 1
  %5670 = add nsw i32 %5669, 532487669
  %5671 = bitcast i32 %5670 to float
  %5672 = fsub fast float 1.000000e+00, %5671
  %5673 = bitcast float %5672 to i32
  %5674 = sub nsw i32 2129859010, %5673
  %5675 = bitcast i32 %5674 to float
  %5676 = fmul fast float %5675, 2.000000e+00
  %5677 = bitcast float %5169 to i32
  %5678 = ashr i32 %5677, 1
  %5679 = add nsw i32 %5678, 532487669
  %5680 = bitcast i32 %5679 to float
  %5681 = fsub fast float 1.000000e+00, %5680
  %5682 = bitcast float %5681 to i32
  %5683 = sub nsw i32 2129859010, %5682
  %5684 = bitcast i32 %5683 to float
  %5685 = fmul fast float %5684, 2.000000e+00
  %5686 = fsub fast float 0x4002A9FBE0000000, %5667
  %5687 = fadd fast float %5667, 0x3FD54FDF00000000
  %5688 = bitcast float %5687 to i32
  %5689 = sub nsw i32 2129859010, %5688
  %5690 = bitcast i32 %5689 to float
  %5691 = fmul fast float %5690, %5686
  %5692 = fmul fast float %5691, %5691
  %5693 = fsub fast float 0x4002A9FBE0000000, %5676
  %5694 = fadd fast float %5676, 0x3FD54FDF00000000
  %5695 = bitcast float %5694 to i32
  %5696 = sub nsw i32 2129859010, %5695
  %5697 = bitcast i32 %5696 to float
  %5698 = fmul fast float %5697, %5693
  %5699 = fmul fast float %5698, %5698
  %5700 = fsub fast float 0x4002A9FBE0000000, %5685
  %5701 = fadd fast float %5685, 0x3FD54FDF00000000
  %5702 = bitcast float %5701 to i32
  %5703 = sub nsw i32 2129859010, %5702
  %5704 = bitcast i32 %5703 to float
  %5705 = fmul fast float %5704, %5700
  %5706 = fmul fast float %5705, %5705
  %5707 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5692)  ; FMax(a,b)
  %5708 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5699)  ; FMax(a,b)
  %5709 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5706)  ; FMax(a,b)
  %5710 = fsub fast float 1.000000e+00, %5595
  %5711 = fadd fast float %5710, %5611
  %5712 = call float @dx.op.unary.f32(i32 7, float %5711)  ; Saturate(value)
  %5713 = fsub fast float 1.000000e+00, %5587
  %5714 = fmul fast float %5653, %5713
  %5715 = fmul fast float %5656, %5656
  %5716 = fmul fast float %5715, %5714
  %5717 = fmul fast float %5716, %5658
  %5718 = fmul fast float %5713, 0xBFE99999A0000000
  %5719 = fmul fast float %5718, %5604
  %5720 = fmul fast float %5719, %5615
  %5721 = fadd fast float %5720, 1.000000e+00
  %5722 = fadd fast float %5170, -1.000000e+00
  %5723 = fmul fast float %5721, %5722
  %5724 = fadd fast float %5723, 1.000000e+00
  %5725 = fsub fast float %5707, %5167
  %5726 = fsub fast float %5708, %5168
  %5727 = fsub fast float %5709, %5169
  %5728 = fmul fast float %5717, %5725
  %5729 = fmul fast float %5717, %5726
  %5730 = fmul fast float %5717, %5727
  %5731 = fadd fast float %5728, %5167
  %5732 = fadd fast float %5729, %5168
  %5733 = fadd fast float %5730, %5169
  %5734 = fsub fast float %116, %5112
  %5735 = fsub fast float %117, %5113
  %5736 = fsub fast float %118, %5114
  %5737 = fmul fast float %5717, %5734
  %5738 = fmul fast float %5717, %5735
  %5739 = fmul fast float %5717, %5736
  %5740 = fadd fast float %5737, %5112
  %5741 = fadd fast float %5738, %5113
  %5742 = fadd fast float %5739, %5114
  %5743 = fmul fast float %5717, %5712
  %5744 = call float @dx.op.unary.f32(i32 7, float %5724)  ; Saturate(value)
  %5745 = fsub fast float 1.000000e+00, %5744
  %5746 = fmul fast float %5743, %5745
  %5747 = fadd fast float %5746, %5744
  %5748 = fsub fast float 1.000000e+00, %5121
  %5749 = fmul fast float %5717, %5748
  %5750 = fadd fast float %5749, %5121
  %5751 = call float @dx.op.dot3.f32(i32 55, float %5740, float %5741, float %5742, float %5740, float %5741, float %5742)  ; Dot3(ax,ay,az,bx,by,bz)
  %5752 = call float @dx.op.unary.f32(i32 25, float %5751)  ; Rsqrt(value)
  %5753 = fmul fast float %5740, %5752
  %5754 = fmul fast float %5741, %5752
  %5755 = fmul fast float %5742, %5752
  br label %5756

; <label>:5756                                    ; preds = %5594, %5573
  %5757 = phi float [ %5640, %5594 ], [ %5207, %5573 ]
  %5758 = phi float [ %5641, %5594 ], [ %5208, %5573 ]
  %5759 = phi float [ %5642, %5594 ], [ %5209, %5573 ]
  %5760 = phi float [ %5731, %5594 ], [ %5167, %5573 ]
  %5761 = phi float [ %5732, %5594 ], [ %5168, %5573 ]
  %5762 = phi float [ %5733, %5594 ], [ %5169, %5573 ]
  %5763 = phi float [ %5753, %5594 ], [ %5112, %5573 ]
  %5764 = phi float [ %5754, %5594 ], [ %5113, %5573 ]
  %5765 = phi float [ %5755, %5594 ], [ %5114, %5573 ]
  %5766 = phi float [ %5747, %5594 ], [ %5170, %5573 ]
  %5767 = phi float [ %5750, %5594 ], [ %5121, %5573 ]
  %5768 = fsub fast float -0.000000e+00, %166
  %5769 = select i1 %258, float 0.000000e+00, float %5762
  %5770 = call float @dx.op.dot3.f32(i32 55, float %5763, float %5764, float %5765, float %5591, float %5592, float %5593)  ; Dot3(ax,ay,az,bx,by,bz)
  %5771 = call float @dx.op.unary.f32(i32 7, float %5770)  ; Saturate(value)
  %5772 = call float @dx.op.dot3.f32(i32 55, float %184, float %185, float %186, float %5763, float %5764, float %5765)  ; Dot3(ax,ay,az,bx,by,bz)
  %5773 = fmul fast float %5772, 2.000000e+00
  %5774 = fmul fast float %5773, %5763
  %5775 = fmul fast float %5773, %5764
  %5776 = fmul fast float %5773, %5765
  %5777 = fsub fast float %184, %5774
  %5778 = fsub fast float %185, %5775
  %5779 = fsub fast float %186, %5776
  %5780 = call float @dx.op.binary.f32(i32 36, float %5767, float 1.000000e+00)  ; FMin(a,b)
  %5781 = fsub fast float 1.000000e+00, %5780
  %5782 = bitcast float %5781 to i32
  %5783 = ashr i32 %5782, 1
  %5784 = add nsw i32 %5783, 532487669
  %5785 = bitcast i32 %5784 to float
  %5786 = fsub fast float 1.000000e+00, %5766
  %5787 = call float @dx.op.binary.f32(i32 35, float %5786, float 0x3F847AE140000000)  ; FMax(a,b)
  %5788 = fmul fast float %5787, %5787
  %5789 = fmul fast float %5788, %5788
  %5790 = call float @dx.op.unary.f32(i32 7, float %5771)  ; Saturate(value)
  %5791 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %54, float %5785, float %5789, float %5790, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5792 = extractvalue %dx.types.ResRet.f32 %5791, 0
  %5793 = fsub fast float 1.000000e+00, %5767
  %5794 = bitcast float %5793 to i32
  %5795 = sub nsw i32 2129859010, %5794
  %5796 = bitcast i32 %5795 to float
  %5797 = call float @dx.op.dot3.f32(i32 55, float %77, float %73, float %69, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5798 = fmul fast float %5797, 0x3FD20DD760000000
  %5799 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %77)  ; FMax(a,b)
  %5800 = call float @dx.op.dot3.f32(i32 55, float %78, float %79, float %80, float %78, float %79, float %80)  ; Dot3(ax,ay,az,bx,by,bz)
  %5801 = fcmp fast oeq float %5800, 0.000000e+00
  %5802 = fcmp fast oeq float %5799, 0.000000e+00
  %5803 = or i1 %5802, %5801
  br i1 %5803, label %5833, label %5804

; <label>:5804                                    ; preds = %5756
  %5805 = fsub fast float -0.000000e+00, %80
  %5806 = fsub fast float -0.000000e+00, %78
  %5807 = call float @dx.op.unary.f32(i32 24, float %5800)  ; Sqrt(value)
  %5808 = fdiv fast float %5807, %5799
  %5809 = fcmp fast ogt float %5808, 0x3FFB6F8900000000
  %5810 = select i1 %5809, float 0x3FFB6F8900000000, float %5808
  %5811 = fmul fast float %5810, 0x3FE8A23460000000
  %5812 = call float @dx.op.unary.f32(i32 7, float %5811)  ; Saturate(value)
  %5813 = call float @dx.op.binary.f32(i32 35, float %5810, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5814 = fmul fast float %5812, %5799
  %5815 = fmul fast float %5813, 0x3FF279A740000000
  %5816 = fadd fast float %5815, -1.000000e+00
  %5817 = call float @dx.op.dot3.f32(i32 55, float %5805, float %5806, float %79, float %5805, float %5806, float %79)  ; Dot3(ax,ay,az,bx,by,bz)
  %5818 = call float @dx.op.unary.f32(i32 25, float %5817)  ; Rsqrt(value)
  %5819 = fmul fast float %5818, %5805
  %5820 = fmul fast float %5818, %5806
  %5821 = fmul fast float %5818, %79
  %5822 = fmul fast float %5816, %5816
  %5823 = fsub fast float 1.000000e+00, %5822
  %5824 = fmul fast float %5813, 0x40005F8BE0000000
  %5825 = fsub fast float 0x400C5BF8A0000000, %5824
  %5826 = fdiv fast float %5814, %5825
  %5827 = fmul fast float %5826, 0x3FEE31C3C0000000
  %5828 = fmul fast float %5827, %5823
  %5829 = fmul fast float %5813, 0x3FDACB7480000000
  %5830 = fadd fast float %5829, 0xBFD7347680000000
  %5831 = fmul fast float %5830, %5826
  %5832 = fmul fast float %5831, %5823
  br label %5833

; <label>:5833                                    ; preds = %5804, %5756
  %5834 = phi float [ %5819, %5804 ], [ 0.000000e+00, %5756 ]
  %5835 = phi float [ %5820, %5804 ], [ 0.000000e+00, %5756 ]
  %5836 = phi float [ %5821, %5804 ], [ 0.000000e+00, %5756 ]
  %5837 = phi float [ %5828, %5804 ], [ 0.000000e+00, %5756 ]
  %5838 = phi float [ %5832, %5804 ], [ 0.000000e+00, %5756 ]
  %5839 = call float @dx.op.dot3.f32(i32 55, float %5834, float %5835, float %5836, float %5763, float %5764, float %5765)  ; Dot3(ax,ay,az,bx,by,bz)
  %5840 = fmul fast float %5839, 0x3FDF454380000000
  %5841 = fmul fast float %5839, %5839
  %5842 = fmul fast float %5841, 0x3FEE471020000000
  %5843 = fadd fast float %5842, 0xBFD42F6020000000
  %5844 = fmul fast float %5799, 0x3FD20DD760000000
  %5845 = fmul fast float %5843, %5838
  %5846 = fadd fast float %5845, %5844
  %5847 = fmul fast float %5840, %5837
  %5848 = fadd fast float %5846, %5847
  %5849 = fsub fast float %5846, %5847
  %5850 = call float @dx.op.dot3.f32(i32 55, float %5834, float %5835, float %5836, float %5777, float %5778, float %5779)  ; Dot3(ax,ay,az,bx,by,bz)
  %5851 = fmul fast float %5850, 0x3FDF454380000000
  %5852 = fmul fast float %5850, %5850
  %5853 = fmul fast float %5852, 0x3FEE471020000000
  %5854 = fadd fast float %5853, 0xBFD42F6020000000
  %5855 = call float @dx.op.dot3.f32(i32 55, float %5799, float %5837, float %5838, float 0x3FD20DD760000000, float %5851, float %5854)  ; Dot3(ax,ay,az,bx,by,bz)
  %5856 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %73)  ; FMax(a,b)
  %5857 = call float @dx.op.dot3.f32(i32 55, float %74, float %75, float %76, float %74, float %75, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %5858 = fcmp fast oeq float %5857, 0.000000e+00
  %5859 = fcmp fast oeq float %5856, 0.000000e+00
  %5860 = or i1 %5859, %5858
  br i1 %5860, label %5890, label %5861

; <label>:5861                                    ; preds = %5833
  %5862 = fsub fast float -0.000000e+00, %76
  %5863 = fsub fast float -0.000000e+00, %74
  %5864 = call float @dx.op.unary.f32(i32 24, float %5857)  ; Sqrt(value)
  %5865 = fdiv fast float %5864, %5856
  %5866 = fcmp fast ogt float %5865, 0x3FFB6F8900000000
  %5867 = select i1 %5866, float 0x3FFB6F8900000000, float %5865
  %5868 = fmul fast float %5867, 0x3FE8A23460000000
  %5869 = call float @dx.op.unary.f32(i32 7, float %5868)  ; Saturate(value)
  %5870 = call float @dx.op.binary.f32(i32 35, float %5867, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5871 = fmul fast float %5869, %5856
  %5872 = fmul fast float %5870, 0x3FF279A740000000
  %5873 = fadd fast float %5872, -1.000000e+00
  %5874 = call float @dx.op.dot3.f32(i32 55, float %5862, float %5863, float %75, float %5862, float %5863, float %75)  ; Dot3(ax,ay,az,bx,by,bz)
  %5875 = call float @dx.op.unary.f32(i32 25, float %5874)  ; Rsqrt(value)
  %5876 = fmul fast float %5875, %5862
  %5877 = fmul fast float %5875, %5863
  %5878 = fmul fast float %5875, %75
  %5879 = fmul fast float %5873, %5873
  %5880 = fsub fast float 1.000000e+00, %5879
  %5881 = fmul fast float %5870, 0x40005F8BE0000000
  %5882 = fsub fast float 0x400C5BF8A0000000, %5881
  %5883 = fdiv fast float %5871, %5882
  %5884 = fmul fast float %5883, 0x3FEE31C3C0000000
  %5885 = fmul fast float %5884, %5880
  %5886 = fmul fast float %5870, 0x3FDACB7480000000
  %5887 = fadd fast float %5886, 0xBFD7347680000000
  %5888 = fmul fast float %5887, %5883
  %5889 = fmul fast float %5888, %5880
  br label %5890

; <label>:5890                                    ; preds = %5861, %5833
  %5891 = phi float [ %5876, %5861 ], [ 0.000000e+00, %5833 ]
  %5892 = phi float [ %5877, %5861 ], [ 0.000000e+00, %5833 ]
  %5893 = phi float [ %5878, %5861 ], [ 0.000000e+00, %5833 ]
  %5894 = phi float [ %5885, %5861 ], [ 0.000000e+00, %5833 ]
  %5895 = phi float [ %5889, %5861 ], [ 0.000000e+00, %5833 ]
  %5896 = call float @dx.op.dot3.f32(i32 55, float %5891, float %5892, float %5893, float %5763, float %5764, float %5765)  ; Dot3(ax,ay,az,bx,by,bz)
  %5897 = fmul fast float %5896, 0x3FDF454380000000
  %5898 = fmul fast float %5896, %5896
  %5899 = fmul fast float %5898, 0x3FEE471020000000
  %5900 = fadd fast float %5899, 0xBFD42F6020000000
  %5901 = fmul fast float %5856, 0x3FD20DD760000000
  %5902 = fmul fast float %5900, %5895
  %5903 = fadd fast float %5902, %5901
  %5904 = fmul fast float %5897, %5894
  %5905 = fadd fast float %5903, %5904
  %5906 = fsub fast float %5903, %5904
  %5907 = call float @dx.op.dot3.f32(i32 55, float %5891, float %5892, float %5893, float %5777, float %5778, float %5779)  ; Dot3(ax,ay,az,bx,by,bz)
  %5908 = fmul fast float %5907, 0x3FDF454380000000
  %5909 = fmul fast float %5907, %5907
  %5910 = fmul fast float %5909, 0x3FEE471020000000
  %5911 = fadd fast float %5910, 0xBFD42F6020000000
  %5912 = call float @dx.op.dot3.f32(i32 55, float %5856, float %5894, float %5895, float 0x3FD20DD760000000, float %5908, float %5911)  ; Dot3(ax,ay,az,bx,by,bz)
  %5913 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %69)  ; FMax(a,b)
  %5914 = call float @dx.op.dot3.f32(i32 55, float %70, float %71, float %72, float %70, float %71, float %72)  ; Dot3(ax,ay,az,bx,by,bz)
  %5915 = fcmp fast oeq float %5914, 0.000000e+00
  %5916 = fcmp fast oeq float %5913, 0.000000e+00
  %5917 = or i1 %5916, %5915
  br i1 %5917, label %5947, label %5918

; <label>:5918                                    ; preds = %5890
  %5919 = fsub fast float -0.000000e+00, %72
  %5920 = fsub fast float -0.000000e+00, %70
  %5921 = call float @dx.op.unary.f32(i32 24, float %5914)  ; Sqrt(value)
  %5922 = fdiv fast float %5921, %5913
  %5923 = fcmp fast ogt float %5922, 0x3FFB6F8900000000
  %5924 = select i1 %5923, float 0x3FFB6F8900000000, float %5922
  %5925 = fmul fast float %5924, 0x3FE8A23460000000
  %5926 = call float @dx.op.unary.f32(i32 7, float %5925)  ; Saturate(value)
  %5927 = call float @dx.op.binary.f32(i32 35, float %5924, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5928 = fmul fast float %5926, %5913
  %5929 = fmul fast float %5927, 0x3FF279A740000000
  %5930 = fadd fast float %5929, -1.000000e+00
  %5931 = call float @dx.op.dot3.f32(i32 55, float %5919, float %5920, float %71, float %5919, float %5920, float %71)  ; Dot3(ax,ay,az,bx,by,bz)
  %5932 = call float @dx.op.unary.f32(i32 25, float %5931)  ; Rsqrt(value)
  %5933 = fmul fast float %5932, %5919
  %5934 = fmul fast float %5932, %5920
  %5935 = fmul fast float %5932, %71
  %5936 = fmul fast float %5930, %5930
  %5937 = fsub fast float 1.000000e+00, %5936
  %5938 = fmul fast float %5927, 0x40005F8BE0000000
  %5939 = fsub fast float 0x400C5BF8A0000000, %5938
  %5940 = fdiv fast float %5928, %5939
  %5941 = fmul fast float %5940, 0x3FEE31C3C0000000
  %5942 = fmul fast float %5941, %5937
  %5943 = fmul fast float %5927, 0x3FDACB7480000000
  %5944 = fadd fast float %5943, 0xBFD7347680000000
  %5945 = fmul fast float %5944, %5940
  %5946 = fmul fast float %5945, %5937
  br label %5947

; <label>:5947                                    ; preds = %5918, %5890
  %5948 = phi float [ %5933, %5918 ], [ 0.000000e+00, %5890 ]
  %5949 = phi float [ %5934, %5918 ], [ 0.000000e+00, %5890 ]
  %5950 = phi float [ %5935, %5918 ], [ 0.000000e+00, %5890 ]
  %5951 = phi float [ %5942, %5918 ], [ 0.000000e+00, %5890 ]
  %5952 = phi float [ %5946, %5918 ], [ 0.000000e+00, %5890 ]
  %5953 = call float @dx.op.dot3.f32(i32 55, float %5948, float %5949, float %5950, float %5763, float %5764, float %5765)  ; Dot3(ax,ay,az,bx,by,bz)
  %5954 = fmul fast float %5953, 0x3FDF454380000000
  %5955 = fmul fast float %5953, %5953
  %5956 = fmul fast float %5955, 0x3FEE471020000000
  %5957 = fadd fast float %5956, 0xBFD42F6020000000
  %5958 = fmul fast float %5913, 0x3FD20DD760000000
  %5959 = fmul fast float %5957, %5952
  %5960 = fadd fast float %5959, %5958
  %5961 = fmul fast float %5954, %5951
  %5962 = fadd fast float %5960, %5961
  %5963 = fsub fast float %5960, %5961
  %5964 = call float @dx.op.dot3.f32(i32 55, float %5948, float %5949, float %5950, float %5777, float %5778, float %5779)  ; Dot3(ax,ay,az,bx,by,bz)
  %5965 = fmul fast float %5964, 0x3FDF454380000000
  %5966 = fmul fast float %5964, %5964
  %5967 = fmul fast float %5966, 0x3FEE471020000000
  %5968 = fadd fast float %5967, 0xBFD42F6020000000
  %5969 = call float @dx.op.dot3.f32(i32 55, float %5913, float %5951, float %5952, float 0x3FD20DD760000000, float %5965, float %5968)  ; Dot3(ax,ay,az,bx,by,bz)
  %5970 = call float @dx.op.binary.f32(i32 35, float %5848, float 0.000000e+00)  ; FMax(a,b)
  %5971 = call float @dx.op.binary.f32(i32 35, float %5905, float 0.000000e+00)  ; FMax(a,b)
  %5972 = call float @dx.op.binary.f32(i32 35, float %5962, float 0.000000e+00)  ; FMax(a,b)
  %5973 = call float @dx.op.binary.f32(i32 35, float %5849, float 0.000000e+00)  ; FMax(a,b)
  %5974 = call float @dx.op.binary.f32(i32 35, float %5906, float 0.000000e+00)  ; FMax(a,b)
  %5975 = call float @dx.op.binary.f32(i32 35, float %5963, float 0.000000e+00)  ; FMax(a,b)
  %5976 = call float @dx.op.binary.f32(i32 35, float %5855, float 0.000000e+00)  ; FMax(a,b)
  %5977 = call float @dx.op.binary.f32(i32 35, float %5912, float 0.000000e+00)  ; FMax(a,b)
  %5978 = call float @dx.op.binary.f32(i32 35, float %5969, float 0.000000e+00)  ; FMax(a,b)
  %5979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5980 = extractvalue %dx.types.CBufRet.f32 %5979, 0
  %5981 = call float @dx.op.binary.f32(i32 36, float %5757, float %5980)  ; FMin(a,b)
  %5982 = fmul fast float %5981, %5781
  %5983 = fsub fast float 1.000000e+00, %5982
  %5984 = bitcast float %5983 to i32
  %5985 = sub nsw i32 2129859010, %5984
  %5986 = bitcast i32 %5985 to float
  %5987 = call float @dx.op.binary.f32(i32 36, float %5758, float %5980)  ; FMin(a,b)
  %5988 = fmul fast float %5987, %5781
  %5989 = fsub fast float 1.000000e+00, %5988
  %5990 = bitcast float %5989 to i32
  %5991 = sub nsw i32 2129859010, %5990
  %5992 = bitcast i32 %5991 to float
  %5993 = call float @dx.op.binary.f32(i32 36, float %5759, float %5980)  ; FMin(a,b)
  %5994 = fmul fast float %5993, %5781
  %5995 = fsub fast float 1.000000e+00, %5994
  %5996 = bitcast float %5995 to i32
  %5997 = sub nsw i32 2129859010, %5996
  %5998 = bitcast i32 %5997 to float
  %5999 = fmul fast float %5970, %5780
  %6000 = fmul fast float %5999, %5986
  %6001 = fmul fast float %5971, %5780
  %6002 = fmul fast float %6001, %5992
  %6003 = fmul fast float %5972, %5780
  %6004 = fmul fast float %6003, %5998
  %6005 = call float @dx.op.binary.f32(i32 36, float %5760, float %5980)  ; FMin(a,b)
  %6006 = fmul fast float %6005, %5781
  %6007 = fsub fast float 1.000000e+00, %6006
  %6008 = bitcast float %6007 to i32
  %6009 = sub nsw i32 2129859010, %6008
  %6010 = bitcast i32 %6009 to float
  %6011 = call float @dx.op.binary.f32(i32 36, float %5761, float %5980)  ; FMin(a,b)
  %6012 = fmul fast float %6011, %5781
  %6013 = fsub fast float 1.000000e+00, %6012
  %6014 = bitcast float %6013 to i32
  %6015 = sub nsw i32 2129859010, %6014
  %6016 = bitcast i32 %6015 to float
  %6017 = call float @dx.op.binary.f32(i32 36, float %5769, float %5980)  ; FMin(a,b)
  %6018 = fmul fast float %6017, %5781
  %6019 = fsub fast float 1.000000e+00, %6018
  %6020 = bitcast float %6019 to i32
  %6021 = sub nsw i32 2129859010, %6020
  %6022 = bitcast i32 %6021 to float
  %6023 = fmul fast float %5976, %5780
  %6024 = fmul fast float %6023, %6010
  %6025 = fmul fast float %5977, %5780
  %6026 = fmul fast float %6025, %6016
  %6027 = fmul fast float %5978, %5780
  %6028 = fmul fast float %6027, %6022
  %6029 = call float @dx.op.dot3.f32(i32 55, float %6000, float %6002, float %6004, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6030 = select i1 %258, float 0.000000e+00, float %6000
  %6031 = select i1 %258, float %6029, float %6002
  %6032 = select i1 %258, float 0.000000e+00, float %6004
  %6033 = call float @dx.op.dot3.f32(i32 55, float %5973, float %5974, float %5975, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6034 = select i1 %258, float 0.000000e+00, float %5973
  %6035 = select i1 %258, float %6033, float %5974
  %6036 = select i1 %258, float 0.000000e+00, float %5975
  %6037 = call float @dx.op.dot3.f32(i32 55, float %6024, float %6026, float %6028, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6038 = select i1 %258, float 0.000000e+00, float %6024
  %6039 = select i1 %258, float %6037, float %6026
  %6040 = select i1 %258, float 0.000000e+00, float %6028
  %6041 = fmul fast float %4459, %4459
  %6042 = call float @dx.op.unary.f32(i32 7, float %6041)  ; Saturate(value)
  %6043 = fmul fast float %5771, 9.843750e-01
  %6044 = fmul fast float %5766, 9.843750e-01
  %6045 = fadd fast float %6043, 7.812500e-03
  %6046 = fadd fast float %6044, 7.812500e-03
  %6047 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %6045, float %6046, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6048 = extractvalue %dx.types.ResRet.f32 %6047, 0
  %6049 = extractvalue %dx.types.ResRet.f32 %6047, 1
  %6050 = extractvalue %dx.types.ResRet.f32 %6047, 2
  %6051 = extractvalue %dx.types.ResRet.f32 %6047, 3
  %6052 = fsub fast float 1.000000e+00, %6042
  %6053 = fsub fast float %6050, %6048
  %6054 = fsub fast float %6051, %6049
  %6055 = fmul fast float %6053, %6052
  %6056 = fmul fast float %6054, %6052
  %6057 = fadd fast float %6055, %6048
  %6058 = fadd fast float %6056, %6049
  %6059 = fmul fast float %6057, %5760
  %6060 = fmul fast float %6057, %5761
  %6061 = fmul fast float %6057, %5769
  %6062 = fadd fast float %6059, %6058
  %6063 = fadd fast float %6060, %6058
  %6064 = fadd fast float %6061, %6058
  %6065 = fcmp fast ogt float %5122, 0.000000e+00
  br i1 %6065, label %6066, label %6092

; <label>:6066                                    ; preds = %5947
  %6067 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %5122, float %5771, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6068 = extractvalue %dx.types.ResRet.f32 %6067, 0
  %6069 = extractvalue %dx.types.ResRet.f32 %6067, 1
  %6070 = extractvalue %dx.types.ResRet.f32 %6067, 2
  %6071 = fadd fast float %6068, -5.000000e-01
  %6072 = fadd fast float %6069, -5.000000e-01
  %6073 = fadd fast float %6070, -5.000000e-01
  %6074 = fsub fast float 1.000000e+00, %5760
  %6075 = fsub fast float 1.000000e+00, %5761
  %6076 = fsub fast float 1.000000e+00, %5769
  %6077 = fmul fast float %5760, 4.000000e+00
  %6078 = fmul fast float %6077, %6074
  %6079 = fmul fast float %6078, %6071
  %6080 = fmul fast float %5761, 4.000000e+00
  %6081 = fmul fast float %6080, %6075
  %6082 = fmul fast float %6081, %6072
  %6083 = fmul fast float %5769, 4.000000e+00
  %6084 = fmul fast float %6083, %6076
  %6085 = fmul fast float %6084, %6073
  %6086 = fadd fast float %6079, %6062
  %6087 = fadd fast float %6082, %6063
  %6088 = fadd fast float %6085, %6064
  %6089 = call float @dx.op.unary.f32(i32 7, float %6086)  ; Saturate(value)
  %6090 = call float @dx.op.unary.f32(i32 7, float %6087)  ; Saturate(value)
  %6091 = call float @dx.op.unary.f32(i32 7, float %6088)  ; Saturate(value)
  br label %6092

; <label>:6092                                    ; preds = %6066, %5947
  %6093 = phi float [ %6089, %6066 ], [ %6062, %5947 ]
  %6094 = phi float [ %6090, %6066 ], [ %6063, %5947 ]
  %6095 = phi float [ %6091, %6066 ], [ %6064, %5947 ]
  %6096 = call float @dx.op.binary.f32(i32 35, float %6094, float %6095)  ; FMax(a,b)
  %6097 = call float @dx.op.binary.f32(i32 35, float %6093, float %6096)  ; FMax(a,b)
  %6098 = fsub fast float 1.000000e+00, %6097
  %6099 = fmul fast float %6097, %5766
  %6100 = fadd fast float %6099, %5766
  %6101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %6102 = extractvalue %dx.types.CBufRet.f32 %6101, 2
  %6103 = extractvalue %dx.types.CBufRet.f32 %6101, 3
  %6104 = fmul fast float %6100, %6102
  %6105 = fadd fast float %6104, %6103
  %6106 = call float @dx.op.unary.f32(i32 7, float %6105)  ; Saturate(value)
  %6107 = fsub fast float 1.000000e+00, %5792
  %6108 = fadd fast float %6107, %6106
  %6109 = call float @dx.op.unary.f32(i32 7, float %6108)  ; Saturate(value)
  %6110 = fcmp fast olt float %6109, 1.000000e+00
  br i1 %6110, label %6111, label %6587

; <label>:6111                                    ; preds = %6092
  %6112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %6113 = extractvalue %dx.types.CBufRet.f32 %6112, 2
  %6114 = extractvalue %dx.types.CBufRet.f32 %6112, 3
  %6115 = fmul fast float %6113, %109
  %6116 = fmul fast float %6114, %110
  %6117 = fptoui float %6115 to i32
  %6118 = fptoui float %6116 to i32
  %6119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6120 = extractvalue %dx.types.CBufRet.f32 %6119, 0
  %6121 = extractvalue %dx.types.CBufRet.f32 %6119, 2
  %6122 = extractvalue %dx.types.CBufRet.f32 %6119, 3
  %6123 = fadd fast float %97, -4.000000e+00
  %6124 = call float @dx.op.binary.f32(i32 35, float %6123, float 0.000000e+00)  ; FMax(a,b)
  %6125 = fadd fast float %6124, %6120
  %6126 = fmul fast float %6125, %6121
  %6127 = call float @dx.op.unary.f32(i32 23, float %6126)  ; Log(value)
  %6128 = fmul fast float %6127, %6122
  %6129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6130 = extractvalue %dx.types.CBufRet.f32 %6129, 2
  %6131 = fmul fast float %6128, %6130
  %6132 = call float @dx.op.unary.f32(i32 7, float %6131)  ; Saturate(value)
  %6133 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6134 = extractvalue %dx.types.CBufRet.i32 %6133, 1
  %6135 = add i32 %6134, -1
  %6136 = uitofp i32 %6134 to float
  %6137 = fmul fast float %6136, %6132
  %6138 = fptoui float %6137 to i32
  %6139 = call i32 @dx.op.binary.i32(i32 40, i32 %6138, i32 %6135)  ; UMin(a,b)
  %6140 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6141 = extractvalue %dx.types.CBufRet.i32 %6140, 2
  %6142 = extractvalue %dx.types.CBufRet.i32 %6140, 3
  %6143 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6118, i32 %6141, i32 %6117)  ; UMad(a,b,c)
  %6144 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6139, i32 %6142, i32 %6143)  ; UMad(a,b,c)
  %6145 = call float @dx.op.binary.f32(i32 35, float %97, float 0.000000e+00)  ; FMax(a,b)
  %6146 = fptoui float %6145 to i32
  %6147 = lshr i32 %6146, 5
  %6148 = call i32 @dx.op.binary.i32(i32 40, i32 %6147, i32 8191)  ; UMin(a,b)
  %6149 = fsub fast float %5577, %166
  %6150 = call float @dx.op.unary.f32(i32 7, float %6149)  ; Saturate(value)
  %6151 = fcmp fast ogt float %6150, 0.000000e+00
  %6152 = fcmp fast ogt float %5779, 0.000000e+00
  %6153 = and i1 %6152, %6151
  br i1 %6153, label %6154, label %6183

; <label>:6154                                    ; preds = %6111
  %6155 = call float @dx.op.dot3.f32(i32 55, float %5777, float %5778, float %5779, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6156 = call float @dx.op.binary.f32(i32 35, float %6155, float -1.000000e+00)  ; FMax(a,b)
  %6157 = call float @dx.op.binary.f32(i32 36, float %6156, float 1.000000e+00)  ; FMin(a,b)
  %6158 = fmul fast float %6157, %6157
  %6159 = fsub fast float 1.000000e+00, %6158
  %6160 = fmul fast float %6159, 0x3FFC6E2300000000
  %6161 = fsub fast float 1.000000e+00, %6160
  %6162 = fcmp fast ogt float %6161, 0.000000e+00
  %6163 = call float @dx.op.unary.f32(i32 24, float %6161)  ; Sqrt(value)
  %6164 = fsub fast float 1.000000e+00, %6163
  %6165 = call float @dx.op.unary.f32(i32 23, float %6164)  ; Log(value)
  %6166 = fmul fast float %6165, 5.000000e+00
  %6167 = call float @dx.op.unary.f32(i32 21, float %6166)  ; Exp(value)
  %6168 = fmul fast float %6167, 0x3FEF591A60000000
  %6169 = fadd fast float %6168, 0x3F94DCB540000000
  %6170 = select i1 %6162, float %6169, float 1.000000e+00
  %6171 = fcmp fast oge float %6170, 1.000000e+00
  %6172 = fmul fast float %6155, 2.000000e+00
  %6173 = fadd fast float %6172, %5779
  %6174 = select i1 %6171, float %6173, float %5779
  %6175 = fsub fast float %6174, %5779
  %6176 = fmul fast float %6175, %6150
  %6177 = fadd fast float %6176, %5779
  %6178 = call float @dx.op.dot3.f32(i32 55, float %5777, float %5778, float %6177, float %5777, float %5778, float %6177)  ; Dot3(ax,ay,az,bx,by,bz)
  %6179 = call float @dx.op.unary.f32(i32 25, float %6178)  ; Rsqrt(value)
  %6180 = fmul fast float %6179, %5777
  %6181 = fmul fast float %6179, %5778
  %6182 = fmul fast float %6177, %6179
  br label %6183

; <label>:6183                                    ; preds = %6154, %6111
  %6184 = phi float [ %6180, %6154 ], [ %5777, %6111 ]
  %6185 = phi float [ %6181, %6154 ], [ %5778, %6111 ]
  %6186 = phi float [ %6182, %6154 ], [ %5779, %6111 ]
  %6187 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6188 = extractvalue %dx.types.CBufRet.i32 %6187, 2
  %6189 = add nsw i32 %6188, -1
  %6190 = call i32 @dx.op.binary.i32(i32 37, i32 %6189, i32 0)  ; IMax(a,b)
  %6191 = shl i32 %6148, 2
  %6192 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %6191, i32 undef)  ; BufferLoad(srv,index,wot)
  %6193 = extractvalue %dx.types.ResRet.i32 %6192, 0
  %6194 = lshr i32 %6193, 16
  %6195 = and i32 %6193, 65535
  %6196 = lshr i32 %6193, 21
  %6197 = lshr i32 %6195, 5
  %6198 = call i32 @dx.op.binary.i32(i32 40, i32 %6197, i32 %6190)  ; UMin(a,b)
  %6199 = icmp ugt i32 %6196, %6198
  br i1 %6199, label %6563, label %6200

; <label>:6200                                    ; preds = %6183
  br label %6201

; <label>:6201                                    ; preds = %6555, %6200
  %6202 = phi float [ %6556, %6555 ], [ 0.000000e+00, %6200 ]
  %6203 = phi float [ %6557, %6555 ], [ 0.000000e+00, %6200 ]
  %6204 = phi float [ %6558, %6555 ], [ 0.000000e+00, %6200 ]
  %6205 = phi float [ %6559, %6555 ], [ 1.000000e+00, %6200 ]
  %6206 = phi i32 [ %6560, %6555 ], [ %6196, %6200 ]
  %6207 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6208 = extractvalue %dx.types.CBufRet.i32 %6207, 2
  %6209 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6144, i32 %6208, i32 %6206)  ; UMad(a,b,c)
  %6210 = shl i32 %6209, 2
  %6211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %6210, i32 undef)  ; BufferLoad(srv,index,wot)
  %6212 = extractvalue %dx.types.ResRet.i32 %6211, 0
  %6213 = shl i32 %6206, 5
  %6214 = sub nsw i32 %6194, %6213
  %6215 = call i32 @dx.op.binary.i32(i32 37, i32 %6214, i32 0)  ; IMax(a,b)
  %6216 = call i32 @dx.op.binary.i32(i32 38, i32 %6215, i32 31)  ; IMin(a,b)
  %6217 = sub nsw i32 1, %6194
  %6218 = add nsw i32 %6217, %6195
  %6219 = call i32 @dx.op.binary.i32(i32 37, i32 %6218, i32 0)  ; IMax(a,b)
  %6220 = call i32 @dx.op.binary.i32(i32 38, i32 %6219, i32 32)  ; IMin(a,b)
  %6221 = and i32 %6220, 31
  %6222 = shl i32 -1, %6221
  %6223 = xor i32 %6222, -1
  %6224 = and i32 %6216, 31
  %6225 = shl i32 %6223, %6224
  %6226 = icmp eq i32 %6220, 32
  %6227 = select i1 %6226, i32 -1, i32 %6225
  %6228 = and i32 %6227, %6212
  %6229 = icmp eq i32 %6228, 0
  br i1 %6229, label %6555, label %6230

; <label>:6230                                    ; preds = %6201
  br label %6231

; <label>:6231                                    ; preds = %6338, %6230
  %6232 = phi float [ %6339, %6338 ], [ %6202, %6230 ]
  %6233 = phi float [ %6340, %6338 ], [ %6203, %6230 ]
  %6234 = phi float [ %6341, %6338 ], [ %6204, %6230 ]
  %6235 = phi float [ %6342, %6338 ], [ %6205, %6230 ]
  %6236 = phi i32 [ %6241, %6338 ], [ %6228, %6230 ]
  %6237 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6236)  ; FirstbitLo(value)
  %6238 = add i32 %6237, %6213
  %6239 = and i32 %6237, 31
  %6240 = shl i32 1, %6239
  %6241 = xor i32 %6240, %6236
  %6242 = mul i32 %6238, 72
  %6243 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6242, i32 undef)  ; BufferLoad(srv,index,wot)
  %6244 = extractvalue %dx.types.ResRet.f32 %6243, 0
  %6245 = extractvalue %dx.types.ResRet.f32 %6243, 1
  %6246 = extractvalue %dx.types.ResRet.f32 %6243, 2
  %6247 = add i32 %6242, 12
  %6248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %6247, i32 undef)  ; BufferLoad(srv,index,wot)
  %6249 = extractvalue %dx.types.ResRet.i32 %6248, 0
  %6250 = add i32 %6242, 16
  %6251 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6250, i32 undef)  ; BufferLoad(srv,index,wot)
  %6252 = extractvalue %dx.types.ResRet.f32 %6251, 0
  %6253 = extractvalue %dx.types.ResRet.f32 %6251, 1
  %6254 = extractvalue %dx.types.ResRet.f32 %6251, 2
  %6255 = add i32 %6242, 28
  %6256 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6255, i32 undef)  ; BufferLoad(srv,index,wot)
  %6257 = extractvalue %dx.types.ResRet.f32 %6256, 0
  %6258 = add i32 %6242, 32
  %6259 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6258, i32 undef)  ; BufferLoad(srv,index,wot)
  %6260 = extractvalue %dx.types.ResRet.f32 %6259, 0
  %6261 = extractvalue %dx.types.ResRet.f32 %6259, 1
  %6262 = extractvalue %dx.types.ResRet.f32 %6259, 2
  %6263 = extractvalue %dx.types.ResRet.f32 %6259, 3
  %6264 = add i32 %6242, 48
  %6265 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6264, i32 undef)  ; BufferLoad(srv,index,wot)
  %6266 = extractvalue %dx.types.ResRet.f32 %6265, 0
  %6267 = extractvalue %dx.types.ResRet.f32 %6265, 1
  %6268 = add i32 %6242, 56
  %6269 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6268, i32 undef)  ; BufferLoad(srv,index,wot)
  %6270 = extractvalue %dx.types.ResRet.f32 %6269, 0
  %6271 = extractvalue %dx.types.ResRet.f32 %6269, 1
  %6272 = add i32 %6242, 64
  %6273 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6272, i32 undef)  ; BufferLoad(srv,index,wot)
  %6274 = extractvalue %dx.types.ResRet.f32 %6273, 0
  %6275 = extractvalue %dx.types.ResRet.f32 %6273, 1
  %6276 = mul i32 %6238, 60
  %6277 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %6276, i32 undef)  ; BufferLoad(srv,index,wot)
  %6278 = extractvalue %dx.types.ResRet.f32 %6277, 0
  %6279 = extractvalue %dx.types.ResRet.f32 %6277, 1
  %6280 = extractvalue %dx.types.ResRet.f32 %6277, 2
  %6281 = add i32 %6276, 12
  %6282 = add i32 %6276, 48
  %6283 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %6282, i32 undef)  ; BufferLoad(srv,index,wot)
  %6284 = extractvalue %dx.types.ResRet.f32 %6283, 0
  %6285 = extractvalue %dx.types.ResRet.f32 %6283, 1
  %6286 = extractvalue %dx.types.ResRet.f32 %6283, 2
  %6287 = and i32 %6249, 32767
  %6288 = bitcast float %6244 to i32
  %6289 = icmp eq i32 %6288, -1
  %6290 = bitcast float %6245 to i32
  %6291 = and i32 %6249, 32768
  %6292 = icmp ne i32 %6291, 0
  %6293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6294 = extractvalue %dx.types.CBufRet.f32 %6293, 0
  %6295 = extractvalue %dx.types.CBufRet.f32 %6293, 1
  %6296 = extractvalue %dx.types.CBufRet.f32 %6293, 2
  %6297 = fsub fast float %6278, %6294
  %6298 = fsub fast float %6279, %6295
  %6299 = fsub fast float %6280, %6296
  %6300 = fsub fast float %164, %6297
  %6301 = fsub fast float %165, %6298
  %6302 = fsub fast float %166, %6299
  %6303 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %6281, i32 undef)  ; BufferLoad(srv,index,wot)
  %6304 = extractvalue %dx.types.ResRet.f32 %6303, 0
  %6305 = extractvalue %dx.types.ResRet.f32 %6303, 1
  %6306 = extractvalue %dx.types.ResRet.f32 %6303, 2
  %6307 = call float @dx.op.dot3.f32(i32 55, float %6300, float %6301, float %6302, float %6304, float %6305, float %6306)  ; Dot3(ax,ay,az,bx,by,bz)
  %6308 = add i32 %6276, 24
  %6309 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %6308, i32 undef)  ; BufferLoad(srv,index,wot)
  %6310 = extractvalue %dx.types.ResRet.f32 %6309, 0
  %6311 = extractvalue %dx.types.ResRet.f32 %6309, 1
  %6312 = extractvalue %dx.types.ResRet.f32 %6309, 2
  %6313 = call float @dx.op.dot3.f32(i32 55, float %6300, float %6301, float %6302, float %6310, float %6311, float %6312)  ; Dot3(ax,ay,az,bx,by,bz)
  %6314 = add i32 %6276, 36
  %6315 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %6314, i32 undef)  ; BufferLoad(srv,index,wot)
  %6316 = extractvalue %dx.types.ResRet.f32 %6315, 0
  %6317 = extractvalue %dx.types.ResRet.f32 %6315, 1
  %6318 = extractvalue %dx.types.ResRet.f32 %6315, 2
  %6319 = call float @dx.op.dot3.f32(i32 55, float %6300, float %6301, float %6302, float %6316, float %6317, float %6318)  ; Dot3(ax,ay,az,bx,by,bz)
  %6320 = call float @dx.op.unary.f32(i32 6, float %6307)  ; FAbs(value)
  %6321 = call float @dx.op.unary.f32(i32 6, float %6313)  ; FAbs(value)
  %6322 = call float @dx.op.unary.f32(i32 6, float %6319)  ; FAbs(value)
  %6323 = fsub fast float %6284, %6320
  %6324 = fsub fast float %6285, %6321
  %6325 = fsub fast float %6286, %6322
  %6326 = fmul fast float %6323, %6252
  %6327 = fmul fast float %6324, %6253
  %6328 = fmul fast float %6325, %6254
  %6329 = call float @dx.op.binary.f32(i32 36, float %6327, float %6328)  ; FMin(a,b)
  %6330 = call float @dx.op.binary.f32(i32 36, float %6326, float %6329)  ; FMin(a,b)
  %6331 = call float @dx.op.unary.f32(i32 7, float %6330)  ; Saturate(value)
  %6332 = call float @dx.op.binary.f32(i32 36, float %6235, float %6331)  ; FMin(a,b)
  %6333 = uitofp i1 %6292 to float
  %6334 = fadd fast float %6150, 1.000000e+00
  %6335 = fsub fast float %6334, %6333
  %6336 = fmul fast float %6332, %6335
  %6337 = fcmp fast ogt float %6336, 0.000000e+00
  br i1 %6337, label %6344, label %6338

; <label>:6338                                    ; preds = %6486, %6231
  %6339 = phi float [ %6550, %6486 ], [ %6232, %6231 ]
  %6340 = phi float [ %6551, %6486 ], [ %6233, %6231 ]
  %6341 = phi float [ %6552, %6486 ], [ %6234, %6231 ]
  %6342 = phi float [ %6553, %6486 ], [ %6235, %6231 ]
  %6343 = icmp eq i32 %6236, %6240
  br i1 %6343, label %6554, label %6231

; <label>:6344                                    ; preds = %6231
  br i1 %6289, label %6402, label %6345

; <label>:6345                                    ; preds = %6344
  %6346 = fsub fast float -0.000000e+00, %6304
  %6347 = fsub fast float -0.000000e+00, %6305
  %6348 = fsub fast float -0.000000e+00, %6306
  %6349 = call float @dx.op.dot3.f32(i32 55, float %6184, float %6185, float %6186, float %6346, float %6347, float %6348)  ; Dot3(ax,ay,az,bx,by,bz)
  %6350 = fsub fast float -0.000000e+00, %6349
  %6351 = call float @dx.op.dot3.f32(i32 55, float %6300, float %6301, float %6302, float %6346, float %6347, float %6348)  ; Dot3(ax,ay,az,bx,by,bz)
  %6352 = fadd fast float %6351, %6267
  %6353 = fadd fast float %6266, %6351
  %6354 = fsub fast float -0.000000e+00, %6353
  %6355 = fcmp ogt float %6349, -0.000000e+00
  %6356 = select i1 %6355, float %6354, float %6352
  %6357 = call float @dx.op.unary.f32(i32 6, float %6350)  ; FAbs(value)
  %6358 = fdiv fast float 1.000000e+00, %6357
  %6359 = fmul fast float %6356, %6358
  %6360 = call float @dx.op.binary.f32(i32 35, float %6359, float 0.000000e+00)  ; FMax(a,b)
  %6361 = fsub fast float -0.000000e+00, %6310
  %6362 = fsub fast float -0.000000e+00, %6311
  %6363 = fsub fast float -0.000000e+00, %6312
  %6364 = call float @dx.op.dot3.f32(i32 55, float %6184, float %6185, float %6186, float %6361, float %6362, float %6363)  ; Dot3(ax,ay,az,bx,by,bz)
  %6365 = fsub fast float -0.000000e+00, %6364
  %6366 = call float @dx.op.dot3.f32(i32 55, float %6300, float %6301, float %6302, float %6361, float %6362, float %6363)  ; Dot3(ax,ay,az,bx,by,bz)
  %6367 = fadd fast float %6366, %6271
  %6368 = fadd fast float %6270, %6366
  %6369 = fsub fast float -0.000000e+00, %6368
  %6370 = fcmp ogt float %6364, -0.000000e+00
  %6371 = select i1 %6370, float %6369, float %6367
  %6372 = call float @dx.op.unary.f32(i32 6, float %6365)  ; FAbs(value)
  %6373 = fdiv fast float 1.000000e+00, %6372
  %6374 = fmul fast float %6371, %6373
  %6375 = call float @dx.op.binary.f32(i32 35, float %6374, float 0.000000e+00)  ; FMax(a,b)
  %6376 = fsub fast float -0.000000e+00, %6316
  %6377 = fsub fast float -0.000000e+00, %6317
  %6378 = fsub fast float -0.000000e+00, %6318
  %6379 = call float @dx.op.dot3.f32(i32 55, float %6184, float %6185, float %6186, float %6376, float %6377, float %6378)  ; Dot3(ax,ay,az,bx,by,bz)
  %6380 = fsub fast float -0.000000e+00, %6379
  %6381 = call float @dx.op.dot3.f32(i32 55, float %6300, float %6301, float %6302, float %6376, float %6377, float %6378)  ; Dot3(ax,ay,az,bx,by,bz)
  %6382 = fadd fast float %6381, %6275
  %6383 = fadd fast float %6274, %6381
  %6384 = fsub fast float -0.000000e+00, %6383
  %6385 = fcmp ogt float %6379, -0.000000e+00
  %6386 = select i1 %6385, float %6384, float %6382
  %6387 = call float @dx.op.unary.f32(i32 6, float %6380)  ; FAbs(value)
  %6388 = fdiv fast float 1.000000e+00, %6387
  %6389 = fmul fast float %6386, %6388
  %6390 = call float @dx.op.binary.f32(i32 35, float %6389, float 0.000000e+00)  ; FMax(a,b)
  %6391 = call float @dx.op.binary.f32(i32 36, float %6375, float %6390)  ; FMin(a,b)
  %6392 = call float @dx.op.binary.f32(i32 36, float %6360, float %6391)  ; FMin(a,b)
  %6393 = fmul fast float %6392, %6184
  %6394 = fmul fast float %6392, %6185
  %6395 = fmul fast float %6392, %6186
  %6396 = fadd fast float %6393, %164
  %6397 = fadd fast float %6394, %165
  %6398 = fadd fast float %6395, %166
  %6399 = fsub fast float %6396, %6244
  %6400 = fsub fast float %6397, %6245
  %6401 = fsub fast float %6398, %6246
  br label %6409

; <label>:6402                                    ; preds = %6344
  %6403 = fmul fast float %6184, 8.096000e+03
  %6404 = fmul fast float %6185, 8.096000e+03
  %6405 = fmul fast float %6186, 8.096000e+03
  %6406 = fadd fast float %6403, %164
  %6407 = fadd fast float %6404, %165
  %6408 = fadd fast float %6405, %166
  br label %6409

; <label>:6409                                    ; preds = %6402, %6345
  %6410 = phi float [ %6184, %6402 ], [ %6399, %6345 ]
  %6411 = phi float [ %6185, %6402 ], [ %6400, %6345 ]
  %6412 = phi float [ %6186, %6402 ], [ %6401, %6345 ]
  %6413 = phi float [ %6406, %6402 ], [ %6396, %6345 ]
  %6414 = phi float [ %6407, %6402 ], [ %6397, %6345 ]
  %6415 = phi float [ %6408, %6402 ], [ %6398, %6345 ]
  %6416 = fcmp fast olt float %6263, 1.000000e+00
  br i1 %6416, label %6417, label %6448, !dx.controlflow.hints !100

; <label>:6417                                    ; preds = %6409
  %6418 = fmul fast float %6412, %6261
  %6419 = fmul fast float %6411, %6262
  %6420 = fsub fast float %6418, %6419
  %6421 = fmul fast float %6410, %6262
  %6422 = fmul fast float %6412, %6260
  %6423 = fsub fast float %6421, %6422
  %6424 = fmul fast float %6411, %6260
  %6425 = fmul fast float %6410, %6261
  %6426 = fsub fast float %6424, %6425
  %6427 = fmul fast float %6420, 2.000000e+00
  %6428 = fmul fast float %6423, 2.000000e+00
  %6429 = fmul fast float %6426, 2.000000e+00
  %6430 = fmul fast float %6427, %6263
  %6431 = fmul fast float %6428, %6263
  %6432 = fmul fast float %6429, %6263
  %6433 = fmul fast float %6429, %6261
  %6434 = fmul fast float %6428, %6262
  %6435 = fmul fast float %6427, %6262
  %6436 = fmul fast float %6429, %6260
  %6437 = fmul fast float %6428, %6260
  %6438 = fmul fast float %6427, %6261
  %6439 = fadd fast float %6433, %6410
  %6440 = fadd fast float %6439, %6430
  %6441 = fsub fast float %6440, %6434
  %6442 = fsub fast float %6411, %6436
  %6443 = fadd fast float %6442, %6431
  %6444 = fadd fast float %6443, %6435
  %6445 = fadd fast float %6432, %6412
  %6446 = fsub fast float %6445, %6438
  %6447 = fadd fast float %6446, %6437
  br label %6448

; <label>:6448                                    ; preds = %6417, %6409
  %6449 = phi float [ %6441, %6417 ], [ %6410, %6409 ]
  %6450 = phi float [ %6444, %6417 ], [ %6411, %6409 ]
  %6451 = phi float [ %6447, %6417 ], [ %6412, %6409 ]
  br i1 %6289, label %6483, label %6452

; <label>:6452                                    ; preds = %6448
  %6453 = fmul fast float %5766, 0x400187C840000000
  %6454 = fadd fast float %6453, 0xC00EFC2120000000
  %6455 = fmul fast float %6454, %5766
  %6456 = fadd fast float %6455, 0x3FE5D16340000000
  %6457 = fmul fast float %6456, %5766
  %6458 = fadd fast float %6457, 1.000000e+00
  %6459 = call float @dx.op.unary.f32(i32 7, float %6458)  ; Saturate(value)
  %6460 = fsub fast float %6413, %164
  %6461 = fsub fast float %6414, %165
  %6462 = fsub fast float %6415, %166
  %6463 = fsub fast float %6413, %6244
  %6464 = fsub fast float %6414, %6245
  %6465 = fsub fast float %6415, %6246
  %6466 = call float @dx.op.dot3.f32(i32 55, float %6460, float %6461, float %6462, float %6460, float %6461, float %6462)  ; Dot3(ax,ay,az,bx,by,bz)
  %6467 = call float @dx.op.dot3.f32(i32 55, float %6463, float %6464, float %6465, float %6463, float %6464, float %6465)  ; Dot3(ax,ay,az,bx,by,bz)
  %6468 = fadd fast float %6467, 0x3EE4F8B580000000
  %6469 = fdiv fast float %6466, %6468
  %6470 = bitcast float %6469 to i32
  %6471 = ashr i32 %6470, 1
  %6472 = add nsw i32 %6471, 532487669
  %6473 = bitcast i32 %6472 to float
  %6474 = fmul fast float %6473, %6459
  %6475 = call float @dx.op.unary.f32(i32 7, float %6474)  ; Saturate(value)
  %6476 = fmul fast float %6475, 0x4009981AE0000000
  %6477 = fsub fast float 0x40111BBD80000000, %6476
  %6478 = fmul fast float %6477, %6475
  %6479 = fadd fast float %6478, 0xC0009F6020000000
  %6480 = fmul fast float %6479, %6475
  %6481 = fadd fast float %6480, 1.000000e+00
  %6482 = call float @dx.op.unary.f32(i32 7, float %6481)  ; Saturate(value)
  br label %6486

; <label>:6483                                    ; preds = %6448
  %6484 = icmp ne i32 %6290, -1
  %6485 = zext i1 %6484 to i32
  br label %6486

; <label>:6486                                    ; preds = %6483, %6452
  %6487 = phi float [ %5766, %6483 ], [ %6482, %6452 ]
  %6488 = phi i32 [ %6485, %6483 ], [ 0, %6452 ]
  %6489 = fmul float %6487, 5.000000e+00
  %6490 = fsub float 5.000000e+00, %6489
  %6491 = icmp ne i32 %6488, 0
  %6492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %6493 = extractvalue %dx.types.CBufRet.f32 %6492, 3
  %6494 = fadd fast float %6493, %6490
  %6495 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6494)  ; FMax(a,b)
  %6496 = call float @dx.op.unary.f32(i32 6, float %6449)  ; FAbs(value)
  %6497 = call float @dx.op.unary.f32(i32 6, float %6450)  ; FAbs(value)
  %6498 = fadd fast float %6497, %6496
  %6499 = call float @dx.op.unary.f32(i32 6, float %6451)  ; FAbs(value)
  %6500 = fadd fast float %6498, %6499
  %6501 = fcmp fast oeq float %6500, 0.000000e+00
  %6502 = fdiv fast float 1.000000e+00, %6500
  %6503 = select i1 %6501, float 1.000000e+00, float %6502
  %6504 = fmul fast float %6503, %6449
  %6505 = fmul fast float %6503, %6450
  %6506 = call float @dx.op.unary.f32(i32 6, float %6505)  ; FAbs(value)
  %6507 = call float @dx.op.unary.f32(i32 6, float %6504)  ; FAbs(value)
  %6508 = fsub fast float 1.000000e+00, %6506
  %6509 = fsub fast float 1.000000e+00, %6507
  %6510 = fcmp fast oge float %6504, 0.000000e+00
  %6511 = fcmp fast oge float %6505, 0.000000e+00
  %6512 = select i1 %6510, float 1.000000e+00, float -1.000000e+00
  %6513 = select i1 %6511, float 1.000000e+00, float -1.000000e+00
  %6514 = fcmp fast ole float %6451, 0.000000e+00
  %6515 = fmul fast float %6512, %6508
  %6516 = fmul fast float %6513, %6509
  %6517 = select i1 %6514, float %6515, float %6504
  %6518 = select i1 %6514, float %6516, float %6505
  %6519 = fmul fast float %6517, 5.000000e-01
  %6520 = fmul fast float %6518, 5.000000e-01
  %6521 = fadd fast float %6519, 5.000000e-01
  %6522 = fadd fast float %6520, 5.000000e-01
  %6523 = uitofp i32 %6287 to float
  %6524 = call float @dx.op.binary.f32(i32 36, float %6495, float 3.000000e+00)  ; FMin(a,b)
  %6525 = fadd fast float %6524, 2.000000e+00
  %6526 = call float @dx.op.unary.f32(i32 21, float %6525)  ; Exp(value)
  %6527 = extractvalue %dx.types.CBufRet.f32 %6492, 1
  %6528 = fmul fast float %6527, %6526
  %6529 = fmul fast float %6528, 2.000000e+00
  %6530 = fsub fast float 1.000000e+00, %6529
  %6531 = fmul fast float %6521, %6530
  %6532 = fmul fast float %6522, %6530
  %6533 = fadd fast float %6531, %6528
  %6534 = fadd fast float %6532, %6528
  %6535 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %52, float %6533, float %6534, float %6523, float undef, i32 0, i32 0, i32 undef, float %6495)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6536 = extractvalue %dx.types.ResRet.f32 %6535, 0
  %6537 = extractvalue %dx.types.ResRet.f32 %6535, 1
  %6538 = extractvalue %dx.types.ResRet.f32 %6535, 2
  %6539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6540 = extractvalue %dx.types.CBufRet.f32 %6539, 3
  %6541 = fmul fast float %6540, %6257
  %6542 = call float @dx.op.binary.f32(i32 36, float %5798, float %6541)  ; FMin(a,b)
  %6543 = select i1 %6491, float %6542, float %6541
  %6544 = fmul fast float %6536, %6336
  %6545 = fmul fast float %6544, %6543
  %6546 = fmul fast float %6537, %6336
  %6547 = fmul fast float %6546, %6543
  %6548 = fmul fast float %6538, %6336
  %6549 = fmul fast float %6548, %6543
  %6550 = fadd fast float %6545, %6232
  %6551 = fadd fast float %6547, %6233
  %6552 = fadd fast float %6549, %6234
  %6553 = fsub fast float %6235, %6336
  br label %6338

; <label>:6554                                    ; preds = %6338
  br label %6555

; <label>:6555                                    ; preds = %6554, %6201
  %6556 = phi float [ %6202, %6201 ], [ %6339, %6554 ]
  %6557 = phi float [ %6203, %6201 ], [ %6340, %6554 ]
  %6558 = phi float [ %6204, %6201 ], [ %6341, %6554 ]
  %6559 = phi float [ %6205, %6201 ], [ %6342, %6554 ]
  %6560 = add i32 %6206, 1
  %6561 = icmp ugt i32 %6560, %6198
  br i1 %6561, label %6562, label %6201, !llvm.loop !101

; <label>:6562                                    ; preds = %6555
  br label %6563

; <label>:6563                                    ; preds = %6562, %6183
  %6564 = phi float [ 0.000000e+00, %6183 ], [ %6556, %6562 ]
  %6565 = phi float [ 0.000000e+00, %6183 ], [ %6557, %6562 ]
  %6566 = phi float [ 0.000000e+00, %6183 ], [ %6558, %6562 ]
  %6567 = call float @dx.op.dot3.f32(i32 55, float %6564, float %6565, float %6566, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6568 = select i1 %258, float 0.000000e+00, float %6564
  %6569 = select i1 %258, float %6567, float %6565
  %6570 = select i1 %258, float 0.000000e+00, float %6566
  %6571 = fcmp fast olt float %6109, 0.000000e+00
  %6572 = call float @dx.op.unary.f32(i32 6, float %6109)  ; FAbs(value)
  %6573 = fmul fast float %6572, %6038
  %6574 = fmul fast float %6572, %6039
  %6575 = fmul fast float %6572, %6040
  %6576 = select i1 %6571, float %6038, float %6573
  %6577 = select i1 %6571, float %6039, float %6574
  %6578 = select i1 %6571, float %6040, float %6575
  %6579 = fsub fast float 1.000000e+00, %6572
  %6580 = call float @dx.op.unary.f32(i32 7, float %6579)  ; Saturate(value)
  %6581 = fmul fast float %6580, %6568
  %6582 = fmul fast float %6580, %6569
  %6583 = fmul fast float %6580, %6570
  %6584 = fadd fast float %6576, %6581
  %6585 = fadd fast float %6577, %6582
  %6586 = fadd fast float %6578, %6583
  br label %6587

; <label>:6587                                    ; preds = %6563, %6092
  %6588 = phi float [ %6038, %6092 ], [ %6584, %6563 ]
  %6589 = phi float [ %6039, %6092 ], [ %6585, %6563 ]
  %6590 = phi float [ %6040, %6092 ], [ %6586, %6563 ]
  %6591 = call float @dx.op.dot3.f32(i32 55, float %5757, float %5758, float %5759, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6592 = fcmp fast ogt float %6591, 0x3E7FF19E20000000
  %6593 = fdiv fast float 1.000000e+00, %6591
  %6594 = select i1 %6592, float %6593, float 0.000000e+00
  %6595 = fmul fast float %6594, %5757
  %6596 = fmul fast float %6594, %5758
  %6597 = fmul fast float %6594, %5759
  %6598 = fadd fast float %6595, -1.000000e+00
  %6599 = fadd fast float %6596, -1.000000e+00
  %6600 = fadd fast float %6597, -1.000000e+00
  %6601 = fmul fast float %6598, 5.000000e-01
  %6602 = fmul fast float %6599, 5.000000e-01
  %6603 = fmul fast float %6600, 5.000000e-01
  %6604 = fadd fast float %6601, 1.000000e+00
  %6605 = fadd fast float %6602, 1.000000e+00
  %6606 = fadd fast float %6603, 1.000000e+00
  %6607 = call float @dx.op.binary.f32(i32 35, float %5771, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6608 = fdiv fast float %4459, %6607
  %6609 = fcmp fast olt float %5193, 1.270000e+02
  %6610 = fcmp fast olt float %5194, 1.270000e+02
  %6611 = fcmp fast olt float %5195, 1.270000e+02
  %6612 = fmul fast float %5193, 0xBFF7154760000000
  %6613 = fmul fast float %6612, %6608
  %6614 = fmul fast float %5194, 0xBFF7154760000000
  %6615 = fmul fast float %6614, %6608
  %6616 = fmul fast float %5195, 0xBFF7154760000000
  %6617 = fmul fast float %6616, %6608
  %6618 = call float @dx.op.unary.f32(i32 21, float %6613)  ; Exp(value)
  %6619 = call float @dx.op.unary.f32(i32 21, float %6615)  ; Exp(value)
  %6620 = call float @dx.op.unary.f32(i32 21, float %6617)  ; Exp(value)
  %6621 = call float @dx.op.unary.f32(i32 7, float %6618)  ; Saturate(value)
  %6622 = call float @dx.op.unary.f32(i32 7, float %6619)  ; Saturate(value)
  %6623 = call float @dx.op.unary.f32(i32 7, float %6620)  ; Saturate(value)
  %6624 = select i1 %6609, float %6621, float 0.000000e+00
  %6625 = select i1 %6610, float %6622, float 0.000000e+00
  %6626 = select i1 %6611, float %6623, float 0.000000e+00
  %6627 = fmul fast float %6624, %6098
  %6628 = fmul fast float %6625, %6098
  %6629 = fmul fast float %6626, %6098
  %6630 = fadd fast float %6627, -1.000000e+00
  %6631 = fadd fast float %6628, -1.000000e+00
  %6632 = fadd fast float %6629, -1.000000e+00
  %6633 = fmul fast float %6630, %5148
  %6634 = fmul fast float %6631, %5148
  %6635 = fmul fast float %6632, %5148
  %6636 = fmul fast float %6588, %6093
  %6637 = fmul fast float %6589, %6094
  %6638 = fmul fast float %6590, %6095
  %6639 = fsub fast float 1.000000e+00, %5771
  %6640 = bitcast float %6639 to i32
  %6641 = sitofp i32 %6640 to float
  %6642 = fmul fast float %6641, 5.000000e+00
  %6643 = fadd fast float %6642, 0xC1EFBF8940000000
  %6644 = fptosi float %6643 to i32
  %6645 = bitcast i32 %6644 to float
  %6646 = fmul fast float %6645, %5123
  %6647 = fmul fast float %6030, %6646
  %6648 = fmul fast float %6647, %6098
  %6649 = fmul fast float %6648, %6604
  %6650 = fmul fast float %6031, %6646
  %6651 = fmul fast float %6650, %6098
  %6652 = fmul fast float %6651, %6605
  %6653 = fmul fast float %6032, %6646
  %6654 = fmul fast float %6653, %6098
  %6655 = fmul fast float %6654, %6606
  %6656 = fadd fast float %6636, %5106
  %6657 = fadd fast float %6656, %6649
  %6658 = fmul fast float %6657, %5148
  %6659 = fadd fast float %6637, %5107
  %6660 = fadd fast float %6659, %6652
  %6661 = fmul fast float %6660, %5148
  %6662 = fadd fast float %6638, %5108
  %6663 = fadd fast float %6662, %6655
  %6664 = fmul fast float %6663, %5148
  %6665 = fmul fast float %5761, 0x4012D0A400000000
  %6666 = fadd fast float %6635, 1.000000e+00
  %6667 = fadd fast float %6634, 1.000000e+00
  %6668 = fadd fast float %6633, 1.000000e+00
  %6669 = fmul fast float %6098, %6032
  %6670 = fmul fast float %6098, %6031
  %6671 = fmul fast float %6098, %6030
  %6672 = fmul fast float %5786, %5148
  %6673 = fsub fast float 1.000000e+00, %6672
  %6674 = call float @dx.op.unary.f32(i32 7, float %6673)  ; Saturate(value)
  %6675 = fsub fast float 1.000000e+00, %6674
  %6676 = fadd fast float %6665, 0x3FDB6377A0000000
  %6677 = fmul fast float %6675, %6676
  %6678 = call float @dx.op.dot3.f32(i32 55, float %5211, float %5212, float %5213, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6679 = fadd fast float %6677, %6678
  %6680 = call float @dx.op.unary.f32(i32 7, float %6679)  ; Saturate(value)
  %6681 = call float @dx.op.binary.f32(i32 35, float %6680, float 0x3F847AE140000000)  ; FMax(a,b)
  %6682 = fmul fast float %6681, %6681
  %6683 = fmul fast float %6682, %6682
  %6684 = fmul fast float %6683, 0xC00A935000000000
  %6685 = call float @dx.op.unary.f32(i32 21, float %6684)  ; Exp(value)
  %6686 = fsub fast float 1.000000e+00, %6685
  %6687 = fmul fast float %6668, %6034
  %6688 = fmul fast float %6687, %6686
  %6689 = fmul fast float %6667, %6035
  %6690 = fmul fast float %6689, %6686
  %6691 = fmul fast float %6666, %6036
  %6692 = fmul fast float %6691, %6686
  %6693 = fadd fast float %6688, %6671
  %6694 = fmul fast float %6693, %5148
  %6695 = fadd fast float %6690, %6670
  %6696 = fmul fast float %6695, %5148
  %6697 = fadd fast float %6692, %6669
  %6698 = fmul fast float %6697, %5148
  %6699 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6700 = extractvalue %dx.types.CBufRet.f32 %6699, 3
  %6701 = fcmp fast oeq float %6700, 0.000000e+00
  br i1 %6701, label %8379, label %6702

; <label>:6702                                    ; preds = %6587
  %6703 = extractvalue %dx.types.CBufRet.f32 %6699, 0
  %6704 = extractvalue %dx.types.CBufRet.f32 %6699, 1
  %6705 = extractvalue %dx.types.CBufRet.f32 %6699, 2
  %6706 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6707 = extractvalue %dx.types.CBufRet.f32 %6706, 0
  %6708 = extractvalue %dx.types.CBufRet.f32 %6706, 1
  %6709 = extractvalue %dx.types.CBufRet.f32 %6706, 2
  %6710 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6711 = extractvalue %dx.types.CBufRet.f32 %6710, 0
  %6712 = extractvalue %dx.types.CBufRet.f32 %6710, 1
  %6713 = call float @dx.op.dot3.f32(i32 55, float %6707, float %6708, float %6709, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6714 = select i1 %258, float %6711, float %6707
  %6715 = select i1 %258, float %6713, float %6708
  %6716 = select i1 %258, float %6712, float %6709
  %6717 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6718 = extractvalue %dx.types.CBufRet.f32 %6717, 2
  %6719 = fmul fast float %6718, %116
  %6720 = fmul fast float %6718, %117
  %6721 = fmul fast float %6718, %118
  %6722 = fadd fast float %6719, %164
  %6723 = fadd fast float %6720, %165
  %6724 = fadd fast float %6721, %166
  %6725 = fcmp fast olt float %6700, 0.000000e+00
  br i1 %6725, label %7821, label %6726

; <label>:6726                                    ; preds = %6702
  %6727 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6728 = extractvalue %dx.types.CBufRet.f32 %6727, 0
  %6729 = extractvalue %dx.types.CBufRet.f32 %6727, 1
  %6730 = extractvalue %dx.types.CBufRet.f32 %6727, 2
  %6731 = extractvalue %dx.types.CBufRet.f32 %6727, 3
  %6732 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6733 = extractvalue %dx.types.CBufRet.f32 %6732, 0
  %6734 = extractvalue %dx.types.CBufRet.f32 %6732, 1
  %6735 = extractvalue %dx.types.CBufRet.f32 %6732, 2
  %6736 = extractvalue %dx.types.CBufRet.f32 %6732, 3
  %6737 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6738 = extractvalue %dx.types.CBufRet.f32 %6737, 0
  %6739 = extractvalue %dx.types.CBufRet.f32 %6737, 1
  %6740 = extractvalue %dx.types.CBufRet.f32 %6737, 2
  %6741 = extractvalue %dx.types.CBufRet.f32 %6737, 3
  %6742 = fmul fast float %6728, %6722
  %6743 = call float @dx.op.tertiary.f32(i32 46, float %6723, float %6729, float %6742)  ; FMad(a,b,c)
  %6744 = call float @dx.op.tertiary.f32(i32 46, float %6724, float %6730, float %6743)  ; FMad(a,b,c)
  %6745 = fadd fast float %6744, %6731
  %6746 = fmul fast float %6733, %6722
  %6747 = call float @dx.op.tertiary.f32(i32 46, float %6723, float %6734, float %6746)  ; FMad(a,b,c)
  %6748 = call float @dx.op.tertiary.f32(i32 46, float %6724, float %6735, float %6747)  ; FMad(a,b,c)
  %6749 = fadd fast float %6748, %6736
  %6750 = fmul fast float %6738, %6722
  %6751 = call float @dx.op.tertiary.f32(i32 46, float %6723, float %6739, float %6750)  ; FMad(a,b,c)
  %6752 = call float @dx.op.tertiary.f32(i32 46, float %6724, float %6740, float %6751)  ; FMad(a,b,c)
  %6753 = fadd fast float %6752, %6741
  %6754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6755 = extractvalue %dx.types.CBufRet.f32 %6754, 0
  %6756 = extractvalue %dx.types.CBufRet.f32 %6754, 1
  %6757 = extractvalue %dx.types.CBufRet.f32 %6754, 3
  %6758 = fmul fast float %6757, %6745
  %6759 = fmul fast float %6757, %6749
  %6760 = fadd fast float %6758, %6755
  %6761 = fadd fast float %6759, %6756
  %6762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6763 = extractvalue %dx.types.CBufRet.f32 %6762, 0
  %6764 = extractvalue %dx.types.CBufRet.f32 %6762, 1
  %6765 = extractvalue %dx.types.CBufRet.f32 %6762, 3
  %6766 = fmul fast float %6765, %6745
  %6767 = fmul fast float %6765, %6749
  %6768 = fadd fast float %6766, %6763
  %6769 = fadd fast float %6767, %6764
  %6770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6771 = extractvalue %dx.types.CBufRet.f32 %6770, 1
  %6772 = fsub fast float %6771, %6753
  %6773 = extractvalue %dx.types.CBufRet.f32 %6770, 2
  %6774 = fmul fast float %6772, %6773
  %6775 = fsub fast float 1.000000e+00, %6774
  %6776 = call float @dx.op.unary.f32(i32 7, float %6775)  ; Saturate(value)
  %6777 = extractvalue %dx.types.CBufRet.f32 %6762, 2
  %6778 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6779 = extractvalue %dx.types.CBufRet.f32 %6778, 2
  %6780 = fadd fast float %6779, %6777
  %6781 = fcmp fast ogt float %6780, 0.000000e+00
  br i1 %6781, label %6782, label %6806

; <label>:6782                                    ; preds = %6726
  %6783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6784 = extractvalue %dx.types.CBufRet.f32 %6783, 0
  %6785 = extractvalue %dx.types.CBufRet.f32 %6783, 1
  %6786 = fsub fast float %6768, %6784
  %6787 = fsub fast float %6769, %6785
  %6788 = fcmp fast olt float %6786, 0.000000e+00
  %6789 = fcmp fast olt float %6787, 0.000000e+00
  %6790 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6791 = extractvalue %dx.types.CBufRet.f32 %6790, 0
  %6792 = extractvalue %dx.types.CBufRet.f32 %6790, 1
  %6793 = extractvalue %dx.types.CBufRet.f32 %6790, 2
  %6794 = extractvalue %dx.types.CBufRet.f32 %6790, 3
  %6795 = select i1 %6788, float %6791, float %6793
  %6796 = select i1 %6789, float %6792, float %6794
  %6797 = fmul fast float %6795, %6786
  %6798 = fmul fast float %6796, %6787
  %6799 = call float @dx.op.unary.f32(i32 6, float %6797)  ; FAbs(value)
  %6800 = call float @dx.op.unary.f32(i32 6, float %6798)  ; FAbs(value)
  %6801 = extractvalue %dx.types.CBufRet.f32 %6717, 0
  %6802 = call float @dx.op.binary.f32(i32 35, float %6799, float %6800)  ; FMax(a,b)
  %6803 = fsub fast float %6801, %6802
  %6804 = call float @dx.op.unary.f32(i32 7, float %6803)  ; Saturate(value)
  %6805 = fmul fast float %6804, %6776
  br label %6806

; <label>:6806                                    ; preds = %6782, %6726
  %6807 = phi float [ %6805, %6782 ], [ 0.000000e+00, %6726 ]
  %6808 = extractvalue %dx.types.CBufRet.f32 %6754, 2
  %6809 = extractvalue %dx.types.CBufRet.f32 %6778, 1
  %6810 = fadd fast float %6809, %6808
  %6811 = fcmp fast ogt float %6810, 0.000000e+00
  %6812 = extractvalue %dx.types.CBufRet.f32 %6717, 0
  br i1 %6811, label %6813, label %6836

; <label>:6813                                    ; preds = %6806
  %6814 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6815 = extractvalue %dx.types.CBufRet.f32 %6814, 0
  %6816 = extractvalue %dx.types.CBufRet.f32 %6814, 1
  %6817 = fsub fast float %6760, %6815
  %6818 = fsub fast float %6761, %6816
  %6819 = fcmp fast olt float %6817, 0.000000e+00
  %6820 = fcmp fast olt float %6818, 0.000000e+00
  %6821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6822 = extractvalue %dx.types.CBufRet.f32 %6821, 0
  %6823 = extractvalue %dx.types.CBufRet.f32 %6821, 1
  %6824 = extractvalue %dx.types.CBufRet.f32 %6821, 2
  %6825 = extractvalue %dx.types.CBufRet.f32 %6821, 3
  %6826 = select i1 %6819, float %6822, float %6824
  %6827 = select i1 %6820, float %6823, float %6825
  %6828 = fmul fast float %6826, %6817
  %6829 = fmul fast float %6827, %6818
  %6830 = call float @dx.op.unary.f32(i32 6, float %6828)  ; FAbs(value)
  %6831 = call float @dx.op.unary.f32(i32 6, float %6829)  ; FAbs(value)
  %6832 = call float @dx.op.binary.f32(i32 35, float %6830, float %6831)  ; FMax(a,b)
  %6833 = fsub fast float %6812, %6832
  %6834 = call float @dx.op.unary.f32(i32 7, float %6833)  ; Saturate(value)
  %6835 = fmul fast float %6834, %6776
  br label %6836

; <label>:6836                                    ; preds = %6813, %6806
  %6837 = phi float [ %6835, %6813 ], [ 0.000000e+00, %6806 ]
  %6838 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6839 = extractvalue %dx.types.CBufRet.f32 %6838, 1
  %6840 = call float @dx.op.unary.f32(i32 7, float %6839)  ; Saturate(value)
  %6841 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6842 = extractvalue %dx.types.CBufRet.f32 %6841, 0
  %6843 = extractvalue %dx.types.CBufRet.f32 %6841, 1
  %6844 = fsub fast float %6745, %6842
  %6845 = fsub fast float %6749, %6843
  %6846 = fcmp fast olt float %6844, 0.000000e+00
  %6847 = fcmp fast olt float %6845, 0.000000e+00
  %6848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6849 = extractvalue %dx.types.CBufRet.f32 %6848, 0
  %6850 = extractvalue %dx.types.CBufRet.f32 %6848, 1
  %6851 = extractvalue %dx.types.CBufRet.f32 %6848, 2
  %6852 = extractvalue %dx.types.CBufRet.f32 %6848, 3
  %6853 = select i1 %6846, float %6849, float %6851
  %6854 = select i1 %6847, float %6850, float %6852
  %6855 = fmul fast float %6853, %6844
  %6856 = fmul fast float %6854, %6845
  %6857 = call float @dx.op.unary.f32(i32 6, float %6855)  ; FAbs(value)
  %6858 = call float @dx.op.unary.f32(i32 6, float %6856)  ; FAbs(value)
  %6859 = call float @dx.op.binary.f32(i32 35, float %6857, float %6858)  ; FMax(a,b)
  %6860 = fsub fast float %6812, %6859
  %6861 = call float @dx.op.unary.f32(i32 7, float %6860)  ; Saturate(value)
  %6862 = call float @dx.op.binary.f32(i32 36, float %6861, float %6840)  ; FMin(a,b)
  %6863 = fmul fast float %6862, %6776
  %6864 = fsub fast float %6837, %6863
  %6865 = fsub fast float %6807, %6837
  %6866 = fsub fast float %6865, %6863
  %6867 = call float @dx.op.binary.f32(i32 35, float %6837, float %6807)  ; FMax(a,b)
  %6868 = call float @dx.op.binary.f32(i32 35, float %6863, float %6867)  ; FMax(a,b)
  %6869 = fcmp fast olt float %6868, 1.000000e+00
  br i1 %6869, label %6870, label %7268, !dx.controlflow.hints !103

; <label>:6870                                    ; preds = %6836
  %6871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6872 = extractvalue %dx.types.CBufRet.f32 %6871, 0
  %6873 = fcmp fast une float %6872, 0.000000e+00
  br i1 %6873, label %6874, label %7268, !dx.controlflow.hints !104

; <label>:6874                                    ; preds = %6870
  %6875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6876 = extractvalue %dx.types.CBufRet.f32 %6875, 0
  %6877 = extractvalue %dx.types.CBufRet.f32 %6875, 1
  %6878 = extractvalue %dx.types.CBufRet.f32 %6875, 2
  %6879 = extractvalue %dx.types.CBufRet.f32 %6875, 3
  %6880 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6881 = extractvalue %dx.types.CBufRet.f32 %6880, 0
  %6882 = extractvalue %dx.types.CBufRet.f32 %6880, 1
  %6883 = extractvalue %dx.types.CBufRet.f32 %6880, 2
  %6884 = extractvalue %dx.types.CBufRet.f32 %6880, 3
  %6885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6886 = extractvalue %dx.types.CBufRet.f32 %6885, 0
  %6887 = extractvalue %dx.types.CBufRet.f32 %6885, 1
  %6888 = extractvalue %dx.types.CBufRet.f32 %6885, 2
  %6889 = extractvalue %dx.types.CBufRet.f32 %6885, 3
  %6890 = fmul fast float %6876, %6722
  %6891 = call float @dx.op.tertiary.f32(i32 46, float %6723, float %6877, float %6890)  ; FMad(a,b,c)
  %6892 = call float @dx.op.tertiary.f32(i32 46, float %6724, float %6878, float %6891)  ; FMad(a,b,c)
  %6893 = fadd fast float %6892, %6879
  %6894 = fmul fast float %6881, %6722
  %6895 = call float @dx.op.tertiary.f32(i32 46, float %6723, float %6882, float %6894)  ; FMad(a,b,c)
  %6896 = call float @dx.op.tertiary.f32(i32 46, float %6724, float %6883, float %6895)  ; FMad(a,b,c)
  %6897 = fadd fast float %6896, %6884
  %6898 = fmul fast float %6886, %6722
  %6899 = call float @dx.op.tertiary.f32(i32 46, float %6723, float %6887, float %6898)  ; FMad(a,b,c)
  %6900 = call float @dx.op.tertiary.f32(i32 46, float %6724, float %6888, float %6899)  ; FMad(a,b,c)
  %6901 = fadd fast float %6900, %6889
  %6902 = fcmp fast oge float %6893, 1.000000e+00
  %6903 = fcmp fast oge float %6897, 1.000000e+00
  %6904 = or i1 %6902, %6903
  %6905 = fcmp fast olt float %6893, 0.000000e+00
  %6906 = fcmp fast olt float %6897, 0.000000e+00
  %6907 = or i1 %6905, %6906
  %6908 = or i1 %6904, %6907
  br i1 %6908, label %7268, label %6909, !dx.controlflow.hints !105

; <label>:6909                                    ; preds = %6874
  %6910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6911 = extractvalue %dx.types.CBufRet.f32 %6910, 0
  %6912 = extractvalue %dx.types.CBufRet.f32 %6910, 1
  %6913 = extractvalue %dx.types.CBufRet.f32 %6910, 2
  %6914 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6915 = extractvalue %dx.types.CBufRet.i32 %6914, 2
  %6916 = uitofp i32 %6915 to float
  %6917 = extractvalue %dx.types.CBufRet.i32 %6914, 3
  %6918 = uitofp i32 %6917 to float
  %6919 = extractvalue %dx.types.CBufRet.f32 %6910, 3
  %6920 = fmul fast float %6919, 2.000000e+00
  %6921 = fsub fast float %6893, %6911
  %6922 = fsub fast float %6897, %6912
  %6923 = fmul fast float %6920, %6921
  %6924 = fmul fast float %6920, %6922
  %6925 = fdiv fast float 1.000000e+00, %6705
  %6926 = fmul fast float %6924, %6925
  %6927 = call float @dx.op.unary.f32(i32 6, float %6926)  ; FAbs(value)
  %6928 = fmul fast float %6913, %6724
  %6929 = fmul fast float %6928, %6920
  %6930 = call float @dx.op.unary.f32(i32 6, float %6929)  ; FAbs(value)
  %6931 = call float @dx.op.unary.f32(i32 6, float %6923)  ; FAbs(value)
  %6932 = call float @dx.op.binary.f32(i32 35, float %6930, float %6927)  ; FMax(a,b)
  %6933 = call float @dx.op.binary.f32(i32 35, float %6931, float %6932)  ; FMax(a,b)
  %6934 = fmul fast float %6933, 2.000000e+00
  %6935 = call float @dx.op.unary.f32(i32 23, float %6934)  ; Log(value)
  %6936 = call float @dx.op.binary.f32(i32 35, float %6935, float %6916)  ; FMax(a,b)
  %6937 = call float @dx.op.unary.f32(i32 22, float %6936)  ; Frc(value)
  %6938 = fadd fast float %6937, 0xBFEA666660000000
  %6939 = fmul fast float %6938, 8.000000e+00
  %6940 = call float @dx.op.unary.f32(i32 7, float %6939)  ; Saturate(value)
  %6941 = call float @dx.op.unary.f32(i32 27, float %6936)  ; Round_ni(value)
  %6942 = fadd fast float %6941, %6940
  %6943 = call float @dx.op.binary.f32(i32 36, float %6942, float %6918)  ; FMin(a,b)
  %6944 = call float @dx.op.unary.f32(i32 27, float %6943)  ; Round_ni(value)
  %6945 = fsub fast float -0.000000e+00, %6944
  %6946 = call float @dx.op.unary.f32(i32 21, float %6945)  ; Exp(value)
  %6947 = fmul fast float %6946, %6920
  %6948 = fmul fast float %6947, %6893
  %6949 = fmul fast float %6947, %6897
  %6950 = fmul fast float %6948, 2.500000e-01
  %6951 = fmul fast float %6949, 2.500000e-01
  %6952 = fadd fast float %6950, 5.000000e-01
  %6953 = fadd fast float %6951, 5.000000e-01
  %6954 = fsub fast float %6918, %6916
  %6955 = fptoui float %6954 to i32
  %6956 = add i32 %6955, 320
  %6957 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 %6956)  ; CBufferLoadLegacy(handle,regIndex)
  %6958 = extractvalue %dx.types.CBufRet.f32 %6957, 0
  %6959 = extractvalue %dx.types.CBufRet.f32 %6957, 1
  %6960 = fcmp fast une float %6943, %6918
  %6961 = fsub fast float %6893, %6958
  %6962 = fsub fast float %6897, %6959
  %6963 = call float @dx.op.unary.f32(i32 6, float %6961)  ; FAbs(value)
  %6964 = call float @dx.op.unary.f32(i32 6, float %6962)  ; FAbs(value)
  %6965 = fmul fast float %6963, %6947
  %6966 = fmul fast float %6964, %6947
  %6967 = fcmp fast olt float %6965, 1.000000e+00
  %6968 = fcmp fast olt float %6966, 1.000000e+00
  %6969 = and i1 %6967, %6968
  %6970 = or i1 %6960, %6969
  br i1 %6970, label %6971, label %7268, !dx.controlflow.hints !106

; <label>:6971                                    ; preds = %6909
  %6972 = fmul fast float %6949, 5.000000e-01
  %6973 = fmul fast float %6948, 5.000000e-01
  %6974 = fadd fast float %6972, 5.000000e-01
  %6975 = fadd fast float %6973, 5.000000e-01
  %6976 = sitofp i32 %6915 to float
  %6977 = fsub fast float %6943, %6976
  %6978 = call float @dx.op.unary.f32(i32 27, float %6977)  ; Round_ni(value)
  %6979 = call float @dx.op.unary.f32(i32 22, float %6943)  ; Frc(value)
  %6980 = call float @dx.op.unary.f32(i32 22, float %6975)  ; Frc(value)
  %6981 = call float @dx.op.unary.f32(i32 22, float %6974)  ; Frc(value)
  %6982 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %53, float %6980, float %6981, float %6978, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6983 = extractvalue %dx.types.ResRet.f32 %6982, 0
  %6984 = extractvalue %dx.types.ResRet.f32 %6982, 1
  %6985 = extractvalue %dx.types.ResRet.f32 %6982, 2
  %6986 = extractvalue %dx.types.ResRet.f32 %6982, 3
  %6987 = fcmp fast ogt float %6979, 0.000000e+00
  br i1 %6987, label %6988, label %7009, !dx.controlflow.hints !107

; <label>:6988                                    ; preds = %6971
  %6989 = fadd fast float %6978, 1.000000e+00
  %6990 = call float @dx.op.unary.f32(i32 22, float %6952)  ; Frc(value)
  %6991 = call float @dx.op.unary.f32(i32 22, float %6953)  ; Frc(value)
  %6992 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %53, float %6990, float %6991, float %6989, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6993 = extractvalue %dx.types.ResRet.f32 %6992, 0
  %6994 = extractvalue %dx.types.ResRet.f32 %6992, 1
  %6995 = extractvalue %dx.types.ResRet.f32 %6992, 2
  %6996 = extractvalue %dx.types.ResRet.f32 %6992, 3
  %6997 = fsub fast float %6993, %6983
  %6998 = fsub fast float %6994, %6984
  %6999 = fsub fast float %6995, %6985
  %7000 = fsub fast float %6996, %6986
  %7001 = fmul fast float %6997, %6979
  %7002 = fmul fast float %6998, %6979
  %7003 = fmul fast float %6999, %6979
  %7004 = fmul fast float %7000, %6979
  %7005 = fadd fast float %7001, %6983
  %7006 = fadd fast float %7002, %6984
  %7007 = fadd fast float %7003, %6985
  %7008 = fadd fast float %7004, %6986
  br label %7009

; <label>:7009                                    ; preds = %6988, %6971
  %7010 = phi float [ %7005, %6988 ], [ %6983, %6971 ]
  %7011 = phi float [ %7006, %6988 ], [ %6984, %6971 ]
  %7012 = phi float [ %7007, %6988 ], [ %6985, %6971 ]
  %7013 = phi float [ %7008, %6988 ], [ %6986, %6971 ]
  %7014 = fadd fast float %7010, -5.000000e-01
  %7015 = fadd fast float %7012, -5.000000e-01
  %7016 = fmul fast float %7014, 0xBFD5555560000000
  %7017 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %7015, float %7016)  ; FMad(a,b,c)
  %7018 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %7011, float 0.000000e+00)  ; FMad(a,b,c)
  %7019 = fadd fast float %7018, %7013
  %7020 = fmul fast float %7014, -7.500000e-01
  %7021 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %7015, float %7020)  ; FMad(a,b,c)
  %7022 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %7011, float 0.000000e+00)  ; FMad(a,b,c)
  %7023 = fadd fast float %7022, %7013
  %7024 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %7025 = extractvalue %dx.types.CBufRet.f32 %7024, 0
  %7026 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %7027 = extractvalue %dx.types.CBufRet.f32 %7026, 0
  %7028 = extractvalue %dx.types.CBufRet.f32 %7026, 1
  %7029 = extractvalue %dx.types.CBufRet.f32 %7026, 2
  %7030 = extractvalue %dx.types.CBufRet.f32 %7026, 3
  %7031 = fsub fast float %7027, %7017
  %7032 = fsub fast float %7028, %7019
  %7033 = fsub fast float %7029, %7021
  %7034 = fsub fast float %7030, %7023
  %7035 = fmul fast float %7031, %7025
  %7036 = fmul fast float %7032, %7025
  %7037 = fmul fast float %7033, %7025
  %7038 = fmul fast float %7034, %7025
  %7039 = fadd fast float %7035, %7017
  %7040 = fadd fast float %7036, %7019
  %7041 = fadd fast float %7037, %7021
  %7042 = fadd fast float %7038, %7023
  %7043 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %7044 = extractvalue %dx.types.ResRet.i32 %7043, 0
  %7045 = and i32 %7044, 536870911
  %7046 = uitofp i32 %7045 to float
  %7047 = fmul fast float %7046, %6893
  %7048 = fmul fast float %7046, %6897
  %7049 = fptoui float %7047 to i32
  %7050 = fptoui float %7048 to i32
  %7051 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %7052 = extractvalue %dx.types.ResRet.i32 %7051, 0
  %7053 = and i32 %7052, 31
  %7054 = lshr i32 %7049, %7053
  %7055 = lshr i32 %7050, %7053
  %7056 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %7057 = extractvalue %dx.types.ResRet.i32 %7056, 0
  %7058 = and i32 %7057, 31
  %7059 = shl i32 1, %7058
  %7060 = call i32 @dx.op.binary.i32(i32 40, i32 %7059, i32 4)  ; UMin(a,b)
  %7061 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %7062 = extractvalue %dx.types.ResRet.i32 %7061, 0
  %7063 = extractvalue %dx.types.ResRet.i32 %7061, 1
  %7064 = icmp eq i32 %7060, 0
  br i1 %7064, label %7106, label %7065

; <label>:7065                                    ; preds = %7009
  br label %7066

; <label>:7066                                    ; preds = %7094, %7065
  %7067 = phi i32 [ %7097, %7094 ], [ 0, %7065 ]
  %7068 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %7069 = extractvalue %dx.types.ResRet.i32 %7068, 0
  %7070 = lshr i32 %7069, 16
  %7071 = and i32 %7070, 31
  %7072 = shl i32 %7055, %7071
  %7073 = add i32 %7072, %7054
  %7074 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %7075 = extractvalue %dx.types.ResRet.i32 %7074, 0
  %7076 = and i32 %7075, 31
  %7077 = shl i32 %7073, %7076
  %7078 = add i32 %7077, %7067
  %7079 = shl i32 %7078, 2
  %7080 = add i32 %7079, 32
  %7081 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7080, i32 undef)  ; BufferLoad(srv,index,wot)
  %7082 = extractvalue %dx.types.ResRet.i32 %7081, 0
  %7083 = icmp slt i32 %7082, 0
  %7084 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 %7067
  %7085 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 %7067
  %7086 = bitcast float* %7084 to i32*
  %7087 = bitcast float* %7085 to i32*
  br i1 %7083, label %7088, label %7094

; <label>:7088                                    ; preds = %7066
  %7089 = and i32 %7082, 1073741823
  %7090 = add nuw nsw i32 %7089, 20
  %7091 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7090, i32 undef)  ; BufferLoad(srv,index,wot)
  %7092 = extractvalue %dx.types.ResRet.i32 %7091, 0
  %7093 = extractvalue %dx.types.ResRet.i32 %7091, 1
  br label %7094

; <label>:7094                                    ; preds = %7088, %7066
  %7095 = phi i32 [ %7092, %7088 ], [ %7062, %7066 ]
  %7096 = phi i32 [ %7093, %7088 ], [ %7063, %7066 ]
  store i32 %7095, i32* %7086, align 4
  store i32 %7096, i32* %7087, align 4
  %7097 = add nuw i32 %7067, 1
  %7098 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %7099 = extractvalue %dx.types.CBufRet.i32 %7098, 2
  %7100 = icmp eq i32 %7099, 0
  %7101 = icmp ugt i32 %7082, -1073741825
  %7102 = and i1 %7101, %7100
  %7103 = icmp ult i32 %7097, %7060
  %7104 = and i1 %7102, %7103
  br i1 %7104, label %7066, label %7105

; <label>:7105                                    ; preds = %7094
  br label %7106

; <label>:7106                                    ; preds = %7105, %7009
  %7107 = phi i32 [ 0, %7009 ], [ %7097, %7105 ]
  %7108 = extractvalue %dx.types.CBufRet.f32 %6871, 2
  %7109 = fptoui float %7108 to i32
  %7110 = icmp eq i32 %7109, 0
  br i1 %7110, label %7162, label %7111

; <label>:7111                                    ; preds = %7106
  br label %7112

; <label>:7112                                    ; preds = %7157, %7111
  %7113 = phi i32 [ %7158, %7157 ], [ %7107, %7111 ]
  %7114 = phi i32 [ %7159, %7157 ], [ 0, %7111 ]
  %7115 = lshr i32 %7114, 2
  %7116 = and i32 %7114, 3
  %7117 = add nuw nsw i32 %7115, 83
  %7118 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 %7117)  ; CBufferLoadLegacy(handle,regIndex)
  %7119 = extractvalue %dx.types.CBufRet.i32 %7118, 0
  %7120 = extractvalue %dx.types.CBufRet.i32 %7118, 1
  %7121 = extractvalue %dx.types.CBufRet.i32 %7118, 2
  %7122 = extractvalue %dx.types.CBufRet.i32 %7118, 3
  %7123 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 0
  store i32 %7119, i32* %7123, align 4
  %7124 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 1
  store i32 %7120, i32* %7124, align 4
  %7125 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 2
  store i32 %7121, i32* %7125, align 4
  %7126 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 3
  store i32 %7122, i32* %7126, align 4
  %7127 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 %7116
  %7128 = load i32, i32* %7127, align 4, !tbaa !108, !noalias !112
  %7129 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %7130 = extractvalue %dx.types.ResRet.i32 %7129, 0
  %7131 = lshr i32 %7130, 16
  %7132 = and i32 %7131, 31
  %7133 = shl i32 %7055, %7132
  %7134 = add i32 %7133, %7054
  %7135 = shl i32 %7134, 2
  %7136 = add i32 %7135, %7128
  %7137 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7136, i32 undef)  ; BufferLoad(srv,index,wot)
  %7138 = extractvalue %dx.types.ResRet.i32 %7137, 0
  %7139 = icmp eq i32 %7138, 0
  br i1 %7139, label %7157, label %7140

; <label>:7140                                    ; preds = %7112
  %7141 = icmp slt i32 %7138, 0
  %7142 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 %7113
  %7143 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 %7113
  %7144 = bitcast float* %7142 to i32*
  %7145 = bitcast float* %7143 to i32*
  br i1 %7141, label %7146, label %7153

; <label>:7146                                    ; preds = %7140
  %7147 = and i32 %7138, 1073741823
  %7148 = add i32 %7128, 20
  %7149 = add i32 %7148, %7147
  %7150 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7149, i32 undef)  ; BufferLoad(srv,index,wot)
  %7151 = extractvalue %dx.types.ResRet.i32 %7150, 0
  %7152 = extractvalue %dx.types.ResRet.i32 %7150, 1
  br label %7153

; <label>:7153                                    ; preds = %7146, %7140
  %7154 = phi i32 [ %7151, %7146 ], [ %7062, %7140 ]
  %7155 = phi i32 [ %7152, %7146 ], [ %7063, %7140 ]
  store i32 %7154, i32* %7144, align 4
  store i32 %7155, i32* %7145, align 4
  %7156 = add i32 %7113, 1
  br label %7157

; <label>:7157                                    ; preds = %7153, %7112
  %7158 = phi i32 [ %7113, %7112 ], [ %7156, %7153 ]
  %7159 = add nuw i32 %7114, 1
  %7160 = icmp eq i32 %7159, %7109
  br i1 %7160, label %7161, label %7112

; <label>:7161                                    ; preds = %7157
  br label %7162

; <label>:7162                                    ; preds = %7161, %7106
  %7163 = phi i32 [ %7107, %7106 ], [ %7158, %7161 ]
  %7164 = icmp eq i32 %7163, 1
  %7165 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 0
  %7166 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 0
  br i1 %7164, label %7167, label %7170

; <label>:7167                                    ; preds = %7162
  %7168 = load float, float* %7165, align 4
  %7169 = load float, float* %7166, align 4
  br label %7197

; <label>:7170                                    ; preds = %7162
  %7171 = load float, float* %7165, align 4
  %7172 = load float, float* %7166, align 4
  %7173 = fdiv fast float 1.000000e+00, %7172
  %7174 = fsub fast float %7171, %7173
  %7175 = icmp ugt i32 %7163, 1
  br i1 %7175, label %7176, label %7192

; <label>:7176                                    ; preds = %7170
  br label %7177

; <label>:7177                                    ; preds = %7177, %7176
  %7178 = phi float [ %7187, %7177 ], [ %7174, %7176 ]
  %7179 = phi float [ %7188, %7177 ], [ %7171, %7176 ]
  %7180 = phi i32 [ %7189, %7177 ], [ 1, %7176 ]
  %7181 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 %7180
  %7182 = load float, float* %7181, align 4
  %7183 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 %7180
  %7184 = load float, float* %7183, align 4
  %7185 = fdiv fast float 1.000000e+00, %7184
  %7186 = fsub fast float %7182, %7185
  %7187 = call float @dx.op.binary.f32(i32 36, float %7178, float %7186)  ; FMin(a,b)
  %7188 = call float @dx.op.binary.f32(i32 35, float %7179, float %7182)  ; FMax(a,b)
  %7189 = add nuw i32 %7180, 1
  %7190 = icmp eq i32 %7189, %7163
  br i1 %7190, label %7191, label %7177

; <label>:7191                                    ; preds = %7177
  br label %7192

; <label>:7192                                    ; preds = %7191, %7170
  %7193 = phi float [ %7174, %7170 ], [ %7187, %7191 ]
  %7194 = phi float [ %7171, %7170 ], [ %7188, %7191 ]
  %7195 = fsub fast float %7194, %7193
  %7196 = fdiv fast float 1.000000e+00, %7195
  br label %7197

; <label>:7197                                    ; preds = %7192, %7167
  %7198 = phi float [ %7168, %7167 ], [ %7194, %7192 ]
  %7199 = phi float [ %7169, %7167 ], [ %7196, %7192 ]
  %7200 = fadd fast float %6901, %7198
  %7201 = fmul fast float %7200, %7199
  %7202 = call float @dx.op.unary.f32(i32 7, float %7201)  ; Saturate(value)
  %7203 = fmul fast float %7202, 2.000000e+00
  %7204 = fsub fast float 1.000000e+00, %7203
  %7205 = fmul fast float %7039, %7039
  %7206 = fsub fast float %7040, %7205
  %7207 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %7206)  ; FMax(a,b)
  %7208 = fdiv fast float 1.000000e+00, %7207
  %7209 = fmul fast float %7040, %7039
  %7210 = fsub fast float %7041, %7209
  %7211 = fsub fast float %7204, %7039
  %7212 = fmul fast float %7204, %7204
  %7213 = fsub fast float %7212, %7040
  %7214 = fmul fast float %7208, %7210
  %7215 = fmul fast float %7214, %7211
  %7216 = fsub fast float %7213, %7215
  %7217 = fmul fast float %7040, %7040
  %7218 = fsub fast float %7042, %7217
  %7219 = fmul fast float %7210, %7210
  %7220 = fmul fast float %7219, %7208
  %7221 = fsub fast float %7218, %7220
  %7222 = fdiv fast float %7216, %7221
  %7223 = fmul fast float %7222, %7210
  %7224 = fsub fast float %7211, %7223
  %7225 = fmul fast float %7224, %7208
  %7226 = fmul fast float %7225, %7039
  %7227 = fsub fast float 1.000000e+00, %7226
  %7228 = fmul fast float %7222, %7040
  %7229 = fsub fast float %7227, %7228
  %7230 = fmul fast float %7225, %7225
  %7231 = fmul fast float %7222, 4.000000e+00
  %7232 = fmul fast float %7231, %7229
  %7233 = fsub fast float %7230, %7232
  %7234 = call float @dx.op.unary.f32(i32 24, float %7233)  ; Sqrt(value)
  %7235 = fcmp fast oge float %7225, 0.000000e+00
  %7236 = fsub fast float -0.000000e+00, %7234
  %7237 = select i1 %7235, float %7236, float %7234
  %7238 = fsub fast float %7237, %7225
  %7239 = fdiv fast float %7238, %7222
  %7240 = fdiv fast float %7229, %7238
  %7241 = fmul fast float %7239, 5.000000e-01
  %7242 = fmul fast float %7240, 2.000000e+00
  %7243 = select i1 %7235, float %7241, float %7242
  %7244 = select i1 %7235, float %7242, float %7241
  %7245 = call float @dx.op.binary.f32(i32 35, float %7243, float %7244)  ; FMax(a,b)
  %7246 = call float @dx.op.binary.f32(i32 36, float %7243, float %7244)  ; FMin(a,b)
  %7247 = fcmp fast ogt float %7204, %7245
  %7248 = fsub fast float %7204, %7246
  %7249 = fsub fast float %7204, %7245
  %7250 = fsub fast float %7245, %7246
  %7251 = select i1 %7247, float %7249, float %7250
  %7252 = fmul float %7248, %7251
  %7253 = select i1 %7247, float %7246, float %7204
  %7254 = fcmp fast ogt float %7204, %7246
  %7255 = fmul fast float %7253, %7245
  %7256 = fadd fast float %7253, %7245
  %7257 = fmul fast float %7256, %7039
  %7258 = fadd fast float %7255, %7040
  %7259 = fsub fast float %7258, %7257
  %7260 = fdiv fast float %7259, %7252
  %7261 = select i1 %7254, float %7260, float 0.000000e+00
  %7262 = fsub fast float 1.000000e+00, %7261
  %7263 = select i1 %7247, float %7262, float %7261
  %7264 = call float @dx.op.unary.f32(i32 7, float %7263)  ; Saturate(value)
  %7265 = extractvalue %dx.types.CBufRet.f32 %7024, 3
  %7266 = fmul fast float %7265, %7264
  %7267 = fsub fast float 1.000000e+00, %7266
  br label %7268

; <label>:7268                                    ; preds = %7197, %6909, %6874, %6870, %6836
  %7269 = phi float [ 1.000000e+00, %6836 ], [ %7267, %7197 ], [ 1.000000e+00, %6874 ], [ 1.000000e+00, %6909 ], [ 1.000000e+00, %6870 ]
  %7270 = fcmp fast ogt float %6866, 0.000000e+00
  br i1 %7270, label %7271, label %7433, !dx.controlflow.hints !121

; <label>:7271                                    ; preds = %7268
  %7272 = fadd fast float %6779, %6753
  %7273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7274 = extractvalue %dx.types.CBufRet.f32 %7273, 2
  %7275 = extractvalue %dx.types.CBufRet.f32 %7273, 3
  %7276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7277 = extractvalue %dx.types.CBufRet.f32 %7276, 2
  %7278 = call float @dx.op.binary.f32(i32 35, float %7272, float 0.000000e+00)  ; FMax(a,b)
  %7279 = fadd fast float %7278, 0x3F10000000000000
  %7280 = fcmp fast oeq float %7277, 0.000000e+00
  br i1 %7280, label %7281, label %7348

; <label>:7281                                    ; preds = %7271
  %7282 = extractvalue %dx.types.CBufRet.f32 %7273, 1
  %7283 = extractvalue %dx.types.CBufRet.f32 %7273, 0
  %7284 = fmul fast float %7283, %6768
  %7285 = fmul fast float %7282, %6769
  %7286 = fadd fast float %7284, 5.000000e-01
  %7287 = call float @dx.op.unary.f32(i32 27, float %7286)  ; Round_ni(value)
  %7288 = fadd fast float %7285, 5.000000e-01
  %7289 = call float @dx.op.unary.f32(i32 27, float %7288)  ; Round_ni(value)
  %7290 = fsub fast float %7286, %7287
  %7291 = fsub fast float %7288, %7289
  %7292 = fadd fast float %7287, -5.000000e-01
  %7293 = fadd fast float %7289, -5.000000e-01
  %7294 = fmul fast float %7290, 2.000000e+00
  %7295 = fsub fast float 3.000000e+00, %7294
  %7296 = fadd fast float %7294, 1.000000e+00
  %7297 = fsub fast float 2.000000e+00, %7290
  %7298 = bitcast float %7295 to i32
  %7299 = sub nsw i32 2129859010, %7298
  %7300 = bitcast i32 %7299 to float
  %7301 = fmul fast float %7300, %7297
  %7302 = fadd fast float %7301, -1.000000e+00
  %7303 = bitcast float %7296 to i32
  %7304 = sub nsw i32 2129859010, %7303
  %7305 = bitcast i32 %7304 to float
  %7306 = fmul fast float %7305, %7290
  %7307 = fadd fast float %7306, 1.000000e+00
  %7308 = fmul fast float %7291, 2.000000e+00
  %7309 = fsub fast float 3.000000e+00, %7308
  %7310 = fadd fast float %7308, 1.000000e+00
  %7311 = fsub fast float 2.000000e+00, %7291
  %7312 = bitcast float %7309 to i32
  %7313 = sub nsw i32 2129859010, %7312
  %7314 = bitcast i32 %7313 to float
  %7315 = fmul fast float %7314, %7311
  %7316 = fadd fast float %7315, -1.000000e+00
  %7317 = bitcast float %7310 to i32
  %7318 = sub nsw i32 2129859010, %7317
  %7319 = bitcast i32 %7318 to float
  %7320 = fmul fast float %7319, %7291
  %7321 = fadd fast float %7320, 1.000000e+00
  %7322 = fadd fast float %7302, %7292
  %7323 = fmul fast float %7322, %7274
  %7324 = fadd fast float %7316, %7293
  %7325 = fmul fast float %7324, %7275
  %7326 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %7323, float %7325, float undef, float undef, i32 0, i32 0, i32 undef, float %7279)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7327 = extractvalue %dx.types.ResRet.f32 %7326, 0
  %7328 = fmul fast float %7327, %7295
  %7329 = fadd fast float %7307, %7292
  %7330 = fmul fast float %7329, %7274
  %7331 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %7330, float %7325, float undef, float undef, i32 0, i32 0, i32 undef, float %7279)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7332 = extractvalue %dx.types.ResRet.f32 %7331, 0
  %7333 = fmul fast float %7332, %7296
  %7334 = fadd fast float %7321, %7293
  %7335 = fmul fast float %7334, %7275
  %7336 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %7323, float %7335, float undef, float undef, i32 0, i32 0, i32 undef, float %7279)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7337 = extractvalue %dx.types.ResRet.f32 %7336, 0
  %7338 = fmul fast float %7337, %7295
  %7339 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %7330, float %7335, float undef, float undef, i32 0, i32 0, i32 undef, float %7279)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7340 = extractvalue %dx.types.ResRet.f32 %7339, 0
  %7341 = fmul fast float %7340, %7296
  %7342 = fadd fast float %7341, %7338
  %7343 = fmul fast float %7342, %7310
  %7344 = fadd fast float %7333, %7328
  %7345 = fmul fast float %7344, %7309
  %7346 = fadd fast float %7345, %7343
  %7347 = fmul fast float %7346, 6.250000e-02
  br label %7433

; <label>:7348                                    ; preds = %7271
  %7349 = fmul fast float %269, 0x401921FB60000000
  %7350 = call float @dx.op.unary.f32(i32 13, float %7349)  ; Sin(value)
  %7351 = call float @dx.op.unary.f32(i32 12, float %7349)  ; Cos(value)
  %7352 = fsub fast float -0.000000e+00, %7350
  br label %7353

; <label>:7353                                    ; preds = %7402, %7348
  %7354 = phi float [ 0.000000e+00, %7348 ], [ %7397, %7402 ]
  %7355 = phi float [ 0.000000e+00, %7348 ], [ %7399, %7402 ]
  %7356 = phi i32 [ 0, %7348 ], [ %7403, %7402 ]
  %7357 = mul i32 %7356, 2
  %7358 = add i32 0, %7357
  %7359 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7358
  %7360 = load float, float* %7359, align 4
  %7361 = mul i32 %7356, 2
  %7362 = add i32 1, %7361
  %7363 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7362
  %7364 = load float, float* %7363, align 4
  %7365 = fmul fast float %7360, %7351
  %7366 = call float @dx.op.tertiary.f32(i32 46, float %7364, float %7352, float %7365)  ; FMad(a,b,c)
  %7367 = fmul fast float %7360, %7350
  %7368 = call float @dx.op.tertiary.f32(i32 46, float %7364, float %7351, float %7367)  ; FMad(a,b,c)
  %7369 = fmul fast float %7366, %7277
  %7370 = fmul fast float %7368, %7277
  %7371 = fadd fast float %7369, %6768
  %7372 = fadd fast float %7370, %6769
  %7373 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %55, float %7371, float %7372, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7374 = extractvalue %dx.types.ResRet.f32 %7373, 0
  %7375 = extractvalue %dx.types.ResRet.f32 %7373, 1
  %7376 = extractvalue %dx.types.ResRet.f32 %7373, 2
  %7377 = extractvalue %dx.types.ResRet.f32 %7373, 3
  %7378 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 0
  store float %7374, float* %7378, align 4
  %7379 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 1
  store float %7375, float* %7379, align 4
  %7380 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 2
  store float %7376, float* %7380, align 4
  %7381 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 3
  store float %7377, float* %7381, align 4
  %7382 = fsub fast float %7374, %7279
  %7383 = fcmp fast olt float %7382, 0.000000e+00
  %7384 = select i1 %7383, float 0.000000e+00, float 1.000000e+00
  %7385 = fadd fast float %7384, %7354
  %7386 = fmul fast float %7384, %7382
  %7387 = fadd fast float %7386, %7355
  br label %7388

; <label>:7388                                    ; preds = %7388, %7353
  %7389 = phi i32 [ 1, %7353 ], [ %7400, %7388 ]
  %7390 = phi float [ %7387, %7353 ], [ %7399, %7388 ]
  %7391 = phi float [ %7385, %7353 ], [ %7397, %7388 ]
  %7392 = getelementptr [4 x float], [4 x float]* %102, i32 0, i32 %7389
  %7393 = load float, float* %7392, align 4, !tbaa !122, !noalias !112
  %7394 = fsub fast float %7393, %7279
  %7395 = fcmp fast olt float %7394, 0.000000e+00
  %7396 = select i1 %7395, float 0.000000e+00, float 1.000000e+00
  %7397 = fadd fast float %7396, %7391
  %7398 = fmul fast float %7396, %7394
  %7399 = fadd fast float %7398, %7390
  %7400 = add nuw nsw i32 %7389, 1
  %7401 = icmp eq i32 %7400, 4
  br i1 %7401, label %7402, label %7388, !llvm.loop !124

; <label>:7402                                    ; preds = %7388
  %7403 = add nuw nsw i32 %7356, 1
  %7404 = icmp eq i32 %7403, 8
  br i1 %7404, label %7405, label %7353, !llvm.loop !125

; <label>:7405                                    ; preds = %7402
  %7406 = fdiv fast float 1.000000e+00, %7397
  %7407 = fmul fast float %7406, %7399
  %7408 = fdiv fast float 1.000000e+00, %7279
  %7409 = fmul fast float %7407, %7408
  %7410 = call float @dx.op.unary.f32(i32 7, float %7409)  ; Saturate(value)
  %7411 = call float @dx.op.binary.f32(i32 35, float %7410, float 0.000000e+00)  ; FMax(a,b)
  %7412 = fmul fast float %7397, 3.125000e-02
  %7413 = call float @dx.op.unary.f32(i32 7, float %7412)  ; Saturate(value)
  %7414 = fmul fast float %7413, 2.000000e+00
  %7415 = fadd fast float %7414, -1.000000e+00
  %7416 = fcmp fast ogt float %7415, 0.000000e+00
  %7417 = fcmp fast olt float %7415, 0.000000e+00
  %7418 = zext i1 %7416 to i32
  %7419 = zext i1 %7417 to i32
  %7420 = sub nsw i32 %7418, %7419
  %7421 = sitofp i32 %7420 to float
  %7422 = fmul fast float %7421, %7415
  %7423 = fsub fast float 1.000000e+00, %7422
  %7424 = fmul fast float %7423, %7423
  %7425 = fmul fast float %7424, %7423
  %7426 = fsub fast float %7423, %7425
  %7427 = fmul fast float %7426, %7411
  %7428 = fsub fast float 1.000000e+00, %7425
  %7429 = fsub fast float %7428, %7427
  %7430 = fmul fast float %7421, 5.000000e-01
  %7431 = fmul fast float %7430, %7429
  %7432 = fsub fast float 5.000000e-01, %7431
  br label %7433

; <label>:7433                                    ; preds = %7405, %7281, %7268
  %7434 = phi float [ 1.000000e+00, %7268 ], [ %7347, %7281 ], [ %7432, %7405 ]
  %7435 = fcmp fast ogt float %6864, 0.000000e+00
  br i1 %7435, label %7436, label %7600, !dx.controlflow.hints !126

; <label>:7436                                    ; preds = %7433
  %7437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7438 = extractvalue %dx.types.CBufRet.f32 %7437, 1
  %7439 = fadd fast float %7438, %6753
  %7440 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7441 = extractvalue %dx.types.CBufRet.f32 %7440, 2
  %7442 = extractvalue %dx.types.CBufRet.f32 %7440, 3
  %7443 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7444 = extractvalue %dx.types.CBufRet.f32 %7443, 1
  %7445 = call float @dx.op.binary.f32(i32 35, float %7439, float 0.000000e+00)  ; FMax(a,b)
  %7446 = fadd fast float %7445, 0x3F10000000000000
  %7447 = fcmp fast oeq float %7444, 0.000000e+00
  br i1 %7447, label %7448, label %7515

; <label>:7448                                    ; preds = %7436
  %7449 = extractvalue %dx.types.CBufRet.f32 %7440, 1
  %7450 = extractvalue %dx.types.CBufRet.f32 %7440, 0
  %7451 = fmul fast float %7450, %6760
  %7452 = fmul fast float %7449, %6761
  %7453 = fadd fast float %7451, 5.000000e-01
  %7454 = call float @dx.op.unary.f32(i32 27, float %7453)  ; Round_ni(value)
  %7455 = fadd fast float %7452, 5.000000e-01
  %7456 = call float @dx.op.unary.f32(i32 27, float %7455)  ; Round_ni(value)
  %7457 = fsub fast float %7453, %7454
  %7458 = fsub fast float %7455, %7456
  %7459 = fadd fast float %7454, -5.000000e-01
  %7460 = fadd fast float %7456, -5.000000e-01
  %7461 = fmul fast float %7457, 2.000000e+00
  %7462 = fsub fast float 3.000000e+00, %7461
  %7463 = fadd fast float %7461, 1.000000e+00
  %7464 = fsub fast float 2.000000e+00, %7457
  %7465 = bitcast float %7462 to i32
  %7466 = sub nsw i32 2129859010, %7465
  %7467 = bitcast i32 %7466 to float
  %7468 = fmul fast float %7467, %7464
  %7469 = fadd fast float %7468, -1.000000e+00
  %7470 = bitcast float %7463 to i32
  %7471 = sub nsw i32 2129859010, %7470
  %7472 = bitcast i32 %7471 to float
  %7473 = fmul fast float %7472, %7457
  %7474 = fadd fast float %7473, 1.000000e+00
  %7475 = fmul fast float %7458, 2.000000e+00
  %7476 = fsub fast float 3.000000e+00, %7475
  %7477 = fadd fast float %7475, 1.000000e+00
  %7478 = fsub fast float 2.000000e+00, %7458
  %7479 = bitcast float %7476 to i32
  %7480 = sub nsw i32 2129859010, %7479
  %7481 = bitcast i32 %7480 to float
  %7482 = fmul fast float %7481, %7478
  %7483 = fadd fast float %7482, -1.000000e+00
  %7484 = bitcast float %7477 to i32
  %7485 = sub nsw i32 2129859010, %7484
  %7486 = bitcast i32 %7485 to float
  %7487 = fmul fast float %7486, %7458
  %7488 = fadd fast float %7487, 1.000000e+00
  %7489 = fadd fast float %7469, %7459
  %7490 = fmul fast float %7489, %7441
  %7491 = fadd fast float %7483, %7460
  %7492 = fmul fast float %7491, %7442
  %7493 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %7490, float %7492, float undef, float undef, i32 0, i32 0, i32 undef, float %7446)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7494 = extractvalue %dx.types.ResRet.f32 %7493, 0
  %7495 = fmul fast float %7494, %7462
  %7496 = fadd fast float %7474, %7459
  %7497 = fmul fast float %7496, %7441
  %7498 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %7497, float %7492, float undef, float undef, i32 0, i32 0, i32 undef, float %7446)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7499 = extractvalue %dx.types.ResRet.f32 %7498, 0
  %7500 = fmul fast float %7499, %7463
  %7501 = fadd fast float %7488, %7460
  %7502 = fmul fast float %7501, %7442
  %7503 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %7490, float %7502, float undef, float undef, i32 0, i32 0, i32 undef, float %7446)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7504 = extractvalue %dx.types.ResRet.f32 %7503, 0
  %7505 = fmul fast float %7504, %7462
  %7506 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %7497, float %7502, float undef, float undef, i32 0, i32 0, i32 undef, float %7446)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7507 = extractvalue %dx.types.ResRet.f32 %7506, 0
  %7508 = fmul fast float %7507, %7463
  %7509 = fadd fast float %7508, %7505
  %7510 = fmul fast float %7509, %7477
  %7511 = fadd fast float %7500, %7495
  %7512 = fmul fast float %7511, %7476
  %7513 = fadd fast float %7512, %7510
  %7514 = fmul fast float %7513, 6.250000e-02
  br label %7600

; <label>:7515                                    ; preds = %7436
  %7516 = fmul fast float %269, 0x401921FB60000000
  %7517 = call float @dx.op.unary.f32(i32 13, float %7516)  ; Sin(value)
  %7518 = call float @dx.op.unary.f32(i32 12, float %7516)  ; Cos(value)
  %7519 = fsub fast float -0.000000e+00, %7517
  br label %7520

; <label>:7520                                    ; preds = %7569, %7515
  %7521 = phi float [ 0.000000e+00, %7515 ], [ %7564, %7569 ]
  %7522 = phi float [ 0.000000e+00, %7515 ], [ %7566, %7569 ]
  %7523 = phi i32 [ 0, %7515 ], [ %7570, %7569 ]
  %7524 = mul i32 %7523, 2
  %7525 = add i32 0, %7524
  %7526 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7525
  %7527 = load float, float* %7526, align 4
  %7528 = mul i32 %7523, 2
  %7529 = add i32 1, %7528
  %7530 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7529
  %7531 = load float, float* %7530, align 4
  %7532 = fmul fast float %7527, %7518
  %7533 = call float @dx.op.tertiary.f32(i32 46, float %7531, float %7519, float %7532)  ; FMad(a,b,c)
  %7534 = fmul fast float %7527, %7517
  %7535 = call float @dx.op.tertiary.f32(i32 46, float %7531, float %7518, float %7534)  ; FMad(a,b,c)
  %7536 = fmul fast float %7533, %7444
  %7537 = fmul fast float %7535, %7444
  %7538 = fadd fast float %7536, %6760
  %7539 = fadd fast float %7537, %6761
  %7540 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %55, float %7538, float %7539, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7541 = extractvalue %dx.types.ResRet.f32 %7540, 0
  %7542 = extractvalue %dx.types.ResRet.f32 %7540, 1
  %7543 = extractvalue %dx.types.ResRet.f32 %7540, 2
  %7544 = extractvalue %dx.types.ResRet.f32 %7540, 3
  %7545 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 0
  store float %7541, float* %7545, align 4
  %7546 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 1
  store float %7542, float* %7546, align 4
  %7547 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 2
  store float %7543, float* %7547, align 4
  %7548 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 3
  store float %7544, float* %7548, align 4
  %7549 = fsub fast float %7541, %7446
  %7550 = fcmp fast olt float %7549, 0.000000e+00
  %7551 = select i1 %7550, float 0.000000e+00, float 1.000000e+00
  %7552 = fadd fast float %7551, %7521
  %7553 = fmul fast float %7551, %7549
  %7554 = fadd fast float %7553, %7522
  br label %7555

; <label>:7555                                    ; preds = %7555, %7520
  %7556 = phi i32 [ 1, %7520 ], [ %7567, %7555 ]
  %7557 = phi float [ %7554, %7520 ], [ %7566, %7555 ]
  %7558 = phi float [ %7552, %7520 ], [ %7564, %7555 ]
  %7559 = getelementptr [4 x float], [4 x float]* %101, i32 0, i32 %7556
  %7560 = load float, float* %7559, align 4, !tbaa !122, !noalias !112
  %7561 = fsub fast float %7560, %7446
  %7562 = fcmp fast olt float %7561, 0.000000e+00
  %7563 = select i1 %7562, float 0.000000e+00, float 1.000000e+00
  %7564 = fadd fast float %7563, %7558
  %7565 = fmul fast float %7563, %7561
  %7566 = fadd fast float %7565, %7557
  %7567 = add nuw nsw i32 %7556, 1
  %7568 = icmp eq i32 %7567, 4
  br i1 %7568, label %7569, label %7555, !llvm.loop !124

; <label>:7569                                    ; preds = %7555
  %7570 = add nuw nsw i32 %7523, 1
  %7571 = icmp eq i32 %7570, 8
  br i1 %7571, label %7572, label %7520, !llvm.loop !125

; <label>:7572                                    ; preds = %7569
  %7573 = fdiv fast float 1.000000e+00, %7564
  %7574 = fmul fast float %7573, %7566
  %7575 = fdiv fast float 1.000000e+00, %7446
  %7576 = fmul fast float %7574, %7575
  %7577 = call float @dx.op.unary.f32(i32 7, float %7576)  ; Saturate(value)
  %7578 = call float @dx.op.binary.f32(i32 35, float %7577, float 0.000000e+00)  ; FMax(a,b)
  %7579 = fmul fast float %7564, 3.125000e-02
  %7580 = call float @dx.op.unary.f32(i32 7, float %7579)  ; Saturate(value)
  %7581 = fmul fast float %7580, 2.000000e+00
  %7582 = fadd fast float %7581, -1.000000e+00
  %7583 = fcmp fast ogt float %7582, 0.000000e+00
  %7584 = fcmp fast olt float %7582, 0.000000e+00
  %7585 = zext i1 %7583 to i32
  %7586 = zext i1 %7584 to i32
  %7587 = sub nsw i32 %7585, %7586
  %7588 = sitofp i32 %7587 to float
  %7589 = fmul fast float %7588, %7582
  %7590 = fsub fast float 1.000000e+00, %7589
  %7591 = fmul fast float %7590, %7590
  %7592 = fmul fast float %7591, %7590
  %7593 = fsub fast float %7590, %7592
  %7594 = fmul fast float %7593, %7578
  %7595 = fsub fast float 1.000000e+00, %7592
  %7596 = fsub fast float %7595, %7594
  %7597 = fmul fast float %7588, 5.000000e-01
  %7598 = fmul fast float %7597, %7596
  %7599 = fsub fast float 5.000000e-01, %7598
  br label %7600

; <label>:7600                                    ; preds = %7572, %7448, %7433
  %7601 = phi float [ 1.000000e+00, %7433 ], [ %7514, %7448 ], [ %7599, %7572 ]
  %7602 = fcmp fast ogt float %6863, 0.000000e+00
  br i1 %7602, label %7603, label %7767, !dx.controlflow.hints !127

; <label>:7603                                    ; preds = %7600
  %7604 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7605 = extractvalue %dx.types.CBufRet.f32 %7604, 0
  %7606 = fadd fast float %7605, %6753
  %7607 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7608 = extractvalue %dx.types.CBufRet.f32 %7607, 2
  %7609 = extractvalue %dx.types.CBufRet.f32 %7607, 3
  %7610 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7611 = extractvalue %dx.types.CBufRet.f32 %7610, 0
  %7612 = call float @dx.op.binary.f32(i32 35, float %7606, float 0.000000e+00)  ; FMax(a,b)
  %7613 = fadd fast float %7612, 0x3F10000000000000
  %7614 = fcmp fast oeq float %7611, 0.000000e+00
  br i1 %7614, label %7615, label %7682

; <label>:7615                                    ; preds = %7603
  %7616 = extractvalue %dx.types.CBufRet.f32 %7607, 1
  %7617 = extractvalue %dx.types.CBufRet.f32 %7607, 0
  %7618 = fmul fast float %7617, %6745
  %7619 = fmul fast float %7616, %6749
  %7620 = fadd fast float %7618, 5.000000e-01
  %7621 = call float @dx.op.unary.f32(i32 27, float %7620)  ; Round_ni(value)
  %7622 = fadd fast float %7619, 5.000000e-01
  %7623 = call float @dx.op.unary.f32(i32 27, float %7622)  ; Round_ni(value)
  %7624 = fsub fast float %7620, %7621
  %7625 = fsub fast float %7622, %7623
  %7626 = fadd fast float %7621, -5.000000e-01
  %7627 = fadd fast float %7623, -5.000000e-01
  %7628 = fmul fast float %7624, 2.000000e+00
  %7629 = fsub fast float 3.000000e+00, %7628
  %7630 = fadd fast float %7628, 1.000000e+00
  %7631 = fsub fast float 2.000000e+00, %7624
  %7632 = bitcast float %7629 to i32
  %7633 = sub nsw i32 2129859010, %7632
  %7634 = bitcast i32 %7633 to float
  %7635 = fmul fast float %7634, %7631
  %7636 = fadd fast float %7635, -1.000000e+00
  %7637 = bitcast float %7630 to i32
  %7638 = sub nsw i32 2129859010, %7637
  %7639 = bitcast i32 %7638 to float
  %7640 = fmul fast float %7639, %7624
  %7641 = fadd fast float %7640, 1.000000e+00
  %7642 = fmul fast float %7625, 2.000000e+00
  %7643 = fsub fast float 3.000000e+00, %7642
  %7644 = fadd fast float %7642, 1.000000e+00
  %7645 = fsub fast float 2.000000e+00, %7625
  %7646 = bitcast float %7643 to i32
  %7647 = sub nsw i32 2129859010, %7646
  %7648 = bitcast i32 %7647 to float
  %7649 = fmul fast float %7648, %7645
  %7650 = fadd fast float %7649, -1.000000e+00
  %7651 = bitcast float %7644 to i32
  %7652 = sub nsw i32 2129859010, %7651
  %7653 = bitcast i32 %7652 to float
  %7654 = fmul fast float %7653, %7625
  %7655 = fadd fast float %7654, 1.000000e+00
  %7656 = fadd fast float %7636, %7626
  %7657 = fmul fast float %7656, %7608
  %7658 = fadd fast float %7650, %7627
  %7659 = fmul fast float %7658, %7609
  %7660 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7657, float %7659, float undef, float undef, i32 0, i32 0, i32 undef, float %7613)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7661 = extractvalue %dx.types.ResRet.f32 %7660, 0
  %7662 = fmul fast float %7661, %7629
  %7663 = fadd fast float %7641, %7626
  %7664 = fmul fast float %7663, %7608
  %7665 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7664, float %7659, float undef, float undef, i32 0, i32 0, i32 undef, float %7613)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7666 = extractvalue %dx.types.ResRet.f32 %7665, 0
  %7667 = fmul fast float %7666, %7630
  %7668 = fadd fast float %7655, %7627
  %7669 = fmul fast float %7668, %7609
  %7670 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7657, float %7669, float undef, float undef, i32 0, i32 0, i32 undef, float %7613)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7671 = extractvalue %dx.types.ResRet.f32 %7670, 0
  %7672 = fmul fast float %7671, %7629
  %7673 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7664, float %7669, float undef, float undef, i32 0, i32 0, i32 undef, float %7613)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7674 = extractvalue %dx.types.ResRet.f32 %7673, 0
  %7675 = fmul fast float %7674, %7630
  %7676 = fadd fast float %7675, %7672
  %7677 = fmul fast float %7676, %7644
  %7678 = fadd fast float %7667, %7662
  %7679 = fmul fast float %7678, %7643
  %7680 = fadd fast float %7679, %7677
  %7681 = fmul fast float %7680, 6.250000e-02
  br label %7767

; <label>:7682                                    ; preds = %7603
  %7683 = fmul fast float %269, 0x401921FB60000000
  %7684 = call float @dx.op.unary.f32(i32 13, float %7683)  ; Sin(value)
  %7685 = call float @dx.op.unary.f32(i32 12, float %7683)  ; Cos(value)
  %7686 = fsub fast float -0.000000e+00, %7684
  br label %7687

; <label>:7687                                    ; preds = %7736, %7682
  %7688 = phi float [ 0.000000e+00, %7682 ], [ %7731, %7736 ]
  %7689 = phi float [ 0.000000e+00, %7682 ], [ %7733, %7736 ]
  %7690 = phi i32 [ 0, %7682 ], [ %7737, %7736 ]
  %7691 = mul i32 %7690, 2
  %7692 = add i32 0, %7691
  %7693 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7692
  %7694 = load float, float* %7693, align 4
  %7695 = mul i32 %7690, 2
  %7696 = add i32 1, %7695
  %7697 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7696
  %7698 = load float, float* %7697, align 4
  %7699 = fmul fast float %7694, %7685
  %7700 = call float @dx.op.tertiary.f32(i32 46, float %7698, float %7686, float %7699)  ; FMad(a,b,c)
  %7701 = fmul fast float %7694, %7684
  %7702 = call float @dx.op.tertiary.f32(i32 46, float %7698, float %7685, float %7701)  ; FMad(a,b,c)
  %7703 = fmul fast float %7700, %7611
  %7704 = fmul fast float %7702, %7611
  %7705 = fadd fast float %7703, %6745
  %7706 = fadd fast float %7704, %6749
  %7707 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %55, float %7705, float %7706, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7708 = extractvalue %dx.types.ResRet.f32 %7707, 0
  %7709 = extractvalue %dx.types.ResRet.f32 %7707, 1
  %7710 = extractvalue %dx.types.ResRet.f32 %7707, 2
  %7711 = extractvalue %dx.types.ResRet.f32 %7707, 3
  %7712 = getelementptr inbounds [4 x float], [4 x float]* %100, i32 0, i32 0
  store float %7708, float* %7712, align 4
  %7713 = getelementptr inbounds [4 x float], [4 x float]* %100, i32 0, i32 1
  store float %7709, float* %7713, align 4
  %7714 = getelementptr inbounds [4 x float], [4 x float]* %100, i32 0, i32 2
  store float %7710, float* %7714, align 4
  %7715 = getelementptr inbounds [4 x float], [4 x float]* %100, i32 0, i32 3
  store float %7711, float* %7715, align 4
  %7716 = fsub fast float %7708, %7613
  %7717 = fcmp fast olt float %7716, 0.000000e+00
  %7718 = select i1 %7717, float 0.000000e+00, float 1.000000e+00
  %7719 = fadd fast float %7718, %7688
  %7720 = fmul fast float %7718, %7716
  %7721 = fadd fast float %7720, %7689
  br label %7722

; <label>:7722                                    ; preds = %7722, %7687
  %7723 = phi i32 [ 1, %7687 ], [ %7734, %7722 ]
  %7724 = phi float [ %7721, %7687 ], [ %7733, %7722 ]
  %7725 = phi float [ %7719, %7687 ], [ %7731, %7722 ]
  %7726 = getelementptr [4 x float], [4 x float]* %100, i32 0, i32 %7723
  %7727 = load float, float* %7726, align 4, !tbaa !122, !noalias !112
  %7728 = fsub fast float %7727, %7613
  %7729 = fcmp fast olt float %7728, 0.000000e+00
  %7730 = select i1 %7729, float 0.000000e+00, float 1.000000e+00
  %7731 = fadd fast float %7730, %7725
  %7732 = fmul fast float %7730, %7728
  %7733 = fadd fast float %7732, %7724
  %7734 = add nuw nsw i32 %7723, 1
  %7735 = icmp eq i32 %7734, 4
  br i1 %7735, label %7736, label %7722, !llvm.loop !124

; <label>:7736                                    ; preds = %7722
  %7737 = add nuw nsw i32 %7690, 1
  %7738 = icmp eq i32 %7737, 8
  br i1 %7738, label %7739, label %7687, !llvm.loop !125

; <label>:7739                                    ; preds = %7736
  %7740 = fdiv fast float 1.000000e+00, %7731
  %7741 = fmul fast float %7740, %7733
  %7742 = fdiv fast float 1.000000e+00, %7613
  %7743 = fmul fast float %7741, %7742
  %7744 = call float @dx.op.unary.f32(i32 7, float %7743)  ; Saturate(value)
  %7745 = call float @dx.op.binary.f32(i32 35, float %7744, float 0.000000e+00)  ; FMax(a,b)
  %7746 = fmul fast float %7731, 3.125000e-02
  %7747 = call float @dx.op.unary.f32(i32 7, float %7746)  ; Saturate(value)
  %7748 = fmul fast float %7747, 2.000000e+00
  %7749 = fadd fast float %7748, -1.000000e+00
  %7750 = fcmp fast ogt float %7749, 0.000000e+00
  %7751 = fcmp fast olt float %7749, 0.000000e+00
  %7752 = zext i1 %7750 to i32
  %7753 = zext i1 %7751 to i32
  %7754 = sub nsw i32 %7752, %7753
  %7755 = sitofp i32 %7754 to float
  %7756 = fmul fast float %7755, %7749
  %7757 = fsub fast float 1.000000e+00, %7756
  %7758 = fmul fast float %7757, %7757
  %7759 = fmul fast float %7758, %7757
  %7760 = fsub fast float %7757, %7759
  %7761 = fmul fast float %7760, %7745
  %7762 = fsub fast float 1.000000e+00, %7759
  %7763 = fsub fast float %7762, %7761
  %7764 = fmul fast float %7755, 5.000000e-01
  %7765 = fmul fast float %7764, %7763
  %7766 = fsub fast float 5.000000e-01, %7765
  br label %7767

; <label>:7767                                    ; preds = %7739, %7615, %7600
  %7768 = phi float [ 1.000000e+00, %7600 ], [ %7681, %7615 ], [ %7766, %7739 ]
  %7769 = fsub fast float %7434, %7269
  %7770 = fmul fast float %7769, %6807
  %7771 = fadd fast float %7770, %7269
  %7772 = fsub fast float %7601, %7771
  %7773 = fmul fast float %7772, %6837
  %7774 = fadd fast float %7773, %7771
  %7775 = fsub fast float %7768, %7774
  %7776 = fmul fast float %7775, %6863
  %7777 = fadd fast float %7776, %7774
  %7778 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %7779 = extractvalue %dx.types.CBufRet.f32 %7778, 2
  %7780 = fcmp fast ogt float %7779, 0.000000e+00
  br i1 %7780, label %7781, label %7821, !dx.controlflow.hints !128

; <label>:7781                                    ; preds = %7767
  %7782 = fcmp fast ugt float %7779, 0.000000e+00
  br i1 %7782, label %7783, label %7818

; <label>:7783                                    ; preds = %7781
  %7784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %7785 = extractvalue %dx.types.CBufRet.f32 %7784, 0
  %7786 = extractvalue %dx.types.CBufRet.f32 %7784, 1
  %7787 = extractvalue %dx.types.CBufRet.f32 %7784, 2
  %7788 = extractvalue %dx.types.CBufRet.f32 %7784, 3
  %7789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %7790 = extractvalue %dx.types.CBufRet.f32 %7789, 0
  %7791 = extractvalue %dx.types.CBufRet.f32 %7789, 1
  %7792 = extractvalue %dx.types.CBufRet.f32 %7789, 2
  %7793 = extractvalue %dx.types.CBufRet.f32 %7789, 3
  %7794 = extractvalue %dx.types.CBufRet.f32 %7778, 0
  %7795 = extractvalue %dx.types.CBufRet.f32 %7778, 1
  %7796 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %7797 = extractvalue %dx.types.CBufRet.f32 %7796, 0
  %7798 = extractvalue %dx.types.CBufRet.f32 %7796, 1
  %7799 = extractvalue %dx.types.CBufRet.f32 %7796, 2
  %7800 = fadd fast float %7797, %6722
  %7801 = fadd fast float %7798, %6723
  %7802 = fadd fast float %7799, %6724
  %7803 = fmul fast float %7800, %7785
  %7804 = call float @dx.op.tertiary.f32(i32 46, float %7786, float %7801, float %7803)  ; FMad(a,b,c)
  %7805 = call float @dx.op.tertiary.f32(i32 46, float %7787, float %7802, float %7804)  ; FMad(a,b,c)
  %7806 = fadd fast float %7805, %7788
  %7807 = fmul fast float %7800, %7790
  %7808 = call float @dx.op.tertiary.f32(i32 46, float %7791, float %7801, float %7807)  ; FMad(a,b,c)
  %7809 = call float @dx.op.tertiary.f32(i32 46, float %7792, float %7802, float %7808)  ; FMad(a,b,c)
  %7810 = fadd fast float %7809, %7793
  %7811 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %51, float %7806, float %7810, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %7812 = extractvalue %dx.types.ResRet.f32 %7811, 0
  %7813 = fmul fast float %7812, %7795
  %7814 = fadd fast float %7813, %7794
  %7815 = call float @dx.op.unary.f32(i32 7, float %7814)  ; Saturate(value)
  %7816 = fmul fast float %7815, %7779
  %7817 = fsub fast float 1.000000e+00, %7816
  br label %7818

; <label>:7818                                    ; preds = %7783, %7781
  %7819 = phi float [ %7817, %7783 ], [ 1.000000e+00, %7781 ]
  %7820 = fmul fast float %7819, %7777
  br label %7821

; <label>:7821                                    ; preds = %7818, %7767, %6702
  %7822 = phi float [ 1.000000e+00, %6702 ], [ %7820, %7818 ], [ %7777, %7767 ]
  %7823 = call float @dx.op.binary.f32(i32 36, float %7822, float %7822)  ; FMin(a,b)
  %7824 = call float @dx.op.binary.f32(i32 36, float %7822, float %7823)  ; FMin(a,b)
  %7825 = fcmp fast ogt float %7824, 0.000000e+00
  br i1 %7825, label %7826, label %7991, !dx.controlflow.hints !129

; <label>:7826                                    ; preds = %7821
  %7827 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7828 = extractvalue %dx.types.CBufRet.f32 %7827, 0
  %7829 = extractvalue %dx.types.CBufRet.f32 %7827, 1
  %7830 = extractvalue %dx.types.CBufRet.f32 %7827, 2
  %7831 = extractvalue %dx.types.CBufRet.f32 %7827, 3
  %7832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7833 = extractvalue %dx.types.CBufRet.f32 %7832, 0
  %7834 = extractvalue %dx.types.CBufRet.f32 %7832, 1
  %7835 = extractvalue %dx.types.CBufRet.f32 %7832, 2
  %7836 = extractvalue %dx.types.CBufRet.f32 %7832, 3
  %7837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7838 = extractvalue %dx.types.CBufRet.f32 %7837, 0
  %7839 = extractvalue %dx.types.CBufRet.f32 %7837, 1
  %7840 = extractvalue %dx.types.CBufRet.f32 %7837, 2
  %7841 = extractvalue %dx.types.CBufRet.f32 %7837, 3
  %7842 = fmul fast float %7828, %6722
  %7843 = call float @dx.op.tertiary.f32(i32 46, float %6723, float %7829, float %7842)  ; FMad(a,b,c)
  %7844 = call float @dx.op.tertiary.f32(i32 46, float %6724, float %7830, float %7843)  ; FMad(a,b,c)
  %7845 = fadd fast float %7844, %7831
  %7846 = fmul fast float %7833, %6722
  %7847 = call float @dx.op.tertiary.f32(i32 46, float %6723, float %7834, float %7846)  ; FMad(a,b,c)
  %7848 = call float @dx.op.tertiary.f32(i32 46, float %6724, float %7835, float %7847)  ; FMad(a,b,c)
  %7849 = fadd fast float %7848, %7836
  %7850 = fmul fast float %7838, %6722
  %7851 = call float @dx.op.tertiary.f32(i32 46, float %6723, float %7839, float %7850)  ; FMad(a,b,c)
  %7852 = call float @dx.op.tertiary.f32(i32 46, float %6724, float %7840, float %7851)  ; FMad(a,b,c)
  %7853 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %7854 = extractvalue %dx.types.CBufRet.f32 %7853, 0
  %7855 = extractvalue %dx.types.CBufRet.f32 %7853, 1
  %7856 = extractvalue %dx.types.CBufRet.f32 %7853, 3
  %7857 = fmul fast float %7856, %7845
  %7858 = fmul fast float %7856, %7849
  %7859 = fadd fast float %7857, %7854
  %7860 = fadd fast float %7858, %7855
  %7861 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %7862 = extractvalue %dx.types.CBufRet.f32 %7861, 0
  %7863 = extractvalue %dx.types.CBufRet.f32 %7861, 1
  %7864 = fsub fast float %7859, %7862
  %7865 = fsub fast float %7860, %7863
  %7866 = fcmp fast olt float %7864, 0.000000e+00
  %7867 = fcmp fast olt float %7865, 0.000000e+00
  %7868 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %7869 = extractvalue %dx.types.CBufRet.f32 %7868, 0
  %7870 = extractvalue %dx.types.CBufRet.f32 %7868, 1
  %7871 = extractvalue %dx.types.CBufRet.f32 %7868, 2
  %7872 = extractvalue %dx.types.CBufRet.f32 %7868, 3
  %7873 = select i1 %7866, float %7869, float %7871
  %7874 = select i1 %7867, float %7870, float %7872
  %7875 = fmul fast float %7873, %7864
  %7876 = fmul fast float %7874, %7865
  %7877 = call float @dx.op.unary.f32(i32 6, float %7875)  ; FAbs(value)
  %7878 = call float @dx.op.unary.f32(i32 6, float %7876)  ; FAbs(value)
  %7879 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %7880 = extractvalue %dx.types.CBufRet.f32 %7879, 0
  %7881 = call float @dx.op.binary.f32(i32 35, float %7877, float %7878)  ; FMax(a,b)
  %7882 = fsub fast float %7880, %7881
  %7883 = call float @dx.op.unary.f32(i32 7, float %7882)  ; Saturate(value)
  %7884 = fcmp fast ogt float %7883, 0.000000e+00
  br i1 %7884, label %7885, label %7926, !dx.controlflow.hints !130

; <label>:7885                                    ; preds = %7826
  %7886 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %54, float %7859, float %7860, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7887 = extractvalue %dx.types.ResRet.f32 %7886, 1
  %7888 = fcmp fast ogt float %7887, 0.000000e+00
  br i1 %7888, label %7889, label %7921

; <label>:7889                                    ; preds = %7885
  %7890 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %54, float %7859, float %7860, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7891 = extractvalue %dx.types.ResRet.f32 %7890, 0
  %7892 = extractvalue %dx.types.ResRet.f32 %7890, 1
  %7893 = extractvalue %dx.types.ResRet.f32 %7890, 2
  %7894 = extractvalue %dx.types.ResRet.f32 %7890, 3
  %7895 = fsub fast float 1.000000e+00, %7841
  %7896 = fsub fast float %7895, %7852
  %7897 = fmul fast float %7896, 0x400921FB60000000
  %7898 = fadd fast float %7897, 0x3FF921FB60000000
  %7899 = call float @dx.op.unary.f32(i32 13, float %7898)  ; Sin(value)
  %7900 = fadd fast float %7899, -1.000000e+00
  %7901 = fmul fast float %7900, 0x3FD45F3060000000
  %7902 = fmul fast float %7896, 0x401921FB60000000
  %7903 = fadd fast float %7902, 0x400921FB60000000
  %7904 = call float @dx.op.unary.f32(i32 13, float %7903)  ; Sin(value)
  %7905 = fadd fast float %7904, 0x3E7777A5C0000000
  %7906 = fmul fast float %7905, 0x3FC45F3060000000
  %7907 = fmul fast float %7896, 0x4022D97C80000000
  %7908 = fadd fast float %7907, 0x4012D97C80000000
  %7909 = call float @dx.op.unary.f32(i32 13, float %7908)  ; Sin(value)
  %7910 = fadd fast float %7909, 1.000000e+00
  %7911 = fmul fast float %7910, 0x3FBB2995E0000000
  %7912 = fmul fast float %7896, 0x402921FB60000000
  %7913 = fadd fast float %7912, 0x401921FB60000000
  %7914 = call float @dx.op.unary.f32(i32 13, float %7913)  ; Sin(value)
  %7915 = fadd fast float %7914, 0xBE8777A5C0000000
  %7916 = fmul fast float %7915, 0x3FB45F3060000000
  %7917 = call float @dx.op.dot4.f32(i32 56, float %7891, float %7892, float %7893, float %7894, float %7901, float %7906, float %7911, float %7916)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7918 = fmul fast float %7917, 0xBFF7154760000000
  %7919 = call float @dx.op.unary.f32(i32 21, float %7918)  ; Exp(value)
  %7920 = call float @dx.op.unary.f32(i32 7, float %7919)  ; Saturate(value)
  br label %7921

; <label>:7921                                    ; preds = %7889, %7885
  %7922 = phi float [ %7920, %7889 ], [ 1.000000e+00, %7885 ]
  %7923 = fadd fast float %7922, -1.000000e+00
  %7924 = fmul fast float %7923, %7883
  %7925 = fadd fast float %7924, 1.000000e+00
  br label %7926

; <label>:7926                                    ; preds = %7921, %7826
  %7927 = phi float [ %7925, %7921 ], [ 1.000000e+00, %7826 ]
  %7928 = fmul fast float %7927, %7822
  %7929 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %7930 = extractvalue %dx.types.CBufRet.f32 %7929, 0
  %7931 = extractvalue %dx.types.CBufRet.f32 %7929, 1
  %7932 = extractvalue %dx.types.CBufRet.f32 %7929, 2
  %7933 = fadd fast float %7930, %164
  %7934 = fadd fast float %7931, %165
  %7935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7936 = extractvalue %dx.types.CBufRet.f32 %7935, 1
  %7937 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %7938 = extractvalue %dx.types.CBufRet.f32 %7937, 0
  %7939 = extractvalue %dx.types.CBufRet.f32 %7937, 1
  %7940 = extractvalue %dx.types.CBufRet.f32 %7937, 2
  %7941 = fsub fast float -0.000000e+00, %7933
  %7942 = fsub fast float -0.000000e+00, %7934
  %7943 = fsub fast float %5768, %7932
  %7944 = fadd fast float %7943, %7936
  %7945 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7941, float %7942, float %7944)  ; Dot3(ax,ay,az,bx,by,bz)
  %7946 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7938, float %7939, float %7940)  ; Dot3(ax,ay,az,bx,by,bz)
  %7947 = fdiv fast float 1.000000e+00, %7946
  %7948 = fmul fast float %7947, %7945
  %7949 = fmul fast float %7938, %7948
  %7950 = fmul fast float %7939, %7948
  %7951 = fadd fast float %7949, %7933
  %7952 = fadd fast float %7950, %7934
  %7953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7954 = extractvalue %dx.types.CBufRet.f32 %7953, 0
  %7955 = extractvalue %dx.types.CBufRet.f32 %7953, 1
  %7956 = fsub fast float %7951, %7954
  %7957 = fsub fast float %7952, %7955
  %7958 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7959 = extractvalue %dx.types.CBufRet.f32 %7958, 2
  %7960 = extractvalue %dx.types.CBufRet.f32 %7958, 3
  %7961 = fmul fast float %7956, %7959
  %7962 = fmul fast float %7957, %7960
  %7963 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7964 = extractvalue %dx.types.CBufRet.i32 %7963, 3
  %7965 = icmp eq i32 %7964, 0
  br i1 %7965, label %7971, label %7966

; <label>:7966                                    ; preds = %7926
  %7967 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %53, float %7961, float %7962, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7968 = extractvalue %dx.types.ResRet.f32 %7967, 0
  %7969 = extractvalue %dx.types.ResRet.f32 %7967, 1
  %7970 = extractvalue %dx.types.ResRet.f32 %7967, 2
  br label %7976

; <label>:7971                                    ; preds = %7926
  %7972 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %54, float %7961, float %7962, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7973 = extractvalue %dx.types.ResRet.f32 %7972, 0
  %7974 = extractvalue %dx.types.ResRet.f32 %7972, 1
  %7975 = extractvalue %dx.types.ResRet.f32 %7972, 2
  br label %7976

; <label>:7976                                    ; preds = %7971, %7966
  %7977 = phi float [ %7968, %7966 ], [ %7973, %7971 ]
  %7978 = phi float [ %7969, %7966 ], [ %7974, %7971 ]
  %7979 = phi float [ %7970, %7966 ], [ %7975, %7971 ]
  %7980 = extractvalue %dx.types.CBufRet.f32 %7935, 2
  %7981 = fmul fast float %7980, %7977
  %7982 = extractvalue %dx.types.CBufRet.f32 %7935, 0
  %7983 = fsub fast float %7948, %7982
  %7984 = fsub fast float %7983, %7981
  %7985 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7984)  ; FMax(a,b)
  %7986 = fmul fast float %7985, %7978
  %7987 = call float @dx.op.binary.f32(i32 36, float %7979, float %7986)  ; FMin(a,b)
  %7988 = fmul fast float %7987, 0xBFF7154760000000
  %7989 = call float @dx.op.unary.f32(i32 21, float %7988)  ; Exp(value)
  %7990 = fmul fast float %7928, %7989
  br label %7991

; <label>:7991                                    ; preds = %7976, %7821
  %7992 = phi float [ %7990, %7976 ], [ %7822, %7821 ]
  %7993 = call float @dx.op.binary.f32(i32 36, float %7992, float %7992)  ; FMin(a,b)
  %7994 = call float @dx.op.binary.f32(i32 36, float %7992, float %7993)  ; FMin(a,b)
  %7995 = fcmp fast ogt float %7994, 0.000000e+00
  br i1 %7995, label %7996, label %8379, !dx.controlflow.hints !131

; <label>:7996                                    ; preds = %7991
  %7997 = fmul fast float %7992, %6714
  %7998 = fmul fast float %7992, %6715
  %7999 = fmul fast float %7992, %6716
  %8000 = fsub fast float %166, %5577
  %8001 = fcmp fast ogt float %8000, 0.000000e+00
  %8002 = fmul fast float %6703, 5.120000e+02
  %8003 = fmul fast float %6704, 5.120000e+02
  %8004 = fmul fast float %6705, 5.120000e+02
  %8005 = fadd fast float %8004, %166
  %8006 = fsub fast float %5577, %8005
  %8007 = fmul fast float %8006, 2.000000e+00
  %8008 = fadd fast float %8007, %8005
  %8009 = select i1 %8001, float %8008, float %8005
  %8010 = fsub fast float %8009, %166
  %8011 = call float @dx.op.dot3.f32(i32 55, float %8002, float %8003, float %8010, float %8002, float %8003, float %8010)  ; Dot3(ax,ay,az,bx,by,bz)
  %8012 = call float @dx.op.unary.f32(i32 25, float %8011)  ; Rsqrt(value)
  %8013 = fmul fast float %8012, %8002
  %8014 = fmul fast float %8012, %8003
  %8015 = fmul fast float %8012, %8010
  %8016 = fsub fast float %5577, %166
  %8017 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %8016)  ; Dot3(ax,ay,az,bx,by,bz)
  %8018 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8013, float %8014, float %8015)  ; Dot3(ax,ay,az,bx,by,bz)
  %8019 = fdiv fast float 1.000000e+00, %8018
  %8020 = fmul fast float %8019, %8017
  %8021 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %8000, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8022 = fcmp fast ogt float %8021, 0.000000e+00
  %8023 = fcmp fast olt float %8021, 0.000000e+00
  %8024 = zext i1 %8022 to i32
  %8025 = zext i1 %8023 to i32
  %8026 = sub nsw i32 %8024, %8025
  %8027 = sitofp i32 %8026 to float
  %8028 = fsub fast float %8009, %5577
  %8029 = call float @dx.op.dot3.f32(i32 55, float %8002, float %8003, float %8028, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8030 = fcmp fast ogt float %8029, 0.000000e+00
  %8031 = fcmp fast olt float %8029, 0.000000e+00
  %8032 = zext i1 %8030 to i32
  %8033 = zext i1 %8031 to i32
  %8034 = sub nsw i32 %8032, %8033
  %8035 = sitofp i32 %8034 to float
  %8036 = fcmp fast une float %8027, %8035
  br i1 %8036, label %8037, label %8047

; <label>:8037                                    ; preds = %7996
  %8038 = fmul fast float %8020, %8015
  %8039 = fmul fast float %8020, %8014
  %8040 = fmul fast float %8020, %8013
  %8041 = fmul fast float %8040, %8040
  %8042 = fmul fast float %8039, %8039
  %8043 = fadd fast float %8041, %8042
  %8044 = fmul fast float %8038, %8038
  %8045 = fadd fast float %8043, %8044
  %8046 = call float @dx.op.unary.f32(i32 24, float %8045)  ; Sqrt(value)
  br label %8057

; <label>:8047                                    ; preds = %7996
  %8048 = icmp slt i32 %8026, 0
  br i1 %8048, label %8049, label %8057

; <label>:8049                                    ; preds = %8047
  %8050 = fsub fast float %166, %8009
  %8051 = fmul fast float %8002, %8002
  %8052 = fmul fast float %8003, %8003
  %8053 = fadd fast float %8051, %8052
  %8054 = fmul fast float %8050, %8050
  %8055 = fadd fast float %8053, %8054
  %8056 = call float @dx.op.unary.f32(i32 24, float %8055)  ; Sqrt(value)
  br label %8057

; <label>:8057                                    ; preds = %8049, %8047, %8037
  %8058 = phi float [ %8046, %8037 ], [ %8056, %8049 ], [ 0.000000e+00, %8047 ]
  %8059 = fsub fast float -0.000000e+00, %8058
  %8060 = select i1 %8001, float -0.000000e+00, float %8059
  %8061 = fmul fast float %5574, 0x3FF7154760000000
  %8062 = fmul fast float %8061, %8060
  %8063 = fmul fast float %5575, 0x3FF7154760000000
  %8064 = fmul fast float %8063, %8060
  %8065 = fmul fast float %5576, 0x3FF7154760000000
  %8066 = fmul fast float %8065, %8060
  %8067 = call float @dx.op.unary.f32(i32 21, float %8062)  ; Exp(value)
  %8068 = call float @dx.op.unary.f32(i32 21, float %8064)  ; Exp(value)
  %8069 = call float @dx.op.unary.f32(i32 21, float %8066)  ; Exp(value)
  %8070 = call float @dx.op.unary.f32(i32 7, float %8067)  ; Saturate(value)
  %8071 = call float @dx.op.unary.f32(i32 7, float %8068)  ; Saturate(value)
  %8072 = call float @dx.op.unary.f32(i32 7, float %8069)  ; Saturate(value)
  %8073 = fmul fast float %7997, %8070
  %8074 = fmul fast float %7998, %8071
  %8075 = fmul fast float %7999, %8072
  %8076 = fsub fast float %6703, %184
  %8077 = fsub fast float %6704, %185
  %8078 = fsub fast float %6705, %186
  %8079 = call float @dx.op.dot3.f32(i32 55, float %8076, float %8077, float %8078, float %8076, float %8077, float %8078)  ; Dot3(ax,ay,az,bx,by,bz)
  %8080 = call float @dx.op.unary.f32(i32 25, float %8079)  ; Rsqrt(value)
  %8081 = fmul fast float %8080, %8076
  %8082 = fmul fast float %8080, %8077
  %8083 = fmul fast float %8080, %8078
  %8084 = call float @dx.op.dot3.f32(i32 55, float %6703, float %6704, float %6705, float %5763, float %5764, float %5765)  ; Dot3(ax,ay,az,bx,by,bz)
  %8085 = call float @dx.op.dot3.f32(i32 55, float %5591, float %5592, float %5593, float %8081, float %8082, float %8083)  ; Dot3(ax,ay,az,bx,by,bz)
  %8086 = call float @dx.op.unary.f32(i32 7, float %8084)  ; Saturate(value)
  %8087 = fmul fast float %8086, %8086
  %8088 = fmul fast float %8087, %5796
  %8089 = call float @dx.op.unary.f32(i32 7, float %8088)  ; Saturate(value)
  %8090 = fmul fast float %8089, %8086
  %8091 = call float @dx.op.dot3.f32(i32 55, float %5763, float %5764, float %5765, float %8081, float %8082, float %8083)  ; Dot3(ax,ay,az,bx,by,bz)
  %8092 = fmul fast float %8091, %8091
  %8093 = call float @dx.op.unary.f32(i32 6, float %8084)  ; FAbs(value)
  %8094 = fsub fast float 1.000000e+00, %5789
  %8095 = fmul fast float %5771, %5771
  %8096 = fmul fast float %8095, %8094
  %8097 = fadd fast float %8096, %5789
  %8098 = bitcast float %8097 to i32
  %8099 = ashr i32 %8098, 1
  %8100 = add nsw i32 %8099, 532487669
  %8101 = bitcast i32 %8100 to float
  %8102 = fadd fast float %8101, %5771
  %8103 = fmul fast float %5789, %8092
  %8104 = fsub fast float 1.000000e+00, %8092
  %8105 = fadd fast float %8104, %8103
  %8106 = fmul fast float %8093, %8093
  %8107 = fmul fast float %8106, %8094
  %8108 = fadd fast float %8107, %5789
  %8109 = bitcast float %8108 to i32
  %8110 = ashr i32 %8109, 1
  %8111 = add nsw i32 %8110, 532487669
  %8112 = bitcast i32 %8111 to float
  %8113 = fadd fast float %8112, %8093
  %8114 = fmul fast float %8105, %8105
  %8115 = fmul fast float %8114, %8102
  %8116 = fmul fast float %8115, %8113
  %8117 = fdiv fast float 0x3FF0A00000000000, %8116
  %8118 = fmul fast float %8117, %5789
  %8119 = fmul fast float %6042, 0x3FF9999980000000
  %8120 = fsub fast float 5.000000e+00, %8119
  %8121 = call float @dx.op.unary.f32(i32 6, float %8085)  ; FAbs(value)
  %8122 = fsub fast float 1.000000e+00, %8121
  %8123 = fmul fast float %6042, 0x41D9660740000000
  %8124 = fadd fast float %8123, 0xC1EFBF8940000000
  %8125 = bitcast float %8122 to i32
  %8126 = sitofp i32 %8125 to float
  %8127 = fmul fast float %8126, %8120
  %8128 = fadd fast float %8124, %8127
  %8129 = fptosi float %8128 to i32
  %8130 = bitcast i32 %8129 to float
  %8131 = fsub fast float 1.000000e+00, %5760
  %8132 = fsub fast float 1.000000e+00, %5761
  %8133 = fsub fast float 1.000000e+00, %5769
  %8134 = fmul fast float %8130, %8131
  %8135 = fmul fast float %8130, %8132
  %8136 = fmul fast float %8130, %8133
  %8137 = fadd fast float %8134, %5760
  %8138 = fadd fast float %8135, %5761
  %8139 = fadd fast float %8136, %5769
  br i1 %6065, label %8140, label %8163

; <label>:8140                                    ; preds = %8057
  %8141 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %5122, float %8121, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8142 = extractvalue %dx.types.ResRet.f32 %8141, 0
  %8143 = extractvalue %dx.types.ResRet.f32 %8141, 1
  %8144 = extractvalue %dx.types.ResRet.f32 %8141, 2
  %8145 = fadd fast float %8142, -5.000000e-01
  %8146 = fadd fast float %8143, -5.000000e-01
  %8147 = fadd fast float %8144, -5.000000e-01
  %8148 = fmul fast float %5760, 4.000000e+00
  %8149 = fmul fast float %8148, %8131
  %8150 = fmul fast float %8149, %8145
  %8151 = fmul fast float %5761, 4.000000e+00
  %8152 = fmul fast float %8151, %8132
  %8153 = fmul fast float %8152, %8146
  %8154 = fmul fast float %5769, 4.000000e+00
  %8155 = fmul fast float %8154, %8133
  %8156 = fmul fast float %8155, %8147
  %8157 = fadd fast float %8150, %8137
  %8158 = fadd fast float %8153, %8138
  %8159 = fadd fast float %8156, %8139
  %8160 = call float @dx.op.unary.f32(i32 7, float %8157)  ; Saturate(value)
  %8161 = call float @dx.op.unary.f32(i32 7, float %8158)  ; Saturate(value)
  %8162 = call float @dx.op.unary.f32(i32 7, float %8159)  ; Saturate(value)
  br label %8163

; <label>:8163                                    ; preds = %8140, %8057
  %8164 = phi float [ %8160, %8140 ], [ %8137, %8057 ]
  %8165 = phi float [ %8161, %8140 ], [ %8138, %8057 ]
  %8166 = phi float [ %8162, %8140 ], [ %8139, %8057 ]
  %8167 = fmul fast float %8084, 9.843750e-01
  %8168 = fadd fast float %8167, 7.812500e-03
  %8169 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %8168, float %6046, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8170 = extractvalue %dx.types.ResRet.f32 %8169, 0
  %8171 = extractvalue %dx.types.ResRet.f32 %8169, 1
  %8172 = extractvalue %dx.types.ResRet.f32 %8169, 2
  %8173 = extractvalue %dx.types.ResRet.f32 %8169, 3
  %8174 = fsub fast float %8172, %8170
  %8175 = fsub fast float %8173, %8171
  %8176 = fmul fast float %8174, %6052
  %8177 = fmul fast float %8175, %6052
  %8178 = fadd fast float %8176, %8170
  %8179 = fadd fast float %8177, %8171
  %8180 = fmul fast float %8178, %5760
  %8181 = fmul fast float %8178, %5761
  %8182 = fmul fast float %8178, %5769
  %8183 = fadd fast float %8180, %8179
  %8184 = fadd fast float %8181, %8179
  %8185 = fadd fast float %8182, %8179
  br i1 %6065, label %8186, label %8209

; <label>:8186                                    ; preds = %8163
  %8187 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %5122, float %8084, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8188 = extractvalue %dx.types.ResRet.f32 %8187, 0
  %8189 = extractvalue %dx.types.ResRet.f32 %8187, 1
  %8190 = extractvalue %dx.types.ResRet.f32 %8187, 2
  %8191 = fadd fast float %8188, -5.000000e-01
  %8192 = fadd fast float %8189, -5.000000e-01
  %8193 = fadd fast float %8190, -5.000000e-01
  %8194 = fmul fast float %5760, 4.000000e+00
  %8195 = fmul fast float %8194, %8131
  %8196 = fmul fast float %8195, %8191
  %8197 = fmul fast float %5761, 4.000000e+00
  %8198 = fmul fast float %8197, %8132
  %8199 = fmul fast float %8198, %8192
  %8200 = fmul fast float %5769, 4.000000e+00
  %8201 = fmul fast float %8200, %8133
  %8202 = fmul fast float %8201, %8193
  %8203 = fadd fast float %8196, %8183
  %8204 = fadd fast float %8199, %8184
  %8205 = fadd fast float %8202, %8185
  %8206 = call float @dx.op.unary.f32(i32 7, float %8203)  ; Saturate(value)
  %8207 = call float @dx.op.unary.f32(i32 7, float %8204)  ; Saturate(value)
  %8208 = call float @dx.op.unary.f32(i32 7, float %8205)  ; Saturate(value)
  br label %8209

; <label>:8209                                    ; preds = %8186, %8163
  %8210 = phi float [ %8206, %8186 ], [ %8183, %8163 ]
  %8211 = phi float [ %8207, %8186 ], [ %8184, %8163 ]
  %8212 = phi float [ %8208, %8186 ], [ %8185, %8163 ]
  %8213 = call float @dx.op.binary.f32(i32 35, float %8211, float %8212)  ; FMax(a,b)
  %8214 = call float @dx.op.binary.f32(i32 35, float %8210, float %8213)  ; FMax(a,b)
  %8215 = fsub fast float 1.000000e+00, %8214
  %8216 = call float @dx.op.binary.f32(i32 35, float %8093, float 0x3F50624DE0000000)  ; FMax(a,b)
  %8217 = fdiv fast float %4459, %8216
  %8218 = fmul fast float %6612, %8217
  %8219 = fmul fast float %6614, %8217
  %8220 = fmul fast float %6616, %8217
  %8221 = call float @dx.op.unary.f32(i32 21, float %8218)  ; Exp(value)
  %8222 = call float @dx.op.unary.f32(i32 21, float %8219)  ; Exp(value)
  %8223 = call float @dx.op.unary.f32(i32 21, float %8220)  ; Exp(value)
  %8224 = call float @dx.op.unary.f32(i32 7, float %8221)  ; Saturate(value)
  %8225 = call float @dx.op.unary.f32(i32 7, float %8222)  ; Saturate(value)
  %8226 = call float @dx.op.unary.f32(i32 7, float %8223)  ; Saturate(value)
  %8227 = select i1 %6609, float %8224, float 0.000000e+00
  %8228 = select i1 %6610, float %8225, float 0.000000e+00
  %8229 = select i1 %6611, float %8226, float 0.000000e+00
  %8230 = fsub fast float -0.000000e+00, %5763
  %8231 = fsub fast float -0.000000e+00, %5764
  %8232 = fsub fast float -0.000000e+00, %5765
  %8233 = call float @dx.op.dot3.f32(i32 55, float %6703, float %6704, float %6705, float %8230, float %8231, float %8232)  ; Dot3(ax,ay,az,bx,by,bz)
  %8234 = call float @dx.op.unary.f32(i32 7, float %8233)  ; Saturate(value)
  %8235 = fmul fast float %8234, 9.843750e-01
  %8236 = fadd fast float %8235, 7.812500e-03
  %8237 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %8236, float %6046, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8238 = extractvalue %dx.types.ResRet.f32 %8237, 0
  %8239 = extractvalue %dx.types.ResRet.f32 %8237, 1
  %8240 = extractvalue %dx.types.ResRet.f32 %8237, 2
  %8241 = extractvalue %dx.types.ResRet.f32 %8237, 3
  %8242 = fsub fast float %8240, %8238
  %8243 = fsub fast float %8241, %8239
  %8244 = fmul fast float %8242, %6052
  %8245 = fmul fast float %8243, %6052
  %8246 = fadd fast float %8244, %8238
  %8247 = fadd fast float %8245, %8239
  %8248 = fmul fast float %8246, %5760
  %8249 = fmul fast float %8246, %5761
  %8250 = fmul fast float %8246, %5769
  %8251 = fadd fast float %8248, %8247
  %8252 = fadd fast float %8249, %8247
  %8253 = fadd fast float %8250, %8247
  br i1 %6065, label %8254, label %8277

; <label>:8254                                    ; preds = %8209
  %8255 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %5122, float %8234, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8256 = extractvalue %dx.types.ResRet.f32 %8255, 0
  %8257 = extractvalue %dx.types.ResRet.f32 %8255, 1
  %8258 = extractvalue %dx.types.ResRet.f32 %8255, 2
  %8259 = fadd fast float %8256, -5.000000e-01
  %8260 = fadd fast float %8257, -5.000000e-01
  %8261 = fadd fast float %8258, -5.000000e-01
  %8262 = fmul fast float %5760, 4.000000e+00
  %8263 = fmul fast float %8262, %8131
  %8264 = fmul fast float %8263, %8259
  %8265 = fmul fast float %5761, 4.000000e+00
  %8266 = fmul fast float %8265, %8132
  %8267 = fmul fast float %8266, %8260
  %8268 = fmul fast float %5769, 4.000000e+00
  %8269 = fmul fast float %8268, %8133
  %8270 = fmul fast float %8269, %8261
  %8271 = fadd fast float %8264, %8251
  %8272 = fadd fast float %8267, %8252
  %8273 = fadd fast float %8270, %8253
  %8274 = call float @dx.op.unary.f32(i32 7, float %8271)  ; Saturate(value)
  %8275 = call float @dx.op.unary.f32(i32 7, float %8272)  ; Saturate(value)
  %8276 = call float @dx.op.unary.f32(i32 7, float %8273)  ; Saturate(value)
  br label %8277

; <label>:8277                                    ; preds = %8254, %8209
  %8278 = phi float [ %8274, %8254 ], [ %8251, %8209 ]
  %8279 = phi float [ %8275, %8254 ], [ %8252, %8209 ]
  %8280 = phi float [ %8276, %8254 ], [ %8253, %8209 ]
  %8281 = call float @dx.op.binary.f32(i32 35, float %8279, float %8280)  ; FMax(a,b)
  %8282 = call float @dx.op.binary.f32(i32 35, float %8278, float %8281)  ; FMax(a,b)
  %8283 = fsub fast float 1.000000e+00, %8282
  %8284 = fmul fast float %5786, %6676
  %8285 = fadd fast float %6678, %8284
  %8286 = call float @dx.op.unary.f32(i32 7, float %8285)  ; Saturate(value)
  %8287 = fsub fast float %6703, %5777
  %8288 = fsub fast float %6704, %5778
  %8289 = fsub fast float %6705, %5779
  %8290 = call float @dx.op.dot3.f32(i32 55, float %8287, float %8288, float %8289, float %8287, float %8288, float %8289)  ; Dot3(ax,ay,az,bx,by,bz)
  %8291 = call float @dx.op.unary.f32(i32 25, float %8290)  ; Rsqrt(value)
  %8292 = fmul fast float %8291, %8287
  %8293 = fmul fast float %8291, %8288
  %8294 = fmul fast float %8291, %8289
  %8295 = call float @dx.op.dot3.f32(i32 55, float %8230, float %8231, float %8232, float %8292, float %8293, float %8294)  ; Dot3(ax,ay,az,bx,by,bz)
  %8296 = fmul fast float %8295, %8295
  %8297 = call float @dx.op.unary.f32(i32 6, float %8234)  ; FAbs(value)
  %8298 = call float @dx.op.binary.f32(i32 35, float %8286, float 0x3F847AE140000000)  ; FMax(a,b)
  %8299 = fmul fast float %8298, %8298
  %8300 = fmul fast float %8299, %8299
  %8301 = fsub fast float 1.000000e+00, %8300
  %8302 = fmul fast float %8095, %8301
  %8303 = fadd fast float %8302, %8300
  %8304 = bitcast float %8303 to i32
  %8305 = ashr i32 %8304, 1
  %8306 = add nsw i32 %8305, 532487669
  %8307 = bitcast i32 %8306 to float
  %8308 = fadd fast float %8307, %5771
  %8309 = fmul fast float %8300, %8296
  %8310 = fsub fast float 1.000000e+00, %8296
  %8311 = fadd fast float %8310, %8309
  %8312 = fmul fast float %8297, %8297
  %8313 = fmul fast float %8312, %8301
  %8314 = fadd fast float %8313, %8300
  %8315 = bitcast float %8314 to i32
  %8316 = ashr i32 %8315, 1
  %8317 = add nsw i32 %8316, 532487669
  %8318 = bitcast i32 %8317 to float
  %8319 = fadd fast float %8318, %8297
  %8320 = fmul fast float %8311, %8311
  %8321 = fmul fast float %8320, %8308
  %8322 = fmul fast float %8321, %8319
  %8323 = fdiv fast float 0x3FF0A00000000000, %8322
  %8324 = fmul fast float %8323, %8300
  %8325 = fmul fast float %8234, %8227
  %8326 = fmul fast float %8234, %8228
  %8327 = fmul fast float %8234, %8229
  %8328 = fmul fast float %8325, %8283
  %8329 = fmul fast float %8328, %8324
  %8330 = fmul fast float %8326, %8283
  %8331 = fmul fast float %8330, %8324
  %8332 = fmul fast float %8327, %8283
  %8333 = fmul fast float %8332, %8324
  %8334 = fmul fast float %8164, %8118
  %8335 = fmul fast float %8165, %8118
  %8336 = fmul fast float %8166, %8118
  %8337 = fsub fast float 1.000000e+00, %8085
  %8338 = bitcast float %8337 to i32
  %8339 = sitofp i32 %8338 to float
  %8340 = fmul fast float %8339, 5.000000e+00
  %8341 = fadd fast float %8340, 0xC1EFBF8940000000
  %8342 = fptosi float %8341 to i32
  %8343 = bitcast i32 %8342 to float
  %8344 = fmul fast float %8343, %5123
  %8345 = fmul fast float %8215, %8344
  %8346 = fmul fast float %8345, %6604
  %8347 = fmul fast float %8345, %6605
  %8348 = fmul fast float %8345, %6606
  %8349 = fadd fast float %8346, %8334
  %8350 = fadd fast float %8347, %8335
  %8351 = fadd fast float %8348, %8336
  %8352 = fmul fast float %8349, %8090
  %8353 = fmul fast float %8350, %8090
  %8354 = fmul fast float %8351, %8090
  %8355 = fmul fast float %8090, %8073
  %8356 = fmul fast float %8355, %8215
  %8357 = fmul fast float %8090, %8074
  %8358 = fmul fast float %8357, %8215
  %8359 = fmul fast float %8090, %8075
  %8360 = fmul fast float %8359, %8215
  %8361 = fadd fast float %8352, %8329
  %8362 = fadd fast float %8353, %8331
  %8363 = fadd fast float %8354, %8333
  %8364 = fmul fast float %8361, %8073
  %8365 = fmul fast float %8362, %8074
  %8366 = fmul fast float %8363, %8075
  %8367 = fadd fast float %8356, %6693
  %8368 = fmul fast float %8367, %5148
  %8369 = fadd fast float %8358, %6695
  %8370 = fmul fast float %8369, %5148
  %8371 = fadd fast float %8360, %6697
  %8372 = fmul fast float %8371, %5148
  %8373 = fadd fast float %8364, %6657
  %8374 = fmul fast float %8373, %5148
  %8375 = fadd fast float %8365, %6660
  %8376 = fmul fast float %8375, %5148
  %8377 = fadd fast float %8366, %6663
  %8378 = fmul fast float %8377, %5148
  br label %8379

; <label>:8379                                    ; preds = %8277, %7991, %6587
  %8380 = phi float [ %6658, %6587 ], [ %6658, %7991 ], [ %8374, %8277 ]
  %8381 = phi float [ %6661, %6587 ], [ %6661, %7991 ], [ %8376, %8277 ]
  %8382 = phi float [ %6664, %6587 ], [ %6664, %7991 ], [ %8378, %8277 ]
  %8383 = phi float [ %6694, %6587 ], [ %6694, %7991 ], [ %8368, %8277 ]
  %8384 = phi float [ %6696, %6587 ], [ %6696, %7991 ], [ %8370, %8277 ]
  %8385 = phi float [ %6698, %6587 ], [ %6698, %7991 ], [ %8372, %8277 ]
  %8386 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %8387 = extractvalue %dx.types.CBufRet.i32 %8386, 0
  %8388 = icmp eq i32 %8387, 0
  br i1 %8388, label %9206, label %8389

; <label>:8389                                    ; preds = %8379
  %8390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %8391 = extractvalue %dx.types.CBufRet.f32 %8390, 2
  %8392 = extractvalue %dx.types.CBufRet.f32 %8390, 3
  %8393 = fmul fast float %8391, %109
  %8394 = fmul fast float %8392, %110
  %8395 = fptoui float %8393 to i32
  %8396 = fptoui float %8394 to i32
  %8397 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8398 = extractvalue %dx.types.CBufRet.f32 %8397, 0
  %8399 = extractvalue %dx.types.CBufRet.f32 %8397, 2
  %8400 = extractvalue %dx.types.CBufRet.f32 %8397, 3
  %8401 = fadd fast float %97, -4.000000e+00
  %8402 = call float @dx.op.binary.f32(i32 35, float %8401, float 0.000000e+00)  ; FMax(a,b)
  %8403 = fadd fast float %8402, %8398
  %8404 = fmul fast float %8403, %8399
  %8405 = call float @dx.op.unary.f32(i32 23, float %8404)  ; Log(value)
  %8406 = fmul fast float %8405, %8400
  %8407 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8408 = extractvalue %dx.types.CBufRet.f32 %8407, 2
  %8409 = fmul fast float %8406, %8408
  %8410 = call float @dx.op.unary.f32(i32 7, float %8409)  ; Saturate(value)
  %8411 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8412 = extractvalue %dx.types.CBufRet.i32 %8411, 1
  %8413 = add i32 %8412, -1
  %8414 = uitofp i32 %8412 to float
  %8415 = fmul fast float %8414, %8410
  %8416 = fptoui float %8415 to i32
  %8417 = call i32 @dx.op.binary.i32(i32 40, i32 %8416, i32 %8413)  ; UMin(a,b)
  %8418 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %8419 = extractvalue %dx.types.CBufRet.i32 %8418, 2
  %8420 = extractvalue %dx.types.CBufRet.i32 %8418, 3
  %8421 = call i32 @dx.op.tertiary.i32(i32 49, i32 %8396, i32 %8419, i32 %8395)  ; UMad(a,b,c)
  %8422 = call i32 @dx.op.tertiary.i32(i32 49, i32 %8417, i32 %8420, i32 %8421)  ; UMad(a,b,c)
  %8423 = add nsw i32 %8387, -1
  %8424 = call i32 @dx.op.binary.i32(i32 37, i32 %8423, i32 0)  ; IMax(a,b)
  %8425 = call float @dx.op.binary.f32(i32 35, float %97, float 0.000000e+00)  ; FMax(a,b)
  %8426 = fptoui float %8425 to i32
  %8427 = lshr i32 %8426, 5
  %8428 = call i32 @dx.op.binary.i32(i32 40, i32 %8427, i32 8191)  ; UMin(a,b)
  %8429 = shl i32 %8428, 2
  %8430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %8429, i32 undef)  ; BufferLoad(srv,index,wot)
  %8431 = extractvalue %dx.types.ResRet.i32 %8430, 0
  %8432 = lshr i32 %8431, 16
  %8433 = and i32 %8431, 65535
  %8434 = lshr i32 %8431, 21
  %8435 = lshr i32 %8433, 5
  %8436 = call i32 @dx.op.binary.i32(i32 40, i32 %8435, i32 %8424)  ; UMin(a,b)
  %8437 = icmp ugt i32 %8434, %8436
  br i1 %8437, label %9206, label %8438

; <label>:8438                                    ; preds = %8389
  br label %8439

; <label>:8439                                    ; preds = %9196, %8438
  %8440 = phi i32 [ %9203, %9196 ], [ %8434, %8438 ]
  %8441 = phi float [ %9197, %9196 ], [ %8380, %8438 ]
  %8442 = phi float [ %9198, %9196 ], [ %8381, %8438 ]
  %8443 = phi float [ %9199, %9196 ], [ %8382, %8438 ]
  %8444 = phi float [ %9200, %9196 ], [ %8383, %8438 ]
  %8445 = phi float [ %9201, %9196 ], [ %8384, %8438 ]
  %8446 = phi float [ %9202, %9196 ], [ %8385, %8438 ]
  %8447 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %8448 = extractvalue %dx.types.CBufRet.i32 %8447, 0
  %8449 = call i32 @dx.op.tertiary.i32(i32 49, i32 %8422, i32 %8448, i32 %8440)  ; UMad(a,b,c)
  %8450 = shl i32 %8449, 2
  %8451 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %8450, i32 undef)  ; BufferLoad(srv,index,wot)
  %8452 = extractvalue %dx.types.ResRet.i32 %8451, 0
  %8453 = shl i32 %8440, 5
  %8454 = sub nsw i32 %8432, %8453
  %8455 = call i32 @dx.op.binary.i32(i32 37, i32 %8454, i32 0)  ; IMax(a,b)
  %8456 = call i32 @dx.op.binary.i32(i32 38, i32 %8455, i32 31)  ; IMin(a,b)
  %8457 = sub nsw i32 1, %8432
  %8458 = add nsw i32 %8457, %8433
  %8459 = call i32 @dx.op.binary.i32(i32 37, i32 %8458, i32 0)  ; IMax(a,b)
  %8460 = call i32 @dx.op.binary.i32(i32 38, i32 %8459, i32 32)  ; IMin(a,b)
  %8461 = and i32 %8460, 31
  %8462 = shl i32 -1, %8461
  %8463 = xor i32 %8462, -1
  %8464 = and i32 %8456, 31
  %8465 = shl i32 %8463, %8464
  %8466 = icmp eq i32 %8460, 32
  %8467 = select i1 %8466, i32 -1, i32 %8465
  %8468 = and i32 %8467, %8452
  %8469 = icmp eq i32 %8468, 0
  br i1 %8469, label %9196, label %8470

; <label>:8470                                    ; preds = %8439
  br label %8471

; <label>:8471                                    ; preds = %8606, %8470
  %8472 = phi i32 [ %8483, %8606 ], [ %8468, %8470 ]
  %8473 = phi float [ %8607, %8606 ], [ %8441, %8470 ]
  %8474 = phi float [ %8608, %8606 ], [ %8442, %8470 ]
  %8475 = phi float [ %8609, %8606 ], [ %8443, %8470 ]
  %8476 = phi float [ %8610, %8606 ], [ %8444, %8470 ]
  %8477 = phi float [ %8611, %8606 ], [ %8445, %8470 ]
  %8478 = phi float [ %8612, %8606 ], [ %8446, %8470 ]
  %8479 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %8472)  ; FirstbitLo(value)
  %8480 = add i32 %8479, %8453
  %8481 = and i32 %8479, 31
  %8482 = shl i32 1, %8481
  %8483 = xor i32 %8482, %8472
  %8484 = mul i32 %8480, 112
  %8485 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8484, i32 undef)  ; BufferLoad(srv,index,wot)
  %8486 = extractvalue %dx.types.ResRet.f32 %8485, 0
  %8487 = extractvalue %dx.types.ResRet.f32 %8485, 1
  %8488 = extractvalue %dx.types.ResRet.f32 %8485, 2
  %8489 = or i32 %8484, 12
  %8490 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8489, i32 undef)  ; BufferLoad(srv,index,wot)
  %8491 = extractvalue %dx.types.ResRet.f32 %8490, 0
  %8492 = add i32 %8484, 16
  %8493 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8492, i32 undef)  ; BufferLoad(srv,index,wot)
  %8494 = extractvalue %dx.types.ResRet.f32 %8493, 0
  %8495 = extractvalue %dx.types.ResRet.f32 %8493, 1
  %8496 = extractvalue %dx.types.ResRet.f32 %8493, 2
  %8497 = add i32 %8484, 28
  %8498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %8497, i32 undef)  ; BufferLoad(srv,index,wot)
  %8499 = extractvalue %dx.types.ResRet.i32 %8498, 0
  %8500 = add i32 %8484, 44
  %8501 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8500, i32 undef)  ; BufferLoad(srv,index,wot)
  %8502 = extractvalue %dx.types.ResRet.f32 %8501, 0
  %8503 = add i32 %8484, 48
  %8504 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8503, i32 undef)  ; BufferLoad(srv,index,wot)
  %8505 = extractvalue %dx.types.ResRet.f32 %8504, 0
  %8506 = extractvalue %dx.types.ResRet.f32 %8504, 1
  %8507 = extractvalue %dx.types.ResRet.f32 %8504, 2
  %8508 = extractvalue %dx.types.ResRet.f32 %8504, 3
  %8509 = add i32 %8484, 64
  %8510 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8509, i32 undef)  ; BufferLoad(srv,index,wot)
  %8511 = extractvalue %dx.types.ResRet.f32 %8510, 0
  %8512 = extractvalue %dx.types.ResRet.f32 %8510, 1
  %8513 = extractvalue %dx.types.ResRet.f32 %8510, 2
  %8514 = extractvalue %dx.types.ResRet.f32 %8510, 3
  %8515 = add i32 %8484, 80
  %8516 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8515, i32 undef)  ; BufferLoad(srv,index,wot)
  %8517 = extractvalue %dx.types.ResRet.f32 %8516, 1
  %8518 = extractvalue %dx.types.ResRet.f32 %8516, 2
  %8519 = add i32 %8484, 92
  %8520 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %8519, i32 undef)  ; BufferLoad(srv,index,wot)
  %8521 = extractvalue %dx.types.ResRet.i32 %8520, 0
  %8522 = call float @dx.op.dot3.f32(i32 55, float %8486, float %8487, float %8488, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8523 = select i1 %258, float %8517, float %8486
  %8524 = select i1 %258, float %8522, float %8487
  %8525 = select i1 %258, float %8518, float %8488
  %8526 = and i32 %8521, 65535
  %8527 = uitofp i32 %8526 to float
  %8528 = lshr i32 %8521, 16
  %8529 = uitofp i32 %8528 to float
  %8530 = and i32 %8499, 65535
  %8531 = and i32 %8499, 50331648
  %8532 = icmp slt i32 %8499, 0
  %8533 = icmp eq i32 %8531, 33554432
  %8534 = fsub fast float %8505, %164
  %8535 = fsub fast float %8506, %165
  %8536 = fsub fast float %8507, %166
  %8537 = call float @dx.op.dot3.f32(i32 55, float %8534, float %8535, float %8536, float %8534, float %8535, float %8536)  ; Dot3(ax,ay,az,bx,by,bz)
  %8538 = call float @dx.op.unary.f32(i32 24, float %8537)  ; Sqrt(value)
  %8539 = fdiv fast float 1.000000e+00, %8538
  %8540 = fmul fast float %8539, %8534
  %8541 = fmul fast float %8539, %8535
  %8542 = fmul fast float %8539, %8536
  %8543 = fadd fast float %8538, %8491
  %8544 = fdiv fast float 1.000000e+00, %8543
  %8545 = fmul float %8502, %8544
  %8546 = fmul float %8545, %8545
  %8547 = call float @dx.op.unary.f32(i32 7, float %8546)  ; Saturate(value)
  br i1 %8533, label %8548, label %8569

; <label>:8548                                    ; preds = %8471
  %8549 = fmul fast float %8513, %8494
  %8550 = fmul fast float %8513, %8495
  %8551 = fmul fast float %8513, %8496
  %8552 = fadd fast float %8534, %8549
  %8553 = fadd fast float %8535, %8550
  %8554 = fadd fast float %8536, %8551
  %8555 = call float @dx.op.dot3.f32(i32 55, float %8552, float %8553, float %8554, float %8552, float %8553, float %8554)  ; Dot3(ax,ay,az,bx,by,bz)
  %8556 = call float @dx.op.unary.f32(i32 25, float %8555)  ; Rsqrt(value)
  %8557 = fmul fast float %8556, %8552
  %8558 = fmul fast float %8556, %8553
  %8559 = fmul fast float %8556, %8554
  %8560 = fsub fast float %164, %8505
  %8561 = fsub fast float %165, %8506
  %8562 = fsub fast float %166, %8507
  %8563 = fsub fast float -0.000000e+00, %8560
  %8564 = fsub fast float -0.000000e+00, %8561
  %8565 = fsub fast float -0.000000e+00, %8562
  %8566 = call float @dx.op.dot3.f32(i32 55, float %8563, float %8564, float %8565, float %8494, float %8495, float %8496)  ; Dot3(ax,ay,az,bx,by,bz)
  %8567 = fcmp fast ogt float %8566, 0.000000e+00
  %8568 = uitofp i1 %8567 to float
  br label %8569

; <label>:8569                                    ; preds = %8548, %8471
  %8570 = phi float [ %8568, %8548 ], [ 1.000000e+00, %8471 ]
  %8571 = phi float [ %8557, %8548 ], [ %8540, %8471 ]
  %8572 = phi float [ %8558, %8548 ], [ %8541, %8471 ]
  %8573 = phi float [ %8559, %8548 ], [ %8542, %8471 ]
  %8574 = call float @dx.op.dot3.f32(i32 55, float %8494, float %8495, float %8496, float %8571, float %8572, float %8573)  ; Dot3(ax,ay,az,bx,by,bz)
  %8575 = fmul fast float %8574, %8574
  %8576 = call float @dx.op.unary.f32(i32 7, float %8575)  ; Saturate(value)
  %8577 = fsub fast float 1.000000e+00, %8576
  %8578 = fmul fast float %8577, 5.000000e-01
  %8579 = fcmp fast ogt float %8574, 0.000000e+00
  %8580 = fsub fast float 1.000000e+00, %8578
  %8581 = select i1 %8579, float %8578, float %8580
  %8582 = fmul fast float %8581, %8529
  %8583 = fadd fast float %8582, %8527
  %8584 = fmul fast float %8583, 0x3EF0001000000000
  %8585 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %54, float %8584, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8586 = extractvalue %dx.types.ResRet.f32 %8585, 0
  %8587 = fmul fast float %8574, %8511
  %8588 = fadd fast float %8587, %8512
  %8589 = call float @dx.op.unary.f32(i32 7, float %8588)  ; Saturate(value)
  %8590 = select i1 %8533, float 1.000000e+00, float %8589
  %8591 = select i1 %8533, float %8589, float 1.000000e+00
  %8592 = fmul fast float %8538, %8508
  %8593 = fsub fast float 1.000000e+00, %8592
  %8594 = fmul fast float %8593, %8514
  %8595 = call float @dx.op.unary.f32(i32 7, float %8594)  ; Saturate(value)
  %8596 = fmul fast float %8595, %8591
  %8597 = fmul fast float %8596, 2.000000e+00
  %8598 = fsub fast float 3.000000e+00, %8597
  %8599 = fmul fast float %8586, %8570
  %8600 = fmul fast float %8596, %8596
  %8601 = fmul fast float %8600, %8599
  %8602 = fmul fast float %8601, %8598
  %8603 = call float @dx.op.binary.f32(i32 36, float %8602, float %8602)  ; FMin(a,b)
  %8604 = call float @dx.op.binary.f32(i32 36, float %8602, float %8603)  ; FMin(a,b)
  %8605 = fcmp fast ogt float %8604, 0.000000e+00
  br i1 %8605, label %8614, label %8606, !dx.controlflow.hints !132

; <label>:8606                                    ; preds = %9149, %8760, %8569
  %8607 = phi float [ %8473, %8760 ], [ %8473, %8569 ], [ %9192, %9149 ]
  %8608 = phi float [ %8474, %8760 ], [ %8474, %8569 ], [ %9193, %9149 ]
  %8609 = phi float [ %8475, %8760 ], [ %8475, %8569 ], [ %9194, %9149 ]
  %8610 = phi float [ %8476, %8760 ], [ %8476, %8569 ], [ %9186, %9149 ]
  %8611 = phi float [ %8477, %8760 ], [ %8477, %8569 ], [ %9187, %9149 ]
  %8612 = phi float [ %8478, %8760 ], [ %8478, %8569 ], [ %9188, %9149 ]
  %8613 = icmp eq i32 %8472, %8482
  br i1 %8613, label %9195, label %8471

; <label>:8614                                    ; preds = %8569
  %8615 = icmp eq i32 %8530, 255
  br i1 %8615, label %8760, label %8616, !dx.controlflow.hints !133

; <label>:8616                                    ; preds = %8614
  %8617 = mul nuw nsw i32 %8530, 176
  %8618 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8617, i32 undef)  ; BufferLoad(srv,index,wot)
  %8619 = extractvalue %dx.types.ResRet.f32 %8618, 0
  %8620 = extractvalue %dx.types.ResRet.f32 %8618, 1
  %8621 = extractvalue %dx.types.ResRet.f32 %8618, 2
  %8622 = extractvalue %dx.types.ResRet.f32 %8618, 3
  %8623 = add nuw nsw i32 %8617, 16
  %8624 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8623, i32 undef)  ; BufferLoad(srv,index,wot)
  %8625 = extractvalue %dx.types.ResRet.f32 %8624, 0
  %8626 = extractvalue %dx.types.ResRet.f32 %8624, 1
  %8627 = add nuw nsw i32 %8617, 32
  %8628 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8627, i32 undef)  ; BufferLoad(srv,index,wot)
  %8629 = extractvalue %dx.types.ResRet.f32 %8628, 0
  %8630 = extractvalue %dx.types.ResRet.f32 %8628, 1
  %8631 = extractvalue %dx.types.ResRet.f32 %8628, 2
  %8632 = add nuw nsw i32 %8617, 48
  %8633 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8632, i32 undef)  ; BufferLoad(srv,index,wot)
  %8634 = extractvalue %dx.types.ResRet.f32 %8633, 0
  %8635 = extractvalue %dx.types.ResRet.f32 %8633, 1
  %8636 = extractvalue %dx.types.ResRet.f32 %8633, 2
  %8637 = extractvalue %dx.types.ResRet.f32 %8633, 3
  %8638 = add nuw nsw i32 %8617, 64
  %8639 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8638, i32 undef)  ; BufferLoad(srv,index,wot)
  %8640 = extractvalue %dx.types.ResRet.f32 %8639, 0
  %8641 = extractvalue %dx.types.ResRet.f32 %8639, 1
  %8642 = extractvalue %dx.types.ResRet.f32 %8639, 2
  %8643 = extractvalue %dx.types.ResRet.f32 %8639, 3
  %8644 = add nuw nsw i32 %8617, 80
  %8645 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8644, i32 undef)  ; BufferLoad(srv,index,wot)
  %8646 = extractvalue %dx.types.ResRet.f32 %8645, 0
  %8647 = extractvalue %dx.types.ResRet.f32 %8645, 1
  %8648 = extractvalue %dx.types.ResRet.f32 %8645, 2
  %8649 = extractvalue %dx.types.ResRet.f32 %8645, 3
  %8650 = add nuw nsw i32 %8617, 96
  %8651 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8650, i32 undef)  ; BufferLoad(srv,index,wot)
  %8652 = extractvalue %dx.types.ResRet.f32 %8651, 0
  %8653 = extractvalue %dx.types.ResRet.f32 %8651, 1
  %8654 = extractvalue %dx.types.ResRet.f32 %8651, 2
  %8655 = extractvalue %dx.types.ResRet.f32 %8651, 3
  %8656 = bitcast float %8626 to i32
  %8657 = fmul fast float %8631, %116
  %8658 = fmul fast float %8631, %117
  %8659 = fmul fast float %8631, %118
  %8660 = fadd fast float %8657, %164
  %8661 = fadd fast float %8658, %165
  %8662 = fadd fast float %8659, %166
  %8663 = fmul fast float %8660, %8634
  %8664 = call float @dx.op.tertiary.f32(i32 46, float %8661, float %8640, float %8663)  ; FMad(a,b,c)
  %8665 = call float @dx.op.tertiary.f32(i32 46, float %8662, float %8646, float %8664)  ; FMad(a,b,c)
  %8666 = fadd fast float %8665, %8652
  %8667 = fmul fast float %8660, %8635
  %8668 = call float @dx.op.tertiary.f32(i32 46, float %8661, float %8641, float %8667)  ; FMad(a,b,c)
  %8669 = call float @dx.op.tertiary.f32(i32 46, float %8662, float %8647, float %8668)  ; FMad(a,b,c)
  %8670 = fadd fast float %8669, %8653
  %8671 = fmul fast float %8660, %8636
  %8672 = call float @dx.op.tertiary.f32(i32 46, float %8661, float %8642, float %8671)  ; FMad(a,b,c)
  %8673 = call float @dx.op.tertiary.f32(i32 46, float %8662, float %8648, float %8672)  ; FMad(a,b,c)
  %8674 = fadd fast float %8673, %8654
  %8675 = fmul fast float %8660, %8637
  %8676 = call float @dx.op.tertiary.f32(i32 46, float %8661, float %8643, float %8675)  ; FMad(a,b,c)
  %8677 = call float @dx.op.tertiary.f32(i32 46, float %8662, float %8649, float %8676)  ; FMad(a,b,c)
  %8678 = fadd fast float %8677, %8655
  %8679 = fdiv fast float %8666, %8678
  %8680 = fdiv fast float %8670, %8678
  %8681 = fdiv fast float %8674, %8678
  %8682 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %8681)  ; FMax(a,b)
  %8683 = fmul fast float %269, 0x401921FB60000000
  %8684 = call float @dx.op.unary.f32(i32 13, float %8683)  ; Sin(value)
  %8685 = call float @dx.op.unary.f32(i32 12, float %8683)  ; Cos(value)
  %8686 = fmul fast float %8685, %8630
  %8687 = call float @dx.op.tertiary.f32(i32 46, float %8684, float %8630, float 0.000000e+00)  ; FMad(a,b,c)
  %8688 = fmul fast float %8630, %8684
  %8689 = fsub fast float -0.000000e+00, %8688
  %8690 = call float @dx.op.tertiary.f32(i32 46, float %8685, float %8630, float 0.000000e+00)  ; FMad(a,b,c)
  br label %8691

; <label>:8691                                    ; preds = %8691, %8616
  %8692 = phi float [ 0.000000e+00, %8616 ], [ %8724, %8691 ]
  %8693 = phi float [ 0.000000e+00, %8616 ], [ %8726, %8691 ]
  %8694 = phi i32 [ 0, %8616 ], [ %8727, %8691 ]
  %8695 = mul i32 %8694, 2
  %8696 = add i32 0, %8695
  %8697 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8696
  %8698 = load float, float* %8697, align 4
  %8699 = mul i32 %8694, 2
  %8700 = add i32 1, %8699
  %8701 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8700
  %8702 = load float, float* %8701, align 4
  %8703 = fmul fast float %8686, %8698
  %8704 = call float @dx.op.tertiary.f32(i32 46, float %8702, float %8689, float %8703)  ; FMad(a,b,c)
  %8705 = fmul fast float %8698, %8687
  %8706 = call float @dx.op.tertiary.f32(i32 46, float %8702, float %8690, float %8705)  ; FMad(a,b,c)
  %8707 = fadd fast float %8704, %8679
  %8708 = fadd fast float %8706, %8680
  %8709 = fmul fast float %8707, %8625
  %8710 = fmul fast float %8708, %8625
  %8711 = call float @dx.op.binary.f32(i32 35, float %8709, float %8621)  ; FMax(a,b)
  %8712 = call float @dx.op.binary.f32(i32 35, float %8710, float %8621)  ; FMax(a,b)
  %8713 = call float @dx.op.binary.f32(i32 36, float %8711, float %8622)  ; FMin(a,b)
  %8714 = call float @dx.op.binary.f32(i32 36, float %8712, float %8622)  ; FMin(a,b)
  %8715 = fadd fast float %8713, %8619
  %8716 = fadd fast float %8714, %8620
  %8717 = uitofp i32 %8656 to float
  %8718 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %55, float %8715, float %8716, float %8717, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8719 = extractvalue %dx.types.ResRet.f32 %8718, 0
  %8720 = fsub fast float %8719, %8682
  %8721 = fsub fast float %8720, %8629
  %8722 = fcmp fast ogt float %8721, 0.000000e+00
  %8723 = select i1 %8722, float 1.000000e+00, float 0.000000e+00
  %8724 = fadd fast float %8723, %8692
  %8725 = select i1 %8722, float %8721, float 0.000000e+00
  %8726 = fadd fast float %8725, %8693
  %8727 = add nuw nsw i32 %8694, 1
  %8728 = icmp eq i32 %8727, 8
  br i1 %8728, label %8729, label %8691

; <label>:8729                                    ; preds = %8691
  %8730 = fdiv fast float 1.000000e+00, %8724
  %8731 = fmul fast float %8730, %8726
  %8732 = fdiv fast float 1.000000e+00, %8682
  %8733 = fmul fast float %8731, %8732
  %8734 = call float @dx.op.unary.f32(i32 7, float %8733)  ; Saturate(value)
  %8735 = call float @dx.op.binary.f32(i32 35, float %8734, float 0.000000e+00)  ; FMax(a,b)
  %8736 = fmul fast float %8724, 1.250000e-01
  %8737 = call float @dx.op.unary.f32(i32 7, float %8736)  ; Saturate(value)
  %8738 = fmul fast float %8737, 2.000000e+00
  %8739 = fadd fast float %8738, -1.000000e+00
  %8740 = fcmp fast ogt float %8739, 0.000000e+00
  %8741 = fcmp fast olt float %8739, 0.000000e+00
  %8742 = zext i1 %8740 to i32
  %8743 = zext i1 %8741 to i32
  %8744 = sub nsw i32 %8742, %8743
  %8745 = sitofp i32 %8744 to float
  %8746 = fmul fast float %8745, %8739
  %8747 = fsub fast float 1.000000e+00, %8746
  %8748 = fmul fast float %8747, %8747
  %8749 = fmul fast float %8748, %8747
  %8750 = fsub fast float %8747, %8749
  %8751 = fmul fast float %8750, %8735
  %8752 = fsub fast float 1.000000e+00, %8749
  %8753 = fsub fast float %8752, %8751
  %8754 = fmul fast float %8745, 5.000000e-01
  %8755 = fmul fast float %8754, %8753
  %8756 = fsub fast float -5.000000e-01, %8755
  %8757 = fmul fast float %8756, %8590
  %8758 = fadd fast float %8757, 1.000000e+00
  %8759 = fmul fast float %8758, %8602
  br label %8760

; <label>:8760                                    ; preds = %8729, %8614
  %8761 = phi float [ %8759, %8729 ], [ %8602, %8614 ]
  %8762 = call float @dx.op.binary.f32(i32 36, float %8761, float %8761)  ; FMin(a,b)
  %8763 = call float @dx.op.binary.f32(i32 36, float %8761, float %8762)  ; FMin(a,b)
  %8764 = fcmp fast ogt float %8763, 0.000000e+00
  br i1 %8764, label %8765, label %8606, !dx.controlflow.hints !134

; <label>:8765                                    ; preds = %8760
  %8766 = fmul fast float %8761, %8523
  %8767 = fmul fast float %8761, %8524
  %8768 = fmul fast float %8761, %8525
  %8769 = fsub fast float %8507, %5577
  %8770 = fcmp fast ogt float %8769, 0.000000e+00
  %8771 = fsub fast float %166, %5577
  %8772 = fcmp fast ogt float %8771, 0.000000e+00
  %8773 = xor i1 %8772, %8770
  %8774 = fsub fast float %5577, %8507
  %8775 = fmul fast float %8774, 2.000000e+00
  %8776 = fadd fast float %8775, %8507
  %8777 = select i1 %8773, float %8507, float %8776
  %8778 = fsub fast float %8777, %166
  %8779 = call float @dx.op.dot3.f32(i32 55, float %8534, float %8535, float %8778, float %8534, float %8535, float %8778)  ; Dot3(ax,ay,az,bx,by,bz)
  %8780 = call float @dx.op.unary.f32(i32 25, float %8779)  ; Rsqrt(value)
  %8781 = fmul fast float %8780, %8534
  %8782 = fmul fast float %8780, %8535
  %8783 = fmul fast float %8780, %8778
  %8784 = fsub fast float %5577, %166
  %8785 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %8784)  ; Dot3(ax,ay,az,bx,by,bz)
  %8786 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8781, float %8782, float %8783)  ; Dot3(ax,ay,az,bx,by,bz)
  %8787 = fdiv fast float 1.000000e+00, %8786
  %8788 = fmul fast float %8787, %8785
  %8789 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %8771, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8790 = fcmp fast ogt float %8789, 0.000000e+00
  %8791 = fcmp fast olt float %8789, 0.000000e+00
  %8792 = zext i1 %8790 to i32
  %8793 = zext i1 %8791 to i32
  %8794 = sub nsw i32 %8792, %8793
  %8795 = sitofp i32 %8794 to float
  %8796 = fsub fast float %8777, %5577
  %8797 = call float @dx.op.dot3.f32(i32 55, float %8534, float %8535, float %8796, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8798 = fcmp fast ogt float %8797, 0.000000e+00
  %8799 = fcmp fast olt float %8797, 0.000000e+00
  %8800 = zext i1 %8798 to i32
  %8801 = zext i1 %8799 to i32
  %8802 = sub nsw i32 %8800, %8801
  %8803 = sitofp i32 %8802 to float
  %8804 = fcmp fast une float %8795, %8803
  br i1 %8804, label %8805, label %8815

; <label>:8805                                    ; preds = %8765
  %8806 = fmul fast float %8788, %8783
  %8807 = fmul fast float %8788, %8782
  %8808 = fmul fast float %8788, %8781
  %8809 = fmul fast float %8808, %8808
  %8810 = fmul fast float %8807, %8807
  %8811 = fadd fast float %8809, %8810
  %8812 = fmul fast float %8806, %8806
  %8813 = fadd fast float %8811, %8812
  %8814 = call float @dx.op.unary.f32(i32 24, float %8813)  ; Sqrt(value)
  br label %8827

; <label>:8815                                    ; preds = %8765
  %8816 = icmp slt i32 %8794, 0
  br i1 %8816, label %8817, label %8827

; <label>:8817                                    ; preds = %8815
  %8818 = fsub fast float %164, %8505
  %8819 = fsub fast float %165, %8506
  %8820 = fsub fast float %166, %8777
  %8821 = fmul fast float %8818, %8818
  %8822 = fmul fast float %8819, %8819
  %8823 = fadd fast float %8821, %8822
  %8824 = fmul fast float %8820, %8820
  %8825 = fadd fast float %8823, %8824
  %8826 = call float @dx.op.unary.f32(i32 24, float %8825)  ; Sqrt(value)
  br label %8827

; <label>:8827                                    ; preds = %8817, %8815, %8805
  %8828 = phi float [ %8814, %8805 ], [ %8826, %8817 ], [ 0.000000e+00, %8815 ]
  %8829 = and i1 %8772, %8770
  %8830 = fsub fast float -0.000000e+00, %8828
  %8831 = select i1 %8829, float -0.000000e+00, float %8830
  %8832 = fmul fast float %5574, 0x3FF7154760000000
  %8833 = fmul fast float %8832, %8831
  %8834 = fmul fast float %5575, 0x3FF7154760000000
  %8835 = fmul fast float %8834, %8831
  %8836 = fmul fast float %5576, 0x3FF7154760000000
  %8837 = fmul fast float %8836, %8831
  %8838 = call float @dx.op.unary.f32(i32 21, float %8833)  ; Exp(value)
  %8839 = call float @dx.op.unary.f32(i32 21, float %8835)  ; Exp(value)
  %8840 = call float @dx.op.unary.f32(i32 21, float %8837)  ; Exp(value)
  %8841 = call float @dx.op.unary.f32(i32 7, float %8838)  ; Saturate(value)
  %8842 = call float @dx.op.unary.f32(i32 7, float %8839)  ; Saturate(value)
  %8843 = call float @dx.op.unary.f32(i32 7, float %8840)  ; Saturate(value)
  %8844 = fmul fast float %8766, %8841
  %8845 = fmul fast float %8767, %8842
  %8846 = fmul fast float %8768, %8843
  %8847 = fsub fast float %8540, %184
  %8848 = fsub fast float %8541, %185
  %8849 = fsub fast float %8542, %186
  %8850 = call float @dx.op.dot3.f32(i32 55, float %8847, float %8848, float %8849, float %8847, float %8848, float %8849)  ; Dot3(ax,ay,az,bx,by,bz)
  %8851 = call float @dx.op.unary.f32(i32 25, float %8850)  ; Rsqrt(value)
  %8852 = fmul fast float %8851, %8847
  %8853 = fmul fast float %8851, %8848
  %8854 = fmul fast float %8851, %8849
  %8855 = call float @dx.op.dot3.f32(i32 55, float %8540, float %8541, float %8542, float %5763, float %5764, float %5765)  ; Dot3(ax,ay,az,bx,by,bz)
  %8856 = call float @dx.op.dot3.f32(i32 55, float %5591, float %5592, float %5593, float %8852, float %8853, float %8854)  ; Dot3(ax,ay,az,bx,by,bz)
  %8857 = call float @dx.op.unary.f32(i32 7, float %8855)  ; Saturate(value)
  %8858 = fmul fast float %8857, %8547
  %8859 = fmul fast float %8857, %8857
  %8860 = fmul fast float %8859, %5796
  %8861 = call float @dx.op.unary.f32(i32 7, float %8860)  ; Saturate(value)
  %8862 = fmul fast float %8858, %8861
  %8863 = bitcast float %8537 to i32
  %8864 = ashr i32 %8863, 1
  %8865 = sub nsw i32 1597463007, %8864
  %8866 = bitcast i32 %8865 to float
  %8867 = fmul fast float %8866, %8534
  %8868 = fmul fast float %8866, %8535
  %8869 = fmul fast float %8866, %8536
  %8870 = fsub fast float %8867, %184
  %8871 = fsub fast float %8868, %185
  %8872 = fsub fast float %8869, %186
  %8873 = call float @dx.op.dot3.f32(i32 55, float %8870, float %8871, float %8872, float %8870, float %8871, float %8872)  ; Dot3(ax,ay,az,bx,by,bz)
  %8874 = call float @dx.op.unary.f32(i32 25, float %8873)  ; Rsqrt(value)
  %8875 = fmul fast float %8870, %8874
  %8876 = fmul fast float %8871, %8874
  %8877 = fmul fast float %8872, %8874
  %8878 = call float @dx.op.dot3.f32(i32 55, float %5763, float %5764, float %5765, float %8875, float %8876, float %8877)  ; Dot3(ax,ay,az,bx,by,bz)
  %8879 = fmul fast float %8878, %8878
  %8880 = call float @dx.op.unary.f32(i32 6, float %8855)  ; FAbs(value)
  %8881 = fsub fast float 1.000000e+00, %5789
  %8882 = fmul fast float %5771, %5771
  %8883 = fmul fast float %8882, %8881
  %8884 = fadd fast float %8883, %5789
  %8885 = bitcast float %8884 to i32
  %8886 = ashr i32 %8885, 1
  %8887 = add nsw i32 %8886, 532487669
  %8888 = bitcast i32 %8887 to float
  %8889 = fadd fast float %8888, %5771
  %8890 = fmul fast float %5789, %8879
  %8891 = fsub fast float 1.000000e+00, %8879
  %8892 = fadd fast float %8891, %8890
  %8893 = fmul fast float %8880, %8880
  %8894 = fmul fast float %8893, %8881
  %8895 = fadd fast float %8894, %5789
  %8896 = bitcast float %8895 to i32
  %8897 = ashr i32 %8896, 1
  %8898 = add nsw i32 %8897, 532487669
  %8899 = bitcast i32 %8898 to float
  %8900 = fadd fast float %8899, %8880
  %8901 = fmul fast float %8892, %8892
  %8902 = fmul fast float %8901, %8889
  %8903 = fmul fast float %8902, %8900
  %8904 = fdiv fast float 1.000000e+00, %8903
  %8905 = bitcast float %5789 to i32
  %8906 = sitofp i32 %8905 to float
  %8907 = fmul fast float %8906, 0x3FE7F73180000000
  %8908 = fadd fast float %8907, 0x41AFE27C40000000
  %8909 = fptosi float %8908 to i32
  %8910 = bitcast i32 %8909 to float
  %8911 = fmul fast float %8502, 0x3FD80E9D60000000
  %8912 = fmul fast float %8911, %8866
  %8913 = fadd fast float %8910, %8912
  %8914 = bitcast float %8913 to i32
  %8915 = sub nsw i32 2129859010, %8914
  %8916 = bitcast i32 %8915 to float
  %8917 = fmul fast float %5789, %8904
  %8918 = fmul fast float %8917, %8910
  %8919 = fmul fast float %8918, %8916
  %8920 = fmul fast float %6042, 0x3FF9999980000000
  %8921 = fsub fast float 5.000000e+00, %8920
  %8922 = call float @dx.op.unary.f32(i32 6, float %8856)  ; FAbs(value)
  %8923 = fsub fast float 1.000000e+00, %8922
  %8924 = fmul fast float %6042, 0x41D9660740000000
  %8925 = fadd fast float %8924, 0xC1EFBF8940000000
  %8926 = bitcast float %8923 to i32
  %8927 = sitofp i32 %8926 to float
  %8928 = fmul fast float %8927, %8921
  %8929 = fadd fast float %8925, %8928
  %8930 = fptosi float %8929 to i32
  %8931 = bitcast i32 %8930 to float
  %8932 = fsub fast float 1.000000e+00, %5760
  %8933 = fsub fast float 1.000000e+00, %5761
  %8934 = fsub fast float 1.000000e+00, %5769
  %8935 = fmul fast float %8931, %8932
  %8936 = fmul fast float %8931, %8933
  %8937 = fmul fast float %8931, %8934
  %8938 = fadd fast float %8935, %5760
  %8939 = fadd fast float %8936, %5761
  %8940 = fadd fast float %8937, %5769
  br i1 %6065, label %8941, label %8964

; <label>:8941                                    ; preds = %8827
  %8942 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %5122, float %8922, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8943 = extractvalue %dx.types.ResRet.f32 %8942, 0
  %8944 = extractvalue %dx.types.ResRet.f32 %8942, 1
  %8945 = extractvalue %dx.types.ResRet.f32 %8942, 2
  %8946 = fadd fast float %8943, -5.000000e-01
  %8947 = fadd fast float %8944, -5.000000e-01
  %8948 = fadd fast float %8945, -5.000000e-01
  %8949 = fmul fast float %5760, 4.000000e+00
  %8950 = fmul fast float %8949, %8932
  %8951 = fmul fast float %8950, %8946
  %8952 = fmul fast float %5761, 4.000000e+00
  %8953 = fmul fast float %8952, %8933
  %8954 = fmul fast float %8953, %8947
  %8955 = fmul fast float %5769, 4.000000e+00
  %8956 = fmul fast float %8955, %8934
  %8957 = fmul fast float %8956, %8948
  %8958 = fadd fast float %8951, %8938
  %8959 = fadd fast float %8954, %8939
  %8960 = fadd fast float %8957, %8940
  %8961 = call float @dx.op.unary.f32(i32 7, float %8958)  ; Saturate(value)
  %8962 = call float @dx.op.unary.f32(i32 7, float %8959)  ; Saturate(value)
  %8963 = call float @dx.op.unary.f32(i32 7, float %8960)  ; Saturate(value)
  br label %8964

; <label>:8964                                    ; preds = %8941, %8827
  %8965 = phi float [ %8961, %8941 ], [ %8938, %8827 ]
  %8966 = phi float [ %8962, %8941 ], [ %8939, %8827 ]
  %8967 = phi float [ %8963, %8941 ], [ %8940, %8827 ]
  %8968 = fmul fast float %8855, 9.843750e-01
  %8969 = fadd fast float %8968, 7.812500e-03
  %8970 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %8969, float %6046, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8971 = extractvalue %dx.types.ResRet.f32 %8970, 0
  %8972 = extractvalue %dx.types.ResRet.f32 %8970, 1
  %8973 = extractvalue %dx.types.ResRet.f32 %8970, 2
  %8974 = extractvalue %dx.types.ResRet.f32 %8970, 3
  %8975 = fsub fast float %8973, %8971
  %8976 = fsub fast float %8974, %8972
  %8977 = fmul fast float %8975, %6052
  %8978 = fmul fast float %8976, %6052
  %8979 = fadd fast float %8977, %8971
  %8980 = fadd fast float %8978, %8972
  %8981 = fmul fast float %8979, %5760
  %8982 = fmul fast float %8979, %5761
  %8983 = fmul fast float %8979, %5769
  %8984 = fadd fast float %8981, %8980
  %8985 = fadd fast float %8982, %8980
  %8986 = fadd fast float %8983, %8980
  br i1 %6065, label %8987, label %9010

; <label>:8987                                    ; preds = %8964
  %8988 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %5122, float %8855, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8989 = extractvalue %dx.types.ResRet.f32 %8988, 0
  %8990 = extractvalue %dx.types.ResRet.f32 %8988, 1
  %8991 = extractvalue %dx.types.ResRet.f32 %8988, 2
  %8992 = fadd fast float %8989, -5.000000e-01
  %8993 = fadd fast float %8990, -5.000000e-01
  %8994 = fadd fast float %8991, -5.000000e-01
  %8995 = fmul fast float %5760, 4.000000e+00
  %8996 = fmul fast float %8995, %8932
  %8997 = fmul fast float %8996, %8992
  %8998 = fmul fast float %5761, 4.000000e+00
  %8999 = fmul fast float %8998, %8933
  %9000 = fmul fast float %8999, %8993
  %9001 = fmul fast float %5769, 4.000000e+00
  %9002 = fmul fast float %9001, %8934
  %9003 = fmul fast float %9002, %8994
  %9004 = fadd fast float %8997, %8984
  %9005 = fadd fast float %9000, %8985
  %9006 = fadd fast float %9003, %8986
  %9007 = call float @dx.op.unary.f32(i32 7, float %9004)  ; Saturate(value)
  %9008 = call float @dx.op.unary.f32(i32 7, float %9005)  ; Saturate(value)
  %9009 = call float @dx.op.unary.f32(i32 7, float %9006)  ; Saturate(value)
  br label %9010

; <label>:9010                                    ; preds = %8987, %8964
  %9011 = phi float [ %9007, %8987 ], [ %8984, %8964 ]
  %9012 = phi float [ %9008, %8987 ], [ %8985, %8964 ]
  %9013 = phi float [ %9009, %8987 ], [ %8986, %8964 ]
  %9014 = call float @dx.op.binary.f32(i32 35, float %9012, float %9013)  ; FMax(a,b)
  %9015 = call float @dx.op.binary.f32(i32 35, float %9011, float %9014)  ; FMax(a,b)
  %9016 = fsub fast float 1.000000e+00, %9015
  %9017 = call float @dx.op.binary.f32(i32 35, float %8880, float 0x3F50624DE0000000)  ; FMax(a,b)
  %9018 = fdiv fast float %4459, %9017
  %9019 = fmul fast float %6612, %9018
  %9020 = fmul fast float %6614, %9018
  %9021 = fmul fast float %6616, %9018
  %9022 = call float @dx.op.unary.f32(i32 21, float %9019)  ; Exp(value)
  %9023 = call float @dx.op.unary.f32(i32 21, float %9020)  ; Exp(value)
  %9024 = call float @dx.op.unary.f32(i32 21, float %9021)  ; Exp(value)
  %9025 = call float @dx.op.unary.f32(i32 7, float %9022)  ; Saturate(value)
  %9026 = call float @dx.op.unary.f32(i32 7, float %9023)  ; Saturate(value)
  %9027 = call float @dx.op.unary.f32(i32 7, float %9024)  ; Saturate(value)
  %9028 = select i1 %6609, float %9025, float 0.000000e+00
  %9029 = select i1 %6610, float %9026, float 0.000000e+00
  %9030 = select i1 %6611, float %9027, float 0.000000e+00
  %9031 = fsub fast float -0.000000e+00, %5763
  %9032 = fsub fast float -0.000000e+00, %5764
  %9033 = fsub fast float -0.000000e+00, %5765
  %9034 = call float @dx.op.dot3.f32(i32 55, float %8540, float %8541, float %8542, float %9031, float %9032, float %9033)  ; Dot3(ax,ay,az,bx,by,bz)
  %9035 = call float @dx.op.unary.f32(i32 7, float %9034)  ; Saturate(value)
  %9036 = fmul fast float %9035, %8547
  %9037 = fmul fast float %9035, 9.843750e-01
  %9038 = fadd fast float %9037, 7.812500e-03
  %9039 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %9038, float %6046, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9040 = extractvalue %dx.types.ResRet.f32 %9039, 0
  %9041 = extractvalue %dx.types.ResRet.f32 %9039, 1
  %9042 = extractvalue %dx.types.ResRet.f32 %9039, 2
  %9043 = extractvalue %dx.types.ResRet.f32 %9039, 3
  %9044 = fsub fast float %9042, %9040
  %9045 = fsub fast float %9043, %9041
  %9046 = fmul fast float %9044, %6052
  %9047 = fmul fast float %9045, %6052
  %9048 = fadd fast float %9046, %9040
  %9049 = fadd fast float %9047, %9041
  %9050 = fmul fast float %9048, %5760
  %9051 = fmul fast float %9048, %5761
  %9052 = fmul fast float %9048, %5769
  %9053 = fadd fast float %9050, %9049
  %9054 = fadd fast float %9051, %9049
  %9055 = fadd fast float %9052, %9049
  br i1 %6065, label %9056, label %9079

; <label>:9056                                    ; preds = %9010
  %9057 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %5122, float %9035, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9058 = extractvalue %dx.types.ResRet.f32 %9057, 0
  %9059 = extractvalue %dx.types.ResRet.f32 %9057, 1
  %9060 = extractvalue %dx.types.ResRet.f32 %9057, 2
  %9061 = fadd fast float %9058, -5.000000e-01
  %9062 = fadd fast float %9059, -5.000000e-01
  %9063 = fadd fast float %9060, -5.000000e-01
  %9064 = fmul fast float %5760, 4.000000e+00
  %9065 = fmul fast float %9064, %8932
  %9066 = fmul fast float %9065, %9061
  %9067 = fmul fast float %5761, 4.000000e+00
  %9068 = fmul fast float %9067, %8933
  %9069 = fmul fast float %9068, %9062
  %9070 = fmul fast float %5769, 4.000000e+00
  %9071 = fmul fast float %9070, %8934
  %9072 = fmul fast float %9071, %9063
  %9073 = fadd fast float %9066, %9053
  %9074 = fadd fast float %9069, %9054
  %9075 = fadd fast float %9072, %9055
  %9076 = call float @dx.op.unary.f32(i32 7, float %9073)  ; Saturate(value)
  %9077 = call float @dx.op.unary.f32(i32 7, float %9074)  ; Saturate(value)
  %9078 = call float @dx.op.unary.f32(i32 7, float %9075)  ; Saturate(value)
  br label %9079

; <label>:9079                                    ; preds = %9056, %9010
  %9080 = phi float [ %9076, %9056 ], [ %9053, %9010 ]
  %9081 = phi float [ %9077, %9056 ], [ %9054, %9010 ]
  %9082 = phi float [ %9078, %9056 ], [ %9055, %9010 ]
  %9083 = call float @dx.op.binary.f32(i32 35, float %9081, float %9082)  ; FMax(a,b)
  %9084 = call float @dx.op.binary.f32(i32 35, float %9080, float %9083)  ; FMax(a,b)
  %9085 = fsub fast float 1.000000e+00, %9084
  %9086 = fmul fast float %5786, %6676
  %9087 = fadd fast float %6678, %9086
  %9088 = call float @dx.op.unary.f32(i32 7, float %9087)  ; Saturate(value)
  %9089 = fsub fast float %8867, %5777
  %9090 = fsub fast float %8868, %5778
  %9091 = fsub fast float %8869, %5779
  %9092 = call float @dx.op.dot3.f32(i32 55, float %9089, float %9090, float %9091, float %9089, float %9090, float %9091)  ; Dot3(ax,ay,az,bx,by,bz)
  %9093 = call float @dx.op.unary.f32(i32 25, float %9092)  ; Rsqrt(value)
  %9094 = fmul fast float %9089, %9093
  %9095 = fmul fast float %9090, %9093
  %9096 = fmul fast float %9091, %9093
  %9097 = call float @dx.op.dot3.f32(i32 55, float %9031, float %9032, float %9033, float %9094, float %9095, float %9096)  ; Dot3(ax,ay,az,bx,by,bz)
  %9098 = fmul fast float %9097, %9097
  %9099 = call float @dx.op.unary.f32(i32 6, float %9035)  ; FAbs(value)
  %9100 = call float @dx.op.binary.f32(i32 35, float %9088, float 0x3F847AE140000000)  ; FMax(a,b)
  %9101 = fmul fast float %9100, %9100
  %9102 = fmul fast float %9101, %9101
  %9103 = fsub fast float 1.000000e+00, %9102
  %9104 = fmul fast float %8882, %9103
  %9105 = fadd fast float %9104, %9102
  %9106 = bitcast float %9105 to i32
  %9107 = ashr i32 %9106, 1
  %9108 = add nsw i32 %9107, 532487669
  %9109 = bitcast i32 %9108 to float
  %9110 = fadd fast float %9109, %5771
  %9111 = fmul fast float %9102, %9098
  %9112 = fsub fast float 1.000000e+00, %9098
  %9113 = fadd fast float %9112, %9111
  %9114 = fmul fast float %9099, %9099
  %9115 = fmul fast float %9114, %9103
  %9116 = fadd fast float %9115, %9102
  %9117 = bitcast float %9116 to i32
  %9118 = ashr i32 %9117, 1
  %9119 = add nsw i32 %9118, 532487669
  %9120 = bitcast i32 %9119 to float
  %9121 = fadd fast float %9120, %9099
  %9122 = fmul fast float %9113, %9113
  %9123 = fmul fast float %9122, %9110
  %9124 = fmul fast float %9123, %9121
  %9125 = fdiv fast float 1.000000e+00, %9124
  %9126 = bitcast float %9102 to i32
  %9127 = sitofp i32 %9126 to float
  %9128 = fmul fast float %9127, 0x3FE7F73180000000
  %9129 = fadd fast float %9128, 0x41AFE27C40000000
  %9130 = fptosi float %9129 to i32
  %9131 = bitcast i32 %9130 to float
  %9132 = fadd fast float %9131, %8912
  %9133 = bitcast float %9132 to i32
  %9134 = sub nsw i32 2129859010, %9133
  %9135 = bitcast i32 %9134 to float
  %9136 = fmul fast float %9102, %9125
  %9137 = fmul fast float %9136, %9131
  %9138 = fmul fast float %9137, %9135
  br i1 %8532, label %9139, label %9149

; <label>:9139                                    ; preds = %9079
  %9140 = fmul fast float %9036, %9028
  %9141 = fmul fast float %9036, %9029
  %9142 = fmul fast float %9036, %9030
  %9143 = fmul fast float %9140, %9085
  %9144 = fmul fast float %9143, %9138
  %9145 = fmul fast float %9141, %9085
  %9146 = fmul fast float %9145, %9138
  %9147 = fmul fast float %9142, %9085
  %9148 = fmul fast float %9147, %9138
  br label %9149

; <label>:9149                                    ; preds = %9139, %9079
  %9150 = phi float [ %9144, %9139 ], [ 0.000000e+00, %9079 ]
  %9151 = phi float [ %9146, %9139 ], [ 0.000000e+00, %9079 ]
  %9152 = phi float [ %9148, %9139 ], [ 0.000000e+00, %9079 ]
  %9153 = fmul fast float %8965, %8919
  %9154 = fmul fast float %8966, %8919
  %9155 = fmul fast float %8967, %8919
  %9156 = fsub fast float 1.000000e+00, %8856
  %9157 = bitcast float %9156 to i32
  %9158 = sitofp i32 %9157 to float
  %9159 = fmul fast float %9158, 5.000000e+00
  %9160 = fadd fast float %9159, 0xC1EFBF8940000000
  %9161 = fptosi float %9160 to i32
  %9162 = bitcast i32 %9161 to float
  %9163 = fmul fast float %9162, %5123
  %9164 = fmul fast float %9016, %9163
  %9165 = fmul fast float %9164, %6604
  %9166 = fmul fast float %9164, %6605
  %9167 = fmul fast float %9164, %6606
  %9168 = fadd fast float %9165, %9153
  %9169 = fadd fast float %9166, %9154
  %9170 = fadd fast float %9167, %9155
  %9171 = fmul fast float %9168, %8862
  %9172 = fmul fast float %9169, %8862
  %9173 = fmul fast float %9170, %8862
  %9174 = fadd fast float %9171, %9150
  %9175 = fadd fast float %9172, %9151
  %9176 = fadd fast float %9173, %9152
  %9177 = fmul fast float %8844, %5148
  %9178 = fmul fast float %9177, %8862
  %9179 = fmul fast float %9178, %9016
  %9180 = fmul fast float %8845, %5148
  %9181 = fmul fast float %9180, %8862
  %9182 = fmul fast float %9181, %9016
  %9183 = fmul fast float %8846, %5148
  %9184 = fmul fast float %9183, %8862
  %9185 = fmul fast float %9184, %9016
  %9186 = fadd fast float %9179, %8476
  %9187 = fadd fast float %9182, %8477
  %9188 = fadd fast float %9185, %8478
  %9189 = fmul fast float %9177, %9174
  %9190 = fmul fast float %9180, %9175
  %9191 = fmul fast float %9183, %9176
  %9192 = fadd fast float %9189, %8473
  %9193 = fadd fast float %9190, %8474
  %9194 = fadd fast float %9191, %8475
  br label %8606

; <label>:9195                                    ; preds = %8606
  br label %9196

; <label>:9196                                    ; preds = %9195, %8439
  %9197 = phi float [ %8441, %8439 ], [ %8607, %9195 ]
  %9198 = phi float [ %8442, %8439 ], [ %8608, %9195 ]
  %9199 = phi float [ %8443, %8439 ], [ %8609, %9195 ]
  %9200 = phi float [ %8444, %8439 ], [ %8610, %9195 ]
  %9201 = phi float [ %8445, %8439 ], [ %8611, %9195 ]
  %9202 = phi float [ %8446, %8439 ], [ %8612, %9195 ]
  %9203 = add i32 %8440, 1
  %9204 = icmp ugt i32 %9203, %8436
  br i1 %9204, label %9205, label %8439

; <label>:9205                                    ; preds = %9196
  br label %9206

; <label>:9206                                    ; preds = %9205, %8389, %8379
  %9207 = phi float [ %8380, %8379 ], [ %8380, %8389 ], [ %9197, %9205 ]
  %9208 = phi float [ %8381, %8379 ], [ %8381, %8389 ], [ %9198, %9205 ]
  %9209 = phi float [ %8382, %8379 ], [ %8382, %8389 ], [ %9199, %9205 ]
  %9210 = phi float [ %8383, %8379 ], [ %8383, %8389 ], [ %9200, %9205 ]
  %9211 = phi float [ %8384, %8379 ], [ %8384, %8389 ], [ %9201, %9205 ]
  %9212 = phi float [ %8385, %8379 ], [ %8385, %8389 ], [ %9202, %9205 ]
  %9213 = fmul fast float %5148, %6633
  %9214 = fsub fast float -0.000000e+00, %9213
  %9215 = fmul fast float %5148, %6634
  %9216 = fsub fast float -0.000000e+00, %9215
  %9217 = fmul fast float %5148, %6635
  %9218 = fsub fast float -0.000000e+00, %9217
  %9219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9220 = extractvalue %dx.types.CBufRet.f32 %9219, 0
  %9221 = fmul fast float %9220, %6639
  %9222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %9223 = extractvalue %dx.types.CBufRet.f32 %9222, 3
  %9224 = fsub fast float 1.000000e+00, %5126
  %9225 = call float @dx.op.unary.f32(i32 7, float %9224)  ; Saturate(value)
  %9226 = fadd fast float %9212, %5125
  %9227 = fmul fast float %9226, %5126
  %9228 = fmul fast float %9225, %9223
  %9229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %5127, i32 undef)  ; BufferLoad(srv,index,wot)
  %9230 = extractvalue %dx.types.ResRet.i32 %9229, 3
  %9231 = bitcast i32 %9230 to float
  %9232 = fsub fast float %9214, %9231
  %9233 = fsub fast float %9216, %9231
  %9234 = fsub fast float %9218, %9231
  %9235 = fmul fast float %9232, %198
  %9236 = fmul fast float %9233, %198
  %9237 = fmul fast float %9234, %198
  %9238 = fadd fast float %9235, %9231
  %9239 = fadd fast float %9236, %9231
  %9240 = fadd fast float %9237, %9231
  %9241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %9242 = extractvalue %dx.types.CBufRet.f32 %9241, 3
  %9243 = fmul fast float %9210, %5757
  %9244 = fmul fast float %9211, %5758
  %9245 = fmul fast float %9212, %5759
  %9246 = fcmp fast ogt float %97, %218
  %9247 = and i1 %9246, %5580
  %9248 = or i1 %5586, %9247
  %9249 = icmp eq i32 %5579, 2
  %9250 = fcmp fast ole float %97, %218
  %9251 = and i1 %9250, %9249
  %9252 = or i1 %9251, %9248
  br i1 %9247, label %9253, label %9510

; <label>:9253                                    ; preds = %9206
  %9254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %9255 = extractvalue %dx.types.CBufRet.f32 %9254, 2
  %9256 = extractvalue %dx.types.CBufRet.f32 %9254, 3
  %9257 = fmul fast float %9255, %109
  %9258 = fmul fast float %9256, %110
  %9259 = call float @dx.op.unary.f32(i32 7, float %9257)  ; Saturate(value)
  %9260 = call float @dx.op.unary.f32(i32 7, float %9258)  ; Saturate(value)
  %9261 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %9259, float %9260, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9262 = extractvalue %dx.types.ResRet.f32 %9261, 0
  %9263 = extractvalue %dx.types.ResRet.f32 %9261, 1
  %9264 = extractvalue %dx.types.ResRet.f32 %9261, 2
  %9265 = extractvalue %dx.types.ResRet.f32 %9261, 3
  %9266 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %9259, float %9260, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9267 = extractvalue %dx.types.ResRet.f32 %9266, 0
  %9268 = extractvalue %dx.types.ResRet.f32 %9266, 1
  %9269 = extractvalue %dx.types.ResRet.f32 %9266, 2
  %9270 = extractvalue %dx.types.ResRet.f32 %9266, 3
  %9271 = call float @dx.op.binary.f32(i32 35, float %9263, float %9264)  ; FMax(a,b)
  %9272 = call float @dx.op.binary.f32(i32 35, float %9262, float %9271)  ; FMax(a,b)
  %9273 = call float @dx.op.binary.f32(i32 35, float %9272, float %9265)  ; FMax(a,b)
  %9274 = call float @dx.op.binary.f32(i32 36, float %9268, float %9269)  ; FMin(a,b)
  %9275 = call float @dx.op.binary.f32(i32 36, float %9267, float %9274)  ; FMin(a,b)
  %9276 = call float @dx.op.binary.f32(i32 36, float %9275, float %9270)  ; FMin(a,b)
  %9277 = fmul fast float %9273, 2.550000e+02
  %9278 = fadd fast float %9277, 0x3F70101020000000
  %9279 = fptoui float %9278 to i32
  %9280 = fmul fast float %9276, 2.550000e+02
  %9281 = fadd fast float %9280, 0x3F70101020000000
  %9282 = fptoui float %9281 to i32
  %9283 = icmp ult i32 %9279, %9282
  br i1 %9283, label %9284, label %9452

; <label>:9284                                    ; preds = %9253
  %9285 = fcmp fast ogt float %96, 9.843750e-01
  %9286 = fadd fast float %97, -4.000000e+00
  %9287 = select i1 %9285, float -4.000000e+00, float %9286
  %9288 = call float @dx.op.binary.f32(i32 35, float %9287, float 0.000000e+00)  ; FMax(a,b)
  %9289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9290 = extractvalue %dx.types.CBufRet.f32 %9289, 0
  %9291 = fadd fast float %9290, %9288
  %9292 = extractvalue %dx.types.CBufRet.f32 %9289, 2
  %9293 = fmul fast float %9291, %9292
  %9294 = call float @dx.op.unary.f32(i32 23, float %9293)  ; Log(value)
  %9295 = extractvalue %dx.types.CBufRet.f32 %9289, 3
  %9296 = fmul fast float %9295, %9294
  %9297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9298 = extractvalue %dx.types.CBufRet.f32 %9297, 2
  %9299 = fmul fast float %9296, %9298
  %9300 = call float @dx.op.unary.f32(i32 7, float %9299)  ; Saturate(value)
  %9301 = uitofp i32 %9279 to float
  %9302 = uitofp i32 %9282 to float
  %9303 = fadd fast float %9301, 5.000000e-01
  %9304 = fadd fast float %9302, 5.000000e-01
  %9305 = fmul fast float %9298, %9303
  %9306 = fmul fast float %9298, %9304
  %9307 = fadd fast float %9305, 0x3F0FFB4800000000
  %9308 = fadd fast float %9306, 0xBF0FFB4800000000
  %9309 = call float @dx.op.binary.f32(i32 35, float %9300, float %9307)  ; FMax(a,b)
  %9310 = call float @dx.op.binary.f32(i32 36, float %9309, float %9308)  ; FMin(a,b)
  %9311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9312 = extractvalue %dx.types.CBufRet.f32 %9311, 1
  %9313 = extractvalue %dx.types.CBufRet.f32 %9311, 2
  %9314 = extractvalue %dx.types.CBufRet.f32 %9311, 0
  %9315 = fmul fast float %9312, %9310
  %9316 = fadd fast float %9314, %9315
  %9317 = fadd fast float %9314, %9313
  %9318 = fsub fast float %9312, %9313
  %9319 = fadd fast float %9318, %9314
  %9320 = call float @dx.op.binary.f32(i32 35, float %9316, float %9317)  ; FMax(a,b)
  %9321 = call float @dx.op.binary.f32(i32 36, float %9320, float %9319)  ; FMin(a,b)
  %9322 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %52, float %9259, float %9260, float %9321, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9323 = extractvalue %dx.types.ResRet.f32 %9322, 0
  %9324 = extractvalue %dx.types.ResRet.f32 %9322, 1
  %9325 = extractvalue %dx.types.ResRet.f32 %9322, 2
  %9326 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9327 = extractvalue %dx.types.CBufRet.i32 %9326, 0
  %9328 = extractvalue %dx.types.CBufRet.i32 %9326, 1
  %9329 = uitofp i32 %9327 to float
  %9330 = uitofp i32 %9328 to float
  %9331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9332 = extractvalue %dx.types.CBufRet.f32 %9331, 0
  %9333 = extractvalue %dx.types.CBufRet.f32 %9331, 1
  %9334 = fmul fast float %9329, %9259
  %9335 = fmul fast float %9330, %9260
  %9336 = fadd fast float %9334, -5.000000e-01
  %9337 = fadd fast float %9335, -5.000000e-01
  %9338 = call float @dx.op.unary.f32(i32 22, float %9336)  ; Frc(value)
  %9339 = call float @dx.op.unary.f32(i32 22, float %9337)  ; Frc(value)
  %9340 = fmul fast float %9338, %9338
  %9341 = fmul fast float %9340, %9338
  %9342 = fsub fast float 3.000000e+00, %9338
  %9343 = fmul fast float %9340, %9342
  %9344 = fmul fast float %9338, 3.000000e+00
  %9345 = fmul fast float %9341, 3.000000e+00
  %9346 = fmul fast float %9340, 6.000000e+00
  %9347 = fsub fast float %9345, %9346
  %9348 = fadd fast float %9347, 4.000000e+00
  %9349 = fmul fast float %9348, 0x3FC5555560000000
  %9350 = fmul fast float %9341, -3.000000e+00
  %9351 = fadd fast float %9340, %9338
  %9352 = fmul fast float %9351, 3.000000e+00
  %9353 = fadd fast float %9350, 1.000000e+00
  %9354 = fadd fast float %9353, %9352
  %9355 = fmul fast float %9341, 0x3FC5555560000000
  %9356 = fmul fast float %9339, %9339
  %9357 = fmul fast float %9356, %9339
  %9358 = fsub fast float 3.000000e+00, %9339
  %9359 = fmul fast float %9356, %9358
  %9360 = fmul fast float %9339, 3.000000e+00
  %9361 = fmul fast float %9357, 3.000000e+00
  %9362 = fmul fast float %9356, 6.000000e+00
  %9363 = fsub fast float %9361, %9362
  %9364 = fadd fast float %9363, 4.000000e+00
  %9365 = fmul fast float %9364, 0x3FC5555560000000
  %9366 = fmul fast float %9357, -3.000000e+00
  %9367 = fadd fast float %9356, %9339
  %9368 = fmul fast float %9367, 3.000000e+00
  %9369 = fadd fast float %9366, 1.000000e+00
  %9370 = fadd fast float %9369, %9368
  %9371 = fmul fast float %9357, 0x3FC5555560000000
  %9372 = fadd fast float %9338, 1.000000e+00
  %9373 = fsub fast float 1.000000e+00, %9344
  %9374 = fadd fast float %9373, %9343
  %9375 = fadd fast float %9374, %9348
  %9376 = fmul fast float %9375, 0x3FC5555560000000
  %9377 = fdiv fast float %9349, %9376
  %9378 = fsub fast float %9372, %9377
  %9379 = fsub fast float 1.000000e+00, %9338
  %9380 = fadd fast float %9354, %9341
  %9381 = fmul fast float %9380, 0x3FC5555560000000
  %9382 = fdiv fast float %9355, %9381
  %9383 = fadd fast float %9379, %9382
  %9384 = fadd fast float %9339, 1.000000e+00
  %9385 = fsub fast float 1.000000e+00, %9360
  %9386 = fadd fast float %9385, %9359
  %9387 = fadd fast float %9386, %9364
  %9388 = fmul fast float %9387, 0x3FC5555560000000
  %9389 = fdiv fast float %9365, %9388
  %9390 = fsub fast float %9384, %9389
  %9391 = fsub fast float 1.000000e+00, %9339
  %9392 = fadd fast float %9370, %9357
  %9393 = fmul fast float %9392, 0x3FC5555560000000
  %9394 = fdiv fast float %9371, %9393
  %9395 = fadd fast float %9394, %9391
  %9396 = fmul fast float %9378, %9332
  %9397 = fsub fast float %9259, %9396
  %9398 = fmul fast float %9383, %9332
  %9399 = fadd fast float %9398, %9259
  %9400 = fmul fast float %9395, %9333
  %9401 = fadd fast float %9400, %9260
  %9402 = fmul fast float %9390, %9333
  %9403 = fsub fast float %9260, %9402
  %9404 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9397, float %9403, float %9321, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9405 = extractvalue %dx.types.ResRet.f32 %9404, 0
  %9406 = extractvalue %dx.types.ResRet.f32 %9404, 1
  %9407 = extractvalue %dx.types.ResRet.f32 %9404, 2
  %9408 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9399, float %9403, float %9321, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9409 = extractvalue %dx.types.ResRet.f32 %9408, 0
  %9410 = extractvalue %dx.types.ResRet.f32 %9408, 1
  %9411 = extractvalue %dx.types.ResRet.f32 %9408, 2
  %9412 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9397, float %9401, float %9321, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9413 = extractvalue %dx.types.ResRet.f32 %9412, 0
  %9414 = extractvalue %dx.types.ResRet.f32 %9412, 1
  %9415 = extractvalue %dx.types.ResRet.f32 %9412, 2
  %9416 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9399, float %9401, float %9321, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9417 = extractvalue %dx.types.ResRet.f32 %9416, 0
  %9418 = extractvalue %dx.types.ResRet.f32 %9416, 1
  %9419 = extractvalue %dx.types.ResRet.f32 %9416, 2
  %9420 = fsub fast float %9413, %9405
  %9421 = fsub fast float %9414, %9406
  %9422 = fsub fast float %9415, %9407
  %9423 = fmul fast float %9420, %9393
  %9424 = fmul fast float %9421, %9393
  %9425 = fmul fast float %9422, %9393
  %9426 = fadd fast float %9423, %9405
  %9427 = fadd fast float %9424, %9406
  %9428 = fadd fast float %9425, %9407
  %9429 = fsub fast float %9417, %9409
  %9430 = fsub fast float %9418, %9410
  %9431 = fsub fast float %9419, %9411
  %9432 = fmul fast float %9429, %9393
  %9433 = fmul fast float %9430, %9393
  %9434 = fmul fast float %9431, %9393
  %9435 = fsub fast float %9409, %9426
  %9436 = fadd fast float %9435, %9432
  %9437 = fsub fast float %9410, %9427
  %9438 = fadd fast float %9437, %9433
  %9439 = fsub fast float %9411, %9428
  %9440 = fadd fast float %9439, %9434
  %9441 = fmul fast float %9436, %9381
  %9442 = fmul fast float %9438, %9381
  %9443 = fmul fast float %9440, %9381
  %9444 = fadd fast float %9441, %9426
  %9445 = fadd fast float %9442, %9427
  %9446 = fadd fast float %9443, %9428
  %9447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9448 = extractvalue %dx.types.CBufRet.f32 %9447, 1
  %9449 = fmul fast float %9444, %9448
  %9450 = fmul fast float %9445, %9448
  %9451 = fmul fast float %9446, %9448
  br label %9452

; <label>:9452                                    ; preds = %9284, %9253
  %9453 = phi float [ %9323, %9284 ], [ 1.000000e+00, %9253 ]
  %9454 = phi float [ %9324, %9284 ], [ 1.000000e+00, %9253 ]
  %9455 = phi float [ %9325, %9284 ], [ 1.000000e+00, %9253 ]
  %9456 = phi float [ %9449, %9284 ], [ 0.000000e+00, %9253 ]
  %9457 = phi float [ %9450, %9284 ], [ 0.000000e+00, %9253 ]
  %9458 = phi float [ %9451, %9284 ], [ 0.000000e+00, %9253 ]
  %9459 = fmul fast float %9456, %9238
  %9460 = fmul fast float %9457, %9239
  %9461 = fmul fast float %9458, %9240
  %9462 = call float @dx.op.dot3.f32(i32 55, float %9453, float %9454, float %9455, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9463 = call float @dx.op.dot3.f32(i32 55, float %9459, float %9460, float %9461, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9464 = select i1 %258, float %9462, float %9453
  %9465 = select i1 %258, float %9462, float %9454
  %9466 = select i1 %258, float 1.000000e+00, float %9455
  %9467 = select i1 %258, float %9463, float %9459
  %9468 = select i1 %258, float 0.000000e+00, float %9460
  %9469 = select i1 %258, float 0.000000e+00, float %9461
  %9470 = fmul fast float %9464, %9243
  %9471 = fmul fast float %9465, %9244
  %9472 = fmul fast float %9466, %9245
  %9473 = fadd fast float %9470, %9467
  %9474 = fadd fast float %9471, %9468
  %9475 = fadd fast float %9469, %9472
  %9476 = fmul fast float %9464, %9207
  %9477 = fmul fast float %9465, %9208
  %9478 = fmul fast float %9466, %9209
  %9479 = fmul fast float %134, %9255
  %9480 = fmul fast float %136, %9256
  %9481 = fsub fast float 1.000000e+00, %9479
  %9482 = fsub fast float 1.000000e+00, %9480
  %9483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9484 = extractvalue %dx.types.CBufRet.f32 %9483, 0
  %9485 = extractvalue %dx.types.CBufRet.f32 %9483, 1
  %9486 = extractvalue %dx.types.CBufRet.f32 %9483, 2
  %9487 = fmul fast float %9481, %9484
  %9488 = fmul fast float %9481, %9485
  %9489 = fmul fast float %9481, %9486
  %9490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9491 = extractvalue %dx.types.CBufRet.f32 %9490, 0
  %9492 = extractvalue %dx.types.CBufRet.f32 %9490, 1
  %9493 = extractvalue %dx.types.CBufRet.f32 %9490, 2
  %9494 = fmul fast float %9482, %9491
  %9495 = fmul fast float %9482, %9492
  %9496 = fmul fast float %9482, %9493
  %9497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9498 = extractvalue %dx.types.CBufRet.f32 %9497, 0
  %9499 = extractvalue %dx.types.CBufRet.f32 %9497, 1
  %9500 = extractvalue %dx.types.CBufRet.f32 %9497, 2
  %9501 = fadd fast float %9494, %9498
  %9502 = fadd fast float %9501, %9487
  %9503 = fadd fast float %9495, %9499
  %9504 = fadd fast float %9503, %9488
  %9505 = fadd fast float %9496, %9500
  %9506 = fadd fast float %9505, %9489
  %9507 = fmul fast float %9502, %218
  %9508 = fmul fast float %9504, %218
  %9509 = fmul fast float %9506, %218
  br label %9510

; <label>:9510                                    ; preds = %9452, %9206
  %9511 = phi float [ %9507, %9452 ], [ %164, %9206 ]
  %9512 = phi float [ %9508, %9452 ], [ %165, %9206 ]
  %9513 = phi float [ %9509, %9452 ], [ %166, %9206 ]
  %9514 = phi float [ %218, %9452 ], [ %97, %9206 ]
  %9515 = phi float [ %9473, %9452 ], [ %9243, %9206 ]
  %9516 = phi float [ %9474, %9452 ], [ %9244, %9206 ]
  %9517 = phi float [ %9475, %9452 ], [ %9245, %9206 ]
  %9518 = phi float [ %9476, %9452 ], [ %9207, %9206 ]
  %9519 = phi float [ %9477, %9452 ], [ %9208, %9206 ]
  %9520 = phi float [ %9478, %9452 ], [ %9209, %9206 ]
  %9521 = phi float [ %9453, %9452 ], [ 1.000000e+00, %9206 ]
  br i1 %9252, label %10676, label %9522

; <label>:9522                                    ; preds = %9510
  %9523 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %9524 = extractvalue %dx.types.CBufRet.f32 %9523, 0
  %9525 = extractvalue %dx.types.CBufRet.f32 %9523, 1
  %9526 = extractvalue %dx.types.CBufRet.f32 %9523, 2
  %9527 = extractvalue %dx.types.CBufRet.f32 %9523, 3
  %9528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %9529 = extractvalue %dx.types.CBufRet.f32 %9528, 0
  %9530 = extractvalue %dx.types.CBufRet.f32 %9528, 1
  %9531 = extractvalue %dx.types.CBufRet.f32 %9528, 2
  %9532 = extractvalue %dx.types.CBufRet.f32 %9528, 3
  %9533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %9534 = extractvalue %dx.types.CBufRet.f32 %9533, 0
  %9535 = extractvalue %dx.types.CBufRet.f32 %9533, 1
  %9536 = extractvalue %dx.types.CBufRet.f32 %9533, 2
  %9537 = extractvalue %dx.types.CBufRet.f32 %9533, 3
  %9538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %9539 = extractvalue %dx.types.CBufRet.f32 %9538, 0
  %9540 = extractvalue %dx.types.CBufRet.f32 %9538, 1
  %9541 = extractvalue %dx.types.CBufRet.f32 %9538, 2
  %9542 = extractvalue %dx.types.CBufRet.f32 %9538, 3
  %9543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %9544 = extractvalue %dx.types.CBufRet.f32 %9543, 3
  %9545 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %9546 = extractvalue %dx.types.CBufRet.f32 %9545, 3
  %9547 = extractvalue %dx.types.CBufRet.f32 %9545, 0
  %9548 = extractvalue %dx.types.CBufRet.f32 %9545, 1
  %9549 = extractvalue %dx.types.CBufRet.f32 %9545, 2
  %9550 = fcmp fast olt float %9549, -5.000000e-01
  %9551 = call float @dx.op.dot3.f32(i32 55, float %9511, float %9512, float %9513, float %9511, float %9512, float %9513)  ; Dot3(ax,ay,az,bx,by,bz)
  %9552 = call float @dx.op.unary.f32(i32 25, float %9551)  ; Rsqrt(value)
  %9553 = fmul fast float %9552, %9551
  %9554 = fmul fast float %9552, %9511
  %9555 = fmul fast float %9552, %9512
  %9556 = fmul fast float %9552, %9513
  %9557 = fadd fast float %9553, %9527
  %9558 = call float @dx.op.dot3.f32(i32 55, float %9554, float %9555, float %9556, float %9524, float %9525, float %9526)  ; Dot3(ax,ay,az,bx,by,bz)
  %9559 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %9560 = extractvalue %dx.types.CBufRet.i32 %9559, 1
  %9561 = and i32 %9560, 1
  %9562 = icmp ne i32 %9561, 0
  %9563 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %9564 = extractvalue %dx.types.CBufRet.f32 %9563, 2
  %9565 = fcmp fast ogt float %9564, 0.000000e+00
  %9566 = and i1 %9562, %9565
  br i1 %9566, label %9567, label %9973, !dx.controlflow.hints !135

; <label>:9567                                    ; preds = %9522
  %9568 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %9569 = extractvalue %dx.types.CBufRet.f32 %9568, 3
  %9570 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %9571 = extractvalue %dx.types.CBufRet.f32 %9570, 2
  %9572 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9573 = extractvalue %dx.types.CBufRet.f32 %9572, 2
  %9574 = fsub fast float %9571, %9573
  %9575 = and i32 %9560, 2
  %9576 = extractvalue %dx.types.CBufRet.i32 %9559, 0
  %9577 = call i32 @dx.op.binary.i32(i32 40, i32 %9576, i32 3)  ; UMin(a,b)
  %9578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %9579 = extractvalue %dx.types.CBufRet.f32 %9578, 0
  %9580 = extractvalue %dx.types.CBufRet.f32 %9578, 1
  %9581 = extractvalue %dx.types.CBufRet.f32 %9572, 0
  %9582 = extractvalue %dx.types.CBufRet.f32 %9572, 1
  %9583 = fsub fast float %9579, %9581
  %9584 = fsub fast float %9580, %9582
  %9585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %9586 = extractvalue %dx.types.CBufRet.f32 %9585, 0
  %9587 = fcmp fast ogt float %9586, 0.000000e+00
  %9588 = fsub fast float -0.000000e+00, %9583
  %9589 = fsub fast float -0.000000e+00, %9584
  %9590 = call float @dx.op.dot2.f32(i32 54, float %9554, float %9555, float %9554, float %9555)  ; Dot2(ax,ay,bx,by)
  %9591 = call float @dx.op.dot2.f32(i32 54, float %9554, float %9555, float %9588, float %9589)  ; Dot2(ax,ay,bx,by)
  %9592 = fmul fast float %9591, 2.000000e+00
  %9593 = call float @dx.op.dot2.f32(i32 54, float %9588, float %9589, float %9588, float %9589)  ; Dot2(ax,ay,bx,by)
  %9594 = fmul fast float %9586, %9586
  %9595 = fsub fast float %9593, %9594
  %9596 = fmul fast float %9592, %9592
  %9597 = fmul fast float %9590, 4.000000e+00
  %9598 = fmul fast float %9597, %9595
  %9599 = fsub fast float %9596, %9598
  %9600 = fcmp fast ogt float %9599, 0.000000e+00
  br i1 %9600, label %9601, label %9616

; <label>:9601                                    ; preds = %9567
  %9602 = fcmp fast ogt float %9592, 0.000000e+00
  %9603 = call float @dx.op.unary.f32(i32 24, float %9599)  ; Sqrt(value)
  %9604 = fsub fast float -0.000000e+00, %9603
  %9605 = select i1 %9602, float %9603, float %9604
  %9606 = fadd fast float %9605, %9592
  %9607 = fmul float %9606, -5.000000e-01
  %9608 = fdiv fast float %9607, %9590
  %9609 = call float @dx.op.binary.f32(i32 35, float %9608, float 0.000000e+00)  ; FMax(a,b)
  %9610 = call float @dx.op.binary.f32(i32 36, float %9553, float %9609)  ; FMin(a,b)
  %9611 = fdiv fast float %9595, %9607
  %9612 = call float @dx.op.binary.f32(i32 35, float %9611, float 0.000000e+00)  ; FMax(a,b)
  %9613 = call float @dx.op.binary.f32(i32 36, float %9553, float %9612)  ; FMin(a,b)
  %9614 = call float @dx.op.binary.f32(i32 36, float %9610, float %9613)  ; FMin(a,b)
  %9615 = call float @dx.op.binary.f32(i32 35, float %9610, float %9613)  ; FMax(a,b)
  br label %9616

; <label>:9616                                    ; preds = %9601, %9567
  %9617 = phi float [ %9615, %9601 ], [ -1.000000e+00, %9567 ]
  %9618 = phi float [ %9614, %9601 ], [ -1.000000e+00, %9567 ]
  %9619 = phi i1 [ true, %9601 ], [ false, %9567 ]
  %9620 = and i1 %9587, %9619
  br i1 %9620, label %9621, label %9623

; <label>:9621                                    ; preds = %9616
  %9622 = fcmp fast oeq float %9618, %9617
  br i1 %9622, label %9926, label %9624

; <label>:9623                                    ; preds = %9616
  br i1 %9587, label %9926, label %9624

; <label>:9624                                    ; preds = %9623, %9621
  %9625 = phi float [ %9553, %9623 ], [ %9617, %9621 ]
  %9626 = phi float [ 0.000000e+00, %9623 ], [ %9618, %9621 ]
  %9627 = icmp ne i32 %9575, 0
  %9628 = fmul fast float %9625, %9556
  %9629 = fadd fast float %9628, %9569
  %9630 = fmul fast float %9629, %9625
  %9631 = select i1 %9627, float 0.000000e+00, float %9630
  %9632 = fcmp fast oeq float %9556, 0.000000e+00
  %9633 = fdiv fast float %9574, %9556
  %9634 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9633)  ; FMax(a,b)
  %9635 = select i1 %9632, float %9625, float %9634
  %9636 = call float @dx.op.binary.f32(i32 36, float %9625, float %9635)  ; FMin(a,b)
  %9637 = fcmp fast ogt float %9556, 0.000000e+00
  %9638 = fcmp fast olt float %9574, 0.000000e+00
  br i1 %9637, label %9639, label %9696

; <label>:9639                                    ; preds = %9624
  %9640 = icmp eq i32 %9575, 0
  br i1 %9638, label %9641, label %9685

; <label>:9641                                    ; preds = %9639
  %9642 = select i1 %9640, float %9625, float 0.000000e+00
  %9643 = fsub fast float -0.000000e+00, %9642
  %9644 = call float @dx.op.unary.f32(i32 6, float %9643)  ; FAbs(value)
  %9645 = fmul fast float %9642, %9556
  %9646 = fadd fast float %9645, %9569
  %9647 = fmul fast float %9644, %9646
  %9648 = fsub fast float %9631, %9647
  %9649 = fsub fast float %9625, %9644
  %9650 = select i1 %9640, float %9649, float 0.000000e+00
  %9651 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9652 = extractvalue %dx.types.CBufRet.f32 %9651, 0
  %9653 = extractvalue %dx.types.CBufRet.f32 %9651, 1
  %9654 = extractvalue %dx.types.CBufRet.f32 %9651, 2
  %9655 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9656 = extractvalue %dx.types.CBufRet.f32 %9655, 0
  %9657 = extractvalue %dx.types.CBufRet.f32 %9655, 1
  %9658 = extractvalue %dx.types.CBufRet.f32 %9655, 2
  %9659 = extractvalue %dx.types.CBufRet.f32 %9655, 3
  %9660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9661 = extractvalue %dx.types.CBufRet.f32 %9660, 3
  %9662 = call float @dx.op.binary.f32(i32 36, float %9648, float %9661)  ; FMin(a,b)
  %9663 = fmul fast float %9659, %9650
  %9664 = call float @dx.op.unary.f32(i32 7, float %9663)  ; Saturate(value)
  %9665 = fsub fast float %9656, %9652
  %9666 = fsub fast float %9657, %9653
  %9667 = fsub fast float %9658, %9654
  %9668 = fmul fast float %9664, %9665
  %9669 = fmul fast float %9664, %9666
  %9670 = fmul fast float %9664, %9667
  %9671 = fadd fast float %9668, %9652
  %9672 = fadd fast float %9669, %9653
  %9673 = fadd fast float %9670, %9654
  %9674 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9675 = extractvalue %dx.types.CBufRet.f32 %9674, 0
  %9676 = extractvalue %dx.types.CBufRet.f32 %9674, 1
  %9677 = fadd fast float %9676, %9675
  %9678 = call float @dx.op.unary.f32(i32 7, float %9677)  ; Saturate(value)
  %9679 = extractvalue %dx.types.CBufRet.f32 %9674, 2
  %9680 = extractvalue %dx.types.CBufRet.f32 %9674, 3
  %9681 = fadd fast float %9680, %9679
  %9682 = call float @dx.op.unary.f32(i32 7, float %9681)  ; Saturate(value)
  %9683 = fmul fast float %9678, %9662
  %9684 = fmul fast float %9683, %9682
  br label %9926

; <label>:9685                                    ; preds = %9639
  br i1 %9640, label %9686, label %9707

; <label>:9686                                    ; preds = %9685
  %9687 = call float @dx.op.binary.f32(i32 36, float %9636, float %9626)  ; FMin(a,b)
  %9688 = fsub fast float %9636, %9687
  %9689 = fsub fast float %9688, %9625
  %9690 = call float @dx.op.unary.f32(i32 6, float %9689)  ; FAbs(value)
  %9691 = fadd fast float %9688, %9625
  %9692 = fmul fast float %9691, %9556
  %9693 = fadd fast float %9692, %9569
  %9694 = fmul fast float %9693, %9690
  %9695 = fsub fast float %9631, %9694
  br label %9707

; <label>:9696                                    ; preds = %9624
  br i1 %9638, label %9697, label %9707

; <label>:9697                                    ; preds = %9696
  %9698 = call float @dx.op.binary.f32(i32 35, float %9626, float %9636)  ; FMax(a,b)
  %9699 = icmp eq i32 %9575, 0
  %9700 = select i1 %9699, float %9636, float 0.000000e+00
  %9701 = fsub fast float -0.000000e+00, %9700
  %9702 = call float @dx.op.unary.f32(i32 6, float %9701)  ; FAbs(value)
  %9703 = fmul fast float %9700, %9556
  %9704 = fadd fast float %9703, %9569
  %9705 = fmul fast float %9702, %9704
  %9706 = fsub fast float %9631, %9705
  br label %9707

; <label>:9707                                    ; preds = %9697, %9696, %9686, %9685
  %9708 = phi float [ %9626, %9685 ], [ %9626, %9686 ], [ %9698, %9697 ], [ %9626, %9696 ]
  %9709 = phi float [ 0.000000e+00, %9685 ], [ %9690, %9686 ], [ %9702, %9697 ], [ 0.000000e+00, %9696 ]
  %9710 = phi float [ %9631, %9685 ], [ %9695, %9686 ], [ %9706, %9697 ], [ %9631, %9696 ]
  %9711 = phi float [ %9636, %9685 ], [ %9636, %9686 ], [ %9625, %9697 ], [ %9625, %9696 ]
  %9712 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 0
  store float -1.000000e+00, float* %9712, align 4, !tbaa !122, !noalias !136
  %9713 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 1
  store float -1.000000e+00, float* %9713, align 4, !tbaa !122, !noalias !136
  %9714 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 2
  store float -1.000000e+00, float* %9714, align 4, !tbaa !122, !noalias !136
  %9715 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 0
  store float -1.000000e+00, float* %9715, align 4, !tbaa !122, !noalias !136
  %9716 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 1
  store float -1.000000e+00, float* %9716, align 4, !tbaa !122, !noalias !136
  %9717 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 2
  store float -1.000000e+00, float* %9717, align 4, !tbaa !122, !noalias !136
  %9718 = icmp sgt i32 %9577, 0
  br i1 %9718, label %9719, label %9780

; <label>:9719                                    ; preds = %9707
  br label %9720

; <label>:9720                                    ; preds = %9769, %9719
  %9721 = phi i32 [ %9770, %9769 ], [ 0, %9719 ]
  %9722 = phi i32 [ %9771, %9769 ], [ 0, %9719 ]
  %9723 = add nuw i32 %9722, 171
  %9724 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 %9723)  ; CBufferLoadLegacy(handle,regIndex)
  %9725 = extractvalue %dx.types.CBufRet.f32 %9724, 0
  %9726 = extractvalue %dx.types.CBufRet.f32 %9724, 1
  %9727 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9728 = extractvalue %dx.types.CBufRet.f32 %9727, 0
  %9729 = extractvalue %dx.types.CBufRet.f32 %9727, 1
  %9730 = fsub fast float %9725, %9728
  %9731 = fsub fast float %9726, %9729
  %9732 = extractvalue %dx.types.CBufRet.f32 %9724, 2
  %9733 = fsub fast float -0.000000e+00, %9730
  %9734 = fsub fast float -0.000000e+00, %9731
  %9735 = call float @dx.op.dot2.f32(i32 54, float %9554, float %9555, float %9733, float %9734)  ; Dot2(ax,ay,bx,by)
  %9736 = fmul fast float %9735, 2.000000e+00
  %9737 = call float @dx.op.dot2.f32(i32 54, float %9733, float %9734, float %9733, float %9734)  ; Dot2(ax,ay,bx,by)
  %9738 = fmul fast float %9732, %9732
  %9739 = fsub fast float %9737, %9738
  %9740 = fmul fast float %9736, %9736
  %9741 = fmul fast float %9597, %9739
  %9742 = fsub fast float %9740, %9741
  %9743 = fcmp fast ogt float %9742, 0.000000e+00
  br i1 %9743, label %9744, label %9759

; <label>:9744                                    ; preds = %9720
  %9745 = fcmp fast ogt float %9736, 0.000000e+00
  %9746 = call float @dx.op.unary.f32(i32 24, float %9742)  ; Sqrt(value)
  %9747 = fsub fast float -0.000000e+00, %9746
  %9748 = select i1 %9745, float %9746, float %9747
  %9749 = fadd fast float %9748, %9736
  %9750 = fmul float %9749, -5.000000e-01
  %9751 = fdiv fast float %9750, %9590
  %9752 = call float @dx.op.binary.f32(i32 35, float %9751, float 0.000000e+00)  ; FMax(a,b)
  %9753 = call float @dx.op.binary.f32(i32 36, float %9625, float %9752)  ; FMin(a,b)
  %9754 = fdiv fast float %9739, %9750
  %9755 = call float @dx.op.binary.f32(i32 35, float %9754, float 0.000000e+00)  ; FMax(a,b)
  %9756 = call float @dx.op.binary.f32(i32 36, float %9625, float %9755)  ; FMin(a,b)
  %9757 = call float @dx.op.binary.f32(i32 36, float %9753, float %9756)  ; FMin(a,b)
  %9758 = call float @dx.op.binary.f32(i32 35, float %9753, float %9756)  ; FMax(a,b)
  br label %9759

; <label>:9759                                    ; preds = %9744, %9720
  %9760 = phi float [ %9758, %9744 ], [ -1.000000e+00, %9720 ]
  %9761 = phi float [ %9757, %9744 ], [ -1.000000e+00, %9720 ]
  %9762 = phi i1 [ true, %9744 ], [ false, %9720 ]
  br i1 %9762, label %9763, label %9769

; <label>:9763                                    ; preds = %9759
  %9764 = call float @dx.op.binary.f32(i32 35, float %9708, float %9761)  ; FMax(a,b)
  %9765 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 %9722
  store float %9764, float* %9765, align 4, !tbaa !122, !noalias !136
  %9766 = call float @dx.op.binary.f32(i32 35, float %9708, float %9760)  ; FMax(a,b)
  %9767 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 %9722
  store float %9766, float* %9767, align 4, !tbaa !122, !noalias !136
  %9768 = add nsw i32 %9721, 1
  br label %9769

; <label>:9769                                    ; preds = %9763, %9759
  %9770 = phi i32 [ %9768, %9763 ], [ %9721, %9759 ]
  %9771 = add nuw nsw i32 %9722, 1
  %9772 = icmp eq i32 %9771, %9577
  br i1 %9772, label %9773, label %9720

; <label>:9773                                    ; preds = %9769
  %9774 = load float, float* %9714, align 4, !tbaa !122, !alias.scope !152, !noalias !155
  %9775 = load float, float* %9713, align 4, !tbaa !122, !alias.scope !158, !noalias !159
  %9776 = load float, float* %9712, align 4, !tbaa !122, !alias.scope !160, !noalias !161
  %9777 = load float, float* %9717, align 4, !tbaa !122, !alias.scope !162, !noalias !165
  %9778 = load float, float* %9716, align 4, !tbaa !122, !alias.scope !168, !noalias !169
  %9779 = load float, float* %9715, align 4, !tbaa !122, !alias.scope !170, !noalias !171
  br label %9780

; <label>:9780                                    ; preds = %9773, %9707
  %9781 = phi float [ -1.000000e+00, %9707 ], [ %9779, %9773 ]
  %9782 = phi float [ -1.000000e+00, %9707 ], [ %9778, %9773 ]
  %9783 = phi float [ -1.000000e+00, %9707 ], [ %9777, %9773 ]
  %9784 = phi float [ -1.000000e+00, %9707 ], [ %9776, %9773 ]
  %9785 = phi float [ -1.000000e+00, %9707 ], [ %9775, %9773 ]
  %9786 = phi float [ -1.000000e+00, %9707 ], [ %9774, %9773 ]
  %9787 = phi i32 [ 0, %9707 ], [ %9770, %9773 ]
  %9788 = call float @dx.op.binary.f32(i32 36, float %9785, float %9786)  ; FMin(a,b)
  %9789 = call float @dx.op.binary.f32(i32 36, float %9784, float %9788)  ; FMin(a,b)
  %9790 = call float @dx.op.binary.f32(i32 35, float %9784, float %9785)  ; FMax(a,b)
  %9791 = call float @dx.op.binary.f32(i32 36, float %9790, float %9786)  ; FMin(a,b)
  %9792 = call float @dx.op.binary.f32(i32 36, float %9784, float %9785)  ; FMin(a,b)
  %9793 = call float @dx.op.binary.f32(i32 35, float %9792, float %9791)  ; FMax(a,b)
  %9794 = call float @dx.op.binary.f32(i32 35, float %9785, float %9786)  ; FMax(a,b)
  %9795 = call float @dx.op.binary.f32(i32 35, float %9784, float %9794)  ; FMax(a,b)
  store float %9789, float* %9712, align 4, !tbaa !122, !alias.scope !160, !noalias !161
  store float %9793, float* %9713, align 4, !tbaa !122, !alias.scope !158, !noalias !159
  store float %9795, float* %9714, align 4, !tbaa !122, !alias.scope !152, !noalias !155
  %9796 = call float @dx.op.binary.f32(i32 36, float %9782, float %9783)  ; FMin(a,b)
  %9797 = call float @dx.op.binary.f32(i32 36, float %9781, float %9796)  ; FMin(a,b)
  %9798 = call float @dx.op.binary.f32(i32 35, float %9781, float %9782)  ; FMax(a,b)
  %9799 = call float @dx.op.binary.f32(i32 36, float %9798, float %9783)  ; FMin(a,b)
  %9800 = call float @dx.op.binary.f32(i32 36, float %9781, float %9782)  ; FMin(a,b)
  %9801 = call float @dx.op.binary.f32(i32 35, float %9800, float %9799)  ; FMax(a,b)
  %9802 = call float @dx.op.binary.f32(i32 35, float %9782, float %9783)  ; FMax(a,b)
  %9803 = call float @dx.op.binary.f32(i32 35, float %9781, float %9802)  ; FMax(a,b)
  store float %9797, float* %9715, align 4, !tbaa !122, !alias.scope !170, !noalias !171
  store float %9801, float* %9716, align 4, !tbaa !122, !alias.scope !168, !noalias !169
  store float %9803, float* %9717, align 4, !tbaa !122, !alias.scope !162, !noalias !165
  %9804 = sub nsw i32 3, %9787
  %9805 = icmp sgt i32 %9804, 2
  br i1 %9805, label %9806, label %9844

; <label>:9806                                    ; preds = %9780
  %9807 = icmp eq i32 %9575, 0
  %9808 = fsub fast float %9625, %9709
  %9809 = select i1 %9807, float %9808, float %9709
  %9810 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9811 = extractvalue %dx.types.CBufRet.f32 %9810, 0
  %9812 = extractvalue %dx.types.CBufRet.f32 %9810, 1
  %9813 = extractvalue %dx.types.CBufRet.f32 %9810, 2
  %9814 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9815 = extractvalue %dx.types.CBufRet.f32 %9814, 0
  %9816 = extractvalue %dx.types.CBufRet.f32 %9814, 1
  %9817 = extractvalue %dx.types.CBufRet.f32 %9814, 2
  %9818 = extractvalue %dx.types.CBufRet.f32 %9814, 3
  %9819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9820 = extractvalue %dx.types.CBufRet.f32 %9819, 3
  %9821 = call float @dx.op.binary.f32(i32 36, float %9710, float %9820)  ; FMin(a,b)
  %9822 = fmul fast float %9818, %9809
  %9823 = call float @dx.op.unary.f32(i32 7, float %9822)  ; Saturate(value)
  %9824 = fsub fast float %9815, %9811
  %9825 = fsub fast float %9816, %9812
  %9826 = fsub fast float %9817, %9813
  %9827 = fmul fast float %9823, %9824
  %9828 = fmul fast float %9823, %9825
  %9829 = fmul fast float %9823, %9826
  %9830 = fadd fast float %9827, %9811
  %9831 = fadd fast float %9828, %9812
  %9832 = fadd fast float %9829, %9813
  %9833 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9834 = extractvalue %dx.types.CBufRet.f32 %9833, 0
  %9835 = extractvalue %dx.types.CBufRet.f32 %9833, 1
  %9836 = fadd fast float %9835, %9834
  %9837 = call float @dx.op.unary.f32(i32 7, float %9836)  ; Saturate(value)
  %9838 = extractvalue %dx.types.CBufRet.f32 %9833, 2
  %9839 = extractvalue %dx.types.CBufRet.f32 %9833, 3
  %9840 = fadd fast float %9839, %9838
  %9841 = call float @dx.op.unary.f32(i32 7, float %9840)  ; Saturate(value)
  %9842 = fmul fast float %9837, %9821
  %9843 = fmul fast float %9842, %9841
  br label %9926

; <label>:9844                                    ; preds = %9780
  %9845 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 %9804
  %9846 = load float, float* %9845, align 4, !tbaa !122, !noalias !136
  %9847 = fcmp fast olt float %9846, %9711
  %9848 = icmp sgt i32 %9787, 0
  %9849 = and i1 %9848, %9847
  br i1 %9849, label %9850, label %9887

; <label>:9850                                    ; preds = %9844
  br label %9851

; <label>:9851                                    ; preds = %9880, %9850
  %9852 = phi float [ %9881, %9880 ], [ %9709, %9850 ]
  %9853 = phi float [ %9882, %9880 ], [ %9710, %9850 ]
  %9854 = phi float [ %9862, %9880 ], [ %9846, %9850 ]
  %9855 = phi i32 [ %9859, %9880 ], [ %9804, %9850 ]
  %9856 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 %9855
  %9857 = load float, float* %9856, align 4, !tbaa !122, !noalias !136
  %9858 = icmp slt i32 %9855, 2
  %9859 = add nsw i32 %9855, 1
  %9860 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 %9859
  %9861 = load float, float* %9860, align 4, !tbaa !122, !noalias !136
  %9862 = select i1 %9858, float %9861, float %9625
  %9863 = call float @dx.op.binary.f32(i32 36, float %9862, float %9857)  ; FMin(a,b)
  %9864 = call float @dx.op.binary.f32(i32 36, float %9711, float %9863)  ; FMin(a,b)
  %9865 = icmp eq i32 %9575, 0
  %9866 = fadd fast float %9864, %9854
  %9867 = fmul fast float %9866, %9556
  %9868 = fadd fast float %9867, %9569
  br i1 %9865, label %9874, label %9869

; <label>:9869                                    ; preds = %9851
  %9870 = fsub fast float %9864, %9854
  %9871 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9870)  ; FMax(a,b)
  %9872 = fmul fast float %9871, %9868
  %9873 = fadd fast float %9872, %9853
  br label %9880

; <label>:9874                                    ; preds = %9851
  %9875 = fsub fast float %9854, %9864
  %9876 = call float @dx.op.unary.f32(i32 6, float %9875)  ; FAbs(value)
  %9877 = fadd fast float %9876, %9852
  %9878 = fmul fast float %9876, %9868
  %9879 = fsub fast float %9853, %9878
  br label %9880

; <label>:9880                                    ; preds = %9874, %9869
  %9881 = phi float [ %9871, %9869 ], [ %9877, %9874 ]
  %9882 = phi float [ %9873, %9869 ], [ %9879, %9874 ]
  %9883 = fcmp fast olt float %9862, %9711
  %9884 = icmp slt i32 %9859, 3
  %9885 = and i1 %9884, %9883
  br i1 %9885, label %9851, label %9886

; <label>:9886                                    ; preds = %9880
  br label %9887

; <label>:9887                                    ; preds = %9886, %9844
  %9888 = phi float [ %9709, %9844 ], [ %9881, %9886 ]
  %9889 = phi float [ %9710, %9844 ], [ %9882, %9886 ]
  %9890 = fsub fast float %9625, %9888
  %9891 = select i1 %9627, float %9888, float %9890
  %9892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9893 = extractvalue %dx.types.CBufRet.f32 %9892, 0
  %9894 = extractvalue %dx.types.CBufRet.f32 %9892, 1
  %9895 = extractvalue %dx.types.CBufRet.f32 %9892, 2
  %9896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9897 = extractvalue %dx.types.CBufRet.f32 %9896, 0
  %9898 = extractvalue %dx.types.CBufRet.f32 %9896, 1
  %9899 = extractvalue %dx.types.CBufRet.f32 %9896, 2
  %9900 = extractvalue %dx.types.CBufRet.f32 %9896, 3
  %9901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9902 = extractvalue %dx.types.CBufRet.f32 %9901, 3
  %9903 = call float @dx.op.binary.f32(i32 36, float %9889, float %9902)  ; FMin(a,b)
  %9904 = fmul fast float %9900, %9891
  %9905 = call float @dx.op.unary.f32(i32 7, float %9904)  ; Saturate(value)
  %9906 = fsub fast float %9897, %9893
  %9907 = fsub fast float %9898, %9894
  %9908 = fsub fast float %9899, %9895
  %9909 = fmul fast float %9905, %9906
  %9910 = fmul fast float %9905, %9907
  %9911 = fmul fast float %9905, %9908
  %9912 = fadd fast float %9909, %9893
  %9913 = fadd fast float %9910, %9894
  %9914 = fadd fast float %9911, %9895
  %9915 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9916 = extractvalue %dx.types.CBufRet.f32 %9915, 0
  %9917 = extractvalue %dx.types.CBufRet.f32 %9915, 1
  %9918 = fadd fast float %9917, %9916
  %9919 = call float @dx.op.unary.f32(i32 7, float %9918)  ; Saturate(value)
  %9920 = extractvalue %dx.types.CBufRet.f32 %9915, 2
  %9921 = extractvalue %dx.types.CBufRet.f32 %9915, 3
  %9922 = fadd fast float %9921, %9920
  %9923 = call float @dx.op.unary.f32(i32 7, float %9922)  ; Saturate(value)
  %9924 = fmul fast float %9919, %9903
  %9925 = fmul fast float %9924, %9923
  br label %9926

; <label>:9926                                    ; preds = %9887, %9806, %9641, %9623, %9621
  %9927 = phi float [ %9650, %9641 ], [ %9809, %9806 ], [ %9891, %9887 ], [ 0.000000e+00, %9621 ], [ 0.000000e+00, %9623 ]
  %9928 = phi float [ %9684, %9641 ], [ %9843, %9806 ], [ %9925, %9887 ], [ 0.000000e+00, %9621 ], [ 0.000000e+00, %9623 ]
  %9929 = phi float [ %9671, %9641 ], [ %9830, %9806 ], [ %9912, %9887 ], [ 0.000000e+00, %9621 ], [ 0.000000e+00, %9623 ]
  %9930 = phi float [ %9672, %9641 ], [ %9831, %9806 ], [ %9913, %9887 ], [ 0.000000e+00, %9621 ], [ 0.000000e+00, %9623 ]
  %9931 = phi float [ %9673, %9641 ], [ %9832, %9806 ], [ %9914, %9887 ], [ 0.000000e+00, %9621 ], [ 0.000000e+00, %9623 ]
  %9932 = fmul fast float %9564, %9928
  %9933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9934 = extractvalue %dx.types.CBufRet.f32 %9933, 2
  %9935 = fsub fast float %9571, %9934
  %9936 = fcmp fast olt float %9932, -2.000000e+01
  %9937 = call float @dx.op.unary.f32(i32 21, float %9932)  ; Exp(value)
  %9938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9939 = extractvalue %dx.types.CBufRet.f32 %9938, 2
  %9940 = extractvalue %dx.types.CBufRet.f32 %9938, 3
  %9941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %9942 = extractvalue %dx.types.CBufRet.f32 %9941, 2
  %9943 = fmul fast float %9940, %9935
  %9944 = call float @dx.op.unary.f32(i32 7, float %9943)  ; Saturate(value)
  %9945 = fsub fast float 1.000000e+00, %9944
  %9946 = fmul fast float %9556, 5.000000e-01
  %9947 = fadd fast float %9946, 5.000000e-01
  %9948 = call float @dx.op.unary.f32(i32 7, float %9947)  ; Saturate(value)
  %9949 = fsub fast float 1.000000e+00, %9948
  %9950 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9945)  ; FMax(a,b)
  %9951 = fdiv fast float %9949, %9950
  %9952 = fsub fast float %9935, %9513
  %9953 = call float @dx.op.unary.f32(i32 6, float %9952)  ; FAbs(value)
  %9954 = fmul fast float %9953, %9939
  %9955 = call float @dx.op.unary.f32(i32 7, float %9951)  ; Saturate(value)
  %9956 = fsub fast float 1.000000e+00, %9954
  %9957 = fmul fast float %9956, %9955
  %9958 = fadd fast float %9957, %9954
  %9959 = fmul fast float %9942, %9935
  %9960 = call float @dx.op.unary.f32(i32 7, float %9959)  ; Saturate(value)
  %9961 = fsub fast float 1.000000e+00, %9958
  %9962 = fmul fast float %9961, %9960
  %9963 = fadd fast float %9962, %9958
  %9964 = call float @dx.op.unary.f32(i32 7, float %9963)  ; Saturate(value)
  %9965 = fadd fast float %9937, -1.000000e+00
  %9966 = select i1 %9936, float -1.000000e+00, float %9965
  %9967 = fmul fast float %9964, %9966
  %9968 = fadd fast float %9967, 1.000000e+00
  %9969 = fsub fast float -0.000000e+00, %9967
  %9970 = fmul fast float %9929, %9969
  %9971 = fmul fast float %9930, %9969
  %9972 = fmul fast float %9931, %9969
  br label %9973

; <label>:9973                                    ; preds = %9926, %9522
  %9974 = phi float [ %9927, %9926 ], [ 0.000000e+00, %9522 ]
  %9975 = phi float [ %9968, %9926 ], [ 1.000000e+00, %9522 ]
  %9976 = phi float [ %9970, %9926 ], [ 0.000000e+00, %9522 ]
  %9977 = phi float [ %9971, %9926 ], [ 0.000000e+00, %9522 ]
  %9978 = phi float [ %9972, %9926 ], [ 0.000000e+00, %9522 ]
  %9979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9980 = extractvalue %dx.types.CBufRet.f32 %9979, 1
  %9981 = fsub fast float 1.000000e+00, %9975
  %9982 = fmul fast float %9981, %9557
  %9983 = fmul fast float %9982, %9980
  %9984 = fsub fast float %9557, %9983
  br i1 %9550, label %9985, label %10014, !dx.controlflow.hints !172

; <label>:9985                                    ; preds = %9973
  %9986 = fmul fast float %9558, %9547
  %9987 = fadd fast float %9986, %9548
  %9988 = call float @dx.op.unary.f32(i32 7, float %9987)  ; Saturate(value)
  %9989 = fmul fast float %9529, %9984
  %9990 = fsub fast float -0.000000e+00, %9989
  %9991 = fmul fast float %9530, %9984
  %9992 = fsub fast float -0.000000e+00, %9991
  %9993 = call float @dx.op.unary.f32(i32 21, float %9990)  ; Exp(value)
  %9994 = call float @dx.op.unary.f32(i32 21, float %9992)  ; Exp(value)
  %9995 = call float @dx.op.binary.f32(i32 35, float %9537, float %9993)  ; FMax(a,b)
  %9996 = call float @dx.op.binary.f32(i32 35, float %9537, float %9994)  ; FMax(a,b)
  %9997 = fsub fast float %9996, %9995
  %9998 = fmul fast float %9997, %9988
  %9999 = fadd fast float %9998, %9995
  %10000 = call float @dx.op.unary.f32(i32 7, float %9999)  ; Saturate(value)
  %10001 = fsub fast float %9534, %9539
  %10002 = fsub fast float %9535, %9540
  %10003 = fsub fast float %9536, %9541
  %10004 = fmul fast float %9988, %10001
  %10005 = fmul fast float %9988, %10002
  %10006 = fmul fast float %9988, %10003
  %10007 = fadd fast float %10004, %9539
  %10008 = fadd fast float %10005, %9540
  %10009 = fadd fast float %10006, %9541
  %10010 = fsub fast float 1.000000e+00, %10000
  %10011 = fmul fast float %10010, %10007
  %10012 = fmul fast float %10010, %10008
  %10013 = fmul fast float %10010, %10009
  br label %10073

; <label>:10014                                   ; preds = %9973
  %10015 = fmul fast float %9984, %9546
  %10016 = call float @dx.op.unary.f32(i32 7, float %10015)  ; Saturate(value)
  %10017 = fsub fast float 2.000000e+00, %10016
  %10018 = fmul fast float %10016, 9.921875e-01
  %10019 = fmul fast float %10018, %10017
  %10020 = fadd fast float %10019, 3.906250e-03
  %10021 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %54, float %10020, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10022 = extractvalue %dx.types.ResRet.f32 %10021, 0
  %10023 = fsub fast float %10016, %10022
  %10024 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %10023)  ; FMax(a,b)
  %10025 = fmul fast float %9532, %9513
  %10026 = call float @dx.op.unary.f32(i32 6, float %10025)  ; FAbs(value)
  %10027 = fcmp fast ogt float %10026, 0x3EB0C6F7A0000000
  br i1 %10027, label %10028, label %10034, !dx.controlflow.hints !173

; <label>:10028                                   ; preds = %10014
  %10029 = fmul fast float %10025, 0xBFF7154760000000
  %10030 = call float @dx.op.unary.f32(i32 21, float %10029)  ; Exp(value)
  %10031 = fsub fast float 1.000000e+00, %10030
  %10032 = fdiv fast float %10031, %10025
  %10033 = fmul fast float %10032, %9542
  br label %10034

; <label>:10034                                   ; preds = %10028, %10014
  %10035 = phi float [ %10033, %10028 ], [ %9542, %10014 ]
  %10036 = fadd fast float %10035, %9544
  %10037 = fmul fast float %10036, %10024
  %10038 = fmul fast float %9529, %10037
  %10039 = fsub fast float -0.000000e+00, %10038
  %10040 = fmul fast float %9530, %10037
  %10041 = fsub fast float -0.000000e+00, %10040
  %10042 = fmul fast float %9531, %10037
  %10043 = fsub fast float -0.000000e+00, %10042
  %10044 = call float @dx.op.unary.f32(i32 21, float %10039)  ; Exp(value)
  %10045 = call float @dx.op.unary.f32(i32 21, float %10041)  ; Exp(value)
  %10046 = call float @dx.op.unary.f32(i32 21, float %10043)  ; Exp(value)
  %10047 = fmul fast float %9558, %9558
  %10048 = fadd fast float %10047, 1.000000e+00
  %10049 = fmul fast float %10048, 0x3FAE8EC8A0000000
  %10050 = fmul fast float %10049, %9539
  %10051 = fmul fast float %10049, %9540
  %10052 = fmul fast float %10049, %9541
  %10053 = fmul fast float %9558, %9537
  %10054 = fsub fast float 1.000000e+00, %10053
  %10055 = fmul fast float %9537, %9537
  %10056 = fsub fast float 1.000000e+00, %10055
  %10057 = fmul fast float %10056, 0x3FB45F3060000000
  %10058 = fmul fast float %10054, %10054
  %10059 = fdiv fast float 1.000000e+00, %10058
  %10060 = fmul fast float %10057, %10059
  %10061 = fmul fast float %10060, %9534
  %10062 = fmul fast float %10060, %9535
  %10063 = fmul fast float %10060, %9536
  %10064 = fadd fast float %10061, %10050
  %10065 = fadd fast float %10062, %10051
  %10066 = fadd fast float %10063, %10052
  %10067 = fsub fast float 1.000000e+00, %10044
  %10068 = fsub fast float 1.000000e+00, %10045
  %10069 = fsub fast float 1.000000e+00, %10046
  %10070 = fmul fast float %10064, %10067
  %10071 = fmul fast float %10065, %10068
  %10072 = fmul fast float %10066, %10069
  br label %10073

; <label>:10073                                   ; preds = %10034, %9985
  %10074 = phi float [ %10011, %9985 ], [ %10070, %10034 ]
  %10075 = phi float [ %10012, %9985 ], [ %10071, %10034 ]
  %10076 = phi float [ %10013, %9985 ], [ %10072, %10034 ]
  %10077 = phi float [ %10000, %9985 ], [ %10044, %10034 ]
  %10078 = phi float [ %10000, %9985 ], [ %10045, %10034 ]
  %10079 = phi float [ %10000, %9985 ], [ %10046, %10034 ]
  br i1 %9566, label %10080, label %10278, !dx.controlflow.hints !174

; <label>:10080                                   ; preds = %10073
  %10081 = extractvalue %dx.types.CBufRet.f32 %9979, 0
  %10082 = fmul fast float %10081, %9981
  %10083 = fsub fast float %9976, %10074
  %10084 = fsub fast float %9977, %10075
  %10085 = fsub fast float %9978, %10076
  %10086 = fmul fast float %10082, %10083
  %10087 = fmul fast float %10082, %10084
  %10088 = fmul fast float %10082, %10085
  %10089 = fadd fast float %10086, %10074
  %10090 = fadd fast float %10087, %10075
  %10091 = fadd fast float %10088, %10076
  %10092 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %10077)  ; FMax(a,b)
  %10093 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %10078)  ; FMax(a,b)
  %10094 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %10079)  ; FMax(a,b)
  %10095 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9975)  ; FMax(a,b)
  %10096 = call float @dx.op.binary.f32(i32 35, float %9974, float %9984)  ; FMax(a,b)
  %10097 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %10096)  ; FMax(a,b)
  %10098 = fdiv fast float %9974, %10097
  %10099 = call float @dx.op.unary.f32(i32 7, float %10098)  ; Saturate(value)
  %10100 = fdiv fast float %9984, %10097
  %10101 = call float @dx.op.unary.f32(i32 7, float %10100)  ; Saturate(value)
  %10102 = fcmp fast une float %10095, 1.000000e+00
  br i1 %10102, label %10103, label %10116, !dx.controlflow.hints !175

; <label>:10103                                   ; preds = %10080
  %10104 = call float @dx.op.unary.f32(i32 23, float %10095)  ; Log(value)
  %10105 = fmul fast float %10104, 0x3FE62E4300000000
  %10106 = fmul fast float %9976, %10105
  %10107 = fsub fast float -0.000000e+00, %10106
  %10108 = fmul fast float %9977, %10105
  %10109 = fsub fast float -0.000000e+00, %10108
  %10110 = fmul fast float %9978, %10105
  %10111 = fsub fast float -0.000000e+00, %10110
  %10112 = fsub fast float 1.000000e+00, %10095
  %10113 = fdiv fast float %10107, %10112
  %10114 = fdiv fast float %10109, %10112
  %10115 = fdiv fast float %10111, %10112
  br label %10116

; <label>:10116                                   ; preds = %10103, %10080
  %10117 = phi float [ %10113, %10103 ], [ %9976, %10080 ]
  %10118 = phi float [ %10114, %10103 ], [ %9977, %10080 ]
  %10119 = phi float [ %10115, %10103 ], [ %9978, %10080 ]
  %10120 = phi float [ %10105, %10103 ], [ 0.000000e+00, %10080 ]
  %10121 = fcmp fast une float %10092, 1.000000e+00
  br i1 %10121, label %10122, label %10129, !dx.controlflow.hints !176

; <label>:10122                                   ; preds = %10116
  %10123 = call float @dx.op.unary.f32(i32 23, float %10092)  ; Log(value)
  %10124 = fmul fast float %10123, 0x3FE62E4300000000
  %10125 = fmul fast float %10089, %10124
  %10126 = fsub fast float -0.000000e+00, %10125
  %10127 = fsub fast float 1.000000e+00, %10092
  %10128 = fdiv fast float %10126, %10127
  br label %10129

; <label>:10129                                   ; preds = %10122, %10116
  %10130 = phi float [ %10128, %10122 ], [ %10089, %10116 ]
  %10131 = phi float [ %10124, %10122 ], [ 0.000000e+00, %10116 ]
  %10132 = fcmp fast une float %10093, 1.000000e+00
  br i1 %10132, label %10133, label %10140, !dx.controlflow.hints !176

; <label>:10133                                   ; preds = %10129
  %10134 = call float @dx.op.unary.f32(i32 23, float %10093)  ; Log(value)
  %10135 = fmul fast float %10134, 0x3FE62E4300000000
  %10136 = fmul fast float %10090, %10135
  %10137 = fsub fast float -0.000000e+00, %10136
  %10138 = fsub fast float 1.000000e+00, %10093
  %10139 = fdiv fast float %10137, %10138
  br label %10140

; <label>:10140                                   ; preds = %10133, %10129
  %10141 = phi float [ %10139, %10133 ], [ %10090, %10129 ]
  %10142 = phi float [ %10135, %10133 ], [ 0.000000e+00, %10129 ]
  %10143 = fcmp fast une float %10094, 1.000000e+00
  br i1 %10143, label %10144, label %10151, !dx.controlflow.hints !176

; <label>:10144                                   ; preds = %10140
  %10145 = call float @dx.op.unary.f32(i32 23, float %10094)  ; Log(value)
  %10146 = fmul fast float %10145, 0x3FE62E4300000000
  %10147 = fmul fast float %10091, %10146
  %10148 = fsub fast float -0.000000e+00, %10147
  %10149 = fsub fast float 1.000000e+00, %10094
  %10150 = fdiv fast float %10148, %10149
  br label %10151

; <label>:10151                                   ; preds = %10144, %10140
  %10152 = phi float [ %10150, %10144 ], [ %10091, %10140 ]
  %10153 = phi float [ %10146, %10144 ], [ 0.000000e+00, %10140 ]
  %10154 = fmul fast float %10117, %10101
  %10155 = fmul fast float %10118, %10101
  %10156 = fmul fast float %10119, %10101
  %10157 = fmul fast float %10120, %10101
  %10158 = fmul fast float %10130, %10099
  %10159 = fmul fast float %10141, %10099
  %10160 = fmul fast float %10152, %10099
  %10161 = fmul fast float %10131, %10099
  %10162 = fmul fast float %10142, %10099
  %10163 = fmul fast float %10153, %10099
  %10164 = fadd fast float %10158, %10154
  %10165 = fadd fast float %10159, %10155
  %10166 = fadd fast float %10160, %10156
  %10167 = fadd fast float %10161, %10157
  %10168 = fadd fast float %10162, %10157
  %10169 = fadd fast float %10163, %10157
  %10170 = fcmp fast une float %10167, 0.000000e+00
  br i1 %10170, label %10171, label %10178, !dx.controlflow.hints !177

; <label>:10171                                   ; preds = %10151
  %10172 = fmul fast float %10167, 0x3FF7154760000000
  %10173 = call float @dx.op.unary.f32(i32 21, float %10172)  ; Exp(value)
  %10174 = fsub fast float 1.000000e+00, %10173
  %10175 = fmul fast float %10164, %10174
  %10176 = fsub fast float -0.000000e+00, %10175
  %10177 = fdiv fast float %10176, %10167
  br label %10178

; <label>:10178                                   ; preds = %10171, %10151
  %10179 = phi float [ %10173, %10171 ], [ 1.000000e+00, %10151 ]
  %10180 = phi float [ %10177, %10171 ], [ %10164, %10151 ]
  %10181 = fcmp fast une float %10168, 0.000000e+00
  br i1 %10181, label %10182, label %10189, !dx.controlflow.hints !177

; <label>:10182                                   ; preds = %10178
  %10183 = fmul fast float %10168, 0x3FF7154760000000
  %10184 = call float @dx.op.unary.f32(i32 21, float %10183)  ; Exp(value)
  %10185 = fsub fast float 1.000000e+00, %10184
  %10186 = fmul fast float %10165, %10185
  %10187 = fsub fast float -0.000000e+00, %10186
  %10188 = fdiv fast float %10187, %10168
  br label %10189

; <label>:10189                                   ; preds = %10182, %10178
  %10190 = phi float [ %10184, %10182 ], [ 1.000000e+00, %10178 ]
  %10191 = phi float [ %10188, %10182 ], [ %10165, %10178 ]
  %10192 = fcmp fast une float %10169, 0.000000e+00
  br i1 %10192, label %10193, label %10200, !dx.controlflow.hints !177

; <label>:10193                                   ; preds = %10189
  %10194 = fmul fast float %10169, 0x3FF7154760000000
  %10195 = call float @dx.op.unary.f32(i32 21, float %10194)  ; Exp(value)
  %10196 = fsub fast float 1.000000e+00, %10195
  %10197 = fmul fast float %10166, %10196
  %10198 = fsub fast float -0.000000e+00, %10197
  %10199 = fdiv fast float %10198, %10169
  br label %10200

; <label>:10200                                   ; preds = %10193, %10189
  %10201 = phi float [ %10195, %10193 ], [ 1.000000e+00, %10189 ]
  %10202 = phi float [ %10199, %10193 ], [ %10166, %10189 ]
  %10203 = fcmp fast ogt float %10099, %10101
  br i1 %10203, label %10204, label %10224

; <label>:10204                                   ; preds = %10200
  %10205 = fsub fast float 1.000000e+00, %10101
  %10206 = fmul fast float %10117, %10205
  %10207 = fmul fast float %10118, %10205
  %10208 = fmul fast float %10119, %10205
  %10209 = fmul fast float %10120, %10205
  %10210 = fcmp fast une float %10209, 0.000000e+00
  br i1 %10210, label %10211, label %10262, !dx.controlflow.hints !178

; <label>:10211                                   ; preds = %10204
  %10212 = fmul fast float %10209, 0x3FF7154760000000
  %10213 = call float @dx.op.unary.f32(i32 21, float %10212)  ; Exp(value)
  %10214 = fsub fast float 1.000000e+00, %10213
  %10215 = fmul fast float %10206, %10214
  %10216 = fsub fast float -0.000000e+00, %10215
  %10217 = fmul fast float %10207, %10214
  %10218 = fsub fast float -0.000000e+00, %10217
  %10219 = fmul fast float %10208, %10214
  %10220 = fsub fast float -0.000000e+00, %10219
  %10221 = fdiv fast float %10216, %10209
  %10222 = fdiv fast float %10218, %10209
  %10223 = fdiv fast float %10220, %10209
  br label %10262

; <label>:10224                                   ; preds = %10200
  %10225 = fsub fast float 1.000000e+00, %10099
  %10226 = fmul fast float %10130, %10225
  %10227 = fmul fast float %10141, %10225
  %10228 = fmul fast float %10152, %10225
  %10229 = fmul fast float %10131, %10225
  %10230 = fmul fast float %10142, %10225
  %10231 = fmul fast float %10153, %10225
  %10232 = fcmp fast une float %10229, 0.000000e+00
  br i1 %10232, label %10233, label %10240, !dx.controlflow.hints !177

; <label>:10233                                   ; preds = %10224
  %10234 = fmul fast float %10229, 0x3FF7154760000000
  %10235 = call float @dx.op.unary.f32(i32 21, float %10234)  ; Exp(value)
  %10236 = fsub fast float 1.000000e+00, %10235
  %10237 = fmul fast float %10226, %10236
  %10238 = fsub fast float -0.000000e+00, %10237
  %10239 = fdiv fast float %10238, %10229
  br label %10240

; <label>:10240                                   ; preds = %10233, %10224
  %10241 = phi float [ %10239, %10233 ], [ %10226, %10224 ]
  %10242 = phi float [ %10235, %10233 ], [ 1.000000e+00, %10224 ]
  %10243 = fcmp fast une float %10230, 0.000000e+00
  br i1 %10243, label %10244, label %10251, !dx.controlflow.hints !177

; <label>:10244                                   ; preds = %10240
  %10245 = fmul fast float %10230, 0x3FF7154760000000
  %10246 = call float @dx.op.unary.f32(i32 21, float %10245)  ; Exp(value)
  %10247 = fsub fast float 1.000000e+00, %10246
  %10248 = fmul fast float %10227, %10247
  %10249 = fsub fast float -0.000000e+00, %10248
  %10250 = fdiv fast float %10249, %10230
  br label %10251

; <label>:10251                                   ; preds = %10244, %10240
  %10252 = phi float [ %10250, %10244 ], [ %10227, %10240 ]
  %10253 = phi float [ %10246, %10244 ], [ 1.000000e+00, %10240 ]
  %10254 = fcmp fast une float %10231, 0.000000e+00
  br i1 %10254, label %10255, label %10262, !dx.controlflow.hints !177

; <label>:10255                                   ; preds = %10251
  %10256 = fmul fast float %10231, 0x3FF7154760000000
  %10257 = call float @dx.op.unary.f32(i32 21, float %10256)  ; Exp(value)
  %10258 = fsub fast float 1.000000e+00, %10257
  %10259 = fmul fast float %10228, %10258
  %10260 = fsub fast float -0.000000e+00, %10259
  %10261 = fdiv fast float %10260, %10231
  br label %10262

; <label>:10262                                   ; preds = %10255, %10251, %10211, %10204
  %10263 = phi float [ %10261, %10255 ], [ %10223, %10211 ], [ %10208, %10204 ], [ %10228, %10251 ]
  %10264 = phi float [ %10252, %10255 ], [ %10222, %10211 ], [ %10207, %10204 ], [ %10252, %10251 ]
  %10265 = phi float [ %10241, %10255 ], [ %10221, %10211 ], [ %10206, %10204 ], [ %10241, %10251 ]
  %10266 = phi float [ %10257, %10255 ], [ %10213, %10211 ], [ 1.000000e+00, %10204 ], [ 1.000000e+00, %10251 ]
  %10267 = phi float [ %10253, %10255 ], [ %10213, %10211 ], [ 1.000000e+00, %10204 ], [ %10253, %10251 ]
  %10268 = phi float [ %10242, %10255 ], [ %10213, %10211 ], [ 1.000000e+00, %10204 ], [ %10242, %10251 ]
  %10269 = fmul fast float %10268, %10180
  %10270 = fmul fast float %10267, %10191
  %10271 = fmul fast float %10266, %10202
  %10272 = fadd fast float %10269, %10265
  %10273 = fadd fast float %10270, %10264
  %10274 = fadd fast float %10271, %10263
  %10275 = fmul fast float %10268, %10179
  %10276 = fmul fast float %10267, %10190
  %10277 = fmul fast float %10266, %10201
  br label %10278

; <label>:10278                                   ; preds = %10262, %10073
  %10279 = phi float [ %10277, %10262 ], [ %10079, %10073 ]
  %10280 = phi float [ %10276, %10262 ], [ %10078, %10073 ]
  %10281 = phi float [ %10275, %10262 ], [ %10077, %10073 ]
  %10282 = phi float [ %10274, %10262 ], [ %10076, %10073 ]
  %10283 = phi float [ %10273, %10262 ], [ %10075, %10073 ]
  %10284 = phi float [ %10272, %10262 ], [ %10074, %10073 ]
  %10285 = fmul fast float %10284, %9238
  %10286 = fmul fast float %10283, %9239
  %10287 = fmul fast float %10282, %9240
  %10288 = fmul fast float %10281, %9521
  %10289 = call float @dx.op.dot3.f32(i32 55, float %10281, float %10280, float %10279, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10290 = call float @dx.op.dot3.f32(i32 55, float %10285, float %10286, float %10287, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10291 = select i1 %258, float %10289, float %10281
  %10292 = select i1 %258, float %10289, float %10280
  %10293 = select i1 %258, float 1.000000e+00, float %10279
  %10294 = select i1 %258, float %10290, float %10285
  %10295 = select i1 %258, float 0.000000e+00, float %10286
  %10296 = select i1 %258, float 0.000000e+00, float %10287
  %10297 = fmul fast float %10291, %9515
  %10298 = fmul fast float %10292, %9516
  %10299 = fmul fast float %10293, %9517
  %10300 = fadd fast float %10297, %10294
  %10301 = fadd fast float %10298, %10295
  %10302 = fadd fast float %10296, %10299
  %10303 = fmul fast float %10291, %9518
  %10304 = fmul fast float %10292, %9519
  %10305 = fmul fast float %10293, %9520
  %10306 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %10307 = extractvalue %dx.types.CBufRet.i32 %10306, 0
  %10308 = icmp eq i32 %10307, 0
  br i1 %10308, label %10676, label %10309, !dx.controlflow.hints !179

; <label>:10309                                   ; preds = %10278
  %10310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %10311 = extractvalue %dx.types.CBufRet.f32 %10310, 2
  %10312 = extractvalue %dx.types.CBufRet.f32 %10310, 3
  %10313 = fmul fast float %10311, %109
  %10314 = fmul fast float %10312, %110
  %10315 = fmul fast float %10313, 2.000000e+00
  %10316 = fmul fast float %10314, 2.000000e+00
  %10317 = fsub fast float 1.000000e+00, %10315
  %10318 = fsub fast float 1.000000e+00, %10316
  %10319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %10320 = extractvalue %dx.types.CBufRet.f32 %10319, 0
  %10321 = extractvalue %dx.types.CBufRet.f32 %10319, 1
  %10322 = extractvalue %dx.types.CBufRet.f32 %10319, 2
  %10323 = fmul fast float %10317, %10320
  %10324 = fmul fast float %10317, %10321
  %10325 = fmul fast float %10317, %10322
  %10326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %10327 = extractvalue %dx.types.CBufRet.f32 %10326, 0
  %10328 = extractvalue %dx.types.CBufRet.f32 %10326, 1
  %10329 = extractvalue %dx.types.CBufRet.f32 %10326, 2
  %10330 = fmul fast float %10318, %10327
  %10331 = fmul fast float %10318, %10328
  %10332 = fmul fast float %10318, %10329
  %10333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %10334 = extractvalue %dx.types.CBufRet.f32 %10333, 0
  %10335 = extractvalue %dx.types.CBufRet.f32 %10333, 1
  %10336 = extractvalue %dx.types.CBufRet.f32 %10333, 2
  %10337 = fadd fast float %10330, %10334
  %10338 = fadd fast float %10337, %10323
  %10339 = fadd fast float %10331, %10335
  %10340 = fadd fast float %10339, %10324
  %10341 = fadd fast float %10332, %10336
  %10342 = fadd fast float %10341, %10325
  %10343 = fmul fast float %10338, %9514
  %10344 = fmul fast float %10340, %9514
  %10345 = fmul fast float %10342, %9514
  %10346 = fmul fast float %10343, %10343
  %10347 = fmul fast float %10344, %10344
  %10348 = fadd fast float %10346, %10347
  %10349 = fmul fast float %10345, %10345
  %10350 = fadd fast float %10348, %10349
  %10351 = call float @dx.op.unary.f32(i32 24, float %10350)  ; Sqrt(value)
  %10352 = extractvalue %dx.types.CBufRet.f32 %9241, 0
  %10353 = fsub fast float %10351, %10352
  %10354 = extractvalue %dx.types.CBufRet.f32 %9241, 2
  %10355 = fmul fast float %10353, %10354
  %10356 = call float @dx.op.unary.f32(i32 7, float %10355)  ; Saturate(value)
  %10357 = fadd fast float %10356, -5.000000e-01
  %10358 = fmul fast float %10357, 2.000000e+00
  %10359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %10360 = extractvalue %dx.types.CBufRet.f32 %10359, 2
  %10361 = call float @dx.op.binary.f32(i32 36, float %10360, float %10358)  ; FMin(a,b)
  %10362 = fsub fast float -0.000000e+00, %10360
  %10363 = fcmp fast ogt float %10361, %10362
  br i1 %10363, label %10364, label %10676, !dx.controlflow.hints !180

; <label>:10364                                   ; preds = %10309
  %10365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %10366 = extractvalue %dx.types.CBufRet.f32 %10365, 3
  %10367 = fcmp fast ogt float %10366, 0.000000e+00
  br i1 %10367, label %10368, label %10443, !dx.controlflow.hints !181

; <label>:10368                                   ; preds = %10364
  %10369 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %36, i32 0)  ; GetDimensions(handle,mipLevel)
  %10370 = extractvalue %dx.types.Dimensions %10369, 0
  %10371 = sitofp i32 %10370 to float
  %10372 = extractvalue %dx.types.Dimensions %10369, 1
  %10373 = sitofp i32 %10372 to float
  %10374 = fmul fast float %10313, %10371
  %10375 = fmul fast float %10314, %10373
  %10376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %10377 = extractvalue %dx.types.CBufRet.f32 %10376, 1
  %10378 = fsub fast float -0.000000e+00, %10377
  %10379 = fptoui float %10378 to i32
  %10380 = fptoui float %10374 to i32
  %10381 = fptoui float %10375 to i32
  %10382 = and i32 %10379, 31
  %10383 = lshr i32 %10380, %10382
  %10384 = lshr i32 %10381, %10382
  %10385 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 %10379, i32 %10383, i32 %10384, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %10386 = extractvalue %dx.types.ResRet.f32 %10385, 0
  %10387 = fcmp fast olt float %10386, -1.000000e+00
  %10388 = fcmp fast ogt float %10386, -1.000000e+00
  %10389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %10390 = extractvalue %dx.types.CBufRet.f32 %10389, 1
  %10391 = select i1 %10388, float %10390, float 1.000000e+00
  %10392 = fadd fast float %10386, 1.000000e+00
  %10393 = fmul fast float %10391, %10392
  %10394 = call float @dx.op.unary.f32(i32 6, float %10393)  ; FAbs(value)
  %10395 = extractvalue %dx.types.CBufRet.f32 %10389, 3
  %10396 = fcmp fast oge float %10394, %10395
  %10397 = select i1 %10396, float 0x4197782600000000, float %10394
  %10398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %10399 = extractvalue %dx.types.CBufRet.f32 %10398, 0
  %10400 = extractvalue %dx.types.CBufRet.f32 %10398, 1
  %10401 = extractvalue %dx.types.CBufRet.f32 %10398, 2
  %10402 = select i1 %10387, float %10399, float %10320
  %10403 = select i1 %10387, float %10400, float %10321
  %10404 = select i1 %10387, float %10401, float %10322
  %10405 = fmul fast float %10402, %10317
  %10406 = fmul fast float %10403, %10317
  %10407 = fmul fast float %10404, %10317
  %10408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %10409 = extractvalue %dx.types.CBufRet.f32 %10408, 0
  %10410 = extractvalue %dx.types.CBufRet.f32 %10408, 1
  %10411 = extractvalue %dx.types.CBufRet.f32 %10408, 2
  %10412 = select i1 %10387, float %10409, float %10327
  %10413 = select i1 %10387, float %10410, float %10328
  %10414 = select i1 %10387, float %10411, float %10329
  %10415 = fmul fast float %10412, %10318
  %10416 = fmul fast float %10413, %10318
  %10417 = fmul fast float %10414, %10318
  %10418 = fadd fast float %10415, %10405
  %10419 = fadd fast float %10416, %10406
  %10420 = fadd fast float %10417, %10407
  %10421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %10422 = extractvalue %dx.types.CBufRet.f32 %10421, 0
  %10423 = extractvalue %dx.types.CBufRet.f32 %10421, 1
  %10424 = extractvalue %dx.types.CBufRet.f32 %10421, 2
  %10425 = select i1 %10387, float %10422, float %10334
  %10426 = select i1 %10387, float %10423, float %10335
  %10427 = select i1 %10387, float %10424, float %10336
  %10428 = fadd fast float %10418, %10425
  %10429 = fadd fast float %10419, %10426
  %10430 = fadd fast float %10420, %10427
  %10431 = fmul fast float %10428, %10397
  %10432 = fmul fast float %10429, %10397
  %10433 = fmul fast float %10430, %10397
  %10434 = fmul fast float %10431, %10431
  %10435 = fmul fast float %10432, %10432
  %10436 = fadd fast float %10434, %10435
  %10437 = fmul fast float %10433, %10433
  %10438 = fadd fast float %10436, %10437
  %10439 = call float @dx.op.unary.f32(i32 24, float %10438)  ; Sqrt(value)
  %10440 = fsub fast float %10439, %10352
  %10441 = fmul fast float %10440, %10354
  %10442 = call float @dx.op.unary.f32(i32 7, float %10441)  ; Saturate(value)
  br label %10443

; <label>:10443                                   ; preds = %10368, %10364
  %10444 = phi float [ %10442, %10368 ], [ 1.000000e+00, %10364 ]
  %10445 = fmul fast float %10361, 5.000000e-01
  %10446 = fadd fast float %10445, 5.000000e-01
  %10447 = call float @dx.op.unary.f32(i32 22, float %10446)  ; Frc(value)
  %10448 = call float @dx.op.unary.f32(i32 27, float %10447)  ; Round_ni(value)
  %10449 = call float @dx.op.unary.f32(i32 22, float %10447)  ; Frc(value)
  %10450 = fmul fast float %10449, 2.000000e+00
  %10451 = fadd fast float %10450, -1.000000e+00
  %10452 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %54, float %10313, float %10314, float %10448, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10453 = extractvalue %dx.types.ResRet.f32 %10452, 0
  %10454 = extractvalue %dx.types.ResRet.f32 %10452, 1
  %10455 = extractvalue %dx.types.ResRet.f32 %10452, 2
  %10456 = extractvalue %dx.types.ResRet.f32 %10452, 3
  %10457 = fadd fast float %10453, -5.000000e-01
  %10458 = fadd fast float %10455, -5.000000e-01
  %10459 = fmul fast float %10457, 0xBFD5555560000000
  %10460 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %10458, float %10459)  ; FMad(a,b,c)
  %10461 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %10454, float 0.000000e+00)  ; FMad(a,b,c)
  %10462 = fadd fast float %10461, %10456
  %10463 = fmul fast float %10457, -7.500000e-01
  %10464 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %10458, float %10463)  ; FMad(a,b,c)
  %10465 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %10454, float 0.000000e+00)  ; FMad(a,b,c)
  %10466 = fadd fast float %10465, %10456
  %10467 = call float @dx.op.binary.f32(i32 35, float %10460, float -1.000000e+00)  ; FMax(a,b)
  %10468 = call float @dx.op.binary.f32(i32 35, float %10462, float -1.000000e+00)  ; FMax(a,b)
  %10469 = call float @dx.op.binary.f32(i32 35, float %10464, float -1.000000e+00)  ; FMax(a,b)
  %10470 = call float @dx.op.binary.f32(i32 35, float %10466, float -1.000000e+00)  ; FMax(a,b)
  %10471 = call float @dx.op.binary.f32(i32 36, float %10467, float 1.000000e+00)  ; FMin(a,b)
  %10472 = call float @dx.op.binary.f32(i32 36, float %10468, float 1.000000e+00)  ; FMin(a,b)
  %10473 = call float @dx.op.binary.f32(i32 36, float %10469, float 1.000000e+00)  ; FMin(a,b)
  %10474 = call float @dx.op.binary.f32(i32 36, float %10470, float 1.000000e+00)  ; FMin(a,b)
  %10475 = fcmp fast olt float %10471, 0x3FEFFF8020000000
  br i1 %10475, label %10476, label %10591, !dx.controlflow.hints !182

; <label>:10476                                   ; preds = %10443
  %10477 = extractvalue %dx.types.CBufRet.f32 %10359, 3
  %10478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %10479 = extractvalue %dx.types.CBufRet.f32 %10478, 0
  %10480 = extractvalue %dx.types.CBufRet.f32 %10478, 1
  %10481 = extractvalue %dx.types.CBufRet.f32 %10478, 2
  %10482 = extractvalue %dx.types.CBufRet.f32 %10478, 3
  %10483 = fsub fast float %10479, %10471
  %10484 = fsub fast float %10480, %10472
  %10485 = fsub fast float %10481, %10473
  %10486 = fsub fast float %10482, %10474
  %10487 = fmul fast float %10483, %10477
  %10488 = fmul fast float %10484, %10477
  %10489 = fmul fast float %10485, %10477
  %10490 = fmul fast float %10486, %10477
  %10491 = fadd fast float %10487, %10471
  %10492 = fadd fast float %10488, %10472
  %10493 = fsub fast float -0.000000e+00, %10492
  %10494 = fadd fast float %10489, %10473
  %10495 = fadd fast float %10490, %10474
  %10496 = fmul fast float %10491, %10491
  %10497 = fsub fast float %10492, %10496
  %10498 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %10497)  ; FMax(a,b)
  %10499 = fdiv fast float 1.000000e+00, %10498
  %10500 = fmul fast float %10492, %10491
  %10501 = fsub fast float %10494, %10500
  %10502 = fsub fast float %10451, %10491
  %10503 = fmul fast float %10451, %10451
  %10504 = fsub fast float %10503, %10492
  %10505 = fmul fast float %10502, %10499
  %10506 = fmul fast float %10505, %10501
  %10507 = fsub fast float %10504, %10506
  %10508 = fmul fast float %10492, %10492
  %10509 = fsub fast float %10495, %10508
  %10510 = fmul fast float %10501, %10501
  %10511 = fmul fast float %10510, %10499
  %10512 = fsub fast float %10509, %10511
  %10513 = fdiv fast float %10507, %10512
  %10514 = fmul fast float %10501, %10513
  %10515 = fsub fast float %10502, %10514
  %10516 = fmul fast float %10515, %10499
  %10517 = fmul fast float %10516, %10491
  %10518 = fsub fast float 1.000000e+00, %10517
  %10519 = fmul fast float %10492, %10513
  %10520 = fsub fast float %10518, %10519
  %10521 = fmul fast float %10516, %10516
  %10522 = fmul fast float %10513, 4.000000e+00
  %10523 = fmul fast float %10522, %10520
  %10524 = fsub fast float %10521, %10523
  %10525 = call float @dx.op.unary.f32(i32 24, float %10524)  ; Sqrt(value)
  %10526 = fcmp fast oge float %10516, 0.000000e+00
  %10527 = fsub fast float -0.000000e+00, %10525
  %10528 = select i1 %10526, float %10527, float %10525
  %10529 = fsub fast float %10528, %10516
  %10530 = fdiv fast float %10529, %10513
  %10531 = fdiv fast float %10520, %10529
  %10532 = fmul fast float %10530, 5.000000e-01
  %10533 = fmul fast float %10531, 2.000000e+00
  %10534 = select i1 %10526, float %10532, float %10533
  %10535 = select i1 %10526, float %10533, float %10532
  %10536 = call float @dx.op.binary.f32(i32 35, float %10534, float %10535)  ; FMax(a,b)
  %10537 = call float @dx.op.binary.f32(i32 36, float %10534, float %10535)  ; FMin(a,b)
  %10538 = fcmp fast ogt float %10451, %10537
  br i1 %10538, label %10539, label %10549

; <label>:10539                                   ; preds = %10476
  %10540 = fsub fast float %10451, %10537
  %10541 = fsub fast float %10536, %10537
  %10542 = fmul fast float %10540, %10541
  %10543 = fmul fast float %10536, %10451
  %10544 = fadd fast float %10536, %10451
  %10545 = fmul fast float %10544, %10491
  %10546 = fadd fast float %10543, %10492
  %10547 = fsub fast float %10546, %10545
  %10548 = fdiv fast float %10547, %10542
  br label %10549

; <label>:10549                                   ; preds = %10539, %10476
  %10550 = phi float [ %10548, %10539 ], [ 0.000000e+00, %10476 ]
  %10551 = fcmp fast ogt float %10451, %10536
  %10552 = fsub fast float %10451, %10536
  br i1 %10551, label %10553, label %10563

; <label>:10553                                   ; preds = %10549
  %10554 = fsub fast float %10536, %10537
  %10555 = fmul fast float %10554, %10552
  %10556 = fmul fast float %10537, %10451
  %10557 = fadd fast float %10537, %10451
  %10558 = fmul fast float %10557, %10491
  %10559 = fsub fast float %10493, %10556
  %10560 = fadd fast float %10559, %10558
  %10561 = fdiv fast float %10560, %10555
  %10562 = fadd fast float %10561, %10550
  br label %10563

; <label>:10563                                   ; preds = %10553, %10549
  %10564 = phi float [ %10562, %10553 ], [ %10550, %10549 ]
  %10565 = fsub fast float %10451, %10537
  %10566 = fmul fast float %10565, %10552
  %10567 = fmul fast float %10537, %10536
  %10568 = fadd fast float %10537, %10536
  %10569 = fmul fast float %10568, %10491
  %10570 = fadd fast float %10567, %10492
  %10571 = fsub fast float %10570, %10569
  %10572 = fdiv fast float %10571, %10566
  %10573 = call float @dx.op.unary.f32(i32 7, float %10564)  ; Saturate(value)
  %10574 = fcmp fast oeq float %9242, 0.000000e+00
  %10575 = extractvalue %dx.types.CBufRet.f32 %10359, 0
  %10576 = fcmp fast oeq float %10575, 0.000000e+00
  %10577 = or i1 %10574, %10576
  %10578 = fmul fast float %10575, 2.000000e+00
  %10579 = fadd fast float %10360, %10361
  %10580 = fdiv fast float %10579, %10578
  %10581 = call float @dx.op.unary.f32(i32 7, float %10580)  ; Saturate(value)
  %10582 = fmul fast float %10581, 2.000000e+00
  %10583 = fsub fast float 3.000000e+00, %10582
  %10584 = fmul fast float %10581, %10581
  %10585 = fmul fast float %10584, %10583
  %10586 = select i1 %10577, float 1.000000e+00, float %10585
  %10587 = fmul fast float %10572, %9242
  %10588 = fadd fast float %10573, %10587
  %10589 = call float @dx.op.unary.f32(i32 7, float %10588)  ; Saturate(value)
  %10590 = fmul fast float %10586, %10589
  br label %10591

; <label>:10591                                   ; preds = %10563, %10443
  %10592 = phi float [ %10590, %10563 ], [ 0.000000e+00, %10443 ]
  %10593 = fsub fast float 1.000000e+00, %10592
  %10594 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %54, float %10313, float %10314, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10595 = extractvalue %dx.types.ResRet.f32 %10594, 0
  %10596 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %10597 = extractvalue %dx.types.CBufRet.i32 %10596, 2
  %10598 = icmp eq i32 %10597, 0
  br i1 %10598, label %10604, label %10599

; <label>:10599                                   ; preds = %10591
  %10600 = call float @dx.op.unary.f32(i32 7, float %10592)  ; Saturate(value)
  %10601 = fadd fast float %10595, -1.000000e+00
  %10602 = fmul fast float %10600, %10601
  %10603 = fadd fast float %10602, 1.000000e+00
  br label %10604

; <label>:10604                                   ; preds = %10599, %10591
  %10605 = phi float [ %10603, %10599 ], [ %10593, %10591 ]
  br i1 %10367, label %10606, label %10624

; <label>:10606                                   ; preds = %10604
  %10607 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %10608 = extractvalue %dx.types.CBufRet.f32 %10607, 1
  %10609 = fsub fast float %10444, %10608
  %10610 = call float @dx.op.unary.f32(i32 7, float %10609)  ; Saturate(value)
  %10611 = fsub fast float %10444, %10366
  %10612 = call float @dx.op.unary.f32(i32 7, float %10611)  ; Saturate(value)
  %10613 = fsub fast float %10610, %10612
  %10614 = fsub fast float %10446, %10612
  %10615 = fdiv fast float %10614, %10613
  %10616 = call float @dx.op.unary.f32(i32 7, float %10615)  ; Saturate(value)
  %10617 = fmul fast float %10616, 2.000000e+00
  %10618 = fsub fast float 3.000000e+00, %10617
  %10619 = fsub fast float %10595, %10605
  %10620 = fmul fast float %10616, %10616
  %10621 = fmul fast float %10620, %10619
  %10622 = fmul fast float %10621, %10618
  %10623 = fadd fast float %10622, %10605
  br label %10624

; <label>:10624                                   ; preds = %10606, %10604
  %10625 = phi float [ %10623, %10606 ], [ %10605, %10604 ]
  %10626 = call float @dx.op.binary.f32(i32 35, float %10595, float %10625)  ; FMax(a,b)
  %10627 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %10628 = extractvalue %dx.types.CBufRet.i32 %10627, 2
  %10629 = and i32 %10628, 1
  %10630 = icmp eq i32 %10629, 0
  %10631 = fcmp fast une float %10626, 1.000000e+00
  %10632 = and i1 %10631, %10630
  br i1 %10632, label %10633, label %10652

; <label>:10633                                   ; preds = %10624
  %10634 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %54, float %10313, float %10314, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10635 = extractvalue %dx.types.ResRet.f32 %10634, 0
  %10636 = extractvalue %dx.types.ResRet.f32 %10634, 1
  %10637 = extractvalue %dx.types.ResRet.f32 %10634, 2
  %10638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10639 = extractvalue %dx.types.CBufRet.f32 %10638, 1
  %10640 = fmul fast float %10639, %10635
  %10641 = fmul fast float %10639, %10636
  %10642 = fmul fast float %10639, %10637
  %10643 = fcmp fast ogt float %10595, 0x3FEFFF2E40000000
  %10644 = fsub fast float 1.000000e+00, %10626
  %10645 = fsub fast float 1.000000e+00, %10595
  %10646 = fdiv fast float %10644, %10645
  %10647 = call float @dx.op.unary.f32(i32 7, float %10646)  ; Saturate(value)
  %10648 = select i1 %10643, float 0.000000e+00, float %10647
  %10649 = fmul fast float %10640, %10648
  %10650 = fmul fast float %10641, %10648
  %10651 = fmul fast float %10642, %10648
  br label %10652

; <label>:10652                                   ; preds = %10633, %10624
  %10653 = phi float [ 0.000000e+00, %10624 ], [ %10649, %10633 ]
  %10654 = phi float [ 0.000000e+00, %10624 ], [ %10650, %10633 ]
  %10655 = phi float [ 0.000000e+00, %10624 ], [ %10651, %10633 ]
  %10656 = fmul fast float %10653, %9238
  %10657 = fmul fast float %10654, %9239
  %10658 = fmul fast float %10655, %9240
  %10659 = fmul fast float %10626, %10288
  %10660 = call float @dx.op.dot3.f32(i32 55, float %10626, float %10626, float %10626, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10661 = call float @dx.op.dot3.f32(i32 55, float %10656, float %10657, float %10658, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10662 = select i1 %258, float %10660, float %10626
  %10663 = select i1 %258, float 1.000000e+00, float %10626
  %10664 = select i1 %258, float %10661, float %10656
  %10665 = select i1 %258, float 0.000000e+00, float %10657
  %10666 = select i1 %258, float 0.000000e+00, float %10658
  %10667 = fmul fast float %10662, %10300
  %10668 = fmul fast float %10662, %10301
  %10669 = fmul fast float %10663, %10302
  %10670 = fadd fast float %10667, %10664
  %10671 = fadd fast float %10668, %10665
  %10672 = fadd fast float %10666, %10669
  %10673 = fmul fast float %10662, %10303
  %10674 = fmul fast float %10662, %10304
  %10675 = fmul fast float %10663, %10305
  br label %10676

; <label>:10676                                   ; preds = %10652, %10309, %10278, %9510
  %10677 = phi float [ %9515, %9510 ], [ %10300, %10278 ], [ %10670, %10652 ], [ %10300, %10309 ]
  %10678 = phi float [ %9516, %9510 ], [ %10301, %10278 ], [ %10671, %10652 ], [ %10301, %10309 ]
  %10679 = phi float [ %9517, %9510 ], [ %10302, %10278 ], [ %10672, %10652 ], [ %10302, %10309 ]
  %10680 = phi float [ %9518, %9510 ], [ %10303, %10278 ], [ %10673, %10652 ], [ %10303, %10309 ]
  %10681 = phi float [ %9519, %9510 ], [ %10304, %10278 ], [ %10674, %10652 ], [ %10304, %10309 ]
  %10682 = phi float [ %9520, %9510 ], [ %10305, %10278 ], [ %10675, %10652 ], [ %10305, %10309 ]
  %10683 = phi float [ %9521, %9510 ], [ %10288, %10278 ], [ %10659, %10652 ], [ %10288, %10309 ]
  %10684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %10685 = extractvalue %dx.types.CBufRet.f32 %10684, 2
  %10686 = extractvalue %dx.types.CBufRet.f32 %10684, 3
  %10687 = fmul fast float %10685, %109
  %10688 = fmul fast float %10686, %110
  %10689 = call float @dx.op.unary.f32(i32 7, float %10687)  ; Saturate(value)
  %10690 = call float @dx.op.unary.f32(i32 7, float %10688)  ; Saturate(value)
  %10691 = select i1 %9252, i32 2, i32 0
  %10692 = or i32 %10691, 1
  %10693 = uitofp i32 %10692 to float
  %10694 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %10689, float %10690, float %10693, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10695 = extractvalue %dx.types.ResRet.f32 %10694, 0
  %10696 = extractvalue %dx.types.ResRet.f32 %10694, 1
  %10697 = extractvalue %dx.types.ResRet.f32 %10694, 2
  %10698 = extractvalue %dx.types.ResRet.f32 %10694, 3
  %10699 = add nuw nsw i32 %10691, 2
  %10700 = uitofp i32 %10699 to float
  %10701 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %10689, float %10690, float %10700, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10702 = extractvalue %dx.types.ResRet.f32 %10701, 0
  %10703 = extractvalue %dx.types.ResRet.f32 %10701, 1
  %10704 = extractvalue %dx.types.ResRet.f32 %10701, 2
  %10705 = extractvalue %dx.types.ResRet.f32 %10701, 3
  %10706 = call float @dx.op.binary.f32(i32 35, float %10696, float %10697)  ; FMax(a,b)
  %10707 = call float @dx.op.binary.f32(i32 35, float %10695, float %10706)  ; FMax(a,b)
  %10708 = call float @dx.op.binary.f32(i32 35, float %10707, float %10698)  ; FMax(a,b)
  %10709 = call float @dx.op.binary.f32(i32 36, float %10703, float %10704)  ; FMin(a,b)
  %10710 = call float @dx.op.binary.f32(i32 36, float %10702, float %10709)  ; FMin(a,b)
  %10711 = call float @dx.op.binary.f32(i32 36, float %10710, float %10705)  ; FMin(a,b)
  %10712 = fmul fast float %10708, 2.550000e+02
  %10713 = fadd fast float %10712, 0x3F70101020000000
  %10714 = fptoui float %10713 to i32
  %10715 = fmul fast float %10711, 2.550000e+02
  %10716 = fadd fast float %10715, 0x3F70101020000000
  %10717 = fptoui float %10716 to i32
  %10718 = icmp ult i32 %10714, %10717
  br i1 %10718, label %10719, label %10888

; <label>:10719                                   ; preds = %10676
  %10720 = fcmp fast ogt float %96, 9.843750e-01
  %10721 = fadd fast float %9514, -4.000000e+00
  %10722 = select i1 %10720, float -4.000000e+00, float %10721
  %10723 = call float @dx.op.binary.f32(i32 35, float %10722, float 0.000000e+00)  ; FMax(a,b)
  %10724 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %10725 = extractvalue %dx.types.CBufRet.f32 %10724, 0
  %10726 = fadd fast float %10725, %10723
  %10727 = extractvalue %dx.types.CBufRet.f32 %10724, 2
  %10728 = fmul fast float %10726, %10727
  %10729 = call float @dx.op.unary.f32(i32 23, float %10728)  ; Log(value)
  %10730 = extractvalue %dx.types.CBufRet.f32 %10724, 3
  %10731 = fmul fast float %10730, %10729
  %10732 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %10733 = extractvalue %dx.types.CBufRet.f32 %10732, 2
  %10734 = fmul fast float %10731, %10733
  %10735 = call float @dx.op.unary.f32(i32 7, float %10734)  ; Saturate(value)
  %10736 = uitofp i32 %10714 to float
  %10737 = uitofp i32 %10717 to float
  %10738 = fadd fast float %10736, 5.000000e-01
  %10739 = fadd fast float %10737, 5.000000e-01
  %10740 = fmul fast float %10733, %10738
  %10741 = fmul fast float %10733, %10739
  %10742 = fadd fast float %10740, 0x3F0FFB4800000000
  %10743 = fadd fast float %10741, 0xBF0FFB4800000000
  %10744 = call float @dx.op.binary.f32(i32 35, float %10735, float %10742)  ; FMax(a,b)
  %10745 = call float @dx.op.binary.f32(i32 36, float %10744, float %10743)  ; FMin(a,b)
  %10746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %10747 = extractvalue %dx.types.CBufRet.f32 %10746, 1
  %10748 = extractvalue %dx.types.CBufRet.f32 %10746, 2
  %10749 = extractvalue %dx.types.CBufRet.f32 %10746, 0
  %10750 = select i1 %9252, float %10749, float 0.000000e+00
  %10751 = fmul fast float %10747, %10745
  %10752 = fadd fast float %10750, %10751
  %10753 = fadd fast float %10750, %10748
  %10754 = fsub fast float %10747, %10748
  %10755 = fadd fast float %10754, %10750
  %10756 = call float @dx.op.binary.f32(i32 35, float %10752, float %10753)  ; FMax(a,b)
  %10757 = call float @dx.op.binary.f32(i32 36, float %10756, float %10755)  ; FMin(a,b)
  %10758 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %52, float %10689, float %10690, float %10757, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10759 = extractvalue %dx.types.ResRet.f32 %10758, 0
  %10760 = extractvalue %dx.types.ResRet.f32 %10758, 1
  %10761 = extractvalue %dx.types.ResRet.f32 %10758, 2
  %10762 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %10763 = extractvalue %dx.types.CBufRet.i32 %10762, 0
  %10764 = extractvalue %dx.types.CBufRet.i32 %10762, 1
  %10765 = uitofp i32 %10763 to float
  %10766 = uitofp i32 %10764 to float
  %10767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %10768 = extractvalue %dx.types.CBufRet.f32 %10767, 0
  %10769 = extractvalue %dx.types.CBufRet.f32 %10767, 1
  %10770 = fmul fast float %10765, %10689
  %10771 = fmul fast float %10766, %10690
  %10772 = fadd fast float %10770, -5.000000e-01
  %10773 = fadd fast float %10771, -5.000000e-01
  %10774 = call float @dx.op.unary.f32(i32 22, float %10772)  ; Frc(value)
  %10775 = call float @dx.op.unary.f32(i32 22, float %10773)  ; Frc(value)
  %10776 = fmul fast float %10774, %10774
  %10777 = fmul fast float %10776, %10774
  %10778 = fsub fast float 3.000000e+00, %10774
  %10779 = fmul fast float %10776, %10778
  %10780 = fmul fast float %10774, 3.000000e+00
  %10781 = fmul fast float %10777, 3.000000e+00
  %10782 = fmul fast float %10776, 6.000000e+00
  %10783 = fsub fast float %10781, %10782
  %10784 = fadd fast float %10783, 4.000000e+00
  %10785 = fmul fast float %10784, 0x3FC5555560000000
  %10786 = fmul fast float %10777, -3.000000e+00
  %10787 = fadd fast float %10776, %10774
  %10788 = fmul fast float %10787, 3.000000e+00
  %10789 = fadd fast float %10786, 1.000000e+00
  %10790 = fadd fast float %10789, %10788
  %10791 = fmul fast float %10777, 0x3FC5555560000000
  %10792 = fmul fast float %10775, %10775
  %10793 = fmul fast float %10792, %10775
  %10794 = fsub fast float 3.000000e+00, %10775
  %10795 = fmul fast float %10792, %10794
  %10796 = fmul fast float %10775, 3.000000e+00
  %10797 = fmul fast float %10793, 3.000000e+00
  %10798 = fmul fast float %10792, 6.000000e+00
  %10799 = fsub fast float %10797, %10798
  %10800 = fadd fast float %10799, 4.000000e+00
  %10801 = fmul fast float %10800, 0x3FC5555560000000
  %10802 = fmul fast float %10793, -3.000000e+00
  %10803 = fadd fast float %10792, %10775
  %10804 = fmul fast float %10803, 3.000000e+00
  %10805 = fadd fast float %10802, 1.000000e+00
  %10806 = fadd fast float %10805, %10804
  %10807 = fmul fast float %10793, 0x3FC5555560000000
  %10808 = fadd fast float %10774, 1.000000e+00
  %10809 = fsub fast float 1.000000e+00, %10780
  %10810 = fadd fast float %10809, %10779
  %10811 = fadd fast float %10810, %10784
  %10812 = fmul fast float %10811, 0x3FC5555560000000
  %10813 = fdiv fast float %10785, %10812
  %10814 = fsub fast float %10808, %10813
  %10815 = fsub fast float 1.000000e+00, %10774
  %10816 = fadd fast float %10790, %10777
  %10817 = fmul fast float %10816, 0x3FC5555560000000
  %10818 = fdiv fast float %10791, %10817
  %10819 = fadd fast float %10815, %10818
  %10820 = fadd fast float %10775, 1.000000e+00
  %10821 = fsub fast float 1.000000e+00, %10796
  %10822 = fadd fast float %10821, %10795
  %10823 = fadd fast float %10822, %10800
  %10824 = fmul fast float %10823, 0x3FC5555560000000
  %10825 = fdiv fast float %10801, %10824
  %10826 = fsub fast float %10820, %10825
  %10827 = fsub fast float 1.000000e+00, %10775
  %10828 = fadd fast float %10806, %10793
  %10829 = fmul fast float %10828, 0x3FC5555560000000
  %10830 = fdiv fast float %10807, %10829
  %10831 = fadd fast float %10830, %10827
  %10832 = fmul fast float %10814, %10768
  %10833 = fsub fast float %10689, %10832
  %10834 = fmul fast float %10819, %10768
  %10835 = fadd fast float %10834, %10689
  %10836 = fmul fast float %10831, %10769
  %10837 = fadd fast float %10836, %10690
  %10838 = fmul fast float %10826, %10769
  %10839 = fsub fast float %10690, %10838
  %10840 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %10833, float %10839, float %10757, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10841 = extractvalue %dx.types.ResRet.f32 %10840, 0
  %10842 = extractvalue %dx.types.ResRet.f32 %10840, 1
  %10843 = extractvalue %dx.types.ResRet.f32 %10840, 2
  %10844 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %10835, float %10839, float %10757, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10845 = extractvalue %dx.types.ResRet.f32 %10844, 0
  %10846 = extractvalue %dx.types.ResRet.f32 %10844, 1
  %10847 = extractvalue %dx.types.ResRet.f32 %10844, 2
  %10848 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %10833, float %10837, float %10757, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10849 = extractvalue %dx.types.ResRet.f32 %10848, 0
  %10850 = extractvalue %dx.types.ResRet.f32 %10848, 1
  %10851 = extractvalue %dx.types.ResRet.f32 %10848, 2
  %10852 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %10835, float %10837, float %10757, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10853 = extractvalue %dx.types.ResRet.f32 %10852, 0
  %10854 = extractvalue %dx.types.ResRet.f32 %10852, 1
  %10855 = extractvalue %dx.types.ResRet.f32 %10852, 2
  %10856 = fsub fast float %10849, %10841
  %10857 = fsub fast float %10850, %10842
  %10858 = fsub fast float %10851, %10843
  %10859 = fmul fast float %10856, %10829
  %10860 = fmul fast float %10857, %10829
  %10861 = fmul fast float %10858, %10829
  %10862 = fadd fast float %10859, %10841
  %10863 = fadd fast float %10860, %10842
  %10864 = fadd fast float %10861, %10843
  %10865 = fsub fast float %10853, %10845
  %10866 = fsub fast float %10854, %10846
  %10867 = fsub fast float %10855, %10847
  %10868 = fmul fast float %10865, %10829
  %10869 = fmul fast float %10866, %10829
  %10870 = fmul fast float %10867, %10829
  %10871 = fsub fast float %10845, %10862
  %10872 = fadd fast float %10871, %10868
  %10873 = fsub fast float %10846, %10863
  %10874 = fadd fast float %10873, %10869
  %10875 = fsub fast float %10847, %10864
  %10876 = fadd fast float %10875, %10870
  %10877 = fmul fast float %10872, %10817
  %10878 = fmul fast float %10874, %10817
  %10879 = fmul fast float %10876, %10817
  %10880 = fadd fast float %10877, %10862
  %10881 = fadd fast float %10878, %10863
  %10882 = fadd fast float %10879, %10864
  %10883 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10884 = extractvalue %dx.types.CBufRet.f32 %10883, 1
  %10885 = fmul fast float %10880, %10884
  %10886 = fmul fast float %10881, %10884
  %10887 = fmul fast float %10882, %10884
  br label %10888

; <label>:10888                                   ; preds = %10719, %10676
  %10889 = phi float [ %10759, %10719 ], [ 1.000000e+00, %10676 ]
  %10890 = phi float [ %10760, %10719 ], [ 1.000000e+00, %10676 ]
  %10891 = phi float [ %10761, %10719 ], [ 1.000000e+00, %10676 ]
  %10892 = phi float [ %10885, %10719 ], [ 0.000000e+00, %10676 ]
  %10893 = phi float [ %10886, %10719 ], [ 0.000000e+00, %10676 ]
  %10894 = phi float [ %10887, %10719 ], [ 0.000000e+00, %10676 ]
  %10895 = fmul fast float %10892, %9238
  %10896 = fmul fast float %10893, %9239
  %10897 = fmul fast float %10894, %9240
  %10898 = fmul fast float %10889, %10683
  %10899 = call float @dx.op.dot3.f32(i32 55, float %10889, float %10890, float %10891, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10900 = call float @dx.op.dot3.f32(i32 55, float %10895, float %10896, float %10897, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10901 = select i1 %258, float %10899, float %10889
  %10902 = select i1 %258, float %10899, float %10890
  %10903 = select i1 %258, float 1.000000e+00, float %10891
  %10904 = select i1 %258, float %10900, float %10895
  %10905 = select i1 %258, float 0.000000e+00, float %10896
  %10906 = select i1 %258, float 0.000000e+00, float %10897
  %10907 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %10908 = extractvalue %dx.types.CBufRet.i32 %10907, 3
  %10909 = and i32 %10908, 3
  %10910 = icmp ne i32 %10909, 0
  %10911 = and i32 %10908, 4
  %10912 = icmp ne i32 %10911, 0
  %10913 = and i1 %10910, %10912
  %10914 = and i1 %258, %10913
  br i1 %10914, label %10915, label %10921

; <label>:10915                                   ; preds = %10888
  %10916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %10917 = extractvalue %dx.types.CBufRet.f32 %10916, 1
  %10918 = fadd fast float %10898, -1.000000e+00
  %10919 = fmul fast float %10917, %10918
  %10920 = fadd fast float %10919, 1.000000e+00
  br label %10921

; <label>:10921                                   ; preds = %10915, %10888
  %10922 = phi float [ %10920, %10915 ], [ %10898, %10888 ]
  %10923 = fadd fast float %10680, %10677
  %10924 = fmul fast float %10901, %10923
  %10925 = fadd fast float %10924, %10904
  %10926 = fadd fast float %10681, %10678
  %10927 = fmul fast float %10902, %10926
  %10928 = fadd fast float %10927, %10905
  %10929 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10930 = extractvalue %dx.types.CBufRet.f32 %10929, 0
  br i1 %258, label %10931, label %10946

; <label>:10931                                   ; preds = %10921
  %10932 = fadd fast float %10925, %10928
  %10933 = fmul fast float %10930, %10932
  %10934 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %10935 = extractvalue %dx.types.CBufRet.f32 %10934, 3
  %10936 = extractvalue %dx.types.CBufRet.f32 %9222, 1
  %10937 = fsub fast float %9227, %9221
  %10938 = fadd fast float %10937, %9228
  %10939 = fsub fast float %10938, %10936
  %10940 = extractvalue %dx.types.CBufRet.f32 %9222, 2
  %10941 = fmul fast float %10939, %10940
  %10942 = call float @dx.op.unary.f32(i32 7, float %10941)  ; Saturate(value)
  %10943 = fsub fast float %10942, %10935
  %10944 = fmul fast float %10943, %10922
  %10945 = fadd fast float %10944, %10935
  br label %10972

; <label>:10946                                   ; preds = %10921
  %10947 = fadd fast float %10682, %10679
  %10948 = fmul fast float %10903, %10947
  %10949 = fadd fast float %10948, %10906
  %10950 = fmul fast float %10930, %10925
  %10951 = fmul fast float %10930, %10928
  %10952 = fmul fast float %10930, %10949
  %10953 = call float @dx.op.binary.f32(i32 35, float %10951, float %10952)  ; FMax(a,b)
  %10954 = call float @dx.op.binary.f32(i32 35, float %10950, float %10953)  ; FMax(a,b)
  %10955 = call float @dx.op.binary.f32(i32 35, float %9239, float %9240)  ; FMax(a,b)
  %10956 = call float @dx.op.binary.f32(i32 35, float %9238, float %10955)  ; FMax(a,b)
  %10957 = call float @dx.op.binary.f32(i32 35, float %10954, float %10956)  ; FMax(a,b)
  %10958 = fcmp fast ugt float %10957, 0x3F10000000000000
  br i1 %10958, label %10960, label %10959

; <label>:10959                                   ; preds = %10946
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %10960

; <label>:10960                                   ; preds = %10959, %10946
  %10961 = add i32 %60, 356
  %10962 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %10961, i32 undef)  ; BufferLoad(srv,index,wot)
  %10963 = extractvalue %dx.types.ResRet.i32 %10962, 0
  %10964 = and i32 %10963, 32
  %10965 = icmp eq i32 %10964, 0
  br i1 %10965, label %10972, label %10966

; <label>:10966                                   ; preds = %10960
  %10967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %10968 = extractvalue %dx.types.CBufRet.f32 %10967, 0
  %10969 = fmul fast float %10968, 0x3FE99999A0000000
  %10970 = fadd fast float %10968, %10950
  %10971 = fadd fast float %10969, %10952
  br label %10972

; <label>:10972                                   ; preds = %10966, %10960, %10931
  %10973 = phi float [ 1.000000e+00, %10931 ], [ %9239, %10966 ], [ %9239, %10960 ]
  %10974 = phi float [ 1.000000e+00, %10931 ], [ %9240, %10966 ], [ %9240, %10960 ]
  %10975 = phi float [ %10933, %10931 ], [ %10970, %10966 ], [ %10950, %10960 ]
  %10976 = phi float [ %10945, %10931 ], [ %10951, %10966 ], [ %10951, %10960 ]
  %10977 = phi float [ 1.000000e+00, %10931 ], [ %10971, %10966 ], [ %10952, %10960 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %10978 = call float @dx.op.binary.f32(i32 36, float %10975, float 3.225500e+04)  ; FMin(a,b)
  %10979 = call float @dx.op.binary.f32(i32 36, float %10976, float 3.225500e+04)  ; FMin(a,b)
  %10980 = call float @dx.op.binary.f32(i32 36, float %10977, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %10978)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %10979)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %10980)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %10981 = call float @dx.op.binary.f32(i32 36, float %9238, float 3.225500e+04)  ; FMin(a,b)
  %10982 = call float @dx.op.binary.f32(i32 36, float %10973, float 3.225500e+04)  ; FMin(a,b)
  %10983 = call float @dx.op.binary.f32(i32 36, float %10974, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %10981)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %10982)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %10983)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

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
!74 = !{[46 x i32] [i32 44, i32 8, i32 119, i32 119, i32 7, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 119, i32 7, i32 3, i32 3, i32 3, i32 7, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119]}
!75 = !{void ()* @ps_main, !"ps_main", !76, !4, !99}
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
!95 = !{!96, !97}
!96 = !{i32 0, !"SV_Target", i8 9, i8 16, !79, i8 0, i32 1, i8 4, i32 0, i8 0, !80}
!97 = !{i32 1, !"SV_Target", i8 9, i8 16, !98, i8 0, i32 1, i8 4, i32 1, i8 0, !80}
!98 = !{i32 1}
!99 = !{i32 0, i64 16}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 1}
!101 = distinct !{!101, !102}
!102 = !{!"llvm.loop.unroll.disable"}
!103 = distinct !{!103, !"dx.controlflow.hints", i32 1}
!104 = distinct !{!104, !"dx.controlflow.hints", i32 1}
!105 = distinct !{!105, !"dx.controlflow.hints", i32 1}
!106 = distinct !{!106, !"dx.controlflow.hints", i32 1}
!107 = distinct !{!107, !"dx.controlflow.hints", i32 1}
!108 = !{!109, !109, i64 0}
!109 = !{!"int", !110, i64 0}
!110 = !{!"omnipotent char", !111, i64 0}
!111 = !{!"Simple C/C++ TBAA"}
!112 = !{!113, !115, !117, !119}
!113 = distinct !{!113, !114, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!114 = distinct !{!114, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!115 = distinct !{!115, !116, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!116 = distinct !{!116, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!117 = distinct !{!117, !118, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!118 = distinct !{!118, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!119 = distinct !{!119, !120, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!120 = distinct !{!120, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!121 = distinct !{!121, !"dx.controlflow.hints", i32 1}
!122 = !{!123, !123, i64 0}
!123 = !{!"float", !110, i64 0}
!124 = distinct !{!124, !102}
!125 = distinct !{!125, !102}
!126 = distinct !{!126, !"dx.controlflow.hints", i32 1}
!127 = distinct !{!127, !"dx.controlflow.hints", i32 1}
!128 = distinct !{!128, !"dx.controlflow.hints", i32 1}
!129 = distinct !{!129, !"dx.controlflow.hints", i32 1}
!130 = distinct !{!130, !"dx.controlflow.hints", i32 1}
!131 = distinct !{!131, !"dx.controlflow.hints", i32 1}
!132 = distinct !{!132, !"dx.controlflow.hints", i32 1}
!133 = distinct !{!133, !"dx.controlflow.hints", i32 1}
!134 = distinct !{!134, !"dx.controlflow.hints", i32 1}
!135 = distinct !{!135, !"dx.controlflow.hints", i32 1}
!136 = !{!137, !139, !141, !142, !144, !145, !146, !148, !149, !150}
!137 = distinct !{!137, !138, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!138 = distinct !{!138, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!139 = distinct !{!139, !140, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!140 = distinct !{!140, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!141 = distinct !{!141, !140, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!142 = distinct !{!142, !143, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %blendColor"}
!143 = distinct !{!143, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z"}
!144 = distinct !{!144, !143, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %addColor"}
!145 = distinct !{!145, !143, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %thermalExtinction"}
!146 = distinct !{!146, !147, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %blendColor"}
!147 = distinct !{!147, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z"}
!148 = distinct !{!148, !147, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %addColor"}
!149 = distinct !{!149, !147, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %thermalExtinction"}
!150 = distinct !{!150, !151, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!151 = distinct !{!151, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!152 = !{!153}
!153 = distinct !{!153, !154, !"\01?sort@@YAXAIAM00@Z: %c"}
!154 = distinct !{!154, !"\01?sort@@YAXAIAM00@Z"}
!155 = !{!156, !157, !137, !139, !141, !142, !144, !145, !146, !148, !149, !150}
!156 = distinct !{!156, !154, !"\01?sort@@YAXAIAM00@Z: %a"}
!157 = distinct !{!157, !154, !"\01?sort@@YAXAIAM00@Z: %b"}
!158 = !{!157}
!159 = !{!156, !153, !137, !139, !141, !142, !144, !145, !146, !148, !149, !150}
!160 = !{!156}
!161 = !{!157, !153, !137, !139, !141, !142, !144, !145, !146, !148, !149, !150}
!162 = !{!163}
!163 = distinct !{!163, !164, !"\01?sort@@YAXAIAM00@Z: %c"}
!164 = distinct !{!164, !"\01?sort@@YAXAIAM00@Z"}
!165 = !{!166, !167, !137, !139, !141, !142, !144, !145, !146, !148, !149, !150}
!166 = distinct !{!166, !164, !"\01?sort@@YAXAIAM00@Z: %a"}
!167 = distinct !{!167, !164, !"\01?sort@@YAXAIAM00@Z: %b"}
!168 = !{!167}
!169 = !{!166, !163, !137, !139, !141, !142, !144, !145, !146, !148, !149, !150}
!170 = !{!166}
!171 = !{!167, !163, !137, !139, !141, !142, !144, !145, !146, !148, !149, !150}
!172 = distinct !{!172, !"dx.controlflow.hints", i32 1}
!173 = distinct !{!173, !"dx.controlflow.hints", i32 2}
!174 = distinct !{!174, !"dx.controlflow.hints", i32 1}
!175 = distinct !{!175, !"dx.controlflow.hints", i32 1}
!176 = distinct !{!176, !"dx.controlflow.hints", i32 1}
!177 = distinct !{!177, !"dx.controlflow.hints", i32 1}
!178 = distinct !{!178, !"dx.controlflow.hints", i32 1}
!179 = distinct !{!179, !"dx.controlflow.hints", i32 1}
!180 = distinct !{!180, !"dx.controlflow.hints", i32 1}
!181 = distinct !{!181, !"dx.controlflow.hints", i32 1}
!182 = distinct !{!182, !"dx.controlflow.hints", i32 1}

