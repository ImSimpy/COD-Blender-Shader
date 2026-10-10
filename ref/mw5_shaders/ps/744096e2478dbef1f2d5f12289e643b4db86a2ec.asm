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
; shader hash: 3efd0936303f40ad71a792d1d6cce6dc
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
  %452 = add i32 %60, 536
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
  %728 = add i32 %60, 472
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
  %780 = add i32 %60, 456
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
  %804 = add i32 %60, 408
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
  %827 = add i32 %60, 488
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
  %1025 = add i32 %60, 424
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
  %1109 = add i32 %60, 440
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
  %1167 = add i32 %60, 504
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
  %1208 = add i32 %60, 520
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
  %1275 = phi float [ 0.000000e+00, %494 ], [ %1142, %1251 ]
  %1276 = phi float [ 0.000000e+00, %494 ], [ %1143, %1251 ]
  %1277 = phi float [ 0.000000e+00, %494 ], [ %1144, %1251 ]
  %1278 = phi float [ 0.000000e+00, %494 ], [ %1200, %1251 ]
  %1279 = phi float [ 0.000000e+00, %494 ], [ %1201, %1251 ]
  %1280 = phi float [ 0.000000e+00, %494 ], [ %1202, %1251 ]
  %1281 = phi float [ 0.000000e+00, %494 ], [ %1252, %1251 ]
  %1282 = phi float [ 0.000000e+00, %494 ], [ %1253, %1251 ]
  %1283 = phi float [ 0.000000e+00, %494 ], [ %1254, %1251 ]
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
  %1519 = add i32 %60, 476
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
  %1571 = add i32 %60, 460
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
  %1597 = add i32 %60, 412
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
  %1620 = add i32 %60, 492
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
  %1818 = add i32 %60, 428
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
  %1902 = add i32 %60, 444
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
  %1960 = add i32 %60, 508
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
  %2001 = add i32 %60, 524
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
  %2094 = fmul fast float %2088, %1275
  %2095 = fmul fast float %2089, %1276
  %2096 = fmul fast float %2090, %1277
  br label %2097

; <label>:2097                                    ; preds = %2062, %2044
  %2098 = phi float [ %2091, %2062 ], [ %1272, %2044 ]
  %2099 = phi float [ %2092, %2062 ], [ %1273, %2044 ]
  %2100 = phi float [ %2093, %2062 ], [ %1274, %2044 ]
  %2101 = phi float [ %2094, %2062 ], [ %1275, %2044 ]
  %2102 = phi float [ %2095, %2062 ], [ %1276, %2044 ]
  %2103 = phi float [ %2096, %2062 ], [ %1277, %2044 ]
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
  %2242 = fsub fast float %2045, %1281
  %2243 = fsub fast float %2046, %1282
  %2244 = fsub fast float %2047, %1283
  %2245 = fmul fast float %2215, %2242
  %2246 = fmul fast float %2215, %2243
  %2247 = fmul fast float %2215, %2244
  %2248 = fadd fast float %2245, %1281
  %2249 = fadd fast float %2246, %1282
  %2250 = fadd fast float %2247, %1283
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
  %2296 = fadd fast float %2293, %1281
  %2297 = fadd fast float %2294, %1282
  %2298 = fadd fast float %2295, %1283
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
  %2324 = fadd fast float %2321, %1281
  %2325 = fadd fast float %2322, %1282
  %2326 = fadd fast float %2323, %1283
  br label %2327

; <label>:2327                                    ; preds = %2301, %2299, %2253, %2217, %2186, %1586, %1290, %1269
  %2328 = phi float [ %1270, %2186 ], [ %1270, %1586 ], [ %1270, %1269 ], [ %2304, %2301 ], [ %1270, %2299 ], [ %2256, %2253 ], [ %2222, %2217 ], [ %1270, %1290 ]
  %2329 = phi float [ %1271, %2186 ], [ %1271, %1586 ], [ %1271, %1269 ], [ %2305, %2301 ], [ %1271, %2299 ], [ %2257, %2253 ], [ %2223, %2217 ], [ %1271, %1290 ]
  %2330 = phi float [ %2187, %2186 ], [ %1272, %1586 ], [ %1272, %1269 ], [ %2187, %2301 ], [ %2187, %2299 ], [ %2187, %2253 ], [ %2187, %2217 ], [ %1272, %1290 ]
  %2331 = phi float [ %2188, %2186 ], [ %1273, %1586 ], [ %1273, %1269 ], [ %2188, %2301 ], [ %2188, %2299 ], [ %2188, %2253 ], [ %2188, %2217 ], [ %1273, %1290 ]
  %2332 = phi float [ %2189, %2186 ], [ %1274, %1586 ], [ %1274, %1269 ], [ %2189, %2301 ], [ %2189, %2299 ], [ %2189, %2253 ], [ %2189, %2217 ], [ %1274, %1290 ]
  %2333 = phi float [ %2190, %2186 ], [ %1275, %1586 ], [ %1275, %1269 ], [ %2190, %2301 ], [ %2190, %2299 ], [ %2190, %2253 ], [ %2190, %2217 ], [ %1275, %1290 ]
  %2334 = phi float [ %2191, %2186 ], [ %1276, %1586 ], [ %1276, %1269 ], [ %2191, %2301 ], [ %2191, %2299 ], [ %2191, %2253 ], [ %2191, %2217 ], [ %1276, %1290 ]
  %2335 = phi float [ %2192, %2186 ], [ %1277, %1586 ], [ %1277, %1269 ], [ %2192, %2301 ], [ %2192, %2299 ], [ %2192, %2253 ], [ %2192, %2217 ], [ %1277, %1290 ]
  %2336 = phi float [ %1278, %2186 ], [ %1278, %1586 ], [ %1278, %1269 ], [ %2316, %2301 ], [ %1278, %2299 ], [ %2288, %2253 ], [ %2236, %2217 ], [ %1278, %1290 ]
  %2337 = phi float [ %1279, %2186 ], [ %1279, %1586 ], [ %1279, %1269 ], [ %2317, %2301 ], [ %1279, %2299 ], [ %2289, %2253 ], [ %2237, %2217 ], [ %1279, %1290 ]
  %2338 = phi float [ %1280, %2186 ], [ %1280, %1586 ], [ %1280, %1269 ], [ %2318, %2301 ], [ %1280, %2299 ], [ %2290, %2253 ], [ %2238, %2217 ], [ %1280, %1290 ]
  %2339 = phi float [ %1281, %2186 ], [ %1281, %1586 ], [ %1281, %1269 ], [ %2324, %2301 ], [ %1281, %2299 ], [ %2296, %2253 ], [ %2248, %2217 ], [ %1281, %1290 ]
  %2340 = phi float [ %1282, %2186 ], [ %1282, %1586 ], [ %1282, %1269 ], [ %2325, %2301 ], [ %1282, %2299 ], [ %2297, %2253 ], [ %2249, %2217 ], [ %1282, %1290 ]
  %2341 = phi float [ %1283, %2186 ], [ %1283, %1586 ], [ %1283, %1269 ], [ %2326, %2301 ], [ %1283, %2299 ], [ %2298, %2253 ], [ %2250, %2217 ], [ %1283, %1290 ]
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
  %2576 = add i32 %60, 480
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
  %2628 = add i32 %60, 464
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
  %2654 = add i32 %60, 416
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
  %2677 = add i32 %60, 496
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
  %2875 = add i32 %60, 432
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
  %2959 = add i32 %60, 448
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
  %3017 = add i32 %60, 512
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
  %3058 = add i32 %60, 528
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
  %3151 = fmul fast float %3145, %2333
  %3152 = fmul fast float %3146, %2334
  %3153 = fmul fast float %3147, %2335
  br label %3154

; <label>:3154                                    ; preds = %3119, %3101
  %3155 = phi float [ %3148, %3119 ], [ %2330, %3101 ]
  %3156 = phi float [ %3149, %3119 ], [ %2331, %3101 ]
  %3157 = phi float [ %3150, %3119 ], [ %2332, %3101 ]
  %3158 = phi float [ %3151, %3119 ], [ %2333, %3101 ]
  %3159 = phi float [ %3152, %3119 ], [ %2334, %3101 ]
  %3160 = phi float [ %3153, %3119 ], [ %2335, %3101 ]
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
  %3299 = fsub fast float %3102, %2339
  %3300 = fsub fast float %3103, %2340
  %3301 = fsub fast float %3104, %2341
  %3302 = fmul fast float %3272, %3299
  %3303 = fmul fast float %3272, %3300
  %3304 = fmul fast float %3272, %3301
  %3305 = fadd fast float %3302, %2339
  %3306 = fadd fast float %3303, %2340
  %3307 = fadd fast float %3304, %2341
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
  %3353 = fadd fast float %3350, %2339
  %3354 = fadd fast float %3351, %2340
  %3355 = fadd fast float %3352, %2341
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
  %3381 = fadd fast float %3378, %2339
  %3382 = fadd fast float %3379, %2340
  %3383 = fadd fast float %3380, %2341
  br label %3384

; <label>:3384                                    ; preds = %3358, %3356, %3310, %3274, %3243, %2643, %2347, %2327
  %3385 = phi float [ %2328, %3243 ], [ %2328, %2643 ], [ %2328, %2327 ], [ %3361, %3358 ], [ %2328, %3356 ], [ %3313, %3310 ], [ %3279, %3274 ], [ %2328, %2347 ]
  %3386 = phi float [ %2329, %3243 ], [ %2329, %2643 ], [ %2329, %2327 ], [ %3362, %3358 ], [ %2329, %3356 ], [ %3314, %3310 ], [ %3280, %3274 ], [ %2329, %2347 ]
  %3387 = phi float [ %3244, %3243 ], [ %2330, %2643 ], [ %2330, %2327 ], [ %3244, %3358 ], [ %3244, %3356 ], [ %3244, %3310 ], [ %3244, %3274 ], [ %2330, %2347 ]
  %3388 = phi float [ %3245, %3243 ], [ %2331, %2643 ], [ %2331, %2327 ], [ %3245, %3358 ], [ %3245, %3356 ], [ %3245, %3310 ], [ %3245, %3274 ], [ %2331, %2347 ]
  %3389 = phi float [ %3246, %3243 ], [ %2332, %2643 ], [ %2332, %2327 ], [ %3246, %3358 ], [ %3246, %3356 ], [ %3246, %3310 ], [ %3246, %3274 ], [ %2332, %2347 ]
  %3390 = phi float [ %3247, %3243 ], [ %2333, %2643 ], [ %2333, %2327 ], [ %3247, %3358 ], [ %3247, %3356 ], [ %3247, %3310 ], [ %3247, %3274 ], [ %2333, %2347 ]
  %3391 = phi float [ %3248, %3243 ], [ %2334, %2643 ], [ %2334, %2327 ], [ %3248, %3358 ], [ %3248, %3356 ], [ %3248, %3310 ], [ %3248, %3274 ], [ %2334, %2347 ]
  %3392 = phi float [ %3249, %3243 ], [ %2335, %2643 ], [ %2335, %2327 ], [ %3249, %3358 ], [ %3249, %3356 ], [ %3249, %3310 ], [ %3249, %3274 ], [ %2335, %2347 ]
  %3393 = phi float [ %2336, %3243 ], [ %2336, %2643 ], [ %2336, %2327 ], [ %3373, %3358 ], [ %2336, %3356 ], [ %3345, %3310 ], [ %3293, %3274 ], [ %2336, %2347 ]
  %3394 = phi float [ %2337, %3243 ], [ %2337, %2643 ], [ %2337, %2327 ], [ %3374, %3358 ], [ %2337, %3356 ], [ %3346, %3310 ], [ %3294, %3274 ], [ %2337, %2347 ]
  %3395 = phi float [ %2338, %3243 ], [ %2338, %2643 ], [ %2338, %2327 ], [ %3375, %3358 ], [ %2338, %3356 ], [ %3347, %3310 ], [ %3295, %3274 ], [ %2338, %2347 ]
  %3396 = phi float [ %2339, %3243 ], [ %2339, %2643 ], [ %2339, %2327 ], [ %3381, %3358 ], [ %2339, %3356 ], [ %3353, %3310 ], [ %3305, %3274 ], [ %2339, %2347 ]
  %3397 = phi float [ %2340, %3243 ], [ %2340, %2643 ], [ %2340, %2327 ], [ %3382, %3358 ], [ %2340, %3356 ], [ %3354, %3310 ], [ %3306, %3274 ], [ %2340, %2347 ]
  %3398 = phi float [ %2341, %3243 ], [ %2341, %2643 ], [ %2341, %2327 ], [ %3383, %3358 ], [ %2341, %3356 ], [ %3355, %3310 ], [ %3307, %3274 ], [ %2341, %2347 ]
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
  %3633 = add i32 %60, 484
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
  %3685 = add i32 %60, 468
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
  %3711 = add i32 %60, 420
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
  %3734 = add i32 %60, 500
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
  %3932 = add i32 %60, 436
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
  %4016 = add i32 %60, 452
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
  %4074 = add i32 %60, 516
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
  %4115 = add i32 %60, 532
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
  %4208 = fmul fast float %4202, %3390
  %4209 = fmul fast float %4203, %3391
  %4210 = fmul fast float %4204, %3392
  br label %4211

; <label>:4211                                    ; preds = %4176, %4158
  %4212 = phi float [ %4205, %4176 ], [ %3387, %4158 ]
  %4213 = phi float [ %4206, %4176 ], [ %3388, %4158 ]
  %4214 = phi float [ %4207, %4176 ], [ %3389, %4158 ]
  %4215 = phi float [ %4208, %4176 ], [ %3390, %4158 ]
  %4216 = phi float [ %4209, %4176 ], [ %3391, %4158 ]
  %4217 = phi float [ %4210, %4176 ], [ %3392, %4158 ]
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
  %4356 = fsub fast float %4159, %3396
  %4357 = fsub fast float %4160, %3397
  %4358 = fsub fast float %4161, %3398
  %4359 = fmul fast float %4329, %4356
  %4360 = fmul fast float %4329, %4357
  %4361 = fmul fast float %4329, %4358
  %4362 = fadd fast float %4359, %3396
  %4363 = fadd fast float %4360, %3397
  %4364 = fadd fast float %4361, %3398
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
  %4410 = fadd fast float %4407, %3396
  %4411 = fadd fast float %4408, %3397
  %4412 = fadd fast float %4409, %3398
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
  %4438 = fadd fast float %4435, %3396
  %4439 = fadd fast float %4436, %3397
  %4440 = fadd fast float %4437, %3398
  br label %4441

; <label>:4441                                    ; preds = %4415, %4413, %4367, %4331, %4300, %3700, %3404, %3384
  %4442 = phi float [ %3385, %4300 ], [ %3385, %3700 ], [ %3385, %3384 ], [ %3385, %3404 ], [ %4336, %4331 ], [ %4370, %4367 ], [ %3385, %4413 ], [ %4418, %4415 ]
  %4443 = phi float [ %3386, %4300 ], [ %3386, %3700 ], [ %3386, %3384 ], [ %3386, %3404 ], [ %4337, %4331 ], [ %4371, %4367 ], [ %3386, %4413 ], [ %4419, %4415 ]
  %4444 = phi float [ %4301, %4300 ], [ %3387, %3700 ], [ %3387, %3384 ], [ %3387, %3404 ], [ %4301, %4331 ], [ %4301, %4367 ], [ %4301, %4413 ], [ %4301, %4415 ]
  %4445 = phi float [ %4302, %4300 ], [ %3388, %3700 ], [ %3388, %3384 ], [ %3388, %3404 ], [ %4302, %4331 ], [ %4302, %4367 ], [ %4302, %4413 ], [ %4302, %4415 ]
  %4446 = phi float [ %4303, %4300 ], [ %3389, %3700 ], [ %3389, %3384 ], [ %3389, %3404 ], [ %4303, %4331 ], [ %4303, %4367 ], [ %4303, %4413 ], [ %4303, %4415 ]
  %4447 = phi float [ %4304, %4300 ], [ %3390, %3700 ], [ %3390, %3384 ], [ %3390, %3404 ], [ %4304, %4331 ], [ %4304, %4367 ], [ %4304, %4413 ], [ %4304, %4415 ]
  %4448 = phi float [ %4305, %4300 ], [ %3391, %3700 ], [ %3391, %3384 ], [ %3391, %3404 ], [ %4305, %4331 ], [ %4305, %4367 ], [ %4305, %4413 ], [ %4305, %4415 ]
  %4449 = phi float [ %4306, %4300 ], [ %3392, %3700 ], [ %3392, %3384 ], [ %3392, %3404 ], [ %4306, %4331 ], [ %4306, %4367 ], [ %4306, %4413 ], [ %4306, %4415 ]
  %4450 = phi float [ %3393, %4300 ], [ %3393, %3700 ], [ %3393, %3384 ], [ %3393, %3404 ], [ %4350, %4331 ], [ %4402, %4367 ], [ %3393, %4413 ], [ %4430, %4415 ]
  %4451 = phi float [ %3394, %4300 ], [ %3394, %3700 ], [ %3394, %3384 ], [ %3394, %3404 ], [ %4351, %4331 ], [ %4403, %4367 ], [ %3394, %4413 ], [ %4431, %4415 ]
  %4452 = phi float [ %3395, %4300 ], [ %3395, %3700 ], [ %3395, %3384 ], [ %3395, %3404 ], [ %4352, %4331 ], [ %4404, %4367 ], [ %3395, %4413 ], [ %4432, %4415 ]
  %4453 = phi float [ %3396, %4300 ], [ %3396, %3700 ], [ %3396, %3384 ], [ %3396, %3404 ], [ %4362, %4331 ], [ %4410, %4367 ], [ %3396, %4413 ], [ %4438, %4415 ]
  %4454 = phi float [ %3397, %4300 ], [ %3397, %3700 ], [ %3397, %3384 ], [ %3397, %3404 ], [ %4363, %4331 ], [ %4411, %4367 ], [ %3397, %4413 ], [ %4439, %4415 ]
  %4455 = phi float [ %3398, %4300 ], [ %3398, %3700 ], [ %3398, %3384 ], [ %3398, %3404 ], [ %4364, %4331 ], [ %4412, %4367 ], [ %3398, %4413 ], [ %4440, %4415 ]
  %4456 = phi float [ %4307, %4300 ], [ %3399, %3700 ], [ %3399, %3384 ], [ %3399, %3404 ], [ %4307, %4331 ], [ %4307, %4367 ], [ %4307, %4413 ], [ %4307, %4415 ]
  %4457 = phi float [ %3400, %4300 ], [ %3400, %3700 ], [ %3400, %3384 ], [ %3400, %3404 ], [ %4343, %4331 ], [ %4398, %4367 ], [ %3400, %4413 ], [ %4426, %4415 ]
  %4458 = phi float [ %3401, %4300 ], [ %3401, %3700 ], [ %3401, %3384 ], [ %3401, %3404 ], [ %4340, %4331 ], [ %4375, %4367 ], [ %3401, %4413 ], [ %4423, %4415 ]
  %4459 = phi float [ %3402, %4300 ], [ %3402, %3700 ], [ %3402, %3384 ], [ %3402, %3404 ], [ %4355, %4331 ], [ %4406, %4367 ], [ %3402, %4413 ], [ %4434, %4415 ]
  %4460 = phi float [ %4308, %4300 ], [ %3403, %3700 ], [ %3403, %3384 ], [ %3403, %3404 ], [ %4308, %4331 ], [ %4308, %4367 ], [ %4308, %4413 ], [ %4308, %4415 ]
  %4461 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4462 = extractvalue %dx.types.CBufRet.f32 %4461, 0
  %4463 = call float @dx.op.dot2.f32(i32 54, float %4442, float %4443, float %4442, float %4443)  ; Dot2(ax,ay,bx,by)
  %4464 = fmul fast float %4463, 0x3FE3333340000000
  %4465 = fsub fast float 1.000000e+00, %4464
  %4466 = call float @dx.op.dot3.f32(i32 55, float %4442, float %4443, float %4465, float %4442, float %4443, float %4465)  ; Dot3(ax,ay,az,bx,by,bz)
  %4467 = call float @dx.op.unary.f32(i32 25, float %4466)  ; Rsqrt(value)
  %4468 = fmul fast float %4467, %4442
  %4469 = fmul fast float %4467, %4443
  %4470 = fmul fast float %4465, %4467
  %4471 = fmul fast float %4470, %116
  %4472 = fmul fast float %4470, %117
  %4473 = fmul fast float %4470, %118
  %4474 = fmul fast float %4468, %81
  %4475 = fmul fast float %4468, %82
  %4476 = fmul fast float %4468, %83
  %4477 = fadd fast float %4471, %4474
  %4478 = fadd fast float %4472, %4475
  %4479 = fadd fast float %4473, %4476
  %4480 = fmul fast float %128, %4469
  %4481 = fmul fast float %129, %4469
  %4482 = fmul fast float %130, %4469
  %4483 = fadd fast float %4477, %4480
  %4484 = fadd fast float %4478, %4481
  %4485 = fadd fast float %4479, %4482
  %4486 = call float @dx.op.dot3.f32(i32 55, float %4483, float %4484, float %4485, float %4483, float %4484, float %4485)  ; Dot3(ax,ay,az,bx,by,bz)
  %4487 = call float @dx.op.unary.f32(i32 25, float %4486)  ; Rsqrt(value)
  %4488 = fmul fast float %4483, %4487
  %4489 = fmul fast float %4484, %4487
  %4490 = fmul fast float %4485, %4487
  %4491 = and i32 %62, 1
  %4492 = icmp eq i32 %4491, 0
  br i1 %4492, label %4493, label %5085

; <label>:4493                                    ; preds = %4441
  %4494 = call float @dx.op.unary.f32(i32 83, float %164)  ; DerivCoarseX(value)
  %4495 = call float @dx.op.unary.f32(i32 83, float %165)  ; DerivCoarseX(value)
  %4496 = call float @dx.op.unary.f32(i32 83, float %166)  ; DerivCoarseX(value)
  %4497 = call float @dx.op.unary.f32(i32 84, float %164)  ; DerivCoarseY(value)
  %4498 = call float @dx.op.unary.f32(i32 84, float %165)  ; DerivCoarseY(value)
  %4499 = call float @dx.op.unary.f32(i32 84, float %166)  ; DerivCoarseY(value)
  %4500 = fadd fast float %4494, %164
  %4501 = fadd fast float %4495, %165
  %4502 = fadd fast float %4496, %166
  %4503 = fadd fast float %4497, %164
  %4504 = fadd fast float %4498, %165
  %4505 = fadd fast float %4499, %166
  %4506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %4507 = extractvalue %dx.types.CBufRet.f32 %4506, 0
  %4508 = extractvalue %dx.types.CBufRet.f32 %4506, 1
  %4509 = extractvalue %dx.types.CBufRet.f32 %4506, 2
  %4510 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %4511 = extractvalue %dx.types.CBufRet.f32 %4510, 2
  %4512 = extractvalue %dx.types.CBufRet.f32 %4510, 3
  %4513 = fmul fast float %4507, %109
  %4514 = fmul fast float %4513, %4511
  %4515 = fmul fast float %4508, %110
  %4516 = fmul fast float %4515, %4512
  %4517 = fptoui float %4514 to i32
  %4518 = fptoui float %4516 to i32
  %4519 = fadd fast float %4507, -1.000000e+00
  %4520 = fadd fast float %4508, -1.000000e+00
  %4521 = fptoui float %4519 to i32
  %4522 = fptoui float %4520 to i32
  %4523 = call i32 @dx.op.binary.i32(i32 40, i32 %4517, i32 %4521)  ; UMin(a,b)
  %4524 = call i32 @dx.op.binary.i32(i32 40, i32 %4518, i32 %4522)  ; UMin(a,b)
  %4525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4526 = extractvalue %dx.types.CBufRet.f32 %4525, 2
  %4527 = extractvalue %dx.types.CBufRet.f32 %4525, 3
  %4528 = fmul fast float %4526, %97
  %4529 = fsub fast float %4528, %4527
  %4530 = fadd fast float %4509, -1.000000e+00
  %4531 = call float @dx.op.binary.f32(i32 36, float %4529, float %4530)  ; FMin(a,b)
  %4532 = fptoui float %4531 to i32
  %4533 = fptoui float %4507 to i32
  %4534 = fptoui float %4508 to i32
  %4535 = mul i32 %4532, %4534
  %4536 = add i32 %4535, %4524
  %4537 = mul i32 %4536, %4533
  %4538 = add i32 %4537, %4523
  %4539 = shl i32 %4538, 2
  %4540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %4539, i32 undef)  ; BufferLoad(srv,index,wot)
  %4541 = extractvalue %dx.types.ResRet.i32 %4540, 0
  %4542 = and i32 %4541, 1023
  %4543 = lshr i32 %4541, 10
  %4544 = icmp eq i32 %4542, 0
  br i1 %4544, label %5048, label %4545

; <label>:4545                                    ; preds = %4493
  %4546 = and i32 %4541, 1023
  br label %4547

; <label>:4547                                    ; preds = %4679, %4545
  %4548 = phi i32 [ %4629, %4679 ], [ 0, %4545 ]
  %4549 = phi float [ %4680, %4679 ], [ 0.000000e+00, %4545 ]
  %4550 = phi float [ %4681, %4679 ], [ %4462, %4545 ]
  %4551 = phi float [ %4682, %4679 ], [ %4460, %4545 ]
  %4552 = phi float [ %4683, %4679 ], [ %4450, %4545 ]
  %4553 = phi float [ %4684, %4679 ], [ %4451, %4545 ]
  %4554 = phi float [ %4685, %4679 ], [ %4452, %4545 ]
  %4555 = phi float [ %4686, %4679 ], [ 0.000000e+00, %4545 ]
  %4556 = phi float [ %4687, %4679 ], [ 0.000000e+00, %4545 ]
  %4557 = phi float [ %4688, %4679 ], [ %4453, %4545 ]
  %4558 = phi float [ %4689, %4679 ], [ %4454, %4545 ]
  %4559 = phi float [ %4690, %4679 ], [ %4455, %4545 ]
  %4560 = phi float [ %4691, %4679 ], [ %4447, %4545 ]
  %4561 = phi float [ %4692, %4679 ], [ %4448, %4545 ]
  %4562 = phi float [ %4693, %4679 ], [ %4449, %4545 ]
  %4563 = phi float [ %4694, %4679 ], [ %4488, %4545 ]
  %4564 = phi float [ %4695, %4679 ], [ %4489, %4545 ]
  %4565 = phi float [ %4696, %4679 ], [ %4490, %4545 ]
  %4566 = phi float [ %4697, %4679 ], [ %4458, %4545 ]
  %4567 = phi float [ %4698, %4679 ], [ %4457, %4545 ]
  %4568 = phi float [ %4699, %4679 ], [ 0.000000e+00, %4545 ]
  %4569 = phi float [ %4700, %4679 ], [ %4456, %4545 ]
  %4570 = phi float [ %4701, %4679 ], [ %4444, %4545 ]
  %4571 = phi float [ %4702, %4679 ], [ %4445, %4545 ]
  %4572 = phi float [ %4703, %4679 ], [ %4446, %4545 ]
  %4573 = add nuw nsw i32 %4548, %4543
  %4574 = shl i32 %4573, 2
  %4575 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %4574, i32 undef)  ; BufferLoad(srv,index,wot)
  %4576 = extractvalue %dx.types.ResRet.i32 %4575, 0
  %4577 = shl i32 %4576, 8
  %4578 = or i32 %4577, 48
  %4579 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4578, i32 undef)  ; BufferLoad(srv,index,wot)
  %4580 = extractvalue %dx.types.ResRet.f32 %4579, 0
  %4581 = extractvalue %dx.types.ResRet.f32 %4579, 1
  %4582 = extractvalue %dx.types.ResRet.f32 %4579, 2
  %4583 = extractvalue %dx.types.ResRet.f32 %4579, 3
  %4584 = or i32 %4577, 64
  %4585 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4584, i32 undef)  ; BufferLoad(srv,index,wot)
  %4586 = extractvalue %dx.types.ResRet.i32 %4585, 0
  %4587 = extractvalue %dx.types.ResRet.i32 %4585, 1
  %4588 = or i32 %4577, 80
  %4589 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4588, i32 undef)  ; BufferLoad(srv,index,wot)
  %4590 = extractvalue %dx.types.ResRet.f32 %4589, 2
  %4591 = extractvalue %dx.types.ResRet.f32 %4589, 3
  %4592 = or i32 %4577, 96
  %4593 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4592, i32 undef)  ; BufferLoad(srv,index,wot)
  %4594 = extractvalue %dx.types.ResRet.f32 %4593, 0
  %4595 = extractvalue %dx.types.ResRet.f32 %4593, 1
  %4596 = extractvalue %dx.types.ResRet.f32 %4593, 2
  %4597 = extractvalue %dx.types.ResRet.f32 %4593, 3
  %4598 = or i32 %4577, 112
  %4599 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4598, i32 undef)  ; BufferLoad(srv,index,wot)
  %4600 = extractvalue %dx.types.ResRet.f32 %4599, 2
  %4601 = or i32 %4577, 128
  %4602 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4601, i32 undef)  ; BufferLoad(srv,index,wot)
  %4603 = extractvalue %dx.types.ResRet.f32 %4602, 0
  %4604 = extractvalue %dx.types.ResRet.f32 %4602, 1
  %4605 = extractvalue %dx.types.ResRet.f32 %4602, 2
  %4606 = extractvalue %dx.types.ResRet.f32 %4602, 3
  %4607 = or i32 %4577, 144
  %4608 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4607, i32 undef)  ; BufferLoad(srv,index,wot)
  %4609 = extractvalue %dx.types.ResRet.f32 %4608, 0
  %4610 = extractvalue %dx.types.ResRet.f32 %4608, 1
  %4611 = extractvalue %dx.types.ResRet.f32 %4608, 2
  %4612 = extractvalue %dx.types.ResRet.f32 %4608, 3
  %4613 = or i32 %4577, 160
  %4614 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4613, i32 undef)  ; BufferLoad(srv,index,wot)
  %4615 = extractvalue %dx.types.ResRet.f32 %4614, 0
  %4616 = extractvalue %dx.types.ResRet.f32 %4614, 1
  %4617 = extractvalue %dx.types.ResRet.f32 %4614, 2
  %4618 = extractvalue %dx.types.ResRet.f32 %4614, 3
  %4619 = or i32 %4577, 192
  %4620 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4619, i32 undef)  ; BufferLoad(srv,index,wot)
  %4621 = extractvalue %dx.types.ResRet.i32 %4620, 0
  %4622 = or i32 %4577, 208
  %4623 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4622, i32 undef)  ; BufferLoad(srv,index,wot)
  %4624 = extractvalue %dx.types.ResRet.f32 %4623, 0
  %4625 = or i32 %4577, 248
  %4626 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4625, i32 undef)  ; BufferLoad(srv,index,wot)
  %4627 = extractvalue %dx.types.ResRet.f32 %4626, 0
  %4628 = extractvalue %dx.types.ResRet.f32 %4626, 1
  %4629 = add nuw nsw i32 %4548, 1
  %4630 = bitcast float %4583 to i32
  %4631 = and i32 %4630, 512
  %4632 = icmp eq i32 %4631, 0
  %4633 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4577, i32 undef)  ; BufferLoad(srv,index,wot)
  %4634 = extractvalue %dx.types.ResRet.f32 %4633, 0
  %4635 = extractvalue %dx.types.ResRet.f32 %4633, 1
  %4636 = extractvalue %dx.types.ResRet.f32 %4633, 2
  %4637 = extractvalue %dx.types.ResRet.f32 %4633, 3
  %4638 = call float @dx.op.dot4.f32(i32 56, float %4634, float %4635, float %4636, float %4637, float %164, float %165, float %166, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4639 = or i32 %4577, 16
  %4640 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4639, i32 undef)  ; BufferLoad(srv,index,wot)
  %4641 = extractvalue %dx.types.ResRet.f32 %4640, 0
  %4642 = extractvalue %dx.types.ResRet.f32 %4640, 1
  %4643 = extractvalue %dx.types.ResRet.f32 %4640, 2
  %4644 = extractvalue %dx.types.ResRet.f32 %4640, 3
  %4645 = call float @dx.op.dot4.f32(i32 56, float %4641, float %4642, float %4643, float %4644, float %164, float %165, float %166, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4646 = or i32 %4577, 32
  %4647 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4646, i32 undef)  ; BufferLoad(srv,index,wot)
  %4648 = extractvalue %dx.types.ResRet.f32 %4647, 0
  %4649 = extractvalue %dx.types.ResRet.f32 %4647, 1
  %4650 = extractvalue %dx.types.ResRet.f32 %4647, 2
  %4651 = extractvalue %dx.types.ResRet.f32 %4647, 3
  %4652 = call float @dx.op.dot4.f32(i32 56, float %4648, float %4649, float %4650, float %4651, float %164, float %165, float %166, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4653 = call float @dx.op.unary.f32(i32 27, float %4638)  ; Round_ni(value)
  %4654 = call float @dx.op.unary.f32(i32 6, float %4653)  ; FAbs(value)
  %4655 = call float @dx.op.unary.f32(i32 27, float %4645)  ; Round_ni(value)
  %4656 = call float @dx.op.unary.f32(i32 6, float %4655)  ; FAbs(value)
  %4657 = call float @dx.op.unary.f32(i32 6, float %4652)  ; FAbs(value)
  %4658 = call float @dx.op.unary.f32(i32 27, float %4657)  ; Round_ni(value)
  %4659 = fadd fast float %4656, %4654
  %4660 = fadd fast float %4659, %4658
  %4661 = fcmp fast oeq float %4660, 0.000000e+00
  %4662 = call float @dx.op.dot4.f32(i32 56, float %4634, float %4635, float %4636, float %4637, float %4500, float %4501, float %4502, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4663 = call float @dx.op.dot4.f32(i32 56, float %4641, float %4642, float %4643, float %4644, float %4500, float %4501, float %4502, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4664 = call float @dx.op.dot4.f32(i32 56, float %4634, float %4635, float %4636, float %4637, float %4503, float %4504, float %4505, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4665 = call float @dx.op.dot4.f32(i32 56, float %4641, float %4642, float %4643, float %4644, float %4503, float %4504, float %4505, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4666 = fsub fast float %4662, %4638
  %4667 = fsub fast float %4664, %4638
  %4668 = fsub fast float %4663, %4645
  %4669 = fsub fast float %4665, %4645
  %4670 = call float @dx.op.dot3.f32(i32 55, float %4580, float %4581, float %4582, float %116, float %117, float %118)  ; Dot3(ax,ay,az,bx,by,bz)
  %4671 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4672 = extractvalue %dx.types.CBufRet.f32 %4671, 2
  %4673 = fadd fast float %4672, %4670
  %4674 = call float @dx.op.unary.f32(i32 7, float %4673)  ; Saturate(value)
  %4675 = extractvalue %dx.types.CBufRet.f32 %4671, 0
  %4676 = fcmp fast ogt float %4674, %4675
  %4677 = and i1 %4661, %4676
  %4678 = and i1 %4632, %4677
  br i1 %4678, label %4705, label %4679

; <label>:4679                                    ; preds = %5034, %4786, %4705, %4547
  %4680 = phi float [ %4549, %4705 ], [ %4789, %4786 ], [ %4789, %5034 ], [ %4549, %4547 ]
  %4681 = phi float [ %4550, %4705 ], [ %4550, %4786 ], [ %5010, %5034 ], [ %4550, %4547 ]
  %4682 = phi float [ %4551, %4705 ], [ %4551, %4786 ], [ %5008, %5034 ], [ %4551, %4547 ]
  %4683 = phi float [ %4552, %4705 ], [ %4552, %4786 ], [ %4986, %5034 ], [ %4552, %4547 ]
  %4684 = phi float [ %4553, %4705 ], [ %4553, %4786 ], [ %4987, %5034 ], [ %4553, %4547 ]
  %4685 = phi float [ %4554, %4705 ], [ %4554, %4786 ], [ %4988, %5034 ], [ %4554, %4547 ]
  %4686 = phi float [ %4555, %4705 ], [ %4555, %4786 ], [ %4913, %5034 ], [ %4555, %4547 ]
  %4687 = phi float [ %4556, %4705 ], [ %4556, %4786 ], [ %4911, %5034 ], [ %4556, %4547 ]
  %4688 = phi float [ %4557, %4705 ], [ %4557, %4786 ], [ %4956, %5034 ], [ %4557, %4547 ]
  %4689 = phi float [ %4558, %4705 ], [ %4558, %4786 ], [ %4957, %5034 ], [ %4558, %4547 ]
  %4690 = phi float [ %4559, %4705 ], [ %4559, %4786 ], [ %4958, %5034 ], [ %4559, %4547 ]
  %4691 = phi float [ %4560, %4705 ], [ %4560, %4786 ], [ %5044, %5034 ], [ %4560, %4547 ]
  %4692 = phi float [ %4561, %4705 ], [ %4561, %4786 ], [ %5045, %5034 ], [ %4561, %4547 ]
  %4693 = phi float [ %4562, %4705 ], [ %4562, %4786 ], [ %5046, %5034 ], [ %4562, %4547 ]
  %4694 = phi float [ %4563, %4705 ], [ %4563, %4786 ], [ %4892, %5034 ], [ %4563, %4547 ]
  %4695 = phi float [ %4564, %4705 ], [ %4564, %4786 ], [ %4893, %5034 ], [ %4564, %4547 ]
  %4696 = phi float [ %4565, %4705 ], [ %4565, %4786 ], [ %4894, %5034 ], [ %4565, %4547 ]
  %4697 = phi float [ %4566, %4705 ], [ %4566, %4786 ], [ %4966, %5034 ], [ %4566, %4547 ]
  %4698 = phi float [ %4567, %4705 ], [ %4567, %4786 ], [ %4963, %5034 ], [ %4567, %4547 ]
  %4699 = phi float [ %4568, %4705 ], [ %4568, %4786 ], [ %4960, %5034 ], [ %4568, %4547 ]
  %4700 = phi float [ %4569, %4705 ], [ %4569, %4786 ], [ %4909, %5034 ], [ %4569, %4547 ]
  %4701 = phi float [ %4570, %4705 ], [ %4570, %4786 ], [ %4904, %5034 ], [ %4570, %4547 ]
  %4702 = phi float [ %4571, %4705 ], [ %4571, %4786 ], [ %4905, %5034 ], [ %4571, %4547 ]
  %4703 = phi float [ %4572, %4705 ], [ %4572, %4786 ], [ %4906, %5034 ], [ %4572, %4547 ]
  %4704 = icmp eq i32 %4629, %4546
  br i1 %4704, label %5047, label %4547

; <label>:4705                                    ; preds = %4547
  %4706 = extractvalue %dx.types.ResRet.f32 %4599, 3
  %4707 = extractvalue %dx.types.ResRet.f32 %4599, 1
  %4708 = extractvalue %dx.types.ResRet.f32 %4599, 0
  %4709 = extractvalue %dx.types.ResRet.f32 %4589, 1
  %4710 = extractvalue %dx.types.ResRet.f32 %4589, 0
  %4711 = extractvalue %dx.types.ResRet.i32 %4585, 3
  %4712 = extractvalue %dx.types.ResRet.i32 %4585, 2
  %4713 = add i32 %4711, 0
  %4714 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4713, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4715 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4716 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4714, %dx.types.Handle %4715, float %4638, float %4645, float undef, float undef, i32 0, i32 0, i32 undef, float %4666, float %4668, float undef, float %4667, float %4669, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4717 = extractvalue %dx.types.ResRet.f32 %4716, 0
  %4718 = fmul fast float %4717, %4710
  %4719 = fadd fast float %4718, %4709
  %4720 = call float @dx.op.unary.f32(i32 7, float %4719)  ; Saturate(value)
  %4721 = fmul fast float %4638, %4594
  %4722 = call float @dx.op.tertiary.f32(i32 46, float %4595, float %4645, float %4721)  ; FMad(a,b,c)
  %4723 = fadd fast float %4722, %4708
  %4724 = fmul fast float %4638, %4596
  %4725 = call float @dx.op.tertiary.f32(i32 46, float %4597, float %4645, float %4724)  ; FMad(a,b,c)
  %4726 = fadd fast float %4725, %4707
  %4727 = fmul fast float %4666, %4594
  %4728 = call float @dx.op.tertiary.f32(i32 46, float %4595, float %4668, float %4727)  ; FMad(a,b,c)
  %4729 = fmul fast float %4666, %4596
  %4730 = call float @dx.op.tertiary.f32(i32 46, float %4597, float %4668, float %4729)  ; FMad(a,b,c)
  %4731 = fmul fast float %4667, %4594
  %4732 = call float @dx.op.tertiary.f32(i32 46, float %4595, float %4669, float %4731)  ; FMad(a,b,c)
  %4733 = fmul fast float %4667, %4596
  %4734 = call float @dx.op.tertiary.f32(i32 46, float %4597, float %4669, float %4733)  ; FMad(a,b,c)
  %4735 = add i32 %4712, 0
  %4736 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4735, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4737 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4736, %dx.types.Handle %4715, float %4723, float %4726, float undef, float undef, i32 0, i32 0, i32 undef, float %4728, float %4730, float undef, float %4732, float %4734, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4738 = extractvalue %dx.types.ResRet.f32 %4737, 0
  %4739 = and i32 %4630, 1024
  %4740 = icmp ne i32 %4739, 0
  %4741 = fcmp fast ogt float %4738, 0x3FE0101020000000
  %4742 = uitofp i1 %4741 to float
  %4743 = select i1 %4740, float %4742, float %4738
  %4744 = and i32 %4630, 8192
  %4745 = icmp ne i32 %4744, 0
  %4746 = select i1 %4745, float %4706, float 1.000000e+00
  %4747 = fmul fast float %4638, 2.000000e+00
  %4748 = fadd fast float %4747, -1.000000e+00
  %4749 = call float @dx.op.unary.f32(i32 6, float %4748)  ; FAbs(value)
  %4750 = fmul fast float %4749, %4627
  %4751 = fsub fast float %4750, %4627
  %4752 = call float @dx.op.unary.f32(i32 7, float %4751)  ; Saturate(value)
  %4753 = fmul fast float %4645, 2.000000e+00
  %4754 = fadd fast float %4753, -1.000000e+00
  %4755 = call float @dx.op.unary.f32(i32 6, float %4754)  ; FAbs(value)
  %4756 = fmul fast float %4755, %4628
  %4757 = fsub fast float %4756, %4628
  %4758 = call float @dx.op.unary.f32(i32 7, float %4757)  ; Saturate(value)
  %4759 = fmul fast float %4657, %4590
  %4760 = fsub fast float %4759, %4590
  %4761 = call float @dx.op.unary.f32(i32 7, float %4760)  ; Saturate(value)
  %4762 = fmul fast float %4720, %4746
  %4763 = fmul fast float %4762, %4717
  %4764 = fmul fast float %4763, %4752
  %4765 = fmul fast float %4764, %4743
  %4766 = fmul fast float %4765, %4758
  %4767 = fmul fast float %4766, %4761
  %4768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4769 = extractvalue %dx.types.CBufRet.f32 %4768, 1
  %4770 = extractvalue %dx.types.CBufRet.f32 %4768, 0
  %4771 = fsub fast float %4674, %4770
  %4772 = fmul fast float %4771, %4769
  %4773 = call float @dx.op.unary.f32(i32 7, float %4772)  ; Saturate(value)
  %4774 = fmul fast float %4767, %4591
  %4775 = fadd fast float %4767, %4591
  %4776 = fmul fast float %4775, %4600
  %4777 = fsub fast float %4776, %4600
  %4778 = call float @dx.op.unary.f32(i32 7, float %4777)  ; Saturate(value)
  %4779 = and i32 %4630, 128
  %4780 = icmp ne i32 %4779, 0
  %4781 = select i1 %4780, float %4778, float %4774
  %4782 = fmul fast float %4781, %4773
  %4783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4784 = extractvalue %dx.types.CBufRet.f32 %4783, 0
  %4785 = fcmp fast ugt float %4782, %4784
  br i1 %4785, label %4786, label %4679

; <label>:4786                                    ; preds = %4705
  %4787 = select i1 %4745, float %4782, float 0.000000e+00
  %4788 = fadd fast float %4787, %4549
  %4789 = call float @dx.op.unary.f32(i32 7, float %4788)  ; Saturate(value)
  br i1 %4745, label %4679, label %4790

; <label>:4790                                    ; preds = %4786
  %4791 = and i32 %4630, 4
  %4792 = and i32 %4630, 8
  %4793 = add i32 %4586, 0
  %4794 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4793, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4795 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4796 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4794, %dx.types.Handle %4795, float %4723, float %4726, float undef, float undef, i32 0, i32 0, i32 undef, float %4728, float %4730, float undef, float %4732, float %4734, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4797 = extractvalue %dx.types.ResRet.f32 %4796, 0
  %4798 = extractvalue %dx.types.ResRet.f32 %4796, 1
  %4799 = extractvalue %dx.types.ResRet.f32 %4796, 2
  %4800 = extractvalue %dx.types.ResRet.f32 %4796, 3
  %4801 = bitcast float %4612 to i32
  %4802 = and i32 %4801, 255
  %4803 = uitofp i32 %4802 to float
  %4804 = lshr i32 %4801, 8
  %4805 = and i32 %4804, 255
  %4806 = uitofp i32 %4805 to float
  %4807 = fmul fast float %4800, %4803
  %4808 = fadd fast float %4807, %4806
  %4809 = fmul fast float %4808, 0x3F70101000000000
  %4810 = add i32 %4587, 0
  %4811 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4810, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4812 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4811, %dx.types.Handle %4795, float %4723, float %4726, float undef, float undef, i32 0, i32 0, i32 undef, float %4728, float %4730, float undef, float %4732, float %4734, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4813 = extractvalue %dx.types.ResRet.f32 %4812, 0
  %4814 = extractvalue %dx.types.ResRet.f32 %4812, 1
  %4815 = extractvalue %dx.types.ResRet.f32 %4812, 2
  %4816 = extractvalue %dx.types.ResRet.f32 %4812, 3
  %4817 = bitcast float %4606 to i32
  %4818 = and i32 %4817, 255
  %4819 = uitofp i32 %4818 to float
  %4820 = lshr i32 %4817, 8
  %4821 = and i32 %4820, 255
  %4822 = uitofp i32 %4821 to float
  %4823 = lshr i32 %4817, 16
  %4824 = and i32 %4823, 255
  %4825 = uitofp i32 %4824 to float
  %4826 = fmul fast float %4825, 0x3F70101000000000
  %4827 = fmul fast float %4813, %4819
  %4828 = fadd fast float %4827, %4822
  %4829 = fmul fast float %4828, 0x3F70101000000000
  %4830 = fadd fast float %4814, -5.000000e-01
  %4831 = fadd fast float %4816, -5.000000e-01
  %4832 = fmul fast float %4830, %4826
  %4833 = fmul fast float %4831, %4826
  %4834 = fadd fast float %4832, 5.000000e-01
  %4835 = fadd fast float %4833, 5.000000e-01
  %4836 = fmul fast float %4797, %4615
  %4837 = fmul fast float %4798, %4616
  %4838 = fmul fast float %4799, %4617
  %4839 = fmul fast float %4834, 2.000000e+00
  %4840 = fadd fast float %4839, -1.000000e+00
  %4841 = fmul fast float %4835, 2.000000e+00
  %4842 = fadd fast float %4841, -1.000000e+00
  %4843 = fadd fast float %4840, %4842
  %4844 = fmul fast float %4843, 5.000000e-01
  %4845 = fsub fast float %4840, %4842
  %4846 = fmul fast float %4845, 5.000000e-01
  %4847 = call float @dx.op.unary.f32(i32 6, float %4844)  ; FAbs(value)
  %4848 = fsub fast float 1.000000e+00, %4847
  %4849 = call float @dx.op.unary.f32(i32 6, float %4846)  ; FAbs(value)
  %4850 = fsub fast float %4848, %4849
  %4851 = call float @dx.op.dot3.f32(i32 55, float %4844, float %4846, float %4850, float %4844, float %4846, float %4850)  ; Dot3(ax,ay,az,bx,by,bz)
  %4852 = call float @dx.op.unary.f32(i32 25, float %4851)  ; Rsqrt(value)
  %4853 = fmul fast float %4844, %4852
  %4854 = fmul fast float %4846, %4852
  %4855 = fmul fast float %4852, %4850
  %4856 = fmul fast float %4855, %4580
  %4857 = fmul fast float %4855, %4581
  %4858 = fmul fast float %4855, %4582
  %4859 = fmul fast float %4853, %4603
  %4860 = fmul fast float %4853, %4604
  %4861 = fmul fast float %4853, %4605
  %4862 = fadd fast float %4859, %4856
  %4863 = fadd fast float %4860, %4857
  %4864 = fadd fast float %4861, %4858
  %4865 = fmul fast float %4854, %4609
  %4866 = fmul fast float %4854, %4610
  %4867 = fmul fast float %4854, %4611
  %4868 = fadd fast float %4862, %4865
  %4869 = fadd fast float %4863, %4866
  %4870 = fadd fast float %4864, %4867
  %4871 = call float @dx.op.dot3.f32(i32 55, float %4868, float %4869, float %4870, float %4868, float %4869, float %4870)  ; Dot3(ax,ay,az,bx,by,bz)
  %4872 = call float @dx.op.unary.f32(i32 25, float %4871)  ; Rsqrt(value)
  %4873 = fmul fast float %4868, %4872
  %4874 = fmul fast float %4869, %4872
  %4875 = fmul fast float %4870, %4872
  %4876 = icmp ne i32 %4792, 0
  %4877 = select i1 %4876, float 1.000000e+00, float 0.000000e+00
  %4878 = fmul fast float %4782, %4877
  %4879 = and i32 %4630, 1
  %4880 = icmp eq i32 %4879, 0
  br i1 %4880, label %4881, label %4885

; <label>:4881                                    ; preds = %4790
  %4882 = fsub fast float %4873, %4563
  %4883 = fsub fast float %4874, %4564
  %4884 = fsub fast float %4875, %4565
  br label %4885

; <label>:4885                                    ; preds = %4881, %4790
  %4886 = phi float [ %4882, %4881 ], [ %4873, %4790 ]
  %4887 = phi float [ %4883, %4881 ], [ %4874, %4790 ]
  %4888 = phi float [ %4884, %4881 ], [ %4875, %4790 ]
  %4889 = fmul float %4888, %4878
  %4890 = fmul float %4887, %4878
  %4891 = fmul float %4886, %4878
  %4892 = fadd fast float %4891, %4563
  %4893 = fadd fast float %4890, %4564
  %4894 = fadd fast float %4889, %4565
  %4895 = icmp ne i32 %4791, 0
  %4896 = select i1 %4895, float 1.000000e+00, float 0.000000e+00
  %4897 = fmul fast float %4782, %4896
  %4898 = fsub fast float %4836, %4570
  %4899 = fsub fast float %4837, %4571
  %4900 = fsub fast float %4838, %4572
  %4901 = fmul fast float %4898, %4897
  %4902 = fmul fast float %4899, %4897
  %4903 = fmul fast float %4900, %4897
  %4904 = fadd fast float %4901, %4570
  %4905 = fadd fast float %4902, %4571
  %4906 = fadd fast float %4903, %4572
  %4907 = fsub fast float %4809, %4569
  %4908 = fmul fast float %4907, %4897
  %4909 = fadd fast float %4908, %4569
  %4910 = fmul fast float %4897, %4556
  %4911 = fsub fast float %4556, %4910
  %4912 = fmul fast float %4897, %4555
  %4913 = fsub fast float %4555, %4912
  %4914 = bitcast float %4624 to i32
  %4915 = lshr i32 %4914, 16
  %4916 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4915)  ; LegacyF16ToF32(value)
  %4917 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %438, i32 undef)  ; BufferLoad(srv,index,wot)
  %4918 = extractvalue %dx.types.ResRet.i32 %4917, 0
  %4919 = and i32 %4918, 1
  %4920 = icmp eq i32 %4919, 0
  br i1 %4920, label %4921, label %4946

; <label>:4921                                    ; preds = %4885
  %4922 = fadd fast float %4809, 0xBFB99999A0000000
  %4923 = call float @dx.op.unary.f32(i32 7, float %4922)  ; Saturate(value)
  %4924 = fmul fast float %4923, 0x3FF1C71C80000000
  %4925 = fsub fast float 1.000000e+00, %4924
  %4926 = call float @dx.op.unary.f32(i32 7, float %4925)  ; Saturate(value)
  %4927 = fmul fast float %4926, %4836
  %4928 = fmul fast float %4926, %4837
  %4929 = fmul fast float %4926, %4838
  %4930 = call float @dx.op.unary.f32(i32 7, float %4927)  ; Saturate(value)
  %4931 = call float @dx.op.unary.f32(i32 7, float %4928)  ; Saturate(value)
  %4932 = call float @dx.op.unary.f32(i32 7, float %4929)  ; Saturate(value)
  %4933 = call float @dx.op.binary.f32(i32 35, float %4931, float %4932)  ; FMax(a,b)
  %4934 = call float @dx.op.binary.f32(i32 35, float %4930, float %4933)  ; FMax(a,b)
  %4935 = fcmp fast ogt float %4934, 0.000000e+00
  %4936 = bitcast float %4934 to i32
  %4937 = sub nsw i32 2129859010, %4936
  %4938 = bitcast i32 %4937 to float
  %4939 = select i1 %4935, float %4938, float 0.000000e+00
  %4940 = fmul fast float %4930, %4916
  %4941 = fmul fast float %4931, %4916
  %4942 = fmul fast float %4932, %4916
  %4943 = fmul fast float %4940, %4939
  %4944 = fmul fast float %4941, %4939
  %4945 = fmul fast float %4942, %4939
  br label %4946

; <label>:4946                                    ; preds = %4921, %4885
  %4947 = phi float [ %4916, %4885 ], [ %4943, %4921 ]
  %4948 = phi float [ %4916, %4885 ], [ %4944, %4921 ]
  %4949 = phi float [ %4916, %4885 ], [ %4945, %4921 ]
  %4950 = fsub fast float %4947, %4557
  %4951 = fsub fast float %4948, %4558
  %4952 = fsub fast float %4949, %4559
  %4953 = fmul fast float %4950, %4897
  %4954 = fmul fast float %4951, %4897
  %4955 = fmul fast float %4952, %4897
  %4956 = fadd fast float %4953, %4557
  %4957 = fadd fast float %4954, %4558
  %4958 = fadd fast float %4955, %4559
  %4959 = fadd fast float %4782, %4568
  %4960 = call float @dx.op.unary.f32(i32 7, float %4959)  ; Saturate(value)
  %4961 = fsub fast float %4829, %4567
  %4962 = fmul fast float %4961, %4878
  %4963 = fadd fast float %4962, %4567
  %4964 = fsub fast float %4815, %4566
  %4965 = fmul fast float %4964, %4878
  %4966 = fadd fast float %4965, %4566
  br i1 %4880, label %4975, label %4967

; <label>:4967                                    ; preds = %4946
  %4968 = and i32 %4630, 32768
  %4969 = icmp eq i32 %4968, 0
  br i1 %4969, label %4985, label %4970

; <label>:4970                                    ; preds = %4967
  %4971 = fmul fast float %4878, 1.270000e+02
  %4972 = fadd fast float %4971, %4552
  %4973 = fadd fast float %4971, %4553
  %4974 = fadd fast float %4971, %4554
  br label %4985

; <label>:4975                                    ; preds = %4946
  %4976 = fsub fast float 1.270000e+02, %4552
  %4977 = fsub fast float 1.270000e+02, %4553
  %4978 = fsub fast float 1.270000e+02, %4554
  %4979 = fmul fast float %4878, %4976
  %4980 = fmul fast float %4878, %4977
  %4981 = fmul fast float %4878, %4978
  %4982 = fadd fast float %4979, %4552
  %4983 = fadd fast float %4980, %4553
  %4984 = fadd fast float %4981, %4554
  br label %4985

; <label>:4985                                    ; preds = %4975, %4970, %4967
  %4986 = phi float [ %4972, %4970 ], [ %4552, %4967 ], [ %4982, %4975 ]
  %4987 = phi float [ %4973, %4970 ], [ %4553, %4967 ], [ %4983, %4975 ]
  %4988 = phi float [ %4974, %4970 ], [ %4554, %4967 ], [ %4984, %4975 ]
  %4989 = call float @dx.op.dot3.f32(i32 55, float %4836, float %4837, float %4838, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4990 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4991 = extractvalue %dx.types.CBufRet.f32 %4990, 0
  %4992 = extractvalue %dx.types.CBufRet.f32 %4990, 1
  %4993 = fmul fast float %4992, %4989
  %4994 = fadd fast float %4993, %4991
  %4995 = call float @dx.op.unary.f32(i32 7, float %4994)  ; Saturate(value)
  %4996 = bitcast float %4618 to i32
  %4997 = and i32 %4996, 65535
  %4998 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4997)  ; LegacyF16ToF32(value)
  %4999 = lshr i32 %4996, 16
  %5000 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4999)  ; LegacyF16ToF32(value)
  %5001 = fcmp fast oge float %4998, 0.000000e+00
  %5002 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5003 = extractvalue %dx.types.CBufRet.f32 %5002, 0
  %5004 = select i1 %5001, float %4998, float %5003
  %5005 = fadd fast float %5004, %5000
  %5006 = fsub fast float %4995, %4551
  %5007 = fmul fast float %5006, %4782
  %5008 = fadd fast float %5007, %4551
  %5009 = fmul fast float %5005, %4782
  %5010 = call float @dx.op.binary.f32(i32 35, float %4550, float %5009)  ; FMax(a,b)
  %5011 = and i32 %4630, 16
  %5012 = icmp eq i32 %5011, 0
  br i1 %5012, label %5034, label %5013

; <label>:5013                                    ; preds = %4985
  %5014 = add i32 %4621, 0
  %5015 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5014, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5016 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5015, %dx.types.Handle %4795, float %4723, float %4726, float undef, float undef, i32 0, i32 0, i32 undef, float %4728, float %4730, float undef, float %4732, float %4734, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5017 = extractvalue %dx.types.ResRet.f32 %5016, 0
  %5018 = extractvalue %dx.types.ResRet.f32 %5016, 1
  %5019 = extractvalue %dx.types.ResRet.f32 %5016, 2
  %5020 = and i32 %4914, 65535
  %5021 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5020)  ; LegacyF16ToF32(value)
  %5022 = fmul fast float %5017, %4615
  %5023 = fmul fast float %5018, %4616
  %5024 = fmul fast float %5019, %4617
  %5025 = and i32 %4630, 16384
  %5026 = icmp ne i32 %5025, 0
  %5027 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5028 = extractvalue %dx.types.CBufRet.f32 %5027, 0
  %5029 = select i1 %5026, float %5028, float 1.000000e+00
  %5030 = fmul fast float %5029, %5021
  %5031 = fmul fast float %5022, %5030
  %5032 = fmul fast float %5023, %5030
  %5033 = fmul fast float %5024, %5030
  br label %5034

; <label>:5034                                    ; preds = %5013, %4985
  %5035 = phi float [ %5031, %5013 ], [ 0.000000e+00, %4985 ]
  %5036 = phi float [ %5032, %5013 ], [ 0.000000e+00, %4985 ]
  %5037 = phi float [ %5033, %5013 ], [ 0.000000e+00, %4985 ]
  %5038 = fsub fast float %5035, %4560
  %5039 = fsub fast float %5036, %4561
  %5040 = fsub fast float %5037, %4562
  %5041 = fmul fast float %5038, %4782
  %5042 = fmul fast float %5039, %4782
  %5043 = fmul fast float %5040, %4782
  %5044 = fadd fast float %5041, %4560
  %5045 = fadd fast float %5042, %4561
  %5046 = fadd fast float %5043, %4562
  br label %4679

; <label>:5047                                    ; preds = %4679
  br label %5048

; <label>:5048                                    ; preds = %5047, %4493
  %5049 = phi float [ 0.000000e+00, %4493 ], [ %4680, %5047 ]
  %5050 = phi float [ %4462, %4493 ], [ %4681, %5047 ]
  %5051 = phi float [ %4460, %4493 ], [ %4682, %5047 ]
  %5052 = phi float [ %4450, %4493 ], [ %4683, %5047 ]
  %5053 = phi float [ %4451, %4493 ], [ %4684, %5047 ]
  %5054 = phi float [ %4452, %4493 ], [ %4685, %5047 ]
  %5055 = phi float [ 0.000000e+00, %4493 ], [ %4686, %5047 ]
  %5056 = phi float [ 0.000000e+00, %4493 ], [ %4687, %5047 ]
  %5057 = phi float [ %4453, %4493 ], [ %4688, %5047 ]
  %5058 = phi float [ %4454, %4493 ], [ %4689, %5047 ]
  %5059 = phi float [ %4455, %4493 ], [ %4690, %5047 ]
  %5060 = phi float [ %4447, %4493 ], [ %4691, %5047 ]
  %5061 = phi float [ %4448, %4493 ], [ %4692, %5047 ]
  %5062 = phi float [ %4449, %4493 ], [ %4693, %5047 ]
  %5063 = phi float [ %4488, %4493 ], [ %4694, %5047 ]
  %5064 = phi float [ %4489, %4493 ], [ %4695, %5047 ]
  %5065 = phi float [ %4490, %4493 ], [ %4696, %5047 ]
  %5066 = phi float [ %4458, %4493 ], [ %4697, %5047 ]
  %5067 = phi float [ %4457, %4493 ], [ %4698, %5047 ]
  %5068 = phi float [ 0.000000e+00, %4493 ], [ %4699, %5047 ]
  %5069 = phi float [ %4456, %4493 ], [ %4700, %5047 ]
  %5070 = phi float [ %4444, %4493 ], [ %4701, %5047 ]
  %5071 = phi float [ %4445, %4493 ], [ %4702, %5047 ]
  %5072 = phi float [ %4446, %4493 ], [ %4703, %5047 ]
  %5073 = call float @dx.op.dot3.f32(i32 55, float %5063, float %5064, float %5065, float %5063, float %5064, float %5065)  ; Dot3(ax,ay,az,bx,by,bz)
  %5074 = call float @dx.op.unary.f32(i32 25, float %5073)  ; Rsqrt(value)
  %5075 = fmul fast float %5074, %5063
  %5076 = fmul fast float %5074, %5064
  %5077 = fmul fast float %5074, %5065
  %5078 = fadd fast float %5068, %1285
  %5079 = call float @dx.op.unary.f32(i32 7, float %5078)  ; Saturate(value)
  %5080 = call float @dx.op.dot3.f32(i32 55, float %5075, float %5076, float %5077, float %5075, float %5076, float %5077)  ; Dot3(ax,ay,az,bx,by,bz)
  %5081 = call float @dx.op.unary.f32(i32 25, float %5080)  ; Rsqrt(value)
  %5082 = fmul fast float %5081, %5075
  %5083 = fmul fast float %5081, %5076
  %5084 = fmul fast float %5081, %5077
  br label %5085

; <label>:5085                                    ; preds = %5048, %4441
  %5086 = phi float [ %5052, %5048 ], [ %4450, %4441 ]
  %5087 = phi float [ %5053, %5048 ], [ %4451, %4441 ]
  %5088 = phi float [ %5054, %5048 ], [ %4452, %4441 ]
  %5089 = phi float [ %5057, %5048 ], [ %4453, %4441 ]
  %5090 = phi float [ %5058, %5048 ], [ %4454, %4441 ]
  %5091 = phi float [ %5059, %5048 ], [ %4455, %4441 ]
  %5092 = phi float [ %5082, %5048 ], [ %4488, %4441 ]
  %5093 = phi float [ %5083, %5048 ], [ %4489, %4441 ]
  %5094 = phi float [ %5084, %5048 ], [ %4490, %4441 ]
  %5095 = phi float [ %5070, %5048 ], [ %4444, %4441 ]
  %5096 = phi float [ %5071, %5048 ], [ %4445, %4441 ]
  %5097 = phi float [ %5072, %5048 ], [ %4446, %4441 ]
  %5098 = phi float [ %5060, %5048 ], [ %4447, %4441 ]
  %5099 = phi float [ %5061, %5048 ], [ %4448, %4441 ]
  %5100 = phi float [ %5062, %5048 ], [ %4449, %4441 ]
  %5101 = phi float [ %5069, %5048 ], [ %4456, %4441 ]
  %5102 = phi float [ %5079, %5048 ], [ %1285, %4441 ]
  %5103 = phi float [ %5067, %5048 ], [ %4457, %4441 ]
  %5104 = phi float [ %5066, %5048 ], [ %4458, %4441 ]
  %5105 = phi float [ %5056, %5048 ], [ 0.000000e+00, %4441 ]
  %5106 = phi float [ %5055, %5048 ], [ 0.000000e+00, %4441 ]
  %5107 = phi float [ %5049, %5048 ], [ 0.000000e+00, %4441 ]
  %5108 = phi float [ %5050, %5048 ], [ %4462, %4441 ]
  %5109 = phi float [ %5051, %5048 ], [ %4460, %4441 ]
  %5110 = add i32 %60, 392
  %5111 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %5110, i32 undef)  ; BufferLoad(srv,index,wot)
  %5112 = extractvalue %dx.types.ResRet.i32 %5111, 0
  %5113 = extractvalue %dx.types.ResRet.i32 %5111, 1
  %5114 = extractvalue %dx.types.ResRet.i32 %5111, 2
  %5115 = extractvalue %dx.types.ResRet.i32 %5111, 3
  %5116 = bitcast i32 %5112 to float
  %5117 = bitcast i32 %5113 to float
  %5118 = bitcast i32 %5114 to float
  %5119 = bitcast i32 %5115 to float
  %5120 = fsub fast float %5095, %5116
  %5121 = fsub fast float %5096, %5117
  %5122 = fsub fast float %5097, %5118
  %5123 = fmul fast float %5120, %198
  %5124 = fmul fast float %5121, %198
  %5125 = fmul fast float %5122, %198
  %5126 = fadd fast float %5123, %5116
  %5127 = fadd fast float %5124, %5117
  %5128 = fadd fast float %5125, %5118
  %5129 = fsub fast float %5102, %5119
  %5130 = fmul fast float %5129, %198
  %5131 = fadd fast float %5130, %5119
  %5132 = fadd fast float %5101, 0xBFB99999A0000000
  %5133 = call float @dx.op.unary.f32(i32 7, float %5132)  ; Saturate(value)
  %5134 = fmul fast float %5133, 0x3FF1C71C80000000
  %5135 = call float @dx.op.binary.f32(i32 36, float %5101, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5136 = fsub fast float 1.000000e+00, %5134
  %5137 = call float @dx.op.unary.f32(i32 7, float %5136)  ; Saturate(value)
  %5138 = fmul fast float %5126, %5137
  %5139 = fmul fast float %5127, %5137
  %5140 = fmul fast float %5128, %5137
  %5141 = call float @dx.op.unary.f32(i32 7, float %5138)  ; Saturate(value)
  %5142 = call float @dx.op.unary.f32(i32 7, float %5139)  ; Saturate(value)
  %5143 = call float @dx.op.unary.f32(i32 7, float %5140)  ; Saturate(value)
  %5144 = fmul fast float %5126, %5134
  %5145 = fmul fast float %5127, %5134
  %5146 = fmul fast float %5128, %5134
  %5147 = fadd fast float %5144, %5135
  %5148 = fadd fast float %5145, %5135
  %5149 = fadd fast float %5146, %5135
  %5150 = call float @dx.op.unary.f32(i32 7, float %5147)  ; Saturate(value)
  %5151 = call float @dx.op.unary.f32(i32 7, float %5148)  ; Saturate(value)
  %5152 = call float @dx.op.unary.f32(i32 7, float %5149)  ; Saturate(value)
  %5153 = call float @dx.op.unary.f32(i32 7, float %5103)  ; Saturate(value)
  %5154 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %438, i32 undef)  ; BufferLoad(srv,index,wot)
  %5155 = extractvalue %dx.types.ResRet.i32 %5154, 0
  %5156 = and i32 %5155, 1
  %5157 = icmp eq i32 %5156, 0
  br i1 %5157, label %5172, label %5158

; <label>:5158                                    ; preds = %5085
  %5159 = call float @dx.op.binary.f32(i32 35, float %5142, float %5143)  ; FMax(a,b)
  %5160 = call float @dx.op.binary.f32(i32 35, float %5141, float %5159)  ; FMax(a,b)
  %5161 = fcmp fast ogt float %5160, 0.000000e+00
  %5162 = bitcast float %5160 to i32
  %5163 = sub nsw i32 2129859010, %5162
  %5164 = bitcast i32 %5163 to float
  %5165 = select i1 %5161, float %5164, float 0.000000e+00
  %5166 = fmul fast float %5141, %5089
  %5167 = fmul fast float %5142, %5090
  %5168 = fmul fast float %5143, %5091
  %5169 = fmul fast float %5166, %5165
  %5170 = fmul fast float %5167, %5165
  %5171 = fmul fast float %5168, %5165
  br label %5172

; <label>:5172                                    ; preds = %5158, %5085
  %5173 = phi float [ %5169, %5158 ], [ %5089, %5085 ]
  %5174 = phi float [ %5170, %5158 ], [ %5090, %5085 ]
  %5175 = phi float [ %5171, %5158 ], [ %5091, %5085 ]
  %5176 = call float @dx.op.binary.f32(i32 36, float %5086, float 1.270000e+02)  ; FMin(a,b)
  %5177 = call float @dx.op.binary.f32(i32 36, float %5087, float 1.270000e+02)  ; FMin(a,b)
  %5178 = call float @dx.op.binary.f32(i32 36, float %5088, float 1.270000e+02)  ; FMin(a,b)
  %5179 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5180 = extractvalue %dx.types.CBufRet.i32 %5179, 3
  %5181 = and i32 %5180, 8
  %5182 = icmp ne i32 %5181, 0
  %5183 = call float @dx.op.binary.f32(i32 35, float %5141, float %5126)  ; FMax(a,b)
  %5184 = call float @dx.op.binary.f32(i32 35, float %5142, float %5126)  ; FMax(a,b)
  %5185 = call float @dx.op.binary.f32(i32 35, float %5143, float %5126)  ; FMax(a,b)
  %5186 = call float @dx.op.dot3.f32(i32 55, float %5141, float %5142, float %5143, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5187 = select i1 %258, float %5126, float %5141
  %5188 = select i1 %258, float %5186, float %5142
  %5189 = select i1 %258, float 1.000000e+00, float %5143
  %5190 = select i1 %5182, float %5183, float %5187
  %5191 = select i1 %5182, float %5184, float %5188
  %5192 = select i1 %5182, float %5185, float %5189
  %5193 = call float @dx.op.dot3.f32(i32 55, float %5173, float %5174, float %5175, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5194 = select i1 %258, float %5193, float %5173
  %5195 = select i1 %258, float %5193, float %5174
  %5196 = select i1 %258, float %5193, float %5175
  %5197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5198 = extractvalue %dx.types.CBufRet.f32 %5197, 0
  %5199 = extractvalue %dx.types.CBufRet.f32 %5197, 1
  %5200 = extractvalue %dx.types.CBufRet.f32 %5197, 2
  %5201 = fadd fast float %5198, %164
  %5202 = fadd fast float %5199, %165
  %5203 = fadd fast float %5200, %166
  %5204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %5205 = extractvalue %dx.types.CBufRet.f32 %5204, 0
  %5206 = extractvalue %dx.types.CBufRet.f32 %5204, 1
  %5207 = fsub fast float %5201, %5205
  %5208 = fsub fast float %5202, %5206
  %5209 = fmul fast float %5207, %5207
  %5210 = fmul fast float %5208, %5208
  %5211 = fadd fast float %5209, %5210
  %5212 = call float @dx.op.unary.f32(i32 24, float %5211)  ; Sqrt(value)
  %5213 = extractvalue %dx.types.CBufRet.f32 %5204, 2
  %5214 = fcmp fast olt float %5212, %5213
  br i1 %5214, label %5215, label %5282

; <label>:5215                                    ; preds = %5172
  %5216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5217 = extractvalue %dx.types.CBufRet.f32 %5216, 0
  %5218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5219 = extractvalue %dx.types.CBufRet.f32 %5218, 0
  %5220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5221 = extractvalue %dx.types.CBufRet.f32 %5220, 0
  %5222 = extractvalue %dx.types.CBufRet.f32 %5216, 1
  %5223 = extractvalue %dx.types.CBufRet.f32 %5218, 1
  %5224 = extractvalue %dx.types.CBufRet.f32 %5220, 1
  %5225 = extractvalue %dx.types.CBufRet.f32 %5216, 3
  %5226 = extractvalue %dx.types.CBufRet.f32 %5218, 3
  %5227 = extractvalue %dx.types.CBufRet.f32 %5220, 3
  %5228 = fadd fast float %5225, %5201
  %5229 = fadd fast float %5226, %5202
  %5230 = fadd fast float %5227, %5203
  %5231 = fmul fast float %5228, %5217
  %5232 = call float @dx.op.tertiary.f32(i32 46, float %5229, float %5219, float %5231)  ; FMad(a,b,c)
  %5233 = call float @dx.op.tertiary.f32(i32 46, float %5230, float %5221, float %5232)  ; FMad(a,b,c)
  %5234 = fmul fast float %5228, %5222
  %5235 = call float @dx.op.tertiary.f32(i32 46, float %5229, float %5223, float %5234)  ; FMad(a,b,c)
  %5236 = call float @dx.op.tertiary.f32(i32 46, float %5230, float %5224, float %5235)  ; FMad(a,b,c)
  %5237 = fsub fast float %5233, %5225
  %5238 = fsub fast float %5236, %5226
  %5239 = fsub fast float %5237, %5205
  %5240 = fadd fast float %5239, %5213
  %5241 = fsub fast float %5238, %5206
  %5242 = fadd fast float %5241, %5213
  %5243 = extractvalue %dx.types.CBufRet.f32 %5204, 3
  %5244 = fmul fast float %5240, %5243
  %5245 = fmul fast float %5242, %5243
  %5246 = call float @dx.op.unary.f32(i32 7, float %5244)  ; Saturate(value)
  %5247 = call float @dx.op.unary.f32(i32 7, float %5245)  ; Saturate(value)
  %5248 = fsub fast float 1.000000e+00, %5246
  %5249 = fsub fast float 1.000000e+00, %5247
  %5250 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %54, float %5248, float %5249, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5251 = extractvalue %dx.types.ResRet.f32 %5250, 0
  %5252 = fcmp fast ugt float %5251, 0.000000e+00
  br i1 %5252, label %5253, label %5556

; <label>:5253                                    ; preds = %5215
  %5254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5255 = extractvalue %dx.types.CBufRet.f32 %5254, 2
  %5256 = fmul fast float %5255, %5251
  %5257 = extractvalue %dx.types.CBufRet.f32 %5254, 3
  %5258 = fadd fast float %5257, %5256
  %5259 = extractvalue %dx.types.CBufRet.f32 %5220, 2
  %5260 = fadd fast float %5258, %5227
  %5261 = fmul fast float %5233, %5221
  %5262 = call float @dx.op.tertiary.f32(i32 46, float %5236, float %5224, float %5261)  ; FMad(a,b,c)
  %5263 = call float @dx.op.tertiary.f32(i32 46, float %5260, float %5259, float %5262)  ; FMad(a,b,c)
  %5264 = fsub fast float %5263, %5227
  %5265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5266 = extractvalue %dx.types.CBufRet.f32 %5265, 2
  %5267 = fsub fast float %5264, %5266
  %5268 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %54, float %5248, float %5249, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5269 = extractvalue %dx.types.ResRet.f32 %5268, 0
  %5270 = extractvalue %dx.types.ResRet.f32 %5268, 1
  %5271 = extractvalue %dx.types.ResRet.f32 %5268, 2
  %5272 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %54, float %5248, float %5249, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5273 = extractvalue %dx.types.ResRet.f32 %5272, 0
  %5274 = extractvalue %dx.types.ResRet.f32 %5272, 1
  %5275 = extractvalue %dx.types.ResRet.f32 %5272, 2
  %5276 = fadd fast float %5273, %5269
  %5277 = fmul fast float %5276, 0x3F847AE140000000
  %5278 = fadd fast float %5274, %5270
  %5279 = fmul fast float %5278, 0x3F847AE140000000
  %5280 = fadd fast float %5275, %5271
  %5281 = fmul fast float %5280, 0x3F847AE140000000
  br label %5556

; <label>:5282                                    ; preds = %5172
  %5283 = and i32 %234, 1
  %5284 = icmp eq i32 %5283, 0
  br i1 %5284, label %5556, label %5285

; <label>:5285                                    ; preds = %5282
  %5286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5287 = extractvalue %dx.types.CBufRet.f32 %5286, 0
  %5288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5289 = extractvalue %dx.types.CBufRet.f32 %5288, 0
  %5290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5291 = extractvalue %dx.types.CBufRet.f32 %5290, 0
  %5292 = extractvalue %dx.types.CBufRet.f32 %5286, 1
  %5293 = extractvalue %dx.types.CBufRet.f32 %5288, 1
  %5294 = extractvalue %dx.types.CBufRet.f32 %5290, 1
  %5295 = extractvalue %dx.types.CBufRet.f32 %5286, 3
  %5296 = extractvalue %dx.types.CBufRet.f32 %5288, 3
  %5297 = extractvalue %dx.types.CBufRet.f32 %5290, 3
  %5298 = fadd fast float %5295, %5201
  %5299 = fadd fast float %5296, %5202
  %5300 = fadd fast float %5297, %5203
  %5301 = fmul fast float %5298, %5287
  %5302 = call float @dx.op.tertiary.f32(i32 46, float %5299, float %5289, float %5301)  ; FMad(a,b,c)
  %5303 = call float @dx.op.tertiary.f32(i32 46, float %5300, float %5291, float %5302)  ; FMad(a,b,c)
  %5304 = fmul fast float %5298, %5292
  %5305 = call float @dx.op.tertiary.f32(i32 46, float %5299, float %5293, float %5304)  ; FMad(a,b,c)
  %5306 = call float @dx.op.tertiary.f32(i32 46, float %5300, float %5294, float %5305)  ; FMad(a,b,c)
  %5307 = fsub fast float %5303, %5295
  %5308 = fsub fast float %5306, %5296
  %5309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %5310 = extractvalue %dx.types.CBufRet.f32 %5309, 0
  %5311 = extractvalue %dx.types.CBufRet.f32 %5309, 1
  %5312 = extractvalue %dx.types.CBufRet.f32 %5309, 2
  %5313 = extractvalue %dx.types.CBufRet.f32 %5309, 3
  %5314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %5315 = extractvalue %dx.types.CBufRet.f32 %5314, 3
  %5316 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %5317 = extractvalue %dx.types.CBufRet.i32 %5316, 0
  %5318 = extractvalue %dx.types.CBufRet.i32 %5316, 1
  %5319 = udiv i32 %5318, %5317
  %5320 = fsub fast float %5307, %5310
  %5321 = fsub fast float %5308, %5311
  %5322 = call float @dx.op.binary.f32(i32 35, float %5320, float 0.000000e+00)  ; FMax(a,b)
  %5323 = call float @dx.op.binary.f32(i32 35, float %5321, float 0.000000e+00)  ; FMax(a,b)
  %5324 = call float @dx.op.binary.f32(i32 36, float %5322, float %5312)  ; FMin(a,b)
  %5325 = call float @dx.op.binary.f32(i32 36, float %5323, float %5313)  ; FMin(a,b)
  %5326 = add i32 %5317, -1
  %5327 = add i32 %5319, -1
  %5328 = fmul fast float %5324, %5315
  %5329 = fmul fast float %5325, %5315
  %5330 = fptoui float %5328 to i32
  %5331 = fptoui float %5329 to i32
  %5332 = call i32 @dx.op.binary.i32(i32 40, i32 %5330, i32 %5326)  ; UMin(a,b)
  %5333 = call i32 @dx.op.binary.i32(i32 40, i32 %5331, i32 %5327)  ; UMin(a,b)
  %5334 = mul i32 %5333, %5317
  %5335 = add i32 %5334, %5332
  %5336 = shl i32 %5335, 2
  %5337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %5336, i32 undef)  ; BufferLoad(srv,index,wot)
  %5338 = extractvalue %dx.types.ResRet.i32 %5337, 0
  %5339 = icmp eq i32 %5338, -1
  br i1 %5339, label %5556, label %5340

; <label>:5340                                    ; preds = %5285
  %5341 = mul i32 %5338, 148
  %5342 = add i32 %5341, 4
  %5343 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5342, i32 undef)  ; BufferLoad(srv,index,wot)
  %5344 = extractvalue %dx.types.ResRet.f32 %5343, 0
  %5345 = add i32 %5341, 8
  %5346 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5345, i32 undef)  ; BufferLoad(srv,index,wot)
  %5347 = extractvalue %dx.types.ResRet.f32 %5346, 0
  %5348 = add i32 %5341, 36
  %5349 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5348, i32 undef)  ; BufferLoad(srv,index,wot)
  %5350 = extractvalue %dx.types.ResRet.f32 %5349, 0
  %5351 = add i32 %5341, 60
  %5352 = add i32 %5341, 92
  %5353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5352, i32 undef)  ; BufferLoad(srv,index,wot)
  %5354 = extractvalue %dx.types.ResRet.i32 %5353, 0
  %5355 = add i32 %5341, 116
  %5356 = fsub fast float %5307, %5344
  %5357 = fsub fast float %5308, %5347
  %5358 = fmul fast float %5315, %5356
  %5359 = fmul fast float %5315, %5357
  %5360 = call float @dx.op.unary.f32(i32 7, float %5358)  ; Saturate(value)
  %5361 = call float @dx.op.unary.f32(i32 7, float %5359)  ; Saturate(value)
  %5362 = fsub fast float 1.000000e+00, %5361
  %5363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5364 = extractvalue %dx.types.CBufRet.f32 %5363, 2
  %5365 = call float @dx.op.unary.f32(i32 83, float %5360)  ; DerivCoarseX(value)
  %5366 = call float @dx.op.unary.f32(i32 83, float %5362)  ; DerivCoarseX(value)
  %5367 = call float @dx.op.unary.f32(i32 84, float %5360)  ; DerivCoarseY(value)
  %5368 = call float @dx.op.unary.f32(i32 84, float %5362)  ; DerivCoarseY(value)
  %5369 = fmul fast float %5365, %5364
  %5370 = fmul fast float %5366, %5364
  %5371 = fmul fast float %5367, %5364
  %5372 = fmul fast float %5368, %5364
  %5373 = call float @dx.op.dot2.f32(i32 54, float %5371, float %5372, float %5371, float %5372)  ; Dot2(ax,ay,bx,by)
  %5374 = call float @dx.op.dot2.f32(i32 54, float %5369, float %5370, float %5369, float %5370)  ; Dot2(ax,ay,bx,by)
  %5375 = call float @dx.op.binary.f32(i32 35, float %5374, float %5373)  ; FMax(a,b)
  %5376 = call float @dx.op.unary.f32(i32 23, float %5375)  ; Log(value)
  %5377 = fmul fast float %5376, 5.000000e-01
  %5378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5379 = extractvalue %dx.types.CBufRet.f32 %5378, 1
  %5380 = fadd fast float %5379, %5377
  %5381 = call float @dx.op.binary.f32(i32 35, float %5380, float 0.000000e+00)  ; FMax(a,b)
  %5382 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %5383 = extractvalue %dx.types.CBufRet.f32 %5382, 3
  %5384 = fadd fast float %5383, %5381
  %5385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %5386 = extractvalue %dx.types.CBufRet.f32 %5385, 3
  %5387 = fadd fast float %5384, %5386
  %5388 = add i32 %5354, 0
  %5389 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5388, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5390 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5389, i32 0)  ; GetDimensions(handle,mipLevel)
  %5391 = extractvalue %dx.types.Dimensions %5390, 0
  %5392 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5391)  ; FirstbitLo(value)
  %5393 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5394 = extractvalue %dx.types.CBufRet.i32 %5393, 1
  %5395 = sub nsw i32 %5394, %5392
  %5396 = sitofp i32 %5395 to float
  %5397 = fsub fast float %5387, %5396
  %5398 = call float @dx.op.binary.f32(i32 35, float %5397, float 0.000000e+00)  ; FMax(a,b)
  %5399 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5389, %dx.types.Handle %52, float %5360, float %5362, float %5350, float undef, i32 0, i32 0, i32 undef, float %5398)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5400 = extractvalue %dx.types.ResRet.f32 %5399, 0
  %5401 = fcmp ule float %5400, 0x3FE0101020000000
  %5402 = extractvalue %dx.types.CBufRet.i32 %5393, 0
  %5403 = and i32 %5402, 128
  %5404 = icmp ne i32 %5403, 0
  %5405 = and i1 %5401, %5404
  br i1 %5405, label %5556, label %5406

; <label>:5406                                    ; preds = %5340
  %5407 = add i32 %5341, 20
  %5408 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5407, i32 undef)  ; BufferLoad(srv,index,wot)
  %5409 = extractvalue %dx.types.ResRet.f32 %5408, 0
  %5410 = add i32 %5341, 24
  %5411 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5410, i32 undef)  ; BufferLoad(srv,index,wot)
  %5412 = extractvalue %dx.types.ResRet.f32 %5411, 0
  %5413 = add i32 %5341, 40
  %5414 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5413, i32 undef)  ; BufferLoad(srv,index,wot)
  %5415 = extractvalue %dx.types.ResRet.f32 %5414, 0
  %5416 = add i32 %5341, 96
  %5417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5416, i32 undef)  ; BufferLoad(srv,index,wot)
  %5418 = extractvalue %dx.types.ResRet.i32 %5417, 0
  %5419 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5420 = extractvalue %dx.types.CBufRet.f32 %5419, 2
  %5421 = fmul fast float %5420, %5360
  %5422 = fmul fast float %5420, %5362
  %5423 = extractvalue %dx.types.CBufRet.f32 %5419, 3
  %5424 = fadd fast float %5421, %5423
  %5425 = fadd fast float %5422, %5423
  %5426 = add i32 %5418, 0
  %5427 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5426, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5428 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5427, i32 0)  ; GetDimensions(handle,mipLevel)
  %5429 = extractvalue %dx.types.Dimensions %5428, 0
  %5430 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5429)  ; FirstbitLo(value)
  %5431 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5432 = extractvalue %dx.types.CBufRet.i32 %5431, 1
  %5433 = sub nsw i32 %5432, %5430
  %5434 = sitofp i32 %5433 to float
  %5435 = fsub fast float %5384, %5434
  %5436 = call float @dx.op.binary.f32(i32 35, float %5435, float 0.000000e+00)  ; FMax(a,b)
  %5437 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5427, %dx.types.Handle %52, float %5424, float %5425, float %5415, float undef, i32 0, i32 0, i32 undef, float %5436)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5438 = extractvalue %dx.types.ResRet.f32 %5437, 0
  %5439 = fmul fast float %5438, %5409
  %5440 = fadd fast float %5439, %5412
  %5441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5442 = extractvalue %dx.types.CBufRet.f32 %5441, 0
  %5443 = extractvalue %dx.types.CBufRet.f32 %5441, 1
  %5444 = extractvalue %dx.types.CBufRet.f32 %5441, 2
  %5445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5446 = extractvalue %dx.types.CBufRet.f32 %5445, 3
  %5447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5448 = extractvalue %dx.types.CBufRet.f32 %5447, 3
  %5449 = extractvalue %dx.types.CBufRet.f32 %5441, 3
  %5450 = fadd fast float %5446, %5307
  %5451 = fadd fast float %5448, %5308
  %5452 = fadd fast float %5440, %5449
  %5453 = fmul fast float %5450, %5442
  %5454 = call float @dx.op.tertiary.f32(i32 46, float %5451, float %5443, float %5453)  ; FMad(a,b,c)
  %5455 = call float @dx.op.tertiary.f32(i32 46, float %5452, float %5444, float %5454)  ; FMad(a,b,c)
  %5456 = fsub fast float %5455, %5449
  %5457 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5458 = extractvalue %dx.types.CBufRet.f32 %5457, 2
  %5459 = fsub fast float %5456, %5458
  %5460 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5461 = extractvalue %dx.types.CBufRet.i32 %5460, 0
  %5462 = call i32 @dx.op.binary.i32(i32 40, i32 %5338, i32 %5461)  ; UMin(a,b)
  %5463 = mul i32 %5462, 36
  %5464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %5463, i32 undef)  ; BufferLoad(srv,index,wot)
  %5465 = extractvalue %dx.types.ResRet.i32 %5464, 0
  %5466 = add i32 %5463, 4
  %5467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5468 = extractvalue %dx.types.CBufRet.f32 %5467, 0
  %5469 = fmul fast float %5468, %5360
  %5470 = fmul fast float %5468, %5362
  %5471 = extractvalue %dx.types.CBufRet.f32 %5467, 1
  %5472 = fadd fast float %5469, %5471
  %5473 = fadd fast float %5470, %5471
  %5474 = icmp eq i32 %5465, 0
  br i1 %5474, label %5543, label %5475

; <label>:5475                                    ; preds = %5406
  br label %5476

; <label>:5476                                    ; preds = %5533, %5475
  %5477 = phi float [ %5534, %5533 ], [ 0.000000e+00, %5475 ]
  %5478 = phi float [ %5535, %5533 ], [ 0.000000e+00, %5475 ]
  %5479 = phi float [ %5536, %5533 ], [ 0.000000e+00, %5475 ]
  %5480 = phi float [ %5537, %5533 ], [ 0.000000e+00, %5475 ]
  %5481 = phi float [ %5538, %5533 ], [ 0.000000e+00, %5475 ]
  %5482 = phi float [ %5539, %5533 ], [ 0.000000e+00, %5475 ]
  %5483 = phi i32 [ %5540, %5533 ], [ 0, %5475 ]
  %5484 = shl i32 %5483, 2
  %5485 = add i32 %5351, %5484
  %5486 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5485, i32 undef)  ; BufferLoad(srv,index,wot)
  %5487 = extractvalue %dx.types.ResRet.f32 %5486, 0
  %5488 = add i32 %5355, %5484
  %5489 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5488, i32 undef)  ; BufferLoad(srv,index,wot)
  %5490 = extractvalue %dx.types.ResRet.i32 %5489, 0
  %5491 = add i32 %5490, 0
  %5492 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5491, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5493 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5492, i32 0)  ; GetDimensions(handle,mipLevel)
  %5494 = extractvalue %dx.types.Dimensions %5493, 0
  %5495 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5494)  ; FirstbitLo(value)
  %5496 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5497 = extractvalue %dx.types.CBufRet.i32 %5496, 1
  %5498 = sub nsw i32 %5497, %5495
  %5499 = sitofp i32 %5498 to float
  %5500 = fsub fast float %5384, %5499
  %5501 = call float @dx.op.binary.f32(i32 35, float %5500, float 0.000000e+00)  ; FMax(a,b)
  %5502 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5492, %dx.types.Handle %52, float %5472, float %5473, float %5487, float undef, i32 0, i32 0, i32 undef, float %5501)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5503 = extractvalue %dx.types.ResRet.f32 %5502, 0
  %5504 = fcmp fast ogt float %5503, 0.000000e+00
  br i1 %5504, label %5505, label %5533

; <label>:5505                                    ; preds = %5476
  %5506 = add i32 %5466, %5484
  %5507 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %5506, i32 undef)  ; BufferLoad(srv,index,wot)
  %5508 = extractvalue %dx.types.ResRet.i32 %5507, 0
  %5509 = and i32 %5508, 32767
  %5510 = mul nuw nsw i32 %5509, 928
  %5511 = add nuw nsw i32 %5510, 48
  %5512 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %5511, i32 undef)  ; BufferLoad(srv,index,wot)
  %5513 = extractvalue %dx.types.ResRet.f32 %5512, 0
  %5514 = extractvalue %dx.types.ResRet.f32 %5512, 1
  %5515 = extractvalue %dx.types.ResRet.f32 %5512, 2
  %5516 = add nuw nsw i32 %5510, 60
  %5517 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %5516, i32 undef)  ; BufferLoad(srv,index,wot)
  %5518 = extractvalue %dx.types.ResRet.f32 %5517, 0
  %5519 = extractvalue %dx.types.ResRet.f32 %5517, 1
  %5520 = extractvalue %dx.types.ResRet.f32 %5517, 2
  %5521 = fmul fast float %5513, %5503
  %5522 = fmul fast float %5514, %5503
  %5523 = fmul fast float %5515, %5503
  %5524 = fadd fast float %5521, %5477
  %5525 = fadd fast float %5522, %5478
  %5526 = fadd fast float %5523, %5479
  %5527 = fmul fast float %5518, %5503
  %5528 = fmul fast float %5519, %5503
  %5529 = fmul fast float %5520, %5503
  %5530 = fadd fast float %5527, %5480
  %5531 = fadd fast float %5528, %5481
  %5532 = fadd fast float %5529, %5482
  br label %5533

; <label>:5533                                    ; preds = %5505, %5476
  %5534 = phi float [ %5524, %5505 ], [ %5477, %5476 ]
  %5535 = phi float [ %5525, %5505 ], [ %5478, %5476 ]
  %5536 = phi float [ %5526, %5505 ], [ %5479, %5476 ]
  %5537 = phi float [ %5530, %5505 ], [ %5480, %5476 ]
  %5538 = phi float [ %5531, %5505 ], [ %5481, %5476 ]
  %5539 = phi float [ %5532, %5505 ], [ %5482, %5476 ]
  %5540 = add nuw i32 %5483, 1
  %5541 = icmp eq i32 %5540, %5465
  br i1 %5541, label %5542, label %5476

; <label>:5542                                    ; preds = %5533
  br label %5543

; <label>:5543                                    ; preds = %5542, %5406
  %5544 = phi float [ 0.000000e+00, %5406 ], [ %5534, %5542 ]
  %5545 = phi float [ 0.000000e+00, %5406 ], [ %5535, %5542 ]
  %5546 = phi float [ 0.000000e+00, %5406 ], [ %5536, %5542 ]
  %5547 = phi float [ 0.000000e+00, %5406 ], [ %5537, %5542 ]
  %5548 = phi float [ 0.000000e+00, %5406 ], [ %5538, %5542 ]
  %5549 = phi float [ 0.000000e+00, %5406 ], [ %5539, %5542 ]
  %5550 = fadd fast float %5547, %5544
  %5551 = fmul fast float %5550, 0x3F847AE140000000
  %5552 = fadd fast float %5548, %5545
  %5553 = fmul fast float %5552, 0x3F847AE140000000
  %5554 = fadd fast float %5549, %5546
  %5555 = fmul fast float %5554, 0x3F847AE140000000
  br label %5556

; <label>:5556                                    ; preds = %5543, %5340, %5285, %5282, %5253, %5215
  %5557 = phi float [ %5277, %5253 ], [ 0.000000e+00, %5215 ], [ %5551, %5543 ], [ 0.000000e+00, %5285 ], [ 0.000000e+00, %5340 ], [ 0.000000e+00, %5282 ]
  %5558 = phi float [ %5279, %5253 ], [ 0.000000e+00, %5215 ], [ %5553, %5543 ], [ 0.000000e+00, %5285 ], [ 0.000000e+00, %5340 ], [ 0.000000e+00, %5282 ]
  %5559 = phi float [ %5281, %5253 ], [ 0.000000e+00, %5215 ], [ %5555, %5543 ], [ 0.000000e+00, %5285 ], [ 0.000000e+00, %5340 ], [ 0.000000e+00, %5282 ]
  %5560 = phi float [ %5267, %5253 ], [ -1.310720e+05, %5215 ], [ %5459, %5543 ], [ -1.310720e+05, %5285 ], [ -1.310720e+05, %5340 ], [ -1.310720e+05, %5282 ]
  %5561 = phi i1 [ true, %5253 ], [ false, %5215 ], [ true, %5543 ], [ false, %5285 ], [ false, %5340 ], [ false, %5282 ]
  %5562 = and i32 %234, 3
  %5563 = icmp eq i32 %5562, 1
  %5564 = select i1 %5563, float 1.000000e+00, float 0.000000e+00
  %5565 = fsub fast float %5560, %166
  %5566 = call float @dx.op.unary.f32(i32 7, float %5565)  ; Saturate(value)
  %5567 = select i1 %5561, float %5566, float 1.000000e+00
  %5568 = fmul fast float %5567, %5564
  %5569 = icmp eq i32 %5562, 3
  %5570 = select i1 %5569, float 1.000000e+00, float %5568
  %5571 = call float @dx.op.binary.f32(i32 35, float %5107, float %5570)  ; FMax(a,b)
  %5572 = call float @dx.op.unary.f32(i32 7, float %5571)  ; Saturate(value)
  %5573 = fcmp fast une float %5572, 0.000000e+00
  %5574 = fsub fast float -0.000000e+00, %184
  %5575 = fsub fast float -0.000000e+00, %185
  %5576 = fsub fast float -0.000000e+00, %186
  br i1 %5573, label %5577, label %5739

; <label>:5577                                    ; preds = %5556
  %5578 = call float @dx.op.dot3.f32(i32 55, float %5574, float %5575, float %5576, float %116, float %117, float %118)  ; Dot3(ax,ay,az,bx,by,bz)
  %5579 = fmul fast float %5572, 2.500000e+00
  %5580 = call float @dx.op.unary.f32(i32 7, float %5579)  ; Saturate(value)
  %5581 = fmul fast float %5572, 0x4013FFFFE0000000
  %5582 = fadd fast float %5581, 0xBFFFFFFFE0000000
  %5583 = call float @dx.op.unary.f32(i32 7, float %5582)  ; Saturate(value)
  %5584 = fmul fast float %5572, 0x4004000020000000
  %5585 = fadd fast float %5584, 0xBFF8000040000000
  %5586 = call float @dx.op.unary.f32(i32 7, float %5585)  ; Saturate(value)
  %5587 = call float @dx.op.unary.f32(i32 7, float %5580)  ; Saturate(value)
  %5588 = fmul fast float %5132, 1.000000e+01
  %5589 = call float @dx.op.unary.f32(i32 7, float %5588)  ; Saturate(value)
  %5590 = fmul fast float %5589, 2.000000e+00
  %5591 = fsub fast float 3.000000e+00, %5590
  %5592 = fmul fast float %5589, %5589
  %5593 = fmul fast float %5592, %5591
  %5594 = fsub fast float 1.000000e+00, %5593
  %5595 = fsub fast float 0x3FE3333340000000, %5153
  %5596 = fmul fast float %5595, 0x400AAAAAA0000000
  %5597 = call float @dx.op.unary.f32(i32 7, float %5596)  ; Saturate(value)
  %5598 = fmul fast float %5594, %5597
  %5599 = fmul fast float %5190, 0x3FEA2B8620000000
  %5600 = fmul fast float %5191, 0x3FEA2B8620000000
  %5601 = fmul fast float %5192, 0x3FEA2B8620000000
  %5602 = fadd fast float %5599, 0x3FC81DFBA0000000
  %5603 = fmul fast float %5602, %5190
  %5604 = fadd fast float %5603, 0x3F910E6020000000
  %5605 = fadd fast float %5600, 0x3FC81DFBA0000000
  %5606 = fmul fast float %5605, %5191
  %5607 = fadd fast float %5606, 0x3F910E6020000000
  %5608 = fadd fast float %5601, 0x3FC81DFBA0000000
  %5609 = fmul fast float %5608, %5192
  %5610 = fadd fast float %5609, 0x3F910E6020000000
  %5611 = call float @dx.op.unary.f32(i32 7, float %5604)  ; Saturate(value)
  %5612 = call float @dx.op.unary.f32(i32 7, float %5607)  ; Saturate(value)
  %5613 = call float @dx.op.unary.f32(i32 7, float %5610)  ; Saturate(value)
  %5614 = fsub fast float %5611, %5190
  %5615 = fsub fast float %5612, %5191
  %5616 = fsub fast float %5613, %5192
  %5617 = fmul fast float %5614, %5587
  %5618 = fmul fast float %5617, %5598
  %5619 = fmul fast float %5615, %5587
  %5620 = fmul fast float %5619, %5598
  %5621 = fmul fast float %5616, %5587
  %5622 = fmul fast float %5621, %5598
  %5623 = fadd fast float %5618, %5190
  %5624 = fadd fast float %5620, %5191
  %5625 = fadd fast float %5622, %5192
  %5626 = fmul fast float %5104, %5104
  %5627 = fmul fast float %5626, %5626
  %5628 = fadd fast float %5583, 1.000000e+00
  %5629 = fsub fast float %5628, %5598
  %5630 = call float @dx.op.unary.f32(i32 7, float %5629)  ; Saturate(value)
  %5631 = call float @dx.op.dot3.f32(i32 55, float %116, float %117, float %118, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5632 = call float @dx.op.unary.f32(i32 7, float %5631)  ; Saturate(value)
  %5633 = fsub fast float 1.000000e+00, %5627
  %5634 = call float @dx.op.binary.f32(i32 36, float %5630, float %5633)  ; FMin(a,b)
  %5635 = call float @dx.op.unary.f32(i32 7, float %5586)  ; Saturate(value)
  %5636 = call float @dx.op.binary.f32(i32 35, float %5634, float %5635)  ; FMax(a,b)
  %5637 = fadd fast float %5632, 0xBFE4CCCCC0000000
  %5638 = fmul fast float %5637, 0x4006DB6DA0000000
  %5639 = call float @dx.op.unary.f32(i32 7, float %5638)  ; Saturate(value)
  %5640 = fmul fast float %5639, 2.000000e+00
  %5641 = fsub fast float 3.000000e+00, %5640
  %5642 = bitcast float %5150 to i32
  %5643 = ashr i32 %5642, 1
  %5644 = add nsw i32 %5643, 532487669
  %5645 = bitcast i32 %5644 to float
  %5646 = fsub fast float 1.000000e+00, %5645
  %5647 = bitcast float %5646 to i32
  %5648 = sub nsw i32 2129859010, %5647
  %5649 = bitcast i32 %5648 to float
  %5650 = fmul fast float %5649, 2.000000e+00
  %5651 = bitcast float %5151 to i32
  %5652 = ashr i32 %5651, 1
  %5653 = add nsw i32 %5652, 532487669
  %5654 = bitcast i32 %5653 to float
  %5655 = fsub fast float 1.000000e+00, %5654
  %5656 = bitcast float %5655 to i32
  %5657 = sub nsw i32 2129859010, %5656
  %5658 = bitcast i32 %5657 to float
  %5659 = fmul fast float %5658, 2.000000e+00
  %5660 = bitcast float %5152 to i32
  %5661 = ashr i32 %5660, 1
  %5662 = add nsw i32 %5661, 532487669
  %5663 = bitcast i32 %5662 to float
  %5664 = fsub fast float 1.000000e+00, %5663
  %5665 = bitcast float %5664 to i32
  %5666 = sub nsw i32 2129859010, %5665
  %5667 = bitcast i32 %5666 to float
  %5668 = fmul fast float %5667, 2.000000e+00
  %5669 = fsub fast float 0x4002A9FBE0000000, %5650
  %5670 = fadd fast float %5650, 0x3FD54FDF00000000
  %5671 = bitcast float %5670 to i32
  %5672 = sub nsw i32 2129859010, %5671
  %5673 = bitcast i32 %5672 to float
  %5674 = fmul fast float %5673, %5669
  %5675 = fmul fast float %5674, %5674
  %5676 = fsub fast float 0x4002A9FBE0000000, %5659
  %5677 = fadd fast float %5659, 0x3FD54FDF00000000
  %5678 = bitcast float %5677 to i32
  %5679 = sub nsw i32 2129859010, %5678
  %5680 = bitcast i32 %5679 to float
  %5681 = fmul fast float %5680, %5676
  %5682 = fmul fast float %5681, %5681
  %5683 = fsub fast float 0x4002A9FBE0000000, %5668
  %5684 = fadd fast float %5668, 0x3FD54FDF00000000
  %5685 = bitcast float %5684 to i32
  %5686 = sub nsw i32 2129859010, %5685
  %5687 = bitcast i32 %5686 to float
  %5688 = fmul fast float %5687, %5683
  %5689 = fmul fast float %5688, %5688
  %5690 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5675)  ; FMax(a,b)
  %5691 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5682)  ; FMax(a,b)
  %5692 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5689)  ; FMax(a,b)
  %5693 = fsub fast float 1.000000e+00, %5578
  %5694 = fadd fast float %5693, %5594
  %5695 = call float @dx.op.unary.f32(i32 7, float %5694)  ; Saturate(value)
  %5696 = fsub fast float 1.000000e+00, %5570
  %5697 = fmul fast float %5636, %5696
  %5698 = fmul fast float %5639, %5639
  %5699 = fmul fast float %5698, %5697
  %5700 = fmul fast float %5699, %5641
  %5701 = fmul fast float %5696, 0xBFE99999A0000000
  %5702 = fmul fast float %5701, %5587
  %5703 = fmul fast float %5702, %5598
  %5704 = fadd fast float %5703, 1.000000e+00
  %5705 = fadd fast float %5153, -1.000000e+00
  %5706 = fmul fast float %5704, %5705
  %5707 = fadd fast float %5706, 1.000000e+00
  %5708 = fsub fast float %5690, %5150
  %5709 = fsub fast float %5691, %5151
  %5710 = fsub fast float %5692, %5152
  %5711 = fmul fast float %5700, %5708
  %5712 = fmul fast float %5700, %5709
  %5713 = fmul fast float %5700, %5710
  %5714 = fadd fast float %5711, %5150
  %5715 = fadd fast float %5712, %5151
  %5716 = fadd fast float %5713, %5152
  %5717 = fsub fast float %116, %5092
  %5718 = fsub fast float %117, %5093
  %5719 = fsub fast float %118, %5094
  %5720 = fmul fast float %5700, %5717
  %5721 = fmul fast float %5700, %5718
  %5722 = fmul fast float %5700, %5719
  %5723 = fadd fast float %5720, %5092
  %5724 = fadd fast float %5721, %5093
  %5725 = fadd fast float %5722, %5094
  %5726 = fmul fast float %5700, %5695
  %5727 = call float @dx.op.unary.f32(i32 7, float %5707)  ; Saturate(value)
  %5728 = fsub fast float 1.000000e+00, %5727
  %5729 = fmul fast float %5726, %5728
  %5730 = fadd fast float %5729, %5727
  %5731 = fsub fast float 1.000000e+00, %5104
  %5732 = fmul fast float %5700, %5731
  %5733 = fadd fast float %5732, %5104
  %5734 = call float @dx.op.dot3.f32(i32 55, float %5723, float %5724, float %5725, float %5723, float %5724, float %5725)  ; Dot3(ax,ay,az,bx,by,bz)
  %5735 = call float @dx.op.unary.f32(i32 25, float %5734)  ; Rsqrt(value)
  %5736 = fmul fast float %5723, %5735
  %5737 = fmul fast float %5724, %5735
  %5738 = fmul fast float %5725, %5735
  br label %5739

; <label>:5739                                    ; preds = %5577, %5556
  %5740 = phi float [ %5623, %5577 ], [ %5190, %5556 ]
  %5741 = phi float [ %5624, %5577 ], [ %5191, %5556 ]
  %5742 = phi float [ %5625, %5577 ], [ %5192, %5556 ]
  %5743 = phi float [ %5714, %5577 ], [ %5150, %5556 ]
  %5744 = phi float [ %5715, %5577 ], [ %5151, %5556 ]
  %5745 = phi float [ %5716, %5577 ], [ %5152, %5556 ]
  %5746 = phi float [ %5736, %5577 ], [ %5092, %5556 ]
  %5747 = phi float [ %5737, %5577 ], [ %5093, %5556 ]
  %5748 = phi float [ %5738, %5577 ], [ %5094, %5556 ]
  %5749 = phi float [ %5730, %5577 ], [ %5153, %5556 ]
  %5750 = phi float [ %5733, %5577 ], [ %5104, %5556 ]
  %5751 = fsub fast float -0.000000e+00, %166
  %5752 = select i1 %258, float 0.000000e+00, float %5745
  %5753 = call float @dx.op.dot3.f32(i32 55, float %5746, float %5747, float %5748, float %5574, float %5575, float %5576)  ; Dot3(ax,ay,az,bx,by,bz)
  %5754 = call float @dx.op.unary.f32(i32 7, float %5753)  ; Saturate(value)
  %5755 = call float @dx.op.dot3.f32(i32 55, float %184, float %185, float %186, float %5746, float %5747, float %5748)  ; Dot3(ax,ay,az,bx,by,bz)
  %5756 = fmul fast float %5755, 2.000000e+00
  %5757 = fmul fast float %5756, %5746
  %5758 = fmul fast float %5756, %5747
  %5759 = fmul fast float %5756, %5748
  %5760 = fsub fast float %184, %5757
  %5761 = fsub fast float %185, %5758
  %5762 = fsub fast float %186, %5759
  %5763 = call float @dx.op.binary.f32(i32 36, float %5750, float 1.000000e+00)  ; FMin(a,b)
  %5764 = fsub fast float 1.000000e+00, %5763
  %5765 = bitcast float %5764 to i32
  %5766 = ashr i32 %5765, 1
  %5767 = add nsw i32 %5766, 532487669
  %5768 = bitcast i32 %5767 to float
  %5769 = fsub fast float 1.000000e+00, %5749
  %5770 = call float @dx.op.binary.f32(i32 35, float %5769, float 0x3F847AE140000000)  ; FMax(a,b)
  %5771 = fmul fast float %5770, %5770
  %5772 = fmul fast float %5771, %5771
  %5773 = call float @dx.op.unary.f32(i32 7, float %5754)  ; Saturate(value)
  %5774 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %54, float %5768, float %5772, float %5773, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5775 = extractvalue %dx.types.ResRet.f32 %5774, 0
  %5776 = fsub fast float 1.000000e+00, %5750
  %5777 = bitcast float %5776 to i32
  %5778 = sub nsw i32 2129859010, %5777
  %5779 = bitcast i32 %5778 to float
  %5780 = call float @dx.op.dot3.f32(i32 55, float %77, float %73, float %69, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5781 = fmul fast float %5780, 0x3FD20DD760000000
  %5782 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %77)  ; FMax(a,b)
  %5783 = call float @dx.op.dot3.f32(i32 55, float %78, float %79, float %80, float %78, float %79, float %80)  ; Dot3(ax,ay,az,bx,by,bz)
  %5784 = fcmp fast oeq float %5783, 0.000000e+00
  %5785 = fcmp fast oeq float %5782, 0.000000e+00
  %5786 = or i1 %5785, %5784
  br i1 %5786, label %5816, label %5787

; <label>:5787                                    ; preds = %5739
  %5788 = fsub fast float -0.000000e+00, %80
  %5789 = fsub fast float -0.000000e+00, %78
  %5790 = call float @dx.op.unary.f32(i32 24, float %5783)  ; Sqrt(value)
  %5791 = fdiv fast float %5790, %5782
  %5792 = fcmp fast ogt float %5791, 0x3FFB6F8900000000
  %5793 = select i1 %5792, float 0x3FFB6F8900000000, float %5791
  %5794 = fmul fast float %5793, 0x3FE8A23460000000
  %5795 = call float @dx.op.unary.f32(i32 7, float %5794)  ; Saturate(value)
  %5796 = call float @dx.op.binary.f32(i32 35, float %5793, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5797 = fmul fast float %5795, %5782
  %5798 = fmul fast float %5796, 0x3FF279A740000000
  %5799 = fadd fast float %5798, -1.000000e+00
  %5800 = call float @dx.op.dot3.f32(i32 55, float %5788, float %5789, float %79, float %5788, float %5789, float %79)  ; Dot3(ax,ay,az,bx,by,bz)
  %5801 = call float @dx.op.unary.f32(i32 25, float %5800)  ; Rsqrt(value)
  %5802 = fmul fast float %5801, %5788
  %5803 = fmul fast float %5801, %5789
  %5804 = fmul fast float %5801, %79
  %5805 = fmul fast float %5799, %5799
  %5806 = fsub fast float 1.000000e+00, %5805
  %5807 = fmul fast float %5796, 0x40005F8BE0000000
  %5808 = fsub fast float 0x400C5BF8A0000000, %5807
  %5809 = fdiv fast float %5797, %5808
  %5810 = fmul fast float %5809, 0x3FEE31C3C0000000
  %5811 = fmul fast float %5810, %5806
  %5812 = fmul fast float %5796, 0x3FDACB7480000000
  %5813 = fadd fast float %5812, 0xBFD7347680000000
  %5814 = fmul fast float %5813, %5809
  %5815 = fmul fast float %5814, %5806
  br label %5816

; <label>:5816                                    ; preds = %5787, %5739
  %5817 = phi float [ %5802, %5787 ], [ 0.000000e+00, %5739 ]
  %5818 = phi float [ %5803, %5787 ], [ 0.000000e+00, %5739 ]
  %5819 = phi float [ %5804, %5787 ], [ 0.000000e+00, %5739 ]
  %5820 = phi float [ %5811, %5787 ], [ 0.000000e+00, %5739 ]
  %5821 = phi float [ %5815, %5787 ], [ 0.000000e+00, %5739 ]
  %5822 = call float @dx.op.dot3.f32(i32 55, float %5817, float %5818, float %5819, float %5746, float %5747, float %5748)  ; Dot3(ax,ay,az,bx,by,bz)
  %5823 = fmul fast float %5822, 0x3FDF454380000000
  %5824 = fmul fast float %5822, %5822
  %5825 = fmul fast float %5824, 0x3FEE471020000000
  %5826 = fadd fast float %5825, 0xBFD42F6020000000
  %5827 = fmul fast float %5782, 0x3FD20DD760000000
  %5828 = fmul fast float %5826, %5821
  %5829 = fadd fast float %5828, %5827
  %5830 = fmul fast float %5823, %5820
  %5831 = fadd fast float %5829, %5830
  %5832 = fsub fast float %5829, %5830
  %5833 = call float @dx.op.dot3.f32(i32 55, float %5817, float %5818, float %5819, float %5760, float %5761, float %5762)  ; Dot3(ax,ay,az,bx,by,bz)
  %5834 = fmul fast float %5833, 0x3FDF454380000000
  %5835 = fmul fast float %5833, %5833
  %5836 = fmul fast float %5835, 0x3FEE471020000000
  %5837 = fadd fast float %5836, 0xBFD42F6020000000
  %5838 = call float @dx.op.dot3.f32(i32 55, float %5782, float %5820, float %5821, float 0x3FD20DD760000000, float %5834, float %5837)  ; Dot3(ax,ay,az,bx,by,bz)
  %5839 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %73)  ; FMax(a,b)
  %5840 = call float @dx.op.dot3.f32(i32 55, float %74, float %75, float %76, float %74, float %75, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %5841 = fcmp fast oeq float %5840, 0.000000e+00
  %5842 = fcmp fast oeq float %5839, 0.000000e+00
  %5843 = or i1 %5842, %5841
  br i1 %5843, label %5873, label %5844

; <label>:5844                                    ; preds = %5816
  %5845 = fsub fast float -0.000000e+00, %76
  %5846 = fsub fast float -0.000000e+00, %74
  %5847 = call float @dx.op.unary.f32(i32 24, float %5840)  ; Sqrt(value)
  %5848 = fdiv fast float %5847, %5839
  %5849 = fcmp fast ogt float %5848, 0x3FFB6F8900000000
  %5850 = select i1 %5849, float 0x3FFB6F8900000000, float %5848
  %5851 = fmul fast float %5850, 0x3FE8A23460000000
  %5852 = call float @dx.op.unary.f32(i32 7, float %5851)  ; Saturate(value)
  %5853 = call float @dx.op.binary.f32(i32 35, float %5850, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5854 = fmul fast float %5852, %5839
  %5855 = fmul fast float %5853, 0x3FF279A740000000
  %5856 = fadd fast float %5855, -1.000000e+00
  %5857 = call float @dx.op.dot3.f32(i32 55, float %5845, float %5846, float %75, float %5845, float %5846, float %75)  ; Dot3(ax,ay,az,bx,by,bz)
  %5858 = call float @dx.op.unary.f32(i32 25, float %5857)  ; Rsqrt(value)
  %5859 = fmul fast float %5858, %5845
  %5860 = fmul fast float %5858, %5846
  %5861 = fmul fast float %5858, %75
  %5862 = fmul fast float %5856, %5856
  %5863 = fsub fast float 1.000000e+00, %5862
  %5864 = fmul fast float %5853, 0x40005F8BE0000000
  %5865 = fsub fast float 0x400C5BF8A0000000, %5864
  %5866 = fdiv fast float %5854, %5865
  %5867 = fmul fast float %5866, 0x3FEE31C3C0000000
  %5868 = fmul fast float %5867, %5863
  %5869 = fmul fast float %5853, 0x3FDACB7480000000
  %5870 = fadd fast float %5869, 0xBFD7347680000000
  %5871 = fmul fast float %5870, %5866
  %5872 = fmul fast float %5871, %5863
  br label %5873

; <label>:5873                                    ; preds = %5844, %5816
  %5874 = phi float [ %5859, %5844 ], [ 0.000000e+00, %5816 ]
  %5875 = phi float [ %5860, %5844 ], [ 0.000000e+00, %5816 ]
  %5876 = phi float [ %5861, %5844 ], [ 0.000000e+00, %5816 ]
  %5877 = phi float [ %5868, %5844 ], [ 0.000000e+00, %5816 ]
  %5878 = phi float [ %5872, %5844 ], [ 0.000000e+00, %5816 ]
  %5879 = call float @dx.op.dot3.f32(i32 55, float %5874, float %5875, float %5876, float %5746, float %5747, float %5748)  ; Dot3(ax,ay,az,bx,by,bz)
  %5880 = fmul fast float %5879, 0x3FDF454380000000
  %5881 = fmul fast float %5879, %5879
  %5882 = fmul fast float %5881, 0x3FEE471020000000
  %5883 = fadd fast float %5882, 0xBFD42F6020000000
  %5884 = fmul fast float %5839, 0x3FD20DD760000000
  %5885 = fmul fast float %5883, %5878
  %5886 = fadd fast float %5885, %5884
  %5887 = fmul fast float %5880, %5877
  %5888 = fadd fast float %5886, %5887
  %5889 = fsub fast float %5886, %5887
  %5890 = call float @dx.op.dot3.f32(i32 55, float %5874, float %5875, float %5876, float %5760, float %5761, float %5762)  ; Dot3(ax,ay,az,bx,by,bz)
  %5891 = fmul fast float %5890, 0x3FDF454380000000
  %5892 = fmul fast float %5890, %5890
  %5893 = fmul fast float %5892, 0x3FEE471020000000
  %5894 = fadd fast float %5893, 0xBFD42F6020000000
  %5895 = call float @dx.op.dot3.f32(i32 55, float %5839, float %5877, float %5878, float 0x3FD20DD760000000, float %5891, float %5894)  ; Dot3(ax,ay,az,bx,by,bz)
  %5896 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %69)  ; FMax(a,b)
  %5897 = call float @dx.op.dot3.f32(i32 55, float %70, float %71, float %72, float %70, float %71, float %72)  ; Dot3(ax,ay,az,bx,by,bz)
  %5898 = fcmp fast oeq float %5897, 0.000000e+00
  %5899 = fcmp fast oeq float %5896, 0.000000e+00
  %5900 = or i1 %5899, %5898
  br i1 %5900, label %5930, label %5901

; <label>:5901                                    ; preds = %5873
  %5902 = fsub fast float -0.000000e+00, %72
  %5903 = fsub fast float -0.000000e+00, %70
  %5904 = call float @dx.op.unary.f32(i32 24, float %5897)  ; Sqrt(value)
  %5905 = fdiv fast float %5904, %5896
  %5906 = fcmp fast ogt float %5905, 0x3FFB6F8900000000
  %5907 = select i1 %5906, float 0x3FFB6F8900000000, float %5905
  %5908 = fmul fast float %5907, 0x3FE8A23460000000
  %5909 = call float @dx.op.unary.f32(i32 7, float %5908)  ; Saturate(value)
  %5910 = call float @dx.op.binary.f32(i32 35, float %5907, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5911 = fmul fast float %5909, %5896
  %5912 = fmul fast float %5910, 0x3FF279A740000000
  %5913 = fadd fast float %5912, -1.000000e+00
  %5914 = call float @dx.op.dot3.f32(i32 55, float %5902, float %5903, float %71, float %5902, float %5903, float %71)  ; Dot3(ax,ay,az,bx,by,bz)
  %5915 = call float @dx.op.unary.f32(i32 25, float %5914)  ; Rsqrt(value)
  %5916 = fmul fast float %5915, %5902
  %5917 = fmul fast float %5915, %5903
  %5918 = fmul fast float %5915, %71
  %5919 = fmul fast float %5913, %5913
  %5920 = fsub fast float 1.000000e+00, %5919
  %5921 = fmul fast float %5910, 0x40005F8BE0000000
  %5922 = fsub fast float 0x400C5BF8A0000000, %5921
  %5923 = fdiv fast float %5911, %5922
  %5924 = fmul fast float %5923, 0x3FEE31C3C0000000
  %5925 = fmul fast float %5924, %5920
  %5926 = fmul fast float %5910, 0x3FDACB7480000000
  %5927 = fadd fast float %5926, 0xBFD7347680000000
  %5928 = fmul fast float %5927, %5923
  %5929 = fmul fast float %5928, %5920
  br label %5930

; <label>:5930                                    ; preds = %5901, %5873
  %5931 = phi float [ %5916, %5901 ], [ 0.000000e+00, %5873 ]
  %5932 = phi float [ %5917, %5901 ], [ 0.000000e+00, %5873 ]
  %5933 = phi float [ %5918, %5901 ], [ 0.000000e+00, %5873 ]
  %5934 = phi float [ %5925, %5901 ], [ 0.000000e+00, %5873 ]
  %5935 = phi float [ %5929, %5901 ], [ 0.000000e+00, %5873 ]
  %5936 = call float @dx.op.dot3.f32(i32 55, float %5931, float %5932, float %5933, float %5746, float %5747, float %5748)  ; Dot3(ax,ay,az,bx,by,bz)
  %5937 = fmul fast float %5936, 0x3FDF454380000000
  %5938 = fmul fast float %5936, %5936
  %5939 = fmul fast float %5938, 0x3FEE471020000000
  %5940 = fadd fast float %5939, 0xBFD42F6020000000
  %5941 = fmul fast float %5896, 0x3FD20DD760000000
  %5942 = fmul fast float %5940, %5935
  %5943 = fadd fast float %5942, %5941
  %5944 = fmul fast float %5937, %5934
  %5945 = fadd fast float %5943, %5944
  %5946 = fsub fast float %5943, %5944
  %5947 = call float @dx.op.dot3.f32(i32 55, float %5931, float %5932, float %5933, float %5760, float %5761, float %5762)  ; Dot3(ax,ay,az,bx,by,bz)
  %5948 = fmul fast float %5947, 0x3FDF454380000000
  %5949 = fmul fast float %5947, %5947
  %5950 = fmul fast float %5949, 0x3FEE471020000000
  %5951 = fadd fast float %5950, 0xBFD42F6020000000
  %5952 = call float @dx.op.dot3.f32(i32 55, float %5896, float %5934, float %5935, float 0x3FD20DD760000000, float %5948, float %5951)  ; Dot3(ax,ay,az,bx,by,bz)
  %5953 = call float @dx.op.binary.f32(i32 35, float %5831, float 0.000000e+00)  ; FMax(a,b)
  %5954 = call float @dx.op.binary.f32(i32 35, float %5888, float 0.000000e+00)  ; FMax(a,b)
  %5955 = call float @dx.op.binary.f32(i32 35, float %5945, float 0.000000e+00)  ; FMax(a,b)
  %5956 = call float @dx.op.binary.f32(i32 35, float %5832, float 0.000000e+00)  ; FMax(a,b)
  %5957 = call float @dx.op.binary.f32(i32 35, float %5889, float 0.000000e+00)  ; FMax(a,b)
  %5958 = call float @dx.op.binary.f32(i32 35, float %5946, float 0.000000e+00)  ; FMax(a,b)
  %5959 = call float @dx.op.binary.f32(i32 35, float %5838, float 0.000000e+00)  ; FMax(a,b)
  %5960 = call float @dx.op.binary.f32(i32 35, float %5895, float 0.000000e+00)  ; FMax(a,b)
  %5961 = call float @dx.op.binary.f32(i32 35, float %5952, float 0.000000e+00)  ; FMax(a,b)
  %5962 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5963 = extractvalue %dx.types.CBufRet.f32 %5962, 0
  %5964 = call float @dx.op.binary.f32(i32 36, float %5740, float %5963)  ; FMin(a,b)
  %5965 = fmul fast float %5964, %5764
  %5966 = fsub fast float 1.000000e+00, %5965
  %5967 = bitcast float %5966 to i32
  %5968 = sub nsw i32 2129859010, %5967
  %5969 = bitcast i32 %5968 to float
  %5970 = call float @dx.op.binary.f32(i32 36, float %5741, float %5963)  ; FMin(a,b)
  %5971 = fmul fast float %5970, %5764
  %5972 = fsub fast float 1.000000e+00, %5971
  %5973 = bitcast float %5972 to i32
  %5974 = sub nsw i32 2129859010, %5973
  %5975 = bitcast i32 %5974 to float
  %5976 = call float @dx.op.binary.f32(i32 36, float %5742, float %5963)  ; FMin(a,b)
  %5977 = fmul fast float %5976, %5764
  %5978 = fsub fast float 1.000000e+00, %5977
  %5979 = bitcast float %5978 to i32
  %5980 = sub nsw i32 2129859010, %5979
  %5981 = bitcast i32 %5980 to float
  %5982 = fmul fast float %5953, %5763
  %5983 = fmul fast float %5982, %5969
  %5984 = fmul fast float %5954, %5763
  %5985 = fmul fast float %5984, %5975
  %5986 = fmul fast float %5955, %5763
  %5987 = fmul fast float %5986, %5981
  %5988 = call float @dx.op.binary.f32(i32 36, float %5743, float %5963)  ; FMin(a,b)
  %5989 = fmul fast float %5988, %5764
  %5990 = fsub fast float 1.000000e+00, %5989
  %5991 = bitcast float %5990 to i32
  %5992 = sub nsw i32 2129859010, %5991
  %5993 = bitcast i32 %5992 to float
  %5994 = call float @dx.op.binary.f32(i32 36, float %5744, float %5963)  ; FMin(a,b)
  %5995 = fmul fast float %5994, %5764
  %5996 = fsub fast float 1.000000e+00, %5995
  %5997 = bitcast float %5996 to i32
  %5998 = sub nsw i32 2129859010, %5997
  %5999 = bitcast i32 %5998 to float
  %6000 = call float @dx.op.binary.f32(i32 36, float %5752, float %5963)  ; FMin(a,b)
  %6001 = fmul fast float %6000, %5764
  %6002 = fsub fast float 1.000000e+00, %6001
  %6003 = bitcast float %6002 to i32
  %6004 = sub nsw i32 2129859010, %6003
  %6005 = bitcast i32 %6004 to float
  %6006 = fmul fast float %5959, %5763
  %6007 = fmul fast float %6006, %5993
  %6008 = fmul fast float %5960, %5763
  %6009 = fmul fast float %6008, %5999
  %6010 = fmul fast float %5961, %5763
  %6011 = fmul fast float %6010, %6005
  %6012 = call float @dx.op.dot3.f32(i32 55, float %5983, float %5985, float %5987, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6013 = select i1 %258, float 0.000000e+00, float %5983
  %6014 = select i1 %258, float %6012, float %5985
  %6015 = select i1 %258, float 0.000000e+00, float %5987
  %6016 = call float @dx.op.dot3.f32(i32 55, float %5956, float %5957, float %5958, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6017 = select i1 %258, float 0.000000e+00, float %5956
  %6018 = select i1 %258, float %6016, float %5957
  %6019 = select i1 %258, float 0.000000e+00, float %5958
  %6020 = call float @dx.op.dot3.f32(i32 55, float %6007, float %6009, float %6011, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6021 = select i1 %258, float 0.000000e+00, float %6007
  %6022 = select i1 %258, float %6020, float %6009
  %6023 = select i1 %258, float 0.000000e+00, float %6011
  %6024 = fmul fast float %4459, %4459
  %6025 = call float @dx.op.unary.f32(i32 7, float %6024)  ; Saturate(value)
  %6026 = fmul fast float %5754, 9.843750e-01
  %6027 = fmul fast float %5749, 9.843750e-01
  %6028 = fadd fast float %6026, 7.812500e-03
  %6029 = fadd fast float %6027, 7.812500e-03
  %6030 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %6028, float %6029, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6031 = extractvalue %dx.types.ResRet.f32 %6030, 0
  %6032 = extractvalue %dx.types.ResRet.f32 %6030, 1
  %6033 = extractvalue %dx.types.ResRet.f32 %6030, 2
  %6034 = extractvalue %dx.types.ResRet.f32 %6030, 3
  %6035 = fsub fast float 1.000000e+00, %6025
  %6036 = fsub fast float %6033, %6031
  %6037 = fsub fast float %6034, %6032
  %6038 = fmul fast float %6036, %6035
  %6039 = fmul fast float %6037, %6035
  %6040 = fadd fast float %6038, %6031
  %6041 = fadd fast float %6039, %6032
  %6042 = fmul fast float %6040, %5743
  %6043 = fmul fast float %6040, %5744
  %6044 = fmul fast float %6040, %5752
  %6045 = fadd fast float %6042, %6041
  %6046 = fadd fast float %6043, %6041
  %6047 = fadd fast float %6044, %6041
  %6048 = fcmp fast ogt float %5105, 0.000000e+00
  br i1 %6048, label %6049, label %6075

; <label>:6049                                    ; preds = %5930
  %6050 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %5105, float %5754, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6051 = extractvalue %dx.types.ResRet.f32 %6050, 0
  %6052 = extractvalue %dx.types.ResRet.f32 %6050, 1
  %6053 = extractvalue %dx.types.ResRet.f32 %6050, 2
  %6054 = fadd fast float %6051, -5.000000e-01
  %6055 = fadd fast float %6052, -5.000000e-01
  %6056 = fadd fast float %6053, -5.000000e-01
  %6057 = fsub fast float 1.000000e+00, %5743
  %6058 = fsub fast float 1.000000e+00, %5744
  %6059 = fsub fast float 1.000000e+00, %5752
  %6060 = fmul fast float %5743, 4.000000e+00
  %6061 = fmul fast float %6060, %6057
  %6062 = fmul fast float %6061, %6054
  %6063 = fmul fast float %5744, 4.000000e+00
  %6064 = fmul fast float %6063, %6058
  %6065 = fmul fast float %6064, %6055
  %6066 = fmul fast float %5752, 4.000000e+00
  %6067 = fmul fast float %6066, %6059
  %6068 = fmul fast float %6067, %6056
  %6069 = fadd fast float %6062, %6045
  %6070 = fadd fast float %6065, %6046
  %6071 = fadd fast float %6068, %6047
  %6072 = call float @dx.op.unary.f32(i32 7, float %6069)  ; Saturate(value)
  %6073 = call float @dx.op.unary.f32(i32 7, float %6070)  ; Saturate(value)
  %6074 = call float @dx.op.unary.f32(i32 7, float %6071)  ; Saturate(value)
  br label %6075

; <label>:6075                                    ; preds = %6049, %5930
  %6076 = phi float [ %6072, %6049 ], [ %6045, %5930 ]
  %6077 = phi float [ %6073, %6049 ], [ %6046, %5930 ]
  %6078 = phi float [ %6074, %6049 ], [ %6047, %5930 ]
  %6079 = call float @dx.op.binary.f32(i32 35, float %6077, float %6078)  ; FMax(a,b)
  %6080 = call float @dx.op.binary.f32(i32 35, float %6076, float %6079)  ; FMax(a,b)
  %6081 = fsub fast float 1.000000e+00, %6080
  %6082 = fmul fast float %6080, %5749
  %6083 = fadd fast float %6082, %5749
  %6084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %6085 = extractvalue %dx.types.CBufRet.f32 %6084, 2
  %6086 = extractvalue %dx.types.CBufRet.f32 %6084, 3
  %6087 = fmul fast float %6083, %6085
  %6088 = fadd fast float %6087, %6086
  %6089 = call float @dx.op.unary.f32(i32 7, float %6088)  ; Saturate(value)
  %6090 = fsub fast float 1.000000e+00, %5775
  %6091 = fadd fast float %6090, %6089
  %6092 = call float @dx.op.unary.f32(i32 7, float %6091)  ; Saturate(value)
  %6093 = fcmp fast olt float %6092, 1.000000e+00
  br i1 %6093, label %6094, label %6570

; <label>:6094                                    ; preds = %6075
  %6095 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %6096 = extractvalue %dx.types.CBufRet.f32 %6095, 2
  %6097 = extractvalue %dx.types.CBufRet.f32 %6095, 3
  %6098 = fmul fast float %6096, %109
  %6099 = fmul fast float %6097, %110
  %6100 = fptoui float %6098 to i32
  %6101 = fptoui float %6099 to i32
  %6102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6103 = extractvalue %dx.types.CBufRet.f32 %6102, 0
  %6104 = extractvalue %dx.types.CBufRet.f32 %6102, 2
  %6105 = extractvalue %dx.types.CBufRet.f32 %6102, 3
  %6106 = fadd fast float %97, -4.000000e+00
  %6107 = call float @dx.op.binary.f32(i32 35, float %6106, float 0.000000e+00)  ; FMax(a,b)
  %6108 = fadd fast float %6107, %6103
  %6109 = fmul fast float %6108, %6104
  %6110 = call float @dx.op.unary.f32(i32 23, float %6109)  ; Log(value)
  %6111 = fmul fast float %6110, %6105
  %6112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6113 = extractvalue %dx.types.CBufRet.f32 %6112, 2
  %6114 = fmul fast float %6111, %6113
  %6115 = call float @dx.op.unary.f32(i32 7, float %6114)  ; Saturate(value)
  %6116 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6117 = extractvalue %dx.types.CBufRet.i32 %6116, 1
  %6118 = add i32 %6117, -1
  %6119 = uitofp i32 %6117 to float
  %6120 = fmul fast float %6119, %6115
  %6121 = fptoui float %6120 to i32
  %6122 = call i32 @dx.op.binary.i32(i32 40, i32 %6121, i32 %6118)  ; UMin(a,b)
  %6123 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6124 = extractvalue %dx.types.CBufRet.i32 %6123, 2
  %6125 = extractvalue %dx.types.CBufRet.i32 %6123, 3
  %6126 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6101, i32 %6124, i32 %6100)  ; UMad(a,b,c)
  %6127 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6122, i32 %6125, i32 %6126)  ; UMad(a,b,c)
  %6128 = call float @dx.op.binary.f32(i32 35, float %97, float 0.000000e+00)  ; FMax(a,b)
  %6129 = fptoui float %6128 to i32
  %6130 = lshr i32 %6129, 5
  %6131 = call i32 @dx.op.binary.i32(i32 40, i32 %6130, i32 8191)  ; UMin(a,b)
  %6132 = fsub fast float %5560, %166
  %6133 = call float @dx.op.unary.f32(i32 7, float %6132)  ; Saturate(value)
  %6134 = fcmp fast ogt float %6133, 0.000000e+00
  %6135 = fcmp fast ogt float %5762, 0.000000e+00
  %6136 = and i1 %6135, %6134
  br i1 %6136, label %6137, label %6166

; <label>:6137                                    ; preds = %6094
  %6138 = call float @dx.op.dot3.f32(i32 55, float %5760, float %5761, float %5762, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6139 = call float @dx.op.binary.f32(i32 35, float %6138, float -1.000000e+00)  ; FMax(a,b)
  %6140 = call float @dx.op.binary.f32(i32 36, float %6139, float 1.000000e+00)  ; FMin(a,b)
  %6141 = fmul fast float %6140, %6140
  %6142 = fsub fast float 1.000000e+00, %6141
  %6143 = fmul fast float %6142, 0x3FFC6E2300000000
  %6144 = fsub fast float 1.000000e+00, %6143
  %6145 = fcmp fast ogt float %6144, 0.000000e+00
  %6146 = call float @dx.op.unary.f32(i32 24, float %6144)  ; Sqrt(value)
  %6147 = fsub fast float 1.000000e+00, %6146
  %6148 = call float @dx.op.unary.f32(i32 23, float %6147)  ; Log(value)
  %6149 = fmul fast float %6148, 5.000000e+00
  %6150 = call float @dx.op.unary.f32(i32 21, float %6149)  ; Exp(value)
  %6151 = fmul fast float %6150, 0x3FEF591A60000000
  %6152 = fadd fast float %6151, 0x3F94DCB540000000
  %6153 = select i1 %6145, float %6152, float 1.000000e+00
  %6154 = fcmp fast oge float %6153, 1.000000e+00
  %6155 = fmul fast float %6138, 2.000000e+00
  %6156 = fadd fast float %6155, %5762
  %6157 = select i1 %6154, float %6156, float %5762
  %6158 = fsub fast float %6157, %5762
  %6159 = fmul fast float %6158, %6133
  %6160 = fadd fast float %6159, %5762
  %6161 = call float @dx.op.dot3.f32(i32 55, float %5760, float %5761, float %6160, float %5760, float %5761, float %6160)  ; Dot3(ax,ay,az,bx,by,bz)
  %6162 = call float @dx.op.unary.f32(i32 25, float %6161)  ; Rsqrt(value)
  %6163 = fmul fast float %6162, %5760
  %6164 = fmul fast float %6162, %5761
  %6165 = fmul fast float %6160, %6162
  br label %6166

; <label>:6166                                    ; preds = %6137, %6094
  %6167 = phi float [ %6163, %6137 ], [ %5760, %6094 ]
  %6168 = phi float [ %6164, %6137 ], [ %5761, %6094 ]
  %6169 = phi float [ %6165, %6137 ], [ %5762, %6094 ]
  %6170 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6171 = extractvalue %dx.types.CBufRet.i32 %6170, 2
  %6172 = add nsw i32 %6171, -1
  %6173 = call i32 @dx.op.binary.i32(i32 37, i32 %6172, i32 0)  ; IMax(a,b)
  %6174 = shl i32 %6131, 2
  %6175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %6174, i32 undef)  ; BufferLoad(srv,index,wot)
  %6176 = extractvalue %dx.types.ResRet.i32 %6175, 0
  %6177 = lshr i32 %6176, 16
  %6178 = and i32 %6176, 65535
  %6179 = lshr i32 %6176, 21
  %6180 = lshr i32 %6178, 5
  %6181 = call i32 @dx.op.binary.i32(i32 40, i32 %6180, i32 %6173)  ; UMin(a,b)
  %6182 = icmp ugt i32 %6179, %6181
  br i1 %6182, label %6546, label %6183

; <label>:6183                                    ; preds = %6166
  br label %6184

; <label>:6184                                    ; preds = %6538, %6183
  %6185 = phi float [ %6539, %6538 ], [ 0.000000e+00, %6183 ]
  %6186 = phi float [ %6540, %6538 ], [ 0.000000e+00, %6183 ]
  %6187 = phi float [ %6541, %6538 ], [ 0.000000e+00, %6183 ]
  %6188 = phi float [ %6542, %6538 ], [ 1.000000e+00, %6183 ]
  %6189 = phi i32 [ %6543, %6538 ], [ %6179, %6183 ]
  %6190 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6191 = extractvalue %dx.types.CBufRet.i32 %6190, 2
  %6192 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6127, i32 %6191, i32 %6189)  ; UMad(a,b,c)
  %6193 = shl i32 %6192, 2
  %6194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %6193, i32 undef)  ; BufferLoad(srv,index,wot)
  %6195 = extractvalue %dx.types.ResRet.i32 %6194, 0
  %6196 = shl i32 %6189, 5
  %6197 = sub nsw i32 %6177, %6196
  %6198 = call i32 @dx.op.binary.i32(i32 37, i32 %6197, i32 0)  ; IMax(a,b)
  %6199 = call i32 @dx.op.binary.i32(i32 38, i32 %6198, i32 31)  ; IMin(a,b)
  %6200 = sub nsw i32 1, %6177
  %6201 = add nsw i32 %6200, %6178
  %6202 = call i32 @dx.op.binary.i32(i32 37, i32 %6201, i32 0)  ; IMax(a,b)
  %6203 = call i32 @dx.op.binary.i32(i32 38, i32 %6202, i32 32)  ; IMin(a,b)
  %6204 = and i32 %6203, 31
  %6205 = shl i32 -1, %6204
  %6206 = xor i32 %6205, -1
  %6207 = and i32 %6199, 31
  %6208 = shl i32 %6206, %6207
  %6209 = icmp eq i32 %6203, 32
  %6210 = select i1 %6209, i32 -1, i32 %6208
  %6211 = and i32 %6210, %6195
  %6212 = icmp eq i32 %6211, 0
  br i1 %6212, label %6538, label %6213

; <label>:6213                                    ; preds = %6184
  br label %6214

; <label>:6214                                    ; preds = %6321, %6213
  %6215 = phi float [ %6322, %6321 ], [ %6185, %6213 ]
  %6216 = phi float [ %6323, %6321 ], [ %6186, %6213 ]
  %6217 = phi float [ %6324, %6321 ], [ %6187, %6213 ]
  %6218 = phi float [ %6325, %6321 ], [ %6188, %6213 ]
  %6219 = phi i32 [ %6224, %6321 ], [ %6211, %6213 ]
  %6220 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6219)  ; FirstbitLo(value)
  %6221 = add i32 %6220, %6196
  %6222 = and i32 %6220, 31
  %6223 = shl i32 1, %6222
  %6224 = xor i32 %6223, %6219
  %6225 = mul i32 %6221, 72
  %6226 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6225, i32 undef)  ; BufferLoad(srv,index,wot)
  %6227 = extractvalue %dx.types.ResRet.f32 %6226, 0
  %6228 = extractvalue %dx.types.ResRet.f32 %6226, 1
  %6229 = extractvalue %dx.types.ResRet.f32 %6226, 2
  %6230 = add i32 %6225, 12
  %6231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %6230, i32 undef)  ; BufferLoad(srv,index,wot)
  %6232 = extractvalue %dx.types.ResRet.i32 %6231, 0
  %6233 = add i32 %6225, 16
  %6234 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6233, i32 undef)  ; BufferLoad(srv,index,wot)
  %6235 = extractvalue %dx.types.ResRet.f32 %6234, 0
  %6236 = extractvalue %dx.types.ResRet.f32 %6234, 1
  %6237 = extractvalue %dx.types.ResRet.f32 %6234, 2
  %6238 = add i32 %6225, 28
  %6239 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6238, i32 undef)  ; BufferLoad(srv,index,wot)
  %6240 = extractvalue %dx.types.ResRet.f32 %6239, 0
  %6241 = add i32 %6225, 32
  %6242 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6241, i32 undef)  ; BufferLoad(srv,index,wot)
  %6243 = extractvalue %dx.types.ResRet.f32 %6242, 0
  %6244 = extractvalue %dx.types.ResRet.f32 %6242, 1
  %6245 = extractvalue %dx.types.ResRet.f32 %6242, 2
  %6246 = extractvalue %dx.types.ResRet.f32 %6242, 3
  %6247 = add i32 %6225, 48
  %6248 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6247, i32 undef)  ; BufferLoad(srv,index,wot)
  %6249 = extractvalue %dx.types.ResRet.f32 %6248, 0
  %6250 = extractvalue %dx.types.ResRet.f32 %6248, 1
  %6251 = add i32 %6225, 56
  %6252 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6251, i32 undef)  ; BufferLoad(srv,index,wot)
  %6253 = extractvalue %dx.types.ResRet.f32 %6252, 0
  %6254 = extractvalue %dx.types.ResRet.f32 %6252, 1
  %6255 = add i32 %6225, 64
  %6256 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6255, i32 undef)  ; BufferLoad(srv,index,wot)
  %6257 = extractvalue %dx.types.ResRet.f32 %6256, 0
  %6258 = extractvalue %dx.types.ResRet.f32 %6256, 1
  %6259 = mul i32 %6221, 60
  %6260 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %6259, i32 undef)  ; BufferLoad(srv,index,wot)
  %6261 = extractvalue %dx.types.ResRet.f32 %6260, 0
  %6262 = extractvalue %dx.types.ResRet.f32 %6260, 1
  %6263 = extractvalue %dx.types.ResRet.f32 %6260, 2
  %6264 = add i32 %6259, 12
  %6265 = add i32 %6259, 48
  %6266 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %6265, i32 undef)  ; BufferLoad(srv,index,wot)
  %6267 = extractvalue %dx.types.ResRet.f32 %6266, 0
  %6268 = extractvalue %dx.types.ResRet.f32 %6266, 1
  %6269 = extractvalue %dx.types.ResRet.f32 %6266, 2
  %6270 = and i32 %6232, 32767
  %6271 = bitcast float %6227 to i32
  %6272 = icmp eq i32 %6271, -1
  %6273 = bitcast float %6228 to i32
  %6274 = and i32 %6232, 32768
  %6275 = icmp ne i32 %6274, 0
  %6276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6277 = extractvalue %dx.types.CBufRet.f32 %6276, 0
  %6278 = extractvalue %dx.types.CBufRet.f32 %6276, 1
  %6279 = extractvalue %dx.types.CBufRet.f32 %6276, 2
  %6280 = fsub fast float %6261, %6277
  %6281 = fsub fast float %6262, %6278
  %6282 = fsub fast float %6263, %6279
  %6283 = fsub fast float %164, %6280
  %6284 = fsub fast float %165, %6281
  %6285 = fsub fast float %166, %6282
  %6286 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %6264, i32 undef)  ; BufferLoad(srv,index,wot)
  %6287 = extractvalue %dx.types.ResRet.f32 %6286, 0
  %6288 = extractvalue %dx.types.ResRet.f32 %6286, 1
  %6289 = extractvalue %dx.types.ResRet.f32 %6286, 2
  %6290 = call float @dx.op.dot3.f32(i32 55, float %6283, float %6284, float %6285, float %6287, float %6288, float %6289)  ; Dot3(ax,ay,az,bx,by,bz)
  %6291 = add i32 %6259, 24
  %6292 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %6291, i32 undef)  ; BufferLoad(srv,index,wot)
  %6293 = extractvalue %dx.types.ResRet.f32 %6292, 0
  %6294 = extractvalue %dx.types.ResRet.f32 %6292, 1
  %6295 = extractvalue %dx.types.ResRet.f32 %6292, 2
  %6296 = call float @dx.op.dot3.f32(i32 55, float %6283, float %6284, float %6285, float %6293, float %6294, float %6295)  ; Dot3(ax,ay,az,bx,by,bz)
  %6297 = add i32 %6259, 36
  %6298 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %6297, i32 undef)  ; BufferLoad(srv,index,wot)
  %6299 = extractvalue %dx.types.ResRet.f32 %6298, 0
  %6300 = extractvalue %dx.types.ResRet.f32 %6298, 1
  %6301 = extractvalue %dx.types.ResRet.f32 %6298, 2
  %6302 = call float @dx.op.dot3.f32(i32 55, float %6283, float %6284, float %6285, float %6299, float %6300, float %6301)  ; Dot3(ax,ay,az,bx,by,bz)
  %6303 = call float @dx.op.unary.f32(i32 6, float %6290)  ; FAbs(value)
  %6304 = call float @dx.op.unary.f32(i32 6, float %6296)  ; FAbs(value)
  %6305 = call float @dx.op.unary.f32(i32 6, float %6302)  ; FAbs(value)
  %6306 = fsub fast float %6267, %6303
  %6307 = fsub fast float %6268, %6304
  %6308 = fsub fast float %6269, %6305
  %6309 = fmul fast float %6306, %6235
  %6310 = fmul fast float %6307, %6236
  %6311 = fmul fast float %6308, %6237
  %6312 = call float @dx.op.binary.f32(i32 36, float %6310, float %6311)  ; FMin(a,b)
  %6313 = call float @dx.op.binary.f32(i32 36, float %6309, float %6312)  ; FMin(a,b)
  %6314 = call float @dx.op.unary.f32(i32 7, float %6313)  ; Saturate(value)
  %6315 = call float @dx.op.binary.f32(i32 36, float %6218, float %6314)  ; FMin(a,b)
  %6316 = uitofp i1 %6275 to float
  %6317 = fadd fast float %6133, 1.000000e+00
  %6318 = fsub fast float %6317, %6316
  %6319 = fmul fast float %6315, %6318
  %6320 = fcmp fast ogt float %6319, 0.000000e+00
  br i1 %6320, label %6327, label %6321

; <label>:6321                                    ; preds = %6469, %6214
  %6322 = phi float [ %6533, %6469 ], [ %6215, %6214 ]
  %6323 = phi float [ %6534, %6469 ], [ %6216, %6214 ]
  %6324 = phi float [ %6535, %6469 ], [ %6217, %6214 ]
  %6325 = phi float [ %6536, %6469 ], [ %6218, %6214 ]
  %6326 = icmp eq i32 %6219, %6223
  br i1 %6326, label %6537, label %6214

; <label>:6327                                    ; preds = %6214
  br i1 %6272, label %6385, label %6328

; <label>:6328                                    ; preds = %6327
  %6329 = fsub fast float -0.000000e+00, %6287
  %6330 = fsub fast float -0.000000e+00, %6288
  %6331 = fsub fast float -0.000000e+00, %6289
  %6332 = call float @dx.op.dot3.f32(i32 55, float %6167, float %6168, float %6169, float %6329, float %6330, float %6331)  ; Dot3(ax,ay,az,bx,by,bz)
  %6333 = fsub fast float -0.000000e+00, %6332
  %6334 = call float @dx.op.dot3.f32(i32 55, float %6283, float %6284, float %6285, float %6329, float %6330, float %6331)  ; Dot3(ax,ay,az,bx,by,bz)
  %6335 = fadd fast float %6334, %6250
  %6336 = fadd fast float %6249, %6334
  %6337 = fsub fast float -0.000000e+00, %6336
  %6338 = fcmp ogt float %6332, -0.000000e+00
  %6339 = select i1 %6338, float %6337, float %6335
  %6340 = call float @dx.op.unary.f32(i32 6, float %6333)  ; FAbs(value)
  %6341 = fdiv fast float 1.000000e+00, %6340
  %6342 = fmul fast float %6339, %6341
  %6343 = call float @dx.op.binary.f32(i32 35, float %6342, float 0.000000e+00)  ; FMax(a,b)
  %6344 = fsub fast float -0.000000e+00, %6293
  %6345 = fsub fast float -0.000000e+00, %6294
  %6346 = fsub fast float -0.000000e+00, %6295
  %6347 = call float @dx.op.dot3.f32(i32 55, float %6167, float %6168, float %6169, float %6344, float %6345, float %6346)  ; Dot3(ax,ay,az,bx,by,bz)
  %6348 = fsub fast float -0.000000e+00, %6347
  %6349 = call float @dx.op.dot3.f32(i32 55, float %6283, float %6284, float %6285, float %6344, float %6345, float %6346)  ; Dot3(ax,ay,az,bx,by,bz)
  %6350 = fadd fast float %6349, %6254
  %6351 = fadd fast float %6253, %6349
  %6352 = fsub fast float -0.000000e+00, %6351
  %6353 = fcmp ogt float %6347, -0.000000e+00
  %6354 = select i1 %6353, float %6352, float %6350
  %6355 = call float @dx.op.unary.f32(i32 6, float %6348)  ; FAbs(value)
  %6356 = fdiv fast float 1.000000e+00, %6355
  %6357 = fmul fast float %6354, %6356
  %6358 = call float @dx.op.binary.f32(i32 35, float %6357, float 0.000000e+00)  ; FMax(a,b)
  %6359 = fsub fast float -0.000000e+00, %6299
  %6360 = fsub fast float -0.000000e+00, %6300
  %6361 = fsub fast float -0.000000e+00, %6301
  %6362 = call float @dx.op.dot3.f32(i32 55, float %6167, float %6168, float %6169, float %6359, float %6360, float %6361)  ; Dot3(ax,ay,az,bx,by,bz)
  %6363 = fsub fast float -0.000000e+00, %6362
  %6364 = call float @dx.op.dot3.f32(i32 55, float %6283, float %6284, float %6285, float %6359, float %6360, float %6361)  ; Dot3(ax,ay,az,bx,by,bz)
  %6365 = fadd fast float %6364, %6258
  %6366 = fadd fast float %6257, %6364
  %6367 = fsub fast float -0.000000e+00, %6366
  %6368 = fcmp ogt float %6362, -0.000000e+00
  %6369 = select i1 %6368, float %6367, float %6365
  %6370 = call float @dx.op.unary.f32(i32 6, float %6363)  ; FAbs(value)
  %6371 = fdiv fast float 1.000000e+00, %6370
  %6372 = fmul fast float %6369, %6371
  %6373 = call float @dx.op.binary.f32(i32 35, float %6372, float 0.000000e+00)  ; FMax(a,b)
  %6374 = call float @dx.op.binary.f32(i32 36, float %6358, float %6373)  ; FMin(a,b)
  %6375 = call float @dx.op.binary.f32(i32 36, float %6343, float %6374)  ; FMin(a,b)
  %6376 = fmul fast float %6375, %6167
  %6377 = fmul fast float %6375, %6168
  %6378 = fmul fast float %6375, %6169
  %6379 = fadd fast float %6376, %164
  %6380 = fadd fast float %6377, %165
  %6381 = fadd fast float %6378, %166
  %6382 = fsub fast float %6379, %6227
  %6383 = fsub fast float %6380, %6228
  %6384 = fsub fast float %6381, %6229
  br label %6392

; <label>:6385                                    ; preds = %6327
  %6386 = fmul fast float %6167, 8.096000e+03
  %6387 = fmul fast float %6168, 8.096000e+03
  %6388 = fmul fast float %6169, 8.096000e+03
  %6389 = fadd fast float %6386, %164
  %6390 = fadd fast float %6387, %165
  %6391 = fadd fast float %6388, %166
  br label %6392

; <label>:6392                                    ; preds = %6385, %6328
  %6393 = phi float [ %6167, %6385 ], [ %6382, %6328 ]
  %6394 = phi float [ %6168, %6385 ], [ %6383, %6328 ]
  %6395 = phi float [ %6169, %6385 ], [ %6384, %6328 ]
  %6396 = phi float [ %6389, %6385 ], [ %6379, %6328 ]
  %6397 = phi float [ %6390, %6385 ], [ %6380, %6328 ]
  %6398 = phi float [ %6391, %6385 ], [ %6381, %6328 ]
  %6399 = fcmp fast olt float %6246, 1.000000e+00
  br i1 %6399, label %6400, label %6431, !dx.controlflow.hints !100

; <label>:6400                                    ; preds = %6392
  %6401 = fmul fast float %6395, %6244
  %6402 = fmul fast float %6394, %6245
  %6403 = fsub fast float %6401, %6402
  %6404 = fmul fast float %6393, %6245
  %6405 = fmul fast float %6395, %6243
  %6406 = fsub fast float %6404, %6405
  %6407 = fmul fast float %6394, %6243
  %6408 = fmul fast float %6393, %6244
  %6409 = fsub fast float %6407, %6408
  %6410 = fmul fast float %6403, 2.000000e+00
  %6411 = fmul fast float %6406, 2.000000e+00
  %6412 = fmul fast float %6409, 2.000000e+00
  %6413 = fmul fast float %6410, %6246
  %6414 = fmul fast float %6411, %6246
  %6415 = fmul fast float %6412, %6246
  %6416 = fmul fast float %6412, %6244
  %6417 = fmul fast float %6411, %6245
  %6418 = fmul fast float %6410, %6245
  %6419 = fmul fast float %6412, %6243
  %6420 = fmul fast float %6411, %6243
  %6421 = fmul fast float %6410, %6244
  %6422 = fadd fast float %6416, %6393
  %6423 = fadd fast float %6422, %6413
  %6424 = fsub fast float %6423, %6417
  %6425 = fsub fast float %6394, %6419
  %6426 = fadd fast float %6425, %6414
  %6427 = fadd fast float %6426, %6418
  %6428 = fadd fast float %6415, %6395
  %6429 = fsub fast float %6428, %6421
  %6430 = fadd fast float %6429, %6420
  br label %6431

; <label>:6431                                    ; preds = %6400, %6392
  %6432 = phi float [ %6424, %6400 ], [ %6393, %6392 ]
  %6433 = phi float [ %6427, %6400 ], [ %6394, %6392 ]
  %6434 = phi float [ %6430, %6400 ], [ %6395, %6392 ]
  br i1 %6272, label %6466, label %6435

; <label>:6435                                    ; preds = %6431
  %6436 = fmul fast float %5749, 0x400187C840000000
  %6437 = fadd fast float %6436, 0xC00EFC2120000000
  %6438 = fmul fast float %6437, %5749
  %6439 = fadd fast float %6438, 0x3FE5D16340000000
  %6440 = fmul fast float %6439, %5749
  %6441 = fadd fast float %6440, 1.000000e+00
  %6442 = call float @dx.op.unary.f32(i32 7, float %6441)  ; Saturate(value)
  %6443 = fsub fast float %6396, %164
  %6444 = fsub fast float %6397, %165
  %6445 = fsub fast float %6398, %166
  %6446 = fsub fast float %6396, %6227
  %6447 = fsub fast float %6397, %6228
  %6448 = fsub fast float %6398, %6229
  %6449 = call float @dx.op.dot3.f32(i32 55, float %6443, float %6444, float %6445, float %6443, float %6444, float %6445)  ; Dot3(ax,ay,az,bx,by,bz)
  %6450 = call float @dx.op.dot3.f32(i32 55, float %6446, float %6447, float %6448, float %6446, float %6447, float %6448)  ; Dot3(ax,ay,az,bx,by,bz)
  %6451 = fadd fast float %6450, 0x3EE4F8B580000000
  %6452 = fdiv fast float %6449, %6451
  %6453 = bitcast float %6452 to i32
  %6454 = ashr i32 %6453, 1
  %6455 = add nsw i32 %6454, 532487669
  %6456 = bitcast i32 %6455 to float
  %6457 = fmul fast float %6456, %6442
  %6458 = call float @dx.op.unary.f32(i32 7, float %6457)  ; Saturate(value)
  %6459 = fmul fast float %6458, 0x4009981AE0000000
  %6460 = fsub fast float 0x40111BBD80000000, %6459
  %6461 = fmul fast float %6460, %6458
  %6462 = fadd fast float %6461, 0xC0009F6020000000
  %6463 = fmul fast float %6462, %6458
  %6464 = fadd fast float %6463, 1.000000e+00
  %6465 = call float @dx.op.unary.f32(i32 7, float %6464)  ; Saturate(value)
  br label %6469

; <label>:6466                                    ; preds = %6431
  %6467 = icmp ne i32 %6273, -1
  %6468 = zext i1 %6467 to i32
  br label %6469

; <label>:6469                                    ; preds = %6466, %6435
  %6470 = phi float [ %5749, %6466 ], [ %6465, %6435 ]
  %6471 = phi i32 [ %6468, %6466 ], [ 0, %6435 ]
  %6472 = fmul float %6470, 5.000000e+00
  %6473 = fsub float 5.000000e+00, %6472
  %6474 = icmp ne i32 %6471, 0
  %6475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %6476 = extractvalue %dx.types.CBufRet.f32 %6475, 3
  %6477 = fadd fast float %6476, %6473
  %6478 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6477)  ; FMax(a,b)
  %6479 = call float @dx.op.unary.f32(i32 6, float %6432)  ; FAbs(value)
  %6480 = call float @dx.op.unary.f32(i32 6, float %6433)  ; FAbs(value)
  %6481 = fadd fast float %6480, %6479
  %6482 = call float @dx.op.unary.f32(i32 6, float %6434)  ; FAbs(value)
  %6483 = fadd fast float %6481, %6482
  %6484 = fcmp fast oeq float %6483, 0.000000e+00
  %6485 = fdiv fast float 1.000000e+00, %6483
  %6486 = select i1 %6484, float 1.000000e+00, float %6485
  %6487 = fmul fast float %6486, %6432
  %6488 = fmul fast float %6486, %6433
  %6489 = call float @dx.op.unary.f32(i32 6, float %6488)  ; FAbs(value)
  %6490 = call float @dx.op.unary.f32(i32 6, float %6487)  ; FAbs(value)
  %6491 = fsub fast float 1.000000e+00, %6489
  %6492 = fsub fast float 1.000000e+00, %6490
  %6493 = fcmp fast oge float %6487, 0.000000e+00
  %6494 = fcmp fast oge float %6488, 0.000000e+00
  %6495 = select i1 %6493, float 1.000000e+00, float -1.000000e+00
  %6496 = select i1 %6494, float 1.000000e+00, float -1.000000e+00
  %6497 = fcmp fast ole float %6434, 0.000000e+00
  %6498 = fmul fast float %6495, %6491
  %6499 = fmul fast float %6496, %6492
  %6500 = select i1 %6497, float %6498, float %6487
  %6501 = select i1 %6497, float %6499, float %6488
  %6502 = fmul fast float %6500, 5.000000e-01
  %6503 = fmul fast float %6501, 5.000000e-01
  %6504 = fadd fast float %6502, 5.000000e-01
  %6505 = fadd fast float %6503, 5.000000e-01
  %6506 = uitofp i32 %6270 to float
  %6507 = call float @dx.op.binary.f32(i32 36, float %6478, float 3.000000e+00)  ; FMin(a,b)
  %6508 = fadd fast float %6507, 2.000000e+00
  %6509 = call float @dx.op.unary.f32(i32 21, float %6508)  ; Exp(value)
  %6510 = extractvalue %dx.types.CBufRet.f32 %6475, 1
  %6511 = fmul fast float %6510, %6509
  %6512 = fmul fast float %6511, 2.000000e+00
  %6513 = fsub fast float 1.000000e+00, %6512
  %6514 = fmul fast float %6504, %6513
  %6515 = fmul fast float %6505, %6513
  %6516 = fadd fast float %6514, %6511
  %6517 = fadd fast float %6515, %6511
  %6518 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %52, float %6516, float %6517, float %6506, float undef, i32 0, i32 0, i32 undef, float %6478)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6519 = extractvalue %dx.types.ResRet.f32 %6518, 0
  %6520 = extractvalue %dx.types.ResRet.f32 %6518, 1
  %6521 = extractvalue %dx.types.ResRet.f32 %6518, 2
  %6522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6523 = extractvalue %dx.types.CBufRet.f32 %6522, 3
  %6524 = fmul fast float %6523, %6240
  %6525 = call float @dx.op.binary.f32(i32 36, float %5781, float %6524)  ; FMin(a,b)
  %6526 = select i1 %6474, float %6525, float %6524
  %6527 = fmul fast float %6519, %6319
  %6528 = fmul fast float %6527, %6526
  %6529 = fmul fast float %6520, %6319
  %6530 = fmul fast float %6529, %6526
  %6531 = fmul fast float %6521, %6319
  %6532 = fmul fast float %6531, %6526
  %6533 = fadd fast float %6528, %6215
  %6534 = fadd fast float %6530, %6216
  %6535 = fadd fast float %6532, %6217
  %6536 = fsub fast float %6218, %6319
  br label %6321

; <label>:6537                                    ; preds = %6321
  br label %6538

; <label>:6538                                    ; preds = %6537, %6184
  %6539 = phi float [ %6185, %6184 ], [ %6322, %6537 ]
  %6540 = phi float [ %6186, %6184 ], [ %6323, %6537 ]
  %6541 = phi float [ %6187, %6184 ], [ %6324, %6537 ]
  %6542 = phi float [ %6188, %6184 ], [ %6325, %6537 ]
  %6543 = add i32 %6189, 1
  %6544 = icmp ugt i32 %6543, %6181
  br i1 %6544, label %6545, label %6184, !llvm.loop !101

; <label>:6545                                    ; preds = %6538
  br label %6546

; <label>:6546                                    ; preds = %6545, %6166
  %6547 = phi float [ 0.000000e+00, %6166 ], [ %6539, %6545 ]
  %6548 = phi float [ 0.000000e+00, %6166 ], [ %6540, %6545 ]
  %6549 = phi float [ 0.000000e+00, %6166 ], [ %6541, %6545 ]
  %6550 = call float @dx.op.dot3.f32(i32 55, float %6547, float %6548, float %6549, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6551 = select i1 %258, float 0.000000e+00, float %6547
  %6552 = select i1 %258, float %6550, float %6548
  %6553 = select i1 %258, float 0.000000e+00, float %6549
  %6554 = fcmp fast olt float %6092, 0.000000e+00
  %6555 = call float @dx.op.unary.f32(i32 6, float %6092)  ; FAbs(value)
  %6556 = fmul fast float %6555, %6021
  %6557 = fmul fast float %6555, %6022
  %6558 = fmul fast float %6555, %6023
  %6559 = select i1 %6554, float %6021, float %6556
  %6560 = select i1 %6554, float %6022, float %6557
  %6561 = select i1 %6554, float %6023, float %6558
  %6562 = fsub fast float 1.000000e+00, %6555
  %6563 = call float @dx.op.unary.f32(i32 7, float %6562)  ; Saturate(value)
  %6564 = fmul fast float %6563, %6551
  %6565 = fmul fast float %6563, %6552
  %6566 = fmul fast float %6563, %6553
  %6567 = fadd fast float %6559, %6564
  %6568 = fadd fast float %6560, %6565
  %6569 = fadd fast float %6561, %6566
  br label %6570

; <label>:6570                                    ; preds = %6546, %6075
  %6571 = phi float [ %6021, %6075 ], [ %6567, %6546 ]
  %6572 = phi float [ %6022, %6075 ], [ %6568, %6546 ]
  %6573 = phi float [ %6023, %6075 ], [ %6569, %6546 ]
  %6574 = call float @dx.op.dot3.f32(i32 55, float %5740, float %5741, float %5742, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6575 = fcmp fast ogt float %6574, 0x3E7FF19E20000000
  %6576 = fdiv fast float 1.000000e+00, %6574
  %6577 = select i1 %6575, float %6576, float 0.000000e+00
  %6578 = fmul fast float %6577, %5740
  %6579 = fmul fast float %6577, %5741
  %6580 = fmul fast float %6577, %5742
  %6581 = fadd fast float %6578, -1.000000e+00
  %6582 = fadd fast float %6579, -1.000000e+00
  %6583 = fadd fast float %6580, -1.000000e+00
  %6584 = fmul fast float %6581, 5.000000e-01
  %6585 = fmul fast float %6582, 5.000000e-01
  %6586 = fmul fast float %6583, 5.000000e-01
  %6587 = fadd fast float %6584, 1.000000e+00
  %6588 = fadd fast float %6585, 1.000000e+00
  %6589 = fadd fast float %6586, 1.000000e+00
  %6590 = call float @dx.op.binary.f32(i32 35, float %5754, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6591 = fdiv fast float %4459, %6590
  %6592 = fcmp fast olt float %5176, 1.270000e+02
  %6593 = fcmp fast olt float %5177, 1.270000e+02
  %6594 = fcmp fast olt float %5178, 1.270000e+02
  %6595 = fmul fast float %5176, 0xBFF7154760000000
  %6596 = fmul fast float %6595, %6591
  %6597 = fmul fast float %5177, 0xBFF7154760000000
  %6598 = fmul fast float %6597, %6591
  %6599 = fmul fast float %5178, 0xBFF7154760000000
  %6600 = fmul fast float %6599, %6591
  %6601 = call float @dx.op.unary.f32(i32 21, float %6596)  ; Exp(value)
  %6602 = call float @dx.op.unary.f32(i32 21, float %6598)  ; Exp(value)
  %6603 = call float @dx.op.unary.f32(i32 21, float %6600)  ; Exp(value)
  %6604 = call float @dx.op.unary.f32(i32 7, float %6601)  ; Saturate(value)
  %6605 = call float @dx.op.unary.f32(i32 7, float %6602)  ; Saturate(value)
  %6606 = call float @dx.op.unary.f32(i32 7, float %6603)  ; Saturate(value)
  %6607 = select i1 %6592, float %6604, float 0.000000e+00
  %6608 = select i1 %6593, float %6605, float 0.000000e+00
  %6609 = select i1 %6594, float %6606, float 0.000000e+00
  %6610 = fmul fast float %6607, %6081
  %6611 = fmul fast float %6608, %6081
  %6612 = fmul fast float %6609, %6081
  %6613 = fadd fast float %6610, -1.000000e+00
  %6614 = fadd fast float %6611, -1.000000e+00
  %6615 = fadd fast float %6612, -1.000000e+00
  %6616 = fmul fast float %6613, %5131
  %6617 = fmul fast float %6614, %5131
  %6618 = fmul fast float %6615, %5131
  %6619 = fmul fast float %6571, %6076
  %6620 = fmul fast float %6572, %6077
  %6621 = fmul fast float %6573, %6078
  %6622 = fsub fast float 1.000000e+00, %5754
  %6623 = bitcast float %6622 to i32
  %6624 = sitofp i32 %6623 to float
  %6625 = fmul fast float %6624, 5.000000e+00
  %6626 = fadd fast float %6625, 0xC1EFBF8940000000
  %6627 = fptosi float %6626 to i32
  %6628 = bitcast i32 %6627 to float
  %6629 = fmul fast float %6628, %5106
  %6630 = fmul fast float %6013, %6629
  %6631 = fmul fast float %6630, %6081
  %6632 = fmul fast float %6631, %6587
  %6633 = fmul fast float %6014, %6629
  %6634 = fmul fast float %6633, %6081
  %6635 = fmul fast float %6634, %6588
  %6636 = fmul fast float %6015, %6629
  %6637 = fmul fast float %6636, %6081
  %6638 = fmul fast float %6637, %6589
  %6639 = fadd fast float %6619, %5098
  %6640 = fadd fast float %6639, %6632
  %6641 = fmul fast float %6640, %5131
  %6642 = fadd fast float %6620, %5099
  %6643 = fadd fast float %6642, %6635
  %6644 = fmul fast float %6643, %5131
  %6645 = fadd fast float %6621, %5100
  %6646 = fadd fast float %6645, %6638
  %6647 = fmul fast float %6646, %5131
  %6648 = fmul fast float %5744, 0x4012D0A400000000
  %6649 = fadd fast float %6618, 1.000000e+00
  %6650 = fadd fast float %6617, 1.000000e+00
  %6651 = fadd fast float %6616, 1.000000e+00
  %6652 = fmul fast float %6081, %6015
  %6653 = fmul fast float %6081, %6014
  %6654 = fmul fast float %6081, %6013
  %6655 = fmul fast float %5769, %5131
  %6656 = fsub fast float 1.000000e+00, %6655
  %6657 = call float @dx.op.unary.f32(i32 7, float %6656)  ; Saturate(value)
  %6658 = fsub fast float 1.000000e+00, %6657
  %6659 = fadd fast float %6648, 0x3FDB6377A0000000
  %6660 = fmul fast float %6658, %6659
  %6661 = call float @dx.op.dot3.f32(i32 55, float %5194, float %5195, float %5196, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6662 = fadd fast float %6660, %6661
  %6663 = call float @dx.op.unary.f32(i32 7, float %6662)  ; Saturate(value)
  %6664 = call float @dx.op.binary.f32(i32 35, float %6663, float 0x3F847AE140000000)  ; FMax(a,b)
  %6665 = fmul fast float %6664, %6664
  %6666 = fmul fast float %6665, %6665
  %6667 = fmul fast float %6666, 0xC00A935000000000
  %6668 = call float @dx.op.unary.f32(i32 21, float %6667)  ; Exp(value)
  %6669 = fsub fast float 1.000000e+00, %6668
  %6670 = fmul fast float %6651, %6017
  %6671 = fmul fast float %6670, %6669
  %6672 = fmul fast float %6650, %6018
  %6673 = fmul fast float %6672, %6669
  %6674 = fmul fast float %6649, %6019
  %6675 = fmul fast float %6674, %6669
  %6676 = fadd fast float %6671, %6654
  %6677 = fmul fast float %6676, %5131
  %6678 = fadd fast float %6673, %6653
  %6679 = fmul fast float %6678, %5131
  %6680 = fadd fast float %6675, %6652
  %6681 = fmul fast float %6680, %5131
  %6682 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6683 = extractvalue %dx.types.CBufRet.f32 %6682, 3
  %6684 = fcmp fast oeq float %6683, 0.000000e+00
  br i1 %6684, label %8362, label %6685

; <label>:6685                                    ; preds = %6570
  %6686 = extractvalue %dx.types.CBufRet.f32 %6682, 0
  %6687 = extractvalue %dx.types.CBufRet.f32 %6682, 1
  %6688 = extractvalue %dx.types.CBufRet.f32 %6682, 2
  %6689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6690 = extractvalue %dx.types.CBufRet.f32 %6689, 0
  %6691 = extractvalue %dx.types.CBufRet.f32 %6689, 1
  %6692 = extractvalue %dx.types.CBufRet.f32 %6689, 2
  %6693 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6694 = extractvalue %dx.types.CBufRet.f32 %6693, 0
  %6695 = extractvalue %dx.types.CBufRet.f32 %6693, 1
  %6696 = call float @dx.op.dot3.f32(i32 55, float %6690, float %6691, float %6692, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6697 = select i1 %258, float %6694, float %6690
  %6698 = select i1 %258, float %6696, float %6691
  %6699 = select i1 %258, float %6695, float %6692
  %6700 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6701 = extractvalue %dx.types.CBufRet.f32 %6700, 2
  %6702 = fmul fast float %6701, %116
  %6703 = fmul fast float %6701, %117
  %6704 = fmul fast float %6701, %118
  %6705 = fadd fast float %6702, %164
  %6706 = fadd fast float %6703, %165
  %6707 = fadd fast float %6704, %166
  %6708 = fcmp fast olt float %6683, 0.000000e+00
  br i1 %6708, label %7804, label %6709

; <label>:6709                                    ; preds = %6685
  %6710 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6711 = extractvalue %dx.types.CBufRet.f32 %6710, 0
  %6712 = extractvalue %dx.types.CBufRet.f32 %6710, 1
  %6713 = extractvalue %dx.types.CBufRet.f32 %6710, 2
  %6714 = extractvalue %dx.types.CBufRet.f32 %6710, 3
  %6715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6716 = extractvalue %dx.types.CBufRet.f32 %6715, 0
  %6717 = extractvalue %dx.types.CBufRet.f32 %6715, 1
  %6718 = extractvalue %dx.types.CBufRet.f32 %6715, 2
  %6719 = extractvalue %dx.types.CBufRet.f32 %6715, 3
  %6720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6721 = extractvalue %dx.types.CBufRet.f32 %6720, 0
  %6722 = extractvalue %dx.types.CBufRet.f32 %6720, 1
  %6723 = extractvalue %dx.types.CBufRet.f32 %6720, 2
  %6724 = extractvalue %dx.types.CBufRet.f32 %6720, 3
  %6725 = fmul fast float %6711, %6705
  %6726 = call float @dx.op.tertiary.f32(i32 46, float %6706, float %6712, float %6725)  ; FMad(a,b,c)
  %6727 = call float @dx.op.tertiary.f32(i32 46, float %6707, float %6713, float %6726)  ; FMad(a,b,c)
  %6728 = fadd fast float %6727, %6714
  %6729 = fmul fast float %6716, %6705
  %6730 = call float @dx.op.tertiary.f32(i32 46, float %6706, float %6717, float %6729)  ; FMad(a,b,c)
  %6731 = call float @dx.op.tertiary.f32(i32 46, float %6707, float %6718, float %6730)  ; FMad(a,b,c)
  %6732 = fadd fast float %6731, %6719
  %6733 = fmul fast float %6721, %6705
  %6734 = call float @dx.op.tertiary.f32(i32 46, float %6706, float %6722, float %6733)  ; FMad(a,b,c)
  %6735 = call float @dx.op.tertiary.f32(i32 46, float %6707, float %6723, float %6734)  ; FMad(a,b,c)
  %6736 = fadd fast float %6735, %6724
  %6737 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6738 = extractvalue %dx.types.CBufRet.f32 %6737, 0
  %6739 = extractvalue %dx.types.CBufRet.f32 %6737, 1
  %6740 = extractvalue %dx.types.CBufRet.f32 %6737, 3
  %6741 = fmul fast float %6740, %6728
  %6742 = fmul fast float %6740, %6732
  %6743 = fadd fast float %6741, %6738
  %6744 = fadd fast float %6742, %6739
  %6745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6746 = extractvalue %dx.types.CBufRet.f32 %6745, 0
  %6747 = extractvalue %dx.types.CBufRet.f32 %6745, 1
  %6748 = extractvalue %dx.types.CBufRet.f32 %6745, 3
  %6749 = fmul fast float %6748, %6728
  %6750 = fmul fast float %6748, %6732
  %6751 = fadd fast float %6749, %6746
  %6752 = fadd fast float %6750, %6747
  %6753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6754 = extractvalue %dx.types.CBufRet.f32 %6753, 1
  %6755 = fsub fast float %6754, %6736
  %6756 = extractvalue %dx.types.CBufRet.f32 %6753, 2
  %6757 = fmul fast float %6755, %6756
  %6758 = fsub fast float 1.000000e+00, %6757
  %6759 = call float @dx.op.unary.f32(i32 7, float %6758)  ; Saturate(value)
  %6760 = extractvalue %dx.types.CBufRet.f32 %6745, 2
  %6761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6762 = extractvalue %dx.types.CBufRet.f32 %6761, 2
  %6763 = fadd fast float %6762, %6760
  %6764 = fcmp fast ogt float %6763, 0.000000e+00
  br i1 %6764, label %6765, label %6789

; <label>:6765                                    ; preds = %6709
  %6766 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6767 = extractvalue %dx.types.CBufRet.f32 %6766, 0
  %6768 = extractvalue %dx.types.CBufRet.f32 %6766, 1
  %6769 = fsub fast float %6751, %6767
  %6770 = fsub fast float %6752, %6768
  %6771 = fcmp fast olt float %6769, 0.000000e+00
  %6772 = fcmp fast olt float %6770, 0.000000e+00
  %6773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
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
  %6784 = extractvalue %dx.types.CBufRet.f32 %6700, 0
  %6785 = call float @dx.op.binary.f32(i32 35, float %6782, float %6783)  ; FMax(a,b)
  %6786 = fsub fast float %6784, %6785
  %6787 = call float @dx.op.unary.f32(i32 7, float %6786)  ; Saturate(value)
  %6788 = fmul fast float %6787, %6759
  br label %6789

; <label>:6789                                    ; preds = %6765, %6709
  %6790 = phi float [ %6788, %6765 ], [ 0.000000e+00, %6709 ]
  %6791 = extractvalue %dx.types.CBufRet.f32 %6737, 2
  %6792 = extractvalue %dx.types.CBufRet.f32 %6761, 1
  %6793 = fadd fast float %6792, %6791
  %6794 = fcmp fast ogt float %6793, 0.000000e+00
  %6795 = extractvalue %dx.types.CBufRet.f32 %6700, 0
  br i1 %6794, label %6796, label %6819

; <label>:6796                                    ; preds = %6789
  %6797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6798 = extractvalue %dx.types.CBufRet.f32 %6797, 0
  %6799 = extractvalue %dx.types.CBufRet.f32 %6797, 1
  %6800 = fsub fast float %6743, %6798
  %6801 = fsub fast float %6744, %6799
  %6802 = fcmp fast olt float %6800, 0.000000e+00
  %6803 = fcmp fast olt float %6801, 0.000000e+00
  %6804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6805 = extractvalue %dx.types.CBufRet.f32 %6804, 0
  %6806 = extractvalue %dx.types.CBufRet.f32 %6804, 1
  %6807 = extractvalue %dx.types.CBufRet.f32 %6804, 2
  %6808 = extractvalue %dx.types.CBufRet.f32 %6804, 3
  %6809 = select i1 %6802, float %6805, float %6807
  %6810 = select i1 %6803, float %6806, float %6808
  %6811 = fmul fast float %6809, %6800
  %6812 = fmul fast float %6810, %6801
  %6813 = call float @dx.op.unary.f32(i32 6, float %6811)  ; FAbs(value)
  %6814 = call float @dx.op.unary.f32(i32 6, float %6812)  ; FAbs(value)
  %6815 = call float @dx.op.binary.f32(i32 35, float %6813, float %6814)  ; FMax(a,b)
  %6816 = fsub fast float %6795, %6815
  %6817 = call float @dx.op.unary.f32(i32 7, float %6816)  ; Saturate(value)
  %6818 = fmul fast float %6817, %6759
  br label %6819

; <label>:6819                                    ; preds = %6796, %6789
  %6820 = phi float [ %6818, %6796 ], [ 0.000000e+00, %6789 ]
  %6821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6822 = extractvalue %dx.types.CBufRet.f32 %6821, 1
  %6823 = call float @dx.op.unary.f32(i32 7, float %6822)  ; Saturate(value)
  %6824 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6825 = extractvalue %dx.types.CBufRet.f32 %6824, 0
  %6826 = extractvalue %dx.types.CBufRet.f32 %6824, 1
  %6827 = fsub fast float %6728, %6825
  %6828 = fsub fast float %6732, %6826
  %6829 = fcmp fast olt float %6827, 0.000000e+00
  %6830 = fcmp fast olt float %6828, 0.000000e+00
  %6831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6832 = extractvalue %dx.types.CBufRet.f32 %6831, 0
  %6833 = extractvalue %dx.types.CBufRet.f32 %6831, 1
  %6834 = extractvalue %dx.types.CBufRet.f32 %6831, 2
  %6835 = extractvalue %dx.types.CBufRet.f32 %6831, 3
  %6836 = select i1 %6829, float %6832, float %6834
  %6837 = select i1 %6830, float %6833, float %6835
  %6838 = fmul fast float %6836, %6827
  %6839 = fmul fast float %6837, %6828
  %6840 = call float @dx.op.unary.f32(i32 6, float %6838)  ; FAbs(value)
  %6841 = call float @dx.op.unary.f32(i32 6, float %6839)  ; FAbs(value)
  %6842 = call float @dx.op.binary.f32(i32 35, float %6840, float %6841)  ; FMax(a,b)
  %6843 = fsub fast float %6795, %6842
  %6844 = call float @dx.op.unary.f32(i32 7, float %6843)  ; Saturate(value)
  %6845 = call float @dx.op.binary.f32(i32 36, float %6844, float %6823)  ; FMin(a,b)
  %6846 = fmul fast float %6845, %6759
  %6847 = fsub fast float %6820, %6846
  %6848 = fsub fast float %6790, %6820
  %6849 = fsub fast float %6848, %6846
  %6850 = call float @dx.op.binary.f32(i32 35, float %6820, float %6790)  ; FMax(a,b)
  %6851 = call float @dx.op.binary.f32(i32 35, float %6846, float %6850)  ; FMax(a,b)
  %6852 = fcmp fast olt float %6851, 1.000000e+00
  br i1 %6852, label %6853, label %7251, !dx.controlflow.hints !103

; <label>:6853                                    ; preds = %6819
  %6854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6855 = extractvalue %dx.types.CBufRet.f32 %6854, 0
  %6856 = fcmp fast une float %6855, 0.000000e+00
  br i1 %6856, label %6857, label %7251, !dx.controlflow.hints !104

; <label>:6857                                    ; preds = %6853
  %6858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6859 = extractvalue %dx.types.CBufRet.f32 %6858, 0
  %6860 = extractvalue %dx.types.CBufRet.f32 %6858, 1
  %6861 = extractvalue %dx.types.CBufRet.f32 %6858, 2
  %6862 = extractvalue %dx.types.CBufRet.f32 %6858, 3
  %6863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6864 = extractvalue %dx.types.CBufRet.f32 %6863, 0
  %6865 = extractvalue %dx.types.CBufRet.f32 %6863, 1
  %6866 = extractvalue %dx.types.CBufRet.f32 %6863, 2
  %6867 = extractvalue %dx.types.CBufRet.f32 %6863, 3
  %6868 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6869 = extractvalue %dx.types.CBufRet.f32 %6868, 0
  %6870 = extractvalue %dx.types.CBufRet.f32 %6868, 1
  %6871 = extractvalue %dx.types.CBufRet.f32 %6868, 2
  %6872 = extractvalue %dx.types.CBufRet.f32 %6868, 3
  %6873 = fmul fast float %6859, %6705
  %6874 = call float @dx.op.tertiary.f32(i32 46, float %6706, float %6860, float %6873)  ; FMad(a,b,c)
  %6875 = call float @dx.op.tertiary.f32(i32 46, float %6707, float %6861, float %6874)  ; FMad(a,b,c)
  %6876 = fadd fast float %6875, %6862
  %6877 = fmul fast float %6864, %6705
  %6878 = call float @dx.op.tertiary.f32(i32 46, float %6706, float %6865, float %6877)  ; FMad(a,b,c)
  %6879 = call float @dx.op.tertiary.f32(i32 46, float %6707, float %6866, float %6878)  ; FMad(a,b,c)
  %6880 = fadd fast float %6879, %6867
  %6881 = fmul fast float %6869, %6705
  %6882 = call float @dx.op.tertiary.f32(i32 46, float %6706, float %6870, float %6881)  ; FMad(a,b,c)
  %6883 = call float @dx.op.tertiary.f32(i32 46, float %6707, float %6871, float %6882)  ; FMad(a,b,c)
  %6884 = fadd fast float %6883, %6872
  %6885 = fcmp fast oge float %6876, 1.000000e+00
  %6886 = fcmp fast oge float %6880, 1.000000e+00
  %6887 = or i1 %6885, %6886
  %6888 = fcmp fast olt float %6876, 0.000000e+00
  %6889 = fcmp fast olt float %6880, 0.000000e+00
  %6890 = or i1 %6888, %6889
  %6891 = or i1 %6887, %6890
  br i1 %6891, label %7251, label %6892, !dx.controlflow.hints !105

; <label>:6892                                    ; preds = %6857
  %6893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6894 = extractvalue %dx.types.CBufRet.f32 %6893, 0
  %6895 = extractvalue %dx.types.CBufRet.f32 %6893, 1
  %6896 = extractvalue %dx.types.CBufRet.f32 %6893, 2
  %6897 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6898 = extractvalue %dx.types.CBufRet.i32 %6897, 2
  %6899 = uitofp i32 %6898 to float
  %6900 = extractvalue %dx.types.CBufRet.i32 %6897, 3
  %6901 = uitofp i32 %6900 to float
  %6902 = extractvalue %dx.types.CBufRet.f32 %6893, 3
  %6903 = fmul fast float %6902, 2.000000e+00
  %6904 = fsub fast float %6876, %6894
  %6905 = fsub fast float %6880, %6895
  %6906 = fmul fast float %6903, %6904
  %6907 = fmul fast float %6903, %6905
  %6908 = fdiv fast float 1.000000e+00, %6688
  %6909 = fmul fast float %6907, %6908
  %6910 = call float @dx.op.unary.f32(i32 6, float %6909)  ; FAbs(value)
  %6911 = fmul fast float %6896, %6707
  %6912 = fmul fast float %6911, %6903
  %6913 = call float @dx.op.unary.f32(i32 6, float %6912)  ; FAbs(value)
  %6914 = call float @dx.op.unary.f32(i32 6, float %6906)  ; FAbs(value)
  %6915 = call float @dx.op.binary.f32(i32 35, float %6913, float %6910)  ; FMax(a,b)
  %6916 = call float @dx.op.binary.f32(i32 35, float %6914, float %6915)  ; FMax(a,b)
  %6917 = fmul fast float %6916, 2.000000e+00
  %6918 = call float @dx.op.unary.f32(i32 23, float %6917)  ; Log(value)
  %6919 = call float @dx.op.binary.f32(i32 35, float %6918, float %6899)  ; FMax(a,b)
  %6920 = call float @dx.op.unary.f32(i32 22, float %6919)  ; Frc(value)
  %6921 = fadd fast float %6920, 0xBFEA666660000000
  %6922 = fmul fast float %6921, 8.000000e+00
  %6923 = call float @dx.op.unary.f32(i32 7, float %6922)  ; Saturate(value)
  %6924 = call float @dx.op.unary.f32(i32 27, float %6919)  ; Round_ni(value)
  %6925 = fadd fast float %6924, %6923
  %6926 = call float @dx.op.binary.f32(i32 36, float %6925, float %6901)  ; FMin(a,b)
  %6927 = call float @dx.op.unary.f32(i32 27, float %6926)  ; Round_ni(value)
  %6928 = fsub fast float -0.000000e+00, %6927
  %6929 = call float @dx.op.unary.f32(i32 21, float %6928)  ; Exp(value)
  %6930 = fmul fast float %6929, %6903
  %6931 = fmul fast float %6930, %6876
  %6932 = fmul fast float %6930, %6880
  %6933 = fmul fast float %6931, 2.500000e-01
  %6934 = fmul fast float %6932, 2.500000e-01
  %6935 = fadd fast float %6933, 5.000000e-01
  %6936 = fadd fast float %6934, 5.000000e-01
  %6937 = fsub fast float %6901, %6899
  %6938 = fptoui float %6937 to i32
  %6939 = add i32 %6938, 320
  %6940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 %6939)  ; CBufferLoadLegacy(handle,regIndex)
  %6941 = extractvalue %dx.types.CBufRet.f32 %6940, 0
  %6942 = extractvalue %dx.types.CBufRet.f32 %6940, 1
  %6943 = fcmp fast une float %6926, %6901
  %6944 = fsub fast float %6876, %6941
  %6945 = fsub fast float %6880, %6942
  %6946 = call float @dx.op.unary.f32(i32 6, float %6944)  ; FAbs(value)
  %6947 = call float @dx.op.unary.f32(i32 6, float %6945)  ; FAbs(value)
  %6948 = fmul fast float %6946, %6930
  %6949 = fmul fast float %6947, %6930
  %6950 = fcmp fast olt float %6948, 1.000000e+00
  %6951 = fcmp fast olt float %6949, 1.000000e+00
  %6952 = and i1 %6950, %6951
  %6953 = or i1 %6943, %6952
  br i1 %6953, label %6954, label %7251, !dx.controlflow.hints !106

; <label>:6954                                    ; preds = %6892
  %6955 = fmul fast float %6932, 5.000000e-01
  %6956 = fmul fast float %6931, 5.000000e-01
  %6957 = fadd fast float %6955, 5.000000e-01
  %6958 = fadd fast float %6956, 5.000000e-01
  %6959 = sitofp i32 %6898 to float
  %6960 = fsub fast float %6926, %6959
  %6961 = call float @dx.op.unary.f32(i32 27, float %6960)  ; Round_ni(value)
  %6962 = call float @dx.op.unary.f32(i32 22, float %6926)  ; Frc(value)
  %6963 = call float @dx.op.unary.f32(i32 22, float %6958)  ; Frc(value)
  %6964 = call float @dx.op.unary.f32(i32 22, float %6957)  ; Frc(value)
  %6965 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %53, float %6963, float %6964, float %6961, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6966 = extractvalue %dx.types.ResRet.f32 %6965, 0
  %6967 = extractvalue %dx.types.ResRet.f32 %6965, 1
  %6968 = extractvalue %dx.types.ResRet.f32 %6965, 2
  %6969 = extractvalue %dx.types.ResRet.f32 %6965, 3
  %6970 = fcmp fast ogt float %6962, 0.000000e+00
  br i1 %6970, label %6971, label %6992, !dx.controlflow.hints !107

; <label>:6971                                    ; preds = %6954
  %6972 = fadd fast float %6961, 1.000000e+00
  %6973 = call float @dx.op.unary.f32(i32 22, float %6935)  ; Frc(value)
  %6974 = call float @dx.op.unary.f32(i32 22, float %6936)  ; Frc(value)
  %6975 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %53, float %6973, float %6974, float %6972, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6976 = extractvalue %dx.types.ResRet.f32 %6975, 0
  %6977 = extractvalue %dx.types.ResRet.f32 %6975, 1
  %6978 = extractvalue %dx.types.ResRet.f32 %6975, 2
  %6979 = extractvalue %dx.types.ResRet.f32 %6975, 3
  %6980 = fsub fast float %6976, %6966
  %6981 = fsub fast float %6977, %6967
  %6982 = fsub fast float %6978, %6968
  %6983 = fsub fast float %6979, %6969
  %6984 = fmul fast float %6980, %6962
  %6985 = fmul fast float %6981, %6962
  %6986 = fmul fast float %6982, %6962
  %6987 = fmul fast float %6983, %6962
  %6988 = fadd fast float %6984, %6966
  %6989 = fadd fast float %6985, %6967
  %6990 = fadd fast float %6986, %6968
  %6991 = fadd fast float %6987, %6969
  br label %6992

; <label>:6992                                    ; preds = %6971, %6954
  %6993 = phi float [ %6988, %6971 ], [ %6966, %6954 ]
  %6994 = phi float [ %6989, %6971 ], [ %6967, %6954 ]
  %6995 = phi float [ %6990, %6971 ], [ %6968, %6954 ]
  %6996 = phi float [ %6991, %6971 ], [ %6969, %6954 ]
  %6997 = fadd fast float %6993, -5.000000e-01
  %6998 = fadd fast float %6995, -5.000000e-01
  %6999 = fmul fast float %6997, 0xBFD5555560000000
  %7000 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6998, float %6999)  ; FMad(a,b,c)
  %7001 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6994, float 0.000000e+00)  ; FMad(a,b,c)
  %7002 = fadd fast float %7001, %6996
  %7003 = fmul fast float %6997, -7.500000e-01
  %7004 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6998, float %7003)  ; FMad(a,b,c)
  %7005 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6994, float 0.000000e+00)  ; FMad(a,b,c)
  %7006 = fadd fast float %7005, %6996
  %7007 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %7008 = extractvalue %dx.types.CBufRet.f32 %7007, 0
  %7009 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %7010 = extractvalue %dx.types.CBufRet.f32 %7009, 0
  %7011 = extractvalue %dx.types.CBufRet.f32 %7009, 1
  %7012 = extractvalue %dx.types.CBufRet.f32 %7009, 2
  %7013 = extractvalue %dx.types.CBufRet.f32 %7009, 3
  %7014 = fsub fast float %7010, %7000
  %7015 = fsub fast float %7011, %7002
  %7016 = fsub fast float %7012, %7004
  %7017 = fsub fast float %7013, %7006
  %7018 = fmul fast float %7014, %7008
  %7019 = fmul fast float %7015, %7008
  %7020 = fmul fast float %7016, %7008
  %7021 = fmul fast float %7017, %7008
  %7022 = fadd fast float %7018, %7000
  %7023 = fadd fast float %7019, %7002
  %7024 = fadd fast float %7020, %7004
  %7025 = fadd fast float %7021, %7006
  %7026 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %7027 = extractvalue %dx.types.ResRet.i32 %7026, 0
  %7028 = and i32 %7027, 536870911
  %7029 = uitofp i32 %7028 to float
  %7030 = fmul fast float %7029, %6876
  %7031 = fmul fast float %7029, %6880
  %7032 = fptoui float %7030 to i32
  %7033 = fptoui float %7031 to i32
  %7034 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %7035 = extractvalue %dx.types.ResRet.i32 %7034, 0
  %7036 = and i32 %7035, 31
  %7037 = lshr i32 %7032, %7036
  %7038 = lshr i32 %7033, %7036
  %7039 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %7040 = extractvalue %dx.types.ResRet.i32 %7039, 0
  %7041 = and i32 %7040, 31
  %7042 = shl i32 1, %7041
  %7043 = call i32 @dx.op.binary.i32(i32 40, i32 %7042, i32 4)  ; UMin(a,b)
  %7044 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %7045 = extractvalue %dx.types.ResRet.i32 %7044, 0
  %7046 = extractvalue %dx.types.ResRet.i32 %7044, 1
  %7047 = icmp eq i32 %7043, 0
  br i1 %7047, label %7089, label %7048

; <label>:7048                                    ; preds = %6992
  br label %7049

; <label>:7049                                    ; preds = %7077, %7048
  %7050 = phi i32 [ %7080, %7077 ], [ 0, %7048 ]
  %7051 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %7052 = extractvalue %dx.types.ResRet.i32 %7051, 0
  %7053 = lshr i32 %7052, 16
  %7054 = and i32 %7053, 31
  %7055 = shl i32 %7038, %7054
  %7056 = add i32 %7055, %7037
  %7057 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %7058 = extractvalue %dx.types.ResRet.i32 %7057, 0
  %7059 = and i32 %7058, 31
  %7060 = shl i32 %7056, %7059
  %7061 = add i32 %7060, %7050
  %7062 = shl i32 %7061, 2
  %7063 = add i32 %7062, 32
  %7064 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7063, i32 undef)  ; BufferLoad(srv,index,wot)
  %7065 = extractvalue %dx.types.ResRet.i32 %7064, 0
  %7066 = icmp slt i32 %7065, 0
  %7067 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 %7050
  %7068 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 %7050
  %7069 = bitcast float* %7067 to i32*
  %7070 = bitcast float* %7068 to i32*
  br i1 %7066, label %7071, label %7077

; <label>:7071                                    ; preds = %7049
  %7072 = and i32 %7065, 1073741823
  %7073 = add nuw nsw i32 %7072, 20
  %7074 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7073, i32 undef)  ; BufferLoad(srv,index,wot)
  %7075 = extractvalue %dx.types.ResRet.i32 %7074, 0
  %7076 = extractvalue %dx.types.ResRet.i32 %7074, 1
  br label %7077

; <label>:7077                                    ; preds = %7071, %7049
  %7078 = phi i32 [ %7075, %7071 ], [ %7045, %7049 ]
  %7079 = phi i32 [ %7076, %7071 ], [ %7046, %7049 ]
  store i32 %7078, i32* %7069, align 4
  store i32 %7079, i32* %7070, align 4
  %7080 = add nuw i32 %7050, 1
  %7081 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %7082 = extractvalue %dx.types.CBufRet.i32 %7081, 2
  %7083 = icmp eq i32 %7082, 0
  %7084 = icmp ugt i32 %7065, -1073741825
  %7085 = and i1 %7084, %7083
  %7086 = icmp ult i32 %7080, %7043
  %7087 = and i1 %7085, %7086
  br i1 %7087, label %7049, label %7088

; <label>:7088                                    ; preds = %7077
  br label %7089

; <label>:7089                                    ; preds = %7088, %6992
  %7090 = phi i32 [ 0, %6992 ], [ %7080, %7088 ]
  %7091 = extractvalue %dx.types.CBufRet.f32 %6854, 2
  %7092 = fptoui float %7091 to i32
  %7093 = icmp eq i32 %7092, 0
  br i1 %7093, label %7145, label %7094

; <label>:7094                                    ; preds = %7089
  br label %7095

; <label>:7095                                    ; preds = %7140, %7094
  %7096 = phi i32 [ %7141, %7140 ], [ %7090, %7094 ]
  %7097 = phi i32 [ %7142, %7140 ], [ 0, %7094 ]
  %7098 = lshr i32 %7097, 2
  %7099 = and i32 %7097, 3
  %7100 = add nuw nsw i32 %7098, 83
  %7101 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 %7100)  ; CBufferLoadLegacy(handle,regIndex)
  %7102 = extractvalue %dx.types.CBufRet.i32 %7101, 0
  %7103 = extractvalue %dx.types.CBufRet.i32 %7101, 1
  %7104 = extractvalue %dx.types.CBufRet.i32 %7101, 2
  %7105 = extractvalue %dx.types.CBufRet.i32 %7101, 3
  %7106 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 0
  store i32 %7102, i32* %7106, align 4
  %7107 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 1
  store i32 %7103, i32* %7107, align 4
  %7108 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 2
  store i32 %7104, i32* %7108, align 4
  %7109 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 3
  store i32 %7105, i32* %7109, align 4
  %7110 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 %7099
  %7111 = load i32, i32* %7110, align 4, !tbaa !108, !noalias !112
  %7112 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %7113 = extractvalue %dx.types.ResRet.i32 %7112, 0
  %7114 = lshr i32 %7113, 16
  %7115 = and i32 %7114, 31
  %7116 = shl i32 %7038, %7115
  %7117 = add i32 %7116, %7037
  %7118 = shl i32 %7117, 2
  %7119 = add i32 %7118, %7111
  %7120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7119, i32 undef)  ; BufferLoad(srv,index,wot)
  %7121 = extractvalue %dx.types.ResRet.i32 %7120, 0
  %7122 = icmp eq i32 %7121, 0
  br i1 %7122, label %7140, label %7123

; <label>:7123                                    ; preds = %7095
  %7124 = icmp slt i32 %7121, 0
  %7125 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 %7096
  %7126 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 %7096
  %7127 = bitcast float* %7125 to i32*
  %7128 = bitcast float* %7126 to i32*
  br i1 %7124, label %7129, label %7136

; <label>:7129                                    ; preds = %7123
  %7130 = and i32 %7121, 1073741823
  %7131 = add i32 %7111, 20
  %7132 = add i32 %7131, %7130
  %7133 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7132, i32 undef)  ; BufferLoad(srv,index,wot)
  %7134 = extractvalue %dx.types.ResRet.i32 %7133, 0
  %7135 = extractvalue %dx.types.ResRet.i32 %7133, 1
  br label %7136

; <label>:7136                                    ; preds = %7129, %7123
  %7137 = phi i32 [ %7134, %7129 ], [ %7045, %7123 ]
  %7138 = phi i32 [ %7135, %7129 ], [ %7046, %7123 ]
  store i32 %7137, i32* %7127, align 4
  store i32 %7138, i32* %7128, align 4
  %7139 = add i32 %7096, 1
  br label %7140

; <label>:7140                                    ; preds = %7136, %7095
  %7141 = phi i32 [ %7096, %7095 ], [ %7139, %7136 ]
  %7142 = add nuw i32 %7097, 1
  %7143 = icmp eq i32 %7142, %7092
  br i1 %7143, label %7144, label %7095

; <label>:7144                                    ; preds = %7140
  br label %7145

; <label>:7145                                    ; preds = %7144, %7089
  %7146 = phi i32 [ %7090, %7089 ], [ %7141, %7144 ]
  %7147 = icmp eq i32 %7146, 1
  %7148 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 0
  %7149 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 0
  br i1 %7147, label %7150, label %7153

; <label>:7150                                    ; preds = %7145
  %7151 = load float, float* %7148, align 4
  %7152 = load float, float* %7149, align 4
  br label %7180

; <label>:7153                                    ; preds = %7145
  %7154 = load float, float* %7148, align 4
  %7155 = load float, float* %7149, align 4
  %7156 = fdiv fast float 1.000000e+00, %7155
  %7157 = fsub fast float %7154, %7156
  %7158 = icmp ugt i32 %7146, 1
  br i1 %7158, label %7159, label %7175

; <label>:7159                                    ; preds = %7153
  br label %7160

; <label>:7160                                    ; preds = %7160, %7159
  %7161 = phi float [ %7170, %7160 ], [ %7157, %7159 ]
  %7162 = phi float [ %7171, %7160 ], [ %7154, %7159 ]
  %7163 = phi i32 [ %7172, %7160 ], [ 1, %7159 ]
  %7164 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 %7163
  %7165 = load float, float* %7164, align 4
  %7166 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 %7163
  %7167 = load float, float* %7166, align 4
  %7168 = fdiv fast float 1.000000e+00, %7167
  %7169 = fsub fast float %7165, %7168
  %7170 = call float @dx.op.binary.f32(i32 36, float %7161, float %7169)  ; FMin(a,b)
  %7171 = call float @dx.op.binary.f32(i32 35, float %7162, float %7165)  ; FMax(a,b)
  %7172 = add nuw i32 %7163, 1
  %7173 = icmp eq i32 %7172, %7146
  br i1 %7173, label %7174, label %7160

; <label>:7174                                    ; preds = %7160
  br label %7175

; <label>:7175                                    ; preds = %7174, %7153
  %7176 = phi float [ %7157, %7153 ], [ %7170, %7174 ]
  %7177 = phi float [ %7154, %7153 ], [ %7171, %7174 ]
  %7178 = fsub fast float %7177, %7176
  %7179 = fdiv fast float 1.000000e+00, %7178
  br label %7180

; <label>:7180                                    ; preds = %7175, %7150
  %7181 = phi float [ %7151, %7150 ], [ %7177, %7175 ]
  %7182 = phi float [ %7152, %7150 ], [ %7179, %7175 ]
  %7183 = fadd fast float %6884, %7181
  %7184 = fmul fast float %7183, %7182
  %7185 = call float @dx.op.unary.f32(i32 7, float %7184)  ; Saturate(value)
  %7186 = fmul fast float %7185, 2.000000e+00
  %7187 = fsub fast float 1.000000e+00, %7186
  %7188 = fmul fast float %7022, %7022
  %7189 = fsub fast float %7023, %7188
  %7190 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %7189)  ; FMax(a,b)
  %7191 = fdiv fast float 1.000000e+00, %7190
  %7192 = fmul fast float %7023, %7022
  %7193 = fsub fast float %7024, %7192
  %7194 = fsub fast float %7187, %7022
  %7195 = fmul fast float %7187, %7187
  %7196 = fsub fast float %7195, %7023
  %7197 = fmul fast float %7191, %7193
  %7198 = fmul fast float %7197, %7194
  %7199 = fsub fast float %7196, %7198
  %7200 = fmul fast float %7023, %7023
  %7201 = fsub fast float %7025, %7200
  %7202 = fmul fast float %7193, %7193
  %7203 = fmul fast float %7202, %7191
  %7204 = fsub fast float %7201, %7203
  %7205 = fdiv fast float %7199, %7204
  %7206 = fmul fast float %7205, %7193
  %7207 = fsub fast float %7194, %7206
  %7208 = fmul fast float %7207, %7191
  %7209 = fmul fast float %7208, %7022
  %7210 = fsub fast float 1.000000e+00, %7209
  %7211 = fmul fast float %7205, %7023
  %7212 = fsub fast float %7210, %7211
  %7213 = fmul fast float %7208, %7208
  %7214 = fmul fast float %7205, 4.000000e+00
  %7215 = fmul fast float %7214, %7212
  %7216 = fsub fast float %7213, %7215
  %7217 = call float @dx.op.unary.f32(i32 24, float %7216)  ; Sqrt(value)
  %7218 = fcmp fast oge float %7208, 0.000000e+00
  %7219 = fsub fast float -0.000000e+00, %7217
  %7220 = select i1 %7218, float %7219, float %7217
  %7221 = fsub fast float %7220, %7208
  %7222 = fdiv fast float %7221, %7205
  %7223 = fdiv fast float %7212, %7221
  %7224 = fmul fast float %7222, 5.000000e-01
  %7225 = fmul fast float %7223, 2.000000e+00
  %7226 = select i1 %7218, float %7224, float %7225
  %7227 = select i1 %7218, float %7225, float %7224
  %7228 = call float @dx.op.binary.f32(i32 35, float %7226, float %7227)  ; FMax(a,b)
  %7229 = call float @dx.op.binary.f32(i32 36, float %7226, float %7227)  ; FMin(a,b)
  %7230 = fcmp fast ogt float %7187, %7228
  %7231 = fsub fast float %7187, %7229
  %7232 = fsub fast float %7187, %7228
  %7233 = fsub fast float %7228, %7229
  %7234 = select i1 %7230, float %7232, float %7233
  %7235 = fmul float %7231, %7234
  %7236 = select i1 %7230, float %7229, float %7187
  %7237 = fcmp fast ogt float %7187, %7229
  %7238 = fmul fast float %7236, %7228
  %7239 = fadd fast float %7236, %7228
  %7240 = fmul fast float %7239, %7022
  %7241 = fadd fast float %7238, %7023
  %7242 = fsub fast float %7241, %7240
  %7243 = fdiv fast float %7242, %7235
  %7244 = select i1 %7237, float %7243, float 0.000000e+00
  %7245 = fsub fast float 1.000000e+00, %7244
  %7246 = select i1 %7230, float %7245, float %7244
  %7247 = call float @dx.op.unary.f32(i32 7, float %7246)  ; Saturate(value)
  %7248 = extractvalue %dx.types.CBufRet.f32 %7007, 3
  %7249 = fmul fast float %7248, %7247
  %7250 = fsub fast float 1.000000e+00, %7249
  br label %7251

; <label>:7251                                    ; preds = %7180, %6892, %6857, %6853, %6819
  %7252 = phi float [ 1.000000e+00, %6819 ], [ %7250, %7180 ], [ 1.000000e+00, %6857 ], [ 1.000000e+00, %6892 ], [ 1.000000e+00, %6853 ]
  %7253 = fcmp fast ogt float %6849, 0.000000e+00
  br i1 %7253, label %7254, label %7416, !dx.controlflow.hints !121

; <label>:7254                                    ; preds = %7251
  %7255 = fadd fast float %6762, %6736
  %7256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7257 = extractvalue %dx.types.CBufRet.f32 %7256, 2
  %7258 = extractvalue %dx.types.CBufRet.f32 %7256, 3
  %7259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7260 = extractvalue %dx.types.CBufRet.f32 %7259, 2
  %7261 = call float @dx.op.binary.f32(i32 35, float %7255, float 0.000000e+00)  ; FMax(a,b)
  %7262 = fadd fast float %7261, 0x3F10000000000000
  %7263 = fcmp fast oeq float %7260, 0.000000e+00
  br i1 %7263, label %7264, label %7331

; <label>:7264                                    ; preds = %7254
  %7265 = extractvalue %dx.types.CBufRet.f32 %7256, 1
  %7266 = extractvalue %dx.types.CBufRet.f32 %7256, 0
  %7267 = fmul fast float %7266, %6751
  %7268 = fmul fast float %7265, %6752
  %7269 = fadd fast float %7267, 5.000000e-01
  %7270 = call float @dx.op.unary.f32(i32 27, float %7269)  ; Round_ni(value)
  %7271 = fadd fast float %7268, 5.000000e-01
  %7272 = call float @dx.op.unary.f32(i32 27, float %7271)  ; Round_ni(value)
  %7273 = fsub fast float %7269, %7270
  %7274 = fsub fast float %7271, %7272
  %7275 = fadd fast float %7270, -5.000000e-01
  %7276 = fadd fast float %7272, -5.000000e-01
  %7277 = fmul fast float %7273, 2.000000e+00
  %7278 = fsub fast float 3.000000e+00, %7277
  %7279 = fadd fast float %7277, 1.000000e+00
  %7280 = fsub fast float 2.000000e+00, %7273
  %7281 = bitcast float %7278 to i32
  %7282 = sub nsw i32 2129859010, %7281
  %7283 = bitcast i32 %7282 to float
  %7284 = fmul fast float %7283, %7280
  %7285 = fadd fast float %7284, -1.000000e+00
  %7286 = bitcast float %7279 to i32
  %7287 = sub nsw i32 2129859010, %7286
  %7288 = bitcast i32 %7287 to float
  %7289 = fmul fast float %7288, %7273
  %7290 = fadd fast float %7289, 1.000000e+00
  %7291 = fmul fast float %7274, 2.000000e+00
  %7292 = fsub fast float 3.000000e+00, %7291
  %7293 = fadd fast float %7291, 1.000000e+00
  %7294 = fsub fast float 2.000000e+00, %7274
  %7295 = bitcast float %7292 to i32
  %7296 = sub nsw i32 2129859010, %7295
  %7297 = bitcast i32 %7296 to float
  %7298 = fmul fast float %7297, %7294
  %7299 = fadd fast float %7298, -1.000000e+00
  %7300 = bitcast float %7293 to i32
  %7301 = sub nsw i32 2129859010, %7300
  %7302 = bitcast i32 %7301 to float
  %7303 = fmul fast float %7302, %7274
  %7304 = fadd fast float %7303, 1.000000e+00
  %7305 = fadd fast float %7285, %7275
  %7306 = fmul fast float %7305, %7257
  %7307 = fadd fast float %7299, %7276
  %7308 = fmul fast float %7307, %7258
  %7309 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %7306, float %7308, float undef, float undef, i32 0, i32 0, i32 undef, float %7262)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7310 = extractvalue %dx.types.ResRet.f32 %7309, 0
  %7311 = fmul fast float %7310, %7278
  %7312 = fadd fast float %7290, %7275
  %7313 = fmul fast float %7312, %7257
  %7314 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %7313, float %7308, float undef, float undef, i32 0, i32 0, i32 undef, float %7262)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7315 = extractvalue %dx.types.ResRet.f32 %7314, 0
  %7316 = fmul fast float %7315, %7279
  %7317 = fadd fast float %7304, %7276
  %7318 = fmul fast float %7317, %7258
  %7319 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %7306, float %7318, float undef, float undef, i32 0, i32 0, i32 undef, float %7262)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7320 = extractvalue %dx.types.ResRet.f32 %7319, 0
  %7321 = fmul fast float %7320, %7278
  %7322 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %7313, float %7318, float undef, float undef, i32 0, i32 0, i32 undef, float %7262)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7323 = extractvalue %dx.types.ResRet.f32 %7322, 0
  %7324 = fmul fast float %7323, %7279
  %7325 = fadd fast float %7324, %7321
  %7326 = fmul fast float %7325, %7293
  %7327 = fadd fast float %7316, %7311
  %7328 = fmul fast float %7327, %7292
  %7329 = fadd fast float %7328, %7326
  %7330 = fmul fast float %7329, 6.250000e-02
  br label %7416

; <label>:7331                                    ; preds = %7254
  %7332 = fmul fast float %269, 0x401921FB60000000
  %7333 = call float @dx.op.unary.f32(i32 13, float %7332)  ; Sin(value)
  %7334 = call float @dx.op.unary.f32(i32 12, float %7332)  ; Cos(value)
  %7335 = fsub fast float -0.000000e+00, %7333
  br label %7336

; <label>:7336                                    ; preds = %7385, %7331
  %7337 = phi float [ 0.000000e+00, %7331 ], [ %7380, %7385 ]
  %7338 = phi float [ 0.000000e+00, %7331 ], [ %7382, %7385 ]
  %7339 = phi i32 [ 0, %7331 ], [ %7386, %7385 ]
  %7340 = mul i32 %7339, 2
  %7341 = add i32 0, %7340
  %7342 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7341
  %7343 = load float, float* %7342, align 4
  %7344 = mul i32 %7339, 2
  %7345 = add i32 1, %7344
  %7346 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7345
  %7347 = load float, float* %7346, align 4
  %7348 = fmul fast float %7343, %7334
  %7349 = call float @dx.op.tertiary.f32(i32 46, float %7347, float %7335, float %7348)  ; FMad(a,b,c)
  %7350 = fmul fast float %7343, %7333
  %7351 = call float @dx.op.tertiary.f32(i32 46, float %7347, float %7334, float %7350)  ; FMad(a,b,c)
  %7352 = fmul fast float %7349, %7260
  %7353 = fmul fast float %7351, %7260
  %7354 = fadd fast float %7352, %6751
  %7355 = fadd fast float %7353, %6752
  %7356 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %55, float %7354, float %7355, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7357 = extractvalue %dx.types.ResRet.f32 %7356, 0
  %7358 = extractvalue %dx.types.ResRet.f32 %7356, 1
  %7359 = extractvalue %dx.types.ResRet.f32 %7356, 2
  %7360 = extractvalue %dx.types.ResRet.f32 %7356, 3
  %7361 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 0
  store float %7357, float* %7361, align 4
  %7362 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 1
  store float %7358, float* %7362, align 4
  %7363 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 2
  store float %7359, float* %7363, align 4
  %7364 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 3
  store float %7360, float* %7364, align 4
  %7365 = fsub fast float %7357, %7262
  %7366 = fcmp fast olt float %7365, 0.000000e+00
  %7367 = select i1 %7366, float 0.000000e+00, float 1.000000e+00
  %7368 = fadd fast float %7367, %7337
  %7369 = fmul fast float %7367, %7365
  %7370 = fadd fast float %7369, %7338
  br label %7371

; <label>:7371                                    ; preds = %7371, %7336
  %7372 = phi i32 [ 1, %7336 ], [ %7383, %7371 ]
  %7373 = phi float [ %7370, %7336 ], [ %7382, %7371 ]
  %7374 = phi float [ %7368, %7336 ], [ %7380, %7371 ]
  %7375 = getelementptr [4 x float], [4 x float]* %102, i32 0, i32 %7372
  %7376 = load float, float* %7375, align 4, !tbaa !122, !noalias !112
  %7377 = fsub fast float %7376, %7262
  %7378 = fcmp fast olt float %7377, 0.000000e+00
  %7379 = select i1 %7378, float 0.000000e+00, float 1.000000e+00
  %7380 = fadd fast float %7379, %7374
  %7381 = fmul fast float %7379, %7377
  %7382 = fadd fast float %7381, %7373
  %7383 = add nuw nsw i32 %7372, 1
  %7384 = icmp eq i32 %7383, 4
  br i1 %7384, label %7385, label %7371, !llvm.loop !124

; <label>:7385                                    ; preds = %7371
  %7386 = add nuw nsw i32 %7339, 1
  %7387 = icmp eq i32 %7386, 8
  br i1 %7387, label %7388, label %7336, !llvm.loop !125

; <label>:7388                                    ; preds = %7385
  %7389 = fdiv fast float 1.000000e+00, %7380
  %7390 = fmul fast float %7389, %7382
  %7391 = fdiv fast float 1.000000e+00, %7262
  %7392 = fmul fast float %7390, %7391
  %7393 = call float @dx.op.unary.f32(i32 7, float %7392)  ; Saturate(value)
  %7394 = call float @dx.op.binary.f32(i32 35, float %7393, float 0.000000e+00)  ; FMax(a,b)
  %7395 = fmul fast float %7380, 3.125000e-02
  %7396 = call float @dx.op.unary.f32(i32 7, float %7395)  ; Saturate(value)
  %7397 = fmul fast float %7396, 2.000000e+00
  %7398 = fadd fast float %7397, -1.000000e+00
  %7399 = fcmp fast ogt float %7398, 0.000000e+00
  %7400 = fcmp fast olt float %7398, 0.000000e+00
  %7401 = zext i1 %7399 to i32
  %7402 = zext i1 %7400 to i32
  %7403 = sub nsw i32 %7401, %7402
  %7404 = sitofp i32 %7403 to float
  %7405 = fmul fast float %7404, %7398
  %7406 = fsub fast float 1.000000e+00, %7405
  %7407 = fmul fast float %7406, %7406
  %7408 = fmul fast float %7407, %7406
  %7409 = fsub fast float %7406, %7408
  %7410 = fmul fast float %7409, %7394
  %7411 = fsub fast float 1.000000e+00, %7408
  %7412 = fsub fast float %7411, %7410
  %7413 = fmul fast float %7404, 5.000000e-01
  %7414 = fmul fast float %7413, %7412
  %7415 = fsub fast float 5.000000e-01, %7414
  br label %7416

; <label>:7416                                    ; preds = %7388, %7264, %7251
  %7417 = phi float [ 1.000000e+00, %7251 ], [ %7330, %7264 ], [ %7415, %7388 ]
  %7418 = fcmp fast ogt float %6847, 0.000000e+00
  br i1 %7418, label %7419, label %7583, !dx.controlflow.hints !126

; <label>:7419                                    ; preds = %7416
  %7420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7421 = extractvalue %dx.types.CBufRet.f32 %7420, 1
  %7422 = fadd fast float %7421, %6736
  %7423 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7424 = extractvalue %dx.types.CBufRet.f32 %7423, 2
  %7425 = extractvalue %dx.types.CBufRet.f32 %7423, 3
  %7426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7427 = extractvalue %dx.types.CBufRet.f32 %7426, 1
  %7428 = call float @dx.op.binary.f32(i32 35, float %7422, float 0.000000e+00)  ; FMax(a,b)
  %7429 = fadd fast float %7428, 0x3F10000000000000
  %7430 = fcmp fast oeq float %7427, 0.000000e+00
  br i1 %7430, label %7431, label %7498

; <label>:7431                                    ; preds = %7419
  %7432 = extractvalue %dx.types.CBufRet.f32 %7423, 1
  %7433 = extractvalue %dx.types.CBufRet.f32 %7423, 0
  %7434 = fmul fast float %7433, %6743
  %7435 = fmul fast float %7432, %6744
  %7436 = fadd fast float %7434, 5.000000e-01
  %7437 = call float @dx.op.unary.f32(i32 27, float %7436)  ; Round_ni(value)
  %7438 = fadd fast float %7435, 5.000000e-01
  %7439 = call float @dx.op.unary.f32(i32 27, float %7438)  ; Round_ni(value)
  %7440 = fsub fast float %7436, %7437
  %7441 = fsub fast float %7438, %7439
  %7442 = fadd fast float %7437, -5.000000e-01
  %7443 = fadd fast float %7439, -5.000000e-01
  %7444 = fmul fast float %7440, 2.000000e+00
  %7445 = fsub fast float 3.000000e+00, %7444
  %7446 = fadd fast float %7444, 1.000000e+00
  %7447 = fsub fast float 2.000000e+00, %7440
  %7448 = bitcast float %7445 to i32
  %7449 = sub nsw i32 2129859010, %7448
  %7450 = bitcast i32 %7449 to float
  %7451 = fmul fast float %7450, %7447
  %7452 = fadd fast float %7451, -1.000000e+00
  %7453 = bitcast float %7446 to i32
  %7454 = sub nsw i32 2129859010, %7453
  %7455 = bitcast i32 %7454 to float
  %7456 = fmul fast float %7455, %7440
  %7457 = fadd fast float %7456, 1.000000e+00
  %7458 = fmul fast float %7441, 2.000000e+00
  %7459 = fsub fast float 3.000000e+00, %7458
  %7460 = fadd fast float %7458, 1.000000e+00
  %7461 = fsub fast float 2.000000e+00, %7441
  %7462 = bitcast float %7459 to i32
  %7463 = sub nsw i32 2129859010, %7462
  %7464 = bitcast i32 %7463 to float
  %7465 = fmul fast float %7464, %7461
  %7466 = fadd fast float %7465, -1.000000e+00
  %7467 = bitcast float %7460 to i32
  %7468 = sub nsw i32 2129859010, %7467
  %7469 = bitcast i32 %7468 to float
  %7470 = fmul fast float %7469, %7441
  %7471 = fadd fast float %7470, 1.000000e+00
  %7472 = fadd fast float %7452, %7442
  %7473 = fmul fast float %7472, %7424
  %7474 = fadd fast float %7466, %7443
  %7475 = fmul fast float %7474, %7425
  %7476 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %7473, float %7475, float undef, float undef, i32 0, i32 0, i32 undef, float %7429)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7477 = extractvalue %dx.types.ResRet.f32 %7476, 0
  %7478 = fmul fast float %7477, %7445
  %7479 = fadd fast float %7457, %7442
  %7480 = fmul fast float %7479, %7424
  %7481 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %7480, float %7475, float undef, float undef, i32 0, i32 0, i32 undef, float %7429)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7482 = extractvalue %dx.types.ResRet.f32 %7481, 0
  %7483 = fmul fast float %7482, %7446
  %7484 = fadd fast float %7471, %7443
  %7485 = fmul fast float %7484, %7425
  %7486 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %7473, float %7485, float undef, float undef, i32 0, i32 0, i32 undef, float %7429)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7487 = extractvalue %dx.types.ResRet.f32 %7486, 0
  %7488 = fmul fast float %7487, %7445
  %7489 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %7480, float %7485, float undef, float undef, i32 0, i32 0, i32 undef, float %7429)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7490 = extractvalue %dx.types.ResRet.f32 %7489, 0
  %7491 = fmul fast float %7490, %7446
  %7492 = fadd fast float %7491, %7488
  %7493 = fmul fast float %7492, %7460
  %7494 = fadd fast float %7483, %7478
  %7495 = fmul fast float %7494, %7459
  %7496 = fadd fast float %7495, %7493
  %7497 = fmul fast float %7496, 6.250000e-02
  br label %7583

; <label>:7498                                    ; preds = %7419
  %7499 = fmul fast float %269, 0x401921FB60000000
  %7500 = call float @dx.op.unary.f32(i32 13, float %7499)  ; Sin(value)
  %7501 = call float @dx.op.unary.f32(i32 12, float %7499)  ; Cos(value)
  %7502 = fsub fast float -0.000000e+00, %7500
  br label %7503

; <label>:7503                                    ; preds = %7552, %7498
  %7504 = phi float [ 0.000000e+00, %7498 ], [ %7547, %7552 ]
  %7505 = phi float [ 0.000000e+00, %7498 ], [ %7549, %7552 ]
  %7506 = phi i32 [ 0, %7498 ], [ %7553, %7552 ]
  %7507 = mul i32 %7506, 2
  %7508 = add i32 0, %7507
  %7509 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7508
  %7510 = load float, float* %7509, align 4
  %7511 = mul i32 %7506, 2
  %7512 = add i32 1, %7511
  %7513 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7512
  %7514 = load float, float* %7513, align 4
  %7515 = fmul fast float %7510, %7501
  %7516 = call float @dx.op.tertiary.f32(i32 46, float %7514, float %7502, float %7515)  ; FMad(a,b,c)
  %7517 = fmul fast float %7510, %7500
  %7518 = call float @dx.op.tertiary.f32(i32 46, float %7514, float %7501, float %7517)  ; FMad(a,b,c)
  %7519 = fmul fast float %7516, %7427
  %7520 = fmul fast float %7518, %7427
  %7521 = fadd fast float %7519, %6743
  %7522 = fadd fast float %7520, %6744
  %7523 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %55, float %7521, float %7522, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7524 = extractvalue %dx.types.ResRet.f32 %7523, 0
  %7525 = extractvalue %dx.types.ResRet.f32 %7523, 1
  %7526 = extractvalue %dx.types.ResRet.f32 %7523, 2
  %7527 = extractvalue %dx.types.ResRet.f32 %7523, 3
  %7528 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 0
  store float %7524, float* %7528, align 4
  %7529 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 1
  store float %7525, float* %7529, align 4
  %7530 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 2
  store float %7526, float* %7530, align 4
  %7531 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 3
  store float %7527, float* %7531, align 4
  %7532 = fsub fast float %7524, %7429
  %7533 = fcmp fast olt float %7532, 0.000000e+00
  %7534 = select i1 %7533, float 0.000000e+00, float 1.000000e+00
  %7535 = fadd fast float %7534, %7504
  %7536 = fmul fast float %7534, %7532
  %7537 = fadd fast float %7536, %7505
  br label %7538

; <label>:7538                                    ; preds = %7538, %7503
  %7539 = phi i32 [ 1, %7503 ], [ %7550, %7538 ]
  %7540 = phi float [ %7537, %7503 ], [ %7549, %7538 ]
  %7541 = phi float [ %7535, %7503 ], [ %7547, %7538 ]
  %7542 = getelementptr [4 x float], [4 x float]* %101, i32 0, i32 %7539
  %7543 = load float, float* %7542, align 4, !tbaa !122, !noalias !112
  %7544 = fsub fast float %7543, %7429
  %7545 = fcmp fast olt float %7544, 0.000000e+00
  %7546 = select i1 %7545, float 0.000000e+00, float 1.000000e+00
  %7547 = fadd fast float %7546, %7541
  %7548 = fmul fast float %7546, %7544
  %7549 = fadd fast float %7548, %7540
  %7550 = add nuw nsw i32 %7539, 1
  %7551 = icmp eq i32 %7550, 4
  br i1 %7551, label %7552, label %7538, !llvm.loop !124

; <label>:7552                                    ; preds = %7538
  %7553 = add nuw nsw i32 %7506, 1
  %7554 = icmp eq i32 %7553, 8
  br i1 %7554, label %7555, label %7503, !llvm.loop !125

; <label>:7555                                    ; preds = %7552
  %7556 = fdiv fast float 1.000000e+00, %7547
  %7557 = fmul fast float %7556, %7549
  %7558 = fdiv fast float 1.000000e+00, %7429
  %7559 = fmul fast float %7557, %7558
  %7560 = call float @dx.op.unary.f32(i32 7, float %7559)  ; Saturate(value)
  %7561 = call float @dx.op.binary.f32(i32 35, float %7560, float 0.000000e+00)  ; FMax(a,b)
  %7562 = fmul fast float %7547, 3.125000e-02
  %7563 = call float @dx.op.unary.f32(i32 7, float %7562)  ; Saturate(value)
  %7564 = fmul fast float %7563, 2.000000e+00
  %7565 = fadd fast float %7564, -1.000000e+00
  %7566 = fcmp fast ogt float %7565, 0.000000e+00
  %7567 = fcmp fast olt float %7565, 0.000000e+00
  %7568 = zext i1 %7566 to i32
  %7569 = zext i1 %7567 to i32
  %7570 = sub nsw i32 %7568, %7569
  %7571 = sitofp i32 %7570 to float
  %7572 = fmul fast float %7571, %7565
  %7573 = fsub fast float 1.000000e+00, %7572
  %7574 = fmul fast float %7573, %7573
  %7575 = fmul fast float %7574, %7573
  %7576 = fsub fast float %7573, %7575
  %7577 = fmul fast float %7576, %7561
  %7578 = fsub fast float 1.000000e+00, %7575
  %7579 = fsub fast float %7578, %7577
  %7580 = fmul fast float %7571, 5.000000e-01
  %7581 = fmul fast float %7580, %7579
  %7582 = fsub fast float 5.000000e-01, %7581
  br label %7583

; <label>:7583                                    ; preds = %7555, %7431, %7416
  %7584 = phi float [ 1.000000e+00, %7416 ], [ %7497, %7431 ], [ %7582, %7555 ]
  %7585 = fcmp fast ogt float %6846, 0.000000e+00
  br i1 %7585, label %7586, label %7750, !dx.controlflow.hints !127

; <label>:7586                                    ; preds = %7583
  %7587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7588 = extractvalue %dx.types.CBufRet.f32 %7587, 0
  %7589 = fadd fast float %7588, %6736
  %7590 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7591 = extractvalue %dx.types.CBufRet.f32 %7590, 2
  %7592 = extractvalue %dx.types.CBufRet.f32 %7590, 3
  %7593 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7594 = extractvalue %dx.types.CBufRet.f32 %7593, 0
  %7595 = call float @dx.op.binary.f32(i32 35, float %7589, float 0.000000e+00)  ; FMax(a,b)
  %7596 = fadd fast float %7595, 0x3F10000000000000
  %7597 = fcmp fast oeq float %7594, 0.000000e+00
  br i1 %7597, label %7598, label %7665

; <label>:7598                                    ; preds = %7586
  %7599 = extractvalue %dx.types.CBufRet.f32 %7590, 1
  %7600 = extractvalue %dx.types.CBufRet.f32 %7590, 0
  %7601 = fmul fast float %7600, %6728
  %7602 = fmul fast float %7599, %6732
  %7603 = fadd fast float %7601, 5.000000e-01
  %7604 = call float @dx.op.unary.f32(i32 27, float %7603)  ; Round_ni(value)
  %7605 = fadd fast float %7602, 5.000000e-01
  %7606 = call float @dx.op.unary.f32(i32 27, float %7605)  ; Round_ni(value)
  %7607 = fsub fast float %7603, %7604
  %7608 = fsub fast float %7605, %7606
  %7609 = fadd fast float %7604, -5.000000e-01
  %7610 = fadd fast float %7606, -5.000000e-01
  %7611 = fmul fast float %7607, 2.000000e+00
  %7612 = fsub fast float 3.000000e+00, %7611
  %7613 = fadd fast float %7611, 1.000000e+00
  %7614 = fsub fast float 2.000000e+00, %7607
  %7615 = bitcast float %7612 to i32
  %7616 = sub nsw i32 2129859010, %7615
  %7617 = bitcast i32 %7616 to float
  %7618 = fmul fast float %7617, %7614
  %7619 = fadd fast float %7618, -1.000000e+00
  %7620 = bitcast float %7613 to i32
  %7621 = sub nsw i32 2129859010, %7620
  %7622 = bitcast i32 %7621 to float
  %7623 = fmul fast float %7622, %7607
  %7624 = fadd fast float %7623, 1.000000e+00
  %7625 = fmul fast float %7608, 2.000000e+00
  %7626 = fsub fast float 3.000000e+00, %7625
  %7627 = fadd fast float %7625, 1.000000e+00
  %7628 = fsub fast float 2.000000e+00, %7608
  %7629 = bitcast float %7626 to i32
  %7630 = sub nsw i32 2129859010, %7629
  %7631 = bitcast i32 %7630 to float
  %7632 = fmul fast float %7631, %7628
  %7633 = fadd fast float %7632, -1.000000e+00
  %7634 = bitcast float %7627 to i32
  %7635 = sub nsw i32 2129859010, %7634
  %7636 = bitcast i32 %7635 to float
  %7637 = fmul fast float %7636, %7608
  %7638 = fadd fast float %7637, 1.000000e+00
  %7639 = fadd fast float %7619, %7609
  %7640 = fmul fast float %7639, %7591
  %7641 = fadd fast float %7633, %7610
  %7642 = fmul fast float %7641, %7592
  %7643 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7640, float %7642, float undef, float undef, i32 0, i32 0, i32 undef, float %7596)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7644 = extractvalue %dx.types.ResRet.f32 %7643, 0
  %7645 = fmul fast float %7644, %7612
  %7646 = fadd fast float %7624, %7609
  %7647 = fmul fast float %7646, %7591
  %7648 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7647, float %7642, float undef, float undef, i32 0, i32 0, i32 undef, float %7596)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7649 = extractvalue %dx.types.ResRet.f32 %7648, 0
  %7650 = fmul fast float %7649, %7613
  %7651 = fadd fast float %7638, %7610
  %7652 = fmul fast float %7651, %7592
  %7653 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7640, float %7652, float undef, float undef, i32 0, i32 0, i32 undef, float %7596)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7654 = extractvalue %dx.types.ResRet.f32 %7653, 0
  %7655 = fmul fast float %7654, %7612
  %7656 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7647, float %7652, float undef, float undef, i32 0, i32 0, i32 undef, float %7596)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7657 = extractvalue %dx.types.ResRet.f32 %7656, 0
  %7658 = fmul fast float %7657, %7613
  %7659 = fadd fast float %7658, %7655
  %7660 = fmul fast float %7659, %7627
  %7661 = fadd fast float %7650, %7645
  %7662 = fmul fast float %7661, %7626
  %7663 = fadd fast float %7662, %7660
  %7664 = fmul fast float %7663, 6.250000e-02
  br label %7750

; <label>:7665                                    ; preds = %7586
  %7666 = fmul fast float %269, 0x401921FB60000000
  %7667 = call float @dx.op.unary.f32(i32 13, float %7666)  ; Sin(value)
  %7668 = call float @dx.op.unary.f32(i32 12, float %7666)  ; Cos(value)
  %7669 = fsub fast float -0.000000e+00, %7667
  br label %7670

; <label>:7670                                    ; preds = %7719, %7665
  %7671 = phi float [ 0.000000e+00, %7665 ], [ %7714, %7719 ]
  %7672 = phi float [ 0.000000e+00, %7665 ], [ %7716, %7719 ]
  %7673 = phi i32 [ 0, %7665 ], [ %7720, %7719 ]
  %7674 = mul i32 %7673, 2
  %7675 = add i32 0, %7674
  %7676 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7675
  %7677 = load float, float* %7676, align 4
  %7678 = mul i32 %7673, 2
  %7679 = add i32 1, %7678
  %7680 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7679
  %7681 = load float, float* %7680, align 4
  %7682 = fmul fast float %7677, %7668
  %7683 = call float @dx.op.tertiary.f32(i32 46, float %7681, float %7669, float %7682)  ; FMad(a,b,c)
  %7684 = fmul fast float %7677, %7667
  %7685 = call float @dx.op.tertiary.f32(i32 46, float %7681, float %7668, float %7684)  ; FMad(a,b,c)
  %7686 = fmul fast float %7683, %7594
  %7687 = fmul fast float %7685, %7594
  %7688 = fadd fast float %7686, %6728
  %7689 = fadd fast float %7687, %6732
  %7690 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %55, float %7688, float %7689, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7691 = extractvalue %dx.types.ResRet.f32 %7690, 0
  %7692 = extractvalue %dx.types.ResRet.f32 %7690, 1
  %7693 = extractvalue %dx.types.ResRet.f32 %7690, 2
  %7694 = extractvalue %dx.types.ResRet.f32 %7690, 3
  %7695 = getelementptr inbounds [4 x float], [4 x float]* %100, i32 0, i32 0
  store float %7691, float* %7695, align 4
  %7696 = getelementptr inbounds [4 x float], [4 x float]* %100, i32 0, i32 1
  store float %7692, float* %7696, align 4
  %7697 = getelementptr inbounds [4 x float], [4 x float]* %100, i32 0, i32 2
  store float %7693, float* %7697, align 4
  %7698 = getelementptr inbounds [4 x float], [4 x float]* %100, i32 0, i32 3
  store float %7694, float* %7698, align 4
  %7699 = fsub fast float %7691, %7596
  %7700 = fcmp fast olt float %7699, 0.000000e+00
  %7701 = select i1 %7700, float 0.000000e+00, float 1.000000e+00
  %7702 = fadd fast float %7701, %7671
  %7703 = fmul fast float %7701, %7699
  %7704 = fadd fast float %7703, %7672
  br label %7705

; <label>:7705                                    ; preds = %7705, %7670
  %7706 = phi i32 [ 1, %7670 ], [ %7717, %7705 ]
  %7707 = phi float [ %7704, %7670 ], [ %7716, %7705 ]
  %7708 = phi float [ %7702, %7670 ], [ %7714, %7705 ]
  %7709 = getelementptr [4 x float], [4 x float]* %100, i32 0, i32 %7706
  %7710 = load float, float* %7709, align 4, !tbaa !122, !noalias !112
  %7711 = fsub fast float %7710, %7596
  %7712 = fcmp fast olt float %7711, 0.000000e+00
  %7713 = select i1 %7712, float 0.000000e+00, float 1.000000e+00
  %7714 = fadd fast float %7713, %7708
  %7715 = fmul fast float %7713, %7711
  %7716 = fadd fast float %7715, %7707
  %7717 = add nuw nsw i32 %7706, 1
  %7718 = icmp eq i32 %7717, 4
  br i1 %7718, label %7719, label %7705, !llvm.loop !124

; <label>:7719                                    ; preds = %7705
  %7720 = add nuw nsw i32 %7673, 1
  %7721 = icmp eq i32 %7720, 8
  br i1 %7721, label %7722, label %7670, !llvm.loop !125

; <label>:7722                                    ; preds = %7719
  %7723 = fdiv fast float 1.000000e+00, %7714
  %7724 = fmul fast float %7723, %7716
  %7725 = fdiv fast float 1.000000e+00, %7596
  %7726 = fmul fast float %7724, %7725
  %7727 = call float @dx.op.unary.f32(i32 7, float %7726)  ; Saturate(value)
  %7728 = call float @dx.op.binary.f32(i32 35, float %7727, float 0.000000e+00)  ; FMax(a,b)
  %7729 = fmul fast float %7714, 3.125000e-02
  %7730 = call float @dx.op.unary.f32(i32 7, float %7729)  ; Saturate(value)
  %7731 = fmul fast float %7730, 2.000000e+00
  %7732 = fadd fast float %7731, -1.000000e+00
  %7733 = fcmp fast ogt float %7732, 0.000000e+00
  %7734 = fcmp fast olt float %7732, 0.000000e+00
  %7735 = zext i1 %7733 to i32
  %7736 = zext i1 %7734 to i32
  %7737 = sub nsw i32 %7735, %7736
  %7738 = sitofp i32 %7737 to float
  %7739 = fmul fast float %7738, %7732
  %7740 = fsub fast float 1.000000e+00, %7739
  %7741 = fmul fast float %7740, %7740
  %7742 = fmul fast float %7741, %7740
  %7743 = fsub fast float %7740, %7742
  %7744 = fmul fast float %7743, %7728
  %7745 = fsub fast float 1.000000e+00, %7742
  %7746 = fsub fast float %7745, %7744
  %7747 = fmul fast float %7738, 5.000000e-01
  %7748 = fmul fast float %7747, %7746
  %7749 = fsub fast float 5.000000e-01, %7748
  br label %7750

; <label>:7750                                    ; preds = %7722, %7598, %7583
  %7751 = phi float [ 1.000000e+00, %7583 ], [ %7664, %7598 ], [ %7749, %7722 ]
  %7752 = fsub fast float %7417, %7252
  %7753 = fmul fast float %7752, %6790
  %7754 = fadd fast float %7753, %7252
  %7755 = fsub fast float %7584, %7754
  %7756 = fmul fast float %7755, %6820
  %7757 = fadd fast float %7756, %7754
  %7758 = fsub fast float %7751, %7757
  %7759 = fmul fast float %7758, %6846
  %7760 = fadd fast float %7759, %7757
  %7761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %7762 = extractvalue %dx.types.CBufRet.f32 %7761, 2
  %7763 = fcmp fast ogt float %7762, 0.000000e+00
  br i1 %7763, label %7764, label %7804, !dx.controlflow.hints !128

; <label>:7764                                    ; preds = %7750
  %7765 = fcmp fast ugt float %7762, 0.000000e+00
  br i1 %7765, label %7766, label %7801

; <label>:7766                                    ; preds = %7764
  %7767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %7768 = extractvalue %dx.types.CBufRet.f32 %7767, 0
  %7769 = extractvalue %dx.types.CBufRet.f32 %7767, 1
  %7770 = extractvalue %dx.types.CBufRet.f32 %7767, 2
  %7771 = extractvalue %dx.types.CBufRet.f32 %7767, 3
  %7772 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %7773 = extractvalue %dx.types.CBufRet.f32 %7772, 0
  %7774 = extractvalue %dx.types.CBufRet.f32 %7772, 1
  %7775 = extractvalue %dx.types.CBufRet.f32 %7772, 2
  %7776 = extractvalue %dx.types.CBufRet.f32 %7772, 3
  %7777 = extractvalue %dx.types.CBufRet.f32 %7761, 0
  %7778 = extractvalue %dx.types.CBufRet.f32 %7761, 1
  %7779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %7780 = extractvalue %dx.types.CBufRet.f32 %7779, 0
  %7781 = extractvalue %dx.types.CBufRet.f32 %7779, 1
  %7782 = extractvalue %dx.types.CBufRet.f32 %7779, 2
  %7783 = fadd fast float %7780, %6705
  %7784 = fadd fast float %7781, %6706
  %7785 = fadd fast float %7782, %6707
  %7786 = fmul fast float %7783, %7768
  %7787 = call float @dx.op.tertiary.f32(i32 46, float %7769, float %7784, float %7786)  ; FMad(a,b,c)
  %7788 = call float @dx.op.tertiary.f32(i32 46, float %7770, float %7785, float %7787)  ; FMad(a,b,c)
  %7789 = fadd fast float %7788, %7771
  %7790 = fmul fast float %7783, %7773
  %7791 = call float @dx.op.tertiary.f32(i32 46, float %7774, float %7784, float %7790)  ; FMad(a,b,c)
  %7792 = call float @dx.op.tertiary.f32(i32 46, float %7775, float %7785, float %7791)  ; FMad(a,b,c)
  %7793 = fadd fast float %7792, %7776
  %7794 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %51, float %7789, float %7793, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %7795 = extractvalue %dx.types.ResRet.f32 %7794, 0
  %7796 = fmul fast float %7795, %7778
  %7797 = fadd fast float %7796, %7777
  %7798 = call float @dx.op.unary.f32(i32 7, float %7797)  ; Saturate(value)
  %7799 = fmul fast float %7798, %7762
  %7800 = fsub fast float 1.000000e+00, %7799
  br label %7801

; <label>:7801                                    ; preds = %7766, %7764
  %7802 = phi float [ %7800, %7766 ], [ 1.000000e+00, %7764 ]
  %7803 = fmul fast float %7802, %7760
  br label %7804

; <label>:7804                                    ; preds = %7801, %7750, %6685
  %7805 = phi float [ 1.000000e+00, %6685 ], [ %7803, %7801 ], [ %7760, %7750 ]
  %7806 = call float @dx.op.binary.f32(i32 36, float %7805, float %7805)  ; FMin(a,b)
  %7807 = call float @dx.op.binary.f32(i32 36, float %7805, float %7806)  ; FMin(a,b)
  %7808 = fcmp fast ogt float %7807, 0.000000e+00
  br i1 %7808, label %7809, label %7974, !dx.controlflow.hints !129

; <label>:7809                                    ; preds = %7804
  %7810 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7811 = extractvalue %dx.types.CBufRet.f32 %7810, 0
  %7812 = extractvalue %dx.types.CBufRet.f32 %7810, 1
  %7813 = extractvalue %dx.types.CBufRet.f32 %7810, 2
  %7814 = extractvalue %dx.types.CBufRet.f32 %7810, 3
  %7815 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7816 = extractvalue %dx.types.CBufRet.f32 %7815, 0
  %7817 = extractvalue %dx.types.CBufRet.f32 %7815, 1
  %7818 = extractvalue %dx.types.CBufRet.f32 %7815, 2
  %7819 = extractvalue %dx.types.CBufRet.f32 %7815, 3
  %7820 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7821 = extractvalue %dx.types.CBufRet.f32 %7820, 0
  %7822 = extractvalue %dx.types.CBufRet.f32 %7820, 1
  %7823 = extractvalue %dx.types.CBufRet.f32 %7820, 2
  %7824 = extractvalue %dx.types.CBufRet.f32 %7820, 3
  %7825 = fmul fast float %7811, %6705
  %7826 = call float @dx.op.tertiary.f32(i32 46, float %6706, float %7812, float %7825)  ; FMad(a,b,c)
  %7827 = call float @dx.op.tertiary.f32(i32 46, float %6707, float %7813, float %7826)  ; FMad(a,b,c)
  %7828 = fadd fast float %7827, %7814
  %7829 = fmul fast float %7816, %6705
  %7830 = call float @dx.op.tertiary.f32(i32 46, float %6706, float %7817, float %7829)  ; FMad(a,b,c)
  %7831 = call float @dx.op.tertiary.f32(i32 46, float %6707, float %7818, float %7830)  ; FMad(a,b,c)
  %7832 = fadd fast float %7831, %7819
  %7833 = fmul fast float %7821, %6705
  %7834 = call float @dx.op.tertiary.f32(i32 46, float %6706, float %7822, float %7833)  ; FMad(a,b,c)
  %7835 = call float @dx.op.tertiary.f32(i32 46, float %6707, float %7823, float %7834)  ; FMad(a,b,c)
  %7836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %7837 = extractvalue %dx.types.CBufRet.f32 %7836, 0
  %7838 = extractvalue %dx.types.CBufRet.f32 %7836, 1
  %7839 = extractvalue %dx.types.CBufRet.f32 %7836, 3
  %7840 = fmul fast float %7839, %7828
  %7841 = fmul fast float %7839, %7832
  %7842 = fadd fast float %7840, %7837
  %7843 = fadd fast float %7841, %7838
  %7844 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %7845 = extractvalue %dx.types.CBufRet.f32 %7844, 0
  %7846 = extractvalue %dx.types.CBufRet.f32 %7844, 1
  %7847 = fsub fast float %7842, %7845
  %7848 = fsub fast float %7843, %7846
  %7849 = fcmp fast olt float %7847, 0.000000e+00
  %7850 = fcmp fast olt float %7848, 0.000000e+00
  %7851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %7852 = extractvalue %dx.types.CBufRet.f32 %7851, 0
  %7853 = extractvalue %dx.types.CBufRet.f32 %7851, 1
  %7854 = extractvalue %dx.types.CBufRet.f32 %7851, 2
  %7855 = extractvalue %dx.types.CBufRet.f32 %7851, 3
  %7856 = select i1 %7849, float %7852, float %7854
  %7857 = select i1 %7850, float %7853, float %7855
  %7858 = fmul fast float %7856, %7847
  %7859 = fmul fast float %7857, %7848
  %7860 = call float @dx.op.unary.f32(i32 6, float %7858)  ; FAbs(value)
  %7861 = call float @dx.op.unary.f32(i32 6, float %7859)  ; FAbs(value)
  %7862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %7863 = extractvalue %dx.types.CBufRet.f32 %7862, 0
  %7864 = call float @dx.op.binary.f32(i32 35, float %7860, float %7861)  ; FMax(a,b)
  %7865 = fsub fast float %7863, %7864
  %7866 = call float @dx.op.unary.f32(i32 7, float %7865)  ; Saturate(value)
  %7867 = fcmp fast ogt float %7866, 0.000000e+00
  br i1 %7867, label %7868, label %7909, !dx.controlflow.hints !130

; <label>:7868                                    ; preds = %7809
  %7869 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %54, float %7842, float %7843, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7870 = extractvalue %dx.types.ResRet.f32 %7869, 1
  %7871 = fcmp fast ogt float %7870, 0.000000e+00
  br i1 %7871, label %7872, label %7904

; <label>:7872                                    ; preds = %7868
  %7873 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %54, float %7842, float %7843, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7874 = extractvalue %dx.types.ResRet.f32 %7873, 0
  %7875 = extractvalue %dx.types.ResRet.f32 %7873, 1
  %7876 = extractvalue %dx.types.ResRet.f32 %7873, 2
  %7877 = extractvalue %dx.types.ResRet.f32 %7873, 3
  %7878 = fsub fast float 1.000000e+00, %7824
  %7879 = fsub fast float %7878, %7835
  %7880 = fmul fast float %7879, 0x400921FB60000000
  %7881 = fadd fast float %7880, 0x3FF921FB60000000
  %7882 = call float @dx.op.unary.f32(i32 13, float %7881)  ; Sin(value)
  %7883 = fadd fast float %7882, -1.000000e+00
  %7884 = fmul fast float %7883, 0x3FD45F3060000000
  %7885 = fmul fast float %7879, 0x401921FB60000000
  %7886 = fadd fast float %7885, 0x400921FB60000000
  %7887 = call float @dx.op.unary.f32(i32 13, float %7886)  ; Sin(value)
  %7888 = fadd fast float %7887, 0x3E7777A5C0000000
  %7889 = fmul fast float %7888, 0x3FC45F3060000000
  %7890 = fmul fast float %7879, 0x4022D97C80000000
  %7891 = fadd fast float %7890, 0x4012D97C80000000
  %7892 = call float @dx.op.unary.f32(i32 13, float %7891)  ; Sin(value)
  %7893 = fadd fast float %7892, 1.000000e+00
  %7894 = fmul fast float %7893, 0x3FBB2995E0000000
  %7895 = fmul fast float %7879, 0x402921FB60000000
  %7896 = fadd fast float %7895, 0x401921FB60000000
  %7897 = call float @dx.op.unary.f32(i32 13, float %7896)  ; Sin(value)
  %7898 = fadd fast float %7897, 0xBE8777A5C0000000
  %7899 = fmul fast float %7898, 0x3FB45F3060000000
  %7900 = call float @dx.op.dot4.f32(i32 56, float %7874, float %7875, float %7876, float %7877, float %7884, float %7889, float %7894, float %7899)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7901 = fmul fast float %7900, 0xBFF7154760000000
  %7902 = call float @dx.op.unary.f32(i32 21, float %7901)  ; Exp(value)
  %7903 = call float @dx.op.unary.f32(i32 7, float %7902)  ; Saturate(value)
  br label %7904

; <label>:7904                                    ; preds = %7872, %7868
  %7905 = phi float [ %7903, %7872 ], [ 1.000000e+00, %7868 ]
  %7906 = fadd fast float %7905, -1.000000e+00
  %7907 = fmul fast float %7906, %7866
  %7908 = fadd fast float %7907, 1.000000e+00
  br label %7909

; <label>:7909                                    ; preds = %7904, %7809
  %7910 = phi float [ %7908, %7904 ], [ 1.000000e+00, %7809 ]
  %7911 = fmul fast float %7910, %7805
  %7912 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %7913 = extractvalue %dx.types.CBufRet.f32 %7912, 0
  %7914 = extractvalue %dx.types.CBufRet.f32 %7912, 1
  %7915 = extractvalue %dx.types.CBufRet.f32 %7912, 2
  %7916 = fadd fast float %7913, %164
  %7917 = fadd fast float %7914, %165
  %7918 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7919 = extractvalue %dx.types.CBufRet.f32 %7918, 1
  %7920 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %7921 = extractvalue %dx.types.CBufRet.f32 %7920, 0
  %7922 = extractvalue %dx.types.CBufRet.f32 %7920, 1
  %7923 = extractvalue %dx.types.CBufRet.f32 %7920, 2
  %7924 = fsub fast float -0.000000e+00, %7916
  %7925 = fsub fast float -0.000000e+00, %7917
  %7926 = fsub fast float %5751, %7915
  %7927 = fadd fast float %7926, %7919
  %7928 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7924, float %7925, float %7927)  ; Dot3(ax,ay,az,bx,by,bz)
  %7929 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7921, float %7922, float %7923)  ; Dot3(ax,ay,az,bx,by,bz)
  %7930 = fdiv fast float 1.000000e+00, %7929
  %7931 = fmul fast float %7930, %7928
  %7932 = fmul fast float %7921, %7931
  %7933 = fmul fast float %7922, %7931
  %7934 = fadd fast float %7932, %7916
  %7935 = fadd fast float %7933, %7917
  %7936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7937 = extractvalue %dx.types.CBufRet.f32 %7936, 0
  %7938 = extractvalue %dx.types.CBufRet.f32 %7936, 1
  %7939 = fsub fast float %7934, %7937
  %7940 = fsub fast float %7935, %7938
  %7941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7942 = extractvalue %dx.types.CBufRet.f32 %7941, 2
  %7943 = extractvalue %dx.types.CBufRet.f32 %7941, 3
  %7944 = fmul fast float %7939, %7942
  %7945 = fmul fast float %7940, %7943
  %7946 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7947 = extractvalue %dx.types.CBufRet.i32 %7946, 3
  %7948 = icmp eq i32 %7947, 0
  br i1 %7948, label %7954, label %7949

; <label>:7949                                    ; preds = %7909
  %7950 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %53, float %7944, float %7945, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7951 = extractvalue %dx.types.ResRet.f32 %7950, 0
  %7952 = extractvalue %dx.types.ResRet.f32 %7950, 1
  %7953 = extractvalue %dx.types.ResRet.f32 %7950, 2
  br label %7959

; <label>:7954                                    ; preds = %7909
  %7955 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %54, float %7944, float %7945, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7956 = extractvalue %dx.types.ResRet.f32 %7955, 0
  %7957 = extractvalue %dx.types.ResRet.f32 %7955, 1
  %7958 = extractvalue %dx.types.ResRet.f32 %7955, 2
  br label %7959

; <label>:7959                                    ; preds = %7954, %7949
  %7960 = phi float [ %7951, %7949 ], [ %7956, %7954 ]
  %7961 = phi float [ %7952, %7949 ], [ %7957, %7954 ]
  %7962 = phi float [ %7953, %7949 ], [ %7958, %7954 ]
  %7963 = extractvalue %dx.types.CBufRet.f32 %7918, 2
  %7964 = fmul fast float %7963, %7960
  %7965 = extractvalue %dx.types.CBufRet.f32 %7918, 0
  %7966 = fsub fast float %7931, %7965
  %7967 = fsub fast float %7966, %7964
  %7968 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7967)  ; FMax(a,b)
  %7969 = fmul fast float %7968, %7961
  %7970 = call float @dx.op.binary.f32(i32 36, float %7962, float %7969)  ; FMin(a,b)
  %7971 = fmul fast float %7970, 0xBFF7154760000000
  %7972 = call float @dx.op.unary.f32(i32 21, float %7971)  ; Exp(value)
  %7973 = fmul fast float %7911, %7972
  br label %7974

; <label>:7974                                    ; preds = %7959, %7804
  %7975 = phi float [ %7973, %7959 ], [ %7805, %7804 ]
  %7976 = call float @dx.op.binary.f32(i32 36, float %7975, float %7975)  ; FMin(a,b)
  %7977 = call float @dx.op.binary.f32(i32 36, float %7975, float %7976)  ; FMin(a,b)
  %7978 = fcmp fast ogt float %7977, 0.000000e+00
  br i1 %7978, label %7979, label %8362, !dx.controlflow.hints !131

; <label>:7979                                    ; preds = %7974
  %7980 = fmul fast float %7975, %6697
  %7981 = fmul fast float %7975, %6698
  %7982 = fmul fast float %7975, %6699
  %7983 = fsub fast float %166, %5560
  %7984 = fcmp fast ogt float %7983, 0.000000e+00
  %7985 = fmul fast float %6686, 5.120000e+02
  %7986 = fmul fast float %6687, 5.120000e+02
  %7987 = fmul fast float %6688, 5.120000e+02
  %7988 = fadd fast float %7987, %166
  %7989 = fsub fast float %5560, %7988
  %7990 = fmul fast float %7989, 2.000000e+00
  %7991 = fadd fast float %7990, %7988
  %7992 = select i1 %7984, float %7991, float %7988
  %7993 = fsub fast float %7992, %166
  %7994 = call float @dx.op.dot3.f32(i32 55, float %7985, float %7986, float %7993, float %7985, float %7986, float %7993)  ; Dot3(ax,ay,az,bx,by,bz)
  %7995 = call float @dx.op.unary.f32(i32 25, float %7994)  ; Rsqrt(value)
  %7996 = fmul fast float %7995, %7985
  %7997 = fmul fast float %7995, %7986
  %7998 = fmul fast float %7995, %7993
  %7999 = fsub fast float %5560, %166
  %8000 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7999)  ; Dot3(ax,ay,az,bx,by,bz)
  %8001 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7996, float %7997, float %7998)  ; Dot3(ax,ay,az,bx,by,bz)
  %8002 = fdiv fast float 1.000000e+00, %8001
  %8003 = fmul fast float %8002, %8000
  %8004 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7983, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8005 = fcmp fast ogt float %8004, 0.000000e+00
  %8006 = fcmp fast olt float %8004, 0.000000e+00
  %8007 = zext i1 %8005 to i32
  %8008 = zext i1 %8006 to i32
  %8009 = sub nsw i32 %8007, %8008
  %8010 = sitofp i32 %8009 to float
  %8011 = fsub fast float %7992, %5560
  %8012 = call float @dx.op.dot3.f32(i32 55, float %7985, float %7986, float %8011, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8013 = fcmp fast ogt float %8012, 0.000000e+00
  %8014 = fcmp fast olt float %8012, 0.000000e+00
  %8015 = zext i1 %8013 to i32
  %8016 = zext i1 %8014 to i32
  %8017 = sub nsw i32 %8015, %8016
  %8018 = sitofp i32 %8017 to float
  %8019 = fcmp fast une float %8010, %8018
  br i1 %8019, label %8020, label %8030

; <label>:8020                                    ; preds = %7979
  %8021 = fmul fast float %8003, %7998
  %8022 = fmul fast float %8003, %7997
  %8023 = fmul fast float %8003, %7996
  %8024 = fmul fast float %8023, %8023
  %8025 = fmul fast float %8022, %8022
  %8026 = fadd fast float %8024, %8025
  %8027 = fmul fast float %8021, %8021
  %8028 = fadd fast float %8026, %8027
  %8029 = call float @dx.op.unary.f32(i32 24, float %8028)  ; Sqrt(value)
  br label %8040

; <label>:8030                                    ; preds = %7979
  %8031 = icmp slt i32 %8009, 0
  br i1 %8031, label %8032, label %8040

; <label>:8032                                    ; preds = %8030
  %8033 = fsub fast float %166, %7992
  %8034 = fmul fast float %7985, %7985
  %8035 = fmul fast float %7986, %7986
  %8036 = fadd fast float %8034, %8035
  %8037 = fmul fast float %8033, %8033
  %8038 = fadd fast float %8036, %8037
  %8039 = call float @dx.op.unary.f32(i32 24, float %8038)  ; Sqrt(value)
  br label %8040

; <label>:8040                                    ; preds = %8032, %8030, %8020
  %8041 = phi float [ %8029, %8020 ], [ %8039, %8032 ], [ 0.000000e+00, %8030 ]
  %8042 = fsub fast float -0.000000e+00, %8041
  %8043 = select i1 %7984, float -0.000000e+00, float %8042
  %8044 = fmul fast float %5557, 0x3FF7154760000000
  %8045 = fmul fast float %8044, %8043
  %8046 = fmul fast float %5558, 0x3FF7154760000000
  %8047 = fmul fast float %8046, %8043
  %8048 = fmul fast float %5559, 0x3FF7154760000000
  %8049 = fmul fast float %8048, %8043
  %8050 = call float @dx.op.unary.f32(i32 21, float %8045)  ; Exp(value)
  %8051 = call float @dx.op.unary.f32(i32 21, float %8047)  ; Exp(value)
  %8052 = call float @dx.op.unary.f32(i32 21, float %8049)  ; Exp(value)
  %8053 = call float @dx.op.unary.f32(i32 7, float %8050)  ; Saturate(value)
  %8054 = call float @dx.op.unary.f32(i32 7, float %8051)  ; Saturate(value)
  %8055 = call float @dx.op.unary.f32(i32 7, float %8052)  ; Saturate(value)
  %8056 = fmul fast float %7980, %8053
  %8057 = fmul fast float %7981, %8054
  %8058 = fmul fast float %7982, %8055
  %8059 = fsub fast float %6686, %184
  %8060 = fsub fast float %6687, %185
  %8061 = fsub fast float %6688, %186
  %8062 = call float @dx.op.dot3.f32(i32 55, float %8059, float %8060, float %8061, float %8059, float %8060, float %8061)  ; Dot3(ax,ay,az,bx,by,bz)
  %8063 = call float @dx.op.unary.f32(i32 25, float %8062)  ; Rsqrt(value)
  %8064 = fmul fast float %8063, %8059
  %8065 = fmul fast float %8063, %8060
  %8066 = fmul fast float %8063, %8061
  %8067 = call float @dx.op.dot3.f32(i32 55, float %6686, float %6687, float %6688, float %5746, float %5747, float %5748)  ; Dot3(ax,ay,az,bx,by,bz)
  %8068 = call float @dx.op.dot3.f32(i32 55, float %5574, float %5575, float %5576, float %8064, float %8065, float %8066)  ; Dot3(ax,ay,az,bx,by,bz)
  %8069 = call float @dx.op.unary.f32(i32 7, float %8067)  ; Saturate(value)
  %8070 = fmul fast float %8069, %8069
  %8071 = fmul fast float %8070, %5779
  %8072 = call float @dx.op.unary.f32(i32 7, float %8071)  ; Saturate(value)
  %8073 = fmul fast float %8072, %8069
  %8074 = call float @dx.op.dot3.f32(i32 55, float %5746, float %5747, float %5748, float %8064, float %8065, float %8066)  ; Dot3(ax,ay,az,bx,by,bz)
  %8075 = fmul fast float %8074, %8074
  %8076 = call float @dx.op.unary.f32(i32 6, float %8067)  ; FAbs(value)
  %8077 = fsub fast float 1.000000e+00, %5772
  %8078 = fmul fast float %5754, %5754
  %8079 = fmul fast float %8078, %8077
  %8080 = fadd fast float %8079, %5772
  %8081 = bitcast float %8080 to i32
  %8082 = ashr i32 %8081, 1
  %8083 = add nsw i32 %8082, 532487669
  %8084 = bitcast i32 %8083 to float
  %8085 = fadd fast float %8084, %5754
  %8086 = fmul fast float %5772, %8075
  %8087 = fsub fast float 1.000000e+00, %8075
  %8088 = fadd fast float %8087, %8086
  %8089 = fmul fast float %8076, %8076
  %8090 = fmul fast float %8089, %8077
  %8091 = fadd fast float %8090, %5772
  %8092 = bitcast float %8091 to i32
  %8093 = ashr i32 %8092, 1
  %8094 = add nsw i32 %8093, 532487669
  %8095 = bitcast i32 %8094 to float
  %8096 = fadd fast float %8095, %8076
  %8097 = fmul fast float %8088, %8088
  %8098 = fmul fast float %8097, %8085
  %8099 = fmul fast float %8098, %8096
  %8100 = fdiv fast float 0x3FF0A00000000000, %8099
  %8101 = fmul fast float %8100, %5772
  %8102 = fmul fast float %6025, 0x3FF9999980000000
  %8103 = fsub fast float 5.000000e+00, %8102
  %8104 = call float @dx.op.unary.f32(i32 6, float %8068)  ; FAbs(value)
  %8105 = fsub fast float 1.000000e+00, %8104
  %8106 = fmul fast float %6025, 0x41D9660740000000
  %8107 = fadd fast float %8106, 0xC1EFBF8940000000
  %8108 = bitcast float %8105 to i32
  %8109 = sitofp i32 %8108 to float
  %8110 = fmul fast float %8109, %8103
  %8111 = fadd fast float %8107, %8110
  %8112 = fptosi float %8111 to i32
  %8113 = bitcast i32 %8112 to float
  %8114 = fsub fast float 1.000000e+00, %5743
  %8115 = fsub fast float 1.000000e+00, %5744
  %8116 = fsub fast float 1.000000e+00, %5752
  %8117 = fmul fast float %8113, %8114
  %8118 = fmul fast float %8113, %8115
  %8119 = fmul fast float %8113, %8116
  %8120 = fadd fast float %8117, %5743
  %8121 = fadd fast float %8118, %5744
  %8122 = fadd fast float %8119, %5752
  br i1 %6048, label %8123, label %8146

; <label>:8123                                    ; preds = %8040
  %8124 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %5105, float %8104, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8125 = extractvalue %dx.types.ResRet.f32 %8124, 0
  %8126 = extractvalue %dx.types.ResRet.f32 %8124, 1
  %8127 = extractvalue %dx.types.ResRet.f32 %8124, 2
  %8128 = fadd fast float %8125, -5.000000e-01
  %8129 = fadd fast float %8126, -5.000000e-01
  %8130 = fadd fast float %8127, -5.000000e-01
  %8131 = fmul fast float %5743, 4.000000e+00
  %8132 = fmul fast float %8131, %8114
  %8133 = fmul fast float %8132, %8128
  %8134 = fmul fast float %5744, 4.000000e+00
  %8135 = fmul fast float %8134, %8115
  %8136 = fmul fast float %8135, %8129
  %8137 = fmul fast float %5752, 4.000000e+00
  %8138 = fmul fast float %8137, %8116
  %8139 = fmul fast float %8138, %8130
  %8140 = fadd fast float %8133, %8120
  %8141 = fadd fast float %8136, %8121
  %8142 = fadd fast float %8139, %8122
  %8143 = call float @dx.op.unary.f32(i32 7, float %8140)  ; Saturate(value)
  %8144 = call float @dx.op.unary.f32(i32 7, float %8141)  ; Saturate(value)
  %8145 = call float @dx.op.unary.f32(i32 7, float %8142)  ; Saturate(value)
  br label %8146

; <label>:8146                                    ; preds = %8123, %8040
  %8147 = phi float [ %8143, %8123 ], [ %8120, %8040 ]
  %8148 = phi float [ %8144, %8123 ], [ %8121, %8040 ]
  %8149 = phi float [ %8145, %8123 ], [ %8122, %8040 ]
  %8150 = fmul fast float %8067, 9.843750e-01
  %8151 = fadd fast float %8150, 7.812500e-03
  %8152 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %8151, float %6029, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8153 = extractvalue %dx.types.ResRet.f32 %8152, 0
  %8154 = extractvalue %dx.types.ResRet.f32 %8152, 1
  %8155 = extractvalue %dx.types.ResRet.f32 %8152, 2
  %8156 = extractvalue %dx.types.ResRet.f32 %8152, 3
  %8157 = fsub fast float %8155, %8153
  %8158 = fsub fast float %8156, %8154
  %8159 = fmul fast float %8157, %6035
  %8160 = fmul fast float %8158, %6035
  %8161 = fadd fast float %8159, %8153
  %8162 = fadd fast float %8160, %8154
  %8163 = fmul fast float %8161, %5743
  %8164 = fmul fast float %8161, %5744
  %8165 = fmul fast float %8161, %5752
  %8166 = fadd fast float %8163, %8162
  %8167 = fadd fast float %8164, %8162
  %8168 = fadd fast float %8165, %8162
  br i1 %6048, label %8169, label %8192

; <label>:8169                                    ; preds = %8146
  %8170 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %5105, float %8067, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8171 = extractvalue %dx.types.ResRet.f32 %8170, 0
  %8172 = extractvalue %dx.types.ResRet.f32 %8170, 1
  %8173 = extractvalue %dx.types.ResRet.f32 %8170, 2
  %8174 = fadd fast float %8171, -5.000000e-01
  %8175 = fadd fast float %8172, -5.000000e-01
  %8176 = fadd fast float %8173, -5.000000e-01
  %8177 = fmul fast float %5743, 4.000000e+00
  %8178 = fmul fast float %8177, %8114
  %8179 = fmul fast float %8178, %8174
  %8180 = fmul fast float %5744, 4.000000e+00
  %8181 = fmul fast float %8180, %8115
  %8182 = fmul fast float %8181, %8175
  %8183 = fmul fast float %5752, 4.000000e+00
  %8184 = fmul fast float %8183, %8116
  %8185 = fmul fast float %8184, %8176
  %8186 = fadd fast float %8179, %8166
  %8187 = fadd fast float %8182, %8167
  %8188 = fadd fast float %8185, %8168
  %8189 = call float @dx.op.unary.f32(i32 7, float %8186)  ; Saturate(value)
  %8190 = call float @dx.op.unary.f32(i32 7, float %8187)  ; Saturate(value)
  %8191 = call float @dx.op.unary.f32(i32 7, float %8188)  ; Saturate(value)
  br label %8192

; <label>:8192                                    ; preds = %8169, %8146
  %8193 = phi float [ %8189, %8169 ], [ %8166, %8146 ]
  %8194 = phi float [ %8190, %8169 ], [ %8167, %8146 ]
  %8195 = phi float [ %8191, %8169 ], [ %8168, %8146 ]
  %8196 = call float @dx.op.binary.f32(i32 35, float %8194, float %8195)  ; FMax(a,b)
  %8197 = call float @dx.op.binary.f32(i32 35, float %8193, float %8196)  ; FMax(a,b)
  %8198 = fsub fast float 1.000000e+00, %8197
  %8199 = call float @dx.op.binary.f32(i32 35, float %8076, float 0x3F50624DE0000000)  ; FMax(a,b)
  %8200 = fdiv fast float %4459, %8199
  %8201 = fmul fast float %6595, %8200
  %8202 = fmul fast float %6597, %8200
  %8203 = fmul fast float %6599, %8200
  %8204 = call float @dx.op.unary.f32(i32 21, float %8201)  ; Exp(value)
  %8205 = call float @dx.op.unary.f32(i32 21, float %8202)  ; Exp(value)
  %8206 = call float @dx.op.unary.f32(i32 21, float %8203)  ; Exp(value)
  %8207 = call float @dx.op.unary.f32(i32 7, float %8204)  ; Saturate(value)
  %8208 = call float @dx.op.unary.f32(i32 7, float %8205)  ; Saturate(value)
  %8209 = call float @dx.op.unary.f32(i32 7, float %8206)  ; Saturate(value)
  %8210 = select i1 %6592, float %8207, float 0.000000e+00
  %8211 = select i1 %6593, float %8208, float 0.000000e+00
  %8212 = select i1 %6594, float %8209, float 0.000000e+00
  %8213 = fsub fast float -0.000000e+00, %5746
  %8214 = fsub fast float -0.000000e+00, %5747
  %8215 = fsub fast float -0.000000e+00, %5748
  %8216 = call float @dx.op.dot3.f32(i32 55, float %6686, float %6687, float %6688, float %8213, float %8214, float %8215)  ; Dot3(ax,ay,az,bx,by,bz)
  %8217 = call float @dx.op.unary.f32(i32 7, float %8216)  ; Saturate(value)
  %8218 = fmul fast float %8217, 9.843750e-01
  %8219 = fadd fast float %8218, 7.812500e-03
  %8220 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %8219, float %6029, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8221 = extractvalue %dx.types.ResRet.f32 %8220, 0
  %8222 = extractvalue %dx.types.ResRet.f32 %8220, 1
  %8223 = extractvalue %dx.types.ResRet.f32 %8220, 2
  %8224 = extractvalue %dx.types.ResRet.f32 %8220, 3
  %8225 = fsub fast float %8223, %8221
  %8226 = fsub fast float %8224, %8222
  %8227 = fmul fast float %8225, %6035
  %8228 = fmul fast float %8226, %6035
  %8229 = fadd fast float %8227, %8221
  %8230 = fadd fast float %8228, %8222
  %8231 = fmul fast float %8229, %5743
  %8232 = fmul fast float %8229, %5744
  %8233 = fmul fast float %8229, %5752
  %8234 = fadd fast float %8231, %8230
  %8235 = fadd fast float %8232, %8230
  %8236 = fadd fast float %8233, %8230
  br i1 %6048, label %8237, label %8260

; <label>:8237                                    ; preds = %8192
  %8238 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %5105, float %8217, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8239 = extractvalue %dx.types.ResRet.f32 %8238, 0
  %8240 = extractvalue %dx.types.ResRet.f32 %8238, 1
  %8241 = extractvalue %dx.types.ResRet.f32 %8238, 2
  %8242 = fadd fast float %8239, -5.000000e-01
  %8243 = fadd fast float %8240, -5.000000e-01
  %8244 = fadd fast float %8241, -5.000000e-01
  %8245 = fmul fast float %5743, 4.000000e+00
  %8246 = fmul fast float %8245, %8114
  %8247 = fmul fast float %8246, %8242
  %8248 = fmul fast float %5744, 4.000000e+00
  %8249 = fmul fast float %8248, %8115
  %8250 = fmul fast float %8249, %8243
  %8251 = fmul fast float %5752, 4.000000e+00
  %8252 = fmul fast float %8251, %8116
  %8253 = fmul fast float %8252, %8244
  %8254 = fadd fast float %8247, %8234
  %8255 = fadd fast float %8250, %8235
  %8256 = fadd fast float %8253, %8236
  %8257 = call float @dx.op.unary.f32(i32 7, float %8254)  ; Saturate(value)
  %8258 = call float @dx.op.unary.f32(i32 7, float %8255)  ; Saturate(value)
  %8259 = call float @dx.op.unary.f32(i32 7, float %8256)  ; Saturate(value)
  br label %8260

; <label>:8260                                    ; preds = %8237, %8192
  %8261 = phi float [ %8257, %8237 ], [ %8234, %8192 ]
  %8262 = phi float [ %8258, %8237 ], [ %8235, %8192 ]
  %8263 = phi float [ %8259, %8237 ], [ %8236, %8192 ]
  %8264 = call float @dx.op.binary.f32(i32 35, float %8262, float %8263)  ; FMax(a,b)
  %8265 = call float @dx.op.binary.f32(i32 35, float %8261, float %8264)  ; FMax(a,b)
  %8266 = fsub fast float 1.000000e+00, %8265
  %8267 = fmul fast float %5769, %6659
  %8268 = fadd fast float %6661, %8267
  %8269 = call float @dx.op.unary.f32(i32 7, float %8268)  ; Saturate(value)
  %8270 = fsub fast float %6686, %5760
  %8271 = fsub fast float %6687, %5761
  %8272 = fsub fast float %6688, %5762
  %8273 = call float @dx.op.dot3.f32(i32 55, float %8270, float %8271, float %8272, float %8270, float %8271, float %8272)  ; Dot3(ax,ay,az,bx,by,bz)
  %8274 = call float @dx.op.unary.f32(i32 25, float %8273)  ; Rsqrt(value)
  %8275 = fmul fast float %8274, %8270
  %8276 = fmul fast float %8274, %8271
  %8277 = fmul fast float %8274, %8272
  %8278 = call float @dx.op.dot3.f32(i32 55, float %8213, float %8214, float %8215, float %8275, float %8276, float %8277)  ; Dot3(ax,ay,az,bx,by,bz)
  %8279 = fmul fast float %8278, %8278
  %8280 = call float @dx.op.unary.f32(i32 6, float %8217)  ; FAbs(value)
  %8281 = call float @dx.op.binary.f32(i32 35, float %8269, float 0x3F847AE140000000)  ; FMax(a,b)
  %8282 = fmul fast float %8281, %8281
  %8283 = fmul fast float %8282, %8282
  %8284 = fsub fast float 1.000000e+00, %8283
  %8285 = fmul fast float %8078, %8284
  %8286 = fadd fast float %8285, %8283
  %8287 = bitcast float %8286 to i32
  %8288 = ashr i32 %8287, 1
  %8289 = add nsw i32 %8288, 532487669
  %8290 = bitcast i32 %8289 to float
  %8291 = fadd fast float %8290, %5754
  %8292 = fmul fast float %8283, %8279
  %8293 = fsub fast float 1.000000e+00, %8279
  %8294 = fadd fast float %8293, %8292
  %8295 = fmul fast float %8280, %8280
  %8296 = fmul fast float %8295, %8284
  %8297 = fadd fast float %8296, %8283
  %8298 = bitcast float %8297 to i32
  %8299 = ashr i32 %8298, 1
  %8300 = add nsw i32 %8299, 532487669
  %8301 = bitcast i32 %8300 to float
  %8302 = fadd fast float %8301, %8280
  %8303 = fmul fast float %8294, %8294
  %8304 = fmul fast float %8303, %8291
  %8305 = fmul fast float %8304, %8302
  %8306 = fdiv fast float 0x3FF0A00000000000, %8305
  %8307 = fmul fast float %8306, %8283
  %8308 = fmul fast float %8217, %8210
  %8309 = fmul fast float %8217, %8211
  %8310 = fmul fast float %8217, %8212
  %8311 = fmul fast float %8308, %8266
  %8312 = fmul fast float %8311, %8307
  %8313 = fmul fast float %8309, %8266
  %8314 = fmul fast float %8313, %8307
  %8315 = fmul fast float %8310, %8266
  %8316 = fmul fast float %8315, %8307
  %8317 = fmul fast float %8147, %8101
  %8318 = fmul fast float %8148, %8101
  %8319 = fmul fast float %8149, %8101
  %8320 = fsub fast float 1.000000e+00, %8068
  %8321 = bitcast float %8320 to i32
  %8322 = sitofp i32 %8321 to float
  %8323 = fmul fast float %8322, 5.000000e+00
  %8324 = fadd fast float %8323, 0xC1EFBF8940000000
  %8325 = fptosi float %8324 to i32
  %8326 = bitcast i32 %8325 to float
  %8327 = fmul fast float %8326, %5106
  %8328 = fmul fast float %8198, %8327
  %8329 = fmul fast float %8328, %6587
  %8330 = fmul fast float %8328, %6588
  %8331 = fmul fast float %8328, %6589
  %8332 = fadd fast float %8329, %8317
  %8333 = fadd fast float %8330, %8318
  %8334 = fadd fast float %8331, %8319
  %8335 = fmul fast float %8332, %8073
  %8336 = fmul fast float %8333, %8073
  %8337 = fmul fast float %8334, %8073
  %8338 = fmul fast float %8073, %8056
  %8339 = fmul fast float %8338, %8198
  %8340 = fmul fast float %8073, %8057
  %8341 = fmul fast float %8340, %8198
  %8342 = fmul fast float %8073, %8058
  %8343 = fmul fast float %8342, %8198
  %8344 = fadd fast float %8335, %8312
  %8345 = fadd fast float %8336, %8314
  %8346 = fadd fast float %8337, %8316
  %8347 = fmul fast float %8344, %8056
  %8348 = fmul fast float %8345, %8057
  %8349 = fmul fast float %8346, %8058
  %8350 = fadd fast float %8339, %6676
  %8351 = fmul fast float %8350, %5131
  %8352 = fadd fast float %8341, %6678
  %8353 = fmul fast float %8352, %5131
  %8354 = fadd fast float %8343, %6680
  %8355 = fmul fast float %8354, %5131
  %8356 = fadd fast float %8347, %6640
  %8357 = fmul fast float %8356, %5131
  %8358 = fadd fast float %8348, %6643
  %8359 = fmul fast float %8358, %5131
  %8360 = fadd fast float %8349, %6646
  %8361 = fmul fast float %8360, %5131
  br label %8362

; <label>:8362                                    ; preds = %8260, %7974, %6570
  %8363 = phi float [ %6641, %6570 ], [ %6641, %7974 ], [ %8357, %8260 ]
  %8364 = phi float [ %6644, %6570 ], [ %6644, %7974 ], [ %8359, %8260 ]
  %8365 = phi float [ %6647, %6570 ], [ %6647, %7974 ], [ %8361, %8260 ]
  %8366 = phi float [ %6677, %6570 ], [ %6677, %7974 ], [ %8351, %8260 ]
  %8367 = phi float [ %6679, %6570 ], [ %6679, %7974 ], [ %8353, %8260 ]
  %8368 = phi float [ %6681, %6570 ], [ %6681, %7974 ], [ %8355, %8260 ]
  %8369 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %8370 = extractvalue %dx.types.CBufRet.i32 %8369, 0
  %8371 = icmp eq i32 %8370, 0
  br i1 %8371, label %9189, label %8372

; <label>:8372                                    ; preds = %8362
  %8373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %8374 = extractvalue %dx.types.CBufRet.f32 %8373, 2
  %8375 = extractvalue %dx.types.CBufRet.f32 %8373, 3
  %8376 = fmul fast float %8374, %109
  %8377 = fmul fast float %8375, %110
  %8378 = fptoui float %8376 to i32
  %8379 = fptoui float %8377 to i32
  %8380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8381 = extractvalue %dx.types.CBufRet.f32 %8380, 0
  %8382 = extractvalue %dx.types.CBufRet.f32 %8380, 2
  %8383 = extractvalue %dx.types.CBufRet.f32 %8380, 3
  %8384 = fadd fast float %97, -4.000000e+00
  %8385 = call float @dx.op.binary.f32(i32 35, float %8384, float 0.000000e+00)  ; FMax(a,b)
  %8386 = fadd fast float %8385, %8381
  %8387 = fmul fast float %8386, %8382
  %8388 = call float @dx.op.unary.f32(i32 23, float %8387)  ; Log(value)
  %8389 = fmul fast float %8388, %8383
  %8390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8391 = extractvalue %dx.types.CBufRet.f32 %8390, 2
  %8392 = fmul fast float %8389, %8391
  %8393 = call float @dx.op.unary.f32(i32 7, float %8392)  ; Saturate(value)
  %8394 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8395 = extractvalue %dx.types.CBufRet.i32 %8394, 1
  %8396 = add i32 %8395, -1
  %8397 = uitofp i32 %8395 to float
  %8398 = fmul fast float %8397, %8393
  %8399 = fptoui float %8398 to i32
  %8400 = call i32 @dx.op.binary.i32(i32 40, i32 %8399, i32 %8396)  ; UMin(a,b)
  %8401 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %8402 = extractvalue %dx.types.CBufRet.i32 %8401, 2
  %8403 = extractvalue %dx.types.CBufRet.i32 %8401, 3
  %8404 = call i32 @dx.op.tertiary.i32(i32 49, i32 %8379, i32 %8402, i32 %8378)  ; UMad(a,b,c)
  %8405 = call i32 @dx.op.tertiary.i32(i32 49, i32 %8400, i32 %8403, i32 %8404)  ; UMad(a,b,c)
  %8406 = add nsw i32 %8370, -1
  %8407 = call i32 @dx.op.binary.i32(i32 37, i32 %8406, i32 0)  ; IMax(a,b)
  %8408 = call float @dx.op.binary.f32(i32 35, float %97, float 0.000000e+00)  ; FMax(a,b)
  %8409 = fptoui float %8408 to i32
  %8410 = lshr i32 %8409, 5
  %8411 = call i32 @dx.op.binary.i32(i32 40, i32 %8410, i32 8191)  ; UMin(a,b)
  %8412 = shl i32 %8411, 2
  %8413 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %8412, i32 undef)  ; BufferLoad(srv,index,wot)
  %8414 = extractvalue %dx.types.ResRet.i32 %8413, 0
  %8415 = lshr i32 %8414, 16
  %8416 = and i32 %8414, 65535
  %8417 = lshr i32 %8414, 21
  %8418 = lshr i32 %8416, 5
  %8419 = call i32 @dx.op.binary.i32(i32 40, i32 %8418, i32 %8407)  ; UMin(a,b)
  %8420 = icmp ugt i32 %8417, %8419
  br i1 %8420, label %9189, label %8421

; <label>:8421                                    ; preds = %8372
  br label %8422

; <label>:8422                                    ; preds = %9179, %8421
  %8423 = phi i32 [ %9186, %9179 ], [ %8417, %8421 ]
  %8424 = phi float [ %9180, %9179 ], [ %8363, %8421 ]
  %8425 = phi float [ %9181, %9179 ], [ %8364, %8421 ]
  %8426 = phi float [ %9182, %9179 ], [ %8365, %8421 ]
  %8427 = phi float [ %9183, %9179 ], [ %8366, %8421 ]
  %8428 = phi float [ %9184, %9179 ], [ %8367, %8421 ]
  %8429 = phi float [ %9185, %9179 ], [ %8368, %8421 ]
  %8430 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %8431 = extractvalue %dx.types.CBufRet.i32 %8430, 0
  %8432 = call i32 @dx.op.tertiary.i32(i32 49, i32 %8405, i32 %8431, i32 %8423)  ; UMad(a,b,c)
  %8433 = shl i32 %8432, 2
  %8434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %8433, i32 undef)  ; BufferLoad(srv,index,wot)
  %8435 = extractvalue %dx.types.ResRet.i32 %8434, 0
  %8436 = shl i32 %8423, 5
  %8437 = sub nsw i32 %8415, %8436
  %8438 = call i32 @dx.op.binary.i32(i32 37, i32 %8437, i32 0)  ; IMax(a,b)
  %8439 = call i32 @dx.op.binary.i32(i32 38, i32 %8438, i32 31)  ; IMin(a,b)
  %8440 = sub nsw i32 1, %8415
  %8441 = add nsw i32 %8440, %8416
  %8442 = call i32 @dx.op.binary.i32(i32 37, i32 %8441, i32 0)  ; IMax(a,b)
  %8443 = call i32 @dx.op.binary.i32(i32 38, i32 %8442, i32 32)  ; IMin(a,b)
  %8444 = and i32 %8443, 31
  %8445 = shl i32 -1, %8444
  %8446 = xor i32 %8445, -1
  %8447 = and i32 %8439, 31
  %8448 = shl i32 %8446, %8447
  %8449 = icmp eq i32 %8443, 32
  %8450 = select i1 %8449, i32 -1, i32 %8448
  %8451 = and i32 %8450, %8435
  %8452 = icmp eq i32 %8451, 0
  br i1 %8452, label %9179, label %8453

; <label>:8453                                    ; preds = %8422
  br label %8454

; <label>:8454                                    ; preds = %8589, %8453
  %8455 = phi i32 [ %8466, %8589 ], [ %8451, %8453 ]
  %8456 = phi float [ %8590, %8589 ], [ %8424, %8453 ]
  %8457 = phi float [ %8591, %8589 ], [ %8425, %8453 ]
  %8458 = phi float [ %8592, %8589 ], [ %8426, %8453 ]
  %8459 = phi float [ %8593, %8589 ], [ %8427, %8453 ]
  %8460 = phi float [ %8594, %8589 ], [ %8428, %8453 ]
  %8461 = phi float [ %8595, %8589 ], [ %8429, %8453 ]
  %8462 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %8455)  ; FirstbitLo(value)
  %8463 = add i32 %8462, %8436
  %8464 = and i32 %8462, 31
  %8465 = shl i32 1, %8464
  %8466 = xor i32 %8465, %8455
  %8467 = mul i32 %8463, 112
  %8468 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8467, i32 undef)  ; BufferLoad(srv,index,wot)
  %8469 = extractvalue %dx.types.ResRet.f32 %8468, 0
  %8470 = extractvalue %dx.types.ResRet.f32 %8468, 1
  %8471 = extractvalue %dx.types.ResRet.f32 %8468, 2
  %8472 = or i32 %8467, 12
  %8473 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8472, i32 undef)  ; BufferLoad(srv,index,wot)
  %8474 = extractvalue %dx.types.ResRet.f32 %8473, 0
  %8475 = add i32 %8467, 16
  %8476 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8475, i32 undef)  ; BufferLoad(srv,index,wot)
  %8477 = extractvalue %dx.types.ResRet.f32 %8476, 0
  %8478 = extractvalue %dx.types.ResRet.f32 %8476, 1
  %8479 = extractvalue %dx.types.ResRet.f32 %8476, 2
  %8480 = add i32 %8467, 28
  %8481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %8480, i32 undef)  ; BufferLoad(srv,index,wot)
  %8482 = extractvalue %dx.types.ResRet.i32 %8481, 0
  %8483 = add i32 %8467, 44
  %8484 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8483, i32 undef)  ; BufferLoad(srv,index,wot)
  %8485 = extractvalue %dx.types.ResRet.f32 %8484, 0
  %8486 = add i32 %8467, 48
  %8487 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8486, i32 undef)  ; BufferLoad(srv,index,wot)
  %8488 = extractvalue %dx.types.ResRet.f32 %8487, 0
  %8489 = extractvalue %dx.types.ResRet.f32 %8487, 1
  %8490 = extractvalue %dx.types.ResRet.f32 %8487, 2
  %8491 = extractvalue %dx.types.ResRet.f32 %8487, 3
  %8492 = add i32 %8467, 64
  %8493 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8492, i32 undef)  ; BufferLoad(srv,index,wot)
  %8494 = extractvalue %dx.types.ResRet.f32 %8493, 0
  %8495 = extractvalue %dx.types.ResRet.f32 %8493, 1
  %8496 = extractvalue %dx.types.ResRet.f32 %8493, 2
  %8497 = extractvalue %dx.types.ResRet.f32 %8493, 3
  %8498 = add i32 %8467, 80
  %8499 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8498, i32 undef)  ; BufferLoad(srv,index,wot)
  %8500 = extractvalue %dx.types.ResRet.f32 %8499, 1
  %8501 = extractvalue %dx.types.ResRet.f32 %8499, 2
  %8502 = add i32 %8467, 92
  %8503 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %8502, i32 undef)  ; BufferLoad(srv,index,wot)
  %8504 = extractvalue %dx.types.ResRet.i32 %8503, 0
  %8505 = call float @dx.op.dot3.f32(i32 55, float %8469, float %8470, float %8471, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8506 = select i1 %258, float %8500, float %8469
  %8507 = select i1 %258, float %8505, float %8470
  %8508 = select i1 %258, float %8501, float %8471
  %8509 = and i32 %8504, 65535
  %8510 = uitofp i32 %8509 to float
  %8511 = lshr i32 %8504, 16
  %8512 = uitofp i32 %8511 to float
  %8513 = and i32 %8482, 65535
  %8514 = and i32 %8482, 50331648
  %8515 = icmp slt i32 %8482, 0
  %8516 = icmp eq i32 %8514, 33554432
  %8517 = fsub fast float %8488, %164
  %8518 = fsub fast float %8489, %165
  %8519 = fsub fast float %8490, %166
  %8520 = call float @dx.op.dot3.f32(i32 55, float %8517, float %8518, float %8519, float %8517, float %8518, float %8519)  ; Dot3(ax,ay,az,bx,by,bz)
  %8521 = call float @dx.op.unary.f32(i32 24, float %8520)  ; Sqrt(value)
  %8522 = fdiv fast float 1.000000e+00, %8521
  %8523 = fmul fast float %8522, %8517
  %8524 = fmul fast float %8522, %8518
  %8525 = fmul fast float %8522, %8519
  %8526 = fadd fast float %8521, %8474
  %8527 = fdiv fast float 1.000000e+00, %8526
  %8528 = fmul float %8485, %8527
  %8529 = fmul float %8528, %8528
  %8530 = call float @dx.op.unary.f32(i32 7, float %8529)  ; Saturate(value)
  br i1 %8516, label %8531, label %8552

; <label>:8531                                    ; preds = %8454
  %8532 = fmul fast float %8496, %8477
  %8533 = fmul fast float %8496, %8478
  %8534 = fmul fast float %8496, %8479
  %8535 = fadd fast float %8517, %8532
  %8536 = fadd fast float %8518, %8533
  %8537 = fadd fast float %8519, %8534
  %8538 = call float @dx.op.dot3.f32(i32 55, float %8535, float %8536, float %8537, float %8535, float %8536, float %8537)  ; Dot3(ax,ay,az,bx,by,bz)
  %8539 = call float @dx.op.unary.f32(i32 25, float %8538)  ; Rsqrt(value)
  %8540 = fmul fast float %8539, %8535
  %8541 = fmul fast float %8539, %8536
  %8542 = fmul fast float %8539, %8537
  %8543 = fsub fast float %164, %8488
  %8544 = fsub fast float %165, %8489
  %8545 = fsub fast float %166, %8490
  %8546 = fsub fast float -0.000000e+00, %8543
  %8547 = fsub fast float -0.000000e+00, %8544
  %8548 = fsub fast float -0.000000e+00, %8545
  %8549 = call float @dx.op.dot3.f32(i32 55, float %8546, float %8547, float %8548, float %8477, float %8478, float %8479)  ; Dot3(ax,ay,az,bx,by,bz)
  %8550 = fcmp fast ogt float %8549, 0.000000e+00
  %8551 = uitofp i1 %8550 to float
  br label %8552

; <label>:8552                                    ; preds = %8531, %8454
  %8553 = phi float [ %8551, %8531 ], [ 1.000000e+00, %8454 ]
  %8554 = phi float [ %8540, %8531 ], [ %8523, %8454 ]
  %8555 = phi float [ %8541, %8531 ], [ %8524, %8454 ]
  %8556 = phi float [ %8542, %8531 ], [ %8525, %8454 ]
  %8557 = call float @dx.op.dot3.f32(i32 55, float %8477, float %8478, float %8479, float %8554, float %8555, float %8556)  ; Dot3(ax,ay,az,bx,by,bz)
  %8558 = fmul fast float %8557, %8557
  %8559 = call float @dx.op.unary.f32(i32 7, float %8558)  ; Saturate(value)
  %8560 = fsub fast float 1.000000e+00, %8559
  %8561 = fmul fast float %8560, 5.000000e-01
  %8562 = fcmp fast ogt float %8557, 0.000000e+00
  %8563 = fsub fast float 1.000000e+00, %8561
  %8564 = select i1 %8562, float %8561, float %8563
  %8565 = fmul fast float %8564, %8512
  %8566 = fadd fast float %8565, %8510
  %8567 = fmul fast float %8566, 0x3EF0001000000000
  %8568 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %54, float %8567, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8569 = extractvalue %dx.types.ResRet.f32 %8568, 0
  %8570 = fmul fast float %8557, %8494
  %8571 = fadd fast float %8570, %8495
  %8572 = call float @dx.op.unary.f32(i32 7, float %8571)  ; Saturate(value)
  %8573 = select i1 %8516, float 1.000000e+00, float %8572
  %8574 = select i1 %8516, float %8572, float 1.000000e+00
  %8575 = fmul fast float %8521, %8491
  %8576 = fsub fast float 1.000000e+00, %8575
  %8577 = fmul fast float %8576, %8497
  %8578 = call float @dx.op.unary.f32(i32 7, float %8577)  ; Saturate(value)
  %8579 = fmul fast float %8578, %8574
  %8580 = fmul fast float %8579, 2.000000e+00
  %8581 = fsub fast float 3.000000e+00, %8580
  %8582 = fmul fast float %8569, %8553
  %8583 = fmul fast float %8579, %8579
  %8584 = fmul fast float %8583, %8582
  %8585 = fmul fast float %8584, %8581
  %8586 = call float @dx.op.binary.f32(i32 36, float %8585, float %8585)  ; FMin(a,b)
  %8587 = call float @dx.op.binary.f32(i32 36, float %8585, float %8586)  ; FMin(a,b)
  %8588 = fcmp fast ogt float %8587, 0.000000e+00
  br i1 %8588, label %8597, label %8589, !dx.controlflow.hints !132

; <label>:8589                                    ; preds = %9132, %8743, %8552
  %8590 = phi float [ %8456, %8743 ], [ %8456, %8552 ], [ %9175, %9132 ]
  %8591 = phi float [ %8457, %8743 ], [ %8457, %8552 ], [ %9176, %9132 ]
  %8592 = phi float [ %8458, %8743 ], [ %8458, %8552 ], [ %9177, %9132 ]
  %8593 = phi float [ %8459, %8743 ], [ %8459, %8552 ], [ %9169, %9132 ]
  %8594 = phi float [ %8460, %8743 ], [ %8460, %8552 ], [ %9170, %9132 ]
  %8595 = phi float [ %8461, %8743 ], [ %8461, %8552 ], [ %9171, %9132 ]
  %8596 = icmp eq i32 %8455, %8465
  br i1 %8596, label %9178, label %8454

; <label>:8597                                    ; preds = %8552
  %8598 = icmp eq i32 %8513, 255
  br i1 %8598, label %8743, label %8599, !dx.controlflow.hints !133

; <label>:8599                                    ; preds = %8597
  %8600 = mul nuw nsw i32 %8513, 176
  %8601 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8600, i32 undef)  ; BufferLoad(srv,index,wot)
  %8602 = extractvalue %dx.types.ResRet.f32 %8601, 0
  %8603 = extractvalue %dx.types.ResRet.f32 %8601, 1
  %8604 = extractvalue %dx.types.ResRet.f32 %8601, 2
  %8605 = extractvalue %dx.types.ResRet.f32 %8601, 3
  %8606 = add nuw nsw i32 %8600, 16
  %8607 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8606, i32 undef)  ; BufferLoad(srv,index,wot)
  %8608 = extractvalue %dx.types.ResRet.f32 %8607, 0
  %8609 = extractvalue %dx.types.ResRet.f32 %8607, 1
  %8610 = add nuw nsw i32 %8600, 32
  %8611 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8610, i32 undef)  ; BufferLoad(srv,index,wot)
  %8612 = extractvalue %dx.types.ResRet.f32 %8611, 0
  %8613 = extractvalue %dx.types.ResRet.f32 %8611, 1
  %8614 = extractvalue %dx.types.ResRet.f32 %8611, 2
  %8615 = add nuw nsw i32 %8600, 48
  %8616 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8615, i32 undef)  ; BufferLoad(srv,index,wot)
  %8617 = extractvalue %dx.types.ResRet.f32 %8616, 0
  %8618 = extractvalue %dx.types.ResRet.f32 %8616, 1
  %8619 = extractvalue %dx.types.ResRet.f32 %8616, 2
  %8620 = extractvalue %dx.types.ResRet.f32 %8616, 3
  %8621 = add nuw nsw i32 %8600, 64
  %8622 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8621, i32 undef)  ; BufferLoad(srv,index,wot)
  %8623 = extractvalue %dx.types.ResRet.f32 %8622, 0
  %8624 = extractvalue %dx.types.ResRet.f32 %8622, 1
  %8625 = extractvalue %dx.types.ResRet.f32 %8622, 2
  %8626 = extractvalue %dx.types.ResRet.f32 %8622, 3
  %8627 = add nuw nsw i32 %8600, 80
  %8628 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8627, i32 undef)  ; BufferLoad(srv,index,wot)
  %8629 = extractvalue %dx.types.ResRet.f32 %8628, 0
  %8630 = extractvalue %dx.types.ResRet.f32 %8628, 1
  %8631 = extractvalue %dx.types.ResRet.f32 %8628, 2
  %8632 = extractvalue %dx.types.ResRet.f32 %8628, 3
  %8633 = add nuw nsw i32 %8600, 96
  %8634 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8633, i32 undef)  ; BufferLoad(srv,index,wot)
  %8635 = extractvalue %dx.types.ResRet.f32 %8634, 0
  %8636 = extractvalue %dx.types.ResRet.f32 %8634, 1
  %8637 = extractvalue %dx.types.ResRet.f32 %8634, 2
  %8638 = extractvalue %dx.types.ResRet.f32 %8634, 3
  %8639 = bitcast float %8609 to i32
  %8640 = fmul fast float %8614, %116
  %8641 = fmul fast float %8614, %117
  %8642 = fmul fast float %8614, %118
  %8643 = fadd fast float %8640, %164
  %8644 = fadd fast float %8641, %165
  %8645 = fadd fast float %8642, %166
  %8646 = fmul fast float %8643, %8617
  %8647 = call float @dx.op.tertiary.f32(i32 46, float %8644, float %8623, float %8646)  ; FMad(a,b,c)
  %8648 = call float @dx.op.tertiary.f32(i32 46, float %8645, float %8629, float %8647)  ; FMad(a,b,c)
  %8649 = fadd fast float %8648, %8635
  %8650 = fmul fast float %8643, %8618
  %8651 = call float @dx.op.tertiary.f32(i32 46, float %8644, float %8624, float %8650)  ; FMad(a,b,c)
  %8652 = call float @dx.op.tertiary.f32(i32 46, float %8645, float %8630, float %8651)  ; FMad(a,b,c)
  %8653 = fadd fast float %8652, %8636
  %8654 = fmul fast float %8643, %8619
  %8655 = call float @dx.op.tertiary.f32(i32 46, float %8644, float %8625, float %8654)  ; FMad(a,b,c)
  %8656 = call float @dx.op.tertiary.f32(i32 46, float %8645, float %8631, float %8655)  ; FMad(a,b,c)
  %8657 = fadd fast float %8656, %8637
  %8658 = fmul fast float %8643, %8620
  %8659 = call float @dx.op.tertiary.f32(i32 46, float %8644, float %8626, float %8658)  ; FMad(a,b,c)
  %8660 = call float @dx.op.tertiary.f32(i32 46, float %8645, float %8632, float %8659)  ; FMad(a,b,c)
  %8661 = fadd fast float %8660, %8638
  %8662 = fdiv fast float %8649, %8661
  %8663 = fdiv fast float %8653, %8661
  %8664 = fdiv fast float %8657, %8661
  %8665 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %8664)  ; FMax(a,b)
  %8666 = fmul fast float %269, 0x401921FB60000000
  %8667 = call float @dx.op.unary.f32(i32 13, float %8666)  ; Sin(value)
  %8668 = call float @dx.op.unary.f32(i32 12, float %8666)  ; Cos(value)
  %8669 = fmul fast float %8668, %8613
  %8670 = call float @dx.op.tertiary.f32(i32 46, float %8667, float %8613, float 0.000000e+00)  ; FMad(a,b,c)
  %8671 = fmul fast float %8613, %8667
  %8672 = fsub fast float -0.000000e+00, %8671
  %8673 = call float @dx.op.tertiary.f32(i32 46, float %8668, float %8613, float 0.000000e+00)  ; FMad(a,b,c)
  br label %8674

; <label>:8674                                    ; preds = %8674, %8599
  %8675 = phi float [ 0.000000e+00, %8599 ], [ %8707, %8674 ]
  %8676 = phi float [ 0.000000e+00, %8599 ], [ %8709, %8674 ]
  %8677 = phi i32 [ 0, %8599 ], [ %8710, %8674 ]
  %8678 = mul i32 %8677, 2
  %8679 = add i32 0, %8678
  %8680 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8679
  %8681 = load float, float* %8680, align 4
  %8682 = mul i32 %8677, 2
  %8683 = add i32 1, %8682
  %8684 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8683
  %8685 = load float, float* %8684, align 4
  %8686 = fmul fast float %8669, %8681
  %8687 = call float @dx.op.tertiary.f32(i32 46, float %8685, float %8672, float %8686)  ; FMad(a,b,c)
  %8688 = fmul fast float %8681, %8670
  %8689 = call float @dx.op.tertiary.f32(i32 46, float %8685, float %8673, float %8688)  ; FMad(a,b,c)
  %8690 = fadd fast float %8687, %8662
  %8691 = fadd fast float %8689, %8663
  %8692 = fmul fast float %8690, %8608
  %8693 = fmul fast float %8691, %8608
  %8694 = call float @dx.op.binary.f32(i32 35, float %8692, float %8604)  ; FMax(a,b)
  %8695 = call float @dx.op.binary.f32(i32 35, float %8693, float %8604)  ; FMax(a,b)
  %8696 = call float @dx.op.binary.f32(i32 36, float %8694, float %8605)  ; FMin(a,b)
  %8697 = call float @dx.op.binary.f32(i32 36, float %8695, float %8605)  ; FMin(a,b)
  %8698 = fadd fast float %8696, %8602
  %8699 = fadd fast float %8697, %8603
  %8700 = uitofp i32 %8639 to float
  %8701 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %55, float %8698, float %8699, float %8700, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8702 = extractvalue %dx.types.ResRet.f32 %8701, 0
  %8703 = fsub fast float %8702, %8665
  %8704 = fsub fast float %8703, %8612
  %8705 = fcmp fast ogt float %8704, 0.000000e+00
  %8706 = select i1 %8705, float 1.000000e+00, float 0.000000e+00
  %8707 = fadd fast float %8706, %8675
  %8708 = select i1 %8705, float %8704, float 0.000000e+00
  %8709 = fadd fast float %8708, %8676
  %8710 = add nuw nsw i32 %8677, 1
  %8711 = icmp eq i32 %8710, 8
  br i1 %8711, label %8712, label %8674

; <label>:8712                                    ; preds = %8674
  %8713 = fdiv fast float 1.000000e+00, %8707
  %8714 = fmul fast float %8713, %8709
  %8715 = fdiv fast float 1.000000e+00, %8665
  %8716 = fmul fast float %8714, %8715
  %8717 = call float @dx.op.unary.f32(i32 7, float %8716)  ; Saturate(value)
  %8718 = call float @dx.op.binary.f32(i32 35, float %8717, float 0.000000e+00)  ; FMax(a,b)
  %8719 = fmul fast float %8707, 1.250000e-01
  %8720 = call float @dx.op.unary.f32(i32 7, float %8719)  ; Saturate(value)
  %8721 = fmul fast float %8720, 2.000000e+00
  %8722 = fadd fast float %8721, -1.000000e+00
  %8723 = fcmp fast ogt float %8722, 0.000000e+00
  %8724 = fcmp fast olt float %8722, 0.000000e+00
  %8725 = zext i1 %8723 to i32
  %8726 = zext i1 %8724 to i32
  %8727 = sub nsw i32 %8725, %8726
  %8728 = sitofp i32 %8727 to float
  %8729 = fmul fast float %8728, %8722
  %8730 = fsub fast float 1.000000e+00, %8729
  %8731 = fmul fast float %8730, %8730
  %8732 = fmul fast float %8731, %8730
  %8733 = fsub fast float %8730, %8732
  %8734 = fmul fast float %8733, %8718
  %8735 = fsub fast float 1.000000e+00, %8732
  %8736 = fsub fast float %8735, %8734
  %8737 = fmul fast float %8728, 5.000000e-01
  %8738 = fmul fast float %8737, %8736
  %8739 = fsub fast float -5.000000e-01, %8738
  %8740 = fmul fast float %8739, %8573
  %8741 = fadd fast float %8740, 1.000000e+00
  %8742 = fmul fast float %8741, %8585
  br label %8743

; <label>:8743                                    ; preds = %8712, %8597
  %8744 = phi float [ %8742, %8712 ], [ %8585, %8597 ]
  %8745 = call float @dx.op.binary.f32(i32 36, float %8744, float %8744)  ; FMin(a,b)
  %8746 = call float @dx.op.binary.f32(i32 36, float %8744, float %8745)  ; FMin(a,b)
  %8747 = fcmp fast ogt float %8746, 0.000000e+00
  br i1 %8747, label %8748, label %8589, !dx.controlflow.hints !134

; <label>:8748                                    ; preds = %8743
  %8749 = fmul fast float %8744, %8506
  %8750 = fmul fast float %8744, %8507
  %8751 = fmul fast float %8744, %8508
  %8752 = fsub fast float %8490, %5560
  %8753 = fcmp fast ogt float %8752, 0.000000e+00
  %8754 = fsub fast float %166, %5560
  %8755 = fcmp fast ogt float %8754, 0.000000e+00
  %8756 = xor i1 %8755, %8753
  %8757 = fsub fast float %5560, %8490
  %8758 = fmul fast float %8757, 2.000000e+00
  %8759 = fadd fast float %8758, %8490
  %8760 = select i1 %8756, float %8490, float %8759
  %8761 = fsub fast float %8760, %166
  %8762 = call float @dx.op.dot3.f32(i32 55, float %8517, float %8518, float %8761, float %8517, float %8518, float %8761)  ; Dot3(ax,ay,az,bx,by,bz)
  %8763 = call float @dx.op.unary.f32(i32 25, float %8762)  ; Rsqrt(value)
  %8764 = fmul fast float %8763, %8517
  %8765 = fmul fast float %8763, %8518
  %8766 = fmul fast float %8763, %8761
  %8767 = fsub fast float %5560, %166
  %8768 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %8767)  ; Dot3(ax,ay,az,bx,by,bz)
  %8769 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8764, float %8765, float %8766)  ; Dot3(ax,ay,az,bx,by,bz)
  %8770 = fdiv fast float 1.000000e+00, %8769
  %8771 = fmul fast float %8770, %8768
  %8772 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %8754, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8773 = fcmp fast ogt float %8772, 0.000000e+00
  %8774 = fcmp fast olt float %8772, 0.000000e+00
  %8775 = zext i1 %8773 to i32
  %8776 = zext i1 %8774 to i32
  %8777 = sub nsw i32 %8775, %8776
  %8778 = sitofp i32 %8777 to float
  %8779 = fsub fast float %8760, %5560
  %8780 = call float @dx.op.dot3.f32(i32 55, float %8517, float %8518, float %8779, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8781 = fcmp fast ogt float %8780, 0.000000e+00
  %8782 = fcmp fast olt float %8780, 0.000000e+00
  %8783 = zext i1 %8781 to i32
  %8784 = zext i1 %8782 to i32
  %8785 = sub nsw i32 %8783, %8784
  %8786 = sitofp i32 %8785 to float
  %8787 = fcmp fast une float %8778, %8786
  br i1 %8787, label %8788, label %8798

; <label>:8788                                    ; preds = %8748
  %8789 = fmul fast float %8771, %8766
  %8790 = fmul fast float %8771, %8765
  %8791 = fmul fast float %8771, %8764
  %8792 = fmul fast float %8791, %8791
  %8793 = fmul fast float %8790, %8790
  %8794 = fadd fast float %8792, %8793
  %8795 = fmul fast float %8789, %8789
  %8796 = fadd fast float %8794, %8795
  %8797 = call float @dx.op.unary.f32(i32 24, float %8796)  ; Sqrt(value)
  br label %8810

; <label>:8798                                    ; preds = %8748
  %8799 = icmp slt i32 %8777, 0
  br i1 %8799, label %8800, label %8810

; <label>:8800                                    ; preds = %8798
  %8801 = fsub fast float %164, %8488
  %8802 = fsub fast float %165, %8489
  %8803 = fsub fast float %166, %8760
  %8804 = fmul fast float %8801, %8801
  %8805 = fmul fast float %8802, %8802
  %8806 = fadd fast float %8804, %8805
  %8807 = fmul fast float %8803, %8803
  %8808 = fadd fast float %8806, %8807
  %8809 = call float @dx.op.unary.f32(i32 24, float %8808)  ; Sqrt(value)
  br label %8810

; <label>:8810                                    ; preds = %8800, %8798, %8788
  %8811 = phi float [ %8797, %8788 ], [ %8809, %8800 ], [ 0.000000e+00, %8798 ]
  %8812 = and i1 %8755, %8753
  %8813 = fsub fast float -0.000000e+00, %8811
  %8814 = select i1 %8812, float -0.000000e+00, float %8813
  %8815 = fmul fast float %5557, 0x3FF7154760000000
  %8816 = fmul fast float %8815, %8814
  %8817 = fmul fast float %5558, 0x3FF7154760000000
  %8818 = fmul fast float %8817, %8814
  %8819 = fmul fast float %5559, 0x3FF7154760000000
  %8820 = fmul fast float %8819, %8814
  %8821 = call float @dx.op.unary.f32(i32 21, float %8816)  ; Exp(value)
  %8822 = call float @dx.op.unary.f32(i32 21, float %8818)  ; Exp(value)
  %8823 = call float @dx.op.unary.f32(i32 21, float %8820)  ; Exp(value)
  %8824 = call float @dx.op.unary.f32(i32 7, float %8821)  ; Saturate(value)
  %8825 = call float @dx.op.unary.f32(i32 7, float %8822)  ; Saturate(value)
  %8826 = call float @dx.op.unary.f32(i32 7, float %8823)  ; Saturate(value)
  %8827 = fmul fast float %8749, %8824
  %8828 = fmul fast float %8750, %8825
  %8829 = fmul fast float %8751, %8826
  %8830 = fsub fast float %8523, %184
  %8831 = fsub fast float %8524, %185
  %8832 = fsub fast float %8525, %186
  %8833 = call float @dx.op.dot3.f32(i32 55, float %8830, float %8831, float %8832, float %8830, float %8831, float %8832)  ; Dot3(ax,ay,az,bx,by,bz)
  %8834 = call float @dx.op.unary.f32(i32 25, float %8833)  ; Rsqrt(value)
  %8835 = fmul fast float %8834, %8830
  %8836 = fmul fast float %8834, %8831
  %8837 = fmul fast float %8834, %8832
  %8838 = call float @dx.op.dot3.f32(i32 55, float %8523, float %8524, float %8525, float %5746, float %5747, float %5748)  ; Dot3(ax,ay,az,bx,by,bz)
  %8839 = call float @dx.op.dot3.f32(i32 55, float %5574, float %5575, float %5576, float %8835, float %8836, float %8837)  ; Dot3(ax,ay,az,bx,by,bz)
  %8840 = call float @dx.op.unary.f32(i32 7, float %8838)  ; Saturate(value)
  %8841 = fmul fast float %8840, %8530
  %8842 = fmul fast float %8840, %8840
  %8843 = fmul fast float %8842, %5779
  %8844 = call float @dx.op.unary.f32(i32 7, float %8843)  ; Saturate(value)
  %8845 = fmul fast float %8841, %8844
  %8846 = bitcast float %8520 to i32
  %8847 = ashr i32 %8846, 1
  %8848 = sub nsw i32 1597463007, %8847
  %8849 = bitcast i32 %8848 to float
  %8850 = fmul fast float %8849, %8517
  %8851 = fmul fast float %8849, %8518
  %8852 = fmul fast float %8849, %8519
  %8853 = fsub fast float %8850, %184
  %8854 = fsub fast float %8851, %185
  %8855 = fsub fast float %8852, %186
  %8856 = call float @dx.op.dot3.f32(i32 55, float %8853, float %8854, float %8855, float %8853, float %8854, float %8855)  ; Dot3(ax,ay,az,bx,by,bz)
  %8857 = call float @dx.op.unary.f32(i32 25, float %8856)  ; Rsqrt(value)
  %8858 = fmul fast float %8853, %8857
  %8859 = fmul fast float %8854, %8857
  %8860 = fmul fast float %8855, %8857
  %8861 = call float @dx.op.dot3.f32(i32 55, float %5746, float %5747, float %5748, float %8858, float %8859, float %8860)  ; Dot3(ax,ay,az,bx,by,bz)
  %8862 = fmul fast float %8861, %8861
  %8863 = call float @dx.op.unary.f32(i32 6, float %8838)  ; FAbs(value)
  %8864 = fsub fast float 1.000000e+00, %5772
  %8865 = fmul fast float %5754, %5754
  %8866 = fmul fast float %8865, %8864
  %8867 = fadd fast float %8866, %5772
  %8868 = bitcast float %8867 to i32
  %8869 = ashr i32 %8868, 1
  %8870 = add nsw i32 %8869, 532487669
  %8871 = bitcast i32 %8870 to float
  %8872 = fadd fast float %8871, %5754
  %8873 = fmul fast float %5772, %8862
  %8874 = fsub fast float 1.000000e+00, %8862
  %8875 = fadd fast float %8874, %8873
  %8876 = fmul fast float %8863, %8863
  %8877 = fmul fast float %8876, %8864
  %8878 = fadd fast float %8877, %5772
  %8879 = bitcast float %8878 to i32
  %8880 = ashr i32 %8879, 1
  %8881 = add nsw i32 %8880, 532487669
  %8882 = bitcast i32 %8881 to float
  %8883 = fadd fast float %8882, %8863
  %8884 = fmul fast float %8875, %8875
  %8885 = fmul fast float %8884, %8872
  %8886 = fmul fast float %8885, %8883
  %8887 = fdiv fast float 1.000000e+00, %8886
  %8888 = bitcast float %5772 to i32
  %8889 = sitofp i32 %8888 to float
  %8890 = fmul fast float %8889, 0x3FE7F73180000000
  %8891 = fadd fast float %8890, 0x41AFE27C40000000
  %8892 = fptosi float %8891 to i32
  %8893 = bitcast i32 %8892 to float
  %8894 = fmul fast float %8485, 0x3FD80E9D60000000
  %8895 = fmul fast float %8894, %8849
  %8896 = fadd fast float %8893, %8895
  %8897 = bitcast float %8896 to i32
  %8898 = sub nsw i32 2129859010, %8897
  %8899 = bitcast i32 %8898 to float
  %8900 = fmul fast float %5772, %8887
  %8901 = fmul fast float %8900, %8893
  %8902 = fmul fast float %8901, %8899
  %8903 = fmul fast float %6025, 0x3FF9999980000000
  %8904 = fsub fast float 5.000000e+00, %8903
  %8905 = call float @dx.op.unary.f32(i32 6, float %8839)  ; FAbs(value)
  %8906 = fsub fast float 1.000000e+00, %8905
  %8907 = fmul fast float %6025, 0x41D9660740000000
  %8908 = fadd fast float %8907, 0xC1EFBF8940000000
  %8909 = bitcast float %8906 to i32
  %8910 = sitofp i32 %8909 to float
  %8911 = fmul fast float %8910, %8904
  %8912 = fadd fast float %8908, %8911
  %8913 = fptosi float %8912 to i32
  %8914 = bitcast i32 %8913 to float
  %8915 = fsub fast float 1.000000e+00, %5743
  %8916 = fsub fast float 1.000000e+00, %5744
  %8917 = fsub fast float 1.000000e+00, %5752
  %8918 = fmul fast float %8914, %8915
  %8919 = fmul fast float %8914, %8916
  %8920 = fmul fast float %8914, %8917
  %8921 = fadd fast float %8918, %5743
  %8922 = fadd fast float %8919, %5744
  %8923 = fadd fast float %8920, %5752
  br i1 %6048, label %8924, label %8947

; <label>:8924                                    ; preds = %8810
  %8925 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %5105, float %8905, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8926 = extractvalue %dx.types.ResRet.f32 %8925, 0
  %8927 = extractvalue %dx.types.ResRet.f32 %8925, 1
  %8928 = extractvalue %dx.types.ResRet.f32 %8925, 2
  %8929 = fadd fast float %8926, -5.000000e-01
  %8930 = fadd fast float %8927, -5.000000e-01
  %8931 = fadd fast float %8928, -5.000000e-01
  %8932 = fmul fast float %5743, 4.000000e+00
  %8933 = fmul fast float %8932, %8915
  %8934 = fmul fast float %8933, %8929
  %8935 = fmul fast float %5744, 4.000000e+00
  %8936 = fmul fast float %8935, %8916
  %8937 = fmul fast float %8936, %8930
  %8938 = fmul fast float %5752, 4.000000e+00
  %8939 = fmul fast float %8938, %8917
  %8940 = fmul fast float %8939, %8931
  %8941 = fadd fast float %8934, %8921
  %8942 = fadd fast float %8937, %8922
  %8943 = fadd fast float %8940, %8923
  %8944 = call float @dx.op.unary.f32(i32 7, float %8941)  ; Saturate(value)
  %8945 = call float @dx.op.unary.f32(i32 7, float %8942)  ; Saturate(value)
  %8946 = call float @dx.op.unary.f32(i32 7, float %8943)  ; Saturate(value)
  br label %8947

; <label>:8947                                    ; preds = %8924, %8810
  %8948 = phi float [ %8944, %8924 ], [ %8921, %8810 ]
  %8949 = phi float [ %8945, %8924 ], [ %8922, %8810 ]
  %8950 = phi float [ %8946, %8924 ], [ %8923, %8810 ]
  %8951 = fmul fast float %8838, 9.843750e-01
  %8952 = fadd fast float %8951, 7.812500e-03
  %8953 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %8952, float %6029, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8954 = extractvalue %dx.types.ResRet.f32 %8953, 0
  %8955 = extractvalue %dx.types.ResRet.f32 %8953, 1
  %8956 = extractvalue %dx.types.ResRet.f32 %8953, 2
  %8957 = extractvalue %dx.types.ResRet.f32 %8953, 3
  %8958 = fsub fast float %8956, %8954
  %8959 = fsub fast float %8957, %8955
  %8960 = fmul fast float %8958, %6035
  %8961 = fmul fast float %8959, %6035
  %8962 = fadd fast float %8960, %8954
  %8963 = fadd fast float %8961, %8955
  %8964 = fmul fast float %8962, %5743
  %8965 = fmul fast float %8962, %5744
  %8966 = fmul fast float %8962, %5752
  %8967 = fadd fast float %8964, %8963
  %8968 = fadd fast float %8965, %8963
  %8969 = fadd fast float %8966, %8963
  br i1 %6048, label %8970, label %8993

; <label>:8970                                    ; preds = %8947
  %8971 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %5105, float %8838, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8972 = extractvalue %dx.types.ResRet.f32 %8971, 0
  %8973 = extractvalue %dx.types.ResRet.f32 %8971, 1
  %8974 = extractvalue %dx.types.ResRet.f32 %8971, 2
  %8975 = fadd fast float %8972, -5.000000e-01
  %8976 = fadd fast float %8973, -5.000000e-01
  %8977 = fadd fast float %8974, -5.000000e-01
  %8978 = fmul fast float %5743, 4.000000e+00
  %8979 = fmul fast float %8978, %8915
  %8980 = fmul fast float %8979, %8975
  %8981 = fmul fast float %5744, 4.000000e+00
  %8982 = fmul fast float %8981, %8916
  %8983 = fmul fast float %8982, %8976
  %8984 = fmul fast float %5752, 4.000000e+00
  %8985 = fmul fast float %8984, %8917
  %8986 = fmul fast float %8985, %8977
  %8987 = fadd fast float %8980, %8967
  %8988 = fadd fast float %8983, %8968
  %8989 = fadd fast float %8986, %8969
  %8990 = call float @dx.op.unary.f32(i32 7, float %8987)  ; Saturate(value)
  %8991 = call float @dx.op.unary.f32(i32 7, float %8988)  ; Saturate(value)
  %8992 = call float @dx.op.unary.f32(i32 7, float %8989)  ; Saturate(value)
  br label %8993

; <label>:8993                                    ; preds = %8970, %8947
  %8994 = phi float [ %8990, %8970 ], [ %8967, %8947 ]
  %8995 = phi float [ %8991, %8970 ], [ %8968, %8947 ]
  %8996 = phi float [ %8992, %8970 ], [ %8969, %8947 ]
  %8997 = call float @dx.op.binary.f32(i32 35, float %8995, float %8996)  ; FMax(a,b)
  %8998 = call float @dx.op.binary.f32(i32 35, float %8994, float %8997)  ; FMax(a,b)
  %8999 = fsub fast float 1.000000e+00, %8998
  %9000 = call float @dx.op.binary.f32(i32 35, float %8863, float 0x3F50624DE0000000)  ; FMax(a,b)
  %9001 = fdiv fast float %4459, %9000
  %9002 = fmul fast float %6595, %9001
  %9003 = fmul fast float %6597, %9001
  %9004 = fmul fast float %6599, %9001
  %9005 = call float @dx.op.unary.f32(i32 21, float %9002)  ; Exp(value)
  %9006 = call float @dx.op.unary.f32(i32 21, float %9003)  ; Exp(value)
  %9007 = call float @dx.op.unary.f32(i32 21, float %9004)  ; Exp(value)
  %9008 = call float @dx.op.unary.f32(i32 7, float %9005)  ; Saturate(value)
  %9009 = call float @dx.op.unary.f32(i32 7, float %9006)  ; Saturate(value)
  %9010 = call float @dx.op.unary.f32(i32 7, float %9007)  ; Saturate(value)
  %9011 = select i1 %6592, float %9008, float 0.000000e+00
  %9012 = select i1 %6593, float %9009, float 0.000000e+00
  %9013 = select i1 %6594, float %9010, float 0.000000e+00
  %9014 = fsub fast float -0.000000e+00, %5746
  %9015 = fsub fast float -0.000000e+00, %5747
  %9016 = fsub fast float -0.000000e+00, %5748
  %9017 = call float @dx.op.dot3.f32(i32 55, float %8523, float %8524, float %8525, float %9014, float %9015, float %9016)  ; Dot3(ax,ay,az,bx,by,bz)
  %9018 = call float @dx.op.unary.f32(i32 7, float %9017)  ; Saturate(value)
  %9019 = fmul fast float %9018, %8530
  %9020 = fmul fast float %9018, 9.843750e-01
  %9021 = fadd fast float %9020, 7.812500e-03
  %9022 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %9021, float %6029, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9023 = extractvalue %dx.types.ResRet.f32 %9022, 0
  %9024 = extractvalue %dx.types.ResRet.f32 %9022, 1
  %9025 = extractvalue %dx.types.ResRet.f32 %9022, 2
  %9026 = extractvalue %dx.types.ResRet.f32 %9022, 3
  %9027 = fsub fast float %9025, %9023
  %9028 = fsub fast float %9026, %9024
  %9029 = fmul fast float %9027, %6035
  %9030 = fmul fast float %9028, %6035
  %9031 = fadd fast float %9029, %9023
  %9032 = fadd fast float %9030, %9024
  %9033 = fmul fast float %9031, %5743
  %9034 = fmul fast float %9031, %5744
  %9035 = fmul fast float %9031, %5752
  %9036 = fadd fast float %9033, %9032
  %9037 = fadd fast float %9034, %9032
  %9038 = fadd fast float %9035, %9032
  br i1 %6048, label %9039, label %9062

; <label>:9039                                    ; preds = %8993
  %9040 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %5105, float %9018, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9041 = extractvalue %dx.types.ResRet.f32 %9040, 0
  %9042 = extractvalue %dx.types.ResRet.f32 %9040, 1
  %9043 = extractvalue %dx.types.ResRet.f32 %9040, 2
  %9044 = fadd fast float %9041, -5.000000e-01
  %9045 = fadd fast float %9042, -5.000000e-01
  %9046 = fadd fast float %9043, -5.000000e-01
  %9047 = fmul fast float %5743, 4.000000e+00
  %9048 = fmul fast float %9047, %8915
  %9049 = fmul fast float %9048, %9044
  %9050 = fmul fast float %5744, 4.000000e+00
  %9051 = fmul fast float %9050, %8916
  %9052 = fmul fast float %9051, %9045
  %9053 = fmul fast float %5752, 4.000000e+00
  %9054 = fmul fast float %9053, %8917
  %9055 = fmul fast float %9054, %9046
  %9056 = fadd fast float %9049, %9036
  %9057 = fadd fast float %9052, %9037
  %9058 = fadd fast float %9055, %9038
  %9059 = call float @dx.op.unary.f32(i32 7, float %9056)  ; Saturate(value)
  %9060 = call float @dx.op.unary.f32(i32 7, float %9057)  ; Saturate(value)
  %9061 = call float @dx.op.unary.f32(i32 7, float %9058)  ; Saturate(value)
  br label %9062

; <label>:9062                                    ; preds = %9039, %8993
  %9063 = phi float [ %9059, %9039 ], [ %9036, %8993 ]
  %9064 = phi float [ %9060, %9039 ], [ %9037, %8993 ]
  %9065 = phi float [ %9061, %9039 ], [ %9038, %8993 ]
  %9066 = call float @dx.op.binary.f32(i32 35, float %9064, float %9065)  ; FMax(a,b)
  %9067 = call float @dx.op.binary.f32(i32 35, float %9063, float %9066)  ; FMax(a,b)
  %9068 = fsub fast float 1.000000e+00, %9067
  %9069 = fmul fast float %5769, %6659
  %9070 = fadd fast float %6661, %9069
  %9071 = call float @dx.op.unary.f32(i32 7, float %9070)  ; Saturate(value)
  %9072 = fsub fast float %8850, %5760
  %9073 = fsub fast float %8851, %5761
  %9074 = fsub fast float %8852, %5762
  %9075 = call float @dx.op.dot3.f32(i32 55, float %9072, float %9073, float %9074, float %9072, float %9073, float %9074)  ; Dot3(ax,ay,az,bx,by,bz)
  %9076 = call float @dx.op.unary.f32(i32 25, float %9075)  ; Rsqrt(value)
  %9077 = fmul fast float %9072, %9076
  %9078 = fmul fast float %9073, %9076
  %9079 = fmul fast float %9074, %9076
  %9080 = call float @dx.op.dot3.f32(i32 55, float %9014, float %9015, float %9016, float %9077, float %9078, float %9079)  ; Dot3(ax,ay,az,bx,by,bz)
  %9081 = fmul fast float %9080, %9080
  %9082 = call float @dx.op.unary.f32(i32 6, float %9018)  ; FAbs(value)
  %9083 = call float @dx.op.binary.f32(i32 35, float %9071, float 0x3F847AE140000000)  ; FMax(a,b)
  %9084 = fmul fast float %9083, %9083
  %9085 = fmul fast float %9084, %9084
  %9086 = fsub fast float 1.000000e+00, %9085
  %9087 = fmul fast float %8865, %9086
  %9088 = fadd fast float %9087, %9085
  %9089 = bitcast float %9088 to i32
  %9090 = ashr i32 %9089, 1
  %9091 = add nsw i32 %9090, 532487669
  %9092 = bitcast i32 %9091 to float
  %9093 = fadd fast float %9092, %5754
  %9094 = fmul fast float %9085, %9081
  %9095 = fsub fast float 1.000000e+00, %9081
  %9096 = fadd fast float %9095, %9094
  %9097 = fmul fast float %9082, %9082
  %9098 = fmul fast float %9097, %9086
  %9099 = fadd fast float %9098, %9085
  %9100 = bitcast float %9099 to i32
  %9101 = ashr i32 %9100, 1
  %9102 = add nsw i32 %9101, 532487669
  %9103 = bitcast i32 %9102 to float
  %9104 = fadd fast float %9103, %9082
  %9105 = fmul fast float %9096, %9096
  %9106 = fmul fast float %9105, %9093
  %9107 = fmul fast float %9106, %9104
  %9108 = fdiv fast float 1.000000e+00, %9107
  %9109 = bitcast float %9085 to i32
  %9110 = sitofp i32 %9109 to float
  %9111 = fmul fast float %9110, 0x3FE7F73180000000
  %9112 = fadd fast float %9111, 0x41AFE27C40000000
  %9113 = fptosi float %9112 to i32
  %9114 = bitcast i32 %9113 to float
  %9115 = fadd fast float %9114, %8895
  %9116 = bitcast float %9115 to i32
  %9117 = sub nsw i32 2129859010, %9116
  %9118 = bitcast i32 %9117 to float
  %9119 = fmul fast float %9085, %9108
  %9120 = fmul fast float %9119, %9114
  %9121 = fmul fast float %9120, %9118
  br i1 %8515, label %9122, label %9132

; <label>:9122                                    ; preds = %9062
  %9123 = fmul fast float %9019, %9011
  %9124 = fmul fast float %9019, %9012
  %9125 = fmul fast float %9019, %9013
  %9126 = fmul fast float %9123, %9068
  %9127 = fmul fast float %9126, %9121
  %9128 = fmul fast float %9124, %9068
  %9129 = fmul fast float %9128, %9121
  %9130 = fmul fast float %9125, %9068
  %9131 = fmul fast float %9130, %9121
  br label %9132

; <label>:9132                                    ; preds = %9122, %9062
  %9133 = phi float [ %9127, %9122 ], [ 0.000000e+00, %9062 ]
  %9134 = phi float [ %9129, %9122 ], [ 0.000000e+00, %9062 ]
  %9135 = phi float [ %9131, %9122 ], [ 0.000000e+00, %9062 ]
  %9136 = fmul fast float %8948, %8902
  %9137 = fmul fast float %8949, %8902
  %9138 = fmul fast float %8950, %8902
  %9139 = fsub fast float 1.000000e+00, %8839
  %9140 = bitcast float %9139 to i32
  %9141 = sitofp i32 %9140 to float
  %9142 = fmul fast float %9141, 5.000000e+00
  %9143 = fadd fast float %9142, 0xC1EFBF8940000000
  %9144 = fptosi float %9143 to i32
  %9145 = bitcast i32 %9144 to float
  %9146 = fmul fast float %9145, %5106
  %9147 = fmul fast float %8999, %9146
  %9148 = fmul fast float %9147, %6587
  %9149 = fmul fast float %9147, %6588
  %9150 = fmul fast float %9147, %6589
  %9151 = fadd fast float %9148, %9136
  %9152 = fadd fast float %9149, %9137
  %9153 = fadd fast float %9150, %9138
  %9154 = fmul fast float %9151, %8845
  %9155 = fmul fast float %9152, %8845
  %9156 = fmul fast float %9153, %8845
  %9157 = fadd fast float %9154, %9133
  %9158 = fadd fast float %9155, %9134
  %9159 = fadd fast float %9156, %9135
  %9160 = fmul fast float %8827, %5131
  %9161 = fmul fast float %9160, %8845
  %9162 = fmul fast float %9161, %8999
  %9163 = fmul fast float %8828, %5131
  %9164 = fmul fast float %9163, %8845
  %9165 = fmul fast float %9164, %8999
  %9166 = fmul fast float %8829, %5131
  %9167 = fmul fast float %9166, %8845
  %9168 = fmul fast float %9167, %8999
  %9169 = fadd fast float %9162, %8459
  %9170 = fadd fast float %9165, %8460
  %9171 = fadd fast float %9168, %8461
  %9172 = fmul fast float %9160, %9157
  %9173 = fmul fast float %9163, %9158
  %9174 = fmul fast float %9166, %9159
  %9175 = fadd fast float %9172, %8456
  %9176 = fadd fast float %9173, %8457
  %9177 = fadd fast float %9174, %8458
  br label %8589

; <label>:9178                                    ; preds = %8589
  br label %9179

; <label>:9179                                    ; preds = %9178, %8422
  %9180 = phi float [ %8424, %8422 ], [ %8590, %9178 ]
  %9181 = phi float [ %8425, %8422 ], [ %8591, %9178 ]
  %9182 = phi float [ %8426, %8422 ], [ %8592, %9178 ]
  %9183 = phi float [ %8427, %8422 ], [ %8593, %9178 ]
  %9184 = phi float [ %8428, %8422 ], [ %8594, %9178 ]
  %9185 = phi float [ %8429, %8422 ], [ %8595, %9178 ]
  %9186 = add i32 %8423, 1
  %9187 = icmp ugt i32 %9186, %8419
  br i1 %9187, label %9188, label %8422

; <label>:9188                                    ; preds = %9179
  br label %9189

; <label>:9189                                    ; preds = %9188, %8372, %8362
  %9190 = phi float [ %8363, %8362 ], [ %8363, %8372 ], [ %9180, %9188 ]
  %9191 = phi float [ %8364, %8362 ], [ %8364, %8372 ], [ %9181, %9188 ]
  %9192 = phi float [ %8365, %8362 ], [ %8365, %8372 ], [ %9182, %9188 ]
  %9193 = phi float [ %8366, %8362 ], [ %8366, %8372 ], [ %9183, %9188 ]
  %9194 = phi float [ %8367, %8362 ], [ %8367, %8372 ], [ %9184, %9188 ]
  %9195 = phi float [ %8368, %8362 ], [ %8368, %8372 ], [ %9185, %9188 ]
  %9196 = fmul fast float %5131, %6616
  %9197 = fsub fast float -0.000000e+00, %9196
  %9198 = fmul fast float %5131, %6617
  %9199 = fsub fast float -0.000000e+00, %9198
  %9200 = fmul fast float %5131, %6618
  %9201 = fsub fast float -0.000000e+00, %9200
  %9202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9203 = extractvalue %dx.types.CBufRet.f32 %9202, 0
  %9204 = fmul fast float %9203, %6622
  %9205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %9206 = extractvalue %dx.types.CBufRet.f32 %9205, 3
  %9207 = fsub fast float 1.000000e+00, %5109
  %9208 = call float @dx.op.unary.f32(i32 7, float %9207)  ; Saturate(value)
  %9209 = fadd fast float %9195, %5108
  %9210 = fmul fast float %9209, %5109
  %9211 = fmul fast float %9208, %9206
  %9212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %5110, i32 undef)  ; BufferLoad(srv,index,wot)
  %9213 = extractvalue %dx.types.ResRet.i32 %9212, 3
  %9214 = bitcast i32 %9213 to float
  %9215 = fsub fast float %9197, %9214
  %9216 = fsub fast float %9199, %9214
  %9217 = fsub fast float %9201, %9214
  %9218 = fmul fast float %9215, %198
  %9219 = fmul fast float %9216, %198
  %9220 = fmul fast float %9217, %198
  %9221 = fadd fast float %9218, %9214
  %9222 = fadd fast float %9219, %9214
  %9223 = fadd fast float %9220, %9214
  %9224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %9225 = extractvalue %dx.types.CBufRet.f32 %9224, 3
  %9226 = fmul fast float %9193, %5740
  %9227 = fmul fast float %9194, %5741
  %9228 = fmul fast float %9195, %5742
  %9229 = fcmp fast ogt float %97, %218
  %9230 = and i1 %9229, %5563
  %9231 = or i1 %5569, %9230
  %9232 = icmp eq i32 %5562, 2
  %9233 = fcmp fast ole float %97, %218
  %9234 = and i1 %9233, %9232
  %9235 = or i1 %9234, %9231
  br i1 %9230, label %9236, label %9493

; <label>:9236                                    ; preds = %9189
  %9237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %9238 = extractvalue %dx.types.CBufRet.f32 %9237, 2
  %9239 = extractvalue %dx.types.CBufRet.f32 %9237, 3
  %9240 = fmul fast float %9238, %109
  %9241 = fmul fast float %9239, %110
  %9242 = call float @dx.op.unary.f32(i32 7, float %9240)  ; Saturate(value)
  %9243 = call float @dx.op.unary.f32(i32 7, float %9241)  ; Saturate(value)
  %9244 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %9242, float %9243, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9245 = extractvalue %dx.types.ResRet.f32 %9244, 0
  %9246 = extractvalue %dx.types.ResRet.f32 %9244, 1
  %9247 = extractvalue %dx.types.ResRet.f32 %9244, 2
  %9248 = extractvalue %dx.types.ResRet.f32 %9244, 3
  %9249 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %9242, float %9243, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9250 = extractvalue %dx.types.ResRet.f32 %9249, 0
  %9251 = extractvalue %dx.types.ResRet.f32 %9249, 1
  %9252 = extractvalue %dx.types.ResRet.f32 %9249, 2
  %9253 = extractvalue %dx.types.ResRet.f32 %9249, 3
  %9254 = call float @dx.op.binary.f32(i32 35, float %9246, float %9247)  ; FMax(a,b)
  %9255 = call float @dx.op.binary.f32(i32 35, float %9245, float %9254)  ; FMax(a,b)
  %9256 = call float @dx.op.binary.f32(i32 35, float %9255, float %9248)  ; FMax(a,b)
  %9257 = call float @dx.op.binary.f32(i32 36, float %9251, float %9252)  ; FMin(a,b)
  %9258 = call float @dx.op.binary.f32(i32 36, float %9250, float %9257)  ; FMin(a,b)
  %9259 = call float @dx.op.binary.f32(i32 36, float %9258, float %9253)  ; FMin(a,b)
  %9260 = fmul fast float %9256, 2.550000e+02
  %9261 = fadd fast float %9260, 0x3F70101020000000
  %9262 = fptoui float %9261 to i32
  %9263 = fmul fast float %9259, 2.550000e+02
  %9264 = fadd fast float %9263, 0x3F70101020000000
  %9265 = fptoui float %9264 to i32
  %9266 = icmp ult i32 %9262, %9265
  br i1 %9266, label %9267, label %9435

; <label>:9267                                    ; preds = %9236
  %9268 = fcmp fast ogt float %96, 9.843750e-01
  %9269 = fadd fast float %97, -4.000000e+00
  %9270 = select i1 %9268, float -4.000000e+00, float %9269
  %9271 = call float @dx.op.binary.f32(i32 35, float %9270, float 0.000000e+00)  ; FMax(a,b)
  %9272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9273 = extractvalue %dx.types.CBufRet.f32 %9272, 0
  %9274 = fadd fast float %9273, %9271
  %9275 = extractvalue %dx.types.CBufRet.f32 %9272, 2
  %9276 = fmul fast float %9274, %9275
  %9277 = call float @dx.op.unary.f32(i32 23, float %9276)  ; Log(value)
  %9278 = extractvalue %dx.types.CBufRet.f32 %9272, 3
  %9279 = fmul fast float %9278, %9277
  %9280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9281 = extractvalue %dx.types.CBufRet.f32 %9280, 2
  %9282 = fmul fast float %9279, %9281
  %9283 = call float @dx.op.unary.f32(i32 7, float %9282)  ; Saturate(value)
  %9284 = uitofp i32 %9262 to float
  %9285 = uitofp i32 %9265 to float
  %9286 = fadd fast float %9284, 5.000000e-01
  %9287 = fadd fast float %9285, 5.000000e-01
  %9288 = fmul fast float %9281, %9286
  %9289 = fmul fast float %9281, %9287
  %9290 = fadd fast float %9288, 0x3F0FFB4800000000
  %9291 = fadd fast float %9289, 0xBF0FFB4800000000
  %9292 = call float @dx.op.binary.f32(i32 35, float %9283, float %9290)  ; FMax(a,b)
  %9293 = call float @dx.op.binary.f32(i32 36, float %9292, float %9291)  ; FMin(a,b)
  %9294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9295 = extractvalue %dx.types.CBufRet.f32 %9294, 1
  %9296 = extractvalue %dx.types.CBufRet.f32 %9294, 2
  %9297 = extractvalue %dx.types.CBufRet.f32 %9294, 0
  %9298 = fmul fast float %9295, %9293
  %9299 = fadd fast float %9297, %9298
  %9300 = fadd fast float %9297, %9296
  %9301 = fsub fast float %9295, %9296
  %9302 = fadd fast float %9301, %9297
  %9303 = call float @dx.op.binary.f32(i32 35, float %9299, float %9300)  ; FMax(a,b)
  %9304 = call float @dx.op.binary.f32(i32 36, float %9303, float %9302)  ; FMin(a,b)
  %9305 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %52, float %9242, float %9243, float %9304, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9306 = extractvalue %dx.types.ResRet.f32 %9305, 0
  %9307 = extractvalue %dx.types.ResRet.f32 %9305, 1
  %9308 = extractvalue %dx.types.ResRet.f32 %9305, 2
  %9309 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9310 = extractvalue %dx.types.CBufRet.i32 %9309, 0
  %9311 = extractvalue %dx.types.CBufRet.i32 %9309, 1
  %9312 = uitofp i32 %9310 to float
  %9313 = uitofp i32 %9311 to float
  %9314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9315 = extractvalue %dx.types.CBufRet.f32 %9314, 0
  %9316 = extractvalue %dx.types.CBufRet.f32 %9314, 1
  %9317 = fmul fast float %9312, %9242
  %9318 = fmul fast float %9313, %9243
  %9319 = fadd fast float %9317, -5.000000e-01
  %9320 = fadd fast float %9318, -5.000000e-01
  %9321 = call float @dx.op.unary.f32(i32 22, float %9319)  ; Frc(value)
  %9322 = call float @dx.op.unary.f32(i32 22, float %9320)  ; Frc(value)
  %9323 = fmul fast float %9321, %9321
  %9324 = fmul fast float %9323, %9321
  %9325 = fsub fast float 3.000000e+00, %9321
  %9326 = fmul fast float %9323, %9325
  %9327 = fmul fast float %9321, 3.000000e+00
  %9328 = fmul fast float %9324, 3.000000e+00
  %9329 = fmul fast float %9323, 6.000000e+00
  %9330 = fsub fast float %9328, %9329
  %9331 = fadd fast float %9330, 4.000000e+00
  %9332 = fmul fast float %9331, 0x3FC5555560000000
  %9333 = fmul fast float %9324, -3.000000e+00
  %9334 = fadd fast float %9323, %9321
  %9335 = fmul fast float %9334, 3.000000e+00
  %9336 = fadd fast float %9333, 1.000000e+00
  %9337 = fadd fast float %9336, %9335
  %9338 = fmul fast float %9324, 0x3FC5555560000000
  %9339 = fmul fast float %9322, %9322
  %9340 = fmul fast float %9339, %9322
  %9341 = fsub fast float 3.000000e+00, %9322
  %9342 = fmul fast float %9339, %9341
  %9343 = fmul fast float %9322, 3.000000e+00
  %9344 = fmul fast float %9340, 3.000000e+00
  %9345 = fmul fast float %9339, 6.000000e+00
  %9346 = fsub fast float %9344, %9345
  %9347 = fadd fast float %9346, 4.000000e+00
  %9348 = fmul fast float %9347, 0x3FC5555560000000
  %9349 = fmul fast float %9340, -3.000000e+00
  %9350 = fadd fast float %9339, %9322
  %9351 = fmul fast float %9350, 3.000000e+00
  %9352 = fadd fast float %9349, 1.000000e+00
  %9353 = fadd fast float %9352, %9351
  %9354 = fmul fast float %9340, 0x3FC5555560000000
  %9355 = fadd fast float %9321, 1.000000e+00
  %9356 = fsub fast float 1.000000e+00, %9327
  %9357 = fadd fast float %9356, %9326
  %9358 = fadd fast float %9357, %9331
  %9359 = fmul fast float %9358, 0x3FC5555560000000
  %9360 = fdiv fast float %9332, %9359
  %9361 = fsub fast float %9355, %9360
  %9362 = fsub fast float 1.000000e+00, %9321
  %9363 = fadd fast float %9337, %9324
  %9364 = fmul fast float %9363, 0x3FC5555560000000
  %9365 = fdiv fast float %9338, %9364
  %9366 = fadd fast float %9362, %9365
  %9367 = fadd fast float %9322, 1.000000e+00
  %9368 = fsub fast float 1.000000e+00, %9343
  %9369 = fadd fast float %9368, %9342
  %9370 = fadd fast float %9369, %9347
  %9371 = fmul fast float %9370, 0x3FC5555560000000
  %9372 = fdiv fast float %9348, %9371
  %9373 = fsub fast float %9367, %9372
  %9374 = fsub fast float 1.000000e+00, %9322
  %9375 = fadd fast float %9353, %9340
  %9376 = fmul fast float %9375, 0x3FC5555560000000
  %9377 = fdiv fast float %9354, %9376
  %9378 = fadd fast float %9377, %9374
  %9379 = fmul fast float %9361, %9315
  %9380 = fsub fast float %9242, %9379
  %9381 = fmul fast float %9366, %9315
  %9382 = fadd fast float %9381, %9242
  %9383 = fmul fast float %9378, %9316
  %9384 = fadd fast float %9383, %9243
  %9385 = fmul fast float %9373, %9316
  %9386 = fsub fast float %9243, %9385
  %9387 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9380, float %9386, float %9304, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9388 = extractvalue %dx.types.ResRet.f32 %9387, 0
  %9389 = extractvalue %dx.types.ResRet.f32 %9387, 1
  %9390 = extractvalue %dx.types.ResRet.f32 %9387, 2
  %9391 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9382, float %9386, float %9304, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9392 = extractvalue %dx.types.ResRet.f32 %9391, 0
  %9393 = extractvalue %dx.types.ResRet.f32 %9391, 1
  %9394 = extractvalue %dx.types.ResRet.f32 %9391, 2
  %9395 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9380, float %9384, float %9304, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9396 = extractvalue %dx.types.ResRet.f32 %9395, 0
  %9397 = extractvalue %dx.types.ResRet.f32 %9395, 1
  %9398 = extractvalue %dx.types.ResRet.f32 %9395, 2
  %9399 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9382, float %9384, float %9304, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9400 = extractvalue %dx.types.ResRet.f32 %9399, 0
  %9401 = extractvalue %dx.types.ResRet.f32 %9399, 1
  %9402 = extractvalue %dx.types.ResRet.f32 %9399, 2
  %9403 = fsub fast float %9396, %9388
  %9404 = fsub fast float %9397, %9389
  %9405 = fsub fast float %9398, %9390
  %9406 = fmul fast float %9403, %9376
  %9407 = fmul fast float %9404, %9376
  %9408 = fmul fast float %9405, %9376
  %9409 = fadd fast float %9406, %9388
  %9410 = fadd fast float %9407, %9389
  %9411 = fadd fast float %9408, %9390
  %9412 = fsub fast float %9400, %9392
  %9413 = fsub fast float %9401, %9393
  %9414 = fsub fast float %9402, %9394
  %9415 = fmul fast float %9412, %9376
  %9416 = fmul fast float %9413, %9376
  %9417 = fmul fast float %9414, %9376
  %9418 = fsub fast float %9392, %9409
  %9419 = fadd fast float %9418, %9415
  %9420 = fsub fast float %9393, %9410
  %9421 = fadd fast float %9420, %9416
  %9422 = fsub fast float %9394, %9411
  %9423 = fadd fast float %9422, %9417
  %9424 = fmul fast float %9419, %9364
  %9425 = fmul fast float %9421, %9364
  %9426 = fmul fast float %9423, %9364
  %9427 = fadd fast float %9424, %9409
  %9428 = fadd fast float %9425, %9410
  %9429 = fadd fast float %9426, %9411
  %9430 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9431 = extractvalue %dx.types.CBufRet.f32 %9430, 1
  %9432 = fmul fast float %9427, %9431
  %9433 = fmul fast float %9428, %9431
  %9434 = fmul fast float %9429, %9431
  br label %9435

; <label>:9435                                    ; preds = %9267, %9236
  %9436 = phi float [ %9306, %9267 ], [ 1.000000e+00, %9236 ]
  %9437 = phi float [ %9307, %9267 ], [ 1.000000e+00, %9236 ]
  %9438 = phi float [ %9308, %9267 ], [ 1.000000e+00, %9236 ]
  %9439 = phi float [ %9432, %9267 ], [ 0.000000e+00, %9236 ]
  %9440 = phi float [ %9433, %9267 ], [ 0.000000e+00, %9236 ]
  %9441 = phi float [ %9434, %9267 ], [ 0.000000e+00, %9236 ]
  %9442 = fmul fast float %9439, %9221
  %9443 = fmul fast float %9440, %9222
  %9444 = fmul fast float %9441, %9223
  %9445 = call float @dx.op.dot3.f32(i32 55, float %9436, float %9437, float %9438, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9446 = call float @dx.op.dot3.f32(i32 55, float %9442, float %9443, float %9444, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9447 = select i1 %258, float %9445, float %9436
  %9448 = select i1 %258, float %9445, float %9437
  %9449 = select i1 %258, float 1.000000e+00, float %9438
  %9450 = select i1 %258, float %9446, float %9442
  %9451 = select i1 %258, float 0.000000e+00, float %9443
  %9452 = select i1 %258, float 0.000000e+00, float %9444
  %9453 = fmul fast float %9447, %9226
  %9454 = fmul fast float %9448, %9227
  %9455 = fmul fast float %9449, %9228
  %9456 = fadd fast float %9453, %9450
  %9457 = fadd fast float %9454, %9451
  %9458 = fadd fast float %9452, %9455
  %9459 = fmul fast float %9447, %9190
  %9460 = fmul fast float %9448, %9191
  %9461 = fmul fast float %9449, %9192
  %9462 = fmul fast float %134, %9238
  %9463 = fmul fast float %136, %9239
  %9464 = fsub fast float 1.000000e+00, %9462
  %9465 = fsub fast float 1.000000e+00, %9463
  %9466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9467 = extractvalue %dx.types.CBufRet.f32 %9466, 0
  %9468 = extractvalue %dx.types.CBufRet.f32 %9466, 1
  %9469 = extractvalue %dx.types.CBufRet.f32 %9466, 2
  %9470 = fmul fast float %9464, %9467
  %9471 = fmul fast float %9464, %9468
  %9472 = fmul fast float %9464, %9469
  %9473 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9474 = extractvalue %dx.types.CBufRet.f32 %9473, 0
  %9475 = extractvalue %dx.types.CBufRet.f32 %9473, 1
  %9476 = extractvalue %dx.types.CBufRet.f32 %9473, 2
  %9477 = fmul fast float %9465, %9474
  %9478 = fmul fast float %9465, %9475
  %9479 = fmul fast float %9465, %9476
  %9480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9481 = extractvalue %dx.types.CBufRet.f32 %9480, 0
  %9482 = extractvalue %dx.types.CBufRet.f32 %9480, 1
  %9483 = extractvalue %dx.types.CBufRet.f32 %9480, 2
  %9484 = fadd fast float %9477, %9481
  %9485 = fadd fast float %9484, %9470
  %9486 = fadd fast float %9478, %9482
  %9487 = fadd fast float %9486, %9471
  %9488 = fadd fast float %9479, %9483
  %9489 = fadd fast float %9488, %9472
  %9490 = fmul fast float %9485, %218
  %9491 = fmul fast float %9487, %218
  %9492 = fmul fast float %9489, %218
  br label %9493

; <label>:9493                                    ; preds = %9435, %9189
  %9494 = phi float [ %9490, %9435 ], [ %164, %9189 ]
  %9495 = phi float [ %9491, %9435 ], [ %165, %9189 ]
  %9496 = phi float [ %9492, %9435 ], [ %166, %9189 ]
  %9497 = phi float [ %218, %9435 ], [ %97, %9189 ]
  %9498 = phi float [ %9456, %9435 ], [ %9226, %9189 ]
  %9499 = phi float [ %9457, %9435 ], [ %9227, %9189 ]
  %9500 = phi float [ %9458, %9435 ], [ %9228, %9189 ]
  %9501 = phi float [ %9459, %9435 ], [ %9190, %9189 ]
  %9502 = phi float [ %9460, %9435 ], [ %9191, %9189 ]
  %9503 = phi float [ %9461, %9435 ], [ %9192, %9189 ]
  %9504 = phi float [ %9436, %9435 ], [ 1.000000e+00, %9189 ]
  br i1 %9235, label %10659, label %9505

; <label>:9505                                    ; preds = %9493
  %9506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %9507 = extractvalue %dx.types.CBufRet.f32 %9506, 0
  %9508 = extractvalue %dx.types.CBufRet.f32 %9506, 1
  %9509 = extractvalue %dx.types.CBufRet.f32 %9506, 2
  %9510 = extractvalue %dx.types.CBufRet.f32 %9506, 3
  %9511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %9512 = extractvalue %dx.types.CBufRet.f32 %9511, 0
  %9513 = extractvalue %dx.types.CBufRet.f32 %9511, 1
  %9514 = extractvalue %dx.types.CBufRet.f32 %9511, 2
  %9515 = extractvalue %dx.types.CBufRet.f32 %9511, 3
  %9516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %9517 = extractvalue %dx.types.CBufRet.f32 %9516, 0
  %9518 = extractvalue %dx.types.CBufRet.f32 %9516, 1
  %9519 = extractvalue %dx.types.CBufRet.f32 %9516, 2
  %9520 = extractvalue %dx.types.CBufRet.f32 %9516, 3
  %9521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %9522 = extractvalue %dx.types.CBufRet.f32 %9521, 0
  %9523 = extractvalue %dx.types.CBufRet.f32 %9521, 1
  %9524 = extractvalue %dx.types.CBufRet.f32 %9521, 2
  %9525 = extractvalue %dx.types.CBufRet.f32 %9521, 3
  %9526 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %9527 = extractvalue %dx.types.CBufRet.f32 %9526, 3
  %9528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %9529 = extractvalue %dx.types.CBufRet.f32 %9528, 3
  %9530 = extractvalue %dx.types.CBufRet.f32 %9528, 0
  %9531 = extractvalue %dx.types.CBufRet.f32 %9528, 1
  %9532 = extractvalue %dx.types.CBufRet.f32 %9528, 2
  %9533 = fcmp fast olt float %9532, -5.000000e-01
  %9534 = call float @dx.op.dot3.f32(i32 55, float %9494, float %9495, float %9496, float %9494, float %9495, float %9496)  ; Dot3(ax,ay,az,bx,by,bz)
  %9535 = call float @dx.op.unary.f32(i32 25, float %9534)  ; Rsqrt(value)
  %9536 = fmul fast float %9535, %9534
  %9537 = fmul fast float %9535, %9494
  %9538 = fmul fast float %9535, %9495
  %9539 = fmul fast float %9535, %9496
  %9540 = fadd fast float %9536, %9510
  %9541 = call float @dx.op.dot3.f32(i32 55, float %9537, float %9538, float %9539, float %9507, float %9508, float %9509)  ; Dot3(ax,ay,az,bx,by,bz)
  %9542 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %9543 = extractvalue %dx.types.CBufRet.i32 %9542, 1
  %9544 = and i32 %9543, 1
  %9545 = icmp ne i32 %9544, 0
  %9546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %9547 = extractvalue %dx.types.CBufRet.f32 %9546, 2
  %9548 = fcmp fast ogt float %9547, 0.000000e+00
  %9549 = and i1 %9545, %9548
  br i1 %9549, label %9550, label %9956, !dx.controlflow.hints !135

; <label>:9550                                    ; preds = %9505
  %9551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %9552 = extractvalue %dx.types.CBufRet.f32 %9551, 3
  %9553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %9554 = extractvalue %dx.types.CBufRet.f32 %9553, 2
  %9555 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9556 = extractvalue %dx.types.CBufRet.f32 %9555, 2
  %9557 = fsub fast float %9554, %9556
  %9558 = and i32 %9543, 2
  %9559 = extractvalue %dx.types.CBufRet.i32 %9542, 0
  %9560 = call i32 @dx.op.binary.i32(i32 40, i32 %9559, i32 3)  ; UMin(a,b)
  %9561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %9562 = extractvalue %dx.types.CBufRet.f32 %9561, 0
  %9563 = extractvalue %dx.types.CBufRet.f32 %9561, 1
  %9564 = extractvalue %dx.types.CBufRet.f32 %9555, 0
  %9565 = extractvalue %dx.types.CBufRet.f32 %9555, 1
  %9566 = fsub fast float %9562, %9564
  %9567 = fsub fast float %9563, %9565
  %9568 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %9569 = extractvalue %dx.types.CBufRet.f32 %9568, 0
  %9570 = fcmp fast ogt float %9569, 0.000000e+00
  %9571 = fsub fast float -0.000000e+00, %9566
  %9572 = fsub fast float -0.000000e+00, %9567
  %9573 = call float @dx.op.dot2.f32(i32 54, float %9537, float %9538, float %9537, float %9538)  ; Dot2(ax,ay,bx,by)
  %9574 = call float @dx.op.dot2.f32(i32 54, float %9537, float %9538, float %9571, float %9572)  ; Dot2(ax,ay,bx,by)
  %9575 = fmul fast float %9574, 2.000000e+00
  %9576 = call float @dx.op.dot2.f32(i32 54, float %9571, float %9572, float %9571, float %9572)  ; Dot2(ax,ay,bx,by)
  %9577 = fmul fast float %9569, %9569
  %9578 = fsub fast float %9576, %9577
  %9579 = fmul fast float %9575, %9575
  %9580 = fmul fast float %9573, 4.000000e+00
  %9581 = fmul fast float %9580, %9578
  %9582 = fsub fast float %9579, %9581
  %9583 = fcmp fast ogt float %9582, 0.000000e+00
  br i1 %9583, label %9584, label %9599

; <label>:9584                                    ; preds = %9550
  %9585 = fcmp fast ogt float %9575, 0.000000e+00
  %9586 = call float @dx.op.unary.f32(i32 24, float %9582)  ; Sqrt(value)
  %9587 = fsub fast float -0.000000e+00, %9586
  %9588 = select i1 %9585, float %9586, float %9587
  %9589 = fadd fast float %9588, %9575
  %9590 = fmul float %9589, -5.000000e-01
  %9591 = fdiv fast float %9590, %9573
  %9592 = call float @dx.op.binary.f32(i32 35, float %9591, float 0.000000e+00)  ; FMax(a,b)
  %9593 = call float @dx.op.binary.f32(i32 36, float %9536, float %9592)  ; FMin(a,b)
  %9594 = fdiv fast float %9578, %9590
  %9595 = call float @dx.op.binary.f32(i32 35, float %9594, float 0.000000e+00)  ; FMax(a,b)
  %9596 = call float @dx.op.binary.f32(i32 36, float %9536, float %9595)  ; FMin(a,b)
  %9597 = call float @dx.op.binary.f32(i32 36, float %9593, float %9596)  ; FMin(a,b)
  %9598 = call float @dx.op.binary.f32(i32 35, float %9593, float %9596)  ; FMax(a,b)
  br label %9599

; <label>:9599                                    ; preds = %9584, %9550
  %9600 = phi float [ %9598, %9584 ], [ -1.000000e+00, %9550 ]
  %9601 = phi float [ %9597, %9584 ], [ -1.000000e+00, %9550 ]
  %9602 = phi i1 [ true, %9584 ], [ false, %9550 ]
  %9603 = and i1 %9570, %9602
  br i1 %9603, label %9604, label %9606

; <label>:9604                                    ; preds = %9599
  %9605 = fcmp fast oeq float %9601, %9600
  br i1 %9605, label %9909, label %9607

; <label>:9606                                    ; preds = %9599
  br i1 %9570, label %9909, label %9607

; <label>:9607                                    ; preds = %9606, %9604
  %9608 = phi float [ %9536, %9606 ], [ %9600, %9604 ]
  %9609 = phi float [ 0.000000e+00, %9606 ], [ %9601, %9604 ]
  %9610 = icmp ne i32 %9558, 0
  %9611 = fmul fast float %9608, %9539
  %9612 = fadd fast float %9611, %9552
  %9613 = fmul fast float %9612, %9608
  %9614 = select i1 %9610, float 0.000000e+00, float %9613
  %9615 = fcmp fast oeq float %9539, 0.000000e+00
  %9616 = fdiv fast float %9557, %9539
  %9617 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9616)  ; FMax(a,b)
  %9618 = select i1 %9615, float %9608, float %9617
  %9619 = call float @dx.op.binary.f32(i32 36, float %9608, float %9618)  ; FMin(a,b)
  %9620 = fcmp fast ogt float %9539, 0.000000e+00
  %9621 = fcmp fast olt float %9557, 0.000000e+00
  br i1 %9620, label %9622, label %9679

; <label>:9622                                    ; preds = %9607
  %9623 = icmp eq i32 %9558, 0
  br i1 %9621, label %9624, label %9668

; <label>:9624                                    ; preds = %9622
  %9625 = select i1 %9623, float %9608, float 0.000000e+00
  %9626 = fsub fast float -0.000000e+00, %9625
  %9627 = call float @dx.op.unary.f32(i32 6, float %9626)  ; FAbs(value)
  %9628 = fmul fast float %9625, %9539
  %9629 = fadd fast float %9628, %9552
  %9630 = fmul fast float %9627, %9629
  %9631 = fsub fast float %9614, %9630
  %9632 = fsub fast float %9608, %9627
  %9633 = select i1 %9623, float %9632, float 0.000000e+00
  %9634 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9635 = extractvalue %dx.types.CBufRet.f32 %9634, 0
  %9636 = extractvalue %dx.types.CBufRet.f32 %9634, 1
  %9637 = extractvalue %dx.types.CBufRet.f32 %9634, 2
  %9638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9639 = extractvalue %dx.types.CBufRet.f32 %9638, 0
  %9640 = extractvalue %dx.types.CBufRet.f32 %9638, 1
  %9641 = extractvalue %dx.types.CBufRet.f32 %9638, 2
  %9642 = extractvalue %dx.types.CBufRet.f32 %9638, 3
  %9643 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9644 = extractvalue %dx.types.CBufRet.f32 %9643, 3
  %9645 = call float @dx.op.binary.f32(i32 36, float %9631, float %9644)  ; FMin(a,b)
  %9646 = fmul fast float %9642, %9633
  %9647 = call float @dx.op.unary.f32(i32 7, float %9646)  ; Saturate(value)
  %9648 = fsub fast float %9639, %9635
  %9649 = fsub fast float %9640, %9636
  %9650 = fsub fast float %9641, %9637
  %9651 = fmul fast float %9647, %9648
  %9652 = fmul fast float %9647, %9649
  %9653 = fmul fast float %9647, %9650
  %9654 = fadd fast float %9651, %9635
  %9655 = fadd fast float %9652, %9636
  %9656 = fadd fast float %9653, %9637
  %9657 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9658 = extractvalue %dx.types.CBufRet.f32 %9657, 0
  %9659 = extractvalue %dx.types.CBufRet.f32 %9657, 1
  %9660 = fadd fast float %9659, %9658
  %9661 = call float @dx.op.unary.f32(i32 7, float %9660)  ; Saturate(value)
  %9662 = extractvalue %dx.types.CBufRet.f32 %9657, 2
  %9663 = extractvalue %dx.types.CBufRet.f32 %9657, 3
  %9664 = fadd fast float %9663, %9662
  %9665 = call float @dx.op.unary.f32(i32 7, float %9664)  ; Saturate(value)
  %9666 = fmul fast float %9661, %9645
  %9667 = fmul fast float %9666, %9665
  br label %9909

; <label>:9668                                    ; preds = %9622
  br i1 %9623, label %9669, label %9690

; <label>:9669                                    ; preds = %9668
  %9670 = call float @dx.op.binary.f32(i32 36, float %9619, float %9609)  ; FMin(a,b)
  %9671 = fsub fast float %9619, %9670
  %9672 = fsub fast float %9671, %9608
  %9673 = call float @dx.op.unary.f32(i32 6, float %9672)  ; FAbs(value)
  %9674 = fadd fast float %9671, %9608
  %9675 = fmul fast float %9674, %9539
  %9676 = fadd fast float %9675, %9552
  %9677 = fmul fast float %9676, %9673
  %9678 = fsub fast float %9614, %9677
  br label %9690

; <label>:9679                                    ; preds = %9607
  br i1 %9621, label %9680, label %9690

; <label>:9680                                    ; preds = %9679
  %9681 = call float @dx.op.binary.f32(i32 35, float %9609, float %9619)  ; FMax(a,b)
  %9682 = icmp eq i32 %9558, 0
  %9683 = select i1 %9682, float %9619, float 0.000000e+00
  %9684 = fsub fast float -0.000000e+00, %9683
  %9685 = call float @dx.op.unary.f32(i32 6, float %9684)  ; FAbs(value)
  %9686 = fmul fast float %9683, %9539
  %9687 = fadd fast float %9686, %9552
  %9688 = fmul fast float %9685, %9687
  %9689 = fsub fast float %9614, %9688
  br label %9690

; <label>:9690                                    ; preds = %9680, %9679, %9669, %9668
  %9691 = phi float [ %9609, %9668 ], [ %9609, %9669 ], [ %9681, %9680 ], [ %9609, %9679 ]
  %9692 = phi float [ 0.000000e+00, %9668 ], [ %9673, %9669 ], [ %9685, %9680 ], [ 0.000000e+00, %9679 ]
  %9693 = phi float [ %9614, %9668 ], [ %9678, %9669 ], [ %9689, %9680 ], [ %9614, %9679 ]
  %9694 = phi float [ %9619, %9668 ], [ %9619, %9669 ], [ %9608, %9680 ], [ %9608, %9679 ]
  %9695 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 0
  store float -1.000000e+00, float* %9695, align 4, !tbaa !122, !noalias !136
  %9696 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 1
  store float -1.000000e+00, float* %9696, align 4, !tbaa !122, !noalias !136
  %9697 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 2
  store float -1.000000e+00, float* %9697, align 4, !tbaa !122, !noalias !136
  %9698 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 0
  store float -1.000000e+00, float* %9698, align 4, !tbaa !122, !noalias !136
  %9699 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 1
  store float -1.000000e+00, float* %9699, align 4, !tbaa !122, !noalias !136
  %9700 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 2
  store float -1.000000e+00, float* %9700, align 4, !tbaa !122, !noalias !136
  %9701 = icmp sgt i32 %9560, 0
  br i1 %9701, label %9702, label %9763

; <label>:9702                                    ; preds = %9690
  br label %9703

; <label>:9703                                    ; preds = %9752, %9702
  %9704 = phi i32 [ %9753, %9752 ], [ 0, %9702 ]
  %9705 = phi i32 [ %9754, %9752 ], [ 0, %9702 ]
  %9706 = add nuw i32 %9705, 171
  %9707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 %9706)  ; CBufferLoadLegacy(handle,regIndex)
  %9708 = extractvalue %dx.types.CBufRet.f32 %9707, 0
  %9709 = extractvalue %dx.types.CBufRet.f32 %9707, 1
  %9710 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9711 = extractvalue %dx.types.CBufRet.f32 %9710, 0
  %9712 = extractvalue %dx.types.CBufRet.f32 %9710, 1
  %9713 = fsub fast float %9708, %9711
  %9714 = fsub fast float %9709, %9712
  %9715 = extractvalue %dx.types.CBufRet.f32 %9707, 2
  %9716 = fsub fast float -0.000000e+00, %9713
  %9717 = fsub fast float -0.000000e+00, %9714
  %9718 = call float @dx.op.dot2.f32(i32 54, float %9537, float %9538, float %9716, float %9717)  ; Dot2(ax,ay,bx,by)
  %9719 = fmul fast float %9718, 2.000000e+00
  %9720 = call float @dx.op.dot2.f32(i32 54, float %9716, float %9717, float %9716, float %9717)  ; Dot2(ax,ay,bx,by)
  %9721 = fmul fast float %9715, %9715
  %9722 = fsub fast float %9720, %9721
  %9723 = fmul fast float %9719, %9719
  %9724 = fmul fast float %9580, %9722
  %9725 = fsub fast float %9723, %9724
  %9726 = fcmp fast ogt float %9725, 0.000000e+00
  br i1 %9726, label %9727, label %9742

; <label>:9727                                    ; preds = %9703
  %9728 = fcmp fast ogt float %9719, 0.000000e+00
  %9729 = call float @dx.op.unary.f32(i32 24, float %9725)  ; Sqrt(value)
  %9730 = fsub fast float -0.000000e+00, %9729
  %9731 = select i1 %9728, float %9729, float %9730
  %9732 = fadd fast float %9731, %9719
  %9733 = fmul float %9732, -5.000000e-01
  %9734 = fdiv fast float %9733, %9573
  %9735 = call float @dx.op.binary.f32(i32 35, float %9734, float 0.000000e+00)  ; FMax(a,b)
  %9736 = call float @dx.op.binary.f32(i32 36, float %9608, float %9735)  ; FMin(a,b)
  %9737 = fdiv fast float %9722, %9733
  %9738 = call float @dx.op.binary.f32(i32 35, float %9737, float 0.000000e+00)  ; FMax(a,b)
  %9739 = call float @dx.op.binary.f32(i32 36, float %9608, float %9738)  ; FMin(a,b)
  %9740 = call float @dx.op.binary.f32(i32 36, float %9736, float %9739)  ; FMin(a,b)
  %9741 = call float @dx.op.binary.f32(i32 35, float %9736, float %9739)  ; FMax(a,b)
  br label %9742

; <label>:9742                                    ; preds = %9727, %9703
  %9743 = phi float [ %9741, %9727 ], [ -1.000000e+00, %9703 ]
  %9744 = phi float [ %9740, %9727 ], [ -1.000000e+00, %9703 ]
  %9745 = phi i1 [ true, %9727 ], [ false, %9703 ]
  br i1 %9745, label %9746, label %9752

; <label>:9746                                    ; preds = %9742
  %9747 = call float @dx.op.binary.f32(i32 35, float %9691, float %9744)  ; FMax(a,b)
  %9748 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 %9705
  store float %9747, float* %9748, align 4, !tbaa !122, !noalias !136
  %9749 = call float @dx.op.binary.f32(i32 35, float %9691, float %9743)  ; FMax(a,b)
  %9750 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 %9705
  store float %9749, float* %9750, align 4, !tbaa !122, !noalias !136
  %9751 = add nsw i32 %9704, 1
  br label %9752

; <label>:9752                                    ; preds = %9746, %9742
  %9753 = phi i32 [ %9751, %9746 ], [ %9704, %9742 ]
  %9754 = add nuw nsw i32 %9705, 1
  %9755 = icmp eq i32 %9754, %9560
  br i1 %9755, label %9756, label %9703

; <label>:9756                                    ; preds = %9752
  %9757 = load float, float* %9697, align 4, !tbaa !122, !alias.scope !152, !noalias !155
  %9758 = load float, float* %9696, align 4, !tbaa !122, !alias.scope !158, !noalias !159
  %9759 = load float, float* %9695, align 4, !tbaa !122, !alias.scope !160, !noalias !161
  %9760 = load float, float* %9700, align 4, !tbaa !122, !alias.scope !162, !noalias !165
  %9761 = load float, float* %9699, align 4, !tbaa !122, !alias.scope !168, !noalias !169
  %9762 = load float, float* %9698, align 4, !tbaa !122, !alias.scope !170, !noalias !171
  br label %9763

; <label>:9763                                    ; preds = %9756, %9690
  %9764 = phi float [ -1.000000e+00, %9690 ], [ %9762, %9756 ]
  %9765 = phi float [ -1.000000e+00, %9690 ], [ %9761, %9756 ]
  %9766 = phi float [ -1.000000e+00, %9690 ], [ %9760, %9756 ]
  %9767 = phi float [ -1.000000e+00, %9690 ], [ %9759, %9756 ]
  %9768 = phi float [ -1.000000e+00, %9690 ], [ %9758, %9756 ]
  %9769 = phi float [ -1.000000e+00, %9690 ], [ %9757, %9756 ]
  %9770 = phi i32 [ 0, %9690 ], [ %9753, %9756 ]
  %9771 = call float @dx.op.binary.f32(i32 36, float %9768, float %9769)  ; FMin(a,b)
  %9772 = call float @dx.op.binary.f32(i32 36, float %9767, float %9771)  ; FMin(a,b)
  %9773 = call float @dx.op.binary.f32(i32 35, float %9767, float %9768)  ; FMax(a,b)
  %9774 = call float @dx.op.binary.f32(i32 36, float %9773, float %9769)  ; FMin(a,b)
  %9775 = call float @dx.op.binary.f32(i32 36, float %9767, float %9768)  ; FMin(a,b)
  %9776 = call float @dx.op.binary.f32(i32 35, float %9775, float %9774)  ; FMax(a,b)
  %9777 = call float @dx.op.binary.f32(i32 35, float %9768, float %9769)  ; FMax(a,b)
  %9778 = call float @dx.op.binary.f32(i32 35, float %9767, float %9777)  ; FMax(a,b)
  store float %9772, float* %9695, align 4, !tbaa !122, !alias.scope !160, !noalias !161
  store float %9776, float* %9696, align 4, !tbaa !122, !alias.scope !158, !noalias !159
  store float %9778, float* %9697, align 4, !tbaa !122, !alias.scope !152, !noalias !155
  %9779 = call float @dx.op.binary.f32(i32 36, float %9765, float %9766)  ; FMin(a,b)
  %9780 = call float @dx.op.binary.f32(i32 36, float %9764, float %9779)  ; FMin(a,b)
  %9781 = call float @dx.op.binary.f32(i32 35, float %9764, float %9765)  ; FMax(a,b)
  %9782 = call float @dx.op.binary.f32(i32 36, float %9781, float %9766)  ; FMin(a,b)
  %9783 = call float @dx.op.binary.f32(i32 36, float %9764, float %9765)  ; FMin(a,b)
  %9784 = call float @dx.op.binary.f32(i32 35, float %9783, float %9782)  ; FMax(a,b)
  %9785 = call float @dx.op.binary.f32(i32 35, float %9765, float %9766)  ; FMax(a,b)
  %9786 = call float @dx.op.binary.f32(i32 35, float %9764, float %9785)  ; FMax(a,b)
  store float %9780, float* %9698, align 4, !tbaa !122, !alias.scope !170, !noalias !171
  store float %9784, float* %9699, align 4, !tbaa !122, !alias.scope !168, !noalias !169
  store float %9786, float* %9700, align 4, !tbaa !122, !alias.scope !162, !noalias !165
  %9787 = sub nsw i32 3, %9770
  %9788 = icmp sgt i32 %9787, 2
  br i1 %9788, label %9789, label %9827

; <label>:9789                                    ; preds = %9763
  %9790 = icmp eq i32 %9558, 0
  %9791 = fsub fast float %9608, %9692
  %9792 = select i1 %9790, float %9791, float %9692
  %9793 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9794 = extractvalue %dx.types.CBufRet.f32 %9793, 0
  %9795 = extractvalue %dx.types.CBufRet.f32 %9793, 1
  %9796 = extractvalue %dx.types.CBufRet.f32 %9793, 2
  %9797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9798 = extractvalue %dx.types.CBufRet.f32 %9797, 0
  %9799 = extractvalue %dx.types.CBufRet.f32 %9797, 1
  %9800 = extractvalue %dx.types.CBufRet.f32 %9797, 2
  %9801 = extractvalue %dx.types.CBufRet.f32 %9797, 3
  %9802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9803 = extractvalue %dx.types.CBufRet.f32 %9802, 3
  %9804 = call float @dx.op.binary.f32(i32 36, float %9693, float %9803)  ; FMin(a,b)
  %9805 = fmul fast float %9801, %9792
  %9806 = call float @dx.op.unary.f32(i32 7, float %9805)  ; Saturate(value)
  %9807 = fsub fast float %9798, %9794
  %9808 = fsub fast float %9799, %9795
  %9809 = fsub fast float %9800, %9796
  %9810 = fmul fast float %9806, %9807
  %9811 = fmul fast float %9806, %9808
  %9812 = fmul fast float %9806, %9809
  %9813 = fadd fast float %9810, %9794
  %9814 = fadd fast float %9811, %9795
  %9815 = fadd fast float %9812, %9796
  %9816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9817 = extractvalue %dx.types.CBufRet.f32 %9816, 0
  %9818 = extractvalue %dx.types.CBufRet.f32 %9816, 1
  %9819 = fadd fast float %9818, %9817
  %9820 = call float @dx.op.unary.f32(i32 7, float %9819)  ; Saturate(value)
  %9821 = extractvalue %dx.types.CBufRet.f32 %9816, 2
  %9822 = extractvalue %dx.types.CBufRet.f32 %9816, 3
  %9823 = fadd fast float %9822, %9821
  %9824 = call float @dx.op.unary.f32(i32 7, float %9823)  ; Saturate(value)
  %9825 = fmul fast float %9820, %9804
  %9826 = fmul fast float %9825, %9824
  br label %9909

; <label>:9827                                    ; preds = %9763
  %9828 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 %9787
  %9829 = load float, float* %9828, align 4, !tbaa !122, !noalias !136
  %9830 = fcmp fast olt float %9829, %9694
  %9831 = icmp sgt i32 %9770, 0
  %9832 = and i1 %9831, %9830
  br i1 %9832, label %9833, label %9870

; <label>:9833                                    ; preds = %9827
  br label %9834

; <label>:9834                                    ; preds = %9863, %9833
  %9835 = phi float [ %9864, %9863 ], [ %9692, %9833 ]
  %9836 = phi float [ %9865, %9863 ], [ %9693, %9833 ]
  %9837 = phi float [ %9845, %9863 ], [ %9829, %9833 ]
  %9838 = phi i32 [ %9842, %9863 ], [ %9787, %9833 ]
  %9839 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 %9838
  %9840 = load float, float* %9839, align 4, !tbaa !122, !noalias !136
  %9841 = icmp slt i32 %9838, 2
  %9842 = add nsw i32 %9838, 1
  %9843 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 %9842
  %9844 = load float, float* %9843, align 4, !tbaa !122, !noalias !136
  %9845 = select i1 %9841, float %9844, float %9608
  %9846 = call float @dx.op.binary.f32(i32 36, float %9845, float %9840)  ; FMin(a,b)
  %9847 = call float @dx.op.binary.f32(i32 36, float %9694, float %9846)  ; FMin(a,b)
  %9848 = icmp eq i32 %9558, 0
  %9849 = fadd fast float %9847, %9837
  %9850 = fmul fast float %9849, %9539
  %9851 = fadd fast float %9850, %9552
  br i1 %9848, label %9857, label %9852

; <label>:9852                                    ; preds = %9834
  %9853 = fsub fast float %9847, %9837
  %9854 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9853)  ; FMax(a,b)
  %9855 = fmul fast float %9854, %9851
  %9856 = fadd fast float %9855, %9836
  br label %9863

; <label>:9857                                    ; preds = %9834
  %9858 = fsub fast float %9837, %9847
  %9859 = call float @dx.op.unary.f32(i32 6, float %9858)  ; FAbs(value)
  %9860 = fadd fast float %9859, %9835
  %9861 = fmul fast float %9859, %9851
  %9862 = fsub fast float %9836, %9861
  br label %9863

; <label>:9863                                    ; preds = %9857, %9852
  %9864 = phi float [ %9854, %9852 ], [ %9860, %9857 ]
  %9865 = phi float [ %9856, %9852 ], [ %9862, %9857 ]
  %9866 = fcmp fast olt float %9845, %9694
  %9867 = icmp slt i32 %9842, 3
  %9868 = and i1 %9867, %9866
  br i1 %9868, label %9834, label %9869

; <label>:9869                                    ; preds = %9863
  br label %9870

; <label>:9870                                    ; preds = %9869, %9827
  %9871 = phi float [ %9692, %9827 ], [ %9864, %9869 ]
  %9872 = phi float [ %9693, %9827 ], [ %9865, %9869 ]
  %9873 = fsub fast float %9608, %9871
  %9874 = select i1 %9610, float %9871, float %9873
  %9875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9876 = extractvalue %dx.types.CBufRet.f32 %9875, 0
  %9877 = extractvalue %dx.types.CBufRet.f32 %9875, 1
  %9878 = extractvalue %dx.types.CBufRet.f32 %9875, 2
  %9879 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9880 = extractvalue %dx.types.CBufRet.f32 %9879, 0
  %9881 = extractvalue %dx.types.CBufRet.f32 %9879, 1
  %9882 = extractvalue %dx.types.CBufRet.f32 %9879, 2
  %9883 = extractvalue %dx.types.CBufRet.f32 %9879, 3
  %9884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9885 = extractvalue %dx.types.CBufRet.f32 %9884, 3
  %9886 = call float @dx.op.binary.f32(i32 36, float %9872, float %9885)  ; FMin(a,b)
  %9887 = fmul fast float %9883, %9874
  %9888 = call float @dx.op.unary.f32(i32 7, float %9887)  ; Saturate(value)
  %9889 = fsub fast float %9880, %9876
  %9890 = fsub fast float %9881, %9877
  %9891 = fsub fast float %9882, %9878
  %9892 = fmul fast float %9888, %9889
  %9893 = fmul fast float %9888, %9890
  %9894 = fmul fast float %9888, %9891
  %9895 = fadd fast float %9892, %9876
  %9896 = fadd fast float %9893, %9877
  %9897 = fadd fast float %9894, %9878
  %9898 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9899 = extractvalue %dx.types.CBufRet.f32 %9898, 0
  %9900 = extractvalue %dx.types.CBufRet.f32 %9898, 1
  %9901 = fadd fast float %9900, %9899
  %9902 = call float @dx.op.unary.f32(i32 7, float %9901)  ; Saturate(value)
  %9903 = extractvalue %dx.types.CBufRet.f32 %9898, 2
  %9904 = extractvalue %dx.types.CBufRet.f32 %9898, 3
  %9905 = fadd fast float %9904, %9903
  %9906 = call float @dx.op.unary.f32(i32 7, float %9905)  ; Saturate(value)
  %9907 = fmul fast float %9902, %9886
  %9908 = fmul fast float %9907, %9906
  br label %9909

; <label>:9909                                    ; preds = %9870, %9789, %9624, %9606, %9604
  %9910 = phi float [ %9633, %9624 ], [ %9792, %9789 ], [ %9874, %9870 ], [ 0.000000e+00, %9604 ], [ 0.000000e+00, %9606 ]
  %9911 = phi float [ %9667, %9624 ], [ %9826, %9789 ], [ %9908, %9870 ], [ 0.000000e+00, %9604 ], [ 0.000000e+00, %9606 ]
  %9912 = phi float [ %9654, %9624 ], [ %9813, %9789 ], [ %9895, %9870 ], [ 0.000000e+00, %9604 ], [ 0.000000e+00, %9606 ]
  %9913 = phi float [ %9655, %9624 ], [ %9814, %9789 ], [ %9896, %9870 ], [ 0.000000e+00, %9604 ], [ 0.000000e+00, %9606 ]
  %9914 = phi float [ %9656, %9624 ], [ %9815, %9789 ], [ %9897, %9870 ], [ 0.000000e+00, %9604 ], [ 0.000000e+00, %9606 ]
  %9915 = fmul fast float %9547, %9911
  %9916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9917 = extractvalue %dx.types.CBufRet.f32 %9916, 2
  %9918 = fsub fast float %9554, %9917
  %9919 = fcmp fast olt float %9915, -2.000000e+01
  %9920 = call float @dx.op.unary.f32(i32 21, float %9915)  ; Exp(value)
  %9921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9922 = extractvalue %dx.types.CBufRet.f32 %9921, 2
  %9923 = extractvalue %dx.types.CBufRet.f32 %9921, 3
  %9924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %9925 = extractvalue %dx.types.CBufRet.f32 %9924, 2
  %9926 = fmul fast float %9923, %9918
  %9927 = call float @dx.op.unary.f32(i32 7, float %9926)  ; Saturate(value)
  %9928 = fsub fast float 1.000000e+00, %9927
  %9929 = fmul fast float %9539, 5.000000e-01
  %9930 = fadd fast float %9929, 5.000000e-01
  %9931 = call float @dx.op.unary.f32(i32 7, float %9930)  ; Saturate(value)
  %9932 = fsub fast float 1.000000e+00, %9931
  %9933 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9928)  ; FMax(a,b)
  %9934 = fdiv fast float %9932, %9933
  %9935 = fsub fast float %9918, %9496
  %9936 = call float @dx.op.unary.f32(i32 6, float %9935)  ; FAbs(value)
  %9937 = fmul fast float %9936, %9922
  %9938 = call float @dx.op.unary.f32(i32 7, float %9934)  ; Saturate(value)
  %9939 = fsub fast float 1.000000e+00, %9937
  %9940 = fmul fast float %9939, %9938
  %9941 = fadd fast float %9940, %9937
  %9942 = fmul fast float %9925, %9918
  %9943 = call float @dx.op.unary.f32(i32 7, float %9942)  ; Saturate(value)
  %9944 = fsub fast float 1.000000e+00, %9941
  %9945 = fmul fast float %9944, %9943
  %9946 = fadd fast float %9945, %9941
  %9947 = call float @dx.op.unary.f32(i32 7, float %9946)  ; Saturate(value)
  %9948 = fadd fast float %9920, -1.000000e+00
  %9949 = select i1 %9919, float -1.000000e+00, float %9948
  %9950 = fmul fast float %9947, %9949
  %9951 = fadd fast float %9950, 1.000000e+00
  %9952 = fsub fast float -0.000000e+00, %9950
  %9953 = fmul fast float %9912, %9952
  %9954 = fmul fast float %9913, %9952
  %9955 = fmul fast float %9914, %9952
  br label %9956

; <label>:9956                                    ; preds = %9909, %9505
  %9957 = phi float [ %9910, %9909 ], [ 0.000000e+00, %9505 ]
  %9958 = phi float [ %9951, %9909 ], [ 1.000000e+00, %9505 ]
  %9959 = phi float [ %9953, %9909 ], [ 0.000000e+00, %9505 ]
  %9960 = phi float [ %9954, %9909 ], [ 0.000000e+00, %9505 ]
  %9961 = phi float [ %9955, %9909 ], [ 0.000000e+00, %9505 ]
  %9962 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9963 = extractvalue %dx.types.CBufRet.f32 %9962, 1
  %9964 = fsub fast float 1.000000e+00, %9958
  %9965 = fmul fast float %9964, %9540
  %9966 = fmul fast float %9965, %9963
  %9967 = fsub fast float %9540, %9966
  br i1 %9533, label %9968, label %9997, !dx.controlflow.hints !172

; <label>:9968                                    ; preds = %9956
  %9969 = fmul fast float %9541, %9530
  %9970 = fadd fast float %9969, %9531
  %9971 = call float @dx.op.unary.f32(i32 7, float %9970)  ; Saturate(value)
  %9972 = fmul fast float %9512, %9967
  %9973 = fsub fast float -0.000000e+00, %9972
  %9974 = fmul fast float %9513, %9967
  %9975 = fsub fast float -0.000000e+00, %9974
  %9976 = call float @dx.op.unary.f32(i32 21, float %9973)  ; Exp(value)
  %9977 = call float @dx.op.unary.f32(i32 21, float %9975)  ; Exp(value)
  %9978 = call float @dx.op.binary.f32(i32 35, float %9520, float %9976)  ; FMax(a,b)
  %9979 = call float @dx.op.binary.f32(i32 35, float %9520, float %9977)  ; FMax(a,b)
  %9980 = fsub fast float %9979, %9978
  %9981 = fmul fast float %9980, %9971
  %9982 = fadd fast float %9981, %9978
  %9983 = call float @dx.op.unary.f32(i32 7, float %9982)  ; Saturate(value)
  %9984 = fsub fast float %9517, %9522
  %9985 = fsub fast float %9518, %9523
  %9986 = fsub fast float %9519, %9524
  %9987 = fmul fast float %9971, %9984
  %9988 = fmul fast float %9971, %9985
  %9989 = fmul fast float %9971, %9986
  %9990 = fadd fast float %9987, %9522
  %9991 = fadd fast float %9988, %9523
  %9992 = fadd fast float %9989, %9524
  %9993 = fsub fast float 1.000000e+00, %9983
  %9994 = fmul fast float %9993, %9990
  %9995 = fmul fast float %9993, %9991
  %9996 = fmul fast float %9993, %9992
  br label %10056

; <label>:9997                                    ; preds = %9956
  %9998 = fmul fast float %9967, %9529
  %9999 = call float @dx.op.unary.f32(i32 7, float %9998)  ; Saturate(value)
  %10000 = fsub fast float 2.000000e+00, %9999
  %10001 = fmul fast float %9999, 9.921875e-01
  %10002 = fmul fast float %10001, %10000
  %10003 = fadd fast float %10002, 3.906250e-03
  %10004 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %54, float %10003, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10005 = extractvalue %dx.types.ResRet.f32 %10004, 0
  %10006 = fsub fast float %9999, %10005
  %10007 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %10006)  ; FMax(a,b)
  %10008 = fmul fast float %9515, %9496
  %10009 = call float @dx.op.unary.f32(i32 6, float %10008)  ; FAbs(value)
  %10010 = fcmp fast ogt float %10009, 0x3EB0C6F7A0000000
  br i1 %10010, label %10011, label %10017, !dx.controlflow.hints !173

; <label>:10011                                   ; preds = %9997
  %10012 = fmul fast float %10008, 0xBFF7154760000000
  %10013 = call float @dx.op.unary.f32(i32 21, float %10012)  ; Exp(value)
  %10014 = fsub fast float 1.000000e+00, %10013
  %10015 = fdiv fast float %10014, %10008
  %10016 = fmul fast float %10015, %9525
  br label %10017

; <label>:10017                                   ; preds = %10011, %9997
  %10018 = phi float [ %10016, %10011 ], [ %9525, %9997 ]
  %10019 = fadd fast float %10018, %9527
  %10020 = fmul fast float %10019, %10007
  %10021 = fmul fast float %9512, %10020
  %10022 = fsub fast float -0.000000e+00, %10021
  %10023 = fmul fast float %9513, %10020
  %10024 = fsub fast float -0.000000e+00, %10023
  %10025 = fmul fast float %9514, %10020
  %10026 = fsub fast float -0.000000e+00, %10025
  %10027 = call float @dx.op.unary.f32(i32 21, float %10022)  ; Exp(value)
  %10028 = call float @dx.op.unary.f32(i32 21, float %10024)  ; Exp(value)
  %10029 = call float @dx.op.unary.f32(i32 21, float %10026)  ; Exp(value)
  %10030 = fmul fast float %9541, %9541
  %10031 = fadd fast float %10030, 1.000000e+00
  %10032 = fmul fast float %10031, 0x3FAE8EC8A0000000
  %10033 = fmul fast float %10032, %9522
  %10034 = fmul fast float %10032, %9523
  %10035 = fmul fast float %10032, %9524
  %10036 = fmul fast float %9541, %9520
  %10037 = fsub fast float 1.000000e+00, %10036
  %10038 = fmul fast float %9520, %9520
  %10039 = fsub fast float 1.000000e+00, %10038
  %10040 = fmul fast float %10039, 0x3FB45F3060000000
  %10041 = fmul fast float %10037, %10037
  %10042 = fdiv fast float 1.000000e+00, %10041
  %10043 = fmul fast float %10040, %10042
  %10044 = fmul fast float %10043, %9517
  %10045 = fmul fast float %10043, %9518
  %10046 = fmul fast float %10043, %9519
  %10047 = fadd fast float %10044, %10033
  %10048 = fadd fast float %10045, %10034
  %10049 = fadd fast float %10046, %10035
  %10050 = fsub fast float 1.000000e+00, %10027
  %10051 = fsub fast float 1.000000e+00, %10028
  %10052 = fsub fast float 1.000000e+00, %10029
  %10053 = fmul fast float %10047, %10050
  %10054 = fmul fast float %10048, %10051
  %10055 = fmul fast float %10049, %10052
  br label %10056

; <label>:10056                                   ; preds = %10017, %9968
  %10057 = phi float [ %9994, %9968 ], [ %10053, %10017 ]
  %10058 = phi float [ %9995, %9968 ], [ %10054, %10017 ]
  %10059 = phi float [ %9996, %9968 ], [ %10055, %10017 ]
  %10060 = phi float [ %9983, %9968 ], [ %10027, %10017 ]
  %10061 = phi float [ %9983, %9968 ], [ %10028, %10017 ]
  %10062 = phi float [ %9983, %9968 ], [ %10029, %10017 ]
  br i1 %9549, label %10063, label %10261, !dx.controlflow.hints !174

; <label>:10063                                   ; preds = %10056
  %10064 = extractvalue %dx.types.CBufRet.f32 %9962, 0
  %10065 = fmul fast float %10064, %9964
  %10066 = fsub fast float %9959, %10057
  %10067 = fsub fast float %9960, %10058
  %10068 = fsub fast float %9961, %10059
  %10069 = fmul fast float %10065, %10066
  %10070 = fmul fast float %10065, %10067
  %10071 = fmul fast float %10065, %10068
  %10072 = fadd fast float %10069, %10057
  %10073 = fadd fast float %10070, %10058
  %10074 = fadd fast float %10071, %10059
  %10075 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %10060)  ; FMax(a,b)
  %10076 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %10061)  ; FMax(a,b)
  %10077 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %10062)  ; FMax(a,b)
  %10078 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9958)  ; FMax(a,b)
  %10079 = call float @dx.op.binary.f32(i32 35, float %9957, float %9967)  ; FMax(a,b)
  %10080 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %10079)  ; FMax(a,b)
  %10081 = fdiv fast float %9957, %10080
  %10082 = call float @dx.op.unary.f32(i32 7, float %10081)  ; Saturate(value)
  %10083 = fdiv fast float %9967, %10080
  %10084 = call float @dx.op.unary.f32(i32 7, float %10083)  ; Saturate(value)
  %10085 = fcmp fast une float %10078, 1.000000e+00
  br i1 %10085, label %10086, label %10099, !dx.controlflow.hints !175

; <label>:10086                                   ; preds = %10063
  %10087 = call float @dx.op.unary.f32(i32 23, float %10078)  ; Log(value)
  %10088 = fmul fast float %10087, 0x3FE62E4300000000
  %10089 = fmul fast float %9959, %10088
  %10090 = fsub fast float -0.000000e+00, %10089
  %10091 = fmul fast float %9960, %10088
  %10092 = fsub fast float -0.000000e+00, %10091
  %10093 = fmul fast float %9961, %10088
  %10094 = fsub fast float -0.000000e+00, %10093
  %10095 = fsub fast float 1.000000e+00, %10078
  %10096 = fdiv fast float %10090, %10095
  %10097 = fdiv fast float %10092, %10095
  %10098 = fdiv fast float %10094, %10095
  br label %10099

; <label>:10099                                   ; preds = %10086, %10063
  %10100 = phi float [ %10096, %10086 ], [ %9959, %10063 ]
  %10101 = phi float [ %10097, %10086 ], [ %9960, %10063 ]
  %10102 = phi float [ %10098, %10086 ], [ %9961, %10063 ]
  %10103 = phi float [ %10088, %10086 ], [ 0.000000e+00, %10063 ]
  %10104 = fcmp fast une float %10075, 1.000000e+00
  br i1 %10104, label %10105, label %10112, !dx.controlflow.hints !176

; <label>:10105                                   ; preds = %10099
  %10106 = call float @dx.op.unary.f32(i32 23, float %10075)  ; Log(value)
  %10107 = fmul fast float %10106, 0x3FE62E4300000000
  %10108 = fmul fast float %10072, %10107
  %10109 = fsub fast float -0.000000e+00, %10108
  %10110 = fsub fast float 1.000000e+00, %10075
  %10111 = fdiv fast float %10109, %10110
  br label %10112

; <label>:10112                                   ; preds = %10105, %10099
  %10113 = phi float [ %10111, %10105 ], [ %10072, %10099 ]
  %10114 = phi float [ %10107, %10105 ], [ 0.000000e+00, %10099 ]
  %10115 = fcmp fast une float %10076, 1.000000e+00
  br i1 %10115, label %10116, label %10123, !dx.controlflow.hints !176

; <label>:10116                                   ; preds = %10112
  %10117 = call float @dx.op.unary.f32(i32 23, float %10076)  ; Log(value)
  %10118 = fmul fast float %10117, 0x3FE62E4300000000
  %10119 = fmul fast float %10073, %10118
  %10120 = fsub fast float -0.000000e+00, %10119
  %10121 = fsub fast float 1.000000e+00, %10076
  %10122 = fdiv fast float %10120, %10121
  br label %10123

; <label>:10123                                   ; preds = %10116, %10112
  %10124 = phi float [ %10122, %10116 ], [ %10073, %10112 ]
  %10125 = phi float [ %10118, %10116 ], [ 0.000000e+00, %10112 ]
  %10126 = fcmp fast une float %10077, 1.000000e+00
  br i1 %10126, label %10127, label %10134, !dx.controlflow.hints !176

; <label>:10127                                   ; preds = %10123
  %10128 = call float @dx.op.unary.f32(i32 23, float %10077)  ; Log(value)
  %10129 = fmul fast float %10128, 0x3FE62E4300000000
  %10130 = fmul fast float %10074, %10129
  %10131 = fsub fast float -0.000000e+00, %10130
  %10132 = fsub fast float 1.000000e+00, %10077
  %10133 = fdiv fast float %10131, %10132
  br label %10134

; <label>:10134                                   ; preds = %10127, %10123
  %10135 = phi float [ %10133, %10127 ], [ %10074, %10123 ]
  %10136 = phi float [ %10129, %10127 ], [ 0.000000e+00, %10123 ]
  %10137 = fmul fast float %10100, %10084
  %10138 = fmul fast float %10101, %10084
  %10139 = fmul fast float %10102, %10084
  %10140 = fmul fast float %10103, %10084
  %10141 = fmul fast float %10113, %10082
  %10142 = fmul fast float %10124, %10082
  %10143 = fmul fast float %10135, %10082
  %10144 = fmul fast float %10114, %10082
  %10145 = fmul fast float %10125, %10082
  %10146 = fmul fast float %10136, %10082
  %10147 = fadd fast float %10141, %10137
  %10148 = fadd fast float %10142, %10138
  %10149 = fadd fast float %10143, %10139
  %10150 = fadd fast float %10144, %10140
  %10151 = fadd fast float %10145, %10140
  %10152 = fadd fast float %10146, %10140
  %10153 = fcmp fast une float %10150, 0.000000e+00
  br i1 %10153, label %10154, label %10161, !dx.controlflow.hints !177

; <label>:10154                                   ; preds = %10134
  %10155 = fmul fast float %10150, 0x3FF7154760000000
  %10156 = call float @dx.op.unary.f32(i32 21, float %10155)  ; Exp(value)
  %10157 = fsub fast float 1.000000e+00, %10156
  %10158 = fmul fast float %10147, %10157
  %10159 = fsub fast float -0.000000e+00, %10158
  %10160 = fdiv fast float %10159, %10150
  br label %10161

; <label>:10161                                   ; preds = %10154, %10134
  %10162 = phi float [ %10156, %10154 ], [ 1.000000e+00, %10134 ]
  %10163 = phi float [ %10160, %10154 ], [ %10147, %10134 ]
  %10164 = fcmp fast une float %10151, 0.000000e+00
  br i1 %10164, label %10165, label %10172, !dx.controlflow.hints !177

; <label>:10165                                   ; preds = %10161
  %10166 = fmul fast float %10151, 0x3FF7154760000000
  %10167 = call float @dx.op.unary.f32(i32 21, float %10166)  ; Exp(value)
  %10168 = fsub fast float 1.000000e+00, %10167
  %10169 = fmul fast float %10148, %10168
  %10170 = fsub fast float -0.000000e+00, %10169
  %10171 = fdiv fast float %10170, %10151
  br label %10172

; <label>:10172                                   ; preds = %10165, %10161
  %10173 = phi float [ %10167, %10165 ], [ 1.000000e+00, %10161 ]
  %10174 = phi float [ %10171, %10165 ], [ %10148, %10161 ]
  %10175 = fcmp fast une float %10152, 0.000000e+00
  br i1 %10175, label %10176, label %10183, !dx.controlflow.hints !177

; <label>:10176                                   ; preds = %10172
  %10177 = fmul fast float %10152, 0x3FF7154760000000
  %10178 = call float @dx.op.unary.f32(i32 21, float %10177)  ; Exp(value)
  %10179 = fsub fast float 1.000000e+00, %10178
  %10180 = fmul fast float %10149, %10179
  %10181 = fsub fast float -0.000000e+00, %10180
  %10182 = fdiv fast float %10181, %10152
  br label %10183

; <label>:10183                                   ; preds = %10176, %10172
  %10184 = phi float [ %10178, %10176 ], [ 1.000000e+00, %10172 ]
  %10185 = phi float [ %10182, %10176 ], [ %10149, %10172 ]
  %10186 = fcmp fast ogt float %10082, %10084
  br i1 %10186, label %10187, label %10207

; <label>:10187                                   ; preds = %10183
  %10188 = fsub fast float 1.000000e+00, %10084
  %10189 = fmul fast float %10100, %10188
  %10190 = fmul fast float %10101, %10188
  %10191 = fmul fast float %10102, %10188
  %10192 = fmul fast float %10103, %10188
  %10193 = fcmp fast une float %10192, 0.000000e+00
  br i1 %10193, label %10194, label %10245, !dx.controlflow.hints !178

; <label>:10194                                   ; preds = %10187
  %10195 = fmul fast float %10192, 0x3FF7154760000000
  %10196 = call float @dx.op.unary.f32(i32 21, float %10195)  ; Exp(value)
  %10197 = fsub fast float 1.000000e+00, %10196
  %10198 = fmul fast float %10189, %10197
  %10199 = fsub fast float -0.000000e+00, %10198
  %10200 = fmul fast float %10190, %10197
  %10201 = fsub fast float -0.000000e+00, %10200
  %10202 = fmul fast float %10191, %10197
  %10203 = fsub fast float -0.000000e+00, %10202
  %10204 = fdiv fast float %10199, %10192
  %10205 = fdiv fast float %10201, %10192
  %10206 = fdiv fast float %10203, %10192
  br label %10245

; <label>:10207                                   ; preds = %10183
  %10208 = fsub fast float 1.000000e+00, %10082
  %10209 = fmul fast float %10113, %10208
  %10210 = fmul fast float %10124, %10208
  %10211 = fmul fast float %10135, %10208
  %10212 = fmul fast float %10114, %10208
  %10213 = fmul fast float %10125, %10208
  %10214 = fmul fast float %10136, %10208
  %10215 = fcmp fast une float %10212, 0.000000e+00
  br i1 %10215, label %10216, label %10223, !dx.controlflow.hints !177

; <label>:10216                                   ; preds = %10207
  %10217 = fmul fast float %10212, 0x3FF7154760000000
  %10218 = call float @dx.op.unary.f32(i32 21, float %10217)  ; Exp(value)
  %10219 = fsub fast float 1.000000e+00, %10218
  %10220 = fmul fast float %10209, %10219
  %10221 = fsub fast float -0.000000e+00, %10220
  %10222 = fdiv fast float %10221, %10212
  br label %10223

; <label>:10223                                   ; preds = %10216, %10207
  %10224 = phi float [ %10222, %10216 ], [ %10209, %10207 ]
  %10225 = phi float [ %10218, %10216 ], [ 1.000000e+00, %10207 ]
  %10226 = fcmp fast une float %10213, 0.000000e+00
  br i1 %10226, label %10227, label %10234, !dx.controlflow.hints !177

; <label>:10227                                   ; preds = %10223
  %10228 = fmul fast float %10213, 0x3FF7154760000000
  %10229 = call float @dx.op.unary.f32(i32 21, float %10228)  ; Exp(value)
  %10230 = fsub fast float 1.000000e+00, %10229
  %10231 = fmul fast float %10210, %10230
  %10232 = fsub fast float -0.000000e+00, %10231
  %10233 = fdiv fast float %10232, %10213
  br label %10234

; <label>:10234                                   ; preds = %10227, %10223
  %10235 = phi float [ %10233, %10227 ], [ %10210, %10223 ]
  %10236 = phi float [ %10229, %10227 ], [ 1.000000e+00, %10223 ]
  %10237 = fcmp fast une float %10214, 0.000000e+00
  br i1 %10237, label %10238, label %10245, !dx.controlflow.hints !177

; <label>:10238                                   ; preds = %10234
  %10239 = fmul fast float %10214, 0x3FF7154760000000
  %10240 = call float @dx.op.unary.f32(i32 21, float %10239)  ; Exp(value)
  %10241 = fsub fast float 1.000000e+00, %10240
  %10242 = fmul fast float %10211, %10241
  %10243 = fsub fast float -0.000000e+00, %10242
  %10244 = fdiv fast float %10243, %10214
  br label %10245

; <label>:10245                                   ; preds = %10238, %10234, %10194, %10187
  %10246 = phi float [ %10244, %10238 ], [ %10206, %10194 ], [ %10191, %10187 ], [ %10211, %10234 ]
  %10247 = phi float [ %10235, %10238 ], [ %10205, %10194 ], [ %10190, %10187 ], [ %10235, %10234 ]
  %10248 = phi float [ %10224, %10238 ], [ %10204, %10194 ], [ %10189, %10187 ], [ %10224, %10234 ]
  %10249 = phi float [ %10240, %10238 ], [ %10196, %10194 ], [ 1.000000e+00, %10187 ], [ 1.000000e+00, %10234 ]
  %10250 = phi float [ %10236, %10238 ], [ %10196, %10194 ], [ 1.000000e+00, %10187 ], [ %10236, %10234 ]
  %10251 = phi float [ %10225, %10238 ], [ %10196, %10194 ], [ 1.000000e+00, %10187 ], [ %10225, %10234 ]
  %10252 = fmul fast float %10251, %10163
  %10253 = fmul fast float %10250, %10174
  %10254 = fmul fast float %10249, %10185
  %10255 = fadd fast float %10252, %10248
  %10256 = fadd fast float %10253, %10247
  %10257 = fadd fast float %10254, %10246
  %10258 = fmul fast float %10251, %10162
  %10259 = fmul fast float %10250, %10173
  %10260 = fmul fast float %10249, %10184
  br label %10261

; <label>:10261                                   ; preds = %10245, %10056
  %10262 = phi float [ %10260, %10245 ], [ %10062, %10056 ]
  %10263 = phi float [ %10259, %10245 ], [ %10061, %10056 ]
  %10264 = phi float [ %10258, %10245 ], [ %10060, %10056 ]
  %10265 = phi float [ %10257, %10245 ], [ %10059, %10056 ]
  %10266 = phi float [ %10256, %10245 ], [ %10058, %10056 ]
  %10267 = phi float [ %10255, %10245 ], [ %10057, %10056 ]
  %10268 = fmul fast float %10267, %9221
  %10269 = fmul fast float %10266, %9222
  %10270 = fmul fast float %10265, %9223
  %10271 = fmul fast float %10264, %9504
  %10272 = call float @dx.op.dot3.f32(i32 55, float %10264, float %10263, float %10262, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10273 = call float @dx.op.dot3.f32(i32 55, float %10268, float %10269, float %10270, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10274 = select i1 %258, float %10272, float %10264
  %10275 = select i1 %258, float %10272, float %10263
  %10276 = select i1 %258, float 1.000000e+00, float %10262
  %10277 = select i1 %258, float %10273, float %10268
  %10278 = select i1 %258, float 0.000000e+00, float %10269
  %10279 = select i1 %258, float 0.000000e+00, float %10270
  %10280 = fmul fast float %10274, %9498
  %10281 = fmul fast float %10275, %9499
  %10282 = fmul fast float %10276, %9500
  %10283 = fadd fast float %10280, %10277
  %10284 = fadd fast float %10281, %10278
  %10285 = fadd fast float %10279, %10282
  %10286 = fmul fast float %10274, %9501
  %10287 = fmul fast float %10275, %9502
  %10288 = fmul fast float %10276, %9503
  %10289 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %10290 = extractvalue %dx.types.CBufRet.i32 %10289, 0
  %10291 = icmp eq i32 %10290, 0
  br i1 %10291, label %10659, label %10292, !dx.controlflow.hints !179

; <label>:10292                                   ; preds = %10261
  %10293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %10294 = extractvalue %dx.types.CBufRet.f32 %10293, 2
  %10295 = extractvalue %dx.types.CBufRet.f32 %10293, 3
  %10296 = fmul fast float %10294, %109
  %10297 = fmul fast float %10295, %110
  %10298 = fmul fast float %10296, 2.000000e+00
  %10299 = fmul fast float %10297, 2.000000e+00
  %10300 = fsub fast float 1.000000e+00, %10298
  %10301 = fsub fast float 1.000000e+00, %10299
  %10302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %10303 = extractvalue %dx.types.CBufRet.f32 %10302, 0
  %10304 = extractvalue %dx.types.CBufRet.f32 %10302, 1
  %10305 = extractvalue %dx.types.CBufRet.f32 %10302, 2
  %10306 = fmul fast float %10300, %10303
  %10307 = fmul fast float %10300, %10304
  %10308 = fmul fast float %10300, %10305
  %10309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %10310 = extractvalue %dx.types.CBufRet.f32 %10309, 0
  %10311 = extractvalue %dx.types.CBufRet.f32 %10309, 1
  %10312 = extractvalue %dx.types.CBufRet.f32 %10309, 2
  %10313 = fmul fast float %10301, %10310
  %10314 = fmul fast float %10301, %10311
  %10315 = fmul fast float %10301, %10312
  %10316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %10317 = extractvalue %dx.types.CBufRet.f32 %10316, 0
  %10318 = extractvalue %dx.types.CBufRet.f32 %10316, 1
  %10319 = extractvalue %dx.types.CBufRet.f32 %10316, 2
  %10320 = fadd fast float %10313, %10317
  %10321 = fadd fast float %10320, %10306
  %10322 = fadd fast float %10314, %10318
  %10323 = fadd fast float %10322, %10307
  %10324 = fadd fast float %10315, %10319
  %10325 = fadd fast float %10324, %10308
  %10326 = fmul fast float %10321, %9497
  %10327 = fmul fast float %10323, %9497
  %10328 = fmul fast float %10325, %9497
  %10329 = fmul fast float %10326, %10326
  %10330 = fmul fast float %10327, %10327
  %10331 = fadd fast float %10329, %10330
  %10332 = fmul fast float %10328, %10328
  %10333 = fadd fast float %10331, %10332
  %10334 = call float @dx.op.unary.f32(i32 24, float %10333)  ; Sqrt(value)
  %10335 = extractvalue %dx.types.CBufRet.f32 %9224, 0
  %10336 = fsub fast float %10334, %10335
  %10337 = extractvalue %dx.types.CBufRet.f32 %9224, 2
  %10338 = fmul fast float %10336, %10337
  %10339 = call float @dx.op.unary.f32(i32 7, float %10338)  ; Saturate(value)
  %10340 = fadd fast float %10339, -5.000000e-01
  %10341 = fmul fast float %10340, 2.000000e+00
  %10342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %10343 = extractvalue %dx.types.CBufRet.f32 %10342, 2
  %10344 = call float @dx.op.binary.f32(i32 36, float %10343, float %10341)  ; FMin(a,b)
  %10345 = fsub fast float -0.000000e+00, %10343
  %10346 = fcmp fast ogt float %10344, %10345
  br i1 %10346, label %10347, label %10659, !dx.controlflow.hints !180

; <label>:10347                                   ; preds = %10292
  %10348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %10349 = extractvalue %dx.types.CBufRet.f32 %10348, 3
  %10350 = fcmp fast ogt float %10349, 0.000000e+00
  br i1 %10350, label %10351, label %10426, !dx.controlflow.hints !181

; <label>:10351                                   ; preds = %10347
  %10352 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %36, i32 0)  ; GetDimensions(handle,mipLevel)
  %10353 = extractvalue %dx.types.Dimensions %10352, 0
  %10354 = sitofp i32 %10353 to float
  %10355 = extractvalue %dx.types.Dimensions %10352, 1
  %10356 = sitofp i32 %10355 to float
  %10357 = fmul fast float %10296, %10354
  %10358 = fmul fast float %10297, %10356
  %10359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %10360 = extractvalue %dx.types.CBufRet.f32 %10359, 1
  %10361 = fsub fast float -0.000000e+00, %10360
  %10362 = fptoui float %10361 to i32
  %10363 = fptoui float %10357 to i32
  %10364 = fptoui float %10358 to i32
  %10365 = and i32 %10362, 31
  %10366 = lshr i32 %10363, %10365
  %10367 = lshr i32 %10364, %10365
  %10368 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 %10362, i32 %10366, i32 %10367, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %10369 = extractvalue %dx.types.ResRet.f32 %10368, 0
  %10370 = fcmp fast olt float %10369, -1.000000e+00
  %10371 = fcmp fast ogt float %10369, -1.000000e+00
  %10372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %10373 = extractvalue %dx.types.CBufRet.f32 %10372, 1
  %10374 = select i1 %10371, float %10373, float 1.000000e+00
  %10375 = fadd fast float %10369, 1.000000e+00
  %10376 = fmul fast float %10374, %10375
  %10377 = call float @dx.op.unary.f32(i32 6, float %10376)  ; FAbs(value)
  %10378 = extractvalue %dx.types.CBufRet.f32 %10372, 3
  %10379 = fcmp fast oge float %10377, %10378
  %10380 = select i1 %10379, float 0x4197782600000000, float %10377
  %10381 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %10382 = extractvalue %dx.types.CBufRet.f32 %10381, 0
  %10383 = extractvalue %dx.types.CBufRet.f32 %10381, 1
  %10384 = extractvalue %dx.types.CBufRet.f32 %10381, 2
  %10385 = select i1 %10370, float %10382, float %10303
  %10386 = select i1 %10370, float %10383, float %10304
  %10387 = select i1 %10370, float %10384, float %10305
  %10388 = fmul fast float %10385, %10300
  %10389 = fmul fast float %10386, %10300
  %10390 = fmul fast float %10387, %10300
  %10391 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %10392 = extractvalue %dx.types.CBufRet.f32 %10391, 0
  %10393 = extractvalue %dx.types.CBufRet.f32 %10391, 1
  %10394 = extractvalue %dx.types.CBufRet.f32 %10391, 2
  %10395 = select i1 %10370, float %10392, float %10310
  %10396 = select i1 %10370, float %10393, float %10311
  %10397 = select i1 %10370, float %10394, float %10312
  %10398 = fmul fast float %10395, %10301
  %10399 = fmul fast float %10396, %10301
  %10400 = fmul fast float %10397, %10301
  %10401 = fadd fast float %10398, %10388
  %10402 = fadd fast float %10399, %10389
  %10403 = fadd fast float %10400, %10390
  %10404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %10405 = extractvalue %dx.types.CBufRet.f32 %10404, 0
  %10406 = extractvalue %dx.types.CBufRet.f32 %10404, 1
  %10407 = extractvalue %dx.types.CBufRet.f32 %10404, 2
  %10408 = select i1 %10370, float %10405, float %10317
  %10409 = select i1 %10370, float %10406, float %10318
  %10410 = select i1 %10370, float %10407, float %10319
  %10411 = fadd fast float %10401, %10408
  %10412 = fadd fast float %10402, %10409
  %10413 = fadd fast float %10403, %10410
  %10414 = fmul fast float %10411, %10380
  %10415 = fmul fast float %10412, %10380
  %10416 = fmul fast float %10413, %10380
  %10417 = fmul fast float %10414, %10414
  %10418 = fmul fast float %10415, %10415
  %10419 = fadd fast float %10417, %10418
  %10420 = fmul fast float %10416, %10416
  %10421 = fadd fast float %10419, %10420
  %10422 = call float @dx.op.unary.f32(i32 24, float %10421)  ; Sqrt(value)
  %10423 = fsub fast float %10422, %10335
  %10424 = fmul fast float %10423, %10337
  %10425 = call float @dx.op.unary.f32(i32 7, float %10424)  ; Saturate(value)
  br label %10426

; <label>:10426                                   ; preds = %10351, %10347
  %10427 = phi float [ %10425, %10351 ], [ 1.000000e+00, %10347 ]
  %10428 = fmul fast float %10344, 5.000000e-01
  %10429 = fadd fast float %10428, 5.000000e-01
  %10430 = call float @dx.op.unary.f32(i32 22, float %10429)  ; Frc(value)
  %10431 = call float @dx.op.unary.f32(i32 27, float %10430)  ; Round_ni(value)
  %10432 = call float @dx.op.unary.f32(i32 22, float %10430)  ; Frc(value)
  %10433 = fmul fast float %10432, 2.000000e+00
  %10434 = fadd fast float %10433, -1.000000e+00
  %10435 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %54, float %10296, float %10297, float %10431, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10436 = extractvalue %dx.types.ResRet.f32 %10435, 0
  %10437 = extractvalue %dx.types.ResRet.f32 %10435, 1
  %10438 = extractvalue %dx.types.ResRet.f32 %10435, 2
  %10439 = extractvalue %dx.types.ResRet.f32 %10435, 3
  %10440 = fadd fast float %10436, -5.000000e-01
  %10441 = fadd fast float %10438, -5.000000e-01
  %10442 = fmul fast float %10440, 0xBFD5555560000000
  %10443 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %10441, float %10442)  ; FMad(a,b,c)
  %10444 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %10437, float 0.000000e+00)  ; FMad(a,b,c)
  %10445 = fadd fast float %10444, %10439
  %10446 = fmul fast float %10440, -7.500000e-01
  %10447 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %10441, float %10446)  ; FMad(a,b,c)
  %10448 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %10437, float 0.000000e+00)  ; FMad(a,b,c)
  %10449 = fadd fast float %10448, %10439
  %10450 = call float @dx.op.binary.f32(i32 35, float %10443, float -1.000000e+00)  ; FMax(a,b)
  %10451 = call float @dx.op.binary.f32(i32 35, float %10445, float -1.000000e+00)  ; FMax(a,b)
  %10452 = call float @dx.op.binary.f32(i32 35, float %10447, float -1.000000e+00)  ; FMax(a,b)
  %10453 = call float @dx.op.binary.f32(i32 35, float %10449, float -1.000000e+00)  ; FMax(a,b)
  %10454 = call float @dx.op.binary.f32(i32 36, float %10450, float 1.000000e+00)  ; FMin(a,b)
  %10455 = call float @dx.op.binary.f32(i32 36, float %10451, float 1.000000e+00)  ; FMin(a,b)
  %10456 = call float @dx.op.binary.f32(i32 36, float %10452, float 1.000000e+00)  ; FMin(a,b)
  %10457 = call float @dx.op.binary.f32(i32 36, float %10453, float 1.000000e+00)  ; FMin(a,b)
  %10458 = fcmp fast olt float %10454, 0x3FEFFF8020000000
  br i1 %10458, label %10459, label %10574, !dx.controlflow.hints !182

; <label>:10459                                   ; preds = %10426
  %10460 = extractvalue %dx.types.CBufRet.f32 %10342, 3
  %10461 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %10462 = extractvalue %dx.types.CBufRet.f32 %10461, 0
  %10463 = extractvalue %dx.types.CBufRet.f32 %10461, 1
  %10464 = extractvalue %dx.types.CBufRet.f32 %10461, 2
  %10465 = extractvalue %dx.types.CBufRet.f32 %10461, 3
  %10466 = fsub fast float %10462, %10454
  %10467 = fsub fast float %10463, %10455
  %10468 = fsub fast float %10464, %10456
  %10469 = fsub fast float %10465, %10457
  %10470 = fmul fast float %10466, %10460
  %10471 = fmul fast float %10467, %10460
  %10472 = fmul fast float %10468, %10460
  %10473 = fmul fast float %10469, %10460
  %10474 = fadd fast float %10470, %10454
  %10475 = fadd fast float %10471, %10455
  %10476 = fsub fast float -0.000000e+00, %10475
  %10477 = fadd fast float %10472, %10456
  %10478 = fadd fast float %10473, %10457
  %10479 = fmul fast float %10474, %10474
  %10480 = fsub fast float %10475, %10479
  %10481 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %10480)  ; FMax(a,b)
  %10482 = fdiv fast float 1.000000e+00, %10481
  %10483 = fmul fast float %10475, %10474
  %10484 = fsub fast float %10477, %10483
  %10485 = fsub fast float %10434, %10474
  %10486 = fmul fast float %10434, %10434
  %10487 = fsub fast float %10486, %10475
  %10488 = fmul fast float %10485, %10482
  %10489 = fmul fast float %10488, %10484
  %10490 = fsub fast float %10487, %10489
  %10491 = fmul fast float %10475, %10475
  %10492 = fsub fast float %10478, %10491
  %10493 = fmul fast float %10484, %10484
  %10494 = fmul fast float %10493, %10482
  %10495 = fsub fast float %10492, %10494
  %10496 = fdiv fast float %10490, %10495
  %10497 = fmul fast float %10484, %10496
  %10498 = fsub fast float %10485, %10497
  %10499 = fmul fast float %10498, %10482
  %10500 = fmul fast float %10499, %10474
  %10501 = fsub fast float 1.000000e+00, %10500
  %10502 = fmul fast float %10475, %10496
  %10503 = fsub fast float %10501, %10502
  %10504 = fmul fast float %10499, %10499
  %10505 = fmul fast float %10496, 4.000000e+00
  %10506 = fmul fast float %10505, %10503
  %10507 = fsub fast float %10504, %10506
  %10508 = call float @dx.op.unary.f32(i32 24, float %10507)  ; Sqrt(value)
  %10509 = fcmp fast oge float %10499, 0.000000e+00
  %10510 = fsub fast float -0.000000e+00, %10508
  %10511 = select i1 %10509, float %10510, float %10508
  %10512 = fsub fast float %10511, %10499
  %10513 = fdiv fast float %10512, %10496
  %10514 = fdiv fast float %10503, %10512
  %10515 = fmul fast float %10513, 5.000000e-01
  %10516 = fmul fast float %10514, 2.000000e+00
  %10517 = select i1 %10509, float %10515, float %10516
  %10518 = select i1 %10509, float %10516, float %10515
  %10519 = call float @dx.op.binary.f32(i32 35, float %10517, float %10518)  ; FMax(a,b)
  %10520 = call float @dx.op.binary.f32(i32 36, float %10517, float %10518)  ; FMin(a,b)
  %10521 = fcmp fast ogt float %10434, %10520
  br i1 %10521, label %10522, label %10532

; <label>:10522                                   ; preds = %10459
  %10523 = fsub fast float %10434, %10520
  %10524 = fsub fast float %10519, %10520
  %10525 = fmul fast float %10523, %10524
  %10526 = fmul fast float %10519, %10434
  %10527 = fadd fast float %10519, %10434
  %10528 = fmul fast float %10527, %10474
  %10529 = fadd fast float %10526, %10475
  %10530 = fsub fast float %10529, %10528
  %10531 = fdiv fast float %10530, %10525
  br label %10532

; <label>:10532                                   ; preds = %10522, %10459
  %10533 = phi float [ %10531, %10522 ], [ 0.000000e+00, %10459 ]
  %10534 = fcmp fast ogt float %10434, %10519
  %10535 = fsub fast float %10434, %10519
  br i1 %10534, label %10536, label %10546

; <label>:10536                                   ; preds = %10532
  %10537 = fsub fast float %10519, %10520
  %10538 = fmul fast float %10537, %10535
  %10539 = fmul fast float %10520, %10434
  %10540 = fadd fast float %10520, %10434
  %10541 = fmul fast float %10540, %10474
  %10542 = fsub fast float %10476, %10539
  %10543 = fadd fast float %10542, %10541
  %10544 = fdiv fast float %10543, %10538
  %10545 = fadd fast float %10544, %10533
  br label %10546

; <label>:10546                                   ; preds = %10536, %10532
  %10547 = phi float [ %10545, %10536 ], [ %10533, %10532 ]
  %10548 = fsub fast float %10434, %10520
  %10549 = fmul fast float %10548, %10535
  %10550 = fmul fast float %10520, %10519
  %10551 = fadd fast float %10520, %10519
  %10552 = fmul fast float %10551, %10474
  %10553 = fadd fast float %10550, %10475
  %10554 = fsub fast float %10553, %10552
  %10555 = fdiv fast float %10554, %10549
  %10556 = call float @dx.op.unary.f32(i32 7, float %10547)  ; Saturate(value)
  %10557 = fcmp fast oeq float %9225, 0.000000e+00
  %10558 = extractvalue %dx.types.CBufRet.f32 %10342, 0
  %10559 = fcmp fast oeq float %10558, 0.000000e+00
  %10560 = or i1 %10557, %10559
  %10561 = fmul fast float %10558, 2.000000e+00
  %10562 = fadd fast float %10343, %10344
  %10563 = fdiv fast float %10562, %10561
  %10564 = call float @dx.op.unary.f32(i32 7, float %10563)  ; Saturate(value)
  %10565 = fmul fast float %10564, 2.000000e+00
  %10566 = fsub fast float 3.000000e+00, %10565
  %10567 = fmul fast float %10564, %10564
  %10568 = fmul fast float %10567, %10566
  %10569 = select i1 %10560, float 1.000000e+00, float %10568
  %10570 = fmul fast float %10555, %9225
  %10571 = fadd fast float %10556, %10570
  %10572 = call float @dx.op.unary.f32(i32 7, float %10571)  ; Saturate(value)
  %10573 = fmul fast float %10569, %10572
  br label %10574

; <label>:10574                                   ; preds = %10546, %10426
  %10575 = phi float [ %10573, %10546 ], [ 0.000000e+00, %10426 ]
  %10576 = fsub fast float 1.000000e+00, %10575
  %10577 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %54, float %10296, float %10297, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10578 = extractvalue %dx.types.ResRet.f32 %10577, 0
  %10579 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %10580 = extractvalue %dx.types.CBufRet.i32 %10579, 2
  %10581 = icmp eq i32 %10580, 0
  br i1 %10581, label %10587, label %10582

; <label>:10582                                   ; preds = %10574
  %10583 = call float @dx.op.unary.f32(i32 7, float %10575)  ; Saturate(value)
  %10584 = fadd fast float %10578, -1.000000e+00
  %10585 = fmul fast float %10583, %10584
  %10586 = fadd fast float %10585, 1.000000e+00
  br label %10587

; <label>:10587                                   ; preds = %10582, %10574
  %10588 = phi float [ %10586, %10582 ], [ %10576, %10574 ]
  br i1 %10350, label %10589, label %10607

; <label>:10589                                   ; preds = %10587
  %10590 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %10591 = extractvalue %dx.types.CBufRet.f32 %10590, 1
  %10592 = fsub fast float %10427, %10591
  %10593 = call float @dx.op.unary.f32(i32 7, float %10592)  ; Saturate(value)
  %10594 = fsub fast float %10427, %10349
  %10595 = call float @dx.op.unary.f32(i32 7, float %10594)  ; Saturate(value)
  %10596 = fsub fast float %10593, %10595
  %10597 = fsub fast float %10429, %10595
  %10598 = fdiv fast float %10597, %10596
  %10599 = call float @dx.op.unary.f32(i32 7, float %10598)  ; Saturate(value)
  %10600 = fmul fast float %10599, 2.000000e+00
  %10601 = fsub fast float 3.000000e+00, %10600
  %10602 = fsub fast float %10578, %10588
  %10603 = fmul fast float %10599, %10599
  %10604 = fmul fast float %10603, %10602
  %10605 = fmul fast float %10604, %10601
  %10606 = fadd fast float %10605, %10588
  br label %10607

; <label>:10607                                   ; preds = %10589, %10587
  %10608 = phi float [ %10606, %10589 ], [ %10588, %10587 ]
  %10609 = call float @dx.op.binary.f32(i32 35, float %10578, float %10608)  ; FMax(a,b)
  %10610 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %10611 = extractvalue %dx.types.CBufRet.i32 %10610, 2
  %10612 = and i32 %10611, 1
  %10613 = icmp eq i32 %10612, 0
  %10614 = fcmp fast une float %10609, 1.000000e+00
  %10615 = and i1 %10614, %10613
  br i1 %10615, label %10616, label %10635

; <label>:10616                                   ; preds = %10607
  %10617 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %54, float %10296, float %10297, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10618 = extractvalue %dx.types.ResRet.f32 %10617, 0
  %10619 = extractvalue %dx.types.ResRet.f32 %10617, 1
  %10620 = extractvalue %dx.types.ResRet.f32 %10617, 2
  %10621 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10622 = extractvalue %dx.types.CBufRet.f32 %10621, 1
  %10623 = fmul fast float %10622, %10618
  %10624 = fmul fast float %10622, %10619
  %10625 = fmul fast float %10622, %10620
  %10626 = fcmp fast ogt float %10578, 0x3FEFFF2E40000000
  %10627 = fsub fast float 1.000000e+00, %10609
  %10628 = fsub fast float 1.000000e+00, %10578
  %10629 = fdiv fast float %10627, %10628
  %10630 = call float @dx.op.unary.f32(i32 7, float %10629)  ; Saturate(value)
  %10631 = select i1 %10626, float 0.000000e+00, float %10630
  %10632 = fmul fast float %10623, %10631
  %10633 = fmul fast float %10624, %10631
  %10634 = fmul fast float %10625, %10631
  br label %10635

; <label>:10635                                   ; preds = %10616, %10607
  %10636 = phi float [ 0.000000e+00, %10607 ], [ %10632, %10616 ]
  %10637 = phi float [ 0.000000e+00, %10607 ], [ %10633, %10616 ]
  %10638 = phi float [ 0.000000e+00, %10607 ], [ %10634, %10616 ]
  %10639 = fmul fast float %10636, %9221
  %10640 = fmul fast float %10637, %9222
  %10641 = fmul fast float %10638, %9223
  %10642 = fmul fast float %10609, %10271
  %10643 = call float @dx.op.dot3.f32(i32 55, float %10609, float %10609, float %10609, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10644 = call float @dx.op.dot3.f32(i32 55, float %10639, float %10640, float %10641, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10645 = select i1 %258, float %10643, float %10609
  %10646 = select i1 %258, float 1.000000e+00, float %10609
  %10647 = select i1 %258, float %10644, float %10639
  %10648 = select i1 %258, float 0.000000e+00, float %10640
  %10649 = select i1 %258, float 0.000000e+00, float %10641
  %10650 = fmul fast float %10645, %10283
  %10651 = fmul fast float %10645, %10284
  %10652 = fmul fast float %10646, %10285
  %10653 = fadd fast float %10650, %10647
  %10654 = fadd fast float %10651, %10648
  %10655 = fadd fast float %10649, %10652
  %10656 = fmul fast float %10645, %10286
  %10657 = fmul fast float %10645, %10287
  %10658 = fmul fast float %10646, %10288
  br label %10659

; <label>:10659                                   ; preds = %10635, %10292, %10261, %9493
  %10660 = phi float [ %9498, %9493 ], [ %10283, %10261 ], [ %10653, %10635 ], [ %10283, %10292 ]
  %10661 = phi float [ %9499, %9493 ], [ %10284, %10261 ], [ %10654, %10635 ], [ %10284, %10292 ]
  %10662 = phi float [ %9500, %9493 ], [ %10285, %10261 ], [ %10655, %10635 ], [ %10285, %10292 ]
  %10663 = phi float [ %9501, %9493 ], [ %10286, %10261 ], [ %10656, %10635 ], [ %10286, %10292 ]
  %10664 = phi float [ %9502, %9493 ], [ %10287, %10261 ], [ %10657, %10635 ], [ %10287, %10292 ]
  %10665 = phi float [ %9503, %9493 ], [ %10288, %10261 ], [ %10658, %10635 ], [ %10288, %10292 ]
  %10666 = phi float [ %9504, %9493 ], [ %10271, %10261 ], [ %10642, %10635 ], [ %10271, %10292 ]
  %10667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %10668 = extractvalue %dx.types.CBufRet.f32 %10667, 2
  %10669 = extractvalue %dx.types.CBufRet.f32 %10667, 3
  %10670 = fmul fast float %10668, %109
  %10671 = fmul fast float %10669, %110
  %10672 = call float @dx.op.unary.f32(i32 7, float %10670)  ; Saturate(value)
  %10673 = call float @dx.op.unary.f32(i32 7, float %10671)  ; Saturate(value)
  %10674 = select i1 %9235, i32 2, i32 0
  %10675 = or i32 %10674, 1
  %10676 = uitofp i32 %10675 to float
  %10677 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %10672, float %10673, float %10676, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10678 = extractvalue %dx.types.ResRet.f32 %10677, 0
  %10679 = extractvalue %dx.types.ResRet.f32 %10677, 1
  %10680 = extractvalue %dx.types.ResRet.f32 %10677, 2
  %10681 = extractvalue %dx.types.ResRet.f32 %10677, 3
  %10682 = add nuw nsw i32 %10674, 2
  %10683 = uitofp i32 %10682 to float
  %10684 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %10672, float %10673, float %10683, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10685 = extractvalue %dx.types.ResRet.f32 %10684, 0
  %10686 = extractvalue %dx.types.ResRet.f32 %10684, 1
  %10687 = extractvalue %dx.types.ResRet.f32 %10684, 2
  %10688 = extractvalue %dx.types.ResRet.f32 %10684, 3
  %10689 = call float @dx.op.binary.f32(i32 35, float %10679, float %10680)  ; FMax(a,b)
  %10690 = call float @dx.op.binary.f32(i32 35, float %10678, float %10689)  ; FMax(a,b)
  %10691 = call float @dx.op.binary.f32(i32 35, float %10690, float %10681)  ; FMax(a,b)
  %10692 = call float @dx.op.binary.f32(i32 36, float %10686, float %10687)  ; FMin(a,b)
  %10693 = call float @dx.op.binary.f32(i32 36, float %10685, float %10692)  ; FMin(a,b)
  %10694 = call float @dx.op.binary.f32(i32 36, float %10693, float %10688)  ; FMin(a,b)
  %10695 = fmul fast float %10691, 2.550000e+02
  %10696 = fadd fast float %10695, 0x3F70101020000000
  %10697 = fptoui float %10696 to i32
  %10698 = fmul fast float %10694, 2.550000e+02
  %10699 = fadd fast float %10698, 0x3F70101020000000
  %10700 = fptoui float %10699 to i32
  %10701 = icmp ult i32 %10697, %10700
  br i1 %10701, label %10702, label %10871

; <label>:10702                                   ; preds = %10659
  %10703 = fcmp fast ogt float %96, 9.843750e-01
  %10704 = fadd fast float %9497, -4.000000e+00
  %10705 = select i1 %10703, float -4.000000e+00, float %10704
  %10706 = call float @dx.op.binary.f32(i32 35, float %10705, float 0.000000e+00)  ; FMax(a,b)
  %10707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %10708 = extractvalue %dx.types.CBufRet.f32 %10707, 0
  %10709 = fadd fast float %10708, %10706
  %10710 = extractvalue %dx.types.CBufRet.f32 %10707, 2
  %10711 = fmul fast float %10709, %10710
  %10712 = call float @dx.op.unary.f32(i32 23, float %10711)  ; Log(value)
  %10713 = extractvalue %dx.types.CBufRet.f32 %10707, 3
  %10714 = fmul fast float %10713, %10712
  %10715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %10716 = extractvalue %dx.types.CBufRet.f32 %10715, 2
  %10717 = fmul fast float %10714, %10716
  %10718 = call float @dx.op.unary.f32(i32 7, float %10717)  ; Saturate(value)
  %10719 = uitofp i32 %10697 to float
  %10720 = uitofp i32 %10700 to float
  %10721 = fadd fast float %10719, 5.000000e-01
  %10722 = fadd fast float %10720, 5.000000e-01
  %10723 = fmul fast float %10716, %10721
  %10724 = fmul fast float %10716, %10722
  %10725 = fadd fast float %10723, 0x3F0FFB4800000000
  %10726 = fadd fast float %10724, 0xBF0FFB4800000000
  %10727 = call float @dx.op.binary.f32(i32 35, float %10718, float %10725)  ; FMax(a,b)
  %10728 = call float @dx.op.binary.f32(i32 36, float %10727, float %10726)  ; FMin(a,b)
  %10729 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %10730 = extractvalue %dx.types.CBufRet.f32 %10729, 1
  %10731 = extractvalue %dx.types.CBufRet.f32 %10729, 2
  %10732 = extractvalue %dx.types.CBufRet.f32 %10729, 0
  %10733 = select i1 %9235, float %10732, float 0.000000e+00
  %10734 = fmul fast float %10730, %10728
  %10735 = fadd fast float %10733, %10734
  %10736 = fadd fast float %10733, %10731
  %10737 = fsub fast float %10730, %10731
  %10738 = fadd fast float %10737, %10733
  %10739 = call float @dx.op.binary.f32(i32 35, float %10735, float %10736)  ; FMax(a,b)
  %10740 = call float @dx.op.binary.f32(i32 36, float %10739, float %10738)  ; FMin(a,b)
  %10741 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %52, float %10672, float %10673, float %10740, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10742 = extractvalue %dx.types.ResRet.f32 %10741, 0
  %10743 = extractvalue %dx.types.ResRet.f32 %10741, 1
  %10744 = extractvalue %dx.types.ResRet.f32 %10741, 2
  %10745 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %10746 = extractvalue %dx.types.CBufRet.i32 %10745, 0
  %10747 = extractvalue %dx.types.CBufRet.i32 %10745, 1
  %10748 = uitofp i32 %10746 to float
  %10749 = uitofp i32 %10747 to float
  %10750 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %10751 = extractvalue %dx.types.CBufRet.f32 %10750, 0
  %10752 = extractvalue %dx.types.CBufRet.f32 %10750, 1
  %10753 = fmul fast float %10748, %10672
  %10754 = fmul fast float %10749, %10673
  %10755 = fadd fast float %10753, -5.000000e-01
  %10756 = fadd fast float %10754, -5.000000e-01
  %10757 = call float @dx.op.unary.f32(i32 22, float %10755)  ; Frc(value)
  %10758 = call float @dx.op.unary.f32(i32 22, float %10756)  ; Frc(value)
  %10759 = fmul fast float %10757, %10757
  %10760 = fmul fast float %10759, %10757
  %10761 = fsub fast float 3.000000e+00, %10757
  %10762 = fmul fast float %10759, %10761
  %10763 = fmul fast float %10757, 3.000000e+00
  %10764 = fmul fast float %10760, 3.000000e+00
  %10765 = fmul fast float %10759, 6.000000e+00
  %10766 = fsub fast float %10764, %10765
  %10767 = fadd fast float %10766, 4.000000e+00
  %10768 = fmul fast float %10767, 0x3FC5555560000000
  %10769 = fmul fast float %10760, -3.000000e+00
  %10770 = fadd fast float %10759, %10757
  %10771 = fmul fast float %10770, 3.000000e+00
  %10772 = fadd fast float %10769, 1.000000e+00
  %10773 = fadd fast float %10772, %10771
  %10774 = fmul fast float %10760, 0x3FC5555560000000
  %10775 = fmul fast float %10758, %10758
  %10776 = fmul fast float %10775, %10758
  %10777 = fsub fast float 3.000000e+00, %10758
  %10778 = fmul fast float %10775, %10777
  %10779 = fmul fast float %10758, 3.000000e+00
  %10780 = fmul fast float %10776, 3.000000e+00
  %10781 = fmul fast float %10775, 6.000000e+00
  %10782 = fsub fast float %10780, %10781
  %10783 = fadd fast float %10782, 4.000000e+00
  %10784 = fmul fast float %10783, 0x3FC5555560000000
  %10785 = fmul fast float %10776, -3.000000e+00
  %10786 = fadd fast float %10775, %10758
  %10787 = fmul fast float %10786, 3.000000e+00
  %10788 = fadd fast float %10785, 1.000000e+00
  %10789 = fadd fast float %10788, %10787
  %10790 = fmul fast float %10776, 0x3FC5555560000000
  %10791 = fadd fast float %10757, 1.000000e+00
  %10792 = fsub fast float 1.000000e+00, %10763
  %10793 = fadd fast float %10792, %10762
  %10794 = fadd fast float %10793, %10767
  %10795 = fmul fast float %10794, 0x3FC5555560000000
  %10796 = fdiv fast float %10768, %10795
  %10797 = fsub fast float %10791, %10796
  %10798 = fsub fast float 1.000000e+00, %10757
  %10799 = fadd fast float %10773, %10760
  %10800 = fmul fast float %10799, 0x3FC5555560000000
  %10801 = fdiv fast float %10774, %10800
  %10802 = fadd fast float %10798, %10801
  %10803 = fadd fast float %10758, 1.000000e+00
  %10804 = fsub fast float 1.000000e+00, %10779
  %10805 = fadd fast float %10804, %10778
  %10806 = fadd fast float %10805, %10783
  %10807 = fmul fast float %10806, 0x3FC5555560000000
  %10808 = fdiv fast float %10784, %10807
  %10809 = fsub fast float %10803, %10808
  %10810 = fsub fast float 1.000000e+00, %10758
  %10811 = fadd fast float %10789, %10776
  %10812 = fmul fast float %10811, 0x3FC5555560000000
  %10813 = fdiv fast float %10790, %10812
  %10814 = fadd fast float %10813, %10810
  %10815 = fmul fast float %10797, %10751
  %10816 = fsub fast float %10672, %10815
  %10817 = fmul fast float %10802, %10751
  %10818 = fadd fast float %10817, %10672
  %10819 = fmul fast float %10814, %10752
  %10820 = fadd fast float %10819, %10673
  %10821 = fmul fast float %10809, %10752
  %10822 = fsub fast float %10673, %10821
  %10823 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %10816, float %10822, float %10740, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10824 = extractvalue %dx.types.ResRet.f32 %10823, 0
  %10825 = extractvalue %dx.types.ResRet.f32 %10823, 1
  %10826 = extractvalue %dx.types.ResRet.f32 %10823, 2
  %10827 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %10818, float %10822, float %10740, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10828 = extractvalue %dx.types.ResRet.f32 %10827, 0
  %10829 = extractvalue %dx.types.ResRet.f32 %10827, 1
  %10830 = extractvalue %dx.types.ResRet.f32 %10827, 2
  %10831 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %10816, float %10820, float %10740, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10832 = extractvalue %dx.types.ResRet.f32 %10831, 0
  %10833 = extractvalue %dx.types.ResRet.f32 %10831, 1
  %10834 = extractvalue %dx.types.ResRet.f32 %10831, 2
  %10835 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %10818, float %10820, float %10740, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10836 = extractvalue %dx.types.ResRet.f32 %10835, 0
  %10837 = extractvalue %dx.types.ResRet.f32 %10835, 1
  %10838 = extractvalue %dx.types.ResRet.f32 %10835, 2
  %10839 = fsub fast float %10832, %10824
  %10840 = fsub fast float %10833, %10825
  %10841 = fsub fast float %10834, %10826
  %10842 = fmul fast float %10839, %10812
  %10843 = fmul fast float %10840, %10812
  %10844 = fmul fast float %10841, %10812
  %10845 = fadd fast float %10842, %10824
  %10846 = fadd fast float %10843, %10825
  %10847 = fadd fast float %10844, %10826
  %10848 = fsub fast float %10836, %10828
  %10849 = fsub fast float %10837, %10829
  %10850 = fsub fast float %10838, %10830
  %10851 = fmul fast float %10848, %10812
  %10852 = fmul fast float %10849, %10812
  %10853 = fmul fast float %10850, %10812
  %10854 = fsub fast float %10828, %10845
  %10855 = fadd fast float %10854, %10851
  %10856 = fsub fast float %10829, %10846
  %10857 = fadd fast float %10856, %10852
  %10858 = fsub fast float %10830, %10847
  %10859 = fadd fast float %10858, %10853
  %10860 = fmul fast float %10855, %10800
  %10861 = fmul fast float %10857, %10800
  %10862 = fmul fast float %10859, %10800
  %10863 = fadd fast float %10860, %10845
  %10864 = fadd fast float %10861, %10846
  %10865 = fadd fast float %10862, %10847
  %10866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10867 = extractvalue %dx.types.CBufRet.f32 %10866, 1
  %10868 = fmul fast float %10863, %10867
  %10869 = fmul fast float %10864, %10867
  %10870 = fmul fast float %10865, %10867
  br label %10871

; <label>:10871                                   ; preds = %10702, %10659
  %10872 = phi float [ %10742, %10702 ], [ 1.000000e+00, %10659 ]
  %10873 = phi float [ %10743, %10702 ], [ 1.000000e+00, %10659 ]
  %10874 = phi float [ %10744, %10702 ], [ 1.000000e+00, %10659 ]
  %10875 = phi float [ %10868, %10702 ], [ 0.000000e+00, %10659 ]
  %10876 = phi float [ %10869, %10702 ], [ 0.000000e+00, %10659 ]
  %10877 = phi float [ %10870, %10702 ], [ 0.000000e+00, %10659 ]
  %10878 = fmul fast float %10875, %9221
  %10879 = fmul fast float %10876, %9222
  %10880 = fmul fast float %10877, %9223
  %10881 = fmul fast float %10872, %10666
  %10882 = call float @dx.op.dot3.f32(i32 55, float %10872, float %10873, float %10874, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10883 = call float @dx.op.dot3.f32(i32 55, float %10878, float %10879, float %10880, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10884 = select i1 %258, float %10882, float %10872
  %10885 = select i1 %258, float %10882, float %10873
  %10886 = select i1 %258, float 1.000000e+00, float %10874
  %10887 = select i1 %258, float %10883, float %10878
  %10888 = select i1 %258, float 0.000000e+00, float %10879
  %10889 = select i1 %258, float 0.000000e+00, float %10880
  %10890 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %10891 = extractvalue %dx.types.CBufRet.i32 %10890, 3
  %10892 = and i32 %10891, 3
  %10893 = icmp ne i32 %10892, 0
  %10894 = and i32 %10891, 4
  %10895 = icmp ne i32 %10894, 0
  %10896 = and i1 %10893, %10895
  %10897 = and i1 %258, %10896
  br i1 %10897, label %10898, label %10904

; <label>:10898                                   ; preds = %10871
  %10899 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %10900 = extractvalue %dx.types.CBufRet.f32 %10899, 1
  %10901 = fadd fast float %10881, -1.000000e+00
  %10902 = fmul fast float %10900, %10901
  %10903 = fadd fast float %10902, 1.000000e+00
  br label %10904

; <label>:10904                                   ; preds = %10898, %10871
  %10905 = phi float [ %10903, %10898 ], [ %10881, %10871 ]
  %10906 = fadd fast float %10663, %10660
  %10907 = fmul fast float %10884, %10906
  %10908 = fadd fast float %10907, %10887
  %10909 = fadd fast float %10664, %10661
  %10910 = fmul fast float %10885, %10909
  %10911 = fadd fast float %10910, %10888
  %10912 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10913 = extractvalue %dx.types.CBufRet.f32 %10912, 0
  br i1 %258, label %10914, label %10929

; <label>:10914                                   ; preds = %10904
  %10915 = fadd fast float %10908, %10911
  %10916 = fmul fast float %10913, %10915
  %10917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %10918 = extractvalue %dx.types.CBufRet.f32 %10917, 3
  %10919 = extractvalue %dx.types.CBufRet.f32 %9205, 1
  %10920 = fsub fast float %9210, %9204
  %10921 = fadd fast float %10920, %9211
  %10922 = fsub fast float %10921, %10919
  %10923 = extractvalue %dx.types.CBufRet.f32 %9205, 2
  %10924 = fmul fast float %10922, %10923
  %10925 = call float @dx.op.unary.f32(i32 7, float %10924)  ; Saturate(value)
  %10926 = fsub fast float %10925, %10918
  %10927 = fmul fast float %10926, %10905
  %10928 = fadd fast float %10927, %10918
  br label %10955

; <label>:10929                                   ; preds = %10904
  %10930 = fadd fast float %10665, %10662
  %10931 = fmul fast float %10886, %10930
  %10932 = fadd fast float %10931, %10889
  %10933 = fmul fast float %10913, %10908
  %10934 = fmul fast float %10913, %10911
  %10935 = fmul fast float %10913, %10932
  %10936 = call float @dx.op.binary.f32(i32 35, float %10934, float %10935)  ; FMax(a,b)
  %10937 = call float @dx.op.binary.f32(i32 35, float %10933, float %10936)  ; FMax(a,b)
  %10938 = call float @dx.op.binary.f32(i32 35, float %9222, float %9223)  ; FMax(a,b)
  %10939 = call float @dx.op.binary.f32(i32 35, float %9221, float %10938)  ; FMax(a,b)
  %10940 = call float @dx.op.binary.f32(i32 35, float %10937, float %10939)  ; FMax(a,b)
  %10941 = fcmp fast ugt float %10940, 0x3F10000000000000
  br i1 %10941, label %10943, label %10942

; <label>:10942                                   ; preds = %10929
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %10943

; <label>:10943                                   ; preds = %10942, %10929
  %10944 = add i32 %60, 356
  %10945 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %10944, i32 undef)  ; BufferLoad(srv,index,wot)
  %10946 = extractvalue %dx.types.ResRet.i32 %10945, 0
  %10947 = and i32 %10946, 32
  %10948 = icmp eq i32 %10947, 0
  br i1 %10948, label %10955, label %10949

; <label>:10949                                   ; preds = %10943
  %10950 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %10951 = extractvalue %dx.types.CBufRet.f32 %10950, 0
  %10952 = fmul fast float %10951, 0x3FE99999A0000000
  %10953 = fadd fast float %10951, %10933
  %10954 = fadd fast float %10952, %10935
  br label %10955

; <label>:10955                                   ; preds = %10949, %10943, %10914
  %10956 = phi float [ 1.000000e+00, %10914 ], [ %9222, %10949 ], [ %9222, %10943 ]
  %10957 = phi float [ 1.000000e+00, %10914 ], [ %9223, %10949 ], [ %9223, %10943 ]
  %10958 = phi float [ %10916, %10914 ], [ %10953, %10949 ], [ %10933, %10943 ]
  %10959 = phi float [ %10928, %10914 ], [ %10934, %10949 ], [ %10934, %10943 ]
  %10960 = phi float [ 1.000000e+00, %10914 ], [ %10954, %10949 ], [ %10935, %10943 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %10961 = call float @dx.op.binary.f32(i32 36, float %10958, float 3.225500e+04)  ; FMin(a,b)
  %10962 = call float @dx.op.binary.f32(i32 36, float %10959, float 3.225500e+04)  ; FMin(a,b)
  %10963 = call float @dx.op.binary.f32(i32 36, float %10960, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %10961)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %10962)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %10963)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %10964 = call float @dx.op.binary.f32(i32 36, float %9221, float 3.225500e+04)  ; FMin(a,b)
  %10965 = call float @dx.op.binary.f32(i32 36, float %10956, float 3.225500e+04)  ; FMin(a,b)
  %10966 = call float @dx.op.binary.f32(i32 36, float %10957, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %10964)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %10965)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %10966)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

